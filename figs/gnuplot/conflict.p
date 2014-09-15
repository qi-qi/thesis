set terminal pdf
set output 'conflict.pdf'

set yrange [0:20]
set style data histogram
set style histogram cluster gap 1
set style fill solid border -1
set boxwidth 0.9
set xtic rotate by -45 scale 0 font ",8"

set title "OCC Performance with Different Size of Conflicts"
set xlabel "Total Number of Sub-Directories Created for 10000 Operations"
set ylabel "Elapsed Time (Second)"
set grid

plot "conflict.data" using 2:xtic(1) title "OCC" lt rgb "#54778C"
#plot "nn_100.data" using 2:xtic(1) title "Total" lt rgb "#406090",\
#     "" using 3 title "From web" lt rgb "#40FF00"
#pause -1 "Hit any key to continue"