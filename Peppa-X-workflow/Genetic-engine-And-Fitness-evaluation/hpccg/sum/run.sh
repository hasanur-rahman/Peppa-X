#!/bin/bash


if [ "$#" -ne 1 ]; then
   echo "please provide per-inst-sdc-cluster folder if it is not there in Input folder or use . to leave it"
   exit 1
fi

CLUSTER_PATH="$1"
#EXEC_PATH="$2"

mkdir Result
mkdir Input

#cp -r ../profiling/exec-count .
#cp -r ../profiling/code-coverage .

#python3 getClusterFailureRates.py $CLUSTER_PATH  30 1000
#mv Result/per-inst-sdc-rates.csv Input/
python3 calcSum.py exec-count Input

