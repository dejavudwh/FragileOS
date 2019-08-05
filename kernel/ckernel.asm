; Disassembly of file: ckernel.o
; Mon Aug  5 10:41:50 2019
; Mode: 32 bits
; Syntax: YASM/NASM
; Instruction set: 80386






.text:  ; Local function

_launch:
        push    ebp                                     ; 0000 _ 55
        mov     ebp, esp                                ; 0001 _ 89. E5
        push    ebx                                     ; 0003 _ 53
        sub     esp, 68                                 ; 0004 _ 83. EC, 44
        mov     dword [esp], _bootInfo                  ; 0007 _ C7. 04 24, 00000000(d)
        call    _initBootInfo                           ; 000E _ E8, 0000083B
        mov     eax, dword [_bootInfo]                  ; 0013 _ A1, 00000000(d)
        mov     dword [ebp-10H], eax                    ; 0018 _ 89. 45, F0
        movzx   eax, word [?_141]                       ; 001B _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0022 _ 98
        mov     dword [_xsize], eax                     ; 0023 _ A3, 000000F8(d)
        movzx   eax, word [?_142]                       ; 0028 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 002F _ 98
        mov     dword [_ysize], eax                     ; 0030 _ A3, 000000FC(d)
        mov     dword [ebp-14H], 0                      ; 0035 _ C7. 45, EC, 00000000
        mov     dword [ebp-18H], 0                      ; 003C _ C7. 45, E8, 00000000
        mov     dword [esp+8H], _keybuf                 ; 0043 _ C7. 44 24, 08, 00000040(d)
        mov     dword [esp+4H], 32                      ; 004B _ C7. 44 24, 04, 00000020
        mov     dword [esp], _keyinfo                   ; 0053 _ C7. 04 24, 00000008(d)
        call    _fifo8_init                             ; 005A _ E8, 00000EF1
        mov     dword [esp+8H], _mousebuf               ; 005F _ C7. 44 24, 08, 00000060(d)
        mov     dword [esp+4H], 128                     ; 0067 _ C7. 44 24, 04, 00000080
        mov     dword [esp], _mouseinfo                 ; 006F _ C7. 04 24, 00000020(d)
        call    _fifo8_init                             ; 0076 _ E8, 00000ED5
        call    _init_palette                           ; 007B _ E8, 00000891
        call    _init_keyboard                          ; 0080 _ E8, 00000DFA
        call    _get_memory_block_count                 ; 0085 _ E8, 00000000(rel)
        mov     dword [ebp-1CH], eax                    ; 008A _ 89. 45, E4
        call    _get_addr_buffer                        ; 008D _ E8, 00000000(rel)
        mov     dword [ebp-20H], eax                    ; 0092 _ 89. 45, E0
        mov     eax, dword [_memman]                    ; 0095 _ A1, 00000000(d)
        mov     dword [esp], eax                        ; 009A _ 89. 04 24
        call    _memman_init                            ; 009D _ E8, 00000000(rel)
        mov     eax, dword [_memman]                    ; 00A2 _ A1, 00000000(d)
        mov     dword [esp+8H], 1072594944              ; 00A7 _ C7. 44 24, 08, 3FEE8000
        mov     dword [esp+4H], 16809984                ; 00AF _ C7. 44 24, 04, 01008000
        mov     dword [esp], eax                        ; 00B7 _ 89. 04 24
        call    _memman_free                            ; 00BA _ E8, 00000000(rel)
        mov     ecx, dword [_ysize]                     ; 00BF _ 8B. 0D, 000000FC(d)
        mov     edx, dword [_xsize]                     ; 00C5 _ 8B. 15, 000000F8(d)
        mov     eax, dword [_memman]                    ; 00CB _ A1, 00000000(d)
        mov     dword [esp+0CH], ecx                    ; 00D0 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 00D4 _ 89. 54 24, 08
        mov     edx, dword [ebp-10H]                    ; 00D8 _ 8B. 55, F0
        mov     dword [esp+4H], edx                     ; 00DB _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 00DF _ 89. 04 24
        call    _shtctl_init                            ; 00E2 _ E8, 00000000(rel)
        mov     dword [ebp-24H], eax                    ; 00E7 _ 89. 45, DC
        mov     eax, dword [ebp-24H]                    ; 00EA _ 8B. 45, DC
        mov     dword [esp], eax                        ; 00ED _ 89. 04 24
        call    _sheet_alloc                            ; 00F0 _ E8, 00000000(rel)
        mov     dword [ebp-14H], eax                    ; 00F5 _ 89. 45, EC
        mov     eax, dword [ebp-24H]                    ; 00F8 _ 8B. 45, DC
        mov     dword [esp], eax                        ; 00FB _ 89. 04 24
        call    _sheet_alloc                            ; 00FE _ E8, 00000000(rel)
        mov     dword [ebp-18H], eax                    ; 0103 _ 89. 45, E8
        mov     edx, dword [_xsize]                     ; 0106 _ 8B. 15, 000000F8(d)
        mov     eax, dword [_ysize]                     ; 010C _ A1, 000000FC(d)
        imul    eax, edx                                ; 0111 _ 0F AF. C2
        mov     edx, dword [_memman]                    ; 0114 _ 8B. 15, 00000000(d)
        mov     dword [esp+4H], eax                     ; 011A _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 011E _ 89. 14 24
        call    _memman_alloc_4k                        ; 0121 _ E8, 00000000(rel)
        mov     dword [_buf_back], eax                  ; 0126 _ A3, 00000100(d)
        mov     ecx, dword [_ysize]                     ; 012B _ 8B. 0D, 000000FC(d)
        mov     edx, dword [_xsize]                     ; 0131 _ 8B. 15, 000000F8(d)
        mov     eax, dword [_buf_back]                  ; 0137 _ A1, 00000100(d)
        mov     dword [esp+10H], 99                     ; 013C _ C7. 44 24, 10, 00000063
        mov     dword [esp+0CH], ecx                    ; 0144 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 0148 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 014C _ 89. 44 24, 04
        mov     eax, dword [ebp-14H]                    ; 0150 _ 8B. 45, EC
        mov     dword [esp], eax                        ; 0153 _ 89. 04 24
        call    _sheet_setbuf                           ; 0156 _ E8, 00000000(rel)
        mov     dword [esp+10H], 99                     ; 015B _ C7. 44 24, 10, 00000063
        mov     dword [esp+0CH], 16                     ; 0163 _ C7. 44 24, 0C, 00000010
        mov     dword [esp+8H], 16                      ; 016B _ C7. 44 24, 08, 00000010
        mov     dword [esp+4H], _buf_mouse              ; 0173 _ C7. 44 24, 04, 00000120(d)
        mov     eax, dword [ebp-18H]                    ; 017B _ 8B. 45, E8
        mov     dword [esp], eax                        ; 017E _ 89. 04 24
        call    _sheet_setbuf                           ; 0181 _ E8, 00000000(rel)
        mov     ecx, dword [_ysize]                     ; 0186 _ 8B. 0D, 000000FC(d)
        mov     edx, dword [_xsize]                     ; 018C _ 8B. 15, 000000F8(d)
        mov     eax, dword [_buf_back]                  ; 0192 _ A1, 00000100(d)
        mov     dword [esp+8H], ecx                     ; 0197 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 019B _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 019F _ 89. 04 24
        call    _init_screen8                           ; 01A2 _ E8, 000001E2
        mov     dword [esp+4H], 99                      ; 01A7 _ C7. 44 24, 04, 00000063
        mov     dword [esp], _buf_mouse                 ; 01AF _ C7. 04 24, 00000120(d)
        call    _init_mouse_cursor                      ; 01B6 _ E8, 000009F2
        mov     dword [esp+0CH], 0                      ; 01BB _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 01C3 _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp-14H]                    ; 01CB _ 8B. 45, EC
        mov     dword [esp+4H], eax                     ; 01CE _ 89. 44 24, 04
        mov     eax, dword [ebp-24H]                    ; 01D2 _ 8B. 45, DC
        mov     dword [esp], eax                        ; 01D5 _ 89. 04 24
        call    _sheet_slide                            ; 01D8 _ E8, 00000000(rel)
        mov     eax, dword [_xsize]                     ; 01DD _ A1, 000000F8(d)
        sub     eax, 16                                 ; 01E2 _ 83. E8, 10
        mov     edx, eax                                ; 01E5 _ 89. C2
        shr     edx, 31                                 ; 01E7 _ C1. EA, 1F
        add     eax, edx                                ; 01EA _ 01. D0
        sar     eax, 1                                  ; 01EC _ D1. F8
        mov     dword [_mx], eax                        ; 01EE _ A3, 000000F0(d)
        mov     eax, dword [_ysize]                     ; 01F3 _ A1, 000000FC(d)
        sub     eax, 44                                 ; 01F8 _ 83. E8, 2C
        mov     edx, eax                                ; 01FB _ 89. C2
        shr     edx, 31                                 ; 01FD _ C1. EA, 1F
        add     eax, edx                                ; 0200 _ 01. D0
        sar     eax, 1                                  ; 0202 _ D1. F8
        mov     dword [_my], eax                        ; 0204 _ A3, 000000F4(d)
        mov     edx, dword [_my]                        ; 0209 _ 8B. 15, 000000F4(d)
        mov     eax, dword [_mx]                        ; 020F _ A1, 000000F0(d)
        mov     dword [esp+0CH], edx                    ; 0214 _ 89. 54 24, 0C
        mov     dword [esp+8H], eax                     ; 0218 _ 89. 44 24, 08
        mov     eax, dword [ebp-18H]                    ; 021C _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 021F _ 89. 44 24, 04
        mov     eax, dword [ebp-24H]                    ; 0223 _ 8B. 45, DC
        mov     dword [esp], eax                        ; 0226 _ 89. 04 24
        call    _sheet_slide                            ; 0229 _ E8, 00000000(rel)
        mov     dword [esp+4H], ?_131                   ; 022E _ C7. 44 24, 04, 00000000(d)
        mov     eax, dword [ebp-24H]                    ; 0236 _ 8B. 45, DC
        mov     dword [esp], eax                        ; 0239 _ 89. 04 24
        call    _message_box                            ; 023C _ E8, 0000129C
        mov     dword [esp+8H], 0                       ; 0241 _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp-14H]                    ; 0249 _ 8B. 45, EC
        mov     dword [esp+4H], eax                     ; 024C _ 89. 44 24, 04
        mov     eax, dword [ebp-24H]                    ; 0250 _ 8B. 45, DC
        mov     dword [esp], eax                        ; 0253 _ 89. 04 24
        call    _sheet_updown                           ; 0256 _ E8, 00000000(rel)
        mov     dword [esp+8H], 100                     ; 025B _ C7. 44 24, 08, 00000064
        mov     eax, dword [ebp-18H]                    ; 0263 _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 0266 _ 89. 44 24, 04
        mov     eax, dword [ebp-24H]                    ; 026A _ 8B. 45, DC
        mov     dword [esp], eax                        ; 026D _ 89. 04 24
        call    _sheet_updown                           ; 0270 _ E8, 00000000(rel)
        call    _io_sti                                 ; 0275 _ E8, 00000000(rel)
        mov     dword [esp], _mdec                      ; 027A _ C7. 04 24, 000000E0(d)
        call    _enable_mouse                           ; 0281 _ E8, 00000C34
        mov     dword [ebp-28H], 0                      ; 0286 _ C7. 45, D8, 00000000
        mov     dword [ebp-0CH], 0                      ; 028D _ C7. 45, F4, 00000000
?_001:  call    _io_cli                                 ; 0294 _ E8, 00000000(rel)
        mov     dword [esp], _keyinfo                   ; 0299 _ C7. 04 24, 00000008(d)
        call    _fifo8_status                           ; 02A0 _ E8, 00000DD9
        mov     ebx, eax                                ; 02A5 _ 89. C3
        mov     dword [esp], _mouseinfo                 ; 02A7 _ C7. 04 24, 00000020(d)
        call    _fifo8_status                           ; 02AE _ E8, 00000DCB
        add     eax, ebx                                ; 02B3 _ 01. D8
        test    eax, eax                                ; 02B5 _ 85. C0
        jnz     ?_002                                   ; 02B7 _ 75, 07
        call    _io_stihlt                              ; 02B9 _ E8, 00000000(rel)
        jmp     ?_001                                   ; 02BE _ EB, D4

?_002:  ; Local function
        mov     dword [esp], _keyinfo                   ; 02C0 _ C7. 04 24, 00000008(d)
        call    _fifo8_status                           ; 02C7 _ E8, 00000DB2
        test    eax, eax                                ; 02CC _ 85. C0
        je      ?_003                                   ; 02CE _ 0F 84, 00000083
        call    _io_sti                                 ; 02D4 _ E8, 00000000(rel)
        mov     dword [esp], _keyinfo                   ; 02D9 _ C7. 04 24, 00000008(d)
        call    _fifo8_get                              ; 02E0 _ E8, 00000D29
        mov     dword [ebp-28H], eax                    ; 02E5 _ 89. 45, D8
        cmp     dword [ebp-28H], 28                     ; 02E8 _ 83. 7D, D8, 1C
        jnz     ?_001                                   ; 02EC _ 75, A6
        mov     ebx, dword [_xsize]                     ; 02EE _ 8B. 1D, 000000F8(d)
        mov     ecx, dword [_buf_back]                  ; 02F4 _ 8B. 0D, 00000100(d)
        mov     edx, dword [ebp-0CH]                    ; 02FA _ 8B. 55, F4
        mov     eax, edx                                ; 02FD _ 89. D0
        shl     eax, 2                                  ; 02FF _ C1. E0, 02
        add     eax, edx                                ; 0302 _ 01. D0
        shl     eax, 2                                  ; 0304 _ C1. E0, 02
        mov     edx, eax                                ; 0307 _ 89. C2
        mov     eax, dword [ebp-20H]                    ; 0309 _ 8B. 45, E0
        add     eax, edx                                ; 030C _ 01. D0
        mov     dword [esp+18H], 7                      ; 030E _ C7. 44 24, 18, 00000007
        mov     dword [esp+14H], ebx                    ; 0316 _ 89. 5C 24, 14
        mov     edx, dword [ebp-0CH]                    ; 031A _ 8B. 55, F4
        mov     dword [esp+10H], edx                    ; 031D _ 89. 54 24, 10
        mov     dword [esp+0CH], ecx                    ; 0321 _ 89. 4C 24, 0C
        mov     dword [esp+8H], eax                     ; 0325 _ 89. 44 24, 08
        mov     eax, dword [ebp-14H]                    ; 0329 _ 8B. 45, EC
        mov     dword [esp+4H], eax                     ; 032C _ 89. 44 24, 04
        mov     eax, dword [ebp-24H]                    ; 0330 _ 8B. 45, DC
        mov     dword [esp], eax                        ; 0333 _ 89. 04 24
        call    _showMemoryInfo                         ; 0336 _ E8, 00000E97
        add     dword [ebp-0CH], 1                      ; 033B _ 83. 45, F4, 01
        mov     eax, dword [ebp-0CH]                    ; 033F _ 8B. 45, F4
        cmp     eax, dword [ebp-1CH]                    ; 0342 _ 3B. 45, E4
        jle     ?_001                                   ; 0345 _ 0F 8E, FFFFFF49
        mov     dword [ebp-0CH], 0                      ; 034B _ C7. 45, F4, 00000000
        jmp     ?_001                                   ; 0352 _ E9, FFFFFF3D

?_003:  ; Local function
        mov     dword [esp], _mouseinfo                 ; 0357 _ C7. 04 24, 00000020(d)
        call    _fifo8_status                           ; 035E _ E8, 00000D1B
        test    eax, eax                                ; 0363 _ 85. C0
        je      ?_001                                   ; 0365 _ 0F 84, FFFFFF29
        mov     eax, dword [ebp-18H]                    ; 036B _ 8B. 45, E8
        mov     dword [esp+8H], eax                     ; 036E _ 89. 44 24, 08
        mov     eax, dword [ebp-14H]                    ; 0372 _ 8B. 45, EC
        mov     dword [esp+4H], eax                     ; 0375 _ 89. 44 24, 04
        mov     eax, dword [ebp-24H]                    ; 0379 _ 8B. 45, DC
        mov     dword [esp], eax                        ; 037C _ 89. 04 24
        call    _show_mouse_info                        ; 037F _ E8, 0000044A
        jmp     ?_001                                   ; 0384 _ E9, FFFFFF0B

