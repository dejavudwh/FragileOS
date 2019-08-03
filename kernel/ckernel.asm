; Disassembly of file: desktop.o
; Sat Aug  3 11:40:13 2019
; Mode: 32 bits
; Syntax: YASM/NASM
; Instruction set: 80386






.text:  ; Local function

_drawDesktop:
        push    ebp                                     ; 0000 _ 55
        mov     ebp, esp                                ; 0001 _ 89. E5
        push    esi                                     ; 0003 _ 56
        push    ebx                                     ; 0004 _ 53
        sub     esp, 64                                 ; 0005 _ 83. EC, 40
        mov     dword [esp], _bootInfo                  ; 0008 _ C7. 04 24, 00000100(d)
        call    _initBootInfo                           ; 000F _ E8, 000007C3
        mov     eax, dword [_bootInfo]                  ; 0014 _ A1, 00000100(d)
        mov     dword [ebp-0CH], eax                    ; 0019 _ 89. 45, F4
        movzx   eax, word [?_065]                       ; 001C _ 0F B7. 05, 00000104(d)
        cwde                                            ; 0023 _ 98
        mov     dword [_xsize], eax                     ; 0024 _ A3, 000001F8(d)
        movzx   eax, word [?_066]                       ; 0029 _ 0F B7. 05, 00000106(d)
        cwde                                            ; 0030 _ 98
        mov     dword [_ysize], eax                     ; 0031 _ A3, 000001FC(d)
        mov     dword [esp+8H], _keybuf                 ; 0036 _ C7. 44 24, 08, 00000140(d)
        mov     dword [esp+4H], 32                      ; 003E _ C7. 44 24, 04, 00000020
        mov     dword [esp], _keyinfo                   ; 0046 _ C7. 04 24, 00000108(d)
        call    _fifo8_init                             ; 004D _ E8, 00000E42
        mov     dword [esp+8H], _mousebuf               ; 0052 _ C7. 44 24, 08, 00000160(d)
        mov     dword [esp+4H], 128                     ; 005A _ C7. 44 24, 04, 00000080
        mov     dword [esp], _mouseinfo                 ; 0062 _ C7. 04 24, 00000120(d)
        call    _fifo8_init                             ; 0069 _ E8, 00000E26
        call    _init_palette                           ; 006E _ E8, 000007E6
        call    _init_keyboard                          ; 0073 _ E8, 00000D4B
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
        mov     eax, dword [ebp-0CH]                    ; 00B1 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 00B4 _ 89. 04 24
        call    _boxfill8                               ; 00B7 _ E8, 00000868
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
        mov     eax, dword [ebp-0CH]                    ; 00F9 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 00FC _ 89. 04 24
        call    _boxfill8                               ; 00FF _ E8, 00000820
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
        mov     eax, dword [ebp-0CH]                    ; 0141 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 0144 _ 89. 04 24
        call    _boxfill8                               ; 0147 _ E8, 000007D8
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
        mov     eax, dword [ebp-0CH]                    ; 0189 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 018C _ 89. 04 24
        call    _boxfill8                               ; 018F _ E8, 00000790
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
        mov     eax, dword [ebp-0CH]                    ; 01CD _ 8B. 45, F4
        mov     dword [esp], eax                        ; 01D0 _ 89. 04 24
        call    _boxfill8                               ; 01D3 _ E8, 0000074C
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
        mov     eax, dword [ebp-0CH]                    ; 0211 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 0214 _ 89. 04 24
        call    _boxfill8                               ; 0217 _ E8, 00000708
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
        mov     eax, dword [ebp-0CH]                    ; 0255 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 0258 _ 89. 04 24
        call    _boxfill8                               ; 025B _ E8, 000006C4
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
        mov     eax, dword [ebp-0CH]                    ; 0299 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 029C _ 89. 04 24
        call    _boxfill8                               ; 029F _ E8, 00000680
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
        mov     eax, dword [ebp-0CH]                    ; 02DD _ 8B. 45, F4
        mov     dword [esp], eax                        ; 02E0 _ 89. 04 24
        call    _boxfill8                               ; 02E3 _ E8, 0000063C
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
        mov     eax, dword [ebp-0CH]                    ; 0321 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 0324 _ 89. 04 24
        call    _boxfill8                               ; 0327 _ E8, 000005F8
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
        mov     eax, dword [ebp-0CH]                    ; 036D _ 8B. 45, F4
        mov     dword [esp], eax                        ; 0370 _ 89. 04 24
        call    _boxfill8                               ; 0373 _ E8, 000005AC
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
        mov     eax, dword [ebp-0CH]                    ; 03B9 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 03BC _ 89. 04 24
        call    _boxfill8                               ; 03BF _ E8, 00000560
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
        mov     eax, dword [ebp-0CH]                    ; 0405 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 0408 _ 89. 04 24
        call    _boxfill8                               ; 040B _ E8, 00000514
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
        mov     eax, dword [ebp-0CH]                    ; 0451 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 0454 _ 89. 04 24
        call    _boxfill8                               ; 0457 _ E8, 000004C8
        mov     eax, dword [_xsize]                     ; 045C _ A1, 000001F8(d)
        mov     dword [esp+14H], ?_069                  ; 0461 _ C7. 44 24, 14, 00000000(d)
        mov     dword [esp+10H], 7                      ; 0469 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 60                     ; 0471 _ C7. 44 24, 0C, 0000003C
        mov     dword [esp+8H], 125                     ; 0479 _ C7. 44 24, 08, 0000007D
        mov     dword [esp+4H], eax                     ; 0481 _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 0485 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 0488 _ 89. 04 24
        call    _showString                             ; 048B _ E8, 00000368
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
        call    _init_mouse_cursor                      ; 04CB _ E8, 00000625
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
        mov     eax, dword [ebp-0CH]                    ; 050D _ 8B. 45, F4
        mov     dword [esp], eax                        ; 0510 _ 89. 04 24
        call    _putblock                               ; 0513 _ E8, 000006B3
        call    _get_memory_block_count                 ; 0518 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 051D _ 89. 45, F0
        mov     eax, dword [ebp-10H]                    ; 0520 _ 8B. 45, F0
        mov     dword [esp], eax                        ; 0523 _ 89. 04 24
        call    _intToHexStr                            ; 0526 _ E8, 000007E6
        mov     dword [ebp-14H], eax                    ; 052B _ 89. 45, EC
        mov     eax, dword [_xsize]                     ; 052E _ A1, 000001F8(d)
        mov     edx, dword [ebp-14H]                    ; 0533 _ 8B. 55, EC
        mov     dword [esp+14H], edx                    ; 0536 _ 89. 54 24, 14
        mov     dword [esp+10H], 7                      ; 053A _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 0                      ; 0542 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 054A _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], eax                     ; 0552 _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 0556 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 0559 _ 89. 04 24
        call    _showString                             ; 055C _ E8, 00000297
        call    _io_sti                                 ; 0561 _ E8, 00000000(rel)
        mov     dword [esp], _mdec                      ; 0566 _ C7. 04 24, 000001E0(d)
        call    _enable_mouse                           ; 056D _ E8, 0000088C
        mov     dword [ebp-18H], 0                      ; 0572 _ C7. 45, E8, 00000000
?_001:  call    _io_cli                                 ; 0579 _ E8, 00000000(rel)
        mov     dword [esp], _keyinfo                   ; 057E _ C7. 04 24, 00000108(d)
        call    _fifo8_status                           ; 0585 _ E8, 00000A38
        mov     ebx, eax                                ; 058A _ 89. C3
        mov     dword [esp], _mouseinfo                 ; 058C _ C7. 04 24, 00000120(d)
        call    _fifo8_status                           ; 0593 _ E8, 00000A2A
        add     eax, ebx                                ; 0598 _ 01. D8
        test    eax, eax                                ; 059A _ 85. C0
        jnz     ?_002                                   ; 059C _ 75, 07
        call    _io_stihlt                              ; 059E _ E8, 00000000(rel)
        jmp     ?_001                                   ; 05A3 _ EB, D4

