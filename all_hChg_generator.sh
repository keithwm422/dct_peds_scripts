#!/bin/bash

cd /home/keith/DCT_Analysis/master_branch/helix-flight-software/00build

for i in $(seq 0.00 0.01 0.09)
do
  for j in $(seq 0.00 0.01 0.09)
  do
    k=`bin/hChg_generator.exe /home/keith/DCT_Analysis/pedestal_study/ped_scripts/data_dct/peds_dct_2024-02-02_23_L${i}_H${j}.stg2.root`
    echo $k
  done
done
