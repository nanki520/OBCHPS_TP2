set key right top Left reverse width 0 box 3
set xlabel "flags"        # 设置x轴标签为"flags"
set ylabel "mib"         # 设置y轴标签为"mean"
set logscale y            # 将y轴设置为对数刻度
set ytics 0, 10         # 设置y轴刻度为100的间隔
set grid                  # 打开绘图中的网格线
set boxwidth 0.9 relative # 相对于默认宽度，降低条形的宽度以增加间距
set style fill solid 1.00 border 1  # 定义填充条形图的样式
set style histogram clustered gap 1 title offset character 0, 0, 0
set style data histograms  # 指定数据以直方图格式绘制
set terminal png size 1024, 512  # 设置输出图像为PNG格式，大小为1024x600像素
set output "mib.png"       # 指定生成的图像文件名

plot 'mib.txt' using 2:xtic(1) ti col, \
     '' using 3 ti col, \
     '' using 4 ti col, \
     '' using 5 ti col, \
     '' u 0:2:2 ti col with labels offset -5,-1, \
     '' u 0:3:3 ti col with labels offset -2,1, \
      '' u 0:4:4 ti col with labels offset 3,-1, \
     '' u 0:5:5 ti col with labels offset 6,1