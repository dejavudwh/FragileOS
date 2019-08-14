; Disassembly of file: app.o
; Wed Aug 14 09:50:04 2019
; Mode: 32 bits
; Syntax: YASM/NASM
; Instruction set: 80386







_rand:
        mov     eax, dword [_ran]                       ; 0000 _ A1, 00000000(d)
        imul    eax, eax, 214013                        ; 0005 _ 69. C0, 000343FD
        add     eax, 2531011                            ; 000B _ 05, 00269EC3
        mov     dword [_ran], eax                       ; 0010 _ A3, 00000000(d)
        mov     eax, dword [_ran]                       ; 0015 _ A1, 00000000(d)
        sar     eax, 16                                 ; 001A _ C1. F8, 10
        and     eax, 7FFFH                              ; 001D _ 25, 00007FFF
        ret                                             ; 0022 _ C3

_intToStr:; Function begin
        push    ebp                                     ; 0023 _ 55
        mov     ebp, esp                                ; 0024 _ 89. E5
        sub     esp, 16                                 ; 0026 _ 83. EC, 10
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [ebp-3H], 0                        ; 0029 _ 66: C7. 45, FD, 0000
        mov     byte [ebp-1H], 0                        ; 002F _ C6. 45, FF, 00
        mov     byte [ebp-3H], 48                       ; 0033 _ C6. 45, FD, 30
        mov     byte [ebp-1H], 0                        ; 0037 _ C6. 45, FF, 00
        mov     ecx, dword [ebp+8H]                     ; 003B _ 8B. 4D, 08
        mov     eax, 1717986919                         ; 003E _ B8, 66666667
        imul    ecx                                     ; 0043 _ F7. E9
        sar     edx, 2                                  ; 0045 _ C1. FA, 02
        mov     eax, ecx                                ; 0048 _ 89. C8
        sar     eax, 31                                 ; 004A _ C1. F8, 1F
        sub     edx, eax                                ; 004D _ 29. C2
        mov     eax, edx                                ; 004F _ 89. D0
        shl     eax, 2                                  ; 0051 _ C1. E0, 02
        add     eax, edx                                ; 0054 _ 01. D0
        add     eax, eax                                ; 0056 _ 01. C0
        sub     ecx, eax                                ; 0058 _ 29. C1
        mov     edx, ecx                                ; 005A _ 89. CA
        mov     eax, edx                                ; 005C _ 89. D0
        add     eax, 48                                 ; 005E _ 83. C0, 30
        mov     byte [ebp-2H], al                       ; 0061 _ 88. 45, FE
        mov     ecx, dword [ebp+8H]                     ; 0064 _ 8B. 4D, 08
        mov     edx, 1717986919                         ; 0067 _ BA, 66666667
        mov     eax, ecx                                ; 006C _ 89. C8
        imul    edx                                     ; 006E _ F7. EA
        sar     edx, 2                                  ; 0070 _ C1. FA, 02
        mov     eax, ecx                                ; 0073 _ 89. C8
        sar     eax, 31                                 ; 0075 _ C1. F8, 1F
        sub     edx, eax                                ; 0078 _ 29. C2
        mov     eax, edx                                ; 007A _ 89. D0
        add     eax, 48                                 ; 007C _ 83. C0, 30
        mov     byte [ebp-3H], al                       ; 007F _ 88. 45, FD
        mov     eax, 0                                  ; 0082 _ B8, 00000000
        leave                                           ; 0087 _ C9
        ret                                             ; 0088 _ C3
; _intToStr End of function

_rere:  ; Function begin
        push    ebp                                     ; 0089 _ 55
        mov     ebp, esp                                ; 008A _ 89. E5
        sub     esp, 16                                 ; 008C _ 83. EC, 10
        mov     dword [ebp-4H], ?_006                   ; 008F _ C7. 45, FC, 00000000(d)
        mov     eax, dword [ebp-4H]                     ; 0096 _ 8B. 45, FC
        leave                                           ; 0099 _ C9
        ret                                             ; 009A _ C3
; _rere End of function

