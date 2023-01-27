set terminal pngcairo font "Arial,12" fontscale 1.8 size 1400, 700
set output 'perf for align version of the code.jpg'

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

plot 'Align_gcc_-Ofast.dat' using 2:xtic(2) ti "-Ofast" lc rgb '#FF0000 ','Align_gcc_-O0.dat' using 2:xtic(2) ti "-O0" lc rgb '#FF5151', 'Align_gcc_-O1.dat' using 2:xtic(2) ti "-O1" lc rgb '#8B0000 ', 'Align_gcc_-O2.dat' using 2:xtic(2) ti "-O2" lc rgb '#FFC0CB', 'Align_gcc_-O3.dat' using 2:xtic(2) ti "-O3" lc rgb '#FF7F50 ', 'Align_gcc_-Og.dat' using 2:xtic(2) ti "-Og" lc rgb  '#DC143C'


replot