_init_screen8:; Function begin
        push    ebp                                     ; 0389 _ 55
        mov     ebp, esp                                ; 038A _ 89. E5
        push    ebx                                     ; 038C _ 53
        sub     esp, 36                                 ; 038D _ 83. EC, 24
        mov     eax, dword [ebp+10H]                    ; 0390 _ 8B. 45, 10
        lea     edx, [eax-11H]                          ; 0393 _ 8D. 50, EF
        mov     eax, dword [ebp+0CH]                    ; 0396 _ 8B. 45, 0C
        sub     eax, 1                                  ; 0399 _ 83. E8, 01
        mov     dword [esp+18H], edx                    ; 039C _ 89. 54 24, 18
        mov     dword [esp+14H], eax                    ; 03A0 _ 89. 44 24, 14
        mov     dword [esp+10H], 0                      ; 03A4 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 03AC _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 14                      ; 03B4 _ C7. 44 24, 08, 0000000E
        mov     eax, dword [ebp+0CH]                    ; 03BC _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 03BF _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 03C3 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 03C6 _ 89. 04 24
        call    _boxfill8                               ; 03C9 _ E8, 0000060E
        mov     eax, dword [ebp+10H]                    ; 03CE _ 8B. 45, 10
        lea     ecx, [eax-10H]                          ; 03D1 _ 8D. 48, F0
        mov     eax, dword [ebp+0CH]                    ; 03D4 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 03D7 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 03DA _ 8B. 45, 10
        sub     eax, 16                                 ; 03DD _ 83. E8, 10
        mov     dword [esp+18H], ecx                    ; 03E0 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 03E4 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 03E8 _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 03EC _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 03F4 _ C7. 44 24, 08, 00000008
        mov     eax, dword [ebp+0CH]                    ; 03FC _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 03FF _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0403 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0406 _ 89. 04 24
        call    _boxfill8                               ; 0409 _ E8, 000005CE
        mov     eax, dword [ebp+10H]                    ; 040E _ 8B. 45, 10
        lea     ecx, [eax-0FH]                          ; 0411 _ 8D. 48, F1
        mov     eax, dword [ebp+0CH]                    ; 0414 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 0417 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 041A _ 8B. 45, 10
        sub     eax, 15                                 ; 041D _ 83. E8, 0F
        mov     dword [esp+18H], ecx                    ; 0420 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 0424 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 0428 _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 042C _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 7                       ; 0434 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 043C _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 043F _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0443 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0446 _ 89. 04 24
        call    _boxfill8                               ; 0449 _ E8, 0000058E
        mov     eax, dword [ebp+10H]                    ; 044E _ 8B. 45, 10
        lea     ecx, [eax-1H]                           ; 0451 _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 0454 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 0457 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 045A _ 8B. 45, 10
        sub     eax, 14                                 ; 045D _ 83. E8, 0E
        mov     dword [esp+18H], ecx                    ; 0460 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 0464 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 0468 _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 046C _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 0474 _ C7. 44 24, 08, 00000008
        mov     eax, dword [ebp+0CH]                    ; 047C _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 047F _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0483 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0486 _ 89. 04 24
        call    _boxfill8                               ; 0489 _ E8, 0000054E
        mov     eax, dword [ebp+10H]                    ; 048E _ 8B. 45, 10
        lea     edx, [eax-0CH]                          ; 0491 _ 8D. 50, F4
        mov     eax, dword [ebp+10H]                    ; 0494 _ 8B. 45, 10
        sub     eax, 12                                 ; 0497 _ 83. E8, 0C
        mov     dword [esp+18H], edx                    ; 049A _ 89. 54 24, 18
        mov     dword [esp+14H], 30                     ; 049E _ C7. 44 24, 14, 0000001E
        mov     dword [esp+10H], eax                    ; 04A6 _ 89. 44 24, 10
        mov     dword [esp+0CH], 3                      ; 04AA _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 7                       ; 04B2 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 04BA _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 04BD _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 04C1 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 04C4 _ 89. 04 24
        call    _boxfill8                               ; 04C7 _ E8, 00000510
        mov     eax, dword [ebp+10H]                    ; 04CC _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 04CF _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 04D2 _ 8B. 45, 10
        sub     eax, 12                                 ; 04D5 _ 83. E8, 0C
        mov     dword [esp+18H], edx                    ; 04D8 _ 89. 54 24, 18
        mov     dword [esp+14H], 2                      ; 04DC _ C7. 44 24, 14, 00000002
        mov     dword [esp+10H], eax                    ; 04E4 _ 89. 44 24, 10
        mov     dword [esp+0CH], 2                      ; 04E8 _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 7                       ; 04F0 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 04F8 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 04FB _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 04FF _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0502 _ 89. 04 24
        call    _boxfill8                               ; 0505 _ E8, 000004D2
        mov     eax, dword [ebp+10H]                    ; 050A _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 050D _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 0510 _ 8B. 45, 10
        sub     eax, 4                                  ; 0513 _ 83. E8, 04
        mov     dword [esp+18H], edx                    ; 0516 _ 89. 54 24, 18
        mov     dword [esp+14H], 30                     ; 051A _ C7. 44 24, 14, 0000001E
        mov     dword [esp+10H], eax                    ; 0522 _ 89. 44 24, 10
        mov     dword [esp+0CH], 3                      ; 0526 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 15                      ; 052E _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 0536 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0539 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 053D _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0540 _ 89. 04 24
        call    _boxfill8                               ; 0543 _ E8, 00000494
        mov     eax, dword [ebp+10H]                    ; 0548 _ 8B. 45, 10
        lea     edx, [eax-5H]                           ; 054B _ 8D. 50, FB
        mov     eax, dword [ebp+10H]                    ; 054E _ 8B. 45, 10
        sub     eax, 11                                 ; 0551 _ 83. E8, 0B
        mov     dword [esp+18H], edx                    ; 0554 _ 89. 54 24, 18
        mov     dword [esp+14H], 30                     ; 0558 _ C7. 44 24, 14, 0000001E
        mov     dword [esp+10H], eax                    ; 0560 _ 89. 44 24, 10
        mov     dword [esp+0CH], 30                     ; 0564 _ C7. 44 24, 0C, 0000001E
        mov     dword [esp+8H], 15                      ; 056C _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 0574 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0577 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 057B _ 8B. 45, 08
        mov     dword [esp], eax                        ; 057E _ 89. 04 24
        call    _boxfill8                               ; 0581 _ E8, 00000456
        mov     eax, dword [ebp+10H]                    ; 0586 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 0589 _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 058C _ 8B. 45, 10
        sub     eax, 3                                  ; 058F _ 83. E8, 03
        mov     dword [esp+18H], edx                    ; 0592 _ 89. 54 24, 18
        mov     dword [esp+14H], 30                     ; 0596 _ C7. 44 24, 14, 0000001E
        mov     dword [esp+10H], eax                    ; 059E _ 89. 44 24, 10
        mov     dword [esp+0CH], 2                      ; 05A2 _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 0                       ; 05AA _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp+0CH]                    ; 05B2 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 05B5 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 05B9 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 05BC _ 89. 04 24
        call    _boxfill8                               ; 05BF _ E8, 00000418
        mov     eax, dword [ebp+10H]                    ; 05C4 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 05C7 _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 05CA _ 8B. 45, 10
        sub     eax, 12                                 ; 05CD _ 83. E8, 0C
        mov     dword [esp+18H], edx                    ; 05D0 _ 89. 54 24, 18
        mov     dword [esp+14H], 31                     ; 05D4 _ C7. 44 24, 14, 0000001F
        mov     dword [esp+10H], eax                    ; 05DC _ 89. 44 24, 10
        mov     dword [esp+0CH], 31                     ; 05E0 _ C7. 44 24, 0C, 0000001F
        mov     dword [esp+8H], 0                       ; 05E8 _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp+0CH]                    ; 05F0 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 05F3 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 05F7 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 05FA _ 89. 04 24
        call    _boxfill8                               ; 05FD _ E8, 000003DA
        mov     eax, dword [ebp+10H]                    ; 0602 _ 8B. 45, 10
        lea     ebx, [eax-0CH]                          ; 0605 _ 8D. 58, F4
        mov     eax, dword [ebp+0CH]                    ; 0608 _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 060B _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 060E _ 8B. 45, 10
        lea     edx, [eax-0CH]                          ; 0611 _ 8D. 50, F4
        mov     eax, dword [ebp+0CH]                    ; 0614 _ 8B. 45, 0C
        sub     eax, 36                                 ; 0617 _ 83. E8, 24
        mov     dword [esp+18H], ebx                    ; 061A _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 061E _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 0622 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 0626 _ 89. 44 24, 0C
        mov     dword [esp+8H], 15                      ; 062A _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 0632 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0635 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0639 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 063C _ 89. 04 24
        call    _boxfill8                               ; 063F _ E8, 00000398
        mov     eax, dword [ebp+10H]                    ; 0644 _ 8B. 45, 10
        lea     ebx, [eax-4H]                           ; 0647 _ 8D. 58, FC
        mov     eax, dword [ebp+0CH]                    ; 064A _ 8B. 45, 0C
        lea     ecx, [eax-24H]                          ; 064D _ 8D. 48, DC
        mov     eax, dword [ebp+10H]                    ; 0650 _ 8B. 45, 10
        lea     edx, [eax-0BH]                          ; 0653 _ 8D. 50, F5
        mov     eax, dword [ebp+0CH]                    ; 0656 _ 8B. 45, 0C
        sub     eax, 36                                 ; 0659 _ 83. E8, 24
        mov     dword [esp+18H], ebx                    ; 065C _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 0660 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 0664 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 0668 _ 89. 44 24, 0C
        mov     dword [esp+8H], 15                      ; 066C _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 0674 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0677 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 067B _ 8B. 45, 08
        mov     dword [esp], eax                        ; 067E _ 89. 04 24
        call    _boxfill8                               ; 0681 _ E8, 00000356
        mov     eax, dword [ebp+10H]                    ; 0686 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 0689 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 068C _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 068F _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 0692 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 0695 _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 0698 _ 8B. 45, 0C
        sub     eax, 36                                 ; 069B _ 83. E8, 24
        mov     dword [esp+18H], ebx                    ; 069E _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 06A2 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 06A6 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 06AA _ 89. 44 24, 0C
        mov     dword [esp+8H], 7                       ; 06AE _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 06B6 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 06B9 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 06BD _ 8B. 45, 08
        mov     dword [esp], eax                        ; 06C0 _ 89. 04 24
        call    _boxfill8                               ; 06C3 _ E8, 00000314
        mov     eax, dword [ebp+10H]                    ; 06C8 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 06CB _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 06CE _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 06D1 _ 8D. 48, FD
        mov     eax, dword [ebp+10H]                    ; 06D4 _ 8B. 45, 10
        lea     edx, [eax-0CH]                          ; 06D7 _ 8D. 50, F4
        mov     eax, dword [ebp+0CH]                    ; 06DA _ 8B. 45, 0C
        sub     eax, 3                                  ; 06DD _ 83. E8, 03
        mov     dword [esp+18H], ebx                    ; 06E0 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 06E4 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 06E8 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 06EC _ 89. 44 24, 0C
        mov     dword [esp+8H], 7                       ; 06F0 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 06F8 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 06FB _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 06FF _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0702 _ 89. 04 24
        call    _boxfill8                               ; 0705 _ E8, 000002D2
        nop                                             ; 070A _ 90
        add     esp, 36                                 ; 070B _ 83. C4, 24
        pop     ebx                                     ; 070E _ 5B
        pop     ebp                                     ; 070F _ 5D
        ret                                             ; 0710 _ C3
; _init_screen8 End of function

_computeMousePosition:; Function begin
        push    ebp                                     ; 0711 _ 55
        mov     ebp, esp                                ; 0712 _ 89. E5
        sub     esp, 40                                 ; 0714 _ 83. EC, 28
        mov     eax, dword [ebp+10H]                    ; 0717 _ 8B. 45, 10
        mov     edx, dword [eax+4H]                     ; 071A _ 8B. 50, 04
        mov     eax, dword [_mx]                        ; 071D _ A1, 000000F0(d)
        add     eax, edx                                ; 0722 _ 01. D0
        mov     dword [_mx], eax                        ; 0724 _ A3, 000000F0(d)
        mov     eax, dword [ebp+10H]                    ; 0729 _ 8B. 45, 10
        mov     edx, dword [eax+8H]                     ; 072C _ 8B. 50, 08
        mov     eax, dword [_my]                        ; 072F _ A1, 000000F4(d)
        add     eax, edx                                ; 0734 _ 01. D0
        mov     dword [_my], eax                        ; 0736 _ A3, 000000F4(d)
        mov     eax, dword [_mx]                        ; 073B _ A1, 000000F0(d)
        test    eax, eax                                ; 0740 _ 85. C0
        jns     ?_004                                   ; 0742 _ 79, 0A
        mov     dword [_mx], 0                          ; 0744 _ C7. 05, 000000F0(d), 00000000
?_004:  mov     eax, dword [_my]                        ; 074E _ A1, 000000F4(d)
        test    eax, eax                                ; 0753 _ 85. C0
        jns     ?_005                                   ; 0755 _ 79, 0A
        mov     dword [_my], 0                          ; 0757 _ C7. 05, 000000F4(d), 00000000
?_005:  mov     edx, dword [_xsize]                     ; 0761 _ 8B. 15, 000000F8(d)
        mov     eax, dword [_mx]                        ; 0767 _ A1, 000000F0(d)
        cmp     edx, eax                                ; 076C _ 39. C2
        jg      ?_006                                   ; 076E _ 7F, 0D
        mov     eax, dword [_xsize]                     ; 0770 _ A1, 000000F8(d)
        sub     eax, 1                                  ; 0775 _ 83. E8, 01
        mov     dword [_mx], eax                        ; 0778 _ A3, 000000F0(d)
?_006:  mov     edx, dword [_ysize]                     ; 077D _ 8B. 15, 000000FC(d)
        mov     eax, dword [_my]                        ; 0783 _ A1, 000000F4(d)
        cmp     edx, eax                                ; 0788 _ 39. C2
        jg      ?_007                                   ; 078A _ 7F, 0D
        mov     eax, dword [_ysize]                     ; 078C _ A1, 000000FC(d)
        sub     eax, 1                                  ; 0791 _ 83. E8, 01
        mov     dword [_my], eax                        ; 0794 _ A3, 000000F4(d)
?_007:  mov     dword [esp+14H], ?_132                  ; 0799 _ C7. 44 24, 14, 00000008(d)
        mov     dword [esp+10H], 7                      ; 07A1 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 0                      ; 07A9 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 07B1 _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp+0CH]                    ; 07B9 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 07BC _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 07C0 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 07C3 _ 89. 04 24
        call    _showString                             ; 07C6 _ E8, 000000A4
        nop                                             ; 07CB _ 90
        leave                                           ; 07CC _ C9
        ret                                             ; 07CD _ C3
; _computeMousePosition End of function

_show_mouse_info:; Function begin
        push    ebp                                     ; 07CE _ 55
        mov     ebp, esp                                ; 07CF _ 89. E5
        sub     esp, 40                                 ; 07D1 _ 83. EC, 28
        mov     eax, dword [_buf_back]                  ; 07D4 _ A1, 00000100(d)
        mov     dword [ebp-0CH], eax                    ; 07D9 _ 89. 45, F4
        mov     byte [ebp-0DH], 0                       ; 07DC _ C6. 45, F3, 00
        call    _io_sti                                 ; 07E0 _ E8, 00000000(rel)
        mov     dword [esp], _mouseinfo                 ; 07E5 _ C7. 04 24, 00000020(d)
        call    _fifo8_get                              ; 07EC _ E8, 0000081D
        mov     byte [ebp-0DH], al                      ; 07F1 _ 88. 45, F3
        movzx   eax, byte [ebp-0DH]                     ; 07F4 _ 0F B6. 45, F3
        mov     dword [esp+4H], eax                     ; 07F8 _ 89. 44 24, 04
        mov     dword [esp], _mdec                      ; 07FC _ C7. 04 24, 000000E0(d)
        call    _mouse_decode                           ; 0803 _ E8, 0000088B
        test    eax, eax                                ; 0808 _ 85. C0
        jz      ?_008                                   ; 080A _ 74, 3F
        mov     dword [esp+8H], _mdec                   ; 080C _ C7. 44 24, 08, 000000E0(d)
        mov     eax, dword [ebp+0CH]                    ; 0814 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0817 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 081B _ 8B. 45, 08
        mov     dword [esp], eax                        ; 081E _ 89. 04 24
        call    _computeMousePosition                   ; 0821 _ E8, FFFFFEEB
        mov     edx, dword [_my]                        ; 0826 _ 8B. 15, 000000F4(d)
        mov     eax, dword [_mx]                        ; 082C _ A1, 000000F0(d)
        mov     dword [esp+0CH], edx                    ; 0831 _ 89. 54 24, 0C
        mov     dword [esp+8H], eax                     ; 0835 _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 0839 _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 083C _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0840 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0843 _ 89. 04 24
        call    _sheet_slide                            ; 0846 _ E8, 00000000(rel)
?_008:  nop                                             ; 084B _ 90
        leave                                           ; 084C _ C9
        ret                                             ; 084D _ C3
; _show_mouse_info End of function

_initBootInfo:; Function begin
        push    ebp                                     ; 084E _ 55
        mov     ebp, esp                                ; 084F _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0851 _ 8B. 45, 08
        mov     dword [eax], 655360                     ; 0854 _ C7. 00, 000A0000
        mov     eax, dword [ebp+8H]                     ; 085A _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 320                      ; 085D _ 66: C7. 40, 04, 0140
        mov     eax, dword [ebp+8H]                     ; 0863 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 200                      ; 0866 _ 66: C7. 40, 06, 00C8
        nop                                             ; 086C _ 90
        pop     ebp                                     ; 086D _ 5D
        ret                                             ; 086E _ C3
; _initBootInfo End of function

_showString:; Function begin
        push    ebp                                     ; 086F _ 55
        mov     ebp, esp                                ; 0870 _ 89. E5
        push    ebx                                     ; 0872 _ 53
        sub     esp, 68                                 ; 0873 _ 83. EC, 44
        mov     eax, dword [ebp+18H]                    ; 0876 _ 8B. 45, 18
        mov     byte [ebp-1CH], al                      ; 0879 _ 88. 45, E4
        mov     eax, dword [ebp+10H]                    ; 087C _ 8B. 45, 10
        mov     dword [ebp-0CH], eax                    ; 087F _ 89. 45, F4
        jmp     ?_010                                   ; 0882 _ EB, 4B

?_009:  mov     eax, dword [ebp+1CH]                    ; 0884 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 0887 _ 0F B6. 00
        movzx   eax, al                                 ; 088A _ 0F B6. C0
        shl     eax, 4                                  ; 088D _ C1. E0, 04
        lea     ebx, [_systemFont+eax]                  ; 0890 _ 8D. 98, 00000000(d)
        movsx   eax, byte [ebp-1CH]                     ; 0896 _ 0F BE. 45, E4
        mov     edx, dword [ebp+0CH]                    ; 089A _ 8B. 55, 0C
        mov     ecx, dword [edx+4H]                     ; 089D _ 8B. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 08A0 _ 8B. 55, 0C
        mov     edx, dword [edx]                        ; 08A3 _ 8B. 12
        mov     dword [esp+14H], ebx                    ; 08A5 _ 89. 5C 24, 14
        mov     dword [esp+10H], eax                    ; 08A9 _ 89. 44 24, 10
        mov     eax, dword [ebp+14H]                    ; 08AD _ 8B. 45, 14
        mov     dword [esp+0CH], eax                    ; 08B0 _ 89. 44 24, 0C
        mov     eax, dword [ebp+10H]                    ; 08B4 _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 08B7 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 08BB _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 08BF _ 89. 14 24
        call    _showFont8                              ; 08C2 _ E8, 00000165
        add     dword [ebp+10H], 8                      ; 08C7 _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 08CB _ 83. 45, 1C, 01
?_010:  mov     eax, dword [ebp+1CH]                    ; 08CF _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 08D2 _ 0F B6. 00
        test    al, al                                  ; 08D5 _ 84. C0
        jnz     ?_009                                   ; 08D7 _ 75, AB
        mov     eax, dword [ebp+14H]                    ; 08D9 _ 8B. 45, 14
        add     eax, 16                                 ; 08DC _ 83. C0, 10
        mov     dword [esp+14H], eax                    ; 08DF _ 89. 44 24, 14
        mov     eax, dword [ebp+10H]                    ; 08E3 _ 8B. 45, 10
        mov     dword [esp+10H], eax                    ; 08E6 _ 89. 44 24, 10
        mov     eax, dword [ebp+14H]                    ; 08EA _ 8B. 45, 14
        mov     dword [esp+0CH], eax                    ; 08ED _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 08F1 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 08F4 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 08F8 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 08FB _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 08FF _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0902 _ 89. 04 24
        call    _sheet_refresh                          ; 0905 _ E8, 00000000(rel)
        nop                                             ; 090A _ 90
        add     esp, 68                                 ; 090B _ 83. C4, 44
        pop     ebx                                     ; 090E _ 5B
        pop     ebp                                     ; 090F _ 5D
        ret                                             ; 0910 _ C3
; _showString End of function

_init_palette:; Function begin
        push    ebp                                     ; 0911 _ 55
        mov     ebp, esp                                ; 0912 _ 89. E5
        sub     esp, 24                                 ; 0914 _ 83. EC, 18
        mov     dword [esp+8H], _table_rgb.2189         ; 0917 _ C7. 44 24, 08, 00000020(d)
        mov     dword [esp+4H], 15                      ; 091F _ C7. 44 24, 04, 0000000F
        mov     dword [esp], 0                          ; 0927 _ C7. 04 24, 00000000
        call    _set_palette                            ; 092E _ E8, 00000003
        nop                                             ; 0933 _ 90
        leave                                           ; 0934 _ C9
        ret                                             ; 0935 _ C3
; _init_palette End of function

_set_palette:; Function begin
        push    ebp                                     ; 0936 _ 55
        mov     ebp, esp                                ; 0937 _ 89. E5
        sub     esp, 40                                 ; 0939 _ 83. EC, 28
        call    _io_load_eflags                         ; 093C _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 0941 _ 89. 45, F0
        call    _io_cli                                 ; 0944 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 0949 _ 8B. 45, 08
        mov     dword [esp+4H], eax                     ; 094C _ 89. 44 24, 04
        mov     dword [esp], 968                        ; 0950 _ C7. 04 24, 000003C8
        call    _io_out8                                ; 0957 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 095C _ 8B. 45, 08
        mov     dword [ebp-0CH], eax                    ; 095F _ 89. 45, F4
        jmp     ?_012                                   ; 0962 _ EB, 62

?_011:  mov     eax, dword [ebp+10H]                    ; 0964 _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 0967 _ 0F B6. 00
        shr     al, 2                                   ; 096A _ C0. E8, 02
        movzx   eax, al                                 ; 096D _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 0970 _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 0974 _ C7. 04 24, 000003C9
        call    _io_out8                                ; 097B _ E8, 00000000(rel)
        mov     eax, dword [ebp+10H]                    ; 0980 _ 8B. 45, 10
        add     eax, 1                                  ; 0983 _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 0986 _ 0F B6. 00
        shr     al, 2                                   ; 0989 _ C0. E8, 02
        movzx   eax, al                                 ; 098C _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 098F _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 0993 _ C7. 04 24, 000003C9
        call    _io_out8                                ; 099A _ E8, 00000000(rel)
        mov     eax, dword [ebp+10H]                    ; 099F _ 8B. 45, 10
        add     eax, 2                                  ; 09A2 _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 09A5 _ 0F B6. 00
        shr     al, 2                                   ; 09A8 _ C0. E8, 02
        movzx   eax, al                                 ; 09AB _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 09AE _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 09B2 _ C7. 04 24, 000003C9
        call    _io_out8                                ; 09B9 _ E8, 00000000(rel)
        add     dword [ebp+10H], 3                      ; 09BE _ 83. 45, 10, 03
        add     dword [ebp-0CH], 1                      ; 09C2 _ 83. 45, F4, 01
?_012:  mov     eax, dword [ebp-0CH]                    ; 09C6 _ 8B. 45, F4
        cmp     eax, dword [ebp+0CH]                    ; 09C9 _ 3B. 45, 0C
        jle     ?_011                                   ; 09CC _ 7E, 96
        mov     eax, dword [ebp-10H]                    ; 09CE _ 8B. 45, F0
        mov     dword [esp], eax                        ; 09D1 _ 89. 04 24
        call    _io_store_eflags                        ; 09D4 _ E8, 00000000(rel)
        nop                                             ; 09D9 _ 90
        leave                                           ; 09DA _ C9
        ret                                             ; 09DB _ C3
; _set_palette End of function

_boxfill8:; Function begin
        push    ebp                                     ; 09DC _ 55
        mov     ebp, esp                                ; 09DD _ 89. E5
        sub     esp, 20                                 ; 09DF _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 09E2 _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 09E5 _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 09E8 _ 8B. 45, 18
        mov     dword [ebp-8H], eax                     ; 09EB _ 89. 45, F8
        jmp     ?_016                                   ; 09EE _ EB, 31

