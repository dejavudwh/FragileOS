_drawDesktop:
        push    ebp                                     ; 0000 _ 55
        mov     ebp, esp                                ; 0001 _ 89. E5
        push    ebx                                     ; 0003 _ 53
        sub     esp, 68                                 ; 0004 _ 83. EC, 44
        lea     eax, [ebp-1CH]                          ; 0007 _ 8D. 45, E4
        mov     dword [esp], eax                        ; 000A _ 89. 04 24
        call    _initBootInfo                           ; 000D _ E8, 00000424
        mov     eax, dword [ebp-1CH]                    ; 0012 _ 8B. 45, E4
        mov     dword [ebp-0CH], eax                    ; 0015 _ 89. 45, F4
        movzx   eax, word [ebp-18H]                     ; 0018 _ 0F B7. 45, E8
        cwde                                            ; 001C _ 98
        mov     dword [ebp-10H], eax                    ; 001D _ 89. 45, F0
        movzx   eax, word [ebp-16H]                     ; 0020 _ 0F B7. 45, EA
        cwde                                            ; 0024 _ 98
        mov     dword [ebp-14H], eax                    ; 0025 _ 89. 45, EC
        call    _init_palette                           ; 0028 _ E8, 0000042A
        mov     eax, dword [ebp-14H]                    ; 002D _ 8B. 45, EC
        lea     edx, [eax-1DH]                          ; 0030 _ 8D. 50, E3
        mov     eax, dword [ebp-10H]                    ; 0033 _ 8B. 45, F0
        sub     eax, 1                                  ; 0036 _ 83. E8, 01
        mov     dword [esp+18H], edx                    ; 0039 _ 89. 54 24, 18
        mov     dword [esp+14H], eax                    ; 003D _ 89. 44 24, 14
        mov     dword [esp+10H], 0                      ; 0041 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 0049 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 12                      ; 0051 _ C7. 44 24, 08, 0000000C
        mov     eax, dword [ebp-10H]                    ; 0059 _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 005C _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 0060 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 0063 _ 89. 04 24
        call    _boxfill8                               ; 0066 _ E8, 000004B7
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
        call    _boxfill8                               ; 00A6 _ E8, 00000477
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
        call    _boxfill8                               ; 00E6 _ E8, 00000437
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
        call    _boxfill8                               ; 0126 _ E8, 000003F7
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
        call    _boxfill8                               ; 0164 _ E8, 000003B9
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
        call    _boxfill8                               ; 01A2 _ E8, 0000037B
        mov     eax, dword [ebp-14H]                    ; 01A7 _ 8B. 45, EC
        lea     edx, [eax-4H]                           ; 01AA _ 8D. 50, FC
        mov     eax, dword [ebp-14H]                    ; 01AD _ 8B. 45, EC
        sub     eax, 4                                  ; 01B0 _ 83. E8, 04
        mov     dword [esp+18H], edx                    ; 01B3 _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 01B7 _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 01BF _ 89. 44 24, 10
        mov     dword [esp+0CH], 3                      ; 01C3 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 12                      ; 01CB _ C7. 44 24, 08, 0000000C
        mov     eax, dword [ebp-10H]                    ; 01D3 _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 01D6 _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 01DA _ 8B. 45, F4
        mov     dword [esp], eax                        ; 01DD _ 89. 04 24
        call    _boxfill8                               ; 01E0 _ E8, 0000033D
        mov     eax, dword [ebp-14H]                    ; 01E5 _ 8B. 45, EC
        lea     edx, [eax-5H]                           ; 01E8 _ 8D. 50, FB
        mov     eax, dword [ebp-14H]                    ; 01EB _ 8B. 45, EC
        sub     eax, 23                                 ; 01EE _ 83. E8, 17
        mov     dword [esp+18H], edx                    ; 01F1 _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 01F5 _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 01FD _ 89. 44 24, 10
        mov     dword [esp+0CH], 59                     ; 0201 _ C7. 44 24, 0C, 0000003B
        mov     dword [esp+8H], 12                      ; 0209 _ C7. 44 24, 08, 0000000C
        mov     eax, dword [ebp-10H]                    ; 0211 _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 0214 _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 0218 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 021B _ 89. 04 24
        call    _boxfill8                               ; 021E _ E8, 000002FF
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
        call    _boxfill8                               ; 025C _ E8, 000002C1
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
        call    _boxfill8                               ; 029A _ E8, 00000283
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
        mov     dword [esp+8H], 12                      ; 02C7 _ C7. 44 24, 08, 0000000C
        mov     eax, dword [ebp-10H]                    ; 02CF _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 02D2 _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 02D6 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 02D9 _ 89. 04 24
        call    _boxfill8                               ; 02DC _ E8, 00000241
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
        mov     dword [esp+8H], 12                      ; 0309 _ C7. 44 24, 08, 0000000C
        mov     eax, dword [ebp-10H]                    ; 0311 _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 0314 _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 0318 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 031B _ 89. 04 24
        call    _boxfill8                               ; 031E _ E8, 000001FF
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
        call    _boxfill8                               ; 0360 _ E8, 000001BD
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
        call    _boxfill8                               ; 03A2 _ E8, 0000017B
        mov     dword [esp+14H], ?_031                  ; 03A7 _ C7. 44 24, 14, 00000000(d)
        mov     dword [esp+10H], 7                      ; 03AF _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 60                     ; 03B7 _ C7. 44 24, 0C, 0000003C
        mov     dword [esp+8H], 125                     ; 03BF _ C7. 44 24, 08, 0000007D
        mov     eax, dword [ebp-10H]                    ; 03C7 _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 03CA _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 03CE _ 8B. 45, F4
        mov     dword [esp], eax                        ; 03D1 _ 89. 04 24
        call    _showString                             ; 03D4 _ E8, 0000031A
        mov     dword [esp+4H], 14                      ; 03D9 _ C7. 44 24, 04, 0000000E
        mov     dword [esp], _mcursor                   ; 03E1 _ C7. 04 24, 00000000(d)
        call    _init_mouse_cursor                      ; 03E8 _ E8, 00000367
        mov     dword [esp+1CH], 16                     ; 03ED _ C7. 44 24, 1C, 00000010
        mov     dword [esp+18H], _mcursor               ; 03F5 _ C7. 44 24, 18, 00000000(d)
        mov     dword [esp+14H], 80                     ; 03FD _ C7. 44 24, 14, 00000050
        mov     dword [esp+10H], 80                     ; 0405 _ C7. 44 24, 10, 00000050
        mov     dword [esp+0CH], 16                     ; 040D _ C7. 44 24, 0C, 00000010
        mov     dword [esp+8H], 16                      ; 0415 _ C7. 44 24, 08, 00000010
        mov     eax, dword [ebp-10H]                    ; 041D _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 0420 _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 0424 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 0427 _ 89. 04 24
        call    _putblock                               ; 042A _ E8, 000003FB
