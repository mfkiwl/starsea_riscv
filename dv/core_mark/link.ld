OUTPUT_ARCH( "riscv" )
ENTRY(_start)
MEMORY
{
    imem : org = 0, len = 32768
    dmem : org = 0x40000000, len = 32768
}
SECTIONS
{
  . = 0x00000000;
  .text.trap : { *(.text.trap) } >imem

  .text.init : { *(.text.init) } >imem

  . = ALIGN(0x4);
  .tohost : { *(.tohost) } >imem
  . = ALIGN(0x4);
  .text : { *(.text) } >imem
  . = 0x40000000;
  .data : { *(.data) } >dmem
  .data.string : { *(.data.string)} >dmem
  .rodata : { *(.rodata) } >dmem
  .bss : { *(.bss) } >dmem
  _end = .;
}

