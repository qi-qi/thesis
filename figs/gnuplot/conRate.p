set terminal pdf
set output 'conRate.pdf'

set yrange [0:100]
set xrange [0:100]
set title "OCC Performance Decrease Rate"
set xlabel "Conflict Size %"
set ylabel "Performance Decrease %"
#set xtics "2"
set ytics "10"
set grid

plot 	"conRate.data" title "" with lines lw 3 lt rgb "#54778C", \
	"conRate.data" with points pt 7 ps 1 lt rgb "#54778C" notitle
#The first two arguments of "using" specify the (x,y) position, while the 3rd one tells where the label is.
#pause -1 "Hit any key to continue"
