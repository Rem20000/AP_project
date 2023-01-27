set terminal  pngcairo font  "Arial,12" fontscale 1.8 size 1400, 700
set output 'Comparaison entre code intial et vectorisé.jpg'
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

set title "Comparaison entre les perf du code initial et vectorisé (GCC)"


set xrange [ 0 : * ] 
set xlabel "Comparaison GCC"
#set xtics ("" 0, "Optimisation level -Ofast" 1, "" 2, "Optimisation level -O0" 3, "" 4, "Optimisation level -O1" 5, "" 6, "Optimisation level -O2" 7, "" 8, "Optimisation level -O3" 9, "" 10, "Optimisation level -Og" 11)
set yrange [ * : * ] 
set ylabel " ns"

plot 'gcc_-Ofast.dat' using 2:xtic(2) ti "-Ofast_ gcc" lc rgb '#ADD8E6 ','gcc_-O0.dat' using 2:xtic(2) ti "-O0_ gcc" lc rgb '#6A5ACD', 'gcc_-O1.dat' using 2:xtic(2) ti "-O1_ gcc" lc rgb '#4169E1', 'gcc_-O2.dat' using 2:xtic(2) ti "-O2_ gcc" lc rgb '#00008B', 'gcc_-O3.dat' using 2:xtic(2) ti "-O3_ gcc" lc rgb '#708090', 'gcc_-Og.dat' using 2:xtic(2) ti "-Og_ gcc" lc rgb '#00688B',   'Vect_gcc_-Ofast.dat' using 2:xtic(2) ti "-Ofast (vectorisé)" lc rgb 'orange','Vect_gcc_-O0.dat' using 2:xtic(2) ti "-O0 (vectorisé)" lc rgb '#CC5500', 'Vect_gcc_-O1.dat' using 2:xtic(2) ti "-O1 (vectorisé)" lc rgb '#FFB347', 'Vect_gcc_-O2.dat' using 2:xtic(2) ti "-O2 (vectorisé)" lc rgb '#FFFF66', 'Vect_gcc_-O3.dat' using 2:xtic(2) ti "-O3 (vectorisé)" lc rgb '#FF4500', 'Vect_gcc_-Og.dat' using 2:xtic(2) ti "-Og (vectorisé)" lc rgb '#FF7F50'
