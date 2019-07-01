from dflowutil import *
import matplotlib.pyplot as plt

plt.close('all')

seg = seg = {
'module_3 (1)':  9832,
'module_3 (2)':  21855,
'module_3 (3)':  33878,
'module_3 (4)':  45901,
'module_3 (5)':  57924,
'module_3 (6)':  69947,
'module_3 (7)':  81970,
'module_3 (8)':  93993,
'module_3 (9)':  106016,
'module_3 (10)':  118039,
'module_3 (11)':  130062,
'module_3 (12)':  142085,
'module_3 (13)':  154108,
'module_3 (14)':  166131,
'module_3 (15)':  178154,
'module_3 (16)':  190177,
'module_3 (17)':  202200,
'module_3 (18)':  214223,
'module_3 (19)':  226246,
'module_3 (20)':  238269}
nolay = 20
grd = r'p:\11202512-h2020_impaqt\02_flow\02_modelSetup\C03\DFM_DELWAQ_NZB\NZB_waqgeom.nc'

show_waq_segment(grd,nolay, seg)