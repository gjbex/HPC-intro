MPICC = mpicc
CFLAGS = -O2 -g

all: pi.exe

pi.exe: pi.c
	$(MPICC) $(CFLAGS) -o $@ $^

clean:
	$(RM) pi.exe core
