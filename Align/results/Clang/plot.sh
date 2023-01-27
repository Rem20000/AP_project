set terminal pngcairo font "Arial,12" fontscale 1.8 size 1400, 700
set output 'perf for align code CLANG.jpg'

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


plot 'align_clang_-Ofast.dat' using 2:xtic(2) ti "-Ofast" lc rgb '#000000','align_clang_-O0.dat' using 2:xtic(2) ti "-O0" lc rgb '#2F4F4F', 'align_clang_-O1.dat' using 2:xtic(2) ti "-O1" lc rgb '#777777', 'align_clang_-O2.dat' using 2:xtic(2) ti "-O2" lc rgb '#BBBBBB', 'align_clang_-O3.dat' using 2:xtic(2) ti "-O3" lc rgb '#333333', 'align_clang_-Og.dat' using 2:xtic(2) ti "-Og" lc rgb '#f5f5f5#777777#000000'

