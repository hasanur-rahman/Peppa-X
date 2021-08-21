import os, sys

logPath = sys.argv[1]

#####################

rf = open(logPath, 'r')
logLines = rf.readlines()

inputDic = {}

genCounter = 0
for line in logLines:
	if "Best score so far" in line:
		score = float(line.split(": ")[1])
		bestInput = ""
		for inputS in inputDic:
			if inputDic[inputS] == score:
				bestInput = inputS
				break
		print( str(genCounter) + ";" + str(score) + ";" + str(bestInput))
		genCounter += 1
		inputDic = {}

	if "Evaluating input" in line:
		inputString = line.split("input: ")[1].split(";")[0]	
		sumScore = line.split("Sum(): ")[1].split(";")[0]
		inputDic[inputString] = float(sumScore)
