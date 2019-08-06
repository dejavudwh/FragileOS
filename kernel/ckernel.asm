; Disassembly of file: ckernel.o
; Tue Aug  6 18:23:22 2019
; Mode: 32 bits
; Syntax: YASM/NASM
; Instruction set: 80386






.text:  ; Local function

_launch:
        push    ebp                                     ; 0000 _ 55
        mov     ebp, esp                                ; 0001 _ 89. E5
        push    ebx                                     ; 0003 _ 53
        sub     esp, 84                                 ; 0004 _ 83. EC, 54
        mov     dword [esp], _bootInfo                  ; 0007 _ C7. 04 24, 00000000(d)
        call    _initBootInfo                           ; 000E _ E8, 000008CC
        mov     eax, dword [_bootInfo]                  ; 0013 _ A1, 00000000(d)
        mov     dword [ebp-14H], eax                    ; 0018 _ 89. 45, EC
        movzx   eax, word [?_141]                       ; 001B _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0022 _ 98
        mov     dword [_xsize], eax                     ; 0023 _ A3, 000000F8(d)
        movzx   eax, word [?_142]                       ; 0028 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 002F _ 98
        mov     dword [_ysize], eax                     ; 0030 _ A3, 000000FC(d)
        mov     dword [ebp-18H], 0                      ; 0035 _ C7. 45, E8, 00000000
        mov     dword [ebp-1CH], 0                      ; 003C _ C7. 45, E4, 00000000
        mov     dword [esp+8H], _keybuf                 ; 0043 _ C7. 44 24, 08, 00000040(d)
        mov     dword [esp+4H], 32                      ; 004B _ C7. 44 24, 04, 00000020
        mov     dword [esp], _keyinfo                   ; 0053 _ C7. 04 24, 00000008(d)
        call    _fifo8_init                             ; 005A _ E8, 00000F82
        mov     dword [esp+8H], _mousebuf               ; 005F _ C7. 44 24, 08, 00000060(d)
        mov     dword [esp+4H], 128                     ; 0067 _ C7. 44 24, 04, 00000080
        mov     dword [esp], _mouseinfo                 ; 006F _ C7. 04 24, 00000020(d)
        call    _fifo8_init                             ; 0076 _ E8, 00000F66
        call    _init_palette                           ; 007B _ E8, 00000922
        call    _init_keyboard                          ; 0080 _ E8, 00000E8B
        call    _get_memory_block_count                 ; 0085 _ E8, 00000000(rel)
        mov     dword [ebp-20H], eax                    ; 008A _ 89. 45, E0
        call    _get_addr_buffer                        ; 008D _ E8, 00000000(rel)
        mov     dword [ebp-24H], eax                    ; 0092 _ 89. 45, DC
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
        mov     edx, dword [ebp-14H]                    ; 00D8 _ 8B. 55, EC
        mov     dword [esp+4H], edx                     ; 00DB _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 00DF _ 89. 04 24
        call    _shtctl_init                            ; 00E2 _ E8, 00000000(rel)
        mov     dword [ebp-28H], eax                    ; 00E7 _ 89. 45, D8
        mov     eax, dword [ebp-28H]                    ; 00EA _ 8B. 45, D8
        mov     dword [esp], eax                        ; 00ED _ 89. 04 24
        call    _sheet_alloc                            ; 00F0 _ E8, 00000000(rel)
        mov     dword [ebp-18H], eax                    ; 00F5 _ 89. 45, E8
        mov     eax, dword [ebp-28H]                    ; 00F8 _ 8B. 45, D8
        mov     dword [esp], eax                        ; 00FB _ 89. 04 24
        call    _sheet_alloc                            ; 00FE _ E8, 00000000(rel)
        mov     dword [ebp-1CH], eax                    ; 0103 _ 89. 45, E4
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
        mov     eax, dword [ebp-18H]                    ; 0150 _ 8B. 45, E8
        mov     dword [esp], eax                        ; 0153 _ 89. 04 24
        call    _sheet_setbuf                           ; 0156 _ E8, 00000000(rel)
        mov     dword [esp+10H], 99                     ; 015B _ C7. 44 24, 10, 00000063
        mov     dword [esp+0CH], 16                     ; 0163 _ C7. 44 24, 0C, 00000010
        mov     dword [esp+8H], 16                      ; 016B _ C7. 44 24, 08, 00000010
        mov     dword [esp+4H], _buf_mouse              ; 0173 _ C7. 44 24, 04, 00000120(d)
        mov     eax, dword [ebp-1CH]                    ; 017B _ 8B. 45, E4
        mov     dword [esp], eax                        ; 017E _ 89. 04 24
        call    _sheet_setbuf                           ; 0181 _ E8, 00000000(rel)
        mov     ecx, dword [_ysize]                     ; 0186 _ 8B. 0D, 000000FC(d)
        mov     edx, dword [_xsize]                     ; 018C _ 8B. 15, 000000F8(d)
        mov     eax, dword [_buf_back]                  ; 0192 _ A1, 00000100(d)
        mov     dword [esp+8H], ecx                     ; 0197 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 019B _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 019F _ 89. 04 24
        call    _init_screen8                           ; 01A2 _ E8, 00000273
        mov     dword [esp+4H], 99                      ; 01A7 _ C7. 44 24, 04, 00000063
        mov     dword [esp], _buf_mouse                 ; 01AF _ C7. 04 24, 00000120(d)
        call    _init_mouse_cursor                      ; 01B6 _ E8, 00000A83
        mov     dword [esp+0CH], 0                      ; 01BB _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 01C3 _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp-18H]                    ; 01CB _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 01CE _ 89. 44 24, 04
        mov     eax, dword [ebp-28H]                    ; 01D2 _ 8B. 45, D8
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
        mov     eax, dword [ebp-1CH]                    ; 021C _ 8B. 45, E4
        mov     dword [esp+4H], eax                     ; 021F _ 89. 44 24, 04
        mov     eax, dword [ebp-28H]                    ; 0223 _ 8B. 45, D8
        mov     dword [esp], eax                        ; 0226 _ 89. 04 24
        call    _sheet_slide                            ; 0229 _ E8, 00000000(rel)
        mov     dword [esp+4H], ?_131                   ; 022E _ C7. 44 24, 04, 00000000(d)
        mov     eax, dword [ebp-28H]                    ; 0236 _ 8B. 45, D8
        mov     dword [esp], eax                        ; 0239 _ 89. 04 24
        call    _message_box                            ; 023C _ E8, 0000132D
        mov     dword [ebp-2CH], eax                    ; 0241 _ 89. 45, D4
        mov     dword [esp+8H], 0                       ; 0244 _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp-18H]                    ; 024C _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 024F _ 89. 44 24, 04
        mov     eax, dword [ebp-28H]                    ; 0253 _ 8B. 45, D8
        mov     dword [esp], eax                        ; 0256 _ 89. 04 24
        call    _sheet_updown                           ; 0259 _ E8, 00000000(rel)
        mov     dword [esp+8H], 100                     ; 025E _ C7. 44 24, 08, 00000064
        mov     eax, dword [ebp-1CH]                    ; 0266 _ 8B. 45, E4
        mov     dword [esp+4H], eax                     ; 0269 _ 89. 44 24, 04
        mov     eax, dword [ebp-28H]                    ; 026D _ 8B. 45, D8
        mov     dword [esp], eax                        ; 0270 _ 89. 04 24
        call    _sheet_updown                           ; 0273 _ E8, 00000000(rel)
        call    _io_sti                                 ; 0278 _ E8, 00000000(rel)
        mov     dword [esp], _mdec                      ; 027D _ C7. 04 24, 000000E0(d)
        call    _enable_mouse                           ; 0284 _ E8, 00000CC2
        mov     dword [ebp-30H], 0                      ; 0289 _ C7. 45, D0, 00000000
        mov     dword [ebp-0CH], 0                      ; 0290 _ C7. 45, F4, 00000000
        mov     dword [ebp-10H], 0                      ; 0297 _ C7. 45, F0, 00000000
?_001:  mov     eax, dword [ebp-10H]                    ; 029E _ 8B. 45, F0
        mov     dword [esp], eax                        ; 02A1 _ 89. 04 24
        call    _intToHexStr                            ; 02A4 _ E8, 00000BB1
        mov     dword [ebp-34H], eax                    ; 02A9 _ 89. 45, CC
        add     dword [ebp-10H], 1                      ; 02AC _ 83. 45, F0, 01
        mov     eax, dword [ebp-2CH]                    ; 02B0 _ 8B. 45, D4
        mov     eax, dword [eax]                        ; 02B3 _ 8B. 00
        mov     dword [esp+18H], 43                     ; 02B5 _ C7. 44 24, 18, 0000002B
        mov     dword [esp+14H], 119                    ; 02BD _ C7. 44 24, 14, 00000077
        mov     dword [esp+10H], 28                     ; 02C5 _ C7. 44 24, 10, 0000001C
        mov     dword [esp+0CH], 40                     ; 02CD _ C7. 44 24, 0C, 00000028
        mov     dword [esp+8H], 8                       ; 02D5 _ C7. 44 24, 08, 00000008
        mov     dword [esp+4H], 160                     ; 02DD _ C7. 44 24, 04, 000000A0
        mov     dword [esp], eax                        ; 02E5 _ 89. 04 24
        call    _boxfill8                               ; 02E8 _ E8, 00000780
        mov     eax, dword [ebp-34H]                    ; 02ED _ 8B. 45, CC
        mov     dword [esp+14H], eax                    ; 02F0 _ 89. 44 24, 14
        mov     dword [esp+10H], 0                      ; 02F4 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 28                     ; 02FC _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 40                      ; 0304 _ C7. 44 24, 08, 00000028
        mov     eax, dword [ebp-2CH]                    ; 030C _ 8B. 45, D4
        mov     dword [esp+4H], eax                     ; 030F _ 89. 44 24, 04
        mov     eax, dword [ebp-28H]                    ; 0313 _ 8B. 45, D8
        mov     dword [esp], eax                        ; 0316 _ 89. 04 24
        call    _showString                             ; 0319 _ E8, 000005E2
        call    _io_cli                                 ; 031E _ E8, 00000000(rel)
        mov     dword [esp], _keyinfo                   ; 0323 _ C7. 04 24, 00000008(d)
        call    _fifo8_status                           ; 032A _ E8, 00000DE0
        mov     ebx, eax                                ; 032F _ 89. C3
        mov     dword [esp], _mouseinfo                 ; 0331 _ C7. 04 24, 00000020(d)
        call    _fifo8_status                           ; 0338 _ E8, 00000DD2
        add     eax, ebx                                ; 033D _ 01. D8
        test    eax, eax                                ; 033F _ 85. C0
        jnz     ?_002                                   ; 0341 _ 75, 0A
        call    _io_sti                                 ; 0343 _ E8, 00000000(rel)
        jmp     ?_001                                   ; 0348 _ E9, FFFFFF51

?_002:  ; Local function
        mov     dword [esp], _keyinfo                   ; 034D _ C7. 04 24, 00000008(d)
        call    _fifo8_status                           ; 0354 _ E8, 00000DB6
        test    eax, eax                                ; 0359 _ 85. C0
        je      ?_003                                   ; 035B _ 0F 84, 00000087
        call    _io_sti                                 ; 0361 _ E8, 00000000(rel)
        mov     dword [esp], _keyinfo                   ; 0366 _ C7. 04 24, 00000008(d)
        call    _fifo8_get                              ; 036D _ E8, 00000D2D
        mov     dword [ebp-30H], eax                    ; 0372 _ 89. 45, D0
        cmp     dword [ebp-30H], 28                     ; 0375 _ 83. 7D, D0, 1C
        jne     ?_001                                   ; 0379 _ 0F 85, FFFFFF1F
        mov     ebx, dword [_xsize]                     ; 037F _ 8B. 1D, 000000F8(d)
        mov     ecx, dword [_buf_back]                  ; 0385 _ 8B. 0D, 00000100(d)
        mov     edx, dword [ebp-0CH]                    ; 038B _ 8B. 55, F4
        mov     eax, edx                                ; 038E _ 89. D0
        shl     eax, 2                                  ; 0390 _ C1. E0, 02
        add     eax, edx                                ; 0393 _ 01. D0
        shl     eax, 2                                  ; 0395 _ C1. E0, 02
        mov     edx, eax                                ; 0398 _ 89. C2
        mov     eax, dword [ebp-24H]                    ; 039A _ 8B. 45, DC
        add     eax, edx                                ; 039D _ 01. D0
        mov     dword [esp+18H], 7                      ; 039F _ C7. 44 24, 18, 00000007
        mov     dword [esp+14H], ebx                    ; 03A7 _ 89. 5C 24, 14
        mov     edx, dword [ebp-0CH]                    ; 03AB _ 8B. 55, F4
        mov     dword [esp+10H], edx                    ; 03AE _ 89. 54 24, 10
        mov     dword [esp+0CH], ecx                    ; 03B2 _ 89. 4C 24, 0C
        mov     dword [esp+8H], eax                     ; 03B6 _ 89. 44 24, 08
        mov     eax, dword [ebp-18H]                    ; 03BA _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 03BD _ 89. 44 24, 04
        mov     eax, dword [ebp-28H]                    ; 03C1 _ 8B. 45, D8
        mov     dword [esp], eax                        ; 03C4 _ 89. 04 24
        call    _showMemoryInfo                         ; 03C7 _ E8, 00000E97
        add     dword [ebp-0CH], 1                      ; 03CC _ 83. 45, F4, 01
        mov     eax, dword [ebp-0CH]                    ; 03D0 _ 8B. 45, F4
        cmp     eax, dword [ebp-20H]                    ; 03D3 _ 3B. 45, E0
        jle     ?_001                                   ; 03D6 _ 0F 8E, FFFFFEC2
        mov     dword [ebp-0CH], 0                      ; 03DC _ C7. 45, F4, 00000000
        jmp     ?_001                                   ; 03E3 _ E9, FFFFFEB6

?_003:  ; Local function
        mov     dword [esp], _mouseinfo                 ; 03E8 _ C7. 04 24, 00000020(d)
        call    _fifo8_status                           ; 03EF _ E8, 00000D1B
        test    eax, eax                                ; 03F4 _ 85. C0
        je      ?_001                                   ; 03F6 _ 0F 84, FFFFFEA2
        mov     eax, dword [ebp-1CH]                    ; 03FC _ 8B. 45, E4
        mov     dword [esp+8H], eax                     ; 03FF _ 89. 44 24, 08
        mov     eax, dword [ebp-18H]                    ; 0403 _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 0406 _ 89. 44 24, 04
        mov     eax, dword [ebp-28H]                    ; 040A _ 8B. 45, D8
        mov     dword [esp], eax                        ; 040D _ 89. 04 24
        call    _show_mouse_info                        ; 0410 _ E8, 0000044A
        jmp     ?_001                                   ; 0415 _ E9, FFFFFE84

