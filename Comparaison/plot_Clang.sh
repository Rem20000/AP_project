set terminal  pngcairo font  "Arial,12" fontscale 1.8 size 1400, 700
set output 'Comparaison entre code intial et vectorisé (clang compiler).jpg'
set style histogram cluster
set boxwidth 0.8 
set style fill  solid 0.9 border -1
#set offsets 0,0,20,0
set key fixed top right
set key box 
set style histogram clustered gap 2  title textcolor lt -1 
set style data histograms
set grid 
set key invert samplen 4

set title "Comparaison entre les perf du code initial et vectorisé (CLANG)"


set xrange [ 0 : * ] 
set xlabel "Comparaison CLANG"
#set xtics ("" 0, "Optimisation level -Ofast" 1, "" 2, "Optimisation level -O0" 3, "" 4, "Optimisation level -O1" 5, "" 6, "Optimisation level -O2" 7, "" 8, "Optimisation level -O3" 9, "" 10, "Optimisation level -Og" 11)
set yrange [ * : * ] 
set ylabel " ns"










plot 'Clang_-Ofast.dat' using 2:xtic(2) ti "-Ofast_ clang" lc rgb '#8B2500','Clang_-O0.dat' using 2:xtic(2) ti "-O0_ clang" lc rgb '#A52A2A', 'Clang_-O1.dat' using 2:xtic(2) ti "-O1_ clang" lc rgb '#8B7D6B', 'Clang_-O2.dat' using 2:xtic(2) ti "-O2_ clang" lc rgb '#D2691E', 'Clang_-O3.dat' using 2:xtic(2) ti "-O3_ clang" lc rgb '#8B5742', 'Clang_-Og.dat' using 2:xtic(2) ti "-Og_ clang" lc rgb '#8B4513','Vect_Clang_-Ofast.dat' using 2:xtic(2) ti "-Ofast_ vectorisé" lc rgb '#000000','Vect_Clang_-O0.dat' using 2:xtic(2) ti "-O0_ vectorisé" lc rgb '#2F4F4F', 'Vect_Clang_-O1.dat' using 2:xtic(2) ti "-O1_ vectorisé" lc rgb '#777777', 'Vect_Clang_-O2.dat' using 2:xtic(2) ti "-O2_ vectorisé" lc rgb '#BBBBBB', 'Vect_Clang_-O3.dat' using 2:xtic(2) ti "-O3_ vectorisé" lc rgb '#333333', 'Vect_Clang_-Og.dat' using 2:xtic(2) ti "-Og_ vectorisé" lc rgb '#f5f5f5#777777#000000'
replot
