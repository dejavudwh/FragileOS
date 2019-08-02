_drawDesktop:
        push    ebp                                     ; 0000 _ 55
        mov     ebp, esp                                ; 0001 _ 89. E5
        push    ebx                                     ; 0003 _ 53
        sub     esp, 52                                 ; 0004 _ 83. EC, 34
        mov     dword [esp], _bootInfo                  ; 0007 _ C7. 04 24, 00000100(d)
        call    _initBootInfo                           ; 000E _ E8, 0000042C
        mov     eax, dword [_bootInfo]                  ; 0013 _ A1, 00000100(d)
        mov     dword [ebp-0CH], eax                    ; 0018 _ 89. 45, F4
        movzx   eax, word [?_032]                       ; 001B _ 0F B7. 05, 00000104(d)
        cwde                                            ; 0022 _ 98
        mov     dword [ebp-10H], eax                    ; 0023 _ 89. 45, F0
        movzx   eax, word [?_033]                       ; 0026 _ 0F B7. 05, 00000106(d)
        cwde                                            ; 002D _ 98
        mov     dword [ebp-14H], eax                    ; 002E _ 89. 45, EC
        call    _init_palette                           ; 0031 _ E8, 0000042A
        mov     eax, dword [ebp-14H]                    ; 0036 _ 8B. 45, EC
        lea     edx, [eax-1DH]                          ; 0039 _ 8D. 50, E3
        mov     eax, dword [ebp-10H]                    ; 003C _ 8B. 45, F0
        sub     eax, 1                                  ; 003F _ 83. E8, 01
        mov     dword [esp+18H], edx                    ; 0042 _ 89. 54 24, 18
        mov     dword [esp+14H], eax                    ; 0046 _ 89. 44 24, 14
        mov     dword [esp+10H], 0                      ; 004A _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 0052 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 14                      ; 005A _ C7. 44 24, 08, 0000000E
        mov     eax, dword [ebp-10H]                    ; 0062 _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 0065 _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 0069 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 006C _ 89. 04 24
        call    _boxfill8                               ; 006F _ E8, 000004B7
        mov     eax, dword [ebp-14H]                    ; 0074 _ 8B. 45, EC
        lea     ecx, [eax-10H]                          ; 0077 _ 8D. 48, F0
        mov     eax, dword [ebp-10H]                    ; 007A _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 007D _ 8D. 50, FF
        mov     eax, dword [ebp-14H]                    ; 0080 _ 8B. 45, EC
        sub     eax, 16                                 ; 0083 _ 83. E8, 10
        mov     dword [esp+18H], ecx                    ; 0086 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 008A _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 008E _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 0092 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 009A _ C7. 44 24, 08, 00000008
        mov     eax, dword [ebp-10H]                    ; 00A2 _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 00A5 _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 00A9 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 00AC _ 89. 04 24
        call    _boxfill8                               ; 00AF _ E8, 00000477
        mov     eax, dword [ebp-14H]                    ; 00B4 _ 8B. 45, EC
        lea     ecx, [eax-1BH]                          ; 00B7 _ 8D. 48, E5
        mov     eax, dword [ebp-10H]                    ; 00BA _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 00BD _ 8D. 50, FF
        mov     eax, dword [ebp-14H]                    ; 00C0 _ 8B. 45, EC
        sub     eax, 27                                 ; 00C3 _ 83. E8, 1B
        mov     dword [esp+18H], ecx                    ; 00C6 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 00CA _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 00CE _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 00D2 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 7                       ; 00DA _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp-10H]                    ; 00E2 _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 00E5 _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 00E9 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 00EC _ 89. 04 24
        call    _boxfill8                               ; 00EF _ E8, 00000437
        mov     eax, dword [ebp-14H]                    ; 00F4 _ 8B. 45, EC
        lea     ecx, [eax-1H]                           ; 00F7 _ 8D. 48, FF
        mov     eax, dword [ebp-10H]                    ; 00FA _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 00FD _ 8D. 50, FF
        mov     eax, dword [ebp-14H]                    ; 0100 _ 8B. 45, EC
        sub     eax, 14                                 ; 0103 _ 83. E8, 0E
        mov     dword [esp+18H], ecx                    ; 0106 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 010A _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 010E _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 0112 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 011A _ C7. 44 24, 08, 00000008
        mov     eax, dword [ebp-10H]                    ; 0122 _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 0125 _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 0129 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 012C _ 89. 04 24
        call    _boxfill8                               ; 012F _ E8, 000003F7
        mov     eax, dword [ebp-14H]                    ; 0134 _ 8B. 45, EC
        lea     edx, [eax-18H]                          ; 0137 _ 8D. 50, E8
        mov     eax, dword [ebp-14H]                    ; 013A _ 8B. 45, EC
        sub     eax, 24                                 ; 013D _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 0140 _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 0144 _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 014C _ 89. 44 24, 10
        mov     dword [esp+0CH], 3                      ; 0150 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 7                       ; 0158 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp-10H]                    ; 0160 _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 0163 _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 0167 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 016A _ 89. 04 24
        call    _boxfill8                               ; 016D _ E8, 000003B9
        mov     eax, dword [ebp-14H]                    ; 0172 _ 8B. 45, EC
        lea     edx, [eax-4H]                           ; 0175 _ 8D. 50, FC
        mov     eax, dword [ebp-14H]                    ; 0178 _ 8B. 45, EC
        sub     eax, 24                                 ; 017B _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 017E _ 89. 54 24, 18
        mov     dword [esp+14H], 2                      ; 0182 _ C7. 44 24, 14, 00000002
        mov     dword [esp+10H], eax                    ; 018A _ 89. 44 24, 10
        mov     dword [esp+0CH], 2                      ; 018E _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 7                       ; 0196 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp-10H]                    ; 019E _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 01A1 _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 01A5 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 01A8 _ 89. 04 24
        call    _boxfill8                               ; 01AB _ E8, 0000037B
        mov     eax, dword [ebp-14H]                    ; 01B0 _ 8B. 45, EC
        lea     edx, [eax-4H]                           ; 01B3 _ 8D. 50, FC
        mov     eax, dword [ebp-14H]                    ; 01B6 _ 8B. 45, EC
        sub     eax, 4                                  ; 01B9 _ 83. E8, 04
        mov     dword [esp+18H], edx                    ; 01BC _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 01C0 _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 01C8 _ 89. 44 24, 10
        mov     dword [esp+0CH], 3                      ; 01CC _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 15                      ; 01D4 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp-10H]                    ; 01DC _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 01DF _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 01E3 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 01E6 _ 89. 04 24
        call    _boxfill8                               ; 01E9 _ E8, 0000033D
        mov     eax, dword [ebp-14H]                    ; 01EE _ 8B. 45, EC
        lea     edx, [eax-5H]                           ; 01F1 _ 8D. 50, FB
        mov     eax, dword [ebp-14H]                    ; 01F4 _ 8B. 45, EC
        sub     eax, 23                                 ; 01F7 _ 83. E8, 17
        mov     dword [esp+18H], edx                    ; 01FA _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 01FE _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 0206 _ 89. 44 24, 10
        mov     dword [esp+0CH], 59                     ; 020A _ C7. 44 24, 0C, 0000003B
        mov     dword [esp+8H], 15                      ; 0212 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp-10H]                    ; 021A _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 021D _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 0221 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 0224 _ 89. 04 24
        call    _boxfill8                               ; 0227 _ E8, 000002FF
        mov     eax, dword [ebp-14H]                    ; 022C _ 8B. 45, EC
        lea     edx, [eax-3H]                           ; 022F _ 8D. 50, FD
        mov     eax, dword [ebp-14H]                    ; 0232 _ 8B. 45, EC
        sub     eax, 3                                  ; 0235 _ 83. E8, 03
        mov     dword [esp+18H], edx                    ; 0238 _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 023C _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 0244 _ 89. 44 24, 10
        mov     dword [esp+0CH], 2                      ; 0248 _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 0                       ; 0250 _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp-10H]                    ; 0258 _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 025B _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 025F _ 8B. 45, F4
        mov     dword [esp], eax                        ; 0262 _ 89. 04 24
        call    _boxfill8                               ; 0265 _ E8, 000002C1
        mov     eax, dword [ebp-14H]                    ; 026A _ 8B. 45, EC
        lea     edx, [eax-3H]                           ; 026D _ 8D. 50, FD
        mov     eax, dword [ebp-14H]                    ; 0270 _ 8B. 45, EC
        sub     eax, 24                                 ; 0273 _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 0276 _ 89. 54 24, 18
        mov     dword [esp+14H], 60                     ; 027A _ C7. 44 24, 14, 0000003C
        mov     dword [esp+10H], eax                    ; 0282 _ 89. 44 24, 10
        mov     dword [esp+0CH], 60                     ; 0286 _ C7. 44 24, 0C, 0000003C
        mov     dword [esp+8H], 0                       ; 028E _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp-10H]                    ; 0296 _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 0299 _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 029D _ 8B. 45, F4
        mov     dword [esp], eax                        ; 02A0 _ 89. 04 24
        call    _boxfill8                               ; 02A3 _ E8, 00000283
        mov     eax, dword [ebp-14H]                    ; 02A8 _ 8B. 45, EC
        lea     ebx, [eax-18H]                          ; 02AB _ 8D. 58, E8
        mov     eax, dword [ebp-10H]                    ; 02AE _ 8B. 45, F0
        lea     ecx, [eax-4H]                           ; 02B1 _ 8D. 48, FC
        mov     eax, dword [ebp-14H]                    ; 02B4 _ 8B. 45, EC
        lea     edx, [eax-18H]                          ; 02B7 _ 8D. 50, E8
        mov     eax, dword [ebp-10H]                    ; 02BA _ 8B. 45, F0
        sub     eax, 47                                 ; 02BD _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 02C0 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 02C4 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 02C8 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 02CC _ 89. 44 24, 0C
        mov     dword [esp+8H], 15                      ; 02D0 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp-10H]                    ; 02D8 _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 02DB _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 02DF _ 8B. 45, F4
        mov     dword [esp], eax                        ; 02E2 _ 89. 04 24
        call    _boxfill8                               ; 02E5 _ E8, 00000241
        mov     eax, dword [ebp-14H]                    ; 02EA _ 8B. 45, EC
        lea     ebx, [eax-4H]                           ; 02ED _ 8D. 58, FC
        mov     eax, dword [ebp-10H]                    ; 02F0 _ 8B. 45, F0
        lea     ecx, [eax-2FH]                          ; 02F3 _ 8D. 48, D1
        mov     eax, dword [ebp-14H]                    ; 02F6 _ 8B. 45, EC
        lea     edx, [eax-17H]                          ; 02F9 _ 8D. 50, E9
        mov     eax, dword [ebp-10H]                    ; 02FC _ 8B. 45, F0
        sub     eax, 47                                 ; 02FF _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 0302 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 0306 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 030A _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 030E _ 89. 44 24, 0C
        mov     dword [esp+8H], 15                      ; 0312 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp-10H]                    ; 031A _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 031D _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 0321 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 0324 _ 89. 04 24
        call    _boxfill8                               ; 0327 _ E8, 000001FF
        mov     eax, dword [ebp-14H]                    ; 032C _ 8B. 45, EC
        lea     ebx, [eax-3H]                           ; 032F _ 8D. 58, FD
        mov     eax, dword [ebp-10H]                    ; 0332 _ 8B. 45, F0
        lea     ecx, [eax-4H]                           ; 0335 _ 8D. 48, FC
        mov     eax, dword [ebp-14H]                    ; 0338 _ 8B. 45, EC
        lea     edx, [eax-3H]                           ; 033B _ 8D. 50, FD
        mov     eax, dword [ebp-10H]                    ; 033E _ 8B. 45, F0
        sub     eax, 47                                 ; 0341 _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 0344 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 0348 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 034C _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 0350 _ 89. 44 24, 0C
        mov     dword [esp+8H], 7                       ; 0354 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp-10H]                    ; 035C _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 035F _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 0363 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 0366 _ 89. 04 24
        call    _boxfill8                               ; 0369 _ E8, 000001BD
        mov     eax, dword [ebp-14H]                    ; 036E _ 8B. 45, EC
        lea     ebx, [eax-3H]                           ; 0371 _ 8D. 58, FD
        mov     eax, dword [ebp-10H]                    ; 0374 _ 8B. 45, F0
        lea     ecx, [eax-3H]                           ; 0377 _ 8D. 48, FD
        mov     eax, dword [ebp-14H]                    ; 037A _ 8B. 45, EC
        lea     edx, [eax-18H]                          ; 037D _ 8D. 50, E8
        mov     eax, dword [ebp-10H]                    ; 0380 _ 8B. 45, F0
        sub     eax, 3                                  ; 0383 _ 83. E8, 03
        mov     dword [esp+18H], ebx                    ; 0386 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 038A _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 038E _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 0392 _ 89. 44 24, 0C
        mov     dword [esp+8H], 7                       ; 0396 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp-10H]                    ; 039E _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 03A1 _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 03A5 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 03A8 _ 89. 04 24
        call    _boxfill8                               ; 03AB _ E8, 0000017B
        mov     dword [esp+14H], ?_034                  ; 03B0 _ C7. 44 24, 14, 00000000(d)
        mov     dword [esp+10H], 7                      ; 03B8 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 60                     ; 03C0 _ C7. 44 24, 0C, 0000003C
        mov     dword [esp+8H], 125                     ; 03C8 _ C7. 44 24, 08, 0000007D
        mov     eax, dword [ebp-10H]                    ; 03D0 _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 03D3 _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 03D7 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 03DA _ 89. 04 24
        call    _showString                             ; 03DD _ E8, 0000031A
        mov     dword [esp+4H], 14                      ; 03E2 _ C7. 44 24, 04, 0000000E
        mov     dword [esp], _mcursor                   ; 03EA _ C7. 04 24, 00000000(d)
        call    _init_mouse_cursor                      ; 03F1 _ E8, 00000367
        mov     dword [esp+1CH], 16                     ; 03F6 _ C7. 44 24, 1C, 00000010
        mov     dword [esp+18H], _mcursor               ; 03FE _ C7. 44 24, 18, 00000000(d)
        mov     dword [esp+14H], 80                     ; 0406 _ C7. 44 24, 14, 00000050
        mov     dword [esp+10H], 80                     ; 040E _ C7. 44 24, 10, 00000050
        mov     dword [esp+0CH], 16                     ; 0416 _ C7. 44 24, 0C, 00000010
        mov     dword [esp+8H], 16                      ; 041E _ C7. 44 24, 08, 00000010
        mov     eax, dword [ebp-10H]                    ; 0426 _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 0429 _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 042D _ 8B. 45, F4
        mov     dword [esp], eax                        ; 0430 _ 89. 04 24
        call    _putblock                               ; 0433 _ E8, 000003FB
