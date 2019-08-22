#!/usr/bin/env python2
# -*- coding: utf-8 -*-
"""
Created on Wed Dec 19
@author: schueder

"""

import numpy as np
import matplotlib.pyplot as plt
import glob
import netCDF4
import os
import pandas as pd
import shutil as sh

class SubFile():
    '''
    delwaq substance file class
    '''

    def __init__(self, path):
        """
        Arguments:
            path {str} -- path to sub file
        """
        self.path = path

        with open(self.path,'r') as subs:
            sub = []
            lines = subs.readlines()
            for line in lines:
                if line[0:9] == 'substance':
                    tmp = line.split(' ')
                    sub.append(tmp[1].replace("'",''))

        self.substances = sub

class LspFile():

    def __init__(self, lspfile, procfile):
        """
        
        Arguments:
            lspfile {str} -- path to lsp file
            procfile {str} -- path to proces(m).asc file
        """
        self.path = lspfile
        self.proc = procfile
        self.get_units()

    def lsp_extract(self, var):
        ind = [ii for ii,jj in enumerate(var) if jj == '[' or jj == ']']
        name = var[ind[0]+1:ind[1]].strip()
        descript = var[ind[1]+1:-1].strip()
        return name, descript
    
    def get_units(self):
        with open(self.proc,'r') as proc:
            unit = {}
            page = proc.readlines()
            for ind,line in enumerate(page):
                if line[0:10].strip() not in unit.keys():
                    print(line)
                    unit[line[0:10].strip()] = line[85:].strip()
                    print(line[85:].strip())
        self.units = unit

    def lsp_to_table(self, tablefile):    
        """
        
        Arguments:
            tablefile {str} -- path to output csv file
        """
        self.tablefile = tablefile
        with open(self.path,'r') as lsp:
            with open(self.tablefile,'w') as table:
                table.write('process,process description,parameter,value,unit,description,\n')
                page = lsp.readlines()
                procInd = []
                sectName = []
                sectInd = []
                for ind,line in enumerate(page):
                    if '#' in line:
                        sectName.append(line)
                        sectInd.append(ind)
                sectInd0 = [ii for ii,jj in enumerate(page) if 'determining the input for the processes' in jj]
                for ind,line in enumerate(page):  
                    if "Input for [" in line and ind > sectInd0[0]:
                        procInd.append(ind)
                for proc in range(0,len(procInd)-1):
                    locProc = page[procInd[proc]:procInd[proc+1]]
                    procName,procDescript = self.lsp_extract(locProc[0])
                    for ll in range(1,len(locProc)-2,2):    
                        if ll == 1:
                            table.write(('%s,%s,') % (procName.replace(',',''), procDescript.replace(',','')))
                        else:
                            table.write(' , ,')
                        parName,parDescript = self.lsp_extract(locProc[ll])
                        table.write(('%s,') % (parName))
                        valLine = locProc[ll+1]
                        if 'using output from' in valLine:
                            table.write(('%s') % valLine.replace(',','').replace('\n','').strip())
                        elif 'using substance' in valLine:
                            table.write(valLine.replace('Using ','').replace(',','').replace('\n','').strip())
                        elif 'using constant nr' in valLine:
                            col = [ii for ii,jj in enumerate(valLine) if jj == ':']
                            table.write(('%s') % valLine[col[0]+2:].replace(',','').replace('\n','').strip())
                        elif ':' in valLine:
                            col = [ii for ii,jj in enumerate(valLine) if jj == ':']
                            table.write(('%s') % valLine[col[0]+2:].replace(',','').replace('\n','').strip())
                        else:
                            table.write(valLine.replace('\n','').strip())
                        if parName != 'fcPPGreeN':
                            try:
                                table.write(',%s,%s\n' % (self.units[parName], parDescript.replace(',','')))
                            except:
                                print('No unit found for %s in given process library' % parName)
                                table.write(',NOUNIT,%s\n' % (parDescript.replace(',','')))                        
                        else:
                            table.write(',%s,%s\n' % ('(gC/m3/d)', parDescript.replace(',','')))
        
    # create latex table
    def lsp_to_latex(self, latexfile):
        """
        
        Arguments:
            latexfile {str} -- path to output latex table file
        """
        self.latexfile = latexfile
        dat = pd.read_csv(self.tablefile)
        if isinstance(self.latexfile, str):
            dat.drop('Unnamed: 6',axis = 1,inplace = True)
            bc = ['process', 'process description']
            with open(latexfile,'w') as ltx:
                ltx.write('\\\begin{longtable}{')
                for cc in dat.columns:
                    if cc not in bc:
                        ltx.write('|l')
                ltx.write('|')
                ltx.write('}\n')
                for ii,cc in enumerate(dat.columns):
                    if cc not in bc and ii != len(dat.columns):
                        ltx.write('\\\textbf{' + cc + '} & ')
                    elif cc not in bc:
                        ltx.write('\\\textbf{' + cc + '} ')
                        
                ltx.write("\\\\ \n")
                subs = {}
                for ii, ser in enumerate(dat[dat.columns[3]]):
                    sub = dat['parameter'].iloc[ii]
                    if sub not in subs.keys() and 'Using' not in dat['value'].iloc[ii]:
                        for ind,val in enumerate(dat.iloc[ii]):
                            if dat.columns[ind] not in bc:
                                if ind != len(dat.iloc[ii])-1:
                                    ltx.write(str(val).replace('_','') + ' & ')
                                else:
                                    ltx.write(str(val).replace('_',''))
                        
                        subs[sub] = sub
                        ltx.write("\\\\ \n")
                ltx.write('\\end{longtable}')


