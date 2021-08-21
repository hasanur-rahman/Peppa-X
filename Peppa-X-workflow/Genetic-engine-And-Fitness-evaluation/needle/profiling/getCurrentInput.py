import sys, os


"""
this file is for passing input one by one to analysis_pass from inputGenList.txt
"""
inputArg1 = int(sys.argv[1])
inputArg2 = int(sys.argv[2])
inputArg3 = int(sys.argv[3])

input_file = open('Input/cur_input.txt','w')
input_file.write("%i %i %i\n"%(inputArg1, inputArg2, inputArg3))
input_file.close()
