; Disassembly of file: desktop.o
; Sat Aug  3 13:54:16 2019
; Mode: 32 bits
; Syntax: YASM/NASM
; Instruction set: 80386


global _launch: function
global _computeMousePosition: function
global _eraseMouse: function
global _drawMouse: function
global _show_mouse_info: function
global _initBootInfo: function
global _showString: function
global _init_palette: function
global _set_palette: function
global _boxfill8: function
global _showFont8: function
global _showMemoryInfo: function
global _init_mouse_cursor: function
global _putblock: function
global _intHandlerFromC: function
global _charToHexVal: function
global _charToHexStr: function
global _intToHexStr: function
global _wait_KBC_sendready: function
global _init_keyboard: function
global _enable_mouse: function
global _intHandlerForMouse: function
global _fifo8_init: function
global _fifo8_put: function
global _fifo8_get: function
global _fifo8_status: function
global _mouse_decode: function

extern _io_in8                                          ; near
extern _io_store_eflags                                 ; near
extern _io_out8                                         ; near
extern _io_load_eflags                                  ; near
extern _io_stihlt                                       ; near
extern _io_cli                                          ; near
extern _io_sti                                          ; near
extern _get_addr_buffer                                 ; near
extern _get_memory_block_count                          ; near
extern _systemFont                                      ; byte


SECTION .text   align=4 execute                         ; section number 1, code

.text:  ; Local function

