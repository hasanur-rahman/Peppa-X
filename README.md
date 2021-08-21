# Peppa-X

Peppa-X can efficiently finds a test input that can estimate the bound of program SDC(silent data corruption) resiliency. Generally with strawman method it takes days even month to find the input that provides the highest SDC probablilty with manually doing fault injection to every single input and check their SDC probabilty. But Peppa-X leverages genetic algorithm, along with our dynamic analysis technique described in the paper to guide the search towards the input which exercises the relatively much higher SDC probability among all other inputs. That means it can find the input that exercises the most vulnerable part of the program.

## Build llvm 3.4
Before running Peppa-X, one must need to **first build llvm v3.4** with the script 'build-llvm-v3-4.sh' and also put our two **llvm passes** in the correct location under llvm v3.4 build folder (instructions are given inside "LLVM3.4-passes" folder). Then, if we run 'build-llvm-v3-4.sh', the script will automatically put compiled llvm-3.4 in the folder named 'llvm-tool' under User's home directory. LLVMv3.4 is compatible with Ubuntu 16.04 LTS operating system.
