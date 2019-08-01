; Disassembly of file: desktop.o
; Thu Aug  1 21:37:35 2019
; Mode: 32 bits
; Syntax: YASM/NASM
; Instruction set: 80386
_drawDesktop:
        push    ebp                                     ; 0000 _ 55
        mov     ebp, esp                                ; 0001 _ 89. E5
        push    ebx                                     ; 0003 _ 53
        sub     esp, 68                                 ; 0004 _ 83. EC, 44
        lea     eax, [ebp-1CH]                          ; 0007 _ 8D. 45, E4
        mov     dword [esp], eax                        ; 000A _ 89. 04 24
        call    _initBootInfo                           ; 000D _ E8, 000003CE
        mov     eax, dword [ebp-1CH]                    ; 0012 _ 8B. 45, E4
        mov     dword [ebp-0CH], eax                    ; 0015 _ 89. 45, F4
        movzx   eax, word [ebp-18H]                     ; 0018 _ 0F B7. 45, E8
        cwde                                            ; 001C _ 98
        mov     dword [ebp-10H], eax                    ; 001D _ 89. 45, F0
        movzx   eax, word [ebp-16H]                     ; 0020 _ 0F B7. 45, EA
        cwde                                            ; 0024 _ 98
        mov     dword [ebp-14H], eax                    ; 0025 _ 89. 45, EC
        call    _init_palette                           ; 0028 _ E8, 000003D4
        mov     eax, dword [ebp-14H]                    ; 002D _ 8B. 45, EC
        lea     edx, [eax-1DH]                          ; 0030 _ 8D. 50, E3
        mov     eax, dword [ebp-10H]                    ; 0033 _ 8B. 45, F0
        sub     eax, 1                                  ; 0036 _ 83. E8, 01
        mov     dword [esp+18H], edx                    ; 0039 _ 89. 54 24, 18
        mov     dword [esp+14H], eax                    ; 003D _ 89. 44 24, 14
        mov     dword [esp+10H], 0                      ; 0041 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 0049 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 14                      ; 0051 _ C7. 44 24, 08, 0000000E
        mov     eax, dword [ebp-10H]                    ; 0059 _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 005C _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 0060 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 0063 _ 89. 04 24
        call    _boxfill8                               ; 0066 _ E8, 00000461
        mov     eax, dword [ebp-14H]                    ; 006B _ 8B. 45, EC
        lea     ecx, [eax-1CH]                          ; 006E _ 8D. 48, E4
        mov     eax, dword [ebp-10H]                    ; 0071 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 0074 _ 8D. 50, FF
        mov     eax, dword [ebp-14H]                    ; 0077 _ 8B. 45, EC
        sub     eax, 28                                 ; 007A _ 83. E8, 1C
        mov     dword [esp+18H], ecx                    ; 007D _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 0081 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 0085 _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 0089 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 0091 _ C7. 44 24, 08, 00000008
        mov     eax, dword [ebp-10H]                    ; 0099 _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 009C _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 00A0 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 00A3 _ 89. 04 24
        call    _boxfill8                               ; 00A6 _ E8, 00000421
        mov     eax, dword [ebp-14H]                    ; 00AB _ 8B. 45, EC
        lea     ecx, [eax-1BH]                          ; 00AE _ 8D. 48, E5
        mov     eax, dword [ebp-10H]                    ; 00B1 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 00B4 _ 8D. 50, FF
        mov     eax, dword [ebp-14H]                    ; 00B7 _ 8B. 45, EC
        sub     eax, 27                                 ; 00BA _ 83. E8, 1B
        mov     dword [esp+18H], ecx                    ; 00BD _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 00C1 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 00C5 _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 00C9 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 7                       ; 00D1 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp-10H]                    ; 00D9 _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 00DC _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 00E0 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 00E3 _ 89. 04 24
        call    _boxfill8                               ; 00E6 _ E8, 000003E1
        mov     eax, dword [ebp-14H]                    ; 00EB _ 8B. 45, EC
        lea     ecx, [eax-1H]                           ; 00EE _ 8D. 48, FF
        mov     eax, dword [ebp-10H]                    ; 00F1 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 00F4 _ 8D. 50, FF
        mov     eax, dword [ebp-14H]                    ; 00F7 _ 8B. 45, EC
        sub     eax, 26                                 ; 00FA _ 83. E8, 1A
        mov     dword [esp+18H], ecx                    ; 00FD _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 0101 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 0105 _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 0109 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 0111 _ C7. 44 24, 08, 00000008
        mov     eax, dword [ebp-10H]                    ; 0119 _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 011C _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 0120 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 0123 _ 89. 04 24
        call    _boxfill8                               ; 0126 _ E8, 000003A1
        mov     eax, dword [ebp-14H]                    ; 012B _ 8B. 45, EC
        lea     edx, [eax-18H]                          ; 012E _ 8D. 50, E8
        mov     eax, dword [ebp-14H]                    ; 0131 _ 8B. 45, EC
        sub     eax, 24                                 ; 0134 _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 0137 _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 013B _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 0143 _ 89. 44 24, 10
        mov     dword [esp+0CH], 3                      ; 0147 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 7                       ; 014F _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp-10H]                    ; 0157 _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 015A _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 015E _ 8B. 45, F4
        mov     dword [esp], eax                        ; 0161 _ 89. 04 24
        call    _boxfill8                               ; 0164 _ E8, 00000363
        mov     eax, dword [ebp-14H]                    ; 0169 _ 8B. 45, EC
        lea     edx, [eax-4H]                           ; 016C _ 8D. 50, FC
        mov     eax, dword [ebp-14H]                    ; 016F _ 8B. 45, EC
        sub     eax, 24                                 ; 0172 _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 0175 _ 89. 54 24, 18
        mov     dword [esp+14H], 2                      ; 0179 _ C7. 44 24, 14, 00000002
        mov     dword [esp+10H], eax                    ; 0181 _ 89. 44 24, 10
        mov     dword [esp+0CH], 2                      ; 0185 _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 7                       ; 018D _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp-10H]                    ; 0195 _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 0198 _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 019C _ 8B. 45, F4
        mov     dword [esp], eax                        ; 019F _ 89. 04 24
        call    _boxfill8                               ; 01A2 _ E8, 00000325
        mov     eax, dword [ebp-14H]                    ; 01A7 _ 8B. 45, EC
        lea     edx, [eax-4H]                           ; 01AA _ 8D. 50, FC
        mov     eax, dword [ebp-14H]                    ; 01AD _ 8B. 45, EC
        sub     eax, 4                                  ; 01B0 _ 83. E8, 04
        mov     dword [esp+18H], edx                    ; 01B3 _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 01B7 _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 01BF _ 89. 44 24, 10
        mov     dword [esp+0CH], 3                      ; 01C3 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 15                      ; 01CB _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp-10H]                    ; 01D3 _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 01D6 _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 01DA _ 8B. 45, F4
        mov     dword [esp], eax                        ; 01DD _ 89. 04 24
        call    _boxfill8                               ; 01E0 _ E8, 000002E7
        mov     eax, dword [ebp-14H]                    ; 01E5 _ 8B. 45, EC
        lea     edx, [eax-5H]                           ; 01E8 _ 8D. 50, FB
        mov     eax, dword [ebp-14H]                    ; 01EB _ 8B. 45, EC
        sub     eax, 23                                 ; 01EE _ 83. E8, 17
        mov     dword [esp+18H], edx                    ; 01F1 _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 01F5 _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 01FD _ 89. 44 24, 10
        mov     dword [esp+0CH], 59                     ; 0201 _ C7. 44 24, 0C, 0000003B
        mov     dword [esp+8H], 15                      ; 0209 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp-10H]                    ; 0211 _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 0214 _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 0218 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 021B _ 89. 04 24
        call    _boxfill8                               ; 021E _ E8, 000002A9
        mov     eax, dword [ebp-14H]                    ; 0223 _ 8B. 45, EC
        lea     edx, [eax-3H]                           ; 0226 _ 8D. 50, FD
        mov     eax, dword [ebp-14H]                    ; 0229 _ 8B. 45, EC
        sub     eax, 3                                  ; 022C _ 83. E8, 03
        mov     dword [esp+18H], edx                    ; 022F _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 0233 _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 023B _ 89. 44 24, 10
        mov     dword [esp+0CH], 2                      ; 023F _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 0                       ; 0247 _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp-10H]                    ; 024F _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 0252 _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 0256 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 0259 _ 89. 04 24
        call    _boxfill8                               ; 025C _ E8, 0000026B
        mov     eax, dword [ebp-14H]                    ; 0261 _ 8B. 45, EC
        lea     edx, [eax-3H]                           ; 0264 _ 8D. 50, FD
        mov     eax, dword [ebp-14H]                    ; 0267 _ 8B. 45, EC
        sub     eax, 24                                 ; 026A _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 026D _ 89. 54 24, 18
        mov     dword [esp+14H], 60                     ; 0271 _ C7. 44 24, 14, 0000003C
        mov     dword [esp+10H], eax                    ; 0279 _ 89. 44 24, 10
        mov     dword [esp+0CH], 60                     ; 027D _ C7. 44 24, 0C, 0000003C
        mov     dword [esp+8H], 0                       ; 0285 _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp-10H]                    ; 028D _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 0290 _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 0294 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 0297 _ 89. 04 24
        call    _boxfill8                               ; 029A _ E8, 0000022D
        mov     eax, dword [ebp-14H]                    ; 029F _ 8B. 45, EC
        lea     ebx, [eax-18H]                          ; 02A2 _ 8D. 58, E8
        mov     eax, dword [ebp-10H]                    ; 02A5 _ 8B. 45, F0
        lea     ecx, [eax-4H]                           ; 02A8 _ 8D. 48, FC
        mov     eax, dword [ebp-14H]                    ; 02AB _ 8B. 45, EC
        lea     edx, [eax-18H]                          ; 02AE _ 8D. 50, E8
        mov     eax, dword [ebp-10H]                    ; 02B1 _ 8B. 45, F0
        sub     eax, 47                                 ; 02B4 _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 02B7 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 02BB _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 02BF _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 02C3 _ 89. 44 24, 0C
        mov     dword [esp+8H], 15                      ; 02C7 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp-10H]                    ; 02CF _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 02D2 _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 02D6 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 02D9 _ 89. 04 24
        call    _boxfill8                               ; 02DC _ E8, 000001EB
        mov     eax, dword [ebp-14H]                    ; 02E1 _ 8B. 45, EC
        lea     ebx, [eax-4H]                           ; 02E4 _ 8D. 58, FC
        mov     eax, dword [ebp-10H]                    ; 02E7 _ 8B. 45, F0
        lea     ecx, [eax-2FH]                          ; 02EA _ 8D. 48, D1
        mov     eax, dword [ebp-14H]                    ; 02ED _ 8B. 45, EC
        lea     edx, [eax-17H]                          ; 02F0 _ 8D. 50, E9
        mov     eax, dword [ebp-10H]                    ; 02F3 _ 8B. 45, F0
        sub     eax, 47                                 ; 02F6 _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 02F9 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 02FD _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 0301 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 0305 _ 89. 44 24, 0C
        mov     dword [esp+8H], 15                      ; 0309 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp-10H]                    ; 0311 _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 0314 _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 0318 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 031B _ 89. 04 24
        call    _boxfill8                               ; 031E _ E8, 000001A9
        mov     eax, dword [ebp-14H]                    ; 0323 _ 8B. 45, EC
        lea     ebx, [eax-3H]                           ; 0326 _ 8D. 58, FD
        mov     eax, dword [ebp-10H]                    ; 0329 _ 8B. 45, F0
        lea     ecx, [eax-4H]                           ; 032C _ 8D. 48, FC
        mov     eax, dword [ebp-14H]                    ; 032F _ 8B. 45, EC
        lea     edx, [eax-3H]                           ; 0332 _ 8D. 50, FD
        mov     eax, dword [ebp-10H]                    ; 0335 _ 8B. 45, F0
        sub     eax, 47                                 ; 0338 _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 033B _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 033F _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 0343 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 0347 _ 89. 44 24, 0C
        mov     dword [esp+8H], 7                       ; 034B _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp-10H]                    ; 0353 _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 0356 _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 035A _ 8B. 45, F4
        mov     dword [esp], eax                        ; 035D _ 89. 04 24
        call    _boxfill8                               ; 0360 _ E8, 00000167
        mov     eax, dword [ebp-14H]                    ; 0365 _ 8B. 45, EC
        lea     ebx, [eax-3H]                           ; 0368 _ 8D. 58, FD
        mov     eax, dword [ebp-10H]                    ; 036B _ 8B. 45, F0
        lea     ecx, [eax-3H]                           ; 036E _ 8D. 48, FD
        mov     eax, dword [ebp-14H]                    ; 0371 _ 8B. 45, EC
        lea     edx, [eax-18H]                          ; 0374 _ 8D. 50, E8
        mov     eax, dword [ebp-10H]                    ; 0377 _ 8B. 45, F0
        sub     eax, 3                                  ; 037A _ 83. E8, 03
        mov     dword [esp+18H], ebx                    ; 037D _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 0381 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 0385 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 0389 _ 89. 44 24, 0C
        mov     dword [esp+8H], 7                       ; 038D _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp-10H]                    ; 0395 _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 0398 _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 039C _ 8B. 45, F4
        mov     dword [esp], eax                        ; 039F _ 89. 04 24
        call    _boxfill8                               ; 03A2 _ E8, 00000125
        mov     dword [esp+14H], ?_020                  ; 03A7 _ C7. 44 24, 14, 00000000(d)
        mov     dword [esp+10H], 7                      ; 03AF _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 8                      ; 03B7 _ C7. 44 24, 0C, 00000008
        mov     dword [esp+8H], 72                      ; 03BF _ C7. 44 24, 08, 00000048
        mov     eax, dword [ebp-10H]                    ; 03C7 _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 03CA _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 03CE _ 8B. 45, F4
        mov     dword [esp], eax                        ; 03D1 _ 89. 04 24
        call    _showString                             ; 03D4 _ E8, 000002C4
