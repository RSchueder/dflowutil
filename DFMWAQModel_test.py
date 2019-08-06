# -*- coding: utf-8 -*-
"""
Created on Mon Aug  5 16:09:42 2019

@author: schueder
"""
import dflowutil
#procfile = r'd:\projects\IMPAQT\MALG\code\tables\procesm.asc'
#lspfile = r'd:\projects\IMPAQT\MALG\testbench\tidal_flume_farm\farm3DWQ_NZB_stretch\farm3D.lsp'
#lsp = dflowutil.LspFile(lspfile, procfile)
#lsp.lsp_to_table('test.csv')

#model = dflowutil.Grevelingen()
#model.soursin()
#model.open_bnd()
#model.multi_ext_file()
#model.merge_ext_files()
#model.run_set_file()
#
#model = dflowutil.Guayaquil()
#model.soursin()
#model.open_bnd()
#model.multi_ext_file()
#model.merge_ext_files()
#model.run_set_file()


mdu = r'p:\11203715-006-d-hydro-grevelingen\communicatie\201908XX_verzonden_aan_RWS\model\2008\computations\run01\Grevelingen-FM_save.mdu'
# boundaries for that mdu
ext = [r'p:\11203715-006-d-hydro-grevelingen\WAQ\DFMWAQ\model_2008\computations\run01\Grevelingen-FM_bnd.ext']
# location of new model
new_bnd_dir = 'p:\\11203715-006-d-hydro-grevelingen\\WAQ\\DFMWAQ\\model_2008\\computations\\run01\\'
# sub file to use
subfile = dflowutil.SubFile(r'p:\11201302-guayaquil\03_waterquality\03_baseCase\01_substances\guayas_V11.sub')
# initial conditions
ini = {'OXY' : 7}
# kernel version
v = '1.2.59.64457'
# cores to run on h6
cores = [2, 4]
#
#model = dflowutil.DFMWAQModel(mdu, ext, subfile, new_bnd_dir, ini, v, cores)
model = dflowutil.Grevelingen()
model.build()
