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

#range_start = 1
#range_end = 100
#increment_amount = 100
ranges = [[1, 10], [10, 15], [1,1]]
limits = [300, 300, 1]
increment_amount = [10, 5, 0]



cur_code_coverage = 0.0
final_ref_input = ""

inputArg1 = 0
inputArg2 = 0

while cur_code_coverage < original_code_coverage  - 0.02:
	inputArg1 = random.randint(ranges[0][0], ranges[0][1]) * 16
	inputArg2 = random.randint(ranges[1][0], ranges[1][1])
	inputArg3 = random.randint(ranges[2][0], ranges[2][1])
	
	inputArgStr = "%i %i %i"%(inputArg1, inputArg2, inputArg3)
	
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
#	range_end += increment_amount
#	if range_end > 3000:
#		range_end = 3000
	
	for j in range(0, len(ranges)):
		ranges[j][1] += increment_amount[j]
		if ranges[j][1] > limits[j]:
			ranges[j][1] = limits[j]




os.system("rm code-coverage.txt")
#os.system("rm fitness-score.txt")

os.system("mkdir Result")

with open("Result/baseline_code_coverage.txt", "w") as ff:
	ff.write("%.2f\n"%original_code_coverage)
with open("Result/small-input-ref-info.txt", "w") as ff:
	ff.write("%i %i %i:%.2lf\n"%(inputArg1, inputArg2, inputArg3, cur_code_coverage))

	
