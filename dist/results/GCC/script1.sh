set terminal pngcairo font "Arial,12" fontscale 0.8 
set size 1400, 700
set output 'Courbe_gcc_100.jpg'

set boxwidth 0.9 absolute
set style fill solid border -1
set key fixed center center
set key box
set style histogram clustered gap 2  title textcolor lt -1 
set style data histograms
set grid 

set xtics border in scale 0,0 nomirror rotate by -45  autojustify 
set xtics   ()

set xrange [ 0: * ] 
set xlabel "GCC flags"
set yrange [ * : * ] 
set ylabel " ns"




set title 'performances for different flags using GCC compiler'

#tracer les histogrammes en utilisant les données de la deuxième colonne des fichiers.dat

plot 'hamming_gcc_100_-Ofast.dat' using 2:xtic(2) ti "-Ofast" lc rgb '#008000','hammin_gcc_100_-O0.dat' using 2:xtic(2) ti "-O0" lc rgb '#006400', 'hamming_gcc_100_-O1.dat' using 2:xtic(2) ti "-O1" lc rgb '#228B22 ', 'hamming_gcc_100_-O2.dat' using 2:xtic(2) ti "-O3" lc rgb '#00FF00', 'hamming_gcc_100_-O3.dat' using 2:xtic(2) ti "-O3" lc rgb '#32CD32'

replot
