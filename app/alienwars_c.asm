; Disassembly of file: alienwars_c.o
; Thu Aug 15 14:35:21 2019
; Mode: 32 bits
; Syntax: YASM/NASM
; Instruction set: 80386







_putstr:
        push    ebp                                     ; 0000 _ 55
        mov     ebp, esp                                ; 0001 _ 89. E5
        sub     esp, 72                                 ; 0003 _ 83. EC, 48
        mov     dword [ebp-0CH], 0                      ; 0006 _ C7. 45, F4, 00000000
        mov     eax, dword [ebp+14H]                    ; 000D _ 8B. 45, 14
        add     eax, 1                                  ; 0010 _ 83. C0, 01
        shl     eax, 3                                  ; 0013 _ C1. E0, 03
        mov     dword [ebp+14H], eax                    ; 0016 _ 89. 45, 14
        mov     eax, dword [ebp+18H]                    ; 0019 _ 8B. 45, 18
        shl     eax, 4                                  ; 001C _ C1. E0, 04
        add     eax, 29                                 ; 001F _ 83. C0, 1D
        mov     dword [ebp+18H], eax                    ; 0022 _ 89. 45, 18
        mov     eax, dword [ebp+14H]                    ; 0025 _ 8B. 45, 14
        mov     dword [ebp-14H], eax                    ; 0028 _ 89. 45, EC
        jmp     ?_002                                   ; 002B _ EB, 04

?_001:  add     dword [ebp-0CH], 1                      ; 002D _ 83. 45, F4, 01
?_002:  mov     edx, dword [ebp-0CH]                    ; 0031 _ 8B. 55, F4
        mov     eax, dword [ebp+20H]                    ; 0034 _ 8B. 45, 20
        add     eax, edx                                ; 0037 _ 01. D0
        movzx   eax, byte [eax]                         ; 0039 _ 0F B6. 00
        test    al, al                                  ; 003C _ 84. C0
        jnz     ?_001                                   ; 003E _ 75, ED
        mov     eax, dword [ebp+18H]                    ; 0040 _ 8B. 45, 18
        add     eax, 15                                 ; 0043 _ 83. C0, 0F
        mov     dword [esp+14H], 0                      ; 0046 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], eax                    ; 004E _ 89. 44 24, 10
        mov     dword [esp+0CH], 262                    ; 0052 _ C7. 44 24, 0C, 00000106
        mov     eax, dword [ebp+18H]                    ; 005A _ 8B. 45, 18
        mov     dword [esp+8H], eax                     ; 005D _ 89. 44 24, 08
        mov     dword [esp+4H], 8                       ; 0061 _ C7. 44 24, 04, 00000008
        mov     eax, dword [ebp+8H]                     ; 0069 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 006C _ 89. 04 24
        call    _api_boxfillwin                         ; 006F _ E8, 00000000(rel)
        mov     eax, dword [ebp+18H]                    ; 0074 _ 8B. 45, 18
        imul    eax, eax, 270                           ; 0077 _ 69. C0, 0000010E
        mov     edx, eax                                ; 007D _ 89. C2
        mov     eax, dword [ebp+0CH]                    ; 007F _ 8B. 45, 0C
        add     eax, edx                                ; 0082 _ 01. D0
        mov     dword [ebp-10H], eax                    ; 0084 _ 89. 45, F0
        mov     byte [ebp-1DH], 0                       ; 0087 _ C6. 45, E3, 00
?_003:  mov     eax, dword [ebp+20H]                    ; 008B _ 8B. 45, 20
        movzx   eax, byte [eax]                         ; 008E _ 0F B6. 00
        movzx   eax, al                                 ; 0091 _ 0F B6. C0
        mov     dword [ebp-18H], eax                    ; 0094 _ 89. 45, E8
        cmp     dword [ebp-18H], 0                      ; 0097 _ 83. 7D, E8, 00
        je      ?_018                                   ; 009B _ 0F 84, 000001BD
        cmp     dword [ebp-18H], 32                     ; 00A1 _ 83. 7D, E8, 20
        je      ?_017                                   ; 00A5 _ 0F 84, 000001A6
        cmp     dword [ebp-18H], 96                     ; 00AB _ 83. 7D, E8, 60
        jle     ?_014                                   ; 00AF _ 0F 8E, 0000014C
        cmp     dword [ebp-18H], 104                    ; 00B5 _ 83. 7D, E8, 68
        jg      ?_014                                   ; 00B9 _ 0F 8F, 00000142
        mov     eax, dword [ebp-18H]                    ; 00BF _ 8B. 45, E8
        sub     eax, 97                                 ; 00C2 _ 83. E8, 61
        shl     eax, 4                                  ; 00C5 _ C1. E0, 04
        mov     edx, eax                                ; 00C8 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 00CA _ 8B. 45, 10
        add     eax, edx                                ; 00CD _ 01. D0
        mov     dword [ebp-1CH], eax                    ; 00CF _ 89. 45, E4
        mov     eax, dword [ebp+14H]                    ; 00D2 _ 8B. 45, 14
        add     dword [ebp-10H], eax                    ; 00D5 _ 01. 45, F0
        mov     dword [ebp-0CH], 0                      ; 00D8 _ C7. 45, F4, 00000000
        jmp     ?_013                                   ; 00DF _ E9, 00000104

?_004:  mov     edx, dword [ebp-0CH]                    ; 00E4 _ 8B. 55, F4
        mov     eax, dword [ebp-1CH]                    ; 00E7 _ 8B. 45, E4
        add     eax, edx                                ; 00EA _ 01. D0
        movzx   eax, byte [eax]                         ; 00EC _ 0F B6. 00
        test    al, al                                  ; 00EF _ 84. C0
        jns     ?_005                                   ; 00F1 _ 79, 0A
        mov     eax, dword [ebp+1CH]                    ; 00F3 _ 8B. 45, 1C
        mov     edx, eax                                ; 00F6 _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 00F8 _ 8B. 45, F0
        mov     byte [eax], dl                          ; 00FB _ 88. 10
?_005:  mov     edx, dword [ebp-0CH]                    ; 00FD _ 8B. 55, F4
        mov     eax, dword [ebp-1CH]                    ; 0100 _ 8B. 45, E4
        add     eax, edx                                ; 0103 _ 01. D0
        movzx   eax, byte [eax]                         ; 0105 _ 0F B6. 00
        movsx   eax, al                                 ; 0108 _ 0F BE. C0
        and     eax, 40H                                ; 010B _ 83. E0, 40
        test    eax, eax                                ; 010E _ 85. C0
        jz      ?_006                                   ; 0110 _ 74, 0B
        mov     eax, dword [ebp-10H]                    ; 0112 _ 8B. 45, F0
        add     eax, 1                                  ; 0115 _ 83. C0, 01
        mov     edx, dword [ebp+1CH]                    ; 0118 _ 8B. 55, 1C
        mov     byte [eax], dl                          ; 011B _ 88. 10
?_006:  mov     edx, dword [ebp-0CH]                    ; 011D _ 8B. 55, F4
        mov     eax, dword [ebp-1CH]                    ; 0120 _ 8B. 45, E4
        add     eax, edx                                ; 0123 _ 01. D0
        movzx   eax, byte [eax]                         ; 0125 _ 0F B6. 00
        movsx   eax, al                                 ; 0128 _ 0F BE. C0
        and     eax, 20H                                ; 012B _ 83. E0, 20
        test    eax, eax                                ; 012E _ 85. C0
        jz      ?_007                                   ; 0130 _ 74, 0B
        mov     eax, dword [ebp-10H]                    ; 0132 _ 8B. 45, F0
        add     eax, 2                                  ; 0135 _ 83. C0, 02
        mov     edx, dword [ebp+1CH]                    ; 0138 _ 8B. 55, 1C
        mov     byte [eax], dl                          ; 013B _ 88. 10
?_007:  mov     edx, dword [ebp-0CH]                    ; 013D _ 8B. 55, F4
        mov     eax, dword [ebp-1CH]                    ; 0140 _ 8B. 45, E4
        add     eax, edx                                ; 0143 _ 01. D0
        movzx   eax, byte [eax]                         ; 0145 _ 0F B6. 00
        movsx   eax, al                                 ; 0148 _ 0F BE. C0
        and     eax, 10H                                ; 014B _ 83. E0, 10
        test    eax, eax                                ; 014E _ 85. C0
        jz      ?_008                                   ; 0150 _ 74, 0B
        mov     eax, dword [ebp-10H]                    ; 0152 _ 8B. 45, F0
        add     eax, 3                                  ; 0155 _ 83. C0, 03
        mov     edx, dword [ebp+1CH]                    ; 0158 _ 8B. 55, 1C
        mov     byte [eax], dl                          ; 015B _ 88. 10
?_008:  mov     edx, dword [ebp-0CH]                    ; 015D _ 8B. 55, F4
        mov     eax, dword [ebp-1CH]                    ; 0160 _ 8B. 45, E4
        add     eax, edx                                ; 0163 _ 01. D0
        movzx   eax, byte [eax]                         ; 0165 _ 0F B6. 00
        movsx   eax, al                                 ; 0168 _ 0F BE. C0
        and     eax, 08H                                ; 016B _ 83. E0, 08
        test    eax, eax                                ; 016E _ 85. C0
        jz      ?_009                                   ; 0170 _ 74, 0B
        mov     eax, dword [ebp-10H]                    ; 0172 _ 8B. 45, F0
        add     eax, 4                                  ; 0175 _ 83. C0, 04
        mov     edx, dword [ebp+1CH]                    ; 0178 _ 8B. 55, 1C
        mov     byte [eax], dl                          ; 017B _ 88. 10
