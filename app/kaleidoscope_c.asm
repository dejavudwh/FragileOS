; Disassembly of file: kaleidoscope_c.o
; Wed Aug 14 23:04:16 2019
; Mode: 32 bits
; Syntax: YASM/NASM
; Instruction set: 80386







_intToStr:
        push    ebp                                     ; 0000 _ 55
        mov     ebp, esp                                ; 0001 _ 89. E5
        sub     esp, 16                                 ; 0003 _ 83. EC, 10
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [ebp-3H], 0                        ; 0006 _ 66: C7. 45, FD, 0000
        mov     byte [ebp-1H], 0                        ; 000C _ C6. 45, FF, 00
        mov     byte [ebp-3H], 48                       ; 0010 _ C6. 45, FD, 30
        mov     byte [ebp-1H], 0                        ; 0014 _ C6. 45, FF, 00
        mov     ecx, dword [ebp+8H]                     ; 0018 _ 8B. 4D, 08
        mov     eax, 1717986919                         ; 001B _ B8, 66666667
        imul    ecx                                     ; 0020 _ F7. E9
        sar     edx, 2                                  ; 0022 _ C1. FA, 02
        mov     eax, ecx                                ; 0025 _ 89. C8
        sar     eax, 31                                 ; 0027 _ C1. F8, 1F
        sub     edx, eax                                ; 002A _ 29. C2
        mov     eax, edx                                ; 002C _ 89. D0
        shl     eax, 2                                  ; 002E _ C1. E0, 02
        add     eax, edx                                ; 0031 _ 01. D0
        add     eax, eax                                ; 0033 _ 01. C0
        sub     ecx, eax                                ; 0035 _ 29. C1
        mov     edx, ecx                                ; 0037 _ 89. CA
        mov     eax, edx                                ; 0039 _ 89. D0
        add     eax, 48                                 ; 003B _ 83. C0, 30
        mov     byte [ebp-2H], al                       ; 003E _ 88. 45, FE
        mov     ecx, dword [ebp+8H]                     ; 0041 _ 8B. 4D, 08
        mov     edx, 1717986919                         ; 0044 _ BA, 66666667
        mov     eax, ecx                                ; 0049 _ 89. C8
        imul    edx                                     ; 004B _ F7. EA
        sar     edx, 2                                  ; 004D _ C1. FA, 02
        mov     eax, ecx                                ; 0050 _ 89. C8
        sar     eax, 31                                 ; 0052 _ C1. F8, 1F
        sub     edx, eax                                ; 0055 _ 29. C2
        mov     eax, edx                                ; 0057 _ 89. D0
        add     eax, 48                                 ; 0059 _ 83. C0, 30
        mov     byte [ebp-3H], al                       ; 005C _ 88. 45, FD
        mov     eax, 0                                  ; 005F _ B8, 00000000
        leave                                           ; 0064 _ C9
        ret                                             ; 0065 _ C3

_HariMain:; Function begin
        push    ebp                                     ; 0066 _ 55
        mov     ebp, esp                                ; 0067 _ 89. E5
        push    ebx                                     ; 0069 _ 53
        mov     eax, 51252                              ; 006A _ B8, 0000C834
        call    ___chkstk_ms                            ; 006F _ E8, 00000000(rel)
        sub     esp, eax                                ; 0074 _ 29. C4
        mov     dword [esp+10H], ?_010                  ; 0076 _ C7. 44 24, 10, 00000000(d)
        mov     dword [esp+0CH], -1                     ; 007E _ C7. 44 24, 0C, FFFFFFFF
        mov     dword [esp+8H], 237                     ; 0086 _ C7. 44 24, 08, 000000ED
        mov     dword [esp+4H], 216                     ; 008E _ C7. 44 24, 04, 000000D8
        lea     eax, [ebp-0C814H]                       ; 0096 _ 8D. 85, FFFF37EC
        mov     dword [esp], eax                        ; 009C _ 89. 04 24
        call    _api_openwin                            ; 009F _ E8, 00000000(rel)
        mov     dword [ebp-18H], eax                    ; 00A4 _ 89. 45, E8
        mov     dword [esp+14H], 255                    ; 00A7 _ C7. 44 24, 14, 000000FF
        mov     dword [esp+10H], 228                    ; 00AF _ C7. 44 24, 10, 000000E4
        mov     dword [esp+0CH], 207                    ; 00B7 _ C7. 44 24, 0C, 000000CF
        mov     dword [esp+8H], 29                      ; 00BF _ C7. 44 24, 08, 0000001D
        mov     dword [esp+4H], 8                       ; 00C7 _ C7. 44 24, 04, 00000008
        mov     eax, dword [ebp-18H]                    ; 00CF _ 8B. 45, E8
        mov     dword [esp], eax                        ; 00D2 _ 89. 04 24
        call    _api_boxfillwin                         ; 00D5 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], 0                      ; 00DA _ C7. 45, F4, 00000000
        jmp     ?_006                                   ; 00E1 _ E9, 000000B2

