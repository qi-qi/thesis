set terminal pdf
set output 'hdfs_pcc_parentlock.pdf'

set yrange [0:400]
set style data histogram
set style histogram cluster gap 1
set style fill solid border -1
set boxwidth 0.9

set title "Parent Directory Contention Assessment between HDFS and PCC"
set xlabel "Number of Concurrent Creations Under the Same Parent Directory"
set ylabel "Elapsed Time (Second)"
set grid

plot "hdfs_pcc_parentlock.data" using 2:xtic(1) title "HDFS" lt rgb "#BF5A36",\
     "" using 3 title "PCC" lt rgb "#4A8C61"
#plot "nn_100.data" using 2:xtic(1) title "Total" lt rgb "#54778C",\
#     "" using 3 title "From web" lt rgb "#40FF00"
#pause -1 "Hit any key to continue"
