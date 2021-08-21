import os, sys


log_file_path = str(sys.argv[1])

excluded_inst_type_list = ["br", "phi", "alloca", "store", "ret", "call", "unreachable", "switch"]
special_inst_type_list = ["cmp", "xor", "and", "or", "cast", "ext", "itofp", "fpto", "trunc"]
#others_inst_type_list = ["load", "select"]

sequences = []
with open(log_file_path, "r") as f:
	while True:
		line = f.readline()
		
		if not line:
			break
		
		line = line.strip()
		
		if "START" in line:
			line = line.lower()
			line = line.split(";")[1:]

			filtered_sequence = []
			for element in line:
				if "opcode" in element:
					inst_type = element.strip().split(",")[0].strip().split(":")[1].strip()
					llfi_index = int(element.strip().split(",")[1].strip().split(":")[1].strip())
					
					#print(inst_type, end = ' ')
					#print(llfi_index)
					
					if inst_type not in excluded_inst_type_list:
						filtered_sequence.append((llfi_index, inst_type))
			
			if len(filtered_sequence) > 0:
				filtered_sequence.sort()
				sequences.append(filtered_sequence)



def checkSpecialInst(cur_inst_type):
	global special_inst_type_list
	for inst_type in special_inst_type_list:
		if inst_type in cur_inst_type:
			return True
	return False

pruned_fi_sites_count = 0
total_fi_sites_count = 0
representatives = []

print("<START>*********** seqeunces after ignoring excluded inst list **********")
for sequence in sequences:
	print(sequence)
	prev_inst_type = ""
	prev_llfi_index = -2
	
	visited_seq_representatives = []
	
	index = 0
	for index in range(0 ,len(sequence)):
		llfi_index, inst_type =  sequence[index]
		
		if checkSpecialInst(inst_type) == True:
			pruned_fi_sites_count += 1
			total_fi_sites_count += 1
			representatives.append((inst_type, llfi_index))
		else:
			total_fi_sites_count += 1
			
			if len(visited_seq_representatives) == 0:
				pruned_fi_sites_count += 1
				representatives.append((inst_type, llfi_index))
				visited_seq_representatives.append(inst_type)
			else:
				if( ( "getelementptr" in inst_type ) or ( "extractvalue" in inst_type )):
					if index + 1 < len(sequence):
						(nxt_llfi_index,nxt_inst_type) = sequence[index + 1]
						if ( ("load" in nxt_inst_type) or ("select" in nxt_inst_type)):
							representatives.append((nxt_inst_type, nxt_llfi_index)) 	
							pruned_fi_sites_count += 1
							index += 1

		index += 1		
						
print("<END>*********** seqeunces after ignoring excluded inst list **********\n\n")

if len(representatives) != pruned_fi_sites_count:
	print("these two should match!")
	exit(1)

print("\n<START>------- Representatives  **********\n")
os.system("rm Result/representatives.txt")
representatives_output_file = open("Result/representatives.txt", "a")
for (inst_type, llfi_index) in representatives:
	print("%s %i"%(inst_type, llfi_index))
	representatives_output_file.write("%i\n"%(llfi_index))
representatives_output_file.close()
print("<END>------- Representatives **********\n")




print("representative fi sites count: ", pruned_fi_sites_count)
print("total fi sites count: ",total_fi_sites_count)
print("pruning ratio: ", (total_fi_sites_count - pruned_fi_sites_count) / total_fi_sites_count)
print("\nsee the Result/pruned_ratio.txt file ")
output_log_file = open("Result/pruned_ratio.txt", "w")
output_log_file.write("ratio: %i/%i = %.2f\n"%((total_fi_sites_count - pruned_fi_sites_count), total_fi_sites_count,(total_fi_sites_count - pruned_fi_sites_count) / total_fi_sites_count))
output_log_file.close()
			
			
