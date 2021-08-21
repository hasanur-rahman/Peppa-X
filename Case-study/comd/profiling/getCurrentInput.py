import sys, os


"""
this file is for passing input one by one to analysis_pass from inputGenList.txt
"""
inputArg1 = str(sys.argv[1])
inputArg2 = int(sys.argv[2])
inputArg3 = str(sys.argv[3])
inputArg4 = int(sys.argv[4])
inputArg5 = str(sys.argv[5])
inputArg6 = int(sys.argv[6])
inputArg7 = str(sys.argv[7])
inputArg8 = int(sys.argv[8])
inputArg9 = str(sys.argv[9])
inputArg10 = float(sys.argv[10])
inputArg11 = str(sys.argv[11])
inputArg12 = float(sys.argv[12])

input_file = open('Input/cur_input.txt','w')
input_file.write("%s %i %s %i %s %i %s %i %s %.2f %s %.2f\n"%(inputArg1, inputArg2, inputArg3, inputArg4, inputArg5, inputArg6, inputArg7, inputArg8, inputArg9, inputArg10, inputArg11, inputArg12))
input_file.close()