class DFMWAQModel():

    def __init__(self, mdu, ext, subfile, new_dir, ini, v, cores):
        """
        DFMWAQ model initialized from DFM model inputs
        Note: currently mdu referenced assets are not copied automatically to the new directory
    
        call DFMWAQModel.build() to build an initialized model  
        Arguments:
            mdu {str} -- path to mdu
            ext {list} -- [ext1, ext2], if only one, still must be a list
            subfile {dflowutil.SubFile} -- a SubFile 
            new_dir {path} -- path where model will be built
            ini {dict} -- sub name value pair
            v {str} -- version - i.e. 1.2.56....
            cores {list} -- [nodes, threads]
        """
        self.version = v
        self.nodes = cores[0]
        self.threads = cores[1]
        self.source_mdu = mdu
        self.mdu = new_dir + self.source_mdu[find_last(self.source_mdu,'\\'):]
        self.ext = ext
        self.substances = subfile.substances
        self.out = new_dir
        self.ini = ini
        
        with open(self.mdu, 'w') as mdu_file:
            with open(self.source_mdu,'r') as template:
                lines = template.readlines()
                for line in lines:
                    if 'ExtForceFileNew' in line:
                        mdu_file.write('ExtForceFileNew = FlowFM_DFMWAQ_new.ext \n')    
                    elif 'ExtForceFile' in line:
                        mdu_file.write('ExtForceFile = FlowFM_DFMWAQ.ext \n')    
                    elif 'NetFile' in line:
                        orig = os.getcwd()
                        grid = line[:line.find('#')].replace('NetFile','').replace('=','').strip()
                        if '..' in grid:
                            os.chdir(mdu[:find_last(mdu, '\\')])
                            # is relative to old mdu path, need to navigate to where it is pointing
                            up = grid.count('..')
                            for jump in range(0, up):
                                os.chdir('..\\')
                            new_root = os.getcwd()
                            # replace all 'up dir' commands
                            grid = grid.replace('..\\','').replace('../','')
                            grid = change_os(grid)
                            # copy to new directory
                            sh.copyfile(new_root + '\\' + grid, self.out + grid[find_last(grid,'\\'):])
                            #refer to new directory
                            self.grid = self.out + grid[find_last(grid,'\\'):]
                            os.chdir(orig)

                        elif '\\' not in grid:
                            # is local
                            # must obtain from original mdu directory, copy, and reference new local
                            sh.copyfile(mdu[:find_last(mdu, '\\')] + grid, self.out + grid) 
                            self.grid = self.out + grid 

                        else:
                            # is absolute, linux
                            # copy from -> to
                            sh.copyfile(grid, self.out + grid[find_last(grid,'/'):])
                            self.grid = self.out + grid[find_last(grid,'/'):]

                        # must write local reference for partitioning purposes
                        mdu_file.write('                           = %s \n' % self.grid[find_last(self.grid,'\\'):]) 
                    else:    
                        mdu_file.write(line)
                    
            mdu_file.write('\n')
            mdu_file.write('[processes]\n')
            mdu_file.write('SubstanceFile = %s \n' % change_os(subfile.path))                                                                                                                                                                                                                                                           #
            mdu_file.write('AdditionalHistoryOutputFile       =                                         \n')                                                                                                                                                                                                                       #
            mdu_file.write('ProcesDataBaseFile                = proc_def.dat\n')
            mdu_file.write('DtProcesses                       = 600.                  # waq processes time step\n')
            mdu_file.write('DtMassBalance                     = 86400.                  # waq mass balance output time step\n')
            mdu_file.write('ProcessFluxIntegration            = 1                   # Process fluxes integration option (1: WAQ, 2: D-Flow FM)   \n')
            mdu_file.write('\n')
            
            sh.copyfile(r'p:\h6\opt\delft3d\delwaq\5.08.00.64083\x64\dwaq\default\proc_def.dat', new_dir + 'proc_def.dat')
            sh.copyfile(r'p:\h6\opt\delft3d\delwaq\5.08.00.64083\x64\dwaq\default\proc_def.def', new_dir + 'proc_def.def')
            sh.copyfile(r'p:\h6\opt\delft3d\delwaq\5.08.00.64083\x64\dwaq\default\bloom.spe', new_dir + 'bloom.spe')
            sh.copyfile(r'p:\h6\opt\delft3d\delwaq\5.08.00.64083\x64\dwaq\default\bloominp.d09', new_dir + 'bloominp.d09')

        
        if isinstance(ext, list):
            self.boundaries = []
            for file in self.ext:
                self.boundaries.append(boundary_from_ext(file))
        else:
            print('ERROR: *.ext must be passed as a list of files')
     

    def build(self):
        '''
        builds model based solely on attributes from initialization
        '''
        self.soursin()
        self.open_bnd()
        self.multi_ext_file()
        self.merge_ext_files()
        self.run_set_file()

    def soursin(self, fill = None):
        '''
        concatenates additional substances to a local copy of a sourcin file
        '''
        for boundaries in self.boundaries:
            for ind, name in enumerate(boundaries.keys()):
                # source sink tim files
                for bndtype in boundaries[name].keys():
                    if  'discharge_salinity_temperature_sorsin' in bndtype:# and 'Precipitation' not in name and 'Fakeeva' not in name:
                        data = boundaries[name][bndtype]['data_loc']
                        with open(self.out + '%s' % data[find_last(data, '\\'):] ,'w') as tim:
                            # should be one matching tim for each sors pli
                            # parse the original data file for flows, substances will be concatenated
                            with open(data,'r') as flow:
                                arr = []
                                head = []
                                flows = flow.readlines()
                                for line in flows:
                                    if '*' in line:
                                        head.append(line)                      
                                    else:
                                        line = line.strip()
                                        ar = row2array(line)
                                        arr.append(ar)   
                                        
                            # concatenation     
                            arr = np.array(arr)
                            t = arr[:,0]
                            for sub in self.substances:
                                if 'S1' not in sub and 'SOD' not in sub:
                                    # not an inactive substance     
                                    if fill is not None:              
                                        val = np.ones(len(t)) * fill[sub]
                                    else:
                                        val = np.ones(len(t)) 
    
                                    val = np.array([val,]).T
                                    arr = np.concatenate((arr,val), axis = 1)
                            for hh in head:
                                    tim.write(hh)
                            for sind, sub in enumerate(self.substances):
                                if 'S1' not in sub and 'SOD' not in sub:                   
                                    tim.write('* COLUMN%i=%s\n' % (sind + len(head),sub))
                            for tind, time in enumerate(t):
                                tim.write('%.4e    ' % (time)) 
                                for val in arr[tind,1:]:
                                    tim.write('%.4e    ' % val)
                                tim.write('\n')
                            
                            # copy the pli, including internal support point references
                            pli = boundaries[name][bndtype]['pli_loc']
                            # could be pliz or pli, so use orig name
                            with open(self.out + '%s' % pli[find_last(pli,'\\'):] ,'w') as pli_file:
                                with open(pli,'r') as bndFile:
                                    lines = bndFile.readlines()
                                    for line in lines:
                                        pli_file.write(line) 
                                    

    def open_bnd(self, fill = None):
        '''
        creates a unique pli and tim file for each substance at each unique open boundary
        '''
        for boundaries in self.boundaries:
            for ind, name in enumerate(boundaries.keys()):
                for bndtype in boundaries[name].keys():
                    if 'waterlevelbnd' in bndtype or 'dischargebnd' in bndtype:
                        # create a pli and tim for every substance
                        t = np.arange(0,(1+365*4))
                        for sub in self.substances:
                            if 'S1' not in sub and 'SOD' not in sub:                   
                                t = np.arange(0,(1+365*4))
                                if fill is not None:
                                    val = np.ones(len(t)) * fill[sub]
                                else:
                                    val = np.ones(len(t)) 
                
                                # pli
                                pli = boundaries[name][bndtype]['pli_loc']
                                file_name = pli[find_last(pli,'\\'):]
                                point = file_name.find('.')
                                with open(self.out + '%s%s%s' % (file_name[:point], sub, file_name[point:]) ,'w') as pli_file:
                                    # copy the existing pli
                                    with open(pli, 'r') as bndFile:
                                        lines = bndFile.readlines()
                                        for line in lines:
                                            pli_file.write(line.replace(name, name + sub))            
                                # tim
                                with open(self.out + '%s%s_0001.tim' % (name, sub) ,'w') as tim:
                                    tim.write('* column 1 = time in minutes since \n')
                                    tim.write('* column 2 = concentration of  ' + sub + '\n')
                                    for tind, time in enumerate(t):
                                        tim.write('%.4e    %.4e\n' % (time * 1440, val[tind])) 
                        
                        # copy the original boundary to make folder self-contained model
                        #sh.copyfile(pli, self.out + '%s.pli' % (name))
                        #data = boundaries[name][bndtype]['data_loc']
                        #sh.copyfile(data, self.out + data[find_last(data, '\\'):])


    def multi_ext_file(self):
        '''
        writes the ext files that relate to the newly written data
        this is challenging because there could be two ext files
        '''
        with open(self.out + 'FlowFM_DFMWAQ_source.ext','w') as nmfs: # new model file source
            with open(self.out + 'FlowFM_DFMWAQ_open.ext','w') as nmfo: # new model file open
                with open(self.out + 'FlowFM_DFMWAQ_new.ext','w') as nmfn: # new model file new
                    with open(self.out + 'FlowFM_DFMWAQ_extra.ext','w') as nmfe: # new model file extra
                        # write pre-existing, this will account for new concatenated tim files
                        # bnds
                        for boundaries in self.boundaries:
                            # for all of the boundary files
                            for ind, name in enumerate(boundaries.keys()):
                                for bndtype in boundaries[name].keys():
                                    # re-write the original boundary data
                                    # water level and discharge data will be written to the old ext, even though
                                    # they came from the new ext
                
                                    if 'waterlevelbnd' in bndtype or 'dischargebnd' in bndtype:
                                        # inflow from open boundaries
                                        # not copied to return path to linux
                                        nmfn.write('[boundary]\n')
                                        nmfn.write('quantity=%s\n' % boundaries[name][bndtype]['type'])
                                        nmfn.write('locationfile=%s\n' % change_os(boundaries[name][bndtype]['pli_loc']))
                                        nmfn.write('forcingfile=%s\n' % change_os(boundaries[name][bndtype]['data_loc']))
                                        nmfn.write('\n')                                            

                                        for sub in self.substances:
                                            if 'S1' not in sub and 'SOD' not in sub:
                                                nmfo.write('QUANTITY=tracerbnd%s\n' % sub)
                                                nmfo.write('FILENAME=%s%s.pli\n' % (name,sub))
                                                nmfo.write('FILETYPE=9\n')
                                                nmfo.write('METHOD=3\n')
                                                nmfo.write('OPERAND=O\n')
                                                nmfo.write('\n')
                                                
                                    elif 'discharge_salinity_temperature_sorsin' in bndtype:# and 'Precipitation' not in name and 'Fakeeva' not in name:
                                        # simply rewrite the boundaries, as they are either not relevant or have been silently edited/copied
                                        # reference the local copy
                                        nmfs.write('QUANTITY=%s\n' % bndtype)
                                        # refer to new local copy
                                        nmfs.write('FILENAME=%s\n' % boundaries[name][bndtype]['pli_loc'][find_last(boundaries[name][bndtype]['pli_loc'], '\\'):])
                                        nmfs.write('FILETYPE=%s\n' % boundaries[name][bndtype]['FILETYPE'])
                                        nmfs.write('METHOD=%s\n' % boundaries[name][bndtype]['METHOD'])
                                        nmfs.write('OPERAND=%s\n' % boundaries[name][bndtype]['OPERAND'])
                                        nmfs.write('\n')
                                    else:
                                        if 'FILETYPE' in boundaries[name][bndtype].keys():
                                            nmfe.write('QUANTITY=%s\n' % bndtype)
                                            # refer to original, not copied
                                            nmfe.write('FILENAME=%s\n' % change_os(boundaries[name][bndtype]['pli_loc']))
                                            nmfe.write('FILETYPE=%s\n' % boundaries[name][bndtype]['FILETYPE'])
                                            nmfe.write('METHOD=%s\n' % boundaries[name][bndtype]['METHOD'])
                                            nmfe.write('OPERAND=%s\n' % boundaries[name][bndtype]['OPERAND'])
                                            nmfe.write('\n')                                            
                                        else:
                                            nmfn.write('[boundary]\n')
                                            nmfn.write('quantity=%s\n' % boundaries[name][bndtype]['type'])
                                            # refer to original, not copied
                                            nmfn.write('locationfile=%s\n' % change_os(boundaries[name][bndtype]['pli_loc']))
                                            nmfn.write('forcingfile=%s\n' % change_os(boundaries[name][bndtype]['data_loc']))
                                            nmfn.write('\n')                                            

                    # initials
                    grd = netCDF4.Dataset(self.grid)
                    x_min = np.min(grd.variables['mesh2d_node_x'][:])
                    x_max = np.max(grd.variables['mesh2d_node_x'][:])
                    y_min = np.min(grd.variables['mesh2d_node_y'][:])
                    y_max = np.max(grd.variables['mesh2d_node_y'][:])

                    with open(self.out + '\\' + 'domain.pol','w') as pol:
                        pol.write('domain\n')
                        pol.write('4   2\n')
                        pol.write('%.4e    %.4e\n' % (x_min, y_min))
                        pol.write('%.4e    %.4e\n' % (x_min, y_max))
                        pol.write('%.4e    %.4e\n' % (x_max, y_max))
                        pol.write('%.4e    %.4e\n' % (x_max, y_min))

                    for sub in self.substances:
                        if 'S1' not in sub and 'SOD' not in sub:            
                            nmfo.write('QUANTITY=initialtracer%s\n' % sub)
                        else:
                            nmfo.write('QUANTITY=initialwaqbot%s\n' % sub)
                        nmfo.write('FILENAME=domain.pol\n')
                        nmfo.write('FILETYPE=10\n')
                        nmfo.write('METHOD=4\n')
                        nmfo.write('OPERAND=O\n')
                        if sub in self.ini.keys():
                            nmfo.write('VALUE=%.4e\n' % self.ini[sub])
                        else:
                            nmfo.write('VALUE=0.0\n')
                        nmfo.write('\n')


    def merge_ext_files(self):
        '''
        merge temporary partial ext files into master file
        '''
        with open(self.out + 'FlowFM_DFMWAQ.ext','w') as nmff: # new model file final
            with open(self.out + 'FlowFM_DFMWAQ_extra.ext','r') as cpfile:
                lines = cpfile.readlines()
                for line in lines:
                    nmff.write(line)   
            with open(self.out + 'FlowFM_DFMWAQ_source.ext','r') as cpfile:
                lines = cpfile.readlines()
                for line in lines:
                    nmff.write(line)            
            with open(self.out + 'FlowFM_DFMWAQ_open.ext','r') as cpfile: 
                lines = cpfile.readlines()
                for line in lines:
                    nmff.write(line)  
        # clean files
        os.remove(self.out + 'FlowFM_DFMWAQ_extra.ext')
        os.remove(self.out + 'FlowFM_DFMWAQ_source.ext')
        os.remove(self.out + 'FlowFM_DFMWAQ_open.ext')

    def run_set_file(self):
        '''
        write the shell script to run the model
        '''
        with open(self.mdu[:find_last(self.mdu, '\\')] + 'run_set.sh', 'w') as shfile:
            shfile.write('#!/bin/bash\n')
            shfile.write('module load dflowfm\n')
            shfile.write('run_dflowfm.sh -v %s --partition:ndomains=%i:icgsolver=6 %s\n' % (self.version, self.nodes * self.threads, self.mdu[find_last(self.mdu, '\\'):]))
            shfile.write('#Start qsub \n')
            shfile.write('submit_dflowfm.sh -v %s -m %s -n %i -c %i --processlibrary proc_def.dat -j %s\n' % (self.version, self.mdu[find_last(self.mdu, '\\'):], self.nodes, self.threads, self.mdu[find_last(self.mdu, '\\'):]))


