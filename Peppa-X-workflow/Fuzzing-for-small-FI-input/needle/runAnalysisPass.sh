#!/bin/sh
CUR_DIR="$(pwd)"

cd $CUR_DIR
mkdir Result

if [ "$#" -ne 4 ]; then
  echo "You should provide three input args for pathfinder and llvm so file"
  exit 1
fi

echo "\n\n===== Input: $1 $2 $3 =====\n"

SO_FILE=$4
REL_PATH="profiling"
cd $REL_PATH
mkdir exec-count


### profile phase
python3 map_index_bb.py -fi Input/needle-llfi_index.ll
python3 getCurrentInput.py $1 $2 $3

#sh ./do_profiling.sh $1 $2
BIN_PATH=~/llvm-tool/llvm-3.4/Release/bin
$BIN_PATH/opt -S -load $SO_FILE -exec_counter Input/needle-llfi_index.ll -o needle_profile.ll
$BIN_PATH/clang -emit-llvm -S analysis_util.c -o analysis_util.ll
$BIN_PATH/llvm-link -S -o final_program.ll needle_profile.ll analysis_util.ll 
$BIN_PATH/lli final_program.ll $1 $2 $3
rm needle_profile.ll analysis_util.ll final_program.ll 

#cp exec-count/$1_$2_$3.txt ../sum/exec-count/
cp exec-count/$1_$2_$3.txt $CUR_DIR
rm result.txt
rm -rf exec-count



### back to current dir and print result
cd $CUR_DIR
python3 getCodeCoverage.py $1_$2_$3.txt
rm $1_$2_$3.txt
#echo "\n <<<<<  sum phase completed! please see the 'Result' folder >>>> \n"

exit 0