_init_screen8:; Function begin
        push    ebp                                     ; 041A _ 55
        mov     ebp, esp                                ; 041B _ 89. E5
        push    ebx                                     ; 041D _ 53
        sub     esp, 36                                 ; 041E _ 83. EC, 24
        mov     eax, dword [ebp+10H]                    ; 0421 _ 8B. 45, 10
        lea     edx, [eax-11H]                          ; 0424 _ 8D. 50, EF
        mov     eax, dword [ebp+0CH]                    ; 0427 _ 8B. 45, 0C
        sub     eax, 1                                  ; 042A _ 83. E8, 01
        mov     dword [esp+18H], edx                    ; 042D _ 89. 54 24, 18
        mov     dword [esp+14H], eax                    ; 0431 _ 89. 44 24, 14
        mov     dword [esp+10H], 0                      ; 0435 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 043D _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 14                      ; 0445 _ C7. 44 24, 08, 0000000E
        mov     eax, dword [ebp+0CH]                    ; 044D _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0450 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0454 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0457 _ 89. 04 24
        call    _boxfill8                               ; 045A _ E8, 0000060E
        mov     eax, dword [ebp+10H]                    ; 045F _ 8B. 45, 10
        lea     ecx, [eax-10H]                          ; 0462 _ 8D. 48, F0
        mov     eax, dword [ebp+0CH]                    ; 0465 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 0468 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 046B _ 8B. 45, 10
        sub     eax, 16                                 ; 046E _ 83. E8, 10
        mov     dword [esp+18H], ecx                    ; 0471 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 0475 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 0479 _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 047D _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 0485 _ C7. 44 24, 08, 00000008
        mov     eax, dword [ebp+0CH]                    ; 048D _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0490 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0494 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0497 _ 89. 04 24
        call    _boxfill8                               ; 049A _ E8, 000005CE
        mov     eax, dword [ebp+10H]                    ; 049F _ 8B. 45, 10
        lea     ecx, [eax-0FH]                          ; 04A2 _ 8D. 48, F1
        mov     eax, dword [ebp+0CH]                    ; 04A5 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 04A8 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 04AB _ 8B. 45, 10
        sub     eax, 15                                 ; 04AE _ 83. E8, 0F
        mov     dword [esp+18H], ecx                    ; 04B1 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 04B5 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 04B9 _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 04BD _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 7                       ; 04C5 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 04CD _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 04D0 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 04D4 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 04D7 _ 89. 04 24
        call    _boxfill8                               ; 04DA _ E8, 0000058E
        mov     eax, dword [ebp+10H]                    ; 04DF _ 8B. 45, 10
        lea     ecx, [eax-1H]                           ; 04E2 _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 04E5 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 04E8 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 04EB _ 8B. 45, 10
        sub     eax, 14                                 ; 04EE _ 83. E8, 0E
        mov     dword [esp+18H], ecx                    ; 04F1 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 04F5 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 04F9 _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 04FD _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 0505 _ C7. 44 24, 08, 00000008
        mov     eax, dword [ebp+0CH]                    ; 050D _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0510 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0514 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0517 _ 89. 04 24
        call    _boxfill8                               ; 051A _ E8, 0000054E
        mov     eax, dword [ebp+10H]                    ; 051F _ 8B. 45, 10
        lea     edx, [eax-0CH]                          ; 0522 _ 8D. 50, F4
        mov     eax, dword [ebp+10H]                    ; 0525 _ 8B. 45, 10
        sub     eax, 12                                 ; 0528 _ 83. E8, 0C
        mov     dword [esp+18H], edx                    ; 052B _ 89. 54 24, 18
        mov     dword [esp+14H], 30                     ; 052F _ C7. 44 24, 14, 0000001E
        mov     dword [esp+10H], eax                    ; 0537 _ 89. 44 24, 10
        mov     dword [esp+0CH], 3                      ; 053B _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 7                       ; 0543 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 054B _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 054E _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0552 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0555 _ 89. 04 24
        call    _boxfill8                               ; 0558 _ E8, 00000510
        mov     eax, dword [ebp+10H]                    ; 055D _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 0560 _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 0563 _ 8B. 45, 10
        sub     eax, 12                                 ; 0566 _ 83. E8, 0C
        mov     dword [esp+18H], edx                    ; 0569 _ 89. 54 24, 18
        mov     dword [esp+14H], 2                      ; 056D _ C7. 44 24, 14, 00000002
        mov     dword [esp+10H], eax                    ; 0575 _ 89. 44 24, 10
        mov     dword [esp+0CH], 2                      ; 0579 _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 7                       ; 0581 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 0589 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 058C _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0590 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0593 _ 89. 04 24
        call    _boxfill8                               ; 0596 _ E8, 000004D2
        mov     eax, dword [ebp+10H]                    ; 059B _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 059E _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 05A1 _ 8B. 45, 10
        sub     eax, 4                                  ; 05A4 _ 83. E8, 04
        mov     dword [esp+18H], edx                    ; 05A7 _ 89. 54 24, 18
        mov     dword [esp+14H], 30                     ; 05AB _ C7. 44 24, 14, 0000001E
        mov     dword [esp+10H], eax                    ; 05B3 _ 89. 44 24, 10
        mov     dword [esp+0CH], 3                      ; 05B7 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 15                      ; 05BF _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 05C7 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 05CA _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 05CE _ 8B. 45, 08
        mov     dword [esp], eax                        ; 05D1 _ 89. 04 24
        call    _boxfill8                               ; 05D4 _ E8, 00000494
        mov     eax, dword [ebp+10H]                    ; 05D9 _ 8B. 45, 10
        lea     edx, [eax-5H]                           ; 05DC _ 8D. 50, FB
        mov     eax, dword [ebp+10H]                    ; 05DF _ 8B. 45, 10
        sub     eax, 11                                 ; 05E2 _ 83. E8, 0B
        mov     dword [esp+18H], edx                    ; 05E5 _ 89. 54 24, 18
        mov     dword [esp+14H], 30                     ; 05E9 _ C7. 44 24, 14, 0000001E
        mov     dword [esp+10H], eax                    ; 05F1 _ 89. 44 24, 10
        mov     dword [esp+0CH], 30                     ; 05F5 _ C7. 44 24, 0C, 0000001E
        mov     dword [esp+8H], 15                      ; 05FD _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 0605 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0608 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 060C _ 8B. 45, 08
        mov     dword [esp], eax                        ; 060F _ 89. 04 24
        call    _boxfill8                               ; 0612 _ E8, 00000456
        mov     eax, dword [ebp+10H]                    ; 0617 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 061A _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 061D _ 8B. 45, 10
        sub     eax, 3                                  ; 0620 _ 83. E8, 03
        mov     dword [esp+18H], edx                    ; 0623 _ 89. 54 24, 18
        mov     dword [esp+14H], 30                     ; 0627 _ C7. 44 24, 14, 0000001E
        mov     dword [esp+10H], eax                    ; 062F _ 89. 44 24, 10
        mov     dword [esp+0CH], 2                      ; 0633 _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 0                       ; 063B _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp+0CH]                    ; 0643 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0646 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 064A _ 8B. 45, 08
        mov     dword [esp], eax                        ; 064D _ 89. 04 24
        call    _boxfill8                               ; 0650 _ E8, 00000418
        mov     eax, dword [ebp+10H]                    ; 0655 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 0658 _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 065B _ 8B. 45, 10
        sub     eax, 12                                 ; 065E _ 83. E8, 0C
        mov     dword [esp+18H], edx                    ; 0661 _ 89. 54 24, 18
        mov     dword [esp+14H], 31                     ; 0665 _ C7. 44 24, 14, 0000001F
        mov     dword [esp+10H], eax                    ; 066D _ 89. 44 24, 10
        mov     dword [esp+0CH], 31                     ; 0671 _ C7. 44 24, 0C, 0000001F
        mov     dword [esp+8H], 0                       ; 0679 _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp+0CH]                    ; 0681 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0684 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0688 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 068B _ 89. 04 24
        call    _boxfill8                               ; 068E _ E8, 000003DA
        mov     eax, dword [ebp+10H]                    ; 0693 _ 8B. 45, 10
        lea     ebx, [eax-0CH]                          ; 0696 _ 8D. 58, F4
        mov     eax, dword [ebp+0CH]                    ; 0699 _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 069C _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 069F _ 8B. 45, 10
        lea     edx, [eax-0CH]                          ; 06A2 _ 8D. 50, F4
        mov     eax, dword [ebp+0CH]                    ; 06A5 _ 8B. 45, 0C
        sub     eax, 36                                 ; 06A8 _ 83. E8, 24
        mov     dword [esp+18H], ebx                    ; 06AB _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 06AF _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 06B3 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 06B7 _ 89. 44 24, 0C
        mov     dword [esp+8H], 15                      ; 06BB _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 06C3 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 06C6 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 06CA _ 8B. 45, 08
        mov     dword [esp], eax                        ; 06CD _ 89. 04 24
        call    _boxfill8                               ; 06D0 _ E8, 00000398
        mov     eax, dword [ebp+10H]                    ; 06D5 _ 8B. 45, 10
        lea     ebx, [eax-4H]                           ; 06D8 _ 8D. 58, FC
        mov     eax, dword [ebp+0CH]                    ; 06DB _ 8B. 45, 0C
        lea     ecx, [eax-24H]                          ; 06DE _ 8D. 48, DC
        mov     eax, dword [ebp+10H]                    ; 06E1 _ 8B. 45, 10
        lea     edx, [eax-0BH]                          ; 06E4 _ 8D. 50, F5
        mov     eax, dword [ebp+0CH]                    ; 06E7 _ 8B. 45, 0C
        sub     eax, 36                                 ; 06EA _ 83. E8, 24
        mov     dword [esp+18H], ebx                    ; 06ED _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 06F1 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 06F5 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 06F9 _ 89. 44 24, 0C
        mov     dword [esp+8H], 15                      ; 06FD _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 0705 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0708 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 070C _ 8B. 45, 08
        mov     dword [esp], eax                        ; 070F _ 89. 04 24
        call    _boxfill8                               ; 0712 _ E8, 00000356
        mov     eax, dword [ebp+10H]                    ; 0717 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 071A _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 071D _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 0720 _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 0723 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 0726 _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 0729 _ 8B. 45, 0C
        sub     eax, 36                                 ; 072C _ 83. E8, 24
        mov     dword [esp+18H], ebx                    ; 072F _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 0733 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 0737 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 073B _ 89. 44 24, 0C
        mov     dword [esp+8H], 7                       ; 073F _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 0747 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 074A _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 074E _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0751 _ 89. 04 24
        call    _boxfill8                               ; 0754 _ E8, 00000314
        mov     eax, dword [ebp+10H]                    ; 0759 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 075C _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 075F _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 0762 _ 8D. 48, FD
        mov     eax, dword [ebp+10H]                    ; 0765 _ 8B. 45, 10
        lea     edx, [eax-0CH]                          ; 0768 _ 8D. 50, F4
        mov     eax, dword [ebp+0CH]                    ; 076B _ 8B. 45, 0C
        sub     eax, 3                                  ; 076E _ 83. E8, 03
        mov     dword [esp+18H], ebx                    ; 0771 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 0775 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 0779 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 077D _ 89. 44 24, 0C
        mov     dword [esp+8H], 7                       ; 0781 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 0789 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 078C _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0790 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0793 _ 89. 04 24
        call    _boxfill8                               ; 0796 _ E8, 000002D2
        nop                                             ; 079B _ 90
        add     esp, 36                                 ; 079C _ 83. C4, 24
        pop     ebx                                     ; 079F _ 5B
        pop     ebp                                     ; 07A0 _ 5D
        ret                                             ; 07A1 _ C3
; _init_screen8 End of function

_computeMousePosition:; Function begin
        push    ebp                                     ; 07A2 _ 55
        mov     ebp, esp                                ; 07A3 _ 89. E5
        sub     esp, 40                                 ; 07A5 _ 83. EC, 28
        mov     eax, dword [ebp+10H]                    ; 07A8 _ 8B. 45, 10
        mov     edx, dword [eax+4H]                     ; 07AB _ 8B. 50, 04
        mov     eax, dword [_mx]                        ; 07AE _ A1, 000000F0(d)
        add     eax, edx                                ; 07B3 _ 01. D0
        mov     dword [_mx], eax                        ; 07B5 _ A3, 000000F0(d)
        mov     eax, dword [ebp+10H]                    ; 07BA _ 8B. 45, 10
        mov     edx, dword [eax+8H]                     ; 07BD _ 8B. 50, 08
        mov     eax, dword [_my]                        ; 07C0 _ A1, 000000F4(d)
        add     eax, edx                                ; 07C5 _ 01. D0
        mov     dword [_my], eax                        ; 07C7 _ A3, 000000F4(d)
        mov     eax, dword [_mx]                        ; 07CC _ A1, 000000F0(d)
        test    eax, eax                                ; 07D1 _ 85. C0
        jns     ?_004                                   ; 07D3 _ 79, 0A
        mov     dword [_mx], 0                          ; 07D5 _ C7. 05, 000000F0(d), 00000000
?_004:  mov     eax, dword [_my]                        ; 07DF _ A1, 000000F4(d)
        test    eax, eax                                ; 07E4 _ 85. C0
        jns     ?_005                                   ; 07E6 _ 79, 0A
        mov     dword [_my], 0                          ; 07E8 _ C7. 05, 000000F4(d), 00000000
?_005:  mov     edx, dword [_xsize]                     ; 07F2 _ 8B. 15, 000000F8(d)
        mov     eax, dword [_mx]                        ; 07F8 _ A1, 000000F0(d)
        cmp     edx, eax                                ; 07FD _ 39. C2
        jg      ?_006                                   ; 07FF _ 7F, 0D
        mov     eax, dword [_xsize]                     ; 0801 _ A1, 000000F8(d)
        sub     eax, 1                                  ; 0806 _ 83. E8, 01
        mov     dword [_mx], eax                        ; 0809 _ A3, 000000F0(d)
?_006:  mov     edx, dword [_ysize]                     ; 080E _ 8B. 15, 000000FC(d)
        mov     eax, dword [_my]                        ; 0814 _ A1, 000000F4(d)
        cmp     edx, eax                                ; 0819 _ 39. C2
        jg      ?_007                                   ; 081B _ 7F, 0D
        mov     eax, dword [_ysize]                     ; 081D _ A1, 000000FC(d)
        sub     eax, 1                                  ; 0822 _ 83. E8, 01
        mov     dword [_my], eax                        ; 0825 _ A3, 000000F4(d)
?_007:  mov     dword [esp+14H], ?_132                  ; 082A _ C7. 44 24, 14, 00000008(d)
        mov     dword [esp+10H], 7                      ; 0832 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 0                      ; 083A _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 0842 _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp+0CH]                    ; 084A _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 084D _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0851 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0854 _ 89. 04 24
        call    _showString                             ; 0857 _ E8, 000000A4
        nop                                             ; 085C _ 90
        leave                                           ; 085D _ C9
        ret                                             ; 085E _ C3
; _computeMousePosition End of function

_show_mouse_info:; Function begin
        push    ebp                                     ; 085F _ 55
        mov     ebp, esp                                ; 0860 _ 89. E5
        sub     esp, 40                                 ; 0862 _ 83. EC, 28
        mov     eax, dword [_buf_back]                  ; 0865 _ A1, 00000100(d)
        mov     dword [ebp-0CH], eax                    ; 086A _ 89. 45, F4
        mov     byte [ebp-0DH], 0                       ; 086D _ C6. 45, F3, 00
        call    _io_sti                                 ; 0871 _ E8, 00000000(rel)
        mov     dword [esp], _mouseinfo                 ; 0876 _ C7. 04 24, 00000020(d)
        call    _fifo8_get                              ; 087D _ E8, 0000081D
        mov     byte [ebp-0DH], al                      ; 0882 _ 88. 45, F3
        movzx   eax, byte [ebp-0DH]                     ; 0885 _ 0F B6. 45, F3
        mov     dword [esp+4H], eax                     ; 0889 _ 89. 44 24, 04
        mov     dword [esp], _mdec                      ; 088D _ C7. 04 24, 000000E0(d)
        call    _mouse_decode                           ; 0894 _ E8, 0000088B
        test    eax, eax                                ; 0899 _ 85. C0
        jz      ?_008                                   ; 089B _ 74, 3F
        mov     dword [esp+8H], _mdec                   ; 089D _ C7. 44 24, 08, 000000E0(d)
        mov     eax, dword [ebp+0CH]                    ; 08A5 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 08A8 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 08AC _ 8B. 45, 08
        mov     dword [esp], eax                        ; 08AF _ 89. 04 24
        call    _computeMousePosition                   ; 08B2 _ E8, FFFFFEEB
        mov     edx, dword [_my]                        ; 08B7 _ 8B. 15, 000000F4(d)
        mov     eax, dword [_mx]                        ; 08BD _ A1, 000000F0(d)
        mov     dword [esp+0CH], edx                    ; 08C2 _ 89. 54 24, 0C
        mov     dword [esp+8H], eax                     ; 08C6 _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 08CA _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 08CD _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 08D1 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 08D4 _ 89. 04 24
        call    _sheet_slide                            ; 08D7 _ E8, 00000000(rel)
?_008:  nop                                             ; 08DC _ 90
        leave                                           ; 08DD _ C9
        ret                                             ; 08DE _ C3
; _show_mouse_info End of function

_initBootInfo:; Function begin
        push    ebp                                     ; 08DF _ 55
        mov     ebp, esp                                ; 08E0 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 08E2 _ 8B. 45, 08
        mov     dword [eax], 655360                     ; 08E5 _ C7. 00, 000A0000
        mov     eax, dword [ebp+8H]                     ; 08EB _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 320                      ; 08EE _ 66: C7. 40, 04, 0140
        mov     eax, dword [ebp+8H]                     ; 08F4 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 200                      ; 08F7 _ 66: C7. 40, 06, 00C8
        nop                                             ; 08FD _ 90
        pop     ebp                                     ; 08FE _ 5D
        ret                                             ; 08FF _ C3
; _initBootInfo End of function

_showString:; Function begin
        push    ebp                                     ; 0900 _ 55
        mov     ebp, esp                                ; 0901 _ 89. E5
        push    ebx                                     ; 0903 _ 53
        sub     esp, 68                                 ; 0904 _ 83. EC, 44
        mov     eax, dword [ebp+18H]                    ; 0907 _ 8B. 45, 18
        mov     byte [ebp-1CH], al                      ; 090A _ 88. 45, E4
        mov     eax, dword [ebp+10H]                    ; 090D _ 8B. 45, 10
        mov     dword [ebp-0CH], eax                    ; 0910 _ 89. 45, F4
        jmp     ?_010                                   ; 0913 _ EB, 4B

?_009:  mov     eax, dword [ebp+1CH]                    ; 0915 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 0918 _ 0F B6. 00
        movzx   eax, al                                 ; 091B _ 0F B6. C0
        shl     eax, 4                                  ; 091E _ C1. E0, 04
        lea     ebx, [_systemFont+eax]                  ; 0921 _ 8D. 98, 00000000(d)
        movsx   eax, byte [ebp-1CH]                     ; 0927 _ 0F BE. 45, E4
        mov     edx, dword [ebp+0CH]                    ; 092B _ 8B. 55, 0C
        mov     ecx, dword [edx+4H]                     ; 092E _ 8B. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 0931 _ 8B. 55, 0C
        mov     edx, dword [edx]                        ; 0934 _ 8B. 12
        mov     dword [esp+14H], ebx                    ; 0936 _ 89. 5C 24, 14
        mov     dword [esp+10H], eax                    ; 093A _ 89. 44 24, 10
        mov     eax, dword [ebp+14H]                    ; 093E _ 8B. 45, 14
        mov     dword [esp+0CH], eax                    ; 0941 _ 89. 44 24, 0C
        mov     eax, dword [ebp+10H]                    ; 0945 _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 0948 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 094C _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 0950 _ 89. 14 24
        call    _showFont8                              ; 0953 _ E8, 00000165
        add     dword [ebp+10H], 8                      ; 0958 _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 095C _ 83. 45, 1C, 01
?_010:  mov     eax, dword [ebp+1CH]                    ; 0960 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 0963 _ 0F B6. 00
        test    al, al                                  ; 0966 _ 84. C0
        jnz     ?_009                                   ; 0968 _ 75, AB
        mov     eax, dword [ebp+14H]                    ; 096A _ 8B. 45, 14
        add     eax, 16                                 ; 096D _ 83. C0, 10
        mov     dword [esp+14H], eax                    ; 0970 _ 89. 44 24, 14
        mov     eax, dword [ebp+10H]                    ; 0974 _ 8B. 45, 10
        mov     dword [esp+10H], eax                    ; 0977 _ 89. 44 24, 10
        mov     eax, dword [ebp+14H]                    ; 097B _ 8B. 45, 14
        mov     dword [esp+0CH], eax                    ; 097E _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 0982 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 0985 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 0989 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 098C _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0990 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0993 _ 89. 04 24
        call    _sheet_refresh                          ; 0996 _ E8, 00000000(rel)
        nop                                             ; 099B _ 90
        add     esp, 68                                 ; 099C _ 83. C4, 44
        pop     ebx                                     ; 099F _ 5B
        pop     ebp                                     ; 09A0 _ 5D
        ret                                             ; 09A1 _ C3
; _showString End of function

_init_palette:; Function begin
        push    ebp                                     ; 09A2 _ 55
        mov     ebp, esp                                ; 09A3 _ 89. E5
        sub     esp, 24                                 ; 09A5 _ 83. EC, 18
        mov     dword [esp+8H], _table_rgb.2190         ; 09A8 _ C7. 44 24, 08, 00000020(d)
        mov     dword [esp+4H], 15                      ; 09B0 _ C7. 44 24, 04, 0000000F
        mov     dword [esp], 0                          ; 09B8 _ C7. 04 24, 00000000
        call    _set_palette                            ; 09BF _ E8, 00000003
        nop                                             ; 09C4 _ 90
        leave                                           ; 09C5 _ C9
        ret                                             ; 09C6 _ C3
; _init_palette End of function

_set_palette:; Function begin
        push    ebp                                     ; 09C7 _ 55
        mov     ebp, esp                                ; 09C8 _ 89. E5
        sub     esp, 40                                 ; 09CA _ 83. EC, 28
        call    _io_load_eflags                         ; 09CD _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 09D2 _ 89. 45, F0
        call    _io_cli                                 ; 09D5 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 09DA _ 8B. 45, 08
        mov     dword [esp+4H], eax                     ; 09DD _ 89. 44 24, 04
        mov     dword [esp], 968                        ; 09E1 _ C7. 04 24, 000003C8
        call    _io_out8                                ; 09E8 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 09ED _ 8B. 45, 08
        mov     dword [ebp-0CH], eax                    ; 09F0 _ 89. 45, F4
        jmp     ?_012                                   ; 09F3 _ EB, 62

?_011:  mov     eax, dword [ebp+10H]                    ; 09F5 _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 09F8 _ 0F B6. 00
        shr     al, 2                                   ; 09FB _ C0. E8, 02
        movzx   eax, al                                 ; 09FE _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 0A01 _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 0A05 _ C7. 04 24, 000003C9
        call    _io_out8                                ; 0A0C _ E8, 00000000(rel)
        mov     eax, dword [ebp+10H]                    ; 0A11 _ 8B. 45, 10
        add     eax, 1                                  ; 0A14 _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 0A17 _ 0F B6. 00
        shr     al, 2                                   ; 0A1A _ C0. E8, 02
        movzx   eax, al                                 ; 0A1D _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 0A20 _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 0A24 _ C7. 04 24, 000003C9
        call    _io_out8                                ; 0A2B _ E8, 00000000(rel)
        mov     eax, dword [ebp+10H]                    ; 0A30 _ 8B. 45, 10
        add     eax, 2                                  ; 0A33 _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 0A36 _ 0F B6. 00
        shr     al, 2                                   ; 0A39 _ C0. E8, 02
        movzx   eax, al                                 ; 0A3C _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 0A3F _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 0A43 _ C7. 04 24, 000003C9
        call    _io_out8                                ; 0A4A _ E8, 00000000(rel)
        add     dword [ebp+10H], 3                      ; 0A4F _ 83. 45, 10, 03
        add     dword [ebp-0CH], 1                      ; 0A53 _ 83. 45, F4, 01
