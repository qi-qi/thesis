set terminal pdf
set output 'hdfs_pcc_occ_parent.pdf'

set yrange [0:400]
set style data histogram
set style histogram cluster gap 1
set style fill solid border -1
set boxwidth 0.9

set title "OCC Performance Improvement on Parent Directory Contention"
set xlabel "Number of Concurrent Creations Under the Same Parent Directory"
set ylabel "Elapsed Time (Second)"
set grid

plot "hdfs_pcc_occ_parent.data" using 2:xtic(1) title "HDFS" lt rgb "#BF5A36",\
	"" using 3 title "PCC" lt rgb "#4A8C61",\
	"" using 4 title "OCC" lt rgb "#54778C"
