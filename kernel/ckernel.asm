; Disassembly of file: ckernel.o
; Sat Aug  3 22:52:11 2019
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
        movzx   eax, word [?_094]                       ; 001C _ 0F B7. 05, 00000104(d)
        cwde                                            ; 0023 _ 98
        mov     dword [_xsize], eax                     ; 0024 _ A3, 000001F8(d)
        movzx   eax, word [?_095]                       ; 0029 _ 0F B7. 05, 00000106(d)
        cwde                                            ; 0030 _ 98
        mov     dword [_ysize], eax                     ; 0031 _ A3, 000001FC(d)
        mov     dword [esp+8H], _keybuf                 ; 0036 _ C7. 44 24, 08, 00000140(d)
        mov     dword [esp+4H], 32                      ; 003E _ C7. 44 24, 04, 00000020
        mov     dword [esp], _keyinfo                   ; 0046 _ C7. 04 24, 00000108(d)
        call    _fifo8_init                             ; 004D _ E8, 00000F00
        mov     dword [esp+8H], _mousebuf               ; 0052 _ C7. 44 24, 08, 00000160(d)
        mov     dword [esp+4H], 128                     ; 005A _ C7. 44 24, 04, 00000080
        mov     dword [esp], _mouseinfo                 ; 0062 _ C7. 04 24, 00000120(d)
        call    _fifo8_init                             ; 0069 _ E8, 00000EE4
        call    _init_palette                           ; 006E _ E8, 000008A0
        call    _init_keyboard                          ; 0073 _ E8, 00000E09
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
        mov     dword [esp+14H], ?_085                  ; 0461 _ C7. 44 24, 14, 00000000(d)
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
        call    _init_mouse_cursor                      ; 04CB _ E8, 000006DF
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
        call    _putblock                               ; 0513 _ E8, 0000076D
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
        call    _intToHexStr                            ; 056B _ E8, 0000085B
        mov     dword [ebp-20H], eax                    ; 0570 _ 89. 45, E0
        mov     eax, dword [_xsize]                     ; 0573 _ A1, 000001F8(d)
        mov     dword [esp+14H], ?_086                  ; 0578 _ C7. 44 24, 14, 0000000B(d)
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
        mov     dword [esp+14H], ?_087                  ; 05DF _ C7. 44 24, 14, 0000001A(d)
        mov     dword [esp+10H], 7                      ; 05E7 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 0                      ; 05EF _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 224                     ; 05F7 _ C7. 44 24, 08, 000000E0
        mov     dword [esp+4H], eax                     ; 05FF _ 89. 44 24, 04
        mov     eax, dword [ebp-10H]                    ; 0603 _ 8B. 45, F0
        mov     dword [esp], eax                        ; 0606 _ 89. 04 24
        call    _showString                             ; 0609 _ E8, 000002A4
        call    _io_sti                                 ; 060E _ E8, 00000000(rel)
        mov     dword [esp], _mdec                      ; 0613 _ C7. 04 24, 000001E0(d)
        call    _enable_mouse                           ; 061A _ E8, 0000089D
        mov     dword [ebp-24H], 0                      ; 061F _ C7. 45, DC, 00000000
        mov     dword [ebp-0CH], 0                      ; 0626 _ C7. 45, F4, 00000000
?_001:  call    _io_cli                                 ; 062D _ E8, 00000000(rel)
        mov     dword [esp], _keyinfo                   ; 0632 _ C7. 04 24, 00000108(d)
        call    _fifo8_status                           ; 0639 _ E8, 00000A42
        mov     ebx, eax                                ; 063E _ 89. C3
        mov     dword [esp], _mouseinfo                 ; 0640 _ C7. 04 24, 00000120(d)
        call    _fifo8_status                           ; 0647 _ E8, 00000A34
        add     eax, ebx                                ; 064C _ 01. D8
        test    eax, eax                                ; 064E _ 85. C0
        jnz     ?_002                                   ; 0650 _ 75, 07
        call    _io_stihlt                              ; 0652 _ E8, 00000000(rel)
        jmp     ?_001                                   ; 0657 _ EB, D4

?_002:  ; Local function
        mov     dword [esp], _keyinfo                   ; 0659 _ C7. 04 24, 00000108(d)
        call    _fifo8_status                           ; 0660 _ E8, 00000A1B
        test    eax, eax                                ; 0665 _ 85. C0
        jz      ?_003                                   ; 0667 _ 74, 72
        call    _io_sti                                 ; 0669 _ E8, 00000000(rel)
        mov     dword [esp], _keyinfo                   ; 066E _ C7. 04 24, 00000108(d)
        call    _fifo8_get                              ; 0675 _ E8, 00000996
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
        call    _showMemoryInfo                         ; 06BA _ E8, 00000B15
        add     dword [ebp-0CH], 1                      ; 06BF _ 83. 45, F4, 01
        mov     eax, dword [ebp-0CH]                    ; 06C3 _ 8B. 45, F4
        cmp     eax, dword [ebp-14H]                    ; 06C6 _ 3B. 45, EC
        jle     ?_001                                   ; 06C9 _ 0F 8E, FFFFFF5E
        mov     dword [ebp-0CH], 0                      ; 06CF _ C7. 45, F4, 00000000
        jmp     ?_001                                   ; 06D6 _ E9, FFFFFF52

?_003:  ; Local function
        mov     dword [esp], _mouseinfo                 ; 06DB _ C7. 04 24, 00000120(d)
        call    _fifo8_status                           ; 06E2 _ E8, 00000999
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
        call    _putblock                               ; 0826 _ E8, 0000045A
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
        call    _fifo8_get                              ; 084C _ E8, 000007BF
        mov     byte [ebp-0DH], al                      ; 0851 _ 88. 45, F3
        movzx   eax, byte [ebp-0DH]                     ; 0854 _ 0F B6. 45, F3
        mov     dword [esp+4H], eax                     ; 0858 _ 89. 44 24, 04
        mov     dword [esp], _mdec                      ; 085C _ C7. 04 24, 000001E0(d)
        call    _mouse_decode                           ; 0863 _ E8, 0000082D
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
        mov     dword [esp+8H], _table_rgb.2108         ; 0919 _ C7. 44 24, 08, 00000020(d)
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

_init_mouse_cursor:; Function begin
        push    ebp                                     ; 0BAF _ 55
        mov     ebp, esp                                ; 0BB0 _ 89. E5
        sub     esp, 20                                 ; 0BB2 _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 0BB5 _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 0BB8 _ 88. 45, EC
        mov     dword [ebp-8H], 0                       ; 0BBB _ C7. 45, F8, 00000000
        jmp     ?_033                                   ; 0BC2 _ E9, 000000B1

?_027:  mov     dword [ebp-4H], 0                       ; 0BC7 _ C7. 45, FC, 00000000
        jmp     ?_032                                   ; 0BCE _ E9, 00000097

?_028:  mov     eax, dword [ebp-8H]                     ; 0BD3 _ 8B. 45, F8
        shl     eax, 4                                  ; 0BD6 _ C1. E0, 04
        mov     edx, eax                                ; 0BD9 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 0BDB _ 8B. 45, FC
        add     eax, edx                                ; 0BDE _ 01. D0
        add     eax, _cursor.2155                       ; 0BE0 _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 0BE5 _ 0F B6. 00
        cmp     al, 42                                  ; 0BE8 _ 3C, 2A
        jnz     ?_029                                   ; 0BEA _ 75, 17
        mov     eax, dword [ebp-8H]                     ; 0BEC _ 8B. 45, F8
        shl     eax, 4                                  ; 0BEF _ C1. E0, 04
        mov     edx, eax                                ; 0BF2 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 0BF4 _ 8B. 45, FC
        add     eax, edx                                ; 0BF7 _ 01. D0
        mov     edx, eax                                ; 0BF9 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0BFB _ 8B. 45, 08
        add     eax, edx                                ; 0BFE _ 01. D0
        mov     byte [eax], 0                           ; 0C00 _ C6. 00, 00
?_029:  mov     eax, dword [ebp-8H]                     ; 0C03 _ 8B. 45, F8
        shl     eax, 4                                  ; 0C06 _ C1. E0, 04
        mov     edx, eax                                ; 0C09 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 0C0B _ 8B. 45, FC
        add     eax, edx                                ; 0C0E _ 01. D0
        add     eax, _cursor.2155                       ; 0C10 _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 0C15 _ 0F B6. 00
        cmp     al, 79                                  ; 0C18 _ 3C, 4F
        jnz     ?_030                                   ; 0C1A _ 75, 17
        mov     eax, dword [ebp-8H]                     ; 0C1C _ 8B. 45, F8
        shl     eax, 4                                  ; 0C1F _ C1. E0, 04
        mov     edx, eax                                ; 0C22 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 0C24 _ 8B. 45, FC
        add     eax, edx                                ; 0C27 _ 01. D0
        mov     edx, eax                                ; 0C29 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0C2B _ 8B. 45, 08
        add     eax, edx                                ; 0C2E _ 01. D0
        mov     byte [eax], 7                           ; 0C30 _ C6. 00, 07
