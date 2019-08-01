org 0x7c00

LOAD_ADDR EQU 0x9000

entry:
    mov ax, 0
    mov ss, ax
    mov ds, ax
    mov es, ax
    mov si, ax

read_floppy:    
    mov CH, 1   ;Cylinder number
    mov DH, 0   ;Head number
    mov CL, 2   ;Sector number

    mov BX, LOAD_ADDR  ; 
    mov AH, 0x02    ;read floppy opt
    mov AL, 20  ;read floppy number
    mov DL 0    ;drive number

    int 0x13    ;call bios read floppy

    jc fin

    jmp LOAD_ADDR

fin:
    HLT
    jmp fin


