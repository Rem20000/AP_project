set terminal  pngcairo font  "Arial,12" fontscale 1.8 size 1400, 700
set output 'Unroll_gcc&clang.jpg'
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




plot 'unroll_gcc_-Ofast.dat' using 2:xtic(2) ti "-Ofast_ gcc" lc rgb '#FFFF00','unroll_gcc_-O0.dat' using 2:xtic(2) ti "-O0_ gcc" lc rgb  '#F7DC6F', 'unroll_gcc_-O1.dat' using 2:xtic(2) ti "-O1_ gcc" lc rgb '#F4D03F', 'unroll_gcc_-O2.dat' using 2:xtic(2) ti "-O2 _gcc" lc rgb '#D4AC0D ', 'unroll_gcc_-O3.dat' using 2:xtic(2) ti "-O3 _gcc" lc rgb '#9A7D0A' , 'unroll_gcc_-Og.dat' using 2:xtic(2) ti "-Og _gcc" lc rgb '#FFA500 ', 'unroll_clang_-Ofast.dat' using 2:xtic(2) ti "-Ofast_ clang" lc rgb '#FFA07A ','unroll_clang_-O0.dat' using 2:xtic(2) ti "-O0_ clang" lc rgb '#FDBEB9', 'unroll_clang_-O1.dat' using 2:xtic(2) ti "-O1_ clang" lc rgb '#FF1493', 'unroll_clang_-O2.dat' using 2:xtic(2) ti "-O2_ clang" lc rgb '#FF69B4 ', 'unroll_clang_-O3.dat' using 2:xtic(2) ti "-O3_ clang" lc rgb '#C71585', 'unroll_clang_-Og.dat' using 2:xtic(2) ti "-Og_ clang" lc rgb '#B22222'

