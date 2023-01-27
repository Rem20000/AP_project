set terminal pngcairo font "Arial,12" fontscale 1.8 size 1400, 700
set output 'optim_clang_2800.jpg'

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




set title 'performances for different levels of optimisation using clang compiler (version optimisée)'

#tracer les histogrammes en utilisant les données de la deuxième colonne des fichiers.dat

plot 'optim_clang_-Ofast.dat' using 2:xtic(2) ti "-Ofast" lc rgb '#FFA07A ','optim_clang_-O0.dat' using 2:xtic(2) ti "-O0" lc rgb '#FDBEB9', 'optim_clang_-O1.dat' using 2:xtic(2) ti "-O1" lc rgb '#FF1493', 'optim_clang_-O2.dat' using 2:xtic(2) ti "-O2" lc rgb '#FF69B4 ', 'optim_clang_-O3.dat' using 2:xtic(2) ti "-O3" lc rgb '#C71585', 'optim_clang_-Og.dat' using 2:xtic(2) ti "-Og" lc rgb '#B22222'
replot
