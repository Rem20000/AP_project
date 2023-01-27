set terminal pngcairo font "Arial,12" fontscale 1.8 size 1400, 700
set output 'Courbe_clang_2800_parallel.jpg'

set boxwidth 1.00
set style fill  solid 1.00
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

#tracer les histogrammes en utilisant les données de la deuxième colonne des fichiers.dat

plot 'OpenMp_clang_-Ofast.dat' using 2:xtic(2) ti "-Ofast" lc rgb '#808000','OpenMp_clang_-O0.dat' using 2:xtic(2) ti "-O0" lc rgb '#90EE90', 'OpenMp_clang_-O1.dat' using 2:xtic(2) ti "-O1" lc rgb '#2E8B57 ', 'OpenMp_clang_-O2.dat' using 2:xtic(2) ti "-O2" lc rgb '#9ACD32 ', 'OpenMp_clang_-O3.dat' using 2:xtic(2) ti "-O3" lc rgb '#006400 ', 'OpenMp_clang_-Og.dat' using 2:xtic(2) ti "-Og" lc rgb '#00FF00'
replot
