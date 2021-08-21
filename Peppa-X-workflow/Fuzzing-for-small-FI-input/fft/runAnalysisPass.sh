#!/bin/sh
CUR_DIR="$(pwd)"

cd $CUR_DIR
mkdir Result

if [ "$#" -ne 6 ]; then
  echo "You should provide five input args for fft and llvm so file"
  exit 1
fi

echo "\n\n===== Input: -$1 -$2 -$3 -$4 -$5 =====\n"

SO_FILE=$6
REL_PATH="profiling"
cd $REL_PATH

mkdir exec-count


### profile phase
python3 map_index_bb.py -fi Input/fft-llfi_index.ll
python3 getCurrentInput.py -$1 -$2 -$3 -$4 -$5

BIN_PATH=~/llvm-tool/llvm-3.4/Release/bin

$BIN_PATH/opt -S -load $SO_FILE -exec_counter Input/fft-llfi_index.ll -o fft_profile.ll
$BIN_PATH/clang -emit-llvm -S analysis_util.c -o analysis_util.ll
$BIN_PATH/llvm-link -S -o final_program.ll fft_profile.ll analysis_util.ll 
$BIN_PATH/lli final_program.ll -$1 -$2 -$3 -$4 -$5
rm fft_profile.ll analysis_util.ll final_program.ll


cp exec-count/$1_$2_$3_$4_$5.txt  $CUR_DIR
rm -rf exec-count



### back to current dir and print result
cd $CUR_DIR
python3 getCodeCoverage.py $1_$2_$3_$4_$5.txt 
rm $1_$2_$3_$4_$5.txt 
#echo "\n <<<<<  sum phase completed! please see the 'Result' folder >>>> \n"

exit 0


