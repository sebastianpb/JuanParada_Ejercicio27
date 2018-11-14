all: Hello
	mpirun -np 4 -hostfile hosts ./Hello

Hello: Hello.c
	mpicc -o Hello Hello.c

clean:
	rm -f Hello