?_002:  ; Local function
        mov     dword [esp], _keyinfo                   ; 05A5 _ C7. 04 24, 00000108(d)
        call    _fifo8_status                           ; 05AC _ E8, 00000A11
        test    eax, eax                                ; 05B1 _ 85. C0
        jz      ?_003                                   ; 05B3 _ 74, 6C
        call    _io_sti                                 ; 05B5 _ E8, 00000000(rel)
        mov     dword [esp], _keyinfo                   ; 05BA _ C7. 04 24, 00000108(d)
        call    _fifo8_get                              ; 05C1 _ E8, 0000098C
        mov     dword [ebp-18H], eax                    ; 05C6 _ 89. 45, E8
        mov     eax, dword [ebp-18H]                    ; 05C9 _ 8B. 45, E8
        movzx   eax, al                                 ; 05CC _ 0F B6. C0
        mov     dword [esp], eax                        ; 05CF _ 89. 04 24
        call    _charToHexStr                           ; 05D2 _ E8, 000006E7
        mov     dword [ebp-1CH], eax                    ; 05D7 _ 89. 45, E4
        mov     edx, dword [_showPos.2035]              ; 05DA _ 8B. 15, 00000200(d)
        mov     eax, dword [_xsize]                     ; 05E0 _ A1, 000001F8(d)
        mov     ecx, dword [ebp-1CH]                    ; 05E5 _ 8B. 4D, E4
        mov     dword [esp+14H], ecx                    ; 05E8 _ 89. 4C 24, 14
        mov     dword [esp+10H], 7                      ; 05EC _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 16                     ; 05F4 _ C7. 44 24, 0C, 00000010
        mov     dword [esp+8H], edx                     ; 05FC _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 0600 _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 0604 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 0607 _ 89. 04 24
        call    _showString                             ; 060A _ E8, 000001E9
        mov     eax, dword [_showPos.2035]              ; 060F _ A1, 00000200(d)
        add     eax, 32                                 ; 0614 _ 83. C0, 20
        mov     dword [_showPos.2035], eax              ; 0617 _ A3, 00000200(d)
        jmp     ?_001                                   ; 061C _ E9, FFFFFF58

?_003:  ; Local function
        mov     dword [esp], _mouseinfo                 ; 0621 _ C7. 04 24, 00000120(d)
        call    _fifo8_status                           ; 0628 _ E8, 00000995
        test    eax, eax                                ; 062D _ 85. C0
        je      ?_001                                   ; 062F _ 0F 84, FFFFFF44
        call    _show_mouse_info                        ; 0635 _ E8, 0000013A
        jmp     ?_001                                   ; 063A _ E9, FFFFFF3A

_computeMousePosition:; Function begin
        push    ebp                                     ; 063F _ 55
        mov     ebp, esp                                ; 0640 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0642 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 0645 _ 8B. 50, 04
        mov     eax, dword [_mx]                        ; 0648 _ A1, 000001F0(d)
        add     eax, edx                                ; 064D _ 01. D0
        mov     dword [_mx], eax                        ; 064F _ A3, 000001F0(d)
        mov     eax, dword [ebp+8H]                     ; 0654 _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 0657 _ 8B. 50, 08
        mov     eax, dword [_my]                        ; 065A _ A1, 000001F4(d)
        add     eax, edx                                ; 065F _ 01. D0
        mov     dword [_my], eax                        ; 0661 _ A3, 000001F4(d)
        mov     eax, dword [_mx]                        ; 0666 _ A1, 000001F0(d)
        test    eax, eax                                ; 066B _ 85. C0
        jns     ?_004                                   ; 066D _ 79, 0A
        mov     dword [_mx], 0                          ; 066F _ C7. 05, 000001F0(d), 00000000
?_004:  mov     eax, dword [_my]                        ; 0679 _ A1, 000001F4(d)
        test    eax, eax                                ; 067E _ 85. C0
        jns     ?_005                                   ; 0680 _ 79, 0A
        mov     dword [_my], 0                          ; 0682 _ C7. 05, 000001F4(d), 00000000
?_005:  mov     eax, dword [_xsize]                     ; 068C _ A1, 000001F8(d)
        lea     edx, [eax-0FH]                          ; 0691 _ 8D. 50, F1
        mov     eax, dword [_mx]                        ; 0694 _ A1, 000001F0(d)
        cmp     edx, eax                                ; 0699 _ 39. C2
        jg      ?_006                                   ; 069B _ 7F, 0D
        mov     eax, dword [_xsize]                     ; 069D _ A1, 000001F8(d)
        sub     eax, 16                                 ; 06A2 _ 83. E8, 10
        mov     dword [_mx], eax                        ; 06A5 _ A3, 000001F0(d)
?_006:  mov     eax, dword [_ysize]                     ; 06AA _ A1, 000001FC(d)
        lea     edx, [eax-0FH]                          ; 06AF _ 8D. 50, F1
        mov     eax, dword [_my]                        ; 06B2 _ A1, 000001F4(d)
        cmp     edx, eax                                ; 06B7 _ 39. C2
        jg      ?_007                                   ; 06B9 _ 7F, 0D
        mov     eax, dword [_ysize]                     ; 06BB _ A1, 000001FC(d)
        sub     eax, 16                                 ; 06C0 _ 83. E8, 10
        mov     dword [_my], eax                        ; 06C3 _ A3, 000001F4(d)
?_007:  nop                                             ; 06C8 _ 90
        pop     ebp                                     ; 06C9 _ 5D
        ret                                             ; 06CA _ C3
; _computeMousePosition End of function

_eraseMouse:; Function begin
        push    ebp                                     ; 06CB _ 55
        mov     ebp, esp                                ; 06CC _ 89. E5
        push    esi                                     ; 06CE _ 56
        push    ebx                                     ; 06CF _ 53
        sub     esp, 32                                 ; 06D0 _ 83. EC, 20
        mov     eax, dword [_my]                        ; 06D3 _ A1, 000001F4(d)
        lea     esi, [eax+0FH]                          ; 06D8 _ 8D. 70, 0F
        mov     eax, dword [_mx]                        ; 06DB _ A1, 000001F0(d)
        lea     ebx, [eax+0FH]                          ; 06E0 _ 8D. 58, 0F
        mov     ecx, dword [_my]                        ; 06E3 _ 8B. 0D, 000001F4(d)
        mov     edx, dword [_mx]                        ; 06E9 _ 8B. 15, 000001F0(d)
        mov     eax, dword [_xsize]                     ; 06EF _ A1, 000001F8(d)
        mov     dword [esp+18H], esi                    ; 06F4 _ 89. 74 24, 18
        mov     dword [esp+14H], ebx                    ; 06F8 _ 89. 5C 24, 14
        mov     dword [esp+10H], ecx                    ; 06FC _ 89. 4C 24, 10
        mov     dword [esp+0CH], edx                    ; 0700 _ 89. 54 24, 0C
        mov     dword [esp+8H], 14                      ; 0704 _ C7. 44 24, 08, 0000000E
        mov     dword [esp+4H], eax                     ; 070C _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0710 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0713 _ 89. 04 24
        call    _boxfill8                               ; 0716 _ E8, 00000209
        nop                                             ; 071B _ 90
        add     esp, 32                                 ; 071C _ 83. C4, 20
        pop     ebx                                     ; 071F _ 5B
        pop     esi                                     ; 0720 _ 5E
        pop     ebp                                     ; 0721 _ 5D
        ret                                             ; 0722 _ C3
; _eraseMouse End of function

_drawMouse:; Function begin
        push    ebp                                     ; 0723 _ 55
        mov     ebp, esp                                ; 0724 _ 89. E5
        sub     esp, 40                                 ; 0726 _ 83. EC, 28
        mov     ecx, dword [_my]                        ; 0729 _ 8B. 0D, 000001F4(d)
        mov     edx, dword [_mx]                        ; 072F _ 8B. 15, 000001F0(d)
        mov     eax, dword [_xsize]                     ; 0735 _ A1, 000001F8(d)
        mov     dword [esp+1CH], 16                     ; 073A _ C7. 44 24, 1C, 00000010
        mov     dword [esp+18H], _mcursor               ; 0742 _ C7. 44 24, 18, 00000000(d)
        mov     dword [esp+14H], ecx                    ; 074A _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 074E _ 89. 54 24, 10
        mov     dword [esp+0CH], 16                     ; 0752 _ C7. 44 24, 0C, 00000010
        mov     dword [esp+8H], 16                      ; 075A _ C7. 44 24, 08, 00000010
        mov     dword [esp+4H], eax                     ; 0762 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0766 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0769 _ 89. 04 24
        call    _putblock                               ; 076C _ E8, 0000045A
        nop                                             ; 0771 _ 90
        leave                                           ; 0772 _ C9
        ret                                             ; 0773 _ C3
; _drawMouse End of function

