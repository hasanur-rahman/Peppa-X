import os, sys, csv

clusterFolderPath = sys.argv[1]
clusterNumber = int(sys.argv[2])
maxNumberFi = int(sys.argv[3])
llfi_indices_str = str(sys.argv[4])


llfi_index_set = []
if llfi_indices_str != "":
	llfi_index_set = [ fi_index.strip() for fi_index in llfi_indices_str.split(" ")]
print(llfi_index_set)


def calculateSDC():


	totalCounter = 0
	sdcCounter = 0
	crashCounter = 0
	maskingCounter = 0
	crashDic = {}
	sdcDic = {}
	instDic = {}

	#global totalCounter, sdcCounter, crashCounter, crashDic, sdcDic, instDic, clusterFolderPath, clusterNumber, maxNumberFi
	global clusterFolderPath, clusterNumber, maxNumberFi

	for j in range(0, clusterNumber):

		#global totalCounter, sdcCounter, crashCounter, crashDic, sdcDic, instDic, clusterFolderPath, clusterNumber, maxNumberFi


		llfiFolderPath = os.path.join(clusterFolderPath, "fi-%i"%j, "llfi")
		print('llfiFolderPath: %s\n'%llfiFolderPath)

		mtotalCounter, msdcCounter ,mcrashCounter , mcrashDic, msdcDic, minstDic, mmaskingCounter = calculateCurrentCluster(llfiFolderPath)

		totalCounter += mtotalCounter
		sdcCounter += msdcCounter
		crashCounter += mcrashCounter
		maskingCounter += mmaskingCounter
		print('mTotoal: %i\n'%mtotalCounter)
		print('mSdc: %i\n'%msdcCounter)
		

		for instIndex in minstDic:
			if instIndex not in instDic:
				instDic[instIndex] = 0
			if instIndex not in sdcDic:
				sdcDic[instIndex] = 0
			if instIndex not in crashDic:
				crashDic[instIndex] = 0

			instDic[instIndex] += minstDic[instIndex]
			sdcDic[instIndex] += msdcDic[instIndex]
			crashDic[instIndex] += mcrashDic[instIndex]

	# Summarizing results
	#print("Input: %i %i"%(input1, input2))
	print("Overall SDC rate: " + str(sdcCounter) + "/" + str(totalCounter) + " = " + str(sdcCounter/float(totalCounter)*100) )
	print("Overall crash rate: " + str(crashCounter) + "/" + str(totalCounter) + " = " + str(crashCounter/float(totalCounter)*100))
	print("Overall masking rate: " + str(maskingCounter) + "/" + str(totalCounter) + " = " + str((1-sdcCounter/float(totalCounter)-crashCounter/float(totalCounter))*100))
	print("--------------------------------------------")
	#info_file = open('Result/overall-sdc-rates.txt', 'w')
	#info_file.write('%.2lf\n'%(input1, input2, 100.0 * (sdcCounter / totalCounter)))
	#info_file.close()

	#csvfile = open('Result/per-inst-sdc-rates.csv', 'w' )
	#csvwriter = csv.writer(csvfile)

	#for instIndex in instDic:
	#	totalInstFi = instDic[instIndex]
	#	sdcCount = sdcDic[instIndex]
	#	crashCount = crashDic[instIndex]
	#	maskCount = totalInstFi - sdcCount - crashCount
	#	csvwriter.writerow([instIndex, 100.0 * (sdcCount / totalInstFi)])
		#print("== Instruction Index: " + str(instIndex) + ", SDC rate: " + str(sdcCount/float(totalInstFi)*100) + "%, Crash rate: " + str(crashCount/float(totalInstFi)*100) + "%, Mask rate: " + str(maskCount/float(totalInstFi)*100) + "%, Total FI: " + str(totalInstFi) )


	#csvfile.close()

	print('=== done ===')

def calculateCurrentCluster(llfiFolderPath):
	if not os.path.isdir(llfiFolderPath) :
		print('should exist a directory')
		exit(1)

	global clusterFolderPath, clusterNumber, maxNumberFi
	goldenFilePath = llfiFolderPath + "/baseline/golden_std_output"
	outputFileBase = llfiFolderPath + "/std_output/std_outputfile-run-0-"
	errorFileBase = llfiFolderPath + "/error_output/errorfile-run-0-"
	statFileBase = llfiFolderPath + "/llfi_stat_output/llfi.stat.fi.injectedfaults.0-"

	goldenString = open(goldenFilePath, 'r').read()
	print('====== start =====')
	mtotalCounter = 0
	msdcCounter = 0
	mcrashCounter = 0
	mcrashDic = {}
	msdcDic = {}
	minstDic = {}
	maskingCounter = 0

	for i in range(0, maxNumberFi):
		statFilePath = statFileBase + str(i) + ".txt"
		errorFilePath = errorFileBase + str(i)
		outputFilePath = outputFileBase + str(i)

		try:
			if os.path.isfile(statFilePath):
				statString = open(statFilePath, 'r').read()
				instIndex = statString.split(", ")[2].split("fi_index=")[1]
				if instIndex not in mcrashDic:
					mcrashDic[instIndex] = 0
				if instIndex not in msdcDic:
					msdcDic[instIndex] = 0
				if instIndex not in minstDic:
					minstDic[instIndex] = 0


				if os.path.isfile(errorFilePath):

					mcrashCounter += 1
					mcrashDic[instIndex] += 1
					mtotalCounter += 1
					minstDic[instIndex] += 1
					continue
				else:
					if os.path.isfile(outputFilePath):
						outputString = open(outputFilePath, 'r').read()
						if ( (outputString != goldenString) and (instIndex not in llfi_index_set)):
							msdcCounter += 1
							msdcDic[instIndex] += 1
						else:
							maskingCounter += 1
						mtotalCounter += 1
						minstDic[instIndex] += 1
						continue
					else:
						#print('output: %s\n'%outputFilePath)
						continue
		except:
			continue

	print('====== end =====')


	return mtotalCounter, msdcCounter ,mcrashCounter , mcrashDic, msdcDic, minstDic,maskingCounter



	

def main(args):
	calculateSDC()


if __name__ == "__main__":
    main(sys.argv[1:])