?_030:  mov     eax, dword [ebp-8H]                     ; 0C33 _ 8B. 45, F8
        shl     eax, 4                                  ; 0C36 _ C1. E0, 04
        mov     edx, eax                                ; 0C39 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 0C3B _ 8B. 45, FC
        add     eax, edx                                ; 0C3E _ 01. D0
        add     eax, _cursor.2155                       ; 0C40 _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 0C45 _ 0F B6. 00
        cmp     al, 46                                  ; 0C48 _ 3C, 2E
        jnz     ?_031                                   ; 0C4A _ 75, 1A
        mov     eax, dword [ebp-8H]                     ; 0C4C _ 8B. 45, F8
        shl     eax, 4                                  ; 0C4F _ C1. E0, 04
        mov     edx, eax                                ; 0C52 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 0C54 _ 8B. 45, FC
        add     eax, edx                                ; 0C57 _ 01. D0
        mov     edx, eax                                ; 0C59 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0C5B _ 8B. 45, 08
        add     edx, eax                                ; 0C5E _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0C60 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0C64 _ 88. 02
?_031:  add     dword [ebp-4H], 1                       ; 0C66 _ 83. 45, FC, 01
?_032:  cmp     dword [ebp-4H], 15                      ; 0C6A _ 83. 7D, FC, 0F
        jle     ?_028                                   ; 0C6E _ 0F 8E, FFFFFF5F
        add     dword [ebp-8H], 1                       ; 0C74 _ 83. 45, F8, 01
?_033:  cmp     dword [ebp-8H], 15                      ; 0C78 _ 83. 7D, F8, 0F
        jle     ?_027                                   ; 0C7C _ 0F 8E, FFFFFF45
        nop                                             ; 0C82 _ 90
        leave                                           ; 0C83 _ C9
        ret                                             ; 0C84 _ C3
; _init_mouse_cursor End of function

_putblock:; Function begin
        push    ebp                                     ; 0C85 _ 55
        mov     ebp, esp                                ; 0C86 _ 89. E5
        push    ebx                                     ; 0C88 _ 53
        sub     esp, 16                                 ; 0C89 _ 83. EC, 10
        mov     dword [ebp-0CH], 0                      ; 0C8C _ C7. 45, F4, 00000000
        jmp     ?_037                                   ; 0C93 _ EB, 4E

?_034:  mov     dword [ebp-8H], 0                       ; 0C95 _ C7. 45, F8, 00000000
        jmp     ?_036                                   ; 0C9C _ EB, 39

?_035:  mov     eax, dword [ebp-0CH]                    ; 0C9E _ 8B. 45, F4
        imul    eax, dword [ebp+24H]                    ; 0CA1 _ 0F AF. 45, 24
        mov     edx, dword [ebp-8H]                     ; 0CA5 _ 8B. 55, F8
        add     eax, edx                                ; 0CA8 _ 01. D0
        mov     edx, eax                                ; 0CAA _ 89. C2
        mov     eax, dword [ebp+20H]                    ; 0CAC _ 8B. 45, 20
        add     eax, edx                                ; 0CAF _ 01. D0
        mov     ecx, dword [ebp+1CH]                    ; 0CB1 _ 8B. 4D, 1C
        mov     edx, dword [ebp-0CH]                    ; 0CB4 _ 8B. 55, F4
        add     edx, ecx                                ; 0CB7 _ 01. CA
        imul    edx, dword [ebp+0CH]                    ; 0CB9 _ 0F AF. 55, 0C
        mov     ebx, dword [ebp+18H]                    ; 0CBD _ 8B. 5D, 18
        mov     ecx, dword [ebp-8H]                     ; 0CC0 _ 8B. 4D, F8
        add     ecx, ebx                                ; 0CC3 _ 01. D9
        add     edx, ecx                                ; 0CC5 _ 01. CA
        mov     ecx, edx                                ; 0CC7 _ 89. D1
        mov     edx, dword [ebp+8H]                     ; 0CC9 _ 8B. 55, 08
        add     edx, ecx                                ; 0CCC _ 01. CA
        movzx   eax, byte [eax]                         ; 0CCE _ 0F B6. 00
        mov     byte [edx], al                          ; 0CD1 _ 88. 02
        add     dword [ebp-8H], 1                       ; 0CD3 _ 83. 45, F8, 01
?_036:  mov     eax, dword [ebp-8H]                     ; 0CD7 _ 8B. 45, F8
        cmp     eax, dword [ebp+10H]                    ; 0CDA _ 3B. 45, 10
        jl      ?_035                                   ; 0CDD _ 7C, BF
        add     dword [ebp-0CH], 1                      ; 0CDF _ 83. 45, F4, 01
?_037:  mov     eax, dword [ebp-0CH]                    ; 0CE3 _ 8B. 45, F4
        cmp     eax, dword [ebp+14H]                    ; 0CE6 _ 3B. 45, 14
        jl      ?_034                                   ; 0CE9 _ 7C, AA
        nop                                             ; 0CEB _ 90
        add     esp, 16                                 ; 0CEC _ 83. C4, 10
        pop     ebx                                     ; 0CEF _ 5B
        pop     ebp                                     ; 0CF0 _ 5D
        ret                                             ; 0CF1 _ C3
; _putblock End of function

_intHandlerFromC:; Function begin
        push    ebp                                     ; 0CF2 _ 55
        mov     ebp, esp                                ; 0CF3 _ 89. E5
        sub     esp, 40                                 ; 0CF5 _ 83. EC, 28
        mov     eax, dword [_bootInfo]                  ; 0CF8 _ A1, 00000100(d)
        mov     dword [ebp-0CH], eax                    ; 0CFD _ 89. 45, F4
        movzx   eax, word [?_094]                       ; 0D00 _ 0F B7. 05, 00000104(d)
        cwde                                            ; 0D07 _ 98
        mov     dword [ebp-10H], eax                    ; 0D08 _ 89. 45, F0
        movzx   eax, word [?_095]                       ; 0D0B _ 0F B7. 05, 00000106(d)
        cwde                                            ; 0D12 _ 98
        mov     dword [ebp-14H], eax                    ; 0D13 _ 89. 45, EC
        mov     dword [esp+4H], 32                      ; 0D16 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 0D1E _ C7. 04 24, 00000020
        call    _io_out8                                ; 0D25 _ E8, 00000000(rel)
        mov     byte [ebp-15H], 0                       ; 0D2A _ C6. 45, EB, 00
        mov     dword [esp], 96                         ; 0D2E _ C7. 04 24, 00000060
        call    _io_in8                                 ; 0D35 _ E8, 00000000(rel)
        mov     byte [ebp-15H], al                      ; 0D3A _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 0D3D _ 0F B6. 45, EB
        mov     dword [esp+4H], eax                     ; 0D41 _ 89. 44 24, 04
        mov     dword [esp], _keyinfo                   ; 0D45 _ C7. 04 24, 00000108(d)
        call    _fifo8_put                              ; 0D4C _ E8, 0000023F
        nop                                             ; 0D51 _ 90
        leave                                           ; 0D52 _ C9
        ret                                             ; 0D53 _ C3
; _intHandlerFromC End of function

_charToHexVal:; Function begin
        push    ebp                                     ; 0D54 _ 55
        mov     ebp, esp                                ; 0D55 _ 89. E5
        sub     esp, 4                                  ; 0D57 _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 0D5A _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 0D5D _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 0D60 _ 80. 7D, FC, 09
        jle     ?_038                                   ; 0D64 _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 0D66 _ 0F B6. 45, FC
        add     eax, 55                                 ; 0D6A _ 83. C0, 37
        jmp     ?_039                                   ; 0D6D _ EB, 07

?_038:  movzx   eax, byte [ebp-4H]                      ; 0D6F _ 0F B6. 45, FC
        add     eax, 48                                 ; 0D73 _ 83. C0, 30
?_039:  leave                                           ; 0D76 _ C9
        ret                                             ; 0D77 _ C3
; _charToHexVal End of function

