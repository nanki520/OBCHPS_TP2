#!/bin/zsh
echo "start"
cd /Users/nanki/Desktop/2023-2024hpc/outils_de_base_hpc/OBHPC_CS/TD2/dotprod/res/n_128/MIB


sed -n 3p gcc.txt | cut -d";" -f 12 >> ./tmp_gccbase_mib.txt
sed -n 6p gcc.txt | cut -d";" -f 12 >>  ./tmp_gccbase_mib.txt
sed -n 9p gcc.txt | cut -d";" -f 12 >>  ./tmp_gccbase_mib.txt
sed -n 12p gcc.txt | cut -d";" -f 12 >>  ./tmp_gccbase_mib.txt
sed -n 15p gcc.txt | cut -d";" -f 12 >>  ./tmp_gccbase_mib.txt

sed -n 4p gcc.txt | cut -d";" -f 12 >> ./tmp_gccc8_mib.txt
sed -n 7p gcc.txt | cut -d";" -f 12 >>  ./tmp_gccc8_mib.txt
sed -n 10p gcc.txt | cut -d";" -f 12 >> ./tmp_gccc8_mib.txt
sed -n 13p gcc.txt | cut -d";" -f 12 >>  ./tmp_gccc8_mib.txt
sed -n 16p gcc.txt | cut -d";" -f 12 >>  ./tmp_gccc8_mib.txt

sed -n 3p clang.txt | cut -d";" -f 12 >> ./tmp_clangbase_mib.txt
sed -n 6p clang.txt | cut -d";" -f 12 >>  ./tmp_clangbase_mib.txt
sed -n 9p clang.txt | cut -d";" -f 12 >> ./tmp_clangbase_mib.txt
sed -n 12p clang.txt | cut -d";" -f 12 >>  ./tmp_clangbase_mib.txt
sed -n 15p clang.txt | cut -d";" -f 12 >>  ./tmp_clangbase_mib.txt

sed -n 4p clang.txt | cut -d";" -f 12 >> ./tmp_clangc8_mib.txt
sed -n 7p clang.txt | cut -d";" -f 12 >>  ./tmp_clangc8_mib.txt
sed -n 10p clang.txt | cut -d";" -f 12 >> ./tmp_clangc8_mib.txt
sed -n 13p clang.txt | cut -d";" -f 12 >>  ./tmp_clangc8_mib.txt
sed -n 16p clang.txt | cut -d";" -f 12 >>  ./tmp_clangc8_mib.txt


paste MOban.txt *_mib.txt > res.txt
rm *_mib.txt