?_001:  mov     eax, dword [ebp-0CH]                    ; 00E6 _ 8B. 45, F4
        add     eax, 1                                  ; 00E9 _ 83. C0, 01
        mov     dword [ebp-10H], eax                    ; 00EC _ 89. 45, F0
        jmp     ?_005                                   ; 00EF _ E9, 00000096

?_002:  mov     eax, dword [ebp-10H]                    ; 00F4 _ 8B. 45, F0
        sub     eax, dword [ebp-0CH]                    ; 00F7 _ 2B. 45, F4
        mov     dword [ebp-14H], eax                    ; 00FA _ 89. 45, EC
        cmp     dword [ebp-14H], 7                      ; 00FD _ 83. 7D, EC, 07
        jle     ?_003                                   ; 0101 _ 7E, 0B
        mov     eax, 15                                 ; 0103 _ B8, 0000000F
        sub     eax, dword [ebp-14H]                    ; 0108 _ 2B. 45, EC
        mov     dword [ebp-14H], eax                    ; 010B _ 89. 45, EC
?_003:  cmp     dword [ebp-14H], 0                      ; 010E _ 83. 7D, EC, 00
        jz      ?_004                                   ; 0112 _ 74, 72
        mov     eax, dword [ebp-0CH]                    ; 0114 _ 8B. 45, F4
        mov     eax, dword [_table.2003+eax*8]          ; 0117 _ 8B. 04 C5, 00000000(d)
        mov     dword [esp], eax                        ; 011E _ 89. 04 24
        call    _intToStr                               ; 0121 _ E8, FFFFFEDA
        mov     dword [ebp-1CH], eax                    ; 0126 _ 89. 45, E4
        mov     eax, dword [ebp-0CH]                    ; 0129 _ 8B. 45, F4
        mov     eax, dword [_table.2003+eax*8]          ; 012C _ 8B. 04 C5, 00000000(d)
        mov     dword [esp], eax                        ; 0133 _ 89. 04 24
        call    _api_putstr                             ; 0136 _ E8, 00000000(rel)
        mov     eax, dword [ebp-10H]                    ; 013B _ 8B. 45, F0
        mov     ebx, dword [?_009+eax*8]                ; 013E _ 8B. 1C C5, 00000004(d)
        mov     eax, dword [ebp-10H]                    ; 0145 _ 8B. 45, F0
        mov     ecx, dword [_table.2003+eax*8]          ; 0148 _ 8B. 0C C5, 00000000(d)
        mov     eax, dword [ebp-0CH]                    ; 014F _ 8B. 45, F4
        mov     edx, dword [?_009+eax*8]                ; 0152 _ 8B. 14 C5, 00000004(d)
        mov     eax, dword [ebp-0CH]                    ; 0159 _ 8B. 45, F4
        mov     eax, dword [_table.2003+eax*8]          ; 015C _ 8B. 04 C5, 00000000(d)
        mov     dword [esp+14H], 6                      ; 0163 _ C7. 44 24, 14, 00000006
        mov     dword [esp+10H], ebx                    ; 016B _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 016F _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 0173 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 0177 _ 89. 44 24, 04
        mov     eax, dword [ebp-18H]                    ; 017B _ 8B. 45, E8
        mov     dword [esp], eax                        ; 017E _ 89. 04 24
        call    _api_linewin                            ; 0181 _ E8, 00000000(rel)
