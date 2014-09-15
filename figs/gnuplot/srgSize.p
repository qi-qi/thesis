set terminal pdf
set output 'srgSize.pdf'

set yrange [0:10]
set title "The Size of Semantic Related Group and Related Execution Time"
set xlabel "Levels of Directories"
set ylabel "Elapsed Time (Second)"
#set xtics "2"
set ytics "1"
set grid

plot 	"srgSize.data" title "" with lines lw 3 lt rgb "#54778C", \
	"srgSize.data" with points pt 7 ps 1 lt rgb "#54778C" notitle, \
	"srgSize.data" using ($1+3):($2+0.5):2 with labels notitle
#The first two arguments of "using" specify the (x,y) position, while the 3rd one tells where the label is.
#pause -1 "Hit any key to continue"