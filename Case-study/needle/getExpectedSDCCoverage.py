import os, sys, csv, subprocess

#input_folder_path = str(sys.argv[1])
#prog_input = str(sys.argv[2])

input_folder_path = "Input"
prog_input = "2048 10 1"


## <BEGIN> run analysis-pass to get exec-counter for the input
LLVM_SO_FILE = os.path.join(os.path.expanduser("~"), "llvm-tool/llvm-3.4/Release/lib/DumpOnceProfiling.so")
input_array = prog_input.split(" ")
exec_list = ["./runAnalysisPass.sh"]
for inputArg in input_array:
	exec_list.append(str(inputArg))
exec_list.append(LLVM_SO_FILE)
ret_code = subprocess.call(exec_list)

if ret_code != 0 :
	print("Error:: something went wrong in analysis pass!")
	exit(1)

## <END> run analysis-pass to get exec-counter for the input


#os.system("cp profiling/exec-count/%s.txt Input/"%prog_input.replace(" ", "_"))
inst_sdc_data_file = os.path.join(input_folder_path, "per-inst-sdc-rates-%s.csv"%(prog_input.replace(" ", "-")))
exec_count_file = "profiling/exec-count/%s.txt"%prog_input.replace(" ", "_")

if ((not os.path.isfile(inst_sdc_data_file)) or (not os.path.isfile(exec_count_file))):
	print("please provide two files for this script")
	exit(1)





###<START> Variables
per_inst_sdc_rate_entry = {}
max_llfi_index = 0
per_inst_exec_count_entry = {}
total_exec_count = 0
profits = []
weights = []
llfi_indices = []
removed_llfi_indices = []  ## fi_index that has zero exec-count
###<END> Variables



with open(inst_sdc_data_file, 'r') as csv_file:
	csv_reader = csv.reader(csv_file)
	
	for row in csv_reader:
		fi_index = int(row[0])
		sdc_rate = float(row[1])
		per_inst_sdc_rate_entry[fi_index] = sdc_rate



if len(per_inst_sdc_rate_entry) == 0:
	print('there must at least one llfi_index-sdc-rate!')
	exit(1)


with open(exec_count_file, 'r') as f:
	lines = [line.strip() for line in f.readlines()]
	
	for line in lines:
		fi_index = int(line.split(":")[0].strip())
		cur_exec_count = int(line.split(":")[1].strip())

		if cur_exec_count > 0 :
			### skip those instructions that have exec-count zero otherwise
			# those will create a problem for knapsack
			per_inst_exec_count_entry[fi_index] = cur_exec_count		
			total_exec_count += cur_exec_count
		else:
			removed_llfi_indices.append(fi_index)		

		if fi_index > max_llfi_index:
			max_llfi_index = fi_index


if len(per_inst_exec_count_entry) == 0:
        print('there must at least one llfi_index-exec-count!')
        exit(1)
		

## <START> Debug
#print("total exec ", total_exec_count)
#print("max llfi ", max_llfi_index)
#print("sdc-rate map len, ", len(per_inst_sdc_rate_entry))
#print("exec-count map len, ", len(per_inst_exec_count_entry))
#print("number of removed llfi_index, ", len(removed_llfi_indices))
## <END> Debug


### <START> function definitions
def getSDCCoverage(fi_index):
	return 10000.0 * (per_inst_sdc_rate_entry.get(fi_index, 0.0) * (per_inst_exec_count_entry.get(fi_index, 0) / total_exec_count))

def getPerformanceOverhead(fi_index):
	return 100000.0 * (per_inst_exec_count_entry.get(fi_index, 0) / total_exec_count) 


def createNewSubprocess(execlist, isShell=False):
	return subprocess.Popen(execlist, shell=isShell, stdout=subprocess.PIPE)

def normalize(val, old_mn, old_mx, new_mn, new_mx):
	return ((val - old_mn) / (old_mx - old_mn)) * (new_mx - new_mn) + new_mn

### <END> function definitions

weight_sum = 0.0
profit_sum = 0.0
actual_min_weight = 1000000000000.0
actual_max_weight = 0.0

Count = 0