_launch:
        push    ebp                                     ; 0000 _ 55
        mov     ebp, esp                                ; 0001 _ 89. E5
        push    esi                                     ; 0003 _ 56
        push    ebx                                     ; 0004 _ 53
        sub     esp, 64                                 ; 0005 _ 83. EC, 40
        mov     dword [esp], _bootInfo                  ; 0008 _ C7. 04 24, 00000100(d)
        call    _initBootInfo                           ; 000F _ E8, 000007A5
        mov     eax, dword [_bootInfo]                  ; 0014 _ A1, 00000100(d)
        mov     dword [ebp-10H], eax                    ; 0019 _ 89. 45, F0
        movzx   eax, word [?_065]                       ; 001C _ 0F B7. 05, 00000104(d)
        cwde                                            ; 0023 _ 98
        mov     dword [_xsize], eax                     ; 0024 _ A3, 000001F8(d)
        movzx   eax, word [?_066]                       ; 0029 _ 0F B7. 05, 00000106(d)
        cwde                                            ; 0030 _ 98
        mov     dword [_ysize], eax                     ; 0031 _ A3, 000001FC(d)
        mov     dword [esp+8H], _keybuf                 ; 0036 _ C7. 44 24, 08, 00000140(d)
        mov     dword [esp+4H], 32                      ; 003E _ C7. 44 24, 04, 00000020
        mov     dword [esp], _keyinfo                   ; 0046 _ C7. 04 24, 00000108(d)
        call    _fifo8_init                             ; 004D _ E8, 0000114A
        mov     dword [esp+8H], _mousebuf               ; 0052 _ C7. 44 24, 08, 00000160(d)
        mov     dword [esp+4H], 128                     ; 005A _ C7. 44 24, 04, 00000080
        mov     dword [esp], _mouseinfo                 ; 0062 _ C7. 04 24, 00000120(d)
        call    _fifo8_init                             ; 0069 _ E8, 0000112E
        call    _init_palette                           ; 006E _ E8, 000007C8
        call    _init_keyboard                          ; 0073 _ E8, 00001053
        mov     eax, dword [_ysize]                     ; 0078 _ A1, 000001FC(d)
        lea     ecx, [eax-11H]                          ; 007D _ 8D. 48, EF
        mov     eax, dword [_xsize]                     ; 0080 _ A1, 000001F8(d)
        lea     edx, [eax-1H]                           ; 0085 _ 8D. 50, FF
        mov     eax, dword [_xsize]                     ; 0088 _ A1, 000001F8(d)
        mov     dword [esp+18H], ecx                    ; 008D _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 0091 _ 89. 54 24, 14
        mov     dword [esp+10H], 0                      ; 0095 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 009D _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 14                      ; 00A5 _ C7. 44 24, 08, 0000000E
        mov     dword [esp+4H], eax                     ; 00AD _ 89. 44 24, 04
        mov     eax, dword [ebp-10H]                    ; 00B1 _ 8B. 45, F0
        mov     dword [esp], eax                        ; 00B4 _ 89. 04 24
        call    _boxfill8                               ; 00B7 _ E8, 0000084A
        mov     eax, dword [_ysize]                     ; 00BC _ A1, 000001FC(d)
        lea     ebx, [eax-10H]                          ; 00C1 _ 8D. 58, F0
        mov     eax, dword [_xsize]                     ; 00C4 _ A1, 000001F8(d)
        lea     ecx, [eax-1H]                           ; 00C9 _ 8D. 48, FF
        mov     eax, dword [_ysize]                     ; 00CC _ A1, 000001FC(d)
        lea     edx, [eax-10H]                          ; 00D1 _ 8D. 50, F0
        mov     eax, dword [_xsize]                     ; 00D4 _ A1, 000001F8(d)
        mov     dword [esp+18H], ebx                    ; 00D9 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 00DD _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 00E1 _ 89. 54 24, 10
        mov     dword [esp+0CH], 0                      ; 00E5 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 00ED _ C7. 44 24, 08, 00000008
        mov     dword [esp+4H], eax                     ; 00F5 _ 89. 44 24, 04
        mov     eax, dword [ebp-10H]                    ; 00F9 _ 8B. 45, F0
        mov     dword [esp], eax                        ; 00FC _ 89. 04 24
        call    _boxfill8                               ; 00FF _ E8, 00000802
        mov     eax, dword [_ysize]                     ; 0104 _ A1, 000001FC(d)
        lea     ebx, [eax-0FH]                          ; 0109 _ 8D. 58, F1
        mov     eax, dword [_xsize]                     ; 010C _ A1, 000001F8(d)
        lea     ecx, [eax-1H]                           ; 0111 _ 8D. 48, FF
        mov     eax, dword [_ysize]                     ; 0114 _ A1, 000001FC(d)
        lea     edx, [eax-0FH]                          ; 0119 _ 8D. 50, F1
        mov     eax, dword [_xsize]                     ; 011C _ A1, 000001F8(d)
        mov     dword [esp+18H], ebx                    ; 0121 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 0125 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 0129 _ 89. 54 24, 10
        mov     dword [esp+0CH], 0                      ; 012D _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 7                       ; 0135 _ C7. 44 24, 08, 00000007
        mov     dword [esp+4H], eax                     ; 013D _ 89. 44 24, 04
        mov     eax, dword [ebp-10H]                    ; 0141 _ 8B. 45, F0
        mov     dword [esp], eax                        ; 0144 _ 89. 04 24
        call    _boxfill8                               ; 0147 _ E8, 000007BA
        mov     eax, dword [_ysize]                     ; 014C _ A1, 000001FC(d)
        lea     ebx, [eax-1H]                           ; 0151 _ 8D. 58, FF
        mov     eax, dword [_xsize]                     ; 0154 _ A1, 000001F8(d)
        lea     ecx, [eax-1H]                           ; 0159 _ 8D. 48, FF
        mov     eax, dword [_ysize]                     ; 015C _ A1, 000001FC(d)
        lea     edx, [eax-0EH]                          ; 0161 _ 8D. 50, F2
        mov     eax, dword [_xsize]                     ; 0164 _ A1, 000001F8(d)
        mov     dword [esp+18H], ebx                    ; 0169 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 016D _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 0171 _ 89. 54 24, 10
        mov     dword [esp+0CH], 0                      ; 0175 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 017D _ C7. 44 24, 08, 00000008
        mov     dword [esp+4H], eax                     ; 0185 _ 89. 44 24, 04
        mov     eax, dword [ebp-10H]                    ; 0189 _ 8B. 45, F0
        mov     dword [esp], eax                        ; 018C _ 89. 04 24
        call    _boxfill8                               ; 018F _ E8, 00000772
        mov     eax, dword [_ysize]                     ; 0194 _ A1, 000001FC(d)
        lea     ecx, [eax-0CH]                          ; 0199 _ 8D. 48, F4
        mov     eax, dword [_ysize]                     ; 019C _ A1, 000001FC(d)
        lea     edx, [eax-0CH]                          ; 01A1 _ 8D. 50, F4
        mov     eax, dword [_xsize]                     ; 01A4 _ A1, 000001F8(d)
        mov     dword [esp+18H], ecx                    ; 01A9 _ 89. 4C 24, 18
        mov     dword [esp+14H], 30                     ; 01AD _ C7. 44 24, 14, 0000001E
        mov     dword [esp+10H], edx                    ; 01B5 _ 89. 54 24, 10
        mov     dword [esp+0CH], 3                      ; 01B9 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 7                       ; 01C1 _ C7. 44 24, 08, 00000007
        mov     dword [esp+4H], eax                     ; 01C9 _ 89. 44 24, 04
        mov     eax, dword [ebp-10H]                    ; 01CD _ 8B. 45, F0
        mov     dword [esp], eax                        ; 01D0 _ 89. 04 24
        call    _boxfill8                               ; 01D3 _ E8, 0000072E
        mov     eax, dword [_ysize]                     ; 01D8 _ A1, 000001FC(d)
        lea     ecx, [eax-4H]                           ; 01DD _ 8D. 48, FC
        mov     eax, dword [_ysize]                     ; 01E0 _ A1, 000001FC(d)
        lea     edx, [eax-0CH]                          ; 01E5 _ 8D. 50, F4
        mov     eax, dword [_xsize]                     ; 01E8 _ A1, 000001F8(d)
        mov     dword [esp+18H], ecx                    ; 01ED _ 89. 4C 24, 18
        mov     dword [esp+14H], 2                      ; 01F1 _ C7. 44 24, 14, 00000002
        mov     dword [esp+10H], edx                    ; 01F9 _ 89. 54 24, 10
        mov     dword [esp+0CH], 2                      ; 01FD _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 7                       ; 0205 _ C7. 44 24, 08, 00000007
        mov     dword [esp+4H], eax                     ; 020D _ 89. 44 24, 04
        mov     eax, dword [ebp-10H]                    ; 0211 _ 8B. 45, F0
        mov     dword [esp], eax                        ; 0214 _ 89. 04 24
        call    _boxfill8                               ; 0217 _ E8, 000006EA
        mov     eax, dword [_ysize]                     ; 021C _ A1, 000001FC(d)
        lea     ecx, [eax-4H]                           ; 0221 _ 8D. 48, FC
        mov     eax, dword [_ysize]                     ; 0224 _ A1, 000001FC(d)
        lea     edx, [eax-4H]                           ; 0229 _ 8D. 50, FC
        mov     eax, dword [_xsize]                     ; 022C _ A1, 000001F8(d)
        mov     dword [esp+18H], ecx                    ; 0231 _ 89. 4C 24, 18
        mov     dword [esp+14H], 30                     ; 0235 _ C7. 44 24, 14, 0000001E
        mov     dword [esp+10H], edx                    ; 023D _ 89. 54 24, 10
        mov     dword [esp+0CH], 3                      ; 0241 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 15                      ; 0249 _ C7. 44 24, 08, 0000000F
        mov     dword [esp+4H], eax                     ; 0251 _ 89. 44 24, 04
        mov     eax, dword [ebp-10H]                    ; 0255 _ 8B. 45, F0
        mov     dword [esp], eax                        ; 0258 _ 89. 04 24
        call    _boxfill8                               ; 025B _ E8, 000006A6
        mov     eax, dword [_ysize]                     ; 0260 _ A1, 000001FC(d)
        lea     ecx, [eax-5H]                           ; 0265 _ 8D. 48, FB
        mov     eax, dword [_ysize]                     ; 0268 _ A1, 000001FC(d)
        lea     edx, [eax-0BH]                          ; 026D _ 8D. 50, F5
        mov     eax, dword [_xsize]                     ; 0270 _ A1, 000001F8(d)
        mov     dword [esp+18H], ecx                    ; 0275 _ 89. 4C 24, 18
        mov     dword [esp+14H], 30                     ; 0279 _ C7. 44 24, 14, 0000001E
        mov     dword [esp+10H], edx                    ; 0281 _ 89. 54 24, 10
        mov     dword [esp+0CH], 30                     ; 0285 _ C7. 44 24, 0C, 0000001E
        mov     dword [esp+8H], 15                      ; 028D _ C7. 44 24, 08, 0000000F
        mov     dword [esp+4H], eax                     ; 0295 _ 89. 44 24, 04
        mov     eax, dword [ebp-10H]                    ; 0299 _ 8B. 45, F0
        mov     dword [esp], eax                        ; 029C _ 89. 04 24
        call    _boxfill8                               ; 029F _ E8, 00000662
        mov     eax, dword [_ysize]                     ; 02A4 _ A1, 000001FC(d)
        lea     ecx, [eax-3H]                           ; 02A9 _ 8D. 48, FD
        mov     eax, dword [_ysize]                     ; 02AC _ A1, 000001FC(d)
        lea     edx, [eax-3H]                           ; 02B1 _ 8D. 50, FD
        mov     eax, dword [_xsize]                     ; 02B4 _ A1, 000001F8(d)
        mov     dword [esp+18H], ecx                    ; 02B9 _ 89. 4C 24, 18
        mov     dword [esp+14H], 30                     ; 02BD _ C7. 44 24, 14, 0000001E
        mov     dword [esp+10H], edx                    ; 02C5 _ 89. 54 24, 10
        mov     dword [esp+0CH], 2                      ; 02C9 _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 0                       ; 02D1 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], eax                     ; 02D9 _ 89. 44 24, 04
        mov     eax, dword [ebp-10H]                    ; 02DD _ 8B. 45, F0
        mov     dword [esp], eax                        ; 02E0 _ 89. 04 24
        call    _boxfill8                               ; 02E3 _ E8, 0000061E
        mov     eax, dword [_ysize]                     ; 02E8 _ A1, 000001FC(d)
        lea     ecx, [eax-3H]                           ; 02ED _ 8D. 48, FD
        mov     eax, dword [_ysize]                     ; 02F0 _ A1, 000001FC(d)
        lea     edx, [eax-0CH]                          ; 02F5 _ 8D. 50, F4
        mov     eax, dword [_xsize]                     ; 02F8 _ A1, 000001F8(d)
        mov     dword [esp+18H], ecx                    ; 02FD _ 89. 4C 24, 18
        mov     dword [esp+14H], 31                     ; 0301 _ C7. 44 24, 14, 0000001F
        mov     dword [esp+10H], edx                    ; 0309 _ 89. 54 24, 10
        mov     dword [esp+0CH], 31                     ; 030D _ C7. 44 24, 0C, 0000001F
        mov     dword [esp+8H], 0                       ; 0315 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], eax                     ; 031D _ 89. 44 24, 04
        mov     eax, dword [ebp-10H]                    ; 0321 _ 8B. 45, F0
        mov     dword [esp], eax                        ; 0324 _ 89. 04 24
        call    _boxfill8                               ; 0327 _ E8, 000005DA
        mov     eax, dword [_ysize]                     ; 032C _ A1, 000001FC(d)
        lea     esi, [eax-0CH]                          ; 0331 _ 8D. 70, F4
        mov     eax, dword [_xsize]                     ; 0334 _ A1, 000001F8(d)
        lea     ebx, [eax-4H]                           ; 0339 _ 8D. 58, FC
        mov     eax, dword [_ysize]                     ; 033C _ A1, 000001FC(d)
        lea     ecx, [eax-0CH]                          ; 0341 _ 8D. 48, F4
        mov     eax, dword [_xsize]                     ; 0344 _ A1, 000001F8(d)
        lea     edx, [eax-24H]                          ; 0349 _ 8D. 50, DC
        mov     eax, dword [_xsize]                     ; 034C _ A1, 000001F8(d)
        mov     dword [esp+18H], esi                    ; 0351 _ 89. 74 24, 18
        mov     dword [esp+14H], ebx                    ; 0355 _ 89. 5C 24, 14
        mov     dword [esp+10H], ecx                    ; 0359 _ 89. 4C 24, 10
        mov     dword [esp+0CH], edx                    ; 035D _ 89. 54 24, 0C
        mov     dword [esp+8H], 15                      ; 0361 _ C7. 44 24, 08, 0000000F
        mov     dword [esp+4H], eax                     ; 0369 _ 89. 44 24, 04
        mov     eax, dword [ebp-10H]                    ; 036D _ 8B. 45, F0
        mov     dword [esp], eax                        ; 0370 _ 89. 04 24
        call    _boxfill8                               ; 0373 _ E8, 0000058E
        mov     eax, dword [_ysize]                     ; 0378 _ A1, 000001FC(d)
        lea     esi, [eax-4H]                           ; 037D _ 8D. 70, FC
        mov     eax, dword [_xsize]                     ; 0380 _ A1, 000001F8(d)
        lea     ebx, [eax-24H]                          ; 0385 _ 8D. 58, DC
        mov     eax, dword [_ysize]                     ; 0388 _ A1, 000001FC(d)
        lea     ecx, [eax-0BH]                          ; 038D _ 8D. 48, F5
        mov     eax, dword [_xsize]                     ; 0390 _ A1, 000001F8(d)
        lea     edx, [eax-24H]                          ; 0395 _ 8D. 50, DC
        mov     eax, dword [_xsize]                     ; 0398 _ A1, 000001F8(d)
        mov     dword [esp+18H], esi                    ; 039D _ 89. 74 24, 18
        mov     dword [esp+14H], ebx                    ; 03A1 _ 89. 5C 24, 14
        mov     dword [esp+10H], ecx                    ; 03A5 _ 89. 4C 24, 10
        mov     dword [esp+0CH], edx                    ; 03A9 _ 89. 54 24, 0C
        mov     dword [esp+8H], 15                      ; 03AD _ C7. 44 24, 08, 0000000F
        mov     dword [esp+4H], eax                     ; 03B5 _ 89. 44 24, 04
        mov     eax, dword [ebp-10H]                    ; 03B9 _ 8B. 45, F0
        mov     dword [esp], eax                        ; 03BC _ 89. 04 24
        call    _boxfill8                               ; 03BF _ E8, 00000542
        mov     eax, dword [_ysize]                     ; 03C4 _ A1, 000001FC(d)
        lea     esi, [eax-3H]                           ; 03C9 _ 8D. 70, FD
        mov     eax, dword [_xsize]                     ; 03CC _ A1, 000001F8(d)
        lea     ebx, [eax-4H]                           ; 03D1 _ 8D. 58, FC
        mov     eax, dword [_ysize]                     ; 03D4 _ A1, 000001FC(d)
        lea     ecx, [eax-3H]                           ; 03D9 _ 8D. 48, FD
        mov     eax, dword [_xsize]                     ; 03DC _ A1, 000001F8(d)
        lea     edx, [eax-24H]                          ; 03E1 _ 8D. 50, DC
        mov     eax, dword [_xsize]                     ; 03E4 _ A1, 000001F8(d)
        mov     dword [esp+18H], esi                    ; 03E9 _ 89. 74 24, 18
        mov     dword [esp+14H], ebx                    ; 03ED _ 89. 5C 24, 14
        mov     dword [esp+10H], ecx                    ; 03F1 _ 89. 4C 24, 10
        mov     dword [esp+0CH], edx                    ; 03F5 _ 89. 54 24, 0C
        mov     dword [esp+8H], 7                       ; 03F9 _ C7. 44 24, 08, 00000007
        mov     dword [esp+4H], eax                     ; 0401 _ 89. 44 24, 04
        mov     eax, dword [ebp-10H]                    ; 0405 _ 8B. 45, F0
        mov     dword [esp], eax                        ; 0408 _ 89. 04 24
        call    _boxfill8                               ; 040B _ E8, 000004F6
        mov     eax, dword [_ysize]                     ; 0410 _ A1, 000001FC(d)
        lea     esi, [eax-3H]                           ; 0415 _ 8D. 70, FD
        mov     eax, dword [_xsize]                     ; 0418 _ A1, 000001F8(d)
        lea     ebx, [eax-3H]                           ; 041D _ 8D. 58, FD
        mov     eax, dword [_ysize]                     ; 0420 _ A1, 000001FC(d)
        lea     ecx, [eax-0CH]                          ; 0425 _ 8D. 48, F4
        mov     eax, dword [_xsize]                     ; 0428 _ A1, 000001F8(d)
        lea     edx, [eax-3H]                           ; 042D _ 8D. 50, FD
        mov     eax, dword [_xsize]                     ; 0430 _ A1, 000001F8(d)
        mov     dword [esp+18H], esi                    ; 0435 _ 89. 74 24, 18
        mov     dword [esp+14H], ebx                    ; 0439 _ 89. 5C 24, 14
        mov     dword [esp+10H], ecx                    ; 043D _ 89. 4C 24, 10
        mov     dword [esp+0CH], edx                    ; 0441 _ 89. 54 24, 0C
        mov     dword [esp+8H], 7                       ; 0445 _ C7. 44 24, 08, 00000007
        mov     dword [esp+4H], eax                     ; 044D _ 89. 44 24, 04
        mov     eax, dword [ebp-10H]                    ; 0451 _ 8B. 45, F0
        mov     dword [esp], eax                        ; 0454 _ 89. 04 24
        call    _boxfill8                               ; 0457 _ E8, 000004AA
        mov     eax, dword [_xsize]                     ; 045C _ A1, 000001F8(d)
        mov     dword [esp+14H], ?_069                  ; 0461 _ C7. 44 24, 14, 00000000(d)
        mov     dword [esp+10H], 7                      ; 0469 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 60                     ; 0471 _ C7. 44 24, 0C, 0000003C
        mov     dword [esp+8H], 125                     ; 0479 _ C7. 44 24, 08, 0000007D
        mov     dword [esp+4H], eax                     ; 0481 _ 89. 44 24, 04
        mov     eax, dword [ebp-10H]                    ; 0485 _ 8B. 45, F0
        mov     dword [esp], eax                        ; 0488 _ 89. 04 24
        call    _showString                             ; 048B _ E8, 0000034A
        mov     eax, dword [_xsize]                     ; 0490 _ A1, 000001F8(d)
        sub     eax, 16                                 ; 0495 _ 83. E8, 10
        mov     edx, eax                                ; 0498 _ 89. C2
        shr     edx, 31                                 ; 049A _ C1. EA, 1F
        add     eax, edx                                ; 049D _ 01. D0
        sar     eax, 1                                  ; 049F _ D1. F8
        mov     dword [_mx], eax                        ; 04A1 _ A3, 000001F0(d)
        mov     eax, dword [_ysize]                     ; 04A6 _ A1, 000001FC(d)
        sub     eax, 44                                 ; 04AB _ 83. E8, 2C
        mov     edx, eax                                ; 04AE _ 89. C2
        shr     edx, 31                                 ; 04B0 _ C1. EA, 1F
        add     eax, edx                                ; 04B3 _ 01. D0
        sar     eax, 1                                  ; 04B5 _ D1. F8
        mov     dword [_my], eax                        ; 04B7 _ A3, 000001F4(d)
        mov     dword [esp+4H], 14                      ; 04BC _ C7. 44 24, 04, 0000000E
        mov     dword [esp], _mcursor                   ; 04C4 _ C7. 04 24, 00000000(d)
        call    _init_mouse_cursor                      ; 04CB _ E8, 0000092D
        mov     ecx, dword [_my]                        ; 04D0 _ 8B. 0D, 000001F4(d)
        mov     edx, dword [_mx]                        ; 04D6 _ 8B. 15, 000001F0(d)
        mov     eax, dword [_xsize]                     ; 04DC _ A1, 000001F8(d)
        mov     dword [esp+1CH], 16                     ; 04E1 _ C7. 44 24, 1C, 00000010
        mov     dword [esp+18H], _mcursor               ; 04E9 _ C7. 44 24, 18, 00000000(d)
        mov     dword [esp+14H], ecx                    ; 04F1 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 04F5 _ 89. 54 24, 10
        mov     dword [esp+0CH], 16                     ; 04F9 _ C7. 44 24, 0C, 00000010
        mov     dword [esp+8H], 16                      ; 0501 _ C7. 44 24, 08, 00000010
        mov     dword [esp+4H], eax                     ; 0509 _ 89. 44 24, 04
        mov     eax, dword [ebp-10H]                    ; 050D _ 8B. 45, F0
        mov     dword [esp], eax                        ; 0510 _ 89. 04 24
        call    _putblock                               ; 0513 _ E8, 000009BB
        call    _get_memory_block_count                 ; 0518 _ E8, 00000000(rel)
        mov     dword [ebp-14H], eax                    ; 051D _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 0520 _ 8B. 45, EC
        mov     dword [esp], eax                        ; 0523 _ 89. 04 24
        call    _intToHexStr                            ; 0526 _ E8, 00000AEE
        mov     dword [ebp-18H], eax                    ; 052B _ 89. 45, E8
        call    _get_addr_buffer                        ; 052E _ E8, 00000000(rel)
        mov     dword [ebp-1CH], eax                    ; 0533 _ 89. 45, E4
        call    _io_sti                                 ; 0536 _ E8, 00000000(rel)
        mov     dword [esp], _mdec                      ; 053B _ C7. 04 24, 000001E0(d)
        call    _enable_mouse                           ; 0542 _ E8, 00000BBF
        mov     dword [ebp-20H], 0                      ; 0547 _ C7. 45, E0, 00000000
        mov     dword [ebp-0CH], 0                      ; 054E _ C7. 45, F4, 00000000
?_001:  call    _io_cli                                 ; 0555 _ E8, 00000000(rel)
        mov     dword [esp], _keyinfo                   ; 055A _ C7. 04 24, 00000108(d)
        call    _fifo8_status                           ; 0561 _ E8, 00000D64
        mov     ebx, eax                                ; 0566 _ 89. C3
        mov     dword [esp], _mouseinfo                 ; 0568 _ C7. 04 24, 00000120(d)
        call    _fifo8_status                           ; 056F _ E8, 00000D56
        add     eax, ebx                                ; 0574 _ 01. D8
        test    eax, eax                                ; 0576 _ 85. C0
        jnz     ?_002                                   ; 0578 _ 75, 07
        call    _io_stihlt                              ; 057A _ E8, 00000000(rel)
        jmp     ?_001                                   ; 057F _ EB, D4

