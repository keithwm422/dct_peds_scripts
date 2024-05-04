#!/bin/bash

for i in $(seq 0.00 0.01 0.09)
do
  for j in $(seq 0.00 0.01 0.09)
  do
    k=`./stg1_to_stg2_trunc.sh ${i} ${j}`
    echo $k
  done
done
