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
        
def plot_nc_map(mapdir, elem, time, layer,lim = None):
    '''
    plots a 2D patch plot of a variable in a certain layer
    
    mapdir = location of the mapfiles, a directory (str)
    elem  = name of constituent, such as 'salinity', must be in map1 and map4 dictionary  (str)
    time  = time index (int)
    layer = layer index (int), 
    clim  = color limits (tuple) 
    '''
    map1, map4 = nc_format()

    print(glob.glob(mapdir + '*_map.nc'))
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
        name = varnames[elem]
        if layer != 0:
            var=ds.variables[name][time,:,layer-1] 
        else:
            var=ds.variables[name][time,:] 
            
        newvar=var[index.astype(np.int64)]
        tri2=tri-1

        if ghost:
            selectcells=(domainno==np.int(mapid))
            selectcellstri=selectcells[index.astype(np.int64)]
            totalselected=np.array([selectcellstri]).squeeze()
            tri2=tri2[totalselected,:]
            newvar=newvar[totalselected]

        plt.tripcolor(xnode,ynode,tri2,facecolors=newvar,edgecolors='none',cmap='jet')
        if lim is not None:
            plt.clim(lim)
        plt.gca().set_aspect('equal', adjustable='box')

                 
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


def read_lsp(lspfile, procfile, tablefile, latexfile):
    '''
    Creates a readable table from an lsp file and a proc_def
    added Jul 2019
    '''
    import pandas as pd

    def Extract(var):
        ind = [ii for ii,jj in enumerate(var) if jj == '[' or jj == ']']
        name = var[ind[0]+1:ind[1]].strip()
        descript = var[ind[1]+1:-1].strip()
        return name, descript
   
    with open(procfile,'r') as proc:
        unit = {}
        page = proc.readlines()
        for ind,line in enumerate(page):
            if line[0:10].strip() not in unit.keys():
                print(line)
                unit[line[0:10].strip()] = line[85:].strip()
                print(line[85:].strip())
                
    with open(lspfile,'r') as lsp:
        with open(tablefile,'w') as table:
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
                procName,procDescript = Extract(locProc[0])
                for ll in range(1,len(locProc)-2,2):    
                    if ll == 1:
                        table.write(('%s,%s,') % (procName.replace(',',''), procDescript.replace(',','')))
                    else:
                        table.write(' , ,')
                    parName,parDescript = Extract(locProc[ll])
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
                            table.write(',%s,%s\n' % (unit[parName], parDescript.replace(',','')))
                        except:
                            print('No unit found for %s in given process library' % parName)
                            table.write(',NOUNIT,%s\n' % (parDescript.replace(',','')))                        
                    else:
                        table.write(',%s,%s\n' % ('(gC/m3/d)', parDescript.replace(',','')))
                        
    dat = pd.read_csv(tablefile)
    if isinstance(latexfile, str):
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
            for ii,ser in enumerate(dat[dat.columns[3]]):
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