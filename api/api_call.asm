[SECTION .s32]
BITS 32
call __main

mov  edx, 4  ;返回内核
int  02Dh

_api_putchar:
  mov edx, 1
  mov al, [esp + 4]
  int 02Dh
  ret

%include "app.asm"