?_002:  ; Local function
        mov     dword [esp], _keyinfo                   ; 0581 _ C7. 04 24, 00000108(d)
        call    _fifo8_status                           ; 0588 _ E8, 00000D3D
        test    eax, eax                                ; 058D _ 85. C0
        jz      ?_003                                   ; 058F _ 74, 72
        call    _io_sti                                 ; 0591 _ E8, 00000000(rel)
        mov     dword [esp], _keyinfo                   ; 0596 _ C7. 04 24, 00000108(d)
        call    _fifo8_get                              ; 059D _ E8, 00000CB8
        mov     dword [ebp-20H], eax                    ; 05A2 _ 89. 45, E0
        cmp     dword [ebp-20H], 28                     ; 05A5 _ 83. 7D, E0, 1C
        jnz     ?_001                                   ; 05A9 _ 75, AA
        mov     ecx, dword [_xsize]                     ; 05AB _ 8B. 0D, 000001F8(d)
        mov     edx, dword [ebp-0CH]                    ; 05B1 _ 8B. 55, F4
        mov     eax, edx                                ; 05B4 _ 89. D0
        shl     eax, 2                                  ; 05B6 _ C1. E0, 02
        add     eax, edx                                ; 05B9 _ 01. D0
        shl     eax, 2                                  ; 05BB _ C1. E0, 02
        mov     edx, eax                                ; 05BE _ 89. C2
        mov     eax, dword [ebp-1CH]                    ; 05C0 _ 8B. 45, E4
        add     eax, edx                                ; 05C3 _ 01. D0
        mov     dword [esp+10H], 7                      ; 05C5 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ecx                    ; 05CD _ 89. 4C 24, 0C
        mov     edx, dword [ebp-0CH]                    ; 05D1 _ 8B. 55, F4
        mov     dword [esp+8H], edx                     ; 05D4 _ 89. 54 24, 08
        mov     edx, dword [ebp-10H]                    ; 05D8 _ 8B. 55, F0
        mov     dword [esp+4H], edx                     ; 05DB _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 05DF _ 89. 04 24
        call    _showMemoryInfo                         ; 05E2 _ E8, 000004F0
        add     dword [ebp-0CH], 1                      ; 05E7 _ 83. 45, F4, 01
        mov     eax, dword [ebp-0CH]                    ; 05EB _ 8B. 45, F4
        cmp     eax, dword [ebp-14H]                    ; 05EE _ 3B. 45, EC
        jle     ?_001                                   ; 05F1 _ 0F 8E, FFFFFF5E
        mov     dword [ebp-0CH], 0                      ; 05F7 _ C7. 45, F4, 00000000
        jmp     ?_001                                   ; 05FE _ E9, FFFFFF52

?_003:  ; Local function
        mov     dword [esp], _mouseinfo                 ; 0603 _ C7. 04 24, 00000120(d)
        call    _fifo8_status                           ; 060A _ E8, 00000CBB
        test    eax, eax                                ; 060F _ 85. C0
        je      ?_001                                   ; 0611 _ 0F 84, FFFFFF3E
        call    _show_mouse_info                        ; 0617 _ E8, 0000013A
        jmp     ?_001                                   ; 061C _ E9, FFFFFF34

_computeMousePosition:; Function begin
        push    ebp                                     ; 0621 _ 55
        mov     ebp, esp                                ; 0622 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0624 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 0627 _ 8B. 50, 04
        mov     eax, dword [_mx]                        ; 062A _ A1, 000001F0(d)
        add     eax, edx                                ; 062F _ 01. D0
        mov     dword [_mx], eax                        ; 0631 _ A3, 000001F0(d)
        mov     eax, dword [ebp+8H]                     ; 0636 _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 0639 _ 8B. 50, 08
        mov     eax, dword [_my]                        ; 063C _ A1, 000001F4(d)
        add     eax, edx                                ; 0641 _ 01. D0
        mov     dword [_my], eax                        ; 0643 _ A3, 000001F4(d)
        mov     eax, dword [_mx]                        ; 0648 _ A1, 000001F0(d)
        test    eax, eax                                ; 064D _ 85. C0
        jns     ?_004                                   ; 064F _ 79, 0A
        mov     dword [_mx], 0                          ; 0651 _ C7. 05, 000001F0(d), 00000000
?_004:  mov     eax, dword [_my]                        ; 065B _ A1, 000001F4(d)
        test    eax, eax                                ; 0660 _ 85. C0
        jns     ?_005                                   ; 0662 _ 79, 0A
        mov     dword [_my], 0                          ; 0664 _ C7. 05, 000001F4(d), 00000000
?_005:  mov     eax, dword [_xsize]                     ; 066E _ A1, 000001F8(d)
        lea     edx, [eax-0FH]                          ; 0673 _ 8D. 50, F1
        mov     eax, dword [_mx]                        ; 0676 _ A1, 000001F0(d)
        cmp     edx, eax                                ; 067B _ 39. C2
        jg      ?_006                                   ; 067D _ 7F, 0D
        mov     eax, dword [_xsize]                     ; 067F _ A1, 000001F8(d)
        sub     eax, 16                                 ; 0684 _ 83. E8, 10
        mov     dword [_mx], eax                        ; 0687 _ A3, 000001F0(d)
?_006:  mov     eax, dword [_ysize]                     ; 068C _ A1, 000001FC(d)
        lea     edx, [eax-0FH]                          ; 0691 _ 8D. 50, F1
        mov     eax, dword [_my]                        ; 0694 _ A1, 000001F4(d)
        cmp     edx, eax                                ; 0699 _ 39. C2
        jg      ?_007                                   ; 069B _ 7F, 0D
        mov     eax, dword [_ysize]                     ; 069D _ A1, 000001FC(d)
        sub     eax, 16                                 ; 06A2 _ 83. E8, 10
        mov     dword [_my], eax                        ; 06A5 _ A3, 000001F4(d)
?_007:  nop                                             ; 06AA _ 90
        pop     ebp                                     ; 06AB _ 5D
        ret                                             ; 06AC _ C3
; _computeMousePosition End of function

_eraseMouse:; Function begin
        push    ebp                                     ; 06AD _ 55
        mov     ebp, esp                                ; 06AE _ 89. E5
        push    esi                                     ; 06B0 _ 56
        push    ebx                                     ; 06B1 _ 53
        sub     esp, 32                                 ; 06B2 _ 83. EC, 20
        mov     eax, dword [_my]                        ; 06B5 _ A1, 000001F4(d)
        lea     esi, [eax+0FH]                          ; 06BA _ 8D. 70, 0F
        mov     eax, dword [_mx]                        ; 06BD _ A1, 000001F0(d)
        lea     ebx, [eax+0FH]                          ; 06C2 _ 8D. 58, 0F
        mov     ecx, dword [_my]                        ; 06C5 _ 8B. 0D, 000001F4(d)
        mov     edx, dword [_mx]                        ; 06CB _ 8B. 15, 000001F0(d)
        mov     eax, dword [_xsize]                     ; 06D1 _ A1, 000001F8(d)
        mov     dword [esp+18H], esi                    ; 06D6 _ 89. 74 24, 18
        mov     dword [esp+14H], ebx                    ; 06DA _ 89. 5C 24, 14
        mov     dword [esp+10H], ecx                    ; 06DE _ 89. 4C 24, 10
        mov     dword [esp+0CH], edx                    ; 06E2 _ 89. 54 24, 0C
        mov     dword [esp+8H], 14                      ; 06E6 _ C7. 44 24, 08, 0000000E
        mov     dword [esp+4H], eax                     ; 06EE _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 06F2 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 06F5 _ 89. 04 24
        call    _boxfill8                               ; 06F8 _ E8, 00000209
        nop                                             ; 06FD _ 90
        add     esp, 32                                 ; 06FE _ 83. C4, 20
        pop     ebx                                     ; 0701 _ 5B
        pop     esi                                     ; 0702 _ 5E
        pop     ebp                                     ; 0703 _ 5D
        ret                                             ; 0704 _ C3
; _eraseMouse End of function

_drawMouse:; Function begin
        push    ebp                                     ; 0705 _ 55
        mov     ebp, esp                                ; 0706 _ 89. E5
        sub     esp, 40                                 ; 0708 _ 83. EC, 28
        mov     ecx, dword [_my]                        ; 070B _ 8B. 0D, 000001F4(d)
        mov     edx, dword [_mx]                        ; 0711 _ 8B. 15, 000001F0(d)
        mov     eax, dword [_xsize]                     ; 0717 _ A1, 000001F8(d)
        mov     dword [esp+1CH], 16                     ; 071C _ C7. 44 24, 1C, 00000010
        mov     dword [esp+18H], _mcursor               ; 0724 _ C7. 44 24, 18, 00000000(d)
        mov     dword [esp+14H], ecx                    ; 072C _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 0730 _ 89. 54 24, 10
        mov     dword [esp+0CH], 16                     ; 0734 _ C7. 44 24, 0C, 00000010
        mov     dword [esp+8H], 16                      ; 073C _ C7. 44 24, 08, 00000010
        mov     dword [esp+4H], eax                     ; 0744 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0748 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 074B _ 89. 04 24
        call    _putblock                               ; 074E _ E8, 00000780
        nop                                             ; 0753 _ 90
        leave                                           ; 0754 _ C9
        ret                                             ; 0755 _ C3
; _drawMouse End of function

_show_mouse_info:; Function begin
        push    ebp                                     ; 0756 _ 55
        mov     ebp, esp                                ; 0757 _ 89. E5
        sub     esp, 40                                 ; 0759 _ 83. EC, 28
        mov     eax, dword [_bootInfo]                  ; 075C _ A1, 00000100(d)
        mov     dword [ebp-0CH], eax                    ; 0761 _ 89. 45, F4
        mov     byte [ebp-0DH], 0                       ; 0764 _ C6. 45, F3, 00
        call    _io_sti                                 ; 0768 _ E8, 00000000(rel)
        mov     dword [esp], _mouseinfo                 ; 076D _ C7. 04 24, 00000120(d)
        call    _fifo8_get                              ; 0774 _ E8, 00000AE1
        mov     byte [ebp-0DH], al                      ; 0779 _ 88. 45, F3
        movzx   eax, byte [ebp-0DH]                     ; 077C _ 0F B6. 45, F3
        mov     dword [esp+4H], eax                     ; 0780 _ 89. 44 24, 04
        mov     dword [esp], _mdec                      ; 0784 _ C7. 04 24, 000001E0(d)
        call    _mouse_decode                           ; 078B _ E8, 00000B4F
        test    eax, eax                                ; 0790 _ 85. C0
        jz      ?_008                                   ; 0792 _ 74, 22
        mov     eax, dword [ebp-0CH]                    ; 0794 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 0797 _ 89. 04 24
        call    _eraseMouse                             ; 079A _ E8, FFFFFF0E
        mov     dword [esp], _mdec                      ; 079F _ C7. 04 24, 000001E0(d)
        call    _computeMousePosition                   ; 07A6 _ E8, FFFFFE76
        mov     eax, dword [ebp-0CH]                    ; 07AB _ 8B. 45, F4
        mov     dword [esp], eax                        ; 07AE _ 89. 04 24
        call    _drawMouse                              ; 07B1 _ E8, FFFFFF4F
?_008:  nop                                             ; 07B6 _ 90
        leave                                           ; 07B7 _ C9
        ret                                             ; 07B8 _ C3
; _show_mouse_info End of function

_initBootInfo:; Function begin
        push    ebp                                     ; 07B9 _ 55
        mov     ebp, esp                                ; 07BA _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 07BC _ 8B. 45, 08
        mov     dword [eax], 655360                     ; 07BF _ C7. 00, 000A0000
        mov     eax, dword [ebp+8H]                     ; 07C5 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 320                      ; 07C8 _ 66: C7. 40, 04, 0140
        mov     eax, dword [ebp+8H]                     ; 07CE _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 200                      ; 07D1 _ 66: C7. 40, 06, 00C8
        nop                                             ; 07D7 _ 90
        pop     ebp                                     ; 07D8 _ 5D
        ret                                             ; 07D9 _ C3
; _initBootInfo End of function

_showString:; Function begin
        push    ebp                                     ; 07DA _ 55
        mov     ebp, esp                                ; 07DB _ 89. E5
        sub     esp, 56                                 ; 07DD _ 83. EC, 38
        mov     eax, dword [ebp+18H]                    ; 07E0 _ 8B. 45, 18
        mov     byte [ebp-0CH], al                      ; 07E3 _ 88. 45, F4
        jmp     ?_010                                   ; 07E6 _ EB, 46

?_009:  mov     eax, dword [ebp+1CH]                    ; 07E8 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 07EB _ 0F B6. 00
        movzx   eax, al                                 ; 07EE _ 0F B6. C0
        shl     eax, 4                                  ; 07F1 _ C1. E0, 04
        lea     edx, [_systemFont+eax]                  ; 07F4 _ 8D. 90, 00000000(d)
        movsx   eax, byte [ebp-0CH]                     ; 07FA _ 0F BE. 45, F4
        mov     dword [esp+14H], edx                    ; 07FE _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 0802 _ 89. 44 24, 10
        mov     eax, dword [ebp+14H]                    ; 0806 _ 8B. 45, 14
        mov     dword [esp+0CH], eax                    ; 0809 _ 89. 44 24, 0C
        mov     eax, dword [ebp+10H]                    ; 080D _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 0810 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 0814 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0817 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 081B _ 8B. 45, 08
        mov     dword [esp], eax                        ; 081E _ 89. 04 24
        call    _showFont8                              ; 0821 _ E8, 00000130
        add     dword [ebp+10H], 8                      ; 0826 _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 082A _ 83. 45, 1C, 01