?_001:  call    _io_hlt                                 ; 0438 _ E8, 00000000(rel)
        jmp     ?_001                                   ; 043D _ EB, F9

_initBootInfo:; Function begin
        push    ebp                                     ; 043F _ 55
        mov     ebp, esp                                ; 0440 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0442 _ 8B. 45, 08
        mov     dword [eax], 655360                     ; 0445 _ C7. 00, 000A0000
        mov     eax, dword [ebp+8H]                     ; 044B _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 320                      ; 044E _ 66: C7. 40, 04, 0140
        mov     eax, dword [ebp+8H]                     ; 0454 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 200                      ; 0457 _ 66: C7. 40, 06, 00C8
        nop                                             ; 045D _ 90
        pop     ebp                                     ; 045E _ 5D
        ret                                             ; 045F _ C3
; _initBootInfo End of function

_init_palette:; Function begin
        push    ebp                                     ; 0460 _ 55
        mov     ebp, esp                                ; 0461 _ 89. E5
        sub     esp, 24                                 ; 0463 _ 83. EC, 18
        mov     dword [esp+8H], _table_rgb.1981         ; 0466 _ C7. 44 24, 08, 00000020(d)
        mov     dword [esp+4H], 15                      ; 046E _ C7. 44 24, 04, 0000000F
        mov     dword [esp], 0                          ; 0476 _ C7. 04 24, 00000000
        call    _set_palette                            ; 047D _ E8, 00000003
        nop                                             ; 0482 _ 90
        leave                                           ; 0483 _ C9
        ret                                             ; 0484 _ C3
