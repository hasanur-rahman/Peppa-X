import os, sys, subprocess

inputArgs = str(sys.argv[1])

LLVM_SO_FILE = os.path.join(os.path.expanduser("~"), "llvm-tool/llvm-3.4/Release/lib/DumpOnceProfiling.so")

input_array = inputArgs.split(" ")


exec_list = ["./runAnalysisPass.sh"]
arg_number  =1
for inputArg in input_array:
	exec_list.append(str(inputArg[1:]))
exec_list.append(LLVM_SO_FILE)

print(exec_list)

	
ret_code = subprocess.call(exec_list)

if ret_code != 0 :
	print("Error:: something went wrong!")
	exit(1)

print("\n\n******** Result **********\n")
inputArgs = "%s %s %s %s %s"%(str(input_array[0][1:]), str(input_array[1][1:]), str(input_array[2][1:]), str(input_array[3][1:]), str(input_array[4][1:]))
with open("Result/sum_output.txt", "r") as f:
	lines = [line.strip() for line in f.readlines()]
	
	for line in lines:
		inputs = line.strip().split(":")[0].strip()
		if (inputArgs == str(inputs) ):
			result = float(line.strip().split(":")[1].strip())
			print("sum: %.4f"%result)
			os.system("rm -f fitness-score.txt")
			wf = open("fitness-score.txt", "w")
			wf.write("%.4f"%result)
			wf.close()
			break

subprocess.call(["rm" , "-rf", "Result"])

#print("\n****** Result *********\n")

