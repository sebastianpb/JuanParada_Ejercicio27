all: Hello

Hello: Hello.c
	mpicc -o Hello Hello.c

clean:
	rm -f Hello
