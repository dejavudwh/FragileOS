; Disassembly of file: ckernel.o
; Tue Aug  6 21:58:22 2019
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
        movzx   eax, word [?_156]                       ; 001B _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0022 _ 98
        mov     dword [_xsize], eax                     ; 0023 _ A3, 000000F8(d)
        movzx   eax, word [?_157]                       ; 0028 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 002F _ 98
        mov     dword [_ysize], eax                     ; 0030 _ A3, 000000FC(d)
        mov     dword [ebp-18H], 0                      ; 0035 _ C7. 45, E8, 00000000
        mov     dword [ebp-1CH], 0                      ; 003C _ C7. 45, E4, 00000000
        mov     dword [esp+8H], _keybuf                 ; 0043 _ C7. 44 24, 08, 00000040(d)
        mov     dword [esp+4H], 32                      ; 004B _ C7. 44 24, 04, 00000020
        mov     dword [esp], _keyinfo                   ; 0053 _ C7. 04 24, 00000008(d)
        call    _fifo8_init                             ; 005A _ E8, 00000000(rel)
        mov     dword [esp+8H], _mousebuf               ; 005F _ C7. 44 24, 08, 00000060(d)
        mov     dword [esp+4H], 128                     ; 0067 _ C7. 44 24, 04, 00000080
        mov     dword [esp], _mouseinfo                 ; 006F _ C7. 04 24, 00000020(d)
        call    _fifo8_init                             ; 0076 _ E8, 00000000(rel)
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
        mov     dword [esp+4H], ?_146                   ; 022E _ C7. 44 24, 04, 00000000(d)
        mov     eax, dword [ebp-28H]                    ; 0236 _ 8B. 45, D8
        mov     dword [esp], eax                        ; 0239 _ 89. 04 24
        call    _message_box                            ; 023C _ E8, 000011EA
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
        call    _fifo8_status                           ; 032A _ E8, 00000000(rel)
        mov     ebx, eax                                ; 032F _ 89. C3
        mov     dword [esp], _mouseinfo                 ; 0331 _ C7. 04 24, 00000020(d)
        call    _fifo8_status                           ; 0338 _ E8, 00000000(rel)
        add     eax, ebx                                ; 033D _ 01. D8
        test    eax, eax                                ; 033F _ 85. C0
        jnz     ?_002                                   ; 0341 _ 75, 0A
        call    _io_sti                                 ; 0343 _ E8, 00000000(rel)
        jmp     ?_001                                   ; 0348 _ E9, FFFFFF51

?_002:  ; Local function
        mov     dword [esp], _keyinfo                   ; 034D _ C7. 04 24, 00000008(d)
        call    _fifo8_status                           ; 0354 _ E8, 00000000(rel)
        test    eax, eax                                ; 0359 _ 85. C0
        je      ?_003                                   ; 035B _ 0F 84, 00000087
        call    _io_sti                                 ; 0361 _ E8, 00000000(rel)
        mov     dword [esp], _keyinfo                   ; 0366 _ C7. 04 24, 00000008(d)
        call    _fifo8_get                              ; 036D _ E8, 00000000(rel)
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
        call    _showMemoryInfo                         ; 03C7 _ E8, 00000D54
        add     dword [ebp-0CH], 1                      ; 03CC _ 83. 45, F4, 01
        mov     eax, dword [ebp-0CH]                    ; 03D0 _ 8B. 45, F4
        cmp     eax, dword [ebp-20H]                    ; 03D3 _ 3B. 45, E0
        jle     ?_001                                   ; 03D6 _ 0F 8E, FFFFFEC2
        mov     dword [ebp-0CH], 0                      ; 03DC _ C7. 45, F4, 00000000
        jmp     ?_001                                   ; 03E3 _ E9, FFFFFEB6

?_003:  ; Local function
        mov     dword [esp], _mouseinfo                 ; 03E8 _ C7. 04 24, 00000020(d)
        call    _fifo8_status                           ; 03EF _ E8, 00000000(rel)
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
?_007:  mov     dword [esp+14H], ?_147                  ; 082A _ C7. 44 24, 14, 00000008(d)
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
        call    _fifo8_get                              ; 087D _ E8, 00000000(rel)
        mov     byte [ebp-0DH], al                      ; 0882 _ 88. 45, F3
        movzx   eax, byte [ebp-0DH]                     ; 0885 _ 0F B6. 45, F3
        mov     dword [esp+4H], eax                     ; 0889 _ 89. 44 24, 04
        mov     dword [esp], _mdec                      ; 088D _ C7. 04 24, 000000E0(d)
        call    _mouse_decode                           ; 0894 _ E8, 00000748
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
        mov     dword [esp+8H], _table_rgb.2200         ; 09A8 _ C7. 44 24, 08, 00000020(d)
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
        add     eax, _cursor.2247                       ; 0C6F _ 05, 00000060(d)
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
        add     eax, _cursor.2247                       ; 0C9F _ 05, 00000060(d)
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
        add     eax, _cursor.2247                       ; 0CCF _ 05, 00000060(d)
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
        movzx   eax, word [?_156]                       ; 0D8F _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0D96 _ 98
        mov     dword [ebp-10H], eax                    ; 0D97 _ 89. 45, F0
        movzx   eax, word [?_157]                       ; 0D9A _ 0F B7. 05, 00000006(d)
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
        call    _fifo8_put                              ; 0DDB _ E8, 00000000(rel)
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
        mov     byte [?_145], al                        ; 0E30 _ A2, 00000007(d)
        movzx   eax, byte [ebp-14H]                     ; 0E35 _ 0F B6. 45, EC
        shr     al, 4                                   ; 0E39 _ C0. E8, 04
        mov     byte [ebp-14H], al                      ; 0E3C _ 88. 45, EC
        movzx   eax, byte [ebp-14H]                     ; 0E3F _ 0F B6. 45, EC
        movsx   eax, al                                 ; 0E43 _ 0F BE. C0
        mov     dword [esp], eax                        ; 0E46 _ 89. 04 24
        call    _charToHexVal                           ; 0E49 _ E8, FFFFFF95
        mov     byte [?_144], al                        ; 0E4E _ A2, 00000006(d)
        mov     eax, _keyval                            ; 0E53 _ B8, 00000004(d)
        leave                                           ; 0E58 _ C9
        ret                                             ; 0E59 _ C3
; _charToHexStr End of function

_intToHexStr:; Function begin
        push    ebp                                     ; 0E5A _ 55
        mov     ebp, esp                                ; 0E5B _ 89. E5
        sub     esp, 16                                 ; 0E5D _ 83. EC, 10
        mov     byte [_str.2295], 48                    ; 0E60 _ C6. 05, 00000220(d), 30
        mov     byte [?_158], 88                        ; 0E67 _ C6. 05, 00000221(d), 58
        mov     byte [?_159], 0                         ; 0E6E _ C6. 05, 0000022A(d), 00
        mov     dword [ebp-4H], 2                       ; 0E75 _ C7. 45, FC, 00000002
        jmp     ?_041                                   ; 0E7C _ EB, 0F

?_040:  mov     eax, dword [ebp-4H]                     ; 0E7E _ 8B. 45, FC
        add     eax, _str.2295                          ; 0E81 _ 05, 00000220(d)
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
        add     eax, _str.2295                          ; 0EBF _ 05, 00000220(d)
        mov     byte [eax], dl                          ; 0EC4 _ 88. 10
        jmp     ?_044                                   ; 0EC6 _ EB, 12

?_043:  mov     eax, dword [ebp-0CH]                    ; 0EC8 _ 8B. 45, F4
        add     eax, 48                                 ; 0ECB _ 83. C0, 30
        mov     edx, eax                                ; 0ECE _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0ED0 _ 8B. 45, F8
        add     eax, _str.2295                          ; 0ED3 _ 05, 00000220(d)
        mov     byte [eax], dl                          ; 0ED8 _ 88. 10
?_044:  sub     dword [ebp-8H], 1                       ; 0EDA _ 83. 6D, F8, 01
?_045:  cmp     dword [ebp-8H], 1                       ; 0EDE _ 83. 7D, F8, 01
        jle     ?_046                                   ; 0EE2 _ 7E, 06
        cmp     dword [ebp+8H], 0                       ; 0EE4 _ 83. 7D, 08, 00
        jnz     ?_042                                   ; 0EE8 _ 75, B2
?_046:  mov     eax, _str.2295                          ; 0EEA _ B8, 00000220(d)
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
        call    _fifo8_put                              ; 0FD9 _ E8, 00000000(rel)
        nop                                             ; 0FDE _ 90
        leave                                           ; 0FDF _ C9
        ret                                             ; 0FE0 _ C3
; _intHandlerForMouse End of function

_mouse_decode:; Function begin
        push    ebp                                     ; 0FE1 _ 55
        mov     ebp, esp                                ; 0FE2 _ 89. E5
        sub     esp, 4                                  ; 0FE4 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 0FE7 _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 0FEA _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 0FED _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 0FF0 _ 0F B6. 40, 03
        test    al, al                                  ; 0FF4 _ 84. C0
        jnz     ?_050                                   ; 0FF6 _ 75, 17
        cmp     byte [ebp-4H], -6                       ; 0FF8 _ 80. 7D, FC, FA
        jnz     ?_049                                   ; 0FFC _ 75, 07
        mov     eax, dword [ebp+8H]                     ; 0FFE _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 1001 _ C6. 40, 03, 01
?_049:  mov     eax, 0                                  ; 1005 _ B8, 00000000
        jmp     ?_057                                   ; 100A _ E9, 0000010F

?_050:  mov     eax, dword [ebp+8H]                     ; 100F _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1012 _ 0F B6. 40, 03
        cmp     al, 1                                   ; 1016 _ 3C, 01
        jnz     ?_052                                   ; 1018 _ 75, 28
        movzx   eax, byte [ebp-4H]                      ; 101A _ 0F B6. 45, FC
        and     eax, 0C8H                               ; 101E _ 25, 000000C8
        cmp     eax, 8                                  ; 1023 _ 83. F8, 08
        jnz     ?_051                                   ; 1026 _ 75, 10
        mov     edx, dword [ebp+8H]                     ; 1028 _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 102B _ 0F B6. 45, FC
        mov     byte [edx], al                          ; 102F _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 1031 _ 8B. 45, 08
        mov     byte [eax+3H], 2                        ; 1034 _ C6. 40, 03, 02
?_051:  mov     eax, 0                                  ; 1038 _ B8, 00000000
        jmp     ?_057                                   ; 103D _ E9, 000000DC

?_052:  mov     eax, dword [ebp+8H]                     ; 1042 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1045 _ 0F B6. 40, 03
        cmp     al, 2                                   ; 1049 _ 3C, 02
        jnz     ?_053                                   ; 104B _ 75, 1B
        mov     edx, dword [ebp+8H]                     ; 104D _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 1050 _ 0F B6. 45, FC
        mov     byte [edx+1H], al                       ; 1054 _ 88. 42, 01
        mov     eax, dword [ebp+8H]                     ; 1057 _ 8B. 45, 08
        mov     byte [eax+3H], 3                        ; 105A _ C6. 40, 03, 03
        mov     eax, 0                                  ; 105E _ B8, 00000000
        jmp     ?_057                                   ; 1063 _ E9, 000000B6

?_053:  mov     eax, dword [ebp+8H]                     ; 1068 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 106B _ 0F B6. 40, 03
        cmp     al, 3                                   ; 106F _ 3C, 03
        jne     ?_056                                   ; 1071 _ 0F 85, 000000A2
        mov     edx, dword [ebp+8H]                     ; 1077 _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 107A _ 0F B6. 45, FC
        mov     byte [edx+2H], al                       ; 107E _ 88. 42, 02
        mov     eax, dword [ebp+8H]                     ; 1081 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 1084 _ C6. 40, 03, 01
        mov     eax, dword [ebp+8H]                     ; 1088 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 108B _ 0F B6. 00
        movzx   eax, al                                 ; 108E _ 0F B6. C0
        and     eax, 07H                                ; 1091 _ 83. E0, 07
        mov     edx, eax                                ; 1094 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1096 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 1099 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 109C _ 8B. 45, 08
        movzx   eax, byte [eax+1H]                      ; 109F _ 0F B6. 40, 01
        movzx   eax, al                                 ; 10A3 _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 10A6 _ 8B. 55, 08
        mov     dword [edx+4H], eax                     ; 10A9 _ 89. 42, 04
        mov     eax, dword [ebp+8H]                     ; 10AC _ 8B. 45, 08
        movzx   eax, byte [eax+2H]                      ; 10AF _ 0F B6. 40, 02
        movzx   eax, al                                 ; 10B3 _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 10B6 _ 8B. 55, 08
        mov     dword [edx+8H], eax                     ; 10B9 _ 89. 42, 08
        mov     eax, dword [ebp+8H]                     ; 10BC _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 10BF _ 0F B6. 00
        movzx   eax, al                                 ; 10C2 _ 0F B6. C0
        and     eax, 10H                                ; 10C5 _ 83. E0, 10
        test    eax, eax                                ; 10C8 _ 85. C0
        jz      ?_054                                   ; 10CA _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 10CC _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 10CF _ 8B. 40, 04
        or      eax, 0FFFFFF00H                         ; 10D2 _ 0D, FFFFFF00
        mov     edx, eax                                ; 10D7 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 10D9 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 10DC _ 89. 50, 04
?_054:  mov     eax, dword [ebp+8H]                     ; 10DF _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 10E2 _ 0F B6. 00
        movzx   eax, al                                 ; 10E5 _ 0F B6. C0
        and     eax, 20H                                ; 10E8 _ 83. E0, 20
        test    eax, eax                                ; 10EB _ 85. C0
        jz      ?_055                                   ; 10ED _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 10EF _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 10F2 _ 8B. 40, 08
        or      eax, 0FFFFFF00H                         ; 10F5 _ 0D, FFFFFF00
        mov     edx, eax                                ; 10FA _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 10FC _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 10FF _ 89. 50, 08
?_055:  mov     eax, dword [ebp+8H]                     ; 1102 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 1105 _ 8B. 40, 08
        neg     eax                                     ; 1108 _ F7. D8
        mov     edx, eax                                ; 110A _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 110C _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 110F _ 89. 50, 08
        mov     eax, 1                                  ; 1112 _ B8, 00000001
        jmp     ?_057                                   ; 1117 _ EB, 05

?_056:  mov     eax, 4294967295                         ; 1119 _ B8, FFFFFFFF
?_057:  leave                                           ; 111E _ C9
        ret                                             ; 111F _ C3
; _mouse_decode End of function