?_009:  mov     edx, dword [ebp-0CH]                    ; 017D _ 8B. 55, F4
        mov     eax, dword [ebp-1CH]                    ; 0180 _ 8B. 45, E4
        add     eax, edx                                ; 0183 _ 01. D0
        movzx   eax, byte [eax]                         ; 0185 _ 0F B6. 00
        movsx   eax, al                                 ; 0188 _ 0F BE. C0
        and     eax, 04H                                ; 018B _ 83. E0, 04
        test    eax, eax                                ; 018E _ 85. C0
        jz      ?_010                                   ; 0190 _ 74, 0B
        mov     eax, dword [ebp-10H]                    ; 0192 _ 8B. 45, F0
        add     eax, 5                                  ; 0195 _ 83. C0, 05
        mov     edx, dword [ebp+1CH]                    ; 0198 _ 8B. 55, 1C
        mov     byte [eax], dl                          ; 019B _ 88. 10
?_010:  mov     edx, dword [ebp-0CH]                    ; 019D _ 8B. 55, F4
        mov     eax, dword [ebp-1CH]                    ; 01A0 _ 8B. 45, E4
        add     eax, edx                                ; 01A3 _ 01. D0
        movzx   eax, byte [eax]                         ; 01A5 _ 0F B6. 00
        movsx   eax, al                                 ; 01A8 _ 0F BE. C0
        and     eax, 02H                                ; 01AB _ 83. E0, 02
        test    eax, eax                                ; 01AE _ 85. C0
        jz      ?_011                                   ; 01B0 _ 74, 0B
        mov     eax, dword [ebp-10H]                    ; 01B2 _ 8B. 45, F0
        add     eax, 6                                  ; 01B5 _ 83. C0, 06
        mov     edx, dword [ebp+1CH]                    ; 01B8 _ 8B. 55, 1C
        mov     byte [eax], dl                          ; 01BB _ 88. 10
?_011:  mov     edx, dword [ebp-0CH]                    ; 01BD _ 8B. 55, F4
        mov     eax, dword [ebp-1CH]                    ; 01C0 _ 8B. 45, E4
        add     eax, edx                                ; 01C3 _ 01. D0
        movzx   eax, byte [eax]                         ; 01C5 _ 0F B6. 00
        movsx   eax, al                                 ; 01C8 _ 0F BE. C0
        and     eax, 01H                                ; 01CB _ 83. E0, 01
        test    eax, eax                                ; 01CE _ 85. C0
        jz      ?_012                                   ; 01D0 _ 74, 0B
        mov     eax, dword [ebp-10H]                    ; 01D2 _ 8B. 45, F0
        add     eax, 7                                  ; 01D5 _ 83. C0, 07
        mov     edx, dword [ebp+1CH]                    ; 01D8 _ 8B. 55, 1C
        mov     byte [eax], dl                          ; 01DB _ 88. 10
?_012:  add     dword [ebp-10H], 270                    ; 01DD _ 81. 45, F0, 0000010E
        add     dword [ebp-0CH], 1                      ; 01E4 _ 83. 45, F4, 01
?_013:  cmp     dword [ebp-0CH], 15                     ; 01E8 _ 83. 7D, F4, 0F
        jle     ?_004                                   ; 01EC _ 0F 8E, FFFFFEF2
        mov     eax, dword [ebp+14H]                    ; 01F2 _ 8B. 45, 14
        add     eax, 4320                               ; 01F5 _ 05, 000010E0
        neg     eax                                     ; 01FA _ F7. D8
        add     dword [ebp-10H], eax                    ; 01FC _ 01. 45, F0
        jmp     ?_017                                   ; 01FF _ EB, 50

?_014:  cmp     dword [ebp-18H], 104                    ; 0201 _ 83. 7D, E8, 68
        jle     ?_015                                   ; 0205 _ 7E, 06
        cmp     dword [ebp-18H], 122                    ; 0207 _ 83. 7D, E8, 7A
        jle     ?_016                                   ; 020B _ 7E, 0C
?_015:  cmp     dword [ebp-18H], 64                     ; 020D _ 83. 7D, E8, 40
        jle     ?_017                                   ; 0211 _ 7E, 3E
        cmp     dword [ebp-18H], 90                     ; 0213 _ 83. 7D, E8, 5A
        jg      ?_017                                   ; 0217 _ 7F, 38
?_016:  mov     eax, dword [ebp+20H]                    ; 0219 _ 8B. 45, 20
        movzx   eax, byte [eax]                         ; 021C _ 0F B6. 00
        mov     byte [ebp-1EH], al                      ; 021F _ 88. 45, E2
        lea     eax, [ebp-1EH]                          ; 0222 _ 8D. 45, E2
        mov     dword [esp+14H], eax                    ; 0225 _ 89. 44 24, 14
        mov     dword [esp+10H], 1                      ; 0229 _ C7. 44 24, 10, 00000001
        mov     eax, dword [ebp+1CH]                    ; 0231 _ 8B. 45, 1C
        mov     dword [esp+0CH], eax                    ; 0234 _ 89. 44 24, 0C
        mov     eax, dword [ebp+18H]                    ; 0238 _ 8B. 45, 18
        mov     dword [esp+8H], eax                     ; 023B _ 89. 44 24, 08
        mov     eax, dword [ebp+14H]                    ; 023F _ 8B. 45, 14
        mov     dword [esp+4H], eax                     ; 0242 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0246 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0249 _ 89. 04 24
        call    _api_putstrwin                          ; 024C _ E8, 00000000(rel)
?_017:  add     dword [ebp+20H], 1                      ; 0251 _ 83. 45, 20, 01
        add     dword [ebp+14H], 8                      ; 0255 _ 83. 45, 14, 08
        jmp     ?_003                                   ; 0259 _ E9, FFFFFE2D

?_018:  ; Local function
        nop                                             ; 025E _ 90
        mov     eax, dword [ebp+18H]                    ; 025F _ 8B. 45, 18
        add     eax, 15                                 ; 0262 _ 83. C0, 0F
        mov     dword [esp+10H], eax                    ; 0265 _ 89. 44 24, 10
        mov     dword [esp+0CH], 262                    ; 0269 _ C7. 44 24, 0C, 00000106
        mov     eax, dword [ebp+18H]                    ; 0271 _ 8B. 45, 18
        mov     dword [esp+8H], eax                     ; 0274 _ 89. 44 24, 08
        mov     dword [esp+4H], 8                       ; 0278 _ C7. 44 24, 04, 00000008
        mov     eax, dword [ebp+8H]                     ; 0280 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0283 _ 89. 04 24
        call    _api_refreshwin                         ; 0286 _ E8, 00000000(rel)
        nop                                             ; 028B _ 90
        leave                                           ; 028C _ C9
        ret                                             ; 028D _ C3

_waitting:; Function begin
        push    ebp                                     ; 028E _ 55
        mov     ebp, esp                                ; 028F _ 89. E5
        sub     esp, 40                                 ; 0291 _ 83. EC, 28
        cmp     dword [ebp+8H], 0                       ; 0294 _ 83. 7D, 08, 00
        jle     ?_019                                   ; 0298 _ 7E, 1B
        mov     eax, dword [ebp+8H]                     ; 029A _ 8B. 45, 08
        mov     dword [esp+4H], eax                     ; 029D _ 89. 44 24, 04
        mov     eax, dword [ebp+0CH]                    ; 02A1 _ 8B. 45, 0C
        mov     dword [esp], eax                        ; 02A4 _ 89. 04 24
        call    _api_settimer                           ; 02A7 _ E8, 00000000(rel)
        mov     dword [ebp+8H], 128                     ; 02AC _ C7. 45, 08, 00000080
        jmp     ?_020                                   ; 02B3 _ EB, 07

?_019:  mov     dword [ebp+8H], 28                      ; 02B5 _ C7. 45, 08, 0000001C
?_020:  mov     dword [esp], 1                          ; 02BC _ C7. 04 24, 00000001
        call    _api_getkey                             ; 02C3 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 02C8 _ 89. 45, F4
        mov     eax, dword [ebp+8H]                     ; 02CB _ 8B. 45, 08
        cmp     eax, dword [ebp-0CH]                    ; 02CE _ 3B. 45, F4
        jz      ?_023                                   ; 02D1 _ 74, 2C
        cmp     dword [ebp-0CH], 36                     ; 02D3 _ 83. 7D, F4, 24
        jnz     ?_021                                   ; 02D7 _ 75, 06
        mov     eax, dword [ebp+10H]                    ; 02D9 _ 8B. 45, 10
        mov     byte [eax], 1                           ; 02DC _ C6. 00, 01
?_021:  cmp     dword [ebp-0CH], 37                     ; 02DF _ 83. 7D, F4, 25
        jnz     ?_022                                   ; 02E3 _ 75, 09
        mov     eax, dword [ebp+10H]                    ; 02E5 _ 8B. 45, 10
        add     eax, 1                                  ; 02E8 _ 83. C0, 01
        mov     byte [eax], 1                           ; 02EB _ C6. 00, 01
?_022:  cmp     dword [ebp-0CH], 57                     ; 02EE _ 83. 7D, F4, 39
        jnz     ?_020                                   ; 02F2 _ 75, C8
        mov     eax, dword [ebp+10H]                    ; 02F4 _ 8B. 45, 10
        add     eax, 2                                  ; 02F7 _ 83. C0, 02
        mov     byte [eax], 1                           ; 02FA _ C6. 00, 01
        jmp     ?_020                                   ; 02FD _ EB, BD
