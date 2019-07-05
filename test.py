from dflowutil import *
import numpy as np
import matplotlib.pyplot as plt

pli_file = r'p:\1204257-dcsmzuno\2013-2017\3D-DCSM-FM\A08_newrgh_steric_dicoww_nest2\CMEMS\test_out\OB_all_20181108OXY.pli'
bc_file = r'p:\1204257-dcsmzuno\2013-2017\3D-DCSM-FM\A08_newrgh_steric_dicoww_nest2\CMEMS\test_out\OXY.bc'

data = read_bc(pli_file, bc_file)

tt = 5

meshX, meshY = np.meshgrid(data['distance'], data['zprofile'])
C = np.squeeze(data['tracerbnd'][:,:,tt])
plt.pcolormesh(meshX, meshY, C)
