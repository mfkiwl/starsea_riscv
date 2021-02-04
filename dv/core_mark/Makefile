all:
	riscv32-unknown-elf-gcc  -march=rv32i init.S core_list_join.c core_main.c core_matrix.c core_state.c core_util.c core_portme.c ee_printf.c -T link.ld -nostdlib -o test.elf -lc -L /opt/riscv/lib/gcc/riscv32-unknown-elf/9.2.0 -lgcc -mtune=size 

	riscv32-unknown-elf-objdump  -D test.elf > test.elf.objdump
	riscv32-unknown-elf-objcopy  test.elf -O ihex test.elf.objcopy
	python ../../riscv-compliance-master/gen_mif.py ./test.elf.objcopy
	cp inst_data dram_data ../sim

clean:
	rm *elf *objdump *objcopy