?_013:  mov     eax, dword [ebp+14H]                    ; 09F0 _ 8B. 45, 14
        mov     dword [ebp-4H], eax                     ; 09F3 _ 89. 45, FC
        jmp     ?_015                                   ; 09F6 _ EB, 1D

?_014:  mov     eax, dword [ebp-8H]                     ; 09F8 _ 8B. 45, F8
        imul    eax, dword [ebp+0CH]                    ; 09FB _ 0F AF. 45, 0C
        mov     edx, dword [ebp-4H]                     ; 09FF _ 8B. 55, FC
        add     eax, edx                                ; 0A02 _ 01. D0
        mov     edx, eax                                ; 0A04 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0A06 _ 8B. 45, 08
        add     edx, eax                                ; 0A09 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0A0B _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0A0F _ 88. 02
        add     dword [ebp-4H], 1                       ; 0A11 _ 83. 45, FC, 01
?_015:  mov     eax, dword [ebp-4H]                     ; 0A15 _ 8B. 45, FC
        cmp     eax, dword [ebp+1CH]                    ; 0A18 _ 3B. 45, 1C
        jle     ?_014                                   ; 0A1B _ 7E, DB
        add     dword [ebp-8H], 1                       ; 0A1D _ 83. 45, F8, 01
?_016:  mov     eax, dword [ebp-8H]                     ; 0A21 _ 8B. 45, F8
        cmp     eax, dword [ebp+20H]                    ; 0A24 _ 3B. 45, 20
        jle     ?_013                                   ; 0A27 _ 7E, C7
        nop                                             ; 0A29 _ 90
        leave                                           ; 0A2A _ C9
        ret                                             ; 0A2B _ C3
; _boxfill8 End of function

_showFont8:; Function begin
        push    ebp                                     ; 0A2C _ 55
        mov     ebp, esp                                ; 0A2D _ 89. E5
        sub     esp, 20                                 ; 0A2F _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 0A32 _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 0A35 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 0A38 _ C7. 45, FC, 00000000
        jmp     ?_026                                   ; 0A3F _ E9, 0000015C

?_017:  mov     edx, dword [ebp-4H]                     ; 0A44 _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 0A47 _ 8B. 45, 1C
        add     eax, edx                                ; 0A4A _ 01. D0
        movzx   eax, byte [eax]                         ; 0A4C _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 0A4F _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 0A52 _ 80. 7D, FB, 00
        jns     ?_018                                   ; 0A56 _ 79, 1E
        mov     edx, dword [ebp+14H]                    ; 0A58 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0A5B _ 8B. 45, FC
        add     eax, edx                                ; 0A5E _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0A60 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 0A64 _ 8B. 55, 10
        add     eax, edx                                ; 0A67 _ 01. D0
        mov     edx, eax                                ; 0A69 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0A6B _ 8B. 45, 08
        add     edx, eax                                ; 0A6E _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0A70 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0A74 _ 88. 02
?_018:  movsx   eax, byte [ebp-5H]                      ; 0A76 _ 0F BE. 45, FB
        and     eax, 40H                                ; 0A7A _ 83. E0, 40
        test    eax, eax                                ; 0A7D _ 85. C0
        jz      ?_019                                   ; 0A7F _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 0A81 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0A84 _ 8B. 45, FC
        add     eax, edx                                ; 0A87 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0A89 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 0A8D _ 8B. 55, 10
        add     eax, edx                                ; 0A90 _ 01. D0
        lea     edx, [eax+1H]                           ; 0A92 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0A95 _ 8B. 45, 08
        add     edx, eax                                ; 0A98 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0A9A _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0A9E _ 88. 02
?_019:  movsx   eax, byte [ebp-5H]                      ; 0AA0 _ 0F BE. 45, FB
        and     eax, 20H                                ; 0AA4 _ 83. E0, 20
        test    eax, eax                                ; 0AA7 _ 85. C0
        jz      ?_020                                   ; 0AA9 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 0AAB _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0AAE _ 8B. 45, FC
        add     eax, edx                                ; 0AB1 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0AB3 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 0AB7 _ 8B. 55, 10
        add     eax, edx                                ; 0ABA _ 01. D0
        lea     edx, [eax+2H]                           ; 0ABC _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 0ABF _ 8B. 45, 08
        add     edx, eax                                ; 0AC2 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0AC4 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0AC8 _ 88. 02
?_020:  movsx   eax, byte [ebp-5H]                      ; 0ACA _ 0F BE. 45, FB
        and     eax, 10H                                ; 0ACE _ 83. E0, 10
        test    eax, eax                                ; 0AD1 _ 85. C0
        jz      ?_021                                   ; 0AD3 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 0AD5 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0AD8 _ 8B. 45, FC
        add     eax, edx                                ; 0ADB _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0ADD _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 0AE1 _ 8B. 55, 10
        add     eax, edx                                ; 0AE4 _ 01. D0
        lea     edx, [eax+3H]                           ; 0AE6 _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 0AE9 _ 8B. 45, 08
        add     edx, eax                                ; 0AEC _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0AEE _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0AF2 _ 88. 02
?_021:  movsx   eax, byte [ebp-5H]                      ; 0AF4 _ 0F BE. 45, FB
        and     eax, 08H                                ; 0AF8 _ 83. E0, 08
        test    eax, eax                                ; 0AFB _ 85. C0
        jz      ?_022                                   ; 0AFD _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 0AFF _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0B02 _ 8B. 45, FC
        add     eax, edx                                ; 0B05 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0B07 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 0B0B _ 8B. 55, 10
        add     eax, edx                                ; 0B0E _ 01. D0
        lea     edx, [eax+4H]                           ; 0B10 _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0B13 _ 8B. 45, 08
        add     edx, eax                                ; 0B16 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0B18 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0B1C _ 88. 02
?_022:  movsx   eax, byte [ebp-5H]                      ; 0B1E _ 0F BE. 45, FB
        and     eax, 04H                                ; 0B22 _ 83. E0, 04
        test    eax, eax                                ; 0B25 _ 85. C0
        jz      ?_023                                   ; 0B27 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 0B29 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0B2C _ 8B. 45, FC
        add     eax, edx                                ; 0B2F _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0B31 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 0B35 _ 8B. 55, 10
        add     eax, edx                                ; 0B38 _ 01. D0
        lea     edx, [eax+5H]                           ; 0B3A _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 0B3D _ 8B. 45, 08
        add     edx, eax                                ; 0B40 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0B42 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0B46 _ 88. 02
?_023:  movsx   eax, byte [ebp-5H]                      ; 0B48 _ 0F BE. 45, FB
        and     eax, 02H                                ; 0B4C _ 83. E0, 02
        test    eax, eax                                ; 0B4F _ 85. C0
        jz      ?_024                                   ; 0B51 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 0B53 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0B56 _ 8B. 45, FC
        add     eax, edx                                ; 0B59 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0B5B _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 0B5F _ 8B. 55, 10
        add     eax, edx                                ; 0B62 _ 01. D0
        lea     edx, [eax+6H]                           ; 0B64 _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 0B67 _ 8B. 45, 08
        add     edx, eax                                ; 0B6A _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0B6C _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0B70 _ 88. 02
?_024:  movsx   eax, byte [ebp-5H]                      ; 0B72 _ 0F BE. 45, FB
        and     eax, 01H                                ; 0B76 _ 83. E0, 01
        test    eax, eax                                ; 0B79 _ 85. C0
        jz      ?_025                                   ; 0B7B _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 0B7D _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0B80 _ 8B. 45, FC
        add     eax, edx                                ; 0B83 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0B85 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 0B89 _ 8B. 55, 10
        add     eax, edx                                ; 0B8C _ 01. D0
        lea     edx, [eax+7H]                           ; 0B8E _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 0B91 _ 8B. 45, 08
        add     edx, eax                                ; 0B94 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0B96 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0B9A _ 88. 02
?_025:  add     dword [ebp-4H], 1                       ; 0B9C _ 83. 45, FC, 01
?_026:  cmp     dword [ebp-4H], 15                      ; 0BA0 _ 83. 7D, FC, 0F
        jle     ?_017                                   ; 0BA4 _ 0F 8E, FFFFFE9A
        nop                                             ; 0BAA _ 90
        leave                                           ; 0BAB _ C9
        ret                                             ; 0BAC _ C3
; _showFont8 End of function

_init_mouse_cursor:; Function begin
        push    ebp                                     ; 0BAD _ 55
        mov     ebp, esp                                ; 0BAE _ 89. E5
        sub     esp, 20                                 ; 0BB0 _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 0BB3 _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 0BB6 _ 88. 45, EC
        mov     dword [ebp-8H], 0                       ; 0BB9 _ C7. 45, F8, 00000000
        jmp     ?_033                                   ; 0BC0 _ E9, 000000B1

?_027:  mov     dword [ebp-4H], 0                       ; 0BC5 _ C7. 45, FC, 00000000
        jmp     ?_032                                   ; 0BCC _ E9, 00000097

?_028:  mov     eax, dword [ebp-8H]                     ; 0BD1 _ 8B. 45, F8
        shl     eax, 4                                  ; 0BD4 _ C1. E0, 04
        mov     edx, eax                                ; 0BD7 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 0BD9 _ 8B. 45, FC
        add     eax, edx                                ; 0BDC _ 01. D0
        add     eax, _cursor.2236                       ; 0BDE _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 0BE3 _ 0F B6. 00
        cmp     al, 42                                  ; 0BE6 _ 3C, 2A
        jnz     ?_029                                   ; 0BE8 _ 75, 17
        mov     eax, dword [ebp-8H]                     ; 0BEA _ 8B. 45, F8
        shl     eax, 4                                  ; 0BED _ C1. E0, 04
        mov     edx, eax                                ; 0BF0 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 0BF2 _ 8B. 45, FC
        add     eax, edx                                ; 0BF5 _ 01. D0
        mov     edx, eax                                ; 0BF7 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0BF9 _ 8B. 45, 08
        add     eax, edx                                ; 0BFC _ 01. D0
        mov     byte [eax], 0                           ; 0BFE _ C6. 00, 00
?_029:  mov     eax, dword [ebp-8H]                     ; 0C01 _ 8B. 45, F8
        shl     eax, 4                                  ; 0C04 _ C1. E0, 04
        mov     edx, eax                                ; 0C07 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 0C09 _ 8B. 45, FC
        add     eax, edx                                ; 0C0C _ 01. D0
        add     eax, _cursor.2236                       ; 0C0E _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 0C13 _ 0F B6. 00
        cmp     al, 79                                  ; 0C16 _ 3C, 4F
        jnz     ?_030                                   ; 0C18 _ 75, 17
        mov     eax, dword [ebp-8H]                     ; 0C1A _ 8B. 45, F8
        shl     eax, 4                                  ; 0C1D _ C1. E0, 04
        mov     edx, eax                                ; 0C20 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 0C22 _ 8B. 45, FC
        add     eax, edx                                ; 0C25 _ 01. D0
        mov     edx, eax                                ; 0C27 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0C29 _ 8B. 45, 08
        add     eax, edx                                ; 0C2C _ 01. D0
        mov     byte [eax], 7                           ; 0C2E _ C6. 00, 07
?_030:  mov     eax, dword [ebp-8H]                     ; 0C31 _ 8B. 45, F8
        shl     eax, 4                                  ; 0C34 _ C1. E0, 04
        mov     edx, eax                                ; 0C37 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 0C39 _ 8B. 45, FC
        add     eax, edx                                ; 0C3C _ 01. D0
        add     eax, _cursor.2236                       ; 0C3E _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 0C43 _ 0F B6. 00
        cmp     al, 46                                  ; 0C46 _ 3C, 2E
        jnz     ?_031                                   ; 0C48 _ 75, 1A
        mov     eax, dword [ebp-8H]                     ; 0C4A _ 8B. 45, F8
        shl     eax, 4                                  ; 0C4D _ C1. E0, 04
        mov     edx, eax                                ; 0C50 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 0C52 _ 8B. 45, FC
        add     eax, edx                                ; 0C55 _ 01. D0
        mov     edx, eax                                ; 0C57 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0C59 _ 8B. 45, 08
        add     edx, eax                                ; 0C5C _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0C5E _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0C62 _ 88. 02
?_031:  add     dword [ebp-4H], 1                       ; 0C64 _ 83. 45, FC, 01
?_032:  cmp     dword [ebp-4H], 15                      ; 0C68 _ 83. 7D, FC, 0F
        jle     ?_028                                   ; 0C6C _ 0F 8E, FFFFFF5F
        add     dword [ebp-8H], 1                       ; 0C72 _ 83. 45, F8, 01
?_033:  cmp     dword [ebp-8H], 15                      ; 0C76 _ 83. 7D, F8, 0F
        jle     ?_027                                   ; 0C7A _ 0F 8E, FFFFFF45
        nop                                             ; 0C80 _ 90
        leave                                           ; 0C81 _ C9
        ret                                             ; 0C82 _ C3
; _init_mouse_cursor End of function

_putblock:; Function begin
        push    ebp                                     ; 0C83 _ 55
        mov     ebp, esp                                ; 0C84 _ 89. E5
        push    ebx                                     ; 0C86 _ 53
        sub     esp, 16                                 ; 0C87 _ 83. EC, 10
        mov     dword [ebp-0CH], 0                      ; 0C8A _ C7. 45, F4, 00000000
        jmp     ?_037                                   ; 0C91 _ EB, 4E

?_034:  mov     dword [ebp-8H], 0                       ; 0C93 _ C7. 45, F8, 00000000
        jmp     ?_036                                   ; 0C9A _ EB, 39

?_035:  mov     eax, dword [ebp-0CH]                    ; 0C9C _ 8B. 45, F4
        imul    eax, dword [ebp+24H]                    ; 0C9F _ 0F AF. 45, 24
        mov     edx, dword [ebp-8H]                     ; 0CA3 _ 8B. 55, F8
        add     eax, edx                                ; 0CA6 _ 01. D0
        mov     edx, eax                                ; 0CA8 _ 89. C2
        mov     eax, dword [ebp+20H]                    ; 0CAA _ 8B. 45, 20
        add     eax, edx                                ; 0CAD _ 01. D0
        mov     ecx, dword [ebp+1CH]                    ; 0CAF _ 8B. 4D, 1C
        mov     edx, dword [ebp-0CH]                    ; 0CB2 _ 8B. 55, F4
        add     edx, ecx                                ; 0CB5 _ 01. CA
        imul    edx, dword [ebp+0CH]                    ; 0CB7 _ 0F AF. 55, 0C
        mov     ebx, dword [ebp+18H]                    ; 0CBB _ 8B. 5D, 18
        mov     ecx, dword [ebp-8H]                     ; 0CBE _ 8B. 4D, F8
        add     ecx, ebx                                ; 0CC1 _ 01. D9
        add     edx, ecx                                ; 0CC3 _ 01. CA
        mov     ecx, edx                                ; 0CC5 _ 89. D1
        mov     edx, dword [ebp+8H]                     ; 0CC7 _ 8B. 55, 08
        add     edx, ecx                                ; 0CCA _ 01. CA
        movzx   eax, byte [eax]                         ; 0CCC _ 0F B6. 00
        mov     byte [edx], al                          ; 0CCF _ 88. 02
        add     dword [ebp-8H], 1                       ; 0CD1 _ 83. 45, F8, 01
?_036:  mov     eax, dword [ebp-8H]                     ; 0CD5 _ 8B. 45, F8
        cmp     eax, dword [ebp+10H]                    ; 0CD8 _ 3B. 45, 10
        jl      ?_035                                   ; 0CDB _ 7C, BF
        add     dword [ebp-0CH], 1                      ; 0CDD _ 83. 45, F4, 01
?_037:  mov     eax, dword [ebp-0CH]                    ; 0CE1 _ 8B. 45, F4
        cmp     eax, dword [ebp+14H]                    ; 0CE4 _ 3B. 45, 14
        jl      ?_034                                   ; 0CE7 _ 7C, AA
        nop                                             ; 0CE9 _ 90
        add     esp, 16                                 ; 0CEA _ 83. C4, 10
        pop     ebx                                     ; 0CED _ 5B
        pop     ebp                                     ; 0CEE _ 5D
        ret                                             ; 0CEF _ C3
; _putblock End of function

_intHandlerFromC:; Function begin
        push    ebp                                     ; 0CF0 _ 55
        mov     ebp, esp                                ; 0CF1 _ 89. E5
        sub     esp, 40                                 ; 0CF3 _ 83. EC, 28
        mov     eax, dword [_bootInfo]                  ; 0CF6 _ A1, 00000000(d)
        mov     dword [ebp-0CH], eax                    ; 0CFB _ 89. 45, F4
        movzx   eax, word [?_141]                       ; 0CFE _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0D05 _ 98
        mov     dword [ebp-10H], eax                    ; 0D06 _ 89. 45, F0
        movzx   eax, word [?_142]                       ; 0D09 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 0D10 _ 98
        mov     dword [ebp-14H], eax                    ; 0D11 _ 89. 45, EC
        mov     dword [esp+4H], 32                      ; 0D14 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 0D1C _ C7. 04 24, 00000020
        call    _io_out8                                ; 0D23 _ E8, 00000000(rel)
        mov     byte [ebp-15H], 0                       ; 0D28 _ C6. 45, EB, 00
        mov     dword [esp], 96                         ; 0D2C _ C7. 04 24, 00000060
        call    _io_in8                                 ; 0D33 _ E8, 00000000(rel)
        mov     byte [ebp-15H], al                      ; 0D38 _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 0D3B _ 0F B6. 45, EB
        mov     dword [esp+4H], eax                     ; 0D3F _ 89. 44 24, 04
        mov     dword [esp], _keyinfo                   ; 0D43 _ C7. 04 24, 00000008(d)
        call    _fifo8_put                              ; 0D4A _ E8, 0000023F
        nop                                             ; 0D4F _ 90
        leave                                           ; 0D50 _ C9
        ret                                             ; 0D51 _ C3
; _intHandlerFromC End of function

_charToHexVal:; Function begin
        push    ebp                                     ; 0D52 _ 55
        mov     ebp, esp                                ; 0D53 _ 89. E5
        sub     esp, 4                                  ; 0D55 _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 0D58 _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 0D5B _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 0D5E _ 80. 7D, FC, 09
        jle     ?_038                                   ; 0D62 _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 0D64 _ 0F B6. 45, FC
        add     eax, 55                                 ; 0D68 _ 83. C0, 37
        jmp     ?_039                                   ; 0D6B _ EB, 07

?_038:  movzx   eax, byte [ebp-4H]                      ; 0D6D _ 0F B6. 45, FC
        add     eax, 48                                 ; 0D71 _ 83. C0, 30
?_039:  leave                                           ; 0D74 _ C9
        ret                                             ; 0D75 _ C3
; _charToHexVal End of function

_charToHexStr:; Function begin
        push    ebp                                     ; 0D76 _ 55
        mov     ebp, esp                                ; 0D77 _ 89. E5
        sub     esp, 24                                 ; 0D79 _ 83. EC, 18
        mov     eax, dword [ebp+8H]                     ; 0D7C _ 8B. 45, 08
        mov     byte [ebp-14H], al                      ; 0D7F _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 0D82 _ C7. 45, FC, 00000000
        movzx   eax, byte [ebp-14H]                     ; 0D89 _ 0F B6. 45, EC
        and     eax, 0FH                                ; 0D8D _ 83. E0, 0F
        mov     byte [ebp-5H], al                       ; 0D90 _ 88. 45, FB
        movsx   eax, byte [ebp-5H]                      ; 0D93 _ 0F BE. 45, FB
        mov     dword [esp], eax                        ; 0D97 _ 89. 04 24
        call    _charToHexVal                           ; 0D9A _ E8, FFFFFFB3
        mov     byte [?_130], al                        ; 0D9F _ A2, 00000007(d)
        movzx   eax, byte [ebp-14H]                     ; 0DA4 _ 0F B6. 45, EC
        shr     al, 4                                   ; 0DA8 _ C0. E8, 04
        mov     byte [ebp-14H], al                      ; 0DAB _ 88. 45, EC
        movzx   eax, byte [ebp-14H]                     ; 0DAE _ 0F B6. 45, EC
        movsx   eax, al                                 ; 0DB2 _ 0F BE. C0
        mov     dword [esp], eax                        ; 0DB5 _ 89. 04 24
        call    _charToHexVal                           ; 0DB8 _ E8, FFFFFF95
        mov     byte [?_129], al                        ; 0DBD _ A2, 00000006(d)
        mov     eax, _keyval                            ; 0DC2 _ B8, 00000004(d)
        leave                                           ; 0DC7 _ C9
        ret                                             ; 0DC8 _ C3