?_010:  mov     eax, dword [ebp+1CH]                    ; 082E _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 0831 _ 0F B6. 00
        test    al, al                                  ; 0834 _ 84. C0
        jnz     ?_009                                   ; 0836 _ 75, B0
        nop                                             ; 0838 _ 90
        leave                                           ; 0839 _ C9
        ret                                             ; 083A _ C3
; _showString End of function

_init_palette:; Function begin
        push    ebp                                     ; 083B _ 55
        mov     ebp, esp                                ; 083C _ 89. E5
        sub     esp, 24                                 ; 083E _ 83. EC, 18
        mov     dword [esp+8H], _table_rgb.2082         ; 0841 _ C7. 44 24, 08, 00000020(d)
        mov     dword [esp+4H], 15                      ; 0849 _ C7. 44 24, 04, 0000000F
        mov     dword [esp], 0                          ; 0851 _ C7. 04 24, 00000000
        call    _set_palette                            ; 0858 _ E8, 00000003
        nop                                             ; 085D _ 90
        leave                                           ; 085E _ C9
        ret                                             ; 085F _ C3
; _init_palette End of function

_set_palette:; Function begin
        push    ebp                                     ; 0860 _ 55
        mov     ebp, esp                                ; 0861 _ 89. E5
        sub     esp, 40                                 ; 0863 _ 83. EC, 28
        call    _io_load_eflags                         ; 0866 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 086B _ 89. 45, F0
        call    _io_cli                                 ; 086E _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 0873 _ 8B. 45, 08
        mov     dword [esp+4H], eax                     ; 0876 _ 89. 44 24, 04
        mov     dword [esp], 968                        ; 087A _ C7. 04 24, 000003C8
        call    _io_out8                                ; 0881 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 0886 _ 8B. 45, 08
        mov     dword [ebp-0CH], eax                    ; 0889 _ 89. 45, F4
        jmp     ?_012                                   ; 088C _ EB, 62

?_011:  mov     eax, dword [ebp+10H]                    ; 088E _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 0891 _ 0F B6. 00
        shr     al, 2                                   ; 0894 _ C0. E8, 02
        movzx   eax, al                                 ; 0897 _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 089A _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 089E _ C7. 04 24, 000003C9
        call    _io_out8                                ; 08A5 _ E8, 00000000(rel)
        mov     eax, dword [ebp+10H]                    ; 08AA _ 8B. 45, 10
        add     eax, 1                                  ; 08AD _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 08B0 _ 0F B6. 00
        shr     al, 2                                   ; 08B3 _ C0. E8, 02
        movzx   eax, al                                 ; 08B6 _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 08B9 _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 08BD _ C7. 04 24, 000003C9
        call    _io_out8                                ; 08C4 _ E8, 00000000(rel)
        mov     eax, dword [ebp+10H]                    ; 08C9 _ 8B. 45, 10
        add     eax, 2                                  ; 08CC _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 08CF _ 0F B6. 00
        shr     al, 2                                   ; 08D2 _ C0. E8, 02
        movzx   eax, al                                 ; 08D5 _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 08D8 _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 08DC _ C7. 04 24, 000003C9
        call    _io_out8                                ; 08E3 _ E8, 00000000(rel)
        add     dword [ebp+10H], 3                      ; 08E8 _ 83. 45, 10, 03
        add     dword [ebp-0CH], 1                      ; 08EC _ 83. 45, F4, 01
?_012:  mov     eax, dword [ebp-0CH]                    ; 08F0 _ 8B. 45, F4
        cmp     eax, dword [ebp+0CH]                    ; 08F3 _ 3B. 45, 0C
        jle     ?_011                                   ; 08F6 _ 7E, 96
        mov     eax, dword [ebp-10H]                    ; 08F8 _ 8B. 45, F0
        mov     dword [esp], eax                        ; 08FB _ 89. 04 24
        call    _io_store_eflags                        ; 08FE _ E8, 00000000(rel)
        nop                                             ; 0903 _ 90
        leave                                           ; 0904 _ C9
        ret                                             ; 0905 _ C3
; _set_palette End of function

_boxfill8:; Function begin
        push    ebp                                     ; 0906 _ 55
        mov     ebp, esp                                ; 0907 _ 89. E5
        sub     esp, 20                                 ; 0909 _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 090C _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 090F _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 0912 _ 8B. 45, 18
        mov     dword [ebp-8H], eax                     ; 0915 _ 89. 45, F8
        jmp     ?_016                                   ; 0918 _ EB, 31

?_013:  mov     eax, dword [ebp+14H]                    ; 091A _ 8B. 45, 14
        mov     dword [ebp-4H], eax                     ; 091D _ 89. 45, FC
        jmp     ?_015                                   ; 0920 _ EB, 1D

?_014:  mov     eax, dword [ebp-8H]                     ; 0922 _ 8B. 45, F8
        imul    eax, dword [ebp+0CH]                    ; 0925 _ 0F AF. 45, 0C
        mov     edx, dword [ebp-4H]                     ; 0929 _ 8B. 55, FC
        add     eax, edx                                ; 092C _ 01. D0
        mov     edx, eax                                ; 092E _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0930 _ 8B. 45, 08
        add     edx, eax                                ; 0933 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0935 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0939 _ 88. 02
        add     dword [ebp-4H], 1                       ; 093B _ 83. 45, FC, 01
?_015:  mov     eax, dword [ebp-4H]                     ; 093F _ 8B. 45, FC
        cmp     eax, dword [ebp+1CH]                    ; 0942 _ 3B. 45, 1C
        jle     ?_014                                   ; 0945 _ 7E, DB
        add     dword [ebp-8H], 1                       ; 0947 _ 83. 45, F8, 01
?_016:  mov     eax, dword [ebp-8H]                     ; 094B _ 8B. 45, F8
        cmp     eax, dword [ebp+20H]                    ; 094E _ 3B. 45, 20
        jle     ?_013                                   ; 0951 _ 7E, C7
        nop                                             ; 0953 _ 90
        leave                                           ; 0954 _ C9
        ret                                             ; 0955 _ C3
; _boxfill8 End of function

_showFont8:; Function begin
        push    ebp                                     ; 0956 _ 55
        mov     ebp, esp                                ; 0957 _ 89. E5
        sub     esp, 20                                 ; 0959 _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 095C _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 095F _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 0962 _ C7. 45, FC, 00000000
        jmp     ?_026                                   ; 0969 _ E9, 0000015C

?_017:  mov     edx, dword [ebp-4H]                     ; 096E _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 0971 _ 8B. 45, 1C
        add     eax, edx                                ; 0974 _ 01. D0
        movzx   eax, byte [eax]                         ; 0976 _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 0979 _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 097C _ 80. 7D, FB, 00
        jns     ?_018                                   ; 0980 _ 79, 1E
        mov     edx, dword [ebp+14H]                    ; 0982 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0985 _ 8B. 45, FC
        add     eax, edx                                ; 0988 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 098A _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 098E _ 8B. 55, 10
        add     eax, edx                                ; 0991 _ 01. D0
        mov     edx, eax                                ; 0993 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0995 _ 8B. 45, 08
        add     edx, eax                                ; 0998 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 099A _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 099E _ 88. 02
?_018:  movsx   eax, byte [ebp-5H]                      ; 09A0 _ 0F BE. 45, FB
        and     eax, 40H                                ; 09A4 _ 83. E0, 40
        test    eax, eax                                ; 09A7 _ 85. C0
        jz      ?_019                                   ; 09A9 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 09AB _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 09AE _ 8B. 45, FC
        add     eax, edx                                ; 09B1 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 09B3 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 09B7 _ 8B. 55, 10
        add     eax, edx                                ; 09BA _ 01. D0
        lea     edx, [eax+1H]                           ; 09BC _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 09BF _ 8B. 45, 08
        add     edx, eax                                ; 09C2 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 09C4 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 09C8 _ 88. 02
?_019:  movsx   eax, byte [ebp-5H]                      ; 09CA _ 0F BE. 45, FB
        and     eax, 20H                                ; 09CE _ 83. E0, 20
        test    eax, eax                                ; 09D1 _ 85. C0
        jz      ?_020                                   ; 09D3 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 09D5 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 09D8 _ 8B. 45, FC
        add     eax, edx                                ; 09DB _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 09DD _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 09E1 _ 8B. 55, 10
        add     eax, edx                                ; 09E4 _ 01. D0
        lea     edx, [eax+2H]                           ; 09E6 _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 09E9 _ 8B. 45, 08
        add     edx, eax                                ; 09EC _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 09EE _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 09F2 _ 88. 02
?_020:  movsx   eax, byte [ebp-5H]                      ; 09F4 _ 0F BE. 45, FB
        and     eax, 10H                                ; 09F8 _ 83. E0, 10
        test    eax, eax                                ; 09FB _ 85. C0
        jz      ?_021                                   ; 09FD _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 09FF _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0A02 _ 8B. 45, FC
        add     eax, edx                                ; 0A05 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0A07 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 0A0B _ 8B. 55, 10
        add     eax, edx                                ; 0A0E _ 01. D0
        lea     edx, [eax+3H]                           ; 0A10 _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 0A13 _ 8B. 45, 08
        add     edx, eax                                ; 0A16 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0A18 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0A1C _ 88. 02
?_021:  movsx   eax, byte [ebp-5H]                      ; 0A1E _ 0F BE. 45, FB
        and     eax, 08H                                ; 0A22 _ 83. E0, 08
        test    eax, eax                                ; 0A25 _ 85. C0
        jz      ?_022                                   ; 0A27 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 0A29 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0A2C _ 8B. 45, FC
        add     eax, edx                                ; 0A2F _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0A31 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 0A35 _ 8B. 55, 10
        add     eax, edx                                ; 0A38 _ 01. D0
        lea     edx, [eax+4H]                           ; 0A3A _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0A3D _ 8B. 45, 08
        add     edx, eax                                ; 0A40 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0A42 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0A46 _ 88. 02
?_022:  movsx   eax, byte [ebp-5H]                      ; 0A48 _ 0F BE. 45, FB
        and     eax, 04H                                ; 0A4C _ 83. E0, 04
        test    eax, eax                                ; 0A4F _ 85. C0
        jz      ?_023                                   ; 0A51 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 0A53 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0A56 _ 8B. 45, FC
        add     eax, edx                                ; 0A59 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0A5B _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 0A5F _ 8B. 55, 10
        add     eax, edx                                ; 0A62 _ 01. D0
        lea     edx, [eax+5H]                           ; 0A64 _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 0A67 _ 8B. 45, 08
        add     edx, eax                                ; 0A6A _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0A6C _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0A70 _ 88. 02
?_023:  movsx   eax, byte [ebp-5H]                      ; 0A72 _ 0F BE. 45, FB
        and     eax, 02H                                ; 0A76 _ 83. E0, 02
        test    eax, eax                                ; 0A79 _ 85. C0
        jz      ?_024                                   ; 0A7B _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 0A7D _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0A80 _ 8B. 45, FC
        add     eax, edx                                ; 0A83 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0A85 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 0A89 _ 8B. 55, 10
        add     eax, edx                                ; 0A8C _ 01. D0
        lea     edx, [eax+6H]                           ; 0A8E _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 0A91 _ 8B. 45, 08
        add     edx, eax                                ; 0A94 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0A96 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0A9A _ 88. 02
?_024:  movsx   eax, byte [ebp-5H]                      ; 0A9C _ 0F BE. 45, FB
        and     eax, 01H                                ; 0AA0 _ 83. E0, 01
        test    eax, eax                                ; 0AA3 _ 85. C0
        jz      ?_025                                   ; 0AA5 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 0AA7 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0AAA _ 8B. 45, FC
        add     eax, edx                                ; 0AAD _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0AAF _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 0AB3 _ 8B. 55, 10
        add     eax, edx                                ; 0AB6 _ 01. D0
        lea     edx, [eax+7H]                           ; 0AB8 _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 0ABB _ 8B. 45, 08
        add     edx, eax                                ; 0ABE _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0AC0 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0AC4 _ 88. 02
?_025:  add     dword [ebp-4H], 1                       ; 0AC6 _ 83. 45, FC, 01
?_026:  cmp     dword [ebp-4H], 15                      ; 0ACA _ 83. 7D, FC, 0F
        jle     ?_017                                   ; 0ACE _ 0F 8E, FFFFFE9A
        nop                                             ; 0AD4 _ 90
        leave                                           ; 0AD5 _ C9
        ret                                             ; 0AD6 _ C3
; _showFont8 End of function

