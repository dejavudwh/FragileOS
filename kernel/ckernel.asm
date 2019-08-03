; Disassembly of file: ckernel.o
; Sat Aug  3 22:19:30 2019
; Mode: 32 bits
; Syntax: YASM/NASM
; Instruction set: 80386






.text:  ; Local function

_launch:
        push    ebp                                     ; 0000 _ 55
        mov     ebp, esp                                ; 0001 _ 89. E5
        push    esi                                     ; 0003 _ 56
        push    ebx                                     ; 0004 _ 53
        sub     esp, 64                                 ; 0005 _ 83. EC, 40
        mov     dword [esp], _bootInfo                  ; 0008 _ C7. 04 24, 00000100(d)
        call    _initBootInfo                           ; 000F _ E8, 0000087D
        mov     eax, dword [_bootInfo]                  ; 0014 _ A1, 00000100(d)
        mov     dword [ebp-10H], eax                    ; 0019 _ 89. 45, F0
        movzx   eax, word [?_093]                       ; 001C _ 0F B7. 05, 00000104(d)
        cwde                                            ; 0023 _ 98
        mov     dword [_xsize], eax                     ; 0024 _ A3, 000001F8(d)
        movzx   eax, word [?_094]                       ; 0029 _ 0F B7. 05, 00000106(d)
        cwde                                            ; 0030 _ 98
        mov     dword [_ysize], eax                     ; 0031 _ A3, 000001FC(d)
        mov     dword [esp+8H], _keybuf                 ; 0036 _ C7. 44 24, 08, 00000140(d)
        mov     dword [esp+4H], 32                      ; 003E _ C7. 44 24, 04, 00000020
        mov     dword [esp], _keyinfo                   ; 0046 _ C7. 04 24, 00000108(d)
        call    _fifo8_init                             ; 004D _ E8, 00001222
        mov     dword [esp+8H], _mousebuf               ; 0052 _ C7. 44 24, 08, 00000160(d)
        mov     dword [esp+4H], 128                     ; 005A _ C7. 44 24, 04, 00000080
        mov     dword [esp], _mouseinfo                 ; 0062 _ C7. 04 24, 00000120(d)
        call    _fifo8_init                             ; 0069 _ E8, 00001206
        call    _init_palette                           ; 006E _ E8, 000008A0
        call    _init_keyboard                          ; 0073 _ E8, 0000112B
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
        call    _boxfill8                               ; 00B7 _ E8, 00000922
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
        call    _boxfill8                               ; 00FF _ E8, 000008DA
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
        call    _boxfill8                               ; 0147 _ E8, 00000892
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
        call    _boxfill8                               ; 018F _ E8, 0000084A
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
        call    _boxfill8                               ; 01D3 _ E8, 00000806
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
        call    _boxfill8                               ; 0217 _ E8, 000007C2
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
        call    _boxfill8                               ; 025B _ E8, 0000077E
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
        call    _boxfill8                               ; 029F _ E8, 0000073A
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
        call    _boxfill8                               ; 02E3 _ E8, 000006F6
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
        call    _boxfill8                               ; 0327 _ E8, 000006B2
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
        call    _boxfill8                               ; 0373 _ E8, 00000666
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
        call    _boxfill8                               ; 03BF _ E8, 0000061A
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
        call    _boxfill8                               ; 040B _ E8, 000005CE
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
        call    _boxfill8                               ; 0457 _ E8, 00000582
        mov     eax, dword [_xsize]                     ; 045C _ A1, 000001F8(d)
        mov     dword [esp+14H], ?_084                  ; 0461 _ C7. 44 24, 14, 00000000(d)
        mov     dword [esp+10H], 7                      ; 0469 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 60                     ; 0471 _ C7. 44 24, 0C, 0000003C
        mov     dword [esp+8H], 125                     ; 0479 _ C7. 44 24, 08, 0000007D
        mov     dword [esp+4H], eax                     ; 0481 _ 89. 44 24, 04
        mov     eax, dword [ebp-10H]                    ; 0485 _ 8B. 45, F0
        mov     dword [esp], eax                        ; 0488 _ 89. 04 24
        call    _showString                             ; 048B _ E8, 00000422
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
        call    _init_mouse_cursor                      ; 04CB _ E8, 00000A05
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
        call    _putblock                               ; 0513 _ E8, 00000A93
        call    _get_memory_block_count                 ; 0518 _ E8, 00000000(rel)
        mov     dword [ebp-14H], eax                    ; 051D _ 89. 45, EC
        call    _get_addr_buffer                        ; 0520 _ E8, 00000000(rel)
        mov     dword [ebp-18H], eax                    ; 0525 _ 89. 45, E8
        mov     eax, dword [_memman]                    ; 0528 _ A1, 00000000(d)
        mov     dword [esp], eax                        ; 052D _ 89. 04 24
        call    _memman_init                            ; 0530 _ E8, 00000000(rel)
        mov     eax, dword [_memman]                    ; 0535 _ A1, 00000000(d)
        mov     dword [esp+8H], 1072594944              ; 053A _ C7. 44 24, 08, 3FEE8000
        mov     dword [esp+4H], 17301504                ; 0542 _ C7. 44 24, 04, 01080000
        mov     dword [esp], eax                        ; 054A _ 89. 04 24
        call    _memman_free                            ; 054D _ E8, 00000000(rel)
        mov     eax, dword [_memman]                    ; 0552 _ A1, 00000000(d)
        mov     dword [esp], eax                        ; 0557 _ 89. 04 24
        call    _memman_total                           ; 055A _ E8, 00000000(rel)
        shr     eax, 20                                 ; 055F _ C1. E8, 14
        mov     dword [ebp-1CH], eax                    ; 0562 _ 89. 45, E4
        mov     eax, dword [ebp-1CH]                    ; 0565 _ 8B. 45, E4
        mov     dword [esp], eax                        ; 0568 _ 89. 04 24
        call    _intToHexStr                            ; 056B _ E8, 00000B81
        mov     dword [ebp-20H], eax                    ; 0570 _ 89. 45, E0
        mov     eax, dword [_xsize]                     ; 0573 _ A1, 000001F8(d)
        mov     dword [esp+14H], ?_085                  ; 0578 _ C7. 44 24, 14, 0000000B(d)
        mov     dword [esp+10H], 7                      ; 0580 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 0                      ; 0588 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 0590 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], eax                     ; 0598 _ 89. 44 24, 04
        mov     eax, dword [ebp-10H]                    ; 059C _ 8B. 45, F0
        mov     dword [esp], eax                        ; 059F _ 89. 04 24
        call    _showString                             ; 05A2 _ E8, 0000030B
        mov     eax, dword [_xsize]                     ; 05A7 _ A1, 000001F8(d)
        mov     edx, dword [ebp-20H]                    ; 05AC _ 8B. 55, E0
        mov     dword [esp+14H], edx                    ; 05AF _ 89. 54 24, 14
        mov     dword [esp+10H], 7                      ; 05B3 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 0                      ; 05BB _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 136                     ; 05C3 _ C7. 44 24, 08, 00000088
        mov     dword [esp+4H], eax                     ; 05CB _ 89. 44 24, 04
        mov     eax, dword [ebp-10H]                    ; 05CF _ 8B. 45, F0
        mov     dword [esp], eax                        ; 05D2 _ 89. 04 24
        call    _showString                             ; 05D5 _ E8, 000002D8
        mov     eax, dword [_xsize]                     ; 05DA _ A1, 000001F8(d)
        mov     dword [esp+14H], ?_086                  ; 05DF _ C7. 44 24, 14, 0000001A(d)
        mov     dword [esp+10H], 7                      ; 05E7 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 0                      ; 05EF _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 224                     ; 05F7 _ C7. 44 24, 08, 000000E0
        mov     dword [esp+4H], eax                     ; 05FF _ 89. 44 24, 04
        mov     eax, dword [ebp-10H]                    ; 0603 _ 8B. 45, F0
        mov     dword [esp], eax                        ; 0606 _ 89. 04 24
        call    _showString                             ; 0609 _ E8, 000002A4
        call    _io_sti                                 ; 060E _ E8, 00000000(rel)
        mov     dword [esp], _mdec                      ; 0613 _ C7. 04 24, 000001E0(d)
        call    _enable_mouse                           ; 061A _ E8, 00000BBF
        mov     dword [ebp-24H], 0                      ; 061F _ C7. 45, DC, 00000000
        mov     dword [ebp-0CH], 0                      ; 0626 _ C7. 45, F4, 00000000
?_001:  call    _io_cli                                 ; 062D _ E8, 00000000(rel)
        mov     dword [esp], _keyinfo                   ; 0632 _ C7. 04 24, 00000108(d)
        call    _fifo8_status                           ; 0639 _ E8, 00000D64
        mov     ebx, eax                                ; 063E _ 89. C3
        mov     dword [esp], _mouseinfo                 ; 0640 _ C7. 04 24, 00000120(d)
        call    _fifo8_status                           ; 0647 _ E8, 00000D56
        add     eax, ebx                                ; 064C _ 01. D8
        test    eax, eax                                ; 064E _ 85. C0
        jnz     ?_002                                   ; 0650 _ 75, 07
        call    _io_stihlt                              ; 0652 _ E8, 00000000(rel)
        jmp     ?_001                                   ; 0657 _ EB, D4

?_002:  ; Local function
        mov     dword [esp], _keyinfo                   ; 0659 _ C7. 04 24, 00000108(d)
        call    _fifo8_status                           ; 0660 _ E8, 00000D3D
        test    eax, eax                                ; 0665 _ 85. C0
        jz      ?_003                                   ; 0667 _ 74, 72
        call    _io_sti                                 ; 0669 _ E8, 00000000(rel)
        mov     dword [esp], _keyinfo                   ; 066E _ C7. 04 24, 00000108(d)
        call    _fifo8_get                              ; 0675 _ E8, 00000CB8
        mov     dword [ebp-24H], eax                    ; 067A _ 89. 45, DC
        cmp     dword [ebp-24H], 28                     ; 067D _ 83. 7D, DC, 1C
        jnz     ?_001                                   ; 0681 _ 75, AA
        mov     ecx, dword [_xsize]                     ; 0683 _ 8B. 0D, 000001F8(d)
        mov     edx, dword [ebp-0CH]                    ; 0689 _ 8B. 55, F4
        mov     eax, edx                                ; 068C _ 89. D0
        shl     eax, 2                                  ; 068E _ C1. E0, 02
        add     eax, edx                                ; 0691 _ 01. D0
        shl     eax, 2                                  ; 0693 _ C1. E0, 02
        mov     edx, eax                                ; 0696 _ 89. C2
        mov     eax, dword [ebp-18H]                    ; 0698 _ 8B. 45, E8
        add     eax, edx                                ; 069B _ 01. D0
        mov     dword [esp+10H], 7                      ; 069D _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ecx                    ; 06A5 _ 89. 4C 24, 0C
        mov     edx, dword [ebp-0CH]                    ; 06A9 _ 8B. 55, F4
        mov     dword [esp+8H], edx                     ; 06AC _ 89. 54 24, 08
        mov     edx, dword [ebp-10H]                    ; 06B0 _ 8B. 55, F0
        mov     dword [esp+4H], edx                     ; 06B3 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 06B7 _ 89. 04 24
        call    _showMemoryInfo                         ; 06BA _ E8, 000004F0
        add     dword [ebp-0CH], 1                      ; 06BF _ 83. 45, F4, 01
        mov     eax, dword [ebp-0CH]                    ; 06C3 _ 8B. 45, F4
        cmp     eax, dword [ebp-14H]                    ; 06C6 _ 3B. 45, EC
        jle     ?_001                                   ; 06C9 _ 0F 8E, FFFFFF5E
        mov     dword [ebp-0CH], 0                      ; 06CF _ C7. 45, F4, 00000000
        jmp     ?_001                                   ; 06D6 _ E9, FFFFFF52

?_003:  ; Local function
        mov     dword [esp], _mouseinfo                 ; 06DB _ C7. 04 24, 00000120(d)
        call    _fifo8_status                           ; 06E2 _ E8, 00000CBB
        test    eax, eax                                ; 06E7 _ 85. C0
        je      ?_001                                   ; 06E9 _ 0F 84, FFFFFF3E
        call    _show_mouse_info                        ; 06EF _ E8, 0000013A
        jmp     ?_001                                   ; 06F4 _ E9, FFFFFF34

