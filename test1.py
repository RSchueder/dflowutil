import matplotlib.pyplot as plt
import dflowutil
plt.close('all')
mapdir = 'p:\\11200975-hongkongwaq\\WAQ\\03_baseCase\\A04\\DFM_OUTPUT_HK-FMWAQ\\'
#mapdir = 'p:\\11201302-guayaquil\\02_flow\\03_baseCase\\R28\\DFM_OUTPUT_guayas\\'
elem = 'salinity'
time = 50
layer = 1
lim = [10, 30]

dflowutil.plot_nc_map(mapdir, elem, time, depth = -10, layer = None, lim = lim)
        
