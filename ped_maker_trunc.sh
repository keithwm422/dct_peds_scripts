#!/bin/bash

#chmod +x run_multiple.sh (after editing)
# this file will read the final gamma value and make the new galdef file and output directories. .
# k is the gamma index
# i is the halo size and j is the diffusion coefficient
#source env_run_5g_galprop.sh
# could just load all variables here to make things smoother with shell scripts
source /home/keith/DCT_Analysis/env.sh
bin_path=/home/keith/DCT_Analysis/master_branch/helix-flight-software/00build
#export bin_path

echo "...trying one pedestal stg0 with 100 different truncations..."
L=$1 # this is for D coefficient
#j=1 # this is for D coefficient
#i=1 #this is for L
H=$2 # this is for L

# call the ped maker
cd /home/keith/DCT_Analysis/master_branch/helix-flight-software/00build
k=`bin/dct_ped_maker.exe /home/keith/peds_and_runs/peds_dct_2024-02-02_23-28-17.002946001Z.stg0.root -L ${1} -H ${2}`
echo $k
#inputs like    peds_dct_2024-01-22_19-10-51.002741000Z.stg0.root
#outputs like   peds_dct_2024-01-22_19-10-51.002741000Z.peds.root
P=`cp /home/keith/peds_and_runs/peds_dct_2024-02-02_23-28-17.002946001Z.peds.root /home/keith/peds_and_runs/peds_dct_2024-02-02_23_L${1}_H${2}.peds.root`
#z_min="-$i"
#z_max="+$i"

#  echo "$i"
#delta_z=`echo "scale=2; 2.0 * $i / 40.0" | bc -l` # how to calculate with shell scripts apparently
#echo $delta_z
# make the directory for that sim
#out_dir=${Out_fits_path}/L_${i}_${Diff}

# copy and edit the galdef file for each sim
#cp $Galdef_path/galdef_56_base $Galdef_path/galdef_56_L_${i}_${Diff}
#sed -i "/z_min/s/-a/$z_min/g" $Galdef_path/galdef_56_L_${i}_${Diff} # change the halo size
#sed -i "/z_max/s/+a/$z_max/g" $Galdef_path/galdef_56_L_${i}_${Diff}
#sed -i "/D0_xx/s/3/$j/g" $Galdef_path/galdef_56_L_${i}_${Diff} # change the diffusion coefficient
#sed -i "/D_g_1/s/0.3/$k/g" $Galdef_path/galdef_56_L_${i}_${Diff} # change the diff index (gamma)
#sed -i "/D_g_2/s/0.3/$k/g" $Galdef_path/galdef_56_L_${i}_${Diff} # change the diff index (gamma)
#echo $out_dir
#[ ! -d "${out_dir}" ] && mkdir -p "${out_dir}"
#echo "NOW RUNNING FINAL L_${i}_${Diff}..."
#$galprop_path/galprop -r L_${1}_${Diff} -g "$Galdef_path" -o "${Out_fits_path}/L_${1}_${Diff}" -f "$In_fits_path"
#cd $Out_fits_path/L_${1}_${Diff}
#pwd
#echo "deleting extra files..."
#rm *.gz
echo "done"