_computeMousePosition:; Function begin
        push    ebp                                     ; 06F9 _ 55
        mov     ebp, esp                                ; 06FA _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 06FC _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 06FF _ 8B. 50, 04
        mov     eax, dword [_mx]                        ; 0702 _ A1, 000001F0(d)
        add     eax, edx                                ; 0707 _ 01. D0
        mov     dword [_mx], eax                        ; 0709 _ A3, 000001F0(d)
        mov     eax, dword [ebp+8H]                     ; 070E _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 0711 _ 8B. 50, 08
        mov     eax, dword [_my]                        ; 0714 _ A1, 000001F4(d)
        add     eax, edx                                ; 0719 _ 01. D0
        mov     dword [_my], eax                        ; 071B _ A3, 000001F4(d)
        mov     eax, dword [_mx]                        ; 0720 _ A1, 000001F0(d)
        test    eax, eax                                ; 0725 _ 85. C0
        jns     ?_004                                   ; 0727 _ 79, 0A
        mov     dword [_mx], 0                          ; 0729 _ C7. 05, 000001F0(d), 00000000
?_004:  mov     eax, dword [_my]                        ; 0733 _ A1, 000001F4(d)
        test    eax, eax                                ; 0738 _ 85. C0
        jns     ?_005                                   ; 073A _ 79, 0A
        mov     dword [_my], 0                          ; 073C _ C7. 05, 000001F4(d), 00000000
?_005:  mov     eax, dword [_xsize]                     ; 0746 _ A1, 000001F8(d)
        lea     edx, [eax-0FH]                          ; 074B _ 8D. 50, F1
        mov     eax, dword [_mx]                        ; 074E _ A1, 000001F0(d)
        cmp     edx, eax                                ; 0753 _ 39. C2
        jg      ?_006                                   ; 0755 _ 7F, 0D
        mov     eax, dword [_xsize]                     ; 0757 _ A1, 000001F8(d)
        sub     eax, 16                                 ; 075C _ 83. E8, 10
        mov     dword [_mx], eax                        ; 075F _ A3, 000001F0(d)
?_006:  mov     eax, dword [_ysize]                     ; 0764 _ A1, 000001FC(d)
        lea     edx, [eax-0FH]                          ; 0769 _ 8D. 50, F1
        mov     eax, dword [_my]                        ; 076C _ A1, 000001F4(d)
        cmp     edx, eax                                ; 0771 _ 39. C2
        jg      ?_007                                   ; 0773 _ 7F, 0D
        mov     eax, dword [_ysize]                     ; 0775 _ A1, 000001FC(d)
        sub     eax, 16                                 ; 077A _ 83. E8, 10
        mov     dword [_my], eax                        ; 077D _ A3, 000001F4(d)
?_007:  nop                                             ; 0782 _ 90
        pop     ebp                                     ; 0783 _ 5D
        ret                                             ; 0784 _ C3
; _computeMousePosition End of function

_eraseMouse:; Function begin
        push    ebp                                     ; 0785 _ 55
        mov     ebp, esp                                ; 0786 _ 89. E5
        push    esi                                     ; 0788 _ 56
        push    ebx                                     ; 0789 _ 53
        sub     esp, 32                                 ; 078A _ 83. EC, 20
        mov     eax, dword [_my]                        ; 078D _ A1, 000001F4(d)
        lea     esi, [eax+0FH]                          ; 0792 _ 8D. 70, 0F
        mov     eax, dword [_mx]                        ; 0795 _ A1, 000001F0(d)
        lea     ebx, [eax+0FH]                          ; 079A _ 8D. 58, 0F
        mov     ecx, dword [_my]                        ; 079D _ 8B. 0D, 000001F4(d)
        mov     edx, dword [_mx]                        ; 07A3 _ 8B. 15, 000001F0(d)
        mov     eax, dword [_xsize]                     ; 07A9 _ A1, 000001F8(d)
        mov     dword [esp+18H], esi                    ; 07AE _ 89. 74 24, 18
        mov     dword [esp+14H], ebx                    ; 07B2 _ 89. 5C 24, 14
        mov     dword [esp+10H], ecx                    ; 07B6 _ 89. 4C 24, 10
        mov     dword [esp+0CH], edx                    ; 07BA _ 89. 54 24, 0C
        mov     dword [esp+8H], 14                      ; 07BE _ C7. 44 24, 08, 0000000E
        mov     dword [esp+4H], eax                     ; 07C6 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 07CA _ 8B. 45, 08
        mov     dword [esp], eax                        ; 07CD _ 89. 04 24
        call    _boxfill8                               ; 07D0 _ E8, 00000209
        nop                                             ; 07D5 _ 90
        add     esp, 32                                 ; 07D6 _ 83. C4, 20
        pop     ebx                                     ; 07D9 _ 5B
        pop     esi                                     ; 07DA _ 5E
        pop     ebp                                     ; 07DB _ 5D
        ret                                             ; 07DC _ C3
; _eraseMouse End of function

_drawMouse:; Function begin
        push    ebp                                     ; 07DD _ 55
        mov     ebp, esp                                ; 07DE _ 89. E5
        sub     esp, 40                                 ; 07E0 _ 83. EC, 28
        mov     ecx, dword [_my]                        ; 07E3 _ 8B. 0D, 000001F4(d)
        mov     edx, dword [_mx]                        ; 07E9 _ 8B. 15, 000001F0(d)
        mov     eax, dword [_xsize]                     ; 07EF _ A1, 000001F8(d)
        mov     dword [esp+1CH], 16                     ; 07F4 _ C7. 44 24, 1C, 00000010
        mov     dword [esp+18H], _mcursor               ; 07FC _ C7. 44 24, 18, 00000000(d)
        mov     dword [esp+14H], ecx                    ; 0804 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 0808 _ 89. 54 24, 10
        mov     dword [esp+0CH], 16                     ; 080C _ C7. 44 24, 0C, 00000010
        mov     dword [esp+8H], 16                      ; 0814 _ C7. 44 24, 08, 00000010
        mov     dword [esp+4H], eax                     ; 081C _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0820 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0823 _ 89. 04 24
        call    _putblock                               ; 0826 _ E8, 00000780
        nop                                             ; 082B _ 90
        leave                                           ; 082C _ C9
        ret                                             ; 082D _ C3
; _drawMouse End of function

_show_mouse_info:; Function begin
        push    ebp                                     ; 082E _ 55
        mov     ebp, esp                                ; 082F _ 89. E5
        sub     esp, 40                                 ; 0831 _ 83. EC, 28
        mov     eax, dword [_bootInfo]                  ; 0834 _ A1, 00000100(d)
        mov     dword [ebp-0CH], eax                    ; 0839 _ 89. 45, F4
        mov     byte [ebp-0DH], 0                       ; 083C _ C6. 45, F3, 00
        call    _io_sti                                 ; 0840 _ E8, 00000000(rel)
        mov     dword [esp], _mouseinfo                 ; 0845 _ C7. 04 24, 00000120(d)
        call    _fifo8_get                              ; 084C _ E8, 00000AE1
        mov     byte [ebp-0DH], al                      ; 0851 _ 88. 45, F3
        movzx   eax, byte [ebp-0DH]                     ; 0854 _ 0F B6. 45, F3
        mov     dword [esp+4H], eax                     ; 0858 _ 89. 44 24, 04
        mov     dword [esp], _mdec                      ; 085C _ C7. 04 24, 000001E0(d)
        call    _mouse_decode                           ; 0863 _ E8, 00000B4F
        test    eax, eax                                ; 0868 _ 85. C0
        jz      ?_008                                   ; 086A _ 74, 22
        mov     eax, dword [ebp-0CH]                    ; 086C _ 8B. 45, F4
        mov     dword [esp], eax                        ; 086F _ 89. 04 24
        call    _eraseMouse                             ; 0872 _ E8, FFFFFF0E
        mov     dword [esp], _mdec                      ; 0877 _ C7. 04 24, 000001E0(d)
        call    _computeMousePosition                   ; 087E _ E8, FFFFFE76
        mov     eax, dword [ebp-0CH]                    ; 0883 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 0886 _ 89. 04 24
        call    _drawMouse                              ; 0889 _ E8, FFFFFF4F
?_008:  nop                                             ; 088E _ 90
        leave                                           ; 088F _ C9
        ret                                             ; 0890 _ C3
; _show_mouse_info End of function

_initBootInfo:; Function begin
        push    ebp                                     ; 0891 _ 55
        mov     ebp, esp                                ; 0892 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0894 _ 8B. 45, 08
        mov     dword [eax], 655360                     ; 0897 _ C7. 00, 000A0000
        mov     eax, dword [ebp+8H]                     ; 089D _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 320                      ; 08A0 _ 66: C7. 40, 04, 0140
        mov     eax, dword [ebp+8H]                     ; 08A6 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 200                      ; 08A9 _ 66: C7. 40, 06, 00C8
        nop                                             ; 08AF _ 90
        pop     ebp                                     ; 08B0 _ 5D
        ret                                             ; 08B1 _ C3
; _initBootInfo End of function

_showString:; Function begin
        push    ebp                                     ; 08B2 _ 55
        mov     ebp, esp                                ; 08B3 _ 89. E5
        sub     esp, 56                                 ; 08B5 _ 83. EC, 38
        mov     eax, dword [ebp+18H]                    ; 08B8 _ 8B. 45, 18
        mov     byte [ebp-0CH], al                      ; 08BB _ 88. 45, F4
        jmp     ?_010                                   ; 08BE _ EB, 46

?_009:  mov     eax, dword [ebp+1CH]                    ; 08C0 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 08C3 _ 0F B6. 00
        movzx   eax, al                                 ; 08C6 _ 0F B6. C0
        shl     eax, 4                                  ; 08C9 _ C1. E0, 04
        lea     edx, [_systemFont+eax]                  ; 08CC _ 8D. 90, 00000000(d)
        movsx   eax, byte [ebp-0CH]                     ; 08D2 _ 0F BE. 45, F4
        mov     dword [esp+14H], edx                    ; 08D6 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 08DA _ 89. 44 24, 10
        mov     eax, dword [ebp+14H]                    ; 08DE _ 8B. 45, 14
        mov     dword [esp+0CH], eax                    ; 08E1 _ 89. 44 24, 0C
        mov     eax, dword [ebp+10H]                    ; 08E5 _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 08E8 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 08EC _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 08EF _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 08F3 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 08F6 _ 89. 04 24
        call    _showFont8                              ; 08F9 _ E8, 00000130
        add     dword [ebp+10H], 8                      ; 08FE _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 0902 _ 83. 45, 1C, 01
?_010:  mov     eax, dword [ebp+1CH]                    ; 0906 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 0909 _ 0F B6. 00
        test    al, al                                  ; 090C _ 84. C0
        jnz     ?_009                                   ; 090E _ 75, B0
        nop                                             ; 0910 _ 90
        leave                                           ; 0911 _ C9
        ret                                             ; 0912 _ C3
; _showString End of function

_init_palette:; Function begin
        push    ebp                                     ; 0913 _ 55
        mov     ebp, esp                                ; 0914 _ 89. E5
        sub     esp, 24                                 ; 0916 _ 83. EC, 18
        mov     dword [esp+8H], _table_rgb.2104         ; 0919 _ C7. 44 24, 08, 00000020(d)
        mov     dword [esp+4H], 15                      ; 0921 _ C7. 44 24, 04, 0000000F
        mov     dword [esp], 0                          ; 0929 _ C7. 04 24, 00000000
        call    _set_palette                            ; 0930 _ E8, 00000003
        nop                                             ; 0935 _ 90
        leave                                           ; 0936 _ C9
        ret                                             ; 0937 _ C3
; _init_palette End of function

_set_palette:; Function begin
        push    ebp                                     ; 0938 _ 55
        mov     ebp, esp                                ; 0939 _ 89. E5
        sub     esp, 40                                 ; 093B _ 83. EC, 28
        call    _io_load_eflags                         ; 093E _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 0943 _ 89. 45, F0
        call    _io_cli                                 ; 0946 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 094B _ 8B. 45, 08
        mov     dword [esp+4H], eax                     ; 094E _ 89. 44 24, 04
        mov     dword [esp], 968                        ; 0952 _ C7. 04 24, 000003C8
        call    _io_out8                                ; 0959 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 095E _ 8B. 45, 08
        mov     dword [ebp-0CH], eax                    ; 0961 _ 89. 45, F4
        jmp     ?_012                                   ; 0964 _ EB, 62