; _charToHexStr End of function

_intToHexStr:; Function begin
        push    ebp                                     ; 0DC9 _ 55
        mov     ebp, esp                                ; 0DCA _ 89. E5
        sub     esp, 16                                 ; 0DCC _ 83. EC, 10
        mov     byte [_str.2284], 48                    ; 0DCF _ C6. 05, 00000220(d), 30
        mov     byte [?_143], 88                        ; 0DD6 _ C6. 05, 00000221(d), 58
        mov     byte [?_144], 0                         ; 0DDD _ C6. 05, 0000022A(d), 00
        mov     dword [ebp-4H], 2                       ; 0DE4 _ C7. 45, FC, 00000002
        jmp     ?_041                                   ; 0DEB _ EB, 0F

?_040:  mov     eax, dword [ebp-4H]                     ; 0DED _ 8B. 45, FC
        add     eax, _str.2284                          ; 0DF0 _ 05, 00000220(d)
        mov     byte [eax], 48                          ; 0DF5 _ C6. 00, 30
        add     dword [ebp-4H], 1                       ; 0DF8 _ 83. 45, FC, 01
?_041:  cmp     dword [ebp-4H], 9                       ; 0DFC _ 83. 7D, FC, 09
        jle     ?_040                                   ; 0E00 _ 7E, EB
        mov     dword [ebp-8H], 9                       ; 0E02 _ C7. 45, F8, 00000009
        jmp     ?_045                                   ; 0E09 _ EB, 42

?_042:  mov     eax, dword [ebp+8H]                     ; 0E0B _ 8B. 45, 08
        and     eax, 0FH                                ; 0E0E _ 83. E0, 0F
        mov     dword [ebp-0CH], eax                    ; 0E11 _ 89. 45, F4
        mov     eax, dword [ebp+8H]                     ; 0E14 _ 8B. 45, 08
        shr     eax, 4                                  ; 0E17 _ C1. E8, 04
        mov     dword [ebp+8H], eax                     ; 0E1A _ 89. 45, 08
        cmp     dword [ebp-0CH], 9                      ; 0E1D _ 83. 7D, F4, 09
        jle     ?_043                                   ; 0E21 _ 7E, 14
        mov     eax, dword [ebp-0CH]                    ; 0E23 _ 8B. 45, F4
        add     eax, 55                                 ; 0E26 _ 83. C0, 37
        mov     edx, eax                                ; 0E29 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0E2B _ 8B. 45, F8
        add     eax, _str.2284                          ; 0E2E _ 05, 00000220(d)
        mov     byte [eax], dl                          ; 0E33 _ 88. 10
        jmp     ?_044                                   ; 0E35 _ EB, 12

?_043:  mov     eax, dword [ebp-0CH]                    ; 0E37 _ 8B. 45, F4
        add     eax, 48                                 ; 0E3A _ 83. C0, 30
        mov     edx, eax                                ; 0E3D _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0E3F _ 8B. 45, F8
        add     eax, _str.2284                          ; 0E42 _ 05, 00000220(d)
        mov     byte [eax], dl                          ; 0E47 _ 88. 10
?_044:  sub     dword [ebp-8H], 1                       ; 0E49 _ 83. 6D, F8, 01
?_045:  cmp     dword [ebp-8H], 1                       ; 0E4D _ 83. 7D, F8, 01
        jle     ?_046                                   ; 0E51 _ 7E, 06
        cmp     dword [ebp+8H], 0                       ; 0E53 _ 83. 7D, 08, 00
        jnz     ?_042                                   ; 0E57 _ 75, B2
?_046:  mov     eax, _str.2284                          ; 0E59 _ B8, 00000220(d)
        leave                                           ; 0E5E _ C9
        ret                                             ; 0E5F _ C3
; _intToHexStr End of function

_wait_KBC_sendready:; Function begin
        push    ebp                                     ; 0E60 _ 55
        mov     ebp, esp                                ; 0E61 _ 89. E5
        sub     esp, 24                                 ; 0E63 _ 83. EC, 18
?_047:  mov     dword [esp], 100                        ; 0E66 _ C7. 04 24, 00000064
        call    _io_in8                                 ; 0E6D _ E8, 00000000(rel)
        and     eax, 02H                                ; 0E72 _ 83. E0, 02
        test    eax, eax                                ; 0E75 _ 85. C0
        jz      ?_048                                   ; 0E77 _ 74, 02
        jmp     ?_047                                   ; 0E79 _ EB, EB
; _wait_KBC_sendready End of function

?_048:  ; Local function
        nop                                             ; 0E7B _ 90
        nop                                             ; 0E7C _ 90
        leave                                           ; 0E7D _ C9
        ret                                             ; 0E7E _ C3

_init_keyboard:; Function begin
        push    ebp                                     ; 0E7F _ 55
        mov     ebp, esp                                ; 0E80 _ 89. E5
        sub     esp, 24                                 ; 0E82 _ 83. EC, 18
        call    _wait_KBC_sendready                     ; 0E85 _ E8, FFFFFFD6
        mov     dword [esp+4H], 96                      ; 0E8A _ C7. 44 24, 04, 00000060
        mov     dword [esp], 100                        ; 0E92 _ C7. 04 24, 00000064
        call    _io_out8                                ; 0E99 _ E8, 00000000(rel)
        call    _wait_KBC_sendready                     ; 0E9E _ E8, FFFFFFBD
        mov     dword [esp+4H], 71                      ; 0EA3 _ C7. 44 24, 04, 00000047
        mov     dword [esp], 96                         ; 0EAB _ C7. 04 24, 00000060
        call    _io_out8                                ; 0EB2 _ E8, 00000000(rel)
        nop                                             ; 0EB7 _ 90
        leave                                           ; 0EB8 _ C9
        ret                                             ; 0EB9 _ C3
; _init_keyboard End of function

_enable_mouse:; Function begin
        push    ebp                                     ; 0EBA _ 55
        mov     ebp, esp                                ; 0EBB _ 89. E5
        sub     esp, 24                                 ; 0EBD _ 83. EC, 18
        call    _wait_KBC_sendready                     ; 0EC0 _ E8, FFFFFF9B
        mov     dword [esp+4H], 212                     ; 0EC5 _ C7. 44 24, 04, 000000D4
        mov     dword [esp], 100                        ; 0ECD _ C7. 04 24, 00000064
        call    _io_out8                                ; 0ED4 _ E8, 00000000(rel)
        call    _wait_KBC_sendready                     ; 0ED9 _ E8, FFFFFF82
        mov     dword [esp+4H], 244                     ; 0EDE _ C7. 44 24, 04, 000000F4
        mov     dword [esp], 96                         ; 0EE6 _ C7. 04 24, 00000060
        call    _io_out8                                ; 0EED _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 0EF2 _ 8B. 45, 08
        mov     byte [eax+3H], 0                        ; 0EF5 _ C6. 40, 03, 00
        nop                                             ; 0EF9 _ 90
        leave                                           ; 0EFA _ C9
        ret                                             ; 0EFB _ C3
; _enable_mouse End of function

_intHandlerForMouse:; Function begin
        push    ebp                                     ; 0EFC _ 55
        mov     ebp, esp                                ; 0EFD _ 89. E5
        sub     esp, 40                                 ; 0EFF _ 83. EC, 28
        mov     dword [esp+4H], 32                      ; 0F02 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 160                        ; 0F0A _ C7. 04 24, 000000A0
        call    _io_out8                                ; 0F11 _ E8, 00000000(rel)
        mov     dword [esp+4H], 32                      ; 0F16 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 0F1E _ C7. 04 24, 00000020
        call    _io_out8                                ; 0F25 _ E8, 00000000(rel)
        mov     dword [esp], 96                         ; 0F2A _ C7. 04 24, 00000060
        call    _io_in8                                 ; 0F31 _ E8, 00000000(rel)
        mov     byte [ebp-9H], al                       ; 0F36 _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 0F39 _ 0F B6. 45, F7
        mov     dword [esp+4H], eax                     ; 0F3D _ 89. 44 24, 04
        mov     dword [esp], _mouseinfo                 ; 0F41 _ C7. 04 24, 00000020(d)
        call    _fifo8_put                              ; 0F48 _ E8, 00000041
        nop                                             ; 0F4D _ 90
        leave                                           ; 0F4E _ C9
        ret                                             ; 0F4F _ C3
; _intHandlerForMouse End of function

_fifo8_init:; Function begin
        push    ebp                                     ; 0F50 _ 55
        mov     ebp, esp                                ; 0F51 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0F53 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 0F56 _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 0F59 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 0F5C _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 0F5F _ 8B. 55, 10
        mov     dword [eax], edx                        ; 0F62 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 0F64 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 0F67 _ 8B. 55, 0C
        mov     dword [eax+10H], edx                    ; 0F6A _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 0F6D _ 8B. 45, 08
        mov     dword [eax+14H], 0                      ; 0F70 _ C7. 40, 14, 00000000
        mov     eax, dword [ebp+8H]                     ; 0F77 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 0F7A _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 0F81 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 0F84 _ C7. 40, 08, 00000000
        nop                                             ; 0F8B _ 90
        pop     ebp                                     ; 0F8C _ 5D
        ret                                             ; 0F8D _ C3
; _fifo8_init End of function

_fifo8_put:; Function begin
        push    ebp                                     ; 0F8E _ 55
        mov     ebp, esp                                ; 0F8F _ 89. E5
        sub     esp, 4                                  ; 0F91 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 0F94 _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 0F97 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 0F9A _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0F9D _ 8B. 40, 10
        test    eax, eax                                ; 0FA0 _ 85. C0
        jnz     ?_049                                   ; 0FA2 _ 75, 18
        mov     eax, dword [ebp+8H]                     ; 0FA4 _ 8B. 45, 08
        mov     eax, dword [eax+14H]                    ; 0FA7 _ 8B. 40, 14
        or      eax, 01H                                ; 0FAA _ 83. C8, 01
        mov     edx, eax                                ; 0FAD _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0FAF _ 8B. 45, 08
        mov     dword [eax+14H], edx                    ; 0FB2 _ 89. 50, 14
        mov     eax, 4294967295                         ; 0FB5 _ B8, FFFFFFFF
        jmp     ?_051                                   ; 0FBA _ EB, 50

?_049:  mov     eax, dword [ebp+8H]                     ; 0FBC _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 0FBF _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 0FC1 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 0FC4 _ 8B. 40, 04
        add     edx, eax                                ; 0FC7 _ 01. C2
        movzx   eax, byte [ebp-4H]                      ; 0FC9 _ 0F B6. 45, FC
        mov     byte [edx], al                          ; 0FCD _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 0FCF _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 0FD2 _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 0FD5 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0FD8 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 0FDB _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0FDE _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 0FE1 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0FE4 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 0FE7 _ 8B. 40, 0C
        cmp     edx, eax                                ; 0FEA _ 39. C2
        jnz     ?_050                                   ; 0FEC _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 0FEE _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 0FF1 _ C7. 40, 04, 00000000
?_050:  mov     eax, dword [ebp+8H]                     ; 0FF8 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0FFB _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 0FFE _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 1001 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 1004 _ 89. 50, 10
        mov     eax, 0                                  ; 1007 _ B8, 00000000
?_051:  leave                                           ; 100C _ C9
        ret                                             ; 100D _ C3
; _fifo8_put End of function

_fifo8_get:; Function begin
        push    ebp                                     ; 100E _ 55
        mov     ebp, esp                                ; 100F _ 89. E5
        sub     esp, 16                                 ; 1011 _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 1014 _ 8B. 45, 08
        mov     edx, dword [eax+10H]                    ; 1017 _ 8B. 50, 10
        mov     eax, dword [ebp+8H]                     ; 101A _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 101D _ 8B. 40, 0C
        cmp     edx, eax                                ; 1020 _ 39. C2
        jnz     ?_052                                   ; 1022 _ 75, 07
        mov     eax, 4294967295                         ; 1024 _ B8, FFFFFFFF
        jmp     ?_054                                   ; 1029 _ EB, 51

?_052:  mov     eax, dword [ebp+8H]                     ; 102B _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 102E _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 1030 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 1033 _ 8B. 40, 08
        add     eax, edx                                ; 1036 _ 01. D0
        movzx   eax, byte [eax]                         ; 1038 _ 0F B6. 00
        movzx   eax, al                                 ; 103B _ 0F B6. C0
        mov     dword [ebp-4H], eax                     ; 103E _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 1041 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 1044 _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 1047 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 104A _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 104D _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 1050 _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 1053 _ 8B. 50, 08
        mov     eax, dword [ebp+8H]                     ; 1056 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 1059 _ 8B. 40, 0C
        cmp     edx, eax                                ; 105C _ 39. C2
        jnz     ?_053                                   ; 105E _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 1060 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 1063 _ C7. 40, 08, 00000000
?_053:  mov     eax, dword [ebp+8H]                     ; 106A _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 106D _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 1070 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1073 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 1076 _ 89. 50, 10
        mov     eax, dword [ebp-4H]                     ; 1079 _ 8B. 45, FC
?_054:  leave                                           ; 107C _ C9
        ret                                             ; 107D _ C3
; _fifo8_get End of function

_fifo8_status:; Function begin
        push    ebp                                     ; 107E _ 55
        mov     ebp, esp                                ; 107F _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 1081 _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 1084 _ 8B. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 1087 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 108A _ 8B. 40, 10
        sub     edx, eax                                ; 108D _ 29. C2
        mov     eax, edx                                ; 108F _ 89. D0
        pop     ebp                                     ; 1091 _ 5D
        ret                                             ; 1092 _ C3
; _fifo8_status End of function

_mouse_decode:; Function begin
        push    ebp                                     ; 1093 _ 55
        mov     ebp, esp                                ; 1094 _ 89. E5
        sub     esp, 4                                  ; 1096 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 1099 _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 109C _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 109F _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 10A2 _ 0F B6. 40, 03
        test    al, al                                  ; 10A6 _ 84. C0
        jnz     ?_056                                   ; 10A8 _ 75, 17
        cmp     byte [ebp-4H], -6                       ; 10AA _ 80. 7D, FC, FA
        jnz     ?_055                                   ; 10AE _ 75, 07
        mov     eax, dword [ebp+8H]                     ; 10B0 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 10B3 _ C6. 40, 03, 01
?_055:  mov     eax, 0                                  ; 10B7 _ B8, 00000000
        jmp     ?_063                                   ; 10BC _ E9, 0000010F

?_056:  mov     eax, dword [ebp+8H]                     ; 10C1 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 10C4 _ 0F B6. 40, 03
        cmp     al, 1                                   ; 10C8 _ 3C, 01
        jnz     ?_058                                   ; 10CA _ 75, 28
        movzx   eax, byte [ebp-4H]                      ; 10CC _ 0F B6. 45, FC
        and     eax, 0C8H                               ; 10D0 _ 25, 000000C8
        cmp     eax, 8                                  ; 10D5 _ 83. F8, 08
        jnz     ?_057                                   ; 10D8 _ 75, 10
        mov     edx, dword [ebp+8H]                     ; 10DA _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 10DD _ 0F B6. 45, FC
        mov     byte [edx], al                          ; 10E1 _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 10E3 _ 8B. 45, 08
        mov     byte [eax+3H], 2                        ; 10E6 _ C6. 40, 03, 02
?_057:  mov     eax, 0                                  ; 10EA _ B8, 00000000
        jmp     ?_063                                   ; 10EF _ E9, 000000DC

?_058:  mov     eax, dword [ebp+8H]                     ; 10F4 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 10F7 _ 0F B6. 40, 03
        cmp     al, 2                                   ; 10FB _ 3C, 02
        jnz     ?_059                                   ; 10FD _ 75, 1B
        mov     edx, dword [ebp+8H]                     ; 10FF _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 1102 _ 0F B6. 45, FC
        mov     byte [edx+1H], al                       ; 1106 _ 88. 42, 01
        mov     eax, dword [ebp+8H]                     ; 1109 _ 8B. 45, 08
        mov     byte [eax+3H], 3                        ; 110C _ C6. 40, 03, 03
        mov     eax, 0                                  ; 1110 _ B8, 00000000
        jmp     ?_063                                   ; 1115 _ E9, 000000B6

?_059:  mov     eax, dword [ebp+8H]                     ; 111A _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 111D _ 0F B6. 40, 03
        cmp     al, 3                                   ; 1121 _ 3C, 03
        jne     ?_062                                   ; 1123 _ 0F 85, 000000A2
        mov     edx, dword [ebp+8H]                     ; 1129 _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 112C _ 0F B6. 45, FC
        mov     byte [edx+2H], al                       ; 1130 _ 88. 42, 02
        mov     eax, dword [ebp+8H]                     ; 1133 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 1136 _ C6. 40, 03, 01
        mov     eax, dword [ebp+8H]                     ; 113A _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 113D _ 0F B6. 00
        movzx   eax, al                                 ; 1140 _ 0F B6. C0
        and     eax, 07H                                ; 1143 _ 83. E0, 07
        mov     edx, eax                                ; 1146 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1148 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 114B _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 114E _ 8B. 45, 08
        movzx   eax, byte [eax+1H]                      ; 1151 _ 0F B6. 40, 01
        movzx   eax, al                                 ; 1155 _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 1158 _ 8B. 55, 08
        mov     dword [edx+4H], eax                     ; 115B _ 89. 42, 04
        mov     eax, dword [ebp+8H]                     ; 115E _ 8B. 45, 08
        movzx   eax, byte [eax+2H]                      ; 1161 _ 0F B6. 40, 02
        movzx   eax, al                                 ; 1165 _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 1168 _ 8B. 55, 08
        mov     dword [edx+8H], eax                     ; 116B _ 89. 42, 08
        mov     eax, dword [ebp+8H]                     ; 116E _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1171 _ 0F B6. 00
        movzx   eax, al                                 ; 1174 _ 0F B6. C0
        and     eax, 10H                                ; 1177 _ 83. E0, 10
        test    eax, eax                                ; 117A _ 85. C0
        jz      ?_060                                   ; 117C _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 117E _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 1181 _ 8B. 40, 04
        or      eax, 0FFFFFF00H                         ; 1184 _ 0D, FFFFFF00
        mov     edx, eax                                ; 1189 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 118B _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 118E _ 89. 50, 04
?_060:  mov     eax, dword [ebp+8H]                     ; 1191 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1194 _ 0F B6. 00
        movzx   eax, al                                 ; 1197 _ 0F B6. C0
        and     eax, 20H                                ; 119A _ 83. E0, 20
        test    eax, eax                                ; 119D _ 85. C0
        jz      ?_061                                   ; 119F _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 11A1 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 11A4 _ 8B. 40, 08
        or      eax, 0FFFFFF00H                         ; 11A7 _ 0D, FFFFFF00
        mov     edx, eax                                ; 11AC _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 11AE _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 11B1 _ 89. 50, 08
?_061:  mov     eax, dword [ebp+8H]                     ; 11B4 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 11B7 _ 8B. 40, 08
        neg     eax                                     ; 11BA _ F7. D8
        mov     edx, eax                                ; 11BC _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 11BE _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 11C1 _ 89. 50, 08
        mov     eax, 1                                  ; 11C4 _ B8, 00000001
        jmp     ?_063                                   ; 11C9 _ EB, 05

?_062:  mov     eax, 4294967295                         ; 11CB _ B8, FFFFFFFF
?_063:  leave                                           ; 11D0 _ C9
        ret                                             ; 11D1 _ C3
; _mouse_decode End of function

