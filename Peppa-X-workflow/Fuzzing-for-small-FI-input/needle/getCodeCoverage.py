import os, sys

exec_file_path = sys.argv[1]


with open(exec_file_path, 'r') as f:
	lines = [line.strip() for line in f.readlines()]
	
	total_llfi_indices_count = 0.0
	executed_llfi_indices_count = 0.0

	for line in lines:
		llfi_index = int(line.split(":")[0])
		exec_count = int(line.split(":")[1])
			
		total_llfi_indices_count += 1
		if exec_count > 0:
			executed_llfi_indices_count += 1
	
	os.system("rm -f code-coverage.txt")
	cov_file = open('code-coverage.txt', 'w')
	cov_file.write("%.2lf\n"%(executed_llfi_indices_count / total_llfi_indices_count))
	cov_file.close()
	
	
