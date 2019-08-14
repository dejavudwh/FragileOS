[SECTION .s32]
BITS 32

call __main

mov  edx, 4             ; 返回内核
int  02Dh

%include "api_call.asm"
%include "alienwars_c.asm"