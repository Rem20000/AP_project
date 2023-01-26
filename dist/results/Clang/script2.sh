set terminal pngcairo font "Arial,12" fontscale 1.8 size 1400, 700
set output 'Courbe_clang_100.jpg'

set boxwidth 0.7
set style fill  solid 
set key fixed top right
set key box 
set style histogram clustered gap 2  title textcolor lt -1 
set style data histograms
set grid 



set xrange [ 0 : * ] 
set xlabel "Clang flags"
set yrange [ * : * ] 
set ylabel " ns"




set title 'performances for different levels of optimisation using clang compiler'

#tracer les histogrammes en utilisant les données de la deuxième colonne des fichiers.dat

plot 'hamming_clang_100_-Ofast.dat' using 2:xtic(2) ti "-Ofast" lc rgb '#8B00FF','hamming_clang_100_-O0.dat' using 2:xtic(2) ti "-O0" lc rgb '#4B0082', 'hamming_clang_100_-O1.dat' using 2:xtic(2) ti "-O1" lc rgb '#9370DB ', 'hamming_clang_100_-O2.dat' using 2:xtic(2) ti "-O2" lc rgb '#DA70D6', 'hamming_clang_100_-O3.dat' using 2:xtic(2) ti "-O3" lc rgb '#8B008B', 'hamming_clang_100_-Og.dat' using 2:xtic(2) ti "-Og" lc rgb 'blue'


replot
