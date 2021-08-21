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


subprocess.call(["rm" , "-rf", "Result"])

#print("\n****** Result *********\n")

