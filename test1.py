import matplotlib.pyplot as plt
import dflowutil
plt.close('all')
mapdir = 'p:\\11200975-hongkongwaq\\WAQ\\03_baseCase\\A04\\DFM_OUTPUT_HK-FMWAQ\\'
#mapdir = 'p:\\11201302-guayaquil\\02_flow\\03_baseCase\\R28\\DFM_OUTPUT_guayas\\'
#elem = 'salinity'
#time = 50
#layer = 1
#lim = [10, 30]

#dflowutil.plot_nc_map(mapdir, elem, time, depth = -10, layer = None, lim = lim)

# rst
substances = dflowutil.SubFile(r'p:\11200975-hongkongwaq\WAQ\03_baseCase\01_substances\HATS_PCA_v3ep.sub').substances
out = 'p:\\11200975-hongkongwaq\\WAQ\\03_baseCase\\A05\\'
dflowutil.rst_to_xyz(mapdir, substances, -1, out, rst = False)