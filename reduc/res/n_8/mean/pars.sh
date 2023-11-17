#!/bin/zsh
echo "start"
cd /Users/nanki/Desktop/2023-2024hpc/outils_de_base_hpc/OBHPC_CS/TD2/reduc/res/n_8//mean

sed -n 3p gcc.txt | cut -d";" -f 10 >> ./tmp_gccbase_mean.txt
sed -n 6p gcc.txt | cut -d";" -f 10 >>  ./tmp_gccbase_mean.txt
sed -n 9p gcc.txt | cut -d";" -f 10 >>  ./tmp_gccbase_mean.txt
sed -n 12p gcc.txt | cut -d";" -f 10 >>  ./tmp_gccbase_mean.txt
sed -n 15p gcc.txt | cut -d";" -f 10 >>  ./tmp_gccbase_mean.txt

sed -n 4p gcc.txt | cut -d";" -f 10 >> ./tmp_gccc8_mean.txt
sed -n 7p gcc.txt | cut -d";" -f 10 >>  ./tmp_gccc8_mean.txt
sed -n 10p gcc.txt | cut -d";" -f 10 >> ./tmp_gccc8_mean.txt
sed -n 13p gcc.txt | cut -d";" -f 10 >>  ./tmp_gccc8_mean.txt
sed -n 16p gcc.txt | cut -d";" -f 10 >>  ./tmp_gccc8_mean.txt

sed -n 3p clang.txt | cut -d";" -f 10 >> ./tmp_clangbase_mean.txt
sed -n 6p clang.txt | cut -d";" -f 10 >>  ./tmp_clangbase_mean.txt
sed -n 9p clang.txt | cut -d";" -f 10 >> ./tmp_clangbase_mean.txt
sed -n 12p clang.txt | cut -d";" -f 10 >>  ./tmp_clangbase_mean.txt
sed -n 15p clang.txt | cut -d";" -f 10 >>  ./tmp_clangbase_mean.txt

sed -n 4p clang.txt | cut -d";" -f 10 >> ./tmp_clangc8_mean.txt
sed -n 7p clang.txt | cut -d";" -f 10 >>  ./tmp_clangc8_mean.txt
sed -n 10p clang.txt | cut -d";" -f 10 >> ./tmp_clangc8_mean.txt
sed -n 13p clang.txt | cut -d";" -f 10 >>  ./tmp_clangc8_mean.txt
sed -n 16p clang.txt | cut -d";" -f 10 >>  ./tmp_clangc8_mean.txt


paste MOban.txt *_mean.txt > res.txt
rm *_mean.txt
