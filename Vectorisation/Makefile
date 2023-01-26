##for clang compiler##

CC=clang

##(for gcc compiler)

#CC=gcc



#CFLAGS=-Wall -g -Ofast
#CFLAGS=-Wall -g -O0
#CFLAGS=-Wall -g -O1
#CFLAGS=-Wall -g -O2
#CFLAGS=-Wall -g -O3
CFLAGS=-Wall -g -Og

#OFLAGS=-march=native -Ofast -fopt-info-all=Vect.gcc.optrpt

#for Clang#
OFLAGS=-march=native

all: genseq dist

Vect: Vectorization.c
	$(CC) $(CFLAGS) $(OFLAGS) $< -o $@

genseq: genseq.c
	$(CC) -march=native $(CFLAGS) -Ofast $< -o $@

clean:
	rm -Rf *~ genseq Vect *.optrpt