class Grevelingen(DFMWAQModel):
    # example subclass
    def __init__(self):
        # mdu to copy
        mdu = r'p:\11203715-006-d-hydro-grevelingen\communicatie\201908XX_verzonden_aan_RWS\model\2008\computations\run01\Grevelingen-FM_save.mdu'
        # boundaries for that mdu
        ext = [r'p:\11203715-006-d-hydro-grevelingen\WAQ\DFMWAQ\model_2008\computations\run01\Grevelingen-FM_bnd.ext']
        # location of new model
        new_bnd_dir = 'p:\\11203715-006-d-hydro-grevelingen\\WAQ\\DFMWAQ\\model_2008\\computations\\run01\\'
        # sub file to use
        subfile = SubFile(r'p:\11203715-006-d-hydro-grevelingen\WAQ\DFMWAQ\model_2008\computations\run01\Marine_Algae_parsGrev.sub')
        # initial conditions
        ini = {'OXY' : 7}
        # kernel version
        v = '1.2.59.64457'
        # cores to run on h6
        cores = [2, 4]
        super().__init__(mdu, ext, subfile, new_bnd_dir, ini, v, cores)

class Guayaquil(DFMWAQModel):
    # example subclass
    def __init__(self):
        mdu = r'p:\11201302-guayaquil\02_flow\03_baseCase\R26\guayas.mdu'
        ext = [r'p:\11201302-guayaquil\02_flow\03_baseCase\R26\plant_loads_current_local.ext', r'p:\11201302-guayaquil\02_flow\03_baseCase\R26\sea_riv_boundary_local_bc.ext']
        new_bnd_dir = 'p:\\11201302-guayaquil\\02_flow\\03_baseCase\\DFMWAQ\\'
        subfile = SubFile(r'p:\11201302-guayaquil\03_waterquality\03_baseCase\01_substances\guayas_V11.sub')
        ini = {'OXY' : 7}
        v = '1.2.59.64457'
        cores = [2, 4]
        super().__init__(mdu, ext, subfile, new_bnd_dir, ini, v, cores)
        

