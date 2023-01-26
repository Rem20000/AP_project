set terminal pngcairo font "Arial,12" fontscale 1.8 size 1400, 700
set output 'Courbe_gcc_2800.jpg'

set boxwidth 1.0
set style fill  solid 1.0 
set key fixed top right
set key box 
set style histogram clustered gap 3  title textcolor lt -1 
set style data histograms
set grid 
#set offset -1,0,0,0


set xrange [ 0 : * ] 
set xlabel " gcc optimisation levels"
set yrange [ * : * ] 
set ylabel " ns"




set title 'performances for different levels of optimisation using gcc compiler(length=2800)'

#tracer les histogrammes en utilisant les données de la deuxième colonne des fichiers.dat

plot 'hamming_gcc_2800_-Ofast.dat' using 2:xtic(2) ti "-Ofast" lc rgb '#ADD8E6 ','hamming_gcc_2800_-O0.dat' using 2:xtic(2) ti "-O0" lc rgb '#6A5ACD', 'hamming_gcc_2800_-O1.dat' using 2:xtic(2) ti "-O1" lc rgb '#4169E1', 'hamming_gcc_2800_-O2.dat' using 2:xtic(2) ti "-O2" lc rgb '#00008B', 'hamming_gcc_2800_-O3.dat' using 2:xtic(2) ti "-O3" lc rgb '#708090', 'hamming_gcc_2800_-Og.dat' using 2:xtic(2) ti "-Og" lc rgb '#00688B'


replot
