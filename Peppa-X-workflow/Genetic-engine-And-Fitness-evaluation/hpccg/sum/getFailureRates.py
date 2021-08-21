import os, sys, csv

llfiFolderPath = sys.argv[1]
maxNumberFi = int(sys.argv[2])
#input1 = int(sys.argv[3])
#input2 = int(sys.argv[4])

#inputs = llfiFolderPath.split("/")
#inputs = inputs[len(inputs) - 2]
#inputs = inputs[4:]
#inputs = inputs.split("-")
#input1 = int(inputs[0])
#input2 = int(inputs[1])

goldenFilePath = llfiFolderPath + "/baseline/result.prof.txt"
outputFileBase = llfiFolderPath + "/prog_output/result.0-"
errorFileBase = llfiFolderPath + "/error_output/errorfile-run-0-"
statFileBase = llfiFolderPath + "/llfi_stat_output/llfi.stat.fi.injectedfaults.0-"
################################

totalCounter = 0
sdcCounter = 0
crashCounter = 0
crashDic = {}
sdcDic = {}
instDic = {}
goldenString = open(goldenFilePath, 'r').read()
print('====== start =====')

for i in range(0, maxNumberFi):
	statFilePath = statFileBase + str(i) + ".txt"
	errorFilePath = errorFileBase + str(i)
	outputFilePath = outputFileBase + str(i) + ".txt"

	try:

		if os.path.isfile(statFilePath):
			statString = open(statFilePath, 'r').read()
			# Read inst index here
			instIndex = statString.split(", ")[2].split("fi_index=")[1]
			if instIndex not in crashDic:
				crashDic[instIndex] = 0
			if instIndex not in sdcDic:
				sdcDic[instIndex] = 0
			if instIndex not in instDic:
				instDic[instIndex] = 0
			#print(instIndex)
		
			# Check crash
			if os.path.isfile(errorFilePath):
				crashCounter += 1
				crashDic[instIndex] += 1
				totalCounter += 1
				instDic[instIndex] += 1
				continue
			else:
				if os.path.isfile(outputFilePath):
					# Check sdc
					outputString = open(outputFilePath, 'r').read()
					if outputString != goldenString:
						sdcCounter += 1
						sdcDic[instIndex] += 1
					totalCounter += 1
					instDic[instIndex] += 1
					continue
	
	except:
		continue

#print(sdcDic)
#print(crashDic)
#print(instDic)

# Summarizing results
#print("Input: %i %i"%(input1, input2))
print("Overall SDC rate: " + str(sdcCounter) + "/" + str(totalCounter) + " = " + str(sdcCounter/float(totalCounter)*100) + "%")
print("Overall crash rate: " + str(crashCounter) + "/" + str(totalCounter) + " = " + str(crashCounter/float(totalCounter)*100) + "%")
print("Overall masking rate: " + str((1-sdcCounter/float(totalCounter)-crashCounter/float(totalCounter))*100) + "%")
print("--------------------------------------------")

#info_file = open('Result/overall-sdc-rates.txt', 'w')
#info_file.write('%.2lf\n'%(input1, input2, 100.0 * (sdcCounter / totalCounter)))
#info_file.close()



csvfile = open('Result/per-inst-sdc-rates.csv', 'w' )
csvwriter = csv.writer(csvfile)

for instIndex in instDic:
	totalInstFi = instDic[instIndex]
	sdcCount = sdcDic[instIndex]
	crashCount = crashDic[instIndex]
	maskCount = totalInstFi - sdcCount - crashCount
	csvwriter.writerow([instIndex, 100.0 * (sdcCount / totalInstFi)])
	#print("== Instruction Index: " + str(instIndex) + ", SDC rate: " + str(sdcCount/float(totalInstFi)*100) + "%, Crash rate: " + str(crashCount/float(totalInstFi)*100) + "%, Mask rate: " + str(maskCount/float(totalInstFi)*100) + "%, Total FI: " + str(totalInstFi) )


csvfile.close()

print('=== done ===')