_show_mouse_info:; Function begin
        push    ebp                                     ; 0774 _ 55
        mov     ebp, esp                                ; 0775 _ 89. E5
        sub     esp, 40                                 ; 0777 _ 83. EC, 28
        mov     eax, dword [_bootInfo]                  ; 077A _ A1, 00000100(d)
        mov     dword [ebp-0CH], eax                    ; 077F _ 89. 45, F4
        mov     byte [ebp-0DH], 0                       ; 0782 _ C6. 45, F3, 00
        call    _io_sti                                 ; 0786 _ E8, 00000000(rel)
        mov     dword [esp], _mouseinfo                 ; 078B _ C7. 04 24, 00000120(d)
        call    _fifo8_get                              ; 0792 _ E8, 000007BB
        mov     byte [ebp-0DH], al                      ; 0797 _ 88. 45, F3
        movzx   eax, byte [ebp-0DH]                     ; 079A _ 0F B6. 45, F3
        mov     dword [esp+4H], eax                     ; 079E _ 89. 44 24, 04
        mov     dword [esp], _mdec                      ; 07A2 _ C7. 04 24, 000001E0(d)
        call    _mouse_decode                           ; 07A9 _ E8, 00000829
        test    eax, eax                                ; 07AE _ 85. C0
        jz      ?_008                                   ; 07B0 _ 74, 22
        mov     eax, dword [ebp-0CH]                    ; 07B2 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 07B5 _ 89. 04 24
        call    _eraseMouse                             ; 07B8 _ E8, FFFFFF0E
        mov     dword [esp], _mdec                      ; 07BD _ C7. 04 24, 000001E0(d)
        call    _computeMousePosition                   ; 07C4 _ E8, FFFFFE76
        mov     eax, dword [ebp-0CH]                    ; 07C9 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 07CC _ 89. 04 24
        call    _drawMouse                              ; 07CF _ E8, FFFFFF4F
?_008:  nop                                             ; 07D4 _ 90
        leave                                           ; 07D5 _ C9
        ret                                             ; 07D6 _ C3
; _show_mouse_info End of function

_initBootInfo:; Function begin
        push    ebp                                     ; 07D7 _ 55
        mov     ebp, esp                                ; 07D8 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 07DA _ 8B. 45, 08
        mov     dword [eax], 655360                     ; 07DD _ C7. 00, 000A0000
        mov     eax, dword [ebp+8H]                     ; 07E3 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 320                      ; 07E6 _ 66: C7. 40, 04, 0140
        mov     eax, dword [ebp+8H]                     ; 07EC _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 200                      ; 07EF _ 66: C7. 40, 06, 00C8
        nop                                             ; 07F5 _ 90
        pop     ebp                                     ; 07F6 _ 5D
        ret                                             ; 07F7 _ C3
; _initBootInfo End of function

_showString:; Function begin
        push    ebp                                     ; 07F8 _ 55
        mov     ebp, esp                                ; 07F9 _ 89. E5
        sub     esp, 56                                 ; 07FB _ 83. EC, 38
        mov     eax, dword [ebp+18H]                    ; 07FE _ 8B. 45, 18
        mov     byte [ebp-0CH], al                      ; 0801 _ 88. 45, F4
        jmp     ?_010                                   ; 0804 _ EB, 46

?_009:  mov     eax, dword [ebp+1CH]                    ; 0806 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 0809 _ 0F B6. 00
        movzx   eax, al                                 ; 080C _ 0F B6. C0
        shl     eax, 4                                  ; 080F _ C1. E0, 04
        lea     edx, [_systemFont+eax]                  ; 0812 _ 8D. 90, 00000000(d)
        movsx   eax, byte [ebp-0CH]                     ; 0818 _ 0F BE. 45, F4
        mov     dword [esp+14H], edx                    ; 081C _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 0820 _ 89. 44 24, 10
        mov     eax, dword [ebp+14H]                    ; 0824 _ 8B. 45, 14
        mov     dword [esp+0CH], eax                    ; 0827 _ 89. 44 24, 0C
        mov     eax, dword [ebp+10H]                    ; 082B _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 082E _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 0832 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0835 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0839 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 083C _ 89. 04 24
        call    _showFont8                              ; 083F _ E8, 00000130
        add     dword [ebp+10H], 8                      ; 0844 _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 0848 _ 83. 45, 1C, 01
?_010:  mov     eax, dword [ebp+1CH]                    ; 084C _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 084F _ 0F B6. 00
        test    al, al                                  ; 0852 _ 84. C0
        jnz     ?_009                                   ; 0854 _ 75, B0
        nop                                             ; 0856 _ 90
        leave                                           ; 0857 _ C9
        ret                                             ; 0858 _ C3
; _showString End of function

_init_palette:; Function begin
        push    ebp                                     ; 0859 _ 55
        mov     ebp, esp                                ; 085A _ 89. E5
        sub     esp, 24                                 ; 085C _ 83. EC, 18
        mov     dword [esp+8H], _table_rgb.2068         ; 085F _ C7. 44 24, 08, 00000020(d)
        mov     dword [esp+4H], 15                      ; 0867 _ C7. 44 24, 04, 0000000F
        mov     dword [esp], 0                          ; 086F _ C7. 04 24, 00000000
        call    _set_palette                            ; 0876 _ E8, 00000003
        nop                                             ; 087B _ 90
        leave                                           ; 087C _ C9
        ret                                             ; 087D _ C3
; _init_palette End of function

_set_palette:; Function begin
        push    ebp                                     ; 087E _ 55
        mov     ebp, esp                                ; 087F _ 89. E5
        sub     esp, 40                                 ; 0881 _ 83. EC, 28
        call    _io_load_eflags                         ; 0884 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 0889 _ 89. 45, F0
        call    _io_cli                                 ; 088C _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 0891 _ 8B. 45, 08
        mov     dword [esp+4H], eax                     ; 0894 _ 89. 44 24, 04
        mov     dword [esp], 968                        ; 0898 _ C7. 04 24, 000003C8
        call    _io_out8                                ; 089F _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 08A4 _ 8B. 45, 08
        mov     dword [ebp-0CH], eax                    ; 08A7 _ 89. 45, F4
        jmp     ?_012                                   ; 08AA _ EB, 62

?_011:  mov     eax, dword [ebp+10H]                    ; 08AC _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 08AF _ 0F B6. 00
        shr     al, 2                                   ; 08B2 _ C0. E8, 02
        movzx   eax, al                                 ; 08B5 _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 08B8 _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 08BC _ C7. 04 24, 000003C9
        call    _io_out8                                ; 08C3 _ E8, 00000000(rel)
        mov     eax, dword [ebp+10H]                    ; 08C8 _ 8B. 45, 10
        add     eax, 1                                  ; 08CB _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 08CE _ 0F B6. 00
        shr     al, 2                                   ; 08D1 _ C0. E8, 02
        movzx   eax, al                                 ; 08D4 _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 08D7 _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 08DB _ C7. 04 24, 000003C9
        call    _io_out8                                ; 08E2 _ E8, 00000000(rel)
        mov     eax, dword [ebp+10H]                    ; 08E7 _ 8B. 45, 10
        add     eax, 2                                  ; 08EA _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 08ED _ 0F B6. 00
        shr     al, 2                                   ; 08F0 _ C0. E8, 02
        movzx   eax, al                                 ; 08F3 _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 08F6 _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 08FA _ C7. 04 24, 000003C9
        call    _io_out8                                ; 0901 _ E8, 00000000(rel)
        add     dword [ebp+10H], 3                      ; 0906 _ 83. 45, 10, 03
        add     dword [ebp-0CH], 1                      ; 090A _ 83. 45, F4, 01
?_012:  mov     eax, dword [ebp-0CH]                    ; 090E _ 8B. 45, F4
        cmp     eax, dword [ebp+0CH]                    ; 0911 _ 3B. 45, 0C
        jle     ?_011                                   ; 0914 _ 7E, 96
        mov     eax, dword [ebp-10H]                    ; 0916 _ 8B. 45, F0
        mov     dword [esp], eax                        ; 0919 _ 89. 04 24
        call    _io_store_eflags                        ; 091C _ E8, 00000000(rel)
        nop                                             ; 0921 _ 90
        leave                                           ; 0922 _ C9
        ret                                             ; 0923 _ C3
; _set_palette End of function

_boxfill8:; Function begin
        push    ebp                                     ; 0924 _ 55
        mov     ebp, esp                                ; 0925 _ 89. E5
        sub     esp, 20                                 ; 0927 _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 092A _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 092D _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 0930 _ 8B. 45, 18
        mov     dword [ebp-8H], eax                     ; 0933 _ 89. 45, F8
        jmp     ?_016                                   ; 0936 _ EB, 31

?_013:  mov     eax, dword [ebp+14H]                    ; 0938 _ 8B. 45, 14
        mov     dword [ebp-4H], eax                     ; 093B _ 89. 45, FC
        jmp     ?_015                                   ; 093E _ EB, 1D

