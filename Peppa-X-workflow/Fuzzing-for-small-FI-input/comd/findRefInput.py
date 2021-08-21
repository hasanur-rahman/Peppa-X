import os, sys, subprocess, random

original_ref_inputArgs = str(sys.argv[1])


input_array = original_ref_inputArgs.split(" ")

random.seed(10)

exec_list = ["python3"]
exec_list.append("runAnalysisAndgetCoverage.py")
exec_list.append(original_ref_inputArgs)


ret_code = subprocess.call(exec_list)

if ret_code != 0 :
	print("Error:: something went wrong!")
	exit(1)

original_code_coverage = 0.0
with open("code-coverage.txt", "r") as f:
	original_code_coverage = float(f.readline().strip())

print("original code coverage: ", original_code_coverage)

ranges = [[5,5], [5,5], [5,5], [5,5]]
limits = [20, 20, 20, 20]
increment_amount = [2, 2, 2, 2]


cur_code_coverage = 0.0
final_ref_input = ""

inputArg1 = 0
inputArg2 = 0
inputArg3 = 0
inputArg4 = 0

while cur_code_coverage < original_code_coverage  - 0.02:
	inputArg1 = random.randint(ranges[0][0], ranges[0][1])
	inputArg2 = random.randint(ranges[1][0], ranges[1][1])
	inputArg3 = random.randint(ranges[2][0], ranges[2][1])
	inputArg4 = random.randint(ranges[3][0], ranges[3][1])
	
	inputArgStr = "-x %i -y %i -z %i -N %i -T 2.2 -r 0.2"%(inputArg1, inputArg2, inputArg3, inputArg4)
	
	exec_list = ["python3"]
	exec_list.append("runAnalysisAndgetCoverage.py")
	exec_list.append(inputArgStr)

	ret_code = subprocess.call(exec_list)
	
	if ret_code != 0 :
        	print("Error:: something went wrong!")
        	exit(1)

	with open("code-coverage.txt", "r") as f:
        	cur_code_coverage = float(f.readline().strip())

	print("cur code coverage: ", cur_code_coverage)
	
	#range_start += increment_amount
	for j in range(0, len(ranges)):
		ranges[j][1] += increment_amount[j]
		if ranges[j][1] > limits[j]:
			ranges[j][1] = limits[j]
		
	#range_end += increment_amount
	#if range_end > 3000:
		#range_end = 3000


os.system("rm code-coverage.txt")
os.system("mkdir Result")

with open("Result/baseline_code_coverage.txt", "w") as ff:
	ff.write("%.2f\n"%original_code_coverage)
with open("Result/small-input-ref-info.txt", "w") as ff:
	ff.write("-x %i -y %i -z %i -N %i -T 2.2 -r 0.2:%.2lf\n"%(inputArg1, inputArg2, inputArg3, inputArg4, cur_code_coverage))

	
