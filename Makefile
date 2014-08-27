LATEX=pdflatex
MKF=.:/var/cache/fonts//:/usr/share/texmf/fonts//:/afs/l2f/home/david/public/fonts//
all:
	TFMFONTS=$(MKF) $(LATEX) document
	makeindex -s authorindex.ist -o document.and document.adx
	makeindex -s glossary.ist    -o document.gls document.glo
	makeindex document
	TFMFONTS=$(MKF) $(LATEX) document
	bibtex document
	TFMFONTS=$(MKF) $(LATEX) document
	TFMFONTS=$(MKF) $(LATEX) document
	#TTFONTS=$(MKF) TFMFONTS=$(MKF) dvips document
	#psnup -2 document.ps | pstops "4:-3L@.7(21cm,0)+0L@.7(21cm,14.85cm),1L@.7(21cm,0)+-2L@.7(21cm,14.85cm)" > a2.ps