?_014:  mov     eax, dword [ebp-8H]                     ; 0940 _ 8B. 45, F8
        imul    eax, dword [ebp+0CH]                    ; 0943 _ 0F AF. 45, 0C
        mov     edx, dword [ebp-4H]                     ; 0947 _ 8B. 55, FC
        add     eax, edx                                ; 094A _ 01. D0
        mov     edx, eax                                ; 094C _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 094E _ 8B. 45, 08
        add     edx, eax                                ; 0951 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0953 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0957 _ 88. 02
        add     dword [ebp-4H], 1                       ; 0959 _ 83. 45, FC, 01
?_015:  mov     eax, dword [ebp-4H]                     ; 095D _ 8B. 45, FC
        cmp     eax, dword [ebp+1CH]                    ; 0960 _ 3B. 45, 1C
        jle     ?_014                                   ; 0963 _ 7E, DB
        add     dword [ebp-8H], 1                       ; 0965 _ 83. 45, F8, 01
?_016:  mov     eax, dword [ebp-8H]                     ; 0969 _ 8B. 45, F8
        cmp     eax, dword [ebp+20H]                    ; 096C _ 3B. 45, 20
        jle     ?_013                                   ; 096F _ 7E, C7
        nop                                             ; 0971 _ 90
        leave                                           ; 0972 _ C9
        ret                                             ; 0973 _ C3
; _boxfill8 End of function

_showFont8:; Function begin
        push    ebp                                     ; 0974 _ 55
        mov     ebp, esp                                ; 0975 _ 89. E5
        sub     esp, 20                                 ; 0977 _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 097A _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 097D _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 0980 _ C7. 45, FC, 00000000
        jmp     ?_026                                   ; 0987 _ E9, 0000015C

?_017:  mov     edx, dword [ebp-4H]                     ; 098C _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 098F _ 8B. 45, 1C
        add     eax, edx                                ; 0992 _ 01. D0
        movzx   eax, byte [eax]                         ; 0994 _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 0997 _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 099A _ 80. 7D, FB, 00
        jns     ?_018                                   ; 099E _ 79, 1E
        mov     edx, dword [ebp+14H]                    ; 09A0 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 09A3 _ 8B. 45, FC
        add     eax, edx                                ; 09A6 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 09A8 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 09AC _ 8B. 55, 10
        add     eax, edx                                ; 09AF _ 01. D0
        mov     edx, eax                                ; 09B1 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 09B3 _ 8B. 45, 08
        add     edx, eax                                ; 09B6 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 09B8 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 09BC _ 88. 02
?_018:  movsx   eax, byte [ebp-5H]                      ; 09BE _ 0F BE. 45, FB
        and     eax, 40H                                ; 09C2 _ 83. E0, 40
        test    eax, eax                                ; 09C5 _ 85. C0
        jz      ?_019                                   ; 09C7 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 09C9 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 09CC _ 8B. 45, FC
        add     eax, edx                                ; 09CF _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 09D1 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 09D5 _ 8B. 55, 10
        add     eax, edx                                ; 09D8 _ 01. D0
        lea     edx, [eax+1H]                           ; 09DA _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 09DD _ 8B. 45, 08
        add     edx, eax                                ; 09E0 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 09E2 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 09E6 _ 88. 02
?_019:  movsx   eax, byte [ebp-5H]                      ; 09E8 _ 0F BE. 45, FB
        and     eax, 20H                                ; 09EC _ 83. E0, 20
        test    eax, eax                                ; 09EF _ 85. C0
        jz      ?_020                                   ; 09F1 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 09F3 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 09F6 _ 8B. 45, FC
        add     eax, edx                                ; 09F9 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 09FB _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 09FF _ 8B. 55, 10
        add     eax, edx                                ; 0A02 _ 01. D0
        lea     edx, [eax+2H]                           ; 0A04 _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 0A07 _ 8B. 45, 08
        add     edx, eax                                ; 0A0A _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0A0C _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0A10 _ 88. 02
?_020:  movsx   eax, byte [ebp-5H]                      ; 0A12 _ 0F BE. 45, FB
        and     eax, 10H                                ; 0A16 _ 83. E0, 10
        test    eax, eax                                ; 0A19 _ 85. C0
        jz      ?_021                                   ; 0A1B _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 0A1D _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0A20 _ 8B. 45, FC
        add     eax, edx                                ; 0A23 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0A25 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 0A29 _ 8B. 55, 10
        add     eax, edx                                ; 0A2C _ 01. D0
        lea     edx, [eax+3H]                           ; 0A2E _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 0A31 _ 8B. 45, 08
        add     edx, eax                                ; 0A34 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0A36 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0A3A _ 88. 02
?_021:  movsx   eax, byte [ebp-5H]                      ; 0A3C _ 0F BE. 45, FB
        and     eax, 08H                                ; 0A40 _ 83. E0, 08
        test    eax, eax                                ; 0A43 _ 85. C0
        jz      ?_022                                   ; 0A45 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 0A47 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0A4A _ 8B. 45, FC
        add     eax, edx                                ; 0A4D _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0A4F _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 0A53 _ 8B. 55, 10
        add     eax, edx                                ; 0A56 _ 01. D0
        lea     edx, [eax+4H]                           ; 0A58 _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0A5B _ 8B. 45, 08
        add     edx, eax                                ; 0A5E _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0A60 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0A64 _ 88. 02
?_022:  movsx   eax, byte [ebp-5H]                      ; 0A66 _ 0F BE. 45, FB
        and     eax, 04H                                ; 0A6A _ 83. E0, 04
        test    eax, eax                                ; 0A6D _ 85. C0
        jz      ?_023                                   ; 0A6F _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 0A71 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0A74 _ 8B. 45, FC
        add     eax, edx                                ; 0A77 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0A79 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 0A7D _ 8B. 55, 10
        add     eax, edx                                ; 0A80 _ 01. D0
        lea     edx, [eax+5H]                           ; 0A82 _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 0A85 _ 8B. 45, 08
        add     edx, eax                                ; 0A88 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0A8A _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0A8E _ 88. 02
?_023:  movsx   eax, byte [ebp-5H]                      ; 0A90 _ 0F BE. 45, FB
        and     eax, 02H                                ; 0A94 _ 83. E0, 02
        test    eax, eax                                ; 0A97 _ 85. C0
        jz      ?_024                                   ; 0A99 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 0A9B _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0A9E _ 8B. 45, FC
        add     eax, edx                                ; 0AA1 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0AA3 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 0AA7 _ 8B. 55, 10
        add     eax, edx                                ; 0AAA _ 01. D0
        lea     edx, [eax+6H]                           ; 0AAC _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 0AAF _ 8B. 45, 08
        add     edx, eax                                ; 0AB2 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0AB4 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0AB8 _ 88. 02
?_024:  movsx   eax, byte [ebp-5H]                      ; 0ABA _ 0F BE. 45, FB
        and     eax, 01H                                ; 0ABE _ 83. E0, 01
        test    eax, eax                                ; 0AC1 _ 85. C0
        jz      ?_025                                   ; 0AC3 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 0AC5 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0AC8 _ 8B. 45, FC
        add     eax, edx                                ; 0ACB _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0ACD _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 0AD1 _ 8B. 55, 10
        add     eax, edx                                ; 0AD4 _ 01. D0
        lea     edx, [eax+7H]                           ; 0AD6 _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 0AD9 _ 8B. 45, 08
        add     edx, eax                                ; 0ADC _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0ADE _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0AE2 _ 88. 02
?_025:  add     dword [ebp-4H], 1                       ; 0AE4 _ 83. 45, FC, 01
?_026:  cmp     dword [ebp-4H], 15                      ; 0AE8 _ 83. 7D, FC, 0F
        jle     ?_017                                   ; 0AEC _ 0F 8E, FFFFFE9A
        nop                                             ; 0AF2 _ 90
        leave                                           ; 0AF3 _ C9
        ret                                             ; 0AF4 _ C3
; _showFont8 End of function

_init_mouse_cursor:; Function begin
        push    ebp                                     ; 0AF5 _ 55
        mov     ebp, esp                                ; 0AF6 _ 89. E5
        sub     esp, 20                                 ; 0AF8 _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 0AFB _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 0AFE _ 88. 45, EC
        mov     dword [ebp-8H], 0                       ; 0B01 _ C7. 45, F8, 00000000
        jmp     ?_033                                   ; 0B08 _ E9, 000000B1