?_001:  call    _io_hlt                                 ; 042F _ E8, 00000000(rel)
        jmp     ?_001                                   ; 0434 _ EB, F9

_initBootInfo:; Function begin
        push    ebp                                     ; 0436 _ 55
        mov     ebp, esp                                ; 0437 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0439 _ 8B. 45, 08
        mov     dword [eax], 655360                     ; 043C _ C7. 00, 000A0000
        mov     eax, dword [ebp+8H]                     ; 0442 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 320                      ; 0445 _ 66: C7. 40, 04, 0140
        mov     eax, dword [ebp+8H]                     ; 044B _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 200                      ; 044E _ 66: C7. 40, 06, 00C8
        nop                                             ; 0454 _ 90
        pop     ebp                                     ; 0455 _ 5D
        ret                                             ; 0456 _ C3
; _initBootInfo End of function

_init_palette:; Function begin
        push    ebp                                     ; 0457 _ 55
        mov     ebp, esp                                ; 0458 _ 89. E5
        sub     esp, 24                                 ; 045A _ 83. EC, 18
        mov     dword [esp+8H], _table_rgb.1979         ; 045D _ C7. 44 24, 08, 00000020(d)
        mov     dword [esp+4H], 15                      ; 0465 _ C7. 44 24, 04, 0000000F
        mov     dword [esp], 0                          ; 046D _ C7. 04 24, 00000000
        call    _set_palette                            ; 0474 _ E8, 00000003
        nop                                             ; 0479 _ 90
        leave                                           ; 047A _ C9
        ret                                             ; 047B _ C3
; _init_palette End of function