_showMemoryInfo:; Function begin
        push    ebp                                     ; 1120 _ 55
        mov     ebp, esp                                ; 1121 _ 89. E5
        sub     esp, 88                                 ; 1123 _ 83. EC, 58
        mov     dword [ebp-0CH], 0                      ; 1126 _ C7. 45, F4, 00000000
        mov     dword [ebp-10H], 0                      ; 112D _ C7. 45, F0, 00000000
        mov     dword [ebp-14H], 104                    ; 1134 _ C7. 45, EC, 00000068
        mov     dword [ebp-18H], 80                     ; 113B _ C7. 45, E8, 00000050
        mov     edx, dword [_ysize]                     ; 1142 _ 8B. 15, 000000FC(d)
        mov     eax, dword [ebp+0CH]                    ; 1148 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 114B _ 8B. 00
        mov     dword [esp+8H], edx                     ; 114D _ 89. 54 24, 08
        mov     edx, dword [ebp+1CH]                    ; 1151 _ 8B. 55, 1C
        mov     dword [esp+4H], edx                     ; 1154 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1158 _ 89. 04 24
        call    _init_screen8                           ; 115B _ E8, FFFFF2BA
        mov     eax, dword [ebp+20H]                    ; 1160 _ 8B. 45, 20
        movsx   eax, al                                 ; 1163 _ 0F BE. C0
        mov     dword [esp+14H], ?_148                  ; 1166 _ C7. 44 24, 14, 0000001F(d)
        mov     dword [esp+10H], eax                    ; 116E _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1172 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1175 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 1179 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 117C _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1180 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1183 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1187 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 118A _ 89. 04 24
        call    _showString                             ; 118D _ E8, FFFFF76E
        mov     eax, dword [ebp+18H]                    ; 1192 _ 8B. 45, 18
        mov     dword [esp], eax                        ; 1195 _ 89. 04 24
        call    _intToHexStr                            ; 1198 _ E8, FFFFFCBD
        mov     dword [ebp-1CH], eax                    ; 119D _ 89. 45, E4
        mov     eax, dword [ebp+20H]                    ; 11A0 _ 8B. 45, 20
        movsx   eax, al                                 ; 11A3 _ 0F BE. C0
        mov     edx, dword [ebp-1CH]                    ; 11A6 _ 8B. 55, E4
        mov     dword [esp+14H], edx                    ; 11A9 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 11AD _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 11B1 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 11B4 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 11B8 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 11BB _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 11BF _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 11C2 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 11C6 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 11C9 _ 89. 04 24
        call    _showString                             ; 11CC _ E8, FFFFF72F
        add     dword [ebp-10H], 16                     ; 11D1 _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 11D5 _ 8B. 45, 20
        movsx   eax, al                                 ; 11D8 _ 0F BE. C0
        mov     dword [esp+14H], ?_149                  ; 11DB _ C7. 44 24, 14, 00000029(d)
        mov     dword [esp+10H], eax                    ; 11E3 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 11E7 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 11EA _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 11EE _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 11F1 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 11F5 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 11F8 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 11FC _ 8B. 45, 08
        mov     dword [esp], eax                        ; 11FF _ 89. 04 24
        call    _showString                             ; 1202 _ E8, FFFFF6F9
        mov     eax, dword [ebp+10H]                    ; 1207 _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 120A _ 8B. 00
        mov     dword [esp], eax                        ; 120C _ 89. 04 24
        call    _intToHexStr                            ; 120F _ E8, FFFFFC46
        mov     dword [ebp-20H], eax                    ; 1214 _ 89. 45, E0
        mov     eax, dword [ebp+20H]                    ; 1217 _ 8B. 45, 20
        movsx   eax, al                                 ; 121A _ 0F BE. C0
        mov     edx, dword [ebp-20H]                    ; 121D _ 8B. 55, E0
        mov     dword [esp+14H], edx                    ; 1220 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 1224 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1228 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 122B _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 122F _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 1232 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1236 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1239 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 123D _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1240 _ 89. 04 24
        call    _showString                             ; 1243 _ E8, FFFFF6B8
        add     dword [ebp-10H], 16                     ; 1248 _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 124C _ 8B. 45, 20
        movsx   eax, al                                 ; 124F _ 0F BE. C0
        mov     dword [esp+14H], ?_150                  ; 1252 _ C7. 44 24, 14, 00000035(d)
        mov     dword [esp+10H], eax                    ; 125A _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 125E _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1261 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 1265 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 1268 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 126C _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 126F _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1273 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1276 _ 89. 04 24
        call    _showString                             ; 1279 _ E8, FFFFF682
        mov     eax, dword [ebp+10H]                    ; 127E _ 8B. 45, 10
        mov     eax, dword [eax+4H]                     ; 1281 _ 8B. 40, 04
        mov     dword [esp], eax                        ; 1284 _ 89. 04 24
        call    _intToHexStr                            ; 1287 _ E8, FFFFFBCE
        mov     dword [ebp-24H], eax                    ; 128C _ 89. 45, DC
        mov     eax, dword [ebp+20H]                    ; 128F _ 8B. 45, 20
        movsx   eax, al                                 ; 1292 _ 0F BE. C0
        mov     edx, dword [ebp-24H]                    ; 1295 _ 8B. 55, DC
        mov     dword [esp+14H], edx                    ; 1298 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 129C _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 12A0 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 12A3 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 12A7 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 12AA _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 12AE _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 12B1 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 12B5 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 12B8 _ 89. 04 24
        call    _showString                             ; 12BB _ E8, FFFFF640
        add     dword [ebp-10H], 16                     ; 12C0 _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 12C4 _ 8B. 45, 20
        movsx   eax, al                                 ; 12C7 _ 0F BE. C0
        mov     dword [esp+14H], ?_151                  ; 12CA _ C7. 44 24, 14, 00000041(d)
        mov     dword [esp+10H], eax                    ; 12D2 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 12D6 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 12D9 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 12DD _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 12E0 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 12E4 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 12E7 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 12EB _ 8B. 45, 08
        mov     dword [esp], eax                        ; 12EE _ 89. 04 24
        call    _showString                             ; 12F1 _ E8, FFFFF60A
        mov     eax, dword [ebp+10H]                    ; 12F6 _ 8B. 45, 10
        mov     eax, dword [eax+8H]                     ; 12F9 _ 8B. 40, 08
        mov     dword [esp], eax                        ; 12FC _ 89. 04 24
        call    _intToHexStr                            ; 12FF _ E8, FFFFFB56
        mov     dword [ebp-28H], eax                    ; 1304 _ 89. 45, D8
        mov     eax, dword [ebp+20H]                    ; 1307 _ 8B. 45, 20
        movsx   eax, al                                 ; 130A _ 0F BE. C0
        mov     edx, dword [ebp-28H]                    ; 130D _ 8B. 55, D8
        mov     dword [esp+14H], edx                    ; 1310 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 1314 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1318 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 131B _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 131F _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 1322 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1326 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1329 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 132D _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1330 _ 89. 04 24
        call    _showString                             ; 1333 _ E8, FFFFF5C8
        add     dword [ebp-10H], 16                     ; 1338 _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 133C _ 8B. 45, 20
        movsx   eax, al                                 ; 133F _ 0F BE. C0
        mov     dword [esp+14H], ?_152                  ; 1342 _ C7. 44 24, 14, 0000004D(d)
        mov     dword [esp+10H], eax                    ; 134A _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 134E _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1351 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 1355 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 1358 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 135C _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 135F _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1363 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1366 _ 89. 04 24
        call    _showString                             ; 1369 _ E8, FFFFF592
        mov     eax, dword [ebp+10H]                    ; 136E _ 8B. 45, 10
        mov     eax, dword [eax+0CH]                    ; 1371 _ 8B. 40, 0C
        mov     dword [esp], eax                        ; 1374 _ 89. 04 24
        call    _intToHexStr                            ; 1377 _ E8, FFFFFADE
        mov     dword [ebp-2CH], eax                    ; 137C _ 89. 45, D4
        mov     eax, dword [ebp+20H]                    ; 137F _ 8B. 45, 20
        movsx   eax, al                                 ; 1382 _ 0F BE. C0
        mov     edx, dword [ebp-2CH]                    ; 1385 _ 8B. 55, D4
        mov     dword [esp+14H], edx                    ; 1388 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 138C _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1390 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1393 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 1397 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 139A _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 139E _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 13A1 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 13A5 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 13A8 _ 89. 04 24
        call    _showString                             ; 13AB _ E8, FFFFF550
        add     dword [ebp-10H], 16                     ; 13B0 _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 13B4 _ 8B. 45, 20
        movsx   eax, al                                 ; 13B7 _ 0F BE. C0
        mov     dword [esp+14H], ?_153                  ; 13BA _ C7. 44 24, 14, 0000005A(d)
        mov     dword [esp+10H], eax                    ; 13C2 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 13C6 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 13C9 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 13CD _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 13D0 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 13D4 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 13D7 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 13DB _ 8B. 45, 08
        mov     dword [esp], eax                        ; 13DE _ 89. 04 24
        call    _showString                             ; 13E1 _ E8, FFFFF51A
        mov     eax, dword [ebp+10H]                    ; 13E6 _ 8B. 45, 10
        mov     eax, dword [eax+10H]                    ; 13E9 _ 8B. 40, 10
        mov     dword [esp], eax                        ; 13EC _ 89. 04 24
        call    _intToHexStr                            ; 13EF _ E8, FFFFFA66
        mov     dword [ebp-30H], eax                    ; 13F4 _ 89. 45, D0
        mov     eax, dword [ebp+20H]                    ; 13F7 _ 8B. 45, 20
        movsx   eax, al                                 ; 13FA _ 0F BE. C0
        mov     edx, dword [ebp-30H]                    ; 13FD _ 8B. 55, D0
        mov     dword [esp+14H], edx                    ; 1400 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 1404 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1408 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 140B _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 140F _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 1412 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1416 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1419 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 141D _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1420 _ 89. 04 24
        call    _showString                             ; 1423 _ E8, FFFFF4D8
        nop                                             ; 1428 _ 90
        leave                                           ; 1429 _ C9
        ret                                             ; 142A _ C3
; _showMemoryInfo End of function

_message_box:; Function begin
        push    ebp                                     ; 142B _ 55
        mov     ebp, esp                                ; 142C _ 89. E5
        sub     esp, 56                                 ; 142E _ 83. EC, 38
        mov     eax, dword [ebp+8H]                     ; 1431 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1434 _ 89. 04 24
        call    _sheet_alloc                            ; 1437 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 143C _ 89. 45, F4
        mov     eax, dword [_memman]                    ; 143F _ A1, 00000000(d)
        mov     dword [esp+4H], 10880                   ; 1444 _ C7. 44 24, 04, 00002A80
        mov     dword [esp], eax                        ; 144C _ 89. 04 24
        call    _memman_alloc_4k                        ; 144F _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 1454 _ 89. 45, F0
        mov     dword [esp+10H], -1                     ; 1457 _ C7. 44 24, 10, FFFFFFFF
        mov     dword [esp+0CH], 68                     ; 145F _ C7. 44 24, 0C, 00000044
        mov     dword [esp+8H], 160                     ; 1467 _ C7. 44 24, 08, 000000A0
        mov     eax, dword [ebp-10H]                    ; 146F _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 1472 _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 1476 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 1479 _ 89. 04 24
        call    _sheet_setbuf                           ; 147C _ E8, 00000000(rel)
        mov     eax, dword [ebp+0CH]                    ; 1481 _ 8B. 45, 0C
        mov     dword [esp+8H], eax                     ; 1484 _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 1488 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 148B _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 148F _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1492 _ 89. 04 24
        call    _make_window8                           ; 1495 _ E8, 000000A5
        mov     dword [esp+14H], ?_154                  ; 149A _ C7. 44 24, 14, 00000061(d)
        mov     dword [esp+10H], 0                      ; 14A2 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 28                     ; 14AA _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 24                      ; 14B2 _ C7. 44 24, 08, 00000018
        mov     eax, dword [ebp-0CH]                    ; 14BA _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 14BD _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 14C1 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 14C4 _ 89. 04 24
        call    _showString                             ; 14C7 _ E8, FFFFF434
        mov     dword [esp+14H], ?_155                  ; 14CC _ C7. 44 24, 14, 0000006C(d)
        mov     dword [esp+10H], 0                      ; 14D4 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 44                     ; 14DC _ C7. 44 24, 0C, 0000002C
        mov     dword [esp+8H], 24                      ; 14E4 _ C7. 44 24, 08, 00000018
        mov     eax, dword [ebp-0CH]                    ; 14EC _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 14EF _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 14F3 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 14F6 _ 89. 04 24
        call    _showString                             ; 14F9 _ E8, FFFFF402
        mov     dword [esp+0CH], 72                     ; 14FE _ C7. 44 24, 0C, 00000048
        mov     dword [esp+8H], 80                      ; 1506 _ C7. 44 24, 08, 00000050
        mov     eax, dword [ebp-0CH]                    ; 150E _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 1511 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1515 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1518 _ 89. 04 24
        call    _sheet_slide                            ; 151B _ E8, 00000000(rel)
        mov     dword [esp+8H], 2                       ; 1520 _ C7. 44 24, 08, 00000002
        mov     eax, dword [ebp-0CH]                    ; 1528 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 152B _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 152F _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1532 _ 89. 04 24
        call    _sheet_updown                           ; 1535 _ E8, 00000000(rel)
        mov     eax, dword [ebp-0CH]                    ; 153A _ 8B. 45, F4
        leave                                           ; 153D _ C9
        ret                                             ; 153E _ C3
; _message_box End of function

