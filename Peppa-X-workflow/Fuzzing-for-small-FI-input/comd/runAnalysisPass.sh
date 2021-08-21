#!/bin/sh
CUR_DIR="$(pwd)"

cd $CUR_DIR
mkdir Result

if [ "$#" -ne 13 ]; then
  echo "You should provide twelve input args for comd and llvm so file"
  exit 1
fi

echo "\n\n===== Input: $1 $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12=====\n"

SO_FILE=$13
REL_PATH="profiling"
cd $REL_PATH

mkdir exec-count

### profile phase
python3 map_index_bb.py -fi Input/comd-llfi_index.ll
python3 getCurrentInput.py $1 $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12

BIN_PATH=~/llvm-tool/llvm-3.4/Release/bin

$BIN_PATH/opt -S -load $SO_FILE -exec_counter Input/comd-llfi_index.ll -o comd_profile.ll
$BIN_PATH/clang -emit-llvm -S analysis_util.c -o analysis_util.ll
$BIN_PATH/llvm-link -S -o final_program.ll comd_profile.ll analysis_util.ll 
$BIN_PATH/lli final_program.ll $1 $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12
rm comd_profile.ll analysis_util.ll final_program.ll


cp exec-count/x_$2_y_$4_z_$6_N_$8_T_2.20_r_0.20.txt $CUR_DIR
rm CoMD-*
rm -rf exec-count

### back to current dir and print result
cd $CUR_DIR
python3 getCodeCoverage.py x_$2_y_$4_z_$6_N_$8_T_2.20_r_0.20.txt
rm x_$2_y_$4_z_$6_N_$8_T_2.20_r_0.20.txt
#echo "\n <<<<<  sum phase completed! please see the 'Result' folder >>>> \n"

exit 0