_charToHexStr:; Function begin
        push    ebp                                     ; 0D78 _ 55
        mov     ebp, esp                                ; 0D79 _ 89. E5
        sub     esp, 24                                 ; 0D7B _ 83. EC, 18
        mov     eax, dword [ebp+8H]                     ; 0D7E _ 8B. 45, 08
        mov     byte [ebp-14H], al                      ; 0D81 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 0D84 _ C7. 45, FC, 00000000
        movzx   eax, byte [ebp-14H]                     ; 0D8B _ 0F B6. 45, EC
        and     eax, 0FH                                ; 0D8F _ 83. E0, 0F
        mov     byte [ebp-5H], al                       ; 0D92 _ 88. 45, FB
        movsx   eax, byte [ebp-5H]                      ; 0D95 _ 0F BE. 45, FB
        mov     dword [esp], eax                        ; 0D99 _ 89. 04 24
        call    _charToHexVal                           ; 0D9C _ E8, FFFFFFB3
        mov     byte [?_084], al                        ; 0DA1 _ A2, 00000007(d)
        movzx   eax, byte [ebp-14H]                     ; 0DA6 _ 0F B6. 45, EC
        shr     al, 4                                   ; 0DAA _ C0. E8, 04
        mov     byte [ebp-14H], al                      ; 0DAD _ 88. 45, EC
        movzx   eax, byte [ebp-14H]                     ; 0DB0 _ 0F B6. 45, EC
        movsx   eax, al                                 ; 0DB4 _ 0F BE. C0
        mov     dword [esp], eax                        ; 0DB7 _ 89. 04 24
        call    _charToHexVal                           ; 0DBA _ E8, FFFFFF95
        mov     byte [?_083], al                        ; 0DBF _ A2, 00000006(d)
        mov     eax, _keyval                            ; 0DC4 _ B8, 00000004(d)
        leave                                           ; 0DC9 _ C9
        ret                                             ; 0DCA _ C3
; _charToHexStr End of function

_intToHexStr:; Function begin
        push    ebp                                     ; 0DCB _ 55
        mov     ebp, esp                                ; 0DCC _ 89. E5
        sub     esp, 16                                 ; 0DCE _ 83. EC, 10
        mov     byte [_str.2203], 48                    ; 0DD1 _ C6. 05, 00000200(d), 30
        mov     byte [?_096], 88                        ; 0DD8 _ C6. 05, 00000201(d), 58
        mov     byte [?_097], 0                         ; 0DDF _ C6. 05, 0000020A(d), 00
        mov     dword [ebp-4H], 2                       ; 0DE6 _ C7. 45, FC, 00000002
        jmp     ?_041                                   ; 0DED _ EB, 0F

?_040:  mov     eax, dword [ebp-4H]                     ; 0DEF _ 8B. 45, FC
        add     eax, _str.2203                          ; 0DF2 _ 05, 00000200(d)
        mov     byte [eax], 48                          ; 0DF7 _ C6. 00, 30
        add     dword [ebp-4H], 1                       ; 0DFA _ 83. 45, FC, 01
?_041:  cmp     dword [ebp-4H], 9                       ; 0DFE _ 83. 7D, FC, 09
        jle     ?_040                                   ; 0E02 _ 7E, EB
        mov     dword [ebp-8H], 9                       ; 0E04 _ C7. 45, F8, 00000009
        jmp     ?_045                                   ; 0E0B _ EB, 42

?_042:  mov     eax, dword [ebp+8H]                     ; 0E0D _ 8B. 45, 08
        and     eax, 0FH                                ; 0E10 _ 83. E0, 0F
        mov     dword [ebp-0CH], eax                    ; 0E13 _ 89. 45, F4
        mov     eax, dword [ebp+8H]                     ; 0E16 _ 8B. 45, 08
        shr     eax, 4                                  ; 0E19 _ C1. E8, 04
        mov     dword [ebp+8H], eax                     ; 0E1C _ 89. 45, 08
        cmp     dword [ebp-0CH], 9                      ; 0E1F _ 83. 7D, F4, 09
        jle     ?_043                                   ; 0E23 _ 7E, 14
        mov     eax, dword [ebp-0CH]                    ; 0E25 _ 8B. 45, F4
        add     eax, 55                                 ; 0E28 _ 83. C0, 37
        mov     edx, eax                                ; 0E2B _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0E2D _ 8B. 45, F8
        add     eax, _str.2203                          ; 0E30 _ 05, 00000200(d)
        mov     byte [eax], dl                          ; 0E35 _ 88. 10
        jmp     ?_044                                   ; 0E37 _ EB, 12

?_043:  mov     eax, dword [ebp-0CH]                    ; 0E39 _ 8B. 45, F4
        add     eax, 48                                 ; 0E3C _ 83. C0, 30
        mov     edx, eax                                ; 0E3F _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0E41 _ 8B. 45, F8
        add     eax, _str.2203                          ; 0E44 _ 05, 00000200(d)
        mov     byte [eax], dl                          ; 0E49 _ 88. 10
?_044:  sub     dword [ebp-8H], 1                       ; 0E4B _ 83. 6D, F8, 01
?_045:  cmp     dword [ebp-8H], 1                       ; 0E4F _ 83. 7D, F8, 01
        jle     ?_046                                   ; 0E53 _ 7E, 06
        cmp     dword [ebp+8H], 0                       ; 0E55 _ 83. 7D, 08, 00
        jnz     ?_042                                   ; 0E59 _ 75, B2
?_046:  mov     eax, _str.2203                          ; 0E5B _ B8, 00000200(d)
        leave                                           ; 0E60 _ C9
        ret                                             ; 0E61 _ C3
; _intToHexStr End of function

_wait_KBC_sendready:; Function begin
        push    ebp                                     ; 0E62 _ 55
        mov     ebp, esp                                ; 0E63 _ 89. E5
        sub     esp, 24                                 ; 0E65 _ 83. EC, 18
?_047:  mov     dword [esp], 100                        ; 0E68 _ C7. 04 24, 00000064
        call    _io_in8                                 ; 0E6F _ E8, 00000000(rel)
        and     eax, 02H                                ; 0E74 _ 83. E0, 02
        test    eax, eax                                ; 0E77 _ 85. C0
        jz      ?_048                                   ; 0E79 _ 74, 02
        jmp     ?_047                                   ; 0E7B _ EB, EB
; _wait_KBC_sendready End of function

?_048:  ; Local function
        nop                                             ; 0E7D _ 90
        nop                                             ; 0E7E _ 90
        leave                                           ; 0E7F _ C9
        ret                                             ; 0E80 _ C3

_init_keyboard:; Function begin
        push    ebp                                     ; 0E81 _ 55
        mov     ebp, esp                                ; 0E82 _ 89. E5
        sub     esp, 24                                 ; 0E84 _ 83. EC, 18
        call    _wait_KBC_sendready                     ; 0E87 _ E8, FFFFFFD6
        mov     dword [esp+4H], 96                      ; 0E8C _ C7. 44 24, 04, 00000060
        mov     dword [esp], 100                        ; 0E94 _ C7. 04 24, 00000064
        call    _io_out8                                ; 0E9B _ E8, 00000000(rel)
        call    _wait_KBC_sendready                     ; 0EA0 _ E8, FFFFFFBD
        mov     dword [esp+4H], 71                      ; 0EA5 _ C7. 44 24, 04, 00000047
        mov     dword [esp], 96                         ; 0EAD _ C7. 04 24, 00000060
        call    _io_out8                                ; 0EB4 _ E8, 00000000(rel)
        nop                                             ; 0EB9 _ 90
        leave                                           ; 0EBA _ C9
        ret                                             ; 0EBB _ C3
; _init_keyboard End of function

_enable_mouse:; Function begin
        push    ebp                                     ; 0EBC _ 55
        mov     ebp, esp                                ; 0EBD _ 89. E5
        sub     esp, 24                                 ; 0EBF _ 83. EC, 18
        call    _wait_KBC_sendready                     ; 0EC2 _ E8, FFFFFF9B
        mov     dword [esp+4H], 212                     ; 0EC7 _ C7. 44 24, 04, 000000D4
        mov     dword [esp], 100                        ; 0ECF _ C7. 04 24, 00000064
        call    _io_out8                                ; 0ED6 _ E8, 00000000(rel)
        call    _wait_KBC_sendready                     ; 0EDB _ E8, FFFFFF82
        mov     dword [esp+4H], 244                     ; 0EE0 _ C7. 44 24, 04, 000000F4
        mov     dword [esp], 96                         ; 0EE8 _ C7. 04 24, 00000060
        call    _io_out8                                ; 0EEF _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 0EF4 _ 8B. 45, 08
        mov     byte [eax+3H], 0                        ; 0EF7 _ C6. 40, 03, 00
        nop                                             ; 0EFB _ 90
        leave                                           ; 0EFC _ C9
        ret                                             ; 0EFD _ C3
; _enable_mouse End of function