?_001:  call    _io_hlt                                 ; 03D9 _ E8, 00000000(rel)
        jmp     ?_001                                   ; 03DE _ EB, F9

_initBootInfo:; Function begin
        push    ebp                                     ; 03E0 _ 55
        mov     ebp, esp                                ; 03E1 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 03E3 _ 8B. 45, 08
        mov     dword [eax], 655360                     ; 03E6 _ C7. 00, 000A0000
        mov     eax, dword [ebp+8H]                     ; 03EC _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 320                      ; 03EF _ 66: C7. 40, 04, 0140
        mov     eax, dword [ebp+8H]                     ; 03F5 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 200                      ; 03F8 _ 66: C7. 40, 06, 00C8
        nop                                             ; 03FE _ 90
        pop     ebp                                     ; 03FF _ 5D
        ret                                             ; 0400 _ C3
; _initBootInfo End of function

_init_palette:; Function begin
        push    ebp                                     ; 0401 _ 55
        mov     ebp, esp                                ; 0402 _ 89. E5
        sub     esp, 24                                 ; 0404 _ 83. EC, 18
        mov     dword [esp+8H], _table_rgb.1964         ; 0407 _ C7. 44 24, 08, 00000020(d)
        mov     dword [esp+4H], 15                      ; 040F _ C7. 44 24, 04, 0000000F
        mov     dword [esp], 0                          ; 0417 _ C7. 04 24, 00000000
        call    _set_palette                            ; 041E _ E8, 00000003
        nop                                             ; 0423 _ 90
        leave                                           ; 0424 _ C9
        ret                                             ; 0425 _ C3
