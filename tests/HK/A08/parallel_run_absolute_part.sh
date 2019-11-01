#!/bin/bash

module load dflowfm

run_dflowfm.sh -v 1.2.59.64568 --partition:ndomains=20:icgsolver=6 HK-FMWAQ.mdu

#Start qsub 

submit_dflowfm.sh -v 1.2.59.64568 -m HK-FMWAQ.mdu -n 5 -c 4 -j HK-FMWAQ  --processlibrary proc_def.dat 
