CC=gcc
CFLAGS=-Wall -Wextra -g -O3 -fopenmp
LDFLAGS=-lm -fopenmp

all: pi.exe

pi.exe: pi.c
	$(CC) $(CFLAGS) -o $@ $< $(LDFLAGS)

clean:
	$(RM) pi.exe
