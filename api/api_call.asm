[SECTION .s32]
BITS 32
call __main
pop eax
retf

_api_putchar:
  mov edx, 1
  mov al, [esp + 4]
  int 02Dh
  ret

%include "app.asm"