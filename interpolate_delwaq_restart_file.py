# -*- coding: utf-8 -*-
"""
Created on Fri Jan 26 11:51:19 2018

@author: Lora Buckman, Deltares, lora.buckman@deltares.nl

DESCRIPTION: This script reads a binary restart file produced by WAQ-FM, interpolates
the substances to another WAQ-FM grid and writes a binary restart file for that grid

DEPENDENCIES: This script is dependent on non-standard package d3d. The file d3d.py
should be placed in the same directory as this script. All other packages can be
installed using the Anaconda Navigator or similar package manager for Python.

USER INPUT REQUIRED (see below):

    inFile = path and name of the input file
    waqgeom_in = path and name of input grid geometry file
    waqgeom_out = path and name of output grid geometry file (on which values will be interpolated)
    outFile = path and name of the output file
    nlayers = number of model layers (for 2D models = 1)
    timeStep = index (from 0) of the time step you want to write to file, when reading in a
    *_res.map file, the timeStep = 0
    
"""
import numpy as np
from netCDF4 import Dataset
import d3d
import struct
from scipy import spatial
from scipy.interpolate import griddata
from mpl_toolkits.mplot3d import Axes3D

#import datetime
#import matplotlib.pyplot as plt

""" 
USER SPECIFICATION HERE:
"""

#inFile = r'p:\11203755-sfei-thesis-sediment\04 WAQ\SF-Input\initialbed_Michelle\SFB_34_InitialBed.map'
inFile = r'd:\SFB_34_InitialBed.map'
waqgeom_in = r'p:\11203755-sfei-thesis-sediment\04 WAQ\SF-Input\initialbed_Michelle\Run5_waqgeom.nc'
waqgeom_out = r'p:\11203755-sfei-thesis-sediment\WY2015\Run5r\DFM_DELWAQ_Run5\Run5_new_waqgeom.nc'
outFile = r'p:\11203755-sfei-thesis-sediment\04 WAQ\initialbed_SFB_test_new.map'
nlayersin = 10
nlayersout = 10
timeStep = 0
method = 1
 #01-01,16-01,31-01,15-02,02-03,17-03,01-04,16-04,01-05,16-05,31-05,15-06,30-06,15-07,30-07,14-08,29-08,13-09,28-09,13-10,28-10,12-11,27-11,12-12,27-12

"""
END OF USER SPECIFICATION
"""

# Read input delwaq geometry
waqgeom_coarse = Dataset(waqgeom_in)
#waqgeom_coarse = d3d.DelwaqGrid(r'p:\11202512-h2020_impaqt\02_flow\02_modelSetup\T02\DFM_DELWAQ_NZB\NZB_waqgeom.nc')

waqgeom_array_coarse = []
waqgeom_coarse_x = []
waqgeom_coarse_y = []

waqgeom_coarse_x[:] = waqgeom_coarse.variables['FlowElem_xcc'] # Use variable 'Face_x' for ddcoupled runs, otherwise mesh2d_face_x
waqgeom_coarse_y[:] = waqgeom_coarse.variables['FlowElem_ycc'] # Use variable 'Face_y' for ddcoupled runs, otherwise mesh2d_face_y

#waqgeom_coarse_x[:] = waqgeom_coarse.variables['Face_x'] # Use variable 'Face_x' for ddcoupled runs, otherwise mesh2d_face_x
#waqgeom_coarse_y[:] = waqgeom_coarse.variables['Face_y'] # Use variable 'Face_y' for ddcoupled runs, otherwise mesh2d_face_y

waqgeom_array_coarse = np.column_stack((waqgeom_coarse_x,waqgeom_coarse_y))
nSeg_coarse = len(waqgeom_coarse_x)
print('input waqgeom read')

# Read output delwaq geometry
waqgeom_fine = Dataset(waqgeom_out)
waqgeom_array_fine = []
waqgeom_fine_x = []
waqgeom_fine_y = []

waqgeom_fine_x[:] = waqgeom_fine.variables['Face_x'] # Use variable 'Face_x' for ddcoupled runs, otherwise mesh2d_face_x
waqgeom_fine_y[:] = waqgeom_fine.variables['Face_y'] # Use variable 'Face_y' for ddcoupled runs, otherwise mesh2d_face_y
waqgeom_array_fine = np.column_stack((waqgeom_fine_x,waqgeom_fine_y))
nSeg_fine = len(waqgeom_fine_x)
print('output waqgeom read')