; _init_palette End of function

_set_palette:; Function begin
        push    ebp                                     ; 0485 _ 55
        mov     ebp, esp                                ; 0486 _ 89. E5
        sub     esp, 40                                 ; 0488 _ 83. EC, 28
        call    _io_load_eflags                         ; 048B _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 0490 _ 89. 45, F0
        call    _io_cli                                 ; 0493 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 0498 _ 8B. 45, 08
        mov     dword [esp+4H], eax                     ; 049B _ 89. 44 24, 04
        mov     dword [esp], 968                        ; 049F _ C7. 04 24, 000003C8
        call    _io_out8                                ; 04A6 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 04AB _ 8B. 45, 08
        mov     dword [ebp-0CH], eax                    ; 04AE _ 89. 45, F4
        jmp     ?_003                                   ; 04B1 _ EB, 62

?_002:  mov     eax, dword [ebp+10H]                    ; 04B3 _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 04B6 _ 0F B6. 00
        shr     al, 2                                   ; 04B9 _ C0. E8, 02
        movzx   eax, al                                 ; 04BC _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 04BF _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 04C3 _ C7. 04 24, 000003C9
        call    _io_out8                                ; 04CA _ E8, 00000000(rel)
        mov     eax, dword [ebp+10H]                    ; 04CF _ 8B. 45, 10
        add     eax, 1                                  ; 04D2 _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 04D5 _ 0F B6. 00
        shr     al, 2                                   ; 04D8 _ C0. E8, 02
        movzx   eax, al                                 ; 04DB _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 04DE _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 04E2 _ C7. 04 24, 000003C9
        call    _io_out8                                ; 04E9 _ E8, 00000000(rel)
        mov     eax, dword [ebp+10H]                    ; 04EE _ 8B. 45, 10
        add     eax, 2                                  ; 04F1 _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 04F4 _ 0F B6. 00
        shr     al, 2                                   ; 04F7 _ C0. E8, 02
        movzx   eax, al                                 ; 04FA _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 04FD _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 0501 _ C7. 04 24, 000003C9
        call    _io_out8                                ; 0508 _ E8, 00000000(rel)
        add     dword [ebp+10H], 3                      ; 050D _ 83. 45, 10, 03
        add     dword [ebp-0CH], 1                      ; 0511 _ 83. 45, F4, 01
