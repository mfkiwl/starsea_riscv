all:
	riscv32-unknown-elf-as crt0.S -o crt0.o
	riscv32-unknown-elf-gcc main.c -o main.o
	riscv32-unknown-elf-ld crt0.o main.o -T link.ld

