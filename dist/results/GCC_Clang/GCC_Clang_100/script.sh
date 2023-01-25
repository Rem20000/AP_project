set terminal pngcairo font "Arial,12" fontscale 1.8 size 1400, 700
set output 'Histograms.jpg'

set boxwidth 0.9
set style fill solid 
set key fixed top right
set key box 
set style histogram clustered gap 2  title textcolor lt -1 
set style data histograms
set grid 

set xtics border in scale 0,0 nomirror rotate by -45  autojustify 
set xtics   ()

set xrange [ 0 : * ] 
set xlabel "GCC and Clang compilers"
set yrange [ * : * ] 
set ylabel " ns"




set title 'performances for different levels of optimisation using gcc & clang compilers(length=100)'

#tracer les histogrammes en utilisant les données de la deuxième colonne des fichiers.dat

plot 'gcc_-Ofast.dat' using 2:xtic(2) ti "-Ofast_ gcc" lc rgb '#008080','clang_-Ofast.dat' using 2:xtic(2) ti "-Ofast_ clang" lc rgb '#8B00FF', 'gcc_-O0.dat' using 2:xtic(2) ti "-O0_ gcc" lc rgb '#006400','clang_-O0.dat' using 2:xtic(2) ti "-O0_ clang" lc rgb '#4B0082', 'gcc_-O1.dat' using 2:xtic(2) ti "-O1_ gcc" lc rgb '#2E8B57','clang_-O1.dat' using 2:xtic(2) ti "-O1_ clang" lc rgb '#9370DB','gcc_-O2.dat' using 2:xtic(2) ti "-O2_ gcc" lc rgb '#00FF00','clang_-O2.dat' using 2:xtic(2) ti "-O2_ clang" lc rgb '#DA70D6','gcc_-O3.dat' using 2:xtic(2) ti "-O3_ gcc" lc rgb '#32CD32','clang_-O3.dat' using 2:xtic(2) ti "-O3_ clang" lc rgb '#8B008B','gcc_-Og.dat' using 2:xtic(2) ti "-Og_ gcc" lc rgb '#3CB371 ','clang_-Og.dat' using 2:xtic(2) ti "-Og_ clang" lc rgb 'blue'
              

replot

