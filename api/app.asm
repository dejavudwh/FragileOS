; Disassembly of file: app.o
; Wed Aug 14 20:33:59 2019
; Mode: 32 bits
; Syntax: YASM/NASM
; Instruction set: 80386







__main:
        push    ebp                                     ; 0000 _ 55
        mov     ebp, esp                                ; 0001 _ 89. E5
        mov     eax, 16072                              ; 0003 _ B8, 00003EC8
        call    ___chkstk_ms                            ; 0008 _ E8, 00000000(rel)
        sub     esp, eax                                ; 000D _ 29. C4
        mov     dword [esp], ?_008                      ; 000F _ C7. 04 24, 00000000(d)
        call    _api_fopen                              ; 0016 _ E8, 00000000(rel)
        mov     dword [ebp-14H], eax                    ; 001B _ 89. 45, EC
        mov     dword [ebp-0CH], 0                      ; 001E _ C7. 45, F4, 00000000
        mov     dword [esp+8H], 0                       ; 0025 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], 5                       ; 002D _ C7. 44 24, 04, 00000005
        mov     eax, dword [ebp-14H]                    ; 0035 _ 8B. 45, EC
        mov     dword [esp], eax                        ; 0038 _ 89. 04 24
        call    _api_fseek                              ; 003B _ E8, 00000000(rel)
        cmp     dword [ebp-14H], 0                      ; 0040 _ 83. 7D, EC, 00
        jz      ?_004                                   ; 0044 _ 74, 43
        mov     dword [ebp-0CH], 0                      ; 0046 _ C7. 45, F4, 00000000
        jmp     ?_002                                   ; 004D _ EB, 31

?_001:  mov     eax, dword [ebp-14H]                    ; 004F _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 0052 _ 89. 44 24, 08
        mov     dword [esp+4H], 1                       ; 0056 _ C7. 44 24, 04, 00000001
        lea     eax, [ebp-1AH]                          ; 005E _ 8D. 45, E6
        mov     dword [esp], eax                        ; 0061 _ 89. 04 24
        call    _api_fread                              ; 0064 _ E8, 00000000(rel)
        test    eax, eax                                ; 0069 _ 85. C0
        jz      ?_003                                   ; 006B _ 74, 1B
        movzx   eax, byte [ebp-1AH]                     ; 006D _ 0F B6. 45, E6
        movsx   eax, al                                 ; 0071 _ 0F BE. C0
        mov     dword [esp], eax                        ; 0074 _ 89. 04 24
        call    _api_putchar                            ; 0077 _ E8, 00000000(rel)
        add     dword [ebp-0CH], 1                      ; 007C _ 83. 45, F4, 01
?_002:  cmp     dword [ebp-0CH], 9                      ; 0080 _ 83. 7D, F4, 09
        jle     ?_001                                   ; 0084 _ 7E, C9
        jmp     ?_004                                   ; 0086 _ EB, 01

?_003:  nop                                             ; 0088 _ 90
?_004:  mov     dword [esp+10H], ?_009                  ; 0089 _ C7. 44 24, 10, 00000008(d)
        mov     dword [esp+0CH], -1                     ; 0091 _ C7. 44 24, 0C, FFFFFFFF
        mov     dword [esp+8H], 100                     ; 0099 _ C7. 44 24, 08, 00000064
        mov     dword [esp+4H], 150                     ; 00A1 _ C7. 44 24, 04, 00000096
        lea     eax, [ebp-3E9AH]                        ; 00A9 _ 8D. 85, FFFFC166
        mov     dword [esp], eax                        ; 00AF _ 89. 04 24
        call    _api_openwin                            ; 00B2 _ E8, 00000000(rel)
        mov     dword [ebp-18H], eax                    ; 00B7 _ 89. 45, E8
        mov     dword [esp+14H], 0                      ; 00BA _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], 93                     ; 00C2 _ C7. 44 24, 10, 0000005D
        mov     dword [esp+0CH], 143                    ; 00CA _ C7. 44 24, 0C, 0000008F
        mov     dword [esp+8H], 26                      ; 00D2 _ C7. 44 24, 08, 0000001A
        mov     dword [esp+4H], 6                       ; 00DA _ C7. 44 24, 04, 00000006
        mov     eax, dword [ebp-18H]                    ; 00E2 _ 8B. 45, E8
        mov     dword [esp], eax                        ; 00E5 _ 89. 04 24
        call    _api_boxfillwin                         ; 00E8 _ E8, 00000000(rel)
        mov     dword [ebp-10H], 0                      ; 00ED _ C7. 45, F0, 00000000
        mov     dword [ebp-10H], 0                      ; 00F4 _ C7. 45, F0, 00000000
        jmp     ?_006                                   ; 00FB _ EB, 7C