; _waitting End of function

?_023:  ; Local function
        nop                                             ; 02FF _ 90
        nop                                             ; 0300 _ 90
        leave                                           ; 0301 _ C9
        ret                                             ; 0302 _ C3

__main: ; Function begin
        push    ebp                                     ; 0303 _ 55
        mov     ebp, esp                                ; 0304 _ 89. E5
        push    edi                                     ; 0306 _ 57
        mov     eax, 64500                              ; 0307 _ B8, 0000FBF4
        call    ___chkstk_ms                            ; 030C _ E8, 00000000(rel)
        sub     esp, eax                                ; 0311 _ 29. C4
        lea     edx, [ebp-0FAFAH]                       ; 0313 _ 8D. 95, FFFF0506
        mov     eax, 0                                  ; 0319 _ B8, 00000000
        mov     ecx, 48                                 ; 031E _ B9, 00000030
        mov     edi, edx                                ; 0323 _ 89. D7
        rep stosd                                       ; 0325 _ F3: AB
        lea     eax, [ebp-0FA3AH]                       ; 0327 _ 8D. 85, FFFF05C6
        mov     dword [ebp-20H], eax                    ; 032D _ 89. 45, E0
        lea     edx, [ebp-0FB30H]                       ; 0330 _ 8D. 95, FFFF04D0
        mov     eax, 0                                  ; 0336 _ B8, 00000000
        mov     ecx, 9                                  ; 033B _ B9, 00000009
        mov     edi, edx                                ; 0340 _ 89. D7
        rep stosd                                       ; 0342 _ F3: AB
        mov     byte [ebp-0FB30H], 32                   ; 0344 _ C6. 85, FFFF04D0, 20
        mov     byte [ebp-0FB2FH], 97                   ; 034B _ C6. 85, FFFF04D1, 61
        mov     byte [ebp-0FB2EH], 98                   ; 0352 _ C6. 85, FFFF04D2, 62
        mov     byte [ebp-0FB2DH], 99                   ; 0359 _ C6. 85, FFFF04D3, 63
        mov     byte [ebp-0FB2CH], 100                  ; 0360 _ C6. 85, FFFF04D4, 64
        mov     byte [ebp-0FB2BH], 32                   ; 0367 _ C6. 85, FFFF04D5, 20
        mov     byte [ebp-0FB2AH], 97                   ; 036E _ C6. 85, FFFF04D6, 61
        mov     byte [ebp-0FB29H], 98                   ; 0375 _ C6. 85, FFFF04D7, 62
        mov     byte [ebp-0FB28H], 99                   ; 037C _ C6. 85, FFFF04D8, 63
        mov     byte [ebp-0FB27H], 100                  ; 0383 _ C6. 85, FFFF04D9, 64
        mov     byte [ebp-0FB26H], 32                   ; 038A _ C6. 85, FFFF04DA, 20
        mov     byte [ebp-0FB25H], 97                   ; 0391 _ C6. 85, FFFF04DB, 61
        mov     byte [ebp-0FB24H], 98                   ; 0398 _ C6. 85, FFFF04DC, 62
        mov     byte [ebp-0FB23H], 99                   ; 039F _ C6. 85, FFFF04DD, 63
        mov     byte [ebp-0FB22H], 100                  ; 03A6 _ C6. 85, FFFF04DE, 64
        mov     byte [ebp-0FB21H], 32                   ; 03AD _ C6. 85, FFFF04DF, 20
        mov     byte [ebp-0FB20H], 97                   ; 03B4 _ C6. 85, FFFF04E0, 61
        mov     byte [ebp-0FB1FH], 98                   ; 03BB _ C6. 85, FFFF04E1, 62
        mov     byte [ebp-0FB1EH], 99                   ; 03C2 _ C6. 85, FFFF04E2, 63
        mov     byte [ebp-0FB1DH], 100                  ; 03C9 _ C6. 85, FFFF04E3, 64
        mov     byte [ebp-0FB1CH], 32                   ; 03D0 _ C6. 85, FFFF04E4, 20
        mov     byte [ebp-0FB1BH], 97                   ; 03D7 _ C6. 85, FFFF04E5, 61
        mov     byte [ebp-0FB1AH], 98                   ; 03DE _ C6. 85, FFFF04E6, 62
        mov     byte [ebp-0FB19H], 99                   ; 03E5 _ C6. 85, FFFF04E7, 63
        mov     byte [ebp-0FB18H], 100                  ; 03EC _ C6. 85, FFFF04E8, 64
        mov     byte [ebp-0FB17H], 32                   ; 03F3 _ C6. 85, FFFF04E9, 20
        lea     edx, [ebp-0FBC0H]                       ; 03FA _ 8D. 95, FFFF0440
        mov     eax, 0                                  ; 0400 _ B8, 00000000
        mov     ecx, 36                                 ; 0405 _ B9, 00000024
        mov     edi, edx                                ; 040A _ 89. D7
        rep stosd                                       ; 040C _ F3: AB
        mov     byte [ebp-0FBBDH], 67                   ; 040E _ C6. 85, FFFF0443, 43
        mov     byte [ebp-0FBBCH], 95                   ; 0415 _ C6. 85, FFFF0444, 5F
        mov     byte [ebp-0FBBBH], 95                   ; 041C _ C6. 85, FFFF0445, 5F
        mov     byte [ebp-0FBBAH], 95                   ; 0423 _ C6. 85, FFFF0446, 5F
        mov     byte [ebp-0FBB9H], 127                  ; 042A _ C6. 85, FFFF0447, 7F
        mov     byte [ebp-0FBB8H], 31                   ; 0431 _ C6. 85, FFFF0448, 1F
        mov     byte [ebp-0FBB7H], 31                   ; 0438 _ C6. 85, FFFF0449, 1F
        mov     byte [ebp-0FBB6H], 31                   ; 043F _ C6. 85, FFFF044A, 1F
        mov     byte [ebp-0FBB5H], 31                   ; 0446 _ C6. 85, FFFF044B, 1F
        mov     byte [ebp-0FBB3H], 32                   ; 044D _ C6. 85, FFFF044D, 20
        mov     byte [ebp-0FBB2H], 63                   ; 0454 _ C6. 85, FFFF044E, 3F
        mov     byte [ebp-0FBAFH], 15                   ; 045B _ C6. 85, FFFF0451, 0F
        mov     byte [ebp-0FBAEH], 127                  ; 0462 _ C6. 85, FFFF0452, 7F
        mov     byte [ebp-0FBADH], -1                   ; 0469 _ C6. 85, FFFF0453, FF
        mov     byte [ebp-0FBACH], -49                  ; 0470 _ C6. 85, FFFF0454, CF
        mov     byte [ebp-0FBABH], -49                  ; 0477 _ C6. 85, FFFF0455, CF
        mov     byte [ebp-0FBAAH], -49                  ; 047E _ C6. 85, FFFF0456, CF
        mov     byte [ebp-0FBA9H], -1                   ; 0485 _ C6. 85, FFFF0457, FF
        mov     byte [ebp-0FBA8H], -1                   ; 048C _ C6. 85, FFFF0458, FF
        mov     byte [ebp-0FBA7H], -32                  ; 0493 _ C6. 85, FFFF0459, E0
        mov     byte [ebp-0FBA6H], -1                   ; 049A _ C6. 85, FFFF045A, FF
        mov     byte [ebp-0FBA5H], -1                   ; 04A1 _ C6. 85, FFFF045B, FF
        mov     byte [ebp-0FBA4H], -64                  ; 04A8 _ C6. 85, FFFF045C, C0
        mov     byte [ebp-0FBA3H], -64                  ; 04AF _ C6. 85, FFFF045D, C0
        mov     byte [ebp-0FBA2H], -64                  ; 04B6 _ C6. 85, FFFF045E, C0
        mov     byte [ebp-0FB9FH], -16                  ; 04BD _ C6. 85, FFFF0461, F0
        mov     byte [ebp-0FB9EH], -2                   ; 04C4 _ C6. 85, FFFF0462, FE
        mov     byte [ebp-0FB9DH], -1                   ; 04CB _ C6. 85, FFFF0463, FF
        mov     byte [ebp-0FB9CH], -13                  ; 04D2 _ C6. 85, FFFF0464, F3
        mov     byte [ebp-0FB9BH], -13                  ; 04D9 _ C6. 85, FFFF0465, F3
        mov     byte [ebp-0FB9AH], -13                  ; 04E0 _ C6. 85, FFFF0466, F3
        mov     byte [ebp-0FB99H], -1                   ; 04E7 _ C6. 85, FFFF0467, FF
        mov     byte [ebp-0FB98H], -1                   ; 04EE _ C6. 85, FFFF0468, FF
        mov     byte [ebp-0FB97H], 7                    ; 04F5 _ C6. 85, FFFF0469, 07
        mov     byte [ebp-0FB96H], -1                   ; 04FC _ C6. 85, FFFF046A, FF
        mov     byte [ebp-0FB95H], -1                   ; 0503 _ C6. 85, FFFF046B, FF
        mov     byte [ebp-0FB94H], 3                    ; 050A _ C6. 85, FFFF046C, 03
        mov     byte [ebp-0FB93H], 3                    ; 0511 _ C6. 85, FFFF046D, 03
        mov     byte [ebp-0FB92H], 3                    ; 0518 _ C6. 85, FFFF046E, 03
        mov     byte [ebp-0FB8DH], -62                  ; 051F _ C6. 85, FFFF0473, C2
        mov     byte [ebp-0FB8CH], -6                   ; 0526 _ C6. 85, FFFF0474, FA
        mov     byte [ebp-0FB8BH], -6                   ; 052D _ C6. 85, FFFF0475, FA
        mov     byte [ebp-0FB8AH], -6                   ; 0534 _ C6. 85, FFFF0476, FA
        mov     byte [ebp-0FB89H], -2                   ; 053B _ C6. 85, FFFF0477, FE
        mov     byte [ebp-0FB88H], -8                   ; 0542 _ C6. 85, FFFF0478, F8
        mov     byte [ebp-0FB87H], -8                   ; 0549 _ C6. 85, FFFF0479, F8
        mov     byte [ebp-0FB86H], -8                   ; 0550 _ C6. 85, FFFF047A, F8
        mov     byte [ebp-0FB85H], -8                   ; 0557 _ C6. 85, FFFF047B, F8
        mov     byte [ebp-0FB83H], 4                    ; 055E _ C6. 85, FFFF047D, 04
        mov     byte [ebp-0FB82H], -4                   ; 0565 _ C6. 85, FFFF047E, FC
        mov     byte [ebp-0FB7EH], 1                    ; 056C _ C6. 85, FFFF0482, 01
        mov     byte [ebp-0FB7DH], 1                    ; 0573 _ C6. 85, FFFF0483, 01
        mov     byte [ebp-0FB7CH], 1                    ; 057A _ C6. 85, FFFF0484, 01
        mov     byte [ebp-0FB7BH], 1                    ; 0581 _ C6. 85, FFFF0485, 01
        mov     byte [ebp-0FB7AH], 1                    ; 0588 _ C6. 85, FFFF0486, 01
        mov     byte [ebp-0FB79H], 1                    ; 058F _ C6. 85, FFFF0487, 01
        mov     byte [ebp-0FB78H], 1                    ; 0596 _ C6. 85, FFFF0488, 01
        mov     byte [ebp-0FB77H], 67                   ; 059D _ C6. 85, FFFF0489, 43
        mov     byte [ebp-0FB76H], 71                   ; 05A4 _ C6. 85, FFFF048A, 47
        mov     byte [ebp-0FB75H], 79                   ; 05AB _ C6. 85, FFFF048B, 4F
        mov     byte [ebp-0FB74H], 95                   ; 05B2 _ C6. 85, FFFF048C, 5F
        mov     byte [ebp-0FB73H], 127                  ; 05B9 _ C6. 85, FFFF048D, 7F
        mov     byte [ebp-0FB72H], 127                  ; 05C0 _ C6. 85, FFFF048E, 7F
        mov     byte [ebp-0FB70H], 24                   ; 05C7 _ C6. 85, FFFF0490, 18
        mov     byte [ebp-0FB6FH], 126                  ; 05CE _ C6. 85, FFFF0491, 7E
        mov     byte [ebp-0FB6EH], -1                   ; 05D5 _ C6. 85, FFFF0492, FF
        mov     byte [ebp-0FB6DH], -61                  ; 05DC _ C6. 85, FFFF0493, C3
        mov     byte [ebp-0FB6CH], -61                  ; 05E3 _ C6. 85, FFFF0494, C3
        mov     byte [ebp-0FB6BH], -61                  ; 05EA _ C6. 85, FFFF0495, C3
        mov     byte [ebp-0FB6AH], -61                  ; 05F1 _ C6. 85, FFFF0496, C3
        mov     byte [ebp-0FB69H], -1                   ; 05F8 _ C6. 85, FFFF0497, FF
        mov     byte [ebp-0FB68H], -1                   ; 05FF _ C6. 85, FFFF0498, FF
        mov     byte [ebp-0FB67H], -1                   ; 0606 _ C6. 85, FFFF0499, FF
        mov     byte [ebp-0FB66H], -25                  ; 060D _ C6. 85, FFFF049A, E7
        mov     byte [ebp-0FB65H], -25                  ; 0614 _ C6. 85, FFFF049B, E7
        mov     byte [ebp-0FB64H], -25                  ; 061B _ C6. 85, FFFF049C, E7
        mov     byte [ebp-0FB63H], -25                  ; 0622 _ C6. 85, FFFF049D, E7
        mov     byte [ebp-0FB62H], -1                   ; 0629 _ C6. 85, FFFF049E, FF
        mov     byte [ebp-0FB5EH], -128                 ; 0630 _ C6. 85, FFFF04A2, 80
        mov     byte [ebp-0FB5DH], -128                 ; 0637 _ C6. 85, FFFF04A3, 80
        mov     byte [ebp-0FB5CH], -128                 ; 063E _ C6. 85, FFFF04A4, 80
        mov     byte [ebp-0FB5BH], -128                 ; 0645 _ C6. 85, FFFF04A5, 80
        mov     byte [ebp-0FB5AH], -128                 ; 064C _ C6. 85, FFFF04A6, 80
        mov     byte [ebp-0FB59H], -128                 ; 0653 _ C6. 85, FFFF04A7, 80
        mov     byte [ebp-0FB58H], -128                 ; 065A _ C6. 85, FFFF04A8, 80
        mov     byte [ebp-0FB57H], -62                  ; 0661 _ C6. 85, FFFF04A9, C2
        mov     byte [ebp-0FB56H], -30                  ; 0668 _ C6. 85, FFFF04AA, E2
        mov     byte [ebp-0FB55H], -14                  ; 066F _ C6. 85, FFFF04AB, F2
        mov     byte [ebp-0FB54H], -6                   ; 0676 _ C6. 85, FFFF04AC, FA
        mov     byte [ebp-0FB53H], -2                   ; 067D _ C6. 85, FFFF04AD, FE
        mov     byte [ebp-0FB52H], -2                   ; 0684 _ C6. 85, FFFF04AE, FE
        mov     byte [ebp-0FB4FH], 24                   ; 068B _ C6. 85, FFFF04B1, 18
        mov     byte [ebp-0FB4EH], 24                   ; 0692 _ C6. 85, FFFF04B2, 18
        mov     byte [ebp-0FB4DH], 24                   ; 0699 _ C6. 85, FFFF04B3, 18
        mov     byte [ebp-0FB4CH], 24                   ; 06A0 _ C6. 85, FFFF04B4, 18
        mov     byte [ebp-0FB4BH], 24                   ; 06A7 _ C6. 85, FFFF04B5, 18
        mov     byte [ebp-0FB4AH], 24                   ; 06AE _ C6. 85, FFFF04B6, 18
        mov     byte [ebp-0FB49H], 24                   ; 06B5 _ C6. 85, FFFF04B7, 18
        mov     byte [ebp-0FB48H], 24                   ; 06BC _ C6. 85, FFFF04B8, 18
        mov     byte [ebp-0FB47H], 24                   ; 06C3 _ C6. 85, FFFF04B9, 18
        mov     byte [ebp-0FB46H], 24                   ; 06CA _ C6. 85, FFFF04BA, 18
        mov     byte [ebp-0FB45H], 24                   ; 06D1 _ C6. 85, FFFF04BB, 18
        mov     byte [ebp-0FB44H], 24                   ; 06D8 _ C6. 85, FFFF04BC, 18
        mov     byte [ebp-0FB43H], 24                   ; 06DF _ C6. 85, FFFF04BD, 18
        mov     byte [ebp-0FB42H], 24                   ; 06E6 _ C6. 85, FFFF04BE, 18
        mov     dword [esp+10H], ?_055                  ; 06ED _ C7. 44 24, 10, 00000000(d)
        mov     dword [esp+0CH], -1                     ; 06F5 _ C7. 44 24, 0C, FFFFFFFF
        mov     dword [esp+8H], 237                     ; 06FD _ C7. 44 24, 08, 000000ED
        mov     dword [esp+4H], 270                     ; 0705 _ C7. 44 24, 04, 0000010E
        lea     eax, [ebp-0FA3AH]                       ; 070D _ 8D. 85, FFFF05C6
        mov     dword [esp], eax                        ; 0713 _ 89. 04 24
        call    _api_openwin                            ; 0716 _ E8, 00000000(rel)
        mov     dword [ebp-3CH], eax                    ; 071B _ 89. 45, C4
        mov     dword [esp+14H], 0                      ; 071E _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], 228                    ; 0726 _ C7. 44 24, 10, 000000E4
        mov     dword [esp+0CH], 264                    ; 072E _ C7. 44 24, 0C, 00000108
        mov     dword [esp+8H], 29                      ; 0736 _ C7. 44 24, 08, 0000001D
        mov     dword [esp+4H], 8                       ; 073E _ C7. 44 24, 04, 00000008
        mov     eax, dword [ebp-3CH]                    ; 0746 _ 8B. 45, C4
        mov     dword [esp], eax                        ; 0749 _ 89. 04 24
        call    _api_boxfillwin                         ; 074C _ E8, 00000000(rel)
        call    _api_alloctimer                         ; 0751 _ E8, 00000000(rel)
        mov     dword [ebp-40H], eax                    ; 0756 _ 89. 45, C0
        mov     dword [esp+4H], 128                     ; 0759 _ C7. 44 24, 04, 00000080
        mov     eax, dword [ebp-40H]                    ; 0761 _ 8B. 45, C0
        mov     dword [esp], eax                        ; 0764 _ 89. 04 24
        call    _api_inittimer                          ; 0767 _ E8, 00000000(rel)
