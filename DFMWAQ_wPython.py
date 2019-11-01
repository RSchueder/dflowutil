from dflowutil.DFMWAQModel import DFMWAQModel
from dflowutil.SubFile import SubFile
from dflowutil.BalanceFile import BalanceFile
from dflowutil.utils import rst_to_xyz
import datetime
import os

def make_model():

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
    model = DFMWAQModel(mdu, ext, subfile, new_model_dir, tref, ini,
                        run_sys='windows',
                        loads_data=loads_data,
                        bounds_data=bounds_data,
                        process_path=os.path.join(os.getcwd(), 'tests', 'HK', 'A08'))

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

model = make_model()