_intHandlerForMouse:; Function begin
        push    ebp                                     ; 0EFE _ 55
        mov     ebp, esp                                ; 0EFF _ 89. E5
        sub     esp, 40                                 ; 0F01 _ 83. EC, 28
        mov     dword [esp+4H], 32                      ; 0F04 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 160                        ; 0F0C _ C7. 04 24, 000000A0
        call    _io_out8                                ; 0F13 _ E8, 00000000(rel)
        mov     dword [esp+4H], 32                      ; 0F18 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 0F20 _ C7. 04 24, 00000020
        call    _io_out8                                ; 0F27 _ E8, 00000000(rel)
        mov     dword [esp], 96                         ; 0F2C _ C7. 04 24, 00000060
        call    _io_in8                                 ; 0F33 _ E8, 00000000(rel)
        mov     byte [ebp-9H], al                       ; 0F38 _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 0F3B _ 0F B6. 45, F7
        mov     dword [esp+4H], eax                     ; 0F3F _ 89. 44 24, 04
        mov     dword [esp], _mouseinfo                 ; 0F43 _ C7. 04 24, 00000120(d)
        call    _fifo8_put                              ; 0F4A _ E8, 00000041
        nop                                             ; 0F4F _ 90
        leave                                           ; 0F50 _ C9
        ret                                             ; 0F51 _ C3
; _intHandlerForMouse End of function

_fifo8_init:; Function begin
        push    ebp                                     ; 0F52 _ 55
        mov     ebp, esp                                ; 0F53 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0F55 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 0F58 _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 0F5B _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 0F5E _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 0F61 _ 8B. 55, 10
        mov     dword [eax], edx                        ; 0F64 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 0F66 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 0F69 _ 8B. 55, 0C
        mov     dword [eax+10H], edx                    ; 0F6C _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 0F6F _ 8B. 45, 08
        mov     dword [eax+14H], 0                      ; 0F72 _ C7. 40, 14, 00000000
        mov     eax, dword [ebp+8H]                     ; 0F79 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 0F7C _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 0F83 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 0F86 _ C7. 40, 08, 00000000
        nop                                             ; 0F8D _ 90
        pop     ebp                                     ; 0F8E _ 5D
        ret                                             ; 0F8F _ C3
; _fifo8_init End of function

_fifo8_put:; Function begin
        push    ebp                                     ; 0F90 _ 55
        mov     ebp, esp                                ; 0F91 _ 89. E5
        sub     esp, 4                                  ; 0F93 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 0F96 _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 0F99 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 0F9C _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0F9F _ 8B. 40, 10
        test    eax, eax                                ; 0FA2 _ 85. C0
        jnz     ?_049                                   ; 0FA4 _ 75, 18
        mov     eax, dword [ebp+8H]                     ; 0FA6 _ 8B. 45, 08
        mov     eax, dword [eax+14H]                    ; 0FA9 _ 8B. 40, 14
        or      eax, 01H                                ; 0FAC _ 83. C8, 01
        mov     edx, eax                                ; 0FAF _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0FB1 _ 8B. 45, 08
        mov     dword [eax+14H], edx                    ; 0FB4 _ 89. 50, 14
        mov     eax, 4294967295                         ; 0FB7 _ B8, FFFFFFFF
        jmp     ?_051                                   ; 0FBC _ EB, 50

?_049:  mov     eax, dword [ebp+8H]                     ; 0FBE _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 0FC1 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 0FC3 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 0FC6 _ 8B. 40, 04
        add     edx, eax                                ; 0FC9 _ 01. C2
        movzx   eax, byte [ebp-4H]                      ; 0FCB _ 0F B6. 45, FC
        mov     byte [edx], al                          ; 0FCF _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 0FD1 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 0FD4 _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 0FD7 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0FDA _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 0FDD _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0FE0 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 0FE3 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0FE6 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 0FE9 _ 8B. 40, 0C
        cmp     edx, eax                                ; 0FEC _ 39. C2
        jnz     ?_050                                   ; 0FEE _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 0FF0 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 0FF3 _ C7. 40, 04, 00000000
?_050:  mov     eax, dword [ebp+8H]                     ; 0FFA _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0FFD _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 1000 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 1003 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 1006 _ 89. 50, 10
        mov     eax, 0                                  ; 1009 _ B8, 00000000
?_051:  leave                                           ; 100E _ C9
        ret                                             ; 100F _ C3
; _fifo8_put End of function

_fifo8_get:; Function begin
        push    ebp                                     ; 1010 _ 55
        mov     ebp, esp                                ; 1011 _ 89. E5
        sub     esp, 16                                 ; 1013 _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 1016 _ 8B. 45, 08
        mov     edx, dword [eax+10H]                    ; 1019 _ 8B. 50, 10
        mov     eax, dword [ebp+8H]                     ; 101C _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 101F _ 8B. 40, 0C
        cmp     edx, eax                                ; 1022 _ 39. C2
        jnz     ?_052                                   ; 1024 _ 75, 07
        mov     eax, 4294967295                         ; 1026 _ B8, FFFFFFFF
        jmp     ?_054                                   ; 102B _ EB, 51

?_052:  mov     eax, dword [ebp+8H]                     ; 102D _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 1030 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 1032 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 1035 _ 8B. 40, 08
        add     eax, edx                                ; 1038 _ 01. D0
        movzx   eax, byte [eax]                         ; 103A _ 0F B6. 00
        movzx   eax, al                                 ; 103D _ 0F B6. C0
        mov     dword [ebp-4H], eax                     ; 1040 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 1043 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 1046 _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 1049 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 104C _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 104F _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 1052 _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 1055 _ 8B. 50, 08
        mov     eax, dword [ebp+8H]                     ; 1058 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 105B _ 8B. 40, 0C
        cmp     edx, eax                                ; 105E _ 39. C2
        jnz     ?_053                                   ; 1060 _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 1062 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 1065 _ C7. 40, 08, 00000000
?_053:  mov     eax, dword [ebp+8H]                     ; 106C _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 106F _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 1072 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1075 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 1078 _ 89. 50, 10
        mov     eax, dword [ebp-4H]                     ; 107B _ 8B. 45, FC
?_054:  leave                                           ; 107E _ C9
        ret                                             ; 107F _ C3
; _fifo8_get End of function

_fifo8_status:; Function begin
        push    ebp                                     ; 1080 _ 55
        mov     ebp, esp                                ; 1081 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 1083 _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 1086 _ 8B. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 1089 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 108C _ 8B. 40, 10
        sub     edx, eax                                ; 108F _ 29. C2
        mov     eax, edx                                ; 1091 _ 89. D0
        pop     ebp                                     ; 1093 _ 5D
        ret                                             ; 1094 _ C3
; _fifo8_status End of function

_mouse_decode:; Function begin
        push    ebp                                     ; 1095 _ 55
        mov     ebp, esp                                ; 1096 _ 89. E5
        sub     esp, 4                                  ; 1098 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 109B _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 109E _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 10A1 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 10A4 _ 0F B6. 40, 03
        test    al, al                                  ; 10A8 _ 84. C0
        jnz     ?_056                                   ; 10AA _ 75, 17
        cmp     byte [ebp-4H], -6                       ; 10AC _ 80. 7D, FC, FA
        jnz     ?_055                                   ; 10B0 _ 75, 07
        mov     eax, dword [ebp+8H]                     ; 10B2 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 10B5 _ C6. 40, 03, 01
?_055:  mov     eax, 0                                  ; 10B9 _ B8, 00000000
        jmp     ?_063                                   ; 10BE _ E9, 0000010F

?_056:  mov     eax, dword [ebp+8H]                     ; 10C3 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 10C6 _ 0F B6. 40, 03
        cmp     al, 1                                   ; 10CA _ 3C, 01
        jnz     ?_058                                   ; 10CC _ 75, 28
        movzx   eax, byte [ebp-4H]                      ; 10CE _ 0F B6. 45, FC
        and     eax, 0C8H                               ; 10D2 _ 25, 000000C8
        cmp     eax, 8                                  ; 10D7 _ 83. F8, 08
        jnz     ?_057                                   ; 10DA _ 75, 10
        mov     edx, dword [ebp+8H]                     ; 10DC _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 10DF _ 0F B6. 45, FC
        mov     byte [edx], al                          ; 10E3 _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 10E5 _ 8B. 45, 08
        mov     byte [eax+3H], 2                        ; 10E8 _ C6. 40, 03, 02
?_057:  mov     eax, 0                                  ; 10EC _ B8, 00000000
        jmp     ?_063                                   ; 10F1 _ E9, 000000DC

