import os, sys, csv

knapsack_output_file_path = str(sys.argv[1])

## <START> variables
knapsack_output_lines = []
llfi_index_sets = []
performance_overheads = []
## <END> variables

## <START> output files
os.system("rm -f Result/optimal_instruction_sets.txt")
output_file_path = open("Result/optimal_instruction_sets.txt", "a")
## <END> output files

with open(knapsack_output_file_path, "r") as f:
	for line in f.readlines():
		if "<START>" in line:
			knapsack_output_lines.append(line)
		elif "llfi_index" in line:
			knapsack_output_lines.append(line)


for i in range(0, len(knapsack_output_lines)):
	output = knapsack_output_lines[i]
	if "<START>" in output:
		performance_overhead = int(output.split(":")[1].strip())
		nxt_output = knapsack_output_lines[i + 1]
		if "llfi_index" in nxt_output:
			fi_index_set = nxt_output.split(":")[1].strip()
			output_file_path.write("%i: %s\n"%(performance_overhead, fi_index_set))

output_file_path.close()
			


