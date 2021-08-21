
import os, sys

logPath = sys.argv[1]
maxGen = sys.argv[2]

inputDict = {}
genCounter = 0
Count = 0

with open(logPath, "r") as f:
	while True:
		line = f.readline()
		if not line:
			break
		if genCounter > int(maxGen):
			break
		
		line = line.strip()
		
		if "Best score at gen" in line:
			#print(line)
			genCounter += 1
		
		elif "Evaluating input" in line:
			inputString = line.split("input: ")[1].strip().split(";")[0].strip()
			#print(inputString)
			Count += 1
			if inputDict.get(inputString) == None:
				inputDict[inputString] = 1

print(genCounter)
print(Count)
print(len(inputDict))
			