_showMemoryInfo:; Function begin
        push    ebp                                     ; 11D2 _ 55
        mov     ebp, esp                                ; 11D3 _ 89. E5
        sub     esp, 88                                 ; 11D5 _ 83. EC, 58
        mov     dword [ebp-0CH], 0                      ; 11D8 _ C7. 45, F4, 00000000
        mov     dword [ebp-10H], 0                      ; 11DF _ C7. 45, F0, 00000000
        mov     dword [ebp-14H], 104                    ; 11E6 _ C7. 45, EC, 00000068
        mov     dword [ebp-18H], 80                     ; 11ED _ C7. 45, E8, 00000050
        mov     edx, dword [_ysize]                     ; 11F4 _ 8B. 15, 000000FC(d)
        mov     eax, dword [ebp+0CH]                    ; 11FA _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 11FD _ 8B. 00
        mov     dword [esp+8H], edx                     ; 11FF _ 89. 54 24, 08
        mov     edx, dword [ebp+1CH]                    ; 1203 _ 8B. 55, 1C
        mov     dword [esp+4H], edx                     ; 1206 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 120A _ 89. 04 24
        call    _init_screen8                           ; 120D _ E8, FFFFF177
        mov     eax, dword [ebp+20H]                    ; 1212 _ 8B. 45, 20
        movsx   eax, al                                 ; 1215 _ 0F BE. C0
        mov     dword [esp+14H], ?_133                  ; 1218 _ C7. 44 24, 14, 0000001F(d)
        mov     dword [esp+10H], eax                    ; 1220 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1224 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1227 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 122B _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 122E _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1232 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1235 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1239 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 123C _ 89. 04 24
        call    _showString                             ; 123F _ E8, FFFFF62B
        mov     eax, dword [ebp+18H]                    ; 1244 _ 8B. 45, 18
        mov     dword [esp], eax                        ; 1247 _ 89. 04 24
        call    _intToHexStr                            ; 124A _ E8, FFFFFB7A
        mov     dword [ebp-1CH], eax                    ; 124F _ 89. 45, E4
        mov     eax, dword [ebp+20H]                    ; 1252 _ 8B. 45, 20
        movsx   eax, al                                 ; 1255 _ 0F BE. C0
        mov     edx, dword [ebp-1CH]                    ; 1258 _ 8B. 55, E4
        mov     dword [esp+14H], edx                    ; 125B _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 125F _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1263 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1266 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 126A _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 126D _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1271 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1274 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1278 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 127B _ 89. 04 24
        call    _showString                             ; 127E _ E8, FFFFF5EC
        add     dword [ebp-10H], 16                     ; 1283 _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 1287 _ 8B. 45, 20
        movsx   eax, al                                 ; 128A _ 0F BE. C0
        mov     dword [esp+14H], ?_134                  ; 128D _ C7. 44 24, 14, 00000029(d)
        mov     dword [esp+10H], eax                    ; 1295 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1299 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 129C _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 12A0 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 12A3 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 12A7 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 12AA _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 12AE _ 8B. 45, 08
        mov     dword [esp], eax                        ; 12B1 _ 89. 04 24
        call    _showString                             ; 12B4 _ E8, FFFFF5B6
        mov     eax, dword [ebp+10H]                    ; 12B9 _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 12BC _ 8B. 00
        mov     dword [esp], eax                        ; 12BE _ 89. 04 24
        call    _intToHexStr                            ; 12C1 _ E8, FFFFFB03
        mov     dword [ebp-20H], eax                    ; 12C6 _ 89. 45, E0
        mov     eax, dword [ebp+20H]                    ; 12C9 _ 8B. 45, 20
        movsx   eax, al                                 ; 12CC _ 0F BE. C0
        mov     edx, dword [ebp-20H]                    ; 12CF _ 8B. 55, E0
        mov     dword [esp+14H], edx                    ; 12D2 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 12D6 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 12DA _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 12DD _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 12E1 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 12E4 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 12E8 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 12EB _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 12EF _ 8B. 45, 08
        mov     dword [esp], eax                        ; 12F2 _ 89. 04 24
        call    _showString                             ; 12F5 _ E8, FFFFF575
        add     dword [ebp-10H], 16                     ; 12FA _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 12FE _ 8B. 45, 20
        movsx   eax, al                                 ; 1301 _ 0F BE. C0
        mov     dword [esp+14H], ?_135                  ; 1304 _ C7. 44 24, 14, 00000035(d)
        mov     dword [esp+10H], eax                    ; 130C _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1310 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1313 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 1317 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 131A _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 131E _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1321 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1325 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1328 _ 89. 04 24
        call    _showString                             ; 132B _ E8, FFFFF53F
        mov     eax, dword [ebp+10H]                    ; 1330 _ 8B. 45, 10
        mov     eax, dword [eax+4H]                     ; 1333 _ 8B. 40, 04
        mov     dword [esp], eax                        ; 1336 _ 89. 04 24
        call    _intToHexStr                            ; 1339 _ E8, FFFFFA8B
        mov     dword [ebp-24H], eax                    ; 133E _ 89. 45, DC
        mov     eax, dword [ebp+20H]                    ; 1341 _ 8B. 45, 20
        movsx   eax, al                                 ; 1344 _ 0F BE. C0
        mov     edx, dword [ebp-24H]                    ; 1347 _ 8B. 55, DC
        mov     dword [esp+14H], edx                    ; 134A _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 134E _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1352 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1355 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 1359 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 135C _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1360 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1363 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1367 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 136A _ 89. 04 24
        call    _showString                             ; 136D _ E8, FFFFF4FD
        add     dword [ebp-10H], 16                     ; 1372 _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 1376 _ 8B. 45, 20
        movsx   eax, al                                 ; 1379 _ 0F BE. C0
        mov     dword [esp+14H], ?_136                  ; 137C _ C7. 44 24, 14, 00000041(d)
        mov     dword [esp+10H], eax                    ; 1384 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1388 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 138B _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 138F _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 1392 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1396 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1399 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 139D _ 8B. 45, 08
        mov     dword [esp], eax                        ; 13A0 _ 89. 04 24
        call    _showString                             ; 13A3 _ E8, FFFFF4C7
        mov     eax, dword [ebp+10H]                    ; 13A8 _ 8B. 45, 10
        mov     eax, dword [eax+8H]                     ; 13AB _ 8B. 40, 08
        mov     dword [esp], eax                        ; 13AE _ 89. 04 24
        call    _intToHexStr                            ; 13B1 _ E8, FFFFFA13
        mov     dword [ebp-28H], eax                    ; 13B6 _ 89. 45, D8
        mov     eax, dword [ebp+20H]                    ; 13B9 _ 8B. 45, 20
        movsx   eax, al                                 ; 13BC _ 0F BE. C0
        mov     edx, dword [ebp-28H]                    ; 13BF _ 8B. 55, D8
        mov     dword [esp+14H], edx                    ; 13C2 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 13C6 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 13CA _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 13CD _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 13D1 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 13D4 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 13D8 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 13DB _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 13DF _ 8B. 45, 08
        mov     dword [esp], eax                        ; 13E2 _ 89. 04 24
        call    _showString                             ; 13E5 _ E8, FFFFF485
        add     dword [ebp-10H], 16                     ; 13EA _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 13EE _ 8B. 45, 20
        movsx   eax, al                                 ; 13F1 _ 0F BE. C0
        mov     dword [esp+14H], ?_137                  ; 13F4 _ C7. 44 24, 14, 0000004D(d)
        mov     dword [esp+10H], eax                    ; 13FC _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1400 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1403 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 1407 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 140A _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 140E _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1411 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1415 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1418 _ 89. 04 24
        call    _showString                             ; 141B _ E8, FFFFF44F
        mov     eax, dword [ebp+10H]                    ; 1420 _ 8B. 45, 10
        mov     eax, dword [eax+0CH]                    ; 1423 _ 8B. 40, 0C
        mov     dword [esp], eax                        ; 1426 _ 89. 04 24
        call    _intToHexStr                            ; 1429 _ E8, FFFFF99B
        mov     dword [ebp-2CH], eax                    ; 142E _ 89. 45, D4
        mov     eax, dword [ebp+20H]                    ; 1431 _ 8B. 45, 20
        movsx   eax, al                                 ; 1434 _ 0F BE. C0
        mov     edx, dword [ebp-2CH]                    ; 1437 _ 8B. 55, D4
        mov     dword [esp+14H], edx                    ; 143A _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 143E _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1442 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1445 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 1449 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 144C _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1450 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1453 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1457 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 145A _ 89. 04 24
        call    _showString                             ; 145D _ E8, FFFFF40D
        add     dword [ebp-10H], 16                     ; 1462 _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 1466 _ 8B. 45, 20
        movsx   eax, al                                 ; 1469 _ 0F BE. C0
        mov     dword [esp+14H], ?_138                  ; 146C _ C7. 44 24, 14, 0000005A(d)
        mov     dword [esp+10H], eax                    ; 1474 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1478 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 147B _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 147F _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 1482 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1486 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1489 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 148D _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1490 _ 89. 04 24
        call    _showString                             ; 1493 _ E8, FFFFF3D7
        mov     eax, dword [ebp+10H]                    ; 1498 _ 8B. 45, 10
        mov     eax, dword [eax+10H]                    ; 149B _ 8B. 40, 10
        mov     dword [esp], eax                        ; 149E _ 89. 04 24
        call    _intToHexStr                            ; 14A1 _ E8, FFFFF923
        mov     dword [ebp-30H], eax                    ; 14A6 _ 89. 45, D0
        mov     eax, dword [ebp+20H]                    ; 14A9 _ 8B. 45, 20
        movsx   eax, al                                 ; 14AC _ 0F BE. C0
        mov     edx, dword [ebp-30H]                    ; 14AF _ 8B. 55, D0
        mov     dword [esp+14H], edx                    ; 14B2 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 14B6 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 14BA _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 14BD _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 14C1 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 14C4 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 14C8 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 14CB _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 14CF _ 8B. 45, 08
        mov     dword [esp], eax                        ; 14D2 _ 89. 04 24
        call    _showString                             ; 14D5 _ E8, FFFFF395
        nop                                             ; 14DA _ 90
        leave                                           ; 14DB _ C9
        ret                                             ; 14DC _ C3
; _showMemoryInfo End of function

_message_box:; Function begin
        push    ebp                                     ; 14DD _ 55
        mov     ebp, esp                                ; 14DE _ 89. E5
        sub     esp, 56                                 ; 14E0 _ 83. EC, 38
        mov     eax, dword [ebp+8H]                     ; 14E3 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 14E6 _ 89. 04 24
        call    _sheet_alloc                            ; 14E9 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 14EE _ 89. 45, F4
        mov     eax, dword [_memman]                    ; 14F1 _ A1, 00000000(d)
        mov     dword [esp+4H], 10880                   ; 14F6 _ C7. 44 24, 04, 00002A80
        mov     dword [esp], eax                        ; 14FE _ 89. 04 24
        call    _memman_alloc_4k                        ; 1501 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 1506 _ 89. 45, F0
        mov     dword [esp+10H], -1                     ; 1509 _ C7. 44 24, 10, FFFFFFFF
        mov     dword [esp+0CH], 68                     ; 1511 _ C7. 44 24, 0C, 00000044
        mov     dword [esp+8H], 160                     ; 1519 _ C7. 44 24, 08, 000000A0
        mov     eax, dword [ebp-10H]                    ; 1521 _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 1524 _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 1528 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 152B _ 89. 04 24
        call    _sheet_setbuf                           ; 152E _ E8, 00000000(rel)
        mov     eax, dword [ebp+0CH]                    ; 1533 _ 8B. 45, 0C
        mov     dword [esp+8H], eax                     ; 1536 _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 153A _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 153D _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1541 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1544 _ 89. 04 24
        call    _make_window8                           ; 1547 _ E8, 000000A3
        mov     dword [esp+14H], ?_139                  ; 154C _ C7. 44 24, 14, 00000061(d)
        mov     dword [esp+10H], 0                      ; 1554 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 28                     ; 155C _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 24                      ; 1564 _ C7. 44 24, 08, 00000018
        mov     eax, dword [ebp-0CH]                    ; 156C _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 156F _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1573 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1576 _ 89. 04 24
        call    _showString                             ; 1579 _ E8, FFFFF2F1
        mov     dword [esp+14H], ?_140                  ; 157E _ C7. 44 24, 14, 0000006C(d)
        mov     dword [esp+10H], 0                      ; 1586 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 44                     ; 158E _ C7. 44 24, 0C, 0000002C
        mov     dword [esp+8H], 24                      ; 1596 _ C7. 44 24, 08, 00000018
        mov     eax, dword [ebp-0CH]                    ; 159E _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 15A1 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 15A5 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 15A8 _ 89. 04 24
        call    _showString                             ; 15AB _ E8, FFFFF2BF
        mov     dword [esp+0CH], 72                     ; 15B0 _ C7. 44 24, 0C, 00000048
        mov     dword [esp+8H], 80                      ; 15B8 _ C7. 44 24, 08, 00000050
        mov     eax, dword [ebp-0CH]                    ; 15C0 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 15C3 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 15C7 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 15CA _ 89. 04 24
        call    _sheet_slide                            ; 15CD _ E8, 00000000(rel)
        mov     dword [esp+8H], 2                       ; 15D2 _ C7. 44 24, 08, 00000002
        mov     eax, dword [ebp-0CH]                    ; 15DA _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 15DD _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 15E1 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 15E4 _ 89. 04 24
        call    _sheet_updown                           ; 15E7 _ E8, 00000000(rel)
        nop                                             ; 15EC _ 90
        leave                                           ; 15ED _ C9
        ret                                             ; 15EE _ C3
; _message_box End of function

_make_window8:; Function begin
        push    ebp                                     ; 15EF _ 55
        mov     ebp, esp                                ; 15F0 _ 89. E5
        push    ebx                                     ; 15F2 _ 53
        sub     esp, 68                                 ; 15F3 _ 83. EC, 44
        mov     eax, dword [ebp+0CH]                    ; 15F6 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 15F9 _ 8B. 40, 04
        mov     dword [ebp-18H], eax                    ; 15FC _ 89. 45, E8
        mov     eax, dword [ebp+0CH]                    ; 15FF _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 1602 _ 8B. 40, 08
        mov     dword [ebp-1CH], eax                    ; 1605 _ 89. 45, E4
        mov     eax, dword [ebp-18H]                    ; 1608 _ 8B. 45, E8
        lea     edx, [eax-1H]                           ; 160B _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 160E _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1611 _ 8B. 00
        mov     dword [esp+18H], 0                      ; 1613 _ C7. 44 24, 18, 00000000
        mov     dword [esp+14H], edx                    ; 161B _ 89. 54 24, 14
        mov     dword [esp+10H], 0                      ; 161F _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 1627 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 162F _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-18H]                    ; 1637 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 163A _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 163E _ 89. 04 24
        call    _boxfill8                               ; 1641 _ E8, FFFFF396
        mov     eax, dword [ebp-18H]                    ; 1646 _ 8B. 45, E8
        lea     edx, [eax-2H]                           ; 1649 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 164C _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 164F _ 8B. 00
        mov     dword [esp+18H], 1                      ; 1651 _ C7. 44 24, 18, 00000001
        mov     dword [esp+14H], edx                    ; 1659 _ 89. 54 24, 14
        mov     dword [esp+10H], 1                      ; 165D _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], 1                      ; 1665 _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 7                       ; 166D _ C7. 44 24, 08, 00000007
        mov     edx, dword [ebp-18H]                    ; 1675 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 1678 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 167C _ 89. 04 24
        call    _boxfill8                               ; 167F _ E8, FFFFF358
        mov     eax, dword [ebp-1CH]                    ; 1684 _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 1687 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 168A _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 168D _ 8B. 00
        mov     dword [esp+18H], edx                    ; 168F _ 89. 54 24, 18
        mov     dword [esp+14H], 0                      ; 1693 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], 0                      ; 169B _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 16A3 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 16AB _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-18H]                    ; 16B3 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 16B6 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 16BA _ 89. 04 24
        call    _boxfill8                               ; 16BD _ E8, FFFFF31A
        mov     eax, dword [ebp-1CH]                    ; 16C2 _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 16C5 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 16C8 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 16CB _ 8B. 00
        mov     dword [esp+18H], edx                    ; 16CD _ 89. 54 24, 18
        mov     dword [esp+14H], 1                      ; 16D1 _ C7. 44 24, 14, 00000001
        mov     dword [esp+10H], 1                      ; 16D9 _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], 1                      ; 16E1 _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 7                       ; 16E9 _ C7. 44 24, 08, 00000007
        mov     edx, dword [ebp-18H]                    ; 16F1 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 16F4 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 16F8 _ 89. 04 24
        call    _boxfill8                               ; 16FB _ E8, FFFFF2DC
        mov     eax, dword [ebp-1CH]                    ; 1700 _ 8B. 45, E4
        lea     ebx, [eax-2H]                           ; 1703 _ 8D. 58, FE
        mov     eax, dword [ebp-18H]                    ; 1706 _ 8B. 45, E8
        lea     ecx, [eax-2H]                           ; 1709 _ 8D. 48, FE
        mov     eax, dword [ebp-18H]                    ; 170C _ 8B. 45, E8
        lea     edx, [eax-2H]                           ; 170F _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 1712 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1715 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 1717 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 171B _ 89. 4C 24, 14
        mov     dword [esp+10H], 1                      ; 171F _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], edx                    ; 1727 _ 89. 54 24, 0C
        mov     dword [esp+8H], 15                      ; 172B _ C7. 44 24, 08, 0000000F
        mov     edx, dword [ebp-18H]                    ; 1733 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 1736 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 173A _ 89. 04 24
        call    _boxfill8                               ; 173D _ E8, FFFFF29A
        mov     eax, dword [ebp-1CH]                    ; 1742 _ 8B. 45, E4
        lea     ebx, [eax-1H]                           ; 1745 _ 8D. 58, FF
        mov     eax, dword [ebp-18H]                    ; 1748 _ 8B. 45, E8
        lea     ecx, [eax-1H]                           ; 174B _ 8D. 48, FF
        mov     eax, dword [ebp-18H]                    ; 174E _ 8B. 45, E8
        lea     edx, [eax-1H]                           ; 1751 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1754 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1757 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 1759 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 175D _ 89. 4C 24, 14
        mov     dword [esp+10H], 0                      ; 1761 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], edx                    ; 1769 _ 89. 54 24, 0C
        mov     dword [esp+8H], 0                       ; 176D _ C7. 44 24, 08, 00000000
        mov     edx, dword [ebp-18H]                    ; 1775 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 1778 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 177C _ 89. 04 24
        call    _boxfill8                               ; 177F _ E8, FFFFF258
        mov     eax, dword [ebp-1CH]                    ; 1784 _ 8B. 45, E4
        lea     ecx, [eax-3H]                           ; 1787 _ 8D. 48, FD
        mov     eax, dword [ebp-18H]                    ; 178A _ 8B. 45, E8
        lea     edx, [eax-3H]                           ; 178D _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 1790 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1793 _ 8B. 00
        mov     dword [esp+18H], ecx                    ; 1795 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 1799 _ 89. 54 24, 14
        mov     dword [esp+10H], 2                      ; 179D _ C7. 44 24, 10, 00000002
        mov     dword [esp+0CH], 2                      ; 17A5 _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 8                       ; 17AD _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-18H]                    ; 17B5 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 17B8 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 17BC _ 89. 04 24
        call    _boxfill8                               ; 17BF _ E8, FFFFF218
        mov     eax, dword [ebp-18H]                    ; 17C4 _ 8B. 45, E8
        lea     edx, [eax-4H]                           ; 17C7 _ 8D. 50, FC
        mov     eax, dword [ebp+0CH]                    ; 17CA _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 17CD _ 8B. 00
        mov     dword [esp+18H], 20                     ; 17CF _ C7. 44 24, 18, 00000014
        mov     dword [esp+14H], edx                    ; 17D7 _ 89. 54 24, 14
        mov     dword [esp+10H], 3                      ; 17DB _ C7. 44 24, 10, 00000003
        mov     dword [esp+0CH], 3                      ; 17E3 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 12                      ; 17EB _ C7. 44 24, 08, 0000000C
        mov     edx, dword [ebp-18H]                    ; 17F3 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 17F6 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 17FA _ 89. 04 24
        call    _boxfill8                               ; 17FD _ E8, FFFFF1DA
        mov     eax, dword [ebp-1CH]                    ; 1802 _ 8B. 45, E4
        lea     ebx, [eax-2H]                           ; 1805 _ 8D. 58, FE
        mov     eax, dword [ebp-18H]                    ; 1808 _ 8B. 45, E8
        lea     ecx, [eax-2H]                           ; 180B _ 8D. 48, FE
        mov     eax, dword [ebp-1CH]                    ; 180E _ 8B. 45, E4
        lea     edx, [eax-2H]                           ; 1811 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 1814 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1817 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 1819 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 181D _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 1821 _ 89. 54 24, 10
        mov     dword [esp+0CH], 1                      ; 1825 _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 15                      ; 182D _ C7. 44 24, 08, 0000000F
        mov     edx, dword [ebp-18H]                    ; 1835 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 1838 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 183C _ 89. 04 24
        call    _boxfill8                               ; 183F _ E8, FFFFF198
        mov     eax, dword [ebp-1CH]                    ; 1844 _ 8B. 45, E4
        lea     ebx, [eax-1H]                           ; 1847 _ 8D. 58, FF
        mov     eax, dword [ebp-18H]                    ; 184A _ 8B. 45, E8
        lea     ecx, [eax-1H]                           ; 184D _ 8D. 48, FF
        mov     eax, dword [ebp-1CH]                    ; 1850 _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 1853 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1856 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1859 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 185B _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 185F _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 1863 _ 89. 54 24, 10
        mov     dword [esp+0CH], 0                      ; 1867 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 186F _ C7. 44 24, 08, 00000000
        mov     edx, dword [ebp-18H]                    ; 1877 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 187A _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 187E _ 89. 04 24
        call    _boxfill8                               ; 1881 _ E8, FFFFF156
        mov     eax, dword [ebp+10H]                    ; 1886 _ 8B. 45, 10
        mov     dword [esp+14H], eax                    ; 1889 _ 89. 44 24, 14
        mov     dword [esp+10H], 7                      ; 188D _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 4                      ; 1895 _ C7. 44 24, 0C, 00000004
        mov     dword [esp+8H], 24                      ; 189D _ C7. 44 24, 08, 00000018
        mov     eax, dword [ebp+0CH]                    ; 18A5 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 18A8 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 18AC _ 8B. 45, 08
        mov     dword [esp], eax                        ; 18AF _ 89. 04 24
        call    _showString                             ; 18B2 _ E8, FFFFEFB8
        mov     dword [ebp-10H], 0                      ; 18B7 _ C7. 45, F0, 00000000
        jmp     ?_071                                   ; 18BE _ E9, 00000084

