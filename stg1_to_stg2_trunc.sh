#!/bin/bash

#chmod +x run_multiple.sh (after editing)
# need to change peds_dct_2024-01-22_19-10-51.002741000Z.stg1.root to correct stg1 ped file
# and change all other instances of peds_dct_2024-01-22_19-10-51.002741000Z.stg1.root or peds_dct_2024-01-22_19-10-51.002741000Z.stg2.root appropriately
source /home/keith/DCT_Analysis/env.sh
bin_path=/home/keith/DCT_Analysis/master_branch/helix-flight-software/00build
#export bin_path

echo "...trying one pedestal stg0 with 100 different truncations..."
L=$1 # this is for D coefficient
#j=1 # this is for D coefficient
#i=1 #this is for L
H=$2 # this is for L

w=`cp steeringS1S2.toml_L${1}_H${2} /home/keith/DCT_Analysis/master_branch/helix-flight-software/00build/config/steeringS1S2.toml`

# call the converter
cd /home/keith/DCT_Analysis/master_branch/helix-flight-software/00build

k=`bin/stg1_to_stg2_converter.exe /home/keith/peds_and_runs/peds_dct_2024-02-02_23-28-17.002946001Z.stg1.root`
echo $k

x=`mv /home/keith/peds_and_runs/peds_dct_2024-02-02_23-28-17.002946001Z.stg2.root /home/keith/peds_and_runs/peds_dct_2024-02-02_23_L${1}_H${2}.stg2.root`
echo $x

#now stg2 file generated... use Kenichi's script to generate the histograms in a root file then delete the stg2 file to save space?

#inputs like    peds_dct_2024-01-22_19-10-51.002741000Z.stg0.root
#outputs like   peds_dct_2024-01-22_19-10-51.002741000Z.peds.root
#P=`cp /home/keith/peds_and_runs/peds_dct_2024-01-22_19-10*.peds.root /home/keith/peds_and_runs/peds_dct_2024-01-22_19_L${1}_H${2}.stg2.root`
echo "done"
