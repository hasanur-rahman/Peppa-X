import os, sys, time

bmName = str(sys.argv[1])
progDefaultInput = str(sys.argv[2])
maxGen = int(sys.argv[3])

workflowRootDir = str(os.getcwd())
os.system("rm -rf workflow-output")
os.system("mkdir workflow-output")


os.chdir("Fuzzing-for-small-FI-input/%s"%bmName)
print("Fuzzing for small FI Input .......")
os.system("python3 findRefInput.py \"" + progDefaultInput  + "\"")
os.system("cp -r Result/* %s/workflow-output/"%workflowRootDir)
os.chdir(workflowRootDir)


print("\n\n\n............................. Pruning FI space ..................................")

os.chdir("Pruning-FI-space/%s"%bmName)
os.system("python3 runFIPruning.py \"" + progDefaultInput  + "\"" + " "+  bmName)
os.system("python3 getPruningRatio.py Result/pruning_pass.log "+ "\&\>" + " Result/pruning_ratio.log")
os.system("cp -r Result/* %s/workflow-output/"%workflowRootDir)
os.chdir(workflowRootDir)


print("\n\n\n........................ Running Genetic engine ............................")
os.chdir("Genetic-engine-And-Fitness-evaluation/%s"%bmName)
os.system("rm ga-output.log")
os.system("python GeneticAlgorithm.py " + str(maxGen))
os.system("cp ga-output.log %s/workflow-output/%s-ga-output.log"%(workflowRootDir, bmName))
os.chdir("../")
os.system("python getBestInput.py %s/ga-output.log %i"%(bmName, maxGen))
os.system("rm %s/ga-output.log"%bmName)
os.system("mv ga-best-input.txt %s/workflow-output/%s-ga-best-input-%i-generations.txt"%(workflowRootDir, bmName, maxGen))


os.chdir(workflowRootDir)


print("\n\n\n<<<<<<<<<<<<<< Peppa-X workflow execution completed >>>>>>>>>>>>>>>")
print("\n\n\n\n\n----------------------------------------------------------")
smallFIInput = ""
with open("workflow-output/small-input-ref-info.txt", "r") as f:
        smallFIInput = str(f.readline().strip().split(":")[0].strip())
print("Small FI Input for benchmark " + bmName + " is: " + smallFIInput)
print("-----------------------------------------------------------\n")


pruning_ratio = 0.0

with open("workflow-output/pruned_ratio.txt", "r") as f:
        pruning_ratio = float(f.readline().strip().split(":")[1].strip().split("=")[1].strip())


print("\n\n\n----------------------------------------------------------------")
print("FI-space pruning ratio for %s is %0.2f"%(bmName, pruning_ratio))
print("-----------------------------------------------------------\n")

print("\n\n\n-----------------------------------------------------------------------------------------")
with open("workflow-output/%s-ga-best-input-%i-generations.txt"%(bmName, maxGen), "r") as gaF:
	optInput = str(gaF.readline().strip())
	print("The optimal input produced by genetic engine at %i generations is: %s"%(maxGen, optInput))
print("--------------------------------------------------------------------------------\n")
os.system("mv workflow-output/representatives.txt workflow-output/%s-representative-instruction-set.txt"%bmName)
os.system("mv workflow-output/baseline_code_coverage.txt  workflow-output/%s-default-input-code-coverage.txt"%bmName)
os.system("mv workflow-output/small-input-ref-info.txt workflow-output/%s-small-FI-input-stats.txt"%bmName)
os.system("mv workflow-output/pruned_ratio.txt workflow-output/%s-estimated-pruning-ratio.txt"%bmName)
os.system("rm -rf workflow-output/pruning_pass.log")
print("Go to workflow-output folder to see the small FI-input, representative instruction set info and genetic-engine produced optimal input at %i generations for %s benchmark"%(maxGen, bmName))
print("-----------------------------------------------------------\n")
	