?_012:  mov     eax, dword [ebp-0CH]                    ; 0A57 _ 8B. 45, F4
        cmp     eax, dword [ebp+0CH]                    ; 0A5A _ 3B. 45, 0C
        jle     ?_011                                   ; 0A5D _ 7E, 96
        mov     eax, dword [ebp-10H]                    ; 0A5F _ 8B. 45, F0
        mov     dword [esp], eax                        ; 0A62 _ 89. 04 24
        call    _io_store_eflags                        ; 0A65 _ E8, 00000000(rel)
        nop                                             ; 0A6A _ 90
        leave                                           ; 0A6B _ C9
        ret                                             ; 0A6C _ C3
; _set_palette End of function

_boxfill8:; Function begin
        push    ebp                                     ; 0A6D _ 55
        mov     ebp, esp                                ; 0A6E _ 89. E5
        sub     esp, 20                                 ; 0A70 _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 0A73 _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 0A76 _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 0A79 _ 8B. 45, 18
        mov     dword [ebp-8H], eax                     ; 0A7C _ 89. 45, F8
        jmp     ?_016                                   ; 0A7F _ EB, 31

?_013:  mov     eax, dword [ebp+14H]                    ; 0A81 _ 8B. 45, 14
        mov     dword [ebp-4H], eax                     ; 0A84 _ 89. 45, FC
        jmp     ?_015                                   ; 0A87 _ EB, 1D

?_014:  mov     eax, dword [ebp-8H]                     ; 0A89 _ 8B. 45, F8
        imul    eax, dword [ebp+0CH]                    ; 0A8C _ 0F AF. 45, 0C
        mov     edx, dword [ebp-4H]                     ; 0A90 _ 8B. 55, FC
        add     eax, edx                                ; 0A93 _ 01. D0
        mov     edx, eax                                ; 0A95 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0A97 _ 8B. 45, 08
        add     edx, eax                                ; 0A9A _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0A9C _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0AA0 _ 88. 02
        add     dword [ebp-4H], 1                       ; 0AA2 _ 83. 45, FC, 01
?_015:  mov     eax, dword [ebp-4H]                     ; 0AA6 _ 8B. 45, FC
        cmp     eax, dword [ebp+1CH]                    ; 0AA9 _ 3B. 45, 1C
        jle     ?_014                                   ; 0AAC _ 7E, DB
        add     dword [ebp-8H], 1                       ; 0AAE _ 83. 45, F8, 01
?_016:  mov     eax, dword [ebp-8H]                     ; 0AB2 _ 8B. 45, F8
        cmp     eax, dword [ebp+20H]                    ; 0AB5 _ 3B. 45, 20
        jle     ?_013                                   ; 0AB8 _ 7E, C7
        nop                                             ; 0ABA _ 90
        leave                                           ; 0ABB _ C9
        ret                                             ; 0ABC _ C3
; _boxfill8 End of function

_showFont8:; Function begin
        push    ebp                                     ; 0ABD _ 55
        mov     ebp, esp                                ; 0ABE _ 89. E5
        sub     esp, 20                                 ; 0AC0 _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 0AC3 _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 0AC6 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 0AC9 _ C7. 45, FC, 00000000
        jmp     ?_026                                   ; 0AD0 _ E9, 0000015C

?_017:  mov     edx, dword [ebp-4H]                     ; 0AD5 _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 0AD8 _ 8B. 45, 1C
        add     eax, edx                                ; 0ADB _ 01. D0
        movzx   eax, byte [eax]                         ; 0ADD _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 0AE0 _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 0AE3 _ 80. 7D, FB, 00
        jns     ?_018                                   ; 0AE7 _ 79, 1E
        mov     edx, dword [ebp+14H]                    ; 0AE9 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0AEC _ 8B. 45, FC
        add     eax, edx                                ; 0AEF _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0AF1 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 0AF5 _ 8B. 55, 10
        add     eax, edx                                ; 0AF8 _ 01. D0
        mov     edx, eax                                ; 0AFA _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0AFC _ 8B. 45, 08
        add     edx, eax                                ; 0AFF _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0B01 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0B05 _ 88. 02
?_018:  movsx   eax, byte [ebp-5H]                      ; 0B07 _ 0F BE. 45, FB
        and     eax, 40H                                ; 0B0B _ 83. E0, 40
        test    eax, eax                                ; 0B0E _ 85. C0
        jz      ?_019                                   ; 0B10 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 0B12 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0B15 _ 8B. 45, FC
        add     eax, edx                                ; 0B18 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0B1A _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 0B1E _ 8B. 55, 10
        add     eax, edx                                ; 0B21 _ 01. D0
        lea     edx, [eax+1H]                           ; 0B23 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0B26 _ 8B. 45, 08
        add     edx, eax                                ; 0B29 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0B2B _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0B2F _ 88. 02
?_019:  movsx   eax, byte [ebp-5H]                      ; 0B31 _ 0F BE. 45, FB
        and     eax, 20H                                ; 0B35 _ 83. E0, 20
        test    eax, eax                                ; 0B38 _ 85. C0
        jz      ?_020                                   ; 0B3A _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 0B3C _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0B3F _ 8B. 45, FC
        add     eax, edx                                ; 0B42 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0B44 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 0B48 _ 8B. 55, 10
        add     eax, edx                                ; 0B4B _ 01. D0
        lea     edx, [eax+2H]                           ; 0B4D _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 0B50 _ 8B. 45, 08
        add     edx, eax                                ; 0B53 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0B55 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0B59 _ 88. 02
?_020:  movsx   eax, byte [ebp-5H]                      ; 0B5B _ 0F BE. 45, FB
        and     eax, 10H                                ; 0B5F _ 83. E0, 10
        test    eax, eax                                ; 0B62 _ 85. C0
        jz      ?_021                                   ; 0B64 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 0B66 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0B69 _ 8B. 45, FC
        add     eax, edx                                ; 0B6C _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0B6E _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 0B72 _ 8B. 55, 10
        add     eax, edx                                ; 0B75 _ 01. D0
        lea     edx, [eax+3H]                           ; 0B77 _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 0B7A _ 8B. 45, 08
        add     edx, eax                                ; 0B7D _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0B7F _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0B83 _ 88. 02
?_021:  movsx   eax, byte [ebp-5H]                      ; 0B85 _ 0F BE. 45, FB
        and     eax, 08H                                ; 0B89 _ 83. E0, 08
        test    eax, eax                                ; 0B8C _ 85. C0
        jz      ?_022                                   ; 0B8E _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 0B90 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0B93 _ 8B. 45, FC
        add     eax, edx                                ; 0B96 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0B98 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 0B9C _ 8B. 55, 10
        add     eax, edx                                ; 0B9F _ 01. D0
        lea     edx, [eax+4H]                           ; 0BA1 _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0BA4 _ 8B. 45, 08
        add     edx, eax                                ; 0BA7 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0BA9 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0BAD _ 88. 02
?_022:  movsx   eax, byte [ebp-5H]                      ; 0BAF _ 0F BE. 45, FB
        and     eax, 04H                                ; 0BB3 _ 83. E0, 04
        test    eax, eax                                ; 0BB6 _ 85. C0
        jz      ?_023                                   ; 0BB8 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 0BBA _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0BBD _ 8B. 45, FC
        add     eax, edx                                ; 0BC0 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0BC2 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 0BC6 _ 8B. 55, 10
        add     eax, edx                                ; 0BC9 _ 01. D0
        lea     edx, [eax+5H]                           ; 0BCB _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 0BCE _ 8B. 45, 08
        add     edx, eax                                ; 0BD1 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0BD3 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0BD7 _ 88. 02
?_023:  movsx   eax, byte [ebp-5H]                      ; 0BD9 _ 0F BE. 45, FB
        and     eax, 02H                                ; 0BDD _ 83. E0, 02
        test    eax, eax                                ; 0BE0 _ 85. C0
        jz      ?_024                                   ; 0BE2 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 0BE4 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0BE7 _ 8B. 45, FC
        add     eax, edx                                ; 0BEA _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0BEC _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 0BF0 _ 8B. 55, 10
        add     eax, edx                                ; 0BF3 _ 01. D0
        lea     edx, [eax+6H]                           ; 0BF5 _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 0BF8 _ 8B. 45, 08
        add     edx, eax                                ; 0BFB _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0BFD _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0C01 _ 88. 02
?_024:  movsx   eax, byte [ebp-5H]                      ; 0C03 _ 0F BE. 45, FB
        and     eax, 01H                                ; 0C07 _ 83. E0, 01
        test    eax, eax                                ; 0C0A _ 85. C0
        jz      ?_025                                   ; 0C0C _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 0C0E _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0C11 _ 8B. 45, FC
        add     eax, edx                                ; 0C14 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0C16 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 0C1A _ 8B. 55, 10
        add     eax, edx                                ; 0C1D _ 01. D0
        lea     edx, [eax+7H]                           ; 0C1F _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 0C22 _ 8B. 45, 08
        add     edx, eax                                ; 0C25 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0C27 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0C2B _ 88. 02
?_025:  add     dword [ebp-4H], 1                       ; 0C2D _ 83. 45, FC, 01
?_026:  cmp     dword [ebp-4H], 15                      ; 0C31 _ 83. 7D, FC, 0F
        jle     ?_017                                   ; 0C35 _ 0F 8E, FFFFFE9A
        nop                                             ; 0C3B _ 90
        leave                                           ; 0C3C _ C9
        ret                                             ; 0C3D _ C3
; _showFont8 End of function

_init_mouse_cursor:; Function begin
        push    ebp                                     ; 0C3E _ 55
        mov     ebp, esp                                ; 0C3F _ 89. E5
        sub     esp, 20                                 ; 0C41 _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 0C44 _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 0C47 _ 88. 45, EC
        mov     dword [ebp-8H], 0                       ; 0C4A _ C7. 45, F8, 00000000
        jmp     ?_033                                   ; 0C51 _ E9, 000000B1

?_027:  mov     dword [ebp-4H], 0                       ; 0C56 _ C7. 45, FC, 00000000
        jmp     ?_032                                   ; 0C5D _ E9, 00000097

?_028:  mov     eax, dword [ebp-8H]                     ; 0C62 _ 8B. 45, F8
        shl     eax, 4                                  ; 0C65 _ C1. E0, 04
        mov     edx, eax                                ; 0C68 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 0C6A _ 8B. 45, FC
        add     eax, edx                                ; 0C6D _ 01. D0
        add     eax, _cursor.2237                       ; 0C6F _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 0C74 _ 0F B6. 00
        cmp     al, 42                                  ; 0C77 _ 3C, 2A
        jnz     ?_029                                   ; 0C79 _ 75, 17
        mov     eax, dword [ebp-8H]                     ; 0C7B _ 8B. 45, F8
        shl     eax, 4                                  ; 0C7E _ C1. E0, 04
        mov     edx, eax                                ; 0C81 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 0C83 _ 8B. 45, FC
        add     eax, edx                                ; 0C86 _ 01. D0
        mov     edx, eax                                ; 0C88 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0C8A _ 8B. 45, 08
        add     eax, edx                                ; 0C8D _ 01. D0
        mov     byte [eax], 0                           ; 0C8F _ C6. 00, 00
?_029:  mov     eax, dword [ebp-8H]                     ; 0C92 _ 8B. 45, F8
        shl     eax, 4                                  ; 0C95 _ C1. E0, 04
        mov     edx, eax                                ; 0C98 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 0C9A _ 8B. 45, FC
        add     eax, edx                                ; 0C9D _ 01. D0
        add     eax, _cursor.2237                       ; 0C9F _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 0CA4 _ 0F B6. 00
        cmp     al, 79                                  ; 0CA7 _ 3C, 4F
        jnz     ?_030                                   ; 0CA9 _ 75, 17
        mov     eax, dword [ebp-8H]                     ; 0CAB _ 8B. 45, F8
        shl     eax, 4                                  ; 0CAE _ C1. E0, 04
        mov     edx, eax                                ; 0CB1 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 0CB3 _ 8B. 45, FC
        add     eax, edx                                ; 0CB6 _ 01. D0
        mov     edx, eax                                ; 0CB8 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0CBA _ 8B. 45, 08
        add     eax, edx                                ; 0CBD _ 01. D0
        mov     byte [eax], 7                           ; 0CBF _ C6. 00, 07
?_030:  mov     eax, dword [ebp-8H]                     ; 0CC2 _ 8B. 45, F8
        shl     eax, 4                                  ; 0CC5 _ C1. E0, 04
        mov     edx, eax                                ; 0CC8 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 0CCA _ 8B. 45, FC
        add     eax, edx                                ; 0CCD _ 01. D0
        add     eax, _cursor.2237                       ; 0CCF _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 0CD4 _ 0F B6. 00
        cmp     al, 46                                  ; 0CD7 _ 3C, 2E
        jnz     ?_031                                   ; 0CD9 _ 75, 1A
        mov     eax, dword [ebp-8H]                     ; 0CDB _ 8B. 45, F8
        shl     eax, 4                                  ; 0CDE _ C1. E0, 04
        mov     edx, eax                                ; 0CE1 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 0CE3 _ 8B. 45, FC
        add     eax, edx                                ; 0CE6 _ 01. D0
        mov     edx, eax                                ; 0CE8 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0CEA _ 8B. 45, 08
        add     edx, eax                                ; 0CED _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0CEF _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0CF3 _ 88. 02
?_031:  add     dword [ebp-4H], 1                       ; 0CF5 _ 83. 45, FC, 01
?_032:  cmp     dword [ebp-4H], 15                      ; 0CF9 _ 83. 7D, FC, 0F
        jle     ?_028                                   ; 0CFD _ 0F 8E, FFFFFF5F
        add     dword [ebp-8H], 1                       ; 0D03 _ 83. 45, F8, 01
?_033:  cmp     dword [ebp-8H], 15                      ; 0D07 _ 83. 7D, F8, 0F
        jle     ?_027                                   ; 0D0B _ 0F 8E, FFFFFF45
        nop                                             ; 0D11 _ 90
        leave                                           ; 0D12 _ C9
        ret                                             ; 0D13 _ C3
; _init_mouse_cursor End of function

_putblock:; Function begin
        push    ebp                                     ; 0D14 _ 55
        mov     ebp, esp                                ; 0D15 _ 89. E5
        push    ebx                                     ; 0D17 _ 53
        sub     esp, 16                                 ; 0D18 _ 83. EC, 10
        mov     dword [ebp-0CH], 0                      ; 0D1B _ C7. 45, F4, 00000000
        jmp     ?_037                                   ; 0D22 _ EB, 4E

?_034:  mov     dword [ebp-8H], 0                       ; 0D24 _ C7. 45, F8, 00000000
        jmp     ?_036                                   ; 0D2B _ EB, 39

?_035:  mov     eax, dword [ebp-0CH]                    ; 0D2D _ 8B. 45, F4
        imul    eax, dword [ebp+24H]                    ; 0D30 _ 0F AF. 45, 24
        mov     edx, dword [ebp-8H]                     ; 0D34 _ 8B. 55, F8
        add     eax, edx                                ; 0D37 _ 01. D0
        mov     edx, eax                                ; 0D39 _ 89. C2
        mov     eax, dword [ebp+20H]                    ; 0D3B _ 8B. 45, 20
        add     eax, edx                                ; 0D3E _ 01. D0
        mov     ecx, dword [ebp+1CH]                    ; 0D40 _ 8B. 4D, 1C
        mov     edx, dword [ebp-0CH]                    ; 0D43 _ 8B. 55, F4
        add     edx, ecx                                ; 0D46 _ 01. CA
        imul    edx, dword [ebp+0CH]                    ; 0D48 _ 0F AF. 55, 0C
        mov     ebx, dword [ebp+18H]                    ; 0D4C _ 8B. 5D, 18
        mov     ecx, dword [ebp-8H]                     ; 0D4F _ 8B. 4D, F8
        add     ecx, ebx                                ; 0D52 _ 01. D9
        add     edx, ecx                                ; 0D54 _ 01. CA
        mov     ecx, edx                                ; 0D56 _ 89. D1
        mov     edx, dword [ebp+8H]                     ; 0D58 _ 8B. 55, 08
        add     edx, ecx                                ; 0D5B _ 01. CA
        movzx   eax, byte [eax]                         ; 0D5D _ 0F B6. 00
        mov     byte [edx], al                          ; 0D60 _ 88. 02
        add     dword [ebp-8H], 1                       ; 0D62 _ 83. 45, F8, 01
?_036:  mov     eax, dword [ebp-8H]                     ; 0D66 _ 8B. 45, F8
        cmp     eax, dword [ebp+10H]                    ; 0D69 _ 3B. 45, 10
        jl      ?_035                                   ; 0D6C _ 7C, BF
        add     dword [ebp-0CH], 1                      ; 0D6E _ 83. 45, F4, 01
?_037:  mov     eax, dword [ebp-0CH]                    ; 0D72 _ 8B. 45, F4
        cmp     eax, dword [ebp+14H]                    ; 0D75 _ 3B. 45, 14
        jl      ?_034                                   ; 0D78 _ 7C, AA
        nop                                             ; 0D7A _ 90
        add     esp, 16                                 ; 0D7B _ 83. C4, 10
        pop     ebx                                     ; 0D7E _ 5B
        pop     ebp                                     ; 0D7F _ 5D
        ret                                             ; 0D80 _ C3
; _putblock End of function

_intHandlerFromC:; Function begin
        push    ebp                                     ; 0D81 _ 55
        mov     ebp, esp                                ; 0D82 _ 89. E5
        sub     esp, 40                                 ; 0D84 _ 83. EC, 28
        mov     eax, dword [_bootInfo]                  ; 0D87 _ A1, 00000000(d)
        mov     dword [ebp-0CH], eax                    ; 0D8C _ 89. 45, F4
        movzx   eax, word [?_141]                       ; 0D8F _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0D96 _ 98
        mov     dword [ebp-10H], eax                    ; 0D97 _ 89. 45, F0
        movzx   eax, word [?_142]                       ; 0D9A _ 0F B7. 05, 00000006(d)
        cwde                                            ; 0DA1 _ 98
        mov     dword [ebp-14H], eax                    ; 0DA2 _ 89. 45, EC
        mov     dword [esp+4H], 32                      ; 0DA5 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 0DAD _ C7. 04 24, 00000020
        call    _io_out8                                ; 0DB4 _ E8, 00000000(rel)
        mov     byte [ebp-15H], 0                       ; 0DB9 _ C6. 45, EB, 00
        mov     dword [esp], 96                         ; 0DBD _ C7. 04 24, 00000060
        call    _io_in8                                 ; 0DC4 _ E8, 00000000(rel)
        mov     byte [ebp-15H], al                      ; 0DC9 _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 0DCC _ 0F B6. 45, EB
        mov     dword [esp+4H], eax                     ; 0DD0 _ 89. 44 24, 04
        mov     dword [esp], _keyinfo                   ; 0DD4 _ C7. 04 24, 00000008(d)
        call    _fifo8_put                              ; 0DDB _ E8, 0000023F
        nop                                             ; 0DE0 _ 90
        leave                                           ; 0DE1 _ C9
        ret                                             ; 0DE2 _ C3
; _intHandlerFromC End of function

_charToHexVal:; Function begin
        push    ebp                                     ; 0DE3 _ 55
        mov     ebp, esp                                ; 0DE4 _ 89. E5
        sub     esp, 4                                  ; 0DE6 _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 0DE9 _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 0DEC _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 0DEF _ 80. 7D, FC, 09
        jle     ?_038                                   ; 0DF3 _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 0DF5 _ 0F B6. 45, FC
        add     eax, 55                                 ; 0DF9 _ 83. C0, 37
        jmp     ?_039                                   ; 0DFC _ EB, 07

?_038:  movzx   eax, byte [ebp-4H]                      ; 0DFE _ 0F B6. 45, FC
        add     eax, 48                                 ; 0E02 _ 83. C0, 30
?_039:  leave                                           ; 0E05 _ C9
        ret                                             ; 0E06 _ C3