; _init_palette End of function

_set_palette:; Function begin
        push    ebp                                     ; 0426 _ 55
        mov     ebp, esp                                ; 0427 _ 89. E5
        sub     esp, 40                                 ; 0429 _ 83. EC, 28
        call    _io_load_eflags                         ; 042C _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 0431 _ 89. 45, F0
        call    _io_cli                                 ; 0434 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 0439 _ 8B. 45, 08
        mov     dword [esp+4H], eax                     ; 043C _ 89. 44 24, 04
        mov     dword [esp], 968                        ; 0440 _ C7. 04 24, 000003C8
        call    _io_out8                                ; 0447 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 044C _ 8B. 45, 08
        mov     dword [ebp-0CH], eax                    ; 044F _ 89. 45, F4
        jmp     ?_003                                   ; 0452 _ EB, 62

?_002:  mov     eax, dword [ebp+10H]                    ; 0454 _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 0457 _ 0F B6. 00
        shr     al, 2                                   ; 045A _ C0. E8, 02
        movzx   eax, al                                 ; 045D _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 0460 _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 0464 _ C7. 04 24, 000003C9
        call    _io_out8                                ; 046B _ E8, 00000000(rel)
        mov     eax, dword [ebp+10H]                    ; 0470 _ 8B. 45, 10
        add     eax, 1                                  ; 0473 _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 0476 _ 0F B6. 00
        shr     al, 2                                   ; 0479 _ C0. E8, 02
        movzx   eax, al                                 ; 047C _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 047F _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 0483 _ C7. 04 24, 000003C9
        call    _io_out8                                ; 048A _ E8, 00000000(rel)
        mov     eax, dword [ebp+10H]                    ; 048F _ 8B. 45, 10
        add     eax, 2                                  ; 0492 _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 0495 _ 0F B6. 00
        shr     al, 2                                   ; 0498 _ C0. E8, 02
        movzx   eax, al                                 ; 049B _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 049E _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 04A2 _ C7. 04 24, 000003C9
        call    _io_out8                                ; 04A9 _ E8, 00000000(rel)
        add     dword [ebp+10H], 3                      ; 04AE _ 83. 45, 10, 03
        add     dword [ebp-0CH], 1                      ; 04B2 _ 83. 45, F4, 01
