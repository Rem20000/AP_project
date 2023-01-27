set terminal  pngcairo font  "Arial,12" fontscale 1.8 size 1400, 700
set output 'Comparaison entre code initial et déroulé (Clang).jpg'
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




set xrange [ 0 : * ] 
set xlabel "Comparaison pour differents niveaux d'optim"
#set xtics ("" 0, "Optimisation level -Ofast" 1, "" 2, "Optimisation level -O0" 3, "" 4, "Optimisation level -O1" 5, "" 6, "Optimisation level -O2" 7, "" 8, "Optimisation level -O3" 9, "" 10, "Optimisation level -Og" 11)
set yrange [ * : * ] 
set ylabel " ns"




set title 'Comparaison entre les perf du code initial et déroulé (CLANG)'

#tracer les histogrammes en utilisant les données de la deuxième colonne des fichiers.dat


plot 'Clang_-Ofast.dat' using 2:xtic(2) ti "-Ofast" lc rgb '#8B2500','Clang_-O0.dat' using 2:xtic(2) ti "-O0" lc rgb '#A52A2A', 'Clang_-O1.dat' using 2:xtic(2) ti "-O1" lc rgb '#8B7D6B', 'Clang_-O2.dat' using 2:xtic(2) ti "-O2" lc rgb '#D2691E', 'Clang_-O3.dat' using 2:xtic(2) ti "-O3" lc rgb '#8B5742 ', 'Clang_-Og.dat' using 2:xtic(2) ti "-Og" lc rgb '#8B4513', 'unroll_clang_-Ofast.dat' using 2:xtic(2) ti "-Ofast déroulé"  lc rgb '#FFA07A ','unroll_clang_-O0.dat' using 2:xtic(2) ti "-O0 déroulé" lc rgb '#FDBEB9', 'unroll_clang_-O1.dat' using 2:xtic(2) ti "-O1 déroulé" lc rgb '#FF1493', 'unroll_clang_-O2.dat' using 2:xtic(2) ti "-O2 déroulé" lc rgb '#FF69B4 ', 'unroll_clang_-O3.dat' using 2:xtic(2) ti "-O3 déroulé" lc rgb '#C71585', 'unroll_clang_-Og.dat' using 2:xtic(2) ti "-Og déroulé" lc rgb '#B22222'
