#!/bin/sh
CUR_DIR="$(pwd)"
cd ~


mkdir llvm-tool
rm -rf llvm-tool/*
cd llvm-tool
wget https://releases.llvm.org/3.4/llvm-3.4.src.tar.gz
tar -xvf llvm-3.4.src.tar.gz
wget http://llvm.org/releases/3.4/clang-3.4.src.tar.gz
tar -xvf clang-3.4.src.tar.gz
mv clang-3.4 llvm-3.4/tools/clang
wget https://releases.llvm.org/3.4/compiler-rt-3.4.src.tar.gz
tar -xvf compiler-rt-3.4.src.tar.gz
mv compiler-rt-3.4 llvm-3.4/projects/compiler-rt
wget https://releases.llvm.org/3.4/libcxx-3.4.src.tar.gz
tar -xvf libcxx-3.4.src.tar.gz
mv libcxx-3.4 llvm-3.4/projects/libcxx
wget https://releases.llvm.org/3.4/test-suite-3.4.src.tar.gz
tar -xvf test-suite-3.4.src.tar.gz
mv test-suite-3.4 llvm-3.4/projects/test-suite
cd llvm-3.4
./configure --enable-optimized --disable-assertions --enable-targets=host --with-python=“/usr/bin/python2”
make -j 5
make -j 5 check-all
cd $CUR_DIR

echo "\n\n <<<<<<<<<< llvm v3.4 build successful!! Go to 'llvm-tool' folder in your $HOME directory >>>>>>>>>>>>\n\n"