?_024:  mov     dword [ebp-1CH], 18                     ; 076C _ C7. 45, E4, 00000012
        mov     dword [ebp-0FBC8H], 0                   ; 0773 _ C7. 85, FFFF0438, 00000000
        mov     dword [ebp-0FBC4H], 0                   ; 077D _ C7. 85, FFFF043C, 00000000
        mov     byte [ebp-0FBC8H], 101                  ; 0787 _ C6. 85, FFFF0438, 65
        mov     byte [ebp-0FBC7H], 102                  ; 078E _ C6. 85, FFFF0439, 66
        mov     byte [ebp-0FBC6H], 103                  ; 0795 _ C6. 85, FFFF043A, 67
        lea     eax, [ebp-0FBC8H]                       ; 079C _ 8D. 85, FFFF0438
        mov     dword [esp+18H], eax                    ; 07A2 _ 89. 44 24, 18
        mov     dword [esp+14H], 6                      ; 07A6 _ C7. 44 24, 14, 00000006
        mov     dword [esp+10H], 11                     ; 07AE _ C7. 44 24, 10, 0000000B
        mov     dword [esp+0CH], 18                     ; 07B6 _ C7. 44 24, 0C, 00000012
        lea     eax, [ebp-0FBC0H]                       ; 07BE _ 8D. 85, FFFF0440
        mov     dword [esp+8H], eax                     ; 07C4 _ 89. 44 24, 08
        lea     eax, [ebp-0FA3AH]                       ; 07C8 _ 8D. 85, FFFF05C6
        mov     dword [esp+4H], eax                     ; 07CE _ 89. 44 24, 04
        mov     eax, dword [ebp-3CH]                    ; 07D2 _ 8B. 45, C4
        mov     dword [esp], eax                        ; 07D5 _ 89. 04 24
        call    _putstr                                 ; 07D8 _ E8, FFFFF823
        mov     dword [ebp-44H], 20                     ; 07DD _ C7. 45, BC, 00000014
        mov     dword [ebp-14H], 7                      ; 07E4 _ C7. 45, EC, 00000007
        mov     dword [ebp-18H], 1                      ; 07EB _ C7. 45, E8, 00000001
        mov     dword [ebp-2CH], 3                      ; 07F2 _ C7. 45, D4, 00000003
        mov     dword [ebp-0CH], 0                      ; 07F9 _ C7. 45, F4, 00000000
        jmp     ?_028                                   ; 0800 _ E9, 00000087

