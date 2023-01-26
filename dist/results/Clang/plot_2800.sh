set terminal pngcairo font "Arial,12" fontscale 1.8 size 1400, 700
set output 'Courbe_clang_2800.jpg'

set boxwidth 1.0
set style fill  solid 
set key fixed top right
set key box 
set style histogram clustered gap 2  title textcolor lt -1 
set style data histograms
set grid 



set xrange [ 0 : * ] 
set xlabel "Clang optimisation levels"
set yrange [ * : * ] 
set ylabel " ns"




set title 'performances for different levels of optimisation using clang compiler (for a length = 2800)'

#tracer les histogrammes en utilisant les données de la deuxième colonne des fichiers.dat

plot 'hamming_clang_2800_-Ofast.dat' using 2:xtic(2) ti "-Ofast" lc rgb '#8B2500','hamming_clang_2800_-O0.dat' using 2:xtic(2) ti "-O0" lc rgb '#A52A2A', 'hamming_clang_2800_-O1.dat' using 2:xtic(2) ti "-O1" lc rgb '#8B7D6B', 'hamming_clang_2800_-O2.dat' using 2:xtic(2) ti "-O2" lc rgb '#D2691E', 'hamming_clang_2800_-O3.dat' using 2:xtic(2) ti "-O3" lc rgb '#8B5742 ', 'hamming_clang_2800_-Og.dat' using 2:xtic(2) ti "-Og" lc rgb '#8B4513'


replot
