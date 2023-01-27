##for clang compiler##

#CC=clang

##(for gcc compiler)

CC=gcc



#CFLAGS=-Wall -g -Ofast -fopenmp
#CFLAGS=-Wall -g -O0  -fopenmp
#CFLAGS=-Wall -g -O1 -fopenmp
#CFLAGS=-Wall -g -O2 -fopenmp
#CFLAGS=-Wall -g -O3 -fopenmp
CFLAGS=-Wall -g -Og -fopenmp

OFLAGS=-march=native -Ofast -fopt-info-all=dist.gcc.optrpt

#for Clang#
#OFLAGS=-march=native

all: genseq dist

dist: OpenMP_vect.c
	$(CC) $(CFLAGS) $(OFLAGS)   $< -o $@ -lgomp

genseq: genseq.c
	$(CC) -march=native $(CFLAGS)  -Ofast $< -o $@ -lgomp 

clean:
	rm -Rf *~ genseq dist *.optrpt