_set_palette:; Function begin
        push    ebp                                     ; 047C _ 55
        mov     ebp, esp                                ; 047D _ 89. E5
        sub     esp, 40                                 ; 047F _ 83. EC, 28
        call    _io_load_eflags                         ; 0482 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 0487 _ 89. 45, F0
        call    _io_cli                                 ; 048A _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 048F _ 8B. 45, 08
        mov     dword [esp+4H], eax                     ; 0492 _ 89. 44 24, 04
        mov     dword [esp], 968                        ; 0496 _ C7. 04 24, 000003C8
        call    _io_out8                                ; 049D _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 04A2 _ 8B. 45, 08
        mov     dword [ebp-0CH], eax                    ; 04A5 _ 89. 45, F4
        jmp     ?_003                                   ; 04A8 _ EB, 62

?_002:  mov     eax, dword [ebp+10H]                    ; 04AA _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 04AD _ 0F B6. 00
        shr     al, 2                                   ; 04B0 _ C0. E8, 02
        movzx   eax, al                                 ; 04B3 _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 04B6 _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 04BA _ C7. 04 24, 000003C9
        call    _io_out8                                ; 04C1 _ E8, 00000000(rel)
        mov     eax, dword [ebp+10H]                    ; 04C6 _ 8B. 45, 10
        add     eax, 1                                  ; 04C9 _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 04CC _ 0F B6. 00
        shr     al, 2                                   ; 04CF _ C0. E8, 02
        movzx   eax, al                                 ; 04D2 _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 04D5 _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 04D9 _ C7. 04 24, 000003C9
        call    _io_out8                                ; 04E0 _ E8, 00000000(rel)
        mov     eax, dword [ebp+10H]                    ; 04E5 _ 8B. 45, 10
        add     eax, 2                                  ; 04E8 _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 04EB _ 0F B6. 00
        shr     al, 2                                   ; 04EE _ C0. E8, 02
        movzx   eax, al                                 ; 04F1 _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 04F4 _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 04F8 _ C7. 04 24, 000003C9
        call    _io_out8                                ; 04FF _ E8, 00000000(rel)
        add     dword [ebp+10H], 3                      ; 0504 _ 83. 45, 10, 03
        add     dword [ebp-0CH], 1                      ; 0508 _ 83. 45, F4, 01
?_003:  mov     eax, dword [ebp-0CH]                    ; 050C _ 8B. 45, F4
        cmp     eax, dword [ebp+0CH]                    ; 050F _ 3B. 45, 0C
        jle     ?_002                                   ; 0512 _ 7E, 96
        mov     eax, dword [ebp-10H]                    ; 0514 _ 8B. 45, F0
        mov     dword [esp], eax                        ; 0517 _ 89. 04 24
        call    _io_store_eflags                        ; 051A _ E8, 00000000(rel)
        nop                                             ; 051F _ 90
        leave                                           ; 0520 _ C9
        ret                                             ; 0521 _ C3
; _set_palette End of function

_boxfill8:; Function begin
        push    ebp                                     ; 0522 _ 55
        mov     ebp, esp                                ; 0523 _ 89. E5
        sub     esp, 20                                 ; 0525 _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 0528 _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 052B _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 052E _ 8B. 45, 18
        mov     dword [ebp-8H], eax                     ; 0531 _ 89. 45, F8
        jmp     ?_007                                   ; 0534 _ EB, 31

?_004:  mov     eax, dword [ebp+14H]                    ; 0536 _ 8B. 45, 14
        mov     dword [ebp-4H], eax                     ; 0539 _ 89. 45, FC
        jmp     ?_006                                   ; 053C _ EB, 1D

?_005:  mov     eax, dword [ebp-8H]                     ; 053E _ 8B. 45, F8
        imul    eax, dword [ebp+0CH]                    ; 0541 _ 0F AF. 45, 0C
        mov     edx, dword [ebp-4H]                     ; 0545 _ 8B. 55, FC
        add     eax, edx                                ; 0548 _ 01. D0
        mov     edx, eax                                ; 054A _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 054C _ 8B. 45, 08
        add     edx, eax                                ; 054F _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0551 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0555 _ 88. 02
        add     dword [ebp-4H], 1                       ; 0557 _ 83. 45, FC, 01
?_006:  mov     eax, dword [ebp-4H]                     ; 055B _ 8B. 45, FC
        cmp     eax, dword [ebp+1CH]                    ; 055E _ 3B. 45, 1C
        jle     ?_005                                   ; 0561 _ 7E, DB
        add     dword [ebp-8H], 1                       ; 0563 _ 83. 45, F8, 01
