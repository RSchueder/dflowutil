#!/bin/bash
module load dflowfm
run_dflowfm.sh -v 1.2.59.64457 --partition:ndomains=8:icgsolver=6 current_situation.mdu
#Start qsub 
submit_dflowfm.sh -v 1.2.59.64457 -m current_situation.mdu -n 2 -c 4 --processlibrary proc_def.dat -j current_situation.mdu