####################################
#           UTILS
####################################

def find_last(var,ss):
    '''
    returns index of last instance of char 'ss' in string 'var'
    '''
    ind = 0
    lstInd = ind
    it = 0
    while ind >= 0:
        ind = var.find(ss,ind + it,len(var))
        it = 1
        if ind < 0:
            return lstInd + 1
        lstInd = ind


def change_os(var):
    '''
    returns linux path if fed windows and vice versa
    '''
    osys = []
    for ch in var:
        if ':' in ch:
            osys = 'windows'
        if ch == '\\':
            osys = 'windows'
    if len(osys) == 0:
        osys = 'linux'

    if '/p/' in var and osys == 'linux':
        return var.replace('/p/','p:\\').replace('/','\\')
    elif osys == 'linux':
        return var.replace('/','\\')
    elif ':\\' in var and osys == 'windows':
        return '/' + var.replace(':\\','/').replace('\\','/')


def nc_format(grd):
    '''
    returns grid variables depending on net type

    grd = path to nc grid file (str)
    '''

    ds = netCDF4.Dataset(grd)
    map1 = {'xnode' : 'NetNode_x', 
    'ynode':'NetNode_y', 
    'xvelocity':'ucx', 
    'yvelocity':'ucy', 
    'layerz':'LayCoord_cc', 
    'cellnodes':'NetElemNode', 
    'domain_number': 'FlowElemDomain',
    'salinity':'sa1'}
    
    map4 = {'xnode':'mesh2d_node_x', 
    'ynode':'mesh2d_node_y', 
    'xvelocity':'mesh2d_ucx' , 
    'yvelocity':'mesh2d_ucy' , 
    'layerz':'mesh2d_layer_z' , 
    'cellnodes':'mesh2d_face_nodes' , 
    'face_x' : 'mesh2d_face_x',
    'face_y' : 'mesh2d_face_y',

    'domain_number':'mesh2d_flowelem_domain',
    'salinity':'mesh2d_sa1'}

    try: 
        ds.variables['NetNode_x']
        varnames = map1   
        print('Map type = 1')
    except:
        try:
            ds.variables['mesh2d_node_x']
            varnames = map4
            print('Map type = 4')
        except:
            print('file is broken!')
    return varnames