?_027:  mov     dword [ebp-4H], 0                       ; 0B0D _ C7. 45, FC, 00000000
        jmp     ?_032                                   ; 0B14 _ E9, 00000097

?_028:  mov     eax, dword [ebp-8H]                     ; 0B19 _ 8B. 45, F8
        shl     eax, 4                                  ; 0B1C _ C1. E0, 04
        mov     edx, eax                                ; 0B1F _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 0B21 _ 8B. 45, FC
        add     eax, edx                                ; 0B24 _ 01. D0
        add     eax, _cursor.2115                       ; 0B26 _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 0B2B _ 0F B6. 00
        cmp     al, 42                                  ; 0B2E _ 3C, 2A
        jnz     ?_029                                   ; 0B30 _ 75, 17
        mov     eax, dword [ebp-8H]                     ; 0B32 _ 8B. 45, F8
        shl     eax, 4                                  ; 0B35 _ C1. E0, 04
        mov     edx, eax                                ; 0B38 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 0B3A _ 8B. 45, FC
        add     eax, edx                                ; 0B3D _ 01. D0
        mov     edx, eax                                ; 0B3F _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0B41 _ 8B. 45, 08
        add     eax, edx                                ; 0B44 _ 01. D0
        mov     byte [eax], 0                           ; 0B46 _ C6. 00, 00
?_029:  mov     eax, dword [ebp-8H]                     ; 0B49 _ 8B. 45, F8
        shl     eax, 4                                  ; 0B4C _ C1. E0, 04
        mov     edx, eax                                ; 0B4F _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 0B51 _ 8B. 45, FC
        add     eax, edx                                ; 0B54 _ 01. D0
        add     eax, _cursor.2115                       ; 0B56 _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 0B5B _ 0F B6. 00
        cmp     al, 79                                  ; 0B5E _ 3C, 4F
        jnz     ?_030                                   ; 0B60 _ 75, 17
        mov     eax, dword [ebp-8H]                     ; 0B62 _ 8B. 45, F8
        shl     eax, 4                                  ; 0B65 _ C1. E0, 04
        mov     edx, eax                                ; 0B68 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 0B6A _ 8B. 45, FC
        add     eax, edx                                ; 0B6D _ 01. D0
        mov     edx, eax                                ; 0B6F _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0B71 _ 8B. 45, 08
        add     eax, edx                                ; 0B74 _ 01. D0
        mov     byte [eax], 7                           ; 0B76 _ C6. 00, 07
?_030:  mov     eax, dword [ebp-8H]                     ; 0B79 _ 8B. 45, F8
        shl     eax, 4                                  ; 0B7C _ C1. E0, 04
        mov     edx, eax                                ; 0B7F _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 0B81 _ 8B. 45, FC
        add     eax, edx                                ; 0B84 _ 01. D0
        add     eax, _cursor.2115                       ; 0B86 _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 0B8B _ 0F B6. 00
        cmp     al, 46                                  ; 0B8E _ 3C, 2E
        jnz     ?_031                                   ; 0B90 _ 75, 1A
        mov     eax, dword [ebp-8H]                     ; 0B92 _ 8B. 45, F8
        shl     eax, 4                                  ; 0B95 _ C1. E0, 04
        mov     edx, eax                                ; 0B98 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 0B9A _ 8B. 45, FC
        add     eax, edx                                ; 0B9D _ 01. D0
        mov     edx, eax                                ; 0B9F _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0BA1 _ 8B. 45, 08
        add     edx, eax                                ; 0BA4 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0BA6 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0BAA _ 88. 02
?_031:  add     dword [ebp-4H], 1                       ; 0BAC _ 83. 45, FC, 01
?_032:  cmp     dword [ebp-4H], 15                      ; 0BB0 _ 83. 7D, FC, 0F
        jle     ?_028                                   ; 0BB4 _ 0F 8E, FFFFFF5F
        add     dword [ebp-8H], 1                       ; 0BBA _ 83. 45, F8, 01
?_033:  cmp     dword [ebp-8H], 15                      ; 0BBE _ 83. 7D, F8, 0F
        jle     ?_027                                   ; 0BC2 _ 0F 8E, FFFFFF45
        nop                                             ; 0BC8 _ 90
        leave                                           ; 0BC9 _ C9
        ret                                             ; 0BCA _ C3
; _init_mouse_cursor End of function

_putblock:; Function begin
        push    ebp                                     ; 0BCB _ 55
        mov     ebp, esp                                ; 0BCC _ 89. E5
        push    ebx                                     ; 0BCE _ 53
        sub     esp, 16                                 ; 0BCF _ 83. EC, 10
        mov     dword [ebp-0CH], 0                      ; 0BD2 _ C7. 45, F4, 00000000
        jmp     ?_037                                   ; 0BD9 _ EB, 4E

?_034:  mov     dword [ebp-8H], 0                       ; 0BDB _ C7. 45, F8, 00000000
        jmp     ?_036                                   ; 0BE2 _ EB, 39

?_035:  mov     eax, dword [ebp-0CH]                    ; 0BE4 _ 8B. 45, F4
        imul    eax, dword [ebp+24H]                    ; 0BE7 _ 0F AF. 45, 24
        mov     edx, dword [ebp-8H]                     ; 0BEB _ 8B. 55, F8
        add     eax, edx                                ; 0BEE _ 01. D0
        mov     edx, eax                                ; 0BF0 _ 89. C2
        mov     eax, dword [ebp+20H]                    ; 0BF2 _ 8B. 45, 20
        add     eax, edx                                ; 0BF5 _ 01. D0
        mov     ecx, dword [ebp+1CH]                    ; 0BF7 _ 8B. 4D, 1C
        mov     edx, dword [ebp-0CH]                    ; 0BFA _ 8B. 55, F4
        add     edx, ecx                                ; 0BFD _ 01. CA
        imul    edx, dword [ebp+0CH]                    ; 0BFF _ 0F AF. 55, 0C
        mov     ebx, dword [ebp+18H]                    ; 0C03 _ 8B. 5D, 18
        mov     ecx, dword [ebp-8H]                     ; 0C06 _ 8B. 4D, F8
        add     ecx, ebx                                ; 0C09 _ 01. D9
        add     edx, ecx                                ; 0C0B _ 01. CA
        mov     ecx, edx                                ; 0C0D _ 89. D1
        mov     edx, dword [ebp+8H]                     ; 0C0F _ 8B. 55, 08
        add     edx, ecx                                ; 0C12 _ 01. CA
        movzx   eax, byte [eax]                         ; 0C14 _ 0F B6. 00
        mov     byte [edx], al                          ; 0C17 _ 88. 02
        add     dword [ebp-8H], 1                       ; 0C19 _ 83. 45, F8, 01
?_036:  mov     eax, dword [ebp-8H]                     ; 0C1D _ 8B. 45, F8
        cmp     eax, dword [ebp+10H]                    ; 0C20 _ 3B. 45, 10
        jl      ?_035                                   ; 0C23 _ 7C, BF
        add     dword [ebp-0CH], 1                      ; 0C25 _ 83. 45, F4, 01
?_037:  mov     eax, dword [ebp-0CH]                    ; 0C29 _ 8B. 45, F4
        cmp     eax, dword [ebp+14H]                    ; 0C2C _ 3B. 45, 14
        jl      ?_034                                   ; 0C2F _ 7C, AA
        nop                                             ; 0C31 _ 90
        add     esp, 16                                 ; 0C32 _ 83. C4, 10
        pop     ebx                                     ; 0C35 _ 5B
        pop     ebp                                     ; 0C36 _ 5D
        ret                                             ; 0C37 _ C3
; _putblock End of function

_intHandlerFromC:; Function begin
        push    ebp                                     ; 0C38 _ 55
        mov     ebp, esp                                ; 0C39 _ 89. E5
        sub     esp, 40                                 ; 0C3B _ 83. EC, 28
        mov     eax, dword [_bootInfo]                  ; 0C3E _ A1, 00000100(d)
        mov     dword [ebp-0CH], eax                    ; 0C43 _ 89. 45, F4
        movzx   eax, word [?_065]                       ; 0C46 _ 0F B7. 05, 00000104(d)
        cwde                                            ; 0C4D _ 98
        mov     dword [ebp-10H], eax                    ; 0C4E _ 89. 45, F0
        movzx   eax, word [?_066]                       ; 0C51 _ 0F B7. 05, 00000106(d)
        cwde                                            ; 0C58 _ 98
        mov     dword [ebp-14H], eax                    ; 0C59 _ 89. 45, EC
        mov     dword [esp+4H], 32                      ; 0C5C _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 0C64 _ C7. 04 24, 00000020
        call    _io_out8                                ; 0C6B _ E8, 00000000(rel)
        mov     byte [ebp-15H], 0                       ; 0C70 _ C6. 45, EB, 00
        mov     dword [esp], 96                         ; 0C74 _ C7. 04 24, 00000060
        call    _io_in8                                 ; 0C7B _ E8, 00000000(rel)
        mov     byte [ebp-15H], al                      ; 0C80 _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 0C83 _ 0F B6. 45, EB
        mov     dword [esp+4H], eax                     ; 0C87 _ 89. 44 24, 04
        mov     dword [esp], _keyinfo                   ; 0C8B _ C7. 04 24, 00000108(d)
        call    _fifo8_put                              ; 0C92 _ E8, 0000023B
        nop                                             ; 0C97 _ 90
        leave                                           ; 0C98 _ C9
        ret                                             ; 0C99 _ C3
