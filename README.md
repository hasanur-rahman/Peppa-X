Peppa-X: Finding Program Test Inputs to Bound Silent DataCorruption Vulnerability in HPC Applications
====

## Goal
Peppa-X can efficiently find a test input that can estimate the bound of program SDC(silent data corruption) probability without conducting any fault injections. With strawman method, it generally takes days even months to find the input that provides the highest SDC probablilty by doing extensive fault injections to every single input and check their SDC probabilties. But Peppa-X leverages genetic algorithm, along with our dynamic analysis technique described in the paper, to guide the search towards the input that gives the relatively much higher SDC probability among all other inputs. That means it can efficiently find the input that exercises the most vulnerable parts of the program. Feel free to check our SC'21 paper for further details: https://dl.acm.org/doi/10.1145/3458817.3476147

## Abstract
Transient hardware faults have become prevalent due to the shrinking size of transistors, leading to silent data corruptions (SDCs). Therefore, HPC applications need to be evaluated (e.g., via fault injections) and protected to meet the reliability target. In the evaluation, the target programs exercise with a set of given inputs which are usually from program benchmark suite. However, these inputs rarely manifest the SDC vulnerabilities, leading to over-optimistic assessment and unexpectedly higher failure rates in production. We propose Peppa-X, which efficiently identifies the test inputs that estimate the bound of program SDC resiliency. Our key insight is that the SDC sensitivity distribution in a program often remains stationary across input space. Thereby, we can guide the search of SDC-bound inputs by a sampled distribution. Our evaluation shows that Peppa-X can identify the SDC-bound input of a program that existing methods cannot find even with 5x more search time.

## How to Build LLVM-v3.4
Before running Peppa-X, one must need to **first build llvm v3.4** with the script 'build-llvm-v3-4.sh' and also put our two **llvm passes** in the correct location under llvm v3.4 build folder (instructions are given inside "LLVM3.4-passes" folder). Then, if we run 'build-llvm-v3-4.sh', the script will automatically put compiled llvm-3.4 in the folder named 'llvm-tool' under User's home directory. LLVMv3.4 is compatible with Ubuntu 16.04 operating system.

## License

This work is licensed under a [Creative Commons Attribution 4.0 International License](https://creativecommons.org/licenses/by/4.0/).

[![CC BY 4.0](https://licensebuttons.net/l/by/4.0/88x31.png)](https://creativecommons.org/licenses/by/4.0/)