_showMemoryInfo:; Function begin
        push    ebp                                     ; 0AD7 _ 55
        mov     ebp, esp                                ; 0AD8 _ 89. E5
        sub     esp, 88                                 ; 0ADA _ 83. EC, 58
        mov     dword [ebp-0CH], 0                      ; 0ADD _ C7. 45, F4, 00000000
        mov     dword [ebp-10H], 0                      ; 0AE4 _ C7. 45, F0, 00000000
        mov     dword [ebp-14H], 104                    ; 0AEB _ C7. 45, EC, 00000068
        mov     dword [ebp-18H], 80                     ; 0AF2 _ C7. 45, E8, 00000050
        mov     dword [esp+18H], 100                    ; 0AF9 _ C7. 44 24, 18, 00000064
        mov     eax, dword [ebp+14H]                    ; 0B01 _ 8B. 45, 14
        mov     dword [esp+14H], eax                    ; 0B04 _ 89. 44 24, 14
        mov     dword [esp+10H], 0                      ; 0B08 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 0B10 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 14                      ; 0B18 _ C7. 44 24, 08, 0000000E
        mov     eax, dword [ebp+14H]                    ; 0B20 _ 8B. 45, 14
        mov     dword [esp+4H], eax                     ; 0B23 _ 89. 44 24, 04
        mov     eax, dword [ebp+0CH]                    ; 0B27 _ 8B. 45, 0C
        mov     dword [esp], eax                        ; 0B2A _ 89. 04 24
        call    _boxfill8                               ; 0B2D _ E8, FFFFFDD4
        mov     eax, dword [ebp+18H]                    ; 0B32 _ 8B. 45, 18
        movsx   eax, al                                 ; 0B35 _ 0F BE. C0
        mov     dword [esp+14H], ?_070                  ; 0B38 _ C7. 44 24, 14, 0000000B(d)
        mov     dword [esp+10H], eax                    ; 0B40 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 0B44 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 0B47 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 0B4B _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 0B4E _ 89. 44 24, 08
        mov     eax, dword [ebp+14H]                    ; 0B52 _ 8B. 45, 14
        mov     dword [esp+4H], eax                     ; 0B55 _ 89. 44 24, 04
        mov     eax, dword [ebp+0CH]                    ; 0B59 _ 8B. 45, 0C
        mov     dword [esp], eax                        ; 0B5C _ 89. 04 24
        call    _showString                             ; 0B5F _ E8, FFFFFC76
        mov     eax, dword [ebp+10H]                    ; 0B64 _ 8B. 45, 10
        mov     dword [esp], eax                        ; 0B67 _ 89. 04 24
        call    _intToHexStr                            ; 0B6A _ E8, 000004AA
        mov     dword [ebp-1CH], eax                    ; 0B6F _ 89. 45, E4
        mov     eax, dword [ebp+18H]                    ; 0B72 _ 8B. 45, 18
        movsx   eax, al                                 ; 0B75 _ 0F BE. C0
        mov     edx, dword [ebp-1CH]                    ; 0B78 _ 8B. 55, E4
        mov     dword [esp+14H], edx                    ; 0B7B _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 0B7F _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 0B83 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 0B86 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 0B8A _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 0B8D _ 89. 44 24, 08
        mov     eax, dword [ebp+14H]                    ; 0B91 _ 8B. 45, 14
        mov     dword [esp+4H], eax                     ; 0B94 _ 89. 44 24, 04
        mov     eax, dword [ebp+0CH]                    ; 0B98 _ 8B. 45, 0C
        mov     dword [esp], eax                        ; 0B9B _ 89. 04 24
        call    _showString                             ; 0B9E _ E8, FFFFFC37
        add     dword [ebp-10H], 16                     ; 0BA3 _ 83. 45, F0, 10
        mov     eax, dword [ebp+18H]                    ; 0BA7 _ 8B. 45, 18
        movsx   eax, al                                 ; 0BAA _ 0F BE. C0
        mov     dword [esp+14H], ?_071                  ; 0BAD _ C7. 44 24, 14, 00000015(d)
        mov     dword [esp+10H], eax                    ; 0BB5 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 0BB9 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 0BBC _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 0BC0 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 0BC3 _ 89. 44 24, 08
        mov     eax, dword [ebp+14H]                    ; 0BC7 _ 8B. 45, 14
        mov     dword [esp+4H], eax                     ; 0BCA _ 89. 44 24, 04
        mov     eax, dword [ebp+0CH]                    ; 0BCE _ 8B. 45, 0C
        mov     dword [esp], eax                        ; 0BD1 _ 89. 04 24
        call    _showString                             ; 0BD4 _ E8, FFFFFC01
        mov     eax, dword [ebp+8H]                     ; 0BD9 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 0BDC _ 8B. 00
        mov     dword [esp], eax                        ; 0BDE _ 89. 04 24
        call    _intToHexStr                            ; 0BE1 _ E8, 00000433
        mov     dword [ebp-20H], eax                    ; 0BE6 _ 89. 45, E0
        mov     eax, dword [ebp+18H]                    ; 0BE9 _ 8B. 45, 18
        movsx   eax, al                                 ; 0BEC _ 0F BE. C0
        mov     edx, dword [ebp-20H]                    ; 0BEF _ 8B. 55, E0
        mov     dword [esp+14H], edx                    ; 0BF2 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 0BF6 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 0BFA _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 0BFD _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 0C01 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 0C04 _ 89. 44 24, 08
        mov     eax, dword [ebp+14H]                    ; 0C08 _ 8B. 45, 14
        mov     dword [esp+4H], eax                     ; 0C0B _ 89. 44 24, 04
        mov     eax, dword [ebp+0CH]                    ; 0C0F _ 8B. 45, 0C
        mov     dword [esp], eax                        ; 0C12 _ 89. 04 24
        call    _showString                             ; 0C15 _ E8, FFFFFBC0
        add     dword [ebp-10H], 16                     ; 0C1A _ 83. 45, F0, 10
        mov     eax, dword [ebp+18H]                    ; 0C1E _ 8B. 45, 18
        movsx   eax, al                                 ; 0C21 _ 0F BE. C0
        mov     dword [esp+14H], ?_072                  ; 0C24 _ C7. 44 24, 14, 00000021(d)
        mov     dword [esp+10H], eax                    ; 0C2C _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 0C30 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 0C33 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 0C37 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 0C3A _ 89. 44 24, 08
        mov     eax, dword [ebp+14H]                    ; 0C3E _ 8B. 45, 14
        mov     dword [esp+4H], eax                     ; 0C41 _ 89. 44 24, 04
        mov     eax, dword [ebp+0CH]                    ; 0C45 _ 8B. 45, 0C
        mov     dword [esp], eax                        ; 0C48 _ 89. 04 24
        call    _showString                             ; 0C4B _ E8, FFFFFB8A
        mov     eax, dword [ebp+8H]                     ; 0C50 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 0C53 _ 8B. 40, 04
        mov     dword [esp], eax                        ; 0C56 _ 89. 04 24
        call    _intToHexStr                            ; 0C59 _ E8, 000003BB
        mov     dword [ebp-24H], eax                    ; 0C5E _ 89. 45, DC
        mov     eax, dword [ebp+18H]                    ; 0C61 _ 8B. 45, 18
        movsx   eax, al                                 ; 0C64 _ 0F BE. C0
        mov     edx, dword [ebp-24H]                    ; 0C67 _ 8B. 55, DC
        mov     dword [esp+14H], edx                    ; 0C6A _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 0C6E _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 0C72 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 0C75 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 0C79 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 0C7C _ 89. 44 24, 08
        mov     eax, dword [ebp+14H]                    ; 0C80 _ 8B. 45, 14
        mov     dword [esp+4H], eax                     ; 0C83 _ 89. 44 24, 04
        mov     eax, dword [ebp+0CH]                    ; 0C87 _ 8B. 45, 0C
        mov     dword [esp], eax                        ; 0C8A _ 89. 04 24
        call    _showString                             ; 0C8D _ E8, FFFFFB48
        add     dword [ebp-10H], 16                     ; 0C92 _ 83. 45, F0, 10
        mov     eax, dword [ebp+18H]                    ; 0C96 _ 8B. 45, 18
        movsx   eax, al                                 ; 0C99 _ 0F BE. C0
        mov     dword [esp+14H], ?_073                  ; 0C9C _ C7. 44 24, 14, 0000002D(d)
        mov     dword [esp+10H], eax                    ; 0CA4 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 0CA8 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 0CAB _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 0CAF _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 0CB2 _ 89. 44 24, 08
        mov     eax, dword [ebp+14H]                    ; 0CB6 _ 8B. 45, 14
        mov     dword [esp+4H], eax                     ; 0CB9 _ 89. 44 24, 04
        mov     eax, dword [ebp+0CH]                    ; 0CBD _ 8B. 45, 0C
        mov     dword [esp], eax                        ; 0CC0 _ 89. 04 24
        call    _showString                             ; 0CC3 _ E8, FFFFFB12
        mov     eax, dword [ebp+8H]                     ; 0CC8 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 0CCB _ 8B. 40, 08
        mov     dword [esp], eax                        ; 0CCE _ 89. 04 24
        call    _intToHexStr                            ; 0CD1 _ E8, 00000343
        mov     dword [ebp-28H], eax                    ; 0CD6 _ 89. 45, D8
        mov     eax, dword [ebp+18H]                    ; 0CD9 _ 8B. 45, 18
        movsx   eax, al                                 ; 0CDC _ 0F BE. C0
        mov     edx, dword [ebp-28H]                    ; 0CDF _ 8B. 55, D8
        mov     dword [esp+14H], edx                    ; 0CE2 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 0CE6 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 0CEA _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 0CED _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 0CF1 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 0CF4 _ 89. 44 24, 08
        mov     eax, dword [ebp+14H]                    ; 0CF8 _ 8B. 45, 14
        mov     dword [esp+4H], eax                     ; 0CFB _ 89. 44 24, 04
        mov     eax, dword [ebp+0CH]                    ; 0CFF _ 8B. 45, 0C
        mov     dword [esp], eax                        ; 0D02 _ 89. 04 24
        call    _showString                             ; 0D05 _ E8, FFFFFAD0
        add     dword [ebp-10H], 16                     ; 0D0A _ 83. 45, F0, 10
        mov     eax, dword [ebp+18H]                    ; 0D0E _ 8B. 45, 18
        movsx   eax, al                                 ; 0D11 _ 0F BE. C0
        mov     dword [esp+14H], ?_074                  ; 0D14 _ C7. 44 24, 14, 00000039(d)
        mov     dword [esp+10H], eax                    ; 0D1C _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 0D20 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 0D23 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 0D27 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 0D2A _ 89. 44 24, 08
        mov     eax, dword [ebp+14H]                    ; 0D2E _ 8B. 45, 14
        mov     dword [esp+4H], eax                     ; 0D31 _ 89. 44 24, 04
        mov     eax, dword [ebp+0CH]                    ; 0D35 _ 8B. 45, 0C
        mov     dword [esp], eax                        ; 0D38 _ 89. 04 24
        call    _showString                             ; 0D3B _ E8, FFFFFA9A
        mov     eax, dword [ebp+8H]                     ; 0D40 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 0D43 _ 8B. 40, 0C
        mov     dword [esp], eax                        ; 0D46 _ 89. 04 24
        call    _intToHexStr                            ; 0D49 _ E8, 000002CB
        mov     dword [ebp-2CH], eax                    ; 0D4E _ 89. 45, D4
        mov     eax, dword [ebp+18H]                    ; 0D51 _ 8B. 45, 18
        movsx   eax, al                                 ; 0D54 _ 0F BE. C0
        mov     edx, dword [ebp-2CH]                    ; 0D57 _ 8B. 55, D4
        mov     dword [esp+14H], edx                    ; 0D5A _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 0D5E _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 0D62 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 0D65 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 0D69 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 0D6C _ 89. 44 24, 08
        mov     eax, dword [ebp+14H]                    ; 0D70 _ 8B. 45, 14
        mov     dword [esp+4H], eax                     ; 0D73 _ 89. 44 24, 04
        mov     eax, dword [ebp+0CH]                    ; 0D77 _ 8B. 45, 0C
        mov     dword [esp], eax                        ; 0D7A _ 89. 04 24
        call    _showString                             ; 0D7D _ E8, FFFFFA58
        add     dword [ebp-10H], 16                     ; 0D82 _ 83. 45, F0, 10
        mov     eax, dword [ebp+18H]                    ; 0D86 _ 8B. 45, 18
        movsx   eax, al                                 ; 0D89 _ 0F BE. C0
        mov     dword [esp+14H], ?_075                  ; 0D8C _ C7. 44 24, 14, 00000046(d)
        mov     dword [esp+10H], eax                    ; 0D94 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 0D98 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 0D9B _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 0D9F _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 0DA2 _ 89. 44 24, 08
        mov     eax, dword [ebp+14H]                    ; 0DA6 _ 8B. 45, 14
        mov     dword [esp+4H], eax                     ; 0DA9 _ 89. 44 24, 04
        mov     eax, dword [ebp+0CH]                    ; 0DAD _ 8B. 45, 0C
        mov     dword [esp], eax                        ; 0DB0 _ 89. 04 24
        call    _showString                             ; 0DB3 _ E8, FFFFFA22
        mov     eax, dword [ebp+8H]                     ; 0DB8 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0DBB _ 8B. 40, 10
        mov     dword [esp], eax                        ; 0DBE _ 89. 04 24
        call    _intToHexStr                            ; 0DC1 _ E8, 00000253
        mov     dword [ebp-30H], eax                    ; 0DC6 _ 89. 45, D0
        mov     eax, dword [ebp+18H]                    ; 0DC9 _ 8B. 45, 18
        movsx   eax, al                                 ; 0DCC _ 0F BE. C0
        mov     edx, dword [ebp-30H]                    ; 0DCF _ 8B. 55, D0
        mov     dword [esp+14H], edx                    ; 0DD2 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 0DD6 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 0DDA _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 0DDD _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 0DE1 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 0DE4 _ 89. 44 24, 08
        mov     eax, dword [ebp+14H]                    ; 0DE8 _ 8B. 45, 14
        mov     dword [esp+4H], eax                     ; 0DEB _ 89. 44 24, 04
        mov     eax, dword [ebp+0CH]                    ; 0DEF _ 8B. 45, 0C
        mov     dword [esp], eax                        ; 0DF2 _ 89. 04 24
        call    _showString                             ; 0DF5 _ E8, FFFFF9E0
        nop                                             ; 0DFA _ 90
        leave                                           ; 0DFB _ C9
        ret                                             ; 0DFC _ C3