?_003:  mov     eax, dword [ebp-0CH]                    ; 0515 _ 8B. 45, F4
        cmp     eax, dword [ebp+0CH]                    ; 0518 _ 3B. 45, 0C
        jle     ?_002                                   ; 051B _ 7E, 96
        mov     eax, dword [ebp-10H]                    ; 051D _ 8B. 45, F0
        mov     dword [esp], eax                        ; 0520 _ 89. 04 24
        call    _io_store_eflags                        ; 0523 _ E8, 00000000(rel)
        nop                                             ; 0528 _ 90
        leave                                           ; 0529 _ C9
        ret                                             ; 052A _ C3
; _set_palette End of function

_boxfill8:; Function begin
        push    ebp                                     ; 052B _ 55
        mov     ebp, esp                                ; 052C _ 89. E5
        sub     esp, 20                                 ; 052E _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 0531 _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 0534 _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 0537 _ 8B. 45, 18
        mov     dword [ebp-8H], eax                     ; 053A _ 89. 45, F8
        jmp     ?_007                                   ; 053D _ EB, 31

?_004:  mov     eax, dword [ebp+14H]                    ; 053F _ 8B. 45, 14
        mov     dword [ebp-4H], eax                     ; 0542 _ 89. 45, FC
        jmp     ?_006                                   ; 0545 _ EB, 1D

