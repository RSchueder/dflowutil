'''
examples of key functionality in dflowutil
https://github.com/RSchueder/dflowutil

'''
import numpy as np
import matplotlib.pyplot as plt
import dflowutil

plt.close('all')


#################################################################################
# plot map
mapdir = 'p:\\11200975-hongkongwaq\\WAQ\\03_baseCase\\A04\\DFM_OUTPUT_HK-FMWAQ\\'
elem = 'salinity'
time = 50
layer = 1
depth = -1.0
lim = [15, 30]

dflowutil.plot_nc_map(mapdir, elem, time, depth = None, layer = 1, lim = lim)
pol = r'p:\11200975-hongkongwaq\HYDRO\HK-FM_model\ldb\world_hk_combined_EPSG-4326.pol'
XY = dflowutil.read_polygon(pol)
plt.plot(XY[:,0], XY[:,1], '-k', linewidth = 0.5)


#################################################################################
# initial conditions
substances = dflowutil.SubFile(r'p:\11200975-hongkongwaq\WAQ\03_baseCase\01_substances\HATS_PCA_v3ep.sub').substances
out = 'p:\\11200975-hongkongwaq\\WAQ\\03_baseCase\\A05\\'
dflowutil.rst_to_xyz(mapdir, substances, -1, out, rst = False)


#################################################################################
# plot bc boundary
pli_file = r'd:\projects\COASTSERV_Model\tests\Med\out\Boundary01temperature.pli'
bc_file = r'd:\projects\COASTSERV_Model\tests\Med\out\temperature_Boundary01.bc'

data = dflowutil.read_bc(pli_file, bc_file)

tt = 5
meshX, meshY = np.meshgrid(data['distance'], data['zprofile'])
C = np.squeeze(data['temperaturebnd'][:,:,tt])
plt.pcolormesh(meshX, meshY, C)
plt.ylim([-1000, 0])


#################################################################################
# LSP file
procfile = r'd:\projects\IMPAQT\MALG\code\tables\procesm.asc'
lspfile = r'd:\projects\IMPAQT\MALG\testbench\tidal_flume_farm\farm3DWQ_NZB_stretch\farm3D.lsp'
lsp = dflowutil.LspFile(lspfile, procfile)
lsp.lsp_to_table('test.csv')


#################################################################################

# DFMWAQ model
mdu = r'p:\11203715-006-d-hydro-grevelingen\communicatie\201908XX_verzonden_aan_RWS\model\2008\computations\run01\Grevelingen-FM_save.mdu'
# boundaries for that mdu
ext = [r'p:\11203715-006-d-hydro-grevelingen\WAQ\DFMWAQ\model_2008\computations\run01\Grevelingen-FM_bnd.ext']
# location of new model
new_bnd_dir = 'p:\\11203715-006-d-hydro-grevelingen\\WAQ\\DFMWAQ\\model_2008\\computations\\run01_othersub\\'
# sub file to use
subfile = dflowutil.SubFile(r'p:\11201302-guayaquil\03_waterquality\03_baseCase\01_substances\guayas_V11.sub')
# initial conditions
ini = {'OXY' : 7}
# kernel version
v = '1.2.59.64457'
# cores to run on h6
cores = [2, 4]

model = dflowutil.DFMWAQModel(mdu, ext, subfile, new_bnd_dir, ini, v, cores)
model.build()

subfile = dflowutil.SubFile(r'p:\11201302-guayaquil\03_waterquality\03_baseCase\01_substances\guayas_V11.sub')
print(subfile.transportable)