; _intHandlerFromC End of function

_charToHexVal:; Function begin
        push    ebp                                     ; 0C9A _ 55
        mov     ebp, esp                                ; 0C9B _ 89. E5
        sub     esp, 4                                  ; 0C9D _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 0CA0 _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 0CA3 _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 0CA6 _ 80. 7D, FC, 09
        jle     ?_038                                   ; 0CAA _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 0CAC _ 0F B6. 45, FC
        add     eax, 55                                 ; 0CB0 _ 83. C0, 37
        jmp     ?_039                                   ; 0CB3 _ EB, 07

?_038:  movzx   eax, byte [ebp-4H]                      ; 0CB5 _ 0F B6. 45, FC
        add     eax, 48                                 ; 0CB9 _ 83. C0, 30
?_039:  leave                                           ; 0CBC _ C9
        ret                                             ; 0CBD _ C3
; _charToHexVal End of function

_charToHexStr:; Function begin
        push    ebp                                     ; 0CBE _ 55
        mov     ebp, esp                                ; 0CBF _ 89. E5
        sub     esp, 24                                 ; 0CC1 _ 83. EC, 18
        mov     eax, dword [ebp+8H]                     ; 0CC4 _ 8B. 45, 08
        mov     byte [ebp-14H], al                      ; 0CC7 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 0CCA _ C7. 45, FC, 00000000
        movzx   eax, byte [ebp-14H]                     ; 0CD1 _ 0F B6. 45, EC
        and     eax, 0FH                                ; 0CD5 _ 83. E0, 0F
        mov     byte [ebp-5H], al                       ; 0CD8 _ 88. 45, FB
        movsx   eax, byte [ebp-5H]                      ; 0CDB _ 0F BE. 45, FB
        mov     dword [esp], eax                        ; 0CDF _ 89. 04 24
        call    _charToHexVal                           ; 0CE2 _ E8, FFFFFFB3
        mov     byte [?_064], al                        ; 0CE7 _ A2, 00000003(d)
        movzx   eax, byte [ebp-14H]                     ; 0CEC _ 0F B6. 45, EC
        shr     al, 4                                   ; 0CF0 _ C0. E8, 04
        mov     byte [ebp-14H], al                      ; 0CF3 _ 88. 45, EC
        movzx   eax, byte [ebp-14H]                     ; 0CF6 _ 0F B6. 45, EC
        movsx   eax, al                                 ; 0CFA _ 0F BE. C0
        mov     dword [esp], eax                        ; 0CFD _ 89. 04 24
        call    _charToHexVal                           ; 0D00 _ E8, FFFFFF95
        mov     byte [?_063], al                        ; 0D05 _ A2, 00000002(d)
        mov     eax, _keyval                            ; 0D0A _ B8, 00000000(d)
        leave                                           ; 0D0F _ C9
        ret                                             ; 0D10 _ C3
; _charToHexStr End of function

_intToHexStr:; Function begin
        push    ebp                                     ; 0D11 _ 55
        mov     ebp, esp                                ; 0D12 _ 89. E5
        sub     esp, 16                                 ; 0D14 _ 83. EC, 10
        mov     byte [_str.2163], 48                    ; 0D17 _ C6. 05, 00000204(d), 30
        mov     byte [?_067], 88                        ; 0D1E _ C6. 05, 00000205(d), 58
        mov     byte [?_068], 0                         ; 0D25 _ C6. 05, 0000020E(d), 00
        mov     dword [ebp-4H], 2                       ; 0D2C _ C7. 45, FC, 00000002
        jmp     ?_041                                   ; 0D33 _ EB, 0F

?_040:  mov     eax, dword [ebp-4H]                     ; 0D35 _ 8B. 45, FC
        add     eax, _str.2163                          ; 0D38 _ 05, 00000204(d)
        mov     byte [eax], 48                          ; 0D3D _ C6. 00, 30
        add     dword [ebp-4H], 1                       ; 0D40 _ 83. 45, FC, 01
?_041:  cmp     dword [ebp-4H], 9                       ; 0D44 _ 83. 7D, FC, 09
        jle     ?_040                                   ; 0D48 _ 7E, EB
        mov     dword [ebp-8H], 9                       ; 0D4A _ C7. 45, F8, 00000009
        jmp     ?_044                                   ; 0D51 _ EB, 3E

?_042:  mov     eax, dword [ebp+8H]                     ; 0D53 _ 8B. 45, 08
        and     eax, 0FH                                ; 0D56 _ 83. E0, 0F
        mov     dword [ebp-0CH], eax                    ; 0D59 _ 89. 45, F4
        mov     eax, dword [ebp+8H]                     ; 0D5C _ 8B. 45, 08
        shr     eax, 4                                  ; 0D5F _ C1. E8, 04
        mov     dword [ebp+8H], eax                     ; 0D62 _ 89. 45, 08
        cmp     dword [ebp-0CH], 9                      ; 0D65 _ 83. 7D, F4, 09
        jle     ?_043                                   ; 0D69 _ 7E, 14
        mov     eax, dword [ebp-0CH]                    ; 0D6B _ 8B. 45, F4
        add     eax, 55                                 ; 0D6E _ 83. C0, 37
        mov     edx, eax                                ; 0D71 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0D73 _ 8B. 45, F8
        add     eax, _str.2163                          ; 0D76 _ 05, 00000204(d)
        mov     byte [eax], dl                          ; 0D7B _ 88. 10
        jmp     ?_044                                   ; 0D7D _ EB, 12

?_043:  mov     eax, dword [ebp-0CH]                    ; 0D7F _ 8B. 45, F4
        add     eax, 48                                 ; 0D82 _ 83. C0, 30
        mov     edx, eax                                ; 0D85 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0D87 _ 8B. 45, F8
        add     eax, _str.2163                          ; 0D8A _ 05, 00000204(d)
        mov     byte [eax], dl                          ; 0D8F _ 88. 10
?_044:  cmp     dword [ebp-8H], 1                       ; 0D91 _ 83. 7D, F8, 01
        jle     ?_045                                   ; 0D95 _ 7E, 06
        cmp     dword [ebp+8H], 0                       ; 0D97 _ 83. 7D, 08, 00
        jnz     ?_042                                   ; 0D9B _ 75, B6
?_045:  mov     eax, _str.2163                          ; 0D9D _ B8, 00000204(d)
        leave                                           ; 0DA2 _ C9
        ret                                             ; 0DA3 _ C3
; _intToHexStr End of function

_wait_KBC_sendready:; Function begin
        push    ebp                                     ; 0DA4 _ 55
        mov     ebp, esp                                ; 0DA5 _ 89. E5
        sub     esp, 24                                 ; 0DA7 _ 83. EC, 18
?_046:  mov     dword [esp], 100                        ; 0DAA _ C7. 04 24, 00000064
        call    _io_in8                                 ; 0DB1 _ E8, 00000000(rel)
        and     eax, 02H                                ; 0DB6 _ 83. E0, 02
        test    eax, eax                                ; 0DB9 _ 85. C0
        jz      ?_047                                   ; 0DBB _ 74, 02
        jmp     ?_046                                   ; 0DBD _ EB, EB
; _wait_KBC_sendready End of function

?_047:  ; Local function
        nop                                             ; 0DBF _ 90
        nop                                             ; 0DC0 _ 90
        leave                                           ; 0DC1 _ C9
        ret                                             ; 0DC2 _ C3