?_005:  mov     eax, dword [ebp-8H]                     ; 0547 _ 8B. 45, F8
        imul    eax, dword [ebp+0CH]                    ; 054A _ 0F AF. 45, 0C
        mov     edx, dword [ebp-4H]                     ; 054E _ 8B. 55, FC
        add     eax, edx                                ; 0551 _ 01. D0
        mov     edx, eax                                ; 0553 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0555 _ 8B. 45, 08
        add     edx, eax                                ; 0558 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 055A _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 055E _ 88. 02
        add     dword [ebp-4H], 1                       ; 0560 _ 83. 45, FC, 01
?_006:  mov     eax, dword [ebp-4H]                     ; 0564 _ 8B. 45, FC
        cmp     eax, dword [ebp+1CH]                    ; 0567 _ 3B. 45, 1C
        jle     ?_005                                   ; 056A _ 7E, DB
        add     dword [ebp-8H], 1                       ; 056C _ 83. 45, F8, 01
?_007:  mov     eax, dword [ebp-8H]                     ; 0570 _ 8B. 45, F8
        cmp     eax, dword [ebp+20H]                    ; 0573 _ 3B. 45, 20
        jle     ?_004                                   ; 0576 _ 7E, C7
        nop                                             ; 0578 _ 90
        leave                                           ; 0579 _ C9
        ret                                             ; 057A _ C3
; _boxfill8 End of function

_showFont8:; Function begin
        push    ebp                                     ; 057B _ 55
        mov     ebp, esp                                ; 057C _ 89. E5
        sub     esp, 20                                 ; 057E _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 0581 _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 0584 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 0587 _ C7. 45, FC, 00000000
        jmp     ?_017                                   ; 058E _ E9, 0000015C

?_008:  mov     edx, dword [ebp-4H]                     ; 0593 _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 0596 _ 8B. 45, 1C
        add     eax, edx                                ; 0599 _ 01. D0
        movzx   eax, byte [eax]                         ; 059B _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 059E _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 05A1 _ 80. 7D, FB, 00
        jns     ?_009                                   ; 05A5 _ 79, 1E
        mov     edx, dword [ebp+14H]                    ; 05A7 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 05AA _ 8B. 45, FC
        add     eax, edx                                ; 05AD _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 05AF _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 05B3 _ 8B. 55, 10
        add     eax, edx                                ; 05B6 _ 01. D0
        mov     edx, eax                                ; 05B8 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 05BA _ 8B. 45, 08
        add     edx, eax                                ; 05BD _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 05BF _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 05C3 _ 88. 02
?_009:  movsx   eax, byte [ebp-5H]                      ; 05C5 _ 0F BE. 45, FB
        and     eax, 40H                                ; 05C9 _ 83. E0, 40
        test    eax, eax                                ; 05CC _ 85. C0
        jz      ?_010                                   ; 05CE _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 05D0 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 05D3 _ 8B. 45, FC
        add     eax, edx                                ; 05D6 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 05D8 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 05DC _ 8B. 55, 10
        add     eax, edx                                ; 05DF _ 01. D0
        lea     edx, [eax+1H]                           ; 05E1 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 05E4 _ 8B. 45, 08
        add     edx, eax                                ; 05E7 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 05E9 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 05ED _ 88. 02
?_010:  movsx   eax, byte [ebp-5H]                      ; 05EF _ 0F BE. 45, FB
        and     eax, 20H                                ; 05F3 _ 83. E0, 20
        test    eax, eax                                ; 05F6 _ 85. C0
        jz      ?_011                                   ; 05F8 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 05FA _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 05FD _ 8B. 45, FC
        add     eax, edx                                ; 0600 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0602 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 0606 _ 8B. 55, 10
        add     eax, edx                                ; 0609 _ 01. D0
        lea     edx, [eax+2H]                           ; 060B _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 060E _ 8B. 45, 08
        add     edx, eax                                ; 0611 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0613 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0617 _ 88. 02
?_011:  movsx   eax, byte [ebp-5H]                      ; 0619 _ 0F BE. 45, FB
        and     eax, 10H                                ; 061D _ 83. E0, 10
        test    eax, eax                                ; 0620 _ 85. C0
        jz      ?_012                                   ; 0622 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 0624 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0627 _ 8B. 45, FC
        add     eax, edx                                ; 062A _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 062C _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 0630 _ 8B. 55, 10
        add     eax, edx                                ; 0633 _ 01. D0
        lea     edx, [eax+3H]                           ; 0635 _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 0638 _ 8B. 45, 08
        add     edx, eax                                ; 063B _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 063D _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0641 _ 88. 02
?_012:  movsx   eax, byte [ebp-5H]                      ; 0643 _ 0F BE. 45, FB
        and     eax, 08H                                ; 0647 _ 83. E0, 08
        test    eax, eax                                ; 064A _ 85. C0
        jz      ?_013                                   ; 064C _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 064E _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0651 _ 8B. 45, FC
        add     eax, edx                                ; 0654 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0656 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 065A _ 8B. 55, 10
        add     eax, edx                                ; 065D _ 01. D0
        lea     edx, [eax+4H]                           ; 065F _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0662 _ 8B. 45, 08
        add     edx, eax                                ; 0665 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0667 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 066B _ 88. 02