__main: ; Function begin
        push    ebp                                     ; 009B _ 55
        mov     ebp, esp                                ; 009C _ 89. E5
        push    ebx                                     ; 009E _ 53
        mov     eax, 23684                              ; 009F _ B8, 00005C84
        call    ___chkstk_ms                            ; 00A4 _ E8, 00000000(rel)
        sub     esp, eax                                ; 00A9 _ 29. C4
        mov     dword [esp+10H], ?_007                  ; 00AB _ C7. 44 24, 10, 00000006(d)
        mov     dword [esp+0CH], -1                     ; 00B3 _ C7. 44 24, 0C, FFFFFFFF
        mov     dword [esp+8H], 164                     ; 00BB _ C7. 44 24, 08, 000000A4
        mov     dword [esp+4H], 144                     ; 00C3 _ C7. 44 24, 04, 00000090
        lea     eax, [ebp-5C60H]                        ; 00CB _ 8D. 85, FFFFA3A0
        mov     dword [esp], eax                        ; 00D1 _ 89. 04 24
        call    _api_openwin                            ; 00D4 _ E8, 00000000(rel)
        mov     dword [ebp-14H], eax                    ; 00D9 _ 89. 45, EC
        mov     dword [ebp-0CH], 0                      ; 00DC _ C7. 45, F4, 00000000
        jmp     ?_004                                   ; 00E3 _ E9, 000000BD

?_001:  mov     dword [ebp-10H], 0                      ; 00E8 _ C7. 45, F0, 00000000
        jmp     ?_003                                   ; 00EF _ E9, 000000A3

?_002:  mov     eax, dword [ebp-10H]                    ; 00F4 _ 8B. 45, F0
        add     eax, eax                                ; 00F7 _ 01. C0
        mov     dword [ebp-18H], eax                    ; 00F9 _ 89. 45, E8
        mov     eax, dword [ebp-0CH]                    ; 00FC _ 8B. 45, F4
        add     eax, eax                                ; 00FF _ 01. C0
        mov     dword [ebp-1CH], eax                    ; 0101 _ 89. 45, E4
        mov     dword [ebp-20H], 0                      ; 0104 _ C7. 45, E0, 00000000
        mov     ecx, dword [ebp-18H]                    ; 010B _ 8B. 4D, E8
        mov     edx, 799063683                          ; 010E _ BA, 2FA0BE83
        mov     eax, ecx                                ; 0113 _ 89. C8
        imul    edx                                     ; 0115 _ F7. EA
        sar     edx, 3                                  ; 0117 _ C1. FA, 03
        mov     eax, ecx                                ; 011A _ 89. C8
        sar     eax, 31                                 ; 011C _ C1. F8, 1F
        sub     edx, eax                                ; 011F _ 29. C2
        mov     eax, edx                                ; 0121 _ 89. D0
        mov     ebx, eax                                ; 0123 _ 89. C3
        mov     ecx, dword [ebp-1CH]                    ; 0125 _ 8B. 4D, E4
        mov     edx, 799063683                          ; 0128 _ BA, 2FA0BE83
        mov     eax, ecx                                ; 012D _ 89. C8
        imul    edx                                     ; 012F _ F7. EA
        sar     edx, 3                                  ; 0131 _ C1. FA, 03
        mov     eax, ecx                                ; 0134 _ 89. C8
        sar     eax, 31                                 ; 0136 _ C1. F8, 1F
        sub     edx, eax                                ; 0139 _ 29. C2
        mov     eax, edx                                ; 013B _ 89. D0
        mov     edx, eax                                ; 013D _ 89. C2
        mov     eax, edx                                ; 013F _ 89. D0
        add     eax, eax                                ; 0141 _ 01. C0
        add     eax, edx                                ; 0143 _ 01. D0
        add     eax, eax                                ; 0145 _ 01. C0
        add     ebx, eax                                ; 0147 _ 01. C3
        mov     ecx, dword [ebp-20H]                    ; 0149 _ 8B. 4D, E0
        mov     edx, 799063683                          ; 014C _ BA, 2FA0BE83
        mov     eax, ecx                                ; 0151 _ 89. C8
        imul    edx                                     ; 0153 _ F7. EA
        sar     edx, 3                                  ; 0155 _ C1. FA, 03
        mov     eax, ecx                                ; 0158 _ 89. C8
        sar     eax, 31                                 ; 015A _ C1. F8, 1F
        sub     edx, eax                                ; 015D _ 29. C2
        mov     eax, edx                                ; 015F _ 89. D0
        mov     edx, eax                                ; 0161 _ 89. C2
        mov     eax, edx                                ; 0163 _ 89. D0
        shl     eax, 3                                  ; 0165 _ C1. E0, 03
        add     eax, edx                                ; 0168 _ 01. D0
        shl     eax, 2                                  ; 016A _ C1. E0, 02
        add     eax, ebx                                ; 016D _ 01. D8
        lea     ebx, [eax+10H]                          ; 016F _ 8D. 58, 10
        mov     eax, dword [ebp-10H]                    ; 0172 _ 8B. 45, F0
        lea     ecx, [eax+8H]                           ; 0175 _ 8D. 48, 08
        mov     eax, dword [ebp-0CH]                    ; 0178 _ 8B. 45, F4
        lea     edx, [eax+1CH]                          ; 017B _ 8D. 50, 1C
        mov     eax, edx                                ; 017E _ 89. D0
        shl     eax, 3                                  ; 0180 _ C1. E0, 03
        add     eax, edx                                ; 0183 _ 01. D0
        shl     eax, 4                                  ; 0185 _ C1. E0, 04
        add     eax, ecx                                ; 0188 _ 01. C8
        mov     edx, ebx                                ; 018A _ 89. DA
        mov     byte [ebp+eax-5C60H], dl                ; 018C _ 88. 94 05, FFFFA3A0
        add     dword [ebp-10H], 1                      ; 0193 _ 83. 45, F0, 01
