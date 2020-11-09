.global _start
_start:
  la sp,0x40001000
  call main