?_003:  mov     eax, dword [ebp-0CH]                    ; 04B6 _ 8B. 45, F4
        cmp     eax, dword [ebp+0CH]                    ; 04B9 _ 3B. 45, 0C
        jle     ?_002                                   ; 04BC _ 7E, 96
        mov     eax, dword [ebp-10H]                    ; 04BE _ 8B. 45, F0
        mov     dword [esp], eax                        ; 04C1 _ 89. 04 24
        call    _io_store_eflags                        ; 04C4 _ E8, 00000000(rel)
        nop                                             ; 04C9 _ 90
        leave                                           ; 04CA _ C9
        ret                                             ; 04CB _ C3
; _set_palette End of function

_boxfill8:; Function begin
        push    ebp                                     ; 04CC _ 55
        mov     ebp, esp                                ; 04CD _ 89. E5
        sub     esp, 20                                 ; 04CF _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 04D2 _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 04D5 _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 04D8 _ 8B. 45, 18
        mov     dword [ebp-8H], eax                     ; 04DB _ 89. 45, F8
        jmp     ?_007                                   ; 04DE _ EB, 31

?_004:  mov     eax, dword [ebp+14H]                    ; 04E0 _ 8B. 45, 14
        mov     dword [ebp-4H], eax                     ; 04E3 _ 89. 45, FC
        jmp     ?_006                                   ; 04E6 _ EB, 1D