_make_window8:; Function begin
        push    ebp                                     ; 153F _ 55
        mov     ebp, esp                                ; 1540 _ 89. E5
        push    ebx                                     ; 1542 _ 53
        sub     esp, 68                                 ; 1543 _ 83. EC, 44
        mov     eax, dword [ebp+0CH]                    ; 1546 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1549 _ 8B. 40, 04
        mov     dword [ebp-18H], eax                    ; 154C _ 89. 45, E8
        mov     eax, dword [ebp+0CH]                    ; 154F _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 1552 _ 8B. 40, 08
        mov     dword [ebp-1CH], eax                    ; 1555 _ 89. 45, E4
        mov     eax, dword [ebp-18H]                    ; 1558 _ 8B. 45, E8
        lea     edx, [eax-1H]                           ; 155B _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 155E _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1561 _ 8B. 00
        mov     dword [esp+18H], 0                      ; 1563 _ C7. 44 24, 18, 00000000
        mov     dword [esp+14H], edx                    ; 156B _ 89. 54 24, 14
        mov     dword [esp+10H], 0                      ; 156F _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 1577 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 157F _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-18H]                    ; 1587 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 158A _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 158E _ 89. 04 24
        call    _boxfill8                               ; 1591 _ E8, FFFFF4D7
        mov     eax, dword [ebp-18H]                    ; 1596 _ 8B. 45, E8
        lea     edx, [eax-2H]                           ; 1599 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 159C _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 159F _ 8B. 00
        mov     dword [esp+18H], 1                      ; 15A1 _ C7. 44 24, 18, 00000001
        mov     dword [esp+14H], edx                    ; 15A9 _ 89. 54 24, 14
        mov     dword [esp+10H], 1                      ; 15AD _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], 1                      ; 15B5 _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 7                       ; 15BD _ C7. 44 24, 08, 00000007
        mov     edx, dword [ebp-18H]                    ; 15C5 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 15C8 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 15CC _ 89. 04 24
        call    _boxfill8                               ; 15CF _ E8, FFFFF499
        mov     eax, dword [ebp-1CH]                    ; 15D4 _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 15D7 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 15DA _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 15DD _ 8B. 00
        mov     dword [esp+18H], edx                    ; 15DF _ 89. 54 24, 18
        mov     dword [esp+14H], 0                      ; 15E3 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], 0                      ; 15EB _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 15F3 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 15FB _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-18H]                    ; 1603 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 1606 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 160A _ 89. 04 24
        call    _boxfill8                               ; 160D _ E8, FFFFF45B
        mov     eax, dword [ebp-1CH]                    ; 1612 _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 1615 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1618 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 161B _ 8B. 00
        mov     dword [esp+18H], edx                    ; 161D _ 89. 54 24, 18
        mov     dword [esp+14H], 1                      ; 1621 _ C7. 44 24, 14, 00000001
        mov     dword [esp+10H], 1                      ; 1629 _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], 1                      ; 1631 _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 7                       ; 1639 _ C7. 44 24, 08, 00000007
        mov     edx, dword [ebp-18H]                    ; 1641 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 1644 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1648 _ 89. 04 24
        call    _boxfill8                               ; 164B _ E8, FFFFF41D
        mov     eax, dword [ebp-1CH]                    ; 1650 _ 8B. 45, E4
        lea     ebx, [eax-2H]                           ; 1653 _ 8D. 58, FE
        mov     eax, dword [ebp-18H]                    ; 1656 _ 8B. 45, E8
        lea     ecx, [eax-2H]                           ; 1659 _ 8D. 48, FE
        mov     eax, dword [ebp-18H]                    ; 165C _ 8B. 45, E8
        lea     edx, [eax-2H]                           ; 165F _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 1662 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1665 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 1667 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 166B _ 89. 4C 24, 14
        mov     dword [esp+10H], 1                      ; 166F _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], edx                    ; 1677 _ 89. 54 24, 0C
        mov     dword [esp+8H], 15                      ; 167B _ C7. 44 24, 08, 0000000F
        mov     edx, dword [ebp-18H]                    ; 1683 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 1686 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 168A _ 89. 04 24
        call    _boxfill8                               ; 168D _ E8, FFFFF3DB
        mov     eax, dword [ebp-1CH]                    ; 1692 _ 8B. 45, E4
        lea     ebx, [eax-1H]                           ; 1695 _ 8D. 58, FF
        mov     eax, dword [ebp-18H]                    ; 1698 _ 8B. 45, E8
        lea     ecx, [eax-1H]                           ; 169B _ 8D. 48, FF
        mov     eax, dword [ebp-18H]                    ; 169E _ 8B. 45, E8
        lea     edx, [eax-1H]                           ; 16A1 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 16A4 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 16A7 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 16A9 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 16AD _ 89. 4C 24, 14
        mov     dword [esp+10H], 0                      ; 16B1 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], edx                    ; 16B9 _ 89. 54 24, 0C
        mov     dword [esp+8H], 0                       ; 16BD _ C7. 44 24, 08, 00000000
        mov     edx, dword [ebp-18H]                    ; 16C5 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 16C8 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 16CC _ 89. 04 24
        call    _boxfill8                               ; 16CF _ E8, FFFFF399
        mov     eax, dword [ebp-1CH]                    ; 16D4 _ 8B. 45, E4
        lea     ecx, [eax-3H]                           ; 16D7 _ 8D. 48, FD
        mov     eax, dword [ebp-18H]                    ; 16DA _ 8B. 45, E8
        lea     edx, [eax-3H]                           ; 16DD _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 16E0 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 16E3 _ 8B. 00
        mov     dword [esp+18H], ecx                    ; 16E5 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 16E9 _ 89. 54 24, 14
        mov     dword [esp+10H], 2                      ; 16ED _ C7. 44 24, 10, 00000002
        mov     dword [esp+0CH], 2                      ; 16F5 _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 8                       ; 16FD _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-18H]                    ; 1705 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 1708 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 170C _ 89. 04 24
        call    _boxfill8                               ; 170F _ E8, FFFFF359
        mov     eax, dword [ebp-18H]                    ; 1714 _ 8B. 45, E8
        lea     edx, [eax-4H]                           ; 1717 _ 8D. 50, FC
        mov     eax, dword [ebp+0CH]                    ; 171A _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 171D _ 8B. 00
        mov     dword [esp+18H], 20                     ; 171F _ C7. 44 24, 18, 00000014
        mov     dword [esp+14H], edx                    ; 1727 _ 89. 54 24, 14
        mov     dword [esp+10H], 3                      ; 172B _ C7. 44 24, 10, 00000003
        mov     dword [esp+0CH], 3                      ; 1733 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 12                      ; 173B _ C7. 44 24, 08, 0000000C
        mov     edx, dword [ebp-18H]                    ; 1743 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 1746 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 174A _ 89. 04 24
        call    _boxfill8                               ; 174D _ E8, FFFFF31B
        mov     eax, dword [ebp-1CH]                    ; 1752 _ 8B. 45, E4
        lea     ebx, [eax-2H]                           ; 1755 _ 8D. 58, FE
        mov     eax, dword [ebp-18H]                    ; 1758 _ 8B. 45, E8
        lea     ecx, [eax-2H]                           ; 175B _ 8D. 48, FE
        mov     eax, dword [ebp-1CH]                    ; 175E _ 8B. 45, E4
        lea     edx, [eax-2H]                           ; 1761 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 1764 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1767 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 1769 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 176D _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 1771 _ 89. 54 24, 10
        mov     dword [esp+0CH], 1                      ; 1775 _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 15                      ; 177D _ C7. 44 24, 08, 0000000F
        mov     edx, dword [ebp-18H]                    ; 1785 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 1788 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 178C _ 89. 04 24
        call    _boxfill8                               ; 178F _ E8, FFFFF2D9
        mov     eax, dword [ebp-1CH]                    ; 1794 _ 8B. 45, E4
        lea     ebx, [eax-1H]                           ; 1797 _ 8D. 58, FF
        mov     eax, dword [ebp-18H]                    ; 179A _ 8B. 45, E8
        lea     ecx, [eax-1H]                           ; 179D _ 8D. 48, FF
        mov     eax, dword [ebp-1CH]                    ; 17A0 _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 17A3 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 17A6 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 17A9 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 17AB _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 17AF _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 17B3 _ 89. 54 24, 10
        mov     dword [esp+0CH], 0                      ; 17B7 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 17BF _ C7. 44 24, 08, 00000000
        mov     edx, dword [ebp-18H]                    ; 17C7 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 17CA _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 17CE _ 89. 04 24
        call    _boxfill8                               ; 17D1 _ E8, FFFFF297
        mov     eax, dword [ebp+10H]                    ; 17D6 _ 8B. 45, 10
        mov     dword [esp+14H], eax                    ; 17D9 _ 89. 44 24, 14
        mov     dword [esp+10H], 7                      ; 17DD _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 4                      ; 17E5 _ C7. 44 24, 0C, 00000004
        mov     dword [esp+8H], 24                      ; 17ED _ C7. 44 24, 08, 00000018
        mov     eax, dword [ebp+0CH]                    ; 17F5 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 17F8 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 17FC _ 8B. 45, 08
        mov     dword [esp], eax                        ; 17FF _ 89. 04 24
        call    _showString                             ; 1802 _ E8, FFFFF0F9
        mov     dword [ebp-10H], 0                      ; 1807 _ C7. 45, F0, 00000000
        jmp     ?_065                                   ; 180E _ E9, 00000084

?_058:  mov     dword [ebp-0CH], 0                      ; 1813 _ C7. 45, F4, 00000000
        jmp     ?_064                                   ; 181A _ EB, 71

?_059:  mov     eax, dword [ebp-10H]                    ; 181C _ 8B. 45, F0
        shl     eax, 4                                  ; 181F _ C1. E0, 04
        mov     edx, eax                                ; 1822 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 1824 _ 8B. 45, F4
        add     eax, edx                                ; 1827 _ 01. D0
        add     eax, _closebtn.2359                     ; 1829 _ 05, 00000160(d)
        movzx   eax, byte [eax]                         ; 182E _ 0F B6. 00
        mov     byte [ebp-11H], al                      ; 1831 _ 88. 45, EF
        cmp     byte [ebp-11H], 64                      ; 1834 _ 80. 7D, EF, 40
        jnz     ?_060                                   ; 1838 _ 75, 06
        mov     byte [ebp-11H], 0                       ; 183A _ C6. 45, EF, 00
        jmp     ?_063                                   ; 183E _ EB, 1C

?_060:  cmp     byte [ebp-11H], 36                      ; 1840 _ 80. 7D, EF, 24
        jnz     ?_061                                   ; 1844 _ 75, 06
        mov     byte [ebp-11H], 15                      ; 1846 _ C6. 45, EF, 0F
        jmp     ?_063                                   ; 184A _ EB, 10

?_061:  cmp     byte [ebp-11H], 81                      ; 184C _ 80. 7D, EF, 51
        jnz     ?_062                                   ; 1850 _ 75, 06
        mov     byte [ebp-11H], 8                       ; 1852 _ C6. 45, EF, 08
        jmp     ?_063                                   ; 1856 _ EB, 04

?_062:  mov     byte [ebp-11H], 7                       ; 1858 _ C6. 45, EF, 07
?_063:  mov     eax, dword [ebp+0CH]                    ; 185C _ 8B. 45, 0C
        mov     ecx, dword [eax]                        ; 185F _ 8B. 08
        mov     eax, dword [ebp-10H]                    ; 1861 _ 8B. 45, F0
        lea     edx, [eax+5H]                           ; 1864 _ 8D. 50, 05
        mov     eax, dword [ebp+0CH]                    ; 1867 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 186A _ 8B. 40, 04
        imul    eax, edx                                ; 186D _ 0F AF. C2
        mov     edx, dword [ebp+0CH]                    ; 1870 _ 8B. 55, 0C
        mov     edx, dword [edx+4H]                     ; 1873 _ 8B. 52, 04
        lea     ebx, [edx-15H]                          ; 1876 _ 8D. 5A, EB
        mov     edx, dword [ebp-0CH]                    ; 1879 _ 8B. 55, F4
        add     edx, ebx                                ; 187C _ 01. DA
        add     eax, edx                                ; 187E _ 01. D0
        lea     edx, [ecx+eax]                          ; 1880 _ 8D. 14 01
        movzx   eax, byte [ebp-11H]                     ; 1883 _ 0F B6. 45, EF
        mov     byte [edx], al                          ; 1887 _ 88. 02
        add     dword [ebp-0CH], 1                      ; 1889 _ 83. 45, F4, 01
?_064:  cmp     dword [ebp-0CH], 15                     ; 188D _ 83. 7D, F4, 0F
        jle     ?_059                                   ; 1891 _ 7E, 89
        add     dword [ebp-10H], 1                      ; 1893 _ 83. 45, F0, 01
?_065:  cmp     dword [ebp-10H], 13                     ; 1897 _ 83. 7D, F0, 0D
        jle     ?_058                                   ; 189B _ 0F 8E, FFFFFF72
        nop                                             ; 18A1 _ 90
        add     esp, 68                                 ; 18A2 _ 83. C4, 44
        pop     ebx                                     ; 18A5 _ 5B
        pop     ebp                                     ; 18A6 _ 5D
        ret                                             ; 18A7 _ C3
; _make_window8 End of function

.text:  ; Local function

_shtctl_init:
        push    ebp                                     ; 18A8 _ 55
        mov     ebp, esp                                ; 18A9 _ 89. E5
        sub     esp, 40                                 ; 18AB _ 83. EC, 28
        mov     dword [esp+4H], 9232                    ; 18AE _ C7. 44 24, 04, 00002410
        mov     eax, dword [ebp+8H]                     ; 18B6 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 18B9 _ 89. 04 24
        call    _memman_alloc_4k                        ; 18BC _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 18C1 _ 89. 45, F0
        cmp     dword [ebp-10H], 0                      ; 18C4 _ 83. 7D, F0, 00
        jnz     ?_066                                   ; 18C8 _ 75, 0A
        mov     eax, 0                                  ; 18CA _ B8, 00000000
        jmp     ?_070                                   ; 18CF _ E9, 0000009D

?_066:  mov     eax, dword [ebp+10H]                    ; 18D4 _ 8B. 45, 10
        imul    eax, dword [ebp+14H]                    ; 18D7 _ 0F AF. 45, 14
        mov     dword [esp+4H], eax                     ; 18DB _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 18DF _ 8B. 45, 08
        mov     dword [esp], eax                        ; 18E2 _ 89. 04 24
        call    _memman_alloc_4k                        ; 18E5 _ E8, 00000000(rel)
        mov     edx, eax                                ; 18EA _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 18EC _ 8B. 45, F0
        mov     dword [eax+4H], edx                     ; 18EF _ 89. 50, 04
        mov     eax, dword [ebp-10H]                    ; 18F2 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 18F5 _ 8B. 40, 04
        test    eax, eax                                ; 18F8 _ 85. C0
        jnz     ?_067                                   ; 18FA _ 75, 21
        mov     eax, dword [ebp-10H]                    ; 18FC _ 8B. 45, F0
        mov     dword [esp+8H], 9232                    ; 18FF _ C7. 44 24, 08, 00002410
        mov     dword [esp+4H], eax                     ; 1907 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 190B _ 8B. 45, 08
        mov     dword [esp], eax                        ; 190E _ 89. 04 24
        call    _memman_free_4k                         ; 1911 _ E8, 00000000(rel)
        mov     eax, 0                                  ; 1916 _ B8, 00000000
        jmp     ?_070                                   ; 191B _ EB, 54

