set terminal  pngcairo font  "Arial,12" fontscale 1.8 size 1400, 700
set output 'the most optim _gcc&clang.jpg'
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

set title 'performances for different levels of optimisation using gcc & clang compilers(the most optimum  version)'

#tracer les histogrammes en utilisant les données de la deuxième colonne des fichiers.dat


plot 'myoptimum_gcc_-Ofast.dat' using 2:xtic(2) ti "-Ofast gcc" lc rgb 'orange','myoptimum_gcc_-O0.dat' using 2:xtic(2) ti "-O0 gcc" lc rgb '#CC5500', 'myoptimum_gcc_-O1.dat' using 2:xtic(2) ti "-O1 gcc" lc rgb '#FFB347', 'myoptimum_gcc_-O2.dat' using 2:xtic(2) ti "-O2 gcc" lc rgb '#FFFF66', 'myoptimum_gcc_-O3.dat' using 2:xtic(2) ti "-O3 gcc" lc rgb '#FF4500', 'myoptimum_gcc_-Og.dat' using 2:xtic(2) ti "-Og gcc" lc rgb '#FF7F50', 'myoptimum_clang_-Ofast.dat' using 2:xtic(2) ti "-Ofast clang" lc rgb '#808000','myoptimum_clang_-O0.dat' using 2:xtic(2) ti "-O0 clang" lc rgb '#90EE90', 'myoptimum_clang_-O1.dat' using 2:xtic(2) ti "-O1 clang" lc rgb '#2E8B57 ', 'myoptimum_clang_-O2.dat' using 2:xtic(2) ti "-O2 clang" lc rgb '#9ACD32 ', 'myoptimum_clang_-O3.dat' using 2:xtic(2) ti "-O3 clang" lc rgb '#006400 ', 'myoptimum_clang_-Og.dat' using 2:xtic(2) ti "-Og clang" lc rgb '#00FF00'

replot
