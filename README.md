Peppa-X: Finding Program Test Inputs to Bound Silent DataCorruption Vulnerability in HPC Applications
====

## Goal
Peppa-X can efficiently find a test input that can estimate the bound of program SDC(silent data corruption) probability without conducting any fault injections. With strawman method, it generally takes days even months to find the input that provides the highest SDC probablilty by doing extensive fault injections to every single input and check their SDC probabilties. But Peppa-X leverages genetic algorithm, along with our dynamic analysis technique described in the paper, to guide the search towards the input that gives the relatively much higher SDC probability among all other inputs. That means it can efficiently find the input that exercises the most vulnerable parts of the program. Feel free to check our SC'21 paper for further details: https://dl.acm.org/doi/10.1145/3458817.3476147

## Build LLVM-v3.4
Before running Peppa-X, one must need to **first build llvm v3.4** with the script 'build-llvm-v3-4.sh' and also put our two **llvm passes** in the correct location under llvm v3.4 build folder (instructions are given inside "LLVM3.4-passes" folder). Then, if we run 'build-llvm-v3-4.sh', the script will automatically put compiled llvm-3.4 in the folder named 'llvm-tool' under User's home directory. LLVMv3.4 is compatible with Ubuntu 16.04 operating system.
