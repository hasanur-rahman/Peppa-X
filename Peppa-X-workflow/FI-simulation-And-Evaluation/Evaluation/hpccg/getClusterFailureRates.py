import os, sys, csv, subprocess

folderPath = str(sys.argv[1])
bmName = str(sys.argv[2])
numCluster = int(sys.argv[3])
maxNumberFi = int(sys.argv[4])

folderPattern = "-small-ref-"

def createNewSubprocess(execlist, isShell=False):
	return subprocess.Popen(execlist, shell=isShell, stdout=subprocess.PIPE)

def calculateSDC():


	totalCounter = 0
	sdcCounter = 0
	crashCounter = 0
	maskingCounter = 0
	crashDic = {}
	sdcDic = {}
	instDic = {}
	valid_llfi_indices_count = {}
	valid_representatives_file = open("Result/valid_representatives.txt", "w")
	valid_representatives_file = open("Result/valid_representatives.txt", "a")
	count = {}
	

	
	global folderPath,  maxNumberFi

	for i in range(1,numCluster+1):
		ref_folder_path = os.path.join(folderPath, "%s%s%i"%(bmName, folderPattern, i))
		if not os.path.isdir(ref_folder_path):
			continue
	
		proc = createNewSubprocess(['ls', ref_folder_path])
		#count = 0

		while True:
	
		
			fi_folder = proc.stdout.readline()
			if not fi_folder:
				break
		
			fi_folder = fi_folder.decode().strip()
		
			if "%s-"%bmName not in fi_folder:
				continue 
			count[int(fi_folder.split("-")[1].strip())] = 1

			

			llfiFolderPath = os.path.join(ref_folder_path, fi_folder, "llfi")
			if not os.path.isdir(llfiFolderPath) :
				print('not a directory')
				exit(1)
			print(' ==== llfiFolderPath: %s ======\n'%llfiFolderPath)

			mtotalCounter, msdcCounter ,mcrashCounter , mcrashDic, msdcDic, minstDic, mmaskingCounter = calculateCurrentCluster(llfiFolderPath)

			totalCounter += mtotalCounter
			sdcCounter += msdcCounter
			crashCounter += mcrashCounter
			maskingCounter += mmaskingCounter
			print('mTotoal: %i\n'%mtotalCounter)
			print('mSdc: %i\n'%msdcCounter)
			if mtotalCounter >= 20:
				if valid_llfi_indices_count.get(int(fi_folder.split("-")[1].strip())) == None:
					valid_representatives_file.write("%i\n"%(int(fi_folder.split("-")[1].strip())))
				valid_llfi_indices_count[int(fi_folder.split("-")[1].strip())] = 1
			#else:
				#totalCounter -= mtotalCounter
				#sdcCounter -= msdcCounter
				#crashCounter -= mcrashCounter
				#maskingCounter -= mmaskingCounter
				#continue

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
	print("number of original representatives: ", len(count))
	#print("Overall SDC rate: " + str(sdcCounter) + "/" + str(totalCounter) + " = " + str(sdcCounter/float(totalCounter)*100) + "%")
	#print("Overall crash rate: " + str(crashCounter) + "/" + str(totalCounter) + " = " + str(crashCounter/float(totalCounter)*100) + "%")
	#print("Overall masking rate: " + str(maskingCounter) + "/" + str(totalCounter) + " = " + str((1-sdcCounter/float(totalCounter)-crashCounter/float(totalCounter))*100) + "%")
	print("--------------------------------------------")
	

	valid_representatives_file.close()
	print("valid representative count: ", len(valid_llfi_indices_count))

	csvfile = open('Result/pruning-per-inst-sdc-rates.csv', 'w' )
	csvwriter = csv.writer(csvfile)

	for instIndex in instDic:
		totalInstFi = instDic[instIndex]
		sdcCount = sdcDic[instIndex]
		crashCount = crashDic[instIndex]
		maskCount = totalInstFi - sdcCount - crashCount
		csvwriter.writerow([instIndex, 100.0 * (sdcCount / totalInstFi)])
		


	csvfile.close()

	print('=== done ===')

def getOutput(lines):
    output = []
    is_started  =False
    
    for line in lines:
        if (("Residual" in line) or ("residual" in line)):
        	output.append(line)
    

    return output

def calculateCurrentCluster(llfiFolderPath):
	if not os.path.isdir(llfiFolderPath) :
		print('should exist a directory')
		exit(1)

	global clusterFolderPath, clusterNumber, maxNumberFi
	goldenFilePath = llfiFolderPath + "/baseline/golden_std_output"
	outputFileBase = llfiFolderPath + "/std_output/std_outputfile-run-0-"
	errorFileBase = llfiFolderPath + "/error_output/errorfile-run-0-"
	statFileBase = llfiFolderPath + "/llfi_stat_output/llfi.stat.fi.injectedfaults.0-"

	goldenString = getOutput(open(goldenFilePath, 'r').readlines())
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
						outputString = getOutput(open(outputFilePath, 'r').readlines())
						if outputString != goldenString:
							#print("yes")
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