?_007:  mov     eax, dword [ebp-8H]                     ; 0567 _ 8B. 45, F8
        cmp     eax, dword [ebp+20H]                    ; 056A _ 3B. 45, 20
        jle     ?_004                                   ; 056D _ 7E, C7
        nop                                             ; 056F _ 90
        leave                                           ; 0570 _ C9
        ret                                             ; 0571 _ C3
; _boxfill8 End of function

_showFont8:; Function begin
        push    ebp                                     ; 0572 _ 55
        mov     ebp, esp                                ; 0573 _ 89. E5
        sub     esp, 20                                 ; 0575 _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 0578 _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 057B _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 057E _ C7. 45, FC, 00000000
        jmp     ?_017                                   ; 0585 _ E9, 0000015C

?_008:  mov     edx, dword [ebp-4H]                     ; 058A _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 058D _ 8B. 45, 1C
        add     eax, edx                                ; 0590 _ 01. D0
        movzx   eax, byte [eax]                         ; 0592 _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 0595 _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 0598 _ 80. 7D, FB, 00
        jns     ?_009                                   ; 059C _ 79, 1E
        mov     edx, dword [ebp+14H]                    ; 059E _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 05A1 _ 8B. 45, FC
        add     eax, edx                                ; 05A4 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 05A6 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 05AA _ 8B. 55, 10
        add     eax, edx                                ; 05AD _ 01. D0
        mov     edx, eax                                ; 05AF _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 05B1 _ 8B. 45, 08
        add     edx, eax                                ; 05B4 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 05B6 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 05BA _ 88. 02
?_009:  movsx   eax, byte [ebp-5H]                      ; 05BC _ 0F BE. 45, FB
        and     eax, 40H                                ; 05C0 _ 83. E0, 40
        test    eax, eax                                ; 05C3 _ 85. C0
        jz      ?_010                                   ; 05C5 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 05C7 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 05CA _ 8B. 45, FC
        add     eax, edx                                ; 05CD _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 05CF _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 05D3 _ 8B. 55, 10
        add     eax, edx                                ; 05D6 _ 01. D0
        lea     edx, [eax+1H]                           ; 05D8 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 05DB _ 8B. 45, 08
        add     edx, eax                                ; 05DE _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 05E0 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 05E4 _ 88. 02
?_010:  movsx   eax, byte [ebp-5H]                      ; 05E6 _ 0F BE. 45, FB
        and     eax, 20H                                ; 05EA _ 83. E0, 20
        test    eax, eax                                ; 05ED _ 85. C0
        jz      ?_011                                   ; 05EF _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 05F1 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 05F4 _ 8B. 45, FC
        add     eax, edx                                ; 05F7 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 05F9 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 05FD _ 8B. 55, 10
        add     eax, edx                                ; 0600 _ 01. D0
        lea     edx, [eax+2H]                           ; 0602 _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 0605 _ 8B. 45, 08
        add     edx, eax                                ; 0608 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 060A _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 060E _ 88. 02
?_011:  movsx   eax, byte [ebp-5H]                      ; 0610 _ 0F BE. 45, FB
        and     eax, 10H                                ; 0614 _ 83. E0, 10
        test    eax, eax                                ; 0617 _ 85. C0
        jz      ?_012                                   ; 0619 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 061B _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 061E _ 8B. 45, FC
        add     eax, edx                                ; 0621 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0623 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 0627 _ 8B. 55, 10
        add     eax, edx                                ; 062A _ 01. D0
        lea     edx, [eax+3H]                           ; 062C _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 062F _ 8B. 45, 08
        add     edx, eax                                ; 0632 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0634 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0638 _ 88. 02
?_012:  movsx   eax, byte [ebp-5H]                      ; 063A _ 0F BE. 45, FB
        and     eax, 08H                                ; 063E _ 83. E0, 08
        test    eax, eax                                ; 0641 _ 85. C0
        jz      ?_013                                   ; 0643 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 0645 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0648 _ 8B. 45, FC
        add     eax, edx                                ; 064B _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 064D _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 0651 _ 8B. 55, 10
        add     eax, edx                                ; 0654 _ 01. D0
        lea     edx, [eax+4H]                           ; 0656 _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0659 _ 8B. 45, 08
        add     edx, eax                                ; 065C _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 065E _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0662 _ 88. 02