; _showMemoryInfo End of function

_init_mouse_cursor:; Function begin
        push    ebp                                     ; 0DFD _ 55
        mov     ebp, esp                                ; 0DFE _ 89. E5
        sub     esp, 20                                 ; 0E00 _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 0E03 _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 0E06 _ 88. 45, EC
        mov     dword [ebp-8H], 0                       ; 0E09 _ C7. 45, F8, 00000000
        jmp     ?_033                                   ; 0E10 _ E9, 000000B1

?_027:  mov     dword [ebp-4H], 0                       ; 0E15 _ C7. 45, FC, 00000000
        jmp     ?_032                                   ; 0E1C _ E9, 00000097

?_028:  mov     eax, dword [ebp-8H]                     ; 0E21 _ 8B. 45, F8
        shl     eax, 4                                  ; 0E24 _ C1. E0, 04
        mov     edx, eax                                ; 0E27 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 0E29 _ 8B. 45, FC
        add     eax, edx                                ; 0E2C _ 01. D0
        add     eax, _cursor.2146                       ; 0E2E _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 0E33 _ 0F B6. 00
        cmp     al, 42                                  ; 0E36 _ 3C, 2A
        jnz     ?_029                                   ; 0E38 _ 75, 17
        mov     eax, dword [ebp-8H]                     ; 0E3A _ 8B. 45, F8
        shl     eax, 4                                  ; 0E3D _ C1. E0, 04
        mov     edx, eax                                ; 0E40 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 0E42 _ 8B. 45, FC
        add     eax, edx                                ; 0E45 _ 01. D0
        mov     edx, eax                                ; 0E47 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0E49 _ 8B. 45, 08
        add     eax, edx                                ; 0E4C _ 01. D0
        mov     byte [eax], 0                           ; 0E4E _ C6. 00, 00
?_029:  mov     eax, dword [ebp-8H]                     ; 0E51 _ 8B. 45, F8
        shl     eax, 4                                  ; 0E54 _ C1. E0, 04
        mov     edx, eax                                ; 0E57 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 0E59 _ 8B. 45, FC
        add     eax, edx                                ; 0E5C _ 01. D0
        add     eax, _cursor.2146                       ; 0E5E _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 0E63 _ 0F B6. 00
        cmp     al, 79                                  ; 0E66 _ 3C, 4F
        jnz     ?_030                                   ; 0E68 _ 75, 17
        mov     eax, dword [ebp-8H]                     ; 0E6A _ 8B. 45, F8
        shl     eax, 4                                  ; 0E6D _ C1. E0, 04
        mov     edx, eax                                ; 0E70 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 0E72 _ 8B. 45, FC
        add     eax, edx                                ; 0E75 _ 01. D0
        mov     edx, eax                                ; 0E77 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0E79 _ 8B. 45, 08
        add     eax, edx                                ; 0E7C _ 01. D0
        mov     byte [eax], 7                           ; 0E7E _ C6. 00, 07
?_030:  mov     eax, dword [ebp-8H]                     ; 0E81 _ 8B. 45, F8
        shl     eax, 4                                  ; 0E84 _ C1. E0, 04
        mov     edx, eax                                ; 0E87 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 0E89 _ 8B. 45, FC
        add     eax, edx                                ; 0E8C _ 01. D0
        add     eax, _cursor.2146                       ; 0E8E _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 0E93 _ 0F B6. 00
        cmp     al, 46                                  ; 0E96 _ 3C, 2E
        jnz     ?_031                                   ; 0E98 _ 75, 1A
        mov     eax, dword [ebp-8H]                     ; 0E9A _ 8B. 45, F8
        shl     eax, 4                                  ; 0E9D _ C1. E0, 04
        mov     edx, eax                                ; 0EA0 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 0EA2 _ 8B. 45, FC
        add     eax, edx                                ; 0EA5 _ 01. D0
        mov     edx, eax                                ; 0EA7 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0EA9 _ 8B. 45, 08
        add     edx, eax                                ; 0EAC _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0EAE _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0EB2 _ 88. 02
?_031:  add     dword [ebp-4H], 1                       ; 0EB4 _ 83. 45, FC, 01
?_032:  cmp     dword [ebp-4H], 15                      ; 0EB8 _ 83. 7D, FC, 0F
        jle     ?_028                                   ; 0EBC _ 0F 8E, FFFFFF5F
        add     dword [ebp-8H], 1                       ; 0EC2 _ 83. 45, F8, 01
?_033:  cmp     dword [ebp-8H], 15                      ; 0EC6 _ 83. 7D, F8, 0F
        jle     ?_027                                   ; 0ECA _ 0F 8E, FFFFFF45
        nop                                             ; 0ED0 _ 90
        leave                                           ; 0ED1 _ C9
        ret                                             ; 0ED2 _ C3
; _init_mouse_cursor End of function

_putblock:; Function begin
        push    ebp                                     ; 0ED3 _ 55
        mov     ebp, esp                                ; 0ED4 _ 89. E5
        push    ebx                                     ; 0ED6 _ 53
        sub     esp, 16                                 ; 0ED7 _ 83. EC, 10
        mov     dword [ebp-0CH], 0                      ; 0EDA _ C7. 45, F4, 00000000
        jmp     ?_037                                   ; 0EE1 _ EB, 4E

?_034:  mov     dword [ebp-8H], 0                       ; 0EE3 _ C7. 45, F8, 00000000
        jmp     ?_036                                   ; 0EEA _ EB, 39

?_035:  mov     eax, dword [ebp-0CH]                    ; 0EEC _ 8B. 45, F4
        imul    eax, dword [ebp+24H]                    ; 0EEF _ 0F AF. 45, 24
        mov     edx, dword [ebp-8H]                     ; 0EF3 _ 8B. 55, F8
        add     eax, edx                                ; 0EF6 _ 01. D0
        mov     edx, eax                                ; 0EF8 _ 89. C2
        mov     eax, dword [ebp+20H]                    ; 0EFA _ 8B. 45, 20
        add     eax, edx                                ; 0EFD _ 01. D0
        mov     ecx, dword [ebp+1CH]                    ; 0EFF _ 8B. 4D, 1C
        mov     edx, dword [ebp-0CH]                    ; 0F02 _ 8B. 55, F4
        add     edx, ecx                                ; 0F05 _ 01. CA
        imul    edx, dword [ebp+0CH]                    ; 0F07 _ 0F AF. 55, 0C
        mov     ebx, dword [ebp+18H]                    ; 0F0B _ 8B. 5D, 18
        mov     ecx, dword [ebp-8H]                     ; 0F0E _ 8B. 4D, F8
        add     ecx, ebx                                ; 0F11 _ 01. D9
        add     edx, ecx                                ; 0F13 _ 01. CA
        mov     ecx, edx                                ; 0F15 _ 89. D1
        mov     edx, dword [ebp+8H]                     ; 0F17 _ 8B. 55, 08
        add     edx, ecx                                ; 0F1A _ 01. CA
        movzx   eax, byte [eax]                         ; 0F1C _ 0F B6. 00
        mov     byte [edx], al                          ; 0F1F _ 88. 02
        add     dword [ebp-8H], 1                       ; 0F21 _ 83. 45, F8, 01
?_036:  mov     eax, dword [ebp-8H]                     ; 0F25 _ 8B. 45, F8
        cmp     eax, dword [ebp+10H]                    ; 0F28 _ 3B. 45, 10
        jl      ?_035                                   ; 0F2B _ 7C, BF
        add     dword [ebp-0CH], 1                      ; 0F2D _ 83. 45, F4, 01
?_037:  mov     eax, dword [ebp-0CH]                    ; 0F31 _ 8B. 45, F4
        cmp     eax, dword [ebp+14H]                    ; 0F34 _ 3B. 45, 14
        jl      ?_034                                   ; 0F37 _ 7C, AA
        nop                                             ; 0F39 _ 90
        add     esp, 16                                 ; 0F3A _ 83. C4, 10
        pop     ebx                                     ; 0F3D _ 5B
        pop     ebp                                     ; 0F3E _ 5D
        ret                                             ; 0F3F _ C3
; _putblock End of function

_intHandlerFromC:; Function begin
        push    ebp                                     ; 0F40 _ 55
        mov     ebp, esp                                ; 0F41 _ 89. E5
        sub     esp, 40                                 ; 0F43 _ 83. EC, 28
        mov     eax, dword [_bootInfo]                  ; 0F46 _ A1, 00000100(d)
        mov     dword [ebp-0CH], eax                    ; 0F4B _ 89. 45, F4
        movzx   eax, word [?_065]                       ; 0F4E _ 0F B7. 05, 00000104(d)
        cwde                                            ; 0F55 _ 98
        mov     dword [ebp-10H], eax                    ; 0F56 _ 89. 45, F0
        movzx   eax, word [?_066]                       ; 0F59 _ 0F B7. 05, 00000106(d)
        cwde                                            ; 0F60 _ 98
        mov     dword [ebp-14H], eax                    ; 0F61 _ 89. 45, EC
        mov     dword [esp+4H], 32                      ; 0F64 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 0F6C _ C7. 04 24, 00000020
        call    _io_out8                                ; 0F73 _ E8, 00000000(rel)
        mov     byte [ebp-15H], 0                       ; 0F78 _ C6. 45, EB, 00
        mov     dword [esp], 96                         ; 0F7C _ C7. 04 24, 00000060
        call    _io_in8                                 ; 0F83 _ E8, 00000000(rel)
        mov     byte [ebp-15H], al                      ; 0F88 _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 0F8B _ 0F B6. 45, EB
        mov     dword [esp+4H], eax                     ; 0F8F _ 89. 44 24, 04
        mov     dword [esp], _keyinfo                   ; 0F93 _ C7. 04 24, 00000108(d)
        call    _fifo8_put                              ; 0F9A _ E8, 0000023B
        nop                                             ; 0F9F _ 90
        leave                                           ; 0FA0 _ C9
        ret                                             ; 0FA1 _ C3
; _intHandlerFromC End of function

_charToHexVal:; Function begin
        push    ebp                                     ; 0FA2 _ 55
        mov     ebp, esp                                ; 0FA3 _ 89. E5
        sub     esp, 4                                  ; 0FA5 _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 0FA8 _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 0FAB _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 0FAE _ 80. 7D, FC, 09
        jle     ?_038                                   ; 0FB2 _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 0FB4 _ 0F B6. 45, FC
        add     eax, 55                                 ; 0FB8 _ 83. C0, 37
        jmp     ?_039                                   ; 0FBB _ EB, 07

?_038:  movzx   eax, byte [ebp-4H]                      ; 0FBD _ 0F B6. 45, FC
        add     eax, 48                                 ; 0FC1 _ 83. C0, 30
?_039:  leave                                           ; 0FC4 _ C9
        ret                                             ; 0FC5 _ C3
; _charToHexVal End of function

_charToHexStr:; Function begin
        push    ebp                                     ; 0FC6 _ 55
        mov     ebp, esp                                ; 0FC7 _ 89. E5
        sub     esp, 24                                 ; 0FC9 _ 83. EC, 18
        mov     eax, dword [ebp+8H]                     ; 0FCC _ 8B. 45, 08
        mov     byte [ebp-14H], al                      ; 0FCF _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 0FD2 _ C7. 45, FC, 00000000
        movzx   eax, byte [ebp-14H]                     ; 0FD9 _ 0F B6. 45, EC
        and     eax, 0FH                                ; 0FDD _ 83. E0, 0F
        mov     byte [ebp-5H], al                       ; 0FE0 _ 88. 45, FB
        movsx   eax, byte [ebp-5H]                      ; 0FE3 _ 0F BE. 45, FB
        mov     dword [esp], eax                        ; 0FE7 _ 89. 04 24
        call    _charToHexVal                           ; 0FEA _ E8, FFFFFFB3
        mov     byte [?_064], al                        ; 0FEF _ A2, 00000003(d)
        movzx   eax, byte [ebp-14H]                     ; 0FF4 _ 0F B6. 45, EC
        shr     al, 4                                   ; 0FF8 _ C0. E8, 04
        mov     byte [ebp-14H], al                      ; 0FFB _ 88. 45, EC
        movzx   eax, byte [ebp-14H]                     ; 0FFE _ 0F B6. 45, EC
        movsx   eax, al                                 ; 1002 _ 0F BE. C0
        mov     dword [esp], eax                        ; 1005 _ 89. 04 24
        call    _charToHexVal                           ; 1008 _ E8, FFFFFF95
        mov     byte [?_063], al                        ; 100D _ A2, 00000002(d)
        mov     eax, _keyval                            ; 1012 _ B8, 00000000(d)
        leave                                           ; 1017 _ C9
        ret                                             ; 1018 _ C3