?_058:  mov     eax, dword [ebp+8H]                     ; 10F6 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 10F9 _ 0F B6. 40, 03
        cmp     al, 2                                   ; 10FD _ 3C, 02
        jnz     ?_059                                   ; 10FF _ 75, 1B
        mov     edx, dword [ebp+8H]                     ; 1101 _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 1104 _ 0F B6. 45, FC
        mov     byte [edx+1H], al                       ; 1108 _ 88. 42, 01
        mov     eax, dword [ebp+8H]                     ; 110B _ 8B. 45, 08
        mov     byte [eax+3H], 3                        ; 110E _ C6. 40, 03, 03
        mov     eax, 0                                  ; 1112 _ B8, 00000000
        jmp     ?_063                                   ; 1117 _ E9, 000000B6

?_059:  mov     eax, dword [ebp+8H]                     ; 111C _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 111F _ 0F B6. 40, 03
        cmp     al, 3                                   ; 1123 _ 3C, 03
        jne     ?_062                                   ; 1125 _ 0F 85, 000000A2
        mov     edx, dword [ebp+8H]                     ; 112B _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 112E _ 0F B6. 45, FC
        mov     byte [edx+2H], al                       ; 1132 _ 88. 42, 02
        mov     eax, dword [ebp+8H]                     ; 1135 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 1138 _ C6. 40, 03, 01
        mov     eax, dword [ebp+8H]                     ; 113C _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 113F _ 0F B6. 00
        movzx   eax, al                                 ; 1142 _ 0F B6. C0
        and     eax, 07H                                ; 1145 _ 83. E0, 07
        mov     edx, eax                                ; 1148 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 114A _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 114D _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 1150 _ 8B. 45, 08
        movzx   eax, byte [eax+1H]                      ; 1153 _ 0F B6. 40, 01
        movzx   eax, al                                 ; 1157 _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 115A _ 8B. 55, 08
        mov     dword [edx+4H], eax                     ; 115D _ 89. 42, 04
        mov     eax, dword [ebp+8H]                     ; 1160 _ 8B. 45, 08
        movzx   eax, byte [eax+2H]                      ; 1163 _ 0F B6. 40, 02
        movzx   eax, al                                 ; 1167 _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 116A _ 8B. 55, 08
        mov     dword [edx+8H], eax                     ; 116D _ 89. 42, 08
        mov     eax, dword [ebp+8H]                     ; 1170 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1173 _ 0F B6. 00
        movzx   eax, al                                 ; 1176 _ 0F B6. C0
        and     eax, 10H                                ; 1179 _ 83. E0, 10
        test    eax, eax                                ; 117C _ 85. C0
        jz      ?_060                                   ; 117E _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 1180 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 1183 _ 8B. 40, 04
        or      eax, 0FFFFFF00H                         ; 1186 _ 0D, FFFFFF00
        mov     edx, eax                                ; 118B _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 118D _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 1190 _ 89. 50, 04
?_060:  mov     eax, dword [ebp+8H]                     ; 1193 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1196 _ 0F B6. 00
        movzx   eax, al                                 ; 1199 _ 0F B6. C0
        and     eax, 20H                                ; 119C _ 83. E0, 20
        test    eax, eax                                ; 119F _ 85. C0
        jz      ?_061                                   ; 11A1 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 11A3 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 11A6 _ 8B. 40, 08
        or      eax, 0FFFFFF00H                         ; 11A9 _ 0D, FFFFFF00
        mov     edx, eax                                ; 11AE _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 11B0 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 11B3 _ 89. 50, 08
?_061:  mov     eax, dword [ebp+8H]                     ; 11B6 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 11B9 _ 8B. 40, 08
        neg     eax                                     ; 11BC _ F7. D8
        mov     edx, eax                                ; 11BE _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 11C0 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 11C3 _ 89. 50, 08
        mov     eax, 1                                  ; 11C6 _ B8, 00000001
        jmp     ?_063                                   ; 11CB _ EB, 05

?_062:  mov     eax, 4294967295                         ; 11CD _ B8, FFFFFFFF
?_063:  leave                                           ; 11D2 _ C9
        ret                                             ; 11D3 _ C3
; _mouse_decode End of function

