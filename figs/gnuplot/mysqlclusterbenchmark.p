set terminal pdf
set output 'mysqlclusterbenchmark.pdf'

set title "19.5 Million Writes per Second"
set xlabel "MySQL Cluster Data Nodes"
set ylabel "Millions of Writes per Second"
set xtics "2"
set ytics "5"
set grid

plot 	"mysqlclusterbenchmark.data" title "" with lines, \
	"mysqlclusterbenchmark.data" with points pt 7 ps 1 lc 1 notitle
#pause -1 "Hit any key to continue"