?_005:  mov     eax, dword [ebp-8H]                     ; 04E8 _ 8B. 45, F8
        imul    eax, dword [ebp+0CH]                    ; 04EB _ 0F AF. 45, 0C
        mov     edx, dword [ebp-4H]                     ; 04EF _ 8B. 55, FC
        add     eax, edx                                ; 04F2 _ 01. D0
        mov     edx, eax                                ; 04F4 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 04F6 _ 8B. 45, 08
        add     edx, eax                                ; 04F9 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 04FB _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 04FF _ 88. 02
        add     dword [ebp-4H], 1                       ; 0501 _ 83. 45, FC, 01
?_006:  mov     eax, dword [ebp-4H]                     ; 0505 _ 8B. 45, FC
        cmp     eax, dword [ebp+1CH]                    ; 0508 _ 3B. 45, 1C
        jle     ?_005                                   ; 050B _ 7E, DB
        add     dword [ebp-8H], 1                       ; 050D _ 83. 45, F8, 01
?_007:  mov     eax, dword [ebp-8H]                     ; 0511 _ 8B. 45, F8
        cmp     eax, dword [ebp+20H]                    ; 0514 _ 3B. 45, 20
        jle     ?_004                                   ; 0517 _ 7E, C7
        nop                                             ; 0519 _ 90
        leave                                           ; 051A _ C9
        ret                                             ; 051B _ C3
; _boxfill8 End of function

_showFont8:; Function begin
        push    ebp                                     ; 051C _ 55
        mov     ebp, esp                                ; 051D _ 89. E5
        sub     esp, 20                                 ; 051F _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 0522 _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 0525 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 0528 _ C7. 45, FC, 00000000
        jmp     ?_017                                   ; 052F _ E9, 0000015C