?_005:  mov     edx, dword [ebp-10H]                    ; 00FD _ 8B. 55, F0
        mov     eax, edx                                ; 0100 _ 89. D0
        shl     eax, 3                                  ; 0102 _ C1. E0, 03
        add     eax, edx                                ; 0105 _ 01. D0
        add     eax, 26                                 ; 0107 _ 83. C0, 1A
        mov     dword [esp+14H], 4                      ; 010A _ C7. 44 24, 14, 00000004
        mov     dword [esp+10H], eax                    ; 0112 _ 89. 44 24, 10
        mov     dword [esp+0CH], 77                     ; 0116 _ C7. 44 24, 0C, 0000004D
        mov     dword [esp+8H], 26                      ; 011E _ C7. 44 24, 08, 0000001A
        mov     dword [esp+4H], 8                       ; 0126 _ C7. 44 24, 04, 00000008
        mov     eax, dword [ebp-18H]                    ; 012E _ 8B. 45, E8
        mov     dword [esp], eax                        ; 0131 _ 89. 04 24
        call    _api_linewin                            ; 0134 _ E8, 00000000(rel)
        mov     edx, dword [ebp-10H]                    ; 0139 _ 8B. 55, F0
        mov     eax, edx                                ; 013C _ 89. D0
        shl     eax, 3                                  ; 013E _ C1. E0, 03
        add     eax, edx                                ; 0141 _ 01. D0
        add     eax, 88                                 ; 0143 _ 83. C0, 58
        mov     dword [esp+14H], 4                      ; 0146 _ C7. 44 24, 14, 00000004
        mov     dword [esp+10H], 89                     ; 014E _ C7. 44 24, 10, 00000059
        mov     dword [esp+0CH], eax                    ; 0156 _ 89. 44 24, 0C
        mov     dword [esp+8H], 26                      ; 015A _ C7. 44 24, 08, 0000001A
        mov     dword [esp+4H], 88                      ; 0162 _ C7. 44 24, 04, 00000058
        mov     eax, dword [ebp-18H]                    ; 016A _ 8B. 45, E8
        mov     dword [esp], eax                        ; 016D _ 89. 04 24
        call    _api_linewin                            ; 0170 _ E8, 00000000(rel)
        add     dword [ebp-10H], 1                      ; 0175 _ 83. 45, F0, 01
?_006:  cmp     dword [ebp-10H], 7                      ; 0179 _ 83. 7D, F0, 07
        jle     ?_005                                   ; 017D _ 0F 8E, FFFFFF7A
        mov     dword [esp+10H], 90                     ; 0183 _ C7. 44 24, 10, 0000005A
        mov     dword [esp+0CH], 154                    ; 018B _ C7. 44 24, 0C, 0000009A
        mov     dword [esp+8H], 26                      ; 0193 _ C7. 44 24, 08, 0000001A
        mov     dword [esp+4H], 6                       ; 019B _ C7. 44 24, 04, 00000006
        mov     eax, dword [ebp-18H]                    ; 01A3 _ 8B. 45, E8
        mov     dword [esp], eax                        ; 01A6 _ 89. 04 24
        call    _api_refreshwin                         ; 01A9 _ E8, 00000000(rel)
        nop                                             ; 01AE _ 90
?_007:  mov     dword [esp], 1                          ; 01AF _ C7. 04 24, 00000001
        call    _api_getkey                             ; 01B6 _ E8, 00000000(rel)
        cmp     eax, 28                                 ; 01BB _ 83. F8, 1C
        jnz     ?_007                                   ; 01BE _ 75, EF
        mov     eax, dword [ebp-18H]                    ; 01C0 _ 8B. 45, E8
        mov     dword [esp], eax                        ; 01C3 _ 89. 04 24
        call    _api_closewin                           ; 01C6 _ E8, 00000000(rel)
        nop                                             ; 01CB _ 90
        leave                                           ; 01CC _ C9
        ret                                             ; 01CD _ C3

        nop                                             ; 01CE _ 90
        nop                                             ; 01CF _ 90






?_008:                                                  
        db 69H, 6AH, 6BH, 2EH, 74H, 78H, 74H, 00H       ; 0000 _ ijk.txt.

?_009:                                                  ; byte
        db 73H, 74H, 61H, 72H, 00H, 00H, 00H, 00H       ; 0008 _ star....