?_004:  add     dword [ebp-10H], 1                      ; 0186 _ 83. 45, F0, 01
?_005:  cmp     dword [ebp-10H], 15                     ; 018A _ 83. 7D, F0, 0F
        jle     ?_002                                   ; 018E _ 0F 8E, FFFFFF60
        add     dword [ebp-0CH], 1                      ; 0194 _ 83. 45, F4, 01
?_006:  cmp     dword [ebp-0CH], 14                     ; 0198 _ 83. 7D, F4, 0E
        jle     ?_001                                   ; 019C _ 0F 8E, FFFFFF44
        mov     dword [esp+10H], 228                    ; 01A2 _ C7. 44 24, 10, 000000E4
        mov     dword [esp+0CH], 207                    ; 01AA _ C7. 44 24, 0C, 000000CF
        mov     dword [esp+8H], 29                      ; 01B2 _ C7. 44 24, 08, 0000001D
        mov     dword [esp+4H], 8                       ; 01BA _ C7. 44 24, 04, 00000008
        mov     eax, dword [ebp-18H]                    ; 01C2 _ 8B. 45, E8
        mov     dword [esp], eax                        ; 01C5 _ 89. 04 24
        call    _api_refreshwin                         ; 01C8 _ E8, 00000000(rel)
?_007:  mov     dword [esp], 1                          ; 01CD _ C7. 04 24, 00000001
        call    _api_getkey                             ; 01D4 _ E8, 00000000(rel)
        cmp     eax, 10                                 ; 01D9 _ 83. F8, 0A
        jz      ?_008                                   ; 01DC _ 74, 02
        jmp     ?_007                                   ; 01DE _ EB, ED
; _HariMain End of function

?_008:  ; Local function
        nop                                             ; 01E0 _ 90
        nop                                             ; 01E1 _ 90
        add     esp, 51252                              ; 01E2 _ 81. C4, 0000C834
        pop     ebx                                     ; 01E8 _ 5B
        pop     ebp                                     ; 01E9 _ 5D
        ret                                             ; 01EA _ C3

        nop                                             ; 01EB _ 90



_table.2003:                                            ; dword
        dd 000000CCH                                    ; 0000 _ 204 

?_009:  dd 00000081H, 000000C3H                         ; 0004 _ 129 195 
        dd 0000005AH, 000000ACH                         ; 000C _ 90 172 
        dd 0000003AH, 00000089H                         ; 0014 _ 58 137 
        dd 00000026H, 00000062H                         ; 001C _ 38 98 
        dd 00000022H, 0000003DH                         ; 0024 _ 34 61 
        dd 0000002EH, 0000001FH                         ; 002C _ 46 31 
        dd 00000049H, 0000000FH                         ; 0034 _ 73 15 
        dd 0000006EH, 0000000FH                         ; 003C _ 110 15 
        dd 00000094H, 0000001FH                         ; 0044 _ 148 31 
        dd 000000B9H, 0000003DH                         ; 004C _ 185 61 
        dd 000000D4H, 00000062H                         ; 0054 _ 212 98 
        dd 000000E0H, 00000089H                         ; 005C _ 224 137 
        dd 000000DCH, 000000ACH                         ; 0064 _ 220 172 
        dd 000000C8H, 000000C3H                         ; 006C _ 200 195 
        dd 000000A8H, 000000CCH                         ; 0074 _ 168 204 
        dd 00000081H, 00000000H                         ; 007C _ 129 0 
        dd 00000000H, 00000000H                         ; 0084 _ 0 0 
        dd 00000000H, 00000000H                         ; 008C _ 0 0 
        dd 00000000H, 00000000H                         ; 0094 _ 0 0 
        dd 00000000H                                    ; 009C _ 0 




?_010:                                                  
        db 6BH, 61H, 6CH, 65H, 69H, 64H, 6FH, 73H       ; 0000 _ kaleidos
        db 63H, 6FH, 70H, 65H, 00H, 00H, 00H, 00H       ; 0008 _ cope....


