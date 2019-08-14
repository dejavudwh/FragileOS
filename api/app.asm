; Disassembly of file: app.o
; Wed Aug 14 17:59:08 2019
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

__main: ; Function begin
        push    ebp                                     ; 0023 _ 55
        mov     ebp, esp                                ; 0024 _ 89. E5
        mov     eax, 16056                              ; 0026 _ B8, 00003EB8
        call    ___chkstk_ms                            ; 002B _ E8, 00000000(rel)
        sub     esp, eax                                ; 0030 _ 29. C4
        mov     dword [esp+10H], ?_004                  ; 0032 _ C7. 44 24, 10, 00000000(d)
        mov     dword [esp+0CH], -1                     ; 003A _ C7. 44 24, 0C, FFFFFFFF
        mov     dword [esp+8H], 100                     ; 0042 _ C7. 44 24, 08, 00000064
        mov     dword [esp+4H], 150                     ; 004A _ C7. 44 24, 04, 00000096
        lea     eax, [ebp-3E90H]                        ; 0052 _ 8D. 85, FFFFC170
        mov     dword [esp], eax                        ; 0058 _ 89. 04 24
        call    _api_openwin                            ; 005B _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 0060 _ 89. 45, F0
        mov     dword [esp+14H], 0                      ; 0063 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], 93                     ; 006B _ C7. 44 24, 10, 0000005D
        mov     dword [esp+0CH], 143                    ; 0073 _ C7. 44 24, 0C, 0000008F
        mov     dword [esp+8H], 26                      ; 007B _ C7. 44 24, 08, 0000001A
        mov     dword [esp+4H], 6                       ; 0083 _ C7. 44 24, 04, 00000006
        mov     eax, dword [ebp-10H]                    ; 008B _ 8B. 45, F0
        mov     dword [esp], eax                        ; 008E _ 89. 04 24
        call    _api_boxfillwin                         ; 0091 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], 0                      ; 0096 _ C7. 45, F4, 00000000
        mov     dword [ebp-0CH], 0                      ; 009D _ C7. 45, F4, 00000000
        jmp     ?_002                                   ; 00A4 _ EB, 7C

?_001:  mov     edx, dword [ebp-0CH]                    ; 00A6 _ 8B. 55, F4
        mov     eax, edx                                ; 00A9 _ 89. D0
        shl     eax, 3                                  ; 00AB _ C1. E0, 03
        add     eax, edx                                ; 00AE _ 01. D0
        add     eax, 26                                 ; 00B0 _ 83. C0, 1A
        mov     dword [esp+14H], 4                      ; 00B3 _ C7. 44 24, 14, 00000004
        mov     dword [esp+10H], eax                    ; 00BB _ 89. 44 24, 10
        mov     dword [esp+0CH], 77                     ; 00BF _ C7. 44 24, 0C, 0000004D
        mov     dword [esp+8H], 26                      ; 00C7 _ C7. 44 24, 08, 0000001A
        mov     dword [esp+4H], 8                       ; 00CF _ C7. 44 24, 04, 00000008
        mov     eax, dword [ebp-10H]                    ; 00D7 _ 8B. 45, F0
        mov     dword [esp], eax                        ; 00DA _ 89. 04 24
        call    _api_linewin                            ; 00DD _ E8, 00000000(rel)
        mov     edx, dword [ebp-0CH]                    ; 00E2 _ 8B. 55, F4
        mov     eax, edx                                ; 00E5 _ 89. D0
        shl     eax, 3                                  ; 00E7 _ C1. E0, 03
        add     eax, edx                                ; 00EA _ 01. D0
        add     eax, 88                                 ; 00EC _ 83. C0, 58
        mov     dword [esp+14H], 4                      ; 00EF _ C7. 44 24, 14, 00000004
        mov     dword [esp+10H], 89                     ; 00F7 _ C7. 44 24, 10, 00000059
        mov     dword [esp+0CH], eax                    ; 00FF _ 89. 44 24, 0C
        mov     dword [esp+8H], 26                      ; 0103 _ C7. 44 24, 08, 0000001A
        mov     dword [esp+4H], 88                      ; 010B _ C7. 44 24, 04, 00000058
        mov     eax, dword [ebp-10H]                    ; 0113 _ 8B. 45, F0
        mov     dword [esp], eax                        ; 0116 _ 89. 04 24
        call    _api_linewin                            ; 0119 _ E8, 00000000(rel)
        add     dword [ebp-0CH], 1                      ; 011E _ 83. 45, F4, 01
?_002:  cmp     dword [ebp-0CH], 7                      ; 0122 _ 83. 7D, F4, 07
        jle     ?_001                                   ; 0126 _ 0F 8E, FFFFFF7A
        mov     dword [esp+10H], 90                     ; 012C _ C7. 44 24, 10, 0000005A
        mov     dword [esp+0CH], 154                    ; 0134 _ C7. 44 24, 0C, 0000009A
        mov     dword [esp+8H], 26                      ; 013C _ C7. 44 24, 08, 0000001A
        mov     dword [esp+4H], 6                       ; 0144 _ C7. 44 24, 04, 00000006
        mov     eax, dword [ebp-10H]                    ; 014C _ 8B. 45, F0
        mov     dword [esp], eax                        ; 014F _ 89. 04 24
        call    _api_refreshwin                         ; 0152 _ E8, 00000000(rel)
        nop                                             ; 0157 _ 90
?_003:  mov     dword [esp], 1                          ; 0158 _ C7. 04 24, 00000001
        call    _api_getkey                             ; 015F _ E8, 00000000(rel)
        cmp     eax, 28                                 ; 0164 _ 83. F8, 1C
        jnz     ?_003                                   ; 0167 _ 75, EF
        mov     eax, dword [ebp-10H]                    ; 0169 _ 8B. 45, F0
        mov     dword [esp], eax                        ; 016C _ 89. 04 24
        call    _api_closewin                           ; 016F _ E8, 00000000(rel)
        nop                                             ; 0174 _ 90
        leave                                           ; 0175 _ C9
        ret                                             ; 0176 _ C3
; __main End of function

        nop                                             ; 0177 _ 90



_ran:                                                   ; dword
        dd 00000017H                                    ; 0000 _ 23 




?_004:                                                  
        db 73H, 74H, 61H, 72H, 00H, 00H, 00H, 00H       ; 0000 _ star....