?_067:  mov     eax, dword [ebp-10H]                    ; 191D _ 8B. 45, F0
        mov     edx, dword [ebp+0CH]                    ; 1920 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 1923 _ 89. 10
        mov     eax, dword [ebp-10H]                    ; 1925 _ 8B. 45, F0
        mov     edx, dword [ebp+10H]                    ; 1928 _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 192B _ 89. 50, 08
        mov     eax, dword [ebp-10H]                    ; 192E _ 8B. 45, F0
        mov     edx, dword [ebp+14H]                    ; 1931 _ 8B. 55, 14
        mov     dword [eax+0CH], edx                    ; 1934 _ 89. 50, 0C
        mov     eax, dword [ebp-10H]                    ; 1937 _ 8B. 45, F0
        mov     dword [eax+10H], -1                     ; 193A _ C7. 40, 10, FFFFFFFF
        mov     dword [ebp-0CH], 0                      ; 1941 _ C7. 45, F4, 00000000
        jmp     ?_069                                   ; 1948 _ EB, 1B

?_068:  mov     edx, dword [ebp-10H]                    ; 194A _ 8B. 55, F0
        mov     eax, dword [ebp-0CH]                    ; 194D _ 8B. 45, F4
        add     eax, 33                                 ; 1950 _ 83. C0, 21
        shl     eax, 5                                  ; 1953 _ C1. E0, 05
        add     eax, edx                                ; 1956 _ 01. D0
        add     eax, 16                                 ; 1958 _ 83. C0, 10
        mov     dword [eax], 0                          ; 195B _ C7. 00, 00000000
        add     dword [ebp-0CH], 1                      ; 1961 _ 83. 45, F4, 01
?_069:  cmp     dword [ebp-0CH], 255                    ; 1965 _ 81. 7D, F4, 000000FF
        jle     ?_068                                   ; 196C _ 7E, DC
        mov     eax, dword [ebp-10H]                    ; 196E _ 8B. 45, F0
?_070:  leave                                           ; 1971 _ C9
        ret                                             ; 1972 _ C3

_sheet_alloc:; Function begin
        push    ebp                                     ; 1973 _ 55
        mov     ebp, esp                                ; 1974 _ 89. E5
        sub     esp, 16                                 ; 1976 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 1979 _ C7. 45, FC, 00000000
        jmp     ?_073                                   ; 1980 _ EB, 5B

?_071:  mov     edx, dword [ebp+8H]                     ; 1982 _ 8B. 55, 08
        mov     eax, dword [ebp-4H]                     ; 1985 _ 8B. 45, FC
        add     eax, 33                                 ; 1988 _ 83. C0, 21
        shl     eax, 5                                  ; 198B _ C1. E0, 05
        add     eax, edx                                ; 198E _ 01. D0
        add     eax, 16                                 ; 1990 _ 83. C0, 10
        mov     eax, dword [eax]                        ; 1993 _ 8B. 00
        test    eax, eax                                ; 1995 _ 85. C0
        jnz     ?_072                                   ; 1997 _ 75, 40
        mov     eax, dword [ebp-4H]                     ; 1999 _ 8B. 45, FC
        shl     eax, 5                                  ; 199C _ C1. E0, 05
        lea     edx, [eax+410H]                         ; 199F _ 8D. 90, 00000410
        mov     eax, dword [ebp+8H]                     ; 19A5 _ 8B. 45, 08
        add     eax, edx                                ; 19A8 _ 01. D0
        add     eax, 4                                  ; 19AA _ 83. C0, 04
        mov     dword [ebp-8H], eax                     ; 19AD _ 89. 45, F8
        mov     eax, dword [ebp+8H]                     ; 19B0 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 19B3 _ 8B. 55, FC
        add     edx, 4                                  ; 19B6 _ 83. C2, 04
        mov     ecx, dword [ebp-8H]                     ; 19B9 _ 8B. 4D, F8
        mov     dword [eax+edx*4+4H], ecx               ; 19BC _ 89. 4C 90, 04
        mov     eax, dword [ebp-8H]                     ; 19C0 _ 8B. 45, F8
        mov     dword [eax+1CH], 1                      ; 19C3 _ C7. 40, 1C, 00000001
        mov     eax, dword [ebp-8H]                     ; 19CA _ 8B. 45, F8
        mov     dword [eax+18H], -1                     ; 19CD _ C7. 40, 18, FFFFFFFF
        mov     eax, dword [ebp-8H]                     ; 19D4 _ 8B. 45, F8
        jmp     ?_074                                   ; 19D7 _ EB, 12

?_072:  add     dword [ebp-4H], 1                       ; 19D9 _ 83. 45, FC, 01
?_073:  cmp     dword [ebp-4H], 255                     ; 19DD _ 81. 7D, FC, 000000FF
        jle     ?_071                                   ; 19E4 _ 7E, 9C
        mov     eax, 0                                  ; 19E6 _ B8, 00000000
?_074:  leave                                           ; 19EB _ C9
        ret                                             ; 19EC _ C3
; _sheet_alloc End of function

_sheet_setbuf:; Function begin
        push    ebp                                     ; 19ED _ 55
        mov     ebp, esp                                ; 19EE _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 19F0 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 19F3 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 19F6 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 19F8 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 19FB _ 8B. 55, 10
        mov     dword [eax+4H], edx                     ; 19FE _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1A01 _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 1A04 _ 8B. 55, 14
        mov     dword [eax+8H], edx                     ; 1A07 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 1A0A _ 8B. 45, 08
        mov     edx, dword [ebp+18H]                    ; 1A0D _ 8B. 55, 18
        mov     dword [eax+14H], edx                    ; 1A10 _ 89. 50, 14
        nop                                             ; 1A13 _ 90
        pop     ebp                                     ; 1A14 _ 5D
        ret                                             ; 1A15 _ C3
; _sheet_setbuf End of function

_sheet_updown:; Function begin
        push    ebp                                     ; 1A16 _ 55
        mov     ebp, esp                                ; 1A17 _ 89. E5
        push    edi                                     ; 1A19 _ 57
        push    esi                                     ; 1A1A _ 56
        push    ebx                                     ; 1A1B _ 53
        sub     esp, 60                                 ; 1A1C _ 83. EC, 3C
        mov     eax, dword [ebp+0CH]                    ; 1A1F _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 1A22 _ 8B. 40, 18
        mov     dword [ebp-20H], eax                    ; 1A25 _ 89. 45, E0
        mov     eax, dword [ebp+8H]                     ; 1A28 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 1A2B _ 8B. 40, 10
        add     eax, 1                                  ; 1A2E _ 83. C0, 01
        cmp     dword [ebp+10H], eax                    ; 1A31 _ 39. 45, 10
        jle     ?_075                                   ; 1A34 _ 7E, 0C
        mov     eax, dword [ebp+8H]                     ; 1A36 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 1A39 _ 8B. 40, 10
        add     eax, 1                                  ; 1A3C _ 83. C0, 01
        mov     dword [ebp+10H], eax                    ; 1A3F _ 89. 45, 10
?_075:  cmp     dword [ebp+10H], -1                     ; 1A42 _ 83. 7D, 10, FF
        jge     ?_076                                   ; 1A46 _ 7D, 07
        mov     dword [ebp+10H], -1                     ; 1A48 _ C7. 45, 10, FFFFFFFF
?_076:  mov     eax, dword [ebp+0CH]                    ; 1A4F _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 1A52 _ 8B. 55, 10
        mov     dword [eax+18H], edx                    ; 1A55 _ 89. 50, 18
        mov     eax, dword [ebp-20H]                    ; 1A58 _ 8B. 45, E0
        cmp     eax, dword [ebp+10H]                    ; 1A5B _ 3B. 45, 10
        jle     ?_083                                   ; 1A5E _ 0F 8E, 00000212
        cmp     dword [ebp+10H], 0                      ; 1A64 _ 83. 7D, 10, 00
        js      ?_079                                   ; 1A68 _ 0F 88, 000000FE
        mov     eax, dword [ebp-20H]                    ; 1A6E _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 1A71 _ 89. 45, E4
        jmp     ?_078                                   ; 1A74 _ EB, 34

?_077:  mov     eax, dword [ebp-1CH]                    ; 1A76 _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 1A79 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 1A7C _ 8B. 45, 08
        add     edx, 4                                  ; 1A7F _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 1A82 _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 1A86 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 1A89 _ 8B. 55, E4
        add     edx, 4                                  ; 1A8C _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 1A8F _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 1A93 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 1A96 _ 8B. 55, E4
        add     edx, 4                                  ; 1A99 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 1A9C _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 1AA0 _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 1AA3 _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 1AA6 _ 83. 6D, E4, 01
?_078:  mov     eax, dword [ebp-1CH]                    ; 1AAA _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 1AAD _ 3B. 45, 10
        jg      ?_077                                   ; 1AB0 _ 7F, C4
        mov     eax, dword [ebp+8H]                     ; 1AB2 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 1AB5 _ 8B. 55, 10
        add     edx, 4                                  ; 1AB8 _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 1ABB _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 1ABE _ 89. 4C 90, 04
        mov     eax, dword [ebp+10H]                    ; 1AC2 _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 1AC5 _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 1AC8 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1ACB _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1ACE _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 1AD1 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 1AD4 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 1AD7 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 1ADA _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 1ADD _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1AE0 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 1AE3 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 1AE6 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1AE9 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1AEC _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 1AEF _ 8B. 40, 0C
        mov     dword [esp+14H], esi                    ; 1AF2 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 1AF6 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 1AFA _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 1AFE _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 1B02 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1B06 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1B09 _ 89. 04 24
        call    _sheet_refreshmap                       ; 1B0C _ E8, 0000063D
        mov     eax, dword [ebp+10H]                    ; 1B11 _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 1B14 _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 1B17 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1B1A _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1B1D _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 1B20 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 1B23 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 1B26 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 1B29 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 1B2C _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1B2F _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 1B32 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 1B35 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1B38 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1B3B _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 1B3E _ 8B. 40, 0C
        mov     edi, dword [ebp-20H]                    ; 1B41 _ 8B. 7D, E0
        mov     dword [esp+18H], edi                    ; 1B44 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 1B48 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 1B4C _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 1B50 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 1B54 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 1B58 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1B5C _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1B5F _ 89. 04 24
        call    _sheet_refreshsub                       ; 1B62 _ E8, 00000465
        jmp     ?_090                                   ; 1B67 _ E9, 0000027D

?_079:  mov     eax, dword [ebp+8H]                     ; 1B6C _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 1B6F _ 8B. 40, 10
        cmp     dword [ebp-20H], eax                    ; 1B72 _ 39. 45, E0
        jge     ?_082                                   ; 1B75 _ 7D, 47
        mov     eax, dword [ebp-20H]                    ; 1B77 _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 1B7A _ 89. 45, E4
        jmp     ?_081                                   ; 1B7D _ EB, 34

?_080:  mov     eax, dword [ebp-1CH]                    ; 1B7F _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 1B82 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1B85 _ 8B. 45, 08
        add     edx, 4                                  ; 1B88 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 1B8B _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 1B8F _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 1B92 _ 8B. 55, E4
        add     edx, 4                                  ; 1B95 _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 1B98 _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 1B9C _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 1B9F _ 8B. 55, E4
        add     edx, 4                                  ; 1BA2 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 1BA5 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 1BA9 _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 1BAC _ 89. 50, 18
        add     dword [ebp-1CH], 1                      ; 1BAF _ 83. 45, E4, 01
?_081:  mov     eax, dword [ebp+8H]                     ; 1BB3 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 1BB6 _ 8B. 40, 10
        cmp     dword [ebp-1CH], eax                    ; 1BB9 _ 39. 45, E4
        jl      ?_080                                   ; 1BBC _ 7C, C1
?_082:  mov     eax, dword [ebp+8H]                     ; 1BBE _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 1BC1 _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 1BC4 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 1BC7 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 1BCA _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1BCD _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1BD0 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1BD3 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 1BD6 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 1BD9 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 1BDC _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 1BDF _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 1BE2 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1BE5 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 1BE8 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 1BEB _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1BEE _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1BF1 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 1BF4 _ 8B. 40, 0C
        mov     dword [esp+14H], 0                      ; 1BF7 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], ebx                    ; 1BFF _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 1C03 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 1C07 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 1C0B _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1C0F _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1C12 _ 89. 04 24
        call    _sheet_refreshmap                       ; 1C15 _ E8, 00000534
        mov     eax, dword [ebp-20H]                    ; 1C1A _ 8B. 45, E0
        lea     esi, [eax-1H]                           ; 1C1D _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 1C20 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1C23 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1C26 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 1C29 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 1C2C _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 1C2F _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 1C32 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 1C35 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1C38 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 1C3B _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 1C3E _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1C41 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1C44 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 1C47 _ 8B. 40, 0C
        mov     dword [esp+18H], esi                    ; 1C4A _ 89. 74 24, 18
        mov     dword [esp+14H], 0                      ; 1C4E _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], ebx                    ; 1C56 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 1C5A _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 1C5E _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 1C62 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1C66 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1C69 _ 89. 04 24
        call    _sheet_refreshsub                       ; 1C6C _ E8, 0000035B
        jmp     ?_090                                   ; 1C71 _ E9, 00000173

?_083:  mov     eax, dword [ebp-20H]                    ; 1C76 _ 8B. 45, E0
        cmp     eax, dword [ebp+10H]                    ; 1C79 _ 3B. 45, 10
        jge     ?_090                                   ; 1C7C _ 0F 8D, 00000167
        cmp     dword [ebp-20H], 0                      ; 1C82 _ 83. 7D, E0, 00
        js      ?_086                                   ; 1C86 _ 78, 56
        mov     eax, dword [ebp-20H]                    ; 1C88 _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 1C8B _ 89. 45, E4
        jmp     ?_085                                   ; 1C8E _ EB, 34

?_084:  mov     eax, dword [ebp-1CH]                    ; 1C90 _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 1C93 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1C96 _ 8B. 45, 08
        add     edx, 4                                  ; 1C99 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 1C9C _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 1CA0 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 1CA3 _ 8B. 55, E4
        add     edx, 4                                  ; 1CA6 _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 1CA9 _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 1CAD _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 1CB0 _ 8B. 55, E4
        add     edx, 4                                  ; 1CB3 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 1CB6 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 1CBA _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 1CBD _ 89. 50, 18
        add     dword [ebp-1CH], 1                      ; 1CC0 _ 83. 45, E4, 01
