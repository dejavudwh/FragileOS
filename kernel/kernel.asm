%include "pm.inc"

org 0x9000

VRAM_ADDRESS EQU 0x000a000

jmp LABEL_BEGIN

[SECTION .gdt]

LABEL_GDT:          Descriptor  0,          0,                  0
LABEL_DESC_CODE32:  Descriptor  0,          SegCode32Len - 1,   DA_C + DA_32
LABEL_DESC_VIDEO:   Descriptor  0B8000h,    0ffffh,             DA_DRW
LABEL_DESC_VRAM:    Descriptor  0,          0ffffffffh,         DA_DRW
LABEL_DESC_STACK:   Descriptor  0,          TopOfStack,         DA_DRWA+DA_32

GDTLEN  EQU $ - LABEL_GDT
GTDPTR  DW  GDTLEN - 1
        DD  0

SelectorCode32  EQU LABEL_DESC_CODE32 -  LABEL_GDT
SelectorVideo   EQU LABEL_DESC_VIDEO  -  LABEL_GDT
SelectorStack   EQU LABEL_DESC_STACK  -  LABEL_GDT
SelectorVram    EQU LABEL_DESC_VRAM   -  LABEL_GDT

[SECTION .s16]
[BITS   16]
LABEL_BEGIN:
    mov ax, cs
    mov ds, ax
    mov es, ax
    mov ss, ax
    mov sp, 0100h

    mov al, 0x13
    mov ah, 0
    int 0x10

    xor eax, eax
    mov ax, cs
    shl eax, 4
    add eax, LABEL_DESC_CODE32
    mov word [LABEL_DESC_CODE32 + 2], ax
    shr eax, 16
    mov byte [LABEL_DESC_CODE32 + 4], al
    mov byte [LABEL_DESC_CODE32 + 7], ah

    xor eax, eax
    mov ax, ds
    shl eax, 4
    add eax, LABEL_GDT
    mov dword [GTDPTR + 2], eax
    
    lgdt  [GTDPTR]

    cli

    in    al,  92h
    or    al,  00000010b
    out   92h, al

    mov   eax, cr0
    or    eax , 1
    mov   cr0, eax

    jmp dword   SelectorCode32: 0

[SECTION .s32]
[BITS   32]
LABEL_SEG_CODE32:
     mov  ax, SelectorStack
     mov  ss, ax
     mov  esp, TopOfStack

     mov  ax, SelectorVram
     mov  ds,  ax    