?_025:  mov     dword [ebp-10H], 0                      ; 0805 _ C7. 45, F0, 00000000
        jmp     ?_027                                   ; 080C _ EB, 26

?_026:  mov     eax, dword [ebp-0CH]                    ; 080E _ 8B. 45, F4
        shl     eax, 5                                  ; 0811 _ C1. E0, 05
        mov     edx, eax                                ; 0814 _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 0816 _ 8B. 45, F0
        add     edx, eax                                ; 0819 _ 01. C2
        lea     eax, [ebp-0FB30H]                       ; 081B _ 8D. 85, FFFF04D0
        mov     ecx, dword [ebp-10H]                    ; 0821 _ 8B. 4D, F0
        add     eax, ecx                                ; 0824 _ 01. C8
        movzx   eax, byte [eax]                         ; 0826 _ 0F B6. 00
        mov     byte [ebp+edx-0FAFAH], al               ; 0829 _ 88. 84 15, FFFF0506
        add     dword [ebp-10H], 1                      ; 0830 _ 83. 45, F0, 01
?_027:  cmp     dword [ebp-10H], 19                     ; 0834 _ 83. 7D, F0, 13
        jle     ?_026                                   ; 0838 _ 7E, D4
        mov     eax, dword [ebp-0CH]                    ; 083A _ 8B. 45, F4
        shl     eax, 5                                  ; 083D _ C1. E0, 05
        mov     edx, eax                                ; 0840 _ 89. C2
        lea     eax, [ebp-0FAFAH]                       ; 0842 _ 8D. 85, FFFF0506
        add     edx, eax                                ; 0848 _ 01. C2
        mov     ecx, dword [ebp-18H]                    ; 084A _ 8B. 4D, E8
        mov     eax, dword [ebp-0CH]                    ; 084D _ 8B. 45, F4
        add     eax, ecx                                ; 0850 _ 01. C8
        mov     dword [esp+18H], edx                    ; 0852 _ 89. 54 24, 18
        mov     dword [esp+14H], 2                      ; 0856 _ C7. 44 24, 14, 00000002
        mov     dword [esp+10H], eax                    ; 085E _ 89. 44 24, 10
        mov     eax, dword [ebp-14H]                    ; 0862 _ 8B. 45, EC
        mov     dword [esp+0CH], eax                    ; 0865 _ 89. 44 24, 0C
        lea     eax, [ebp-0FBC0H]                       ; 0869 _ 8D. 85, FFFF0440
        mov     dword [esp+8H], eax                     ; 086F _ 89. 44 24, 08
        lea     eax, [ebp-0FA3AH]                       ; 0873 _ 8D. 85, FFFF05C6
        mov     dword [esp+4H], eax                     ; 0879 _ 89. 44 24, 04
        mov     eax, dword [ebp-3CH]                    ; 087D _ 8B. 45, C4
        mov     dword [esp], eax                        ; 0880 _ 89. 04 24
        call    _putstr                                 ; 0883 _ E8, FFFFF778
        add     dword [ebp-0CH], 1                      ; 0888 _ 83. 45, F4, 01
?_028:  cmp     dword [ebp-0CH], 2                      ; 088C _ 83. 7D, F4, 02
        jle     ?_025                                   ; 0890 _ 0F 8E, FFFFFF6F
        mov     byte [ebp-0FB0CH], 0                    ; 0896 _ C6. 85, FFFF04F4, 00
        mov     byte [ebp-0FB0BH], 0                    ; 089D _ C6. 85, FFFF04F5, 00
        mov     byte [ebp-0FB0AH], 0                    ; 08A4 _ C6. 85, FFFF04F6, 00
        mov     dword [ebp-30H], 0                      ; 08AB _ C7. 45, D0, 00000000
        mov     dword [ebp-34H], 0                      ; 08B2 _ C7. 45, CC, 00000000
        mov     dword [ebp-38H], 0                      ; 08B9 _ C7. 45, C8, 00000000
        mov     eax, dword [ebp-44H]                    ; 08C0 _ 8B. 45, BC
        mov     dword [ebp-28H], eax                    ; 08C3 _ 89. 45, D8
        mov     dword [ebp-24H], 1                      ; 08C6 _ C7. 45, DC, 00000001
?_029:  cmp     dword [ebp-38H], 0                      ; 08CD _ 83. 7D, C8, 00
        jz      ?_030                                   ; 08D1 _ 74, 0B
        sub     dword [ebp-38H], 1                      ; 08D3 _ 83. 6D, C8, 01
        mov     byte [ebp-0FB0AH], 0                    ; 08D7 _ C6. 85, FFFF04F6, 00
?_030:  lea     eax, [ebp-0FB0CH]                       ; 08DE _ 8D. 85, FFFF04F4
        mov     dword [esp+8H], eax                     ; 08E4 _ 89. 44 24, 08
        mov     eax, dword [ebp-40H]                    ; 08E8 _ 8B. 45, C0
        mov     dword [esp+4H], eax                     ; 08EB _ 89. 44 24, 04
        mov     dword [esp], 4                          ; 08EF _ C7. 04 24, 00000004
        call    _waitting                               ; 08F6 _ E8, FFFFF993
        movzx   eax, byte [ebp-0FB0CH]                  ; 08FB _ 0F B6. 85, FFFF04F4
        test    al, al                                  ; 0902 _ 84. C0
        jz      ?_031                                   ; 0904 _ 74, 74
        cmp     dword [ebp-1CH], 1                      ; 0906 _ 83. 7D, E4, 01
        jle     ?_031                                   ; 090A _ 7E, 6E
        sub     dword [ebp-1CH], 1                      ; 090C _ 83. 6D, E4, 01
        mov     byte [ebp-0FBC8H], 101                  ; 0910 _ C6. 85, FFFF0438, 65
        mov     byte [ebp-0FBC7H], 102                  ; 0917 _ C6. 85, FFFF0439, 66
        mov     byte [ebp-0FBC6H], 103                  ; 091E _ C6. 85, FFFF043A, 67
        mov     byte [ebp-0FBC5H], 32                   ; 0925 _ C6. 85, FFFF043B, 20
        mov     byte [ebp-0FBC4H], 0                    ; 092C _ C6. 85, FFFF043C, 00
        lea     eax, [ebp-0FBC8H]                       ; 0933 _ 8D. 85, FFFF0438
        mov     dword [esp+18H], eax                    ; 0939 _ 89. 44 24, 18
        mov     dword [esp+14H], 6                      ; 093D _ C7. 44 24, 14, 00000006
        mov     dword [esp+10H], 11                     ; 0945 _ C7. 44 24, 10, 0000000B
        mov     eax, dword [ebp-1CH]                    ; 094D _ 8B. 45, E4
        mov     dword [esp+0CH], eax                    ; 0950 _ 89. 44 24, 0C
        lea     eax, [ebp-0FBC0H]                       ; 0954 _ 8D. 85, FFFF0440
        mov     dword [esp+8H], eax                     ; 095A _ 89. 44 24, 08
        lea     eax, [ebp-0FA3AH]                       ; 095E _ 8D. 85, FFFF05C6
        mov     dword [esp+4H], eax                     ; 0964 _ 89. 44 24, 04
        mov     eax, dword [ebp-3CH]                    ; 0968 _ 8B. 45, C4
        mov     dword [esp], eax                        ; 096B _ 89. 04 24
        call    _putstr                                 ; 096E _ E8, FFFFF68D
        mov     byte [ebp-0FB0CH], 0                    ; 0973 _ C6. 85, FFFF04F4, 00
