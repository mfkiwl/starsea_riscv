# starsea_riscv
A riscv core, support RV32I instructions , and pass RISCV compliace tests.

Three pipeline:
   instruction fetch
         instruction execuation / registers read
                registers write / memory access

Tools:
   1. riscv gun toolchain
   2. python
   3. vcs and verdi (if use other tools to run simualtion also ok,but need change /dv/run_regression)

How to simulate riscv compilience tests:
   1. cd riscv-compliance-master
   2. make RISCV_TARGET=starsea
   3. cd dv/sim
   4. ../run_regression | tee log
 

Future plan:
   current fpga top only has a uart tx, prepare add more preipheral
   current iram and dram preload firmware when bitsteam building, prepare add a module to updates firmware online.
   code optimize
   area optimize