?_013:  movsx   eax, byte [ebp-5H]                      ; 0664 _ 0F BE. 45, FB
        and     eax, 04H                                ; 0668 _ 83. E0, 04
        test    eax, eax                                ; 066B _ 85. C0
        jz      ?_014                                   ; 066D _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 066F _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0672 _ 8B. 45, FC
        add     eax, edx                                ; 0675 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0677 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 067B _ 8B. 55, 10
        add     eax, edx                                ; 067E _ 01. D0
        lea     edx, [eax+5H]                           ; 0680 _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 0683 _ 8B. 45, 08
        add     edx, eax                                ; 0686 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0688 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 068C _ 88. 02
?_014:  movsx   eax, byte [ebp-5H]                      ; 068E _ 0F BE. 45, FB
        and     eax, 02H                                ; 0692 _ 83. E0, 02
        test    eax, eax                                ; 0695 _ 85. C0
        jz      ?_015                                   ; 0697 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 0699 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 069C _ 8B. 45, FC
        add     eax, edx                                ; 069F _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 06A1 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 06A5 _ 8B. 55, 10
        add     eax, edx                                ; 06A8 _ 01. D0
        lea     edx, [eax+6H]                           ; 06AA _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 06AD _ 8B. 45, 08
        add     edx, eax                                ; 06B0 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 06B2 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 06B6 _ 88. 02
?_015:  movsx   eax, byte [ebp-5H]                      ; 06B8 _ 0F BE. 45, FB
        and     eax, 01H                                ; 06BC _ 83. E0, 01
        test    eax, eax                                ; 06BF _ 85. C0
        jz      ?_016                                   ; 06C1 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 06C3 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 06C6 _ 8B. 45, FC
        add     eax, edx                                ; 06C9 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 06CB _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 06CF _ 8B. 55, 10
        add     eax, edx                                ; 06D2 _ 01. D0
        lea     edx, [eax+7H]                           ; 06D4 _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 06D7 _ 8B. 45, 08
        add     edx, eax                                ; 06DA _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 06DC _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 06E0 _ 88. 02
?_016:  add     dword [ebp-4H], 1                       ; 06E2 _ 83. 45, FC, 01
?_017:  cmp     dword [ebp-4H], 15                      ; 06E6 _ 83. 7D, FC, 0F
        jle     ?_008                                   ; 06EA _ 0F 8E, FFFFFE9A
        nop                                             ; 06F0 _ 90
        leave                                           ; 06F1 _ C9
        ret                                             ; 06F2 _ C3
; _showFont8 End of function

_showString:; Function begin
        push    ebp                                     ; 06F3 _ 55
        mov     ebp, esp                                ; 06F4 _ 89. E5
        sub     esp, 28                                 ; 06F6 _ 83. EC, 1C
        mov     eax, dword [ebp+18H]                    ; 06F9 _ 8B. 45, 18
        mov     byte [ebp-4H], al                       ; 06FC _ 88. 45, FC
        jmp     ?_019                                   ; 06FF _ EB, 46

?_018:  mov     eax, dword [ebp+1CH]                    ; 0701 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 0704 _ 0F B6. 00
        movzx   eax, al                                 ; 0707 _ 0F B6. C0
        shl     eax, 4                                  ; 070A _ C1. E0, 04
        lea     edx, [_systemFont+eax]                  ; 070D _ 8D. 90, 00000000(d)
        movsx   eax, byte [ebp-4H]                      ; 0713 _ 0F BE. 45, FC
        mov     dword [esp+14H], edx                    ; 0717 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 071B _ 89. 44 24, 10
        mov     eax, dword [ebp+14H]                    ; 071F _ 8B. 45, 14
        mov     dword [esp+0CH], eax                    ; 0722 _ 89. 44 24, 0C
        mov     eax, dword [ebp+10H]                    ; 0726 _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 0729 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 072D _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0730 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0734 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0737 _ 89. 04 24
        call    _showFont8                              ; 073A _ E8, FFFFFE33
        add     dword [ebp+10H], 8                      ; 073F _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 0743 _ 83. 45, 1C, 01
?_019:  mov     eax, dword [ebp+1CH]                    ; 0747 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 074A _ 0F B6. 00
        test    al, al                                  ; 074D _ 84. C0
        jnz     ?_018                                   ; 074F _ 75, B0
        nop                                             ; 0751 _ 90
        leave                                           ; 0752 _ C9
        ret                                             ; 0753 _ C3
