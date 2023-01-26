set terminal  pngcairo font  "Arial,12" fontscale 1.8 size 1400, 700
set output 'Histograms_2800.jpg'
set style histogram cluster
set boxwidth 0.8 
set style fill  solid 0.9
#set offsets 0,0,20,0
set key fixed top right
set key box 
set style histogram clustered gap 2  title textcolor lt -1 
set style data histograms
set grid 
set key invert samplen 4




set xrange [ 0 : * ] 
set xlabel "GCC and CLANG comparaison"
#set xtics ("" 0, "Optimisation level -Ofast" 1, "" 2, "Optimisation level -O0" 3, "" 4, "Optimisation level -O1" 5, "" 6, "Optimisation level -O2" 7, "" 8, "Optimisation level -O3" 9, "" 10, "Optimisation level -Og" 11)
set yrange [ * : * ] 
set ylabel " ns"




set title 'performances for different levels of optimisation using gcc & clang compilers(length=2800)'

#tracer les histogrammes en utilisant les données de la deuxième colonne des fichiers.dat


plot 'gcc_-Ofast.dat' using 2:xtic(2) ti "-Ofast_ gcc" lc rgb '#ADD8E6 ','gcc_-O0.dat' using 2:xtic(2) ti "-O0_ gcc" lc rgb '#6A5ACD', 'gcc_-O1.dat' using 2:xtic(2) ti "-O1_ gcc" lc rgb '#4169E1', 'gcc_-O2.dat' using 2:xtic(2) ti "-O2_ gcc" lc rgb '#00008B', 'gcc_-O3.dat' using 2:xtic(2) ti "-O3_ gcc" lc rgb '#708090', 'gcc_-Og.dat' using 2:xtic(2) ti "-Og_ gcc" lc rgb '#00688B',     'Clang_-Ofast.dat' using 2:xtic(2) ti "-Ofast_ clang" lc rgb '#8B2500','Clang_-O0.dat' using 2:xtic(2) ti "-O0_ clang" lc rgb '#A52A2A', 'Clang_-O1.dat' using 2:xtic(2) ti "-O1_ clang" lc rgb '#8B7D6B', 'Clang_-O2.dat' using 2:xtic(2) ti "-O2_ clang" lc rgb '#D2691E', 'Clang_-O3.dat' using 2:xtic(2) ti "-O3_ clang" lc rgb '#8B5742', 'Clang_-Og.dat' using 2:xtic(2) ti "-Og_ clang" lc rgb '#8B4513'




replot