?_013:  movsx   eax, byte [ebp-5H]                      ; 066D _ 0F BE. 45, FB
        and     eax, 04H                                ; 0671 _ 83. E0, 04
        test    eax, eax                                ; 0674 _ 85. C0
        jz      ?_014                                   ; 0676 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 0678 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 067B _ 8B. 45, FC
        add     eax, edx                                ; 067E _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0680 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 0684 _ 8B. 55, 10
        add     eax, edx                                ; 0687 _ 01. D0
        lea     edx, [eax+5H]                           ; 0689 _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 068C _ 8B. 45, 08
        add     edx, eax                                ; 068F _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0691 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0695 _ 88. 02
?_014:  movsx   eax, byte [ebp-5H]                      ; 0697 _ 0F BE. 45, FB
        and     eax, 02H                                ; 069B _ 83. E0, 02
        test    eax, eax                                ; 069E _ 85. C0
        jz      ?_015                                   ; 06A0 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 06A2 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 06A5 _ 8B. 45, FC
        add     eax, edx                                ; 06A8 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 06AA _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 06AE _ 8B. 55, 10
        add     eax, edx                                ; 06B1 _ 01. D0
        lea     edx, [eax+6H]                           ; 06B3 _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 06B6 _ 8B. 45, 08
        add     edx, eax                                ; 06B9 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 06BB _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 06BF _ 88. 02
?_015:  movsx   eax, byte [ebp-5H]                      ; 06C1 _ 0F BE. 45, FB
        and     eax, 01H                                ; 06C5 _ 83. E0, 01
        test    eax, eax                                ; 06C8 _ 85. C0
        jz      ?_016                                   ; 06CA _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 06CC _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 06CF _ 8B. 45, FC
        add     eax, edx                                ; 06D2 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 06D4 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 06D8 _ 8B. 55, 10
        add     eax, edx                                ; 06DB _ 01. D0
        lea     edx, [eax+7H]                           ; 06DD _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 06E0 _ 8B. 45, 08
        add     edx, eax                                ; 06E3 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 06E5 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 06E9 _ 88. 02
?_016:  add     dword [ebp-4H], 1                       ; 06EB _ 83. 45, FC, 01
?_017:  cmp     dword [ebp-4H], 15                      ; 06EF _ 83. 7D, FC, 0F
        jle     ?_008                                   ; 06F3 _ 0F 8E, FFFFFE9A
        nop                                             ; 06F9 _ 90
        leave                                           ; 06FA _ C9
        ret                                             ; 06FB _ C3
; _showFont8 End of function

_showString:; Function begin
        push    ebp                                     ; 06FC _ 55
        mov     ebp, esp                                ; 06FD _ 89. E5
        sub     esp, 28                                 ; 06FF _ 83. EC, 1C
        mov     eax, dword [ebp+18H]                    ; 0702 _ 8B. 45, 18
        mov     byte [ebp-4H], al                       ; 0705 _ 88. 45, FC
        jmp     ?_019                                   ; 0708 _ EB, 46

?_018:  mov     eax, dword [ebp+1CH]                    ; 070A _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 070D _ 0F B6. 00
        movzx   eax, al                                 ; 0710 _ 0F B6. C0
        shl     eax, 4                                  ; 0713 _ C1. E0, 04
        lea     edx, [_systemFont+eax]                  ; 0716 _ 8D. 90, 00000000(d)
        movsx   eax, byte [ebp-4H]                      ; 071C _ 0F BE. 45, FC
        mov     dword [esp+14H], edx                    ; 0720 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 0724 _ 89. 44 24, 10
        mov     eax, dword [ebp+14H]                    ; 0728 _ 8B. 45, 14
        mov     dword [esp+0CH], eax                    ; 072B _ 89. 44 24, 0C
        mov     eax, dword [ebp+10H]                    ; 072F _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 0732 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 0736 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0739 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 073D _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0740 _ 89. 04 24
        call    _showFont8                              ; 0743 _ E8, FFFFFE33
        add     dword [ebp+10H], 8                      ; 0748 _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 074C _ 83. 45, 1C, 01
?_019:  mov     eax, dword [ebp+1CH]                    ; 0750 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 0753 _ 0F B6. 00
        test    al, al                                  ; 0756 _ 84. C0
        jnz     ?_018                                   ; 0758 _ 75, B0
        nop                                             ; 075A _ 90
        leave                                           ; 075B _ C9
        ret                                             ; 075C _ C3
; _showString End of function

_init_mouse_cursor:; Function begin
        push    ebp                                     ; 075D _ 55
        mov     ebp, esp                                ; 075E _ 89. E5
        sub     esp, 20                                 ; 0760 _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 0763 _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 0766 _ 88. 45, EC
        mov     dword [ebp-8H], 0                       ; 0769 _ C7. 45, F8, 00000000
        jmp     ?_026                                   ; 0770 _ E9, 000000B1

?_020:  mov     dword [ebp-4H], 0                       ; 0775 _ C7. 45, FC, 00000000
        jmp     ?_025                                   ; 077C _ E9, 00000097

