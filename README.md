# starsea_riscv
A riscv core, support RV32I instructions , and pass RISCV compliace tests.

Three pipeline:
   1. instruction fetch
   2. instruction execuation / registers read
   3. registers write / memory access

Tools:
   1. riscv gun toolchain
   2. python
   3. vcs and verdi (if use other tools to run simualtion also ok,but need change /dv/run_regression)

How to simulate riscv compilience tests:
   1. cd riscv-compliance-master
   2. make RISCV_TARGET=starsea
   3. cd dv/sim
   4. ../run_regression | tee log
   5. gvim log
   6. search log file, all simulation is ok, no fail
 
How to simulate firmware:
   1. cd firmware
   2. change code
   3. make
   4. cd ../sim
   5. ../run
   


Future plan:
   1. current fpga top only has a uart tx, prepare add more preipheral
   2. current iram and dram preload firmware when bitsteam building, prepare add a module to updates firmware online.
   3. code optimize
   4. area optimize
   5. run coremark
   6. update fpga syn scripts


updates:
   2020.10.20
   add define to run firmware
   updates makefile
   if current jump take, and last instrution is jalr,  flush last jalr
