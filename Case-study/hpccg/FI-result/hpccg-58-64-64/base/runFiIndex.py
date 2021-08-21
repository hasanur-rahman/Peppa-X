import os, sys

bmName = sys.argv[1]
progInput = sys.argv[2]
FiIndex = sys.argv[3]

rf = open('input.yaml', 'r')
newR = rf.read().replace("-injecttoindex=XXXX", "-injecttoindex=" + str(FiIndex) )
rf.close()
wf = open('input.yaml' ,'w')
wf.write(newR)
wf.close()

os.system("instrument --readable " + bmName + ".ll")
os.system("profile llfi/" + bmName + "-profiling.exe " + progInput)
fiString = "injectfault llfi/" + bmName + "-faultinjection.exe " + progInput
print("Run FI with this command: " + fiString)
print(fiString)
os.system(fiString)