?_085:  mov     eax, dword [ebp-1CH]                    ; 1CC4 _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 1CC7 _ 3B. 45, 10
        jl      ?_084                                   ; 1CCA _ 7C, C4
        mov     eax, dword [ebp+8H]                     ; 1CCC _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 1CCF _ 8B. 55, 10
        add     edx, 4                                  ; 1CD2 _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 1CD5 _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 1CD8 _ 89. 4C 90, 04
        jmp     ?_089                                   ; 1CDC _ EB, 6C

?_086:  mov     eax, dword [ebp+8H]                     ; 1CDE _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 1CE1 _ 8B. 40, 10
        mov     dword [ebp-1CH], eax                    ; 1CE4 _ 89. 45, E4
        jmp     ?_088                                   ; 1CE7 _ EB, 3A

?_087:  mov     eax, dword [ebp-1CH]                    ; 1CE9 _ 8B. 45, E4
        lea     ebx, [eax+1H]                           ; 1CEC _ 8D. 58, 01
        mov     eax, dword [ebp+8H]                     ; 1CEF _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 1CF2 _ 8B. 55, E4
        add     edx, 4                                  ; 1CF5 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 1CF8 _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 1CFC _ 8B. 45, 08
        lea     edx, [ebx+4H]                           ; 1CFF _ 8D. 53, 04
        mov     dword [eax+edx*4+4H], ecx               ; 1D02 _ 89. 4C 90, 04
        mov     eax, dword [ebp-1CH]                    ; 1D06 _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 1D09 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1D0C _ 8B. 45, 08
        add     edx, 4                                  ; 1D0F _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 1D12 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 1D16 _ 8B. 55, E4
        add     edx, 1                                  ; 1D19 _ 83. C2, 01
        mov     dword [eax+18H], edx                    ; 1D1C _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 1D1F _ 83. 6D, E4, 01
?_088:  mov     eax, dword [ebp-1CH]                    ; 1D23 _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 1D26 _ 3B. 45, 10
        jge     ?_087                                   ; 1D29 _ 7D, BE
        mov     eax, dword [ebp+8H]                     ; 1D2B _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 1D2E _ 8B. 55, 10
        add     edx, 4                                  ; 1D31 _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 1D34 _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 1D37 _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 1D3B _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 1D3E _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 1D41 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1D44 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 1D47 _ 89. 50, 10
?_089:  mov     eax, dword [ebp+0CH]                    ; 1D4A _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1D4D _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1D50 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 1D53 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 1D56 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 1D59 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 1D5C _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 1D5F _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1D62 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 1D65 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 1D68 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1D6B _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1D6E _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 1D71 _ 8B. 40, 0C
        mov     esi, dword [ebp+10H]                    ; 1D74 _ 8B. 75, 10
        mov     dword [esp+14H], esi                    ; 1D77 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 1D7B _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 1D7F _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 1D83 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 1D87 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1D8B _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1D8E _ 89. 04 24
        call    _sheet_refreshmap                       ; 1D91 _ E8, 000003B8
        mov     eax, dword [ebp+0CH]                    ; 1D96 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1D99 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1D9C _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 1D9F _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 1DA2 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 1DA5 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 1DA8 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 1DAB _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1DAE _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 1DB1 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 1DB4 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1DB7 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1DBA _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 1DBD _ 8B. 40, 0C
        mov     esi, dword [ebp+10H]                    ; 1DC0 _ 8B. 75, 10
        mov     dword [esp+18H], esi                    ; 1DC3 _ 89. 74 24, 18
        mov     esi, dword [ebp+10H]                    ; 1DC7 _ 8B. 75, 10
        mov     dword [esp+14H], esi                    ; 1DCA _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 1DCE _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 1DD2 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 1DD6 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 1DDA _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1DDE _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1DE1 _ 89. 04 24
        call    _sheet_refreshsub                       ; 1DE4 _ E8, 000001E3
?_090:  nop                                             ; 1DE9 _ 90
        add     esp, 60                                 ; 1DEA _ 83. C4, 3C
        pop     ebx                                     ; 1DED _ 5B
        pop     esi                                     ; 1DEE _ 5E
        pop     edi                                     ; 1DEF _ 5F
        pop     ebp                                     ; 1DF0 _ 5D
        ret                                             ; 1DF1 _ C3
; _sheet_updown End of function

_sheet_refresh:; Function begin
        push    ebp                                     ; 1DF2 _ 55
        mov     ebp, esp                                ; 1DF3 _ 89. E5
        push    edi                                     ; 1DF5 _ 57
        push    esi                                     ; 1DF6 _ 56
        push    ebx                                     ; 1DF7 _ 53
        sub     esp, 60                                 ; 1DF8 _ 83. EC, 3C
        mov     eax, dword [ebp+0CH]                    ; 1DFB _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 1DFE _ 8B. 40, 18
        test    eax, eax                                ; 1E01 _ 85. C0
        js      ?_091                                   ; 1E03 _ 78, 61
        mov     eax, dword [ebp+0CH]                    ; 1E05 _ 8B. 45, 0C
        mov     edi, dword [eax+18H]                    ; 1E08 _ 8B. 78, 18
        mov     eax, dword [ebp+0CH]                    ; 1E0B _ 8B. 45, 0C
        mov     esi, dword [eax+18H]                    ; 1E0E _ 8B. 70, 18
        mov     eax, dword [ebp+0CH]                    ; 1E11 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1E14 _ 8B. 50, 10
        mov     eax, dword [ebp+1CH]                    ; 1E17 _ 8B. 45, 1C
        lea     ebx, [edx+eax]                          ; 1E1A _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 1E1D _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 1E20 _ 8B. 50, 0C
        mov     eax, dword [ebp+18H]                    ; 1E23 _ 8B. 45, 18
        lea     ecx, [edx+eax]                          ; 1E26 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 1E29 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1E2C _ 8B. 50, 10
        mov     eax, dword [ebp+14H]                    ; 1E2F _ 8B. 45, 14
        add     edx, eax                                ; 1E32 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 1E34 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 1E37 _ 8B. 40, 0C
        mov     dword [ebp-1CH], eax                    ; 1E3A _ 89. 45, E4
        mov     eax, dword [ebp+10H]                    ; 1E3D _ 8B. 45, 10
        add     eax, dword [ebp-1CH]                    ; 1E40 _ 03. 45, E4
        mov     dword [esp+18H], edi                    ; 1E43 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 1E47 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 1E4B _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 1E4F _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 1E53 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 1E57 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1E5B _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1E5E _ 89. 04 24
        call    _sheet_refreshsub                       ; 1E61 _ E8, 00000166
?_091:  mov     eax, 0                                  ; 1E66 _ B8, 00000000
        add     esp, 60                                 ; 1E6B _ 83. C4, 3C
        pop     ebx                                     ; 1E6E _ 5B
        pop     esi                                     ; 1E6F _ 5E
        pop     edi                                     ; 1E70 _ 5F
        pop     ebp                                     ; 1E71 _ 5D
        ret                                             ; 1E72 _ C3
; _sheet_refresh End of function

_sheet_slide:; Function begin
        push    ebp                                     ; 1E73 _ 55
        mov     ebp, esp                                ; 1E74 _ 89. E5
        push    esi                                     ; 1E76 _ 56
        push    ebx                                     ; 1E77 _ 53
        sub     esp, 48                                 ; 1E78 _ 83. EC, 30
        mov     eax, dword [ebp+0CH]                    ; 1E7B _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 1E7E _ 8B. 40, 0C
        mov     dword [ebp-0CH], eax                    ; 1E81 _ 89. 45, F4
        mov     eax, dword [ebp+0CH]                    ; 1E84 _ 8B. 45, 0C
        mov     eax, dword [eax+10H]                    ; 1E87 _ 8B. 40, 10
        mov     dword [ebp-10H], eax                    ; 1E8A _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 1E8D _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 1E90 _ 8B. 55, 10
        mov     dword [eax+0CH], edx                    ; 1E93 _ 89. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 1E96 _ 8B. 45, 0C
        mov     edx, dword [ebp+14H]                    ; 1E99 _ 8B. 55, 14
        mov     dword [eax+10H], edx                    ; 1E9C _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1E9F _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 1EA2 _ 8B. 40, 18
        test    eax, eax                                ; 1EA5 _ 85. C0
        js      ?_092                                   ; 1EA7 _ 0F 88, 00000117
        mov     eax, dword [ebp+0CH]                    ; 1EAD _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 1EB0 _ 8B. 50, 08
        mov     eax, dword [ebp-10H]                    ; 1EB3 _ 8B. 45, F0
        add     edx, eax                                ; 1EB6 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 1EB8 _ 8B. 45, 0C
        mov     ecx, dword [eax+4H]                     ; 1EBB _ 8B. 48, 04
        mov     eax, dword [ebp-0CH]                    ; 1EBE _ 8B. 45, F4
        add     eax, ecx                                ; 1EC1 _ 01. C8
        mov     dword [esp+14H], 0                      ; 1EC3 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], edx                    ; 1ECB _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 1ECF _ 89. 44 24, 0C
        mov     eax, dword [ebp-10H]                    ; 1ED3 _ 8B. 45, F0
        mov     dword [esp+8H], eax                     ; 1ED6 _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 1EDA _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 1EDD _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1EE1 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1EE4 _ 89. 04 24
        call    _sheet_refreshmap                       ; 1EE7 _ E8, 00000262
        mov     eax, dword [ebp+0CH]                    ; 1EEC _ 8B. 45, 0C
        mov     ecx, dword [eax+18H]                    ; 1EEF _ 8B. 48, 18
        mov     eax, dword [ebp+0CH]                    ; 1EF2 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 1EF5 _ 8B. 50, 08
        mov     eax, dword [ebp+14H]                    ; 1EF8 _ 8B. 45, 14
        add     edx, eax                                ; 1EFB _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 1EFD _ 8B. 45, 0C
        mov     ebx, dword [eax+4H]                     ; 1F00 _ 8B. 58, 04
        mov     eax, dword [ebp+10H]                    ; 1F03 _ 8B. 45, 10
        add     eax, ebx                                ; 1F06 _ 01. D8
        mov     dword [esp+14H], ecx                    ; 1F08 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 1F0C _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 1F10 _ 89. 44 24, 0C
        mov     eax, dword [ebp+14H]                    ; 1F14 _ 8B. 45, 14
        mov     dword [esp+8H], eax                     ; 1F17 _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 1F1B _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 1F1E _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1F22 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1F25 _ 89. 04 24
        call    _sheet_refreshmap                       ; 1F28 _ E8, 00000221
        mov     eax, dword [ebp+0CH]                    ; 1F2D _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 1F30 _ 8B. 40, 18
        lea     ecx, [eax-1H]                           ; 1F33 _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 1F36 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 1F39 _ 8B. 50, 08
        mov     eax, dword [ebp-10H]                    ; 1F3C _ 8B. 45, F0
        add     edx, eax                                ; 1F3F _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 1F41 _ 8B. 45, 0C
        mov     ebx, dword [eax+4H]                     ; 1F44 _ 8B. 58, 04
        mov     eax, dword [ebp-0CH]                    ; 1F47 _ 8B. 45, F4
        add     eax, ebx                                ; 1F4A _ 01. D8
        mov     dword [esp+18H], ecx                    ; 1F4C _ 89. 4C 24, 18
        mov     dword [esp+14H], 0                      ; 1F50 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], edx                    ; 1F58 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 1F5C _ 89. 44 24, 0C
        mov     eax, dword [ebp-10H]                    ; 1F60 _ 8B. 45, F0
        mov     dword [esp+8H], eax                     ; 1F63 _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 1F67 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 1F6A _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1F6E _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1F71 _ 89. 04 24
        call    _sheet_refreshsub                       ; 1F74 _ E8, 00000053
        mov     eax, dword [ebp+0CH]                    ; 1F79 _ 8B. 45, 0C
        mov     ebx, dword [eax+18H]                    ; 1F7C _ 8B. 58, 18
        mov     eax, dword [ebp+0CH]                    ; 1F7F _ 8B. 45, 0C
        mov     ecx, dword [eax+18H]                    ; 1F82 _ 8B. 48, 18
        mov     eax, dword [ebp+0CH]                    ; 1F85 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 1F88 _ 8B. 50, 08
        mov     eax, dword [ebp+14H]                    ; 1F8B _ 8B. 45, 14
        add     edx, eax                                ; 1F8E _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 1F90 _ 8B. 45, 0C
        mov     esi, dword [eax+4H]                     ; 1F93 _ 8B. 70, 04
        mov     eax, dword [ebp+10H]                    ; 1F96 _ 8B. 45, 10
        add     eax, esi                                ; 1F99 _ 01. F0
        mov     dword [esp+18H], ebx                    ; 1F9B _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 1F9F _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 1FA3 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 1FA7 _ 89. 44 24, 0C
        mov     eax, dword [ebp+14H]                    ; 1FAB _ 8B. 45, 14
        mov     dword [esp+8H], eax                     ; 1FAE _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 1FB2 _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 1FB5 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1FB9 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1FBC _ 89. 04 24
        call    _sheet_refreshsub                       ; 1FBF _ E8, 00000008
?_092:  nop                                             ; 1FC4 _ 90
        add     esp, 48                                 ; 1FC5 _ 83. C4, 30
        pop     ebx                                     ; 1FC8 _ 5B
        pop     esi                                     ; 1FC9 _ 5E
        pop     ebp                                     ; 1FCA _ 5D
        ret                                             ; 1FCB _ C3
; _sheet_slide End of function

_sheet_refreshsub:; Function begin
        push    ebp                                     ; 1FCC _ 55
        mov     ebp, esp                                ; 1FCD _ 89. E5
        sub     esp, 48                                 ; 1FCF _ 83. EC, 30
        mov     eax, dword [ebp+8H]                     ; 1FD2 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1FD5 _ 8B. 00
        mov     dword [ebp-10H], eax                    ; 1FD7 _ 89. 45, F0
        mov     eax, dword [ebp+8H]                     ; 1FDA _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 1FDD _ 8B. 40, 04
        mov     dword [ebp-14H], eax                    ; 1FE0 _ 89. 45, EC
        cmp     dword [ebp+0CH], 0                      ; 1FE3 _ 83. 7D, 0C, 00
        jns     ?_093                                   ; 1FE7 _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 1FE9 _ C7. 45, 0C, 00000000
?_093:  cmp     dword [ebp+10H], 8                      ; 1FF0 _ 83. 7D, 10, 08
        jg      ?_094                                   ; 1FF4 _ 7F, 07
        mov     dword [ebp+10H], 0                      ; 1FF6 _ C7. 45, 10, 00000000