; _showString End of function

_init_mouse_cursor:; Function begin
        push    ebp                                     ; 0754 _ 55
        mov     ebp, esp                                ; 0755 _ 89. E5
        sub     esp, 20                                 ; 0757 _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 075A _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 075D _ 88. 45, EC
        mov     dword [ebp-8H], 0                       ; 0760 _ C7. 45, F8, 00000000
        jmp     ?_026                                   ; 0767 _ E9, 000000B1

?_020:  mov     dword [ebp-4H], 0                       ; 076C _ C7. 45, FC, 00000000
        jmp     ?_025                                   ; 0773 _ E9, 00000097

?_021:  mov     eax, dword [ebp-8H]                     ; 0778 _ 8B. 45, F8
        shl     eax, 4                                  ; 077B _ C1. E0, 04
        mov     edx, eax                                ; 077E _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 0780 _ 8B. 45, FC
        add     eax, edx                                ; 0783 _ 01. D0
        add     eax, _cursor.2037                       ; 0785 _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 078A _ 0F B6. 00
        cmp     al, 42                                  ; 078D _ 3C, 2A
        jnz     ?_022                                   ; 078F _ 75, 17
        mov     eax, dword [ebp-8H]                     ; 0791 _ 8B. 45, F8
        shl     eax, 4                                  ; 0794 _ C1. E0, 04
        mov     edx, eax                                ; 0797 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 0799 _ 8B. 45, FC
        add     eax, edx                                ; 079C _ 01. D0
        mov     edx, eax                                ; 079E _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 07A0 _ 8B. 45, 08
        add     eax, edx                                ; 07A3 _ 01. D0
        mov     byte [eax], 0                           ; 07A5 _ C6. 00, 00
?_022:  mov     eax, dword [ebp-8H]                     ; 07A8 _ 8B. 45, F8
        shl     eax, 4                                  ; 07AB _ C1. E0, 04
        mov     edx, eax                                ; 07AE _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 07B0 _ 8B. 45, FC
        add     eax, edx                                ; 07B3 _ 01. D0
        add     eax, _cursor.2037                       ; 07B5 _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 07BA _ 0F B6. 00
        cmp     al, 79                                  ; 07BD _ 3C, 4F
        jnz     ?_023                                   ; 07BF _ 75, 17
        mov     eax, dword [ebp-8H]                     ; 07C1 _ 8B. 45, F8
        shl     eax, 4                                  ; 07C4 _ C1. E0, 04
        mov     edx, eax                                ; 07C7 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 07C9 _ 8B. 45, FC
        add     eax, edx                                ; 07CC _ 01. D0
        mov     edx, eax                                ; 07CE _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 07D0 _ 8B. 45, 08
        add     eax, edx                                ; 07D3 _ 01. D0
        mov     byte [eax], 7                           ; 07D5 _ C6. 00, 07
?_023:  mov     eax, dword [ebp-8H]                     ; 07D8 _ 8B. 45, F8
        shl     eax, 4                                  ; 07DB _ C1. E0, 04
        mov     edx, eax                                ; 07DE _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 07E0 _ 8B. 45, FC
        add     eax, edx                                ; 07E3 _ 01. D0
        add     eax, _cursor.2037                       ; 07E5 _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 07EA _ 0F B6. 00
        cmp     al, 46                                  ; 07ED _ 3C, 2E
        jnz     ?_024                                   ; 07EF _ 75, 1A
        mov     eax, dword [ebp-8H]                     ; 07F1 _ 8B. 45, F8
        shl     eax, 4                                  ; 07F4 _ C1. E0, 04
        mov     edx, eax                                ; 07F7 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 07F9 _ 8B. 45, FC
        add     eax, edx                                ; 07FC _ 01. D0
        mov     edx, eax                                ; 07FE _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0800 _ 8B. 45, 08
        add     edx, eax                                ; 0803 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0805 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0809 _ 88. 02
?_024:  add     dword [ebp-4H], 1                       ; 080B _ 83. 45, FC, 01
?_025:  cmp     dword [ebp-4H], 15                      ; 080F _ 83. 7D, FC, 0F
        jle     ?_021                                   ; 0813 _ 0F 8E, FFFFFF5F
        add     dword [ebp-8H], 1                       ; 0819 _ 83. 45, F8, 01
