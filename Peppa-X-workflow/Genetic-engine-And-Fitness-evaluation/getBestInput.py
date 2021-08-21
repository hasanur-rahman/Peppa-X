import os, sys

logPath = sys.argv[1]
maxGen = sys.argv[2]

#####################

rf = open(logPath, 'r')
logLines = rf.readlines()

inputDic = {}

genCounter = 0
bestScore = 0
optInput = ""
for line in logLines:

	if genCounter > int(maxGen):
		break

	if "Best score so far" in line:
		score = float(line.split(": ")[1])

		bestInput = ""
		for inputS in inputDic:
			if inputDic[inputS] == score:
				bestInput = inputS

				if score > bestScore:
					bestScore = score
					optInput = bestInput

				break
		print( str(genCounter) + ";" + str(score) + ";" + str(bestInput))
		genCounter += 1
		inputDic = {}

	if "Evaluating input" in line:
		inputString = line.split("input: ")[1].split(";")[0]	
		sumScore = line.split("Sum(): ")[1].split(";")[0]
		inputDic[inputString] = float(sumScore)


#print("************** Best input so far: " + str(optInput))
with open("ga-best-input.txt", "w") as f:
	f.write(str(optInput) + "\n")
