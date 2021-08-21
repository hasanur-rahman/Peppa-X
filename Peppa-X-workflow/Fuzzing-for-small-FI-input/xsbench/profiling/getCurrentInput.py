import sys, os


"""
this file is for passing input one by one to analysis_pass from inputGenList.txt
"""
inputArg1 = str(sys.argv[1])
inputArg2 = int(sys.argv[2])
inputArg3 = str(sys.argv[3])
inputArg4 = str(sys.argv[4])
inputArg5 = str(sys.argv[5])
inputArg6 = int(sys.argv[6])
inputArg7 = str(sys.argv[7])
inputArg8 = int(sys.argv[8])

input_file = open('Input/cur_input.txt','w')
input_file.write("%s %i %s %s %s %i %s %i\n"%(inputArg1, inputArg2, inputArg3, inputArg4, inputArg5, inputArg6, inputArg7, inputArg8))
input_file.close()
