all: main run

main: main.c test.S 
	aarch64-linux-gnu-gcc-8 -o main teste3.c test.S -static
run: 
	qemu-aarch64 ./main

