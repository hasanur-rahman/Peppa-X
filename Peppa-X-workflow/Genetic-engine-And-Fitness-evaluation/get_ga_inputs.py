import numpy as np
import sys

def get_inputs(benchmark):
    input_set = set()
    count = 0
    with open(f"{benchmark}/ga-pop-5.log", "r") as file:
        for line in file:
            l_arr = line.split()
            if l_arr[0] == "Evaluating":
                ins = l_arr[2:-5]
                ins[-1] = ins[-1][:-1]
                if benchmark == 'comd':
                    ins.append("-T 2.2 -r 0.2")
                ins = ''.join(f"{i} " for i in ins)
                input_set.add(ins)
                count += 1
    return(input_set)

def write_to_file(s, fname):
    with open(fname, "a") as target:
        for i in s:
            target.write(f"{i}\n")


if __name__ == '__main__':
    if len(sys.argv) != 2:
        print(f"use: python3.8 get_ga_inputs.py <benchmark>")
        sys.exit()
    benchmark = sys.argv[1]
    s = get_inputs(benchmark)
    write_to_file(s, f"out/{benchmark}_inputs.txt")