; _charToHexStr End of function

_intToHexStr:; Function begin
        push    ebp                                     ; 1019 _ 55
        mov     ebp, esp                                ; 101A _ 89. E5
        sub     esp, 16                                 ; 101C _ 83. EC, 10
        mov     byte [_str.2194], 48                    ; 101F _ C6. 05, 00000200(d), 30
        mov     byte [?_067], 88                        ; 1026 _ C6. 05, 00000201(d), 58
        mov     byte [?_068], 0                         ; 102D _ C6. 05, 0000020A(d), 00
        mov     dword [ebp-4H], 2                       ; 1034 _ C7. 45, FC, 00000002
        jmp     ?_041                                   ; 103B _ EB, 0F

?_040:  mov     eax, dword [ebp-4H]                     ; 103D _ 8B. 45, FC
        add     eax, _str.2194                          ; 1040 _ 05, 00000200(d)
        mov     byte [eax], 48                          ; 1045 _ C6. 00, 30
        add     dword [ebp-4H], 1                       ; 1048 _ 83. 45, FC, 01
?_041:  cmp     dword [ebp-4H], 9                       ; 104C _ 83. 7D, FC, 09
        jle     ?_040                                   ; 1050 _ 7E, EB
        mov     dword [ebp-8H], 9                       ; 1052 _ C7. 45, F8, 00000009
        jmp     ?_044                                   ; 1059 _ EB, 3E

?_042:  mov     eax, dword [ebp+8H]                     ; 105B _ 8B. 45, 08
        and     eax, 0FH                                ; 105E _ 83. E0, 0F
        mov     dword [ebp-0CH], eax                    ; 1061 _ 89. 45, F4
        mov     eax, dword [ebp+8H]                     ; 1064 _ 8B. 45, 08
        shr     eax, 4                                  ; 1067 _ C1. E8, 04
        mov     dword [ebp+8H], eax                     ; 106A _ 89. 45, 08
        cmp     dword [ebp-0CH], 9                      ; 106D _ 83. 7D, F4, 09
        jle     ?_043                                   ; 1071 _ 7E, 14
        mov     eax, dword [ebp-0CH]                    ; 1073 _ 8B. 45, F4
        add     eax, 55                                 ; 1076 _ 83. C0, 37
        mov     edx, eax                                ; 1079 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 107B _ 8B. 45, F8
        add     eax, _str.2194                          ; 107E _ 05, 00000200(d)
        mov     byte [eax], dl                          ; 1083 _ 88. 10
        jmp     ?_044                                   ; 1085 _ EB, 12

?_043:  mov     eax, dword [ebp-0CH]                    ; 1087 _ 8B. 45, F4
        add     eax, 48                                 ; 108A _ 83. C0, 30
        mov     edx, eax                                ; 108D _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 108F _ 8B. 45, F8
        add     eax, _str.2194                          ; 1092 _ 05, 00000200(d)
        mov     byte [eax], dl                          ; 1097 _ 88. 10
?_044:  cmp     dword [ebp-8H], 1                       ; 1099 _ 83. 7D, F8, 01
        jle     ?_045                                   ; 109D _ 7E, 06
        cmp     dword [ebp+8H], 0                       ; 109F _ 83. 7D, 08, 00
        jnz     ?_042                                   ; 10A3 _ 75, B6
?_045:  mov     eax, _str.2194                          ; 10A5 _ B8, 00000200(d)
        leave                                           ; 10AA _ C9
        ret                                             ; 10AB _ C3
; _intToHexStr End of function

_wait_KBC_sendready:; Function begin
        push    ebp                                     ; 10AC _ 55
        mov     ebp, esp                                ; 10AD _ 89. E5
        sub     esp, 24                                 ; 10AF _ 83. EC, 18
?_046:  mov     dword [esp], 100                        ; 10B2 _ C7. 04 24, 00000064
        call    _io_in8                                 ; 10B9 _ E8, 00000000(rel)
        and     eax, 02H                                ; 10BE _ 83. E0, 02
        test    eax, eax                                ; 10C1 _ 85. C0
        jz      ?_047                                   ; 10C3 _ 74, 02
        jmp     ?_046                                   ; 10C5 _ EB, EB
; _wait_KBC_sendready End of function

?_047:  ; Local function
        nop                                             ; 10C7 _ 90
        nop                                             ; 10C8 _ 90
        leave                                           ; 10C9 _ C9
        ret                                             ; 10CA _ C3

_init_keyboard:; Function begin
        push    ebp                                     ; 10CB _ 55
        mov     ebp, esp                                ; 10CC _ 89. E5
        sub     esp, 24                                 ; 10CE _ 83. EC, 18
        call    _wait_KBC_sendready                     ; 10D1 _ E8, FFFFFFD6
        mov     dword [esp+4H], 96                      ; 10D6 _ C7. 44 24, 04, 00000060
        mov     dword [esp], 100                        ; 10DE _ C7. 04 24, 00000064
        call    _io_out8                                ; 10E5 _ E8, 00000000(rel)
        call    _wait_KBC_sendready                     ; 10EA _ E8, FFFFFFBD
        mov     dword [esp+4H], 71                      ; 10EF _ C7. 44 24, 04, 00000047
        mov     dword [esp], 96                         ; 10F7 _ C7. 04 24, 00000060
        call    _io_out8                                ; 10FE _ E8, 00000000(rel)
        nop                                             ; 1103 _ 90
        leave                                           ; 1104 _ C9
        ret                                             ; 1105 _ C3
; _init_keyboard End of function

_enable_mouse:; Function begin
        push    ebp                                     ; 1106 _ 55
        mov     ebp, esp                                ; 1107 _ 89. E5
        sub     esp, 24                                 ; 1109 _ 83. EC, 18
        call    _wait_KBC_sendready                     ; 110C _ E8, FFFFFF9B
        mov     dword [esp+4H], 212                     ; 1111 _ C7. 44 24, 04, 000000D4
        mov     dword [esp], 100                        ; 1119 _ C7. 04 24, 00000064
        call    _io_out8                                ; 1120 _ E8, 00000000(rel)
        call    _wait_KBC_sendready                     ; 1125 _ E8, FFFFFF82
        mov     dword [esp+4H], 244                     ; 112A _ C7. 44 24, 04, 000000F4
        mov     dword [esp], 96                         ; 1132 _ C7. 04 24, 00000060
        call    _io_out8                                ; 1139 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 113E _ 8B. 45, 08
        mov     byte [eax+3H], 0                        ; 1141 _ C6. 40, 03, 00
        nop                                             ; 1145 _ 90
        leave                                           ; 1146 _ C9
        ret                                             ; 1147 _ C3
; _enable_mouse End of function

_intHandlerForMouse:; Function begin
        push    ebp                                     ; 1148 _ 55
        mov     ebp, esp                                ; 1149 _ 89. E5
        sub     esp, 40                                 ; 114B _ 83. EC, 28
        mov     dword [esp+4H], 32                      ; 114E _ C7. 44 24, 04, 00000020
        mov     dword [esp], 160                        ; 1156 _ C7. 04 24, 000000A0
        call    _io_out8                                ; 115D _ E8, 00000000(rel)
        mov     dword [esp+4H], 32                      ; 1162 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 116A _ C7. 04 24, 00000020
        call    _io_out8                                ; 1171 _ E8, 00000000(rel)
        mov     dword [esp], 96                         ; 1176 _ C7. 04 24, 00000060
        call    _io_in8                                 ; 117D _ E8, 00000000(rel)
        mov     byte [ebp-9H], al                       ; 1182 _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 1185 _ 0F B6. 45, F7
        mov     dword [esp+4H], eax                     ; 1189 _ 89. 44 24, 04
        mov     dword [esp], _mouseinfo                 ; 118D _ C7. 04 24, 00000120(d)
        call    _fifo8_put                              ; 1194 _ E8, 00000041
        nop                                             ; 1199 _ 90
        leave                                           ; 119A _ C9
        ret                                             ; 119B _ C3
; _intHandlerForMouse End of function

_fifo8_init:; Function begin
        push    ebp                                     ; 119C _ 55
        mov     ebp, esp                                ; 119D _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 119F _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 11A2 _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 11A5 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 11A8 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 11AB _ 8B. 55, 10
        mov     dword [eax], edx                        ; 11AE _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 11B0 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 11B3 _ 8B. 55, 0C
        mov     dword [eax+10H], edx                    ; 11B6 _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 11B9 _ 8B. 45, 08
        mov     dword [eax+14H], 0                      ; 11BC _ C7. 40, 14, 00000000
        mov     eax, dword [ebp+8H]                     ; 11C3 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 11C6 _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 11CD _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 11D0 _ C7. 40, 08, 00000000
        nop                                             ; 11D7 _ 90
        pop     ebp                                     ; 11D8 _ 5D
        ret                                             ; 11D9 _ C3
; _fifo8_init End of function

_fifo8_put:; Function begin
        push    ebp                                     ; 11DA _ 55
        mov     ebp, esp                                ; 11DB _ 89. E5
        sub     esp, 4                                  ; 11DD _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 11E0 _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 11E3 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 11E6 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 11E9 _ 8B. 40, 10
        test    eax, eax                                ; 11EC _ 85. C0
        jnz     ?_048                                   ; 11EE _ 75, 18
        mov     eax, dword [ebp+8H]                     ; 11F0 _ 8B. 45, 08
        mov     eax, dword [eax+14H]                    ; 11F3 _ 8B. 40, 14
        or      eax, 01H                                ; 11F6 _ 83. C8, 01
        mov     edx, eax                                ; 11F9 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 11FB _ 8B. 45, 08
        mov     dword [eax+14H], edx                    ; 11FE _ 89. 50, 14
        mov     eax, 4294967295                         ; 1201 _ B8, FFFFFFFF
        jmp     ?_050                                   ; 1206 _ EB, 50

?_048:  mov     eax, dword [ebp+8H]                     ; 1208 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 120B _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 120D _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 1210 _ 8B. 40, 04
        add     edx, eax                                ; 1213 _ 01. C2
        movzx   eax, byte [ebp-4H]                      ; 1215 _ 0F B6. 45, FC
        mov     byte [edx], al                          ; 1219 _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 121B _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 121E _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 1221 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1224 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 1227 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 122A _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 122D _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1230 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 1233 _ 8B. 40, 0C
        cmp     edx, eax                                ; 1236 _ 39. C2
        jnz     ?_049                                   ; 1238 _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 123A _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 123D _ C7. 40, 04, 00000000
?_049:  mov     eax, dword [ebp+8H]                     ; 1244 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 1247 _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 124A _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 124D _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 1250 _ 89. 50, 10
        mov     eax, 0                                  ; 1253 _ B8, 00000000
?_050:  leave                                           ; 1258 _ C9
        ret                                             ; 1259 _ C3
; _fifo8_put End of function

_fifo8_get:; Function begin
        push    ebp                                     ; 125A _ 55
        mov     ebp, esp                                ; 125B _ 89. E5
        sub     esp, 16                                 ; 125D _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 1260 _ 8B. 45, 08
        mov     edx, dword [eax+10H]                    ; 1263 _ 8B. 50, 10
        mov     eax, dword [ebp+8H]                     ; 1266 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 1269 _ 8B. 40, 0C
        cmp     edx, eax                                ; 126C _ 39. C2
        jnz     ?_051                                   ; 126E _ 75, 07
        mov     eax, 4294967295                         ; 1270 _ B8, FFFFFFFF
        jmp     ?_053                                   ; 1275 _ EB, 51

?_051:  mov     eax, dword [ebp+8H]                     ; 1277 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 127A _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 127C _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 127F _ 8B. 40, 08
        add     eax, edx                                ; 1282 _ 01. D0
        movzx   eax, byte [eax]                         ; 1284 _ 0F B6. 00
        movzx   eax, al                                 ; 1287 _ 0F B6. C0
        mov     dword [ebp-4H], eax                     ; 128A _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 128D _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 1290 _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 1293 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1296 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 1299 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 129C _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 129F _ 8B. 50, 08
        mov     eax, dword [ebp+8H]                     ; 12A2 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 12A5 _ 8B. 40, 0C
        cmp     edx, eax                                ; 12A8 _ 39. C2
        jnz     ?_052                                   ; 12AA _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 12AC _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 12AF _ C7. 40, 08, 00000000
?_052:  mov     eax, dword [ebp+8H]                     ; 12B6 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 12B9 _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 12BC _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 12BF _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 12C2 _ 89. 50, 10
        mov     eax, dword [ebp-4H]                     ; 12C5 _ 8B. 45, FC
