#Makefile
all: numeros
numeros: numeros.o
	ld -o $@ $+
numeros.o: numeros.s
	as -o  $@ $+
clean:
	rm -vf numeros *.o