?_011:  mov     eax, dword [ebp+10H]                    ; 0966 _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 0969 _ 0F B6. 00
        shr     al, 2                                   ; 096C _ C0. E8, 02
        movzx   eax, al                                 ; 096F _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 0972 _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 0976 _ C7. 04 24, 000003C9
        call    _io_out8                                ; 097D _ E8, 00000000(rel)
        mov     eax, dword [ebp+10H]                    ; 0982 _ 8B. 45, 10
        add     eax, 1                                  ; 0985 _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 0988 _ 0F B6. 00
        shr     al, 2                                   ; 098B _ C0. E8, 02
        movzx   eax, al                                 ; 098E _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 0991 _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 0995 _ C7. 04 24, 000003C9
        call    _io_out8                                ; 099C _ E8, 00000000(rel)
        mov     eax, dword [ebp+10H]                    ; 09A1 _ 8B. 45, 10
        add     eax, 2                                  ; 09A4 _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 09A7 _ 0F B6. 00
        shr     al, 2                                   ; 09AA _ C0. E8, 02
        movzx   eax, al                                 ; 09AD _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 09B0 _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 09B4 _ C7. 04 24, 000003C9
        call    _io_out8                                ; 09BB _ E8, 00000000(rel)
        add     dword [ebp+10H], 3                      ; 09C0 _ 83. 45, 10, 03
        add     dword [ebp-0CH], 1                      ; 09C4 _ 83. 45, F4, 01
?_012:  mov     eax, dword [ebp-0CH]                    ; 09C8 _ 8B. 45, F4
        cmp     eax, dword [ebp+0CH]                    ; 09CB _ 3B. 45, 0C
        jle     ?_011                                   ; 09CE _ 7E, 96
        mov     eax, dword [ebp-10H]                    ; 09D0 _ 8B. 45, F0
        mov     dword [esp], eax                        ; 09D3 _ 89. 04 24
        call    _io_store_eflags                        ; 09D6 _ E8, 00000000(rel)
        nop                                             ; 09DB _ 90
        leave                                           ; 09DC _ C9
        ret                                             ; 09DD _ C3
; _set_palette End of function

_boxfill8:; Function begin
        push    ebp                                     ; 09DE _ 55
        mov     ebp, esp                                ; 09DF _ 89. E5
        sub     esp, 20                                 ; 09E1 _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 09E4 _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 09E7 _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 09EA _ 8B. 45, 18
        mov     dword [ebp-8H], eax                     ; 09ED _ 89. 45, F8
        jmp     ?_016                                   ; 09F0 _ EB, 31

?_013:  mov     eax, dword [ebp+14H]                    ; 09F2 _ 8B. 45, 14
        mov     dword [ebp-4H], eax                     ; 09F5 _ 89. 45, FC
        jmp     ?_015                                   ; 09F8 _ EB, 1D

?_014:  mov     eax, dword [ebp-8H]                     ; 09FA _ 8B. 45, F8
        imul    eax, dword [ebp+0CH]                    ; 09FD _ 0F AF. 45, 0C
        mov     edx, dword [ebp-4H]                     ; 0A01 _ 8B. 55, FC
        add     eax, edx                                ; 0A04 _ 01. D0
        mov     edx, eax                                ; 0A06 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0A08 _ 8B. 45, 08
        add     edx, eax                                ; 0A0B _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0A0D _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0A11 _ 88. 02
        add     dword [ebp-4H], 1                       ; 0A13 _ 83. 45, FC, 01
?_015:  mov     eax, dword [ebp-4H]                     ; 0A17 _ 8B. 45, FC
        cmp     eax, dword [ebp+1CH]                    ; 0A1A _ 3B. 45, 1C
        jle     ?_014                                   ; 0A1D _ 7E, DB
        add     dword [ebp-8H], 1                       ; 0A1F _ 83. 45, F8, 01
?_016:  mov     eax, dword [ebp-8H]                     ; 0A23 _ 8B. 45, F8
        cmp     eax, dword [ebp+20H]                    ; 0A26 _ 3B. 45, 20
        jle     ?_013                                   ; 0A29 _ 7E, C7
        nop                                             ; 0A2B _ 90
        leave                                           ; 0A2C _ C9
        ret                                             ; 0A2D _ C3
; _boxfill8 End of function

_showFont8:; Function begin
        push    ebp                                     ; 0A2E _ 55
        mov     ebp, esp                                ; 0A2F _ 89. E5
        sub     esp, 20                                 ; 0A31 _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 0A34 _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 0A37 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 0A3A _ C7. 45, FC, 00000000
        jmp     ?_026                                   ; 0A41 _ E9, 0000015C

?_017:  mov     edx, dword [ebp-4H]                     ; 0A46 _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 0A49 _ 8B. 45, 1C
        add     eax, edx                                ; 0A4C _ 01. D0
        movzx   eax, byte [eax]                         ; 0A4E _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 0A51 _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 0A54 _ 80. 7D, FB, 00
        jns     ?_018                                   ; 0A58 _ 79, 1E
        mov     edx, dword [ebp+14H]                    ; 0A5A _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0A5D _ 8B. 45, FC
        add     eax, edx                                ; 0A60 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0A62 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 0A66 _ 8B. 55, 10
        add     eax, edx                                ; 0A69 _ 01. D0
        mov     edx, eax                                ; 0A6B _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0A6D _ 8B. 45, 08
        add     edx, eax                                ; 0A70 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0A72 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0A76 _ 88. 02
?_018:  movsx   eax, byte [ebp-5H]                      ; 0A78 _ 0F BE. 45, FB
        and     eax, 40H                                ; 0A7C _ 83. E0, 40
        test    eax, eax                                ; 0A7F _ 85. C0
        jz      ?_019                                   ; 0A81 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 0A83 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0A86 _ 8B. 45, FC
        add     eax, edx                                ; 0A89 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0A8B _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 0A8F _ 8B. 55, 10
        add     eax, edx                                ; 0A92 _ 01. D0
        lea     edx, [eax+1H]                           ; 0A94 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0A97 _ 8B. 45, 08
        add     edx, eax                                ; 0A9A _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0A9C _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0AA0 _ 88. 02
?_019:  movsx   eax, byte [ebp-5H]                      ; 0AA2 _ 0F BE. 45, FB
        and     eax, 20H                                ; 0AA6 _ 83. E0, 20
        test    eax, eax                                ; 0AA9 _ 85. C0
        jz      ?_020                                   ; 0AAB _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 0AAD _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0AB0 _ 8B. 45, FC
        add     eax, edx                                ; 0AB3 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0AB5 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 0AB9 _ 8B. 55, 10
        add     eax, edx                                ; 0ABC _ 01. D0
        lea     edx, [eax+2H]                           ; 0ABE _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 0AC1 _ 8B. 45, 08
        add     edx, eax                                ; 0AC4 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0AC6 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0ACA _ 88. 02
?_020:  movsx   eax, byte [ebp-5H]                      ; 0ACC _ 0F BE. 45, FB
        and     eax, 10H                                ; 0AD0 _ 83. E0, 10
        test    eax, eax                                ; 0AD3 _ 85. C0
        jz      ?_021                                   ; 0AD5 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 0AD7 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0ADA _ 8B. 45, FC
        add     eax, edx                                ; 0ADD _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0ADF _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 0AE3 _ 8B. 55, 10
        add     eax, edx                                ; 0AE6 _ 01. D0
        lea     edx, [eax+3H]                           ; 0AE8 _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 0AEB _ 8B. 45, 08
        add     edx, eax                                ; 0AEE _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0AF0 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0AF4 _ 88. 02
?_021:  movsx   eax, byte [ebp-5H]                      ; 0AF6 _ 0F BE. 45, FB
        and     eax, 08H                                ; 0AFA _ 83. E0, 08
        test    eax, eax                                ; 0AFD _ 85. C0
        jz      ?_022                                   ; 0AFF _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 0B01 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0B04 _ 8B. 45, FC
        add     eax, edx                                ; 0B07 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0B09 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 0B0D _ 8B. 55, 10
        add     eax, edx                                ; 0B10 _ 01. D0
        lea     edx, [eax+4H]                           ; 0B12 _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0B15 _ 8B. 45, 08
        add     edx, eax                                ; 0B18 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0B1A _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0B1E _ 88. 02
?_022:  movsx   eax, byte [ebp-5H]                      ; 0B20 _ 0F BE. 45, FB
        and     eax, 04H                                ; 0B24 _ 83. E0, 04
        test    eax, eax                                ; 0B27 _ 85. C0
        jz      ?_023                                   ; 0B29 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 0B2B _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0B2E _ 8B. 45, FC
        add     eax, edx                                ; 0B31 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0B33 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 0B37 _ 8B. 55, 10
        add     eax, edx                                ; 0B3A _ 01. D0
        lea     edx, [eax+5H]                           ; 0B3C _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 0B3F _ 8B. 45, 08
        add     edx, eax                                ; 0B42 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0B44 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0B48 _ 88. 02
?_023:  movsx   eax, byte [ebp-5H]                      ; 0B4A _ 0F BE. 45, FB
        and     eax, 02H                                ; 0B4E _ 83. E0, 02
        test    eax, eax                                ; 0B51 _ 85. C0
        jz      ?_024                                   ; 0B53 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 0B55 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0B58 _ 8B. 45, FC
        add     eax, edx                                ; 0B5B _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0B5D _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 0B61 _ 8B. 55, 10
        add     eax, edx                                ; 0B64 _ 01. D0
        lea     edx, [eax+6H]                           ; 0B66 _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 0B69 _ 8B. 45, 08
        add     edx, eax                                ; 0B6C _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0B6E _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0B72 _ 88. 02
?_024:  movsx   eax, byte [ebp-5H]                      ; 0B74 _ 0F BE. 45, FB
        and     eax, 01H                                ; 0B78 _ 83. E0, 01
        test    eax, eax                                ; 0B7B _ 85. C0
        jz      ?_025                                   ; 0B7D _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 0B7F _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0B82 _ 8B. 45, FC
        add     eax, edx                                ; 0B85 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0B87 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 0B8B _ 8B. 55, 10
        add     eax, edx                                ; 0B8E _ 01. D0
        lea     edx, [eax+7H]                           ; 0B90 _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 0B93 _ 8B. 45, 08
        add     edx, eax                                ; 0B96 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0B98 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0B9C _ 88. 02
?_025:  add     dword [ebp-4H], 1                       ; 0B9E _ 83. 45, FC, 01
?_026:  cmp     dword [ebp-4H], 15                      ; 0BA2 _ 83. 7D, FC, 0F
        jle     ?_017                                   ; 0BA6 _ 0F 8E, FFFFFE9A
        nop                                             ; 0BAC _ 90
        leave                                           ; 0BAD _ C9
        ret                                             ; 0BAE _ C3
; _showFont8 End of function

