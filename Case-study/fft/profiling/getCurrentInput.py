import sys, os


"""
this file is for passing input one by one to analysis_pass from inputGenList.txt
"""
inputArg1 = str(sys.argv[1])
inputArg2 = str(sys.argv[2])
inputArg3 = str(sys.argv[3])
inputArg4 = str(sys.argv[4])
inputArg5 = str(sys.argv[5])

input_file = open('Input/cur_input.txt','w')
input_file.write("%s %s %s %s %s\n"%(inputArg1[1:], inputArg2[1:], inputArg3[1:], inputArg4[1:], inputArg5[1:]))
input_file.close()