?_008:  mov     edx, dword [ebp-4H]                     ; 0534 _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 0537 _ 8B. 45, 1C
        add     eax, edx                                ; 053A _ 01. D0
        movzx   eax, byte [eax]                         ; 053C _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 053F _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 0542 _ 80. 7D, FB, 00
        jns     ?_009                                   ; 0546 _ 79, 1E
        mov     edx, dword [ebp+14H]                    ; 0548 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 054B _ 8B. 45, FC
        add     eax, edx                                ; 054E _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0550 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 0554 _ 8B. 55, 10
        add     eax, edx                                ; 0557 _ 01. D0
        mov     edx, eax                                ; 0559 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 055B _ 8B. 45, 08
        add     edx, eax                                ; 055E _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0560 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0564 _ 88. 02
?_009:  movsx   eax, byte [ebp-5H]                      ; 0566 _ 0F BE. 45, FB
        and     eax, 40H                                ; 056A _ 83. E0, 40
        test    eax, eax                                ; 056D _ 85. C0
        jz      ?_010                                   ; 056F _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 0571 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0574 _ 8B. 45, FC
        add     eax, edx                                ; 0577 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0579 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 057D _ 8B. 55, 10
        add     eax, edx                                ; 0580 _ 01. D0
        lea     edx, [eax+1H]                           ; 0582 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0585 _ 8B. 45, 08
        add     edx, eax                                ; 0588 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 058A _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 058E _ 88. 02
?_010:  movsx   eax, byte [ebp-5H]                      ; 0590 _ 0F BE. 45, FB
        and     eax, 20H                                ; 0594 _ 83. E0, 20
        test    eax, eax                                ; 0597 _ 85. C0
        jz      ?_011                                   ; 0599 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 059B _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 059E _ 8B. 45, FC
        add     eax, edx                                ; 05A1 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 05A3 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 05A7 _ 8B. 55, 10
        add     eax, edx                                ; 05AA _ 01. D0
        lea     edx, [eax+2H]                           ; 05AC _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 05AF _ 8B. 45, 08
        add     edx, eax                                ; 05B2 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 05B4 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 05B8 _ 88. 02
?_011:  movsx   eax, byte [ebp-5H]                      ; 05BA _ 0F BE. 45, FB
        and     eax, 10H                                ; 05BE _ 83. E0, 10
        test    eax, eax                                ; 05C1 _ 85. C0
        jz      ?_012                                   ; 05C3 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 05C5 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 05C8 _ 8B. 45, FC
        add     eax, edx                                ; 05CB _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 05CD _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 05D1 _ 8B. 55, 10
        add     eax, edx                                ; 05D4 _ 01. D0
        lea     edx, [eax+3H]                           ; 05D6 _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 05D9 _ 8B. 45, 08
        add     edx, eax                                ; 05DC _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 05DE _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 05E2 _ 88. 02
?_012:  movsx   eax, byte [ebp-5H]                      ; 05E4 _ 0F BE. 45, FB
        and     eax, 08H                                ; 05E8 _ 83. E0, 08
        test    eax, eax                                ; 05EB _ 85. C0
        jz      ?_013                                   ; 05ED _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 05EF _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 05F2 _ 8B. 45, FC
        add     eax, edx                                ; 05F5 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 05F7 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 05FB _ 8B. 55, 10
        add     eax, edx                                ; 05FE _ 01. D0
        lea     edx, [eax+4H]                           ; 0600 _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0603 _ 8B. 45, 08
        add     edx, eax                                ; 0606 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0608 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 060C _ 88. 02
?_013:  movsx   eax, byte [ebp-5H]                      ; 060E _ 0F BE. 45, FB
        and     eax, 04H                                ; 0612 _ 83. E0, 04
        test    eax, eax                                ; 0615 _ 85. C0
        jz      ?_014                                   ; 0617 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 0619 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 061C _ 8B. 45, FC
        add     eax, edx                                ; 061F _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0621 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 0625 _ 8B. 55, 10
        add     eax, edx                                ; 0628 _ 01. D0
        lea     edx, [eax+5H]                           ; 062A _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 062D _ 8B. 45, 08
        add     edx, eax                                ; 0630 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0632 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0636 _ 88. 02
?_014:  movsx   eax, byte [ebp-5H]                      ; 0638 _ 0F BE. 45, FB
        and     eax, 02H                                ; 063C _ 83. E0, 02
        test    eax, eax                                ; 063F _ 85. C0
        jz      ?_015                                   ; 0641 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 0643 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0646 _ 8B. 45, FC
        add     eax, edx                                ; 0649 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 064B _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 064F _ 8B. 55, 10
        add     eax, edx                                ; 0652 _ 01. D0
        lea     edx, [eax+6H]                           ; 0654 _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 0657 _ 8B. 45, 08
        add     edx, eax                                ; 065A _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 065C _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0660 _ 88. 02
