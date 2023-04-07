// 0x7c00 is the startup address, cs:0x0000, ip:0x7c00
org 0x7c00

STACK_BASE      equ     0x7c00
LOADER_BASE     equ     0x1000
LOADER_OFFSET   equ     0x0000


_start_boot:
    // initialize segment registers
    mov ax, cs
    mov ds, ax
    mov es, ax
    mov ss, ax
    mov sp, STACK_BASE