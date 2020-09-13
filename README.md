# starsea_riscv
A riscv core, support RV32I instructions , and pass RISCV compliace tests.

Three pipeline:
   instruction fetch
         instruction execuation / registers read
                registers write / memory access

tools:
   1. riscv gun toolchain
   2. python
   3. vcs and verdi (if use other tools to run simualtion also ok,but need change /dv/run_regression)

how to simulate riscv compilience tests:
   1. cd riscv-compliance-master
   2. make RISCV_TARGET=starsea
   3. cd dv/sim
   4. ../run_regression | tee log
 
