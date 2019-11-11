'''
A tutorial on how to make initial conditions for a DFMWAQ model

'''

from dflowutil.SubFile import SubFile
from dflowutil.BalanceFile import BalanceFile
import matplotlib.pyplot as plt
import numpy as np
import seaborn as sns
sns.set()

'''
examine balances
'''
sub_file = r'd:\projects\dflowutil\tests\DSD\01_substances\guayas_V11.sub'
bal_file = r'd:\projects\dflowutil\tests\DSD\R02\DFM_OUTPUT_current_situation\current_situation_wq_proc_bal.txt'
subs = SubFile(sub_file)
prn = BalanceFile(bal_file)
area = ['Domain']
period = ['933-934']
prn.extract_balances(area, period)

'''
now do some plotting
'''

df = prn.areas
subs = SubFile(sub_file)
for domain in area:
    plt.close('all')
    for sub in subs.substances:
        if subs.transportable[sub] == 'active':
            fig = plt.figure()
            ax = fig.add_axes([0.1,0.3,0.8,0.6])
            print(sub)
            dfi = prn.areas[domain][sub]['Inflows']
            dfo = prn.areas[domain][sub]['Outflows']
            
            x = np.arange(0, len(dfi.columns))
            ax.bar(x, dfi.iloc[0])
            ax.bar(x, -dfo.iloc[0])
            ax.set_ylabel('total mass flux in period')
            plt.title(sub)
            plt.xticks(x, dfi.columns,rotation=90)