_showMemoryInfo:; Function begin
        push    ebp                                     ; 0BAF _ 55
        mov     ebp, esp                                ; 0BB0 _ 89. E5
        sub     esp, 88                                 ; 0BB2 _ 83. EC, 58
        mov     dword [ebp-0CH], 0                      ; 0BB5 _ C7. 45, F4, 00000000
        mov     dword [ebp-10H], 0                      ; 0BBC _ C7. 45, F0, 00000000
        mov     dword [ebp-14H], 104                    ; 0BC3 _ C7. 45, EC, 00000068
        mov     dword [ebp-18H], 80                     ; 0BCA _ C7. 45, E8, 00000050
        mov     dword [esp+18H], 100                    ; 0BD1 _ C7. 44 24, 18, 00000064
        mov     eax, dword [ebp+14H]                    ; 0BD9 _ 8B. 45, 14
        mov     dword [esp+14H], eax                    ; 0BDC _ 89. 44 24, 14
        mov     dword [esp+10H], 0                      ; 0BE0 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 0BE8 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 14                      ; 0BF0 _ C7. 44 24, 08, 0000000E
        mov     eax, dword [ebp+14H]                    ; 0BF8 _ 8B. 45, 14
        mov     dword [esp+4H], eax                     ; 0BFB _ 89. 44 24, 04
        mov     eax, dword [ebp+0CH]                    ; 0BFF _ 8B. 45, 0C
        mov     dword [esp], eax                        ; 0C02 _ 89. 04 24
        call    _boxfill8                               ; 0C05 _ E8, FFFFFDD4
        mov     eax, dword [ebp+18H]                    ; 0C0A _ 8B. 45, 18
        movsx   eax, al                                 ; 0C0D _ 0F BE. C0
        mov     dword [esp+14H], ?_087                  ; 0C10 _ C7. 44 24, 14, 0000001E(d)
        mov     dword [esp+10H], eax                    ; 0C18 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 0C1C _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 0C1F _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 0C23 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 0C26 _ 89. 44 24, 08
        mov     eax, dword [ebp+14H]                    ; 0C2A _ 8B. 45, 14
        mov     dword [esp+4H], eax                     ; 0C2D _ 89. 44 24, 04
        mov     eax, dword [ebp+0CH]                    ; 0C31 _ 8B. 45, 0C
        mov     dword [esp], eax                        ; 0C34 _ 89. 04 24
        call    _showString                             ; 0C37 _ E8, FFFFFC76
        mov     eax, dword [ebp+10H]                    ; 0C3C _ 8B. 45, 10
        mov     dword [esp], eax                        ; 0C3F _ 89. 04 24
        call    _intToHexStr                            ; 0C42 _ E8, 000004AA
        mov     dword [ebp-1CH], eax                    ; 0C47 _ 89. 45, E4
        mov     eax, dword [ebp+18H]                    ; 0C4A _ 8B. 45, 18
        movsx   eax, al                                 ; 0C4D _ 0F BE. C0
        mov     edx, dword [ebp-1CH]                    ; 0C50 _ 8B. 55, E4
        mov     dword [esp+14H], edx                    ; 0C53 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 0C57 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 0C5B _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 0C5E _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 0C62 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 0C65 _ 89. 44 24, 08
        mov     eax, dword [ebp+14H]                    ; 0C69 _ 8B. 45, 14
        mov     dword [esp+4H], eax                     ; 0C6C _ 89. 44 24, 04
        mov     eax, dword [ebp+0CH]                    ; 0C70 _ 8B. 45, 0C
        mov     dword [esp], eax                        ; 0C73 _ 89. 04 24
        call    _showString                             ; 0C76 _ E8, FFFFFC37
        add     dword [ebp-10H], 16                     ; 0C7B _ 83. 45, F0, 10
        mov     eax, dword [ebp+18H]                    ; 0C7F _ 8B. 45, 18
        movsx   eax, al                                 ; 0C82 _ 0F BE. C0
        mov     dword [esp+14H], ?_088                  ; 0C85 _ C7. 44 24, 14, 00000028(d)
        mov     dword [esp+10H], eax                    ; 0C8D _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 0C91 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 0C94 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 0C98 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 0C9B _ 89. 44 24, 08
        mov     eax, dword [ebp+14H]                    ; 0C9F _ 8B. 45, 14
        mov     dword [esp+4H], eax                     ; 0CA2 _ 89. 44 24, 04
        mov     eax, dword [ebp+0CH]                    ; 0CA6 _ 8B. 45, 0C
        mov     dword [esp], eax                        ; 0CA9 _ 89. 04 24
        call    _showString                             ; 0CAC _ E8, FFFFFC01
        mov     eax, dword [ebp+8H]                     ; 0CB1 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 0CB4 _ 8B. 00
        mov     dword [esp], eax                        ; 0CB6 _ 89. 04 24
        call    _intToHexStr                            ; 0CB9 _ E8, 00000433
        mov     dword [ebp-20H], eax                    ; 0CBE _ 89. 45, E0
        mov     eax, dword [ebp+18H]                    ; 0CC1 _ 8B. 45, 18
        movsx   eax, al                                 ; 0CC4 _ 0F BE. C0
        mov     edx, dword [ebp-20H]                    ; 0CC7 _ 8B. 55, E0
        mov     dword [esp+14H], edx                    ; 0CCA _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 0CCE _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 0CD2 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 0CD5 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 0CD9 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 0CDC _ 89. 44 24, 08
        mov     eax, dword [ebp+14H]                    ; 0CE0 _ 8B. 45, 14
        mov     dword [esp+4H], eax                     ; 0CE3 _ 89. 44 24, 04
        mov     eax, dword [ebp+0CH]                    ; 0CE7 _ 8B. 45, 0C
        mov     dword [esp], eax                        ; 0CEA _ 89. 04 24
        call    _showString                             ; 0CED _ E8, FFFFFBC0
        add     dword [ebp-10H], 16                     ; 0CF2 _ 83. 45, F0, 10
        mov     eax, dword [ebp+18H]                    ; 0CF6 _ 8B. 45, 18
        movsx   eax, al                                 ; 0CF9 _ 0F BE. C0
        mov     dword [esp+14H], ?_089                  ; 0CFC _ C7. 44 24, 14, 00000034(d)
        mov     dword [esp+10H], eax                    ; 0D04 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 0D08 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 0D0B _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 0D0F _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 0D12 _ 89. 44 24, 08
        mov     eax, dword [ebp+14H]                    ; 0D16 _ 8B. 45, 14
        mov     dword [esp+4H], eax                     ; 0D19 _ 89. 44 24, 04
        mov     eax, dword [ebp+0CH]                    ; 0D1D _ 8B. 45, 0C
        mov     dword [esp], eax                        ; 0D20 _ 89. 04 24
        call    _showString                             ; 0D23 _ E8, FFFFFB8A
        mov     eax, dword [ebp+8H]                     ; 0D28 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 0D2B _ 8B. 40, 04
        mov     dword [esp], eax                        ; 0D2E _ 89. 04 24
        call    _intToHexStr                            ; 0D31 _ E8, 000003BB
        mov     dword [ebp-24H], eax                    ; 0D36 _ 89. 45, DC
        mov     eax, dword [ebp+18H]                    ; 0D39 _ 8B. 45, 18
        movsx   eax, al                                 ; 0D3C _ 0F BE. C0
        mov     edx, dword [ebp-24H]                    ; 0D3F _ 8B. 55, DC
        mov     dword [esp+14H], edx                    ; 0D42 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 0D46 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 0D4A _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 0D4D _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 0D51 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 0D54 _ 89. 44 24, 08
        mov     eax, dword [ebp+14H]                    ; 0D58 _ 8B. 45, 14
        mov     dword [esp+4H], eax                     ; 0D5B _ 89. 44 24, 04
        mov     eax, dword [ebp+0CH]                    ; 0D5F _ 8B. 45, 0C
        mov     dword [esp], eax                        ; 0D62 _ 89. 04 24
        call    _showString                             ; 0D65 _ E8, FFFFFB48
        add     dword [ebp-10H], 16                     ; 0D6A _ 83. 45, F0, 10
        mov     eax, dword [ebp+18H]                    ; 0D6E _ 8B. 45, 18
        movsx   eax, al                                 ; 0D71 _ 0F BE. C0
        mov     dword [esp+14H], ?_090                  ; 0D74 _ C7. 44 24, 14, 00000040(d)
        mov     dword [esp+10H], eax                    ; 0D7C _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 0D80 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 0D83 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 0D87 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 0D8A _ 89. 44 24, 08
        mov     eax, dword [ebp+14H]                    ; 0D8E _ 8B. 45, 14
        mov     dword [esp+4H], eax                     ; 0D91 _ 89. 44 24, 04
        mov     eax, dword [ebp+0CH]                    ; 0D95 _ 8B. 45, 0C
        mov     dword [esp], eax                        ; 0D98 _ 89. 04 24
        call    _showString                             ; 0D9B _ E8, FFFFFB12
        mov     eax, dword [ebp+8H]                     ; 0DA0 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 0DA3 _ 8B. 40, 08
        mov     dword [esp], eax                        ; 0DA6 _ 89. 04 24
        call    _intToHexStr                            ; 0DA9 _ E8, 00000343
        mov     dword [ebp-28H], eax                    ; 0DAE _ 89. 45, D8
        mov     eax, dword [ebp+18H]                    ; 0DB1 _ 8B. 45, 18
        movsx   eax, al                                 ; 0DB4 _ 0F BE. C0
        mov     edx, dword [ebp-28H]                    ; 0DB7 _ 8B. 55, D8
        mov     dword [esp+14H], edx                    ; 0DBA _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 0DBE _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 0DC2 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 0DC5 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 0DC9 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 0DCC _ 89. 44 24, 08
        mov     eax, dword [ebp+14H]                    ; 0DD0 _ 8B. 45, 14
        mov     dword [esp+4H], eax                     ; 0DD3 _ 89. 44 24, 04
        mov     eax, dword [ebp+0CH]                    ; 0DD7 _ 8B. 45, 0C
        mov     dword [esp], eax                        ; 0DDA _ 89. 04 24
        call    _showString                             ; 0DDD _ E8, FFFFFAD0
        add     dword [ebp-10H], 16                     ; 0DE2 _ 83. 45, F0, 10
        mov     eax, dword [ebp+18H]                    ; 0DE6 _ 8B. 45, 18
        movsx   eax, al                                 ; 0DE9 _ 0F BE. C0
        mov     dword [esp+14H], ?_091                  ; 0DEC _ C7. 44 24, 14, 0000004C(d)
        mov     dword [esp+10H], eax                    ; 0DF4 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 0DF8 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 0DFB _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 0DFF _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 0E02 _ 89. 44 24, 08
        mov     eax, dword [ebp+14H]                    ; 0E06 _ 8B. 45, 14
        mov     dword [esp+4H], eax                     ; 0E09 _ 89. 44 24, 04
        mov     eax, dword [ebp+0CH]                    ; 0E0D _ 8B. 45, 0C
        mov     dword [esp], eax                        ; 0E10 _ 89. 04 24
        call    _showString                             ; 0E13 _ E8, FFFFFA9A
        mov     eax, dword [ebp+8H]                     ; 0E18 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 0E1B _ 8B. 40, 0C
        mov     dword [esp], eax                        ; 0E1E _ 89. 04 24
        call    _intToHexStr                            ; 0E21 _ E8, 000002CB
        mov     dword [ebp-2CH], eax                    ; 0E26 _ 89. 45, D4
        mov     eax, dword [ebp+18H]                    ; 0E29 _ 8B. 45, 18
        movsx   eax, al                                 ; 0E2C _ 0F BE. C0
        mov     edx, dword [ebp-2CH]                    ; 0E2F _ 8B. 55, D4
        mov     dword [esp+14H], edx                    ; 0E32 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 0E36 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 0E3A _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 0E3D _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 0E41 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 0E44 _ 89. 44 24, 08
        mov     eax, dword [ebp+14H]                    ; 0E48 _ 8B. 45, 14
        mov     dword [esp+4H], eax                     ; 0E4B _ 89. 44 24, 04
        mov     eax, dword [ebp+0CH]                    ; 0E4F _ 8B. 45, 0C
        mov     dword [esp], eax                        ; 0E52 _ 89. 04 24
        call    _showString                             ; 0E55 _ E8, FFFFFA58
        add     dword [ebp-10H], 16                     ; 0E5A _ 83. 45, F0, 10
        mov     eax, dword [ebp+18H]                    ; 0E5E _ 8B. 45, 18
        movsx   eax, al                                 ; 0E61 _ 0F BE. C0
        mov     dword [esp+14H], ?_092                  ; 0E64 _ C7. 44 24, 14, 00000059(d)
        mov     dword [esp+10H], eax                    ; 0E6C _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 0E70 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 0E73 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 0E77 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 0E7A _ 89. 44 24, 08
        mov     eax, dword [ebp+14H]                    ; 0E7E _ 8B. 45, 14
        mov     dword [esp+4H], eax                     ; 0E81 _ 89. 44 24, 04
        mov     eax, dword [ebp+0CH]                    ; 0E85 _ 8B. 45, 0C
        mov     dword [esp], eax                        ; 0E88 _ 89. 04 24
        call    _showString                             ; 0E8B _ E8, FFFFFA22
        mov     eax, dword [ebp+8H]                     ; 0E90 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0E93 _ 8B. 40, 10
        mov     dword [esp], eax                        ; 0E96 _ 89. 04 24
        call    _intToHexStr                            ; 0E99 _ E8, 00000253
        mov     dword [ebp-30H], eax                    ; 0E9E _ 89. 45, D0
        mov     eax, dword [ebp+18H]                    ; 0EA1 _ 8B. 45, 18
        movsx   eax, al                                 ; 0EA4 _ 0F BE. C0
        mov     edx, dword [ebp-30H]                    ; 0EA7 _ 8B. 55, D0
        mov     dword [esp+14H], edx                    ; 0EAA _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 0EAE _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 0EB2 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 0EB5 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 0EB9 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 0EBC _ 89. 44 24, 08
        mov     eax, dword [ebp+14H]                    ; 0EC0 _ 8B. 45, 14
        mov     dword [esp+4H], eax                     ; 0EC3 _ 89. 44 24, 04
        mov     eax, dword [ebp+0CH]                    ; 0EC7 _ 8B. 45, 0C
        mov     dword [esp], eax                        ; 0ECA _ 89. 04 24
        call    _showString                             ; 0ECD _ E8, FFFFF9E0
        nop                                             ; 0ED2 _ 90
        leave                                           ; 0ED3 _ C9
        ret                                             ; 0ED4 _ C3
; _showMemoryInfo End of function