## Read in data from *.map file
rootgrp_coarse = d3d.DelwaqMapFile(inFile,'r')

matrix = np.empty((rootgrp_coarse.notim,rootgrp_coarse.noseg))
Data = np.empty((rootgrp_coarse.nosub,rootgrp_coarse.noseg)) # allocate full array size to save RAM◘
for i in range(0,len(rootgrp_coarse.subs)):
    matrix = rootgrp_coarse.get(rootgrp_coarse.subs[i])
    Data[i,:] = matrix[timeStep]
Data = Data.transpose()

print('input data read. starting interpolation...')


## Interpolate data to output grid
nlayers = nlayersin
Data_out = np.empty((len(waqgeom_fine_x)*nlayers,rootgrp_coarse.nosub))

if method == 0:
    for index,record in enumerate(waqgeom_array_fine):
        # Nearest neighbor analysis
        distance,SegID = spatial.KDTree(waqgeom_array_coarse).query(record)
        for layer in range(0,(nlayers)):
            Data_out[index+(len(waqgeom_fine_x)*layer)] = Data[SegID+(len(waqgeom_coarse_x)*layer)]
else:
    # rudy edit
    
    old_disc = np.linspace(1/nlayersin,1.0,nlayersin)
    xi = waqgeom_coarse_x
    yi = waqgeom_coarse_y
    Xi = np.ones((len(xi)* len(old_disc),1))
    Yi = np.ones((len(yi)* len(old_disc),1))
    Zi = np.ones((len(yi)* len(old_disc),1))
    
    for ii in range(1,len(old_disc)+1):
        Xi[0 + len(xi)*(ii-1) : (len(xi) * ii),0] = xi
        Yi[0 + len(yi)*(ii-1) : (len(yi) * ii),0] = yi
        Zi[0 + len(yi)*(ii-1) : (len(yi) * ii),0] = old_disc[ii-1]
    
    new_disc = np.linspace(1/nlayersout,1.0,nlayersout)
    xo = waqgeom_fine_x
    yo = waqgeom_fine_y
    Xo = np.ones((len(xo)* len(new_disc),1))
    Yo = np.ones((len(yo)* len(new_disc),1))
    Zo = np.ones((len(yo)* len(new_disc),1))
    
    for ii in range(1,len(new_disc)+1):
        Xo[0 + len(xo)*(ii-1) : (len(xo) * ii),0] = xo
        Yo[0 + len(yo)*(ii-1) : (len(yo) * ii),0] = yo
        Zi[0 + len(yi)*(ii-1) : (len(yi) * ii),0] = new_disc[ii-1]
    
    points = np.squeeze(np.array([Xi, Yi, Zi])).transpose()
    query = np.squeeze(np.array([Xo, Yo, Zo])).transpose()
    
    for sind, sub in enumerate(rootgrp_coarse.subs):
        values = Data[:,sind]
        print('interpolated substance: %s' % sub)
        Data_out[:,sind] = griddata(points, values, query)

print('interpolation complete. writing output file...')
## Plot test for input data
#plt.figure()
#plt.scatter(waqgeom_fine_x,waqgeom_fine_y,c=Data_out[(0+490363):(490363*2),0],s=1)
#plt.colorbar()

## Write data to *.map file   
headerString1 = rootgrp_coarse.reftime.strftime('T0: %Y.%m.%d %H:%M:%S').ljust(40,' ')
headerString2 = ' '.center(40) # 40 char empty space
headerString3  =' '.center(40) # 40 char empty space, in the case of input variable expressed as MASS/M2 use 'MASS/M2' right justified
headerString4 = '(scu= 1s)'.rjust(40)
headerString = headerString1+headerString2+headerString3+headerString4
with open(outFile,'wb') as fd_out:
    fd_out.write(struct.pack('160s',headerString.encode('utf-8')))
    fd_out.write(struct.pack('I',rootgrp_coarse.nosub)) # nosub
    fd_out.write(struct.pack('I',len(Data_out))) # noseg
    for i in range(0,rootgrp_coarse.nosub): 
        subName = rootgrp_coarse.subs[i]
        fd_out.write(struct.pack('20s',subName.encode('utf-8'))) # list of substance names
    fd_out.write(struct.pack('I',0)) # time
    Data_out.astype('float32').tofile(fd_out)
fd_out.close()
print('output file written')
