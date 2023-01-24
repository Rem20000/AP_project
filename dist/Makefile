CC=gcc

CFLAGS=-Wall -g -O1 -Ofast -O2 -O0 -O3

OFLAGS=-march=native -O3 -fopt-info-all=dist.gcc.optrpt

all: genseq dist

dist: dist.c
	$(CC) $(CFLAGS) $(OFLAGS) $< -o $@

genseq: genseq.c
	$(CC) -march=native $(CFLAGS) -Ofast $< -o $@

clean:
	rm -Rf *~ genseq dist *.optrpt