; _charToHexVal End of function

_charToHexStr:; Function begin
        push    ebp                                     ; 0E07 _ 55
        mov     ebp, esp                                ; 0E08 _ 89. E5
        sub     esp, 24                                 ; 0E0A _ 83. EC, 18
        mov     eax, dword [ebp+8H]                     ; 0E0D _ 8B. 45, 08
        mov     byte [ebp-14H], al                      ; 0E10 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 0E13 _ C7. 45, FC, 00000000
        movzx   eax, byte [ebp-14H]                     ; 0E1A _ 0F B6. 45, EC
        and     eax, 0FH                                ; 0E1E _ 83. E0, 0F
        mov     byte [ebp-5H], al                       ; 0E21 _ 88. 45, FB
        movsx   eax, byte [ebp-5H]                      ; 0E24 _ 0F BE. 45, FB
        mov     dword [esp], eax                        ; 0E28 _ 89. 04 24
        call    _charToHexVal                           ; 0E2B _ E8, FFFFFFB3
        mov     byte [?_130], al                        ; 0E30 _ A2, 00000007(d)
        movzx   eax, byte [ebp-14H]                     ; 0E35 _ 0F B6. 45, EC
        shr     al, 4                                   ; 0E39 _ C0. E8, 04
        mov     byte [ebp-14H], al                      ; 0E3C _ 88. 45, EC
        movzx   eax, byte [ebp-14H]                     ; 0E3F _ 0F B6. 45, EC
        movsx   eax, al                                 ; 0E43 _ 0F BE. C0
        mov     dword [esp], eax                        ; 0E46 _ 89. 04 24
        call    _charToHexVal                           ; 0E49 _ E8, FFFFFF95
        mov     byte [?_129], al                        ; 0E4E _ A2, 00000006(d)
        mov     eax, _keyval                            ; 0E53 _ B8, 00000004(d)
        leave                                           ; 0E58 _ C9
        ret                                             ; 0E59 _ C3
; _charToHexStr End of function

_intToHexStr:; Function begin
        push    ebp                                     ; 0E5A _ 55
        mov     ebp, esp                                ; 0E5B _ 89. E5
        sub     esp, 16                                 ; 0E5D _ 83. EC, 10
        mov     byte [_str.2285], 48                    ; 0E60 _ C6. 05, 00000220(d), 30
        mov     byte [?_143], 88                        ; 0E67 _ C6. 05, 00000221(d), 58
        mov     byte [?_144], 0                         ; 0E6E _ C6. 05, 0000022A(d), 00
        mov     dword [ebp-4H], 2                       ; 0E75 _ C7. 45, FC, 00000002
        jmp     ?_041                                   ; 0E7C _ EB, 0F

?_040:  mov     eax, dword [ebp-4H]                     ; 0E7E _ 8B. 45, FC
        add     eax, _str.2285                          ; 0E81 _ 05, 00000220(d)
        mov     byte [eax], 48                          ; 0E86 _ C6. 00, 30
        add     dword [ebp-4H], 1                       ; 0E89 _ 83. 45, FC, 01
?_041:  cmp     dword [ebp-4H], 9                       ; 0E8D _ 83. 7D, FC, 09
        jle     ?_040                                   ; 0E91 _ 7E, EB
        mov     dword [ebp-8H], 9                       ; 0E93 _ C7. 45, F8, 00000009
        jmp     ?_045                                   ; 0E9A _ EB, 42

?_042:  mov     eax, dword [ebp+8H]                     ; 0E9C _ 8B. 45, 08
        and     eax, 0FH                                ; 0E9F _ 83. E0, 0F
        mov     dword [ebp-0CH], eax                    ; 0EA2 _ 89. 45, F4
        mov     eax, dword [ebp+8H]                     ; 0EA5 _ 8B. 45, 08
        shr     eax, 4                                  ; 0EA8 _ C1. E8, 04
        mov     dword [ebp+8H], eax                     ; 0EAB _ 89. 45, 08
        cmp     dword [ebp-0CH], 9                      ; 0EAE _ 83. 7D, F4, 09
        jle     ?_043                                   ; 0EB2 _ 7E, 14
        mov     eax, dword [ebp-0CH]                    ; 0EB4 _ 8B. 45, F4
        add     eax, 55                                 ; 0EB7 _ 83. C0, 37
        mov     edx, eax                                ; 0EBA _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0EBC _ 8B. 45, F8
        add     eax, _str.2285                          ; 0EBF _ 05, 00000220(d)
        mov     byte [eax], dl                          ; 0EC4 _ 88. 10
        jmp     ?_044                                   ; 0EC6 _ EB, 12

?_043:  mov     eax, dword [ebp-0CH]                    ; 0EC8 _ 8B. 45, F4
        add     eax, 48                                 ; 0ECB _ 83. C0, 30
        mov     edx, eax                                ; 0ECE _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0ED0 _ 8B. 45, F8
        add     eax, _str.2285                          ; 0ED3 _ 05, 00000220(d)
        mov     byte [eax], dl                          ; 0ED8 _ 88. 10
?_044:  sub     dword [ebp-8H], 1                       ; 0EDA _ 83. 6D, F8, 01
?_045:  cmp     dword [ebp-8H], 1                       ; 0EDE _ 83. 7D, F8, 01
        jle     ?_046                                   ; 0EE2 _ 7E, 06
        cmp     dword [ebp+8H], 0                       ; 0EE4 _ 83. 7D, 08, 00
        jnz     ?_042                                   ; 0EE8 _ 75, B2
?_046:  mov     eax, _str.2285                          ; 0EEA _ B8, 00000220(d)
        leave                                           ; 0EEF _ C9
        ret                                             ; 0EF0 _ C3
; _intToHexStr End of function

_wait_KBC_sendready:; Function begin
        push    ebp                                     ; 0EF1 _ 55
        mov     ebp, esp                                ; 0EF2 _ 89. E5
        sub     esp, 24                                 ; 0EF4 _ 83. EC, 18
?_047:  mov     dword [esp], 100                        ; 0EF7 _ C7. 04 24, 00000064
        call    _io_in8                                 ; 0EFE _ E8, 00000000(rel)
        and     eax, 02H                                ; 0F03 _ 83. E0, 02
        test    eax, eax                                ; 0F06 _ 85. C0
        jz      ?_048                                   ; 0F08 _ 74, 02
        jmp     ?_047                                   ; 0F0A _ EB, EB
; _wait_KBC_sendready End of function

?_048:  ; Local function
        nop                                             ; 0F0C _ 90
        nop                                             ; 0F0D _ 90
        leave                                           ; 0F0E _ C9
        ret                                             ; 0F0F _ C3

_init_keyboard:; Function begin
        push    ebp                                     ; 0F10 _ 55
        mov     ebp, esp                                ; 0F11 _ 89. E5
        sub     esp, 24                                 ; 0F13 _ 83. EC, 18
        call    _wait_KBC_sendready                     ; 0F16 _ E8, FFFFFFD6
        mov     dword [esp+4H], 96                      ; 0F1B _ C7. 44 24, 04, 00000060
        mov     dword [esp], 100                        ; 0F23 _ C7. 04 24, 00000064
        call    _io_out8                                ; 0F2A _ E8, 00000000(rel)
        call    _wait_KBC_sendready                     ; 0F2F _ E8, FFFFFFBD
        mov     dword [esp+4H], 71                      ; 0F34 _ C7. 44 24, 04, 00000047
        mov     dword [esp], 96                         ; 0F3C _ C7. 04 24, 00000060
        call    _io_out8                                ; 0F43 _ E8, 00000000(rel)
        nop                                             ; 0F48 _ 90
        leave                                           ; 0F49 _ C9
        ret                                             ; 0F4A _ C3
; _init_keyboard End of function

_enable_mouse:; Function begin
        push    ebp                                     ; 0F4B _ 55
        mov     ebp, esp                                ; 0F4C _ 89. E5
        sub     esp, 24                                 ; 0F4E _ 83. EC, 18
        call    _wait_KBC_sendready                     ; 0F51 _ E8, FFFFFF9B
        mov     dword [esp+4H], 212                     ; 0F56 _ C7. 44 24, 04, 000000D4
        mov     dword [esp], 100                        ; 0F5E _ C7. 04 24, 00000064
        call    _io_out8                                ; 0F65 _ E8, 00000000(rel)
        call    _wait_KBC_sendready                     ; 0F6A _ E8, FFFFFF82
        mov     dword [esp+4H], 244                     ; 0F6F _ C7. 44 24, 04, 000000F4
        mov     dword [esp], 96                         ; 0F77 _ C7. 04 24, 00000060
        call    _io_out8                                ; 0F7E _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 0F83 _ 8B. 45, 08
        mov     byte [eax+3H], 0                        ; 0F86 _ C6. 40, 03, 00
        nop                                             ; 0F8A _ 90
        leave                                           ; 0F8B _ C9
        ret                                             ; 0F8C _ C3
; _enable_mouse End of function

_intHandlerForMouse:; Function begin
        push    ebp                                     ; 0F8D _ 55
        mov     ebp, esp                                ; 0F8E _ 89. E5
        sub     esp, 40                                 ; 0F90 _ 83. EC, 28
        mov     dword [esp+4H], 32                      ; 0F93 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 160                        ; 0F9B _ C7. 04 24, 000000A0
        call    _io_out8                                ; 0FA2 _ E8, 00000000(rel)
        mov     dword [esp+4H], 32                      ; 0FA7 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 0FAF _ C7. 04 24, 00000020
        call    _io_out8                                ; 0FB6 _ E8, 00000000(rel)
        mov     dword [esp], 96                         ; 0FBB _ C7. 04 24, 00000060
        call    _io_in8                                 ; 0FC2 _ E8, 00000000(rel)
        mov     byte [ebp-9H], al                       ; 0FC7 _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 0FCA _ 0F B6. 45, F7
        mov     dword [esp+4H], eax                     ; 0FCE _ 89. 44 24, 04
        mov     dword [esp], _mouseinfo                 ; 0FD2 _ C7. 04 24, 00000020(d)
        call    _fifo8_put                              ; 0FD9 _ E8, 00000041
        nop                                             ; 0FDE _ 90
        leave                                           ; 0FDF _ C9
        ret                                             ; 0FE0 _ C3
; _intHandlerForMouse End of function

_fifo8_init:; Function begin
        push    ebp                                     ; 0FE1 _ 55
        mov     ebp, esp                                ; 0FE2 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0FE4 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 0FE7 _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 0FEA _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 0FED _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 0FF0 _ 8B. 55, 10
        mov     dword [eax], edx                        ; 0FF3 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 0FF5 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 0FF8 _ 8B. 55, 0C
        mov     dword [eax+10H], edx                    ; 0FFB _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 0FFE _ 8B. 45, 08
        mov     dword [eax+14H], 0                      ; 1001 _ C7. 40, 14, 00000000
        mov     eax, dword [ebp+8H]                     ; 1008 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 100B _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 1012 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 1015 _ C7. 40, 08, 00000000
        nop                                             ; 101C _ 90
        pop     ebp                                     ; 101D _ 5D
        ret                                             ; 101E _ C3
; _fifo8_init End of function

_fifo8_put:; Function begin
        push    ebp                                     ; 101F _ 55
        mov     ebp, esp                                ; 1020 _ 89. E5
        sub     esp, 4                                  ; 1022 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 1025 _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 1028 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 102B _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 102E _ 8B. 40, 10
        test    eax, eax                                ; 1031 _ 85. C0
        jnz     ?_049                                   ; 1033 _ 75, 18
        mov     eax, dword [ebp+8H]                     ; 1035 _ 8B. 45, 08
        mov     eax, dword [eax+14H]                    ; 1038 _ 8B. 40, 14
        or      eax, 01H                                ; 103B _ 83. C8, 01
        mov     edx, eax                                ; 103E _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1040 _ 8B. 45, 08
        mov     dword [eax+14H], edx                    ; 1043 _ 89. 50, 14
        mov     eax, 4294967295                         ; 1046 _ B8, FFFFFFFF
        jmp     ?_051                                   ; 104B _ EB, 50

?_049:  mov     eax, dword [ebp+8H]                     ; 104D _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 1050 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 1052 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 1055 _ 8B. 40, 04
        add     edx, eax                                ; 1058 _ 01. C2
        movzx   eax, byte [ebp-4H]                      ; 105A _ 0F B6. 45, FC
        mov     byte [edx], al                          ; 105E _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 1060 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 1063 _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 1066 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1069 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 106C _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 106F _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1072 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1075 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 1078 _ 8B. 40, 0C
        cmp     edx, eax                                ; 107B _ 39. C2
        jnz     ?_050                                   ; 107D _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 107F _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 1082 _ C7. 40, 04, 00000000
?_050:  mov     eax, dword [ebp+8H]                     ; 1089 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 108C _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 108F _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 1092 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 1095 _ 89. 50, 10
        mov     eax, 0                                  ; 1098 _ B8, 00000000
?_051:  leave                                           ; 109D _ C9
        ret                                             ; 109E _ C3
; _fifo8_put End of function

_fifo8_get:; Function begin
        push    ebp                                     ; 109F _ 55
        mov     ebp, esp                                ; 10A0 _ 89. E5
        sub     esp, 16                                 ; 10A2 _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 10A5 _ 8B. 45, 08
        mov     edx, dword [eax+10H]                    ; 10A8 _ 8B. 50, 10
        mov     eax, dword [ebp+8H]                     ; 10AB _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 10AE _ 8B. 40, 0C
        cmp     edx, eax                                ; 10B1 _ 39. C2
        jnz     ?_052                                   ; 10B3 _ 75, 07
        mov     eax, 4294967295                         ; 10B5 _ B8, FFFFFFFF
        jmp     ?_054                                   ; 10BA _ EB, 51

?_052:  mov     eax, dword [ebp+8H]                     ; 10BC _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 10BF _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 10C1 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 10C4 _ 8B. 40, 08
        add     eax, edx                                ; 10C7 _ 01. D0
        movzx   eax, byte [eax]                         ; 10C9 _ 0F B6. 00
        movzx   eax, al                                 ; 10CC _ 0F B6. C0
        mov     dword [ebp-4H], eax                     ; 10CF _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 10D2 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 10D5 _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 10D8 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 10DB _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 10DE _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 10E1 _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 10E4 _ 8B. 50, 08
        mov     eax, dword [ebp+8H]                     ; 10E7 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 10EA _ 8B. 40, 0C
        cmp     edx, eax                                ; 10ED _ 39. C2
        jnz     ?_053                                   ; 10EF _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 10F1 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 10F4 _ C7. 40, 08, 00000000
?_053:  mov     eax, dword [ebp+8H]                     ; 10FB _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 10FE _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 1101 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1104 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 1107 _ 89. 50, 10
        mov     eax, dword [ebp-4H]                     ; 110A _ 8B. 45, FC
?_054:  leave                                           ; 110D _ C9
        ret                                             ; 110E _ C3
; _fifo8_get End of function

_fifo8_status:; Function begin
        push    ebp                                     ; 110F _ 55
        mov     ebp, esp                                ; 1110 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 1112 _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 1115 _ 8B. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 1118 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 111B _ 8B. 40, 10
        sub     edx, eax                                ; 111E _ 29. C2
        mov     eax, edx                                ; 1120 _ 89. D0
        pop     ebp                                     ; 1122 _ 5D
        ret                                             ; 1123 _ C3
; _fifo8_status End of function

_mouse_decode:; Function begin
        push    ebp                                     ; 1124 _ 55
        mov     ebp, esp                                ; 1125 _ 89. E5
        sub     esp, 4                                  ; 1127 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 112A _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 112D _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 1130 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1133 _ 0F B6. 40, 03
        test    al, al                                  ; 1137 _ 84. C0
        jnz     ?_056                                   ; 1139 _ 75, 17
        cmp     byte [ebp-4H], -6                       ; 113B _ 80. 7D, FC, FA
        jnz     ?_055                                   ; 113F _ 75, 07
        mov     eax, dword [ebp+8H]                     ; 1141 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 1144 _ C6. 40, 03, 01
?_055:  mov     eax, 0                                  ; 1148 _ B8, 00000000
        jmp     ?_063                                   ; 114D _ E9, 0000010F

?_056:  mov     eax, dword [ebp+8H]                     ; 1152 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1155 _ 0F B6. 40, 03
        cmp     al, 1                                   ; 1159 _ 3C, 01
        jnz     ?_058                                   ; 115B _ 75, 28
        movzx   eax, byte [ebp-4H]                      ; 115D _ 0F B6. 45, FC
        and     eax, 0C8H                               ; 1161 _ 25, 000000C8
        cmp     eax, 8                                  ; 1166 _ 83. F8, 08
        jnz     ?_057                                   ; 1169 _ 75, 10
        mov     edx, dword [ebp+8H]                     ; 116B _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 116E _ 0F B6. 45, FC
        mov     byte [edx], al                          ; 1172 _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 1174 _ 8B. 45, 08
        mov     byte [eax+3H], 2                        ; 1177 _ C6. 40, 03, 02
?_057:  mov     eax, 0                                  ; 117B _ B8, 00000000
        jmp     ?_063                                   ; 1180 _ E9, 000000DC

?_058:  mov     eax, dword [ebp+8H]                     ; 1185 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1188 _ 0F B6. 40, 03
        cmp     al, 2                                   ; 118C _ 3C, 02
        jnz     ?_059                                   ; 118E _ 75, 1B
        mov     edx, dword [ebp+8H]                     ; 1190 _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 1193 _ 0F B6. 45, FC
        mov     byte [edx+1H], al                       ; 1197 _ 88. 42, 01
        mov     eax, dword [ebp+8H]                     ; 119A _ 8B. 45, 08
        mov     byte [eax+3H], 3                        ; 119D _ C6. 40, 03, 03
        mov     eax, 0                                  ; 11A1 _ B8, 00000000
        jmp     ?_063                                   ; 11A6 _ E9, 000000B6

?_059:  mov     eax, dword [ebp+8H]                     ; 11AB _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 11AE _ 0F B6. 40, 03
        cmp     al, 3                                   ; 11B2 _ 3C, 03
        jne     ?_062                                   ; 11B4 _ 0F 85, 000000A2
        mov     edx, dword [ebp+8H]                     ; 11BA _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 11BD _ 0F B6. 45, FC
        mov     byte [edx+2H], al                       ; 11C1 _ 88. 42, 02
        mov     eax, dword [ebp+8H]                     ; 11C4 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 11C7 _ C6. 40, 03, 01
        mov     eax, dword [ebp+8H]                     ; 11CB _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 11CE _ 0F B6. 00
        movzx   eax, al                                 ; 11D1 _ 0F B6. C0
        and     eax, 07H                                ; 11D4 _ 83. E0, 07
        mov     edx, eax                                ; 11D7 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 11D9 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 11DC _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 11DF _ 8B. 45, 08
        movzx   eax, byte [eax+1H]                      ; 11E2 _ 0F B6. 40, 01
        movzx   eax, al                                 ; 11E6 _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 11E9 _ 8B. 55, 08
        mov     dword [edx+4H], eax                     ; 11EC _ 89. 42, 04
        mov     eax, dword [ebp+8H]                     ; 11EF _ 8B. 45, 08
        movzx   eax, byte [eax+2H]                      ; 11F2 _ 0F B6. 40, 02
        movzx   eax, al                                 ; 11F6 _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 11F9 _ 8B. 55, 08
        mov     dword [edx+8H], eax                     ; 11FC _ 89. 42, 08
        mov     eax, dword [ebp+8H]                     ; 11FF _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1202 _ 0F B6. 00
        movzx   eax, al                                 ; 1205 _ 0F B6. C0
        and     eax, 10H                                ; 1208 _ 83. E0, 10
        test    eax, eax                                ; 120B _ 85. C0
        jz      ?_060                                   ; 120D _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 120F _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 1212 _ 8B. 40, 04
        or      eax, 0FFFFFF00H                         ; 1215 _ 0D, FFFFFF00
        mov     edx, eax                                ; 121A _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 121C _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 121F _ 89. 50, 04