_init_mouse_cursor:; Function begin
        push    ebp                                     ; 0ED5 _ 55
        mov     ebp, esp                                ; 0ED6 _ 89. E5
        sub     esp, 20                                 ; 0ED8 _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 0EDB _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 0EDE _ 88. 45, EC
        mov     dword [ebp-8H], 0                       ; 0EE1 _ C7. 45, F8, 00000000
        jmp     ?_033                                   ; 0EE8 _ E9, 000000B1

?_027:  mov     dword [ebp-4H], 0                       ; 0EED _ C7. 45, FC, 00000000
        jmp     ?_032                                   ; 0EF4 _ E9, 00000097

?_028:  mov     eax, dword [ebp-8H]                     ; 0EF9 _ 8B. 45, F8
        shl     eax, 4                                  ; 0EFC _ C1. E0, 04
        mov     edx, eax                                ; 0EFF _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 0F01 _ 8B. 45, FC
        add     eax, edx                                ; 0F04 _ 01. D0
        add     eax, _cursor.2168                       ; 0F06 _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 0F0B _ 0F B6. 00
        cmp     al, 42                                  ; 0F0E _ 3C, 2A
        jnz     ?_029                                   ; 0F10 _ 75, 17
        mov     eax, dword [ebp-8H]                     ; 0F12 _ 8B. 45, F8
        shl     eax, 4                                  ; 0F15 _ C1. E0, 04
        mov     edx, eax                                ; 0F18 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 0F1A _ 8B. 45, FC
        add     eax, edx                                ; 0F1D _ 01. D0
        mov     edx, eax                                ; 0F1F _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0F21 _ 8B. 45, 08
        add     eax, edx                                ; 0F24 _ 01. D0
        mov     byte [eax], 0                           ; 0F26 _ C6. 00, 00
?_029:  mov     eax, dword [ebp-8H]                     ; 0F29 _ 8B. 45, F8
        shl     eax, 4                                  ; 0F2C _ C1. E0, 04
        mov     edx, eax                                ; 0F2F _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 0F31 _ 8B. 45, FC
        add     eax, edx                                ; 0F34 _ 01. D0
        add     eax, _cursor.2168                       ; 0F36 _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 0F3B _ 0F B6. 00
        cmp     al, 79                                  ; 0F3E _ 3C, 4F
        jnz     ?_030                                   ; 0F40 _ 75, 17
        mov     eax, dword [ebp-8H]                     ; 0F42 _ 8B. 45, F8
        shl     eax, 4                                  ; 0F45 _ C1. E0, 04
        mov     edx, eax                                ; 0F48 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 0F4A _ 8B. 45, FC
        add     eax, edx                                ; 0F4D _ 01. D0
        mov     edx, eax                                ; 0F4F _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0F51 _ 8B. 45, 08
        add     eax, edx                                ; 0F54 _ 01. D0
        mov     byte [eax], 7                           ; 0F56 _ C6. 00, 07
?_030:  mov     eax, dword [ebp-8H]                     ; 0F59 _ 8B. 45, F8
        shl     eax, 4                                  ; 0F5C _ C1. E0, 04
        mov     edx, eax                                ; 0F5F _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 0F61 _ 8B. 45, FC
        add     eax, edx                                ; 0F64 _ 01. D0
        add     eax, _cursor.2168                       ; 0F66 _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 0F6B _ 0F B6. 00
        cmp     al, 46                                  ; 0F6E _ 3C, 2E
        jnz     ?_031                                   ; 0F70 _ 75, 1A
        mov     eax, dword [ebp-8H]                     ; 0F72 _ 8B. 45, F8
        shl     eax, 4                                  ; 0F75 _ C1. E0, 04
        mov     edx, eax                                ; 0F78 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 0F7A _ 8B. 45, FC
        add     eax, edx                                ; 0F7D _ 01. D0
        mov     edx, eax                                ; 0F7F _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0F81 _ 8B. 45, 08
        add     edx, eax                                ; 0F84 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0F86 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0F8A _ 88. 02
?_031:  add     dword [ebp-4H], 1                       ; 0F8C _ 83. 45, FC, 01
?_032:  cmp     dword [ebp-4H], 15                      ; 0F90 _ 83. 7D, FC, 0F
        jle     ?_028                                   ; 0F94 _ 0F 8E, FFFFFF5F
        add     dword [ebp-8H], 1                       ; 0F9A _ 83. 45, F8, 01
?_033:  cmp     dword [ebp-8H], 15                      ; 0F9E _ 83. 7D, F8, 0F
        jle     ?_027                                   ; 0FA2 _ 0F 8E, FFFFFF45
        nop                                             ; 0FA8 _ 90
        leave                                           ; 0FA9 _ C9
        ret                                             ; 0FAA _ C3
; _init_mouse_cursor End of function

_putblock:; Function begin
        push    ebp                                     ; 0FAB _ 55
        mov     ebp, esp                                ; 0FAC _ 89. E5
        push    ebx                                     ; 0FAE _ 53
        sub     esp, 16                                 ; 0FAF _ 83. EC, 10
        mov     dword [ebp-0CH], 0                      ; 0FB2 _ C7. 45, F4, 00000000
        jmp     ?_037                                   ; 0FB9 _ EB, 4E

?_034:  mov     dword [ebp-8H], 0                       ; 0FBB _ C7. 45, F8, 00000000
        jmp     ?_036                                   ; 0FC2 _ EB, 39

?_035:  mov     eax, dword [ebp-0CH]                    ; 0FC4 _ 8B. 45, F4
        imul    eax, dword [ebp+24H]                    ; 0FC7 _ 0F AF. 45, 24
        mov     edx, dword [ebp-8H]                     ; 0FCB _ 8B. 55, F8
        add     eax, edx                                ; 0FCE _ 01. D0
        mov     edx, eax                                ; 0FD0 _ 89. C2
        mov     eax, dword [ebp+20H]                    ; 0FD2 _ 8B. 45, 20
        add     eax, edx                                ; 0FD5 _ 01. D0
        mov     ecx, dword [ebp+1CH]                    ; 0FD7 _ 8B. 4D, 1C
        mov     edx, dword [ebp-0CH]                    ; 0FDA _ 8B. 55, F4
        add     edx, ecx                                ; 0FDD _ 01. CA
        imul    edx, dword [ebp+0CH]                    ; 0FDF _ 0F AF. 55, 0C
        mov     ebx, dword [ebp+18H]                    ; 0FE3 _ 8B. 5D, 18
        mov     ecx, dword [ebp-8H]                     ; 0FE6 _ 8B. 4D, F8
        add     ecx, ebx                                ; 0FE9 _ 01. D9
        add     edx, ecx                                ; 0FEB _ 01. CA
        mov     ecx, edx                                ; 0FED _ 89. D1
        mov     edx, dword [ebp+8H]                     ; 0FEF _ 8B. 55, 08
        add     edx, ecx                                ; 0FF2 _ 01. CA
        movzx   eax, byte [eax]                         ; 0FF4 _ 0F B6. 00
        mov     byte [edx], al                          ; 0FF7 _ 88. 02
        add     dword [ebp-8H], 1                       ; 0FF9 _ 83. 45, F8, 01
?_036:  mov     eax, dword [ebp-8H]                     ; 0FFD _ 8B. 45, F8
        cmp     eax, dword [ebp+10H]                    ; 1000 _ 3B. 45, 10
        jl      ?_035                                   ; 1003 _ 7C, BF
        add     dword [ebp-0CH], 1                      ; 1005 _ 83. 45, F4, 01
?_037:  mov     eax, dword [ebp-0CH]                    ; 1009 _ 8B. 45, F4
        cmp     eax, dword [ebp+14H]                    ; 100C _ 3B. 45, 14
        jl      ?_034                                   ; 100F _ 7C, AA
        nop                                             ; 1011 _ 90
        add     esp, 16                                 ; 1012 _ 83. C4, 10
        pop     ebx                                     ; 1015 _ 5B
        pop     ebp                                     ; 1016 _ 5D
        ret                                             ; 1017 _ C3
; _putblock End of function

_intHandlerFromC:; Function begin
        push    ebp                                     ; 1018 _ 55
        mov     ebp, esp                                ; 1019 _ 89. E5
        sub     esp, 40                                 ; 101B _ 83. EC, 28
        mov     eax, dword [_bootInfo]                  ; 101E _ A1, 00000100(d)
        mov     dword [ebp-0CH], eax                    ; 1023 _ 89. 45, F4
        movzx   eax, word [?_093]                       ; 1026 _ 0F B7. 05, 00000104(d)
        cwde                                            ; 102D _ 98
        mov     dword [ebp-10H], eax                    ; 102E _ 89. 45, F0
        movzx   eax, word [?_094]                       ; 1031 _ 0F B7. 05, 00000106(d)
        cwde                                            ; 1038 _ 98
        mov     dword [ebp-14H], eax                    ; 1039 _ 89. 45, EC
        mov     dword [esp+4H], 32                      ; 103C _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 1044 _ C7. 04 24, 00000020
        call    _io_out8                                ; 104B _ E8, 00000000(rel)
        mov     byte [ebp-15H], 0                       ; 1050 _ C6. 45, EB, 00
        mov     dword [esp], 96                         ; 1054 _ C7. 04 24, 00000060
        call    _io_in8                                 ; 105B _ E8, 00000000(rel)
        mov     byte [ebp-15H], al                      ; 1060 _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 1063 _ 0F B6. 45, EB
        mov     dword [esp+4H], eax                     ; 1067 _ 89. 44 24, 04
        mov     dword [esp], _keyinfo                   ; 106B _ C7. 04 24, 00000108(d)
        call    _fifo8_put                              ; 1072 _ E8, 0000023B
        nop                                             ; 1077 _ 90
        leave                                           ; 1078 _ C9
        ret                                             ; 1079 _ C3
; _intHandlerFromC End of function

_charToHexVal:; Function begin
        push    ebp                                     ; 107A _ 55
        mov     ebp, esp                                ; 107B _ 89. E5
        sub     esp, 4                                  ; 107D _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 1080 _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 1083 _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 1086 _ 80. 7D, FC, 09
        jle     ?_038                                   ; 108A _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 108C _ 0F B6. 45, FC
        add     eax, 55                                 ; 1090 _ 83. C0, 37
        jmp     ?_039                                   ; 1093 _ EB, 07

?_038:  movzx   eax, byte [ebp-4H]                      ; 1095 _ 0F B6. 45, FC
        add     eax, 48                                 ; 1099 _ 83. C0, 30
?_039:  leave                                           ; 109C _ C9
        ret                                             ; 109D _ C3
; _charToHexVal End of function

_charToHexStr:; Function begin
        push    ebp                                     ; 109E _ 55
        mov     ebp, esp                                ; 109F _ 89. E5
        sub     esp, 24                                 ; 10A1 _ 83. EC, 18
        mov     eax, dword [ebp+8H]                     ; 10A4 _ 8B. 45, 08
        mov     byte [ebp-14H], al                      ; 10A7 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 10AA _ C7. 45, FC, 00000000
        movzx   eax, byte [ebp-14H]                     ; 10B1 _ 0F B6. 45, EC
        and     eax, 0FH                                ; 10B5 _ 83. E0, 0F
        mov     byte [ebp-5H], al                       ; 10B8 _ 88. 45, FB
        movsx   eax, byte [ebp-5H]                      ; 10BB _ 0F BE. 45, FB
        mov     dword [esp], eax                        ; 10BF _ 89. 04 24
        call    _charToHexVal                           ; 10C2 _ E8, FFFFFFB3
        mov     byte [?_083], al                        ; 10C7 _ A2, 00000007(d)
        movzx   eax, byte [ebp-14H]                     ; 10CC _ 0F B6. 45, EC
        shr     al, 4                                   ; 10D0 _ C0. E8, 04
        mov     byte [ebp-14H], al                      ; 10D3 _ 88. 45, EC
        movzx   eax, byte [ebp-14H]                     ; 10D6 _ 0F B6. 45, EC
        movsx   eax, al                                 ; 10DA _ 0F BE. C0
        mov     dword [esp], eax                        ; 10DD _ 89. 04 24
        call    _charToHexVal                           ; 10E0 _ E8, FFFFFF95
        mov     byte [?_082], al                        ; 10E5 _ A2, 00000006(d)
        mov     eax, _keyval                            ; 10EA _ B8, 00000004(d)
        leave                                           ; 10EF _ C9
        ret                                             ; 10F0 _ C3
; _charToHexStr End of function

