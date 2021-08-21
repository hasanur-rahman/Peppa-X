import sys, os
import subprocess
import argparse
import csv
import re
import os, sys



exec_folder_path = sys.argv[1]
csv_file_path = sys.argv[2]

per_inst_sdc_rate_entry = {}

data_file = os.path.join(csv_file_path, "pruning-per-inst-sdc-rates.csv")

with open(data_file, 'r') as csv_file:
    csv_reader = csv.reader(csv_file)

    for row in csv_reader:
        fi_index = int(row[0])
        sdc_rate = float(row[1])
        #print('fi_index %i'%(fi_index))
        per_inst_sdc_rate_entry[fi_index] = sdc_rate


if len(per_inst_sdc_rate_entry) == 0:
    print('there must at least one llfi_index!')
    exit(1)

def createNewSubprocess(execlist, isShell=False):
    return subprocess.Popen(execlist, shell=isShell, stdout=subprocess.PIPE)

output_file = open(os.path.join(os.getcwd(), "Result/sum_output.txt"), 'w')
output_file = open(os.path.join(os.getcwd(), "Result/sum_output.txt"), 'a')

proc = createNewSubprocess(['ls', exec_folder_path])

while True:
    file = proc.stdout.readline()
    if not file:
        break

    cur_file = file.decode().strip()
    #print("cur_file %s"%(cur_file))

    elements = cur_file.split(".")
    inputs = elements[0]
    # 1003_34
    inputs = inputs.split("_")
    inputArg1 = int(inputs[0])
    inputArg2 = int(inputs[1])

    lines = []
    with open(os.path.join(exec_folder_path, cur_file), 'r') as f:
        lines = [line.strip()  for line in f.readlines()]

    total_sdc = 0.0
    total_execution_count = 0.0

    for line in lines:
        elements = line.split(":")
        if len(elements) <= 1 or elements[1] == "" or elements[1].isnumeric() == False:
            continue
        cur_exec_count = int(elements[1])
        total_execution_count += cur_exec_count


    for line in lines:
        elements = line.split(":")
        if len(elements) <= 1 or elements[1] == "" or elements[1].isnumeric() == False:
            continue
        fi_index = int(elements[0])

        cur_exec_count = int(elements[1])

        #if per_inst_sdc_rate_entry.get(fi_index) == None:
            #print('sdc-rate for llfi_index %i should not be empty!'%(fi_index))
            #exit(1)
        cur_sdc_rate = per_inst_sdc_rate_entry.get(fi_index, 0.0)
        total_sdc += (cur_sdc_rate * cur_exec_count) / total_execution_count

    output_file.write("%i %i: %.4f\n"%(inputArg1, inputArg2, total_sdc*1000))

output_file.close()


