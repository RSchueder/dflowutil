from dflowutil import *
import numpy as np
import matplotlib.pyplot as plt

pli_file = r'd:\projects\DWAQ_CMEMS\test_out\sea_boundarytemperature.pli'
bc_file = r'd:\projects\DWAQ_CMEMS\test_out\temperature.bc'

data = read_bc(pli_file, bc_file)

tt = 5

meshX, meshY = np.meshgrid(data['distance'], data['zprofile'])
C = np.squeeze(data['temperaturebnd'][:,:,tt])
plt.pcolormesh(meshX, meshY, C)
plt.ylim([-1000, 0])
