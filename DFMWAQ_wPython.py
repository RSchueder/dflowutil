'''
A tutorial on how to make a DFMWAQ model from a D-FLOW model

python setup.py sdist bdist_wheel
conda env create -f dflowutil.yml
conda activate dflowutil
pip install dist/dflowutil-0.1.3-py3-none-any.whl

'''

from dflowutil.DFMWAQModel import DFMWAQModel
from dflowutil.SubFile import SubFile
from dflowutil.BalanceFile import BalanceFile
from dflowutil.utils import rst_to_xyz
import datetime
import os

def make_model(mdu, ext, loads_data, bounds_data, new_model_dir, subfile, ini, tref, system):
    '''
    makes a DFMWAQ model from an mdu
    '''

    model = DFMWAQModel(mdu, ext, subfile, new_model_dir, tref, ini,
                        run_sys     = system,
                        loads_data  = loads_data,
                        bounds_data = bounds_data,
                        process_path= os.path.join(os.getcwd(), 'tests', 'HK', 'A08'))

    model.build()

    return model

def make_restart():

    new_model_dir = os.path.join(os.getcwd(), 'tests', 'DSD', 'R01')
    substances = SubFile(os.path.join(os.getcwd(), 'tests', 'DSD', '01_substances', 'guayas_V11.sub')).substances
    rst_to_xyz(mapdir, substances, -1, new_model_dir, rst=False)

def examine_balances(bal_file, sub_file, period, area, sub):
    subs = SubFile(sub_file)
    prn = BalanceFile(bal_file)
    prn.extract_balances(area, period)

    return prn
########################################################################################################################
'''
model with boundary data
'''

system = 'windows'
mdu = os.path.join(os.getcwd(), 'tests', 'DSD', '00_src', 'current_situation.mdu')

# boundaries for the mdu
ext = [r'd:\projects\dflowutil\tests\DSD\00_src\plant_loads_current_local.ext',
       r'd:\projects\dflowutil\tests\DSD\00_src\sea_riv_boundary_local_bc.ext']

# water quality data
loads_data = [r'd:\projects\dflowutil\tests\DSD\03_loads\full_model_ds.csv']
bounds_data = [r'd:\projects\dflowutil\tests\DSD\02_boundaries\river_ds.csv',
               r'd:\projects\dflowutil\tests\DSD\02_boundaries\sea_ds.csv']

# location of new model
new_model_dir = os.path.join(os.getcwd(), 'tests', 'DSD', 'R01')

# sub file to use
subfile = SubFile(os.path.join(os.getcwd(), 'tests', 'DSD', '01_substances', 'guayas_V11.sub'))

# initial conditions
ini = {'OXY' : 7}
tref = datetime.datetime(2000,1,1)
ecuador_model = make_model(mdu, ext, loads_data, bounds_data, new_model_dir, subfile, ini, tref, system)

'''
model without boundary data
'''
# SFEI
ext = [r'p:\1230822-sfei-waq\hydro\Fullbay_DFM_wy2013c_fix_repartition\FlowFMold_bnd.ext']
mdu = r'p:\1230822-sfei-waq\hydro\Fullbay_DFM_wy2013c_fix_repartition\wy2013c.mdu'
tref = datetime.datetime(2012,8,1)
new_model_dir = os.path.join(os.getcwd(), 'tests', 'SFEI', 'S01')
loads_data = None
bounds_data = None
sanfran_model = make_model(mdu, ext, loads_data, bounds_data, new_model_dir, subfile, ini, tref, system)
