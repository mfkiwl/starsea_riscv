.global _start
.global isr
.global isr_exception

_start:
  la sp,0x40008000
  la t0,_trap_handler
  csrw mtvec, t0
  csrr t0,mstatus
  or t0, t0, 0x8
  csrw mstatus, t0
  call main

_trap_handler:
  add sp, sp, -120
  sw ra, 0(sp)
  sw gp, 4(sp)
  sw tp, 8(sp)
  sw t0, 12(sp)
  sw t1, 16(sp)
  sw t2, 20(sp)
  sw s0, 24(sp)
  sw s1, 28(sp)
  sw a0, 32(sp)
  sw a1, 36(sp)
  sw a2, 40(sp)
  sw a3, 44(sp)
  sw a4, 48(sp)
  sw a5, 52(sp)
  sw a6, 56(sp)
  sw a7, 60(sp)
  sw s2, 64(sp)
  sw s3, 68(sp)
  sw s4, 72(sp)
  sw s5, 76(sp)
  sw s6, 80(sp)
  sw s7, 84(sp)
  sw s8, 88(sp)
  sw s9, 92(sp)
  sw s1, 96(sp)
  sw s1, 100(sp)
  sw t3, 104(sp)
  sw t4, 108(sp)
  sw t5, 112(sp)
  sw t6, 116(sp)
  
  //call _trap_isr
  call isr
  lw t6, 116(sp)
  lw t5, 112(sp)
  lw t4, 108(sp)
  lw t3, 104(sp)
  lw s1, 100(sp)
  lw s1, 96(sp)
  lw s9, 92(sp)
  lw s8, 88(sp)
  lw s7, 84(sp)
  lw s6, 80(sp)
  lw s5, 76(sp)
  lw s4, 72(sp)
  lw s3, 68(sp)
  lw s2, 64(sp)
  lw a7, 60(sp)
  lw a6, 56(sp)
  lw a5, 52(sp)
  lw a4, 48(sp)
  lw a3, 44(sp)
  lw a2, 40(sp)
  lw a1, 36(sp)
  lw a0, 32(sp)
  lw s1, 28(sp)
  lw s0, 24(sp)
  lw t2, 20(sp)
  lw t1, 16(sp)
  lw t0, 12(sp)
  lw tp, 8(sp)
  lw gp, 4(sp)
  lw ra, 0(sp)
  mret
  
_trap_isr:
  csrr t0,mcause
  beqz t0,_trap_exception
  call isr
  mret
  
  
_trap_exception:
  call isr_exception
  j _dead_loop
  
_dead_loop:
  j _dead_loop
