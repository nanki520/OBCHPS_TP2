#!/bin/bash
cd /Users/nanki/Desktop/2023-2024hpc/outils_de_base_hpc/OBHPC_CS/TD2/reduc/res/n_128/data/O0/gcc 
#!/bin/bash

# 循环运行 reduc 128 500 20 次
for ((i=1; i<=5; i++)); do
    # 运行 reduc 命令并获取第二行第11列的数字
    sleep 0.1
    print=$(./reduc 128 500)
    echo "Iteration $i: $print"
    result=$( echo "$print" | awk 'NR==2 {print $11}')
    result1=$( echo "$print" | awk 'NR==2 {print $10}')
    out=$(echo "scale=2; $result * 100 / $result1" | bc)
    # 使用 awk 进行浮点数比较
    if awk -v n1="$out" -v n2="7" 'BEGIN { exit (n1 < n2) ? 0 : 1 }'; then
        # 如果小于5，则打印整个结果
        echo "Iteration $i: $print"
    else
        # 如果大于等于5，则只打印第二行第11列的数字
        
        echo "Iteration $i: $out"
    fi
done