?_064:  mov     dword [ebp-0CH], 0                      ; 18C3 _ C7. 45, F4, 00000000
        jmp     ?_070                                   ; 18CA _ EB, 71

?_065:  mov     eax, dword [ebp-10H]                    ; 18CC _ 8B. 45, F0
        shl     eax, 4                                  ; 18CF _ C1. E0, 04
        mov     edx, eax                                ; 18D2 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 18D4 _ 8B. 45, F4
        add     eax, edx                                ; 18D7 _ 01. D0
        add     eax, _closebtn.2364                     ; 18D9 _ 05, 00000160(d)
        movzx   eax, byte [eax]                         ; 18DE _ 0F B6. 00
        mov     byte [ebp-11H], al                      ; 18E1 _ 88. 45, EF
        cmp     byte [ebp-11H], 64                      ; 18E4 _ 80. 7D, EF, 40
        jnz     ?_066                                   ; 18E8 _ 75, 06
        mov     byte [ebp-11H], 0                       ; 18EA _ C6. 45, EF, 00
        jmp     ?_069                                   ; 18EE _ EB, 1C

?_066:  cmp     byte [ebp-11H], 36                      ; 18F0 _ 80. 7D, EF, 24
        jnz     ?_067                                   ; 18F4 _ 75, 06
        mov     byte [ebp-11H], 15                      ; 18F6 _ C6. 45, EF, 0F
        jmp     ?_069                                   ; 18FA _ EB, 10

?_067:  cmp     byte [ebp-11H], 81                      ; 18FC _ 80. 7D, EF, 51
        jnz     ?_068                                   ; 1900 _ 75, 06
        mov     byte [ebp-11H], 8                       ; 1902 _ C6. 45, EF, 08
        jmp     ?_069                                   ; 1906 _ EB, 04

?_068:  mov     byte [ebp-11H], 7                       ; 1908 _ C6. 45, EF, 07
?_069:  mov     eax, dword [ebp+0CH]                    ; 190C _ 8B. 45, 0C
        mov     ecx, dword [eax]                        ; 190F _ 8B. 08
        mov     eax, dword [ebp-10H]                    ; 1911 _ 8B. 45, F0
        lea     edx, [eax+5H]                           ; 1914 _ 8D. 50, 05
        mov     eax, dword [ebp+0CH]                    ; 1917 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 191A _ 8B. 40, 04
        imul    eax, edx                                ; 191D _ 0F AF. C2
        mov     edx, dword [ebp+0CH]                    ; 1920 _ 8B. 55, 0C
        mov     edx, dword [edx+4H]                     ; 1923 _ 8B. 52, 04
        lea     ebx, [edx-15H]                          ; 1926 _ 8D. 5A, EB
        mov     edx, dword [ebp-0CH]                    ; 1929 _ 8B. 55, F4
        add     edx, ebx                                ; 192C _ 01. DA
        add     eax, edx                                ; 192E _ 01. D0
        lea     edx, [ecx+eax]                          ; 1930 _ 8D. 14 01
        movzx   eax, byte [ebp-11H]                     ; 1933 _ 0F B6. 45, EF
        mov     byte [edx], al                          ; 1937 _ 88. 02
        add     dword [ebp-0CH], 1                      ; 1939 _ 83. 45, F4, 01
?_070:  cmp     dword [ebp-0CH], 15                     ; 193D _ 83. 7D, F4, 0F
        jle     ?_065                                   ; 1941 _ 7E, 89
        add     dword [ebp-10H], 1                      ; 1943 _ 83. 45, F0, 01
?_071:  cmp     dword [ebp-10H], 13                     ; 1947 _ 83. 7D, F0, 0D
        jle     ?_064                                   ; 194B _ 0F 8E, FFFFFF72
        nop                                             ; 1951 _ 90
        add     esp, 68                                 ; 1952 _ 83. C4, 44
        pop     ebx                                     ; 1955 _ 5B
        pop     ebp                                     ; 1956 _ 5D
        ret                                             ; 1957 _ C3
; _make_window8 End of function

.text:  ; Local function

_shtctl_init:
        push    ebp                                     ; 1958 _ 55
        mov     ebp, esp                                ; 1959 _ 89. E5
        sub     esp, 40                                 ; 195B _ 83. EC, 28
        mov     dword [esp+4H], 9232                    ; 195E _ C7. 44 24, 04, 00002410
        mov     eax, dword [ebp+8H]                     ; 1966 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1969 _ 89. 04 24
        call    _memman_alloc_4k                        ; 196C _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 1971 _ 89. 45, F0
        cmp     dword [ebp-10H], 0                      ; 1974 _ 83. 7D, F0, 00
        jnz     ?_072                                   ; 1978 _ 75, 07
        mov     eax, 0                                  ; 197A _ B8, 00000000
        jmp     ?_075                                   ; 197F _ EB, 54

?_072:  mov     eax, dword [ebp-10H]                    ; 1981 _ 8B. 45, F0
        mov     edx, dword [ebp+0CH]                    ; 1984 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 1987 _ 89. 10
        mov     eax, dword [ebp-10H]                    ; 1989 _ 8B. 45, F0
        mov     edx, dword [ebp+10H]                    ; 198C _ 8B. 55, 10
        mov     dword [eax+4H], edx                     ; 198F _ 89. 50, 04
        mov     eax, dword [ebp-10H]                    ; 1992 _ 8B. 45, F0
        mov     edx, dword [ebp+14H]                    ; 1995 _ 8B. 55, 14
        mov     dword [eax+8H], edx                     ; 1998 _ 89. 50, 08
        mov     eax, dword [ebp-10H]                    ; 199B _ 8B. 45, F0
        mov     dword [eax+0CH], -1                     ; 199E _ C7. 40, 0C, FFFFFFFF
        mov     dword [ebp-0CH], 0                      ; 19A5 _ C7. 45, F4, 00000000
        jmp     ?_074                                   ; 19AC _ EB, 1B

?_073:  mov     edx, dword [ebp-10H]                    ; 19AE _ 8B. 55, F0
        mov     eax, dword [ebp-0CH]                    ; 19B1 _ 8B. 45, F4
        add     eax, 33                                 ; 19B4 _ 83. C0, 21
        shl     eax, 5                                  ; 19B7 _ C1. E0, 05
        add     eax, edx                                ; 19BA _ 01. D0
        add     eax, 12                                 ; 19BC _ 83. C0, 0C
        mov     dword [eax], 0                          ; 19BF _ C7. 00, 00000000
        add     dword [ebp-0CH], 1                      ; 19C5 _ 83. 45, F4, 01
?_074:  cmp     dword [ebp-0CH], 255                    ; 19C9 _ 81. 7D, F4, 000000FF
        jle     ?_073                                   ; 19D0 _ 7E, DC
        mov     eax, dword [ebp-10H]                    ; 19D2 _ 8B. 45, F0
?_075:  leave                                           ; 19D5 _ C9
        ret                                             ; 19D6 _ C3

_sheet_alloc:; Function begin
        push    ebp                                     ; 19D7 _ 55
        mov     ebp, esp                                ; 19D8 _ 89. E5
        sub     esp, 16                                 ; 19DA _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 19DD _ C7. 45, FC, 00000000
        jmp     ?_078                                   ; 19E4 _ EB, 57

?_076:  mov     edx, dword [ebp+8H]                     ; 19E6 _ 8B. 55, 08
        mov     eax, dword [ebp-4H]                     ; 19E9 _ 8B. 45, FC
        add     eax, 33                                 ; 19EC _ 83. C0, 21
        shl     eax, 5                                  ; 19EF _ C1. E0, 05
        add     eax, edx                                ; 19F2 _ 01. D0
        add     eax, 12                                 ; 19F4 _ 83. C0, 0C
        mov     eax, dword [eax]                        ; 19F7 _ 8B. 00
        test    eax, eax                                ; 19F9 _ 85. C0
        jnz     ?_077                                   ; 19FB _ 75, 3C
        mov     eax, dword [ebp-4H]                     ; 19FD _ 8B. 45, FC
        shl     eax, 5                                  ; 1A00 _ C1. E0, 05
        lea     edx, [eax+410H]                         ; 1A03 _ 8D. 90, 00000410
        mov     eax, dword [ebp+8H]                     ; 1A09 _ 8B. 45, 08
        add     eax, edx                                ; 1A0C _ 01. D0
        mov     dword [ebp-8H], eax                     ; 1A0E _ 89. 45, F8
        mov     eax, dword [ebp+8H]                     ; 1A11 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 1A14 _ 8B. 55, FC
        add     edx, 4                                  ; 1A17 _ 83. C2, 04
        mov     ecx, dword [ebp-8H]                     ; 1A1A _ 8B. 4D, F8
        mov     dword [eax+edx*4], ecx                  ; 1A1D _ 89. 0C 90
        mov     eax, dword [ebp-8H]                     ; 1A20 _ 8B. 45, F8
        mov     dword [eax+1CH], 1                      ; 1A23 _ C7. 40, 1C, 00000001
        mov     eax, dword [ebp-8H]                     ; 1A2A _ 8B. 45, F8
        mov     dword [eax+18H], -1                     ; 1A2D _ C7. 40, 18, FFFFFFFF
        mov     eax, dword [ebp-8H]                     ; 1A34 _ 8B. 45, F8
        jmp     ?_079                                   ; 1A37 _ EB, 12

?_077:  add     dword [ebp-4H], 1                       ; 1A39 _ 83. 45, FC, 01
?_078:  cmp     dword [ebp-4H], 255                     ; 1A3D _ 81. 7D, FC, 000000FF
        jle     ?_076                                   ; 1A44 _ 7E, A0
        mov     eax, 0                                  ; 1A46 _ B8, 00000000
?_079:  leave                                           ; 1A4B _ C9
        ret                                             ; 1A4C _ C3
; _sheet_alloc End of function

_sheet_setbuf:; Function begin
        push    ebp                                     ; 1A4D _ 55
        mov     ebp, esp                                ; 1A4E _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 1A50 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 1A53 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 1A56 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 1A58 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 1A5B _ 8B. 55, 10
        mov     dword [eax+4H], edx                     ; 1A5E _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1A61 _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 1A64 _ 8B. 55, 14
        mov     dword [eax+8H], edx                     ; 1A67 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 1A6A _ 8B. 45, 08
        mov     edx, dword [ebp+18H]                    ; 1A6D _ 8B. 55, 18
        mov     dword [eax+14H], edx                    ; 1A70 _ 89. 50, 14
        nop                                             ; 1A73 _ 90
        pop     ebp                                     ; 1A74 _ 5D
        ret                                             ; 1A75 _ C3
; _sheet_setbuf End of function

_sheet_updown:; Function begin
        push    ebp                                     ; 1A76 _ 55
        mov     ebp, esp                                ; 1A77 _ 89. E5
        push    ebx                                     ; 1A79 _ 53
        sub     esp, 52                                 ; 1A7A _ 83. EC, 34
        mov     eax, dword [ebp+0CH]                    ; 1A7D _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 1A80 _ 8B. 40, 18
        mov     dword [ebp-10H], eax                    ; 1A83 _ 89. 45, F0
        mov     eax, dword [ebp+8H]                     ; 1A86 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 1A89 _ 8B. 40, 0C
        add     eax, 1                                  ; 1A8C _ 83. C0, 01
        cmp     dword [ebp+10H], eax                    ; 1A8F _ 39. 45, 10
        jle     ?_080                                   ; 1A92 _ 7E, 0C
        mov     eax, dword [ebp+8H]                     ; 1A94 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 1A97 _ 8B. 40, 0C
        add     eax, 1                                  ; 1A9A _ 83. C0, 01
        mov     dword [ebp+10H], eax                    ; 1A9D _ 89. 45, 10
?_080:  cmp     dword [ebp+10H], -1                     ; 1AA0 _ 83. 7D, 10, FF
        jge     ?_081                                   ; 1AA4 _ 7D, 07
        mov     dword [ebp+10H], -1                     ; 1AA6 _ C7. 45, 10, FFFFFFFF
?_081:  mov     eax, dword [ebp+0CH]                    ; 1AAD _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 1AB0 _ 8B. 55, 10
        mov     dword [eax+18H], edx                    ; 1AB3 _ 89. 50, 18
        mov     eax, dword [ebp-10H]                    ; 1AB6 _ 8B. 45, F0
        cmp     eax, dword [ebp+10H]                    ; 1AB9 _ 3B. 45, 10
        jle     ?_089                                   ; 1ABC _ 0F 8E, 00000100
        cmp     dword [ebp+10H], 0                      ; 1AC2 _ 83. 7D, 10, 00
        js      ?_084                                   ; 1AC6 _ 78, 52
        mov     eax, dword [ebp-10H]                    ; 1AC8 _ 8B. 45, F0
        mov     dword [ebp-0CH], eax                    ; 1ACB _ 89. 45, F4
        jmp     ?_083                                   ; 1ACE _ EB, 31

?_082:  mov     eax, dword [ebp-0CH]                    ; 1AD0 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 1AD3 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 1AD6 _ 8B. 45, 08
        add     edx, 4                                  ; 1AD9 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4]                  ; 1ADC _ 8B. 0C 90
        mov     eax, dword [ebp+8H]                     ; 1ADF _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 1AE2 _ 8B. 55, F4
        add     edx, 4                                  ; 1AE5 _ 83. C2, 04
        mov     dword [eax+edx*4], ecx                  ; 1AE8 _ 89. 0C 90
        mov     eax, dword [ebp+8H]                     ; 1AEB _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 1AEE _ 8B. 55, F4
        add     edx, 4                                  ; 1AF1 _ 83. C2, 04
        mov     eax, dword [eax+edx*4]                  ; 1AF4 _ 8B. 04 90
        mov     edx, dword [ebp-0CH]                    ; 1AF7 _ 8B. 55, F4
        mov     dword [eax+18H], edx                    ; 1AFA _ 89. 50, 18
        sub     dword [ebp-0CH], 1                      ; 1AFD _ 83. 6D, F4, 01
?_083:  mov     eax, dword [ebp-0CH]                    ; 1B01 _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 1B04 _ 3B. 45, 10
        jg      ?_082                                   ; 1B07 _ 7F, C7
        mov     eax, dword [ebp+8H]                     ; 1B09 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 1B0C _ 8B. 55, 10
        add     edx, 4                                  ; 1B0F _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 1B12 _ 8B. 4D, 0C
        mov     dword [eax+edx*4], ecx                  ; 1B15 _ 89. 0C 90
        jmp     ?_088                                   ; 1B18 _ EB, 5E

?_084:  mov     eax, dword [ebp+8H]                     ; 1B1A _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 1B1D _ 8B. 40, 0C
        cmp     dword [ebp-10H], eax                    ; 1B20 _ 39. 45, F0
        jge     ?_087                                   ; 1B23 _ 7D, 44
        mov     eax, dword [ebp-10H]                    ; 1B25 _ 8B. 45, F0
        mov     dword [ebp-0CH], eax                    ; 1B28 _ 89. 45, F4
        jmp     ?_086                                   ; 1B2B _ EB, 31

?_085:  mov     eax, dword [ebp-0CH]                    ; 1B2D _ 8B. 45, F4
        lea     edx, [eax+1H]                           ; 1B30 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1B33 _ 8B. 45, 08
        add     edx, 4                                  ; 1B36 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4]                  ; 1B39 _ 8B. 0C 90
        mov     eax, dword [ebp+8H]                     ; 1B3C _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 1B3F _ 8B. 55, F4
        add     edx, 4                                  ; 1B42 _ 83. C2, 04
        mov     dword [eax+edx*4], ecx                  ; 1B45 _ 89. 0C 90
        mov     eax, dword [ebp+8H]                     ; 1B48 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 1B4B _ 8B. 55, F4
        add     edx, 4                                  ; 1B4E _ 83. C2, 04
        mov     eax, dword [eax+edx*4]                  ; 1B51 _ 8B. 04 90
        mov     edx, dword [ebp-0CH]                    ; 1B54 _ 8B. 55, F4
        mov     dword [eax+18H], edx                    ; 1B57 _ 89. 50, 18
        add     dword [ebp-0CH], 1                      ; 1B5A _ 83. 45, F4, 01
?_086:  mov     eax, dword [ebp+8H]                     ; 1B5E _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 1B61 _ 8B. 40, 0C
        cmp     dword [ebp-0CH], eax                    ; 1B64 _ 39. 45, F4
        jl      ?_085                                   ; 1B67 _ 7C, C4
?_087:  mov     eax, dword [ebp+8H]                     ; 1B69 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 1B6C _ 8B. 40, 0C
        lea     edx, [eax-1H]                           ; 1B6F _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 1B72 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 1B75 _ 89. 50, 0C
?_088:  mov     eax, dword [ebp+0CH]                    ; 1B78 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1B7B _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1B7E _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 1B81 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 1B84 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 1B87 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 1B8A _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 1B8D _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1B90 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 1B93 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 1B96 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1B99 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1B9C _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 1B9F _ 8B. 40, 0C
        mov     dword [esp+10H], ebx                    ; 1BA2 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 1BA6 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 1BAA _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 1BAE _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1BB2 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1BB5 _ 89. 04 24
        call    _sheet_refreshsub                       ; 1BB8 _ E8, 00000229
        jmp     ?_096                                   ; 1BBD _ E9, 00000111

?_089:  mov     eax, dword [ebp-10H]                    ; 1BC2 _ 8B. 45, F0
        cmp     eax, dword [ebp+10H]                    ; 1BC5 _ 3B. 45, 10
        jge     ?_096                                   ; 1BC8 _ 0F 8D, 00000105
        cmp     dword [ebp-10H], 0                      ; 1BCE _ 83. 7D, F0, 00
        js      ?_092                                   ; 1BD2 _ 78, 52
        mov     eax, dword [ebp-10H]                    ; 1BD4 _ 8B. 45, F0
        mov     dword [ebp-0CH], eax                    ; 1BD7 _ 89. 45, F4
        jmp     ?_091                                   ; 1BDA _ EB, 31

?_090:  mov     eax, dword [ebp-0CH]                    ; 1BDC _ 8B. 45, F4
        lea     edx, [eax+1H]                           ; 1BDF _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1BE2 _ 8B. 45, 08
        add     edx, 4                                  ; 1BE5 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4]                  ; 1BE8 _ 8B. 0C 90
        mov     eax, dword [ebp+8H]                     ; 1BEB _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 1BEE _ 8B. 55, F4
        add     edx, 4                                  ; 1BF1 _ 83. C2, 04
        mov     dword [eax+edx*4], ecx                  ; 1BF4 _ 89. 0C 90
        mov     eax, dword [ebp+8H]                     ; 1BF7 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 1BFA _ 8B. 55, F4
        add     edx, 4                                  ; 1BFD _ 83. C2, 04
        mov     eax, dword [eax+edx*4]                  ; 1C00 _ 8B. 04 90
        mov     edx, dword [ebp-0CH]                    ; 1C03 _ 8B. 55, F4
        mov     dword [eax+18H], edx                    ; 1C06 _ 89. 50, 18
        add     dword [ebp-0CH], 1                      ; 1C09 _ 83. 45, F4, 01
?_091:  mov     eax, dword [ebp-0CH]                    ; 1C0D _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 1C10 _ 3B. 45, 10
        jl      ?_090                                   ; 1C13 _ 7C, C7
        mov     eax, dword [ebp+8H]                     ; 1C15 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 1C18 _ 8B. 55, 10
        add     edx, 4                                  ; 1C1B _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 1C1E _ 8B. 4D, 0C
        mov     dword [eax+edx*4], ecx                  ; 1C21 _ 89. 0C 90
        jmp     ?_095                                   ; 1C24 _ EB, 68

?_092:  mov     eax, dword [ebp+8H]                     ; 1C26 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 1C29 _ 8B. 40, 0C
        mov     dword [ebp-0CH], eax                    ; 1C2C _ 89. 45, F4
        jmp     ?_094                                   ; 1C2F _ EB, 37