?_060:  mov     eax, dword [ebp+8H]                     ; 1222 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1225 _ 0F B6. 00
        movzx   eax, al                                 ; 1228 _ 0F B6. C0
        and     eax, 20H                                ; 122B _ 83. E0, 20
        test    eax, eax                                ; 122E _ 85. C0
        jz      ?_061                                   ; 1230 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 1232 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 1235 _ 8B. 40, 08
        or      eax, 0FFFFFF00H                         ; 1238 _ 0D, FFFFFF00
        mov     edx, eax                                ; 123D _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 123F _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 1242 _ 89. 50, 08
?_061:  mov     eax, dword [ebp+8H]                     ; 1245 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 1248 _ 8B. 40, 08
        neg     eax                                     ; 124B _ F7. D8
        mov     edx, eax                                ; 124D _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 124F _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 1252 _ 89. 50, 08
        mov     eax, 1                                  ; 1255 _ B8, 00000001
        jmp     ?_063                                   ; 125A _ EB, 05

?_062:  mov     eax, 4294967295                         ; 125C _ B8, FFFFFFFF
?_063:  leave                                           ; 1261 _ C9
        ret                                             ; 1262 _ C3
; _mouse_decode End of function

_showMemoryInfo:; Function begin
        push    ebp                                     ; 1263 _ 55
        mov     ebp, esp                                ; 1264 _ 89. E5
        sub     esp, 88                                 ; 1266 _ 83. EC, 58
        mov     dword [ebp-0CH], 0                      ; 1269 _ C7. 45, F4, 00000000
        mov     dword [ebp-10H], 0                      ; 1270 _ C7. 45, F0, 00000000
        mov     dword [ebp-14H], 104                    ; 1277 _ C7. 45, EC, 00000068
        mov     dword [ebp-18H], 80                     ; 127E _ C7. 45, E8, 00000050
        mov     edx, dword [_ysize]                     ; 1285 _ 8B. 15, 000000FC(d)
        mov     eax, dword [ebp+0CH]                    ; 128B _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 128E _ 8B. 00
        mov     dword [esp+8H], edx                     ; 1290 _ 89. 54 24, 08
        mov     edx, dword [ebp+1CH]                    ; 1294 _ 8B. 55, 1C
        mov     dword [esp+4H], edx                     ; 1297 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 129B _ 89. 04 24
        call    _init_screen8                           ; 129E _ E8, FFFFF177
        mov     eax, dword [ebp+20H]                    ; 12A3 _ 8B. 45, 20
        movsx   eax, al                                 ; 12A6 _ 0F BE. C0
        mov     dword [esp+14H], ?_133                  ; 12A9 _ C7. 44 24, 14, 0000001F(d)
        mov     dword [esp+10H], eax                    ; 12B1 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 12B5 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 12B8 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 12BC _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 12BF _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 12C3 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 12C6 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 12CA _ 8B. 45, 08
        mov     dword [esp], eax                        ; 12CD _ 89. 04 24
        call    _showString                             ; 12D0 _ E8, FFFFF62B
        mov     eax, dword [ebp+18H]                    ; 12D5 _ 8B. 45, 18
        mov     dword [esp], eax                        ; 12D8 _ 89. 04 24
        call    _intToHexStr                            ; 12DB _ E8, FFFFFB7A
        mov     dword [ebp-1CH], eax                    ; 12E0 _ 89. 45, E4
        mov     eax, dword [ebp+20H]                    ; 12E3 _ 8B. 45, 20
        movsx   eax, al                                 ; 12E6 _ 0F BE. C0
        mov     edx, dword [ebp-1CH]                    ; 12E9 _ 8B. 55, E4
        mov     dword [esp+14H], edx                    ; 12EC _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 12F0 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 12F4 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 12F7 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 12FB _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 12FE _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1302 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1305 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1309 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 130C _ 89. 04 24
        call    _showString                             ; 130F _ E8, FFFFF5EC
        add     dword [ebp-10H], 16                     ; 1314 _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 1318 _ 8B. 45, 20
        movsx   eax, al                                 ; 131B _ 0F BE. C0
        mov     dword [esp+14H], ?_134                  ; 131E _ C7. 44 24, 14, 00000029(d)
        mov     dword [esp+10H], eax                    ; 1326 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 132A _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 132D _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 1331 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 1334 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1338 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 133B _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 133F _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1342 _ 89. 04 24
        call    _showString                             ; 1345 _ E8, FFFFF5B6
        mov     eax, dword [ebp+10H]                    ; 134A _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 134D _ 8B. 00
        mov     dword [esp], eax                        ; 134F _ 89. 04 24
        call    _intToHexStr                            ; 1352 _ E8, FFFFFB03
        mov     dword [ebp-20H], eax                    ; 1357 _ 89. 45, E0
        mov     eax, dword [ebp+20H]                    ; 135A _ 8B. 45, 20
        movsx   eax, al                                 ; 135D _ 0F BE. C0
        mov     edx, dword [ebp-20H]                    ; 1360 _ 8B. 55, E0
        mov     dword [esp+14H], edx                    ; 1363 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 1367 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 136B _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 136E _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 1372 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 1375 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1379 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 137C _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1380 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1383 _ 89. 04 24
        call    _showString                             ; 1386 _ E8, FFFFF575
        add     dword [ebp-10H], 16                     ; 138B _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 138F _ 8B. 45, 20
        movsx   eax, al                                 ; 1392 _ 0F BE. C0
        mov     dword [esp+14H], ?_135                  ; 1395 _ C7. 44 24, 14, 00000035(d)
        mov     dword [esp+10H], eax                    ; 139D _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 13A1 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 13A4 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 13A8 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 13AB _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 13AF _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 13B2 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 13B6 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 13B9 _ 89. 04 24
        call    _showString                             ; 13BC _ E8, FFFFF53F
        mov     eax, dword [ebp+10H]                    ; 13C1 _ 8B. 45, 10
        mov     eax, dword [eax+4H]                     ; 13C4 _ 8B. 40, 04
        mov     dword [esp], eax                        ; 13C7 _ 89. 04 24
        call    _intToHexStr                            ; 13CA _ E8, FFFFFA8B
        mov     dword [ebp-24H], eax                    ; 13CF _ 89. 45, DC
        mov     eax, dword [ebp+20H]                    ; 13D2 _ 8B. 45, 20
        movsx   eax, al                                 ; 13D5 _ 0F BE. C0
        mov     edx, dword [ebp-24H]                    ; 13D8 _ 8B. 55, DC
        mov     dword [esp+14H], edx                    ; 13DB _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 13DF _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 13E3 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 13E6 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 13EA _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 13ED _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 13F1 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 13F4 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 13F8 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 13FB _ 89. 04 24
        call    _showString                             ; 13FE _ E8, FFFFF4FD
        add     dword [ebp-10H], 16                     ; 1403 _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 1407 _ 8B. 45, 20
        movsx   eax, al                                 ; 140A _ 0F BE. C0
        mov     dword [esp+14H], ?_136                  ; 140D _ C7. 44 24, 14, 00000041(d)
        mov     dword [esp+10H], eax                    ; 1415 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1419 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 141C _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 1420 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 1423 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1427 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 142A _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 142E _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1431 _ 89. 04 24
        call    _showString                             ; 1434 _ E8, FFFFF4C7
        mov     eax, dword [ebp+10H]                    ; 1439 _ 8B. 45, 10
        mov     eax, dword [eax+8H]                     ; 143C _ 8B. 40, 08
        mov     dword [esp], eax                        ; 143F _ 89. 04 24
        call    _intToHexStr                            ; 1442 _ E8, FFFFFA13
        mov     dword [ebp-28H], eax                    ; 1447 _ 89. 45, D8
        mov     eax, dword [ebp+20H]                    ; 144A _ 8B. 45, 20
        movsx   eax, al                                 ; 144D _ 0F BE. C0
        mov     edx, dword [ebp-28H]                    ; 1450 _ 8B. 55, D8
        mov     dword [esp+14H], edx                    ; 1453 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 1457 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 145B _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 145E _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 1462 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 1465 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1469 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 146C _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1470 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1473 _ 89. 04 24
        call    _showString                             ; 1476 _ E8, FFFFF485
        add     dword [ebp-10H], 16                     ; 147B _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 147F _ 8B. 45, 20
        movsx   eax, al                                 ; 1482 _ 0F BE. C0
        mov     dword [esp+14H], ?_137                  ; 1485 _ C7. 44 24, 14, 0000004D(d)
        mov     dword [esp+10H], eax                    ; 148D _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1491 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1494 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 1498 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 149B _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 149F _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 14A2 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 14A6 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 14A9 _ 89. 04 24
        call    _showString                             ; 14AC _ E8, FFFFF44F
        mov     eax, dword [ebp+10H]                    ; 14B1 _ 8B. 45, 10
        mov     eax, dword [eax+0CH]                    ; 14B4 _ 8B. 40, 0C
        mov     dword [esp], eax                        ; 14B7 _ 89. 04 24
        call    _intToHexStr                            ; 14BA _ E8, FFFFF99B
        mov     dword [ebp-2CH], eax                    ; 14BF _ 89. 45, D4
        mov     eax, dword [ebp+20H]                    ; 14C2 _ 8B. 45, 20
        movsx   eax, al                                 ; 14C5 _ 0F BE. C0
        mov     edx, dword [ebp-2CH]                    ; 14C8 _ 8B. 55, D4
        mov     dword [esp+14H], edx                    ; 14CB _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 14CF _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 14D3 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 14D6 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 14DA _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 14DD _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 14E1 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 14E4 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 14E8 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 14EB _ 89. 04 24
        call    _showString                             ; 14EE _ E8, FFFFF40D
        add     dword [ebp-10H], 16                     ; 14F3 _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 14F7 _ 8B. 45, 20
        movsx   eax, al                                 ; 14FA _ 0F BE. C0
        mov     dword [esp+14H], ?_138                  ; 14FD _ C7. 44 24, 14, 0000005A(d)
        mov     dword [esp+10H], eax                    ; 1505 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1509 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 150C _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 1510 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 1513 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1517 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 151A _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 151E _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1521 _ 89. 04 24
        call    _showString                             ; 1524 _ E8, FFFFF3D7
        mov     eax, dword [ebp+10H]                    ; 1529 _ 8B. 45, 10
        mov     eax, dword [eax+10H]                    ; 152C _ 8B. 40, 10
        mov     dword [esp], eax                        ; 152F _ 89. 04 24
        call    _intToHexStr                            ; 1532 _ E8, FFFFF923
        mov     dword [ebp-30H], eax                    ; 1537 _ 89. 45, D0
        mov     eax, dword [ebp+20H]                    ; 153A _ 8B. 45, 20
        movsx   eax, al                                 ; 153D _ 0F BE. C0
        mov     edx, dword [ebp-30H]                    ; 1540 _ 8B. 55, D0
        mov     dword [esp+14H], edx                    ; 1543 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 1547 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 154B _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 154E _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 1552 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 1555 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1559 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 155C _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1560 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1563 _ 89. 04 24
        call    _showString                             ; 1566 _ E8, FFFFF395
        nop                                             ; 156B _ 90
        leave                                           ; 156C _ C9
        ret                                             ; 156D _ C3
; _showMemoryInfo End of function

_message_box:; Function begin
        push    ebp                                     ; 156E _ 55
        mov     ebp, esp                                ; 156F _ 89. E5
        sub     esp, 56                                 ; 1571 _ 83. EC, 38
        mov     eax, dword [ebp+8H]                     ; 1574 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1577 _ 89. 04 24
        call    _sheet_alloc                            ; 157A _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 157F _ 89. 45, F4
        mov     eax, dword [_memman]                    ; 1582 _ A1, 00000000(d)
        mov     dword [esp+4H], 10880                   ; 1587 _ C7. 44 24, 04, 00002A80
        mov     dword [esp], eax                        ; 158F _ 89. 04 24
        call    _memman_alloc_4k                        ; 1592 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 1597 _ 89. 45, F0
        mov     dword [esp+10H], -1                     ; 159A _ C7. 44 24, 10, FFFFFFFF
        mov     dword [esp+0CH], 68                     ; 15A2 _ C7. 44 24, 0C, 00000044
        mov     dword [esp+8H], 160                     ; 15AA _ C7. 44 24, 08, 000000A0
        mov     eax, dword [ebp-10H]                    ; 15B2 _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 15B5 _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 15B9 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 15BC _ 89. 04 24
        call    _sheet_setbuf                           ; 15BF _ E8, 00000000(rel)
        mov     eax, dword [ebp+0CH]                    ; 15C4 _ 8B. 45, 0C
        mov     dword [esp+8H], eax                     ; 15C7 _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 15CB _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 15CE _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 15D2 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 15D5 _ 89. 04 24
        call    _make_window8                           ; 15D8 _ E8, 000000A5
        mov     dword [esp+14H], ?_139                  ; 15DD _ C7. 44 24, 14, 00000061(d)
        mov     dword [esp+10H], 0                      ; 15E5 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 28                     ; 15ED _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 24                      ; 15F5 _ C7. 44 24, 08, 00000018
        mov     eax, dword [ebp-0CH]                    ; 15FD _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 1600 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1604 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1607 _ 89. 04 24
        call    _showString                             ; 160A _ E8, FFFFF2F1
        mov     dword [esp+14H], ?_140                  ; 160F _ C7. 44 24, 14, 0000006C(d)
        mov     dword [esp+10H], 0                      ; 1617 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 44                     ; 161F _ C7. 44 24, 0C, 0000002C
        mov     dword [esp+8H], 24                      ; 1627 _ C7. 44 24, 08, 00000018
        mov     eax, dword [ebp-0CH]                    ; 162F _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 1632 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1636 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1639 _ 89. 04 24
        call    _showString                             ; 163C _ E8, FFFFF2BF
        mov     dword [esp+0CH], 72                     ; 1641 _ C7. 44 24, 0C, 00000048
        mov     dword [esp+8H], 80                      ; 1649 _ C7. 44 24, 08, 00000050
        mov     eax, dword [ebp-0CH]                    ; 1651 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 1654 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1658 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 165B _ 89. 04 24
        call    _sheet_slide                            ; 165E _ E8, 00000000(rel)
        mov     dword [esp+8H], 2                       ; 1663 _ C7. 44 24, 08, 00000002
        mov     eax, dword [ebp-0CH]                    ; 166B _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 166E _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1672 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1675 _ 89. 04 24
        call    _sheet_updown                           ; 1678 _ E8, 00000000(rel)
        mov     eax, dword [ebp-0CH]                    ; 167D _ 8B. 45, F4
        leave                                           ; 1680 _ C9
        ret                                             ; 1681 _ C3
; _message_box End of function

_make_window8:; Function begin
        push    ebp                                     ; 1682 _ 55
        mov     ebp, esp                                ; 1683 _ 89. E5
        push    ebx                                     ; 1685 _ 53
        sub     esp, 68                                 ; 1686 _ 83. EC, 44
        mov     eax, dword [ebp+0CH]                    ; 1689 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 168C _ 8B. 40, 04
        mov     dword [ebp-18H], eax                    ; 168F _ 89. 45, E8
        mov     eax, dword [ebp+0CH]                    ; 1692 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 1695 _ 8B. 40, 08
        mov     dword [ebp-1CH], eax                    ; 1698 _ 89. 45, E4
        mov     eax, dword [ebp-18H]                    ; 169B _ 8B. 45, E8
        lea     edx, [eax-1H]                           ; 169E _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 16A1 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 16A4 _ 8B. 00
        mov     dword [esp+18H], 0                      ; 16A6 _ C7. 44 24, 18, 00000000
        mov     dword [esp+14H], edx                    ; 16AE _ 89. 54 24, 14
        mov     dword [esp+10H], 0                      ; 16B2 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 16BA _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 16C2 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-18H]                    ; 16CA _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 16CD _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 16D1 _ 89. 04 24
        call    _boxfill8                               ; 16D4 _ E8, FFFFF394
        mov     eax, dword [ebp-18H]                    ; 16D9 _ 8B. 45, E8
        lea     edx, [eax-2H]                           ; 16DC _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 16DF _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 16E2 _ 8B. 00
        mov     dword [esp+18H], 1                      ; 16E4 _ C7. 44 24, 18, 00000001
        mov     dword [esp+14H], edx                    ; 16EC _ 89. 54 24, 14
        mov     dword [esp+10H], 1                      ; 16F0 _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], 1                      ; 16F8 _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 7                       ; 1700 _ C7. 44 24, 08, 00000007
        mov     edx, dword [ebp-18H]                    ; 1708 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 170B _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 170F _ 89. 04 24
        call    _boxfill8                               ; 1712 _ E8, FFFFF356
        mov     eax, dword [ebp-1CH]                    ; 1717 _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 171A _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 171D _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1720 _ 8B. 00
        mov     dword [esp+18H], edx                    ; 1722 _ 89. 54 24, 18
        mov     dword [esp+14H], 0                      ; 1726 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], 0                      ; 172E _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 1736 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 173E _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-18H]                    ; 1746 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 1749 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 174D _ 89. 04 24
        call    _boxfill8                               ; 1750 _ E8, FFFFF318
        mov     eax, dword [ebp-1CH]                    ; 1755 _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 1758 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 175B _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 175E _ 8B. 00
        mov     dword [esp+18H], edx                    ; 1760 _ 89. 54 24, 18
        mov     dword [esp+14H], 1                      ; 1764 _ C7. 44 24, 14, 00000001
        mov     dword [esp+10H], 1                      ; 176C _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], 1                      ; 1774 _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 7                       ; 177C _ C7. 44 24, 08, 00000007
        mov     edx, dword [ebp-18H]                    ; 1784 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 1787 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 178B _ 89. 04 24
        call    _boxfill8                               ; 178E _ E8, FFFFF2DA
        mov     eax, dword [ebp-1CH]                    ; 1793 _ 8B. 45, E4
        lea     ebx, [eax-2H]                           ; 1796 _ 8D. 58, FE
        mov     eax, dword [ebp-18H]                    ; 1799 _ 8B. 45, E8
        lea     ecx, [eax-2H]                           ; 179C _ 8D. 48, FE
        mov     eax, dword [ebp-18H]                    ; 179F _ 8B. 45, E8
        lea     edx, [eax-2H]                           ; 17A2 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 17A5 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 17A8 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 17AA _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 17AE _ 89. 4C 24, 14
        mov     dword [esp+10H], 1                      ; 17B2 _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], edx                    ; 17BA _ 89. 54 24, 0C
        mov     dword [esp+8H], 15                      ; 17BE _ C7. 44 24, 08, 0000000F
        mov     edx, dword [ebp-18H]                    ; 17C6 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 17C9 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 17CD _ 89. 04 24
        call    _boxfill8                               ; 17D0 _ E8, FFFFF298
        mov     eax, dword [ebp-1CH]                    ; 17D5 _ 8B. 45, E4
        lea     ebx, [eax-1H]                           ; 17D8 _ 8D. 58, FF
        mov     eax, dword [ebp-18H]                    ; 17DB _ 8B. 45, E8
        lea     ecx, [eax-1H]                           ; 17DE _ 8D. 48, FF
        mov     eax, dword [ebp-18H]                    ; 17E1 _ 8B. 45, E8
        lea     edx, [eax-1H]                           ; 17E4 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 17E7 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 17EA _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 17EC _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 17F0 _ 89. 4C 24, 14
        mov     dword [esp+10H], 0                      ; 17F4 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], edx                    ; 17FC _ 89. 54 24, 0C
        mov     dword [esp+8H], 0                       ; 1800 _ C7. 44 24, 08, 00000000
        mov     edx, dword [ebp-18H]                    ; 1808 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 180B _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 180F _ 89. 04 24
        call    _boxfill8                               ; 1812 _ E8, FFFFF256
        mov     eax, dword [ebp-1CH]                    ; 1817 _ 8B. 45, E4
        lea     ecx, [eax-3H]                           ; 181A _ 8D. 48, FD
        mov     eax, dword [ebp-18H]                    ; 181D _ 8B. 45, E8
        lea     edx, [eax-3H]                           ; 1820 _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 1823 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1826 _ 8B. 00
        mov     dword [esp+18H], ecx                    ; 1828 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 182C _ 89. 54 24, 14
        mov     dword [esp+10H], 2                      ; 1830 _ C7. 44 24, 10, 00000002
        mov     dword [esp+0CH], 2                      ; 1838 _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 8                       ; 1840 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-18H]                    ; 1848 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 184B _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 184F _ 89. 04 24
        call    _boxfill8                               ; 1852 _ E8, FFFFF216
        mov     eax, dword [ebp-18H]                    ; 1857 _ 8B. 45, E8
        lea     edx, [eax-4H]                           ; 185A _ 8D. 50, FC
        mov     eax, dword [ebp+0CH]                    ; 185D _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1860 _ 8B. 00
        mov     dword [esp+18H], 20                     ; 1862 _ C7. 44 24, 18, 00000014
        mov     dword [esp+14H], edx                    ; 186A _ 89. 54 24, 14
        mov     dword [esp+10H], 3                      ; 186E _ C7. 44 24, 10, 00000003
        mov     dword [esp+0CH], 3                      ; 1876 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 12                      ; 187E _ C7. 44 24, 08, 0000000C
        mov     edx, dword [ebp-18H]                    ; 1886 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 1889 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 188D _ 89. 04 24
        call    _boxfill8                               ; 1890 _ E8, FFFFF1D8
        mov     eax, dword [ebp-1CH]                    ; 1895 _ 8B. 45, E4
        lea     ebx, [eax-2H]                           ; 1898 _ 8D. 58, FE
        mov     eax, dword [ebp-18H]                    ; 189B _ 8B. 45, E8
        lea     ecx, [eax-2H]                           ; 189E _ 8D. 48, FE
        mov     eax, dword [ebp-1CH]                    ; 18A1 _ 8B. 45, E4
        lea     edx, [eax-2H]                           ; 18A4 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 18A7 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 18AA _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 18AC _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 18B0 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 18B4 _ 89. 54 24, 10
        mov     dword [esp+0CH], 1                      ; 18B8 _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 15                      ; 18C0 _ C7. 44 24, 08, 0000000F
        mov     edx, dword [ebp-18H]                    ; 18C8 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 18CB _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 18CF _ 89. 04 24
        call    _boxfill8                               ; 18D2 _ E8, FFFFF196
        mov     eax, dword [ebp-1CH]                    ; 18D7 _ 8B. 45, E4
        lea     ebx, [eax-1H]                           ; 18DA _ 8D. 58, FF
        mov     eax, dword [ebp-18H]                    ; 18DD _ 8B. 45, E8
        lea     ecx, [eax-1H]                           ; 18E0 _ 8D. 48, FF
        mov     eax, dword [ebp-1CH]                    ; 18E3 _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 18E6 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 18E9 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 18EC _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 18EE _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 18F2 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 18F6 _ 89. 54 24, 10
        mov     dword [esp+0CH], 0                      ; 18FA _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 1902 _ C7. 44 24, 08, 00000000
        mov     edx, dword [ebp-18H]                    ; 190A _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 190D _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1911 _ 89. 04 24
        call    _boxfill8                               ; 1914 _ E8, FFFFF154
        mov     eax, dword [ebp+10H]                    ; 1919 _ 8B. 45, 10
        mov     dword [esp+14H], eax                    ; 191C _ 89. 44 24, 14
        mov     dword [esp+10H], 7                      ; 1920 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 4                      ; 1928 _ C7. 44 24, 0C, 00000004
        mov     dword [esp+8H], 24                      ; 1930 _ C7. 44 24, 08, 00000018
        mov     eax, dword [ebp+0CH]                    ; 1938 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 193B _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 193F _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1942 _ 89. 04 24
        call    _showString                             ; 1945 _ E8, FFFFEFB6
        mov     dword [ebp-10H], 0                      ; 194A _ C7. 45, F0, 00000000
        jmp     ?_071                                   ; 1951 _ E9, 00000084