_init_keyboard:; Function begin
        push    ebp                                     ; 0DC3 _ 55
        mov     ebp, esp                                ; 0DC4 _ 89. E5
        sub     esp, 24                                 ; 0DC6 _ 83. EC, 18
        call    _wait_KBC_sendready                     ; 0DC9 _ E8, FFFFFFD6
        mov     dword [esp+4H], 96                      ; 0DCE _ C7. 44 24, 04, 00000060
        mov     dword [esp], 100                        ; 0DD6 _ C7. 04 24, 00000064
        call    _io_out8                                ; 0DDD _ E8, 00000000(rel)
        call    _wait_KBC_sendready                     ; 0DE2 _ E8, FFFFFFBD
        mov     dword [esp+4H], 71                      ; 0DE7 _ C7. 44 24, 04, 00000047
        mov     dword [esp], 96                         ; 0DEF _ C7. 04 24, 00000060
        call    _io_out8                                ; 0DF6 _ E8, 00000000(rel)
        nop                                             ; 0DFB _ 90
        leave                                           ; 0DFC _ C9
        ret                                             ; 0DFD _ C3
; _init_keyboard End of function

_enable_mouse:; Function begin
        push    ebp                                     ; 0DFE _ 55
        mov     ebp, esp                                ; 0DFF _ 89. E5
        sub     esp, 24                                 ; 0E01 _ 83. EC, 18
        call    _wait_KBC_sendready                     ; 0E04 _ E8, FFFFFF9B
        mov     dword [esp+4H], 212                     ; 0E09 _ C7. 44 24, 04, 000000D4
        mov     dword [esp], 100                        ; 0E11 _ C7. 04 24, 00000064
        call    _io_out8                                ; 0E18 _ E8, 00000000(rel)
        call    _wait_KBC_sendready                     ; 0E1D _ E8, FFFFFF82
        mov     dword [esp+4H], 244                     ; 0E22 _ C7. 44 24, 04, 000000F4
        mov     dword [esp], 96                         ; 0E2A _ C7. 04 24, 00000060
        call    _io_out8                                ; 0E31 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 0E36 _ 8B. 45, 08
        mov     byte [eax+3H], 0                        ; 0E39 _ C6. 40, 03, 00
        nop                                             ; 0E3D _ 90
        leave                                           ; 0E3E _ C9
        ret                                             ; 0E3F _ C3
; _enable_mouse End of function

_intHandlerForMouse:; Function begin
        push    ebp                                     ; 0E40 _ 55
        mov     ebp, esp                                ; 0E41 _ 89. E5
        sub     esp, 40                                 ; 0E43 _ 83. EC, 28
        mov     dword [esp+4H], 32                      ; 0E46 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 160                        ; 0E4E _ C7. 04 24, 000000A0
        call    _io_out8                                ; 0E55 _ E8, 00000000(rel)
        mov     dword [esp+4H], 32                      ; 0E5A _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 0E62 _ C7. 04 24, 00000020
        call    _io_out8                                ; 0E69 _ E8, 00000000(rel)
        mov     dword [esp], 96                         ; 0E6E _ C7. 04 24, 00000060
        call    _io_in8                                 ; 0E75 _ E8, 00000000(rel)
        mov     byte [ebp-9H], al                       ; 0E7A _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 0E7D _ 0F B6. 45, F7
        mov     dword [esp+4H], eax                     ; 0E81 _ 89. 44 24, 04
        mov     dword [esp], _mouseinfo                 ; 0E85 _ C7. 04 24, 00000120(d)
        call    _fifo8_put                              ; 0E8C _ E8, 00000041
        nop                                             ; 0E91 _ 90
        leave                                           ; 0E92 _ C9
        ret                                             ; 0E93 _ C3
; _intHandlerForMouse End of function

_fifo8_init:; Function begin
        push    ebp                                     ; 0E94 _ 55
        mov     ebp, esp                                ; 0E95 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0E97 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 0E9A _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 0E9D _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 0EA0 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 0EA3 _ 8B. 55, 10
        mov     dword [eax], edx                        ; 0EA6 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 0EA8 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 0EAB _ 8B. 55, 0C
        mov     dword [eax+10H], edx                    ; 0EAE _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 0EB1 _ 8B. 45, 08
        mov     dword [eax+14H], 0                      ; 0EB4 _ C7. 40, 14, 00000000
        mov     eax, dword [ebp+8H]                     ; 0EBB _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 0EBE _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 0EC5 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 0EC8 _ C7. 40, 08, 00000000
        nop                                             ; 0ECF _ 90
        pop     ebp                                     ; 0ED0 _ 5D
        ret                                             ; 0ED1 _ C3
; _fifo8_init End of function

_fifo8_put:; Function begin
        push    ebp                                     ; 0ED2 _ 55
        mov     ebp, esp                                ; 0ED3 _ 89. E5
        sub     esp, 4                                  ; 0ED5 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 0ED8 _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 0EDB _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 0EDE _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0EE1 _ 8B. 40, 10
        test    eax, eax                                ; 0EE4 _ 85. C0
        jnz     ?_048                                   ; 0EE6 _ 75, 18
        mov     eax, dword [ebp+8H]                     ; 0EE8 _ 8B. 45, 08
        mov     eax, dword [eax+14H]                    ; 0EEB _ 8B. 40, 14
        or      eax, 01H                                ; 0EEE _ 83. C8, 01
        mov     edx, eax                                ; 0EF1 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0EF3 _ 8B. 45, 08
        mov     dword [eax+14H], edx                    ; 0EF6 _ 89. 50, 14
        mov     eax, 4294967295                         ; 0EF9 _ B8, FFFFFFFF
        jmp     ?_050                                   ; 0EFE _ EB, 50

?_048:  mov     eax, dword [ebp+8H]                     ; 0F00 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 0F03 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 0F05 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 0F08 _ 8B. 40, 04
        add     edx, eax                                ; 0F0B _ 01. C2
        movzx   eax, byte [ebp-4H]                      ; 0F0D _ 0F B6. 45, FC
        mov     byte [edx], al                          ; 0F11 _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 0F13 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 0F16 _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 0F19 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0F1C _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 0F1F _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0F22 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 0F25 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0F28 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 0F2B _ 8B. 40, 0C
        cmp     edx, eax                                ; 0F2E _ 39. C2
        jnz     ?_049                                   ; 0F30 _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 0F32 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 0F35 _ C7. 40, 04, 00000000
?_049:  mov     eax, dword [ebp+8H]                     ; 0F3C _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0F3F _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 0F42 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 0F45 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 0F48 _ 89. 50, 10
        mov     eax, 0                                  ; 0F4B _ B8, 00000000
?_050:  leave                                           ; 0F50 _ C9
        ret                                             ; 0F51 _ C3
; _fifo8_put End of function

_fifo8_get:; Function begin
        push    ebp                                     ; 0F52 _ 55
        mov     ebp, esp                                ; 0F53 _ 89. E5
        sub     esp, 16                                 ; 0F55 _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 0F58 _ 8B. 45, 08
        mov     edx, dword [eax+10H]                    ; 0F5B _ 8B. 50, 10
        mov     eax, dword [ebp+8H]                     ; 0F5E _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 0F61 _ 8B. 40, 0C
        cmp     edx, eax                                ; 0F64 _ 39. C2
        jnz     ?_051                                   ; 0F66 _ 75, 07
        mov     eax, 4294967295                         ; 0F68 _ B8, FFFFFFFF
        jmp     ?_053                                   ; 0F6D _ EB, 51

?_051:  mov     eax, dword [ebp+8H]                     ; 0F6F _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 0F72 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 0F74 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 0F77 _ 8B. 40, 08
        add     eax, edx                                ; 0F7A _ 01. D0
        movzx   eax, byte [eax]                         ; 0F7C _ 0F B6. 00
        movzx   eax, al                                 ; 0F7F _ 0F B6. C0
        mov     dword [ebp-4H], eax                     ; 0F82 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 0F85 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 0F88 _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 0F8B _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0F8E _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 0F91 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 0F94 _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 0F97 _ 8B. 50, 08
        mov     eax, dword [ebp+8H]                     ; 0F9A _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 0F9D _ 8B. 40, 0C
        cmp     edx, eax                                ; 0FA0 _ 39. C2
        jnz     ?_052                                   ; 0FA2 _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 0FA4 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 0FA7 _ C7. 40, 08, 00000000
?_052:  mov     eax, dword [ebp+8H]                     ; 0FAE _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0FB1 _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 0FB4 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0FB7 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 0FBA _ 89. 50, 10
        mov     eax, dword [ebp-4H]                     ; 0FBD _ 8B. 45, FC
?_053:  leave                                           ; 0FC0 _ C9
        ret                                             ; 0FC1 _ C3
; _fifo8_get End of function