?_093:  mov     eax, dword [ebp-0CH]                    ; 1C31 _ 8B. 45, F4
        lea     ebx, [eax+1H]                           ; 1C34 _ 8D. 58, 01
        mov     eax, dword [ebp+8H]                     ; 1C37 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 1C3A _ 8B. 55, F4
        add     edx, 4                                  ; 1C3D _ 83. C2, 04
        mov     ecx, dword [eax+edx*4]                  ; 1C40 _ 8B. 0C 90
        mov     eax, dword [ebp+8H]                     ; 1C43 _ 8B. 45, 08
        lea     edx, [ebx+4H]                           ; 1C46 _ 8D. 53, 04
        mov     dword [eax+edx*4], ecx                  ; 1C49 _ 89. 0C 90
        mov     eax, dword [ebp-0CH]                    ; 1C4C _ 8B. 45, F4
        lea     edx, [eax+1H]                           ; 1C4F _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1C52 _ 8B. 45, 08
        add     edx, 4                                  ; 1C55 _ 83. C2, 04
        mov     eax, dword [eax+edx*4]                  ; 1C58 _ 8B. 04 90
        mov     edx, dword [ebp-0CH]                    ; 1C5B _ 8B. 55, F4
        add     edx, 1                                  ; 1C5E _ 83. C2, 01
        mov     dword [eax+18H], edx                    ; 1C61 _ 89. 50, 18
        sub     dword [ebp-0CH], 1                      ; 1C64 _ 83. 6D, F4, 01
?_094:  mov     eax, dword [ebp-0CH]                    ; 1C68 _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 1C6B _ 3B. 45, 10
        jge     ?_093                                   ; 1C6E _ 7D, C1
        mov     eax, dword [ebp+8H]                     ; 1C70 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 1C73 _ 8B. 55, 10
        add     edx, 4                                  ; 1C76 _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 1C79 _ 8B. 4D, 0C
        mov     dword [eax+edx*4], ecx                  ; 1C7C _ 89. 0C 90
        mov     eax, dword [ebp+8H]                     ; 1C7F _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 1C82 _ 8B. 40, 0C
        lea     edx, [eax+1H]                           ; 1C85 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1C88 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 1C8B _ 89. 50, 0C
?_095:  mov     eax, dword [ebp+0CH]                    ; 1C8E _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1C91 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1C94 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 1C97 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 1C9A _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 1C9D _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 1CA0 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 1CA3 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1CA6 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 1CA9 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 1CAC _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1CAF _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1CB2 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 1CB5 _ 8B. 40, 0C
        mov     dword [esp+10H], ebx                    ; 1CB8 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 1CBC _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 1CC0 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 1CC4 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1CC8 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1CCB _ 89. 04 24
        call    _sheet_refreshsub                       ; 1CCE _ E8, 00000113
?_096:  nop                                             ; 1CD3 _ 90
        add     esp, 52                                 ; 1CD4 _ 83. C4, 34
        pop     ebx                                     ; 1CD7 _ 5B
        pop     ebp                                     ; 1CD8 _ 5D
        ret                                             ; 1CD9 _ C3
; _sheet_updown End of function

_sheet_refresh:; Function begin
        push    ebp                                     ; 1CDA _ 55
        mov     ebp, esp                                ; 1CDB _ 89. E5
        push    esi                                     ; 1CDD _ 56
        push    ebx                                     ; 1CDE _ 53
        sub     esp, 32                                 ; 1CDF _ 83. EC, 20
        mov     eax, dword [ebp+0CH]                    ; 1CE2 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 1CE5 _ 8B. 40, 18
        test    eax, eax                                ; 1CE8 _ 85. C0
        js      ?_097                                   ; 1CEA _ 78, 49
        mov     eax, dword [ebp+0CH]                    ; 1CEC _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1CEF _ 8B. 50, 10
        mov     eax, dword [ebp+1CH]                    ; 1CF2 _ 8B. 45, 1C
        lea     ebx, [edx+eax]                          ; 1CF5 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 1CF8 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 1CFB _ 8B. 50, 0C
        mov     eax, dword [ebp+18H]                    ; 1CFE _ 8B. 45, 18
        lea     ecx, [edx+eax]                          ; 1D01 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 1D04 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1D07 _ 8B. 50, 10
        mov     eax, dword [ebp+14H]                    ; 1D0A _ 8B. 45, 14
        add     edx, eax                                ; 1D0D _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 1D0F _ 8B. 45, 0C
        mov     esi, dword [eax+0CH]                    ; 1D12 _ 8B. 70, 0C
        mov     eax, dword [ebp+10H]                    ; 1D15 _ 8B. 45, 10
        add     eax, esi                                ; 1D18 _ 01. F0
        mov     dword [esp+10H], ebx                    ; 1D1A _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 1D1E _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 1D22 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 1D26 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1D2A _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1D2D _ 89. 04 24
        call    _sheet_refreshsub                       ; 1D30 _ E8, 000000B1
?_097:  mov     eax, 0                                  ; 1D35 _ B8, 00000000
        add     esp, 32                                 ; 1D3A _ 83. C4, 20
        pop     ebx                                     ; 1D3D _ 5B
        pop     esi                                     ; 1D3E _ 5E
        pop     ebp                                     ; 1D3F _ 5D
        ret                                             ; 1D40 _ C3
; _sheet_refresh End of function

_sheet_slide:; Function begin
        push    ebp                                     ; 1D41 _ 55
        mov     ebp, esp                                ; 1D42 _ 89. E5
        sub     esp, 56                                 ; 1D44 _ 83. EC, 38
        mov     eax, dword [ebp+0CH]                    ; 1D47 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 1D4A _ 8B. 40, 0C
        mov     dword [ebp-0CH], eax                    ; 1D4D _ 89. 45, F4
        mov     eax, dword [ebp+0CH]                    ; 1D50 _ 8B. 45, 0C
        mov     eax, dword [eax+10H]                    ; 1D53 _ 8B. 40, 10
        mov     dword [ebp-10H], eax                    ; 1D56 _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 1D59 _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 1D5C _ 8B. 55, 10
        mov     dword [eax+0CH], edx                    ; 1D5F _ 89. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 1D62 _ 8B. 45, 0C
        mov     edx, dword [ebp+14H]                    ; 1D65 _ 8B. 55, 14
        mov     dword [eax+10H], edx                    ; 1D68 _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1D6B _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 1D6E _ 8B. 40, 18
        test    eax, eax                                ; 1D71 _ 85. C0
        js      ?_098                                   ; 1D73 _ 78, 6E
        mov     eax, dword [ebp+0CH]                    ; 1D75 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 1D78 _ 8B. 50, 08
        mov     eax, dword [ebp-10H]                    ; 1D7B _ 8B. 45, F0
        add     edx, eax                                ; 1D7E _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 1D80 _ 8B. 45, 0C
        mov     ecx, dword [eax+4H]                     ; 1D83 _ 8B. 48, 04
        mov     eax, dword [ebp-0CH]                    ; 1D86 _ 8B. 45, F4
        add     eax, ecx                                ; 1D89 _ 01. C8
        mov     dword [esp+10H], edx                    ; 1D8B _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 1D8F _ 89. 44 24, 0C
        mov     eax, dword [ebp-10H]                    ; 1D93 _ 8B. 45, F0
        mov     dword [esp+8H], eax                     ; 1D96 _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 1D9A _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 1D9D _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1DA1 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1DA4 _ 89. 04 24
        call    _sheet_refreshsub                       ; 1DA7 _ E8, 0000003A
        mov     eax, dword [ebp+0CH]                    ; 1DAC _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 1DAF _ 8B. 50, 08
        mov     eax, dword [ebp+14H]                    ; 1DB2 _ 8B. 45, 14
        add     edx, eax                                ; 1DB5 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 1DB7 _ 8B. 45, 0C
        mov     ecx, dword [eax+4H]                     ; 1DBA _ 8B. 48, 04
        mov     eax, dword [ebp+10H]                    ; 1DBD _ 8B. 45, 10
        add     eax, ecx                                ; 1DC0 _ 01. C8
        mov     dword [esp+10H], edx                    ; 1DC2 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 1DC6 _ 89. 44 24, 0C
        mov     eax, dword [ebp+14H]                    ; 1DCA _ 8B. 45, 14
        mov     dword [esp+8H], eax                     ; 1DCD _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 1DD1 _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 1DD4 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1DD8 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1DDB _ 89. 04 24
        call    _sheet_refreshsub                       ; 1DDE _ E8, 00000003
?_098:  nop                                             ; 1DE3 _ 90
        leave                                           ; 1DE4 _ C9
        ret                                             ; 1DE5 _ C3
; _sheet_slide End of function

_sheet_refreshsub:; Function begin
        push    ebp                                     ; 1DE6 _ 55
        mov     ebp, esp                                ; 1DE7 _ 89. E5
        sub     esp, 48                                 ; 1DE9 _ 83. EC, 30
        mov     eax, dword [ebp+8H]                     ; 1DEC _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1DEF _ 8B. 00
        mov     dword [ebp-10H], eax                    ; 1DF1 _ 89. 45, F0
        cmp     dword [ebp+0CH], 0                      ; 1DF4 _ 83. 7D, 0C, 00
        jns     ?_099                                   ; 1DF8 _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 1DFA _ C7. 45, 0C, 00000000
?_099:  cmp     dword [ebp+10H], 8                      ; 1E01 _ 83. 7D, 10, 08
        jg      ?_100                                   ; 1E05 _ 7F, 07
        mov     dword [ebp+10H], 0                      ; 1E07 _ C7. 45, 10, 00000000
?_100:  mov     eax, dword [ebp+8H]                     ; 1E0E _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 1E11 _ 8B. 40, 04
        cmp     dword [ebp+14H], eax                    ; 1E14 _ 39. 45, 14
        jle     ?_101                                   ; 1E17 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 1E19 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 1E1C _ 8B. 40, 04
        mov     dword [ebp+14H], eax                    ; 1E1F _ 89. 45, 14
?_101:  mov     eax, dword [ebp+8H]                     ; 1E22 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 1E25 _ 8B. 40, 08
        cmp     dword [ebp+18H], eax                    ; 1E28 _ 39. 45, 18
        jle     ?_102                                   ; 1E2B _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 1E2D _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 1E30 _ 8B. 40, 08
        mov     dword [ebp+18H], eax                    ; 1E33 _ 89. 45, 18
?_102:  mov     dword [ebp-4H], 0                       ; 1E36 _ C7. 45, FC, 00000000
        jmp     ?_109                                   ; 1E3D _ E9, 000000D8

?_103:  mov     eax, dword [ebp+8H]                     ; 1E42 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 1E45 _ 8B. 55, FC
        add     edx, 4                                  ; 1E48 _ 83. C2, 04
        mov     eax, dword [eax+edx*4]                  ; 1E4B _ 8B. 04 90
        mov     dword [ebp-14H], eax                    ; 1E4E _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 1E51 _ 8B. 45, EC
        mov     eax, dword [eax]                        ; 1E54 _ 8B. 00
        mov     dword [ebp-18H], eax                    ; 1E56 _ 89. 45, E8
        mov     dword [ebp-0CH], 0                      ; 1E59 _ C7. 45, F4, 00000000
        jmp     ?_108                                   ; 1E60 _ E9, 000000A2

?_104:  mov     eax, dword [ebp-14H]                    ; 1E65 _ 8B. 45, EC
        mov     edx, dword [eax+10H]                    ; 1E68 _ 8B. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 1E6B _ 8B. 45, F4
        add     eax, edx                                ; 1E6E _ 01. D0
        mov     dword [ebp-1CH], eax                    ; 1E70 _ 89. 45, E4
        mov     dword [ebp-8H], 0                       ; 1E73 _ C7. 45, F8, 00000000
        jmp     ?_107                                   ; 1E7A _ EB, 78

?_105:  mov     eax, dword [ebp-14H]                    ; 1E7C _ 8B. 45, EC
        mov     edx, dword [eax+0CH]                    ; 1E7F _ 8B. 50, 0C
        mov     eax, dword [ebp-8H]                     ; 1E82 _ 8B. 45, F8
        add     eax, edx                                ; 1E85 _ 01. D0
        mov     dword [ebp-20H], eax                    ; 1E87 _ 89. 45, E0
        mov     eax, dword [ebp+0CH]                    ; 1E8A _ 8B. 45, 0C
        cmp     eax, dword [ebp-20H]                    ; 1E8D _ 3B. 45, E0
        jg      ?_106                                   ; 1E90 _ 7F, 5E
        mov     eax, dword [ebp-20H]                    ; 1E92 _ 8B. 45, E0
        cmp     eax, dword [ebp+14H]                    ; 1E95 _ 3B. 45, 14
        jge     ?_106                                   ; 1E98 _ 7D, 56
        mov     eax, dword [ebp+10H]                    ; 1E9A _ 8B. 45, 10
        cmp     eax, dword [ebp-1CH]                    ; 1E9D _ 3B. 45, E4
        jg      ?_106                                   ; 1EA0 _ 7F, 4E
        mov     eax, dword [ebp-1CH]                    ; 1EA2 _ 8B. 45, E4
        cmp     eax, dword [ebp+18H]                    ; 1EA5 _ 3B. 45, 18
        jge     ?_106                                   ; 1EA8 _ 7D, 46
        mov     eax, dword [ebp-14H]                    ; 1EAA _ 8B. 45, EC
        mov     eax, dword [eax+4H]                     ; 1EAD _ 8B. 40, 04
        imul    eax, dword [ebp-0CH]                    ; 1EB0 _ 0F AF. 45, F4
        mov     edx, dword [ebp-8H]                     ; 1EB4 _ 8B. 55, F8
        add     eax, edx                                ; 1EB7 _ 01. D0
        mov     edx, eax                                ; 1EB9 _ 89. C2
        mov     eax, dword [ebp-18H]                    ; 1EBB _ 8B. 45, E8
        add     eax, edx                                ; 1EBE _ 01. D0
        movzx   eax, byte [eax]                         ; 1EC0 _ 0F B6. 00
        mov     byte [ebp-21H], al                      ; 1EC3 _ 88. 45, DF
        movzx   eax, byte [ebp-21H]                     ; 1EC6 _ 0F B6. 45, DF
        mov     edx, dword [ebp-14H]                    ; 1ECA _ 8B. 55, EC
        mov     edx, dword [edx+14H]                    ; 1ECD _ 8B. 52, 14
        cmp     eax, edx                                ; 1ED0 _ 39. D0
        jz      ?_106                                   ; 1ED2 _ 74, 1C
        mov     eax, dword [ebp+8H]                     ; 1ED4 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 1ED7 _ 8B. 40, 04
        imul    eax, dword [ebp-1CH]                    ; 1EDA _ 0F AF. 45, E4
        mov     edx, dword [ebp-20H]                    ; 1EDE _ 8B. 55, E0
        add     eax, edx                                ; 1EE1 _ 01. D0
        mov     edx, eax                                ; 1EE3 _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 1EE5 _ 8B. 45, F0
        add     edx, eax                                ; 1EE8 _ 01. C2
        movzx   eax, byte [ebp-21H]                     ; 1EEA _ 0F B6. 45, DF
        mov     byte [edx], al                          ; 1EEE _ 88. 02
?_106:  add     dword [ebp-8H], 1                       ; 1EF0 _ 83. 45, F8, 01
?_107:  mov     eax, dword [ebp-14H]                    ; 1EF4 _ 8B. 45, EC
        mov     eax, dword [eax+4H]                     ; 1EF7 _ 8B. 40, 04
        cmp     dword [ebp-8H], eax                     ; 1EFA _ 39. 45, F8
        jl      ?_105                                   ; 1EFD _ 0F 8C, FFFFFF79
        add     dword [ebp-0CH], 1                      ; 1F03 _ 83. 45, F4, 01
?_108:  mov     eax, dword [ebp-14H]                    ; 1F07 _ 8B. 45, EC
        mov     eax, dword [eax+8H]                     ; 1F0A _ 8B. 40, 08
        cmp     dword [ebp-0CH], eax                    ; 1F0D _ 39. 45, F4
        jl      ?_104                                   ; 1F10 _ 0F 8C, FFFFFF4F
        add     dword [ebp-4H], 1                       ; 1F16 _ 83. 45, FC, 01
?_109:  mov     eax, dword [ebp+8H]                     ; 1F1A _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 1F1D _ 8B. 40, 0C
        cmp     dword [ebp-4H], eax                     ; 1F20 _ 39. 45, FC
        jle     ?_103                                   ; 1F23 _ 0F 8E, FFFFFF19
        nop                                             ; 1F29 _ 90
        leave                                           ; 1F2A _ C9
        ret                                             ; 1F2B _ C3
; _sheet_refreshsub End of function

.text:  ; Local function

_memman_init:
        push    ebp                                     ; 1F2C _ 55
        mov     ebp, esp                                ; 1F2D _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 1F2F _ 8B. 45, 08
        mov     dword [eax], 0                          ; 1F32 _ C7. 00, 00000000
        mov     eax, dword [ebp+8H]                     ; 1F38 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 1F3B _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 1F42 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 1F45 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 1F4C _ 8B. 45, 08
        mov     dword [eax+0CH], 0                      ; 1F4F _ C7. 40, 0C, 00000000
        nop                                             ; 1F56 _ 90
        pop     ebp                                     ; 1F57 _ 5D
        ret                                             ; 1F58 _ C3

_memman_total:; Function begin
        push    ebp                                     ; 1F59 _ 55
        mov     ebp, esp                                ; 1F5A _ 89. E5
        sub     esp, 16                                 ; 1F5C _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 1F5F _ C7. 45, F8, 00000000
        mov     dword [ebp-4H], 0                       ; 1F66 _ C7. 45, FC, 00000000
        jmp     ?_111                                   ; 1F6D _ EB, 14

?_110:  mov     eax, dword [ebp+8H]                     ; 1F6F _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 1F72 _ 8B. 55, FC
        add     edx, 2                                  ; 1F75 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 1F78 _ 8B. 44 D0, 04
        add     dword [ebp-8H], eax                     ; 1F7C _ 01. 45, F8
        add     dword [ebp-4H], 1                       ; 1F7F _ 83. 45, FC, 01
?_111:  mov     eax, dword [ebp+8H]                     ; 1F83 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1F86 _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 1F88 _ 39. 45, FC
        jc      ?_110                                   ; 1F8B _ 72, E2
        mov     eax, dword [ebp-8H]                     ; 1F8D _ 8B. 45, F8
        leave                                           ; 1F90 _ C9
        ret                                             ; 1F91 _ C3
; _memman_total End of function

_memman_alloc:; Function begin
        push    ebp                                     ; 1F92 _ 55
        mov     ebp, esp                                ; 1F93 _ 89. E5
        sub     esp, 16                                 ; 1F95 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 1F98 _ C7. 45, FC, 00000000
        jmp     ?_115                                   ; 1F9F _ E9, 00000083

?_112:  mov     eax, dword [ebp+8H]                     ; 1FA4 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 1FA7 _ 8B. 55, FC
        add     edx, 2                                  ; 1FAA _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 1FAD _ 8B. 44 D0, 04
        cmp     dword [ebp+0CH], eax                    ; 1FB1 _ 39. 45, 0C
        ja      ?_114                                   ; 1FB4 _ 77, 6D
        mov     eax, dword [ebp+8H]                     ; 1FB6 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 1FB9 _ 8B. 55, FC
        add     edx, 2                                  ; 1FBC _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 1FBF _ 8B. 04 D0
        mov     dword [ebp-8H], eax                     ; 1FC2 _ 89. 45, F8
        mov     eax, dword [ebp+8H]                     ; 1FC5 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 1FC8 _ 8B. 55, FC
        add     edx, 2                                  ; 1FCB _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 1FCE _ 8B. 14 D0
        mov     eax, dword [ebp+0CH]                    ; 1FD1 _ 8B. 45, 0C
        lea     ecx, [edx+eax]                          ; 1FD4 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 1FD7 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 1FDA _ 8B. 55, FC
        add     edx, 2                                  ; 1FDD _ 83. C2, 02
        mov     dword [eax+edx*8], ecx                  ; 1FE0 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 1FE3 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 1FE6 _ 8B. 55, FC
        add     edx, 2                                  ; 1FE9 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 1FEC _ 8B. 44 D0, 04
        sub     eax, dword [ebp+0CH]                    ; 1FF0 _ 2B. 45, 0C
        mov     edx, dword [ebp+8H]                     ; 1FF3 _ 8B. 55, 08
        mov     ecx, dword [ebp-4H]                     ; 1FF6 _ 8B. 4D, FC
        add     ecx, 2                                  ; 1FF9 _ 83. C1, 02
        mov     dword [edx+ecx*8+4H], eax               ; 1FFC _ 89. 44 CA, 04
        mov     eax, dword [ebp+8H]                     ; 2000 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 2003 _ 8B. 55, FC
        add     edx, 2                                  ; 2006 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2009 _ 8B. 44 D0, 04
        test    eax, eax                                ; 200D _ 85. C0
        jnz     ?_113                                   ; 200F _ 75, 0D
        mov     eax, dword [ebp+8H]                     ; 2011 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2014 _ 8B. 00
        lea     edx, [eax-1H]                           ; 2016 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2019 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 201C _ 89. 10
