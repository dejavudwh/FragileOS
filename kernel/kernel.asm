%include "pm.inc"

org   0x9000

VRAM_ADDRESS  equ  0x000a0000

jmp   LABEL_BEGIN

[SECTION .gdt]
LABEL_GDT:          Descriptor        0,            0,                  0
LABEL_DESC_CODE32:  Descriptor        0,         SegCode32Len - 1,      DA_C + DA_32
LABEL_DESC_VIDEO:   Descriptor        0B8000h,         0ffffh,          DA_DRW
LABEL_DESC_VRAM:    Descriptor        0,         0ffffffffh,            DA_DRW
LABEL_DESC_STACK:   Descriptor        0,             TopOfStack,        DA_DRWA+DA_32

GdtLen     equ    $ - LABEL_GDT
GdtPtr     dw     GdtLen - 1
           dd     0

SelectorCode32    equ   LABEL_DESC_CODE32 -  LABEL_GDT
SelectorVideo     equ   LABEL_DESC_VIDEO  -  LABEL_GDT
SelectorStack     equ   LABEL_DESC_STACK  -  LABEL_GDT
SelectorVram      equ   LABEL_DESC_VRAM   -  LABEL_GDT

LABEL_IDT:
%rep  33
      Gate  SelectorCode32,   SpuriousHandler,  0,    DA_386IGate
%endrep

.021h:
      Gate  SelectorCode32,   KeyBoardHandler,  0,    DA_386IGate

%rep  10
      Gate  SelectorCode32,   SpuriousHandler,  0,    DA_386IGate
%endrep

.2CH:
      Gate  SelectorCode32,   mouseHandler,     0,    DA_386IGate

IdtLen      equ   $ - LABEL_IDT
IdtPtr      dw    IdtLen - 1
            dd    0

[SECTION  .s16]
[BITS  16]
LABEL_BEGIN:
     mov   ax, cs
     mov   ds, ax
     mov   es, ax
     mov   ss, ax
     mov   sp, 0100h

     mov   al, 0x13
     mov   ah, 0
     int   0x10

     call init8259A

     xor   eax, eax
     mov   ax,  cs
     shl   eax, 4
     add   eax, LABEL_SEG_CODE32
     mov   word [LABEL_DESC_CODE32 + 2], ax
     shr   eax, 16
     mov   byte [LABEL_DESC_CODE32 + 4], al
     mov   byte [LABEL_DESC_CODE32 + 7], ah

     xor   eax, eax
     mov   ax, ds
     shl   eax, 4
     add   eax,  LABEL_GDT
     mov   dword  [GdtPtr + 2], eax

     lgdt  [GdtPtr]

     cli

     xor   eax, eax
     mov   ax,  ds
     shl   eax, 4
     add   eax, LABEL_IDT
     mov   dword [IdtPtr + 2], eax
     lidt  [IdtPtr]

     in    al,  92h
     or    al,  00000010b
     out   92h, al

     mov   eax, cr0
     or    eax, 1
     mov   cr0, eax

     jmp   dword  SelectorCode32: 0

init8259A:
     mov   al, 011h
     out   02h, al
     call  io_delay

     out   0A0h, al
     call  io_delay

     mov   al, 020h
     out   021h, al
     call  io_delay

     mov   al, 028h
     out   0A1h, al
     call  io_delay 

     mov   al, 004h
     out   021h, al
     call  io_delay

     mov   al, 002h
     out   0A1h, al
     call  io_delay

     mov   al, 003h
     out   021h, al
     call  io_delay

     out   0A1h, al
     call  io_delay

     mov   al, 11111001b  
     out   021h, al
     call  io_delay

     mov   al, 11101111b  
     out   0A1h, al
     call  io_delay

     ret

io_delay:
     nop
     nop
     nop
     nop
     ret

[SECTION .s32]
[BITS  32]
LABEL_SEG_CODE32:
     mov  ax, SelectorStack
     mov  ss, ax
     mov  esp, TopOfStack

     mov  ax, SelectorVram
     mov  ds,  ax

     mov  ax, SelectorVideo
     mov  gs, ax

     sti 

%include "desktop.asm"

     jmp  $

_spurious_handler:
SpuriousHandler  equ _spurious_handler - $$
     iretd      

_keyboard_hadnler:
KeyBoardHandler equ _keyboard_hadnler - $$
      push  es
      push  ds
      pushad
      mov   eax,  esp
      push eax

      call _intHandlerFromC

      pop   eax
      mov   esp,  eax
      popad
      pop   ds
      pop   es
      iretd

_mouse_handler:
mouseHandler equ _mouse_handler - $$
      push es
     push ds
     pushad
     mov  eax, esp
     push eax

     call _intHandlerForMouse
    
     pop  eax
     mov  esp, eax
     popad
     pop  ds
     pop  es
     iretd



_io_hlt:
      HLT
      RET

_io_cli:
      CLI
      RET

_io_sti:
      STI
      RET

_io_stihlt:
      STI
      HLT
      RET

_io_in8:
      mov  edx, [esp + 4]
      mov  eax, 0
      in   al, dx

_io_in16:
      mov  edx, [esp + 4]
      mov  eax, 0
      in   ax, dx

_io_in32:
      mov edx, [esp + 4]
      in  eax, dx
      ret

_io_out8:
       mov edx, [esp + 4]
       mov al, [esp + 8]
       out dx, al
       ret

_io_out16:
       mov edx, [esp + 4]
       mov eax, [esp + 8]
       out dx, ax
       ret

_io_out32:
        mov edx, [esp + 4]
        mov eax, [esp + 8]
        out dx, eax
        ret

_io_load_eflags:
        pushfd
        pop  eax
        ret

_io_store_eflags:
        mov  eax, [esp + 4]
        push eax
        popfd
        ret

_show_char:
        mov  ah, 0Ch
        mov  al, 'U'
        mov  [gs:((80 * 0 + 67) * 2)], ax
        ret

%include "fonts.inc"

SegCode32Len   equ  $ - LABEL_SEG_CODE32

[SECTION .gs]
ALIGN 32
[BITS 32]
LABEL_STACK:
    times 512  db 0
    TopOfStack  equ  $ - LABEL_STACK

