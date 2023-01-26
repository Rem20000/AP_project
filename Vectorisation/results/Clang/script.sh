set terminal pngcairo font "Arial,12" fontscale 1.8 size 1400, 700
set output 'Courbe_clang_2800_Vect.jpg'

set boxwidth 1.00
set style fill  solid 1.00 border -1 
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

plot 'Vect_Clang_-Ofast.dat' using 2:xtic(2) ti "-Ofast" lc rgb '#000000','Vect_Clang_-O0.dat' using 2:xtic(2) ti "-O0" lc rgb '#2F4F4F', 'Vect_Clang_-O1.dat' using 2:xtic(2) ti "-O1" lc rgb '#777777', 'Vect_Clang_-O2.dat' using 2:xtic(2) ti "-O2" lc rgb '#BBBBBB', 'Vect_Clang_-O3.dat' using 2:xtic(2) ti "-O3" lc rgb '#333333', 'Vect_Clang_-Og.dat' using 2:xtic(2) ti "-Og" lc rgb '#f5f5f5#777777#000000'


replot