?_113:  mov     eax, dword [ebp-8H]                     ; 201E _ 8B. 45, F8
        jmp     ?_116                                   ; 2021 _ EB, 17

?_114:  add     dword [ebp-4H], 1                       ; 2023 _ 83. 45, FC, 01
?_115:  mov     eax, dword [ebp+8H]                     ; 2027 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 202A _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 202C _ 39. 45, FC
        jc      ?_112                                   ; 202F _ 0F 82, FFFFFF6F
        mov     eax, 0                                  ; 2035 _ B8, 00000000
?_116:  leave                                           ; 203A _ C9
        ret                                             ; 203B _ C3
; _memman_alloc End of function

_memman_free:; Function begin
        push    ebp                                     ; 203C _ 55
        mov     ebp, esp                                ; 203D _ 89. E5
        push    ebx                                     ; 203F _ 53
        sub     esp, 16                                 ; 2040 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 2043 _ C7. 45, F8, 00000000
        jmp     ?_118                                   ; 204A _ EB, 15

?_117:  mov     eax, dword [ebp+8H]                     ; 204C _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 204F _ 8B. 55, F8
        add     edx, 2                                  ; 2052 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 2055 _ 8B. 04 D0
        cmp     dword [ebp+0CH], eax                    ; 2058 _ 39. 45, 0C
        jc      ?_119                                   ; 205B _ 72, 10
        add     dword [ebp-8H], 1                       ; 205D _ 83. 45, F8, 01
?_118:  mov     eax, dword [ebp+8H]                     ; 2061 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2064 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 2066 _ 39. 45, F8
        jl      ?_117                                   ; 2069 _ 7C, E1
        jmp     ?_120                                   ; 206B _ EB, 01

?_119:  nop                                             ; 206D _ 90
?_120:  cmp     dword [ebp-8H], 0                       ; 206E _ 83. 7D, F8, 00
        jle     ?_122                                   ; 2072 _ 0F 8E, 000000B8
        mov     eax, dword [ebp-8H]                     ; 2078 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 207B _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 207E _ 8B. 45, 08
        add     edx, 2                                  ; 2081 _ 83. C2, 02
        mov     ecx, dword [eax+edx*8]                  ; 2084 _ 8B. 0C D0
        mov     eax, dword [ebp-8H]                     ; 2087 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 208A _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 208D _ 8B. 45, 08
        add     edx, 2                                  ; 2090 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2093 _ 8B. 44 D0, 04
        add     eax, ecx                                ; 2097 _ 01. C8
        cmp     dword [ebp+0CH], eax                    ; 2099 _ 39. 45, 0C
        jne     ?_122                                   ; 209C _ 0F 85, 0000008E
        mov     eax, dword [ebp-8H]                     ; 20A2 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 20A5 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 20A8 _ 8B. 45, 08
        add     edx, 2                                  ; 20AB _ 83. C2, 02
        mov     ecx, dword [eax+edx*8+4H]               ; 20AE _ 8B. 4C D0, 04
        mov     eax, dword [ebp-8H]                     ; 20B2 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 20B5 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 20B8 _ 8B. 45, 10
        add     ecx, eax                                ; 20BB _ 01. C1
        mov     eax, dword [ebp+8H]                     ; 20BD _ 8B. 45, 08
        add     edx, 2                                  ; 20C0 _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 20C3 _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 20C7 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 20CA _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 20CC _ 39. 45, F8
        jge     ?_121                                   ; 20CF _ 7D, 55
        mov     edx, dword [ebp+0CH]                    ; 20D1 _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 20D4 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 20D7 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 20DA _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 20DD _ 8B. 55, F8
        add     edx, 2                                  ; 20E0 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 20E3 _ 8B. 04 D0
        cmp     ecx, eax                                ; 20E6 _ 39. C1
        jnz     ?_121                                   ; 20E8 _ 75, 3C
        mov     eax, dword [ebp-8H]                     ; 20EA _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 20ED _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 20F0 _ 8B. 45, 08
        add     edx, 2                                  ; 20F3 _ 83. C2, 02
        mov     ecx, dword [eax+edx*8+4H]               ; 20F6 _ 8B. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 20FA _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 20FD _ 8B. 55, F8
        add     edx, 2                                  ; 2100 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2103 _ 8B. 44 D0, 04
        mov     edx, dword [ebp-8H]                     ; 2107 _ 8B. 55, F8
        sub     edx, 1                                  ; 210A _ 83. EA, 01
        add     ecx, eax                                ; 210D _ 01. C1
        mov     eax, dword [ebp+8H]                     ; 210F _ 8B. 45, 08
        add     edx, 2                                  ; 2112 _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 2115 _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 2119 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 211C _ 8B. 00
        lea     edx, [eax-1H]                           ; 211E _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2121 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 2124 _ 89. 10
?_121:  mov     eax, 0                                  ; 2126 _ B8, 00000000
        jmp     ?_128                                   ; 212B _ E9, 0000011C

?_122:  mov     eax, dword [ebp+8H]                     ; 2130 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2133 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 2135 _ 39. 45, F8
        jge     ?_123                                   ; 2138 _ 7D, 52
        mov     edx, dword [ebp+0CH]                    ; 213A _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 213D _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 2140 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 2143 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2146 _ 8B. 55, F8
        add     edx, 2                                  ; 2149 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 214C _ 8B. 04 D0
        cmp     ecx, eax                                ; 214F _ 39. C1
        jnz     ?_123                                   ; 2151 _ 75, 39
        mov     eax, dword [ebp+8H]                     ; 2153 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2156 _ 8B. 55, F8
        add     edx, 2                                  ; 2159 _ 83. C2, 02
        mov     ecx, dword [ebp+0CH]                    ; 215C _ 8B. 4D, 0C
        mov     dword [eax+edx*8], ecx                  ; 215F _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 2162 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2165 _ 8B. 55, F8
        add     edx, 2                                  ; 2168 _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 216B _ 8B. 54 D0, 04
        mov     eax, dword [ebp+10H]                    ; 216F _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 2172 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 2175 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2178 _ 8B. 55, F8
        add     edx, 2                                  ; 217B _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 217E _ 89. 4C D0, 04
        mov     eax, 0                                  ; 2182 _ B8, 00000000
        jmp     ?_128                                   ; 2187 _ E9, 000000C0

?_123:  mov     eax, dword [ebp+8H]                     ; 218C _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 218F _ 8B. 00
        cmp     eax, 4095                               ; 2191 _ 3D, 00000FFF
        jg      ?_127                                   ; 2196 _ 0F 8F, 00000087
        mov     eax, dword [ebp+8H]                     ; 219C _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 219F _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 21A1 _ 89. 45, F4
        jmp     ?_125                                   ; 21A4 _ EB, 28

?_124:  mov     eax, dword [ebp-0CH]                    ; 21A6 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 21A9 _ 8D. 50, FF
        mov     ecx, dword [ebp+8H]                     ; 21AC _ 8B. 4D, 08
        mov     eax, dword [ebp-0CH]                    ; 21AF _ 8B. 45, F4
        lea     ebx, [eax+2H]                           ; 21B2 _ 8D. 58, 02
        mov     eax, dword [ebp+8H]                     ; 21B5 _ 8B. 45, 08
        add     edx, 2                                  ; 21B8 _ 83. C2, 02
        lea     edx, [eax+edx*8]                        ; 21BB _ 8D. 14 D0
        mov     eax, dword [edx]                        ; 21BE _ 8B. 02
        mov     edx, dword [edx+4H]                     ; 21C0 _ 8B. 52, 04
        mov     dword [ecx+ebx*8], eax                  ; 21C3 _ 89. 04 D9
        mov     dword [ecx+ebx*8+4H], edx               ; 21C6 _ 89. 54 D9, 04
        sub     dword [ebp-0CH], 1                      ; 21CA _ 83. 6D, F4, 01
?_125:  mov     eax, dword [ebp-0CH]                    ; 21CE _ 8B. 45, F4
        cmp     eax, dword [ebp-8H]                     ; 21D1 _ 3B. 45, F8
        jg      ?_124                                   ; 21D4 _ 7F, D0
        mov     eax, dword [ebp+8H]                     ; 21D6 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 21D9 _ 8B. 00
        lea     edx, [eax+1H]                           ; 21DB _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 21DE _ 8B. 45, 08
        mov     dword [eax], edx                        ; 21E1 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 21E3 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 21E6 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 21E9 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 21EC _ 8B. 00
        cmp     edx, eax                                ; 21EE _ 39. C2
        jge     ?_126                                   ; 21F0 _ 7D, 0B
        mov     eax, dword [ebp+8H]                     ; 21F2 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 21F5 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 21F7 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 21FA _ 89. 50, 04
?_126:  mov     eax, dword [ebp+8H]                     ; 21FD _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2200 _ 8B. 55, F8
        add     edx, 2                                  ; 2203 _ 83. C2, 02
        mov     ecx, dword [ebp+0CH]                    ; 2206 _ 8B. 4D, 0C
        mov     dword [eax+edx*8], ecx                  ; 2209 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 220C _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 220F _ 8B. 55, F8
        add     edx, 2                                  ; 2212 _ 83. C2, 02
        mov     ecx, dword [ebp+10H]                    ; 2215 _ 8B. 4D, 10
        mov     dword [eax+edx*8+4H], ecx               ; 2218 _ 89. 4C D0, 04
        mov     eax, 0                                  ; 221C _ B8, 00000000
        jmp     ?_128                                   ; 2221 _ EB, 29

?_127:  mov     eax, dword [ebp+8H]                     ; 2223 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2226 _ 8B. 40, 0C
        lea     edx, [eax+1H]                           ; 2229 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 222C _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 222F _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 2232 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2235 _ 8B. 40, 08
        mov     edx, eax                                ; 2238 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 223A _ 8B. 45, 10
        add     eax, edx                                ; 223D _ 01. D0
        mov     edx, eax                                ; 223F _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2241 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 2244 _ 89. 50, 08
        mov     eax, 4294967295                         ; 2247 _ B8, FFFFFFFF
?_128:  add     esp, 16                                 ; 224C _ 83. C4, 10
        pop     ebx                                     ; 224F _ 5B
        pop     ebp                                     ; 2250 _ 5D
        ret                                             ; 2251 _ C3
; _memman_free End of function

_memman_alloc_4k:; Function begin
        push    ebp                                     ; 2252 _ 55
        mov     ebp, esp                                ; 2253 _ 89. E5
        sub     esp, 24                                 ; 2255 _ 83. EC, 18
        mov     eax, dword [ebp+0CH]                    ; 2258 _ 8B. 45, 0C
        add     eax, 4095                               ; 225B _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 2260 _ 25, FFFFF000
        mov     dword [ebp+0CH], eax                    ; 2265 _ 89. 45, 0C
        mov     eax, dword [ebp+0CH]                    ; 2268 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 226B _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 226F _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2272 _ 89. 04 24
        call    _memman_alloc                           ; 2275 _ E8, FFFFFD18
        mov     dword [ebp-4H], eax                     ; 227A _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 227D _ 8B. 45, FC
        leave                                           ; 2280 _ C9
        ret                                             ; 2281 _ C3
; _memman_alloc_4k End of function

_memman_free_4k:; Function begin
        push    ebp                                     ; 2282 _ 55
        mov     ebp, esp                                ; 2283 _ 89. E5
        sub     esp, 28                                 ; 2285 _ 83. EC, 1C
        mov     eax, dword [ebp+10H]                    ; 2288 _ 8B. 45, 10
        add     eax, 4095                               ; 228B _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 2290 _ 25, FFFFF000
        mov     dword [ebp+10H], eax                    ; 2295 _ 89. 45, 10
        mov     eax, dword [ebp+10H]                    ; 2298 _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 229B _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 229F _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 22A2 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 22A6 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 22A9 _ 89. 04 24
        call    _memman_free                            ; 22AC _ E8, FFFFFD8B
        mov     dword [ebp-4H], eax                     ; 22B1 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 22B4 _ 8B. 45, FC
        leave                                           ; 22B7 _ C9
        ret                                             ; 22B8 _ C3
; _memman_free_4k End of function

        nop                                             ; 22B9 _ 90
        nop                                             ; 22BA _ 90
        nop                                             ; 22BB _ 90



_memman:                                                ; dword
        dd 00100000H                                    ; 0000 _ 1048576 

_keyval:                                                ; byte
        db 30H, 58H                                     ; 0004 _ 0X

?_129:  db 00H                                          ; 0006 _ .

?_130:  db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0007 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 000F _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0017 _ ........
        db 00H                                          ; 001F _ .

_table_rgb.2189:                                        ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0020 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0028 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0030 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0038 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 0040 _ ........
        db 00H, 84H, 00H, 84H, 84H, 84H, 84H, 84H       ; 0048 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0050 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0058 _ ........

_cursor.2236:                                           ; byte
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

_closebtn.2364:                                         ; byte
        db 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 0160 _ OOOOOOOO
        db 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 40H       ; 0168 _ OOOOOOO@
        db 4FH, 51H, 51H, 51H, 51H, 51H, 51H, 51H       ; 0170 _ OQQQQQQQ
        db 51H, 51H, 51H, 51H, 51H, 51H, 24H, 40H       ; 0178 _ QQQQQQ$@
        db 4FH, 51H, 51H, 51H, 51H, 51H, 51H, 51H       ; 0180 _ OQQQQQQQ
        db 51H, 51H, 51H, 51H, 51H, 51H, 24H, 40H       ; 0188 _ QQQQQQ$@
        db 4FH, 51H, 51H, 51H, 40H, 40H, 51H, 51H       ; 0190 _ OQQQ@@QQ
        db 51H, 51H, 40H, 40H, 51H, 51H, 24H, 40H       ; 0198 _ QQ@@QQ$@
        db 4FH, 51H, 51H, 51H, 51H, 40H, 40H, 51H       ; 01A0 _ OQQQQ@@Q
        db 51H, 40H, 40H, 51H, 51H, 51H, 24H, 40H       ; 01A8 _ Q@@QQQ$@
        db 4FH, 51H, 51H, 51H, 51H, 51H, 40H, 40H       ; 01B0 _ OQQQQQ@@
        db 40H, 40H, 51H, 51H, 51H, 51H, 24H, 40H       ; 01B8 _ @@QQQQ$@
        db 4FH, 51H, 51H, 51H, 51H, 51H, 51H, 40H       ; 01C0 _ OQQQQQQ@
        db 40H, 51H, 51H, 51H, 51H, 51H, 24H, 40H       ; 01C8 _ @QQQQQ$@
        db 4FH, 51H, 51H, 51H, 51H, 51H, 40H, 40H       ; 01D0 _ OQQQQQ@@
        db 40H, 40H, 51H, 51H, 51H, 51H, 24H, 40H       ; 01D8 _ @@QQQQ$@
        db 4FH, 51H, 51H, 51H, 51H, 40H, 40H, 51H       ; 01E0 _ OQQQQ@@Q
        db 51H, 40H, 40H, 51H, 51H, 51H, 24H, 40H       ; 01E8 _ Q@@QQQ$@
        db 4FH, 51H, 51H, 51H, 40H, 40H, 51H, 51H       ; 01F0 _ OQQQ@@QQ
        db 51H, 51H, 40H, 40H, 51H, 51H, 24H, 40H       ; 01F8 _ QQ@@QQ$@
        db 4FH, 51H, 51H, 51H, 51H, 51H, 51H, 51H       ; 0200 _ OQQQQQQQ
        db 51H, 51H, 51H, 51H, 51H, 51H, 24H, 40H       ; 0208 _ QQQQQQ$@
        db 4FH, 51H, 51H, 51H, 51H, 51H, 51H, 51H       ; 0210 _ OQQQQQQQ
        db 51H, 51H, 51H, 51H, 51H, 51H, 24H, 40H       ; 0218 _ QQQQQQ$@
        db 4FH, 24H, 24H, 24H, 24H, 24H, 24H, 24H       ; 0220 _ O$$$$$$$
        db 24H, 24H, 24H, 24H, 24H, 24H, 24H, 40H       ; 0228 _ $$$$$$$@
        db 40H, 40H, 40H, 40H, 40H, 40H, 40H, 40H       ; 0230 _ @@@@@@@@
        db 40H, 40H, 40H, 40H, 40H, 40H, 40H, 40H       ; 0238 _ @@@@@@@@


?_131:                                                  
        db 77H, 69H, 6EH, 64H, 6FH, 77H, 73H, 00H       ; 0000 _ windows.

?_132:                                                  ; byte
        db 69H, 6DH, 70H, 72H, 6FH, 76H, 65H, 20H       ; 0008 _ improve 
        db 73H, 74H, 72H, 69H, 6EH, 67H, 20H, 73H       ; 0010 _ string s
        db 68H, 6FH, 77H, 69H, 6EH, 67H, 00H            ; 0018 _ howing.

?_133:                                                  ; byte
        db 70H, 61H, 67H, 65H, 20H, 69H, 73H, 3AH       ; 001F _ page is:
        db 20H, 00H                                     ; 0027 _  .

?_134:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0029 _ BaseAddr
        db 4CH, 3AH, 20H, 00H                           ; 0031 _ L: .

?_135:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0035 _ BaseAddr
        db 48H, 3AH, 20H, 00H                           ; 003D _ H: .

?_136:                                                  ; byte
        db 6CH, 65H, 6EH, 67H, 74H, 68H, 4CH, 6FH       ; 0041 _ lengthLo
        db 77H, 3AH, 20H, 00H                           ; 0049 _ w: .

?_137:                                                  ; byte
        db 6CH, 65H, 6EH, 67H, 74H, 68H, 48H, 69H       ; 004D _ lengthHi
        db 67H, 68H, 3AH, 20H, 00H                      ; 0055 _ gh: .

?_138:                                                  ; byte
        db 74H, 79H, 70H, 65H, 3AH, 20H, 00H            ; 005A _ type: .

?_139:                                                  ; byte
        db 57H, 65H, 6CH, 63H, 6FH, 6DH, 65H, 20H       ; 0061 _ Welcome 
        db 74H, 6FH, 00H                                ; 0069 _ to.

?_140:                                                  ; byte
        db 4DH, 79H, 4FH, 53H, 00H, 00H, 00H, 00H       ; 006C _ MyOS....


.rdata$zzz:                                             
        db 47H, 43H, 43H, 3AH, 20H, 28H, 78H, 38H       ; 0040 _ GCC: (x8
        db 36H, 5FH, 36H, 34H, 2DH, 70H, 6FH, 73H       ; 0048 _ 6_64-pos
        db 69H, 78H, 2DH, 73H, 65H, 68H, 2DH, 72H       ; 0050 _ ix-seh-r
        db 65H, 76H, 30H, 2CH, 20H, 42H, 75H, 69H       ; 0058 _ ev0, Bui
        db 6CH, 74H, 20H, 62H, 79H, 20H, 4DH, 69H       ; 0060 _ lt by Mi
        db 6EH, 47H, 57H, 2DH, 57H, 36H, 34H, 20H       ; 0068 _ nGW-W64 
        db 70H, 72H, 6FH, 6AH, 65H, 63H, 74H, 29H       ; 0070 _ project)
        db 20H, 38H, 2EH, 31H, 2EH, 30H, 00H, 00H       ; 0078 _  8.1.0..

_bootInfo:                                              
        resd    1                                       ; 0000

?_141:  resw    1                                       ; 0004

?_142:  resw    1                                       ; 0006

_keyinfo:                                               ; byte
        resb    24                                      ; 0008

_mouseinfo:                                             ; byte
        resb    32                                      ; 0020

_keybuf:                                                ; byte
        resb    32                                      ; 0040

_mousebuf:                                              ; byte
        resb    128                                     ; 0060

_mdec:                                                  ; byte
        resb    16                                      ; 00E0

_mx:    resd    1                                       ; 00F0

_my:    resd    1                                       ; 00F4

_xsize: resd    1                                       ; 00F8

_ysize: resd    1                                       ; 00FC

_buf_back:                                              ; dword
        resd    8                                       ; 0100

_buf_mouse:                                             ; byte
        resb    256                                     ; 0120

_str.2284:                                              ; byte
        resb    1                                       ; 0220

?_143:  resb    9                                       ; 0221

?_144:  resb    22                                      ; 022A