_showMemoryInfo:; Function begin
        push    ebp                                     ; 11D4 _ 55
        mov     ebp, esp                                ; 11D5 _ 89. E5
        sub     esp, 88                                 ; 11D7 _ 83. EC, 58
        mov     dword [ebp-0CH], 0                      ; 11DA _ C7. 45, F4, 00000000
        mov     dword [ebp-10H], 0                      ; 11E1 _ C7. 45, F0, 00000000
        mov     dword [ebp-14H], 104                    ; 11E8 _ C7. 45, EC, 00000068
        mov     dword [ebp-18H], 80                     ; 11EF _ C7. 45, E8, 00000050
        mov     dword [esp+18H], 100                    ; 11F6 _ C7. 44 24, 18, 00000064
        mov     eax, dword [ebp+14H]                    ; 11FE _ 8B. 45, 14
        mov     dword [esp+14H], eax                    ; 1201 _ 89. 44 24, 14
        mov     dword [esp+10H], 0                      ; 1205 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 120D _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 14                      ; 1215 _ C7. 44 24, 08, 0000000E
        mov     eax, dword [ebp+14H]                    ; 121D _ 8B. 45, 14
        mov     dword [esp+4H], eax                     ; 1220 _ 89. 44 24, 04
        mov     eax, dword [ebp+0CH]                    ; 1224 _ 8B. 45, 0C
        mov     dword [esp], eax                        ; 1227 _ 89. 04 24
        call    _boxfill8                               ; 122A _ E8, FFFFF7AF
        mov     eax, dword [ebp+18H]                    ; 122F _ 8B. 45, 18
        movsx   eax, al                                 ; 1232 _ 0F BE. C0
        mov     dword [esp+14H], ?_088                  ; 1235 _ C7. 44 24, 14, 0000001E(d)
        mov     dword [esp+10H], eax                    ; 123D _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1241 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1244 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 1248 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 124B _ 89. 44 24, 08
        mov     eax, dword [ebp+14H]                    ; 124F _ 8B. 45, 14
        mov     dword [esp+4H], eax                     ; 1252 _ 89. 44 24, 04
        mov     eax, dword [ebp+0CH]                    ; 1256 _ 8B. 45, 0C
        mov     dword [esp], eax                        ; 1259 _ 89. 04 24
        call    _showString                             ; 125C _ E8, FFFFF651
        mov     eax, dword [ebp+10H]                    ; 1261 _ 8B. 45, 10
        mov     dword [esp], eax                        ; 1264 _ 89. 04 24
        call    _intToHexStr                            ; 1267 _ E8, FFFFFB5F
        mov     dword [ebp-1CH], eax                    ; 126C _ 89. 45, E4
        mov     eax, dword [ebp+18H]                    ; 126F _ 8B. 45, 18
        movsx   eax, al                                 ; 1272 _ 0F BE. C0
        mov     edx, dword [ebp-1CH]                    ; 1275 _ 8B. 55, E4
        mov     dword [esp+14H], edx                    ; 1278 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 127C _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1280 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1283 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 1287 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 128A _ 89. 44 24, 08
        mov     eax, dword [ebp+14H]                    ; 128E _ 8B. 45, 14
        mov     dword [esp+4H], eax                     ; 1291 _ 89. 44 24, 04
        mov     eax, dword [ebp+0CH]                    ; 1295 _ 8B. 45, 0C
        mov     dword [esp], eax                        ; 1298 _ 89. 04 24
        call    _showString                             ; 129B _ E8, FFFFF612
        add     dword [ebp-10H], 16                     ; 12A0 _ 83. 45, F0, 10
        mov     eax, dword [ebp+18H]                    ; 12A4 _ 8B. 45, 18
        movsx   eax, al                                 ; 12A7 _ 0F BE. C0
        mov     dword [esp+14H], ?_089                  ; 12AA _ C7. 44 24, 14, 00000028(d)
        mov     dword [esp+10H], eax                    ; 12B2 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 12B6 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 12B9 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 12BD _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 12C0 _ 89. 44 24, 08
        mov     eax, dword [ebp+14H]                    ; 12C4 _ 8B. 45, 14
        mov     dword [esp+4H], eax                     ; 12C7 _ 89. 44 24, 04
        mov     eax, dword [ebp+0CH]                    ; 12CB _ 8B. 45, 0C
        mov     dword [esp], eax                        ; 12CE _ 89. 04 24
        call    _showString                             ; 12D1 _ E8, FFFFF5DC
        mov     eax, dword [ebp+8H]                     ; 12D6 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 12D9 _ 8B. 00
        mov     dword [esp], eax                        ; 12DB _ 89. 04 24
        call    _intToHexStr                            ; 12DE _ E8, FFFFFAE8
        mov     dword [ebp-20H], eax                    ; 12E3 _ 89. 45, E0
        mov     eax, dword [ebp+18H]                    ; 12E6 _ 8B. 45, 18
        movsx   eax, al                                 ; 12E9 _ 0F BE. C0
        mov     edx, dword [ebp-20H]                    ; 12EC _ 8B. 55, E0
        mov     dword [esp+14H], edx                    ; 12EF _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 12F3 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 12F7 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 12FA _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 12FE _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 1301 _ 89. 44 24, 08
        mov     eax, dword [ebp+14H]                    ; 1305 _ 8B. 45, 14
        mov     dword [esp+4H], eax                     ; 1308 _ 89. 44 24, 04
        mov     eax, dword [ebp+0CH]                    ; 130C _ 8B. 45, 0C
        mov     dword [esp], eax                        ; 130F _ 89. 04 24
        call    _showString                             ; 1312 _ E8, FFFFF59B
        add     dword [ebp-10H], 16                     ; 1317 _ 83. 45, F0, 10
        mov     eax, dword [ebp+18H]                    ; 131B _ 8B. 45, 18
        movsx   eax, al                                 ; 131E _ 0F BE. C0
        mov     dword [esp+14H], ?_090                  ; 1321 _ C7. 44 24, 14, 00000034(d)
        mov     dword [esp+10H], eax                    ; 1329 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 132D _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1330 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 1334 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 1337 _ 89. 44 24, 08
        mov     eax, dword [ebp+14H]                    ; 133B _ 8B. 45, 14
        mov     dword [esp+4H], eax                     ; 133E _ 89. 44 24, 04
        mov     eax, dword [ebp+0CH]                    ; 1342 _ 8B. 45, 0C
        mov     dword [esp], eax                        ; 1345 _ 89. 04 24
        call    _showString                             ; 1348 _ E8, FFFFF565
        mov     eax, dword [ebp+8H]                     ; 134D _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 1350 _ 8B. 40, 04
        mov     dword [esp], eax                        ; 1353 _ 89. 04 24
        call    _intToHexStr                            ; 1356 _ E8, FFFFFA70
        mov     dword [ebp-24H], eax                    ; 135B _ 89. 45, DC
        mov     eax, dword [ebp+18H]                    ; 135E _ 8B. 45, 18
        movsx   eax, al                                 ; 1361 _ 0F BE. C0
        mov     edx, dword [ebp-24H]                    ; 1364 _ 8B. 55, DC
        mov     dword [esp+14H], edx                    ; 1367 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 136B _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 136F _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1372 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 1376 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 1379 _ 89. 44 24, 08
        mov     eax, dword [ebp+14H]                    ; 137D _ 8B. 45, 14
        mov     dword [esp+4H], eax                     ; 1380 _ 89. 44 24, 04
        mov     eax, dword [ebp+0CH]                    ; 1384 _ 8B. 45, 0C
        mov     dword [esp], eax                        ; 1387 _ 89. 04 24
        call    _showString                             ; 138A _ E8, FFFFF523
        add     dword [ebp-10H], 16                     ; 138F _ 83. 45, F0, 10
        mov     eax, dword [ebp+18H]                    ; 1393 _ 8B. 45, 18
        movsx   eax, al                                 ; 1396 _ 0F BE. C0
        mov     dword [esp+14H], ?_091                  ; 1399 _ C7. 44 24, 14, 00000040(d)
        mov     dword [esp+10H], eax                    ; 13A1 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 13A5 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 13A8 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 13AC _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 13AF _ 89. 44 24, 08
        mov     eax, dword [ebp+14H]                    ; 13B3 _ 8B. 45, 14
        mov     dword [esp+4H], eax                     ; 13B6 _ 89. 44 24, 04
        mov     eax, dword [ebp+0CH]                    ; 13BA _ 8B. 45, 0C
        mov     dword [esp], eax                        ; 13BD _ 89. 04 24
        call    _showString                             ; 13C0 _ E8, FFFFF4ED
        mov     eax, dword [ebp+8H]                     ; 13C5 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 13C8 _ 8B. 40, 08
        mov     dword [esp], eax                        ; 13CB _ 89. 04 24
        call    _intToHexStr                            ; 13CE _ E8, FFFFF9F8
        mov     dword [ebp-28H], eax                    ; 13D3 _ 89. 45, D8
        mov     eax, dword [ebp+18H]                    ; 13D6 _ 8B. 45, 18
        movsx   eax, al                                 ; 13D9 _ 0F BE. C0
        mov     edx, dword [ebp-28H]                    ; 13DC _ 8B. 55, D8
        mov     dword [esp+14H], edx                    ; 13DF _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 13E3 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 13E7 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 13EA _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 13EE _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 13F1 _ 89. 44 24, 08
        mov     eax, dword [ebp+14H]                    ; 13F5 _ 8B. 45, 14
        mov     dword [esp+4H], eax                     ; 13F8 _ 89. 44 24, 04
        mov     eax, dword [ebp+0CH]                    ; 13FC _ 8B. 45, 0C
        mov     dword [esp], eax                        ; 13FF _ 89. 04 24
        call    _showString                             ; 1402 _ E8, FFFFF4AB
        add     dword [ebp-10H], 16                     ; 1407 _ 83. 45, F0, 10
        mov     eax, dword [ebp+18H]                    ; 140B _ 8B. 45, 18
        movsx   eax, al                                 ; 140E _ 0F BE. C0
        mov     dword [esp+14H], ?_092                  ; 1411 _ C7. 44 24, 14, 0000004C(d)
        mov     dword [esp+10H], eax                    ; 1419 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 141D _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1420 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 1424 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 1427 _ 89. 44 24, 08
        mov     eax, dword [ebp+14H]                    ; 142B _ 8B. 45, 14
        mov     dword [esp+4H], eax                     ; 142E _ 89. 44 24, 04
        mov     eax, dword [ebp+0CH]                    ; 1432 _ 8B. 45, 0C
        mov     dword [esp], eax                        ; 1435 _ 89. 04 24
        call    _showString                             ; 1438 _ E8, FFFFF475
        mov     eax, dword [ebp+8H]                     ; 143D _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 1440 _ 8B. 40, 0C
        mov     dword [esp], eax                        ; 1443 _ 89. 04 24
        call    _intToHexStr                            ; 1446 _ E8, FFFFF980
        mov     dword [ebp-2CH], eax                    ; 144B _ 89. 45, D4
        mov     eax, dword [ebp+18H]                    ; 144E _ 8B. 45, 18
        movsx   eax, al                                 ; 1451 _ 0F BE. C0
        mov     edx, dword [ebp-2CH]                    ; 1454 _ 8B. 55, D4
        mov     dword [esp+14H], edx                    ; 1457 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 145B _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 145F _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1462 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 1466 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 1469 _ 89. 44 24, 08
        mov     eax, dword [ebp+14H]                    ; 146D _ 8B. 45, 14
        mov     dword [esp+4H], eax                     ; 1470 _ 89. 44 24, 04
        mov     eax, dword [ebp+0CH]                    ; 1474 _ 8B. 45, 0C
        mov     dword [esp], eax                        ; 1477 _ 89. 04 24
        call    _showString                             ; 147A _ E8, FFFFF433
        add     dword [ebp-10H], 16                     ; 147F _ 83. 45, F0, 10
        mov     eax, dword [ebp+18H]                    ; 1483 _ 8B. 45, 18
        movsx   eax, al                                 ; 1486 _ 0F BE. C0
        mov     dword [esp+14H], ?_093                  ; 1489 _ C7. 44 24, 14, 00000059(d)
        mov     dword [esp+10H], eax                    ; 1491 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1495 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1498 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 149C _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 149F _ 89. 44 24, 08
        mov     eax, dword [ebp+14H]                    ; 14A3 _ 8B. 45, 14
        mov     dword [esp+4H], eax                     ; 14A6 _ 89. 44 24, 04
        mov     eax, dword [ebp+0CH]                    ; 14AA _ 8B. 45, 0C
        mov     dword [esp], eax                        ; 14AD _ 89. 04 24
        call    _showString                             ; 14B0 _ E8, FFFFF3FD
        mov     eax, dword [ebp+8H]                     ; 14B5 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 14B8 _ 8B. 40, 10
        mov     dword [esp], eax                        ; 14BB _ 89. 04 24
        call    _intToHexStr                            ; 14BE _ E8, FFFFF908
        mov     dword [ebp-30H], eax                    ; 14C3 _ 89. 45, D0
        mov     eax, dword [ebp+18H]                    ; 14C6 _ 8B. 45, 18
        movsx   eax, al                                 ; 14C9 _ 0F BE. C0
        mov     edx, dword [ebp-30H]                    ; 14CC _ 8B. 55, D0
        mov     dword [esp+14H], edx                    ; 14CF _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 14D3 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 14D7 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 14DA _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 14DE _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 14E1 _ 89. 44 24, 08
        mov     eax, dword [ebp+14H]                    ; 14E5 _ 8B. 45, 14
        mov     dword [esp+4H], eax                     ; 14E8 _ 89. 44 24, 04
        mov     eax, dword [ebp+0CH]                    ; 14EC _ 8B. 45, 0C
        mov     dword [esp], eax                        ; 14EF _ 89. 04 24
        call    _showString                             ; 14F2 _ E8, FFFFF3BB
        nop                                             ; 14F7 _ 90
        leave                                           ; 14F8 _ C9
        ret                                             ; 14F9 _ C3
