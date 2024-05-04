#!/bin/bash
#peds_dct_2024-02-02_23_L0.02_H0.02.peds.root
#assumes you have steeringS1S2.toml local to this dir with peds_dct_2024-02-02_23_L0.02_H0.02.peds.root already in the file
for i in $(seq 0.00 0.01 0.09)
do
  for j in $(seq 0.00 0.01 0.09)
  do
    cp steeringS1S2.toml steeringS1S2.toml_L${i}_H${j}
    k="peds_dct_2024-02-02_23_L${i}_H${j}.peds.root"
    sed -i "s/peds_dct_2024-02-02_23_L0.02_H0.02.peds.root/$k/" steeringS1S2.toml_L${i}_H${j} # change the L and H values of pedestal filename to new values
    echo $k
  done
done