?_094:  mov     eax, dword [ebp+8H]                     ; 1FFD _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2000 _ 8B. 40, 08
        cmp     dword [ebp+14H], eax                    ; 2003 _ 39. 45, 14
        jle     ?_095                                   ; 2006 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 2008 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 200B _ 8B. 40, 08
        mov     dword [ebp+14H], eax                    ; 200E _ 89. 45, 14
?_095:  mov     eax, dword [ebp+8H]                     ; 2011 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2014 _ 8B. 40, 0C
        cmp     dword [ebp+18H], eax                    ; 2017 _ 39. 45, 18
        jle     ?_096                                   ; 201A _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 201C _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 201F _ 8B. 40, 0C
        mov     dword [ebp+18H], eax                    ; 2022 _ 89. 45, 18
?_096:  mov     eax, dword [ebp+1CH]                    ; 2025 _ 8B. 45, 1C
        mov     dword [ebp-4H], eax                     ; 2028 _ 89. 45, FC
        jmp     ?_103                                   ; 202B _ E9, 0000010F

?_097:  mov     eax, dword [ebp+8H]                     ; 2030 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 2033 _ 8B. 55, FC
        add     edx, 4                                  ; 2036 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2039 _ 8B. 44 90, 04
        mov     dword [ebp-18H], eax                    ; 203D _ 89. 45, E8
        mov     eax, dword [ebp-18H]                    ; 2040 _ 8B. 45, E8
        mov     eax, dword [eax]                        ; 2043 _ 8B. 00
        mov     dword [ebp-1CH], eax                    ; 2045 _ 89. 45, E4
        mov     eax, dword [ebp+8H]                     ; 2048 _ 8B. 45, 08
        add     eax, 1044                               ; 204B _ 05, 00000414
        mov     edx, dword [ebp-18H]                    ; 2050 _ 8B. 55, E8
        sub     edx, eax                                ; 2053 _ 29. C2
        mov     eax, edx                                ; 2055 _ 89. D0
        sar     eax, 5                                  ; 2057 _ C1. F8, 05
        mov     byte [ebp-1DH], al                      ; 205A _ 88. 45, E3
        mov     dword [ebp-0CH], 0                      ; 205D _ C7. 45, F4, 00000000
        jmp     ?_102                                   ; 2064 _ E9, 000000C3

?_098:  mov     eax, dword [ebp-18H]                    ; 2069 _ 8B. 45, E8
        mov     edx, dword [eax+10H]                    ; 206C _ 8B. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 206F _ 8B. 45, F4
        add     eax, edx                                ; 2072 _ 01. D0
        mov     dword [ebp-24H], eax                    ; 2074 _ 89. 45, DC
        mov     dword [ebp-8H], 0                       ; 2077 _ C7. 45, F8, 00000000
        jmp     ?_101                                   ; 207E _ E9, 00000096

?_099:  mov     eax, dword [ebp-18H]                    ; 2083 _ 8B. 45, E8
        mov     edx, dword [eax+0CH]                    ; 2086 _ 8B. 50, 0C
        mov     eax, dword [ebp-8H]                     ; 2089 _ 8B. 45, F8
        add     eax, edx                                ; 208C _ 01. D0
        mov     dword [ebp-28H], eax                    ; 208E _ 89. 45, D8
        mov     eax, dword [ebp+0CH]                    ; 2091 _ 8B. 45, 0C
        cmp     eax, dword [ebp-28H]                    ; 2094 _ 3B. 45, D8
        jg      ?_100                                   ; 2097 _ 7F, 7C
        mov     eax, dword [ebp-28H]                    ; 2099 _ 8B. 45, D8
        cmp     eax, dword [ebp+14H]                    ; 209C _ 3B. 45, 14
        jge     ?_100                                   ; 209F _ 7D, 74
        mov     eax, dword [ebp+10H]                    ; 20A1 _ 8B. 45, 10
        cmp     eax, dword [ebp-24H]                    ; 20A4 _ 3B. 45, DC
        jg      ?_100                                   ; 20A7 _ 7F, 6C
        mov     eax, dword [ebp-24H]                    ; 20A9 _ 8B. 45, DC
        cmp     eax, dword [ebp+18H]                    ; 20AC _ 3B. 45, 18
        jge     ?_100                                   ; 20AF _ 7D, 64
        mov     eax, dword [ebp-18H]                    ; 20B1 _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 20B4 _ 8B. 40, 04
        imul    eax, dword [ebp-0CH]                    ; 20B7 _ 0F AF. 45, F4
        mov     edx, dword [ebp-8H]                     ; 20BB _ 8B. 55, F8
        add     eax, edx                                ; 20BE _ 01. D0
        mov     edx, eax                                ; 20C0 _ 89. C2
        mov     eax, dword [ebp-1CH]                    ; 20C2 _ 8B. 45, E4
        add     eax, edx                                ; 20C5 _ 01. D0
        movzx   eax, byte [eax]                         ; 20C7 _ 0F B6. 00
        mov     byte [ebp-29H], al                      ; 20CA _ 88. 45, D7
        mov     eax, dword [ebp+8H]                     ; 20CD _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 20D0 _ 8B. 40, 08
        imul    eax, dword [ebp-24H]                    ; 20D3 _ 0F AF. 45, DC
        mov     edx, dword [ebp-28H]                    ; 20D7 _ 8B. 55, D8
        add     eax, edx                                ; 20DA _ 01. D0
        mov     edx, eax                                ; 20DC _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 20DE _ 8B. 45, EC
        add     eax, edx                                ; 20E1 _ 01. D0
        movzx   eax, byte [eax]                         ; 20E3 _ 0F B6. 00
        cmp     byte [ebp-1DH], al                      ; 20E6 _ 38. 45, E3
        jnz     ?_100                                   ; 20E9 _ 75, 2A
        movzx   eax, byte [ebp-29H]                     ; 20EB _ 0F B6. 45, D7
        mov     edx, dword [ebp-18H]                    ; 20EF _ 8B. 55, E8
        mov     edx, dword [edx+14H]                    ; 20F2 _ 8B. 52, 14
        cmp     eax, edx                                ; 20F5 _ 39. D0
        jz      ?_100                                   ; 20F7 _ 74, 1C
        mov     eax, dword [ebp+8H]                     ; 20F9 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 20FC _ 8B. 40, 08
        imul    eax, dword [ebp-24H]                    ; 20FF _ 0F AF. 45, DC
        mov     edx, dword [ebp-28H]                    ; 2103 _ 8B. 55, D8
        add     eax, edx                                ; 2106 _ 01. D0
        mov     edx, eax                                ; 2108 _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 210A _ 8B. 45, F0
        add     edx, eax                                ; 210D _ 01. C2
        movzx   eax, byte [ebp-29H]                     ; 210F _ 0F B6. 45, D7
        mov     byte [edx], al                          ; 2113 _ 88. 02
?_100:  add     dword [ebp-8H], 1                       ; 2115 _ 83. 45, F8, 01
?_101:  mov     eax, dword [ebp-18H]                    ; 2119 _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 211C _ 8B. 40, 04
        cmp     dword [ebp-8H], eax                     ; 211F _ 39. 45, F8
        jl      ?_099                                   ; 2122 _ 0F 8C, FFFFFF5B
        add     dword [ebp-0CH], 1                      ; 2128 _ 83. 45, F4, 01
?_102:  mov     eax, dword [ebp-18H]                    ; 212C _ 8B. 45, E8
        mov     eax, dword [eax+8H]                     ; 212F _ 8B. 40, 08
        cmp     dword [ebp-0CH], eax                    ; 2132 _ 39. 45, F4
        jl      ?_098                                   ; 2135 _ 0F 8C, FFFFFF2E
        add     dword [ebp-4H], 1                       ; 213B _ 83. 45, FC, 01
?_103:  mov     eax, dword [ebp-4H]                     ; 213F _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 2142 _ 3B. 45, 20
        jle     ?_097                                   ; 2145 _ 0F 8E, FFFFFEE5
        nop                                             ; 214B _ 90
        leave                                           ; 214C _ C9
        ret                                             ; 214D _ C3
; _sheet_refreshsub End of function

_sheet_refreshmap:; Function begin
        push    ebp                                     ; 214E _ 55
        mov     ebp, esp                                ; 214F _ 89. E5
        sub     esp, 64                                 ; 2151 _ 83. EC, 40
        mov     eax, dword [ebp+8H]                     ; 2154 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 2157 _ 8B. 40, 04
        mov     dword [ebp-20H], eax                    ; 215A _ 89. 45, E0
        cmp     dword [ebp+0CH], 0                      ; 215D _ 83. 7D, 0C, 00
        jns     ?_104                                   ; 2161 _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 2163 _ C7. 45, 0C, 00000000
?_104:  cmp     dword [ebp+10H], 0                      ; 216A _ 83. 7D, 10, 00
        jns     ?_105                                   ; 216E _ 79, 07
        mov     dword [ebp+10H], 0                      ; 2170 _ C7. 45, 10, 00000000
?_105:  mov     eax, dword [ebp+8H]                     ; 2177 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 217A _ 8B. 40, 08
        cmp     dword [ebp+14H], eax                    ; 217D _ 39. 45, 14
        jle     ?_106                                   ; 2180 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 2182 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2185 _ 8B. 40, 08
        mov     dword [ebp+14H], eax                    ; 2188 _ 89. 45, 14
?_106:  mov     eax, dword [ebp+8H]                     ; 218B _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 218E _ 8B. 40, 0C
        cmp     dword [ebp+18H], eax                    ; 2191 _ 39. 45, 18
        jle     ?_107                                   ; 2194 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 2196 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2199 _ 8B. 40, 0C
        mov     dword [ebp+18H], eax                    ; 219C _ 89. 45, 18
?_107:  mov     eax, dword [ebp+1CH]                    ; 219F _ 8B. 45, 1C
        mov     dword [ebp-4H], eax                     ; 21A2 _ 89. 45, FC
        jmp     ?_118                                   ; 21A5 _ E9, 00000139

?_108:  mov     eax, dword [ebp+8H]                     ; 21AA _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 21AD _ 8B. 55, FC
        add     edx, 4                                  ; 21B0 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 21B3 _ 8B. 44 90, 04
        mov     dword [ebp-24H], eax                    ; 21B7 _ 89. 45, DC
        mov     eax, dword [ebp+8H]                     ; 21BA _ 8B. 45, 08
        add     eax, 1044                               ; 21BD _ 05, 00000414
        mov     edx, dword [ebp-24H]                    ; 21C2 _ 8B. 55, DC
        sub     edx, eax                                ; 21C5 _ 29. C2
        mov     eax, edx                                ; 21C7 _ 89. D0
        sar     eax, 5                                  ; 21C9 _ C1. F8, 05
        mov     byte [ebp-25H], al                      ; 21CC _ 88. 45, DB
        mov     eax, dword [ebp-24H]                    ; 21CF _ 8B. 45, DC
        mov     eax, dword [eax]                        ; 21D2 _ 8B. 00
        mov     dword [ebp-2CH], eax                    ; 21D4 _ 89. 45, D4
        mov     eax, dword [ebp-24H]                    ; 21D7 _ 8B. 45, DC
        mov     eax, dword [eax+0CH]                    ; 21DA _ 8B. 40, 0C
        mov     edx, dword [ebp+0CH]                    ; 21DD _ 8B. 55, 0C
        sub     edx, eax                                ; 21E0 _ 29. C2
        mov     eax, edx                                ; 21E2 _ 89. D0
        mov     dword [ebp-10H], eax                    ; 21E4 _ 89. 45, F0
        mov     eax, dword [ebp-24H]                    ; 21E7 _ 8B. 45, DC
        mov     eax, dword [eax+10H]                    ; 21EA _ 8B. 40, 10
        mov     edx, dword [ebp+10H]                    ; 21ED _ 8B. 55, 10
        sub     edx, eax                                ; 21F0 _ 29. C2
        mov     eax, edx                                ; 21F2 _ 89. D0
        mov     dword [ebp-14H], eax                    ; 21F4 _ 89. 45, EC
        mov     eax, dword [ebp-24H]                    ; 21F7 _ 8B. 45, DC
        mov     eax, dword [eax+0CH]                    ; 21FA _ 8B. 40, 0C
        mov     edx, dword [ebp+14H]                    ; 21FD _ 8B. 55, 14
        sub     edx, eax                                ; 2200 _ 29. C2
        mov     eax, edx                                ; 2202 _ 89. D0
        mov     dword [ebp-18H], eax                    ; 2204 _ 89. 45, E8
        mov     eax, dword [ebp-24H]                    ; 2207 _ 8B. 45, DC
        mov     eax, dword [eax+10H]                    ; 220A _ 8B. 40, 10
        mov     edx, dword [ebp+18H]                    ; 220D _ 8B. 55, 18
        sub     edx, eax                                ; 2210 _ 29. C2
        mov     eax, edx                                ; 2212 _ 89. D0
        mov     dword [ebp-1CH], eax                    ; 2214 _ 89. 45, E4
        cmp     dword [ebp-10H], 0                      ; 2217 _ 83. 7D, F0, 00
        jns     ?_109                                   ; 221B _ 79, 07
        mov     dword [ebp-10H], 0                      ; 221D _ C7. 45, F0, 00000000
?_109:  cmp     dword [ebp-14H], 0                      ; 2224 _ 83. 7D, EC, 00
        jns     ?_110                                   ; 2228 _ 79, 07
        mov     dword [ebp-14H], 0                      ; 222A _ C7. 45, EC, 00000000
?_110:  mov     eax, dword [ebp-24H]                    ; 2231 _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 2234 _ 8B. 40, 04
        cmp     dword [ebp-18H], eax                    ; 2237 _ 39. 45, E8
        jle     ?_111                                   ; 223A _ 7E, 09
        mov     eax, dword [ebp-24H]                    ; 223C _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 223F _ 8B. 40, 04
        mov     dword [ebp-18H], eax                    ; 2242 _ 89. 45, E8
?_111:  mov     eax, dword [ebp-24H]                    ; 2245 _ 8B. 45, DC
        mov     eax, dword [eax+8H]                     ; 2248 _ 8B. 40, 08
        cmp     dword [ebp-1CH], eax                    ; 224B _ 39. 45, E4
        jle     ?_112                                   ; 224E _ 7E, 09
        mov     eax, dword [ebp-24H]                    ; 2250 _ 8B. 45, DC
        mov     eax, dword [eax+8H]                     ; 2253 _ 8B. 40, 08
        mov     dword [ebp-1CH], eax                    ; 2256 _ 89. 45, E4
?_112:  mov     eax, dword [ebp-14H]                    ; 2259 _ 8B. 45, EC
        mov     dword [ebp-0CH], eax                    ; 225C _ 89. 45, F4
        jmp     ?_117                                   ; 225F _ EB, 76

