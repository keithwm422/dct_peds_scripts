#!/bin/bash

for i in $(seq 0.00 0.01 0.09)
do
  for j in $(seq 0.00 0.01 0.09)
  do
    k=`./ped_maker_trunc.sh ${i} ${j}`
    echo $k
  done
done