def dflow_grid_2_tri(mesh2d_face_nodes):

    n=mesh2d_face_nodes.shape[0]
    count=np.sum(~np.isnan(mesh2d_face_nodes),axis=1)
    
    m4=np.sum(count==4)
    m5=np.sum(count==5)
    m6=np.sum(count==6)
    
    index3=np.arange(0,n)
    index4=np.where(count==4)
    index5=np.where(count==5)
    index6=np.where(count==6)
    
    #initialize
    tri=np.zeros([n+m4+2*m5+3*m6,3])
    tri[0:n,:]=mesh2d_face_nodes[0:n,0:3]
    
    index=np.zeros(tri.shape[0],dtype=np.int64)
    index[0:n]=index3
    #4 nodes
    offset=n
    tri[offset+np.arange(0,m4),0:3]=mesh2d_face_nodes[np.ix_(index4[0],np.asarray([0,2,3]))]
    index[offset+np.arange(0,m4)]=index4[0]
    offset=offset+m4
    
    #5 nodes
    if m5>0:   
        tri[offset+np.arange(0,m5),0:3]=mesh2d_face_nodes[np.ix_(index5[0],np.asarray([0,2,3]))]
        index[offset+np.arange(0,m5)]=index5[0]
        offset=offset+m5

        tri[offset+np.arange(0,m5),0:3]=mesh2d_face_nodes[np.ix_(index5[0],np.asarray([0,3,4]))]
        index[offset+np.arange(0,m5)]=index5[0]
        offset=offset+m5
    #6 nodes
    if m6>0:
        tri[offset+np.arange(0,m6),0:3]=mesh2d_face_nodes[np.ix_(index6[0],np.asarray([0,2,3]))]
        index[offset+np.arange(0,m6)]=index6[0]
        offset=offset+m6
        
        tri[offset+np.arange(0,m6),0:3]=mesh2d_face_nodes[np.ix_(index6[0],np.asarray([0,3,4]))]
        index[offset+np.arange(0,m6)]=index6[0]
        offset=offset+m6
        
        tri[offset+np.arange(0,m6),0:3]=mesh2d_face_nodes[np.ix_(index6[0],np.asarray([0,4,5]))]
        index[offset+np.arange(0,m6)]=index6[0]
           
    return{'triangles':tri,'index':index}
        
def plot_nc_map(mapdir, elem, time, depth = None, layer = None, lim = None, c_map = 'jet'):
    '''
    plots a 2D patch plot of a variable in a certain layer or depth
    
    mapdir = location of the mapfiles, a directory (str)
    elem  = name of constituent, such as 'salinity', must be in map1 and map4 dictionary  (str)
    time  = time index (int)
    layer = layer index (int), or depth (float), negative down 
    clim  = color limits (tuple) 
    '''
    if depth is None and layer is None:
        print('Error: depth or layer must be specified')
    else:
        for imap,filei in enumerate(glob.glob(mapdir + '*_map.nc')):
            mapid= filei[filei.index('_map.nc')-4:filei.index('_map.nc')]
            ds = netCDF4.Dataset(filei)
            if imap == 0:
                varnames = nc_format(filei)
            print('processing domain ' + str(mapid))                        
            mesh2d_face_nodes = ds.variables[varnames['cellnodes']][:]
            try:
                domainno=ds.variables[varnames['domain_number']][:]
                ghost = True
            except:
                ghost = False
                print('missing extra information, ghost cells not cleaned')
            
            tridata= dflow_grid_2_tri(mesh2d_face_nodes)
            index = tridata['index']
            tri=tridata['triangles']
            xnode=ds.variables[varnames['xnode']][:]
            ynode=ds.variables[varnames['ynode']][:]
            try:
                name = varnames[elem]
            except(KeyError):
                # not a standard constituent, try WAQ convention
                if ('mesh2d_' + elem) in ds.variables.keys():
                    name = 'mesh2d_' + elem
                else:
                    if (elem) in ds.variables.keys():
                        name = elem
                    else:
                        print('ERROR: cannot guess element name')
                        raise

            if layer is not None:
                if layer != 0:
                    var=ds.variables[name][time, :, layer-1] 
                else:
                    var=ds.variables[name][time, :] 
                
            elif depth is not None:
                wd =  ds.variables['mesh2d_waterdepth'][time,:]
                wd = wd.reshape((-1,1))
                frac = ds.variables['mesh2d_interface_sigma'][:]
                frac = frac.reshape((-1,1))
                depths = np.dot(frac, wd.T)
                # find the number of cell interfaces in each column that the 
                # query is less than
                # the sum is always >= 1 since the min is ~ 0
                # is the sum == 1, we want to query the first index (0)
                # so we minus one from the sum to get the index
                
                ind = np.sum(depths[:,:] > depth, axis = 0) - 1
                
                # for cells shallower than the query depth, clip to bottom cell
                
                too_deep = ind == len(frac) - 1
                too_deep = [ii for ii, jj in enumerate(too_deep) if jj]
                ind[too_deep] = len(frac) - 2
                
                # need to flip array because top cells are last aray elements
                # ex. 0->19, 1->18, 2->17 if no. layers = 20
                # -2 because frac is no. layers + 1
                ind = len(frac) - 2 - ind
                # ind contains the indicies for each xy position that
                # will give the desired depth
    
                # get indicies for each position's depth
               
                var=ds.variables[name][time,:,:]
                # this does not reduce the dimensions for some reason...
                #var = var[ind]
                #var[too_deep] = np.nan
                
                arr = np.zeros((var.shape[0], 1))
                for pos in range(0, var.shape[0]):
                    arr[pos] = var[pos, ind[pos]]
                var = arr   
                var[too_deep] = np.nan
     
            newvar=var[index.astype(np.int64)]
            tri2=tri-1

            if ghost:
                selectcells=(domainno==np.int(mapid))
                selectcellstri=selectcells[index.astype(np.int64)]
                totalselected=np.array([selectcellstri]).squeeze()
                tri2=tri2[totalselected,:]
                newvar=newvar[totalselected]

            # append partition to the image
            time_unit = ds.variables['time'].units
            mod_ref = pd.Timestamp(time_unit.replace('seconds since ',''))
            times = ds.variables['time'][:]
            times = np.array([mod_ref + pd.Timedelta(seconds = tt) for tt in times])
            print('plotting time = %s ' % times[time])           
            nmask = np.isnan(newvar.ravel())
            plt.tripcolor(xnode, ynode, tri2, facecolors=newvar.ravel(), edgecolors='none', cmap= c_map, mask = nmask)#, shading = 'gouraud')
            if lim is not None:
                plt.clim(lim)
            plt.gca().set_aspect('equal', adjustable='box')
    
    return plt.gcf()

                 