?_113:  mov     eax, dword [ebp-24H]                    ; 2261 _ 8B. 45, DC
        mov     edx, dword [eax+10H]                    ; 2264 _ 8B. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 2267 _ 8B. 45, F4
        add     eax, edx                                ; 226A _ 01. D0
        mov     dword [ebp-30H], eax                    ; 226C _ 89. 45, D0
        mov     eax, dword [ebp-10H]                    ; 226F _ 8B. 45, F0
        mov     dword [ebp-8H], eax                     ; 2272 _ 89. 45, F8
        jmp     ?_116                                   ; 2275 _ EB, 54

?_114:  mov     eax, dword [ebp-24H]                    ; 2277 _ 8B. 45, DC
        mov     edx, dword [eax+0CH]                    ; 227A _ 8B. 50, 0C
        mov     eax, dword [ebp-8H]                     ; 227D _ 8B. 45, F8
        add     eax, edx                                ; 2280 _ 01. D0
        mov     dword [ebp-34H], eax                    ; 2282 _ 89. 45, CC
        mov     eax, dword [ebp-24H]                    ; 2285 _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 2288 _ 8B. 40, 04
        imul    eax, dword [ebp-0CH]                    ; 228B _ 0F AF. 45, F4
        mov     edx, dword [ebp-8H]                     ; 228F _ 8B. 55, F8
        add     eax, edx                                ; 2292 _ 01. D0
        mov     edx, eax                                ; 2294 _ 89. C2
        mov     eax, dword [ebp-2CH]                    ; 2296 _ 8B. 45, D4
        add     eax, edx                                ; 2299 _ 01. D0
        movzx   eax, byte [eax]                         ; 229B _ 0F B6. 00
        movzx   eax, al                                 ; 229E _ 0F B6. C0
        mov     edx, dword [ebp-24H]                    ; 22A1 _ 8B. 55, DC
        mov     edx, dword [edx+14H]                    ; 22A4 _ 8B. 52, 14
        cmp     eax, edx                                ; 22A7 _ 39. D0
        jz      ?_115                                   ; 22A9 _ 74, 1C
        mov     eax, dword [ebp+8H]                     ; 22AB _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 22AE _ 8B. 40, 08
        imul    eax, dword [ebp-30H]                    ; 22B1 _ 0F AF. 45, D0
        mov     edx, dword [ebp-34H]                    ; 22B5 _ 8B. 55, CC
        add     eax, edx                                ; 22B8 _ 01. D0
        mov     edx, eax                                ; 22BA _ 89. C2
        mov     eax, dword [ebp-20H]                    ; 22BC _ 8B. 45, E0
        add     edx, eax                                ; 22BF _ 01. C2
        movzx   eax, byte [ebp-25H]                     ; 22C1 _ 0F B6. 45, DB
        mov     byte [edx], al                          ; 22C5 _ 88. 02
?_115:  add     dword [ebp-8H], 1                       ; 22C7 _ 83. 45, F8, 01
?_116:  mov     eax, dword [ebp-8H]                     ; 22CB _ 8B. 45, F8
        cmp     eax, dword [ebp-18H]                    ; 22CE _ 3B. 45, E8
        jl      ?_114                                   ; 22D1 _ 7C, A4
        add     dword [ebp-0CH], 1                      ; 22D3 _ 83. 45, F4, 01
?_117:  mov     eax, dword [ebp-0CH]                    ; 22D7 _ 8B. 45, F4
        cmp     eax, dword [ebp-1CH]                    ; 22DA _ 3B. 45, E4
        jl      ?_113                                   ; 22DD _ 7C, 82
        add     dword [ebp-4H], 1                       ; 22DF _ 83. 45, FC, 01
?_118:  mov     eax, dword [ebp+8H]                     ; 22E3 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 22E6 _ 8B. 40, 10
        cmp     dword [ebp-4H], eax                     ; 22E9 _ 39. 45, FC
        jle     ?_108                                   ; 22EC _ 0F 8E, FFFFFEB8
        nop                                             ; 22F2 _ 90
        leave                                           ; 22F3 _ C9
        ret                                             ; 22F4 _ C3
; _sheet_refreshmap End of function

        nop                                             ; 22F5 _ 90
        nop                                             ; 22F6 _ 90
        nop                                             ; 22F7 _ 90

.text:  ; Local function

_memman_init:
        push    ebp                                     ; 22F8 _ 55
        mov     ebp, esp                                ; 22F9 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 22FB _ 8B. 45, 08
        mov     dword [eax], 0                          ; 22FE _ C7. 00, 00000000
        mov     eax, dword [ebp+8H]                     ; 2304 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 2307 _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 230E _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 2311 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 2318 _ 8B. 45, 08
        mov     dword [eax+0CH], 0                      ; 231B _ C7. 40, 0C, 00000000
        nop                                             ; 2322 _ 90
        pop     ebp                                     ; 2323 _ 5D
        ret                                             ; 2324 _ C3

_memman_total:; Function begin
        push    ebp                                     ; 2325 _ 55
        mov     ebp, esp                                ; 2326 _ 89. E5
        sub     esp, 16                                 ; 2328 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 232B _ C7. 45, F8, 00000000
        mov     dword [ebp-4H], 0                       ; 2332 _ C7. 45, FC, 00000000
        jmp     ?_120                                   ; 2339 _ EB, 14

?_119:  mov     eax, dword [ebp+8H]                     ; 233B _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 233E _ 8B. 55, FC
        add     edx, 2                                  ; 2341 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2344 _ 8B. 44 D0, 04
        add     dword [ebp-8H], eax                     ; 2348 _ 01. 45, F8
        add     dword [ebp-4H], 1                       ; 234B _ 83. 45, FC, 01
?_120:  mov     eax, dword [ebp+8H]                     ; 234F _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2352 _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 2354 _ 39. 45, FC
        jc      ?_119                                   ; 2357 _ 72, E2
        mov     eax, dword [ebp-8H]                     ; 2359 _ 8B. 45, F8
        leave                                           ; 235C _ C9
        ret                                             ; 235D _ C3
; _memman_total End of function

_memman_alloc:; Function begin
        push    ebp                                     ; 235E _ 55
        mov     ebp, esp                                ; 235F _ 89. E5
        sub     esp, 16                                 ; 2361 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 2364 _ C7. 45, FC, 00000000
        jmp     ?_124                                   ; 236B _ E9, 00000083

?_121:  mov     eax, dword [ebp+8H]                     ; 2370 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 2373 _ 8B. 55, FC
        add     edx, 2                                  ; 2376 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2379 _ 8B. 44 D0, 04
        cmp     dword [ebp+0CH], eax                    ; 237D _ 39. 45, 0C
        ja      ?_123                                   ; 2380 _ 77, 6D
        mov     eax, dword [ebp+8H]                     ; 2382 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 2385 _ 8B. 55, FC
        add     edx, 2                                  ; 2388 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 238B _ 8B. 04 D0
        mov     dword [ebp-8H], eax                     ; 238E _ 89. 45, F8
        mov     eax, dword [ebp+8H]                     ; 2391 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 2394 _ 8B. 55, FC
        add     edx, 2                                  ; 2397 _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 239A _ 8B. 14 D0
        mov     eax, dword [ebp+0CH]                    ; 239D _ 8B. 45, 0C
        lea     ecx, [edx+eax]                          ; 23A0 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 23A3 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 23A6 _ 8B. 55, FC
        add     edx, 2                                  ; 23A9 _ 83. C2, 02
        mov     dword [eax+edx*8], ecx                  ; 23AC _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 23AF _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 23B2 _ 8B. 55, FC
        add     edx, 2                                  ; 23B5 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 23B8 _ 8B. 44 D0, 04
        sub     eax, dword [ebp+0CH]                    ; 23BC _ 2B. 45, 0C
        mov     edx, dword [ebp+8H]                     ; 23BF _ 8B. 55, 08
        mov     ecx, dword [ebp-4H]                     ; 23C2 _ 8B. 4D, FC
        add     ecx, 2                                  ; 23C5 _ 83. C1, 02
        mov     dword [edx+ecx*8+4H], eax               ; 23C8 _ 89. 44 CA, 04
        mov     eax, dword [ebp+8H]                     ; 23CC _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 23CF _ 8B. 55, FC
        add     edx, 2                                  ; 23D2 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 23D5 _ 8B. 44 D0, 04
        test    eax, eax                                ; 23D9 _ 85. C0
        jnz     ?_122                                   ; 23DB _ 75, 0D
        mov     eax, dword [ebp+8H]                     ; 23DD _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 23E0 _ 8B. 00
        lea     edx, [eax-1H]                           ; 23E2 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 23E5 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 23E8 _ 89. 10
?_122:  mov     eax, dword [ebp-8H]                     ; 23EA _ 8B. 45, F8
        jmp     ?_125                                   ; 23ED _ EB, 17

?_123:  add     dword [ebp-4H], 1                       ; 23EF _ 83. 45, FC, 01
?_124:  mov     eax, dword [ebp+8H]                     ; 23F3 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 23F6 _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 23F8 _ 39. 45, FC
        jc      ?_121                                   ; 23FB _ 0F 82, FFFFFF6F
        mov     eax, 0                                  ; 2401 _ B8, 00000000
?_125:  leave                                           ; 2406 _ C9
        ret                                             ; 2407 _ C3
; _memman_alloc End of function

_memman_free:; Function begin
        push    ebp                                     ; 2408 _ 55
        mov     ebp, esp                                ; 2409 _ 89. E5
        push    ebx                                     ; 240B _ 53
        sub     esp, 16                                 ; 240C _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 240F _ C7. 45, F8, 00000000
        jmp     ?_127                                   ; 2416 _ EB, 15

?_126:  mov     eax, dword [ebp+8H]                     ; 2418 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 241B _ 8B. 55, F8
        add     edx, 2                                  ; 241E _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 2421 _ 8B. 04 D0
        cmp     dword [ebp+0CH], eax                    ; 2424 _ 39. 45, 0C
        jc      ?_128                                   ; 2427 _ 72, 10
        add     dword [ebp-8H], 1                       ; 2429 _ 83. 45, F8, 01
?_127:  mov     eax, dword [ebp+8H]                     ; 242D _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2430 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 2432 _ 39. 45, F8
        jl      ?_126                                   ; 2435 _ 7C, E1
        jmp     ?_129                                   ; 2437 _ EB, 01

?_128:  nop                                             ; 2439 _ 90
?_129:  cmp     dword [ebp-8H], 0                       ; 243A _ 83. 7D, F8, 00
        jle     ?_131                                   ; 243E _ 0F 8E, 000000B8
        mov     eax, dword [ebp-8H]                     ; 2444 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 2447 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 244A _ 8B. 45, 08
        add     edx, 2                                  ; 244D _ 83. C2, 02
        mov     ecx, dword [eax+edx*8]                  ; 2450 _ 8B. 0C D0
        mov     eax, dword [ebp-8H]                     ; 2453 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 2456 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2459 _ 8B. 45, 08
        add     edx, 2                                  ; 245C _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 245F _ 8B. 44 D0, 04
        add     eax, ecx                                ; 2463 _ 01. C8
        cmp     dword [ebp+0CH], eax                    ; 2465 _ 39. 45, 0C
        jne     ?_131                                   ; 2468 _ 0F 85, 0000008E
        mov     eax, dword [ebp-8H]                     ; 246E _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 2471 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2474 _ 8B. 45, 08
        add     edx, 2                                  ; 2477 _ 83. C2, 02
        mov     ecx, dword [eax+edx*8+4H]               ; 247A _ 8B. 4C D0, 04
        mov     eax, dword [ebp-8H]                     ; 247E _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 2481 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 2484 _ 8B. 45, 10
        add     ecx, eax                                ; 2487 _ 01. C1
        mov     eax, dword [ebp+8H]                     ; 2489 _ 8B. 45, 08
        add     edx, 2                                  ; 248C _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 248F _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 2493 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2496 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 2498 _ 39. 45, F8
        jge     ?_130                                   ; 249B _ 7D, 55
        mov     edx, dword [ebp+0CH]                    ; 249D _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 24A0 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 24A3 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 24A6 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 24A9 _ 8B. 55, F8
        add     edx, 2                                  ; 24AC _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 24AF _ 8B. 04 D0
        cmp     ecx, eax                                ; 24B2 _ 39. C1
        jnz     ?_130                                   ; 24B4 _ 75, 3C
        mov     eax, dword [ebp-8H]                     ; 24B6 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 24B9 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 24BC _ 8B. 45, 08
        add     edx, 2                                  ; 24BF _ 83. C2, 02
        mov     ecx, dword [eax+edx*8+4H]               ; 24C2 _ 8B. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 24C6 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 24C9 _ 8B. 55, F8
        add     edx, 2                                  ; 24CC _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 24CF _ 8B. 44 D0, 04
        mov     edx, dword [ebp-8H]                     ; 24D3 _ 8B. 55, F8
        sub     edx, 1                                  ; 24D6 _ 83. EA, 01
        add     ecx, eax                                ; 24D9 _ 01. C1
        mov     eax, dword [ebp+8H]                     ; 24DB _ 8B. 45, 08
        add     edx, 2                                  ; 24DE _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 24E1 _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 24E5 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 24E8 _ 8B. 00
        lea     edx, [eax-1H]                           ; 24EA _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 24ED _ 8B. 45, 08
        mov     dword [eax], edx                        ; 24F0 _ 89. 10
?_130:  mov     eax, 0                                  ; 24F2 _ B8, 00000000
        jmp     ?_137                                   ; 24F7 _ E9, 0000011C

?_131:  mov     eax, dword [ebp+8H]                     ; 24FC _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 24FF _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 2501 _ 39. 45, F8
        jge     ?_132                                   ; 2504 _ 7D, 52
        mov     edx, dword [ebp+0CH]                    ; 2506 _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 2509 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 250C _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 250F _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2512 _ 8B. 55, F8
        add     edx, 2                                  ; 2515 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 2518 _ 8B. 04 D0
        cmp     ecx, eax                                ; 251B _ 39. C1
        jnz     ?_132                                   ; 251D _ 75, 39
        mov     eax, dword [ebp+8H]                     ; 251F _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2522 _ 8B. 55, F8
        add     edx, 2                                  ; 2525 _ 83. C2, 02
        mov     ecx, dword [ebp+0CH]                    ; 2528 _ 8B. 4D, 0C
        mov     dword [eax+edx*8], ecx                  ; 252B _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 252E _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2531 _ 8B. 55, F8
        add     edx, 2                                  ; 2534 _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 2537 _ 8B. 54 D0, 04
        mov     eax, dword [ebp+10H]                    ; 253B _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 253E _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 2541 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2544 _ 8B. 55, F8
        add     edx, 2                                  ; 2547 _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 254A _ 89. 4C D0, 04
        mov     eax, 0                                  ; 254E _ B8, 00000000
        jmp     ?_137                                   ; 2553 _ E9, 000000C0