_intToHexStr:; Function begin
        push    ebp                                     ; 10F1 _ 55
        mov     ebp, esp                                ; 10F2 _ 89. E5
        sub     esp, 16                                 ; 10F4 _ 83. EC, 10
        mov     byte [_str.2216], 48                    ; 10F7 _ C6. 05, 00000200(d), 30
        mov     byte [?_095], 88                        ; 10FE _ C6. 05, 00000201(d), 58
        mov     byte [?_096], 0                         ; 1105 _ C6. 05, 0000020A(d), 00
        mov     dword [ebp-4H], 2                       ; 110C _ C7. 45, FC, 00000002
        jmp     ?_041                                   ; 1113 _ EB, 0F

?_040:  mov     eax, dword [ebp-4H]                     ; 1115 _ 8B. 45, FC
        add     eax, _str.2216                          ; 1118 _ 05, 00000200(d)
        mov     byte [eax], 48                          ; 111D _ C6. 00, 30
        add     dword [ebp-4H], 1                       ; 1120 _ 83. 45, FC, 01
?_041:  cmp     dword [ebp-4H], 9                       ; 1124 _ 83. 7D, FC, 09
        jle     ?_040                                   ; 1128 _ 7E, EB
        mov     dword [ebp-8H], 9                       ; 112A _ C7. 45, F8, 00000009
        jmp     ?_044                                   ; 1131 _ EB, 3E

?_042:  mov     eax, dword [ebp+8H]                     ; 1133 _ 8B. 45, 08
        and     eax, 0FH                                ; 1136 _ 83. E0, 0F
        mov     dword [ebp-0CH], eax                    ; 1139 _ 89. 45, F4
        mov     eax, dword [ebp+8H]                     ; 113C _ 8B. 45, 08
        shr     eax, 4                                  ; 113F _ C1. E8, 04
        mov     dword [ebp+8H], eax                     ; 1142 _ 89. 45, 08
        cmp     dword [ebp-0CH], 9                      ; 1145 _ 83. 7D, F4, 09
        jle     ?_043                                   ; 1149 _ 7E, 14
        mov     eax, dword [ebp-0CH]                    ; 114B _ 8B. 45, F4
        add     eax, 55                                 ; 114E _ 83. C0, 37
        mov     edx, eax                                ; 1151 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1153 _ 8B. 45, F8
        add     eax, _str.2216                          ; 1156 _ 05, 00000200(d)
        mov     byte [eax], dl                          ; 115B _ 88. 10
        jmp     ?_044                                   ; 115D _ EB, 12

?_043:  mov     eax, dword [ebp-0CH]                    ; 115F _ 8B. 45, F4
        add     eax, 48                                 ; 1162 _ 83. C0, 30
        mov     edx, eax                                ; 1165 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1167 _ 8B. 45, F8
        add     eax, _str.2216                          ; 116A _ 05, 00000200(d)
        mov     byte [eax], dl                          ; 116F _ 88. 10
?_044:  cmp     dword [ebp-8H], 1                       ; 1171 _ 83. 7D, F8, 01
        jle     ?_045                                   ; 1175 _ 7E, 06
        cmp     dword [ebp+8H], 0                       ; 1177 _ 83. 7D, 08, 00
        jnz     ?_042                                   ; 117B _ 75, B6
?_045:  mov     eax, _str.2216                          ; 117D _ B8, 00000200(d)
        leave                                           ; 1182 _ C9
        ret                                             ; 1183 _ C3
; _intToHexStr End of function

_wait_KBC_sendready:; Function begin
        push    ebp                                     ; 1184 _ 55
        mov     ebp, esp                                ; 1185 _ 89. E5
        sub     esp, 24                                 ; 1187 _ 83. EC, 18
?_046:  mov     dword [esp], 100                        ; 118A _ C7. 04 24, 00000064
        call    _io_in8                                 ; 1191 _ E8, 00000000(rel)
        and     eax, 02H                                ; 1196 _ 83. E0, 02
        test    eax, eax                                ; 1199 _ 85. C0
        jz      ?_047                                   ; 119B _ 74, 02
        jmp     ?_046                                   ; 119D _ EB, EB
; _wait_KBC_sendready End of function

?_047:  ; Local function
        nop                                             ; 119F _ 90
        nop                                             ; 11A0 _ 90
        leave                                           ; 11A1 _ C9
        ret                                             ; 11A2 _ C3

_init_keyboard:; Function begin
        push    ebp                                     ; 11A3 _ 55
        mov     ebp, esp                                ; 11A4 _ 89. E5
        sub     esp, 24                                 ; 11A6 _ 83. EC, 18
        call    _wait_KBC_sendready                     ; 11A9 _ E8, FFFFFFD6
        mov     dword [esp+4H], 96                      ; 11AE _ C7. 44 24, 04, 00000060
        mov     dword [esp], 100                        ; 11B6 _ C7. 04 24, 00000064
        call    _io_out8                                ; 11BD _ E8, 00000000(rel)
        call    _wait_KBC_sendready                     ; 11C2 _ E8, FFFFFFBD
        mov     dword [esp+4H], 71                      ; 11C7 _ C7. 44 24, 04, 00000047
        mov     dword [esp], 96                         ; 11CF _ C7. 04 24, 00000060
        call    _io_out8                                ; 11D6 _ E8, 00000000(rel)
        nop                                             ; 11DB _ 90
        leave                                           ; 11DC _ C9
        ret                                             ; 11DD _ C3
; _init_keyboard End of function

_enable_mouse:; Function begin
        push    ebp                                     ; 11DE _ 55
        mov     ebp, esp                                ; 11DF _ 89. E5
        sub     esp, 24                                 ; 11E1 _ 83. EC, 18
        call    _wait_KBC_sendready                     ; 11E4 _ E8, FFFFFF9B
        mov     dword [esp+4H], 212                     ; 11E9 _ C7. 44 24, 04, 000000D4
        mov     dword [esp], 100                        ; 11F1 _ C7. 04 24, 00000064
        call    _io_out8                                ; 11F8 _ E8, 00000000(rel)
        call    _wait_KBC_sendready                     ; 11FD _ E8, FFFFFF82
        mov     dword [esp+4H], 244                     ; 1202 _ C7. 44 24, 04, 000000F4
        mov     dword [esp], 96                         ; 120A _ C7. 04 24, 00000060
        call    _io_out8                                ; 1211 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 1216 _ 8B. 45, 08
        mov     byte [eax+3H], 0                        ; 1219 _ C6. 40, 03, 00
        nop                                             ; 121D _ 90
        leave                                           ; 121E _ C9
        ret                                             ; 121F _ C3
; _enable_mouse End of function

_intHandlerForMouse:; Function begin
        push    ebp                                     ; 1220 _ 55
        mov     ebp, esp                                ; 1221 _ 89. E5
        sub     esp, 40                                 ; 1223 _ 83. EC, 28
        mov     dword [esp+4H], 32                      ; 1226 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 160                        ; 122E _ C7. 04 24, 000000A0
        call    _io_out8                                ; 1235 _ E8, 00000000(rel)
        mov     dword [esp+4H], 32                      ; 123A _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 1242 _ C7. 04 24, 00000020
        call    _io_out8                                ; 1249 _ E8, 00000000(rel)
        mov     dword [esp], 96                         ; 124E _ C7. 04 24, 00000060
        call    _io_in8                                 ; 1255 _ E8, 00000000(rel)
        mov     byte [ebp-9H], al                       ; 125A _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 125D _ 0F B6. 45, F7
        mov     dword [esp+4H], eax                     ; 1261 _ 89. 44 24, 04
        mov     dword [esp], _mouseinfo                 ; 1265 _ C7. 04 24, 00000120(d)
        call    _fifo8_put                              ; 126C _ E8, 00000041
        nop                                             ; 1271 _ 90
        leave                                           ; 1272 _ C9
        ret                                             ; 1273 _ C3
; _intHandlerForMouse End of function

_fifo8_init:; Function begin
        push    ebp                                     ; 1274 _ 55
        mov     ebp, esp                                ; 1275 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 1277 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 127A _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 127D _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 1280 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 1283 _ 8B. 55, 10
        mov     dword [eax], edx                        ; 1286 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 1288 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 128B _ 8B. 55, 0C
        mov     dword [eax+10H], edx                    ; 128E _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 1291 _ 8B. 45, 08
        mov     dword [eax+14H], 0                      ; 1294 _ C7. 40, 14, 00000000
        mov     eax, dword [ebp+8H]                     ; 129B _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 129E _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 12A5 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 12A8 _ C7. 40, 08, 00000000
        nop                                             ; 12AF _ 90
        pop     ebp                                     ; 12B0 _ 5D
        ret                                             ; 12B1 _ C3
; _fifo8_init End of function

_fifo8_put:; Function begin
        push    ebp                                     ; 12B2 _ 55
        mov     ebp, esp                                ; 12B3 _ 89. E5
        sub     esp, 4                                  ; 12B5 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 12B8 _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 12BB _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 12BE _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 12C1 _ 8B. 40, 10
        test    eax, eax                                ; 12C4 _ 85. C0
        jnz     ?_048                                   ; 12C6 _ 75, 18
        mov     eax, dword [ebp+8H]                     ; 12C8 _ 8B. 45, 08
        mov     eax, dword [eax+14H]                    ; 12CB _ 8B. 40, 14
        or      eax, 01H                                ; 12CE _ 83. C8, 01
        mov     edx, eax                                ; 12D1 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 12D3 _ 8B. 45, 08
        mov     dword [eax+14H], edx                    ; 12D6 _ 89. 50, 14
        mov     eax, 4294967295                         ; 12D9 _ B8, FFFFFFFF
        jmp     ?_050                                   ; 12DE _ EB, 50

?_048:  mov     eax, dword [ebp+8H]                     ; 12E0 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 12E3 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 12E5 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 12E8 _ 8B. 40, 04
        add     edx, eax                                ; 12EB _ 01. C2
        movzx   eax, byte [ebp-4H]                      ; 12ED _ 0F B6. 45, FC
        mov     byte [edx], al                          ; 12F1 _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 12F3 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 12F6 _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 12F9 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 12FC _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 12FF _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1302 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1305 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1308 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 130B _ 8B. 40, 0C
        cmp     edx, eax                                ; 130E _ 39. C2
        jnz     ?_049                                   ; 1310 _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 1312 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 1315 _ C7. 40, 04, 00000000
?_049:  mov     eax, dword [ebp+8H]                     ; 131C _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 131F _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 1322 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 1325 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 1328 _ 89. 50, 10
        mov     eax, 0                                  ; 132B _ B8, 00000000
?_050:  leave                                           ; 1330 _ C9
        ret                                             ; 1331 _ C3
; _fifo8_put End of function

_fifo8_get:; Function begin
        push    ebp                                     ; 1332 _ 55
        mov     ebp, esp                                ; 1333 _ 89. E5
        sub     esp, 16                                 ; 1335 _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 1338 _ 8B. 45, 08
        mov     edx, dword [eax+10H]                    ; 133B _ 8B. 50, 10
        mov     eax, dword [ebp+8H]                     ; 133E _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 1341 _ 8B. 40, 0C
        cmp     edx, eax                                ; 1344 _ 39. C2
        jnz     ?_051                                   ; 1346 _ 75, 07
        mov     eax, 4294967295                         ; 1348 _ B8, FFFFFFFF
        jmp     ?_053                                   ; 134D _ EB, 51

?_051:  mov     eax, dword [ebp+8H]                     ; 134F _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 1352 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 1354 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 1357 _ 8B. 40, 08
        add     eax, edx                                ; 135A _ 01. D0
        movzx   eax, byte [eax]                         ; 135C _ 0F B6. 00
        movzx   eax, al                                 ; 135F _ 0F B6. C0
        mov     dword [ebp-4H], eax                     ; 1362 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 1365 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 1368 _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 136B _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 136E _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 1371 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 1374 _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 1377 _ 8B. 50, 08
        mov     eax, dword [ebp+8H]                     ; 137A _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 137D _ 8B. 40, 0C
        cmp     edx, eax                                ; 1380 _ 39. C2
        jnz     ?_052                                   ; 1382 _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 1384 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 1387 _ C7. 40, 08, 00000000
?_052:  mov     eax, dword [ebp+8H]                     ; 138E _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 1391 _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 1394 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1397 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 139A _ 89. 50, 10
        mov     eax, dword [ebp-4H]                     ; 139D _ 8B. 45, FC
?_053:  leave                                           ; 13A0 _ C9
        ret                                             ; 13A1 _ C3
; _fifo8_get End of function

_fifo8_status:; Function begin
        push    ebp                                     ; 13A2 _ 55
        mov     ebp, esp                                ; 13A3 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 13A5 _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 13A8 _ 8B. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 13AB _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 13AE _ 8B. 40, 10
        sub     edx, eax                                ; 13B1 _ 29. C2
        mov     eax, edx                                ; 13B3 _ 89. D0
        pop     ebp                                     ; 13B5 _ 5D
        ret                                             ; 13B6 _ C3
