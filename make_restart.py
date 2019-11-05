# -*- coding: utf-8 -*-
"""
Created on Tue Sep 17 10:06:34 2019

@author: schueder
"""

import netCDF4
import glob
import numpy as np

def nc_format(grd):
    """
    returns grid variables depending on net type

    Arguments:
        grd {str} -- path to a *_net.nc file
    """

    ds = netCDF4.Dataset(grd)
    map1 = {'xnode': 'NetNode_x',
            'ynode': 'NetNode_y',
            'xvelocity': 'ucx',
            'yvelocity': 'ucy',
            'layerz': 'LayCoord_cc',
            'cellnodes': 'NetElemNode',
            'domain_number': 'FlowElemDomain',
            'salinity': 'sa1',
            'temperature': 'tem1'}

    map4 = {'xnode': 'mesh2d_node_x',
            'ynode': 'mesh2d_node_y',
            'xvelocity': 'mesh2d_ucx',
            'yvelocity': 'mesh2d_ucy',
            'layerz': 'mesh2d_layer_z',
            'cellnodes': 'mesh2d_face_nodes',
            'face_x': 'mesh2d_face_x',
            'face_y': 'mesh2d_face_y',

            'domain_number': 'mesh2d_flowelem_domain',
            'salinity': 'mesh2d_sa1',
            'temperature': 'mesh2d_tem1'}

    agg = {'xnode': 'mesh2d_agg_node_x',
           'ynode': 'mesh2d_agg_node_y',
           'cellnodes': 'mesh2d_agg_face_nodes',
           'face_x': 'mesh2d_agg_face_x',
           'face_y': 'mesh2d_agg_face_y'}

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
            try:
                ds.variables['mesh2d_agg_node_x']
                varnames = agg
            except:
                print('ERROR: file is broken!')
                raise
            
    return varnames

class SubFile():
    '''
    delwaq substance file class
    '''

    def __init__(self, path):
        """
        Arguments:
            path {str} -- path to *.sub file
        """
        self.path = path

        with open(self.path, 'r') as subs:
            sub = []
            transportable = {}
            lines = subs.readlines()
            for line in lines:
                if line[0:9] == 'substance':
                    tmp = line.split(' ')
                    name = tmp[1].replace("'", '')
                    sub.append(name)
                    status = tmp[2].replace("'", '').replace('\n', '')
                    transportable[name] = status

        self.substances = sub
        self.transportable = transportable

mapdir = 'p:\\11200975-hongkongwaq\\WAQ\\03_baseCase\\A00\\DFM_OUTPUT_HK-FMWAQ\\'
subfile = r'p:\11200975-hongkongwaq\WAQ\03_baseCase\01_substances\HATS_PCA_v3ep.sub'
out = 'p:\\11200975-hongkongwaq\\WAQ\\03_baseCase\\A09\\'

top = False
rst = False
tind = -1

subs = SubFile(subfile)
sublist = subs.substances


files = list(glob.glob(mapdir + '*_map.nc'))

ds = netCDF4.Dataset(files[0])
params = list(ds.variables.keys())
physchem = []
for par in params:
    if 'sa1' in par:
        physchem.append(par.replace('mesh2d_',''))
    elif 'tem' in par:
        physchem.append(par.replace('mesh2d_',''))
    elif 's1' in par:
        physchem.append(par.replace('mesh2d_',''))

if len(physchem) > 0:
    sublist = sublist + physchem

varnames = nc_format(files[0])

print(sublist)

with open(out + 'ini.ext', 'w') as ext:
    for sub in sublist:
        if sub not in subs.transportable.keys() or subs.transportable[sub] == 'active':
            ext.write('QUANTITY=initialtracer%s\n' % sub)
            ext.write('FILENAME=%s.xyz\n' % sub)
            ext.write('FILETYPE=7\n')
            ext.write('METHOD=5\n')

        else:
            ext.write('QUANTITY=initialwaqbot%s\n' % sub)
            ext.write('FILENAME=%s.xyz\n' % sub)
            ext.write('FILETYPE=7\n')
            ext.write('METHOD=5\n')

        ext.write('OPERAND=O\n')
        ext.write('AVERAGINGTYPE=2\n')
        ext.write('RELATIVESEARCHCELLSIZE=1\n')
        ext.write('\n')


        file_names = ['.xyz']
            
        for file_name in file_names:
            with open(out + '%s' % (sub) + file_name, 'w') as ini:
                for imap, filei in enumerate(files):
                    mapid = filei[:-7]
                    ds = netCDF4.Dataset(filei)
                    x = ds.variables[varnames['face_x']][:]
                    y = ds.variables[varnames['face_y']][:]
                    # time, space, depth

                    if tind == -1:
                        tmp_times = ds.variables['time'][:]
                        tind = len(tmp_times) - 1
                    if sub not in subs.transportable.keys() or subs.transportable[sub] == 'active':
                        try:
                            s1 = ds.variables['mesh2d_' + sub][tind, :, :]
                            mn_s1 = np.mean(s1, axis = 1)
                        except ValueError:                            
                            mn_s1 = ds.variables['mesh2d_' + sub][tind, :]
                    else:
                        # 2d variable
                        mn_s1 = ds.variables['mesh2d_' + sub][tind, :]
                    
                    for pos, _ in enumerate(x):
                        ini.write('%.6f  %.6f  %.4e\n' % (x[pos], y[pos], mn_s1[pos]))

                print('finished substance ' + sub)
                
