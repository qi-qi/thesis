set terminal pdf
set output 'nn_100.pdf'

set yrange [0:1000]
set style data histogram
set style histogram cluster gap 1
set style fill solid border -1
set boxwidth 0.9

set title "Operation Performance Comparison between HDFS and PCC (Hop-HDFS)"
set xlabel "Operations"
set ylabel "Operations per Second"
set grid

plot "nn_100.data" using 2:xtic(1) title "HDFS" lt rgb "#BF5A36",\
     "" using 3 title "PCC (Hop-HDFS)" lt rgb "#4A8C61"
#plot "nn_100.data" using 2:xtic(1) title "Total" lt rgb "#406090",\
#     "" using 3 title "From web" lt rgb "#40FF00"
#pause -1 "Hit any key to continue"
