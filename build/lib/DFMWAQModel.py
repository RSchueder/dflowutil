# -*- coding: utf-8 -*-
"""
Created on August 5, 2019

@author: schueder
"""

import numpy as np
import shutil as sh
import dflowutil
import os
import netCDF4 as nc

class DFMWAQModel():
    '''
    DFMWAQ model initialized form DFM model inputs
    Note: currently mdu referenced assets are not copied automatically to the new directory
    '''
    def __init__(self, mdu, ext, subfile, new_dir, ini, v, cores):
        
        self.version = v
        self.nodes = cores[0]
        self.threads = cores[1]
        self.source_mdu = mdu
        self.mdu = new_dir + self.source_mdu[dflowutil.find_last(self.source_mdu,'\\'):]
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
                        os.chdir(self.out)
                        orig = os.getcwd()
                        grid = line[:line.find('#')].replace('NetFile','').replace('=','').strip()
                        if '..' in grid:
                            # is relative, need to navigate
                            up = grid.count('..')
                            for jump in range(0, up):
                                os.chdir('..\\')
                            new_root = os.getcwd()
                            self.grid = new_root + '\\' + grid.replace('..\\','')
                            os.chdir(orig)

                        elif '\\' not in grid:
                            # is local
                            self.grid = self.out + grid 
                        mdu_file.write('NetFile = %s \n' % dflowutil.change_os(self.grid))    

                    else:    
                        mdu_file.write(line)
                    
            mdu_file.write('\n')
            mdu_file.write('[processes]\n')
            mdu_file.write('SubstanceFile                     = %s \n' % dflowutil.change_os(subfile.path))                                                                                                                                                                                                                                                           #
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
                self.boundaries.append(dflowutil.boundary_from_ext(file))
        else:
            print('ERROR: *.ext must be passed as a list of files')
     

    def soursin(self, fill = None):
        '''
        concatenates additional substances to a copy of a sourcin file
        '''
        for boundaries in self.boundaries:
            for ind, name in enumerate(boundaries.keys()):
                # source sink tim files
                for bndtype in boundaries[name].keys():
                    if  'discharge_salinity_temperature_sorsin' in bndtype :
                        with open(self.out + '%s.tim' % (name) ,'w') as tim:
                            # should be one matching tim for each sors pli
                            data = boundaries[name][bndtype]['data_loc']
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
                                        ar = dflowutil.row2array(line)
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
                            with open(self.out + '%s' % pli[dflowutil.find_last(pli,'\\'):] ,'w') as pli_file:
                                with open(pli,'r') as bndFile:
                                    lines = bndFile.readlines()
                                    for line in lines:
                                        pli_file.write(line) 
                                    

    def open_bnd(self, fill = None):
        '''
        creates a unique pli and tim file for each substance at each unique open boundary
        also copies the actual forcing boundary
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
                                with open(self.out + '%s%s' % (pli[dflowutil.find_last(pli,'\\'):], sub) ,'w') as pli_file:
                                    # copy the existing pli
                                    pli = boundaries[name][bndtype]['pli_loc']
    
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
                        #sh.copyfile(data, self.out + data[dflowutil.find_last(data, '\\'):])


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
                                        nmfn.write('locationfile=%s\n' % dflowutil.change_os(boundaries[name][bndtype]['pli_loc']))
                                        nmfn.write('forcingfile=%s\n' % dflowutil.change_os(boundaries[name][bndtype]['data_loc']))
                                        nmfn.write('\n')                                            

                                        for sub in self.substances:
                                            if 'S1' not in sub and 'SOD' not in sub:
                                                nmfo.write('QUANTITY=tracerbnd%s\n' % sub)
                                                nmfo.write('FILENAME=%s%s.pli\n' % (name,sub))
                                                nmfo.write('FILETYPE=9\n')
                                                nmfo.write('METHOD=3\n')
                                                nmfo.write('OPERAND=O\n')
                                                nmfo.write('\n')
                                                
                                    elif 'discharge_salinity_temperature_sorsin' in bndtype:
                                        # simply rewrite the boundaries, as they are either not relevant or have been silently edited/copied
                                        # reference the local copy
                                        nmfs.write('QUANTITY=%s\n' % bndtype)
                                        # refer to new local copy
                                        nmfs.write('FILENAME=%s\n' % boundaries[name][bndtype]['pli_loc'][dflowutil.find_last(boundaries[name][bndtype]['pli_loc'], '\\'):])
                                        nmfs.write('FILETYPE=%s\n' % boundaries[name][bndtype]['FILETYPE'])
                                        nmfs.write('METHOD=%s\n' % boundaries[name][bndtype]['METHOD'])
                                        nmfs.write('OPERAND=%s\n' % boundaries[name][bndtype]['OPERAND'])
                                        nmfs.write('\n')
                                    else:
                                        if 'FILETYPE' in boundaries[name][bndtype].keys():
                                            print(name)
                                            nmfe.write('QUANTITY=%s\n' % bndtype)
                                            # refer to original, not copied
                                            nmfe.write('FILENAME=%s\n' % dflowutil.change_os(boundaries[name][bndtype]['pli_loc']))
                                            nmfe.write('FILETYPE=%s\n' % boundaries[name][bndtype]['FILETYPE'])
                                            nmfe.write('METHOD=%s\n' % boundaries[name][bndtype]['METHOD'])
                                            nmfe.write('OPERAND=%s\n' % boundaries[name][bndtype]['OPERAND'])
                                            nmfe.write('\n')                                            
                                        else:
                                            nmfn.write('[boundary]\n')
                                            nmfn.write('quantity=%s\n' % boundaries[name][bndtype]['type'])
                                            # refer to original, not copied
                                            nmfn.write('locationfile=%s\n' % dflowutil.change_os(boundaries[name][bndtype]['pli_loc']))
                                            nmfn.write('forcingfile=%s\n' % dflowutil.change_os(boundaries[name][bndtype]['data_loc']))
                                            nmfn.write('\n')                                            

                                
                        # initials
                    grd = nc.Dataset(self.grid)
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
        with open(self.mdu[:dflowutil.find_last(self.mdu, '\\')] + 'run_set.sh', 'w') as shfile:
            shfile.write('#!/bin/bash\n')
            shfile.write('module load dflowfm\n')
            shfile.write('run_dflowfm.sh -v %s --partition:ndomains=%i:icgsolver=6 %s\n' % (self.version, self.nodes * self.threads, self.mdu[dflowutil.find_last(self.mdu, '\\'):]))
            shfile.write('#Start qsub \n')
            shfile.write('submit_dflowfm.sh -v %s -m Grevelingen-FM.mdu -n %i -c %i --processlibrary proc_def.dat -j %s\n' % (self.version, self.nodes, self.threads, self.mdu[dflowutil.find_last(self.mdu, '\\'):]))


class Grevelingen(DFMWAQModel):
    def __init__(self):
        # mdu to copy
        mdu = r'p:\11203715-006-d-hydro-grevelingen\communicatie\201908XX_verzonden_aan_RWS\model\2008\computations\run01\Grevelingen-FM.mdu'
        # boundaries for that mdu
        ext = [r'p:\11203715-006-d-hydro-grevelingen\WAQ\DFMWAQ\model_2008\computations\run01\Grevelingen-FM_bnd.ext']
        # location of new model
        new_bnd_dir = 'p:\\11203715-006-d-hydro-grevelingen\\WAQ\\DFMWAQ\\model_2008\\computations\\run01\\'
        # sub file to use
        subfile = dflowutil.SubFile(r'p:\11203715-006-d-hydro-grevelingen\WAQ\DFMWAQ\model_2008\computations\run01\Marine_Algae_parsGrev.sub')
        # initial conditions
        ini = {'OXY' : 7}
        # kernel version
        v = '1.2.59.64457'
        # cores to run on h6
        cores = [2, 4]
        super().__init__(mdu, ext, subfile, new_bnd_dir, ini, v, cores)

class Guayaquil(DFMWAQModel):
    def __init__(self):
        mdu = r'p:\11201302-guayaquil\02_flow\03_baseCase\R26\guayas.mdu'
        ext = [r'p:\11201302-guayaquil\02_flow\03_baseCase\R26\plant_loads_current_local.ext', r'p:\11201302-guayaquil\02_flow\03_baseCase\R26\sea_riv_boundary_local_bc.ext']
        new_bnd_dir = 'p:\\11201302-guayaquil\\02_flow\\03_baseCase\\DFMWAQ\\'
        subfile = dflowutil.SubFile(r'p:\11201302-guayaquil\03_waterquality\03_baseCase\01_substances\guayas_V11.sub')
        ini = {'OXY' : 7}
        v = '1.2.59.64457'
        cores = [2, 4]
        super().__init__(mdu, ext, subfile, new_bnd_dir, ini, v, cores)
        
        
######################################################
####                    IN                        ####
######################################################

#model = Guayaquil()
model = Grevelingen()

model.soursin()
model.open_bnd()
model.multi_ext_file()
model.merge_ext_files()
model.run_set_file()
