import os, sys, subprocess, csv

llfi_indices_file_path = str(sys.argv[1])
fi_folder_path = str(sys.argv[2])
noCluster = int(sys.argv[3])
noMaxFI = int(sys.argv[4])

def createNewSubprocess(execlist, isShell=False):
    return subprocess.Popen(execlist, shell=isShell, stdout=subprocess.PIPE)


os.system("rm -f Result/actual-case-study-stats.csv")
output_file = open("Result/actual-case-study-stats.csv", "w")
csv_writer = csv.writer(output_file)


original_sdc_rate = 0.0
proc1 = createNewSubprocess(["python3", "Utils/getFilteredClusterFailureRates.py", fi_folder_path, str(noCluster), str(noMaxFI), ""])
while True:
    line = proc1.stdout.readline()
    if not line:
        break

    line  = line.decode().strip()
    if "Overall SDC rate" in line:
        original_sdc_rate = float(line.split("=")[1].strip())

print("vanilla sdc rate: %.2f"%original_sdc_rate)

with open(llfi_indices_file_path, "r") as f:
    for line in f.readlines():
        performance_overhead = int(line.strip().split(":")[0].strip())
        llfi_index_set = str(line.strip().split(":")[1].strip())
        print(llfi_index_set)
        
        sdc_rate = 0.0
        proc2 = createNewSubprocess(["python3", "Utils/getFilteredClusterFailureRates.py", fi_folder_path, str(noCluster), str(noMaxFI),llfi_index_set])
        while True:
            line = proc2.stdout.readline()
            if not line:
                break
            
            line  = line.decode().strip()
            if "Overall SDC rate" in line:
                sdc_rate = float(line.split("=")[1].strip())

        print("performance-overhead: %i, sdc-rate: %.2f"%(performance_overhead, sdc_rate))
        sdc_cov = 100.0 * ( (original_sdc_rate - sdc_rate) / original_sdc_rate )
        csv_writer.writerow(["%.2f"%performance_overhead + str("%"), "%.2f"%sdc_cov + str("%")])

output_file.close()