; _showMemoryInfo End of function

        nop                                             ; 14FA _ 90
        nop                                             ; 14FB _ 90

.text:  ; Local function

_memman_init:
        push    ebp                                     ; 14FC _ 55
        mov     ebp, esp                                ; 14FD _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 14FF _ 8B. 45, 08
        mov     dword [eax], 0                          ; 1502 _ C7. 00, 00000000
        mov     eax, dword [ebp+8H]                     ; 1508 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 150B _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 1512 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 1515 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 151C _ 8B. 45, 08
        mov     dword [eax+0CH], 0                      ; 151F _ C7. 40, 0C, 00000000
        nop                                             ; 1526 _ 90
        pop     ebp                                     ; 1527 _ 5D
        ret                                             ; 1528 _ C3

_memman_total:; Function begin
        push    ebp                                     ; 1529 _ 55
        mov     ebp, esp                                ; 152A _ 89. E5
        sub     esp, 16                                 ; 152C _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 152F _ C7. 45, FC, 00000000
        mov     dword [ebp-8H], 0                       ; 1536 _ C7. 45, F8, 00000000
        jmp     ?_065                                   ; 153D _ EB, 14

?_064:  mov     eax, dword [ebp+8H]                     ; 153F _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 1542 _ 8B. 55, F8
        add     edx, 2                                  ; 1545 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 1548 _ 8B. 44 D0, 04
        add     dword [ebp-4H], eax                     ; 154C _ 01. 45, FC
        add     dword [ebp-8H], 1                       ; 154F _ 83. 45, F8, 01
?_065:  mov     eax, dword [ebp+8H]                     ; 1553 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1556 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 1558 _ 39. 45, F8
        jl      ?_064                                   ; 155B _ 7C, E2
        mov     eax, dword [ebp-4H]                     ; 155D _ 8B. 45, FC
        leave                                           ; 1560 _ C9
        ret                                             ; 1561 _ C3
; _memman_total End of function

_memman_alloc:; Function begin
        push    ebp                                     ; 1562 _ 55
        mov     ebp, esp                                ; 1563 _ 89. E5
        sub     esp, 16                                 ; 1565 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 1568 _ C7. 45, FC, 00000000
        jmp     ?_069                                   ; 156F _ EB, 65

?_066:  mov     eax, dword [ebp+8H]                     ; 1571 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 1574 _ 8B. 55, FC
        add     edx, 2                                  ; 1577 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 157A _ 8B. 44 D0, 04
        cmp     dword [ebp+0CH], eax                    ; 157E _ 39. 45, 0C
        ja      ?_068                                   ; 1581 _ 77, 4F
        mov     eax, dword [ebp+8H]                     ; 1583 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 1586 _ 8B. 55, FC
        add     edx, 2                                  ; 1589 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 158C _ 8B. 04 D0
        mov     dword [ebp-8H], eax                     ; 158F _ 89. 45, F8
        mov     eax, dword [ebp+8H]                     ; 1592 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 1595 _ 8B. 55, FC
        add     edx, 2                                  ; 1598 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 159B _ 8B. 44 D0, 04
        sub     eax, dword [ebp+0CH]                    ; 159F _ 2B. 45, 0C
        mov     edx, dword [ebp+8H]                     ; 15A2 _ 8B. 55, 08
        mov     ecx, dword [ebp-4H]                     ; 15A5 _ 8B. 4D, FC
        add     ecx, 2                                  ; 15A8 _ 83. C1, 02
        mov     dword [edx+ecx*8+4H], eax               ; 15AB _ 89. 44 CA, 04
        mov     eax, dword [ebp+8H]                     ; 15AF _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 15B2 _ 8B. 55, FC
        add     edx, 2                                  ; 15B5 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 15B8 _ 8B. 44 D0, 04
        test    eax, eax                                ; 15BC _ 85. C0
        jnz     ?_067                                   ; 15BE _ 75, 0D
        mov     eax, dword [ebp+8H]                     ; 15C0 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 15C3 _ 8B. 00
        lea     edx, [eax-1H]                           ; 15C5 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 15C8 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 15CB _ 89. 10
?_067:  mov     eax, dword [ebp-8H]                     ; 15CD _ 8B. 45, F8
        jmp     ?_070                                   ; 15D0 _ EB, 13

?_068:  add     dword [ebp-4H], 1                       ; 15D2 _ 83. 45, FC, 01
?_069:  mov     eax, dword [ebp+8H]                     ; 15D6 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 15D9 _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 15DB _ 39. 45, FC
        jl      ?_066                                   ; 15DE _ 7C, 91
        mov     eax, 0                                  ; 15E0 _ B8, 00000000
?_070:  leave                                           ; 15E5 _ C9
        ret                                             ; 15E6 _ C3
; _memman_alloc End of function

_memman_free:; Function begin
        push    ebp                                     ; 15E7 _ 55
        mov     ebp, esp                                ; 15E8 _ 89. E5
        push    ebx                                     ; 15EA _ 53
        sub     esp, 16                                 ; 15EB _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 15EE _ C7. 45, F8, 00000000
        jmp     ?_072                                   ; 15F5 _ EB, 15

?_071:  mov     eax, dword [ebp+8H]                     ; 15F7 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 15FA _ 8B. 55, F8
        add     edx, 2                                  ; 15FD _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 1600 _ 8B. 04 D0
        cmp     dword [ebp+0CH], eax                    ; 1603 _ 39. 45, 0C
        jc      ?_073                                   ; 1606 _ 72, 10
        add     dword [ebp-8H], 1                       ; 1608 _ 83. 45, F8, 01
?_072:  mov     eax, dword [ebp+8H]                     ; 160C _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 160F _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 1611 _ 39. 45, F8
        jl      ?_071                                   ; 1614 _ 7C, E1
        jmp     ?_074                                   ; 1616 _ EB, 01

?_073:  nop                                             ; 1618 _ 90
?_074:  cmp     dword [ebp-8H], 0                       ; 1619 _ 83. 7D, F8, 00
        jle     ?_076                                   ; 161D _ 0F 8E, 000000B8
        mov     eax, dword [ebp-8H]                     ; 1623 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 1626 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 1629 _ 8B. 45, 08
        add     edx, 2                                  ; 162C _ 83. C2, 02
        mov     ecx, dword [eax+edx*8]                  ; 162F _ 8B. 0C D0
        mov     eax, dword [ebp-8H]                     ; 1632 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 1635 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 1638 _ 8B. 45, 08
        add     edx, 2                                  ; 163B _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 163E _ 8B. 44 D0, 04
        add     eax, ecx                                ; 1642 _ 01. C8
        cmp     dword [ebp+0CH], eax                    ; 1644 _ 39. 45, 0C
        jne     ?_076                                   ; 1647 _ 0F 85, 0000008E
        mov     eax, dword [ebp-8H]                     ; 164D _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 1650 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 1653 _ 8B. 45, 08
        add     edx, 2                                  ; 1656 _ 83. C2, 02
        mov     ecx, dword [eax+edx*8+4H]               ; 1659 _ 8B. 4C D0, 04
        mov     eax, dword [ebp-8H]                     ; 165D _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 1660 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 1663 _ 8B. 45, 10
        add     ecx, eax                                ; 1666 _ 01. C1
        mov     eax, dword [ebp+8H]                     ; 1668 _ 8B. 45, 08
        add     edx, 2                                  ; 166B _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 166E _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 1672 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1675 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 1677 _ 39. 45, F8
        jge     ?_075                                   ; 167A _ 7D, 55
        mov     edx, dword [ebp+0CH]                    ; 167C _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 167F _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 1682 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 1685 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 1688 _ 8B. 55, F8
        add     edx, 2                                  ; 168B _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 168E _ 8B. 04 D0
        cmp     ecx, eax                                ; 1691 _ 39. C1
        jnz     ?_075                                   ; 1693 _ 75, 3C
        mov     eax, dword [ebp-8H]                     ; 1695 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 1698 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 169B _ 8B. 45, 08
        add     edx, 2                                  ; 169E _ 83. C2, 02
        mov     ecx, dword [eax+edx*8+4H]               ; 16A1 _ 8B. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 16A5 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 16A8 _ 8B. 55, F8
        add     edx, 2                                  ; 16AB _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 16AE _ 8B. 44 D0, 04
        mov     edx, dword [ebp-8H]                     ; 16B2 _ 8B. 55, F8
        sub     edx, 1                                  ; 16B5 _ 83. EA, 01
        add     ecx, eax                                ; 16B8 _ 01. C1
        mov     eax, dword [ebp+8H]                     ; 16BA _ 8B. 45, 08
        add     edx, 2                                  ; 16BD _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 16C0 _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 16C4 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 16C7 _ 8B. 00
        lea     edx, [eax-1H]                           ; 16C9 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 16CC _ 8B. 45, 08
        mov     dword [eax], edx                        ; 16CF _ 89. 10