?_064:  mov     dword [ebp-0CH], 0                      ; 1956 _ C7. 45, F4, 00000000
        jmp     ?_070                                   ; 195D _ EB, 71

?_065:  mov     eax, dword [ebp-10H]                    ; 195F _ 8B. 45, F0
        shl     eax, 4                                  ; 1962 _ C1. E0, 04
        mov     edx, eax                                ; 1965 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 1967 _ 8B. 45, F4
        add     eax, edx                                ; 196A _ 01. D0
        add     eax, _closebtn.2365                     ; 196C _ 05, 00000160(d)
        movzx   eax, byte [eax]                         ; 1971 _ 0F B6. 00
        mov     byte [ebp-11H], al                      ; 1974 _ 88. 45, EF
        cmp     byte [ebp-11H], 64                      ; 1977 _ 80. 7D, EF, 40
        jnz     ?_066                                   ; 197B _ 75, 06
        mov     byte [ebp-11H], 0                       ; 197D _ C6. 45, EF, 00
        jmp     ?_069                                   ; 1981 _ EB, 1C

?_066:  cmp     byte [ebp-11H], 36                      ; 1983 _ 80. 7D, EF, 24
        jnz     ?_067                                   ; 1987 _ 75, 06
        mov     byte [ebp-11H], 15                      ; 1989 _ C6. 45, EF, 0F
        jmp     ?_069                                   ; 198D _ EB, 10

?_067:  cmp     byte [ebp-11H], 81                      ; 198F _ 80. 7D, EF, 51
        jnz     ?_068                                   ; 1993 _ 75, 06
        mov     byte [ebp-11H], 8                       ; 1995 _ C6. 45, EF, 08
        jmp     ?_069                                   ; 1999 _ EB, 04

?_068:  mov     byte [ebp-11H], 7                       ; 199B _ C6. 45, EF, 07
?_069:  mov     eax, dword [ebp+0CH]                    ; 199F _ 8B. 45, 0C
        mov     ecx, dword [eax]                        ; 19A2 _ 8B. 08
        mov     eax, dword [ebp-10H]                    ; 19A4 _ 8B. 45, F0
        lea     edx, [eax+5H]                           ; 19A7 _ 8D. 50, 05
        mov     eax, dword [ebp+0CH]                    ; 19AA _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 19AD _ 8B. 40, 04
        imul    eax, edx                                ; 19B0 _ 0F AF. C2
        mov     edx, dword [ebp+0CH]                    ; 19B3 _ 8B. 55, 0C
        mov     edx, dword [edx+4H]                     ; 19B6 _ 8B. 52, 04
        lea     ebx, [edx-15H]                          ; 19B9 _ 8D. 5A, EB
        mov     edx, dword [ebp-0CH]                    ; 19BC _ 8B. 55, F4
        add     edx, ebx                                ; 19BF _ 01. DA
        add     eax, edx                                ; 19C1 _ 01. D0
        lea     edx, [ecx+eax]                          ; 19C3 _ 8D. 14 01
        movzx   eax, byte [ebp-11H]                     ; 19C6 _ 0F B6. 45, EF
        mov     byte [edx], al                          ; 19CA _ 88. 02
        add     dword [ebp-0CH], 1                      ; 19CC _ 83. 45, F4, 01
?_070:  cmp     dword [ebp-0CH], 15                     ; 19D0 _ 83. 7D, F4, 0F
        jle     ?_065                                   ; 19D4 _ 7E, 89
        add     dword [ebp-10H], 1                      ; 19D6 _ 83. 45, F0, 01
?_071:  cmp     dword [ebp-10H], 13                     ; 19DA _ 83. 7D, F0, 0D
        jle     ?_064                                   ; 19DE _ 0F 8E, FFFFFF72
        nop                                             ; 19E4 _ 90
        add     esp, 68                                 ; 19E5 _ 83. C4, 44
        pop     ebx                                     ; 19E8 _ 5B
        pop     ebp                                     ; 19E9 _ 5D
        ret                                             ; 19EA _ C3
; _make_window8 End of function

        nop                                             ; 19EB _ 90

.text:  ; Local function

_shtctl_init:
        push    ebp                                     ; 19EC _ 55
        mov     ebp, esp                                ; 19ED _ 89. E5
        sub     esp, 40                                 ; 19EF _ 83. EC, 28
        mov     dword [esp+4H], 9232                    ; 19F2 _ C7. 44 24, 04, 00002410
        mov     eax, dword [ebp+8H]                     ; 19FA _ 8B. 45, 08
        mov     dword [esp], eax                        ; 19FD _ 89. 04 24
        call    _memman_alloc_4k                        ; 1A00 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 1A05 _ 89. 45, F0
        cmp     dword [ebp-10H], 0                      ; 1A08 _ 83. 7D, F0, 00
        jnz     ?_072                                   ; 1A0C _ 75, 07
        mov     eax, 0                                  ; 1A0E _ B8, 00000000
        jmp     ?_075                                   ; 1A13 _ EB, 54

?_072:  mov     eax, dword [ebp-10H]                    ; 1A15 _ 8B. 45, F0
        mov     edx, dword [ebp+0CH]                    ; 1A18 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 1A1B _ 89. 10
        mov     eax, dword [ebp-10H]                    ; 1A1D _ 8B. 45, F0
        mov     edx, dword [ebp+10H]                    ; 1A20 _ 8B. 55, 10
        mov     dword [eax+4H], edx                     ; 1A23 _ 89. 50, 04
        mov     eax, dword [ebp-10H]                    ; 1A26 _ 8B. 45, F0
        mov     edx, dword [ebp+14H]                    ; 1A29 _ 8B. 55, 14
        mov     dword [eax+8H], edx                     ; 1A2C _ 89. 50, 08
        mov     eax, dword [ebp-10H]                    ; 1A2F _ 8B. 45, F0
        mov     dword [eax+0CH], -1                     ; 1A32 _ C7. 40, 0C, FFFFFFFF
        mov     dword [ebp-0CH], 0                      ; 1A39 _ C7. 45, F4, 00000000
        jmp     ?_074                                   ; 1A40 _ EB, 1B

?_073:  mov     edx, dword [ebp-10H]                    ; 1A42 _ 8B. 55, F0
        mov     eax, dword [ebp-0CH]                    ; 1A45 _ 8B. 45, F4
        add     eax, 33                                 ; 1A48 _ 83. C0, 21
        shl     eax, 5                                  ; 1A4B _ C1. E0, 05
        add     eax, edx                                ; 1A4E _ 01. D0
        add     eax, 12                                 ; 1A50 _ 83. C0, 0C
        mov     dword [eax], 0                          ; 1A53 _ C7. 00, 00000000
        add     dword [ebp-0CH], 1                      ; 1A59 _ 83. 45, F4, 01
?_074:  cmp     dword [ebp-0CH], 255                    ; 1A5D _ 81. 7D, F4, 000000FF
        jle     ?_073                                   ; 1A64 _ 7E, DC
        mov     eax, dword [ebp-10H]                    ; 1A66 _ 8B. 45, F0
?_075:  leave                                           ; 1A69 _ C9
        ret                                             ; 1A6A _ C3

_sheet_alloc:; Function begin
        push    ebp                                     ; 1A6B _ 55
        mov     ebp, esp                                ; 1A6C _ 89. E5
        sub     esp, 16                                 ; 1A6E _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 1A71 _ C7. 45, FC, 00000000
        jmp     ?_078                                   ; 1A78 _ EB, 57

?_076:  mov     edx, dword [ebp+8H]                     ; 1A7A _ 8B. 55, 08
        mov     eax, dword [ebp-4H]                     ; 1A7D _ 8B. 45, FC
        add     eax, 33                                 ; 1A80 _ 83. C0, 21
        shl     eax, 5                                  ; 1A83 _ C1. E0, 05
        add     eax, edx                                ; 1A86 _ 01. D0
        add     eax, 12                                 ; 1A88 _ 83. C0, 0C
        mov     eax, dword [eax]                        ; 1A8B _ 8B. 00
        test    eax, eax                                ; 1A8D _ 85. C0
        jnz     ?_077                                   ; 1A8F _ 75, 3C
        mov     eax, dword [ebp-4H]                     ; 1A91 _ 8B. 45, FC
        shl     eax, 5                                  ; 1A94 _ C1. E0, 05
        lea     edx, [eax+410H]                         ; 1A97 _ 8D. 90, 00000410
        mov     eax, dword [ebp+8H]                     ; 1A9D _ 8B. 45, 08
        add     eax, edx                                ; 1AA0 _ 01. D0
        mov     dword [ebp-8H], eax                     ; 1AA2 _ 89. 45, F8
        mov     eax, dword [ebp+8H]                     ; 1AA5 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 1AA8 _ 8B. 55, FC
        add     edx, 4                                  ; 1AAB _ 83. C2, 04
        mov     ecx, dword [ebp-8H]                     ; 1AAE _ 8B. 4D, F8
        mov     dword [eax+edx*4], ecx                  ; 1AB1 _ 89. 0C 90
        mov     eax, dword [ebp-8H]                     ; 1AB4 _ 8B. 45, F8
        mov     dword [eax+1CH], 1                      ; 1AB7 _ C7. 40, 1C, 00000001
        mov     eax, dword [ebp-8H]                     ; 1ABE _ 8B. 45, F8
        mov     dword [eax+18H], -1                     ; 1AC1 _ C7. 40, 18, FFFFFFFF
        mov     eax, dword [ebp-8H]                     ; 1AC8 _ 8B. 45, F8
        jmp     ?_079                                   ; 1ACB _ EB, 12

?_077:  add     dword [ebp-4H], 1                       ; 1ACD _ 83. 45, FC, 01
?_078:  cmp     dword [ebp-4H], 255                     ; 1AD1 _ 81. 7D, FC, 000000FF
        jle     ?_076                                   ; 1AD8 _ 7E, A0
        mov     eax, 0                                  ; 1ADA _ B8, 00000000
?_079:  leave                                           ; 1ADF _ C9
        ret                                             ; 1AE0 _ C3
; _sheet_alloc End of function

_sheet_setbuf:; Function begin
        push    ebp                                     ; 1AE1 _ 55
        mov     ebp, esp                                ; 1AE2 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 1AE4 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 1AE7 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 1AEA _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 1AEC _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 1AEF _ 8B. 55, 10
        mov     dword [eax+4H], edx                     ; 1AF2 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1AF5 _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 1AF8 _ 8B. 55, 14
        mov     dword [eax+8H], edx                     ; 1AFB _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 1AFE _ 8B. 45, 08
        mov     edx, dword [ebp+18H]                    ; 1B01 _ 8B. 55, 18
        mov     dword [eax+14H], edx                    ; 1B04 _ 89. 50, 14
        nop                                             ; 1B07 _ 90
        pop     ebp                                     ; 1B08 _ 5D
        ret                                             ; 1B09 _ C3
; _sheet_setbuf End of function

_sheet_updown:; Function begin
        push    ebp                                     ; 1B0A _ 55
        mov     ebp, esp                                ; 1B0B _ 89. E5
        push    ebx                                     ; 1B0D _ 53
        sub     esp, 52                                 ; 1B0E _ 83. EC, 34
        mov     eax, dword [ebp+0CH]                    ; 1B11 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 1B14 _ 8B. 40, 18
        mov     dword [ebp-10H], eax                    ; 1B17 _ 89. 45, F0
        mov     eax, dword [ebp+8H]                     ; 1B1A _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 1B1D _ 8B. 40, 0C
        add     eax, 1                                  ; 1B20 _ 83. C0, 01
        cmp     dword [ebp+10H], eax                    ; 1B23 _ 39. 45, 10
        jle     ?_080                                   ; 1B26 _ 7E, 0C
        mov     eax, dword [ebp+8H]                     ; 1B28 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 1B2B _ 8B. 40, 0C
        add     eax, 1                                  ; 1B2E _ 83. C0, 01
        mov     dword [ebp+10H], eax                    ; 1B31 _ 89. 45, 10
?_080:  cmp     dword [ebp+10H], -1                     ; 1B34 _ 83. 7D, 10, FF
        jge     ?_081                                   ; 1B38 _ 7D, 07
        mov     dword [ebp+10H], -1                     ; 1B3A _ C7. 45, 10, FFFFFFFF
?_081:  mov     eax, dword [ebp+0CH]                    ; 1B41 _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 1B44 _ 8B. 55, 10
        mov     dword [eax+18H], edx                    ; 1B47 _ 89. 50, 18
        mov     eax, dword [ebp-10H]                    ; 1B4A _ 8B. 45, F0
        cmp     eax, dword [ebp+10H]                    ; 1B4D _ 3B. 45, 10
        jle     ?_089                                   ; 1B50 _ 0F 8E, 00000100
        cmp     dword [ebp+10H], 0                      ; 1B56 _ 83. 7D, 10, 00
        js      ?_084                                   ; 1B5A _ 78, 52
        mov     eax, dword [ebp-10H]                    ; 1B5C _ 8B. 45, F0
        mov     dword [ebp-0CH], eax                    ; 1B5F _ 89. 45, F4
        jmp     ?_083                                   ; 1B62 _ EB, 31

?_082:  mov     eax, dword [ebp-0CH]                    ; 1B64 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 1B67 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 1B6A _ 8B. 45, 08
        add     edx, 4                                  ; 1B6D _ 83. C2, 04
        mov     ecx, dword [eax+edx*4]                  ; 1B70 _ 8B. 0C 90
        mov     eax, dword [ebp+8H]                     ; 1B73 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 1B76 _ 8B. 55, F4
        add     edx, 4                                  ; 1B79 _ 83. C2, 04
        mov     dword [eax+edx*4], ecx                  ; 1B7C _ 89. 0C 90
        mov     eax, dword [ebp+8H]                     ; 1B7F _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 1B82 _ 8B. 55, F4
        add     edx, 4                                  ; 1B85 _ 83. C2, 04
        mov     eax, dword [eax+edx*4]                  ; 1B88 _ 8B. 04 90
        mov     edx, dword [ebp-0CH]                    ; 1B8B _ 8B. 55, F4
        mov     dword [eax+18H], edx                    ; 1B8E _ 89. 50, 18
        sub     dword [ebp-0CH], 1                      ; 1B91 _ 83. 6D, F4, 01
?_083:  mov     eax, dword [ebp-0CH]                    ; 1B95 _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 1B98 _ 3B. 45, 10
        jg      ?_082                                   ; 1B9B _ 7F, C7
        mov     eax, dword [ebp+8H]                     ; 1B9D _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 1BA0 _ 8B. 55, 10
        add     edx, 4                                  ; 1BA3 _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 1BA6 _ 8B. 4D, 0C
        mov     dword [eax+edx*4], ecx                  ; 1BA9 _ 89. 0C 90
        jmp     ?_088                                   ; 1BAC _ EB, 5E

?_084:  mov     eax, dword [ebp+8H]                     ; 1BAE _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 1BB1 _ 8B. 40, 0C
        cmp     dword [ebp-10H], eax                    ; 1BB4 _ 39. 45, F0
        jge     ?_087                                   ; 1BB7 _ 7D, 44
        mov     eax, dword [ebp-10H]                    ; 1BB9 _ 8B. 45, F0
        mov     dword [ebp-0CH], eax                    ; 1BBC _ 89. 45, F4
        jmp     ?_086                                   ; 1BBF _ EB, 31