; _fifo8_status End of function

_mouse_decode:; Function begin
        push    ebp                                     ; 13B7 _ 55
        mov     ebp, esp                                ; 13B8 _ 89. E5
        sub     esp, 4                                  ; 13BA _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 13BD _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 13C0 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 13C3 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 13C6 _ 0F B6. 40, 03
        test    al, al                                  ; 13CA _ 84. C0
        jnz     ?_055                                   ; 13CC _ 75, 17
        cmp     byte [ebp-4H], -6                       ; 13CE _ 80. 7D, FC, FA
        jnz     ?_054                                   ; 13D2 _ 75, 07
        mov     eax, dword [ebp+8H]                     ; 13D4 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 13D7 _ C6. 40, 03, 01
?_054:  mov     eax, 0                                  ; 13DB _ B8, 00000000
        jmp     ?_062                                   ; 13E0 _ E9, 0000010F

?_055:  mov     eax, dword [ebp+8H]                     ; 13E5 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 13E8 _ 0F B6. 40, 03
        cmp     al, 1                                   ; 13EC _ 3C, 01
        jnz     ?_057                                   ; 13EE _ 75, 28
        movzx   eax, byte [ebp-4H]                      ; 13F0 _ 0F B6. 45, FC
        and     eax, 0C8H                               ; 13F4 _ 25, 000000C8
        cmp     eax, 8                                  ; 13F9 _ 83. F8, 08
        jnz     ?_056                                   ; 13FC _ 75, 10
        mov     edx, dword [ebp+8H]                     ; 13FE _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 1401 _ 0F B6. 45, FC
        mov     byte [edx], al                          ; 1405 _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 1407 _ 8B. 45, 08
        mov     byte [eax+3H], 2                        ; 140A _ C6. 40, 03, 02
?_056:  mov     eax, 0                                  ; 140E _ B8, 00000000
        jmp     ?_062                                   ; 1413 _ E9, 000000DC

?_057:  mov     eax, dword [ebp+8H]                     ; 1418 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 141B _ 0F B6. 40, 03
        cmp     al, 2                                   ; 141F _ 3C, 02
        jnz     ?_058                                   ; 1421 _ 75, 1B
        mov     edx, dword [ebp+8H]                     ; 1423 _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 1426 _ 0F B6. 45, FC
        mov     byte [edx+1H], al                       ; 142A _ 88. 42, 01
        mov     eax, dword [ebp+8H]                     ; 142D _ 8B. 45, 08
        mov     byte [eax+3H], 3                        ; 1430 _ C6. 40, 03, 03
        mov     eax, 0                                  ; 1434 _ B8, 00000000
        jmp     ?_062                                   ; 1439 _ E9, 000000B6

?_058:  mov     eax, dword [ebp+8H]                     ; 143E _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1441 _ 0F B6. 40, 03
        cmp     al, 3                                   ; 1445 _ 3C, 03
        jne     ?_061                                   ; 1447 _ 0F 85, 000000A2
        mov     edx, dword [ebp+8H]                     ; 144D _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 1450 _ 0F B6. 45, FC
        mov     byte [edx+2H], al                       ; 1454 _ 88. 42, 02
        mov     eax, dword [ebp+8H]                     ; 1457 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 145A _ C6. 40, 03, 01
        mov     eax, dword [ebp+8H]                     ; 145E _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1461 _ 0F B6. 00
        movzx   eax, al                                 ; 1464 _ 0F B6. C0
        and     eax, 07H                                ; 1467 _ 83. E0, 07
        mov     edx, eax                                ; 146A _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 146C _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 146F _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 1472 _ 8B. 45, 08
        movzx   eax, byte [eax+1H]                      ; 1475 _ 0F B6. 40, 01
        movzx   eax, al                                 ; 1479 _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 147C _ 8B. 55, 08
        mov     dword [edx+4H], eax                     ; 147F _ 89. 42, 04
        mov     eax, dword [ebp+8H]                     ; 1482 _ 8B. 45, 08
        movzx   eax, byte [eax+2H]                      ; 1485 _ 0F B6. 40, 02
        movzx   eax, al                                 ; 1489 _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 148C _ 8B. 55, 08
        mov     dword [edx+8H], eax                     ; 148F _ 89. 42, 08
        mov     eax, dword [ebp+8H]                     ; 1492 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1495 _ 0F B6. 00
        movzx   eax, al                                 ; 1498 _ 0F B6. C0
        and     eax, 10H                                ; 149B _ 83. E0, 10
        test    eax, eax                                ; 149E _ 85. C0
        jz      ?_059                                   ; 14A0 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 14A2 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 14A5 _ 8B. 40, 04
        or      eax, 0FFFFFF00H                         ; 14A8 _ 0D, FFFFFF00
        mov     edx, eax                                ; 14AD _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 14AF _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 14B2 _ 89. 50, 04
?_059:  mov     eax, dword [ebp+8H]                     ; 14B5 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 14B8 _ 0F B6. 00
        movzx   eax, al                                 ; 14BB _ 0F B6. C0
        and     eax, 20H                                ; 14BE _ 83. E0, 20
        test    eax, eax                                ; 14C1 _ 85. C0
        jz      ?_060                                   ; 14C3 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 14C5 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 14C8 _ 8B. 40, 08
        or      eax, 0FFFFFF00H                         ; 14CB _ 0D, FFFFFF00
        mov     edx, eax                                ; 14D0 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 14D2 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 14D5 _ 89. 50, 08
?_060:  mov     eax, dword [ebp+8H]                     ; 14D8 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 14DB _ 8B. 40, 08
        neg     eax                                     ; 14DE _ F7. D8
        mov     edx, eax                                ; 14E0 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 14E2 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 14E5 _ 89. 50, 08
        mov     eax, 1                                  ; 14E8 _ B8, 00000001
        jmp     ?_062                                   ; 14ED _ EB, 05

?_061:  mov     eax, 4294967295                         ; 14EF _ B8, FFFFFFFF
?_062:  leave                                           ; 14F4 _ C9
        ret                                             ; 14F5 _ C3
; _mouse_decode End of function

        nop                                             ; 14F6 _ 90
        nop                                             ; 14F7 _ 90

.text:  ; Local function

_memman_init:
        push    ebp                                     ; 14F8 _ 55
        mov     ebp, esp                                ; 14F9 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 14FB _ 8B. 45, 08
        mov     dword [eax], 0                          ; 14FE _ C7. 00, 00000000
        mov     eax, dword [ebp+8H]                     ; 1504 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 1507 _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 150E _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 1511 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 1518 _ 8B. 45, 08
        mov     dword [eax+0CH], 0                      ; 151B _ C7. 40, 0C, 00000000
        nop                                             ; 1522 _ 90
        pop     ebp                                     ; 1523 _ 5D
        ret                                             ; 1524 _ C3

_memman_total:; Function begin
        push    ebp                                     ; 1525 _ 55
        mov     ebp, esp                                ; 1526 _ 89. E5
        sub     esp, 16                                 ; 1528 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 152B _ C7. 45, FC, 00000000
        mov     dword [ebp-8H], 0                       ; 1532 _ C7. 45, F8, 00000000
        jmp     ?_064                                   ; 1539 _ EB, 14

?_063:  mov     eax, dword [ebp+8H]                     ; 153B _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 153E _ 8B. 55, F8
        add     edx, 2                                  ; 1541 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 1544 _ 8B. 44 D0, 04
        add     dword [ebp-4H], eax                     ; 1548 _ 01. 45, FC
        add     dword [ebp-8H], 1                       ; 154B _ 83. 45, F8, 01
?_064:  mov     eax, dword [ebp+8H]                     ; 154F _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1552 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 1554 _ 39. 45, F8
        jl      ?_063                                   ; 1557 _ 7C, E2
        mov     eax, dword [ebp-4H]                     ; 1559 _ 8B. 45, FC
        leave                                           ; 155C _ C9
        ret                                             ; 155D _ C3
; _memman_total End of function

_memman_alloc:; Function begin
        push    ebp                                     ; 155E _ 55
        mov     ebp, esp                                ; 155F _ 89. E5
        sub     esp, 16                                 ; 1561 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 1564 _ C7. 45, FC, 00000000
        jmp     ?_068                                   ; 156B _ EB, 65

?_065:  mov     eax, dword [ebp+8H]                     ; 156D _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 1570 _ 8B. 55, FC
        add     edx, 2                                  ; 1573 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 1576 _ 8B. 44 D0, 04
        cmp     dword [ebp+0CH], eax                    ; 157A _ 39. 45, 0C
        ja      ?_067                                   ; 157D _ 77, 4F
        mov     eax, dword [ebp+8H]                     ; 157F _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 1582 _ 8B. 55, FC
        add     edx, 2                                  ; 1585 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 1588 _ 8B. 04 D0
        mov     dword [ebp-8H], eax                     ; 158B _ 89. 45, F8
        mov     eax, dword [ebp+8H]                     ; 158E _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 1591 _ 8B. 55, FC
        add     edx, 2                                  ; 1594 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 1597 _ 8B. 44 D0, 04
        sub     eax, dword [ebp+0CH]                    ; 159B _ 2B. 45, 0C
        mov     edx, dword [ebp+8H]                     ; 159E _ 8B. 55, 08
        mov     ecx, dword [ebp-4H]                     ; 15A1 _ 8B. 4D, FC
        add     ecx, 2                                  ; 15A4 _ 83. C1, 02
        mov     dword [edx+ecx*8+4H], eax               ; 15A7 _ 89. 44 CA, 04
        mov     eax, dword [ebp+8H]                     ; 15AB _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 15AE _ 8B. 55, FC
        add     edx, 2                                  ; 15B1 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 15B4 _ 8B. 44 D0, 04
        test    eax, eax                                ; 15B8 _ 85. C0
        jnz     ?_066                                   ; 15BA _ 75, 0D
        mov     eax, dword [ebp+8H]                     ; 15BC _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 15BF _ 8B. 00
        lea     edx, [eax-1H]                           ; 15C1 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 15C4 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 15C7 _ 89. 10
?_066:  mov     eax, dword [ebp-8H]                     ; 15C9 _ 8B. 45, F8
        jmp     ?_069                                   ; 15CC _ EB, 13

?_067:  add     dword [ebp-4H], 1                       ; 15CE _ 83. 45, FC, 01
?_068:  mov     eax, dword [ebp+8H]                     ; 15D2 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 15D5 _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 15D7 _ 39. 45, FC
        jl      ?_065                                   ; 15DA _ 7C, 91
        mov     eax, 0                                  ; 15DC _ B8, 00000000
?_069:  leave                                           ; 15E1 _ C9
        ret                                             ; 15E2 _ C3
; _memman_alloc End of function

_memman_free:; Function begin
        push    ebp                                     ; 15E3 _ 55
        mov     ebp, esp                                ; 15E4 _ 89. E5
        push    ebx                                     ; 15E6 _ 53
        sub     esp, 16                                 ; 15E7 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 15EA _ C7. 45, F8, 00000000
        jmp     ?_071                                   ; 15F1 _ EB, 15

?_070:  mov     eax, dword [ebp+8H]                     ; 15F3 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 15F6 _ 8B. 55, F8
        add     edx, 2                                  ; 15F9 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 15FC _ 8B. 04 D0
        cmp     dword [ebp+0CH], eax                    ; 15FF _ 39. 45, 0C
        jc      ?_072                                   ; 1602 _ 72, 10
        add     dword [ebp-8H], 1                       ; 1604 _ 83. 45, F8, 01
?_071:  mov     eax, dword [ebp+8H]                     ; 1608 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 160B _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 160D _ 39. 45, F8
        jl      ?_070                                   ; 1610 _ 7C, E1
        jmp     ?_073                                   ; 1612 _ EB, 01

