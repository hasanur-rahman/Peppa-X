import sys, os
import subprocess
import argparse
import csv
import re
#import numpy as np

"""
command: python3 map_index_bb.py -fi Input/pathfinder-llfi_index.ll

"""

options = {
    "fi": "",
} 

fi_index_bb_entry = {}
llfi_file_lines = []

def parseArgs(args):
    # print('\n <<<<<<<<<<<<< started parsing')
    global options

    arg_index = 0

    while arg_index < len(args):
        arg = args[arg_index]
        if arg.startswith("-"):

            if arg == "-fi":
                arg_index += 1
                options["fi"] = args[arg_index]
            
            

        arg_index += 1

    # print('finished parsing! >>>>>>>>>>>>>> \n')


def getLLFIIndex(line):

    ret = -1

    line = line.strip()
    elements = line.split(',')
    elements = [element.strip() for element in elements]
    for element in elements:
        if "!llfi_index" in element:
            element = element.split(" ")
            element = element[1][1:]
            ret = int(element)
            break

    return ret

def doMapping():
    global options, llfi_file_lines, fi_index_bb_entry

    with open(options["fi"], 'r') as fi_indexed_file:
        llfi_file_lines = [line.strip()  for line in fi_indexed_file.readlines()]

        removed_indices = []
        index = 0
        while index < len(llfi_file_lines):
            if len(llfi_file_lines[index]) == 0:
                llfi_file_lines.pop(index)
                index -= 1
            index += 1


    cur_bb_id = 0

    # start -> define / <label>
    # end -> } / br

    index_bb_map_file = open("Input/fi_index_bb_mapping.txt", "w")
    index_bb_map_file = open("Input/fi_index_bb_mapping.txt", "a")
    # total_bb_inst_file = open("Result/total_bb_inst.txt", "w")
    # total_bb_inst_file = open("Result/total_bb_inst.txt", "a")


    total_inst = 0
    for line in llfi_file_lines:
        if (("define" in line) or ("<label>:" in line)):
            # if total_inst > 0 and cur_bb_id > 0:
            #     total_bb_inst_file.write("%i:%i\n"%(cur_bb_id, total_inst))
            cur_bb_id += 1
            total_inst = 0

        elif getLLFIIndex(line) != -1:
            total_inst += 1
            llfi_index = getLLFIIndex(line)
            line_to_write = "%i:%i\n"%(llfi_index, cur_bb_id)
            index_bb_map_file.write(line_to_write)

    # if total_inst > 0 and cur_bb_id > 0:
    #     total_bb_inst_file.write("%i:%i"%(cur_bb_id, total_inst))


    # index_bb_map_file.close()
    # total_bb_inst_file.close()






def main(args):
    
    parseArgs(args)
    doMapping()





if __name__ == "__main__":
    main(sys.argv[1:])