?_085:  mov     eax, dword [ebp-0CH]                    ; 1BC1 _ 8B. 45, F4
        lea     edx, [eax+1H]                           ; 1BC4 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1BC7 _ 8B. 45, 08
        add     edx, 4                                  ; 1BCA _ 83. C2, 04
        mov     ecx, dword [eax+edx*4]                  ; 1BCD _ 8B. 0C 90
        mov     eax, dword [ebp+8H]                     ; 1BD0 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 1BD3 _ 8B. 55, F4
        add     edx, 4                                  ; 1BD6 _ 83. C2, 04
        mov     dword [eax+edx*4], ecx                  ; 1BD9 _ 89. 0C 90
        mov     eax, dword [ebp+8H]                     ; 1BDC _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 1BDF _ 8B. 55, F4
        add     edx, 4                                  ; 1BE2 _ 83. C2, 04
        mov     eax, dword [eax+edx*4]                  ; 1BE5 _ 8B. 04 90
        mov     edx, dword [ebp-0CH]                    ; 1BE8 _ 8B. 55, F4
        mov     dword [eax+18H], edx                    ; 1BEB _ 89. 50, 18
        add     dword [ebp-0CH], 1                      ; 1BEE _ 83. 45, F4, 01
?_086:  mov     eax, dword [ebp+8H]                     ; 1BF2 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 1BF5 _ 8B. 40, 0C
        cmp     dword [ebp-0CH], eax                    ; 1BF8 _ 39. 45, F4
        jl      ?_085                                   ; 1BFB _ 7C, C4
?_087:  mov     eax, dword [ebp+8H]                     ; 1BFD _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 1C00 _ 8B. 40, 0C
        lea     edx, [eax-1H]                           ; 1C03 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 1C06 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 1C09 _ 89. 50, 0C
?_088:  mov     eax, dword [ebp+0CH]                    ; 1C0C _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1C0F _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1C12 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 1C15 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 1C18 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 1C1B _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 1C1E _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 1C21 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1C24 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 1C27 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 1C2A _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1C2D _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1C30 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 1C33 _ 8B. 40, 0C
        mov     dword [esp+10H], ebx                    ; 1C36 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 1C3A _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 1C3E _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 1C42 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1C46 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1C49 _ 89. 04 24
        call    _sheet_refreshsub                       ; 1C4C _ E8, 00000229
        jmp     ?_096                                   ; 1C51 _ E9, 00000111

?_089:  mov     eax, dword [ebp-10H]                    ; 1C56 _ 8B. 45, F0
        cmp     eax, dword [ebp+10H]                    ; 1C59 _ 3B. 45, 10
        jge     ?_096                                   ; 1C5C _ 0F 8D, 00000105
        cmp     dword [ebp-10H], 0                      ; 1C62 _ 83. 7D, F0, 00
        js      ?_092                                   ; 1C66 _ 78, 52
        mov     eax, dword [ebp-10H]                    ; 1C68 _ 8B. 45, F0
        mov     dword [ebp-0CH], eax                    ; 1C6B _ 89. 45, F4
        jmp     ?_091                                   ; 1C6E _ EB, 31

?_090:  mov     eax, dword [ebp-0CH]                    ; 1C70 _ 8B. 45, F4
        lea     edx, [eax+1H]                           ; 1C73 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1C76 _ 8B. 45, 08
        add     edx, 4                                  ; 1C79 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4]                  ; 1C7C _ 8B. 0C 90
        mov     eax, dword [ebp+8H]                     ; 1C7F _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 1C82 _ 8B. 55, F4
        add     edx, 4                                  ; 1C85 _ 83. C2, 04
        mov     dword [eax+edx*4], ecx                  ; 1C88 _ 89. 0C 90
        mov     eax, dword [ebp+8H]                     ; 1C8B _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 1C8E _ 8B. 55, F4
        add     edx, 4                                  ; 1C91 _ 83. C2, 04
        mov     eax, dword [eax+edx*4]                  ; 1C94 _ 8B. 04 90
        mov     edx, dword [ebp-0CH]                    ; 1C97 _ 8B. 55, F4
        mov     dword [eax+18H], edx                    ; 1C9A _ 89. 50, 18
        add     dword [ebp-0CH], 1                      ; 1C9D _ 83. 45, F4, 01
?_091:  mov     eax, dword [ebp-0CH]                    ; 1CA1 _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 1CA4 _ 3B. 45, 10
        jl      ?_090                                   ; 1CA7 _ 7C, C7
        mov     eax, dword [ebp+8H]                     ; 1CA9 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 1CAC _ 8B. 55, 10
        add     edx, 4                                  ; 1CAF _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 1CB2 _ 8B. 4D, 0C
        mov     dword [eax+edx*4], ecx                  ; 1CB5 _ 89. 0C 90
        jmp     ?_095                                   ; 1CB8 _ EB, 68

?_092:  mov     eax, dword [ebp+8H]                     ; 1CBA _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 1CBD _ 8B. 40, 0C
        mov     dword [ebp-0CH], eax                    ; 1CC0 _ 89. 45, F4
        jmp     ?_094                                   ; 1CC3 _ EB, 37

?_093:  mov     eax, dword [ebp-0CH]                    ; 1CC5 _ 8B. 45, F4
        lea     ebx, [eax+1H]                           ; 1CC8 _ 8D. 58, 01
        mov     eax, dword [ebp+8H]                     ; 1CCB _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 1CCE _ 8B. 55, F4
        add     edx, 4                                  ; 1CD1 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4]                  ; 1CD4 _ 8B. 0C 90
        mov     eax, dword [ebp+8H]                     ; 1CD7 _ 8B. 45, 08
        lea     edx, [ebx+4H]                           ; 1CDA _ 8D. 53, 04
        mov     dword [eax+edx*4], ecx                  ; 1CDD _ 89. 0C 90
        mov     eax, dword [ebp-0CH]                    ; 1CE0 _ 8B. 45, F4
        lea     edx, [eax+1H]                           ; 1CE3 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1CE6 _ 8B. 45, 08
        add     edx, 4                                  ; 1CE9 _ 83. C2, 04
        mov     eax, dword [eax+edx*4]                  ; 1CEC _ 8B. 04 90
        mov     edx, dword [ebp-0CH]                    ; 1CEF _ 8B. 55, F4
        add     edx, 1                                  ; 1CF2 _ 83. C2, 01
        mov     dword [eax+18H], edx                    ; 1CF5 _ 89. 50, 18
        sub     dword [ebp-0CH], 1                      ; 1CF8 _ 83. 6D, F4, 01
?_094:  mov     eax, dword [ebp-0CH]                    ; 1CFC _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 1CFF _ 3B. 45, 10
        jge     ?_093                                   ; 1D02 _ 7D, C1
        mov     eax, dword [ebp+8H]                     ; 1D04 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 1D07 _ 8B. 55, 10
        add     edx, 4                                  ; 1D0A _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 1D0D _ 8B. 4D, 0C
        mov     dword [eax+edx*4], ecx                  ; 1D10 _ 89. 0C 90
        mov     eax, dword [ebp+8H]                     ; 1D13 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 1D16 _ 8B. 40, 0C
        lea     edx, [eax+1H]                           ; 1D19 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1D1C _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 1D1F _ 89. 50, 0C
?_095:  mov     eax, dword [ebp+0CH]                    ; 1D22 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1D25 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1D28 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 1D2B _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 1D2E _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 1D31 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 1D34 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 1D37 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1D3A _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 1D3D _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 1D40 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1D43 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1D46 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 1D49 _ 8B. 40, 0C
        mov     dword [esp+10H], ebx                    ; 1D4C _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 1D50 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 1D54 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 1D58 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1D5C _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1D5F _ 89. 04 24
        call    _sheet_refreshsub                       ; 1D62 _ E8, 00000113
?_096:  nop                                             ; 1D67 _ 90
        add     esp, 52                                 ; 1D68 _ 83. C4, 34
        pop     ebx                                     ; 1D6B _ 5B
        pop     ebp                                     ; 1D6C _ 5D
        ret                                             ; 1D6D _ C3
; _sheet_updown End of function

_sheet_refresh:; Function begin
        push    ebp                                     ; 1D6E _ 55
        mov     ebp, esp                                ; 1D6F _ 89. E5
        push    esi                                     ; 1D71 _ 56
        push    ebx                                     ; 1D72 _ 53
        sub     esp, 32                                 ; 1D73 _ 83. EC, 20
        mov     eax, dword [ebp+0CH]                    ; 1D76 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 1D79 _ 8B. 40, 18
        test    eax, eax                                ; 1D7C _ 85. C0
        js      ?_097                                   ; 1D7E _ 78, 49
        mov     eax, dword [ebp+0CH]                    ; 1D80 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1D83 _ 8B. 50, 10
        mov     eax, dword [ebp+1CH]                    ; 1D86 _ 8B. 45, 1C
        lea     ebx, [edx+eax]                          ; 1D89 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 1D8C _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 1D8F _ 8B. 50, 0C
        mov     eax, dword [ebp+18H]                    ; 1D92 _ 8B. 45, 18
        lea     ecx, [edx+eax]                          ; 1D95 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 1D98 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1D9B _ 8B. 50, 10
        mov     eax, dword [ebp+14H]                    ; 1D9E _ 8B. 45, 14
        add     edx, eax                                ; 1DA1 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 1DA3 _ 8B. 45, 0C
        mov     esi, dword [eax+0CH]                    ; 1DA6 _ 8B. 70, 0C
        mov     eax, dword [ebp+10H]                    ; 1DA9 _ 8B. 45, 10
        add     eax, esi                                ; 1DAC _ 01. F0
        mov     dword [esp+10H], ebx                    ; 1DAE _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 1DB2 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 1DB6 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 1DBA _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1DBE _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1DC1 _ 89. 04 24
        call    _sheet_refreshsub                       ; 1DC4 _ E8, 000000B1
?_097:  mov     eax, 0                                  ; 1DC9 _ B8, 00000000
        add     esp, 32                                 ; 1DCE _ 83. C4, 20
        pop     ebx                                     ; 1DD1 _ 5B
        pop     esi                                     ; 1DD2 _ 5E
        pop     ebp                                     ; 1DD3 _ 5D
        ret                                             ; 1DD4 _ C3
; _sheet_refresh End of function

_sheet_slide:; Function begin
        push    ebp                                     ; 1DD5 _ 55
        mov     ebp, esp                                ; 1DD6 _ 89. E5
        sub     esp, 56                                 ; 1DD8 _ 83. EC, 38
        mov     eax, dword [ebp+0CH]                    ; 1DDB _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 1DDE _ 8B. 40, 0C
        mov     dword [ebp-0CH], eax                    ; 1DE1 _ 89. 45, F4
        mov     eax, dword [ebp+0CH]                    ; 1DE4 _ 8B. 45, 0C
        mov     eax, dword [eax+10H]                    ; 1DE7 _ 8B. 40, 10
        mov     dword [ebp-10H], eax                    ; 1DEA _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 1DED _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 1DF0 _ 8B. 55, 10
        mov     dword [eax+0CH], edx                    ; 1DF3 _ 89. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 1DF6 _ 8B. 45, 0C
        mov     edx, dword [ebp+14H]                    ; 1DF9 _ 8B. 55, 14
        mov     dword [eax+10H], edx                    ; 1DFC _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1DFF _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 1E02 _ 8B. 40, 18
        test    eax, eax                                ; 1E05 _ 85. C0
        js      ?_098                                   ; 1E07 _ 78, 6E
        mov     eax, dword [ebp+0CH]                    ; 1E09 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 1E0C _ 8B. 50, 08
        mov     eax, dword [ebp-10H]                    ; 1E0F _ 8B. 45, F0
        add     edx, eax                                ; 1E12 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 1E14 _ 8B. 45, 0C
        mov     ecx, dword [eax+4H]                     ; 1E17 _ 8B. 48, 04
        mov     eax, dword [ebp-0CH]                    ; 1E1A _ 8B. 45, F4
        add     eax, ecx                                ; 1E1D _ 01. C8
        mov     dword [esp+10H], edx                    ; 1E1F _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 1E23 _ 89. 44 24, 0C
        mov     eax, dword [ebp-10H]                    ; 1E27 _ 8B. 45, F0
        mov     dword [esp+8H], eax                     ; 1E2A _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 1E2E _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 1E31 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1E35 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1E38 _ 89. 04 24
        call    _sheet_refreshsub                       ; 1E3B _ E8, 0000003A
        mov     eax, dword [ebp+0CH]                    ; 1E40 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 1E43 _ 8B. 50, 08
        mov     eax, dword [ebp+14H]                    ; 1E46 _ 8B. 45, 14
        add     edx, eax                                ; 1E49 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 1E4B _ 8B. 45, 0C
        mov     ecx, dword [eax+4H]                     ; 1E4E _ 8B. 48, 04
        mov     eax, dword [ebp+10H]                    ; 1E51 _ 8B. 45, 10
        add     eax, ecx                                ; 1E54 _ 01. C8
        mov     dword [esp+10H], edx                    ; 1E56 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 1E5A _ 89. 44 24, 0C
        mov     eax, dword [ebp+14H]                    ; 1E5E _ 8B. 45, 14
        mov     dword [esp+8H], eax                     ; 1E61 _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 1E65 _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 1E68 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1E6C _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1E6F _ 89. 04 24
        call    _sheet_refreshsub                       ; 1E72 _ E8, 00000003
?_098:  nop                                             ; 1E77 _ 90
        leave                                           ; 1E78 _ C9
        ret                                             ; 1E79 _ C3
; _sheet_slide End of function

_sheet_refreshsub:; Function begin
        push    ebp                                     ; 1E7A _ 55
        mov     ebp, esp                                ; 1E7B _ 89. E5
        sub     esp, 48                                 ; 1E7D _ 83. EC, 30
        mov     eax, dword [ebp+8H]                     ; 1E80 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1E83 _ 8B. 00
        mov     dword [ebp-10H], eax                    ; 1E85 _ 89. 45, F0
        cmp     dword [ebp+0CH], 0                      ; 1E88 _ 83. 7D, 0C, 00
        jns     ?_099                                   ; 1E8C _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 1E8E _ C7. 45, 0C, 00000000
?_099:  cmp     dword [ebp+10H], 8                      ; 1E95 _ 83. 7D, 10, 08
        jg      ?_100                                   ; 1E99 _ 7F, 07
        mov     dword [ebp+10H], 0                      ; 1E9B _ C7. 45, 10, 00000000
?_100:  mov     eax, dword [ebp+8H]                     ; 1EA2 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 1EA5 _ 8B. 40, 04
        cmp     dword [ebp+14H], eax                    ; 1EA8 _ 39. 45, 14
        jle     ?_101                                   ; 1EAB _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 1EAD _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 1EB0 _ 8B. 40, 04
        mov     dword [ebp+14H], eax                    ; 1EB3 _ 89. 45, 14
?_101:  mov     eax, dword [ebp+8H]                     ; 1EB6 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 1EB9 _ 8B. 40, 08
        cmp     dword [ebp+18H], eax                    ; 1EBC _ 39. 45, 18
        jle     ?_102                                   ; 1EBF _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 1EC1 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 1EC4 _ 8B. 40, 08
        mov     dword [ebp+18H], eax                    ; 1EC7 _ 89. 45, 18
?_102:  mov     dword [ebp-4H], 0                       ; 1ECA _ C7. 45, FC, 00000000
        jmp     ?_109                                   ; 1ED1 _ E9, 000000D8

?_103:  mov     eax, dword [ebp+8H]                     ; 1ED6 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 1ED9 _ 8B. 55, FC
        add     edx, 4                                  ; 1EDC _ 83. C2, 04
        mov     eax, dword [eax+edx*4]                  ; 1EDF _ 8B. 04 90
        mov     dword [ebp-14H], eax                    ; 1EE2 _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 1EE5 _ 8B. 45, EC
        mov     eax, dword [eax]                        ; 1EE8 _ 8B. 00
        mov     dword [ebp-18H], eax                    ; 1EEA _ 89. 45, E8
        mov     dword [ebp-0CH], 0                      ; 1EED _ C7. 45, F4, 00000000
        jmp     ?_108                                   ; 1EF4 _ E9, 000000A2

?_104:  mov     eax, dword [ebp-14H]                    ; 1EF9 _ 8B. 45, EC
        mov     edx, dword [eax+10H]                    ; 1EFC _ 8B. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 1EFF _ 8B. 45, F4
        add     eax, edx                                ; 1F02 _ 01. D0
        mov     dword [ebp-1CH], eax                    ; 1F04 _ 89. 45, E4
        mov     dword [ebp-8H], 0                       ; 1F07 _ C7. 45, F8, 00000000
        jmp     ?_107                                   ; 1F0E _ EB, 78

?_105:  mov     eax, dword [ebp-14H]                    ; 1F10 _ 8B. 45, EC
        mov     edx, dword [eax+0CH]                    ; 1F13 _ 8B. 50, 0C
        mov     eax, dword [ebp-8H]                     ; 1F16 _ 8B. 45, F8
        add     eax, edx                                ; 1F19 _ 01. D0
        mov     dword [ebp-20H], eax                    ; 1F1B _ 89. 45, E0
        mov     eax, dword [ebp+0CH]                    ; 1F1E _ 8B. 45, 0C
        cmp     eax, dword [ebp-20H]                    ; 1F21 _ 3B. 45, E0
        jg      ?_106                                   ; 1F24 _ 7F, 5E
        mov     eax, dword [ebp-20H]                    ; 1F26 _ 8B. 45, E0
        cmp     eax, dword [ebp+14H]                    ; 1F29 _ 3B. 45, 14
        jge     ?_106                                   ; 1F2C _ 7D, 56
        mov     eax, dword [ebp+10H]                    ; 1F2E _ 8B. 45, 10
        cmp     eax, dword [ebp-1CH]                    ; 1F31 _ 3B. 45, E4
        jg      ?_106                                   ; 1F34 _ 7F, 4E
        mov     eax, dword [ebp-1CH]                    ; 1F36 _ 8B. 45, E4
        cmp     eax, dword [ebp+18H]                    ; 1F39 _ 3B. 45, 18
        jge     ?_106                                   ; 1F3C _ 7D, 46
        mov     eax, dword [ebp-14H]                    ; 1F3E _ 8B. 45, EC
        mov     eax, dword [eax+4H]                     ; 1F41 _ 8B. 40, 04
        imul    eax, dword [ebp-0CH]                    ; 1F44 _ 0F AF. 45, F4
        mov     edx, dword [ebp-8H]                     ; 1F48 _ 8B. 55, F8
        add     eax, edx                                ; 1F4B _ 01. D0
        mov     edx, eax                                ; 1F4D _ 89. C2
        mov     eax, dword [ebp-18H]                    ; 1F4F _ 8B. 45, E8
        add     eax, edx                                ; 1F52 _ 01. D0
        movzx   eax, byte [eax]                         ; 1F54 _ 0F B6. 00
        mov     byte [ebp-21H], al                      ; 1F57 _ 88. 45, DF
        movzx   eax, byte [ebp-21H]                     ; 1F5A _ 0F B6. 45, DF
        mov     edx, dword [ebp-14H]                    ; 1F5E _ 8B. 55, EC
        mov     edx, dword [edx+14H]                    ; 1F61 _ 8B. 52, 14
        cmp     eax, edx                                ; 1F64 _ 39. D0
        jz      ?_106                                   ; 1F66 _ 74, 1C
        mov     eax, dword [ebp+8H]                     ; 1F68 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 1F6B _ 8B. 40, 04
        imul    eax, dword [ebp-1CH]                    ; 1F6E _ 0F AF. 45, E4
        mov     edx, dword [ebp-20H]                    ; 1F72 _ 8B. 55, E0
        add     eax, edx                                ; 1F75 _ 01. D0
        mov     edx, eax                                ; 1F77 _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 1F79 _ 8B. 45, F0
        add     edx, eax                                ; 1F7C _ 01. C2
        movzx   eax, byte [ebp-21H]                     ; 1F7E _ 0F B6. 45, DF
        mov     byte [edx], al                          ; 1F82 _ 88. 02