?_003:  cmp     dword [ebp-10H], 127                    ; 0197 _ 83. 7D, F0, 7F
        jle     ?_002                                   ; 019B _ 0F 8E, FFFFFF53
        add     dword [ebp-0CH], 1                      ; 01A1 _ 83. 45, F4, 01
?_004:  cmp     dword [ebp-0CH], 127                    ; 01A5 _ 83. 7D, F4, 7F
        jle     ?_001                                   ; 01A9 _ 0F 8E, FFFFFF39
        mov     dword [esp+10H], 156                    ; 01AF _ C7. 44 24, 10, 0000009C
        mov     dword [esp+0CH], 136                    ; 01B7 _ C7. 44 24, 0C, 00000088
        mov     dword [esp+8H], 28                      ; 01BF _ C7. 44 24, 08, 0000001C
        mov     dword [esp+4H], 8                       ; 01C7 _ C7. 44 24, 04, 00000008
        mov     eax, dword [ebp-14H]                    ; 01CF _ 8B. 45, EC
        mov     dword [esp], eax                        ; 01D2 _ 89. 04 24
        call    _api_refreshwin                         ; 01D5 _ E8, 00000000(rel)
        nop                                             ; 01DA _ 90
?_005:  mov     dword [esp], 1                          ; 01DB _ C7. 04 24, 00000001
        call    _api_getkey                             ; 01E2 _ E8, 00000000(rel)
        cmp     eax, 28                                 ; 01E7 _ 83. F8, 1C
        jnz     ?_005                                   ; 01EA _ 75, EF
        mov     eax, dword [ebp-14H]                    ; 01EC _ 8B. 45, EC
        mov     dword [esp], eax                        ; 01EF _ 89. 04 24
        call    _api_closewin                           ; 01F2 _ E8, 00000000(rel)
        nop                                             ; 01F7 _ 90
        add     esp, 23684                              ; 01F8 _ 81. C4, 00005C84
        pop     ebx                                     ; 01FE _ 5B
        pop     ebp                                     ; 01FF _ 5D
        ret                                             ; 0200 _ C3
; __main End of function

        nop                                             ; 0201 _ 90
        nop                                             ; 0202 _ 90
        nop                                             ; 0203 _ 90



_ran:                                                   ; dword
        dd 00000017H                                    ; 0000 _ 23 




?_006:                                                  
        db 68H, 65H, 6CH, 6CH, 6FH, 00H                 ; 0000 _ hello.

?_007:                                                  ; byte
        db 63H, 6FH, 6CH, 6FH, 72H, 00H                 ; 0006 _ color.


