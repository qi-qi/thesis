set terminal pdf font ",10" linewidth 3
set output 'document-gnuplottex-fig1.pdf'
plot [0:2*pi] sin(x) title 'Sine', cos(x) title 'Cosine'
