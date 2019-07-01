#!python
# -*- coding: utf-8 -*-
"""
Created on Wed Dec 19
@author: schueder

"""

import numpy as np
import matplotlib.pyplot as plt
import glob
import netCDF4

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
        
def plot_nc_map(mapdir,elem,time,layer,lim):
    # mapdir = location of the mapfiles, a directory (str)
    # elem = name of constituent, such as 'salinity', must be in map1 and map4 dictionary  (str)
    # time = time index (int)
    # layer = layer index (int), 
    # clim = color limits (tuple) 
    map1 ={'xnode' : 'NetNode_x', 'ynode':'NetNode_y', 'xvelocity':'ucx', 'yvelocity':'ucy', 'layerz':'LayCoord_cc', 'cellnodes':'NetElemNode', 'domain_number': 'FlowElemDomain','salinity':'sa1'}
    map4 = {'xnode':'mesh2d_node_x', 'ynode':'mesh2d_node_y', 'xvelocity':'mesh2d_ucx' , 'yvelocity':'mesh2d_ucy' , 'layerz':'mesh2d_layer_z' , 'cellnodes':'mesh2d_face_nodes' , 'domain_number':'mesh2d_flowelem_domain','salinity':'mesh2d_sa1'}
   
    print(glob.glob(mapdir + '*_map.nc'))
    for imap,filei in enumerate(glob.glob(mapdir + '*_map.nc')):
        mapid=filei[filei.index('_map.nc')-4:filei.index('_map.nc')]
        ds = netCDF4.Dataset(filei)
        if imap == 0:
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
                    
        print('processing domain ' + str(mapid))                        
        mesh2d_face_nodes=ds.variables[varnames['cellnodes']][:]
        try:
            domainno=ds.variables[varnames['domain_number']][:]
            ghost = True
        except:
            ghost = False
            print('missing extra information, ghost cells not cleaned')


        tridata= dflowgrid2tri(mesh2d_face_nodes)
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
        plt.clim(lim)
        plt.gca().set_aspect('equal', adjustable='box')

                 
def nc_station(stations):
    # takes a netcdf array and returns a list
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
    # plots scatter of limiting cells
    # mapdir = location of the mapfiles, a directory (str)

    map1 ={'xnode' : 'NetNode_x', 'ynode':'NetNode_y', 'xvelocity':'ucx', 'yvelocity':'ucy', 'layerz':'LayCoord_cc', 'cellnodes':'NetElemNode', 'domain_number': 'FlowElemDomain','salinity':'sa1'}
    map4 = {'xnode':'mesh2d_node_x', 'ynode':'mesh2d_node_y', 'xvelocity':'mesh2d_ucx' , 'yvelocity':'mesh2d_ucy' , 'layerz':'mesh2d_layer_z' , 'cellnodes':'mesh2d_face_nodes' , 'domain_number':'mesh2d_flowelem_domain','salinity':'mesh2d_sa1'}
   
    for imap,filei in enumerate(glob.glob(mapdir + '*_map.nc')):
        mapid=filei[filei.index('_map.nc')-4:filei.index('_map.nc')]
        ds = netCDF4.Dataset(filei)
        if imap == 0:
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
                    
        print('processing domain ' + str(mapid))                        
        mesh2d_face_nodes=ds.variables[varnames['cellnodes']][:]
        try:
            domainno=ds.variables[varnames['domain_number']][:]
            ghost = True
        except:
            ghost = False
            print('missing extra information, ghost cells not cleaned')

        tridata= dflowgrid2tri(mesh2d_face_nodes)
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
    # visualize the location of a delwaq segment in x,y given the segment number
    # grd is a path to a waq geom
    # nolay is an int with the number of layers (not known to the WAQ geom)
    # segments is a dictionary with name (key) segment (int) style

    ds    = netCDF4.Dataset(grd)
    x     = ds.variables['NetNode_x'][:]
    y     = ds.variables['NetNode_y'][:]
    elem  = ds.variables['NetElemNode'][:,:]
    elemX = ds.variables['FlowElem_xcc'][:]
    elemY = ds.variables['FlowElem_ycc'][:]
    
    segspl = np.size(elem,0)
    blay   = np.arange(1,segspl*nolay+2,segspl)
    mesh2d_face_nodes=ds.variables['NetElemNode'][:]

    tridata = dflowgrid2tri(mesh2d_face_nodes)
    index = tridata['index']
    tri=tridata['triangles']
    tri = tri - 1
    tri[tri == -1] = 0
    # does not work properly! worked in matlab
    plt.tripcolor(x,y,tri,np.nan * np.arange(0,len(tri)),edgecolors='k',cmap='jet')
    plt.gca().set_aspect('equal', adjustable='box')

    for ss in range(0,len(segments.keys())):
        # minus 1 seg and minus 1 layer
        topseg = segments[ss] - blay[(np.min([ii for ii,jj in enumerate(blay) if segments[ss] < jj]) - 1)]
        ind = elem[topseg,:]
        x = x[ind]
        y = y[ind]
        plt.scatter(np.mean(x),np.mean(y),30,'r')
        plt.text(np.mean(x),np.mean(y),ss)