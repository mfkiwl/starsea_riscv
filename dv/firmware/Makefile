all:
	riscv32-unknown-elf-gcc  init.S main.c -T link.ld -nostdlib -o test.elf -lc -L /opt/riscv/lib/gcc/riscv32-unknown-elf/9.2.0 -lgcc

	riscv32-unknown-elf-objdump  -D test.elf > test.elf.objdump
	riscv32-unknown-elf-objcopy  test.elf -O ihex test.elf.objcopy

clean:
	rm *elf *objdump *objcopy
