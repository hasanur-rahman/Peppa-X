import os, sys, subprocess

inputArgs = str(sys.argv[1])

LLVM_SO_FILE = os.path.join(os.path.expanduser("~"), "llvm-tool/llvm-3.4/Release/lib/DumpOnceProfiling.so")

input_array = inputArgs.split(" ")


exec_list = ["./runAnalysisPass.sh"]
for inputArg in input_array:
	exec_list.append(str(inputArg))
exec_list.append(LLVM_SO_FILE)

	
ret_code = subprocess.call(exec_list)

if ret_code != 0 :
	print("Error:: something went wrong!")
	exit(1)

print("\n\n******** Result **********\n")
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