def nc_station(stations):
    '''
    takes a netcdf array and returns a list
    stations = netCDF4.Dataset.variables['stations][:,:]
    '''
    nstations = []
    for line in stations:
        char = ''
        st = line.data
        st = str(list(st))
        st = st.replace('[','')
        st = st.replace(']','')
        for pos,letter in enumerate(st):
            if letter == 'b':
                if pos != 0:
                    if st[pos-1] == "'" and st[pos+1] == "'":
                        char = char + letter
                    else:
                        pass
            else:
                if letter != "'" and letter != ',' and letter != ' ' and letter != '\n':
                    char = char + letter
        nstations.append(char)
    return nstations   


def rst_to_xyz(mapdir, sublist, tind, out, rst = False):
    """
    makes a series of xyz files to be used as an initial condition in an ext file
    uses rst files found in the directory by default, but can also use map files
    based on flag rst = False
    tind = -1 takes the last available time
    
    Arguments:
        mapdir {[type]} -- [description]
        sublist {[type]} -- [description]
        tind {[type]} -- [description]
        out {[type]} -- [description]
    
    Keyword Arguments:
        rst {bool} -- [description] (default: {False})
    """
    
    if rst:
        print('rst files not implemented!')
        #timeid = []
        #for filei in glob.glob(mapdir + '*_rst.nc'):
        #    timeid.append(filei[filei.index('DCSM-FM_0_5nm') + 19:filei.index('DCSM-FM_0_5nm') +27])
    else:
        files = list(glob.glob(mapdir + '*_map.nc'))
       
    varnames = nc_format(files[0])
    with open(out + 'ini.ext', 'w') as ext:
        for sub in sublist:
            if 'S1' not in sub and 'SOD' not in sub:
                ext.write('QUANTITY=initialtracer%s\n' % sub)
                ext.write('FILENAME=%s.xyz\n' % sub)
                ext.write('FILETYPE=7\n')
                ext.write('METHOD=6\n')
            else:
                ext.write('QUANTITY=initialwaqbot%s\n' % sub)
                ext.write('FILENAME=%s.xyz\n' % sub)
                ext.write('FILETYPE=7\n')
                ext.write('METHOD=5\n')

            ext.write('OPERAND=O\n')
            ext.write('AVERAGINGTYPE=2\n')
            ext.write('RELATIVESEARCHCELLSIZE=1\n')
            ext.write('\n')
            with open(out + '%s.xyz' % (sub), 'w') as ini:
                for imap, filei in enumerate(files):
                    mapid = filei[:-7]
                    ds = netCDF4.Dataset(filei)
                    x = ds.variables[varnames['face_x']][:]
                    y = ds.variables[varnames['face_y']][:]
                    # time, space, depth
                    #print(sub)
                    #print(filei)
                    if tind < 0:
                        tmp_times = ds.variables['time'][:]
                        tind = len(tmp_times) - 1
                    if 'S1' not in sub and 'SOD' not in sub:
                        print(ds.variables['mesh2d_' + sub])
                        s1 = ds.variables['mesh2d_' + sub][tind, :, :]
                        mn_s1 = np.mean(s1, axis = 1)

                    else:
                        mn_s1 = ds.variables['mesh2d_' + sub][tind, :]
                    
                    #print(mn_s1.shape)
                    for pos, xx in enumerate(x):
                        # depth averaged
                        ini.write('%.6f  %.6f  %.4e\n' % (x[pos], y[pos], mn_s1[pos]))

                print('finished substance ' + sub)
        


