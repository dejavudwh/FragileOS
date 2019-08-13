; Disassembly of file: app.o
; Tue Aug 13 13:28:15 2019
; Mode: 32 bits
; Syntax: YASM/NASM
; Instruction set: 80386







__main:
        push    ebp                                     ; 0000 _ 55
        mov     ebp, esp                                ; 0001 _ 89. E5
        mov     eax, 7544                               ; 0003 _ B8, 00001D78
        call    ___chkstk_ms                            ; 0008 _ E8, 00000000(rel)
        sub     esp, eax                                ; 000D _ 29. C4
        mov     dword [esp+10H], ?_001                  ; 000F _ C7. 44 24, 10, 00000000(d)
        mov     dword [esp+0CH], -1                     ; 0017 _ C7. 44 24, 0C, FFFFFFFF
        mov     dword [esp+8H], 50                      ; 001F _ C7. 44 24, 08, 00000032
        mov     dword [esp+4H], 150                     ; 0027 _ C7. 44 24, 04, 00000096
        lea     eax, [ebp-1D58H]                        ; 002F _ 8D. 85, FFFFE2A8
        mov     dword [esp], eax                        ; 0035 _ 89. 04 24
        call    _api_openwin                            ; 0038 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 003D _ 89. 45, F4
        mov     dword [esp+14H], 3                      ; 0040 _ C7. 44 24, 14, 00000003
        mov     dword [esp+10H], 43                     ; 0048 _ C7. 44 24, 10, 0000002B
        mov     dword [esp+0CH], 141                    ; 0050 _ C7. 44 24, 0C, 0000008D
        mov     dword [esp+8H], 36                      ; 0058 _ C7. 44 24, 08, 00000024
        mov     dword [esp+4H], 8                       ; 0060 _ C7. 44 24, 04, 00000008
        mov     eax, dword [ebp-0CH]                    ; 0068 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 006B _ 89. 04 24
        call    _api_boxfillwin                         ; 006E _ E8, 00000000(rel)
        mov     dword [esp+14H], ?_002                  ; 0073 _ C7. 44 24, 14, 00000006(d)
        mov     dword [esp+10H], 12                     ; 007B _ C7. 44 24, 10, 0000000C
        mov     dword [esp+0CH], 0                      ; 0083 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 28                      ; 008B _ C7. 44 24, 08, 0000001C
        mov     dword [esp+4H], 28                      ; 0093 _ C7. 44 24, 04, 0000001C
        mov     eax, dword [ebp-0CH]                    ; 009B _ 8B. 45, F4
        mov     dword [esp], eax                        ; 009E _ 89. 04 24
        call    _api_putstrwin                          ; 00A1 _ E8, 00000000(rel)
        nop                                             ; 00A6 _ 90
        leave                                           ; 00A7 _ C9
        ret                                             ; 00A8 _ C3

        nop                                             ; 00A9 _ 90
        nop                                             ; 00AA _ 90
        nop                                             ; 00AB _ 90






?_001:                                                  
        db 68H, 65H, 6CH, 6CH, 6FH, 00H                 ; 0000 _ hello.

?_002:                                                  ; byte
        db 68H, 65H, 6CH, 6CH, 6FH, 2CH, 20H, 77H       ; 0006 _ hello, w
        db 6FH, 72H, 6CH, 64H, 00H, 00H                 ; 000E _ orld..