?_026:  cmp     dword [ebp-8H], 15                      ; 081D _ 83. 7D, F8, 0F
        jle     ?_020                                   ; 0821 _ 0F 8E, FFFFFF45
        nop                                             ; 0827 _ 90
        leave                                           ; 0828 _ C9
        ret                                             ; 0829 _ C3
; _init_mouse_cursor End of function

_putblock:; Function begin
        push    ebp                                     ; 082A _ 55
        mov     ebp, esp                                ; 082B _ 89. E5
        push    ebx                                     ; 082D _ 53
        sub     esp, 16                                 ; 082E _ 83. EC, 10
        mov     dword [ebp-0CH], 0                      ; 0831 _ C7. 45, F4, 00000000
        jmp     ?_030                                   ; 0838 _ EB, 4E

?_027:  mov     dword [ebp-8H], 0                       ; 083A _ C7. 45, F8, 00000000
        jmp     ?_029                                   ; 0841 _ EB, 39

?_028:  mov     eax, dword [ebp-0CH]                    ; 0843 _ 8B. 45, F4
        imul    eax, dword [ebp+24H]                    ; 0846 _ 0F AF. 45, 24
        mov     edx, dword [ebp-8H]                     ; 084A _ 8B. 55, F8
        add     eax, edx                                ; 084D _ 01. D0
        mov     edx, eax                                ; 084F _ 89. C2
        mov     eax, dword [ebp+20H]                    ; 0851 _ 8B. 45, 20
        add     eax, edx                                ; 0854 _ 01. D0
        mov     ecx, dword [ebp+1CH]                    ; 0856 _ 8B. 4D, 1C
        mov     edx, dword [ebp-0CH]                    ; 0859 _ 8B. 55, F4
        add     edx, ecx                                ; 085C _ 01. CA
        imul    edx, dword [ebp+0CH]                    ; 085E _ 0F AF. 55, 0C
        mov     ebx, dword [ebp+18H]                    ; 0862 _ 8B. 5D, 18
        mov     ecx, dword [ebp-8H]                     ; 0865 _ 8B. 4D, F8
        add     ecx, ebx                                ; 0868 _ 01. D9
        add     edx, ecx                                ; 086A _ 01. CA
        mov     ecx, edx                                ; 086C _ 89. D1
        mov     edx, dword [ebp+8H]                     ; 086E _ 8B. 55, 08
        add     edx, ecx                                ; 0871 _ 01. CA
        movzx   eax, byte [eax]                         ; 0873 _ 0F B6. 00
        mov     byte [edx], al                          ; 0876 _ 88. 02
        add     dword [ebp-8H], 1                       ; 0878 _ 83. 45, F8, 01
?_029:  mov     eax, dword [ebp-8H]                     ; 087C _ 8B. 45, F8
        cmp     eax, dword [ebp+10H]                    ; 087F _ 3B. 45, 10
        jl      ?_028                                   ; 0882 _ 7C, BF
        add     dword [ebp-0CH], 1                      ; 0884 _ 83. 45, F4, 01
?_030:  mov     eax, dword [ebp-0CH]                    ; 0888 _ 8B. 45, F4
        cmp     eax, dword [ebp+14H]                    ; 088B _ 3B. 45, 14
        jl      ?_027                                   ; 088E _ 7C, AA
        nop                                             ; 0890 _ 90
        add     esp, 16                                 ; 0891 _ 83. C4, 10
        pop     ebx                                     ; 0894 _ 5B
        pop     ebp                                     ; 0895 _ 5D
        ret                                             ; 0896 _ C3
; _putblock End of function

        nop                                             ; 0897 _ 90

_fontA:                                                 ; byte
        db 00H, 18H, 18H, 18H, 18H, 24H, 24H, 24H       ; 0000 _ .....$$$
        db 24H, 7EH, 42H, 42H, 42H, 0E7H, 00H, 00H      ; 0008 _ $~BBB...
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0010 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0018 _ ........

_table_rgb.1979:                                        ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0020 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0028 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0030 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0038 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 0040 _ ........
        db 00H, 84H, 00H, 84H, 84H, 84H, 84H, 84H       ; 0048 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0050 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0058 _ ........

_cursor.2037:                                           ; byte
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

?_031:                                                  ; byte
        db 46H, 72H, 61H, 67H, 69H, 6CH, 65H, 20H       ; 0000 _ Fragile 
        db 4FH, 53H, 00H, 00H                           ; 0008 _ OS..