?_031:  movzx   eax, byte [ebp-0FB0BH]                  ; 097A _ 0F B6. 85, FFFF04F5
        test    al, al                                  ; 0981 _ 84. C0
        jz      ?_032                                   ; 0983 _ 74, 74
        cmp     dword [ebp-1CH], 23                     ; 0985 _ 83. 7D, E4, 17
        jg      ?_032                                   ; 0989 _ 7F, 6E
        add     dword [ebp-1CH], 1                      ; 098B _ 83. 45, E4, 01
        mov     byte [ebp-0FBC8H], 32                   ; 098F _ C6. 85, FFFF0438, 20
        mov     byte [ebp-0FBC7H], 101                  ; 0996 _ C6. 85, FFFF0439, 65
        mov     byte [ebp-0FBC6H], 102                  ; 099D _ C6. 85, FFFF043A, 66
        mov     byte [ebp-0FBC5H], 103                  ; 09A4 _ C6. 85, FFFF043B, 67
        mov     byte [ebp-0FBC4H], 0                    ; 09AB _ C6. 85, FFFF043C, 00
        lea     eax, [ebp-0FBC8H]                       ; 09B2 _ 8D. 85, FFFF0438
        mov     dword [esp+18H], eax                    ; 09B8 _ 89. 44 24, 18
        mov     dword [esp+14H], 6                      ; 09BC _ C7. 44 24, 14, 00000006
        mov     dword [esp+10H], 11                     ; 09C4 _ C7. 44 24, 10, 0000000B
        mov     eax, dword [ebp-1CH]                    ; 09CC _ 8B. 45, E4
        mov     dword [esp+0CH], eax                    ; 09CF _ 89. 44 24, 0C
        lea     eax, [ebp-0FBC0H]                       ; 09D3 _ 8D. 85, FFFF0440
        mov     dword [esp+8H], eax                     ; 09D9 _ 89. 44 24, 08
        lea     eax, [ebp-0FA3AH]                       ; 09DD _ 8D. 85, FFFF05C6
        mov     dword [esp+4H], eax                     ; 09E3 _ 89. 44 24, 04
        mov     eax, dword [ebp-3CH]                    ; 09E7 _ 8B. 45, C4
        mov     dword [esp], eax                        ; 09EA _ 89. 04 24
        call    _putstr                                 ; 09ED _ E8, FFFFF60E
        mov     byte [ebp-0FB0BH], 0                    ; 09F2 _ C6. 85, FFFF04F5, 00
?_032:  movzx   eax, byte [ebp-0FB0AH]                  ; 09F9 _ 0F B6. 85, FFFF04F6
        test    al, al                                  ; 0A00 _ 84. C0
        jz      ?_033                                   ; 0A02 _ 74, 1D
        cmp     dword [ebp-38H], 0                      ; 0A04 _ 83. 7D, C8, 00
        jnz     ?_033                                   ; 0A08 _ 75, 17
        mov     dword [ebp-38H], 15                     ; 0A0A _ C7. 45, C8, 0000000F
        mov     eax, dword [ebp-1CH]                    ; 0A11 _ 8B. 45, E4
        add     eax, 1                                  ; 0A14 _ 83. C0, 01
        mov     dword [ebp-34H], eax                    ; 0A17 _ 89. 45, CC
        mov     dword [ebp-30H], 8                      ; 0A1A _ C7. 45, D0, 00000008
?_033:  cmp     dword [ebp-28H], 0                      ; 0A21 _ 83. 7D, D8, 00
        jz      ?_034                                   ; 0A25 _ 74, 09
        sub     dword [ebp-28H], 1                      ; 0A27 _ 83. 6D, D8, 01
        jmp     ?_041                                   ; 0A2B _ E9, 0000011A

?_034:  mov     eax, dword [ebp-44H]                    ; 0A30 _ 8B. 45, BC
        mov     dword [ebp-28H], eax                    ; 0A33 _ 89. 45, D8
        mov     edx, dword [ebp-14H]                    ; 0A36 _ 8B. 55, EC
        mov     eax, dword [ebp-24H]                    ; 0A39 _ 8B. 45, DC
        add     eax, edx                                ; 0A3C _ 01. D0
        cmp     eax, 12                                 ; 0A3E _ 83. F8, 0C
        jg      ?_035                                   ; 0A41 _ 7F, 10
        mov     edx, dword [ebp-14H]                    ; 0A43 _ 8B. 55, EC
        mov     eax, dword [ebp-24H]                    ; 0A46 _ 8B. 45, DC
        add     eax, edx                                ; 0A49 _ 01. D0
        test    eax, eax                                ; 0A4B _ 85. C0
        jg      ?_037                                   ; 0A4D _ 0F 8F, 0000008E
?_035:  mov     edx, dword [ebp-18H]                    ; 0A53 _ 8B. 55, E8
        mov     eax, dword [ebp-2CH]                    ; 0A56 _ 8B. 45, D4
        add     eax, edx                                ; 0A59 _ 01. D0
        cmp     eax, 10                                 ; 0A5B _ 83. F8, 0A
        jnz     ?_036                                   ; 0A5E _ 75, 38
        mov     dword [esp+14H], 0                      ; 0A60 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], 228                    ; 0A68 _ C7. 44 24, 10, 000000E4
        mov     dword [esp+0CH], 264                    ; 0A70 _ C7. 44 24, 0C, 00000108
        mov     dword [esp+8H], 29                      ; 0A78 _ C7. 44 24, 08, 0000001D
        mov     dword [esp+4H], 8                       ; 0A80 _ C7. 44 24, 04, 00000008
        mov     eax, dword [ebp-3CH]                    ; 0A88 _ 8B. 45, C4
        mov     dword [esp], eax                        ; 0A8B _ 89. 04 24
        call    _api_boxfillwin                         ; 0A8E _ E8, 00000000(rel)
        jmp     ?_053                                   ; 0A93 _ E9, 000002F3

?_036:  neg     dword [ebp-24H]                         ; 0A98 _ F7. 5D, DC
        mov     eax, dword [ebp-14H]                    ; 0A9B _ 8B. 45, EC
        add     eax, 1                                  ; 0A9E _ 83. C0, 01
        mov     dword [esp+18H], ?_056                  ; 0AA1 _ C7. 44 24, 18, 0000000A(d)
        mov     dword [esp+14H], 0                      ; 0AA9 _ C7. 44 24, 14, 00000000
        mov     edx, dword [ebp-18H]                    ; 0AB1 _ 8B. 55, E8
        mov     dword [esp+10H], edx                    ; 0AB4 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 0AB8 _ 89. 44 24, 0C
        lea     eax, [ebp-0FBC0H]                       ; 0ABC _ 8D. 85, FFFF0440
        mov     dword [esp+8H], eax                     ; 0AC2 _ 89. 44 24, 08
        lea     eax, [ebp-0FA3AH]                       ; 0AC6 _ 8D. 85, FFFF05C6
        mov     dword [esp+4H], eax                     ; 0ACC _ 89. 44 24, 04
        mov     eax, dword [ebp-3CH]                    ; 0AD0 _ 8B. 45, C4
        mov     dword [esp], eax                        ; 0AD3 _ 89. 04 24
        call    _putstr                                 ; 0AD6 _ E8, FFFFF525
        add     dword [ebp-18H], 1                      ; 0ADB _ 83. 45, E8, 01
        jmp     ?_038                                   ; 0ADF _ EB, 06

?_037:  mov     eax, dword [ebp-24H]                    ; 0AE1 _ 8B. 45, DC
        add     dword [ebp-14H], eax                    ; 0AE4 _ 01. 45, EC
?_038:  mov     dword [ebp-0CH], 0                      ; 0AE7 _ C7. 45, F4, 00000000
        jmp     ?_040                                   ; 0AEE _ EB, 52

?_039:  mov     eax, dword [ebp-0CH]                    ; 0AF0 _ 8B. 45, F4
        shl     eax, 5                                  ; 0AF3 _ C1. E0, 05
        mov     edx, eax                                ; 0AF6 _ 89. C2
        lea     eax, [ebp-0FAFAH]                       ; 0AF8 _ 8D. 85, FFFF0506
        add     edx, eax                                ; 0AFE _ 01. C2
        mov     ecx, dword [ebp-18H]                    ; 0B00 _ 8B. 4D, E8
        mov     eax, dword [ebp-0CH]                    ; 0B03 _ 8B. 45, F4
        add     eax, ecx                                ; 0B06 _ 01. C8
        mov     dword [esp+18H], edx                    ; 0B08 _ 89. 54 24, 18
        mov     dword [esp+14H], 2                      ; 0B0C _ C7. 44 24, 14, 00000002
        mov     dword [esp+10H], eax                    ; 0B14 _ 89. 44 24, 10
        mov     eax, dword [ebp-14H]                    ; 0B18 _ 8B. 45, EC
        mov     dword [esp+0CH], eax                    ; 0B1B _ 89. 44 24, 0C
        lea     eax, [ebp-0FBC0H]                       ; 0B1F _ 8D. 85, FFFF0440
        mov     dword [esp+8H], eax                     ; 0B25 _ 89. 44 24, 08
        lea     eax, [ebp-0FA3AH]                       ; 0B29 _ 8D. 85, FFFF05C6
        mov     dword [esp+4H], eax                     ; 0B2F _ 89. 44 24, 04
        mov     eax, dword [ebp-3CH]                    ; 0B33 _ 8B. 45, C4
        mov     dword [esp], eax                        ; 0B36 _ 89. 04 24
        call    _putstr                                 ; 0B39 _ E8, FFFFF4C2
        add     dword [ebp-0CH], 1                      ; 0B3E _ 83. 45, F4, 01