?_053:  leave                                           ; 12C8 _ C9
        ret                                             ; 12C9 _ C3
; _fifo8_get End of function

_fifo8_status:; Function begin
        push    ebp                                     ; 12CA _ 55
        mov     ebp, esp                                ; 12CB _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 12CD _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 12D0 _ 8B. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 12D3 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 12D6 _ 8B. 40, 10
        sub     edx, eax                                ; 12D9 _ 29. C2
        mov     eax, edx                                ; 12DB _ 89. D0
        pop     ebp                                     ; 12DD _ 5D
        ret                                             ; 12DE _ C3
; _fifo8_status End of function

_mouse_decode:; Function begin
        push    ebp                                     ; 12DF _ 55
        mov     ebp, esp                                ; 12E0 _ 89. E5
        sub     esp, 4                                  ; 12E2 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 12E5 _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 12E8 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 12EB _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 12EE _ 0F B6. 40, 03
        test    al, al                                  ; 12F2 _ 84. C0
        jnz     ?_055                                   ; 12F4 _ 75, 17
        cmp     byte [ebp-4H], -6                       ; 12F6 _ 80. 7D, FC, FA
        jnz     ?_054                                   ; 12FA _ 75, 07
        mov     eax, dword [ebp+8H]                     ; 12FC _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 12FF _ C6. 40, 03, 01
?_054:  mov     eax, 0                                  ; 1303 _ B8, 00000000
        jmp     ?_062                                   ; 1308 _ E9, 0000010F

?_055:  mov     eax, dword [ebp+8H]                     ; 130D _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1310 _ 0F B6. 40, 03
        cmp     al, 1                                   ; 1314 _ 3C, 01
        jnz     ?_057                                   ; 1316 _ 75, 28
        movzx   eax, byte [ebp-4H]                      ; 1318 _ 0F B6. 45, FC
        and     eax, 0C8H                               ; 131C _ 25, 000000C8
        cmp     eax, 8                                  ; 1321 _ 83. F8, 08
        jnz     ?_056                                   ; 1324 _ 75, 10
        mov     edx, dword [ebp+8H]                     ; 1326 _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 1329 _ 0F B6. 45, FC
        mov     byte [edx], al                          ; 132D _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 132F _ 8B. 45, 08
        mov     byte [eax+3H], 2                        ; 1332 _ C6. 40, 03, 02
?_056:  mov     eax, 0                                  ; 1336 _ B8, 00000000
        jmp     ?_062                                   ; 133B _ E9, 000000DC

?_057:  mov     eax, dword [ebp+8H]                     ; 1340 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1343 _ 0F B6. 40, 03
        cmp     al, 2                                   ; 1347 _ 3C, 02
        jnz     ?_058                                   ; 1349 _ 75, 1B
        mov     edx, dword [ebp+8H]                     ; 134B _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 134E _ 0F B6. 45, FC
        mov     byte [edx+1H], al                       ; 1352 _ 88. 42, 01
        mov     eax, dword [ebp+8H]                     ; 1355 _ 8B. 45, 08
        mov     byte [eax+3H], 3                        ; 1358 _ C6. 40, 03, 03
        mov     eax, 0                                  ; 135C _ B8, 00000000
        jmp     ?_062                                   ; 1361 _ E9, 000000B6

?_058:  mov     eax, dword [ebp+8H]                     ; 1366 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1369 _ 0F B6. 40, 03
        cmp     al, 3                                   ; 136D _ 3C, 03
        jne     ?_061                                   ; 136F _ 0F 85, 000000A2
        mov     edx, dword [ebp+8H]                     ; 1375 _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 1378 _ 0F B6. 45, FC
        mov     byte [edx+2H], al                       ; 137C _ 88. 42, 02
        mov     eax, dword [ebp+8H]                     ; 137F _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 1382 _ C6. 40, 03, 01
        mov     eax, dword [ebp+8H]                     ; 1386 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1389 _ 0F B6. 00
        movzx   eax, al                                 ; 138C _ 0F B6. C0
        and     eax, 07H                                ; 138F _ 83. E0, 07
        mov     edx, eax                                ; 1392 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1394 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 1397 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 139A _ 8B. 45, 08
        movzx   eax, byte [eax+1H]                      ; 139D _ 0F B6. 40, 01
        movzx   eax, al                                 ; 13A1 _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 13A4 _ 8B. 55, 08
        mov     dword [edx+4H], eax                     ; 13A7 _ 89. 42, 04
        mov     eax, dword [ebp+8H]                     ; 13AA _ 8B. 45, 08
        movzx   eax, byte [eax+2H]                      ; 13AD _ 0F B6. 40, 02
        movzx   eax, al                                 ; 13B1 _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 13B4 _ 8B. 55, 08
        mov     dword [edx+8H], eax                     ; 13B7 _ 89. 42, 08
        mov     eax, dword [ebp+8H]                     ; 13BA _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 13BD _ 0F B6. 00
        movzx   eax, al                                 ; 13C0 _ 0F B6. C0
        and     eax, 10H                                ; 13C3 _ 83. E0, 10
        test    eax, eax                                ; 13C6 _ 85. C0
        jz      ?_059                                   ; 13C8 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 13CA _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 13CD _ 8B. 40, 04
        or      eax, 0FFFFFF00H                         ; 13D0 _ 0D, FFFFFF00
        mov     edx, eax                                ; 13D5 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 13D7 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 13DA _ 89. 50, 04
?_059:  mov     eax, dword [ebp+8H]                     ; 13DD _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 13E0 _ 0F B6. 00
        movzx   eax, al                                 ; 13E3 _ 0F B6. C0
        and     eax, 20H                                ; 13E6 _ 83. E0, 20
        test    eax, eax                                ; 13E9 _ 85. C0
        jz      ?_060                                   ; 13EB _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 13ED _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 13F0 _ 8B. 40, 08
        or      eax, 0FFFFFF00H                         ; 13F3 _ 0D, FFFFFF00
        mov     edx, eax                                ; 13F8 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 13FA _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 13FD _ 89. 50, 08
?_060:  mov     eax, dword [ebp+8H]                     ; 1400 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 1403 _ 8B. 40, 08
        neg     eax                                     ; 1406 _ F7. D8
        mov     edx, eax                                ; 1408 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 140A _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 140D _ 89. 50, 08
        mov     eax, 1                                  ; 1410 _ B8, 00000001
        jmp     ?_062                                   ; 1415 _ EB, 05

?_061:  mov     eax, 4294967295                         ; 1417 _ B8, FFFFFFFF
?_062:  leave                                           ; 141C _ C9
        ret                                             ; 141D _ C3
; _mouse_decode End of function

        nop                                             ; 141E _ 90
        nop                                             ; 141F _ 90


SECTION .data   align=32 noexecute                      ; section number 2, data

_keyval:                                                ; byte
        db 30H, 58H                                     ; 0000 _ 0X

?_063:  db 00H                                          ; 0002 _ .

?_064:  db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0003 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 000B _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0013 _ ........
        db 00H, 00H, 00H, 00H, 00H                      ; 001B _ .....

_table_rgb.2082:                                        ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0020 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0028 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0030 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0038 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 0040 _ ........
        db 00H, 84H, 00H, 84H, 84H, 84H, 84H, 84H       ; 0048 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0050 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0058 _ ........

_cursor.2146:                                           ; byte
        db 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH       ; 0060 _ ********
        db 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2EH, 2EH       ; 0068 _ ******..
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 0070 _ *OOOOOOO
        db 4FH, 4FH, 4FH, 4FH, 2AH, 2EH, 2EH, 2EH       ; 0078 _ OOOO*...
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 0080 _ *OOOOOOO
        db 4FH, 4FH, 4FH, 2AH, 2EH, 2EH, 2EH, 2EH       ; 0088 _ OOO*....
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 0090 _ *OOOOOOO
        db 4FH, 4FH, 2AH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0098 _ OO*.....
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 00A0 _ *OOOOOOO
        db 4FH, 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 00A8 _ O*......
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 00B0 _ *OOOOOOO
        db 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 00B8 _ *.......
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 00C0 _ *OOOOOOO
        db 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 00C8 _ *.......
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 00D0 _ *OOOOOOO
        db 4FH, 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 00D8 _ O*......
        db 2AH, 4FH, 4FH, 4FH, 4FH, 2AH, 2AH, 4FH       ; 00E0 _ *OOOO**O
        db 4FH, 4FH, 2AH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 00E8 _ OO*.....
        db 2AH, 4FH, 4FH, 4FH, 2AH, 2EH, 2EH, 2AH       ; 00F0 _ *OOO*..*
        db 4FH, 4FH, 4FH, 2AH, 2EH, 2EH, 2EH, 2EH       ; 00F8 _ OOO*....
        db 2AH, 4FH, 4FH, 2AH, 2EH, 2EH, 2EH, 2EH       ; 0100 _ *OO*....
        db 2AH, 4FH, 4FH, 4FH, 2AH, 2EH, 2EH, 2EH       ; 0108 _ *OOO*...
        db 2AH, 4FH, 2AH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0110 _ *O*.....
        db 2EH, 2AH, 4FH, 4FH, 4FH, 2AH, 2EH, 2EH       ; 0118 _ .*OOO*..
        db 2AH, 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0120 _ **......
        db 2EH, 2EH, 2AH, 4FH, 4FH, 4FH, 2AH, 2EH       ; 0128 _ ..*OOO*.
        db 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0130 _ *.......
        db 2EH, 2EH, 2EH, 2AH, 4FH, 4FH, 4FH, 2AH       ; 0138 _ ...*OOO*
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0140 _ ........
        db 2EH, 2EH, 2EH, 2EH, 2AH, 4FH, 4FH, 2AH       ; 0148 _ ....*OO*
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0150 _ ........
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2AH, 2AH, 2AH       ; 0158 _ .....***


SECTION .bss    align=32 noexecute                      ; section number 3, bss

_mcursor:                                               ; byte
        resb    256                                     ; 0000

_bootInfo:                                              ; dword
        resd    1                                       ; 0100

?_065:  resw    1                                       ; 0104

?_066:  resw    1                                       ; 0106

_keyinfo:                                               ; byte
        resb    24                                      ; 0108

_mouseinfo:                                             ; byte
        resb    32                                      ; 0120

_keybuf:                                                ; byte
        resb    32                                      ; 0140

_mousebuf:                                              ; byte
        resb    128                                     ; 0160

_mdec:                                                  ; byte
        resb    16                                      ; 01E0

_mx:    resd    1                                       ; 01F0

_my:    resd    1                                       ; 01F4

_xsize: resd    1                                       ; 01F8

_ysize: resd    1                                       ; 01FC

_str.2194:                                              ; byte
        resb    1                                       ; 0200

?_067:  resb    9                                       ; 0201

?_068:  resb    22                                      ; 020A


SECTION .rdata  align=4 noexecute                       ; section number 4, const

?_069:                                                  ; byte
        db 46H, 72H, 61H, 67H, 69H, 6CH, 65H, 20H       ; 0000 _ Fragile 
        db 4FH, 53H, 00H                                ; 0008 _ OS.

?_070:                                                  ; byte
        db 70H, 61H, 67H, 65H, 20H, 69H, 73H, 3AH       ; 000B _ page is:
        db 20H, 00H                                     ; 0013 _  .

?_071:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0015 _ BaseAddr
        db 4CH, 3AH, 20H, 00H                           ; 001D _ L: .

?_072:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0021 _ BaseAddr
        db 48H, 3AH, 20H, 00H                           ; 0029 _ H: .

?_073:                                                  ; byte
        db 6CH, 65H, 6EH, 67H, 74H, 68H, 4CH, 6FH       ; 002D _ lengthLo
        db 77H, 3AH, 20H, 00H                           ; 0035 _ w: .

?_074:                                                  ; byte
        db 6CH, 65H, 6EH, 67H, 74H, 68H, 48H, 69H       ; 0039 _ lengthHi
        db 67H, 68H, 3AH, 20H, 00H                      ; 0041 _ gh: .

?_075:                                                  ; byte
        db 74H, 79H, 70H, 65H, 3AH, 20H, 00H, 00H       ; 0046 _ type: ..
        db 00H, 00H                                     ; 004E _ ..


SECTION .rdata$zzz align=4 noexecute                    ; section number 5, const

        db 47H, 43H, 43H, 3AH, 20H, 28H, 78H, 38H       ; 0000 _ GCC: (x8
        db 36H, 5FH, 36H, 34H, 2DH, 70H, 6FH, 73H       ; 0008 _ 6_64-pos
        db 69H, 78H, 2DH, 73H, 65H, 68H, 2DH, 72H       ; 0010 _ ix-seh-r
        db 65H, 76H, 30H, 2CH, 20H, 42H, 75H, 69H       ; 0018 _ ev0, Bui
        db 6CH, 74H, 20H, 62H, 79H, 20H, 4DH, 69H       ; 0020 _ lt by Mi
        db 6EH, 47H, 57H, 2DH, 57H, 36H, 34H, 20H       ; 0028 _ nGW-W64 
        db 70H, 72H, 6FH, 6AH, 65H, 63H, 74H, 29H       ; 0030 _ project)
        db 20H, 38H, 2EH, 31H, 2EH, 30H, 00H, 00H       ; 0038 _  8.1.0..


