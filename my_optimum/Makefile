##for clang compiler##

#CC=clang

##(for gcc compiler)

CC=gcc



#CFLAGS=-Wall -g -Ofast -fopenmp -ftree-vectorize
#CFLAGS=-Wall -g -O0 -fopenmp -ftree-vectorize
#CFLAGS=-Wall -g -O1 -fopenmp -ftree-vectorize
#CFLAGS=-Wall -g -O2 -fopenmp -ftree-vectorize
#CFLAGS=-Wall -g -O3 -fopenmp -ftree-vectorize
CFLAGS=-Wall -g -Og -fopenmp -ftree-vectorize

OFLAGS=-march=native -falign-loops=1 -Ofast -fopt-info-all=dist.gcc.optrpt

#for Clang#
#OFLAGS=-march=native -falign-loops=1

all: genseq dist

dist: dist.c
	$(CC) $(CFLAGS) $(OFLAGS) -funroll-loops --optimize  $< -o $@ -lgomp

genseq: genseq.c
	$(CC) -march=native $(CFLAGS) -funroll-loops  --optimize  -Ofast $< -o $@ -lgomp

clean:
	rm -Rf *~ genseq dist *.optrpt