?_040:  mov     eax, dword [ebp-0CH]                    ; 0B42 _ 8B. 45, F4
        cmp     eax, dword [ebp-2CH]                    ; 0B45 _ 3B. 45, D4
        jl      ?_039                                   ; 0B48 _ 7C, A6
?_041:  cmp     dword [ebp-30H], 0                      ; 0B4A _ 83. 7D, D0, 00
        jle     ?_029                                   ; 0B4E _ 0F 8E, FFFFFD79
        cmp     dword [ebp-30H], 7                      ; 0B54 _ 83. 7D, D0, 07
        jg      ?_043                                   ; 0B58 _ 0F 8F, 000000B3
        mov     eax, dword [ebp-14H]                    ; 0B5E _ 8B. 45, EC
        cmp     eax, dword [ebp-34H]                    ; 0B61 _ 3B. 45, CC
        jge     ?_042                                   ; 0B64 _ 7D, 6E
        mov     eax, dword [ebp-14H]                    ; 0B66 _ 8B. 45, EC
        add     eax, 24                                 ; 0B69 _ 83. C0, 18
        cmp     dword [ebp-34H], eax                    ; 0B6C _ 39. 45, CC
        jg      ?_042                                   ; 0B6F _ 7F, 63
        mov     eax, dword [ebp-18H]                    ; 0B71 _ 8B. 45, E8
        cmp     eax, dword [ebp-30H]                    ; 0B74 _ 3B. 45, D0
        jg      ?_042                                   ; 0B77 _ 7F, 5B
        mov     edx, dword [ebp-18H]                    ; 0B79 _ 8B. 55, E8
        mov     eax, dword [ebp-2CH]                    ; 0B7C _ 8B. 45, D4
        add     eax, edx                                ; 0B7F _ 01. D0
        cmp     dword [ebp-30H], eax                    ; 0B81 _ 39. 45, D0
        jge     ?_042                                   ; 0B84 _ 7D, 4E
        mov     eax, dword [ebp-30H]                    ; 0B86 _ 8B. 45, D0
        sub     eax, dword [ebp-18H]                    ; 0B89 _ 2B. 45, E8
        shl     eax, 5                                  ; 0B8C _ C1. E0, 05
        mov     edx, eax                                ; 0B8F _ 89. C2
        lea     eax, [ebp-0FAFAH]                       ; 0B91 _ 8D. 85, FFFF0506
        add     eax, edx                                ; 0B97 _ 01. D0
        mov     dword [esp+18H], eax                    ; 0B99 _ 89. 44 24, 18
        mov     dword [esp+14H], 2                      ; 0B9D _ C7. 44 24, 14, 00000002
        mov     eax, dword [ebp-30H]                    ; 0BA5 _ 8B. 45, D0
        mov     dword [esp+10H], eax                    ; 0BA8 _ 89. 44 24, 10
        mov     eax, dword [ebp-14H]                    ; 0BAC _ 8B. 45, EC
        mov     dword [esp+0CH], eax                    ; 0BAF _ 89. 44 24, 0C
        lea     eax, [ebp-0FBC0H]                       ; 0BB3 _ 8D. 85, FFFF0440
        mov     dword [esp+8H], eax                     ; 0BB9 _ 89. 44 24, 08
        lea     eax, [ebp-0FA3AH]                       ; 0BBD _ 8D. 85, FFFF05C6
        mov     dword [esp+4H], eax                     ; 0BC3 _ 89. 44 24, 04
        mov     eax, dword [ebp-3CH]                    ; 0BC7 _ 8B. 45, C4
        mov     dword [esp], eax                        ; 0BCA _ 89. 04 24
        call    _putstr                                 ; 0BCD _ E8, FFFFF42E
        jmp     ?_043                                   ; 0BD2 _ EB, 3D

?_042:  mov     dword [esp+18H], ?_056                  ; 0BD4 _ C7. 44 24, 18, 0000000A(d)
        mov     dword [esp+14H], 0                      ; 0BDC _ C7. 44 24, 14, 00000000
        mov     eax, dword [ebp-30H]                    ; 0BE4 _ 8B. 45, D0
        mov     dword [esp+10H], eax                    ; 0BE7 _ 89. 44 24, 10
        mov     eax, dword [ebp-34H]                    ; 0BEB _ 8B. 45, CC
        mov     dword [esp+0CH], eax                    ; 0BEE _ 89. 44 24, 0C
        lea     eax, [ebp-0FBC0H]                       ; 0BF2 _ 8D. 85, FFFF0440
        mov     dword [esp+8H], eax                     ; 0BF8 _ 89. 44 24, 08
        lea     eax, [ebp-0FA3AH]                       ; 0BFC _ 8D. 85, FFFF05C6
        mov     dword [esp+4H], eax                     ; 0C02 _ 89. 44 24, 04
        mov     eax, dword [ebp-3CH]                    ; 0C06 _ 8B. 45, C4
        mov     dword [esp], eax                        ; 0C09 _ 89. 04 24
        call    _putstr                                 ; 0C0C _ E8, FFFFF3EF
?_043:  sub     dword [ebp-30H], 1                      ; 0C11 _ 83. 6D, D0, 01
        cmp     dword [ebp-30H], 0                      ; 0C15 _ 83. 7D, D0, 00
        jle     ?_044                                   ; 0C19 _ 7E, 4D
        mov     byte [ebp-0FBCAH], 104                  ; 0C1B _ C6. 85, FFFF0436, 68
        mov     byte [ebp-0FBC9H], 0                    ; 0C22 _ C6. 85, FFFF0437, 00
        lea     eax, [ebp-0FBCAH]                       ; 0C29 _ 8D. 85, FFFF0436
        mov     dword [esp+18H], eax                    ; 0C2F _ 89. 44 24, 18
        mov     dword [esp+14H], 3                      ; 0C33 _ C7. 44 24, 14, 00000003
        mov     eax, dword [ebp-30H]                    ; 0C3B _ 8B. 45, D0
        mov     dword [esp+10H], eax                    ; 0C3E _ 89. 44 24, 10
        mov     eax, dword [ebp-34H]                    ; 0C42 _ 8B. 45, CC
        mov     dword [esp+0CH], eax                    ; 0C45 _ 89. 44 24, 0C
        lea     eax, [ebp-0FBC0H]                       ; 0C49 _ 8D. 85, FFFF0440
        mov     dword [esp+8H], eax                     ; 0C4F _ 89. 44 24, 08
        lea     eax, [ebp-0FA3AH]                       ; 0C53 _ 8D. 85, FFFF05C6
        mov     dword [esp+4H], eax                     ; 0C59 _ 89. 44 24, 04
        mov     eax, dword [ebp-3CH]                    ; 0C5D _ 8B. 45, C4
        mov     dword [esp], eax                        ; 0C60 _ 89. 04 24
        call    _putstr                                 ; 0C63 _ E8, FFFFF398
?_044:  mov     eax, dword [ebp-14H]                    ; 0C68 _ 8B. 45, EC
        cmp     eax, dword [ebp-34H]                    ; 0C6B _ 3B. 45, CC
        jge     ?_029                                   ; 0C6E _ 0F 8D, FFFFFC59
        mov     eax, dword [ebp-14H]                    ; 0C74 _ 8B. 45, EC
        add     eax, 24                                 ; 0C77 _ 83. C0, 18
        cmp     dword [ebp-34H], eax                    ; 0C7A _ 39. 45, CC
        jg      ?_029                                   ; 0C7D _ 0F 8F, FFFFFC4A
        mov     eax, dword [ebp-18H]                    ; 0C83 _ 8B. 45, E8
        cmp     eax, dword [ebp-30H]                    ; 0C86 _ 3B. 45, D0
        jg      ?_029                                   ; 0C89 _ 0F 8F, FFFFFC3E
        mov     edx, dword [ebp-18H]                    ; 0C8F _ 8B. 55, E8
        mov     eax, dword [ebp-2CH]                    ; 0C92 _ 8B. 45, D4
        add     eax, edx                                ; 0C95 _ 01. D0
        cmp     dword [ebp-30H], eax                    ; 0C97 _ 39. 45, D0
        jge     ?_029                                   ; 0C9A _ 0F 8D, FFFFFC2D
        mov     eax, dword [ebp-30H]                    ; 0CA0 _ 8B. 45, D0
        sub     eax, dword [ebp-18H]                    ; 0CA3 _ 2B. 45, E8
        shl     eax, 5                                  ; 0CA6 _ C1. E0, 05
        mov     edx, eax                                ; 0CA9 _ 89. C2
        mov     eax, dword [ebp-34H]                    ; 0CAB _ 8B. 45, CC
        sub     eax, dword [ebp-14H]                    ; 0CAE _ 2B. 45, EC
        add     edx, eax                                ; 0CB1 _ 01. C2
        lea     eax, [ebp-0FAFAH]                       ; 0CB3 _ 8D. 85, FFFF0506
        add     eax, edx                                ; 0CB9 _ 01. D0
        mov     dword [ebp-20H], eax                    ; 0CBB _ 89. 45, E0
        mov     eax, dword [ebp-20H]                    ; 0CBE _ 8B. 45, E0
        movzx   eax, byte [eax]                         ; 0CC1 _ 0F B6. 00
        cmp     al, 32                                  ; 0CC4 _ 3C, 20
        je      ?_029                                   ; 0CC6 _ 0F 84, FFFFFC01
        sub     dword [ebp-20H], 1                      ; 0CCC _ 83. 6D, E0, 01
        jmp     ?_046                                   ; 0CD0 _ EB, 04

