#!/bin/sh
CUR_DIR="$(pwd)"

#cd $CUR_DIR
mkdir Result

if [ "$#" -ne 9 ]; then
  echo "You should provide eight input args for xsbench and llvm so file"
  exit 1
fi

echo "\n\n===== Input: $1 $2 $3 $4 $5 $6 $7 $8 =====\n"

SO_FILE=$9
REL_PATH="profiling"
cd $REL_PATH



### profile phase
python3 map_index_bb.py -fi Input/xsbench-llfi_index.ll
python3 getCurrentInput.py $1 $2 $3 $4 $5 $6 $7 $8

#sh ./do_profiling.sh $1 $2

BIN_PATH=~/llvm-tool/llvm-3.4/Release/bin
$BIN_PATH/opt -S -load $SO_FILE -exec_counter Input/xsbench-llfi_index.ll -o xsbench_profile.ll
$BIN_PATH/clang -emit-llvm -S analysis_util.c -o analysis_util.ll
$BIN_PATH/llvm-link -S -o final_program.ll xsbench_profile.ll analysis_util.ll 
$BIN_PATH/lli final_program.ll $1 $2 $3 $4 $5 $6 $7 $8 
rm xsbench_profile.ll analysis_util.ll final_program.ll results.txt



### back to current dir and print 
cd $CUR_DIR
#echo "\n <<<<<  sum phase completed! please see the 'Result' folder >>>> \n"

exit 0