for fi_index in per_inst_exec_count_entry.keys():
	profit = getSDCCoverage(fi_index)
	weight = getPerformanceOverhead(fi_index)
	
	if weight > 0.0:	
		profit_sum += profit		
		
		if actual_min_weight > weight:
			actual_min_weight = weight
		if actual_max_weight < weight:
			actual_max_weight = weight		

		llfi_indices.append(fi_index)
		profits.append(profit)
		weights.append(weight)
		Count += 1
	else:
		removed_llfi_indices.append(fi_index)

#print("actual weight")
#print(weights)

for i in range(0, len(weights)):
	weights[i] = int(round(normalize(weights[i], actual_min_weight, actual_max_weight, 1.0, 100.0)))
	weight_sum += weights[i]
		

## <START> Debug
print("Count ", Count)
print("number of weights to consider: ", len(weights))
print("number of llfi indices that have positive exec-count: ", len(llfi_indices))
print("number of llfi indices that have zero exec-count: ", len(removed_llfi_indices))


print("profit sum: ", profit_sum)
print("weight sum: ", weight_sum)

## <END> Debug

#exec_list = ["python3", "knapsack.py"]
weight_profit_str = ""
Count = 0
for i in range(len(profits)):
	Count += 1
	if weight_profit_str == "":
		weight_profit_str += "%i-%f"%(weights[i], profits[i])
	else:
		weight_profit_str += ",%i-%f"%(weights[i], profits[i])

print("Count: ", Count)
#print("weight profit str: ", weight_profit_str)

os.system("mkdir Result")
os.system("rm -rf Result/knapsack-output-with-expected-coverage.txt")
os.system("rm -rf Result/expected-case-study-stats.csv")
knapsack_output_file = open("Result/knapsack-output-with-expected-coverage.txt", "a")
case_study_csv_file = open("Result/expected-case-study-stats.csv", "w")
csv_writer = csv.writer(case_study_csv_file)


## performance overhead in percentage
for performance_overhead in range(5, 101, 5):
	max_weight = int(round((weight_sum * performance_overhead) / 100.0))	

	cur_exec_list = ["python3", "Utils/knapsack.py", weight_profit_str]
	cur_exec_list.append("%i"%max_weight)
	#print("cur exec list: ", cur_exec_list)
	print("new knapsack run with max-weight %i and performance-overhead-in-percentage %i"%(max_weight, performance_overhead))
	knapsack_output_file.write("<START> performance-overhead: %i\n"%performance_overhead)
	knapsack_proc = createNewSubprocess(cur_exec_list)
	while True:
		line = knapsack_proc.stdout.readline()
		if not line:
			break
		
		line = str(line.decode().strip())
		if "max-profit" in line:
			max_weight = int(line.split(",")[0].strip().split(":")[1].strip())
			max_profit = float(line.split(",")[1].strip().split(":")[1].strip())
			csv_writer.writerow([str(performance_overhead) + "%", str(round(100 * (max_profit / profit_sum), 2)) + "%"])
			line = "max-weight: %i, max-profit: %.2f\nCorresponding performance-overhead-in-percentage: %.2f, sdc-coverage-in-percentage: %.2f"%(max_weight, max_profit, performance_overhead, 100 * (max_profit / profit_sum))
		
		elif "optimal indices" in line:
			knapsack_indices = [int(index) for index in line.split(":")[1].strip().split(" ")]
			#print(knapsack_indices)
			line = "optimal llfi_index set found by knapsack:"
			check_profit_sum = 0.0
			check_weight_sum = 0.0
			for array_index in knapsack_indices:
				line += " %i"%(llfi_indices[array_index])
				check_profit_sum += profits[array_index]
				check_weight_sum += weights[array_index]
			#print(check_weight_sum)	
			#print(check_profit_sum)
			
		knapsack_output_file.write("%s\n"%line)
	knapsack_output_file.write("<END>\n")
	print("knapsack run finished")
	
		

knapsack_output_file.close()
case_study_csv_file.close()




#################
os.system("python3 Utils/extractOptimalInstructionSets.py Result/knapsack-output-with-expected-coverage.txt")
	
	