?_045:  sub     dword [ebp-20H], 1                      ; 0CD2 _ 83. 6D, E0, 01
?_046:  mov     eax, dword [ebp-20H]                    ; 0CD6 _ 8B. 45, E0
        movzx   eax, byte [eax]                         ; 0CD9 _ 0F B6. 00
        cmp     al, 32                                  ; 0CDC _ 3C, 20
        jnz     ?_045                                   ; 0CDE _ 75, F2
        mov     dword [ebp-0CH], 1                      ; 0CE0 _ C7. 45, F4, 00000001
        jmp     ?_048                                   ; 0CE7 _ EB, 0F

?_047:  mov     edx, dword [ebp-0CH]                    ; 0CE9 _ 8B. 55, F4
        mov     eax, dword [ebp-20H]                    ; 0CEC _ 8B. 45, E0
        add     eax, edx                                ; 0CEF _ 01. D0
        mov     byte [eax], 32                          ; 0CF1 _ C6. 00, 20
        add     dword [ebp-0CH], 1                      ; 0CF4 _ 83. 45, F4, 01
?_048:  cmp     dword [ebp-0CH], 4                      ; 0CF8 _ 83. 7D, F4, 04
        jle     ?_047                                   ; 0CFC _ 7E, EB
        mov     eax, dword [ebp-30H]                    ; 0CFE _ 8B. 45, D0
        sub     eax, dword [ebp-18H]                    ; 0D01 _ 2B. 45, E8
        shl     eax, 5                                  ; 0D04 _ C1. E0, 05
        mov     edx, eax                                ; 0D07 _ 89. C2
        lea     eax, [ebp-0FAFAH]                       ; 0D09 _ 8D. 85, FFFF0506
        add     eax, edx                                ; 0D0F _ 01. D0
        mov     dword [esp+18H], eax                    ; 0D11 _ 89. 44 24, 18
        mov     dword [esp+14H], 2                      ; 0D15 _ C7. 44 24, 14, 00000002
        mov     eax, dword [ebp-30H]                    ; 0D1D _ 8B. 45, D0
        mov     dword [esp+10H], eax                    ; 0D20 _ 89. 44 24, 10
        mov     eax, dword [ebp-14H]                    ; 0D24 _ 8B. 45, EC
        mov     dword [esp+0CH], eax                    ; 0D27 _ 89. 44 24, 0C
        lea     eax, [ebp-0FBC0H]                       ; 0D2B _ 8D. 85, FFFF0440
        mov     dword [esp+8H], eax                     ; 0D31 _ 89. 44 24, 08
        lea     eax, [ebp-0FA3AH]                       ; 0D35 _ 8D. 85, FFFF05C6
        mov     dword [esp+4H], eax                     ; 0D3B _ 89. 44 24, 04
        mov     eax, dword [ebp-3CH]                    ; 0D3F _ 8B. 45, C4
        mov     dword [esp], eax                        ; 0D42 _ 89. 04 24
        call    _putstr                                 ; 0D45 _ E8, FFFFF2B6
        jmp     ?_052                                   ; 0D4A _ EB, 38

?_049:  mov     eax, dword [ebp-2CH]                    ; 0D4C _ 8B. 45, D4
        sub     eax, 1                                  ; 0D4F _ 83. E8, 01
        shl     eax, 5                                  ; 0D52 _ C1. E0, 05
        mov     edx, eax                                ; 0D55 _ 89. C2
        lea     eax, [ebp-0FAFAH]                       ; 0D57 _ 8D. 85, FFFF0506
        add     eax, edx                                ; 0D5D _ 01. D0
        mov     dword [ebp-20H], eax                    ; 0D5F _ 89. 45, E0
        jmp     ?_051                                   ; 0D62 _ EB, 12

?_050:  mov     eax, dword [ebp-20H]                    ; 0D64 _ 8B. 45, E0
        movzx   eax, byte [eax]                         ; 0D67 _ 0F B6. 00
        cmp     al, 32                                  ; 0D6A _ 3C, 20
        jne     ?_054                                   ; 0D6C _ 0F 85, 000000EF
        add     dword [ebp-20H], 1                      ; 0D72 _ 83. 45, E0, 01
?_051:  mov     eax, dword [ebp-20H]                    ; 0D76 _ 8B. 45, E0
        movzx   eax, byte [eax]                         ; 0D79 _ 0F B6. 00
        test    al, al                                  ; 0D7C _ 84. C0
        jnz     ?_050                                   ; 0D7E _ 75, E4
        sub     dword [ebp-2CH], 1                      ; 0D80 _ 83. 6D, D4, 01
?_052:  cmp     dword [ebp-2CH], 0                      ; 0D84 _ 83. 7D, D4, 00
        jg      ?_049                                   ; 0D88 _ 7F, C2
        nop                                             ; 0D8A _ 90
?_053:  mov     ecx, dword [ebp-44H]                    ; 0D8B _ 8B. 4D, BC
        mov     edx, 1431655766                         ; 0D8E _ BA, 55555556
        mov     eax, ecx                                ; 0D93 _ 89. C8
        imul    edx                                     ; 0D95 _ F7. EA
        mov     eax, ecx                                ; 0D97 _ 89. C8
        sar     eax, 31                                 ; 0D99 _ C1. F8, 1F
        sub     eax, edx                                ; 0D9C _ 29. D0
        add     dword [ebp-44H], eax                    ; 0D9E _ 01. 45, BC
        mov     dword [ebp-0FBD6H], 0                   ; 0DA1 _ C7. 85, FFFF042A, 00000000
        mov     dword [ebp-0FBD2H], 0                   ; 0DAB _ C7. 85, FFFF042E, 00000000
        mov     dword [ebp-0FBCEH], 0                   ; 0DB5 _ C7. 85, FFFF0432, 00000000
        mov     byte [ebp-0FBD6H], 71                   ; 0DBF _ C6. 85, FFFF042A, 47
        mov     byte [ebp-0FBD5H], 65                   ; 0DC6 _ C6. 85, FFFF042B, 41
        mov     byte [ebp-0FBD4H], 77                   ; 0DCD _ C6. 85, FFFF042C, 4D
        mov     byte [ebp-0FBD3H], 69                   ; 0DD4 _ C6. 85, FFFF042D, 45
        mov     byte [ebp-0FBD2H], 32                   ; 0DDB _ C6. 85, FFFF042E, 20
        mov     byte [ebp-0FBD1H], 79                   ; 0DE2 _ C6. 85, FFFF042F, 4F
        mov     byte [ebp-0FBD0H], 86                   ; 0DE9 _ C6. 85, FFFF0430, 56
        mov     byte [ebp-0FBCFH], 69                   ; 0DF0 _ C6. 85, FFFF0431, 45
        mov     byte [ebp-0FBCEH], 82                   ; 0DF7 _ C6. 85, FFFF0432, 52
        lea     eax, [ebp-0FBD6H]                       ; 0DFE _ 8D. 85, FFFF042A
        mov     dword [esp+18H], eax                    ; 0E04 _ 89. 44 24, 18
        mov     dword [esp+14H], 1                      ; 0E08 _ C7. 44 24, 14, 00000001
        mov     dword [esp+10H], 6                      ; 0E10 _ C7. 44 24, 10, 00000006
        mov     dword [esp+0CH], 15                     ; 0E18 _ C7. 44 24, 0C, 0000000F
        lea     eax, [ebp-0FBC0H]                       ; 0E20 _ 8D. 85, FFFF0440
        mov     dword [esp+8H], eax                     ; 0E26 _ 89. 44 24, 08
        lea     eax, [ebp-0FA3AH]                       ; 0E2A _ 8D. 85, FFFF05C6
        mov     dword [esp+4H], eax                     ; 0E30 _ 89. 44 24, 04
        mov     eax, dword [ebp-3CH]                    ; 0E34 _ 8B. 45, C4
        mov     dword [esp], eax                        ; 0E37 _ 89. 04 24
        call    _putstr                                 ; 0E3A _ E8, FFFFF1C1
        lea     eax, [ebp-0FB0CH]                       ; 0E3F _ 8D. 85, FFFF04F4
        mov     dword [esp+8H], eax                     ; 0E45 _ 89. 44 24, 08
        mov     eax, dword [ebp-40H]                    ; 0E49 _ 8B. 45, C0
        mov     dword [esp+4H], eax                     ; 0E4C _ 89. 44 24, 04
        mov     dword [esp], 10                         ; 0E50 _ C7. 04 24, 0000000A
        call    _waitting                               ; 0E57 _ E8, FFFFF432
        jmp     ?_024                                   ; 0E5C _ E9, FFFFF90B
; __main End of function

?_054:  ; Local function
        nop                                             ; 0E61 _ 90
        mov     dword [ebp-30H], 0                      ; 0E62 _ C7. 45, D0, 00000000
        jmp     ?_029                                   ; 0E69 _ E9, FFFFFA5F

        nop                                             ; 0E6E _ 90
        nop                                             ; 0E6F _ 90






?_055:                                                  
        db 41H, 6CH, 69H, 65H, 6EH, 57H, 61H, 72H       ; 0000 _ AlienWar
        db 73H, 00H                                     ; 0008 _ s.

?_056:                                                  ; byte
        db 20H, 20H, 00H, 00H, 00H, 00H                 ; 000A _   ....