?_015:  movsx   eax, byte [ebp-5H]                      ; 0662 _ 0F BE. 45, FB
        and     eax, 01H                                ; 0666 _ 83. E0, 01
        test    eax, eax                                ; 0669 _ 85. C0
        jz      ?_016                                   ; 066B _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 066D _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0670 _ 8B. 45, FC
        add     eax, edx                                ; 0673 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0675 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 0679 _ 8B. 55, 10
        add     eax, edx                                ; 067C _ 01. D0
        lea     edx, [eax+7H]                           ; 067E _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 0681 _ 8B. 45, 08
        add     edx, eax                                ; 0684 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0686 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 068A _ 88. 02
?_016:  add     dword [ebp-4H], 1                       ; 068C _ 83. 45, FC, 01
?_017:  cmp     dword [ebp-4H], 15                      ; 0690 _ 83. 7D, FC, 0F
        jle     ?_008                                   ; 0694 _ 0F 8E, FFFFFE9A
        nop                                             ; 069A _ 90
        leave                                           ; 069B _ C9
        ret                                             ; 069C _ C3
; _showFont8 End of function

_showString:; Function begin
        push    ebp                                     ; 069D _ 55
        mov     ebp, esp                                ; 069E _ 89. E5
        sub     esp, 28                                 ; 06A0 _ 83. EC, 1C
        mov     eax, dword [ebp+18H]                    ; 06A3 _ 8B. 45, 18
        mov     byte [ebp-4H], al                       ; 06A6 _ 88. 45, FC
        jmp     ?_019                                   ; 06A9 _ EB, 46

?_018:  mov     eax, dword [ebp+1CH]                    ; 06AB _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 06AE _ 0F B6. 00
        movzx   eax, al                                 ; 06B1 _ 0F B6. C0
        shl     eax, 4                                  ; 06B4 _ C1. E0, 04
        lea     edx, [_systemFont+eax]                  ; 06B7 _ 8D. 90, 00000000(d)
        movsx   eax, byte [ebp-4H]                      ; 06BD _ 0F BE. 45, FC
        mov     dword [esp+14H], edx                    ; 06C1 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 06C5 _ 89. 44 24, 10
        mov     eax, dword [ebp+14H]                    ; 06C9 _ 8B. 45, 14
        mov     dword [esp+0CH], eax                    ; 06CC _ 89. 44 24, 0C
        mov     eax, dword [ebp+10H]                    ; 06D0 _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 06D3 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 06D7 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 06DA _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 06DE _ 8B. 45, 08
        mov     dword [esp], eax                        ; 06E1 _ 89. 04 24
        call    _showFont8                              ; 06E4 _ E8, FFFFFE33
        add     dword [ebp+10H], 8                      ; 06E9 _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 06ED _ 83. 45, 1C, 01
?_019:  mov     eax, dword [ebp+1CH]                    ; 06F1 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 06F4 _ 0F B6. 00
        test    al, al                                  ; 06F7 _ 84. C0
        jnz     ?_018                                   ; 06F9 _ 75, B0
        nop                                             ; 06FB _ 90
        leave                                           ; 06FC _ C9
        ret                                             ; 06FD _ C3
; _showString End of function

        nop                                             ; 06FE _ 90
        nop                                             ; 06FF _ 90

_fontA:                                                 ; byte
        db 00H, 18H, 18H, 18H, 18H, 24H, 24H, 24H       ; 0000 _ .....$$$
        db 24H, 7EH, 42H, 42H, 42H, 0E7H, 00H, 00H      ; 0008 _ $~BBB...
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0010 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0018 _ ........

_table_rgb.1964:                                        ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0020 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0028 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0030 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0038 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 0040 _ ........
        db 00H, 84H, 00H, 84H, 84H, 84H, 84H, 84H       ; 0048 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0050 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0058 _ ........


?_020:                                                  ; byte
        db 46H, 72H, 61H, 67H, 69H, 6CH, 65H, 20H       ; 0000 _ Fragile 
        db 4FH, 53H, 00H, 00H                           ; 0008 _ OS..