?_132:  mov     eax, dword [ebp+8H]                     ; 2558 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 255B _ 8B. 00
        cmp     eax, 4095                               ; 255D _ 3D, 00000FFF
        jg      ?_136                                   ; 2562 _ 0F 8F, 00000087
        mov     eax, dword [ebp+8H]                     ; 2568 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 256B _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 256D _ 89. 45, F4
        jmp     ?_134                                   ; 2570 _ EB, 28

?_133:  mov     eax, dword [ebp-0CH]                    ; 2572 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 2575 _ 8D. 50, FF
        mov     ecx, dword [ebp+8H]                     ; 2578 _ 8B. 4D, 08
        mov     eax, dword [ebp-0CH]                    ; 257B _ 8B. 45, F4
        lea     ebx, [eax+2H]                           ; 257E _ 8D. 58, 02
        mov     eax, dword [ebp+8H]                     ; 2581 _ 8B. 45, 08
        add     edx, 2                                  ; 2584 _ 83. C2, 02
        lea     edx, [eax+edx*8]                        ; 2587 _ 8D. 14 D0
        mov     eax, dword [edx]                        ; 258A _ 8B. 02
        mov     edx, dword [edx+4H]                     ; 258C _ 8B. 52, 04
        mov     dword [ecx+ebx*8], eax                  ; 258F _ 89. 04 D9
        mov     dword [ecx+ebx*8+4H], edx               ; 2592 _ 89. 54 D9, 04
        sub     dword [ebp-0CH], 1                      ; 2596 _ 83. 6D, F4, 01
?_134:  mov     eax, dword [ebp-0CH]                    ; 259A _ 8B. 45, F4
        cmp     eax, dword [ebp-8H]                     ; 259D _ 3B. 45, F8
        jg      ?_133                                   ; 25A0 _ 7F, D0
        mov     eax, dword [ebp+8H]                     ; 25A2 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 25A5 _ 8B. 00
        lea     edx, [eax+1H]                           ; 25A7 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 25AA _ 8B. 45, 08
        mov     dword [eax], edx                        ; 25AD _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 25AF _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 25B2 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 25B5 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 25B8 _ 8B. 00
        cmp     edx, eax                                ; 25BA _ 39. C2
        jge     ?_135                                   ; 25BC _ 7D, 0B
        mov     eax, dword [ebp+8H]                     ; 25BE _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 25C1 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 25C3 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 25C6 _ 89. 50, 04
?_135:  mov     eax, dword [ebp+8H]                     ; 25C9 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 25CC _ 8B. 55, F8
        add     edx, 2                                  ; 25CF _ 83. C2, 02
        mov     ecx, dword [ebp+0CH]                    ; 25D2 _ 8B. 4D, 0C
        mov     dword [eax+edx*8], ecx                  ; 25D5 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 25D8 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 25DB _ 8B. 55, F8
        add     edx, 2                                  ; 25DE _ 83. C2, 02
        mov     ecx, dword [ebp+10H]                    ; 25E1 _ 8B. 4D, 10
        mov     dword [eax+edx*8+4H], ecx               ; 25E4 _ 89. 4C D0, 04
        mov     eax, 0                                  ; 25E8 _ B8, 00000000
        jmp     ?_137                                   ; 25ED _ EB, 29

?_136:  mov     eax, dword [ebp+8H]                     ; 25EF _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 25F2 _ 8B. 40, 0C
        lea     edx, [eax+1H]                           ; 25F5 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 25F8 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 25FB _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 25FE _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2601 _ 8B. 40, 08
        mov     edx, eax                                ; 2604 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 2606 _ 8B. 45, 10
        add     eax, edx                                ; 2609 _ 01. D0
        mov     edx, eax                                ; 260B _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 260D _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 2610 _ 89. 50, 08
        mov     eax, 4294967295                         ; 2613 _ B8, FFFFFFFF
?_137:  add     esp, 16                                 ; 2618 _ 83. C4, 10
        pop     ebx                                     ; 261B _ 5B
        pop     ebp                                     ; 261C _ 5D
        ret                                             ; 261D _ C3
; _memman_free End of function

_memman_alloc_4k:; Function begin
        push    ebp                                     ; 261E _ 55
        mov     ebp, esp                                ; 261F _ 89. E5
        sub     esp, 24                                 ; 2621 _ 83. EC, 18
        mov     eax, dword [ebp+0CH]                    ; 2624 _ 8B. 45, 0C
        add     eax, 4095                               ; 2627 _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 262C _ 25, FFFFF000
        mov     dword [ebp+0CH], eax                    ; 2631 _ 89. 45, 0C
        mov     eax, dword [ebp+0CH]                    ; 2634 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2637 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 263B _ 8B. 45, 08
        mov     dword [esp], eax                        ; 263E _ 89. 04 24
        call    _memman_alloc                           ; 2641 _ E8, FFFFFD18
        mov     dword [ebp-4H], eax                     ; 2646 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 2649 _ 8B. 45, FC
        leave                                           ; 264C _ C9
        ret                                             ; 264D _ C3
; _memman_alloc_4k End of function

_memman_free_4k:; Function begin
        push    ebp                                     ; 264E _ 55
        mov     ebp, esp                                ; 264F _ 89. E5
        sub     esp, 28                                 ; 2651 _ 83. EC, 1C
        mov     eax, dword [ebp+10H]                    ; 2654 _ 8B. 45, 10
        add     eax, 4095                               ; 2657 _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 265C _ 25, FFFFF000
        mov     dword [ebp+10H], eax                    ; 2661 _ 89. 45, 10
        mov     eax, dword [ebp+10H]                    ; 2664 _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 2667 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 266B _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 266E _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2672 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2675 _ 89. 04 24
        call    _memman_free                            ; 2678 _ E8, FFFFFD8B
        mov     dword [ebp-4H], eax                     ; 267D _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 2680 _ 8B. 45, FC
        leave                                           ; 2683 _ C9
        ret                                             ; 2684 _ C3
; _memman_free_4k End of function

        nop                                             ; 2685 _ 90
        nop                                             ; 2686 _ 90
        nop                                             ; 2687 _ 90

.text:  ; Local function

_fifo8_init:
        push    ebp                                     ; 2688 _ 55
        mov     ebp, esp                                ; 2689 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 268B _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 268E _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 2691 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 2694 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 2697 _ 8B. 55, 10
        mov     dword [eax], edx                        ; 269A _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 269C _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 269F _ 8B. 55, 0C
        mov     dword [eax+10H], edx                    ; 26A2 _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 26A5 _ 8B. 45, 08
        mov     dword [eax+14H], 0                      ; 26A8 _ C7. 40, 14, 00000000
        mov     eax, dword [ebp+8H]                     ; 26AF _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 26B2 _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 26B9 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 26BC _ C7. 40, 08, 00000000
        nop                                             ; 26C3 _ 90
        pop     ebp                                     ; 26C4 _ 5D
        ret                                             ; 26C5 _ C3

_fifo8_put:; Function begin
        push    ebp                                     ; 26C6 _ 55
        mov     ebp, esp                                ; 26C7 _ 89. E5
        sub     esp, 4                                  ; 26C9 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 26CC _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 26CF _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 26D2 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 26D5 _ 8B. 40, 10
        test    eax, eax                                ; 26D8 _ 85. C0
        jnz     ?_138                                   ; 26DA _ 75, 18
        mov     eax, dword [ebp+8H]                     ; 26DC _ 8B. 45, 08
        mov     eax, dword [eax+14H]                    ; 26DF _ 8B. 40, 14
        or      eax, 01H                                ; 26E2 _ 83. C8, 01
        mov     edx, eax                                ; 26E5 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 26E7 _ 8B. 45, 08
        mov     dword [eax+14H], edx                    ; 26EA _ 89. 50, 14
        mov     eax, 4294967295                         ; 26ED _ B8, FFFFFFFF
        jmp     ?_140                                   ; 26F2 _ EB, 50

?_138:  mov     eax, dword [ebp+8H]                     ; 26F4 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 26F7 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 26F9 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 26FC _ 8B. 40, 04
        add     edx, eax                                ; 26FF _ 01. C2
        movzx   eax, byte [ebp-4H]                      ; 2701 _ 0F B6. 45, FC
        mov     byte [edx], al                          ; 2705 _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 2707 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 270A _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 270D _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2710 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 2713 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2716 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 2719 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 271C _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 271F _ 8B. 40, 0C
        cmp     edx, eax                                ; 2722 _ 39. C2
        jnz     ?_139                                   ; 2724 _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 2726 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 2729 _ C7. 40, 04, 00000000
?_139:  mov     eax, dword [ebp+8H]                     ; 2730 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2733 _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 2736 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2739 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 273C _ 89. 50, 10
        mov     eax, 0                                  ; 273F _ B8, 00000000
?_140:  leave                                           ; 2744 _ C9
        ret                                             ; 2745 _ C3
; _fifo8_put End of function

_fifo8_get:; Function begin
        push    ebp                                     ; 2746 _ 55
        mov     ebp, esp                                ; 2747 _ 89. E5
        sub     esp, 16                                 ; 2749 _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 274C _ 8B. 45, 08
        mov     edx, dword [eax+10H]                    ; 274F _ 8B. 50, 10
        mov     eax, dword [ebp+8H]                     ; 2752 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2755 _ 8B. 40, 0C
        cmp     edx, eax                                ; 2758 _ 39. C2
        jnz     ?_141                                   ; 275A _ 75, 07
        mov     eax, 4294967295                         ; 275C _ B8, FFFFFFFF
        jmp     ?_143                                   ; 2761 _ EB, 51

?_141:  mov     eax, dword [ebp+8H]                     ; 2763 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 2766 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 2768 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 276B _ 8B. 40, 08
        add     eax, edx                                ; 276E _ 01. D0
        movzx   eax, byte [eax]                         ; 2770 _ 0F B6. 00
        movzx   eax, al                                 ; 2773 _ 0F B6. C0
        mov     dword [ebp-4H], eax                     ; 2776 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 2779 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 277C _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 277F _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2782 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 2785 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 2788 _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 278B _ 8B. 50, 08
        mov     eax, dword [ebp+8H]                     ; 278E _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2791 _ 8B. 40, 0C
        cmp     edx, eax                                ; 2794 _ 39. C2
        jnz     ?_142                                   ; 2796 _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 2798 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 279B _ C7. 40, 08, 00000000
?_142:  mov     eax, dword [ebp+8H]                     ; 27A2 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 27A5 _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 27A8 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 27AB _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 27AE _ 89. 50, 10
        mov     eax, dword [ebp-4H]                     ; 27B1 _ 8B. 45, FC
?_143:  leave                                           ; 27B4 _ C9
        ret                                             ; 27B5 _ C3
; _fifo8_get End of function

_fifo8_status:; Function begin
        push    ebp                                     ; 27B6 _ 55
        mov     ebp, esp                                ; 27B7 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 27B9 _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 27BC _ 8B. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 27BF _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 27C2 _ 8B. 40, 10
        sub     edx, eax                                ; 27C5 _ 29. C2
        mov     eax, edx                                ; 27C7 _ 89. D0
        pop     ebp                                     ; 27C9 _ 5D
        ret                                             ; 27CA _ C3
; _fifo8_status End of function

        nop                                             ; 27CB _ 90



_memman:                                                ; dword
        dd 00100000H                                    ; 0000 _ 1048576 

_keyval:                                                ; byte
        db 30H, 58H                                     ; 0004 _ 0X

?_144:  db 00H                                          ; 0006 _ .

?_145:  db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0007 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 000F _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0017 _ ........
        db 00H                                          ; 001F _ .

_table_rgb.2200:                                        ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0020 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0028 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0030 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0038 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 0040 _ ........
        db 00H, 84H, 00H, 84H, 84H, 84H, 84H, 84H       ; 0048 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0050 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0058 _ ........

_cursor.2247:                                           ; byte
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

_closebtn.2359:                                         ; byte
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


?_146:                                                  
        db 63H, 6FH, 75H, 6EH, 74H, 65H, 72H, 00H       ; 0000 _ counter.

?_147:                                                  ; byte
        db 69H, 6DH, 70H, 72H, 6FH, 76H, 65H, 20H       ; 0008 _ improve 
        db 73H, 74H, 72H, 69H, 6EH, 67H, 20H, 73H       ; 0010 _ string s
        db 68H, 6FH, 77H, 69H, 6EH, 67H, 00H            ; 0018 _ howing.

?_148:                                                  ; byte
        db 70H, 61H, 67H, 65H, 20H, 69H, 73H, 3AH       ; 001F _ page is:
        db 20H, 00H                                     ; 0027 _  .

?_149:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0029 _ BaseAddr
        db 4CH, 3AH, 20H, 00H                           ; 0031 _ L: .

?_150:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0035 _ BaseAddr
        db 48H, 3AH, 20H, 00H                           ; 003D _ H: .

?_151:                                                  ; byte
        db 6CH, 65H, 6EH, 67H, 74H, 68H, 4CH, 6FH       ; 0041 _ lengthLo
        db 77H, 3AH, 20H, 00H                           ; 0049 _ w: .

?_152:                                                  ; byte
        db 6CH, 65H, 6EH, 67H, 74H, 68H, 48H, 69H       ; 004D _ lengthHi
        db 67H, 68H, 3AH, 20H, 00H                      ; 0055 _ gh: .

?_153:                                                  ; byte
        db 74H, 79H, 70H, 65H, 3AH, 20H, 00H            ; 005A _ type: .

?_154:                                                  ; byte
        db 57H, 65H, 6CH, 63H, 6FH, 6DH, 65H, 20H       ; 0061 _ Welcome 
        db 74H, 6FH, 00H                                ; 0069 _ to.

?_155:                                                  ; byte
        db 46H, 72H, 61H, 67H, 69H, 6CH, 65H, 20H       ; 006C _ Fragile 
        db 4FH, 53H, 00H, 00H                           ; 0074 _ OS..


_bootInfo:                                              
        resd    1                                       ; 0000

?_156:  resw    1                                       ; 0004

?_157:  resw    1                                       ; 0006

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

_str.2295:                                              ; byte
        resb    1                                       ; 0220

?_158:  resb    9                                       ; 0221

?_159:  resb    22                                      ; 022A


