import os, sys
import time
import subprocess

########## Benchmark specific parameter   #####################
startLine = 0
endLine = 160
bmName = "pathfinder"
progInput = "74 5"
###############################

# Read input list
inputList = open('index_list.txt', 'r').readlines()
lineCounter = 0
for eachIndex in inputList:
	if eachIndex != "\n" and lineCounter >= startLine  and lineCounter < endLine:
		# Launch FI for the index
		eachIndex = eachIndex.replace("\n", "")
		inputFolderName = bmName + "-" + eachIndex
		os.system("cp -r base " + inputFolderName)
		os.chdir(inputFolderName)
		subprocess.Popen(["python", "runFiIndex.py", bmName, progInput, eachIndex])
		os.chdir("../")
		time.sleep(2)
	lineCounter += 1
