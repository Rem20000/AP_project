##for clang compiler##

CC=clang

##(for gcc compiler)

#CC=gcc


#Vectorisation 
#CFLAGS=-Wall -g -Ofast -ftree-vectorize
#CFLAGS=-Wall -g -O0 -ftree-vectorize
#CFLAGS=-Wall -g -O1 -ftree-vectorize
#CFLAGS=-Wall -g -O2 -ftree-vectorize
#CFLAGS=-Wall -g -O3 -ftree-vectorize
CFLAGS=-Wall -g -Og -ftree-vectorize



##for gcc##
#OFLAGS=-march=native -Ofast -fopt-info-all=Vect.gcc.optrpt

#for Clang#
OFLAGS=-march=native

all: genseq Vect

Vect: Vectorization.c
	$(CC) $(CFLAGS) $(OFLAGS) $< -o $@

genseq: genseq.c
	$(CC) -march=native $(CFLAGS) -Ofast $< -o $@

clean:
	rm -Rf *~ genseq Vect *.optrpt
