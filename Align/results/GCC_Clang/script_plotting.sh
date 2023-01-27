set terminal  pngcairo font  "Arial,12" fontscale 1.8 size 1400, 700
set output 'Histograms_Align.jpg'
set style histogram cluster
set boxwidth 0.7
set style fill  solid 0.9 border -1
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


plot 'Align_gcc_-Ofast.dat' using 2:xtic(2) ti "-Ofast gcc" lc rgb '#FF0000 ','Align_gcc_-O0.dat' using 2:xtic(2) ti "-O0 gcc" lc rgb '#FF5151', 'Align_gcc_-O1.dat' using 2:xtic(2) ti "-O1 gcc" lc rgb '#8B0000 ', 'Align_gcc_-O2.dat' using 2:xtic(2) ti "-O2 gcc" lc rgb '#FFC0CB', 'Align_gcc_-O3.dat' using 2:xtic(2) ti "-O3 gcc" lc rgb '#FF7F50 ', 'Align_gcc_-Og.dat' using 2:xtic(2) ti "-Og gcc" lc rgb  '#DC143C',  'align_clang_-Ofast.dat' using 2:xtic(2) ti "-Ofast clang" lc rgb '#000000','align_clang_-O0.dat' using 2:xtic(2) ti "-O0 clang" lc rgb '#2F4F4F', 'align_clang_-O1.dat' using 2:xtic(2) ti "-O1 clang" lc rgb '#777777', 'align_clang_-O2.dat' using 2:xtic(2) ti "-O2 clang" lc rgb '#BBBBBB', 'align_clang_-O3.dat' using 2:xtic(2) ti "-O3 clang" lc rgb '#333333', 'align_clang_-Og.dat' using 2:xtic(2) ti "-Og clang" lc rgb '#f5f5f5#777777#000000'


replot