?_021:  mov     eax, dword [ebp-8H]                     ; 0781 _ 8B. 45, F8
        shl     eax, 4                                  ; 0784 _ C1. E0, 04
        mov     edx, eax                                ; 0787 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 0789 _ 8B. 45, FC
        add     eax, edx                                ; 078C _ 01. D0
        add     eax, _cursor.2039                       ; 078E _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 0793 _ 0F B6. 00
        cmp     al, 42                                  ; 0796 _ 3C, 2A
        jnz     ?_022                                   ; 0798 _ 75, 17
        mov     eax, dword [ebp-8H]                     ; 079A _ 8B. 45, F8
        shl     eax, 4                                  ; 079D _ C1. E0, 04
        mov     edx, eax                                ; 07A0 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 07A2 _ 8B. 45, FC
        add     eax, edx                                ; 07A5 _ 01. D0
        mov     edx, eax                                ; 07A7 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 07A9 _ 8B. 45, 08
        add     eax, edx                                ; 07AC _ 01. D0
        mov     byte [eax], 0                           ; 07AE _ C6. 00, 00
?_022:  mov     eax, dword [ebp-8H]                     ; 07B1 _ 8B. 45, F8
        shl     eax, 4                                  ; 07B4 _ C1. E0, 04
        mov     edx, eax                                ; 07B7 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 07B9 _ 8B. 45, FC
        add     eax, edx                                ; 07BC _ 01. D0
        add     eax, _cursor.2039                       ; 07BE _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 07C3 _ 0F B6. 00
        cmp     al, 79                                  ; 07C6 _ 3C, 4F
        jnz     ?_023                                   ; 07C8 _ 75, 17
        mov     eax, dword [ebp-8H]                     ; 07CA _ 8B. 45, F8
        shl     eax, 4                                  ; 07CD _ C1. E0, 04
        mov     edx, eax                                ; 07D0 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 07D2 _ 8B. 45, FC
        add     eax, edx                                ; 07D5 _ 01. D0
        mov     edx, eax                                ; 07D7 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 07D9 _ 8B. 45, 08
        add     eax, edx                                ; 07DC _ 01. D0
        mov     byte [eax], 7                           ; 07DE _ C6. 00, 07
?_023:  mov     eax, dword [ebp-8H]                     ; 07E1 _ 8B. 45, F8
        shl     eax, 4                                  ; 07E4 _ C1. E0, 04
        mov     edx, eax                                ; 07E7 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 07E9 _ 8B. 45, FC
        add     eax, edx                                ; 07EC _ 01. D0
        add     eax, _cursor.2039                       ; 07EE _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 07F3 _ 0F B6. 00
        cmp     al, 46                                  ; 07F6 _ 3C, 2E
        jnz     ?_024                                   ; 07F8 _ 75, 1A
        mov     eax, dword [ebp-8H]                     ; 07FA _ 8B. 45, F8
        shl     eax, 4                                  ; 07FD _ C1. E0, 04
        mov     edx, eax                                ; 0800 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 0802 _ 8B. 45, FC
        add     eax, edx                                ; 0805 _ 01. D0
        mov     edx, eax                                ; 0807 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0809 _ 8B. 45, 08
        add     edx, eax                                ; 080C _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 080E _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0812 _ 88. 02
?_024:  add     dword [ebp-4H], 1                       ; 0814 _ 83. 45, FC, 01
?_025:  cmp     dword [ebp-4H], 15                      ; 0818 _ 83. 7D, FC, 0F
        jle     ?_021                                   ; 081C _ 0F 8E, FFFFFF5F
        add     dword [ebp-8H], 1                       ; 0822 _ 83. 45, F8, 01
?_026:  cmp     dword [ebp-8H], 15                      ; 0826 _ 83. 7D, F8, 0F
        jle     ?_020                                   ; 082A _ 0F 8E, FFFFFF45
        nop                                             ; 0830 _ 90
        leave                                           ; 0831 _ C9
        ret                                             ; 0832 _ C3
; _init_mouse_cursor End of function

_putblock:; Function begin
        push    ebp                                     ; 0833 _ 55
        mov     ebp, esp                                ; 0834 _ 89. E5
        push    ebx                                     ; 0836 _ 53
        sub     esp, 16                                 ; 0837 _ 83. EC, 10
        mov     dword [ebp-0CH], 0                      ; 083A _ C7. 45, F4, 00000000
        jmp     ?_030                                   ; 0841 _ EB, 4E

?_027:  mov     dword [ebp-8H], 0                       ; 0843 _ C7. 45, F8, 00000000
        jmp     ?_029                                   ; 084A _ EB, 39

