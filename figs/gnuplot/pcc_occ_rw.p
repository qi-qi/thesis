set terminal pdf
set output 'pcc_occ_rw.pdf'

set yrange [0:400]
set style data histogram
set style histogram cluster gap 1
set style fill solid border -1
set boxwidth 0.9

set title "OCC Performance Improvement on Read-Write Mixed Workload"
set xlabel "Total Number of Concurrent Operations Under the Same Parent Directory"
set ylabel "Elapsed Time (Second)"
set grid

plot "pcc_occ_rw.data" using 2:xtic(1) title "PCC" lt rgb "#4A8C61",\
	"" using 3 title "OCC" lt rgb "#54778C"
#plot "nn_100.data" using 2:xtic(1) title "Total" lt rgb "#406090",\
#     "" using 3 title "From web" lt rgb "#40FF00"
#pause -1 "Hit any key to continue"