?_072:  nop                                             ; 1614 _ 90
?_073:  cmp     dword [ebp-8H], 0                       ; 1615 _ 83. 7D, F8, 00
        jle     ?_075                                   ; 1619 _ 0F 8E, 000000B8
        mov     eax, dword [ebp-8H]                     ; 161F _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 1622 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 1625 _ 8B. 45, 08
        add     edx, 2                                  ; 1628 _ 83. C2, 02
        mov     ecx, dword [eax+edx*8]                  ; 162B _ 8B. 0C D0
        mov     eax, dword [ebp-8H]                     ; 162E _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 1631 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 1634 _ 8B. 45, 08
        add     edx, 2                                  ; 1637 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 163A _ 8B. 44 D0, 04
        add     eax, ecx                                ; 163E _ 01. C8
        cmp     dword [ebp+0CH], eax                    ; 1640 _ 39. 45, 0C
        jne     ?_075                                   ; 1643 _ 0F 85, 0000008E
        mov     eax, dword [ebp-8H]                     ; 1649 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 164C _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 164F _ 8B. 45, 08
        add     edx, 2                                  ; 1652 _ 83. C2, 02
        mov     ecx, dword [eax+edx*8+4H]               ; 1655 _ 8B. 4C D0, 04
        mov     eax, dword [ebp-8H]                     ; 1659 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 165C _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 165F _ 8B. 45, 10
        add     ecx, eax                                ; 1662 _ 01. C1
        mov     eax, dword [ebp+8H]                     ; 1664 _ 8B. 45, 08
        add     edx, 2                                  ; 1667 _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 166A _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 166E _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1671 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 1673 _ 39. 45, F8
        jge     ?_074                                   ; 1676 _ 7D, 55
        mov     edx, dword [ebp+0CH]                    ; 1678 _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 167B _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 167E _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 1681 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 1684 _ 8B. 55, F8
        add     edx, 2                                  ; 1687 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 168A _ 8B. 04 D0
        cmp     ecx, eax                                ; 168D _ 39. C1
        jnz     ?_074                                   ; 168F _ 75, 3C
        mov     eax, dword [ebp-8H]                     ; 1691 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 1694 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 1697 _ 8B. 45, 08
        add     edx, 2                                  ; 169A _ 83. C2, 02
        mov     ecx, dword [eax+edx*8+4H]               ; 169D _ 8B. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 16A1 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 16A4 _ 8B. 55, F8
        add     edx, 2                                  ; 16A7 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 16AA _ 8B. 44 D0, 04
        mov     edx, dword [ebp-8H]                     ; 16AE _ 8B. 55, F8
        sub     edx, 1                                  ; 16B1 _ 83. EA, 01
        add     ecx, eax                                ; 16B4 _ 01. C1
        mov     eax, dword [ebp+8H]                     ; 16B6 _ 8B. 45, 08
        add     edx, 2                                  ; 16B9 _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 16BC _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 16C0 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 16C3 _ 8B. 00
        lea     edx, [eax-1H]                           ; 16C5 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 16C8 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 16CB _ 89. 10
?_074:  mov     eax, 0                                  ; 16CD _ B8, 00000000
        jmp     ?_081                                   ; 16D2 _ E9, 0000011C

?_075:  mov     eax, dword [ebp+8H]                     ; 16D7 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 16DA _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 16DC _ 39. 45, F8
        jge     ?_076                                   ; 16DF _ 7D, 52
        mov     edx, dword [ebp+0CH]                    ; 16E1 _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 16E4 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 16E7 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 16EA _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 16ED _ 8B. 55, F8
        add     edx, 2                                  ; 16F0 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 16F3 _ 8B. 04 D0
        cmp     ecx, eax                                ; 16F6 _ 39. C1
        jnz     ?_076                                   ; 16F8 _ 75, 39
        mov     eax, dword [ebp+8H]                     ; 16FA _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 16FD _ 8B. 55, F8
        add     edx, 2                                  ; 1700 _ 83. C2, 02
        mov     ecx, dword [ebp+0CH]                    ; 1703 _ 8B. 4D, 0C
        mov     dword [eax+edx*8], ecx                  ; 1706 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 1709 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 170C _ 8B. 55, F8
        add     edx, 2                                  ; 170F _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 1712 _ 8B. 54 D0, 04
        mov     eax, dword [ebp+10H]                    ; 1716 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 1719 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 171C _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 171F _ 8B. 55, F8
        add     edx, 2                                  ; 1722 _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 1725 _ 89. 4C D0, 04
        mov     eax, 0                                  ; 1729 _ B8, 00000000
        jmp     ?_081                                   ; 172E _ E9, 000000C0

?_076:  mov     eax, dword [ebp+8H]                     ; 1733 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1736 _ 8B. 00
        cmp     eax, 4095                               ; 1738 _ 3D, 00000FFF
        jg      ?_080                                   ; 173D _ 0F 8F, 00000087
        mov     eax, dword [ebp+8H]                     ; 1743 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1746 _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 1748 _ 89. 45, F4
        jmp     ?_078                                   ; 174B _ EB, 28

?_077:  mov     eax, dword [ebp-0CH]                    ; 174D _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 1750 _ 8D. 50, FF
        mov     ecx, dword [ebp+8H]                     ; 1753 _ 8B. 4D, 08
        mov     eax, dword [ebp-0CH]                    ; 1756 _ 8B. 45, F4
        lea     ebx, [eax+2H]                           ; 1759 _ 8D. 58, 02
        mov     eax, dword [ebp+8H]                     ; 175C _ 8B. 45, 08
        add     edx, 2                                  ; 175F _ 83. C2, 02
        lea     edx, [eax+edx*8]                        ; 1762 _ 8D. 14 D0
        mov     eax, dword [edx]                        ; 1765 _ 8B. 02
        mov     edx, dword [edx+4H]                     ; 1767 _ 8B. 52, 04
        mov     dword [ecx+ebx*8], eax                  ; 176A _ 89. 04 D9
        mov     dword [ecx+ebx*8+4H], edx               ; 176D _ 89. 54 D9, 04
        sub     dword [ebp-0CH], 1                      ; 1771 _ 83. 6D, F4, 01
?_078:  mov     eax, dword [ebp-0CH]                    ; 1775 _ 8B. 45, F4
        cmp     eax, dword [ebp-8H]                     ; 1778 _ 3B. 45, F8
        jg      ?_077                                   ; 177B _ 7F, D0
        mov     eax, dword [ebp+8H]                     ; 177D _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1780 _ 8B. 00
        lea     edx, [eax+1H]                           ; 1782 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1785 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 1788 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 178A _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 178D _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1790 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1793 _ 8B. 00
        cmp     edx, eax                                ; 1795 _ 39. C2
        jge     ?_079                                   ; 1797 _ 7D, 0B
        mov     eax, dword [ebp+8H]                     ; 1799 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 179C _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 179E _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 17A1 _ 89. 50, 04
?_079:  mov     eax, dword [ebp+8H]                     ; 17A4 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 17A7 _ 8B. 55, F8
        add     edx, 2                                  ; 17AA _ 83. C2, 02
        mov     ecx, dword [ebp+0CH]                    ; 17AD _ 8B. 4D, 0C
        mov     dword [eax+edx*8], ecx                  ; 17B0 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 17B3 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 17B6 _ 8B. 55, F8
        add     edx, 2                                  ; 17B9 _ 83. C2, 02
        mov     ecx, dword [ebp+10H]                    ; 17BC _ 8B. 4D, 10
        mov     dword [eax+edx*8+4H], ecx               ; 17BF _ 89. 4C D0, 04
        mov     eax, 0                                  ; 17C3 _ B8, 00000000
        jmp     ?_081                                   ; 17C8 _ EB, 29

?_080:  mov     eax, dword [ebp+8H]                     ; 17CA _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 17CD _ 8B. 40, 0C
        lea     edx, [eax+1H]                           ; 17D0 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 17D3 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 17D6 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 17D9 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 17DC _ 8B. 40, 08
        mov     edx, eax                                ; 17DF _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 17E1 _ 8B. 45, 10
        add     eax, edx                                ; 17E4 _ 01. D0
        mov     edx, eax                                ; 17E6 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 17E8 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 17EB _ 89. 50, 08
        mov     eax, 4294967295                         ; 17EE _ B8, FFFFFFFF
?_081:  add     esp, 16                                 ; 17F3 _ 83. C4, 10
        pop     ebx                                     ; 17F6 _ 5B
        pop     ebp                                     ; 17F7 _ 5D
        ret                                             ; 17F8 _ C3
; _memman_free End of function

        nop                                             ; 17F9 _ 90
        nop                                             ; 17FA _ 90
        nop                                             ; 17FB _ 90



_memman:                                                ; dword
        dd 00100000H                                    ; 0000 _ 1048576 

_keyval:                                                ; byte
        db 30H, 58H                                     ; 0004 _ 0X

?_082:  db 00H                                          ; 0006 _ .

?_083:  db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0007 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 000F _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0017 _ ........
        db 00H                                          ; 001F _ .

_table_rgb.2104:                                        ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0020 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0028 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0030 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0038 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 0040 _ ........
        db 00H, 84H, 00H, 84H, 84H, 84H, 84H, 84H       ; 0048 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0050 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0058 _ ........

_cursor.2168:                                           ; byte
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



?_084:                                                  ; byte
        db 46H, 72H, 61H, 67H, 69H, 6CH, 65H, 20H       ; 0000 _ Fragile 
        db 4FH, 53H, 00H                                ; 0008 _ OS.

?_085:                                                  ; byte
        db 74H, 6FH, 74H, 61H, 6CH, 20H, 6DH, 65H       ; 000B _ total me
        db 6DH, 20H, 69H, 73H, 3AH, 20H, 00H            ; 0013 _ m is: .

?_086:                                                  ; byte
        db 20H, 4DH, 42H, 00H                           ; 001A _  MB.

?_087:                                                  ; byte
        db 70H, 61H, 67H, 65H, 20H, 69H, 73H, 3AH       ; 001E _ page is:
        db 20H, 00H                                     ; 0026 _  .

?_088:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0028 _ BaseAddr
        db 4CH, 3AH, 20H, 00H                           ; 0030 _ L: .

?_089:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0034 _ BaseAddr
        db 48H, 3AH, 20H, 00H                           ; 003C _ H: .

?_090:                                                  ; byte
        db 6CH, 65H, 6EH, 67H, 74H, 68H, 4CH, 6FH       ; 0040 _ lengthLo
        db 77H, 3AH, 20H, 00H                           ; 0048 _ w: .

?_091:                                                  ; byte
        db 6CH, 65H, 6EH, 67H, 74H, 68H, 48H, 69H       ; 004C _ lengthHi
        db 67H, 68H, 3AH, 20H, 00H                      ; 0054 _ gh: .

?_092:                                                  ; byte
        db 74H, 79H, 70H, 65H, 3AH, 20H, 00H            ; 0059 _ type: .



        db 47H, 43H, 43H, 3AH, 20H, 28H, 78H, 38H       ; 0000 _ GCC: (x8
        db 36H, 5FH, 36H, 34H, 2DH, 70H, 6FH, 73H       ; 0008 _ 6_64-pos
        db 69H, 78H, 2DH, 73H, 65H, 68H, 2DH, 72H       ; 0010 _ ix-seh-r
        db 65H, 76H, 30H, 2CH, 20H, 42H, 75H, 69H       ; 0018 _ ev0, Bui
        db 6CH, 74H, 20H, 62H, 79H, 20H, 4DH, 69H       ; 0020 _ lt by Mi
        db 6EH, 47H, 57H, 2DH, 57H, 36H, 34H, 20H       ; 0028 _ nGW-W64 
        db 70H, 72H, 6FH, 6AH, 65H, 63H, 74H, 29H       ; 0030 _ project)
        db 20H, 38H, 2EH, 31H, 2EH, 30H, 00H, 00H       ; 0038 _  8.1.0..

.rdata$zzz:                                             ; byte
        db 47H, 43H, 43H, 3AH, 20H, 28H, 78H, 38H       ; 0040 _ GCC: (x8
        db 36H, 5FH, 36H, 34H, 2DH, 70H, 6FH, 73H       ; 0048 _ 6_64-pos
        db 69H, 78H, 2DH, 73H, 65H, 68H, 2DH, 72H       ; 0050 _ ix-seh-r
        db 65H, 76H, 30H, 2CH, 20H, 42H, 75H, 69H       ; 0058 _ ev0, Bui
        db 6CH, 74H, 20H, 62H, 79H, 20H, 4DH, 69H       ; 0060 _ lt by Mi
        db 6EH, 47H, 57H, 2DH, 57H, 36H, 34H, 20H       ; 0068 _ nGW-W64 
        db 70H, 72H, 6FH, 6AH, 65H, 63H, 74H, 29H       ; 0070 _ project)
        db 20H, 38H, 2EH, 31H, 2EH, 30H, 00H, 00H       ; 0078 _  8.1.0..



_mcursor:                                               ; byte
        resb    256                                     ; 0000

_bootInfo:                                              ; dword
        resd    1                                       ; 0100

?_093:  resw    1                                       ; 0104

?_094:  resw    1                                       ; 0106

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

_str.2216:                                              ; byte
        resb    1                                       ; 0200

?_095:  resb    9                                       ; 0201

?_096:  resb    22                                      ; 020A