?_028:  mov     eax, dword [ebp-0CH]                    ; 084C _ 8B. 45, F4
        imul    eax, dword [ebp+24H]                    ; 084F _ 0F AF. 45, 24
        mov     edx, dword [ebp-8H]                     ; 0853 _ 8B. 55, F8
        add     eax, edx                                ; 0856 _ 01. D0
        mov     edx, eax                                ; 0858 _ 89. C2
        mov     eax, dword [ebp+20H]                    ; 085A _ 8B. 45, 20
        add     eax, edx                                ; 085D _ 01. D0
        mov     ecx, dword [ebp+1CH]                    ; 085F _ 8B. 4D, 1C
        mov     edx, dword [ebp-0CH]                    ; 0862 _ 8B. 55, F4
        add     edx, ecx                                ; 0865 _ 01. CA
        imul    edx, dword [ebp+0CH]                    ; 0867 _ 0F AF. 55, 0C
        mov     ebx, dword [ebp+18H]                    ; 086B _ 8B. 5D, 18
        mov     ecx, dword [ebp-8H]                     ; 086E _ 8B. 4D, F8
        add     ecx, ebx                                ; 0871 _ 01. D9
        add     edx, ecx                                ; 0873 _ 01. CA
        mov     ecx, edx                                ; 0875 _ 89. D1
        mov     edx, dword [ebp+8H]                     ; 0877 _ 8B. 55, 08
        add     edx, ecx                                ; 087A _ 01. CA
        movzx   eax, byte [eax]                         ; 087C _ 0F B6. 00
        mov     byte [edx], al                          ; 087F _ 88. 02
        add     dword [ebp-8H], 1                       ; 0881 _ 83. 45, F8, 01
?_029:  mov     eax, dword [ebp-8H]                     ; 0885 _ 8B. 45, F8
        cmp     eax, dword [ebp+10H]                    ; 0888 _ 3B. 45, 10
        jl      ?_028                                   ; 088B _ 7C, BF
        add     dword [ebp-0CH], 1                      ; 088D _ 83. 45, F4, 01
?_030:  mov     eax, dword [ebp-0CH]                    ; 0891 _ 8B. 45, F4
        cmp     eax, dword [ebp+14H]                    ; 0894 _ 3B. 45, 14
        jl      ?_027                                   ; 0897 _ 7C, AA
        nop                                             ; 0899 _ 90
        add     esp, 16                                 ; 089A _ 83. C4, 10
        pop     ebx                                     ; 089D _ 5B
        pop     ebp                                     ; 089E _ 5D
        ret                                             ; 089F _ C3
; _putblock End of function

_intHandlerFromC:; Function begin
        push    ebp                                     ; 08A0 _ 55
        mov     ebp, esp                                ; 08A1 _ 89. E5
        sub     esp, 56                                 ; 08A3 _ 83. EC, 38
        mov     eax, dword [_bootInfo]                  ; 08A6 _ A1, 00000100(d)
        mov     dword [ebp-0CH], eax                    ; 08AB _ 89. 45, F4
        movzx   eax, word [?_032]                       ; 08AE _ 0F B7. 05, 00000104(d)
        cwde                                            ; 08B5 _ 98
        mov     dword [ebp-10H], eax                    ; 08B6 _ 89. 45, F0
        movzx   eax, word [?_033]                       ; 08B9 _ 0F B7. 05, 00000106(d)
        cwde                                            ; 08C0 _ 98
        mov     dword [ebp-14H], eax                    ; 08C1 _ 89. 45, EC
        mov     dword [esp+18H], 15                     ; 08C4 _ C7. 44 24, 18, 0000000F
        mov     dword [esp+14H], 255                    ; 08CC _ C7. 44 24, 14, 000000FF
        mov     dword [esp+10H], 0                      ; 08D4 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 08DC _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 08E4 _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp-10H]                    ; 08EC _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 08EF _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 08F3 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 08F6 _ 89. 04 24
        call    _boxfill8                               ; 08F9 _ E8, FFFFFC2D
        mov     dword [esp+14H], ?_035                  ; 08FE _ C7. 44 24, 14, 0000000B(d)
        mov     dword [esp+10H], 7                      ; 0906 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 0                      ; 090E _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 0916 _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp-10H]                    ; 091E _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 0921 _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 0925 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 0928 _ 89. 04 24
        call    _showString                             ; 092B _ E8, FFFFFDCC
?_031:  call    _io_hlt                                 ; 0930 _ E8, 00000000(rel)
        jmp     ?_031                                   ; 0935 _ EB, F9
; _intHandlerFromC End of function

        nop                                             ; 0937 _ 90

_fontA:                                                 ; byte
        db 00H, 18H, 18H, 18H, 18H, 24H, 24H, 24H       ; 0000 _ .....$$$
        db 24H, 7EH, 42H, 42H, 42H, 0E7H, 00H, 00H      ; 0008 _ $~BBB...
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0010 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0018 _ ........

_table_rgb.1981:                                        ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0020 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0028 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0030 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0038 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 0040 _ ........
        db 00H, 84H, 00H, 84H, 84H, 84H, 84H, 84H       ; 0048 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0050 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0058 _ ........

_cursor.2039:                                           ; byte
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

?_032:  resw    1                                       ; 0104

?_033:  resw    13                                      ; 0106


?_034:                                                  ; byte
        db 46H, 72H, 61H, 67H, 69H, 6CH, 65H, 20H       ; 0000 _ Fragile 
        db 4FH, 53H, 00H                                ; 0008 _ OS.

?_035:                                                  ; byte
        db 50H, 53H, 2FH, 32H, 20H, 6BH, 65H, 79H       ; 000B _ PS/2 key
        db 62H, 6FH, 61H, 72H, 64H, 00H, 00H, 00H       ; 0013 _ board...
        db 00H                                          ; 001B _ .