?_106:  add     dword [ebp-8H], 1                       ; 1F84 _ 83. 45, F8, 01
?_107:  mov     eax, dword [ebp-14H]                    ; 1F88 _ 8B. 45, EC
        mov     eax, dword [eax+4H]                     ; 1F8B _ 8B. 40, 04
        cmp     dword [ebp-8H], eax                     ; 1F8E _ 39. 45, F8
        jl      ?_105                                   ; 1F91 _ 0F 8C, FFFFFF79
        add     dword [ebp-0CH], 1                      ; 1F97 _ 83. 45, F4, 01
?_108:  mov     eax, dword [ebp-14H]                    ; 1F9B _ 8B. 45, EC
        mov     eax, dword [eax+8H]                     ; 1F9E _ 8B. 40, 08
        cmp     dword [ebp-0CH], eax                    ; 1FA1 _ 39. 45, F4
        jl      ?_104                                   ; 1FA4 _ 0F 8C, FFFFFF4F
        add     dword [ebp-4H], 1                       ; 1FAA _ 83. 45, FC, 01
?_109:  mov     eax, dword [ebp+8H]                     ; 1FAE _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 1FB1 _ 8B. 40, 0C
        cmp     dword [ebp-4H], eax                     ; 1FB4 _ 39. 45, FC
        jle     ?_103                                   ; 1FB7 _ 0F 8E, FFFFFF19
        nop                                             ; 1FBD _ 90
        leave                                           ; 1FBE _ C9
        ret                                             ; 1FBF _ C3
; _sheet_refreshsub End of function

.text:  ; Local function

_memman_init:
        push    ebp                                     ; 1FC0 _ 55
        mov     ebp, esp                                ; 1FC1 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 1FC3 _ 8B. 45, 08
        mov     dword [eax], 0                          ; 1FC6 _ C7. 00, 00000000
        mov     eax, dword [ebp+8H]                     ; 1FCC _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 1FCF _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 1FD6 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 1FD9 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 1FE0 _ 8B. 45, 08
        mov     dword [eax+0CH], 0                      ; 1FE3 _ C7. 40, 0C, 00000000
        nop                                             ; 1FEA _ 90
        pop     ebp                                     ; 1FEB _ 5D
        ret                                             ; 1FEC _ C3

_memman_total:; Function begin
        push    ebp                                     ; 1FED _ 55
        mov     ebp, esp                                ; 1FEE _ 89. E5
        sub     esp, 16                                 ; 1FF0 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 1FF3 _ C7. 45, F8, 00000000
        mov     dword [ebp-4H], 0                       ; 1FFA _ C7. 45, FC, 00000000
        jmp     ?_111                                   ; 2001 _ EB, 14

?_110:  mov     eax, dword [ebp+8H]                     ; 2003 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 2006 _ 8B. 55, FC
        add     edx, 2                                  ; 2009 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 200C _ 8B. 44 D0, 04
        add     dword [ebp-8H], eax                     ; 2010 _ 01. 45, F8
        add     dword [ebp-4H], 1                       ; 2013 _ 83. 45, FC, 01
?_111:  mov     eax, dword [ebp+8H]                     ; 2017 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 201A _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 201C _ 39. 45, FC
        jc      ?_110                                   ; 201F _ 72, E2
        mov     eax, dword [ebp-8H]                     ; 2021 _ 8B. 45, F8
        leave                                           ; 2024 _ C9
        ret                                             ; 2025 _ C3
; _memman_total End of function

_memman_alloc:; Function begin
        push    ebp                                     ; 2026 _ 55
        mov     ebp, esp                                ; 2027 _ 89. E5
        sub     esp, 16                                 ; 2029 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 202C _ C7. 45, FC, 00000000
        jmp     ?_115                                   ; 2033 _ E9, 00000083

?_112:  mov     eax, dword [ebp+8H]                     ; 2038 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 203B _ 8B. 55, FC
        add     edx, 2                                  ; 203E _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2041 _ 8B. 44 D0, 04
        cmp     dword [ebp+0CH], eax                    ; 2045 _ 39. 45, 0C
        ja      ?_114                                   ; 2048 _ 77, 6D
        mov     eax, dword [ebp+8H]                     ; 204A _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 204D _ 8B. 55, FC
        add     edx, 2                                  ; 2050 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 2053 _ 8B. 04 D0
        mov     dword [ebp-8H], eax                     ; 2056 _ 89. 45, F8
        mov     eax, dword [ebp+8H]                     ; 2059 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 205C _ 8B. 55, FC
        add     edx, 2                                  ; 205F _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 2062 _ 8B. 14 D0
        mov     eax, dword [ebp+0CH]                    ; 2065 _ 8B. 45, 0C
        lea     ecx, [edx+eax]                          ; 2068 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 206B _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 206E _ 8B. 55, FC
        add     edx, 2                                  ; 2071 _ 83. C2, 02
        mov     dword [eax+edx*8], ecx                  ; 2074 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 2077 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 207A _ 8B. 55, FC
        add     edx, 2                                  ; 207D _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2080 _ 8B. 44 D0, 04
        sub     eax, dword [ebp+0CH]                    ; 2084 _ 2B. 45, 0C
        mov     edx, dword [ebp+8H]                     ; 2087 _ 8B. 55, 08
        mov     ecx, dword [ebp-4H]                     ; 208A _ 8B. 4D, FC
        add     ecx, 2                                  ; 208D _ 83. C1, 02
        mov     dword [edx+ecx*8+4H], eax               ; 2090 _ 89. 44 CA, 04
        mov     eax, dword [ebp+8H]                     ; 2094 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 2097 _ 8B. 55, FC
        add     edx, 2                                  ; 209A _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 209D _ 8B. 44 D0, 04
        test    eax, eax                                ; 20A1 _ 85. C0
        jnz     ?_113                                   ; 20A3 _ 75, 0D
        mov     eax, dword [ebp+8H]                     ; 20A5 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 20A8 _ 8B. 00
        lea     edx, [eax-1H]                           ; 20AA _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 20AD _ 8B. 45, 08
        mov     dword [eax], edx                        ; 20B0 _ 89. 10
?_113:  mov     eax, dword [ebp-8H]                     ; 20B2 _ 8B. 45, F8
        jmp     ?_116                                   ; 20B5 _ EB, 17

?_114:  add     dword [ebp-4H], 1                       ; 20B7 _ 83. 45, FC, 01
?_115:  mov     eax, dword [ebp+8H]                     ; 20BB _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 20BE _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 20C0 _ 39. 45, FC
        jc      ?_112                                   ; 20C3 _ 0F 82, FFFFFF6F
        mov     eax, 0                                  ; 20C9 _ B8, 00000000
?_116:  leave                                           ; 20CE _ C9
        ret                                             ; 20CF _ C3
; _memman_alloc End of function

_memman_free:; Function begin
        push    ebp                                     ; 20D0 _ 55
        mov     ebp, esp                                ; 20D1 _ 89. E5
        push    ebx                                     ; 20D3 _ 53
        sub     esp, 16                                 ; 20D4 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 20D7 _ C7. 45, F8, 00000000
        jmp     ?_118                                   ; 20DE _ EB, 15

?_117:  mov     eax, dword [ebp+8H]                     ; 20E0 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 20E3 _ 8B. 55, F8
        add     edx, 2                                  ; 20E6 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 20E9 _ 8B. 04 D0
        cmp     dword [ebp+0CH], eax                    ; 20EC _ 39. 45, 0C
        jc      ?_119                                   ; 20EF _ 72, 10
        add     dword [ebp-8H], 1                       ; 20F1 _ 83. 45, F8, 01
?_118:  mov     eax, dword [ebp+8H]                     ; 20F5 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 20F8 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 20FA _ 39. 45, F8
        jl      ?_117                                   ; 20FD _ 7C, E1
        jmp     ?_120                                   ; 20FF _ EB, 01

?_119:  nop                                             ; 2101 _ 90
?_120:  cmp     dword [ebp-8H], 0                       ; 2102 _ 83. 7D, F8, 00
        jle     ?_122                                   ; 2106 _ 0F 8E, 000000B8
        mov     eax, dword [ebp-8H]                     ; 210C _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 210F _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2112 _ 8B. 45, 08
        add     edx, 2                                  ; 2115 _ 83. C2, 02
        mov     ecx, dword [eax+edx*8]                  ; 2118 _ 8B. 0C D0
        mov     eax, dword [ebp-8H]                     ; 211B _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 211E _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2121 _ 8B. 45, 08
        add     edx, 2                                  ; 2124 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2127 _ 8B. 44 D0, 04
        add     eax, ecx                                ; 212B _ 01. C8
        cmp     dword [ebp+0CH], eax                    ; 212D _ 39. 45, 0C
        jne     ?_122                                   ; 2130 _ 0F 85, 0000008E
        mov     eax, dword [ebp-8H]                     ; 2136 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 2139 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 213C _ 8B. 45, 08
        add     edx, 2                                  ; 213F _ 83. C2, 02
        mov     ecx, dword [eax+edx*8+4H]               ; 2142 _ 8B. 4C D0, 04
        mov     eax, dword [ebp-8H]                     ; 2146 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 2149 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 214C _ 8B. 45, 10
        add     ecx, eax                                ; 214F _ 01. C1
        mov     eax, dword [ebp+8H]                     ; 2151 _ 8B. 45, 08
        add     edx, 2                                  ; 2154 _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 2157 _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 215B _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 215E _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 2160 _ 39. 45, F8
        jge     ?_121                                   ; 2163 _ 7D, 55
        mov     edx, dword [ebp+0CH]                    ; 2165 _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 2168 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 216B _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 216E _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2171 _ 8B. 55, F8
        add     edx, 2                                  ; 2174 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 2177 _ 8B. 04 D0
        cmp     ecx, eax                                ; 217A _ 39. C1
        jnz     ?_121                                   ; 217C _ 75, 3C
        mov     eax, dword [ebp-8H]                     ; 217E _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 2181 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2184 _ 8B. 45, 08
        add     edx, 2                                  ; 2187 _ 83. C2, 02
        mov     ecx, dword [eax+edx*8+4H]               ; 218A _ 8B. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 218E _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2191 _ 8B. 55, F8
        add     edx, 2                                  ; 2194 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2197 _ 8B. 44 D0, 04
        mov     edx, dword [ebp-8H]                     ; 219B _ 8B. 55, F8
        sub     edx, 1                                  ; 219E _ 83. EA, 01
        add     ecx, eax                                ; 21A1 _ 01. C1
        mov     eax, dword [ebp+8H]                     ; 21A3 _ 8B. 45, 08
        add     edx, 2                                  ; 21A6 _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 21A9 _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 21AD _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 21B0 _ 8B. 00
        lea     edx, [eax-1H]                           ; 21B2 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 21B5 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 21B8 _ 89. 10
?_121:  mov     eax, 0                                  ; 21BA _ B8, 00000000
        jmp     ?_128                                   ; 21BF _ E9, 0000011C

?_122:  mov     eax, dword [ebp+8H]                     ; 21C4 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 21C7 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 21C9 _ 39. 45, F8
        jge     ?_123                                   ; 21CC _ 7D, 52
        mov     edx, dword [ebp+0CH]                    ; 21CE _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 21D1 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 21D4 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 21D7 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 21DA _ 8B. 55, F8
        add     edx, 2                                  ; 21DD _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 21E0 _ 8B. 04 D0
        cmp     ecx, eax                                ; 21E3 _ 39. C1
        jnz     ?_123                                   ; 21E5 _ 75, 39
        mov     eax, dword [ebp+8H]                     ; 21E7 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 21EA _ 8B. 55, F8
        add     edx, 2                                  ; 21ED _ 83. C2, 02
        mov     ecx, dword [ebp+0CH]                    ; 21F0 _ 8B. 4D, 0C
        mov     dword [eax+edx*8], ecx                  ; 21F3 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 21F6 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 21F9 _ 8B. 55, F8
        add     edx, 2                                  ; 21FC _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 21FF _ 8B. 54 D0, 04
        mov     eax, dword [ebp+10H]                    ; 2203 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 2206 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 2209 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 220C _ 8B. 55, F8
        add     edx, 2                                  ; 220F _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 2212 _ 89. 4C D0, 04
        mov     eax, 0                                  ; 2216 _ B8, 00000000
        jmp     ?_128                                   ; 221B _ E9, 000000C0

?_123:  mov     eax, dword [ebp+8H]                     ; 2220 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2223 _ 8B. 00
        cmp     eax, 4095                               ; 2225 _ 3D, 00000FFF
        jg      ?_127                                   ; 222A _ 0F 8F, 00000087
        mov     eax, dword [ebp+8H]                     ; 2230 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2233 _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 2235 _ 89. 45, F4
        jmp     ?_125                                   ; 2238 _ EB, 28

?_124:  mov     eax, dword [ebp-0CH]                    ; 223A _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 223D _ 8D. 50, FF
        mov     ecx, dword [ebp+8H]                     ; 2240 _ 8B. 4D, 08
        mov     eax, dword [ebp-0CH]                    ; 2243 _ 8B. 45, F4
        lea     ebx, [eax+2H]                           ; 2246 _ 8D. 58, 02
        mov     eax, dword [ebp+8H]                     ; 2249 _ 8B. 45, 08
        add     edx, 2                                  ; 224C _ 83. C2, 02
        lea     edx, [eax+edx*8]                        ; 224F _ 8D. 14 D0
        mov     eax, dword [edx]                        ; 2252 _ 8B. 02
        mov     edx, dword [edx+4H]                     ; 2254 _ 8B. 52, 04
        mov     dword [ecx+ebx*8], eax                  ; 2257 _ 89. 04 D9
        mov     dword [ecx+ebx*8+4H], edx               ; 225A _ 89. 54 D9, 04
        sub     dword [ebp-0CH], 1                      ; 225E _ 83. 6D, F4, 01
?_125:  mov     eax, dword [ebp-0CH]                    ; 2262 _ 8B. 45, F4
        cmp     eax, dword [ebp-8H]                     ; 2265 _ 3B. 45, F8
        jg      ?_124                                   ; 2268 _ 7F, D0
        mov     eax, dword [ebp+8H]                     ; 226A _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 226D _ 8B. 00
        lea     edx, [eax+1H]                           ; 226F _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2272 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 2275 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 2277 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 227A _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 227D _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2280 _ 8B. 00
        cmp     edx, eax                                ; 2282 _ 39. C2
        jge     ?_126                                   ; 2284 _ 7D, 0B
        mov     eax, dword [ebp+8H]                     ; 2286 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 2289 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 228B _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 228E _ 89. 50, 04
?_126:  mov     eax, dword [ebp+8H]                     ; 2291 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2294 _ 8B. 55, F8
        add     edx, 2                                  ; 2297 _ 83. C2, 02
        mov     ecx, dword [ebp+0CH]                    ; 229A _ 8B. 4D, 0C
        mov     dword [eax+edx*8], ecx                  ; 229D _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 22A0 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 22A3 _ 8B. 55, F8
        add     edx, 2                                  ; 22A6 _ 83. C2, 02
        mov     ecx, dword [ebp+10H]                    ; 22A9 _ 8B. 4D, 10
        mov     dword [eax+edx*8+4H], ecx               ; 22AC _ 89. 4C D0, 04
        mov     eax, 0                                  ; 22B0 _ B8, 00000000
        jmp     ?_128                                   ; 22B5 _ EB, 29

?_127:  mov     eax, dword [ebp+8H]                     ; 22B7 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 22BA _ 8B. 40, 0C
        lea     edx, [eax+1H]                           ; 22BD _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 22C0 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 22C3 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 22C6 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 22C9 _ 8B. 40, 08
        mov     edx, eax                                ; 22CC _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 22CE _ 8B. 45, 10
        add     eax, edx                                ; 22D1 _ 01. D0
        mov     edx, eax                                ; 22D3 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 22D5 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 22D8 _ 89. 50, 08
        mov     eax, 4294967295                         ; 22DB _ B8, FFFFFFFF
?_128:  add     esp, 16                                 ; 22E0 _ 83. C4, 10
        pop     ebx                                     ; 22E3 _ 5B
        pop     ebp                                     ; 22E4 _ 5D
        ret                                             ; 22E5 _ C3
; _memman_free End of function

_memman_alloc_4k:; Function begin
        push    ebp                                     ; 22E6 _ 55
        mov     ebp, esp                                ; 22E7 _ 89. E5
        sub     esp, 24                                 ; 22E9 _ 83. EC, 18
        mov     eax, dword [ebp+0CH]                    ; 22EC _ 8B. 45, 0C
        add     eax, 4095                               ; 22EF _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 22F4 _ 25, FFFFF000
        mov     dword [ebp+0CH], eax                    ; 22F9 _ 89. 45, 0C
        mov     eax, dword [ebp+0CH]                    ; 22FC _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 22FF _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2303 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2306 _ 89. 04 24
        call    _memman_alloc                           ; 2309 _ E8, FFFFFD18
        mov     dword [ebp-4H], eax                     ; 230E _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 2311 _ 8B. 45, FC
        leave                                           ; 2314 _ C9
        ret                                             ; 2315 _ C3
; _memman_alloc_4k End of function

_memman_free_4k:; Function begin
        push    ebp                                     ; 2316 _ 55
        mov     ebp, esp                                ; 2317 _ 89. E5
        sub     esp, 28                                 ; 2319 _ 83. EC, 1C
        mov     eax, dword [ebp+10H]                    ; 231C _ 8B. 45, 10
        add     eax, 4095                               ; 231F _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 2324 _ 25, FFFFF000
        mov     dword [ebp+10H], eax                    ; 2329 _ 89. 45, 10
        mov     eax, dword [ebp+10H]                    ; 232C _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 232F _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 2333 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2336 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 233A _ 8B. 45, 08
        mov     dword [esp], eax                        ; 233D _ 89. 04 24
        call    _memman_free                            ; 2340 _ E8, FFFFFD8B
        mov     dword [ebp-4H], eax                     ; 2345 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 2348 _ 8B. 45, FC
        leave                                           ; 234B _ C9
        ret                                             ; 234C _ C3
; _memman_free_4k End of function

        nop                                             ; 234D _ 90
        nop                                             ; 234E _ 90
        nop                                             ; 234F _ 90



_memman:                                                ; dword
        dd 00100000H                                    ; 0000 _ 1048576 

_keyval:                                                ; byte
        db 30H, 58H                                     ; 0004 _ 0X

?_129:  db 00H                                          ; 0006 _ .

?_130:  db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0007 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 000F _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0017 _ ........
        db 00H                                          ; 001F _ .

_table_rgb.2190:                                        ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0020 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0028 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0030 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0038 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 0040 _ ........
        db 00H, 84H, 00H, 84H, 84H, 84H, 84H, 84H       ; 0048 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0050 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0058 _ ........

_cursor.2237:                                           ; byte
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

_closebtn.2365:                                         ; byte
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
        db 63H, 6FH, 75H, 6EH, 74H, 65H, 72H, 00H       ; 0000 _ counter.

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
        db 46H, 72H, 61H, 67H, 69H, 6CH, 65H, 20H       ; 006C _ Fragile 
        db 4FH, 53H, 00H, 00H                           ; 0074 _ OS..


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

_str.2285:                                              ; byte
        resb    1                                       ; 0220

?_143:  resb    9                                       ; 0221

?_144:  resb    22                                      ; 022A


