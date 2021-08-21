import os, sys

bmName = sys.argv[1]
progInput = sys.argv[2]

os.system("instrument --readable " + bmName + ".ll -lm")
os.system("profile llfi/" + bmName + "-profiling.exe " + progInput)
fiString = "injectfault llfi/" + bmName + "-faultinjection.exe " + progInput
print("Run FI with this command: " + fiString)
print(fiString)
os.system(fiString)