def find_limit_cell(mapdir):
    '''
    plots scatter of limiting cells
    mapdir = location of the mapfiles, a directory (str)
    '''

    for imap,filei in enumerate(glob.glob(mapdir + '*_map.nc')):
        mapid=filei[filei.index('_map.nc')-4:filei.index('_map.nc')]
        ds = netCDF4.Dataset(filei)
        if imap == 0:
           varnames = nc_format(filei)
                    
        print('processing domain ' + str(mapid))                        
        mesh2d_face_nodes=ds.variables[varnames['cellnodes']][:]
        try:
            domainno=ds.variables[varnames['domain_number']][:]
            ghost = True
        except:
            ghost = False
            print('missing extra information, ghost cells not cleaned')

        tridata= dflow_grid_2_tri(mesh2d_face_nodes)
        index = tridata['index']
        tri=tridata['triangles']
        xnode=ds.variables[varnames['xnode']][:]
        ynode=ds.variables[varnames['ynode']][:]
        name = 'numlimdt'
        var=ds.variables[name][len(ds.variables['time'])-1,:] 
            
        newvar=var[index.astype(np.int64)]
        tri2=tri-1

        if ghost:
            selectcells=(domainno==np.int(mapid))
            selectcellstri=selectcells[index.astype(np.int64)]
            totalselected=np.array([selectcellstri]).squeeze()
            tri2=tri2[totalselected,:]
            newvar=newvar[totalselected]

        plt.tripcolor(xnode,ynode,tri2,facecolors=np.nan*newvar,edgecolors='k',cmap='jet')
        ind = np.argmax(newvar)
        # return tri2,xnode,ynode
        tind = np.array([int(ii) for ii in tri2[ind]])
        plt.scatter(xnode[tind],ynode[tind],20,'r')
        plt.text(xnode[tind[0]],ynode[tind[0]],('%.2e' % newvar[ind]))
        plt.gca().set_aspect('equal', adjustable='box')


def read_polygon(file):
    '''
    imports a polygon as nx2 array
    '''
    with open(file) as ldbfile:
        lines = ldbfile.readlines()
        X = []
        Y = []
        for ind, row in enumerate(lines):
            if '*' not in row:
                if '.' in row and '999.' not in row and '-999' not in row:
                    line = row2array(row)
                    X.append(float(line[0]))
                    Y.append(float(line[1]))            
                elif len(row.replace('\n','')) > 0:
                    X.append(np.nan)
                    Y.append(np.nan)
                else:
                    pass
    return np.array([X, Y]).T


def read_pli(var):
    '''
    reads a pli boundary into an array
    '''
    with open(var) as plifile:
        lines = plifile.readlines()
        X = []
        Y = []
        for ind, row in enumerate(lines):
            if '.' in row:
                line = row2array(row)
                X.append(float(line[0]))
                Y.append(float(line[1]))
    return np.array([X, Y]).T


def boundary_from_ext(var):
    '''
    returns a dictionary containing the boundary names, types, location files and data files 
    from a boundary definition .ext file (str path)
    '''
    root = var[:find_last(var,'\\')]    
    boundaries = {}
    with open(var,'r') as nmf:
        page = nmf.readlines()
        ext_type = 'old'
        for line,text in enumerate(page):
            if '[boundary]' in text or '.bc' in text:
                ext_type = 'new'
        if ext_type == 'new':
            for line,text in enumerate(page):
                if '*' not in text:
                    if '[boundary]' in text:
                        name = page[line+2].replace('locationfile','').replace('=','').replace('.pliz','').replace('.pli','').replace('\n','').strip()
                        if '/' in name: 
                            # if it is a path   
                            name = name[find_last(name,'/'):]
                        if name not in boundaries.keys():
                            # append if new boundary
                            boundaries[name] = {}

                        bnd_type = page[line+1].replace('quantity','').replace('=','').replace('\n','').strip()
                        boundaries[name][bnd_type] = {}

                        boundaries[name][bnd_type]['type'] = bnd_type
                        # change the os to make it windows readable for later processing
                        boundaries[name][bnd_type]['pli_loc_orig'] = page[line+2].replace('locationfile','').replace('=','').replace('\n','').strip()
                        boundaries[name][bnd_type]['data_loc_orig'] = page[line+3].replace('forcingfile','').replace('=','').replace('\n','').strip()

                        boundaries[name][bnd_type]['pli_loc'] = change_os(page[line+2].replace('locationfile','').replace('=','').replace('\n','')).strip()
                        boundaries[name][bnd_type]['data_loc'] = change_os(page[line+3].replace('forcingfile','').replace('=','').replace('\n','')).strip()
                        
                        boundaries = check_data_path(boundaries, root, name, bnd_type)

        else:
            # old style
            for line,text in enumerate(page):
                if '*' not in text:
                    if 'QUANTITY' in text and '=' in text:
                        name = page[line+1].replace('FILENAME','').replace('=','').replace('.pliz','').replace('.pli','').replace('\n','').strip()
                        if '/' in name or '\\' in name:
                            # is a path and we need to extract the name
                            name = name[find_last(name,'/'):]
                        if name not in boundaries.keys():
                            boundaries[name] = {}
                        
                        bnd_type =  text.replace('QUANTITY','').replace('=','').replace('\n','').strip()
                        boundaries[name][bnd_type] = {}
                        boundaries[name][bnd_type]['type'] = bnd_type
                        boundaries[name][bnd_type]['pli_loc_orig'] = page[line+1].replace('FILENAME','').replace('=','').replace('\n','').strip()
                        boundaries[name][bnd_type]['data_loc_orig'] = page[line+1].replace('FILENAME','').replace('=','').replace('\n','').replace('.pliz','.pli').replace('.pli','.tim').strip()
                        
                        boundaries[name][bnd_type]['pli_loc'] = change_os(page[line+1].replace('FILENAME','').replace('=','').replace('\n','')).strip()
                        boundaries[name][bnd_type]['data_loc'] = change_os(page[line+1].replace('FILENAME','').replace('=','').replace('\n','').replace('.pliz','.pli').replace('.pli','.tim')).strip()
                        
                        boundaries[name][bnd_type]['FILETYPE'] = page[line+2].replace('FILETYPE','').replace('=','').replace('\n','').strip()
                        boundaries[name][bnd_type]['METHOD'] = page[line+3].replace('METHOD','').replace('=','').replace('\n','').strip()
                        boundaries[name][bnd_type]['OPERAND'] = page[line+4].replace('OPERAND','').replace('=','').replace('\n','').strip()
                        
                        boundaries = check_data_path(boundaries, root, name, bnd_type)

    return boundaries