?_075:  mov     eax, 0                                  ; 16D1 _ B8, 00000000
        jmp     ?_082                                   ; 16D6 _ E9, 0000011C

?_076:  mov     eax, dword [ebp+8H]                     ; 16DB _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 16DE _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 16E0 _ 39. 45, F8
        jge     ?_077                                   ; 16E3 _ 7D, 52
        mov     edx, dword [ebp+0CH]                    ; 16E5 _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 16E8 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 16EB _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 16EE _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 16F1 _ 8B. 55, F8
        add     edx, 2                                  ; 16F4 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 16F7 _ 8B. 04 D0
        cmp     ecx, eax                                ; 16FA _ 39. C1
        jnz     ?_077                                   ; 16FC _ 75, 39
        mov     eax, dword [ebp+8H]                     ; 16FE _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 1701 _ 8B. 55, F8
        add     edx, 2                                  ; 1704 _ 83. C2, 02
        mov     ecx, dword [ebp+0CH]                    ; 1707 _ 8B. 4D, 0C
        mov     dword [eax+edx*8], ecx                  ; 170A _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 170D _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 1710 _ 8B. 55, F8
        add     edx, 2                                  ; 1713 _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 1716 _ 8B. 54 D0, 04
        mov     eax, dword [ebp+10H]                    ; 171A _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 171D _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 1720 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 1723 _ 8B. 55, F8
        add     edx, 2                                  ; 1726 _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 1729 _ 89. 4C D0, 04
        mov     eax, 0                                  ; 172D _ B8, 00000000
        jmp     ?_082                                   ; 1732 _ E9, 000000C0

?_077:  mov     eax, dword [ebp+8H]                     ; 1737 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 173A _ 8B. 00
        cmp     eax, 4095                               ; 173C _ 3D, 00000FFF
        jg      ?_081                                   ; 1741 _ 0F 8F, 00000087
        mov     eax, dword [ebp+8H]                     ; 1747 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 174A _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 174C _ 89. 45, F4
        jmp     ?_079                                   ; 174F _ EB, 28

?_078:  mov     eax, dword [ebp-0CH]                    ; 1751 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 1754 _ 8D. 50, FF
        mov     ecx, dword [ebp+8H]                     ; 1757 _ 8B. 4D, 08
        mov     eax, dword [ebp-0CH]                    ; 175A _ 8B. 45, F4
        lea     ebx, [eax+2H]                           ; 175D _ 8D. 58, 02
        mov     eax, dword [ebp+8H]                     ; 1760 _ 8B. 45, 08
        add     edx, 2                                  ; 1763 _ 83. C2, 02
        lea     edx, [eax+edx*8]                        ; 1766 _ 8D. 14 D0
        mov     eax, dword [edx]                        ; 1769 _ 8B. 02
        mov     edx, dword [edx+4H]                     ; 176B _ 8B. 52, 04
        mov     dword [ecx+ebx*8], eax                  ; 176E _ 89. 04 D9
        mov     dword [ecx+ebx*8+4H], edx               ; 1771 _ 89. 54 D9, 04
        sub     dword [ebp-0CH], 1                      ; 1775 _ 83. 6D, F4, 01
?_079:  mov     eax, dword [ebp-0CH]                    ; 1779 _ 8B. 45, F4
        cmp     eax, dword [ebp-8H]                     ; 177C _ 3B. 45, F8
        jg      ?_078                                   ; 177F _ 7F, D0
        mov     eax, dword [ebp+8H]                     ; 1781 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1784 _ 8B. 00
        lea     edx, [eax+1H]                           ; 1786 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1789 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 178C _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 178E _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1791 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1794 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1797 _ 8B. 00
        cmp     edx, eax                                ; 1799 _ 39. C2
        jge     ?_080                                   ; 179B _ 7D, 0B
        mov     eax, dword [ebp+8H]                     ; 179D _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 17A0 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 17A2 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 17A5 _ 89. 50, 04
?_080:  mov     eax, dword [ebp+8H]                     ; 17A8 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 17AB _ 8B. 55, F8
        add     edx, 2                                  ; 17AE _ 83. C2, 02
        mov     ecx, dword [ebp+0CH]                    ; 17B1 _ 8B. 4D, 0C
        mov     dword [eax+edx*8], ecx                  ; 17B4 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 17B7 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 17BA _ 8B. 55, F8
        add     edx, 2                                  ; 17BD _ 83. C2, 02
        mov     ecx, dword [ebp+10H]                    ; 17C0 _ 8B. 4D, 10
        mov     dword [eax+edx*8+4H], ecx               ; 17C3 _ 89. 4C D0, 04
        mov     eax, 0                                  ; 17C7 _ B8, 00000000
        jmp     ?_082                                   ; 17CC _ EB, 29

?_081:  mov     eax, dword [ebp+8H]                     ; 17CE _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 17D1 _ 8B. 40, 0C
        lea     edx, [eax+1H]                           ; 17D4 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 17D7 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 17DA _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 17DD _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 17E0 _ 8B. 40, 08
        mov     edx, eax                                ; 17E3 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 17E5 _ 8B. 45, 10
        add     eax, edx                                ; 17E8 _ 01. D0
        mov     edx, eax                                ; 17EA _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 17EC _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 17EF _ 89. 50, 08
        mov     eax, 4294967295                         ; 17F2 _ B8, FFFFFFFF
?_082:  add     esp, 16                                 ; 17F7 _ 83. C4, 10
        pop     ebx                                     ; 17FA _ 5B
        pop     ebp                                     ; 17FB _ 5D
        ret                                             ; 17FC _ C3
; _memman_free End of function

        nop                                             ; 17FD _ 90
        nop                                             ; 17FE _ 90
        nop                                             ; 17FF _ 90



_memman:                                                ; dword
        dd 00100000H                                    ; 0000 _ 1048576 

_keyval:                                                ; byte
        db 30H, 58H                                     ; 0004 _ 0X

?_083:  db 00H                                          ; 0006 _ .

?_084:  db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0007 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 000F _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0017 _ ........
        db 00H                                          ; 001F _ .

_table_rgb.2108:                                        ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0020 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0028 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0030 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0038 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 0040 _ ........
        db 00H, 84H, 00H, 84H, 84H, 84H, 84H, 84H       ; 0048 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0050 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0058 _ ........

_cursor.2155:                                           ; byte
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



?_085:                                                  ; byte
        db 46H, 72H, 61H, 67H, 69H, 6CH, 65H, 20H       ; 0000 _ Fragile 
        db 4FH, 53H, 00H                                ; 0008 _ OS.

?_086:                                                  ; byte
        db 74H, 6FH, 74H, 61H, 6CH, 20H, 6DH, 65H       ; 000B _ total me
        db 6DH, 20H, 69H, 73H, 3AH, 20H, 00H            ; 0013 _ m is: .

?_087:                                                  ; byte
        db 20H, 4DH, 42H, 00H                           ; 001A _  MB.

?_088:                                                  ; byte
        db 70H, 61H, 67H, 65H, 20H, 69H, 73H, 3AH       ; 001E _ page is:
        db 20H, 00H                                     ; 0026 _  .

?_089:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0028 _ BaseAddr
        db 4CH, 3AH, 20H, 00H                           ; 0030 _ L: .

?_090:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0034 _ BaseAddr
        db 48H, 3AH, 20H, 00H                           ; 003C _ H: .

?_091:                                                  ; byte
        db 6CH, 65H, 6EH, 67H, 74H, 68H, 4CH, 6FH       ; 0040 _ lengthLo
        db 77H, 3AH, 20H, 00H                           ; 0048 _ w: .

?_092:                                                  ; byte
        db 6CH, 65H, 6EH, 67H, 74H, 68H, 48H, 69H       ; 004C _ lengthHi
        db 67H, 68H, 3AH, 20H, 00H                      ; 0054 _ gh: .

?_093:                                                  ; byte
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

?_094:  resw    1                                       ; 0104

?_095:  resw    1                                       ; 0106

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

_str.2203:                                              ; byte
        resb    1                                       ; 0200

?_096:  resb    9                                       ; 0201

?_097:  resb    22                                      ; 020A


