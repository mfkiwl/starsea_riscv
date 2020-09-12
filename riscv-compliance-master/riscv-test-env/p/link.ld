OUTPUT_ARCH( "riscv" )
ENTRY(_start)

SECTIONS
{
  . = 0x00000000;
  .text.trap : { *(.text.trap) }

  .text.init : { *(.text.init) }

  . = ALIGN(0x4);
  .tohost : { *(.tohost) }
  . = ALIGN(0x4);
  .text : { *(.text) }
  . = 0x40000000;
  .data : { *(.data) }
  .data.string : { *(.data.string)}
  .bss : { *(.bss) }
  _end = .;
}