def check_data_path(boundaries, root, name, bnd_type):
    '''
    makes all paths os accessible via literal absolute string path
    acts on strings that have already been converted to windows
    does not touch if absolute path is found
    '''
    os.chdir(root)
    orig = os.getcwd()

    if '..' in boundaries[name][bnd_type]['pli_loc']:
        # is relative, need to navigate
        up = boundaries[name][bnd_type]['pli_loc'].count('..')
        for jump in range(0, up):
            try:
                os.chdir('..\\')
            except:
                os.chdir('../')
        new_root = os.getcwd()
        boundaries[name][bnd_type]['pli_loc']  = os.path.join(new_root, boundaries[name][bnd_type]['pli_loc'].replace('..\\','').replace('../',''))
        os.chdir(orig)

    elif '\\' not in boundaries[name][bnd_type]['pli_loc'] and '/' not in boundaries[name][bnd_type]['pli_loc']:
        # is local
        boundaries[name][bnd_type]['pli_loc']  = root + boundaries[name][bnd_type]['pli_loc']  
    
    if '..' in boundaries[name][bnd_type]['data_loc']:
        # is relative, need to navigate
        up = boundaries[name][bnd_type]['data_loc'].count('..')
        for jump in range(0, up):
            os.chdir('..\\')
        new_root = os.getcwd()
        boundaries[name][bnd_type]['data_loc']  = new_root + '\\' + boundaries[name][bnd_type]['data_loc'].replace('..\\','')
        os.chdir(orig)

    elif '\\' not in boundaries[name][bnd_type]['data_loc'] and '/' not in boundaries[name][bnd_type]['data_loc']:
        # is local
        boundaries[name][bnd_type]['data_loc']  = root + boundaries[name][bnd_type]['data_loc']  

    return boundaries


def show_waq_segment(grd,nolay,segments):
    '''
    visualize the location of a delwaq segment in x,y given the segment number

    grd      = a path to a waq geom
    nolay    = an int with the number of layers (not known to the WAQ geom)
    segments = a dictionary with name (key) segment (int) style
    '''

    varnames = nc_format(grd)
    ds    = netCDF4.Dataset(grd)
    x     = ds.variables[varnames['xnode']][:]
    y     = ds.variables[varnames['ynode']][:]
    elem  = ds.variables[varnames['cellnodes']][:,:]

    segspl = np.size(elem,0)
    # make an array of all of the numbers of the first segment in each layer,
    # including the nth + 1 layer
    blay   = np.arange(1,segspl*nolay+2,segspl)

    tridata = dflow_grid_2_tri(elem)
    index = tridata['index']
    tri=tridata['triangles']
    tri = tri - 1
    tri[tri == -1] = 0
    # does not work properly! worked in matlab
    plt.tripcolor(x,y,tri,np.nan * np.arange(0,len(tri)),edgecolors='k',cmap='jet')
    plt.gca().set_aspect('equal', adjustable='box')

    for sind, ss in enumerate(segments.keys()):
        # find the first segment in this layer     
        first_in_next_layer = np.min([ii+1 for ii,jj in enumerate(blay) if segments[ss] < jj])                           
        topseg = segments[ss] - blay[first_in_next_layer - 1]
        ind = elem[topseg-1,:]
        xi = x[ind]
        yi = y[ind]
        plt.scatter(np.mean(xi),np.mean(yi),30,'r')
        plt.text(np.mean(xi),np.mean(yi),ss)


def pdistf(X1, Y1, X2, Y2):
    '''
    returns array of euclidean distances between a point and an array
    '''
    return np.sqrt((X2 - X1)**2 + (Y2 - Y1)**2)


def row2array(line):
    '''
    takes a string of space seperated floats and returns an array
    '''
    line = line.split(' ')
    arr = []
    for ch in line:
        try:
            val = float(ch)
            arr.append(val)
        except:
            pass
    return np.array(arr)


def read_bc(pli_file, bc_file):
    '''
    reads a bc file into a format useful for plotting a cross sections
    plotting is expected to look as follows:

    data = read_bc(pli_file, bc_file)

    meshX, meshY = np.meshgrid(data['distance'], data['zprofile'])
    C = np.squeeze(data['salinitybnd'][:,:0])
    plt.pcolormesh(meshX, meshY, C)
   
    '''    
    non_data = ['ame', 'orcing', 'unction', 'ertical', 'ime', 'uantity', 'nit']
    pli = read_pli(pli_file)
    data = {}
    # create an array of distances
    dist = np.zeros((len(pli)))
    for position in range(1, len(pli)):
        dist[position] = dist[position - 1] + np.abs(pdistf(pli[position, 0], pli[position, 1], pli[position - 1, 0], pli[position - 1, 1]))
    
    with open(bc_file, 'r') as bc:
        ind = []
        page = bc.readlines()
        for row, line in enumerate(page):
            # first pass, obtain metadata
            if '[forcing]' in line:
                ind.append(row)
            if 'Vertical position type          = zdatum' in line:
                data['vertical position type'] = 'zdatum'
            if 'Vertical position specification' in line:
                line = line.replace('Vertical position specification =','')
                arr = row2array(line)
                data['zprofile'] = arr  
            if 'uantity' in line and 'time' not in line:
                data['quantity'] = line.replace('Quantity','').replace('quantity','').replace('=','').strip()      
            if 'nit' in line:
                data['unit'] = line.replace('Unit','').replace('unit','').replace('=','').strip()  
        
    assert(len(ind) == len(pli))
    if 'vertical position type' not in data.keys():
        print('ERROR: vertical specification is not zdatum, bc file zprofile is not self describing and not implemented')    
        return None
    else:
        with open(bc_file, 'r') as bc:
            # second pass, load data into memory
            page = bc.readlines()
            # estimate number of times based on first position
            # purpose is for allocation of array
            times = []
            for row in np.arange(ind[0], ind[1]):
                line = page[row]
                chk = sum([word in line for word in non_data])
                if chk == 0 and '.' in line:               
                    arr = row2array(line)
                    times.append(arr[0])

            data['distance'] = dist
            data['times'] = np.array(times)
            data[data['quantity']] = np.zeros(( len(data['zprofile']), len(ind), len(times) ))

            for position in range(0,len(ind)):
                tt = 0
                if position + 1 == len(ind):
                    curr_data = page[ind[position]:] 
                else:
                    curr_data = page[ind[position]: ind[position+1]]
                for line in curr_data:
                    chk = sum([word in line for word in non_data])
                    if chk == 0 and '.' in line:
                        arr = row2array(line)
                        data[data['quantity']][:,position,tt] = arr[1:]
                        tt += 1

        return data





            


    