_fifo8_status:; Function begin
        push    ebp                                     ; 0FC2 _ 55
        mov     ebp, esp                                ; 0FC3 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0FC5 _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 0FC8 _ 8B. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 0FCB _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0FCE _ 8B. 40, 10
        sub     edx, eax                                ; 0FD1 _ 29. C2
        mov     eax, edx                                ; 0FD3 _ 89. D0
        pop     ebp                                     ; 0FD5 _ 5D
        ret                                             ; 0FD6 _ C3
; _fifo8_status End of function

_mouse_decode:; Function begin
        push    ebp                                     ; 0FD7 _ 55
        mov     ebp, esp                                ; 0FD8 _ 89. E5
        sub     esp, 4                                  ; 0FDA _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 0FDD _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 0FE0 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 0FE3 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 0FE6 _ 0F B6. 40, 03
        test    al, al                                  ; 0FEA _ 84. C0
        jnz     ?_055                                   ; 0FEC _ 75, 17
        cmp     byte [ebp-4H], -6                       ; 0FEE _ 80. 7D, FC, FA
        jnz     ?_054                                   ; 0FF2 _ 75, 07
        mov     eax, dword [ebp+8H]                     ; 0FF4 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 0FF7 _ C6. 40, 03, 01
?_054:  mov     eax, 0                                  ; 0FFB _ B8, 00000000
        jmp     ?_062                                   ; 1000 _ E9, 0000010F

?_055:  mov     eax, dword [ebp+8H]                     ; 1005 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1008 _ 0F B6. 40, 03
        cmp     al, 1                                   ; 100C _ 3C, 01
        jnz     ?_057                                   ; 100E _ 75, 28
        movzx   eax, byte [ebp-4H]                      ; 1010 _ 0F B6. 45, FC
        and     eax, 0C8H                               ; 1014 _ 25, 000000C8
        cmp     eax, 8                                  ; 1019 _ 83. F8, 08
        jnz     ?_056                                   ; 101C _ 75, 10
        mov     edx, dword [ebp+8H]                     ; 101E _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 1021 _ 0F B6. 45, FC
        mov     byte [edx], al                          ; 1025 _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 1027 _ 8B. 45, 08
        mov     byte [eax+3H], 2                        ; 102A _ C6. 40, 03, 02
?_056:  mov     eax, 0                                  ; 102E _ B8, 00000000
        jmp     ?_062                                   ; 1033 _ E9, 000000DC

?_057:  mov     eax, dword [ebp+8H]                     ; 1038 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 103B _ 0F B6. 40, 03
        cmp     al, 2                                   ; 103F _ 3C, 02
        jnz     ?_058                                   ; 1041 _ 75, 1B
        mov     edx, dword [ebp+8H]                     ; 1043 _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 1046 _ 0F B6. 45, FC
        mov     byte [edx+1H], al                       ; 104A _ 88. 42, 01
        mov     eax, dword [ebp+8H]                     ; 104D _ 8B. 45, 08
        mov     byte [eax+3H], 3                        ; 1050 _ C6. 40, 03, 03
        mov     eax, 0                                  ; 1054 _ B8, 00000000
        jmp     ?_062                                   ; 1059 _ E9, 000000B6

?_058:  mov     eax, dword [ebp+8H]                     ; 105E _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1061 _ 0F B6. 40, 03
        cmp     al, 3                                   ; 1065 _ 3C, 03
        jne     ?_061                                   ; 1067 _ 0F 85, 000000A2
        mov     edx, dword [ebp+8H]                     ; 106D _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 1070 _ 0F B6. 45, FC
        mov     byte [edx+2H], al                       ; 1074 _ 88. 42, 02
        mov     eax, dword [ebp+8H]                     ; 1077 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 107A _ C6. 40, 03, 01
        mov     eax, dword [ebp+8H]                     ; 107E _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1081 _ 0F B6. 00
        movzx   eax, al                                 ; 1084 _ 0F B6. C0
        and     eax, 07H                                ; 1087 _ 83. E0, 07
        mov     edx, eax                                ; 108A _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 108C _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 108F _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 1092 _ 8B. 45, 08
        movzx   eax, byte [eax+1H]                      ; 1095 _ 0F B6. 40, 01
        movzx   eax, al                                 ; 1099 _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 109C _ 8B. 55, 08
        mov     dword [edx+4H], eax                     ; 109F _ 89. 42, 04
        mov     eax, dword [ebp+8H]                     ; 10A2 _ 8B. 45, 08
        movzx   eax, byte [eax+2H]                      ; 10A5 _ 0F B6. 40, 02
        movzx   eax, al                                 ; 10A9 _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 10AC _ 8B. 55, 08
        mov     dword [edx+8H], eax                     ; 10AF _ 89. 42, 08
        mov     eax, dword [ebp+8H]                     ; 10B2 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 10B5 _ 0F B6. 00
        movzx   eax, al                                 ; 10B8 _ 0F B6. C0
        and     eax, 10H                                ; 10BB _ 83. E0, 10
        test    eax, eax                                ; 10BE _ 85. C0
        jz      ?_059                                   ; 10C0 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 10C2 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 10C5 _ 8B. 40, 04
        or      eax, 0FFFFFF00H                         ; 10C8 _ 0D, FFFFFF00
        mov     edx, eax                                ; 10CD _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 10CF _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 10D2 _ 89. 50, 04
?_059:  mov     eax, dword [ebp+8H]                     ; 10D5 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 10D8 _ 0F B6. 00
        movzx   eax, al                                 ; 10DB _ 0F B6. C0
        and     eax, 20H                                ; 10DE _ 83. E0, 20
        test    eax, eax                                ; 10E1 _ 85. C0
        jz      ?_060                                   ; 10E3 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 10E5 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 10E8 _ 8B. 40, 08
        or      eax, 0FFFFFF00H                         ; 10EB _ 0D, FFFFFF00
        mov     edx, eax                                ; 10F0 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 10F2 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 10F5 _ 89. 50, 08
?_060:  mov     eax, dword [ebp+8H]                     ; 10F8 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 10FB _ 8B. 40, 08
        neg     eax                                     ; 10FE _ F7. D8
        mov     edx, eax                                ; 1100 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1102 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 1105 _ 89. 50, 08
        mov     eax, 1                                  ; 1108 _ B8, 00000001
        jmp     ?_062                                   ; 110D _ EB, 05

?_061:  mov     eax, 4294967295                         ; 110F _ B8, FFFFFFFF
?_062:  leave                                           ; 1114 _ C9
        ret                                             ; 1115 _ C3
; _mouse_decode End of function

        nop                                             ; 1116 _ 90
        nop                                             ; 1117 _ 90



_keyval:                                                ; byte
        db 30H, 58H                                     ; 0000 _ 0X

?_063:  db 00H                                          ; 0002 _ .

?_064:  db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0003 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 000B _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0013 _ ........
        db 00H, 00H, 00H, 00H, 00H                      ; 001B _ .....

_table_rgb.2068:                                        ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0020 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0028 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0030 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0038 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 0040 _ ........
        db 00H, 84H, 00H, 84H, 84H, 84H, 84H, 84H       ; 0048 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0050 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0058 _ ........

_cursor.2115:                                           ; byte
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

_showPos.2035:                                          ; dword
        resd    1                                       ; 0200

_str.2163:                                              ; byte
        resb    1                                       ; 0204

?_067:  resb    9                                       ; 0205

?_068:  resb    18                                      ; 020E



?_069:                                                  ; byte
        db 46H, 72H, 61H, 67H, 69H, 6CH, 65H, 20H       ; 0000 _ Fragile 
        db 4FH, 53H, 00H, 00H                           ; 0008 _ OS..



        db 47H, 43H, 43H, 3AH, 20H, 28H, 78H, 38H       ; 0000 _ GCC: (x8
        db 36H, 5FH, 36H, 34H, 2DH, 70H, 6FH, 73H       ; 0008 _ 6_64-pos
        db 69H, 78H, 2DH, 73H, 65H, 68H, 2DH, 72H       ; 0010 _ ix-seh-r
        db 65H, 76H, 30H, 2CH, 20H, 42H, 75H, 69H       ; 0018 _ ev0, Bui
        db 6CH, 74H, 20H, 62H, 79H, 20H, 4DH, 69H       ; 0020 _ lt by Mi
        db 6EH, 47H, 57H, 2DH, 57H, 36H, 34H, 20H       ; 0028 _ nGW-W64 
        db 70H, 72H, 6FH, 6AH, 65H, 63H, 74H, 29H       ; 0030 _ project)
        db 20H, 38H, 2EH, 31H, 2EH, 30H, 00H, 00H       ; 0038 _  8.1.0..


