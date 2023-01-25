CC=clang
#CC=gcc (for gcc compiler)
CFLAGS=-Wall -g -Ofast
#CFLAGS=-Wall -g -O0
#CFLAGS=-Wall -g -O1
#CFLAGS=-Wall -g -O2
#CFLAGS=-Wall -g -O3
#CFLAGS=-Wall -g -Og

#OFLAGS=-march=native -Ofast -fopt-info-all=dist.gcc.optrpt
#for Clang#
OFLAGS=-march=native

all: genseq dist

dist: dist.c
	$(CC) $(CFLAGS) $(OFLAGS) $< -o $@

genseq: genseq.c
	$(CC) -march=native $(CFLAGS) -Ofast $< -o $@

clean:
	rm -Rf *~ genseq dist *.optrpt
