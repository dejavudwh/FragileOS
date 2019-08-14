; Disassembly of file: ckernel.o
; Wed Aug 14 17:59:07 2019
; Mode: 32 bits
; Syntax: YASM/NASM
; Instruction set: Pentium Pro







_CMain:
        push    ebp                                     ; 0000 _ 55
        mov     ebp, esp                                ; 0001 _ 89. E5
        push    ebx                                     ; 0003 _ 53
        sub     esp, 132                                ; 0004 _ 81. EC, 00000084
        mov     dword [esp], _bootInfo                  ; 000A _ C7. 04 24, 00000018(d)
        call    _initBootInfo                           ; 0011 _ E8, 00003286
        mov     eax, dword [_bootInfo]                  ; 0016 _ A1, 00000018(d)
        mov     dword [ebp-18H], eax                    ; 001B _ 89. 45, E8
        movzx   eax, word [?_412]                       ; 001E _ 0F B7. 05, 0000001C(d)
        cwde                                            ; 0025 _ 98
        mov     dword [_xsize], eax                     ; 0026 _ A3, 0000013C(d)
        movzx   eax, word [?_413]                       ; 002B _ 0F B7. 05, 0000001E(d)
        cwde                                            ; 0032 _ 98
        mov     dword [_ysize], eax                     ; 0033 _ A3, 00000140(d)
        call    _init_pit                               ; 0038 _ E8, 00000000(rel)
        mov     dword [esp+0CH], 0                      ; 003D _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], _timerbuf               ; 0045 _ C7. 44 24, 08, 0000012C(d)
        mov     dword [esp+4H], 8                       ; 004D _ C7. 44 24, 04, 00000008
        mov     dword [esp], _timerinfo                 ; 0055 _ C7. 04 24, 00000110(d)
        call    _fifo8_init                             ; 005C _ E8, 00000000(rel)
        call    _timer_alloc                            ; 0061 _ E8, 00000000(rel)
        mov     dword [ebp-1CH], eax                    ; 0066 _ 89. 45, E4
        mov     dword [esp+8H], 10                      ; 0069 _ C7. 44 24, 08, 0000000A
        mov     dword [esp+4H], _timerinfo              ; 0071 _ C7. 44 24, 04, 00000110(d)
        mov     eax, dword [ebp-1CH]                    ; 0079 _ 8B. 45, E4
        mov     dword [esp], eax                        ; 007C _ 89. 04 24
        call    _timer_init                             ; 007F _ E8, 00000000(rel)
        mov     dword [esp+4H], 100                     ; 0084 _ C7. 44 24, 04, 00000064
        mov     eax, dword [ebp-1CH]                    ; 008C _ 8B. 45, E4
        mov     dword [esp], eax                        ; 008F _ 89. 04 24
        call    _timer_settime                          ; 0092 _ E8, 00000000(rel)
        call    _timer_alloc                            ; 0097 _ E8, 00000000(rel)
        mov     dword [ebp-20H], eax                    ; 009C _ 89. 45, E0
        mov     dword [esp+8H], 2                       ; 009F _ C7. 44 24, 08, 00000002
        mov     dword [esp+4H], _timerinfo              ; 00A7 _ C7. 44 24, 04, 00000110(d)
        mov     eax, dword [ebp-20H]                    ; 00AF _ 8B. 45, E0
        mov     dword [esp], eax                        ; 00B2 _ 89. 04 24
        call    _timer_init                             ; 00B5 _ E8, 00000000(rel)
        mov     dword [esp+4H], 300                     ; 00BA _ C7. 44 24, 04, 0000012C
        mov     eax, dword [ebp-20H]                    ; 00C2 _ 8B. 45, E0
        mov     dword [esp], eax                        ; 00C5 _ 89. 04 24
        call    _timer_settime                          ; 00C8 _ E8, 00000000(rel)
        call    _timer_alloc                            ; 00CD _ E8, 00000000(rel)
        mov     dword [ebp-24H], eax                    ; 00D2 _ 89. 45, DC
        mov     dword [esp+8H], 1                       ; 00D5 _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], _timerinfo              ; 00DD _ C7. 44 24, 04, 00000110(d)
        mov     eax, dword [ebp-24H]                    ; 00E5 _ 8B. 45, DC
        mov     dword [esp], eax                        ; 00E8 _ 89. 04 24
        call    _timer_init                             ; 00EB _ E8, 00000000(rel)
        mov     dword [esp+4H], 50                      ; 00F0 _ C7. 44 24, 04, 00000032
        mov     eax, dword [ebp-24H]                    ; 00F8 _ 8B. 45, DC
        mov     dword [esp], eax                        ; 00FB _ 89. 04 24
        call    _timer_settime                          ; 00FE _ E8, 00000000(rel)
        mov     dword [esp+0CH], 0                      ; 0103 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], _keybuf                 ; 010B _ C7. 44 24, 08, 00000060(d)
        mov     dword [esp+4H], 32                      ; 0113 _ C7. 44 24, 04, 00000020
        mov     dword [esp], _keyinfo                   ; 011B _ C7. 04 24, 00000020(d)
        call    _fifo8_init                             ; 0122 _ E8, 00000000(rel)
        mov     dword [esp+0CH], 0                      ; 0127 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], _mousebuf               ; 012F _ C7. 44 24, 08, 00000080(d)
        mov     dword [esp+4H], 128                     ; 0137 _ C7. 44 24, 04, 00000080
        mov     dword [esp], _mouseinfo                 ; 013F _ C7. 04 24, 0000003C(d)
        call    _fifo8_init                             ; 0146 _ E8, 00000000(rel)
        call    _init_palette                           ; 014B _ E8, 0000316D
        call    _init_keyboard                          ; 0150 _ E8, 00003810
        call    _get_memory_block_count                 ; 0155 _ E8, 00000000(rel)
        mov     dword [ebp-28H], eax                    ; 015A _ 89. 45, D8
        call    _get_addr_buffer                        ; 015D _ E8, 00000000(rel)
        mov     dword [ebp-2CH], eax                    ; 0162 _ 89. 45, D4
        mov     eax, dword [_memman]                    ; 0165 _ A1, 00000000(d)
        mov     dword [esp], eax                        ; 016A _ 89. 04 24
        call    _memman_init                            ; 016D _ E8, 00000000(rel)
        mov     eax, dword [_memman]                    ; 0172 _ A1, 00000000(d)
        mov     dword [esp+8H], 1072594944              ; 0177 _ C7. 44 24, 08, 3FEE8000
        mov     dword [esp+4H], 16809984                ; 017F _ C7. 44 24, 04, 01008000
        mov     dword [esp], eax                        ; 0187 _ 89. 04 24
        call    _memman_free                            ; 018A _ E8, 00000000(rel)
        mov     ecx, dword [_ysize]                     ; 018F _ 8B. 0D, 00000140(d)
        mov     edx, dword [_xsize]                     ; 0195 _ 8B. 15, 0000013C(d)
        mov     eax, dword [_memman]                    ; 019B _ A1, 00000000(d)
        mov     dword [esp+0CH], ecx                    ; 01A0 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 01A4 _ 89. 54 24, 08
        mov     edx, dword [ebp-18H]                    ; 01A8 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 01AB _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 01AF _ 89. 04 24
        call    _shtctl_init                            ; 01B2 _ E8, 00000000(rel)
        mov     dword [_shtctl], eax                    ; 01B7 _ A3, 00000264(d)
        mov     eax, dword [_shtctl]                    ; 01BC _ A1, 00000264(d)
        mov     dword [esp], eax                        ; 01C1 _ 89. 04 24
        call    _sheet_alloc                            ; 01C4 _ E8, 00000000(rel)
        mov     dword [_sht_back], eax                  ; 01C9 _ A3, 00000268(d)
        mov     eax, dword [_shtctl]                    ; 01CE _ A1, 00000264(d)
        mov     dword [esp], eax                        ; 01D3 _ 89. 04 24
        call    _sheet_alloc                            ; 01D6 _ E8, 00000000(rel)
        mov     dword [_sht_mouse], eax                 ; 01DB _ A3, 0000026C(d)
        mov     edx, dword [_xsize]                     ; 01E0 _ 8B. 15, 0000013C(d)
        mov     eax, dword [_ysize]                     ; 01E6 _ A1, 00000140(d)
        imul    eax, edx                                ; 01EB _ 0F AF. C2
        mov     edx, dword [_memman]                    ; 01EE _ 8B. 15, 00000000(d)
        mov     dword [esp+4H], eax                     ; 01F4 _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 01F8 _ 89. 14 24
        call    _memman_alloc_4k                        ; 01FB _ E8, 00000000(rel)
        mov     dword [_buf_back], eax                  ; 0200 _ A3, 00000144(d)
        mov     ebx, dword [_ysize]                     ; 0205 _ 8B. 1D, 00000140(d)
        mov     ecx, dword [_xsize]                     ; 020B _ 8B. 0D, 0000013C(d)
        mov     edx, dword [_buf_back]                  ; 0211 _ 8B. 15, 00000144(d)
        mov     eax, dword [_sht_back]                  ; 0217 _ A1, 00000268(d)
        mov     dword [esp+10H], 99                     ; 021C _ C7. 44 24, 10, 00000063
        mov     dword [esp+0CH], ebx                    ; 0224 _ 89. 5C 24, 0C
        mov     dword [esp+8H], ecx                     ; 0228 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 022C _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0230 _ 89. 04 24
        call    _sheet_setbuf                           ; 0233 _ E8, 00000000(rel)
        mov     eax, dword [_sht_mouse]                 ; 0238 _ A1, 0000026C(d)
        mov     dword [esp+10H], 99                     ; 023D _ C7. 44 24, 10, 00000063
        mov     dword [esp+0CH], 16                     ; 0245 _ C7. 44 24, 0C, 00000010
        mov     dword [esp+8H], 16                      ; 024D _ C7. 44 24, 08, 00000010
        mov     dword [esp+4H], _buf_mouse              ; 0255 _ C7. 44 24, 04, 00000160(d)
        mov     dword [esp], eax                        ; 025D _ 89. 04 24
        call    _sheet_setbuf                           ; 0260 _ E8, 00000000(rel)
        mov     ecx, dword [_ysize]                     ; 0265 _ 8B. 0D, 00000140(d)
        mov     edx, dword [_xsize]                     ; 026B _ 8B. 15, 0000013C(d)
        mov     eax, dword [_buf_back]                  ; 0271 _ A1, 00000144(d)
        mov     dword [esp+8H], ecx                     ; 0276 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 027A _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 027E _ 89. 04 24
        call    _init_screen8                           ; 0281 _ E8, 0000275F
        mov     dword [esp+4H], 99                      ; 0286 _ C7. 44 24, 04, 00000063
        mov     dword [esp], _buf_mouse                 ; 028E _ C7. 04 24, 00000160(d)
        call    _init_mouse_cursor                      ; 0295 _ E8, 000033F9
        mov     edx, dword [_sht_back]                  ; 029A _ 8B. 15, 00000268(d)
        mov     eax, dword [_shtctl]                    ; 02A0 _ A1, 00000264(d)
        mov     dword [esp+0CH], 0                      ; 02A5 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 02AD _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 02B5 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 02B9 _ 89. 04 24
        call    _sheet_slide                            ; 02BC _ E8, 00000000(rel)
        mov     eax, dword [_xsize]                     ; 02C1 _ A1, 0000013C(d)
        sub     eax, 16                                 ; 02C6 _ 83. E8, 10
        mov     edx, eax                                ; 02C9 _ 89. C2
        shr     edx, 31                                 ; 02CB _ C1. EA, 1F
        add     eax, edx                                ; 02CE _ 01. D0
        sar     eax, 1                                  ; 02D0 _ D1. F8
        mov     dword [_mx], eax                        ; 02D2 _ A3, 00000134(d)
        mov     eax, dword [_ysize]                     ; 02D7 _ A1, 00000140(d)
        sub     eax, 44                                 ; 02DC _ 83. E8, 2C
        mov     edx, eax                                ; 02DF _ 89. C2
        shr     edx, 31                                 ; 02E1 _ C1. EA, 1F
        add     eax, edx                                ; 02E4 _ 01. D0
        sar     eax, 1                                  ; 02E6 _ D1. F8
        mov     dword [_my], eax                        ; 02E8 _ A3, 00000138(d)
        mov     ebx, dword [_my]                        ; 02ED _ 8B. 1D, 00000138(d)
        mov     ecx, dword [_mx]                        ; 02F3 _ 8B. 0D, 00000134(d)
        mov     edx, dword [_sht_mouse]                 ; 02F9 _ 8B. 15, 0000026C(d)
        mov     eax, dword [_shtctl]                    ; 02FF _ A1, 00000264(d)
        mov     dword [esp+0CH], ebx                    ; 0304 _ 89. 5C 24, 0C
        mov     dword [esp+8H], ecx                     ; 0308 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 030C _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0310 _ 89. 04 24
        call    _sheet_slide                            ; 0313 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], 8                      ; 0318 _ C7. 45, F4, 00000008
        mov     dword [ebp-10H], 7                      ; 031F _ C7. 45, F0, 00000007
        mov     eax, dword [_shtctl]                    ; 0326 _ A1, 00000264(d)
        mov     dword [esp+4H], ?_384                   ; 032B _ C7. 44 24, 04, 00000000(d)
        mov     dword [esp], eax                        ; 0333 _ 89. 04 24
        call    _message_box                            ; 0336 _ E8, 00003A55
        mov     dword [_shtMsgBox], eax                 ; 033B _ A3, 00000260(d)
        mov     edx, dword [_sht_back]                  ; 0340 _ 8B. 15, 00000268(d)
        mov     eax, dword [_shtctl]                    ; 0346 _ A1, 00000264(d)
        mov     dword [esp+8H], 0                       ; 034B _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 0353 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0357 _ 89. 04 24
        call    _sheet_updown                           ; 035A _ E8, 00000000(rel)
        mov     edx, dword [_sht_mouse]                 ; 035F _ 8B. 15, 0000026C(d)
        mov     eax, dword [_shtctl]                    ; 0365 _ A1, 00000264(d)
        mov     dword [esp+8H], 4                       ; 036A _ C7. 44 24, 08, 00000004
        mov     dword [esp+4H], edx                     ; 0372 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0376 _ 89. 04 24
        call    _sheet_updown                           ; 0379 _ E8, 00000000(rel)
        call    _io_sti                                 ; 037E _ E8, 00000000(rel)
        mov     dword [esp], _mdec                      ; 0383 _ C7. 04 24, 00000100(d)
        call    _enable_mouse                           ; 038A _ E8, 00003611
        mov     eax, dword [_memman]                    ; 038F _ A1, 00000000(d)
        mov     dword [esp], eax                        ; 0394 _ 89. 04 24
        call    _task_init                              ; 0397 _ E8, 00000000(rel)
        mov     dword [_task_a.2371], eax               ; 039C _ A3, 0000027C(d)
        mov     eax, dword [_task_a.2371]               ; 03A1 _ A1, 0000027C(d)
        mov     dword [?_414], eax                      ; 03A6 _ A3, 00000038(d)
        mov     eax, dword [_task_a.2371]               ; 03AB _ A1, 0000027C(d)
        mov     dword [_task_main], eax                 ; 03B0 _ A3, 00000274(d)
        mov     eax, dword [_task_a.2371]               ; 03B5 _ A1, 0000027C(d)
        mov     dword [esp+8H], 0                       ; 03BA _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], 0                       ; 03C2 _ C7. 44 24, 04, 00000000
        mov     dword [esp], eax                        ; 03CA _ 89. 04 24
        call    _task_run                               ; 03CD _ E8, 00000000(rel)
        mov     dword [esp], 0                          ; 03D2 _ C7. 04 24, 00000000
        call    _launch_console                         ; 03D9 _ E8, 000007E3
        mov     dword [ebp-30H], eax                    ; 03DE _ 89. 45, D0
        mov     eax, dword [_console_count]             ; 03E1 _ A1, 00000010(d)
        add     eax, 1                                  ; 03E6 _ 83. C0, 01
        mov     dword [_console_count], eax             ; 03E9 _ A3, 00000010(d)
        mov     eax, dword [_shtctl]                    ; 03EE _ A1, 00000264(d)
        mov     dword [esp+0CH], 2                      ; 03F3 _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 8                       ; 03FB _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-30H]                    ; 0403 _ 8B. 55, D0
        mov     dword [esp+4H], edx                     ; 0406 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 040A _ 89. 04 24
        call    _sheet_slide                            ; 040D _ E8, 00000000(rel)
        mov     eax, dword [_shtctl]                    ; 0412 _ A1, 00000264(d)
        mov     dword [esp+8H], 2                       ; 0417 _ C7. 44 24, 08, 00000002
        mov     edx, dword [ebp-30H]                    ; 041F _ 8B. 55, D0
        mov     dword [esp+4H], edx                     ; 0422 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0426 _ 89. 04 24
        call    _sheet_updown                           ; 0429 _ E8, 00000000(rel)
        mov     dword [ebp-34H], 0                      ; 042E _ C7. 45, CC, 00000000
        mov     dword [ebp-38H], 0                      ; 0435 _ C7. 45, C8, 00000000
        mov     dword [ebp-3CH], 0                      ; 043C _ C7. 45, C4, 00000000
        mov     dword [ebp-40H], 0                      ; 0443 _ C7. 45, C0, 00000000
        mov     dword [ebp-44H], 0                      ; 044A _ C7. 45, BC, 00000000
        mov     dword [ebp-14H], 0                      ; 0451 _ C7. 45, EC, 00000000
        mov     dword [ebp-48H], 0                      ; 0458 _ C7. 45, B8, 00000000
        mov     dword [ebp-4CH], 0                      ; 045F _ C7. 45, B4, 00000000
?_001:  mov     dword [esp], _keyinfo                   ; 0466 _ C7. 04 24, 00000020(d)
        call    _fifo8_status                           ; 046D _ E8, 00000000(rel)
        mov     ebx, eax                                ; 0472 _ 89. C3
        mov     dword [esp], _mouseinfo                 ; 0474 _ C7. 04 24, 0000003C(d)
        call    _fifo8_status                           ; 047B _ E8, 00000000(rel)
        add     ebx, eax                                ; 0480 _ 01. C3
        mov     dword [esp], _timerinfo                 ; 0482 _ C7. 04 24, 00000110(d)
        call    _fifo8_status                           ; 0489 _ E8, 00000000(rel)
        add     eax, ebx                                ; 048E _ 01. D8
        test    eax, eax                                ; 0490 _ 85. C0
        jnz     ?_002                                   ; 0492 _ 75, 0A
        call    _io_sti                                 ; 0494 _ E8, 00000000(rel)
        jmp     ?_014                                   ; 0499 _ E9, 00000413

?_002:  mov     dword [esp], _keyinfo                   ; 049E _ C7. 04 24, 00000020(d)
        call    _fifo8_status                           ; 04A5 _ E8, 00000000(rel)
        test    eax, eax                                ; 04AA _ 85. C0
        je      ?_013                                   ; 04AC _ 0F 84, 000003CE
        call    _io_sti                                 ; 04B2 _ E8, 00000000(rel)
        mov     dword [esp], _keyinfo                   ; 04B7 _ C7. 04 24, 00000020(d)
        call    _fifo8_get                              ; 04BE _ E8, 00000000(rel)
        mov     dword [ebp-34H], eax                    ; 04C3 _ 89. 45, CC
        mov     eax, dword [_key_shift]                 ; 04C6 _ A1, 00000000(d)
        test    eax, eax                                ; 04CB _ 85. C0
        jz      ?_003                                   ; 04CD _ 74, 63
        cmp     dword [ebp-34H], 17                     ; 04CF _ 83. 7D, CC, 11
        jnz     ?_003                                   ; 04D3 _ 75, 5D
        mov     eax, dword [_console_count]             ; 04D5 _ A1, 00000010(d)
        mov     dword [esp], eax                        ; 04DA _ 89. 04 24
        call    _launch_console                         ; 04DD _ E8, 000006DF
        mov     dword [ebp-30H], eax                    ; 04E2 _ 89. 45, D0
        mov     eax, dword [_shtctl]                    ; 04E5 _ A1, 00000264(d)
        mov     dword [esp+0CH], 176                    ; 04EA _ C7. 44 24, 0C, 000000B0
        mov     dword [esp+8H], 156                     ; 04F2 _ C7. 44 24, 08, 0000009C
        mov     edx, dword [ebp-30H]                    ; 04FA _ 8B. 55, D0
        mov     dword [esp+4H], edx                     ; 04FD _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0501 _ 89. 04 24
        call    _sheet_slide                            ; 0504 _ E8, 00000000(rel)
        mov     eax, dword [_shtctl]                    ; 0509 _ A1, 00000264(d)
        mov     dword [esp+8H], 1                       ; 050E _ C7. 44 24, 08, 00000001
        mov     edx, dword [ebp-30H]                    ; 0516 _ 8B. 55, D0
        mov     dword [esp+4H], edx                     ; 0519 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 051D _ 89. 04 24
        call    _sheet_updown                           ; 0520 _ E8, 00000000(rel)
        mov     eax, dword [_console_count]             ; 0525 _ A1, 00000010(d)
        add     eax, 1                                  ; 052A _ 83. C0, 01
        mov     dword [_console_count], eax             ; 052D _ A3, 00000010(d)
?_003:  cmp     dword [ebp-34H], 255                    ; 0532 _ 81. 7D, CC, 000000FF
        jnz     ?_004                                   ; 0539 _ 75, 1B
        mov     eax, dword [_current_console_task]      ; 053B _ A1, 00000278(d)
        test    eax, eax                                ; 0540 _ 85. C0
        jz      ?_004                                   ; 0542 _ 74, 12
        mov     eax, dword [_current_console_task]      ; 0544 _ A1, 00000278(d)
        mov     dword [esp], eax                        ; 0549 _ 89. 04 24
        call    _close_console                          ; 054C _ E8, 00001DB6
        jmp     ?_018                                   ; 0551 _ E9, 00000448

?_004:  mov     eax, dword [ebp-34H]                    ; 0556 _ 8B. 45, CC
        mov     dword [esp], eax                        ; 0559 _ 89. 04 24
        call    _transferScanCode                       ; 055C _ E8, 00000523
        cmp     dword [ebp-34H], 16                     ; 0561 _ 83. 7D, CC, 10
        jnz     ?_005                                   ; 0565 _ 75, 28
        mov     eax, dword [_shtctl]                    ; 0567 _ A1, 00000264(d)
        mov     eax, dword [eax+10H]                    ; 056C _ 8B. 40, 10
        lea     ecx, [eax-1H]                           ; 056F _ 8D. 48, FF
        mov     eax, dword [_shtctl]                    ; 0572 _ A1, 00000264(d)
        mov     edx, dword [eax+18H]                    ; 0577 _ 8B. 50, 18
        mov     eax, dword [_shtctl]                    ; 057A _ A1, 00000264(d)
        mov     dword [esp+8H], ecx                     ; 057F _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 0583 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0587 _ 89. 04 24
        call    _sheet_updown                           ; 058A _ E8, 00000000(rel)
?_005:  cmp     dword [ebp-34H], 15                     ; 058F _ 83. 7D, CC, 0F
        jne     ?_011                                   ; 0593 _ 0F 85, 000001B1
        mov     dword [ebp-50H], -1                     ; 0599 _ C7. 45, B0, FFFFFFFF
        cmp     dword [ebp-14H], 0                      ; 05A0 _ 83. 7D, EC, 00
        jne     ?_009                                   ; 05A4 _ 0F 85, 000000B3
        mov     dword [ebp-14H], 1                      ; 05AA _ C7. 45, EC, 00000001
        mov     eax, dword [_current_console]           ; 05B1 _ A1, 0000000C(d)
        cmp     eax, 1                                  ; 05B6 _ 83. F8, 01
        jnz     ?_006                                   ; 05B9 _ 75, 0C
        mov     dword [_current_console], 0             ; 05BB _ C7. 05, 0000000C(d), 00000000
        jmp     ?_007                                   ; 05C5 _ EB, 0A

?_006:  mov     dword [_current_console], 1             ; 05C7 _ C7. 05, 0000000C(d), 00000001
?_007:  mov     edx, dword [_shtMsgBox]                 ; 05D1 _ 8B. 15, 00000260(d)
        mov     eax, dword [_shtctl]                    ; 05D7 _ A1, 00000264(d)
        mov     dword [esp+0CH], 0                      ; 05DC _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], ?_385                   ; 05E4 _ C7. 44 24, 08, 00000008(d)
        mov     dword [esp+4H], edx                     ; 05EC _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 05F0 _ 89. 04 24
        call    _make_wtitle8                           ; 05F3 _ E8, 00003B48
        mov     eax, dword [_current_console_task]      ; 05F8 _ A1, 00000278(d)
        test    eax, eax                                ; 05FD _ 85. C0
        jz      ?_008                                   ; 05FF _ 74, 2C
        mov     eax, dword [_current_console_task]      ; 0601 _ A1, 00000278(d)
        mov     edx, dword [eax+0B4H]                   ; 0606 _ 8B. 90, 000000B4
        mov     eax, dword [_shtctl]                    ; 060C _ A1, 00000264(d)
        mov     dword [esp+0CH], 1                      ; 0611 _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], ?_386                   ; 0619 _ C7. 44 24, 08, 0000000F(d)
        mov     dword [esp+4H], edx                     ; 0621 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0625 _ 89. 04 24
        call    _make_wtitle8                           ; 0628 _ E8, 00003B13
?_008:  mov     edx, dword [_shtMsgBox]                 ; 062D _ 8B. 15, 00000260(d)
        mov     eax, dword [_shtctl]                    ; 0633 _ A1, 00000264(d)
        mov     dword [esp+10H], 7                      ; 0638 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 28                     ; 0640 _ C7. 44 24, 0C, 0000001C
        mov     ecx, dword [ebp-0CH]                    ; 0648 _ 8B. 4D, F4
        mov     dword [esp+8H], ecx                     ; 064B _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 064F _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0653 _ 89. 04 24
        call    _set_cursor                             ; 0656 _ E8, 00000348
        jmp     ?_010                                   ; 065B _ EB, 63

?_009:  mov     dword [ebp-14H], 0                      ; 065D _ C7. 45, EC, 00000000
        mov     edx, dword [_shtMsgBox]                 ; 0664 _ 8B. 15, 00000260(d)
        mov     eax, dword [_shtctl]                    ; 066A _ A1, 00000264(d)
        mov     dword [esp+0CH], 1                      ; 066F _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], ?_385                   ; 0677 _ C7. 44 24, 08, 00000008(d)
        mov     dword [esp+4H], edx                     ; 067F _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0683 _ 89. 04 24
        call    _make_wtitle8                           ; 0686 _ E8, 00003AB5
        mov     eax, dword [_current_console_task]      ; 068B _ A1, 00000278(d)
        test    eax, eax                                ; 0690 _ 85. C0
        jz      ?_010                                   ; 0692 _ 74, 2C
        mov     eax, dword [_current_console_task]      ; 0694 _ A1, 00000278(d)
        mov     edx, dword [eax+0B4H]                   ; 0699 _ 8B. 90, 000000B4
        mov     eax, dword [_shtctl]                    ; 069F _ A1, 00000264(d)
        mov     dword [esp+0CH], 0                      ; 06A4 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], ?_386                   ; 06AC _ C7. 44 24, 08, 0000000F(d)
        mov     dword [esp+4H], edx                     ; 06B4 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 06B8 _ 89. 04 24
        call    _make_wtitle8                           ; 06BB _ E8, 00003A80
?_010:  mov     eax, dword [_shtMsgBox]                 ; 06C0 _ A1, 00000260(d)
        mov     ecx, dword [eax+4H]                     ; 06C5 _ 8B. 48, 04
        mov     edx, dword [_shtMsgBox]                 ; 06C8 _ 8B. 15, 00000260(d)
        mov     eax, dword [_shtctl]                    ; 06CE _ A1, 00000264(d)
        mov     dword [esp+14H], 21                     ; 06D3 _ C7. 44 24, 14, 00000015
        mov     dword [esp+10H], ecx                    ; 06DB _ 89. 4C 24, 10
        mov     dword [esp+0CH], 0                      ; 06DF _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 06E7 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 06EF _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 06F3 _ 89. 04 24
        call    _sheet_refresh                          ; 06F6 _ E8, 00000000(rel)
        mov     eax, dword [_current_console_task]      ; 06FB _ A1, 00000278(d)
        test    eax, eax                                ; 0700 _ 85. C0
        jz      ?_011                                   ; 0702 _ 74, 46
        mov     eax, dword [_current_console_task]      ; 0704 _ A1, 00000278(d)
        mov     eax, dword [eax+0B4H]                   ; 0709 _ 8B. 80, 000000B4
        mov     ecx, dword [eax+4H]                     ; 070F _ 8B. 48, 04
        mov     eax, dword [_current_console_task]      ; 0712 _ A1, 00000278(d)
        mov     edx, dword [eax+0B4H]                   ; 0717 _ 8B. 90, 000000B4
        mov     eax, dword [_shtctl]                    ; 071D _ A1, 00000264(d)
        mov     dword [esp+14H], 21                     ; 0722 _ C7. 44 24, 14, 00000015
        mov     dword [esp+10H], ecx                    ; 072A _ 89. 4C 24, 10
        mov     dword [esp+0CH], 0                      ; 072E _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 0736 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 073E _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0742 _ 89. 04 24
        call    _sheet_refresh                          ; 0745 _ E8, 00000000(rel)
?_011:  cmp     dword [ebp-14H], 0                      ; 074A _ 83. 7D, EC, 00
        jne     ?_012                                   ; 074E _ 0F 85, 000000DA
        mov     eax, dword [ebp-34H]                    ; 0754 _ 8B. 45, CC
        mov     dword [esp], eax                        ; 0757 _ 89. 04 24
        call    _transferScanCode                       ; 075A _ E8, 00000325
        test    al, al                                  ; 075F _ 84. C0
        je      ?_014                                   ; 0761 _ 0F 84, 0000014A
        cmp     dword [ebp-0CH], 143                    ; 0767 _ 81. 7D, F4, 0000008F
        jg      ?_014                                   ; 076E _ 0F 8F, 0000013D
        mov     edx, dword [_shtMsgBox]                 ; 0774 _ 8B. 15, 00000260(d)
        mov     eax, dword [_shtctl]                    ; 077A _ A1, 00000264(d)
        mov     dword [esp+10H], 7                      ; 077F _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 28                     ; 0787 _ C7. 44 24, 0C, 0000001C
        mov     ecx, dword [ebp-0CH]                    ; 078F _ 8B. 4D, F4
        mov     dword [esp+8H], ecx                     ; 0792 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 0796 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 079A _ 89. 04 24
        call    _set_cursor                             ; 079D _ E8, 00000201
        mov     eax, dword [ebp-34H]                    ; 07A2 _ 8B. 45, CC
        mov     dword [esp], eax                        ; 07A5 _ 89. 04 24
        call    _transferScanCode                       ; 07A8 _ E8, 000002D7
        mov     byte [ebp-51H], al                      ; 07AD _ 88. 45, AF
        movzx   eax, byte [ebp-51H]                     ; 07B0 _ 0F B6. 45, AF
        mov     byte [ebp-66H], al                      ; 07B4 _ 88. 45, 9A
        mov     byte [ebp-65H], 0                       ; 07B7 _ C6. 45, 9B, 00
        mov     ecx, dword [_shtMsgBox]                 ; 07BB _ 8B. 0D, 00000260(d)
        mov     edx, dword [_shtctl]                    ; 07C1 _ 8B. 15, 00000264(d)
        lea     eax, [ebp-66H]                          ; 07C7 _ 8D. 45, 9A
        mov     dword [esp+14H], eax                    ; 07CA _ 89. 44 24, 14
        mov     dword [esp+10H], 0                      ; 07CE _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 28                     ; 07D6 _ C7. 44 24, 0C, 0000001C
        mov     eax, dword [ebp-0CH]                    ; 07DE _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 07E1 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 07E5 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 07E9 _ 89. 14 24
        call    _showString                             ; 07EC _ E8, 00002604
        add     dword [ebp-0CH], 8                      ; 07F1 _ 83. 45, F4, 08
        mov     dword [ebp-44H], 1                      ; 07F5 _ C7. 45, BC, 00000001
        mov     edx, dword [_shtMsgBox]                 ; 07FC _ 8B. 15, 00000260(d)
        mov     eax, dword [_shtctl]                    ; 0802 _ A1, 00000264(d)
        mov     ecx, dword [ebp-10H]                    ; 0807 _ 8B. 4D, F0
        mov     dword [esp+10H], ecx                    ; 080A _ 89. 4C 24, 10
        mov     dword [esp+0CH], 28                     ; 080E _ C7. 44 24, 0C, 0000001C
        mov     ecx, dword [ebp-0CH]                    ; 0816 _ 8B. 4D, F4
        mov     dword [esp+8H], ecx                     ; 0819 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 081D _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0821 _ 89. 04 24
        call    _set_cursor                             ; 0824 _ E8, 0000017A
        jmp     ?_014                                   ; 0829 _ E9, 00000083

?_012:  mov     eax, dword [ebp-34H]                    ; 082E _ 8B. 45, CC
        mov     dword [esp], eax                        ; 0831 _ 89. 04 24
        call    _isSpecialKey                           ; 0834 _ E8, 000001F9
        test    eax, eax                                ; 0839 _ 85. C0
        jnz     ?_014                                   ; 083B _ 75, 74
        mov     eax, dword [_current_console_task]      ; 083D _ A1, 00000278(d)
        test    eax, eax                                ; 0842 _ 85. C0
        jz      ?_014                                   ; 0844 _ 74, 6B
        mov     eax, dword [ebp-34H]                    ; 0846 _ 8B. 45, CC
        movzx   eax, al                                 ; 0849 _ 0F B6. C0
        mov     edx, dword [_current_console_task]      ; 084C _ 8B. 15, 00000278(d)
        add     edx, 16                                 ; 0852 _ 83. C2, 10
        mov     dword [esp+4H], eax                     ; 0855 _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 0859 _ 89. 14 24
        call    _fifo8_put                              ; 085C _ E8, 00000000(rel)
        mov     dword [esp], _keyinfo                   ; 0861 _ C7. 04 24, 00000020(d)
        call    _fifo8_status                           ; 0868 _ E8, 00000000(rel)
        test    eax, eax                                ; 086D _ 85. C0
        jnz     ?_014                                   ; 086F _ 75, 40
        mov     eax, dword [_task_a.2371]               ; 0871 _ A1, 0000027C(d)
        mov     dword [esp], eax                        ; 0876 _ 89. 04 24
        call    _task_sleep                             ; 0879 _ E8, 00000000(rel)
        jmp     ?_014                                   ; 087E _ EB, 31

?_013:  mov     dword [esp], _mouseinfo                 ; 0880 _ C7. 04 24, 0000003C(d)
        call    _fifo8_status                           ; 0887 _ E8, 00000000(rel)
        test    eax, eax                                ; 088C _ 85. C0
        jz      ?_014                                   ; 088E _ 74, 21
        mov     ecx, dword [_sht_mouse]                 ; 0890 _ 8B. 0D, 0000026C(d)
        mov     edx, dword [_sht_back]                  ; 0896 _ 8B. 15, 00000268(d)
        mov     eax, dword [_shtctl]                    ; 089C _ A1, 00000264(d)
        mov     dword [esp+8H], ecx                     ; 08A1 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 08A5 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 08A9 _ 89. 04 24
        call    _show_mouse_info                        ; 08AC _ E8, 00002603
?_014:  mov     dword [esp], _timerinfo                 ; 08B1 _ C7. 04 24, 00000110(d)
        call    _fifo8_status                           ; 08B8 _ E8, 00000000(rel)
        test    eax, eax                                ; 08BD _ 85. C0
        je      ?_001                                   ; 08BF _ 0F 84, FFFFFBA1
        call    _io_sti                                 ; 08C5 _ E8, 00000000(rel)
        mov     dword [esp], _timerinfo                 ; 08CA _ C7. 04 24, 00000110(d)
        call    _fifo8_get                              ; 08D1 _ E8, 00000000(rel)
        mov     dword [ebp-58H], eax                    ; 08D6 _ 89. 45, A8
        cmp     dword [ebp-58H], 0                      ; 08D9 _ 83. 7D, A8, 00
        jz      ?_015                                   ; 08DD _ 74, 24
        mov     dword [esp+8H], 0                       ; 08DF _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], _timerinfo              ; 08E7 _ C7. 44 24, 04, 00000110(d)
        mov     eax, dword [ebp-24H]                    ; 08EF _ 8B. 45, DC
        mov     dword [esp], eax                        ; 08F2 _ 89. 04 24
        call    _timer_init                             ; 08F5 _ E8, 00000000(rel)
        mov     dword [ebp-10H], 0                      ; 08FA _ C7. 45, F0, 00000000
        jmp     ?_016                                   ; 0901 _ EB, 22

?_015:  mov     dword [esp+8H], 1                       ; 0903 _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], _timerinfo              ; 090B _ C7. 44 24, 04, 00000110(d)
        mov     eax, dword [ebp-24H]                    ; 0913 _ 8B. 45, DC
        mov     dword [esp], eax                        ; 0916 _ 89. 04 24
        call    _timer_init                             ; 0919 _ E8, 00000000(rel)
        mov     dword [ebp-10H], 7                      ; 091E _ C7. 45, F0, 00000007
?_016:  mov     dword [esp+4H], 50                      ; 0925 _ C7. 44 24, 04, 00000032
        mov     eax, dword [ebp-24H]                    ; 092D _ 8B. 45, DC
        mov     dword [esp], eax                        ; 0930 _ 89. 04 24
        call    _timer_settime                          ; 0933 _ E8, 00000000(rel)
        cmp     dword [ebp-14H], 0                      ; 0938 _ 83. 7D, EC, 00
        jnz     ?_017                                   ; 093C _ 75, 32
        mov     edx, dword [_shtMsgBox]                 ; 093E _ 8B. 15, 00000260(d)
        mov     eax, dword [_shtctl]                    ; 0944 _ A1, 00000264(d)
        mov     ecx, dword [ebp-10H]                    ; 0949 _ 8B. 4D, F0
        mov     dword [esp+10H], ecx                    ; 094C _ 89. 4C 24, 10
        mov     dword [esp+0CH], 28                     ; 0950 _ C7. 44 24, 0C, 0000001C
        mov     ecx, dword [ebp-0CH]                    ; 0958 _ 8B. 4D, F4
        mov     dword [esp+8H], ecx                     ; 095B _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 095F _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0963 _ 89. 04 24
        call    _set_cursor                             ; 0966 _ E8, 00000038
        jmp     ?_001                                   ; 096B _ E9, FFFFFAF6

?_017:  mov     edx, dword [_shtMsgBox]                 ; 0970 _ 8B. 15, 00000260(d)
        mov     eax, dword [_shtctl]                    ; 0976 _ A1, 00000264(d)
        mov     dword [esp+10H], 7                      ; 097B _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 28                     ; 0983 _ C7. 44 24, 0C, 0000001C
        mov     ecx, dword [ebp-0CH]                    ; 098B _ 8B. 4D, F4
        mov     dword [esp+8H], ecx                     ; 098E _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 0992 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0996 _ 89. 04 24
        call    _set_cursor                             ; 0999 _ E8, 00000005
?_018:  jmp     ?_001                                   ; 099E _ E9, FFFFFAC3

_set_cursor:; Function begin
        push    ebp                                     ; 09A3 _ 55
        mov     ebp, esp                                ; 09A4 _ 89. E5
        push    esi                                     ; 09A6 _ 56
        push    ebx                                     ; 09A7 _ 53
        sub     esp, 32                                 ; 09A8 _ 83. EC, 20
        cmp     dword [ebp+0CH], 0                      ; 09AB _ 83. 7D, 0C, 00
        jz      ?_019                                   ; 09AF _ 74, 79
        mov     eax, dword [ebp+14H]                    ; 09B1 _ 8B. 45, 14
        lea     esi, [eax+0FH]                          ; 09B4 _ 8D. 70, 0F
        mov     eax, dword [ebp+10H]                    ; 09B7 _ 8B. 45, 10
        lea     ebx, [eax+7H]                           ; 09BA _ 8D. 58, 07
        mov     eax, dword [ebp+18H]                    ; 09BD _ 8B. 45, 18
        movzx   eax, al                                 ; 09C0 _ 0F B6. C0
        mov     edx, dword [ebp+0CH]                    ; 09C3 _ 8B. 55, 0C
        mov     ecx, dword [edx+4H]                     ; 09C6 _ 8B. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 09C9 _ 8B. 55, 0C
        mov     edx, dword [edx]                        ; 09CC _ 8B. 12
        mov     dword [esp+18H], esi                    ; 09CE _ 89. 74 24, 18
        mov     dword [esp+14H], ebx                    ; 09D2 _ 89. 5C 24, 14
        mov     ebx, dword [ebp+14H]                    ; 09D6 _ 8B. 5D, 14
        mov     dword [esp+10H], ebx                    ; 09D9 _ 89. 5C 24, 10
        mov     ebx, dword [ebp+10H]                    ; 09DD _ 8B. 5D, 10
        mov     dword [esp+0CH], ebx                    ; 09E0 _ 89. 5C 24, 0C
        mov     dword [esp+8H], eax                     ; 09E4 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 09E8 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 09EC _ 89. 14 24
        call    _boxfill8                               ; 09EF _ E8, 00002ACE
        mov     eax, dword [ebp+14H]                    ; 09F4 _ 8B. 45, 14
        lea     edx, [eax+10H]                          ; 09F7 _ 8D. 50, 10
        mov     eax, dword [ebp+10H]                    ; 09FA _ 8B. 45, 10
        add     eax, 8                                  ; 09FD _ 83. C0, 08
        mov     dword [esp+14H], edx                    ; 0A00 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 0A04 _ 89. 44 24, 10
        mov     eax, dword [ebp+14H]                    ; 0A08 _ 8B. 45, 14
        mov     dword [esp+0CH], eax                    ; 0A0B _ 89. 44 24, 0C
        mov     eax, dword [ebp+10H]                    ; 0A0F _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 0A12 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 0A16 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0A19 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0A1D _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0A20 _ 89. 04 24
        call    _sheet_refresh                          ; 0A23 _ E8, 00000000(rel)
        jmp     ?_020                                   ; 0A28 _ EB, 01

?_019:  nop                                             ; 0A2A _ 90
?_020:  add     esp, 32                                 ; 0A2B _ 83. C4, 20
        pop     ebx                                     ; 0A2E _ 5B
        pop     esi                                     ; 0A2F _ 5E
        pop     ebp                                     ; 0A30 _ 5D
        ret                                             ; 0A31 _ C3
; _set_cursor End of function

_isSpecialKey:; Function begin
        push    ebp                                     ; 0A32 _ 55
        mov     ebp, esp                                ; 0A33 _ 89. E5
        sub     esp, 24                                 ; 0A35 _ 83. EC, 18
        mov     eax, dword [ebp+8H]                     ; 0A38 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0A3B _ 89. 04 24
        call    _transferScanCode                       ; 0A3E _ E8, 00000041
        cmp     dword [ebp+8H], 58                      ; 0A43 _ 83. 7D, 08, 3A
        jz      ?_021                                   ; 0A47 _ 74, 2D
        cmp     dword [ebp+8H], 29                      ; 0A49 _ 83. 7D, 08, 1D
        jz      ?_021                                   ; 0A4D _ 74, 27
        cmp     dword [ebp+8H], 186                     ; 0A4F _ 81. 7D, 08, 000000BA
        jz      ?_021                                   ; 0A56 _ 74, 1E
        cmp     dword [ebp+8H], 42                      ; 0A58 _ 83. 7D, 08, 2A
        jz      ?_021                                   ; 0A5C _ 74, 18
        cmp     dword [ebp+8H], 54                      ; 0A5E _ 83. 7D, 08, 36
        jz      ?_021                                   ; 0A62 _ 74, 12
        cmp     dword [ebp+8H], 170                     ; 0A64 _ 81. 7D, 08, 000000AA
        jz      ?_021                                   ; 0A6B _ 74, 09
        cmp     dword [ebp+8H], 182                     ; 0A6D _ 81. 7D, 08, 000000B6
        jnz     ?_022                                   ; 0A74 _ 75, 07
?_021:  mov     eax, 1                                  ; 0A76 _ B8, 00000001
        jmp     ?_023                                   ; 0A7B _ EB, 05

?_022:  mov     eax, 0                                  ; 0A7D _ B8, 00000000
?_023:  leave                                           ; 0A82 _ C9
        ret                                             ; 0A83 _ C3
; _isSpecialKey End of function

_transferScanCode:; Function begin
        push    ebp                                     ; 0A84 _ 55
        mov     ebp, esp                                ; 0A85 _ 89. E5
        sub     esp, 16                                 ; 0A87 _ 83. EC, 10
        cmp     dword [ebp+8H], 42                      ; 0A8A _ 83. 7D, 08, 2A
        jnz     ?_024                                   ; 0A8E _ 75, 0D
        mov     eax, dword [_key_shift]                 ; 0A90 _ A1, 00000000(d)
        or      eax, 01H                                ; 0A95 _ 83. C8, 01
        mov     dword [_key_shift], eax                 ; 0A98 _ A3, 00000000(d)
?_024:  cmp     dword [ebp+8H], 54                      ; 0A9D _ 83. 7D, 08, 36
        jnz     ?_025                                   ; 0AA1 _ 75, 0D
        mov     eax, dword [_key_shift]                 ; 0AA3 _ A1, 00000000(d)
        or      eax, 02H                                ; 0AA8 _ 83. C8, 02
        mov     dword [_key_shift], eax                 ; 0AAB _ A3, 00000000(d)
?_025:  cmp     dword [ebp+8H], 170                     ; 0AB0 _ 81. 7D, 08, 000000AA
        jnz     ?_026                                   ; 0AB7 _ 75, 0D
        mov     eax, dword [_key_shift]                 ; 0AB9 _ A1, 00000000(d)
        and     eax, 0FFFFFFFEH                         ; 0ABE _ 83. E0, FE
        mov     dword [_key_shift], eax                 ; 0AC1 _ A3, 00000000(d)
?_026:  cmp     dword [ebp+8H], 182                     ; 0AC6 _ 81. 7D, 08, 000000B6
        jnz     ?_027                                   ; 0ACD _ 75, 0D
        mov     eax, dword [_key_shift]                 ; 0ACF _ A1, 00000000(d)
        and     eax, 0FFFFFFFDH                         ; 0AD4 _ 83. E0, FD
        mov     dword [_key_shift], eax                 ; 0AD7 _ A3, 00000000(d)
?_027:  cmp     dword [ebp+8H], 58                      ; 0ADC _ 83. 7D, 08, 3A
        jnz     ?_029                                   ; 0AE0 _ 75, 1F
        mov     eax, dword [_caps_lock]                 ; 0AE2 _ A1, 00000004(d)
        test    eax, eax                                ; 0AE7 _ 85. C0
        jnz     ?_028                                   ; 0AE9 _ 75, 0C
        mov     dword [_caps_lock], 1                   ; 0AEB _ C7. 05, 00000004(d), 00000001
        jmp     ?_029                                   ; 0AF5 _ EB, 0A

?_028:  mov     dword [_caps_lock], 0                   ; 0AF7 _ C7. 05, 00000004(d), 00000000
?_029:  cmp     dword [ebp+8H], 42                      ; 0B01 _ 83. 7D, 08, 2A
        jz      ?_030                                   ; 0B05 _ 74, 24
        cmp     dword [ebp+8H], 54                      ; 0B07 _ 83. 7D, 08, 36
        jz      ?_030                                   ; 0B0B _ 74, 1E
        cmp     dword [ebp+8H], 170                     ; 0B0D _ 81. 7D, 08, 000000AA
        jz      ?_030                                   ; 0B14 _ 74, 15
        cmp     dword [ebp+8H], 182                     ; 0B16 _ 81. 7D, 08, 000000B6
        jz      ?_030                                   ; 0B1D _ 74, 0C
        cmp     dword [ebp+8H], 83                      ; 0B1F _ 83. 7D, 08, 53
        jg      ?_030                                   ; 0B23 _ 7F, 06
        cmp     dword [ebp+8H], 58                      ; 0B25 _ 83. 7D, 08, 3A
        jnz     ?_031                                   ; 0B29 _ 75, 0A
?_030:  mov     eax, 0                                  ; 0B2B _ B8, 00000000
        jmp     ?_036                                   ; 0B30 _ E9, 0000008A

?_031:  mov     byte [ebp-1H], 0                        ; 0B35 _ C6. 45, FF, 00
        mov     eax, dword [_key_shift]                 ; 0B39 _ A1, 00000000(d)
        test    eax, eax                                ; 0B3E _ 85. C0
        jnz     ?_032                                   ; 0B40 _ 75, 44
        cmp     dword [ebp+8H], 83                      ; 0B42 _ 83. 7D, 08, 53
        jg      ?_032                                   ; 0B46 _ 7F, 3E
        mov     eax, dword [ebp+8H]                     ; 0B48 _ 8B. 45, 08
        add     eax, _keytable                          ; 0B4B _ 05, 00000020(d)
        movzx   eax, byte [eax]                         ; 0B50 _ 0F B6. 00
        test    al, al                                  ; 0B53 _ 84. C0
        jz      ?_032                                   ; 0B55 _ 74, 2F
        mov     eax, dword [ebp+8H]                     ; 0B57 _ 8B. 45, 08
        add     eax, _keytable                          ; 0B5A _ 05, 00000020(d)
        movzx   eax, byte [eax]                         ; 0B5F _ 0F B6. 00
        mov     byte [ebp-1H], al                       ; 0B62 _ 88. 45, FF
        cmp     byte [ebp-1H], 64                       ; 0B65 _ 80. 7D, FF, 40
        jle     ?_034                                   ; 0B69 _ 7E, 4F
        cmp     byte [ebp-1H], 90                       ; 0B6B _ 80. 7D, FF, 5A
        jg      ?_034                                   ; 0B6F _ 7F, 49
        mov     eax, dword [_caps_lock]                 ; 0B71 _ A1, 00000004(d)
        test    eax, eax                                ; 0B76 _ 85. C0
        jnz     ?_034                                   ; 0B78 _ 75, 40
        movzx   eax, byte [ebp-1H]                      ; 0B7A _ 0F B6. 45, FF
        add     eax, 32                                 ; 0B7E _ 83. C0, 20
        mov     byte [ebp-1H], al                       ; 0B81 _ 88. 45, FF
        jmp     ?_034                                   ; 0B84 _ EB, 34

?_032:  mov     eax, dword [_key_shift]                 ; 0B86 _ A1, 00000000(d)
        test    eax, eax                                ; 0B8B _ 85. C0
        jz      ?_033                                   ; 0B8D _ 74, 25
        cmp     dword [ebp+8H], 127                     ; 0B8F _ 83. 7D, 08, 7F
        jg      ?_033                                   ; 0B93 _ 7F, 1F
        mov     eax, dword [ebp+8H]                     ; 0B95 _ 8B. 45, 08
        add     eax, _keytable1                         ; 0B98 _ 05, 00000080(d)
        movzx   eax, byte [eax]                         ; 0B9D _ 0F B6. 00
        test    al, al                                  ; 0BA0 _ 84. C0
        jz      ?_033                                   ; 0BA2 _ 74, 10
        mov     eax, dword [ebp+8H]                     ; 0BA4 _ 8B. 45, 08
        add     eax, _keytable1                         ; 0BA7 _ 05, 00000080(d)
        movzx   eax, byte [eax]                         ; 0BAC _ 0F B6. 00
        mov     byte [ebp-1H], al                       ; 0BAF _ 88. 45, FF
        jmp     ?_035                                   ; 0BB2 _ EB, 07

?_033:  mov     byte [ebp-1H], 0                        ; 0BB4 _ C6. 45, FF, 00
        jmp     ?_035                                   ; 0BB8 _ EB, 01

?_034:  nop                                             ; 0BBA _ 90
?_035:  movzx   eax, byte [ebp-1H]                      ; 0BBB _ 0F B6. 45, FF
?_036:  leave                                           ; 0BBF _ C9
        ret                                             ; 0BC0 _ C3
; _transferScanCode End of function

_launch_console:; Function begin
        push    ebp                                     ; 0BC1 _ 55
        mov     ebp, esp                                ; 0BC2 _ 89. E5
        push    ebx                                     ; 0BC4 _ 53
        sub     esp, 68                                 ; 0BC5 _ 83. EC, 44
        mov     dword [ebp-0CH], 0                      ; 0BC8 _ C7. 45, F4, 00000000
        mov     eax, dword [_shtctl]                    ; 0BCF _ A1, 00000264(d)
        mov     dword [esp], eax                        ; 0BD4 _ 89. 04 24
        call    _sheet_alloc                            ; 0BD7 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 0BDC _ 89. 45, F4
        mov     eax, dword [_memman]                    ; 0BDF _ A1, 00000000(d)
        mov     dword [esp+4H], 42240                   ; 0BE4 _ C7. 44 24, 04, 0000A500
        mov     dword [esp], eax                        ; 0BEC _ 89. 04 24
        call    _memman_alloc_4k                        ; 0BEF _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 0BF4 _ 89. 45, F0
        mov     dword [esp+10H], 99                     ; 0BF7 _ C7. 44 24, 10, 00000063
        mov     dword [esp+0CH], 165                    ; 0BFF _ C7. 44 24, 0C, 000000A5
        mov     dword [esp+8H], 256                     ; 0C07 _ C7. 44 24, 08, 00000100
        mov     eax, dword [ebp-10H]                    ; 0C0F _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 0C12 _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 0C16 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 0C19 _ 89. 04 24
        call    _sheet_setbuf                           ; 0C1C _ E8, 00000000(rel)
        cmp     dword [ebp+8H], 0                       ; 0C21 _ 83. 7D, 08, 00
        jle     ?_037                                   ; 0C25 _ 7E, 26
        mov     eax, dword [_shtctl]                    ; 0C27 _ A1, 00000264(d)
        mov     dword [esp+0CH], 1                      ; 0C2C _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], ?_386                   ; 0C34 _ C7. 44 24, 08, 0000000F(d)
        mov     edx, dword [ebp-0CH]                    ; 0C3C _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 0C3F _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0C43 _ 89. 04 24
        call    _make_window8                           ; 0C46 _ E8, 00003230
        jmp     ?_038                                   ; 0C4B _ EB, 24

?_037:  mov     eax, dword [_shtctl]                    ; 0C4D _ A1, 00000264(d)
        mov     dword [esp+0CH], 0                      ; 0C52 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], ?_386                   ; 0C5A _ C7. 44 24, 08, 0000000F(d)
        mov     edx, dword [ebp-0CH]                    ; 0C62 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 0C65 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0C69 _ 89. 04 24
        call    _make_window8                           ; 0C6C _ E8, 0000320A
?_038:  mov     eax, dword [ebp-0CH]                    ; 0C71 _ 8B. 45, F4
        mov     ecx, dword [eax+8H]                     ; 0C74 _ 8B. 48, 08
        mov     eax, dword [ebp-0CH]                    ; 0C77 _ 8B. 45, F4
        mov     edx, dword [eax+4H]                     ; 0C7A _ 8B. 50, 04
        mov     eax, dword [_shtctl]                    ; 0C7D _ A1, 00000264(d)
        mov     dword [esp+14H], ecx                    ; 0C82 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 0C86 _ 89. 54 24, 10
        mov     dword [esp+0CH], 0                      ; 0C8A _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 0C92 _ C7. 44 24, 08, 00000000
        mov     edx, dword [ebp-0CH]                    ; 0C9A _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 0C9D _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0CA1 _ 89. 04 24
        call    _sheet_refresh                          ; 0CA4 _ E8, 00000000(rel)
        mov     dword [esp+14H], 0                      ; 0CA9 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], 128                    ; 0CB1 _ C7. 44 24, 10, 00000080
        mov     dword [esp+0CH], 240                    ; 0CB9 _ C7. 44 24, 0C, 000000F0
        mov     dword [esp+8H], 28                      ; 0CC1 _ C7. 44 24, 08, 0000001C
        mov     dword [esp+4H], 8                       ; 0CC9 _ C7. 44 24, 04, 00000008
        mov     eax, dword [ebp-0CH]                    ; 0CD1 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 0CD4 _ 89. 04 24
        call    _make_textbox8                          ; 0CD7 _ E8, 000035A2
        call    _task_alloc                             ; 0CDC _ E8, 00000000(rel)
        mov     dword [ebp-14H], eax                    ; 0CE1 _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 0CE4 _ 8B. 45, EC
        mov     edx, dword [ebp-0CH]                    ; 0CE7 _ 8B. 55, F4
        mov     dword [eax+0B4H], edx                   ; 0CEA _ 89. 90, 000000B4
        mov     eax, dword [ebp-0CH]                    ; 0CF0 _ 8B. 45, F4
        mov     edx, dword [ebp-14H]                    ; 0CF3 _ 8B. 55, EC
        mov     dword [eax+20H], edx                    ; 0CF6 _ 89. 50, 20
        mov     eax, dword [_current_console_task]      ; 0CF9 _ A1, 00000278(d)
        test    eax, eax                                ; 0CFE _ 85. C0
        jz      ?_039                                   ; 0D00 _ 74, 7C
        mov     eax, dword [_current_console_task]      ; 0D02 _ A1, 00000278(d)
        mov     edx, dword [eax+0B4H]                   ; 0D07 _ 8B. 90, 000000B4
        mov     eax, dword [_shtctl]                    ; 0D0D _ A1, 00000264(d)
        mov     dword [esp+0CH], 0                      ; 0D12 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], ?_386                   ; 0D1A _ C7. 44 24, 08, 0000000F(d)
        mov     dword [esp+4H], edx                     ; 0D22 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0D26 _ 89. 04 24
        call    _make_wtitle8                           ; 0D29 _ E8, 00003412
        mov     eax, dword [_current_console_task]      ; 0D2E _ A1, 00000278(d)
        mov     eax, dword [eax+0B4H]                   ; 0D33 _ 8B. 80, 000000B4
        mov     ebx, dword [eax+8H]                     ; 0D39 _ 8B. 58, 08
        mov     eax, dword [_current_console_task]      ; 0D3C _ A1, 00000278(d)
        mov     eax, dword [eax+0B4H]                   ; 0D41 _ 8B. 80, 000000B4
        mov     ecx, dword [eax+4H]                     ; 0D47 _ 8B. 48, 04
        mov     eax, dword [_current_console_task]      ; 0D4A _ A1, 00000278(d)
        mov     edx, dword [eax+0B4H]                   ; 0D4F _ 8B. 90, 000000B4
        mov     eax, dword [_shtctl]                    ; 0D55 _ A1, 00000264(d)
        mov     dword [esp+14H], ebx                    ; 0D5A _ 89. 5C 24, 14
        mov     dword [esp+10H], ecx                    ; 0D5E _ 89. 4C 24, 10
        mov     dword [esp+0CH], 0                      ; 0D62 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 0D6A _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 0D72 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0D76 _ 89. 04 24
        call    _sheet_refresh                          ; 0D79 _ E8, 00000000(rel)
?_039:  mov     eax, dword [ebp-14H]                    ; 0D7E _ 8B. 45, EC
        mov     dword [_current_console_task], eax      ; 0D81 _ A3, 00000278(d)
        call    _get_addr_code32                        ; 0D86 _ E8, 00000000(rel)
        mov     dword [ebp-18H], eax                    ; 0D8B _ 89. 45, E8
        mov     eax, dword [ebp-18H]                    ; 0D8E _ 8B. 45, E8
        neg     eax                                     ; 0D91 _ F7. D8
        add     eax, _console_task                      ; 0D93 _ 05, 000019BF(d)
        mov     edx, eax                                ; 0D98 _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 0D9A _ 8B. 45, EC
        mov     dword [eax+4CH], edx                    ; 0D9D _ 89. 50, 4C
        mov     eax, dword [ebp-14H]                    ; 0DA0 _ 8B. 45, EC
        mov     dword [eax+74H], 0                      ; 0DA3 _ C7. 40, 74, 00000000
        mov     eax, dword [ebp-14H]                    ; 0DAA _ 8B. 45, EC
        mov     dword [eax+78H], 8                      ; 0DAD _ C7. 40, 78, 00000008
        mov     eax, dword [ebp-14H]                    ; 0DB4 _ 8B. 45, EC
        mov     dword [eax+7CH], 32                     ; 0DB7 _ C7. 40, 7C, 00000020
        mov     eax, dword [ebp-14H]                    ; 0DBE _ 8B. 45, EC
        mov     dword [eax+80H], 24                     ; 0DC1 _ C7. 80, 00000080, 00000018
        mov     eax, dword [ebp-14H]                    ; 0DCB _ 8B. 45, EC
        mov     dword [eax+84H], 0                      ; 0DCE _ C7. 80, 00000084, 00000000
        mov     eax, dword [ebp-14H]                    ; 0DD8 _ 8B. 45, EC
        mov     dword [eax+88H], 16                     ; 0DDB _ C7. 80, 00000088, 00000010
        mov     eax, dword [_memman]                    ; 0DE5 _ A1, 00000000(d)
        mov     dword [esp+4H], 65536                   ; 0DEA _ C7. 44 24, 04, 00010000
        mov     dword [esp], eax                        ; 0DF2 _ 89. 04 24
        call    _memman_alloc_4k                        ; 0DF5 _ E8, 00000000(rel)
        mov     edx, eax                                ; 0DFA _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 0DFC _ 8B. 45, EC
        mov     dword [eax+0B8H], edx                   ; 0DFF _ 89. 90, 000000B8
        mov     eax, dword [ebp-14H]                    ; 0E05 _ 8B. 45, EC
        mov     eax, dword [eax+0B8H]                   ; 0E08 _ 8B. 80, 000000B8
        lea     edx, [eax+3F4H]                         ; 0E0E _ 8D. 90, 000003F4
        mov     eax, dword [ebp-14H]                    ; 0E14 _ 8B. 45, EC
        mov     dword [eax+64H], edx                    ; 0E17 _ 89. 50, 64
        mov     eax, dword [ebp-14H]                    ; 0E1A _ 8B. 45, EC
        mov     eax, dword [eax+64H]                    ; 0E1D _ 8B. 40, 64
        add     eax, 4                                  ; 0E20 _ 83. C0, 04
        mov     edx, eax                                ; 0E23 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 0E25 _ 8B. 45, F4
        mov     dword [edx], eax                        ; 0E28 _ 89. 02
        mov     eax, dword [_memman]                    ; 0E2A _ A1, 00000000(d)
        mov     dword [esp], eax                        ; 0E2F _ 89. 04 24
        call    _memman_total                           ; 0E32 _ E8, 00000000(rel)
        mov     edx, eax                                ; 0E37 _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 0E39 _ 8B. 45, EC
        mov     eax, dword [eax+64H]                    ; 0E3C _ 8B. 40, 64
        add     eax, 8                                  ; 0E3F _ 83. C0, 08
        mov     dword [eax], edx                        ; 0E42 _ 89. 10
        mov     eax, dword [_memman]                    ; 0E44 _ A1, 00000000(d)
        mov     dword [esp+4H], 128                     ; 0E49 _ C7. 44 24, 04, 00000080
        mov     dword [esp], eax                        ; 0E51 _ 89. 04 24
        call    _memman_alloc                           ; 0E54 _ E8, 00000000(rel)
        mov     dword [ebp-1CH], eax                    ; 0E59 _ 89. 45, E4
        mov     eax, dword [ebp-14H]                    ; 0E5C _ 8B. 45, EC
        add     eax, 16                                 ; 0E5F _ 83. C0, 10
        mov     edx, dword [ebp-14H]                    ; 0E62 _ 8B. 55, EC
        mov     dword [esp+0CH], edx                    ; 0E65 _ 89. 54 24, 0C
        mov     edx, dword [ebp-1CH]                    ; 0E69 _ 8B. 55, E4
        mov     dword [esp+8H], edx                     ; 0E6C _ 89. 54 24, 08
        mov     dword [esp+4H], 128                     ; 0E70 _ C7. 44 24, 04, 00000080
        mov     dword [esp], eax                        ; 0E78 _ 89. 04 24
        call    _fifo8_init                             ; 0E7B _ E8, 00000000(rel)
        mov     dword [esp+8H], 5                       ; 0E80 _ C7. 44 24, 08, 00000005
        mov     dword [esp+4H], 1                       ; 0E88 _ C7. 44 24, 04, 00000001
        mov     eax, dword [ebp-14H]                    ; 0E90 _ 8B. 45, EC
        mov     dword [esp], eax                        ; 0E93 _ 89. 04 24
        call    _task_run                               ; 0E96 _ E8, 00000000(rel)
        cmp     dword [ebp+8H], 0                       ; 0E9B _ 83. 7D, 08, 00
        jnz     ?_040                                   ; 0E9F _ 75, 0A
        mov     eax, dword [ebp-14H]                    ; 0EA1 _ 8B. 45, EC
        mov     eax, dword [eax]                        ; 0EA4 _ 8B. 00
        mov     dword [_first_task_cons_selector], eax  ; 0EA6 _ A3, 00000008(d)
?_040:  mov     eax, dword [ebp-0CH]                    ; 0EAB _ 8B. 45, F4
        add     esp, 68                                 ; 0EAE _ 83. C4, 44
        pop     ebx                                     ; 0EB1 _ 5B
        pop     ebp                                     ; 0EB2 _ 5D
        ret                                             ; 0EB3 _ C3
; _launch_console End of function

_kill_process:; Function begin
        push    ebp                                     ; 0EB4 _ 55
        mov     ebp, esp                                ; 0EB5 _ 89. E5
        sub     esp, 40                                 ; 0EB7 _ 83. EC, 28
        call    _task_now                               ; 0EBA _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 0EBF _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 0EC2 _ 8B. 45, F4
        mov     edx, dword [eax+94H]                    ; 0EC5 _ 8B. 90, 00000094
        mov     eax, dword [ebp-0CH]                    ; 0ECB _ 8B. 45, F4
        mov     eax, dword [eax+9CH]                    ; 0ECE _ 8B. 80, 0000009C
        mov     dword [esp+4H], edx                     ; 0ED4 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0ED8 _ 89. 04 24
        call    _cons_newline                           ; 0EDB _ E8, 000019C7
        mov     eax, dword [ebp-0CH]                    ; 0EE0 _ 8B. 45, F4
        mov     eax, dword [eax+9CH]                    ; 0EE3 _ 8B. 80, 0000009C
        lea     edx, [eax+10H]                          ; 0EE9 _ 8D. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 0EEC _ 8B. 45, F4
        mov     dword [eax+9CH], edx                    ; 0EEF _ 89. 90, 0000009C
        mov     eax, dword [ebp-0CH]                    ; 0EF5 _ 8B. 45, F4
        add     eax, 48                                 ; 0EF8 _ 83. C0, 30
        mov     dword [esp], eax                        ; 0EFB _ 89. 04 24
        call    _asm_end_app                            ; 0EFE _ E8, 00000000(rel)
        nop                                             ; 0F03 _ 90
        leave                                           ; 0F04 _ C9
        ret                                             ; 0F05 _ C3
; _kill_process End of function

_cmd_dir:; Function begin
        push    ebp                                     ; 0F06 _ 55
        mov     ebp, esp                                ; 0F07 _ 89. E5
        push    ebx                                     ; 0F09 _ 53
        sub     esp, 68                                 ; 0F0A _ 83. EC, 44
        call    _task_now                               ; 0F0D _ E8, 00000000(rel)
        mov     dword [ebp-18H], eax                    ; 0F12 _ 89. 45, E8
        mov     dword [ebp-0CH], 88064                  ; 0F15 _ C7. 45, F4, 00015800
        mov     eax, dword [_memman]                    ; 0F1C _ A1, 00000000(d)
        mov     dword [esp+4H], 13                      ; 0F21 _ C7. 44 24, 04, 0000000D
        mov     dword [esp], eax                        ; 0F29 _ 89. 04 24
        call    _memman_alloc                           ; 0F2C _ E8, 00000000(rel)
        mov     dword [ebp-1CH], eax                    ; 0F31 _ 89. 45, E4
        mov     eax, dword [ebp-1CH]                    ; 0F34 _ 8B. 45, E4
        add     eax, 12                                 ; 0F37 _ 83. C0, 0C
        mov     byte [eax], 0                           ; 0F3A _ C6. 00, 00
        jmp     ?_048                                   ; 0F3D _ E9, 00000143

?_041:  mov     dword [ebp-10H], 0                      ; 0F42 _ C7. 45, F0, 00000000
        jmp     ?_043                                   ; 0F49 _ EB, 2A

?_042:  mov     edx, dword [ebp-0CH]                    ; 0F4B _ 8B. 55, F4
        mov     eax, dword [ebp-10H]                    ; 0F4E _ 8B. 45, F0
        add     eax, edx                                ; 0F51 _ 01. D0
        movzx   eax, byte [eax]                         ; 0F53 _ 0F B6. 00
        test    al, al                                  ; 0F56 _ 84. C0
        jz      ?_044                                   ; 0F58 _ 74, 23
        mov     edx, dword [ebp-0CH]                    ; 0F5A _ 8B. 55, F4
        mov     eax, dword [ebp-10H]                    ; 0F5D _ 8B. 45, F0
        add     eax, edx                                ; 0F60 _ 01. D0
        movzx   ecx, byte [eax]                         ; 0F62 _ 0F B6. 08
        mov     edx, dword [ebp-10H]                    ; 0F65 _ 8B. 55, F0
        mov     eax, dword [ebp-1CH]                    ; 0F68 _ 8B. 45, E4
        add     eax, edx                                ; 0F6B _ 01. D0
        mov     edx, ecx                                ; 0F6D _ 89. CA
        mov     byte [eax], dl                          ; 0F6F _ 88. 10
        add     dword [ebp-10H], 1                      ; 0F71 _ 83. 45, F0, 01
?_043:  cmp     dword [ebp-10H], 7                      ; 0F75 _ 83. 7D, F0, 07
        jle     ?_042                                   ; 0F79 _ 7E, D0
        jmp     ?_045                                   ; 0F7B _ EB, 01

?_044:  nop                                             ; 0F7D _ 90
?_045:  mov     dword [ebp-14H], 0                      ; 0F7E _ C7. 45, EC, 00000000
        mov     edx, dword [ebp-10H]                    ; 0F85 _ 8B. 55, F0
        mov     eax, dword [ebp-1CH]                    ; 0F88 _ 8B. 45, E4
        add     eax, edx                                ; 0F8B _ 01. D0
        mov     byte [eax], 46                          ; 0F8D _ C6. 00, 2E
        add     dword [ebp-10H], 1                      ; 0F90 _ 83. 45, F0, 01
        mov     dword [ebp-14H], 0                      ; 0F94 _ C7. 45, EC, 00000000
        jmp     ?_047                                   ; 0F9B _ EB, 22

?_046:  mov     edx, dword [ebp-0CH]                    ; 0F9D _ 8B. 55, F4
        mov     eax, dword [ebp-14H]                    ; 0FA0 _ 8B. 45, EC
        add     eax, edx                                ; 0FA3 _ 01. D0
        add     eax, 8                                  ; 0FA5 _ 83. C0, 08
        movzx   ecx, byte [eax]                         ; 0FA8 _ 0F B6. 08
        mov     edx, dword [ebp-10H]                    ; 0FAB _ 8B. 55, F0
        mov     eax, dword [ebp-1CH]                    ; 0FAE _ 8B. 45, E4
        add     eax, edx                                ; 0FB1 _ 01. D0
        mov     edx, ecx                                ; 0FB3 _ 89. CA
        mov     byte [eax], dl                          ; 0FB5 _ 88. 10
        add     dword [ebp-10H], 1                      ; 0FB7 _ 83. 45, F0, 01
        add     dword [ebp-14H], 1                      ; 0FBB _ 83. 45, EC, 01
?_047:  cmp     dword [ebp-14H], 2                      ; 0FBF _ 83. 7D, EC, 02
        jle     ?_046                                   ; 0FC3 _ 7E, D8
        mov     eax, dword [ebp-18H]                    ; 0FC5 _ 8B. 45, E8
        mov     ecx, dword [eax+9CH]                    ; 0FC8 _ 8B. 88, 0000009C
        mov     eax, dword [ebp-18H]                    ; 0FCE _ 8B. 45, E8
        mov     edx, dword [eax+94H]                    ; 0FD1 _ 8B. 90, 00000094
        mov     eax, dword [_shtctl]                    ; 0FD7 _ A1, 00000264(d)
        mov     ebx, dword [ebp-1CH]                    ; 0FDC _ 8B. 5D, E4
        mov     dword [esp+14H], ebx                    ; 0FDF _ 89. 5C 24, 14
        mov     dword [esp+10H], 7                      ; 0FE3 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ecx                    ; 0FEB _ 89. 4C 24, 0C
        mov     dword [esp+8H], 16                      ; 0FEF _ C7. 44 24, 08, 00000010
        mov     dword [esp+4H], edx                     ; 0FF7 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0FFB _ 89. 04 24
        call    _showString                             ; 0FFE _ E8, 00001DF2
        mov     dword [ebp-20H], 136                    ; 1003 _ C7. 45, E0, 00000088
        mov     eax, dword [ebp-0CH]                    ; 100A _ 8B. 45, F4
        mov     eax, dword [eax+1CH]                    ; 100D _ 8B. 40, 1C
        mov     dword [esp], eax                        ; 1010 _ 89. 04 24
        call    _intToHexStr                            ; 1013 _ E8, 00002897
        mov     dword [ebp-24H], eax                    ; 1018 _ 89. 45, DC
        mov     eax, dword [ebp-18H]                    ; 101B _ 8B. 45, E8
        mov     ecx, dword [eax+9CH]                    ; 101E _ 8B. 88, 0000009C
        mov     eax, dword [ebp-18H]                    ; 1024 _ 8B. 45, E8
        mov     edx, dword [eax+94H]                    ; 1027 _ 8B. 90, 00000094
        mov     eax, dword [_shtctl]                    ; 102D _ A1, 00000264(d)
        mov     ebx, dword [ebp-24H]                    ; 1032 _ 8B. 5D, DC
        mov     dword [esp+14H], ebx                    ; 1035 _ 89. 5C 24, 14
        mov     dword [esp+10H], 7                      ; 1039 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ecx                    ; 1041 _ 89. 4C 24, 0C
        mov     ecx, dword [ebp-20H]                    ; 1045 _ 8B. 4D, E0
        mov     dword [esp+8H], ecx                     ; 1048 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 104C _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1050 _ 89. 04 24
        call    _showString                             ; 1053 _ E8, 00001D9D
        mov     eax, dword [ebp-18H]                    ; 1058 _ 8B. 45, E8
        mov     edx, dword [eax+94H]                    ; 105B _ 8B. 90, 00000094
        mov     eax, dword [ebp-18H]                    ; 1061 _ 8B. 45, E8
        mov     eax, dword [eax+9CH]                    ; 1064 _ 8B. 80, 0000009C
        mov     dword [esp+4H], edx                     ; 106A _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 106E _ 89. 04 24
        call    _cons_newline                           ; 1071 _ E8, 00001831
        mov     edx, eax                                ; 1076 _ 89. C2
        mov     eax, dword [ebp-18H]                    ; 1078 _ 8B. 45, E8
        mov     dword [eax+9CH], edx                    ; 107B _ 89. 90, 0000009C
        add     dword [ebp-0CH], 32                     ; 1081 _ 83. 45, F4, 20
?_048:  mov     eax, dword [ebp-0CH]                    ; 1085 _ 8B. 45, F4
        movzx   eax, byte [eax]                         ; 1088 _ 0F B6. 00
        test    al, al                                  ; 108B _ 84. C0
        jne     ?_041                                   ; 108D _ 0F 85, FFFFFEAF
        mov     edx, dword [ebp-1CH]                    ; 1093 _ 8B. 55, E4
        mov     eax, dword [_memman]                    ; 1096 _ A1, 00000000(d)
        mov     dword [esp+8H], 13                      ; 109B _ C7. 44 24, 08, 0000000D
        mov     dword [esp+4H], edx                     ; 10A3 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 10A7 _ 89. 04 24
        call    _memman_free                            ; 10AA _ E8, 00000000(rel)
        nop                                             ; 10AF _ 90
        add     esp, 68                                 ; 10B0 _ 83. C4, 44
        pop     ebx                                     ; 10B3 _ 5B
        pop     ebp                                     ; 10B4 _ 5D
        ret                                             ; 10B5 _ C3
; _cmd_dir End of function

_cmd_type:; Function begin
        push    ebp                                     ; 10B6 _ 55
        mov     ebp, esp                                ; 10B7 _ 89. E5
        push    esi                                     ; 10B9 _ 56
        push    ebx                                     ; 10BA _ 53
        sub     esp, 96                                 ; 10BB _ 83. EC, 60
        call    _task_now                               ; 10BE _ E8, 00000000(rel)
        mov     dword [ebp-24H], eax                    ; 10C3 _ 89. 45, DC
        mov     eax, dword [ebp-24H]                    ; 10C6 _ 8B. 45, DC
        mov     eax, dword [eax+94H]                    ; 10C9 _ 8B. 80, 00000094
        test    eax, eax                                ; 10CF _ 85. C0
        je      ?_069                                   ; 10D1 _ 0F 84, 0000038F
        mov     eax, dword [_memman]                    ; 10D7 _ A1, 00000000(d)
        mov     dword [esp+4H], 13                      ; 10DC _ C7. 44 24, 04, 0000000D
        mov     dword [esp], eax                        ; 10E4 _ 89. 04 24
        call    _memman_alloc                           ; 10E7 _ E8, 00000000(rel)
        mov     dword [ebp-28H], eax                    ; 10EC _ 89. 45, D8
        mov     eax, dword [ebp-28H]                    ; 10EF _ 8B. 45, D8
        add     eax, 12                                 ; 10F2 _ 83. C0, 0C
        mov     byte [eax], 0                           ; 10F5 _ C6. 00, 00
        mov     dword [ebp-0CH], 0                      ; 10F8 _ C7. 45, F4, 00000000
        mov     dword [ebp-10H], 5                      ; 10FF _ C7. 45, F0, 00000005
        mov     dword [ebp-10H], 5                      ; 1106 _ C7. 45, F0, 00000005
        jmp     ?_050                                   ; 110D _ EB, 2C

?_049:  mov     edx, dword [ebp-10H]                    ; 110F _ 8B. 55, F0
        mov     eax, dword [ebp+8H]                     ; 1112 _ 8B. 45, 08
        add     eax, edx                                ; 1115 _ 01. D0
        movzx   eax, byte [eax]                         ; 1117 _ 0F B6. 00
        test    al, al                                  ; 111A _ 84. C0
        jz      ?_051                                   ; 111C _ 74, 25
        mov     edx, dword [ebp-10H]                    ; 111E _ 8B. 55, F0
        mov     eax, dword [ebp+8H]                     ; 1121 _ 8B. 45, 08
        add     eax, edx                                ; 1124 _ 01. D0
        mov     ecx, dword [ebp-0CH]                    ; 1126 _ 8B. 4D, F4
        mov     edx, dword [ebp-28H]                    ; 1129 _ 8B. 55, D8
        add     edx, ecx                                ; 112C _ 01. CA
        movzx   eax, byte [eax]                         ; 112E _ 0F B6. 00
        mov     byte [edx], al                          ; 1131 _ 88. 02
        add     dword [ebp-0CH], 1                      ; 1133 _ 83. 45, F4, 01
        add     dword [ebp-10H], 1                      ; 1137 _ 83. 45, F0, 01
?_050:  cmp     dword [ebp-10H], 16                     ; 113B _ 83. 7D, F0, 10
        jle     ?_049                                   ; 113F _ 7E, CE
        jmp     ?_052                                   ; 1141 _ EB, 01

?_051:  nop                                             ; 1143 _ 90
?_052:  mov     edx, dword [ebp-0CH]                    ; 1144 _ 8B. 55, F4
        mov     eax, dword [ebp-28H]                    ; 1147 _ 8B. 45, D8
        add     eax, edx                                ; 114A _ 01. D0
        mov     byte [eax], 0                           ; 114C _ C6. 00, 00
        mov     dword [ebp-14H], 88064                  ; 114F _ C7. 45, EC, 00015800
        jmp     ?_067                                   ; 1156 _ E9, 000002A9

?_053:  mov     byte [ebp-31H], 0                       ; 115B _ C6. 45, CF, 00
        mov     dword [ebp-18H], 0                      ; 115F _ C7. 45, E8, 00000000
        jmp     ?_055                                   ; 1166 _ EB, 2A

?_054:  mov     edx, dword [ebp-14H]                    ; 1168 _ 8B. 55, EC
        mov     eax, dword [ebp-18H]                    ; 116B _ 8B. 45, E8
        add     eax, edx                                ; 116E _ 01. D0
        movzx   eax, byte [eax]                         ; 1170 _ 0F B6. 00
        test    al, al                                  ; 1173 _ 84. C0
        jz      ?_056                                   ; 1175 _ 74, 23
        mov     edx, dword [ebp-14H]                    ; 1177 _ 8B. 55, EC
        mov     eax, dword [ebp-18H]                    ; 117A _ 8B. 45, E8
        add     eax, edx                                ; 117D _ 01. D0
        movzx   eax, byte [eax]                         ; 117F _ 0F B6. 00
        mov     ecx, eax                                ; 1182 _ 89. C1
        lea     eax, [ebp-3DH]                          ; 1184 _ 8D. 45, C3
        mov     edx, dword [ebp-18H]                    ; 1187 _ 8B. 55, E8
        add     eax, edx                                ; 118A _ 01. D0
        mov     byte [eax], cl                          ; 118C _ 88. 08
        add     dword [ebp-18H], 1                      ; 118E _ 83. 45, E8, 01
?_055:  cmp     dword [ebp-18H], 7                      ; 1192 _ 83. 7D, E8, 07
        jle     ?_054                                   ; 1196 _ 7E, D0
        jmp     ?_057                                   ; 1198 _ EB, 01

?_056:  nop                                             ; 119A _ 90
?_057:  mov     dword [ebp-1CH], 0                      ; 119B _ C7. 45, E4, 00000000
        lea     eax, [ebp-3DH]                          ; 11A2 _ 8D. 45, C3
        mov     edx, dword [ebp-18H]                    ; 11A5 _ 8B. 55, E8
        add     eax, edx                                ; 11A8 _ 01. D0
        mov     byte [eax], 46                          ; 11AA _ C6. 00, 2E
        add     dword [ebp-18H], 1                      ; 11AD _ 83. 45, E8, 01
        mov     dword [ebp-1CH], 0                      ; 11B1 _ C7. 45, E4, 00000000
        jmp     ?_059                                   ; 11B8 _ EB, 22

?_058:  mov     edx, dword [ebp-14H]                    ; 11BA _ 8B. 55, EC
        mov     eax, dword [ebp-1CH]                    ; 11BD _ 8B. 45, E4
        add     eax, edx                                ; 11C0 _ 01. D0
        add     eax, 8                                  ; 11C2 _ 83. C0, 08
        movzx   eax, byte [eax]                         ; 11C5 _ 0F B6. 00
        mov     ecx, eax                                ; 11C8 _ 89. C1
        lea     eax, [ebp-3DH]                          ; 11CA _ 8D. 45, C3
        mov     edx, dword [ebp-18H]                    ; 11CD _ 8B. 55, E8
        add     eax, edx                                ; 11D0 _ 01. D0
        mov     byte [eax], cl                          ; 11D2 _ 88. 08
        add     dword [ebp-18H], 1                      ; 11D4 _ 83. 45, E8, 01
        add     dword [ebp-1CH], 1                      ; 11D8 _ 83. 45, E4, 01
?_059:  cmp     dword [ebp-1CH], 2                      ; 11DC _ 83. 7D, E4, 02
        jle     ?_058                                   ; 11E0 _ 7E, D8
        lea     eax, [ebp-3DH]                          ; 11E2 _ 8D. 45, C3
        mov     dword [esp+4H], eax                     ; 11E5 _ 89. 44 24, 04
        mov     eax, dword [ebp-28H]                    ; 11E9 _ 8B. 45, D8
        mov     dword [esp], eax                        ; 11EC _ 89. 04 24
        call    _strcmp                                 ; 11EF _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 11F4 _ 83. F8, 01
        jne     ?_066                                   ; 11F7 _ 0F 85, 00000203
        mov     dword [ebp-2CH], 97280                  ; 11FD _ C7. 45, D4, 00017C00
        mov     eax, dword [ebp-14H]                    ; 1204 _ 8B. 45, EC
        movzx   eax, word [eax+1AH]                     ; 1207 _ 0F B7. 40, 1A
        movzx   eax, ax                                 ; 120B _ 0F B7. C0
        shl     eax, 9                                  ; 120E _ C1. E0, 09
        add     dword [ebp-2CH], eax                    ; 1211 _ 01. 45, D4
        mov     eax, dword [ebp-14H]                    ; 1214 _ 8B. 45, EC
        mov     eax, dword [eax+1CH]                    ; 1217 _ 8B. 40, 1C
        mov     dword [ebp-30H], eax                    ; 121A _ 89. 45, D0
        mov     dword [ebp-20H], 0                      ; 121D _ C7. 45, E0, 00000000
        mov     eax, dword [ebp-24H]                    ; 1224 _ 8B. 45, DC
        mov     dword [eax+98H], 16                     ; 1227 _ C7. 80, 00000098, 00000010
        mov     dword [ebp-20H], 0                      ; 1231 _ C7. 45, E0, 00000000
        jmp     ?_065                                   ; 1238 _ E9, 000001B4

?_060:  mov     edx, dword [ebp-20H]                    ; 123D _ 8B. 55, E0
        mov     eax, dword [ebp-2CH]                    ; 1240 _ 8B. 45, D4
        add     eax, edx                                ; 1243 _ 01. D0
        movzx   eax, byte [eax]                         ; 1245 _ 0F B6. 00
        mov     byte [ebp-3FH], al                      ; 1248 _ 88. 45, C1
        mov     byte [ebp-3EH], 0                       ; 124B _ C6. 45, C2, 00
        movzx   eax, byte [ebp-3FH]                     ; 124F _ 0F B6. 45, C1
        cmp     al, 9                                   ; 1253 _ 3C, 09
        jne     ?_062                                   ; 1255 _ 0F 85, 000000A4
?_061:  mov     eax, dword [ebp-24H]                    ; 125B _ 8B. 45, DC
        mov     ebx, dword [eax+9CH]                    ; 125E _ 8B. 98, 0000009C
        mov     eax, dword [ebp-24H]                    ; 1264 _ 8B. 45, DC
        mov     ecx, dword [eax+98H]                    ; 1267 _ 8B. 88, 00000098
        mov     eax, dword [ebp-24H]                    ; 126D _ 8B. 45, DC
        mov     edx, dword [eax+94H]                    ; 1270 _ 8B. 90, 00000094
        mov     eax, dword [_shtctl]                    ; 1276 _ A1, 00000264(d)
        mov     dword [esp+14H], ?_387                  ; 127B _ C7. 44 24, 14, 00000017(d)
        mov     dword [esp+10H], 7                      ; 1283 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ebx                    ; 128B _ 89. 5C 24, 0C
        mov     dword [esp+8H], ecx                     ; 128F _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 1293 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1297 _ 89. 04 24
        call    _showString                             ; 129A _ E8, 00001B56
        mov     eax, dword [ebp-24H]                    ; 129F _ 8B. 45, DC
        mov     eax, dword [eax+98H]                    ; 12A2 _ 8B. 80, 00000098
        lea     edx, [eax+8H]                           ; 12A8 _ 8D. 50, 08
        mov     eax, dword [ebp-24H]                    ; 12AB _ 8B. 45, DC
        mov     dword [eax+98H], edx                    ; 12AE _ 89. 90, 00000098
        mov     eax, dword [ebp-24H]                    ; 12B4 _ 8B. 45, DC
        mov     eax, dword [eax+98H]                    ; 12B7 _ 8B. 80, 00000098
        cmp     eax, 248                                ; 12BD _ 3D, 000000F8
        jnz     ?_061                                   ; 12C2 _ 75, 97
        mov     eax, dword [ebp-24H]                    ; 12C4 _ 8B. 45, DC
        mov     dword [eax+98H], 8                      ; 12C7 _ C7. 80, 00000098, 00000008
        mov     eax, dword [ebp-24H]                    ; 12D1 _ 8B. 45, DC
        mov     edx, dword [eax+94H]                    ; 12D4 _ 8B. 90, 00000094
        mov     eax, dword [ebp-24H]                    ; 12DA _ 8B. 45, DC
        mov     eax, dword [eax+9CH]                    ; 12DD _ 8B. 80, 0000009C
        mov     dword [esp+4H], edx                     ; 12E3 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 12E7 _ 89. 04 24
        call    _cons_newline                           ; 12EA _ E8, 000015B8
        mov     edx, eax                                ; 12EF _ 89. C2
        mov     eax, dword [ebp-24H]                    ; 12F1 _ 8B. 45, DC
        mov     dword [eax+9CH], edx                    ; 12F4 _ 89. 90, 0000009C
        jmp     ?_061                                   ; 12FA _ E9, FFFFFF5C

?_062:  movzx   eax, byte [ebp-3FH]                     ; 12FF _ 0F B6. 45, C1
        cmp     al, 10                                  ; 1303 _ 3C, 0A
        jnz     ?_063                                   ; 1305 _ 75, 3B
        mov     eax, dword [ebp-24H]                    ; 1307 _ 8B. 45, DC
        mov     dword [eax+98H], 8                      ; 130A _ C7. 80, 00000098, 00000008
        mov     eax, dword [ebp-24H]                    ; 1314 _ 8B. 45, DC
        mov     edx, dword [eax+94H]                    ; 1317 _ 8B. 90, 00000094
        mov     eax, dword [ebp-24H]                    ; 131D _ 8B. 45, DC
        mov     eax, dword [eax+9CH]                    ; 1320 _ 8B. 80, 0000009C
        mov     dword [esp+4H], edx                     ; 1326 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 132A _ 89. 04 24
        call    _cons_newline                           ; 132D _ E8, 00001575
        mov     edx, eax                                ; 1332 _ 89. C2
        mov     eax, dword [ebp-24H]                    ; 1334 _ 8B. 45, DC
        mov     dword [eax+9CH], edx                    ; 1337 _ 89. 90, 0000009C
        jmp     ?_064                                   ; 133D _ E9, 000000AB

?_063:  movzx   eax, byte [ebp-3FH]                     ; 1342 _ 0F B6. 45, C1
        cmp     al, 13                                  ; 1346 _ 3C, 0D
        je      ?_064                                   ; 1348 _ 0F 84, 0000009F
        mov     eax, dword [ebp-24H]                    ; 134E _ 8B. 45, DC
        mov     esi, dword [eax+9CH]                    ; 1351 _ 8B. B0, 0000009C
        mov     eax, dword [ebp-24H]                    ; 1357 _ 8B. 45, DC
        mov     ebx, dword [eax+98H]                    ; 135A _ 8B. 98, 00000098
        mov     eax, dword [ebp-24H]                    ; 1360 _ 8B. 45, DC
        mov     ecx, dword [eax+94H]                    ; 1363 _ 8B. 88, 00000094
        mov     edx, dword [_shtctl]                    ; 1369 _ 8B. 15, 00000264(d)
        lea     eax, [ebp-3FH]                          ; 136F _ 8D. 45, C1
        mov     dword [esp+14H], eax                    ; 1372 _ 89. 44 24, 14
        mov     dword [esp+10H], 7                      ; 1376 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], esi                    ; 137E _ 89. 74 24, 0C
        mov     dword [esp+8H], ebx                     ; 1382 _ 89. 5C 24, 08
        mov     dword [esp+4H], ecx                     ; 1386 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 138A _ 89. 14 24
        call    _showString                             ; 138D _ E8, 00001A63
        mov     eax, dword [ebp-24H]                    ; 1392 _ 8B. 45, DC
        mov     eax, dword [eax+98H]                    ; 1395 _ 8B. 80, 00000098
        lea     edx, [eax+8H]                           ; 139B _ 8D. 50, 08
        mov     eax, dword [ebp-24H]                    ; 139E _ 8B. 45, DC
        mov     dword [eax+98H], edx                    ; 13A1 _ 89. 90, 00000098
        mov     eax, dword [ebp-24H]                    ; 13A7 _ 8B. 45, DC
        mov     eax, dword [eax+98H]                    ; 13AA _ 8B. 80, 00000098
        cmp     eax, 248                                ; 13B0 _ 3D, 000000F8
        jnz     ?_064                                   ; 13B5 _ 75, 36
        mov     eax, dword [ebp-24H]                    ; 13B7 _ 8B. 45, DC
        mov     dword [eax+98H], 16                     ; 13BA _ C7. 80, 00000098, 00000010
        mov     eax, dword [ebp-24H]                    ; 13C4 _ 8B. 45, DC
        mov     edx, dword [eax+94H]                    ; 13C7 _ 8B. 90, 00000094
        mov     eax, dword [ebp-24H]                    ; 13CD _ 8B. 45, DC
        mov     eax, dword [eax+9CH]                    ; 13D0 _ 8B. 80, 0000009C
        mov     dword [esp+4H], edx                     ; 13D6 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 13DA _ 89. 04 24
        call    _cons_newline                           ; 13DD _ E8, 000014C5
        mov     edx, eax                                ; 13E2 _ 89. C2
        mov     eax, dword [ebp-24H]                    ; 13E4 _ 8B. 45, DC
        mov     dword [eax+9CH], edx                    ; 13E7 _ 89. 90, 0000009C
?_064:  add     dword [ebp-20H], 1                      ; 13ED _ 83. 45, E0, 01
?_065:  mov     eax, dword [ebp-20H]                    ; 13F1 _ 8B. 45, E0
        cmp     eax, dword [ebp-30H]                    ; 13F4 _ 3B. 45, D0
        jl      ?_060                                   ; 13F7 _ 0F 8C, FFFFFE40
        nop                                             ; 13FD _ 90
        jmp     ?_068                                   ; 13FE _ EB, 12

?_066:  add     dword [ebp-14H], 32                     ; 1400 _ 83. 45, EC, 20
?_067:  mov     eax, dword [ebp-14H]                    ; 1404 _ 8B. 45, EC
        movzx   eax, byte [eax]                         ; 1407 _ 0F B6. 00
        test    al, al                                  ; 140A _ 84. C0
        jne     ?_053                                   ; 140C _ 0F 85, FFFFFD49
?_068:  mov     eax, dword [ebp-24H]                    ; 1412 _ 8B. 45, DC
        mov     edx, dword [eax+94H]                    ; 1415 _ 8B. 90, 00000094
        mov     eax, dword [ebp-24H]                    ; 141B _ 8B. 45, DC
        mov     eax, dword [eax+9CH]                    ; 141E _ 8B. 80, 0000009C
        mov     dword [esp+4H], edx                     ; 1424 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1428 _ 89. 04 24
        call    _cons_newline                           ; 142B _ E8, 00001477
        mov     edx, eax                                ; 1430 _ 89. C2
        mov     eax, dword [ebp-24H]                    ; 1432 _ 8B. 45, DC
        mov     dword [eax+9CH], edx                    ; 1435 _ 89. 90, 0000009C
        mov     edx, dword [ebp-28H]                    ; 143B _ 8B. 55, D8
        mov     eax, dword [_memman]                    ; 143E _ A1, 00000000(d)
        mov     dword [esp+8H], 13                      ; 1443 _ C7. 44 24, 08, 0000000D
        mov     dword [esp+4H], edx                     ; 144B _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 144F _ 89. 04 24
        call    _memman_free                            ; 1452 _ E8, 00000000(rel)
        mov     eax, dword [ebp-24H]                    ; 1457 _ 8B. 45, DC
        mov     dword [eax+98H], 16                     ; 145A _ C7. 80, 00000098, 00000010
        jmp     ?_070                                   ; 1464 _ EB, 01

?_069:  nop                                             ; 1466 _ 90
?_070:  add     esp, 96                                 ; 1467 _ 83. C4, 60
        pop     ebx                                     ; 146A _ 5B
        pop     esi                                     ; 146B _ 5E
        pop     ebp                                     ; 146C _ 5D
        ret                                             ; 146D _ C3
; _cmd_type End of function

_cmd_mem:; Function begin
        push    ebp                                     ; 146E _ 55
        mov     ebp, esp                                ; 146F _ 89. E5
        push    ebx                                     ; 1471 _ 53
        sub     esp, 52                                 ; 1472 _ 83. EC, 34
        call    _task_now                               ; 1475 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 147A _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 147D _ 8B. 45, F4
        mov     eax, dword [eax+94H]                    ; 1480 _ 8B. 80, 00000094
        test    eax, eax                                ; 1486 _ 85. C0
        je      ?_071                                   ; 1488 _ 0F 84, 00000103
        mov     eax, dword [ebp+8H]                     ; 148E _ 8B. 45, 08
        lea     edx, [eax+3FFH]                         ; 1491 _ 8D. 90, 000003FF
        test    eax, eax                                ; 1497 _ 85. C0
        cmovs   eax, edx                                ; 1499 _ 0F 48. C2
        sar     eax, 10                                 ; 149C _ C1. F8, 0A
        mov     dword [esp], eax                        ; 149F _ 89. 04 24
        call    _intToHexStr                            ; 14A2 _ E8, 00002408
        mov     dword [ebp-10H], eax                    ; 14A7 _ 89. 45, F0
        mov     eax, dword [ebp-0CH]                    ; 14AA _ 8B. 45, F4
        mov     ecx, dword [eax+9CH]                    ; 14AD _ 8B. 88, 0000009C
        mov     eax, dword [ebp-0CH]                    ; 14B3 _ 8B. 45, F4
        mov     edx, dword [eax+94H]                    ; 14B6 _ 8B. 90, 00000094
        mov     eax, dword [_shtctl]                    ; 14BC _ A1, 00000264(d)
        mov     dword [esp+14H], ?_388                  ; 14C1 _ C7. 44 24, 14, 00000019(d)
        mov     dword [esp+10H], 7                      ; 14C9 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ecx                    ; 14D1 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 16                      ; 14D5 _ C7. 44 24, 08, 00000010
        mov     dword [esp+4H], edx                     ; 14DD _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 14E1 _ 89. 04 24
        call    _showString                             ; 14E4 _ E8, 0000190C
        mov     eax, dword [ebp-0CH]                    ; 14E9 _ 8B. 45, F4
        mov     ecx, dword [eax+9CH]                    ; 14EC _ 8B. 88, 0000009C
        mov     eax, dword [ebp-0CH]                    ; 14F2 _ 8B. 45, F4
        mov     edx, dword [eax+94H]                    ; 14F5 _ 8B. 90, 00000094
        mov     eax, dword [_shtctl]                    ; 14FB _ A1, 00000264(d)
        mov     ebx, dword [ebp-10H]                    ; 1500 _ 8B. 5D, F0
        mov     dword [esp+14H], ebx                    ; 1503 _ 89. 5C 24, 14
        mov     dword [esp+10H], 7                      ; 1507 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ecx                    ; 150F _ 89. 4C 24, 0C
        mov     dword [esp+8H], 52                      ; 1513 _ C7. 44 24, 08, 00000034
        mov     dword [esp+4H], edx                     ; 151B _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 151F _ 89. 04 24
        call    _showString                             ; 1522 _ E8, 000018CE
        mov     eax, dword [ebp-0CH]                    ; 1527 _ 8B. 45, F4
        mov     ecx, dword [eax+9CH]                    ; 152A _ 8B. 88, 0000009C
        mov     eax, dword [ebp-0CH]                    ; 1530 _ 8B. 45, F4
        mov     edx, dword [eax+94H]                    ; 1533 _ 8B. 90, 00000094
        mov     eax, dword [_shtctl]                    ; 1539 _ A1, 00000264(d)
        mov     dword [esp+14H], ?_389                  ; 153E _ C7. 44 24, 14, 0000001F(d)
        mov     dword [esp+10H], 7                      ; 1546 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ecx                    ; 154E _ 89. 4C 24, 0C
        mov     dword [esp+8H], 126                     ; 1552 _ C7. 44 24, 08, 0000007E
        mov     dword [esp+4H], edx                     ; 155A _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 155E _ 89. 04 24
        call    _showString                             ; 1561 _ E8, 0000188F
        mov     eax, dword [ebp-0CH]                    ; 1566 _ 8B. 45, F4
        mov     edx, dword [eax+94H]                    ; 1569 _ 8B. 90, 00000094
        mov     eax, dword [ebp-0CH]                    ; 156F _ 8B. 45, F4
        mov     eax, dword [eax+9CH]                    ; 1572 _ 8B. 80, 0000009C
        mov     dword [esp+4H], edx                     ; 1578 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 157C _ 89. 04 24
        call    _cons_newline                           ; 157F _ E8, 00001323
        mov     edx, eax                                ; 1584 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 1586 _ 8B. 45, F4
        mov     dword [eax+9CH], edx                    ; 1589 _ 89. 90, 0000009C
        jmp     ?_072                                   ; 158F _ EB, 01

?_071:  nop                                             ; 1591 _ 90
?_072:  add     esp, 52                                 ; 1592 _ 83. C4, 34
        pop     ebx                                     ; 1595 _ 5B
        pop     ebp                                     ; 1596 _ 5D
        ret                                             ; 1597 _ C3
; _cmd_mem End of function

_cmd_cls:; Function begin
        push    ebp                                     ; 1598 _ 55
        mov     ebp, esp                                ; 1599 _ 89. E5
        sub     esp, 56                                 ; 159B _ 83. EC, 38
        call    _task_now                               ; 159E _ E8, 00000000(rel)
        mov     dword [ebp-14H], eax                    ; 15A3 _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 15A6 _ 8B. 45, EC
        mov     eax, dword [eax+94H]                    ; 15A9 _ 8B. 80, 00000094
        test    eax, eax                                ; 15AF _ 85. C0
        je      ?_077                                   ; 15B1 _ 0F 84, 000000E2
        mov     dword [ebp-0CH], 8                      ; 15B7 _ C7. 45, F4, 00000008
        mov     dword [ebp-10H], 28                     ; 15BE _ C7. 45, F0, 0000001C
        mov     dword [ebp-10H], 28                     ; 15C5 _ C7. 45, F0, 0000001C
        jmp     ?_076                                   ; 15CC _ EB, 3F

?_073:  mov     dword [ebp-0CH], 8                      ; 15CE _ C7. 45, F4, 00000008
        jmp     ?_075                                   ; 15D5 _ EB, 29

?_074:  mov     eax, dword [ebp-14H]                    ; 15D7 _ 8B. 45, EC
        mov     eax, dword [eax+94H]                    ; 15DA _ 8B. 80, 00000094
        mov     edx, dword [eax]                        ; 15E0 _ 8B. 10
        mov     eax, dword [ebp-14H]                    ; 15E2 _ 8B. 45, EC
        mov     eax, dword [eax+94H]                    ; 15E5 _ 8B. 80, 00000094
        mov     eax, dword [eax+4H]                     ; 15EB _ 8B. 40, 04
        imul    eax, dword [ebp-10H]                    ; 15EE _ 0F AF. 45, F0
        mov     ecx, dword [ebp-0CH]                    ; 15F2 _ 8B. 4D, F4
        add     eax, ecx                                ; 15F5 _ 01. C8
        add     eax, edx                                ; 15F7 _ 01. D0
        mov     byte [eax], 0                           ; 15F9 _ C6. 00, 00
        add     dword [ebp-0CH], 1                      ; 15FC _ 83. 45, F4, 01
?_075:  cmp     dword [ebp-0CH], 247                    ; 1600 _ 81. 7D, F4, 000000F7
        jle     ?_074                                   ; 1607 _ 7E, CE
        add     dword [ebp-10H], 1                      ; 1609 _ 83. 45, F0, 01
?_076:  cmp     dword [ebp-10H], 155                    ; 160D _ 81. 7D, F0, 0000009B
        jle     ?_073                                   ; 1614 _ 7E, B8
        mov     eax, dword [ebp-14H]                    ; 1616 _ 8B. 45, EC
        mov     edx, dword [eax+94H]                    ; 1619 _ 8B. 90, 00000094
        mov     eax, dword [_shtctl]                    ; 161F _ A1, 00000264(d)
        mov     dword [esp+14H], 156                    ; 1624 _ C7. 44 24, 14, 0000009C
        mov     dword [esp+10H], 248                    ; 162C _ C7. 44 24, 10, 000000F8
        mov     dword [esp+0CH], 28                     ; 1634 _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 8                       ; 163C _ C7. 44 24, 08, 00000008
        mov     dword [esp+4H], edx                     ; 1644 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1648 _ 89. 04 24
        call    _sheet_refresh                          ; 164B _ E8, 00000000(rel)
        mov     eax, dword [ebp-14H]                    ; 1650 _ 8B. 45, EC
        mov     dword [eax+9CH], 28                     ; 1653 _ C7. 80, 0000009C, 0000001C
        mov     eax, dword [ebp-14H]                    ; 165D _ 8B. 45, EC
        mov     edx, dword [eax+94H]                    ; 1660 _ 8B. 90, 00000094
        mov     eax, dword [_shtctl]                    ; 1666 _ A1, 00000264(d)
        mov     dword [esp+14H], ?_390                  ; 166B _ C7. 44 24, 14, 00000023(d)
        mov     dword [esp+10H], 7                      ; 1673 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 28                     ; 167B _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 8                       ; 1683 _ C7. 44 24, 08, 00000008
        mov     dword [esp+4H], edx                     ; 168B _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 168F _ 89. 04 24
        call    _showString                             ; 1692 _ E8, 0000175E
        jmp     ?_078                                   ; 1697 _ EB, 01

?_077:  nop                                             ; 1699 _ 90
?_078:  leave                                           ; 169A _ C9
        ret                                             ; 169B _ C3
; _cmd_cls End of function

_cmd_execute_program:; Function begin
        push    ebp                                     ; 169C _ 55
        mov     ebp, esp                                ; 169D _ 89. E5
        sub     esp, 72                                 ; 169F _ 83. EC, 48
        call    _io_cli                                 ; 16A2 _ E8, 00000000(rel)
        mov     eax, dword [_memman]                    ; 16A7 _ A1, 00000000(d)
        mov     dword [esp+4H], 16                      ; 16AC _ C7. 44 24, 04, 00000010
        mov     dword [esp], eax                        ; 16B4 _ 89. 04 24
        call    _memman_alloc                           ; 16B7 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 16BC _ 89. 45, F4
        call    _task_now                               ; 16BF _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 16C4 _ 89. 45, F0
        mov     eax, dword [ebp-10H]                    ; 16C7 _ 8B. 45, F0
        mov     edx, dword [ebp-0CH]                    ; 16CA _ 8B. 55, F4
        mov     dword [eax+0B0H], edx                   ; 16CD _ 89. 90, 000000B0
        mov     eax, dword [ebp-0CH]                    ; 16D3 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 16D6 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 16DA _ 8B. 45, 08
        mov     dword [esp], eax                        ; 16DD _ 89. 04 24
        call    _file_loadfile                          ; 16E0 _ E8, 00002E33
        call    _get_addr_gdt                           ; 16E5 _ E8, 00000000(rel)
        mov     dword [ebp-14H], eax                    ; 16EA _ 89. 45, EC
        mov     eax, dword [ebp-10H]                    ; 16ED _ 8B. 45, F0
        mov     edx, dword [eax]                        ; 16F0 _ 8B. 10
        mov     eax, dword [_first_task_cons_selector]  ; 16F2 _ A1, 00000008(d)
        sub     edx, eax                                ; 16F7 _ 29. C2
        mov     eax, edx                                ; 16F9 _ 89. D0
        lea     edx, [eax+7H]                           ; 16FB _ 8D. 50, 07
        test    eax, eax                                ; 16FE _ 85. C0
        cmovs   eax, edx                                ; 1700 _ 0F 48. C2
        sar     eax, 3                                  ; 1703 _ C1. F8, 03
        add     eax, 21                                 ; 1706 _ 83. C0, 15
        mov     dword [ebp-18H], eax                    ; 1709 _ 89. 45, E8
        mov     eax, dword [ebp-10H]                    ; 170C _ 8B. 45, F0
        mov     edx, dword [eax]                        ; 170F _ 8B. 10
        mov     eax, dword [_first_task_cons_selector]  ; 1711 _ A1, 00000008(d)
        sub     edx, eax                                ; 1716 _ 29. C2
        mov     eax, edx                                ; 1718 _ 89. D0
        lea     edx, [eax+7H]                           ; 171A _ 8D. 50, 07
        test    eax, eax                                ; 171D _ 85. C0
        cmovs   eax, edx                                ; 171F _ 0F 48. C2
        sar     eax, 3                                  ; 1722 _ C1. F8, 03
        add     eax, 30                                 ; 1725 _ 83. C0, 1E
        mov     dword [ebp-1CH], eax                    ; 1728 _ 89. 45, E4
        mov     eax, dword [ebp-0CH]                    ; 172B _ 8B. 45, F4
        mov     eax, dword [eax]                        ; 172E _ 8B. 00
        mov     edx, eax                                ; 1730 _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 1732 _ 8B. 45, F0
        add     eax, 188                                ; 1735 _ 05, 000000BC
        mov     dword [esp+0CH], 16634                  ; 173A _ C7. 44 24, 0C, 000040FA
        mov     dword [esp+8H], edx                     ; 1742 _ 89. 54 24, 08
        mov     dword [esp+4H], 1048575                 ; 1746 _ C7. 44 24, 04, 000FFFFF
        mov     dword [esp], eax                        ; 174E _ 89. 04 24
        call    _set_segmdesc                           ; 1751 _ E8, 00000000(rel)
        mov     eax, dword [_memman]                    ; 1756 _ A1, 00000000(d)
        mov     dword [esp+4H], 65536                   ; 175B _ C7. 44 24, 04, 00010000
        mov     dword [esp], eax                        ; 1763 _ 89. 04 24
        call    _memman_alloc_4k                        ; 1766 _ E8, 00000000(rel)
        mov     dword [ebp-20H], eax                    ; 176B _ 89. 45, E0
        mov     eax, dword [ebp-0CH]                    ; 176E _ 8B. 45, F4
        mov     edx, dword [ebp-20H]                    ; 1771 _ 8B. 55, E0
        mov     dword [eax+4H], edx                     ; 1774 _ 89. 50, 04
        mov     edx, dword [ebp-20H]                    ; 1777 _ 8B. 55, E0
        mov     eax, dword [ebp-10H]                    ; 177A _ 8B. 45, F0
        add     eax, 188                                ; 177D _ 05, 000000BC
        add     eax, 8                                  ; 1782 _ 83. C0, 08
        mov     dword [esp+0CH], 16626                  ; 1785 _ C7. 44 24, 0C, 000040F2
        mov     dword [esp+8H], edx                     ; 178D _ 89. 54 24, 08
        mov     dword [esp+4H], 77055                   ; 1791 _ C7. 44 24, 04, 00012CFF
        mov     dword [esp], eax                        ; 1799 _ 89. 04 24
        call    _set_segmdesc                           ; 179C _ E8, 00000000(rel)
        mov     eax, dword [ebp-10H]                    ; 17A1 _ 8B. 45, F0
        mov     dword [eax+30H], 0                      ; 17A4 _ C7. 40, 30, 00000000
        call    _io_sti                                 ; 17AB _ E8, 00000000(rel)
        mov     eax, dword [ebp-10H]                    ; 17B0 _ 8B. 45, F0
        add     eax, 48                                 ; 17B3 _ 83. C0, 30
        mov     dword [esp+10H], eax                    ; 17B6 _ 89. 44 24, 10
        mov     dword [esp+0CH], 12                     ; 17BA _ C7. 44 24, 0C, 0000000C
        mov     dword [esp+8H], 65536                   ; 17C2 _ C7. 44 24, 08, 00010000
        mov     dword [esp+4H], 4                       ; 17CA _ C7. 44 24, 04, 00000004
        mov     dword [esp], 0                          ; 17D2 _ C7. 04 24, 00000000
        call    _start_app                              ; 17D9 _ E8, 00000000(rel)
        call    _io_cli                                 ; 17DE _ E8, 00000000(rel)
        mov     eax, dword [ebp-0CH]                    ; 17E3 _ 8B. 45, F4
        mov     eax, dword [eax+8H]                     ; 17E6 _ 8B. 40, 08
        mov     ecx, eax                                ; 17E9 _ 89. C1
        mov     eax, dword [ebp-0CH]                    ; 17EB _ 8B. 45, F4
        mov     eax, dword [eax]                        ; 17EE _ 8B. 00
        mov     edx, eax                                ; 17F0 _ 89. C2
        mov     eax, dword [_memman]                    ; 17F2 _ A1, 00000000(d)
        mov     dword [esp+8H], ecx                     ; 17F7 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 17FB _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 17FF _ 89. 04 24
        call    _memman_free_4k                         ; 1802 _ E8, 00000000(rel)
        mov     edx, dword [ebp-20H]                    ; 1807 _ 8B. 55, E0
        mov     eax, dword [_memman]                    ; 180A _ A1, 00000000(d)
        mov     dword [esp+8H], 65536                   ; 180F _ C7. 44 24, 08, 00010000
        mov     dword [esp+4H], edx                     ; 1817 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 181B _ 89. 04 24
        call    _memman_free_4k                         ; 181E _ E8, 00000000(rel)
        mov     edx, dword [ebp-0CH]                    ; 1823 _ 8B. 55, F4
        mov     eax, dword [_memman]                    ; 1826 _ A1, 00000000(d)
        mov     dword [esp+8H], 16                      ; 182B _ C7. 44 24, 08, 00000010
        mov     dword [esp+4H], edx                     ; 1833 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1837 _ 89. 04 24
        call    _memman_free                            ; 183A _ E8, 00000000(rel)
        mov     eax, dword [ebp-10H]                    ; 183F _ 8B. 45, F0
        mov     dword [eax+0B0H], 0                     ; 1842 _ C7. 80, 000000B0, 00000000
        call    _io_sti                                 ; 184C _ E8, 00000000(rel)
        nop                                             ; 1851 _ 90
        leave                                           ; 1852 _ C9
        ret                                             ; 1853 _ C3
; _cmd_execute_program End of function

_cmd_start:; Function begin
        push    ebp                                     ; 1854 _ 55
        mov     ebp, esp                                ; 1855 _ 89. E5
        sub     esp, 40                                 ; 1857 _ 83. EC, 28
        mov     eax, dword [_console_count]             ; 185A _ A1, 00000010(d)
        mov     dword [esp], eax                        ; 185F _ 89. 04 24
        call    _launch_console                         ; 1862 _ E8, FFFFF35A
        mov     dword [ebp-10H], eax                    ; 1867 _ 89. 45, F0
        mov     eax, dword [_shtctl]                    ; 186A _ A1, 00000264(d)
        mov     dword [esp+0CH], 176                    ; 186F _ C7. 44 24, 0C, 000000B0
        mov     dword [esp+8H], 156                     ; 1877 _ C7. 44 24, 08, 0000009C
        mov     edx, dword [ebp-10H]                    ; 187F _ 8B. 55, F0
        mov     dword [esp+4H], edx                     ; 1882 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1886 _ 89. 04 24
        call    _sheet_slide                            ; 1889 _ E8, 00000000(rel)
        mov     eax, dword [_shtctl]                    ; 188E _ A1, 00000264(d)
        mov     dword [esp+8H], 1                       ; 1893 _ C7. 44 24, 08, 00000001
        mov     edx, dword [ebp-10H]                    ; 189B _ 8B. 55, F0
        mov     dword [esp+4H], edx                     ; 189E _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 18A2 _ 89. 04 24
        call    _sheet_updown                           ; 18A5 _ E8, 00000000(rel)
        mov     eax, dword [_console_count]             ; 18AA _ A1, 00000010(d)
        add     eax, 1                                  ; 18AF _ 83. C0, 01
        mov     dword [_console_count], eax             ; 18B2 _ A3, 00000010(d)
        mov     eax, dword [ebp-10H]                    ; 18B7 _ 8B. 45, F0
        mov     eax, dword [eax+20H]                    ; 18BA _ 8B. 40, 20
        mov     dword [ebp-14H], eax                    ; 18BD _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 18C0 _ 8B. 45, EC
        mov     dword [eax+28H], 0                      ; 18C3 _ C7. 40, 28, 00000000
        mov     dword [ebp-0CH], 6                      ; 18CA _ C7. 45, F4, 00000006
        jmp     ?_080                                   ; 18D1 _ EB, 24

?_079:  mov     edx, dword [ebp-0CH]                    ; 18D3 _ 8B. 55, F4
        mov     eax, dword [ebp+8H]                     ; 18D6 _ 8B. 45, 08
        add     eax, edx                                ; 18D9 _ 01. D0
        movzx   eax, byte [eax]                         ; 18DB _ 0F B6. 00
        movzx   eax, al                                 ; 18DE _ 0F B6. C0
        mov     edx, dword [ebp-14H]                    ; 18E1 _ 8B. 55, EC
        add     edx, 16                                 ; 18E4 _ 83. C2, 10
        mov     dword [esp+4H], eax                     ; 18E7 _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 18EB _ 89. 14 24
        call    _fifo8_put                              ; 18EE _ E8, 00000000(rel)
        add     dword [ebp-0CH], 1                      ; 18F3 _ 83. 45, F4, 01
?_080:  mov     edx, dword [ebp-0CH]                    ; 18F7 _ 8B. 55, F4
        mov     eax, dword [ebp+8H]                     ; 18FA _ 8B. 45, 08
        add     eax, edx                                ; 18FD _ 01. D0
        movzx   eax, byte [eax]                         ; 18FF _ 0F B6. 00
        test    al, al                                  ; 1902 _ 84. C0
        jnz     ?_079                                   ; 1904 _ 75, CD
        mov     eax, dword [ebp-14H]                    ; 1906 _ 8B. 45, EC
        mov     edx, dword [ebp-14H]                    ; 1909 _ 8B. 55, EC
        mov     dword [eax+28H], edx                    ; 190C _ 89. 50, 28
        mov     eax, dword [ebp-14H]                    ; 190F _ 8B. 45, EC
        add     eax, 16                                 ; 1912 _ 83. C0, 10
        mov     dword [esp+4H], 28                      ; 1915 _ C7. 44 24, 04, 0000001C
        mov     dword [esp], eax                        ; 191D _ 89. 04 24
        call    _fifo8_put                              ; 1920 _ E8, 00000000(rel)
        nop                                             ; 1925 _ 90
        leave                                           ; 1926 _ C9
        ret                                             ; 1927 _ C3
; _cmd_start End of function

_cmd_ncst:; Function begin
        push    ebp                                     ; 1928 _ 55
        mov     ebp, esp                                ; 1929 _ 89. E5
        sub     esp, 40                                 ; 192B _ 83. EC, 28
        mov     eax, dword [_console_count]             ; 192E _ A1, 00000010(d)
        mov     dword [esp], eax                        ; 1933 _ 89. 04 24
        call    _launch_console                         ; 1936 _ E8, FFFFF286
        mov     eax, dword [_console_count]             ; 193B _ A1, 00000010(d)
        add     eax, 1                                  ; 1940 _ 83. C0, 01
        mov     dword [_console_count], eax             ; 1943 _ A3, 00000010(d)
        mov     eax, dword [_current_console_task]      ; 1948 _ A1, 00000278(d)
        mov     dword [ebp-10H], eax                    ; 194D _ 89. 45, F0
        mov     eax, dword [ebp-10H]                    ; 1950 _ 8B. 45, F0
        mov     dword [eax+28H], 0                      ; 1953 _ C7. 40, 28, 00000000
        mov     dword [ebp-0CH], 5                      ; 195A _ C7. 45, F4, 00000005
        mov     dword [ebp-14H], 0                      ; 1961 _ C7. 45, EC, 00000000
        jmp     ?_082                                   ; 1968 _ EB, 24

?_081:  mov     edx, dword [ebp-0CH]                    ; 196A _ 8B. 55, F4
        mov     eax, dword [ebp+8H]                     ; 196D _ 8B. 45, 08
        add     eax, edx                                ; 1970 _ 01. D0
        movzx   eax, byte [eax]                         ; 1972 _ 0F B6. 00
        movzx   eax, al                                 ; 1975 _ 0F B6. C0
        mov     edx, dword [ebp-10H]                    ; 1978 _ 8B. 55, F0
        add     edx, 16                                 ; 197B _ 83. C2, 10
        mov     dword [esp+4H], eax                     ; 197E _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 1982 _ 89. 14 24
        call    _fifo8_put                              ; 1985 _ E8, 00000000(rel)
        add     dword [ebp-0CH], 1                      ; 198A _ 83. 45, F4, 01
?_082:  mov     edx, dword [ebp-0CH]                    ; 198E _ 8B. 55, F4
        mov     eax, dword [ebp+8H]                     ; 1991 _ 8B. 45, 08
        add     eax, edx                                ; 1994 _ 01. D0
        movzx   eax, byte [eax]                         ; 1996 _ 0F B6. 00
        test    al, al                                  ; 1999 _ 84. C0
        jnz     ?_081                                   ; 199B _ 75, CD
        mov     eax, dword [ebp-10H]                    ; 199D _ 8B. 45, F0
        mov     edx, dword [ebp-10H]                    ; 19A0 _ 8B. 55, F0
        mov     dword [eax+28H], edx                    ; 19A3 _ 89. 50, 28
        mov     eax, dword [ebp-10H]                    ; 19A6 _ 8B. 45, F0
        add     eax, 16                                 ; 19A9 _ 83. C0, 10
        mov     dword [esp+4H], 28                      ; 19AC _ C7. 44 24, 04, 0000001C
        mov     dword [esp], eax                        ; 19B4 _ 89. 04 24
        call    _fifo8_put                              ; 19B7 _ E8, 00000000(rel)
        nop                                             ; 19BC _ 90
        leave                                           ; 19BD _ C9
        ret                                             ; 19BE _ C3
; _cmd_ncst End of function

_console_task:; Function begin
        push    ebp                                     ; 19BF _ 55
        mov     ebp, esp                                ; 19C0 _ 89. E5
        push    esi                                     ; 19C2 _ 56
        push    ebx                                     ; 19C3 _ 53
        sub     esp, 112                                ; 19C4 _ 83. EC, 70
        call    _task_now                               ; 19C7 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 19CC _ 89. 45, F0
        mov     dword [ebp-0CH], 0                      ; 19CF _ C7. 45, F4, 00000000
        mov     dword [ebp-14H], 0                      ; 19D6 _ C7. 45, EC, 00000000
        mov     dword [ebp-18H], 0                      ; 19DD _ C7. 45, E8, 00000000
        mov     eax, dword [_memman]                    ; 19E4 _ A1, 00000000(d)
        mov     dword [esp+4H], 30                      ; 19E9 _ C7. 44 24, 04, 0000001E
        mov     dword [esp], eax                        ; 19F1 _ 89. 04 24
        call    _memman_alloc                           ; 19F4 _ E8, 00000000(rel)
        mov     dword [ebp-1CH], eax                    ; 19F9 _ 89. 45, E4
        mov     dword [ebp-20H], 96                     ; 19FC _ C7. 45, E0, 00000060
        mov     dword [ebp-24H], 176                    ; 1A03 _ C7. 45, DC, 000000B0
        mov     eax, dword [ebp-10H]                    ; 1A0A _ 8B. 45, F0
        mov     edx, dword [ebp+8H]                     ; 1A0D _ 8B. 55, 08
        mov     dword [eax+94H], edx                    ; 1A10 _ 89. 90, 00000094
        mov     eax, dword [ebp-10H]                    ; 1A16 _ 8B. 45, F0
        mov     dword [eax+98H], 16                     ; 1A19 _ C7. 80, 00000098, 00000010
        mov     eax, dword [ebp-10H]                    ; 1A23 _ 8B. 45, F0
        mov     dword [eax+9CH], 28                     ; 1A26 _ C7. 80, 0000009C, 0000001C
        mov     eax, dword [ebp-10H]                    ; 1A30 _ 8B. 45, F0
        mov     dword [eax+0A0H], -1                    ; 1A33 _ C7. 80, 000000A0, FFFFFFFF
        call    _timer_alloc                            ; 1A3D _ E8, 00000000(rel)
        mov     dword [ebp-28H], eax                    ; 1A42 _ 89. 45, D8
        mov     eax, dword [ebp-10H]                    ; 1A45 _ 8B. 45, F0
        add     eax, 16                                 ; 1A48 _ 83. C0, 10
        mov     dword [esp+8H], 1                       ; 1A4B _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], eax                     ; 1A53 _ 89. 44 24, 04
        mov     eax, dword [ebp-28H]                    ; 1A57 _ 8B. 45, D8
        mov     dword [esp], eax                        ; 1A5A _ 89. 04 24
        call    _timer_init                             ; 1A5D _ E8, 00000000(rel)
        mov     dword [esp+4H], 50                      ; 1A62 _ C7. 44 24, 04, 00000032
        mov     eax, dword [ebp-28H]                    ; 1A6A _ 8B. 45, D8
        mov     dword [esp], eax                        ; 1A6D _ 89. 04 24
        call    _timer_settime                          ; 1A70 _ E8, 00000000(rel)
        mov     eax, dword [ebp-10H]                    ; 1A75 _ 8B. 45, F0
        mov     edx, dword [ebp-28H]                    ; 1A78 _ 8B. 55, D8
        mov     dword [eax+0A8H], edx                   ; 1A7B _ 89. 90, 000000A8
        mov     eax, dword [ebp-10H]                    ; 1A81 _ 8B. 45, F0
        mov     edx, dword [ebp-1CH]                    ; 1A84 _ 8B. 55, E4
        mov     dword [eax+0ACH], edx                   ; 1A87 _ 89. 90, 000000AC
        mov     eax, dword [_shtctl]                    ; 1A8D _ A1, 00000264(d)
        mov     dword [esp+14H], ?_390                  ; 1A92 _ C7. 44 24, 14, 00000023(d)
        mov     dword [esp+10H], 7                      ; 1A9A _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 28                     ; 1AA2 _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 8                       ; 1AAA _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp+8H]                     ; 1AB2 _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 1AB5 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1AB9 _ 89. 04 24
        call    _showString                             ; 1ABC _ E8, 00001334
        mov     dword [ebp-2CH], 88064                  ; 1AC1 _ C7. 45, D4, 00015800
        mov     dword [ebp-30H], 0                      ; 1AC8 _ C7. 45, D0, 00000000
?_083:  call    _io_cli                                 ; 1ACF _ E8, 00000000(rel)
        call    _task_now                               ; 1AD4 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 1AD9 _ 89. 45, F0
        mov     eax, dword [ebp-10H]                    ; 1ADC _ 8B. 45, F0
        add     eax, 16                                 ; 1ADF _ 83. C0, 10
        mov     dword [esp], eax                        ; 1AE2 _ 89. 04 24
        call    _fifo8_status                           ; 1AE5 _ E8, 00000000(rel)
        test    eax, eax                                ; 1AEA _ 85. C0
        jnz     ?_084                                   ; 1AEC _ 75, 0A
        call    _io_sti                                 ; 1AEE _ E8, 00000000(rel)
        jmp     ?_102                                   ; 1AF3 _ E9, 000004FB

?_084:  mov     eax, dword [ebp-10H]                    ; 1AF8 _ 8B. 45, F0
        add     eax, 16                                 ; 1AFB _ 83. C0, 10
        mov     dword [esp], eax                        ; 1AFE _ 89. 04 24
        call    _fifo8_get                              ; 1B01 _ E8, 00000000(rel)
        mov     dword [ebp-34H], eax                    ; 1B06 _ 89. 45, CC
        cmp     dword [ebp-34H], 1                      ; 1B09 _ 83. 7D, CC, 01
        jg      ?_087                                   ; 1B0D _ 7F, 6E
        cmp     dword [ebp-0CH], 0                      ; 1B0F _ 83. 7D, F4, 00
        js      ?_087                                   ; 1B13 _ 78, 68
        cmp     dword [ebp-34H], 0                      ; 1B15 _ 83. 7D, CC, 00
        jz      ?_085                                   ; 1B19 _ 74, 26
        mov     eax, dword [ebp-10H]                    ; 1B1B _ 8B. 45, F0
        add     eax, 16                                 ; 1B1E _ 83. C0, 10
        mov     dword [esp+8H], 0                       ; 1B21 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], eax                     ; 1B29 _ 89. 44 24, 04
        mov     eax, dword [ebp-28H]                    ; 1B2D _ 8B. 45, D8
        mov     dword [esp], eax                        ; 1B30 _ 89. 04 24
        call    _timer_init                             ; 1B33 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], 7                      ; 1B38 _ C7. 45, F4, 00000007
        jmp     ?_086                                   ; 1B3F _ EB, 24

?_085:  mov     eax, dword [ebp-10H]                    ; 1B41 _ 8B. 45, F0
        add     eax, 16                                 ; 1B44 _ 83. C0, 10
        mov     dword [esp+8H], 1                       ; 1B47 _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], eax                     ; 1B4F _ 89. 44 24, 04
        mov     eax, dword [ebp-28H]                    ; 1B53 _ 8B. 45, D8
        mov     dword [esp], eax                        ; 1B56 _ 89. 04 24
        call    _timer_init                             ; 1B59 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], 0                      ; 1B5E _ C7. 45, F4, 00000000
?_086:  mov     dword [esp+4H], 50                      ; 1B65 _ C7. 44 24, 04, 00000032
        mov     eax, dword [ebp-28H]                    ; 1B6D _ 8B. 45, D8
        mov     dword [esp], eax                        ; 1B70 _ 89. 04 24
        call    _timer_settime                          ; 1B73 _ E8, 00000000(rel)
        jmp     ?_101                                   ; 1B78 _ E9, 00000428

?_087:  cmp     dword [ebp-34H], 87                     ; 1B7D _ 83. 7D, CC, 57
        jnz     ?_088                                   ; 1B81 _ 75, 3C
        mov     dword [ebp-0CH], 7                      ; 1B83 _ C7. 45, F4, 00000007
        mov     eax, dword [ebp-10H]                    ; 1B8A _ 8B. 45, F0
        add     eax, 16                                 ; 1B8D _ 83. C0, 10
        mov     dword [esp+8H], 0                       ; 1B90 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], eax                     ; 1B98 _ 89. 44 24, 04
        mov     eax, dword [ebp-28H]                    ; 1B9C _ 8B. 45, D8
        mov     dword [esp], eax                        ; 1B9F _ 89. 04 24
        call    _timer_init                             ; 1BA2 _ E8, 00000000(rel)
        mov     dword [esp+4H], 50                      ; 1BA7 _ C7. 44 24, 04, 00000032
        mov     eax, dword [ebp-28H]                    ; 1BAF _ 8B. 45, D8
        mov     dword [esp], eax                        ; 1BB2 _ 89. 04 24
        call    _timer_settime                          ; 1BB5 _ E8, 00000000(rel)
        jmp     ?_101                                   ; 1BBA _ E9, 000003E6

?_088:  cmp     dword [ebp-34H], 88                     ; 1BBF _ 83. 7D, CC, 58
        jnz     ?_089                                   ; 1BC3 _ 75, 6A
        mov     eax, dword [ebp-10H]                    ; 1BC5 _ 8B. 45, F0
        mov     ecx, dword [eax+9CH]                    ; 1BC8 _ 8B. 88, 0000009C
        mov     eax, dword [ebp-10H]                    ; 1BCE _ 8B. 45, F0
        mov     edx, dword [eax+98H]                    ; 1BD1 _ 8B. 90, 00000098
        mov     eax, dword [_shtctl]                    ; 1BD7 _ A1, 00000264(d)
        mov     dword [esp+10H], 0                      ; 1BDC _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], ecx                    ; 1BE4 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 1BE8 _ 89. 54 24, 08
        mov     edx, dword [ebp+8H]                     ; 1BEC _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 1BEF _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1BF3 _ 89. 04 24
        call    _set_cursor                             ; 1BF6 _ E8, FFFFEDA8
        mov     dword [ebp-0CH], -1                     ; 1BFB _ C7. 45, F4, FFFFFFFF
        mov     eax, dword [_task_main]                 ; 1C02 _ A1, 00000274(d)
        mov     dword [esp+8H], 0                       ; 1C07 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], -1                      ; 1C0F _ C7. 44 24, 04, FFFFFFFF
        mov     dword [esp], eax                        ; 1C17 _ 89. 04 24
        call    _task_run                               ; 1C1A _ E8, 00000000(rel)
        mov     eax, dword [ebp-10H]                    ; 1C1F _ 8B. 45, F0
        mov     dword [esp], eax                        ; 1C22 _ 89. 04 24
        call    _task_sleep                             ; 1C25 _ E8, 00000000(rel)
        jmp     ?_101                                   ; 1C2A _ E9, 00000376

?_089:  cmp     dword [ebp-34H], 28                     ; 1C2F _ 83. 7D, CC, 1C
        jne     ?_099                                   ; 1C33 _ 0F 85, 0000020F
        mov     eax, dword [ebp-10H]                    ; 1C39 _ 8B. 45, F0
        mov     ecx, dword [eax+9CH]                    ; 1C3C _ 8B. 88, 0000009C
        mov     eax, dword [ebp-10H]                    ; 1C42 _ 8B. 45, F0
        mov     edx, dword [eax+98H]                    ; 1C45 _ 8B. 90, 00000098
        mov     eax, dword [_shtctl]                    ; 1C4B _ A1, 00000264(d)
        mov     dword [esp+10H], 0                      ; 1C50 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], ecx                    ; 1C58 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 1C5C _ 89. 54 24, 08
        mov     edx, dword [ebp+8H]                     ; 1C60 _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 1C63 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1C67 _ 89. 04 24
        call    _set_cursor                             ; 1C6A _ E8, FFFFED34
        mov     eax, dword [ebp-10H]                    ; 1C6F _ 8B. 45, F0
        mov     eax, dword [eax+98H]                    ; 1C72 _ 8B. 80, 00000098
        lea     edx, [eax+7H]                           ; 1C78 _ 8D. 50, 07
        test    eax, eax                                ; 1C7B _ 85. C0
        cmovs   eax, edx                                ; 1C7D _ 0F 48. C2
        sar     eax, 3                                  ; 1C80 _ C1. F8, 03
        lea     edx, [eax-2H]                           ; 1C83 _ 8D. 50, FE
        mov     eax, dword [ebp-1CH]                    ; 1C86 _ 8B. 45, E4
        add     eax, edx                                ; 1C89 _ 01. D0
        mov     byte [eax], 0                           ; 1C8B _ C6. 00, 00
        mov     eax, dword [ebp-10H]                    ; 1C8E _ 8B. 45, F0
        mov     eax, dword [eax+98H]                    ; 1C91 _ 8B. 80, 00000098
        lea     edx, [eax+7H]                           ; 1C97 _ 8D. 50, 07
        test    eax, eax                                ; 1C9A _ 85. C0
        cmovs   eax, edx                                ; 1C9C _ 0F 48. C2
        sar     eax, 3                                  ; 1C9F _ C1. F8, 03
        sub     eax, 2                                  ; 1CA2 _ 83. E8, 02
        mov     byte [ebp+eax-55H], 0                   ; 1CA5 _ C6. 44 05, AB, 00
        mov     eax, dword [ebp-10H]                    ; 1CAA _ 8B. 45, F0
        mov     eax, dword [eax+9CH]                    ; 1CAD _ 8B. 80, 0000009C
        mov     edx, dword [ebp+8H]                     ; 1CB3 _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 1CB6 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1CBA _ 89. 04 24
        call    _cons_newline                           ; 1CBD _ E8, 00000BE5
        mov     edx, eax                                ; 1CC2 _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 1CC4 _ 8B. 45, F0
        mov     dword [eax+9CH], edx                    ; 1CC7 _ 89. 90, 0000009C
        mov     dword [esp+4H], ?_391                   ; 1CCD _ C7. 44 24, 04, 00000025(d)
        mov     eax, dword [ebp-1CH]                    ; 1CD5 _ 8B. 45, E4
        mov     dword [esp], eax                        ; 1CD8 _ 89. 04 24
        call    _strcmp                                 ; 1CDB _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 1CE0 _ 83. F8, 01
        jnz     ?_090                                   ; 1CE3 _ 75, 10
        mov     eax, dword [ebp+0CH]                    ; 1CE5 _ 8B. 45, 0C
        mov     dword [esp], eax                        ; 1CE8 _ 89. 04 24
        call    _cmd_mem                                ; 1CEB _ E8, FFFFF77E
        jmp     ?_098                                   ; 1CF0 _ E9, 00000141

?_090:  mov     dword [esp+4H], ?_392                   ; 1CF5 _ C7. 44 24, 04, 00000029(d)
        mov     eax, dword [ebp-1CH]                    ; 1CFD _ 8B. 45, E4
        mov     dword [esp], eax                        ; 1D00 _ 89. 04 24
        call    _strcmp                                 ; 1D03 _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 1D08 _ 83. F8, 01
        jnz     ?_091                                   ; 1D0B _ 75, 0A
        call    _cmd_cls                                ; 1D0D _ E8, FFFFF886
        jmp     ?_098                                   ; 1D12 _ E9, 0000011F

?_091:  mov     dword [esp+4H], ?_393                   ; 1D17 _ C7. 44 24, 04, 0000002D(d)
        mov     eax, dword [ebp-1CH]                    ; 1D1F _ 8B. 45, E4
        mov     dword [esp], eax                        ; 1D22 _ 89. 04 24
        call    _strcmp                                 ; 1D25 _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 1D2A _ 83. F8, 01
        jnz     ?_092                                   ; 1D2D _ 75, 11
        mov     dword [esp], ?_394                      ; 1D2F _ C7. 04 24, 00000033(d)
        call    _cmd_execute_program                    ; 1D36 _ E8, FFFFF961
        jmp     ?_098                                   ; 1D3B _ E9, 000000F6

?_092:  mov     dword [esp+4H], ?_395                   ; 1D40 _ C7. 44 24, 04, 0000003B(d)
        mov     eax, dword [ebp-1CH]                    ; 1D48 _ 8B. 45, E4
        mov     dword [esp], eax                        ; 1D4B _ 89. 04 24
        call    _strcmp                                 ; 1D4E _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 1D53 _ 83. F8, 01
        jnz     ?_093                                   ; 1D56 _ 75, 0A
        call    _cmd_dir                                ; 1D58 _ E8, FFFFF1A9
        jmp     ?_098                                   ; 1D5D _ E9, 000000D4

?_093:  mov     dword [esp+4H], ?_396                   ; 1D62 _ C7. 44 24, 04, 0000003F(d)
        mov     eax, dword [ebp-1CH]                    ; 1D6A _ 8B. 45, E4
        mov     dword [esp], eax                        ; 1D6D _ 89. 04 24
        call    _strcmp                                 ; 1D70 _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 1D75 _ 83. F8, 01
        jnz     ?_094                                   ; 1D78 _ 75, 10
        mov     eax, dword [ebp-10H]                    ; 1D7A _ 8B. 45, F0
        mov     dword [esp], eax                        ; 1D7D _ 89. 04 24
        call    _cmd_exit                               ; 1D80 _ E8, 000005F4
        jmp     ?_098                                   ; 1D85 _ E9, 000000AC

?_094:  mov     eax, dword [ebp-1CH]                    ; 1D8A _ 8B. 45, E4
        movzx   eax, byte [eax]                         ; 1D8D _ 0F B6. 00
        cmp     al, 116                                 ; 1D90 _ 3C, 74
        jnz     ?_095                                   ; 1D92 _ 75, 34
        mov     eax, dword [ebp-1CH]                    ; 1D94 _ 8B. 45, E4
        add     eax, 1                                  ; 1D97 _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 1D9A _ 0F B6. 00
        cmp     al, 121                                 ; 1D9D _ 3C, 79
        jnz     ?_095                                   ; 1D9F _ 75, 27
        mov     eax, dword [ebp-1CH]                    ; 1DA1 _ 8B. 45, E4
        add     eax, 2                                  ; 1DA4 _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 1DA7 _ 0F B6. 00
        cmp     al, 112                                 ; 1DAA _ 3C, 70
        jnz     ?_095                                   ; 1DAC _ 75, 1A
        mov     eax, dword [ebp-1CH]                    ; 1DAE _ 8B. 45, E4
        add     eax, 3                                  ; 1DB1 _ 83. C0, 03
        movzx   eax, byte [eax]                         ; 1DB4 _ 0F B6. 00
        cmp     al, 101                                 ; 1DB7 _ 3C, 65
        jnz     ?_095                                   ; 1DB9 _ 75, 0D
        mov     eax, dword [ebp-1CH]                    ; 1DBB _ 8B. 45, E4
        mov     dword [esp], eax                        ; 1DBE _ 89. 04 24
        call    _cmd_type                               ; 1DC1 _ E8, FFFFF2F0
        jmp     ?_098                                   ; 1DC6 _ EB, 6E

?_095:  mov     dword [esp+4H], ?_397                   ; 1DC8 _ C7. 44 24, 04, 00000044(d)
        mov     eax, dword [ebp-1CH]                    ; 1DD0 _ 8B. 45, E4
        mov     dword [esp], eax                        ; 1DD3 _ 89. 04 24
        call    _strcmp                                 ; 1DD6 _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 1DDB _ 83. F8, 01
        jnz     ?_096                                   ; 1DDE _ 75, 0D
        lea     eax, [ebp-55H]                          ; 1DE0 _ 8D. 45, AB
        mov     dword [esp], eax                        ; 1DE3 _ 89. 04 24
        call    _cmd_start                              ; 1DE6 _ E8, FFFFFA69
        jmp     ?_098                                   ; 1DEB _ EB, 49

?_096:  mov     dword [esp+4H], ?_398                   ; 1DED _ C7. 44 24, 04, 0000004A(d)
        mov     eax, dword [ebp-1CH]                    ; 1DF5 _ 8B. 45, E4
        mov     dword [esp], eax                        ; 1DF8 _ 89. 04 24
        call    _strcmp                                 ; 1DFB _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 1E00 _ 83. F8, 01
        jnz     ?_097                                   ; 1E03 _ 75, 0D
        lea     eax, [ebp-55H]                          ; 1E05 _ 8D. 45, AB
        mov     dword [esp], eax                        ; 1E08 _ 89. 04 24
        call    _cmd_ncst                               ; 1E0B _ E8, FFFFFB18
        jmp     ?_098                                   ; 1E10 _ EB, 24

?_097:  mov     dword [esp+4H], ?_399                   ; 1E12 _ C7. 44 24, 04, 0000004F(d)
        mov     eax, dword [ebp-1CH]                    ; 1E1A _ 8B. 45, E4
        mov     dword [esp], eax                        ; 1E1D _ 89. 04 24
        call    _strcmp                                 ; 1E20 _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 1E25 _ 83. F8, 01
        jnz     ?_098                                   ; 1E28 _ 75, 0C
        mov     dword [esp], ?_400                      ; 1E2A _ C7. 04 24, 00000055(d)
        call    _cmd_execute_program                    ; 1E31 _ E8, FFFFF866
?_098:  mov     eax, dword [ebp-10H]                    ; 1E36 _ 8B. 45, F0
        mov     dword [eax+98H], 16                     ; 1E39 _ C7. 80, 00000098, 00000010
        jmp     ?_101                                   ; 1E43 _ E9, 0000015D

?_099:  cmp     dword [ebp-34H], 14                     ; 1E48 _ 83. 7D, CC, 0E
        jne     ?_100                                   ; 1E4C _ 0F 85, 00000098
        mov     eax, dword [ebp-10H]                    ; 1E52 _ 8B. 45, F0
        mov     eax, dword [eax+98H]                    ; 1E55 _ 8B. 80, 00000098
        cmp     eax, 8                                  ; 1E5B _ 83. F8, 08
        jle     ?_100                                   ; 1E5E _ 0F 8E, 00000086
        mov     eax, dword [ebp-10H]                    ; 1E64 _ 8B. 45, F0
        mov     ecx, dword [eax+9CH]                    ; 1E67 _ 8B. 88, 0000009C
        mov     eax, dword [ebp-10H]                    ; 1E6D _ 8B. 45, F0
        mov     edx, dword [eax+98H]                    ; 1E70 _ 8B. 90, 00000098
        mov     eax, dword [_shtctl]                    ; 1E76 _ A1, 00000264(d)
        mov     dword [esp+10H], 0                      ; 1E7B _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], ecx                    ; 1E83 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 1E87 _ 89. 54 24, 08
        mov     edx, dword [ebp+8H]                     ; 1E8B _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 1E8E _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1E92 _ 89. 04 24
        call    _set_cursor                             ; 1E95 _ E8, FFFFEB09
        mov     eax, dword [ebp-10H]                    ; 1E9A _ 8B. 45, F0
        mov     eax, dword [eax+98H]                    ; 1E9D _ 8B. 80, 00000098
        lea     edx, [eax-8H]                           ; 1EA3 _ 8D. 50, F8
        mov     eax, dword [ebp-10H]                    ; 1EA6 _ 8B. 45, F0
        mov     dword [eax+98H], edx                    ; 1EA9 _ 89. 90, 00000098
        mov     eax, dword [ebp-10H]                    ; 1EAF _ 8B. 45, F0
        mov     ecx, dword [eax+9CH]                    ; 1EB2 _ 8B. 88, 0000009C
        mov     eax, dword [ebp-10H]                    ; 1EB8 _ 8B. 45, F0
        mov     edx, dword [eax+98H]                    ; 1EBB _ 8B. 90, 00000098
        mov     eax, dword [_shtctl]                    ; 1EC1 _ A1, 00000264(d)
        mov     dword [esp+10H], 0                      ; 1EC6 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], ecx                    ; 1ECE _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 1ED2 _ 89. 54 24, 08
        mov     edx, dword [ebp+8H]                     ; 1ED6 _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 1ED9 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1EDD _ 89. 04 24
        call    _set_cursor                             ; 1EE0 _ E8, FFFFEABE
        jmp     ?_101                                   ; 1EE5 _ E9, 000000BB

?_100:  mov     eax, dword [ebp-34H]                    ; 1EEA _ 8B. 45, CC
        mov     dword [esp], eax                        ; 1EED _ 89. 04 24
        call    _transferScanCode                       ; 1EF0 _ E8, FFFFEB8F
        mov     byte [ebp-35H], al                      ; 1EF5 _ 88. 45, CB
        mov     eax, dword [ebp-10H]                    ; 1EF8 _ 8B. 45, F0
        mov     eax, dword [eax+98H]                    ; 1EFB _ 8B. 80, 00000098
        cmp     eax, 239                                ; 1F01 _ 3D, 000000EF
        jg      ?_101                                   ; 1F06 _ 0F 8F, 00000099
        cmp     byte [ebp-35H], 0                       ; 1F0C _ 80. 7D, CB, 00
        je      ?_101                                   ; 1F10 _ 0F 84, 0000008F
        mov     eax, dword [ebp-10H]                    ; 1F16 _ 8B. 45, F0
        mov     eax, dword [eax+98H]                    ; 1F19 _ 8B. 80, 00000098
        lea     edx, [eax+7H]                           ; 1F1F _ 8D. 50, 07
        test    eax, eax                                ; 1F22 _ 85. C0
        cmovs   eax, edx                                ; 1F24 _ 0F 48. C2
        sar     eax, 3                                  ; 1F27 _ C1. F8, 03
        lea     edx, [eax-2H]                           ; 1F2A _ 8D. 50, FE
        mov     eax, dword [ebp-1CH]                    ; 1F2D _ 8B. 45, E4
        add     edx, eax                                ; 1F30 _ 01. C2
        movzx   eax, byte [ebp-35H]                     ; 1F32 _ 0F B6. 45, CB
        mov     byte [edx], al                          ; 1F36 _ 88. 02
        mov     eax, dword [ebp-10H]                    ; 1F38 _ 8B. 45, F0
        mov     eax, dword [eax+98H]                    ; 1F3B _ 8B. 80, 00000098
        lea     edx, [eax+7H]                           ; 1F41 _ 8D. 50, 07
        test    eax, eax                                ; 1F44 _ 85. C0
        cmovs   eax, edx                                ; 1F46 _ 0F 48. C2
        sar     eax, 3                                  ; 1F49 _ C1. F8, 03
        lea     edx, [eax-1H]                           ; 1F4C _ 8D. 50, FF
        mov     eax, dword [ebp-1CH]                    ; 1F4F _ 8B. 45, E4
        add     eax, edx                                ; 1F52 _ 01. D0
        mov     byte [eax], 0                           ; 1F54 _ C6. 00, 00
        mov     eax, dword [ebp-10H]                    ; 1F57 _ 8B. 45, F0
        mov     eax, dword [eax+98H]                    ; 1F5A _ 8B. 80, 00000098
        lea     edx, [eax+7H]                           ; 1F60 _ 8D. 50, 07
        test    eax, eax                                ; 1F63 _ 85. C0
        cmovs   eax, edx                                ; 1F65 _ 0F 48. C2
        sar     eax, 3                                  ; 1F68 _ C1. F8, 03
        sub     eax, 2                                  ; 1F6B _ 83. E8, 02
        mov     edx, dword [ebp-34H]                    ; 1F6E _ 8B. 55, CC
        mov     byte [ebp+eax-55H], dl                  ; 1F71 _ 88. 54 05, AB
        mov     eax, dword [ebp-10H]                    ; 1F75 _ 8B. 45, F0
        mov     eax, dword [eax+98H]                    ; 1F78 _ 8B. 80, 00000098
        lea     edx, [eax+7H]                           ; 1F7E _ 8D. 50, 07
        test    eax, eax                                ; 1F81 _ 85. C0
        cmovs   eax, edx                                ; 1F83 _ 0F 48. C2
        sar     eax, 3                                  ; 1F86 _ C1. F8, 03
        sub     eax, 1                                  ; 1F89 _ 83. E8, 01
        mov     byte [ebp+eax-55H], 0                   ; 1F8C _ C6. 44 05, AB, 00
        movsx   eax, byte [ebp-35H]                     ; 1F91 _ 0F BE. 45, CB
        mov     dword [esp+4H], 1                       ; 1F95 _ C7. 44 24, 04, 00000001
        mov     dword [esp], eax                        ; 1F9D _ 89. 04 24
        call    _cons_putchar                           ; 1FA0 _ E8, 0000082B
?_101:  cmp     dword [ebp-0CH], 0                      ; 1FA5 _ 83. 7D, F4, 00
        js      ?_102                                   ; 1FA9 _ 78, 48
        mov     eax, dword [ebp-10H]                    ; 1FAB _ 8B. 45, F0
        mov     eax, dword [eax+94H]                    ; 1FAE _ 8B. 80, 00000094
        test    eax, eax                                ; 1FB4 _ 85. C0
        jz      ?_102                                   ; 1FB6 _ 74, 3B
        mov     eax, dword [ebp-10H]                    ; 1FB8 _ 8B. 45, F0
        mov     ebx, dword [eax+9CH]                    ; 1FBB _ 8B. 98, 0000009C
        mov     eax, dword [ebp-10H]                    ; 1FC1 _ 8B. 45, F0
        mov     ecx, dword [eax+98H]                    ; 1FC4 _ 8B. 88, 00000098
        mov     eax, dword [ebp-10H]                    ; 1FCA _ 8B. 45, F0
        mov     edx, dword [eax+94H]                    ; 1FCD _ 8B. 90, 00000094
        mov     eax, dword [_shtctl]                    ; 1FD3 _ A1, 00000264(d)
        mov     esi, dword [ebp-0CH]                    ; 1FD8 _ 8B. 75, F4
        mov     dword [esp+10H], esi                    ; 1FDB _ 89. 74 24, 10
        mov     dword [esp+0CH], ebx                    ; 1FDF _ 89. 5C 24, 0C
        mov     dword [esp+8H], ecx                     ; 1FE3 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 1FE7 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1FEB _ 89. 04 24
        call    _set_cursor                             ; 1FEE _ E8, FFFFE9B0
?_102:  call    _io_sti                                 ; 1FF3 _ E8, 00000000(rel)
        jmp     ?_083                                   ; 1FF8 _ E9, FFFFFAD2
; _console_task End of function

_cons_putstr:; Function begin
        push    ebp                                     ; 1FFD _ 55
        mov     ebp, esp                                ; 1FFE _ 89. E5
        sub     esp, 24                                 ; 2000 _ 83. EC, 18
        jmp     ?_104                                   ; 2003 _ EB, 1D

?_103:  mov     eax, dword [ebp+8H]                     ; 2005 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 2008 _ 0F B6. 00
        movsx   eax, al                                 ; 200B _ 0F BE. C0
        mov     dword [esp+4H], 1                       ; 200E _ C7. 44 24, 04, 00000001
        mov     dword [esp], eax                        ; 2016 _ 89. 04 24
        call    _cons_putchar                           ; 2019 _ E8, 000007B2
        add     dword [ebp+8H], 1                       ; 201E _ 83. 45, 08, 01
?_104:  mov     eax, dword [ebp+8H]                     ; 2022 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 2025 _ 0F B6. 00
        test    al, al                                  ; 2028 _ 84. C0
        jnz     ?_103                                   ; 202A _ 75, D9
        nop                                             ; 202C _ 90
        leave                                           ; 202D _ C9
        ret                                             ; 202E _ C3
; _cons_putstr End of function

_api_linewin:; Function begin
        push    ebp                                     ; 202F _ 55
        mov     ebp, esp                                ; 2030 _ 89. E5
        sub     esp, 32                                 ; 2032 _ 83. EC, 20
        mov     eax, dword [ebp+14H]                    ; 2035 _ 8B. 45, 14
        sub     eax, dword [ebp+0CH]                    ; 2038 _ 2B. 45, 0C
        mov     dword [ebp-14H], eax                    ; 203B _ 89. 45, EC
        mov     eax, dword [ebp+18H]                    ; 203E _ 8B. 45, 18
        sub     eax, dword [ebp+10H]                    ; 2041 _ 2B. 45, 10
        mov     dword [ebp-18H], eax                    ; 2044 _ 89. 45, E8
        mov     eax, dword [ebp+0CH]                    ; 2047 _ 8B. 45, 0C
        shl     eax, 10                                 ; 204A _ C1. E0, 0A
        mov     dword [ebp-8H], eax                     ; 204D _ 89. 45, F8
        mov     eax, dword [ebp+10H]                    ; 2050 _ 8B. 45, 10
        shl     eax, 10                                 ; 2053 _ C1. E0, 0A
        mov     dword [ebp-0CH], eax                    ; 2056 _ 89. 45, F4
        cmp     dword [ebp-14H], 0                      ; 2059 _ 83. 7D, EC, 00
        jns     ?_105                                   ; 205D _ 79, 03
        neg     dword [ebp-14H]                         ; 205F _ F7. 5D, EC
?_105:  cmp     dword [ebp-18H], 0                      ; 2062 _ 83. 7D, E8, 00
        jns     ?_106                                   ; 2066 _ 79, 03
        neg     dword [ebp-18H]                         ; 2068 _ F7. 5D, E8
?_106:  mov     eax, dword [ebp-14H]                    ; 206B _ 8B. 45, EC
        cmp     eax, dword [ebp-18H]                    ; 206E _ 3B. 45, E8
        jl      ?_110                                   ; 2071 _ 7C, 53
        mov     eax, dword [ebp-14H]                    ; 2073 _ 8B. 45, EC
        add     eax, 1                                  ; 2076 _ 83. C0, 01
        mov     dword [ebp-10H], eax                    ; 2079 _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 207C _ 8B. 45, 0C
        cmp     eax, dword [ebp+14H]                    ; 207F _ 3B. 45, 14
        jle     ?_107                                   ; 2082 _ 7E, 09
        mov     dword [ebp-14H], -1024                  ; 2084 _ C7. 45, EC, FFFFFC00
        jmp     ?_108                                   ; 208B _ EB, 07

?_107:  mov     dword [ebp-14H], 1024                   ; 208D _ C7. 45, EC, 00000400
?_108:  mov     eax, dword [ebp+10H]                    ; 2094 _ 8B. 45, 10
        cmp     eax, dword [ebp+18H]                    ; 2097 _ 3B. 45, 18
        jg      ?_109                                   ; 209A _ 7F, 15
        mov     eax, dword [ebp+18H]                    ; 209C _ 8B. 45, 18
        sub     eax, dword [ebp+10H]                    ; 209F _ 2B. 45, 10
        add     eax, 1                                  ; 20A2 _ 83. C0, 01
        shl     eax, 10                                 ; 20A5 _ C1. E0, 0A
        cdq                                             ; 20A8 _ 99
        idiv    dword [ebp-10H]                         ; 20A9 _ F7. 7D, F0
        mov     dword [ebp-18H], eax                    ; 20AC _ 89. 45, E8
        jmp     ?_114                                   ; 20AF _ EB, 66

?_109:  mov     eax, dword [ebp+18H]                    ; 20B1 _ 8B. 45, 18
        sub     eax, dword [ebp+10H]                    ; 20B4 _ 2B. 45, 10
        sub     eax, 1                                  ; 20B7 _ 83. E8, 01
        shl     eax, 10                                 ; 20BA _ C1. E0, 0A
        cdq                                             ; 20BD _ 99
        idiv    dword [ebp-10H]                         ; 20BE _ F7. 7D, F0
        mov     dword [ebp-18H], eax                    ; 20C1 _ 89. 45, E8
        jmp     ?_114                                   ; 20C4 _ EB, 51

?_110:  mov     eax, dword [ebp-18H]                    ; 20C6 _ 8B. 45, E8
        add     eax, 1                                  ; 20C9 _ 83. C0, 01
        mov     dword [ebp-10H], eax                    ; 20CC _ 89. 45, F0
        mov     eax, dword [ebp+10H]                    ; 20CF _ 8B. 45, 10
        cmp     eax, dword [ebp+18H]                    ; 20D2 _ 3B. 45, 18
        jle     ?_111                                   ; 20D5 _ 7E, 09
        mov     dword [ebp-18H], -1024                  ; 20D7 _ C7. 45, E8, FFFFFC00
        jmp     ?_112                                   ; 20DE _ EB, 07

?_111:  mov     dword [ebp-18H], 1024                   ; 20E0 _ C7. 45, E8, 00000400
?_112:  mov     eax, dword [ebp+0CH]                    ; 20E7 _ 8B. 45, 0C
        cmp     eax, dword [ebp+14H]                    ; 20EA _ 3B. 45, 14
        jg      ?_113                                   ; 20ED _ 7F, 15
        mov     eax, dword [ebp+14H]                    ; 20EF _ 8B. 45, 14
        sub     eax, dword [ebp+0CH]                    ; 20F2 _ 2B. 45, 0C
        add     eax, 1                                  ; 20F5 _ 83. C0, 01
        shl     eax, 10                                 ; 20F8 _ C1. E0, 0A
        cdq                                             ; 20FB _ 99
        idiv    dword [ebp-10H]                         ; 20FC _ F7. 7D, F0
        mov     dword [ebp-14H], eax                    ; 20FF _ 89. 45, EC
        jmp     ?_114                                   ; 2102 _ EB, 13

?_113:  mov     eax, dword [ebp+14H]                    ; 2104 _ 8B. 45, 14
        sub     eax, dword [ebp+0CH]                    ; 2107 _ 2B. 45, 0C
        sub     eax, 1                                  ; 210A _ 83. E8, 01
        shl     eax, 10                                 ; 210D _ C1. E0, 0A
        cdq                                             ; 2110 _ 99
        idiv    dword [ebp-10H]                         ; 2111 _ F7. 7D, F0
        mov     dword [ebp-14H], eax                    ; 2114 _ 89. 45, EC
?_114:  mov     dword [ebp-4H], 0                       ; 2117 _ C7. 45, FC, 00000000
        jmp     ?_116                                   ; 211E _ EB, 35

?_115:  mov     eax, dword [ebp+8H]                     ; 2120 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 2123 _ 8B. 10
        mov     eax, dword [ebp-0CH]                    ; 2125 _ 8B. 45, F4
        sar     eax, 10                                 ; 2128 _ C1. F8, 0A
        mov     ecx, eax                                ; 212B _ 89. C1
        mov     eax, dword [ebp+8H]                     ; 212D _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 2130 _ 8B. 40, 04
        imul    eax, ecx                                ; 2133 _ 0F AF. C1
        mov     ecx, dword [ebp-8H]                     ; 2136 _ 8B. 4D, F8
        sar     ecx, 10                                 ; 2139 _ C1. F9, 0A
        add     eax, ecx                                ; 213C _ 01. C8
        add     eax, edx                                ; 213E _ 01. D0
        mov     edx, dword [ebp+1CH]                    ; 2140 _ 8B. 55, 1C
        mov     byte [eax], dl                          ; 2143 _ 88. 10
        mov     eax, dword [ebp-14H]                    ; 2145 _ 8B. 45, EC
        add     dword [ebp-8H], eax                     ; 2148 _ 01. 45, F8
        mov     eax, dword [ebp-18H]                    ; 214B _ 8B. 45, E8
        add     dword [ebp-0CH], eax                    ; 214E _ 01. 45, F4
        add     dword [ebp-4H], 1                       ; 2151 _ 83. 45, FC, 01
?_116:  mov     eax, dword [ebp-4H]                     ; 2155 _ 8B. 45, FC
        cmp     eax, dword [ebp-10H]                    ; 2158 _ 3B. 45, F0
        jl      ?_115                                   ; 215B _ 7C, C3
        nop                                             ; 215D _ 90
        leave                                           ; 215E _ C9
        ret                                             ; 215F _ C3
; _api_linewin End of function

_handle_keyboard:; Function begin
        push    ebp                                     ; 2160 _ 55
        mov     ebp, esp                                ; 2161 _ 89. E5
        sub     esp, 56                                 ; 2163 _ 83. EC, 38
?_117:  call    _io_cli                                 ; 2166 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 216B _ 8B. 45, 08
        add     eax, 16                                 ; 216E _ 83. C0, 10
        mov     dword [esp], eax                        ; 2171 _ 89. 04 24
        call    _fifo8_status                           ; 2174 _ E8, 00000000(rel)
        test    eax, eax                                ; 2179 _ 85. C0
        jnz     ?_118                                   ; 217B _ 75, 2A
        call    _io_sti                                 ; 217D _ E8, 00000000(rel)
        cmp     dword [ebp+0CH], 0                      ; 2182 _ 83. 7D, 0C, 00
        jne     ?_122                                   ; 2186 _ 0F 85, 000000E2
        call    _io_sti                                 ; 218C _ E8, 00000000(rel)
        mov     eax, dword [ebp+10H]                    ; 2191 _ 8B. 45, 10
        add     eax, 28                                 ; 2194 _ 83. C0, 1C
        mov     dword [eax], -1                         ; 2197 _ C7. 00, FFFFFFFF
        mov     eax, 0                                  ; 219D _ B8, 00000000
        jmp     ?_123                                   ; 21A2 _ E9, 000000CD

?_118:  mov     eax, dword [ebp+8H]                     ; 21A7 _ 8B. 45, 08
        add     eax, 16                                 ; 21AA _ 83. C0, 10
        mov     dword [esp], eax                        ; 21AD _ 89. 04 24
        call    _fifo8_get                              ; 21B0 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 21B5 _ 89. 45, F4
        call    _io_sti                                 ; 21B8 _ E8, 00000000(rel)
        cmp     dword [ebp-0CH], 255                    ; 21BD _ 81. 7D, F4, 000000FF
        jle     ?_119                                   ; 21C4 _ 7E, 37
        mov     edx, dword [_sht_back]                  ; 21C6 _ 8B. 15, 00000268(d)
        mov     eax, dword [_shtctl]                    ; 21CC _ A1, 00000264(d)
        mov     dword [esp+14H], ?_401                  ; 21D1 _ C7. 44 24, 14, 0000005F(d)
        mov     dword [esp+10H], 7                      ; 21D9 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 176                    ; 21E1 _ C7. 44 24, 0C, 000000B0
        mov     dword [esp+8H], 0                       ; 21E9 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 21F1 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 21F5 _ 89. 04 24
        call    _showString                             ; 21F8 _ E8, 00000BF8
?_119:  cmp     dword [ebp-0CH], 1                      ; 21FD _ 83. 7D, F4, 01
        jg      ?_120                                   ; 2201 _ 7F, 41
        mov     eax, dword [ebp+8H]                     ; 2203 _ 8B. 45, 08
        lea     edx, [eax+10H]                          ; 2206 _ 8D. 50, 10
        mov     eax, dword [ebp+8H]                     ; 2209 _ 8B. 45, 08
        mov     eax, dword [eax+0A8H]                   ; 220C _ 8B. 80, 000000A8
        mov     dword [esp+8H], 1                       ; 2212 _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], edx                     ; 221A _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 221E _ 89. 04 24
        call    _timer_init                             ; 2221 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 2226 _ 8B. 45, 08
        mov     eax, dword [eax+0A8H]                   ; 2229 _ 8B. 80, 000000A8
        mov     dword [esp+4H], 50                      ; 222F _ C7. 44 24, 04, 00000032
        mov     dword [esp], eax                        ; 2237 _ 89. 04 24
        call    _timer_settime                          ; 223A _ E8, 00000000(rel)
        jmp     ?_117                                   ; 223F _ E9, FFFFFF22

?_120:  cmp     dword [ebp-0CH], 2                      ; 2244 _ 83. 7D, F4, 02
        jnz     ?_121                                   ; 2248 _ 75, 12
        mov     eax, dword [ebp+8H]                     ; 224A _ 8B. 45, 08
        mov     dword [eax+0A0H], 7                     ; 224D _ C7. 80, 000000A0, 00000007
        jmp     ?_117                                   ; 2257 _ E9, FFFFFF0A

?_121:  mov     eax, dword [ebp+10H]                    ; 225C _ 8B. 45, 10
        add     eax, 28                                 ; 225F _ 83. C0, 1C
        mov     edx, dword [ebp-0CH]                    ; 2262 _ 8B. 55, F4
        mov     dword [eax], edx                        ; 2265 _ 89. 10
        mov     eax, 0                                  ; 2267 _ B8, 00000000
        jmp     ?_123                                   ; 226C _ EB, 06

?_122:  nop                                             ; 226E _ 90
        jmp     ?_117                                   ; 226F _ E9, FFFFFEF2
; _handle_keyboard End of function

?_123:  ; Local function
        leave                                           ; 2274 _ C9
        ret                                             ; 2275 _ C3

_close_constask:; Function begin
        push    ebp                                     ; 2276 _ 55
        mov     ebp, esp                                ; 2277 _ 89. E5
        sub     esp, 24                                 ; 2279 _ 83. EC, 18
        mov     eax, dword [ebp+8H]                     ; 227C _ 8B. 45, 08
        mov     dword [esp], eax                        ; 227F _ 89. 04 24
        call    _task_sleep                             ; 2282 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 2287 _ 8B. 45, 08
        mov     eax, dword [eax+0B8H]                   ; 228A _ 8B. 80, 000000B8
        mov     edx, eax                                ; 2290 _ 89. C2
        mov     eax, dword [_memman]                    ; 2292 _ A1, 00000000(d)
        mov     dword [esp+8H], 65536                   ; 2297 _ C7. 44 24, 08, 00010000
        mov     dword [esp+4H], edx                     ; 229F _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 22A3 _ 89. 04 24
        call    _memman_free_4k                         ; 22A6 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 22AB _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 22AE _ 8B. 40, 10
        mov     edx, eax                                ; 22B1 _ 89. C2
        mov     eax, dword [_memman]                    ; 22B3 _ A1, 00000000(d)
        mov     dword [esp+8H], 128                     ; 22B8 _ C7. 44 24, 08, 00000080
        mov     dword [esp+4H], edx                     ; 22C0 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 22C4 _ 89. 04 24
        call    _memman_free                            ; 22C7 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 22CC _ 8B. 45, 08
        mov     eax, dword [eax+0ACH]                   ; 22CF _ 8B. 80, 000000AC
        mov     edx, eax                                ; 22D5 _ 89. C2
        mov     eax, dword [_memman]                    ; 22D7 _ A1, 00000000(d)
        mov     dword [esp+8H], 30                      ; 22DC _ C7. 44 24, 08, 0000001E
        mov     dword [esp+4H], edx                     ; 22E4 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 22E8 _ 89. 04 24
        call    _memman_free                            ; 22EB _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 22F0 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 22F3 _ C7. 40, 04, 00000000
        mov     dword [_current_console_task], 0        ; 22FA _ C7. 05, 00000278(d), 00000000
        nop                                             ; 2304 _ 90
        leave                                           ; 2305 _ C9
        ret                                             ; 2306 _ C3
; _close_constask End of function

_close_console:; Function begin
        push    ebp                                     ; 2307 _ 55
        mov     ebp, esp                                ; 2308 _ 89. E5
        sub     esp, 40                                 ; 230A _ 83. EC, 28
        mov     eax, dword [ebp+8H]                     ; 230D _ 8B. 45, 08
        mov     eax, dword [eax+0A8H]                   ; 2310 _ 8B. 80, 000000A8
        mov     dword [esp], eax                        ; 2316 _ 89. 04 24
        call    _timer_free                             ; 2319 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 231E _ 8B. 45, 08
        mov     eax, dword [eax+0B4H]                   ; 2321 _ 8B. 80, 000000B4
        test    eax, eax                                ; 2327 _ 85. C0
        jz      ?_124                                   ; 2329 _ 74, 40
        mov     eax, dword [ebp+8H]                     ; 232B _ 8B. 45, 08
        mov     eax, dword [eax+0B4H]                   ; 232E _ 8B. 80, 000000B4
        mov     dword [ebp-0CH], eax                    ; 2334 _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 2337 _ 8B. 45, F4
        mov     eax, dword [eax]                        ; 233A _ 8B. 00
        mov     edx, eax                                ; 233C _ 89. C2
        mov     eax, dword [_memman]                    ; 233E _ A1, 00000000(d)
        mov     dword [esp+8H], 42240                   ; 2343 _ C7. 44 24, 08, 0000A500
        mov     dword [esp+4H], edx                     ; 234B _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 234F _ 89. 04 24
        call    _memman_free_4k                         ; 2352 _ E8, 00000000(rel)
        mov     eax, dword [_shtctl]                    ; 2357 _ A1, 00000264(d)
        mov     edx, dword [ebp-0CH]                    ; 235C _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 235F _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2363 _ 89. 04 24
        call    _sheet_free                             ; 2366 _ E8, 00000000(rel)
?_124:  mov     eax, dword [ebp+8H]                     ; 236B _ 8B. 45, 08
        mov     dword [esp], eax                        ; 236E _ 89. 04 24
        call    _close_constask                         ; 2371 _ E8, FFFFFF00
        nop                                             ; 2376 _ 90
        leave                                           ; 2377 _ C9
        ret                                             ; 2378 _ C3
; _close_console End of function

_cmd_exit:; Function begin
        push    ebp                                     ; 2379 _ 55
        mov     ebp, esp                                ; 237A _ 89. E5
        sub     esp, 24                                 ; 237C _ 83. EC, 18
        call    _io_cli                                 ; 237F _ E8, 00000000(rel)
        mov     dword [esp+4H], 255                     ; 2384 _ C7. 44 24, 04, 000000FF
        mov     dword [esp], _keyinfo                   ; 238C _ C7. 04 24, 00000020(d)
        call    _fifo8_put                              ; 2393 _ E8, 00000000(rel)
        call    _io_sti                                 ; 2398 _ E8, 00000000(rel)
        nop                                             ; 239D _ 90
        leave                                           ; 239E _ C9
        ret                                             ; 239F _ C3
; _cmd_exit End of function

_kernel_api:; Function begin
        push    ebp                                     ; 23A0 _ 55
        mov     ebp, esp                                ; 23A1 _ 89. E5
        push    esi                                     ; 23A3 _ 56
        push    ebx                                     ; 23A4 _ 53
        sub     esp, 48                                 ; 23A5 _ 83. EC, 30
        call    _task_now                               ; 23A8 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 23AD _ 89. 45, F4
        mov     dword [ebp-10H], 0                      ; 23B0 _ C7. 45, F0, 00000000
        lea     eax, [ebp+24H]                          ; 23B7 _ 8D. 45, 24
        add     eax, 4                                  ; 23BA _ 83. C0, 04
        mov     dword [ebp-14H], eax                    ; 23BD _ 89. 45, EC
        mov     dword [ebp-18H], 0                      ; 23C0 _ C7. 45, E8, 00000000
        cmp     dword [ebp+1CH], 1                      ; 23C7 _ 83. 7D, 1C, 01
        jnz     ?_125                                   ; 23CB _ 75, 1B
        mov     eax, dword [ebp+24H]                    ; 23CD _ 8B. 45, 24
        movsx   eax, al                                 ; 23D0 _ 0F BE. C0
        mov     dword [esp+4H], 1                       ; 23D3 _ C7. 44 24, 04, 00000001
        mov     dword [esp], eax                        ; 23DB _ 89. 04 24
        call    _cons_putchar                           ; 23DE _ E8, 000003ED
        jmp     ?_139                                   ; 23E3 _ E9, 000003DC

?_125:  cmp     dword [ebp+1CH], 2                      ; 23E8 _ 83. 7D, 1C, 02
        jnz     ?_126                                   ; 23EC _ 75, 1D
        mov     eax, dword [ebp-0CH]                    ; 23EE _ 8B. 45, F4
        mov     eax, dword [eax+0B0H]                   ; 23F1 _ 8B. 80, 000000B0
        mov     edx, dword [eax]                        ; 23F7 _ 8B. 10
        mov     eax, dword [ebp+18H]                    ; 23F9 _ 8B. 45, 18
        add     eax, edx                                ; 23FC _ 01. D0
        mov     dword [esp], eax                        ; 23FE _ 89. 04 24
        call    _cons_putstr                            ; 2401 _ E8, FFFFFBF7
        jmp     ?_139                                   ; 2406 _ E9, 000003B9

?_126:  cmp     dword [ebp+1CH], 4                      ; 240B _ 83. 7D, 1C, 04
        jnz     ?_127                                   ; 240F _ 75, 15
        mov     eax, dword [ebp-0CH]                    ; 2411 _ 8B. 45, F4
        mov     dword [eax+34H], 0                      ; 2414 _ C7. 40, 34, 00000000
        mov     eax, dword [ebp-0CH]                    ; 241B _ 8B. 45, F4
        add     eax, 48                                 ; 241E _ 83. C0, 30
        jmp     ?_140                                   ; 2421 _ E9, 000003A3

?_127:  cmp     dword [ebp+1CH], 5                      ; 2426 _ 83. 7D, 1C, 05
        jne     ?_128                                   ; 242A _ 0F 85, 00000107
        mov     eax, dword [_shtctl]                    ; 2430 _ A1, 00000264(d)
        mov     dword [esp], eax                        ; 2435 _ 89. 04 24
        call    _sheet_alloc                            ; 2438 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 243D _ 89. 45, F0
        mov     eax, dword [ebp-10H]                    ; 2440 _ 8B. 45, F0
        mov     edx, dword [ebp-0CH]                    ; 2443 _ 8B. 55, F4
        mov     dword [eax+20H], edx                    ; 2446 _ 89. 50, 20
        mov     eax, dword [ebp-10H]                    ; 2449 _ 8B. 45, F0
        mov     eax, dword [eax+1CH]                    ; 244C _ 8B. 40, 1C
        or      eax, 10H                                ; 244F _ 83. C8, 10
        mov     edx, eax                                ; 2452 _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 2454 _ 8B. 45, F0
        mov     dword [eax+1CH], edx                    ; 2457 _ 89. 50, 1C
        mov     edx, dword [ebp+24H]                    ; 245A _ 8B. 55, 24
        mov     eax, dword [ebp-0CH]                    ; 245D _ 8B. 45, F4
        mov     eax, dword [eax+0B0H]                   ; 2460 _ 8B. 80, 000000B0
        mov     ecx, dword [eax+4H]                     ; 2466 _ 8B. 48, 04
        mov     eax, dword [ebp+18H]                    ; 2469 _ 8B. 45, 18
        add     eax, ecx                                ; 246C _ 01. C8
        mov     dword [esp+10H], edx                    ; 246E _ 89. 54 24, 10
        mov     edx, dword [ebp+8H]                     ; 2472 _ 8B. 55, 08
        mov     dword [esp+0CH], edx                    ; 2475 _ 89. 54 24, 0C
        mov     edx, dword [ebp+0CH]                    ; 2479 _ 8B. 55, 0C
        mov     dword [esp+8H], edx                     ; 247C _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 2480 _ 89. 44 24, 04
        mov     eax, dword [ebp-10H]                    ; 2484 _ 8B. 45, F0
        mov     dword [esp], eax                        ; 2487 _ 89. 04 24
        call    _sheet_setbuf                           ; 248A _ E8, 00000000(rel)
        mov     eax, dword [ebp-0CH]                    ; 248F _ 8B. 45, F4
        mov     eax, dword [eax+0B0H]                   ; 2492 _ 8B. 80, 000000B0
        mov     edx, dword [eax]                        ; 2498 _ 8B. 10
        mov     eax, dword [ebp+20H]                    ; 249A _ 8B. 45, 20
        add     edx, eax                                ; 249D _ 01. C2
        mov     eax, dword [_shtctl]                    ; 249F _ A1, 00000264(d)
        mov     dword [esp+0CH], 0                      ; 24A4 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], edx                     ; 24AC _ 89. 54 24, 08
        mov     edx, dword [ebp-10H]                    ; 24B0 _ 8B. 55, F0
        mov     dword [esp+4H], edx                     ; 24B3 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 24B7 _ 89. 04 24
        call    _make_window8                           ; 24BA _ E8, 000019BC
        mov     eax, dword [_shtctl]                    ; 24BF _ A1, 00000264(d)
        mov     eax, dword [eax+0CH]                    ; 24C4 _ 8B. 40, 0C
        sub     eax, dword [ebp+8H]                     ; 24C7 _ 2B. 45, 08
        mov     edx, eax                                ; 24CA _ 89. C2
        shr     edx, 31                                 ; 24CC _ C1. EA, 1F
        add     eax, edx                                ; 24CF _ 01. D0
        sar     eax, 1                                  ; 24D1 _ D1. F8
        mov     ecx, eax                                ; 24D3 _ 89. C1
        mov     eax, dword [_shtctl]                    ; 24D5 _ A1, 00000264(d)
        mov     eax, dword [eax+8H]                     ; 24DA _ 8B. 40, 08
        sub     eax, dword [ebp+0CH]                    ; 24DD _ 2B. 45, 0C
        mov     edx, eax                                ; 24E0 _ 89. C2
        shr     edx, 31                                 ; 24E2 _ C1. EA, 1F
        add     eax, edx                                ; 24E5 _ 01. D0
        sar     eax, 1                                  ; 24E7 _ D1. F8
        mov     edx, eax                                ; 24E9 _ 89. C2
        mov     eax, dword [_shtctl]                    ; 24EB _ A1, 00000264(d)
        mov     dword [esp+0CH], ecx                    ; 24F0 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 24F4 _ 89. 54 24, 08
        mov     edx, dword [ebp-10H]                    ; 24F8 _ 8B. 55, F0
        mov     dword [esp+4H], edx                     ; 24FB _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 24FF _ 89. 04 24
        call    _sheet_slide                            ; 2502 _ E8, 00000000(rel)
        mov     eax, dword [_shtctl]                    ; 2507 _ A1, 00000264(d)
        mov     edx, dword [eax+10H]                    ; 250C _ 8B. 50, 10
        mov     eax, dword [_shtctl]                    ; 250F _ A1, 00000264(d)
        mov     dword [esp+8H], edx                     ; 2514 _ 89. 54 24, 08
        mov     edx, dword [ebp-10H]                    ; 2518 _ 8B. 55, F0
        mov     dword [esp+4H], edx                     ; 251B _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 251F _ 89. 04 24
        call    _sheet_updown                           ; 2522 _ E8, 00000000(rel)
        mov     eax, dword [ebp-14H]                    ; 2527 _ 8B. 45, EC
        add     eax, 28                                 ; 252A _ 83. C0, 1C
        mov     edx, dword [ebp-10H]                    ; 252D _ 8B. 55, F0
        mov     dword [eax], edx                        ; 2530 _ 89. 10
        jmp     ?_139                                   ; 2532 _ E9, 0000028D

?_128:  cmp     dword [ebp+1CH], 6                      ; 2537 _ 83. 7D, 1C, 06
        jne     ?_129                                   ; 253B _ 0F 85, 0000008D
        mov     eax, dword [ebp+18H]                    ; 2541 _ 8B. 45, 18
        mov     dword [ebp-10H], eax                    ; 2544 _ 89. 45, F0
        mov     eax, dword [ebp-0CH]                    ; 2547 _ 8B. 45, F4
        mov     eax, dword [eax+0B0H]                   ; 254A _ 8B. 80, 000000B0
        mov     edx, dword [eax+4H]                     ; 2550 _ 8B. 50, 04
        mov     eax, dword [ebp+10H]                    ; 2553 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 2556 _ 8D. 0C 02
        mov     eax, dword [ebp+24H]                    ; 2559 _ 8B. 45, 24
        movsx   eax, al                                 ; 255C _ 0F BE. C0
        mov     edx, dword [_shtctl]                    ; 255F _ 8B. 15, 00000264(d)
        mov     dword [esp+14H], ecx                    ; 2565 _ 89. 4C 24, 14
        mov     dword [esp+10H], eax                    ; 2569 _ 89. 44 24, 10
        mov     eax, dword [ebp+8H]                     ; 256D _ 8B. 45, 08
        mov     dword [esp+0CH], eax                    ; 2570 _ 89. 44 24, 0C
        mov     eax, dword [ebp+0CH]                    ; 2574 _ 8B. 45, 0C
        mov     dword [esp+8H], eax                     ; 2577 _ 89. 44 24, 08
        mov     eax, dword [ebp-10H]                    ; 257B _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 257E _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 2582 _ 89. 14 24
        call    _showString                             ; 2585 _ E8, 0000086B
        mov     eax, dword [ebp+8H]                     ; 258A _ 8B. 45, 08
        lea     ecx, [eax+10H]                          ; 258D _ 8D. 48, 10
        mov     eax, dword [ebp+20H]                    ; 2590 _ 8B. 45, 20
        lea     edx, [eax*8]                            ; 2593 _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp+0CH]                    ; 259A _ 8B. 45, 0C
        add     edx, eax                                ; 259D _ 01. C2
        mov     eax, dword [_shtctl]                    ; 259F _ A1, 00000264(d)
        mov     dword [esp+14H], ecx                    ; 25A4 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 25A8 _ 89. 54 24, 10
        mov     edx, dword [ebp+8H]                     ; 25AC _ 8B. 55, 08
        mov     dword [esp+0CH], edx                    ; 25AF _ 89. 54 24, 0C
        mov     edx, dword [ebp+0CH]                    ; 25B3 _ 8B. 55, 0C
        mov     dword [esp+8H], edx                     ; 25B6 _ 89. 54 24, 08
        mov     edx, dword [ebp-10H]                    ; 25BA _ 8B. 55, F0
        mov     dword [esp+4H], edx                     ; 25BD _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 25C1 _ 89. 04 24
        call    _sheet_refresh                          ; 25C4 _ E8, 00000000(rel)
        jmp     ?_139                                   ; 25C9 _ E9, 000001F6

?_129:  cmp     dword [ebp+1CH], 7                      ; 25CE _ 83. 7D, 1C, 07
        jnz     ?_130                                   ; 25D2 _ 75, 7E
        mov     eax, dword [ebp+18H]                    ; 25D4 _ 8B. 45, 18
        mov     dword [ebp-10H], eax                    ; 25D7 _ 89. 45, F0
        mov     ebx, dword [ebp+24H]                    ; 25DA _ 8B. 5D, 24
        mov     eax, dword [ebp+10H]                    ; 25DD _ 8B. 45, 10
        movzx   eax, al                                 ; 25E0 _ 0F B6. C0
        mov     edx, dword [ebp-10H]                    ; 25E3 _ 8B. 55, F0
        mov     ecx, dword [edx+4H]                     ; 25E6 _ 8B. 4A, 04
        mov     edx, dword [ebp-10H]                    ; 25E9 _ 8B. 55, F0
        mov     edx, dword [edx]                        ; 25EC _ 8B. 12
        mov     esi, dword [ebp+8H]                     ; 25EE _ 8B. 75, 08
        mov     dword [esp+18H], esi                    ; 25F1 _ 89. 74 24, 18
        mov     esi, dword [ebp+0CH]                    ; 25F5 _ 8B. 75, 0C
        mov     dword [esp+14H], esi                    ; 25F8 _ 89. 74 24, 14
        mov     esi, dword [ebp+20H]                    ; 25FC _ 8B. 75, 20
        mov     dword [esp+10H], esi                    ; 25FF _ 89. 74 24, 10
        mov     dword [esp+0CH], ebx                    ; 2603 _ 89. 5C 24, 0C
        mov     dword [esp+8H], eax                     ; 2607 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 260B _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 260F _ 89. 14 24
        call    _boxfill8                               ; 2612 _ E8, 00000EAB
        mov     eax, dword [ebp+8H]                     ; 2617 _ 8B. 45, 08
        lea     ebx, [eax+1H]                           ; 261A _ 8D. 58, 01
        mov     eax, dword [ebp+0CH]                    ; 261D _ 8B. 45, 0C
        lea     ecx, [eax+1H]                           ; 2620 _ 8D. 48, 01
        mov     edx, dword [ebp+24H]                    ; 2623 _ 8B. 55, 24
        mov     eax, dword [_shtctl]                    ; 2626 _ A1, 00000264(d)
        mov     dword [esp+14H], ebx                    ; 262B _ 89. 5C 24, 14
        mov     dword [esp+10H], ecx                    ; 262F _ 89. 4C 24, 10
        mov     ecx, dword [ebp+20H]                    ; 2633 _ 8B. 4D, 20
        mov     dword [esp+0CH], ecx                    ; 2636 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 263A _ 89. 54 24, 08
        mov     edx, dword [ebp-10H]                    ; 263E _ 8B. 55, F0
        mov     dword [esp+4H], edx                     ; 2641 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2645 _ 89. 04 24
        call    _sheet_refresh                          ; 2648 _ E8, 00000000(rel)
        jmp     ?_139                                   ; 264D _ E9, 00000172

?_130:  cmp     dword [ebp+1CH], 11                     ; 2652 _ 83. 7D, 1C, 0B
        jnz     ?_131                                   ; 2656 _ 75, 28
        mov     eax, dword [ebp+18H]                    ; 2658 _ 8B. 45, 18
        mov     dword [ebp-10H], eax                    ; 265B _ 89. 45, F0
        mov     ebx, dword [ebp+24H]                    ; 265E _ 8B. 5D, 24
        mov     eax, dword [ebp-10H]                    ; 2661 _ 8B. 45, F0
        mov     edx, dword [eax]                        ; 2664 _ 8B. 10
        mov     eax, dword [ebp-10H]                    ; 2666 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 2669 _ 8B. 40, 04
        imul    eax, dword [ebp+8H]                     ; 266C _ 0F AF. 45, 08
        mov     ecx, dword [ebp+0CH]                    ; 2670 _ 8B. 4D, 0C
        add     eax, ecx                                ; 2673 _ 01. C8
        add     eax, edx                                ; 2675 _ 01. D0
        mov     edx, ebx                                ; 2677 _ 89. DA
        mov     byte [eax], dl                          ; 2679 _ 88. 10
        jmp     ?_139                                   ; 267B _ E9, 00000144

?_131:  cmp     dword [ebp+1CH], 12                     ; 2680 _ 83. 7D, 1C, 0C
        jnz     ?_132                                   ; 2684 _ 75, 3B
        mov     eax, dword [ebp+18H]                    ; 2686 _ 8B. 45, 18
        mov     dword [ebp-10H], eax                    ; 2689 _ 89. 45, F0
        mov     edx, dword [ebp+24H]                    ; 268C _ 8B. 55, 24
        mov     eax, dword [_shtctl]                    ; 268F _ A1, 00000264(d)
        mov     ecx, dword [ebp+8H]                     ; 2694 _ 8B. 4D, 08
        mov     dword [esp+14H], ecx                    ; 2697 _ 89. 4C 24, 14
        mov     ecx, dword [ebp+0CH]                    ; 269B _ 8B. 4D, 0C
        mov     dword [esp+10H], ecx                    ; 269E _ 89. 4C 24, 10
        mov     ecx, dword [ebp+20H]                    ; 26A2 _ 8B. 4D, 20
        mov     dword [esp+0CH], ecx                    ; 26A5 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 26A9 _ 89. 54 24, 08
        mov     edx, dword [ebp-10H]                    ; 26AD _ 8B. 55, F0
        mov     dword [esp+4H], edx                     ; 26B0 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 26B4 _ 89. 04 24
        call    _sheet_refresh                          ; 26B7 _ E8, 00000000(rel)
        jmp     ?_139                                   ; 26BC _ E9, 00000103

?_132:  cmp     dword [ebp+1CH], 13                     ; 26C1 _ 83. 7D, 1C, 0D
        jnz     ?_133                                   ; 26C5 _ 75, 39
        mov     eax, dword [ebp+18H]                    ; 26C7 _ 8B. 45, 18
        mov     dword [ebp-10H], eax                    ; 26CA _ 89. 45, F0
        mov     eax, dword [ebp+24H]                    ; 26CD _ 8B. 45, 24
        mov     edx, dword [ebp+10H]                    ; 26D0 _ 8B. 55, 10
        mov     dword [esp+14H], edx                    ; 26D3 _ 89. 54 24, 14
        mov     edx, dword [ebp+8H]                     ; 26D7 _ 8B. 55, 08
        mov     dword [esp+10H], edx                    ; 26DA _ 89. 54 24, 10
        mov     edx, dword [ebp+0CH]                    ; 26DE _ 8B. 55, 0C
        mov     dword [esp+0CH], edx                    ; 26E1 _ 89. 54 24, 0C
        mov     edx, dword [ebp+20H]                    ; 26E5 _ 8B. 55, 20
        mov     dword [esp+8H], edx                     ; 26E8 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 26EC _ 89. 44 24, 04
        mov     eax, dword [ebp-10H]                    ; 26F0 _ 8B. 45, F0
        mov     dword [esp], eax                        ; 26F3 _ 89. 04 24
        call    _api_linewin                            ; 26F6 _ E8, FFFFF934
        jmp     ?_139                                   ; 26FB _ E9, 000000C4

?_133:  cmp     dword [ebp+1CH], 14                     ; 2700 _ 83. 7D, 1C, 0E
        jnz     ?_134                                   ; 2704 _ 75, 32
        mov     edx, dword [ebp+18H]                    ; 2706 _ 8B. 55, 18
        mov     eax, dword [_shtctl]                    ; 2709 _ A1, 00000264(d)
        mov     dword [esp+4H], edx                     ; 270E _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2712 _ 89. 04 24
        call    _sheet_free                             ; 2715 _ E8, 00000000(rel)
        mov     eax, dword [ebp-0CH]                    ; 271A _ 8B. 45, F4
        mov     eax, dword [eax+0B0H]                   ; 271D _ 8B. 80, 000000B0
        mov     eax, dword [eax+4H]                     ; 2723 _ 8B. 40, 04
        add     eax, 291                                ; 2726 _ 05, 00000123
        mov     dword [esp], eax                        ; 272B _ 89. 04 24
        call    _cons_putstr                            ; 272E _ E8, FFFFF8CA
        jmp     ?_139                                   ; 2733 _ E9, 0000008C

?_134:  cmp     dword [ebp+1CH], 15                     ; 2738 _ 83. 7D, 1C, 0F
        jnz     ?_135                                   ; 273C _ 75, 1B
        mov     eax, dword [ebp+24H]                    ; 273E _ 8B. 45, 24
        mov     edx, dword [ebp-14H]                    ; 2741 _ 8B. 55, EC
        mov     dword [esp+8H], edx                     ; 2744 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 2748 _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 274C _ 8B. 45, F4
        mov     dword [esp], eax                        ; 274F _ 89. 04 24
        call    _handle_keyboard                        ; 2752 _ E8, FFFFFA09
        jmp     ?_139                                   ; 2757 _ EB, 6B

?_135:  cmp     dword [ebp+1CH], 16                     ; 2759 _ 83. 7D, 1C, 10
        jnz     ?_136                                   ; 275D _ 75, 11
        call    _timer_alloc                            ; 275F _ E8, 00000000(rel)
        mov     edx, eax                                ; 2764 _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 2766 _ 8B. 45, EC
        add     eax, 28                                 ; 2769 _ 83. C0, 1C
        mov     dword [eax], edx                        ; 276C _ 89. 10
        jmp     ?_139                                   ; 276E _ EB, 54

?_136:  cmp     dword [ebp+1CH], 17                     ; 2770 _ 83. 7D, 1C, 11
        jnz     ?_137                                   ; 2774 _ 75, 21
        mov     eax, dword [ebp+24H]                    ; 2776 _ 8B. 45, 24
        movzx   eax, al                                 ; 2779 _ 0F B6. C0
        mov     edx, dword [ebp-0CH]                    ; 277C _ 8B. 55, F4
        lea     ecx, [edx+10H]                          ; 277F _ 8D. 4A, 10
        mov     edx, dword [ebp+18H]                    ; 2782 _ 8B. 55, 18
        mov     dword [esp+8H], eax                     ; 2785 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 2789 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 278D _ 89. 14 24
        call    _timer_init                             ; 2790 _ E8, 00000000(rel)
        jmp     ?_139                                   ; 2795 _ EB, 2D

?_137:  cmp     dword [ebp+1CH], 18                     ; 2797 _ 83. 7D, 1C, 12
        jnz     ?_138                                   ; 279B _ 75, 16
        mov     eax, dword [ebp+24H]                    ; 279D _ 8B. 45, 24
        mov     edx, eax                                ; 27A0 _ 89. C2
        mov     eax, dword [ebp+18H]                    ; 27A2 _ 8B. 45, 18
        mov     dword [esp+4H], edx                     ; 27A5 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 27A9 _ 89. 04 24
        call    _timer_settime                          ; 27AC _ E8, 00000000(rel)
        jmp     ?_139                                   ; 27B1 _ EB, 11

?_138:  cmp     dword [ebp+1CH], 19                     ; 27B3 _ 83. 7D, 1C, 13
        jnz     ?_139                                   ; 27B7 _ 75, 0B
        mov     eax, dword [ebp+18H]                    ; 27B9 _ 8B. 45, 18
        mov     dword [esp], eax                        ; 27BC _ 89. 04 24
        call    _timer_free                             ; 27BF _ E8, 00000000(rel)
?_139:  mov     eax, 0                                  ; 27C4 _ B8, 00000000
?_140:  add     esp, 48                                 ; 27C9 _ 83. C4, 30
        pop     ebx                                     ; 27CC _ 5B
        pop     esi                                     ; 27CD _ 5E
        pop     ebp                                     ; 27CE _ 5D
        ret                                             ; 27CF _ C3
; _kernel_api End of function

_cons_putchar:; Function begin
        push    ebp                                     ; 27D0 _ 55
        mov     ebp, esp                                ; 27D1 _ 89. E5
        push    esi                                     ; 27D3 _ 56
        push    ebx                                     ; 27D4 _ 53
        sub     esp, 64                                 ; 27D5 _ 83. EC, 40
        mov     eax, dword [ebp+8H]                     ; 27D8 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 27DB _ 8B. 55, 0C
        mov     byte [ebp-1CH], al                      ; 27DE _ 88. 45, E4
        mov     eax, edx                                ; 27E1 _ 89. D0
        mov     byte [ebp-20H], al                      ; 27E3 _ 88. 45, E0
        call    _task_now                               ; 27E6 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 27EB _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 27EE _ 8B. 45, F4
        mov     ebx, dword [eax+9CH]                    ; 27F1 _ 8B. 98, 0000009C
        mov     eax, dword [ebp-0CH]                    ; 27F7 _ 8B. 45, F4
        mov     ecx, dword [eax+98H]                    ; 27FA _ 8B. 88, 00000098
        mov     eax, dword [ebp-0CH]                    ; 2800 _ 8B. 45, F4
        mov     edx, dword [eax+94H]                    ; 2803 _ 8B. 90, 00000094
        mov     eax, dword [_shtctl]                    ; 2809 _ A1, 00000264(d)
        mov     dword [esp+10H], 0                      ; 280E _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], ebx                    ; 2816 _ 89. 5C 24, 0C
        mov     dword [esp+8H], ecx                     ; 281A _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 281E _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2822 _ 89. 04 24
        call    _set_cursor                             ; 2825 _ E8, FFFFE179
        mov     edx, dword [ebp-0CH]                    ; 282A _ 8B. 55, F4
        movzx   eax, byte [ebp-1CH]                     ; 282D _ 0F B6. 45, E4
        mov     byte [edx+0A4H], al                     ; 2831 _ 88. 82, 000000A4
        mov     eax, dword [ebp-0CH]                    ; 2837 _ 8B. 45, F4
        mov     byte [eax+0A5H], 0                      ; 283A _ C6. 80, 000000A5, 00
        mov     eax, dword [ebp-0CH]                    ; 2841 _ 8B. 45, F4
        lea     esi, [eax+0A4H]                         ; 2844 _ 8D. B0, 000000A4
        mov     eax, dword [ebp-0CH]                    ; 284A _ 8B. 45, F4
        mov     ebx, dword [eax+9CH]                    ; 284D _ 8B. 98, 0000009C
        mov     eax, dword [ebp-0CH]                    ; 2853 _ 8B. 45, F4
        mov     ecx, dword [eax+98H]                    ; 2856 _ 8B. 88, 00000098
        mov     eax, dword [ebp-0CH]                    ; 285C _ 8B. 45, F4
        mov     edx, dword [eax+94H]                    ; 285F _ 8B. 90, 00000094
        mov     eax, dword [_shtctl]                    ; 2865 _ A1, 00000264(d)
        mov     dword [esp+14H], esi                    ; 286A _ 89. 74 24, 14
        mov     dword [esp+10H], 7                      ; 286E _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ebx                    ; 2876 _ 89. 5C 24, 0C
        mov     dword [esp+8H], ecx                     ; 287A _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 287E _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2882 _ 89. 04 24
        call    _showString                             ; 2885 _ E8, 0000056B
        mov     eax, dword [ebp-0CH]                    ; 288A _ 8B. 45, F4
        mov     eax, dword [eax+98H]                    ; 288D _ 8B. 80, 00000098
        lea     edx, [eax+8H]                           ; 2893 _ 8D. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 2896 _ 8B. 45, F4
        mov     dword [eax+98H], edx                    ; 2899 _ 89. 90, 00000098
        nop                                             ; 289F _ 90
        add     esp, 64                                 ; 28A0 _ 83. C4, 40
        pop     ebx                                     ; 28A3 _ 5B
        pop     esi                                     ; 28A4 _ 5E
        pop     ebp                                     ; 28A5 _ 5D
        ret                                             ; 28A6 _ C3
; _cons_putchar End of function

_cons_newline:; Function begin
        push    ebp                                     ; 28A7 _ 55
        mov     ebp, esp                                ; 28A8 _ 89. E5
        push    ebx                                     ; 28AA _ 53
        sub     esp, 52                                 ; 28AB _ 83. EC, 34
        cmp     dword [ebp+0CH], 0                      ; 28AE _ 83. 7D, 0C, 00
        je      ?_151                                   ; 28B2 _ 0F 84, 00000125
        cmp     dword [ebp+8H], 139                     ; 28B8 _ 81. 7D, 08, 0000008B
        jg      ?_141                                   ; 28BF _ 7F, 09
        add     dword [ebp+8H], 16                      ; 28C1 _ 83. 45, 08, 10
        jmp     ?_150                                   ; 28C5 _ E9, 000000DB

?_141:  mov     dword [ebp-10H], 28                     ; 28CA _ C7. 45, F0, 0000001C
        jmp     ?_145                                   ; 28D1 _ EB, 50

?_142:  mov     dword [ebp-0CH], 8                      ; 28D3 _ C7. 45, F4, 00000008
        jmp     ?_144                                   ; 28DA _ EB, 3A

?_143:  mov     eax, dword [ebp+0CH]                    ; 28DC _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 28DF _ 8B. 10
        mov     eax, dword [ebp-10H]                    ; 28E1 _ 8B. 45, F0
        lea     ecx, [eax+10H]                          ; 28E4 _ 8D. 48, 10
        mov     eax, dword [ebp+0CH]                    ; 28E7 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 28EA _ 8B. 40, 04
        imul    eax, ecx                                ; 28ED _ 0F AF. C1
        mov     ecx, dword [ebp-0CH]                    ; 28F0 _ 8B. 4D, F4
        add     eax, ecx                                ; 28F3 _ 01. C8
        add     eax, edx                                ; 28F5 _ 01. D0
        mov     edx, dword [ebp+0CH]                    ; 28F7 _ 8B. 55, 0C
        mov     ecx, dword [edx]                        ; 28FA _ 8B. 0A
        mov     edx, dword [ebp+0CH]                    ; 28FC _ 8B. 55, 0C
        mov     edx, dword [edx+4H]                     ; 28FF _ 8B. 52, 04
        imul    edx, dword [ebp-10H]                    ; 2902 _ 0F AF. 55, F0
        mov     ebx, dword [ebp-0CH]                    ; 2906 _ 8B. 5D, F4
        add     edx, ebx                                ; 2909 _ 01. DA
        add     edx, ecx                                ; 290B _ 01. CA
        movzx   eax, byte [eax]                         ; 290D _ 0F B6. 00
        mov     byte [edx], al                          ; 2910 _ 88. 02
        add     dword [ebp-0CH], 1                      ; 2912 _ 83. 45, F4, 01
?_144:  cmp     dword [ebp-0CH], 247                    ; 2916 _ 81. 7D, F4, 000000F7
        jle     ?_143                                   ; 291D _ 7E, BD
        add     dword [ebp-10H], 1                      ; 291F _ 83. 45, F0, 01
?_145:  cmp     dword [ebp-10H], 139                    ; 2923 _ 81. 7D, F0, 0000008B
        jle     ?_142                                   ; 292A _ 7E, A7
        mov     dword [ebp-10H], 140                    ; 292C _ C7. 45, F0, 0000008C
        jmp     ?_149                                   ; 2933 _ EB, 33

?_146:  mov     dword [ebp-0CH], 8                      ; 2935 _ C7. 45, F4, 00000008
        jmp     ?_148                                   ; 293C _ EB, 1D

?_147:  mov     eax, dword [ebp+0CH]                    ; 293E _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 2941 _ 8B. 10
        mov     eax, dword [ebp+0CH]                    ; 2943 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2946 _ 8B. 40, 04
        imul    eax, dword [ebp-10H]                    ; 2949 _ 0F AF. 45, F0
        mov     ecx, dword [ebp-0CH]                    ; 294D _ 8B. 4D, F4
        add     eax, ecx                                ; 2950 _ 01. C8
        add     eax, edx                                ; 2952 _ 01. D0
        mov     byte [eax], 0                           ; 2954 _ C6. 00, 00
        add     dword [ebp-0CH], 1                      ; 2957 _ 83. 45, F4, 01
?_148:  cmp     dword [ebp-0CH], 247                    ; 295B _ 81. 7D, F4, 000000F7
        jle     ?_147                                   ; 2962 _ 7E, DA
        add     dword [ebp-10H], 1                      ; 2964 _ 83. 45, F0, 01
?_149:  cmp     dword [ebp-10H], 155                    ; 2968 _ 81. 7D, F0, 0000009B
        jle     ?_146                                   ; 296F _ 7E, C4
        mov     eax, dword [_shtctl]                    ; 2971 _ A1, 00000264(d)
        mov     dword [esp+14H], 156                    ; 2976 _ C7. 44 24, 14, 0000009C
        mov     dword [esp+10H], 248                    ; 297E _ C7. 44 24, 10, 000000F8
        mov     dword [esp+0CH], 28                     ; 2986 _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 8                       ; 298E _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp+0CH]                    ; 2996 _ 8B. 55, 0C
        mov     dword [esp+4H], edx                     ; 2999 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 299D _ 89. 04 24
        call    _sheet_refresh                          ; 29A0 _ E8, 00000000(rel)
?_150:  mov     eax, dword [_shtctl]                    ; 29A5 _ A1, 00000264(d)
        mov     dword [esp+14H], ?_390                  ; 29AA _ C7. 44 24, 14, 00000023(d)
        mov     dword [esp+10H], 7                      ; 29B2 _ C7. 44 24, 10, 00000007
        mov     edx, dword [ebp+8H]                     ; 29BA _ 8B. 55, 08
        mov     dword [esp+0CH], edx                    ; 29BD _ 89. 54 24, 0C
        mov     dword [esp+8H], 8                       ; 29C1 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp+0CH]                    ; 29C9 _ 8B. 55, 0C
        mov     dword [esp+4H], edx                     ; 29CC _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 29D0 _ 89. 04 24
        call    _showString                             ; 29D3 _ E8, 0000041D
        mov     eax, dword [ebp+8H]                     ; 29D8 _ 8B. 45, 08
        jmp     ?_152                                   ; 29DB _ EB, 02

?_151:  nop                                             ; 29DD _ 90
        nop                                             ; 29DE _ 90
?_152:  add     esp, 52                                 ; 29DF _ 83. C4, 34
        pop     ebx                                     ; 29E2 _ 5B
        pop     ebp                                     ; 29E3 _ 5D
        ret                                             ; 29E4 _ C3
; _cons_newline End of function

_init_screen8:; Function begin
        push    ebp                                     ; 29E5 _ 55
        mov     ebp, esp                                ; 29E6 _ 89. E5
        push    ebx                                     ; 29E8 _ 53
        sub     esp, 36                                 ; 29E9 _ 83. EC, 24
        mov     eax, dword [ebp+10H]                    ; 29EC _ 8B. 45, 10
        lea     edx, [eax-1DH]                          ; 29EF _ 8D. 50, E3
        mov     eax, dword [ebp+0CH]                    ; 29F2 _ 8B. 45, 0C
        sub     eax, 1                                  ; 29F5 _ 83. E8, 01
        mov     dword [esp+18H], edx                    ; 29F8 _ 89. 54 24, 18
        mov     dword [esp+14H], eax                    ; 29FC _ 89. 44 24, 14
        mov     dword [esp+10H], 0                      ; 2A00 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 2A08 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 14                      ; 2A10 _ C7. 44 24, 08, 0000000E
        mov     eax, dword [ebp+0CH]                    ; 2A18 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2A1B _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2A1F _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2A22 _ 89. 04 24
        call    _boxfill8                               ; 2A25 _ E8, 00000A98
        mov     eax, dword [ebp+10H]                    ; 2A2A _ 8B. 45, 10
        lea     ecx, [eax-1CH]                          ; 2A2D _ 8D. 48, E4
        mov     eax, dword [ebp+0CH]                    ; 2A30 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 2A33 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 2A36 _ 8B. 45, 10
        sub     eax, 28                                 ; 2A39 _ 83. E8, 1C
        mov     dword [esp+18H], ecx                    ; 2A3C _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 2A40 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 2A44 _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 2A48 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 2A50 _ C7. 44 24, 08, 00000008
        mov     eax, dword [ebp+0CH]                    ; 2A58 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2A5B _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2A5F _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2A62 _ 89. 04 24
        call    _boxfill8                               ; 2A65 _ E8, 00000A58
        mov     eax, dword [ebp+10H]                    ; 2A6A _ 8B. 45, 10
        lea     ecx, [eax-1BH]                          ; 2A6D _ 8D. 48, E5
        mov     eax, dword [ebp+0CH]                    ; 2A70 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 2A73 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 2A76 _ 8B. 45, 10
        sub     eax, 27                                 ; 2A79 _ 83. E8, 1B
        mov     dword [esp+18H], ecx                    ; 2A7C _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 2A80 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 2A84 _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 2A88 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 7                       ; 2A90 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 2A98 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2A9B _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2A9F _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2AA2 _ 89. 04 24
        call    _boxfill8                               ; 2AA5 _ E8, 00000A18
        mov     eax, dword [ebp+10H]                    ; 2AAA _ 8B. 45, 10
        lea     ecx, [eax-1H]                           ; 2AAD _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 2AB0 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 2AB3 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 2AB6 _ 8B. 45, 10
        sub     eax, 26                                 ; 2AB9 _ 83. E8, 1A
        mov     dword [esp+18H], ecx                    ; 2ABC _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 2AC0 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 2AC4 _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 2AC8 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 2AD0 _ C7. 44 24, 08, 00000008
        mov     eax, dword [ebp+0CH]                    ; 2AD8 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2ADB _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2ADF _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2AE2 _ 89. 04 24
        call    _boxfill8                               ; 2AE5 _ E8, 000009D8
        mov     eax, dword [ebp+10H]                    ; 2AEA _ 8B. 45, 10
        lea     edx, [eax-18H]                          ; 2AED _ 8D. 50, E8
        mov     eax, dword [ebp+10H]                    ; 2AF0 _ 8B. 45, 10
        sub     eax, 24                                 ; 2AF3 _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 2AF6 _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 2AFA _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 2B02 _ 89. 44 24, 10
        mov     dword [esp+0CH], 3                      ; 2B06 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 7                       ; 2B0E _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 2B16 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2B19 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2B1D _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2B20 _ 89. 04 24
        call    _boxfill8                               ; 2B23 _ E8, 0000099A
        mov     eax, dword [ebp+10H]                    ; 2B28 _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 2B2B _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 2B2E _ 8B. 45, 10
        sub     eax, 24                                 ; 2B31 _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 2B34 _ 89. 54 24, 18
        mov     dword [esp+14H], 2                      ; 2B38 _ C7. 44 24, 14, 00000002
        mov     dword [esp+10H], eax                    ; 2B40 _ 89. 44 24, 10
        mov     dword [esp+0CH], 2                      ; 2B44 _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 7                       ; 2B4C _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 2B54 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2B57 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2B5B _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2B5E _ 89. 04 24
        call    _boxfill8                               ; 2B61 _ E8, 0000095C
        mov     eax, dword [ebp+10H]                    ; 2B66 _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 2B69 _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 2B6C _ 8B. 45, 10
        sub     eax, 4                                  ; 2B6F _ 83. E8, 04
        mov     dword [esp+18H], edx                    ; 2B72 _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 2B76 _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 2B7E _ 89. 44 24, 10
        mov     dword [esp+0CH], 3                      ; 2B82 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 15                      ; 2B8A _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 2B92 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2B95 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2B99 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2B9C _ 89. 04 24
        call    _boxfill8                               ; 2B9F _ E8, 0000091E
        mov     eax, dword [ebp+10H]                    ; 2BA4 _ 8B. 45, 10
        lea     edx, [eax-5H]                           ; 2BA7 _ 8D. 50, FB
        mov     eax, dword [ebp+10H]                    ; 2BAA _ 8B. 45, 10
        sub     eax, 23                                 ; 2BAD _ 83. E8, 17
        mov     dword [esp+18H], edx                    ; 2BB0 _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 2BB4 _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 2BBC _ 89. 44 24, 10
        mov     dword [esp+0CH], 59                     ; 2BC0 _ C7. 44 24, 0C, 0000003B
        mov     dword [esp+8H], 15                      ; 2BC8 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 2BD0 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2BD3 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2BD7 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2BDA _ 89. 04 24
        call    _boxfill8                               ; 2BDD _ E8, 000008E0
        mov     eax, dword [ebp+10H]                    ; 2BE2 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 2BE5 _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 2BE8 _ 8B. 45, 10
        sub     eax, 3                                  ; 2BEB _ 83. E8, 03
        mov     dword [esp+18H], edx                    ; 2BEE _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 2BF2 _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 2BFA _ 89. 44 24, 10
        mov     dword [esp+0CH], 2                      ; 2BFE _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 0                       ; 2C06 _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp+0CH]                    ; 2C0E _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2C11 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2C15 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2C18 _ 89. 04 24
        call    _boxfill8                               ; 2C1B _ E8, 000008A2
        mov     eax, dword [ebp+10H]                    ; 2C20 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 2C23 _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 2C26 _ 8B. 45, 10
        sub     eax, 24                                 ; 2C29 _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 2C2C _ 89. 54 24, 18
        mov     dword [esp+14H], 60                     ; 2C30 _ C7. 44 24, 14, 0000003C
        mov     dword [esp+10H], eax                    ; 2C38 _ 89. 44 24, 10
        mov     dword [esp+0CH], 60                     ; 2C3C _ C7. 44 24, 0C, 0000003C
        mov     dword [esp+8H], 0                       ; 2C44 _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp+0CH]                    ; 2C4C _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2C4F _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2C53 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2C56 _ 89. 04 24
        call    _boxfill8                               ; 2C59 _ E8, 00000864
        mov     eax, dword [ebp+10H]                    ; 2C5E _ 8B. 45, 10
        lea     ebx, [eax-18H]                          ; 2C61 _ 8D. 58, E8
        mov     eax, dword [ebp+0CH]                    ; 2C64 _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 2C67 _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 2C6A _ 8B. 45, 10
        lea     edx, [eax-18H]                          ; 2C6D _ 8D. 50, E8
        mov     eax, dword [ebp+0CH]                    ; 2C70 _ 8B. 45, 0C
        sub     eax, 47                                 ; 2C73 _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 2C76 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 2C7A _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 2C7E _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 2C82 _ 89. 44 24, 0C
        mov     dword [esp+8H], 15                      ; 2C86 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 2C8E _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2C91 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2C95 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2C98 _ 89. 04 24
        call    _boxfill8                               ; 2C9B _ E8, 00000822
        mov     eax, dword [ebp+10H]                    ; 2CA0 _ 8B. 45, 10
        lea     ebx, [eax-4H]                           ; 2CA3 _ 8D. 58, FC
        mov     eax, dword [ebp+0CH]                    ; 2CA6 _ 8B. 45, 0C
        lea     ecx, [eax-2FH]                          ; 2CA9 _ 8D. 48, D1
        mov     eax, dword [ebp+10H]                    ; 2CAC _ 8B. 45, 10
        lea     edx, [eax-17H]                          ; 2CAF _ 8D. 50, E9
        mov     eax, dword [ebp+0CH]                    ; 2CB2 _ 8B. 45, 0C
        sub     eax, 47                                 ; 2CB5 _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 2CB8 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 2CBC _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 2CC0 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 2CC4 _ 89. 44 24, 0C
        mov     dword [esp+8H], 15                      ; 2CC8 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 2CD0 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2CD3 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2CD7 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2CDA _ 89. 04 24
        call    _boxfill8                               ; 2CDD _ E8, 000007E0
        mov     eax, dword [ebp+10H]                    ; 2CE2 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 2CE5 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 2CE8 _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 2CEB _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 2CEE _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 2CF1 _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 2CF4 _ 8B. 45, 0C
        sub     eax, 47                                 ; 2CF7 _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 2CFA _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 2CFE _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 2D02 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 2D06 _ 89. 44 24, 0C
        mov     dword [esp+8H], 7                       ; 2D0A _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 2D12 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2D15 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2D19 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2D1C _ 89. 04 24
        call    _boxfill8                               ; 2D1F _ E8, 0000079E
        mov     eax, dword [ebp+10H]                    ; 2D24 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 2D27 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 2D2A _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 2D2D _ 8D. 48, FD
        mov     eax, dword [ebp+10H]                    ; 2D30 _ 8B. 45, 10
        lea     edx, [eax-18H]                          ; 2D33 _ 8D. 50, E8
        mov     eax, dword [ebp+0CH]                    ; 2D36 _ 8B. 45, 0C
        sub     eax, 3                                  ; 2D39 _ 83. E8, 03
        mov     dword [esp+18H], ebx                    ; 2D3C _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 2D40 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 2D44 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 2D48 _ 89. 44 24, 0C
        mov     dword [esp+8H], 7                       ; 2D4C _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 2D54 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2D57 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2D5B _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2D5E _ 89. 04 24
        call    _boxfill8                               ; 2D61 _ E8, 0000075C
        nop                                             ; 2D66 _ 90
        add     esp, 36                                 ; 2D67 _ 83. C4, 24
        pop     ebx                                     ; 2D6A _ 5B
        pop     ebp                                     ; 2D6B _ 5D
        ret                                             ; 2D6C _ C3
; _init_screen8 End of function

_computeMousePosition:; Function begin
        push    ebp                                     ; 2D6D _ 55
        mov     ebp, esp                                ; 2D6E _ 89. E5
        mov     eax, dword [ebp+10H]                    ; 2D70 _ 8B. 45, 10
        mov     edx, dword [eax+4H]                     ; 2D73 _ 8B. 50, 04
        mov     eax, dword [_mx]                        ; 2D76 _ A1, 00000134(d)
        add     eax, edx                                ; 2D7B _ 01. D0
        mov     dword [_mx], eax                        ; 2D7D _ A3, 00000134(d)
        mov     eax, dword [ebp+10H]                    ; 2D82 _ 8B. 45, 10
        mov     edx, dword [eax+8H]                     ; 2D85 _ 8B. 50, 08
        mov     eax, dword [_my]                        ; 2D88 _ A1, 00000138(d)
        add     eax, edx                                ; 2D8D _ 01. D0
        mov     dword [_my], eax                        ; 2D8F _ A3, 00000138(d)
        mov     eax, dword [_mx]                        ; 2D94 _ A1, 00000134(d)
        test    eax, eax                                ; 2D99 _ 85. C0
        jns     ?_153                                   ; 2D9B _ 79, 0A
        mov     dword [_mx], 0                          ; 2D9D _ C7. 05, 00000134(d), 00000000
?_153:  mov     eax, dword [_my]                        ; 2DA7 _ A1, 00000138(d)
        test    eax, eax                                ; 2DAC _ 85. C0
        jns     ?_154                                   ; 2DAE _ 79, 0A
        mov     dword [_my], 0                          ; 2DB0 _ C7. 05, 00000138(d), 00000000
?_154:  mov     edx, dword [_xsize]                     ; 2DBA _ 8B. 15, 0000013C(d)
        mov     eax, dword [_mx]                        ; 2DC0 _ A1, 00000134(d)
        cmp     edx, eax                                ; 2DC5 _ 39. C2
        jg      ?_155                                   ; 2DC7 _ 7F, 0D
        mov     eax, dword [_xsize]                     ; 2DC9 _ A1, 0000013C(d)
        sub     eax, 1                                  ; 2DCE _ 83. E8, 01
        mov     dword [_mx], eax                        ; 2DD1 _ A3, 00000134(d)
?_155:  mov     edx, dword [_ysize]                     ; 2DD6 _ 8B. 15, 00000140(d)
        mov     eax, dword [_my]                        ; 2DDC _ A1, 00000138(d)
        cmp     edx, eax                                ; 2DE1 _ 39. C2
        jg      ?_156                                   ; 2DE3 _ 7F, 0D
        mov     eax, dword [_ysize]                     ; 2DE5 _ A1, 00000140(d)
        sub     eax, 1                                  ; 2DEA _ 83. E8, 01
        mov     dword [_my], eax                        ; 2DED _ A3, 00000138(d)
?_156:  nop                                             ; 2DF2 _ 90
        pop     ebp                                     ; 2DF3 _ 5D
        ret                                             ; 2DF4 _ C3
; _computeMousePosition End of function

_showString:; Function begin
        push    ebp                                     ; 2DF5 _ 55
        mov     ebp, esp                                ; 2DF6 _ 89. E5
        push    ebx                                     ; 2DF8 _ 53
        sub     esp, 68                                 ; 2DF9 _ 83. EC, 44
        mov     eax, dword [ebp+18H]                    ; 2DFC _ 8B. 45, 18
        mov     byte [ebp-1CH], al                      ; 2DFF _ 88. 45, E4
        cmp     dword [ebp+8H], 0                       ; 2E02 _ 83. 7D, 08, 00
        je      ?_159                                   ; 2E06 _ 0F 84, 000000A1
        cmp     dword [ebp+0CH], 0                      ; 2E0C _ 83. 7D, 0C, 00
        je      ?_159                                   ; 2E10 _ 0F 84, 00000097
        mov     eax, dword [ebp+10H]                    ; 2E16 _ 8B. 45, 10
        mov     dword [ebp-0CH], eax                    ; 2E19 _ 89. 45, F4
        mov     dword [ebp-10H], 0                      ; 2E1C _ C7. 45, F0, 00000000
        jmp     ?_158                                   ; 2E23 _ EB, 4B

?_157:  mov     eax, dword [ebp+1CH]                    ; 2E25 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 2E28 _ 0F B6. 00
        movzx   eax, al                                 ; 2E2B _ 0F B6. C0
        shl     eax, 4                                  ; 2E2E _ C1. E0, 04
        lea     ebx, [_systemFont+eax]                  ; 2E31 _ 8D. 98, 00000000(d)
        movsx   eax, byte [ebp-1CH]                     ; 2E37 _ 0F BE. 45, E4
        mov     edx, dword [ebp+0CH]                    ; 2E3B _ 8B. 55, 0C
        mov     ecx, dword [edx+4H]                     ; 2E3E _ 8B. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 2E41 _ 8B. 55, 0C
        mov     edx, dword [edx]                        ; 2E44 _ 8B. 12
        mov     dword [esp+14H], ebx                    ; 2E46 _ 89. 5C 24, 14
        mov     dword [esp+10H], eax                    ; 2E4A _ 89. 44 24, 10
        mov     eax, dword [ebp+14H]                    ; 2E4E _ 8B. 45, 14
        mov     dword [esp+0CH], eax                    ; 2E51 _ 89. 44 24, 0C
        mov     eax, dword [ebp+10H]                    ; 2E55 _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 2E58 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 2E5C _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 2E60 _ 89. 14 24
        call    _showFont8                              ; 2E63 _ E8, 000006AA
        add     dword [ebp+10H], 8                      ; 2E68 _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 2E6C _ 83. 45, 1C, 01
?_158:  mov     eax, dword [ebp+1CH]                    ; 2E70 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 2E73 _ 0F B6. 00
        test    al, al                                  ; 2E76 _ 84. C0
        jnz     ?_157                                   ; 2E78 _ 75, AB
        mov     eax, dword [ebp+14H]                    ; 2E7A _ 8B. 45, 14
        add     eax, 16                                 ; 2E7D _ 83. C0, 10
        mov     dword [esp+14H], eax                    ; 2E80 _ 89. 44 24, 14
        mov     eax, dword [ebp+10H]                    ; 2E84 _ 8B. 45, 10
        mov     dword [esp+10H], eax                    ; 2E87 _ 89. 44 24, 10
        mov     eax, dword [ebp+14H]                    ; 2E8B _ 8B. 45, 14
        mov     dword [esp+0CH], eax                    ; 2E8E _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 2E92 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 2E95 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 2E99 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2E9C _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2EA0 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2EA3 _ 89. 04 24
        call    _sheet_refresh                          ; 2EA6 _ E8, 00000000(rel)
        jmp     ?_160                                   ; 2EAB _ EB, 01

?_159:  nop                                             ; 2EAD _ 90
?_160:  add     esp, 68                                 ; 2EAE _ 83. C4, 44
        pop     ebx                                     ; 2EB1 _ 5B
        pop     ebp                                     ; 2EB2 _ 5D
        ret                                             ; 2EB3 _ C3
; _showString End of function

_show_mouse_info:; Function begin
        push    ebp                                     ; 2EB4 _ 55
        mov     ebp, esp                                ; 2EB5 _ 89. E5
        sub     esp, 72                                 ; 2EB7 _ 83. EC, 48
        mov     eax, dword [_buf_back]                  ; 2EBA _ A1, 00000144(d)
        mov     dword [ebp-10H], eax                    ; 2EBF _ 89. 45, F0
        mov     byte [ebp-11H], 0                       ; 2EC2 _ C6. 45, EF, 00
        mov     dword [ebp-18H], 0                      ; 2EC6 _ C7. 45, E8, 00000000
        call    _io_sti                                 ; 2ECD _ E8, 00000000(rel)
        mov     dword [esp], _mouseinfo                 ; 2ED2 _ C7. 04 24, 0000003C(d)
        call    _fifo8_get                              ; 2ED9 _ E8, 00000000(rel)
        mov     byte [ebp-11H], al                      ; 2EDE _ 88. 45, EF
        movzx   eax, byte [ebp-11H]                     ; 2EE1 _ 0F B6. 45, EF
        mov     dword [esp+4H], eax                     ; 2EE5 _ 89. 44 24, 04
        mov     dword [esp], _mdec                      ; 2EE9 _ C7. 04 24, 00000100(d)
        call    _mouse_decode                           ; 2EF0 _ E8, 00000B41
        test    eax, eax                                ; 2EF5 _ 85. C0
        je      ?_171                                   ; 2EF7 _ 0F 84, 0000039C
        mov     dword [esp+8H], _mdec                   ; 2EFD _ C7. 44 24, 08, 00000100(d)
        mov     eax, dword [ebp+0CH]                    ; 2F05 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2F08 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2F0C _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2F0F _ 89. 04 24
        call    _computeMousePosition                   ; 2F12 _ E8, FFFFFE56
        mov     edx, dword [_my]                        ; 2F17 _ 8B. 15, 00000138(d)
        mov     eax, dword [_mx]                        ; 2F1D _ A1, 00000134(d)
        mov     dword [esp+0CH], edx                    ; 2F22 _ 89. 54 24, 0C
        mov     dword [esp+8H], eax                     ; 2F26 _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 2F2A _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 2F2D _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2F31 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2F34 _ 89. 04 24
        call    _sheet_slide                            ; 2F37 _ E8, 00000000(rel)
        mov     eax, dword [?_415]                      ; 2F3C _ A1, 0000010C(d)
        and     eax, 01H                                ; 2F41 _ 83. E0, 01
        test    eax, eax                                ; 2F44 _ 85. C0
        je      ?_169                                   ; 2F46 _ 0F 84, 00000340
        mov     eax, dword [_mmx]                       ; 2F4C _ A1, 00000118(d)
        test    eax, eax                                ; 2F51 _ 85. C0
        jns     ?_168                                   ; 2F53 _ 0F 89, 000002C2
        mov     eax, dword [ebp+8H]                     ; 2F59 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2F5C _ 8B. 40, 10
        sub     eax, 1                                  ; 2F5F _ 83. E8, 01
        mov     dword [ebp-0CH], eax                    ; 2F62 _ 89. 45, F4
        jmp     ?_167                                   ; 2F65 _ E9, 000002A5

?_161:  mov     eax, dword [ebp+8H]                     ; 2F6A _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2F6D _ 8B. 55, F4
        add     edx, 4                                  ; 2F70 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2F73 _ 8B. 44 90, 04
        mov     dword [ebp-18H], eax                    ; 2F77 _ 89. 45, E8
        mov     edx, dword [_mx]                        ; 2F7A _ 8B. 15, 00000134(d)
        mov     eax, dword [ebp-18H]                    ; 2F80 _ 8B. 45, E8
        mov     eax, dword [eax+0CH]                    ; 2F83 _ 8B. 40, 0C
        sub     edx, eax                                ; 2F86 _ 29. C2
        mov     eax, edx                                ; 2F88 _ 89. D0
        mov     dword [ebp-1CH], eax                    ; 2F8A _ 89. 45, E4
        mov     edx, dword [_my]                        ; 2F8D _ 8B. 15, 00000138(d)
        mov     eax, dword [ebp-18H]                    ; 2F93 _ 8B. 45, E8
        mov     eax, dword [eax+10H]                    ; 2F96 _ 8B. 40, 10
        sub     edx, eax                                ; 2F99 _ 29. C2
        mov     eax, edx                                ; 2F9B _ 89. D0
        mov     dword [ebp-20H], eax                    ; 2F9D _ 89. 45, E0
        cmp     dword [ebp-1CH], 0                      ; 2FA0 _ 83. 7D, E4, 00
        js      ?_166                                   ; 2FA4 _ 0F 88, 00000261
        mov     eax, dword [ebp-18H]                    ; 2FAA _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 2FAD _ 8B. 40, 04
        cmp     dword [ebp-1CH], eax                    ; 2FB0 _ 39. 45, E4
        jge     ?_166                                   ; 2FB3 _ 0F 8D, 00000252
        cmp     dword [ebp-20H], 0                      ; 2FB9 _ 83. 7D, E0, 00
        js      ?_166                                   ; 2FBD _ 0F 88, 00000248
        mov     eax, dword [ebp-18H]                    ; 2FC3 _ 8B. 45, E8
        mov     eax, dword [eax+8H]                     ; 2FC6 _ 8B. 40, 08
        cmp     dword [ebp-20H], eax                    ; 2FC9 _ 39. 45, E0
        jge     ?_166                                   ; 2FCC _ 0F 8D, 00000239
        mov     eax, dword [ebp-18H]                    ; 2FD2 _ 8B. 45, E8
        mov     edx, dword [eax]                        ; 2FD5 _ 8B. 10
        mov     eax, dword [ebp-18H]                    ; 2FD7 _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 2FDA _ 8B. 40, 04
        imul    eax, dword [ebp-20H]                    ; 2FDD _ 0F AF. 45, E0
        mov     ecx, dword [ebp-1CH]                    ; 2FE1 _ 8B. 4D, E4
        add     eax, ecx                                ; 2FE4 _ 01. C8
        add     eax, edx                                ; 2FE6 _ 01. D0
        movzx   eax, byte [eax]                         ; 2FE8 _ 0F B6. 00
        movzx   eax, al                                 ; 2FEB _ 0F B6. C0
        mov     edx, dword [ebp-18H]                    ; 2FEE _ 8B. 55, E8
        mov     edx, dword [edx+14H]                    ; 2FF1 _ 8B. 52, 14
        cmp     eax, edx                                ; 2FF4 _ 39. D0
        je      ?_166                                   ; 2FF6 _ 0F 84, 0000020F
        mov     eax, dword [_current_console_task]      ; 2FFC _ A1, 00000278(d)
        mov     eax, dword [eax+0B4H]                   ; 3001 _ 8B. 80, 000000B4
        test    eax, eax                                ; 3007 _ 85. C0
        jz      ?_162                                   ; 3009 _ 74, 68
        mov     eax, dword [_current_console_task]      ; 300B _ A1, 00000278(d)
        mov     eax, dword [eax+0B4H]                   ; 3010 _ 8B. 80, 000000B4
        mov     dword [esp+0CH], 0                      ; 3016 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], ?_386                   ; 301E _ C7. 44 24, 08, 0000000F(d)
        mov     dword [esp+4H], eax                     ; 3026 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 302A _ 8B. 45, 08
        mov     dword [esp], eax                        ; 302D _ 89. 04 24
        call    _make_wtitle8                           ; 3030 _ E8, 0000110B
        mov     eax, dword [ebp-18H]                    ; 3035 _ 8B. 45, E8
        mov     ecx, dword [eax+8H]                     ; 3038 _ 8B. 48, 08
        mov     eax, dword [ebp-18H]                    ; 303B _ 8B. 45, E8
        mov     edx, dword [eax+4H]                     ; 303E _ 8B. 50, 04
        mov     eax, dword [_current_console_task]      ; 3041 _ A1, 00000278(d)
        mov     eax, dword [eax+0B4H]                   ; 3046 _ 8B. 80, 000000B4
        mov     dword [esp+14H], ecx                    ; 304C _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 3050 _ 89. 54 24, 10
        mov     dword [esp+0CH], 0                      ; 3054 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 305C _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], eax                     ; 3064 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3068 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 306B _ 89. 04 24
        call    _sheet_refresh                          ; 306E _ E8, 00000000(rel)
?_162:  mov     eax, dword [ebp-18H]                    ; 3073 _ 8B. 45, E8
        mov     eax, dword [eax+20H]                    ; 3076 _ 8B. 40, 20
        mov     dword [_current_console_task], eax      ; 3079 _ A3, 00000278(d)
        mov     eax, dword [_current_console_task]      ; 307E _ A1, 00000278(d)
        mov     eax, dword [eax+0B4H]                   ; 3083 _ 8B. 80, 000000B4
        test    eax, eax                                ; 3089 _ 85. C0
        jnz     ?_163                                   ; 308B _ 75, 32
        mov     dword [esp+14H], ?_402                  ; 308D _ C7. 44 24, 14, 00000068(d)
        mov     dword [esp+10H], 7                      ; 3095 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 96                     ; 309D _ C7. 44 24, 0C, 00000060
        mov     dword [esp+8H], 0                       ; 30A5 _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp+0CH]                    ; 30AD _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 30B0 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 30B4 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 30B7 _ 89. 04 24
        call    _showString                             ; 30BA _ E8, FFFFFD36
?_163:  mov     eax, dword [_current_console_task]      ; 30BF _ A1, 00000278(d)
        mov     eax, dword [eax+0B4H]                   ; 30C4 _ 8B. 80, 000000B4
        test    eax, eax                                ; 30CA _ 85. C0
        jz      ?_164                                   ; 30CC _ 74, 60
        mov     eax, dword [_current_console_task]      ; 30CE _ A1, 00000278(d)
        mov     eax, dword [eax+0B4H]                   ; 30D3 _ 8B. 80, 000000B4
        mov     dword [esp+0CH], 1                      ; 30D9 _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], ?_386                   ; 30E1 _ C7. 44 24, 08, 0000000F(d)
        mov     dword [esp+4H], eax                     ; 30E9 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 30ED _ 8B. 45, 08
        mov     dword [esp], eax                        ; 30F0 _ 89. 04 24
        call    _make_wtitle8                           ; 30F3 _ E8, 00001048
        mov     eax, dword [ebp-18H]                    ; 30F8 _ 8B. 45, E8
        mov     edx, dword [eax+8H]                     ; 30FB _ 8B. 50, 08
        mov     eax, dword [ebp-18H]                    ; 30FE _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 3101 _ 8B. 40, 04
        mov     dword [esp+14H], edx                    ; 3104 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 3108 _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 310C _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 3114 _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp-18H]                    ; 311C _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 311F _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3123 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3126 _ 89. 04 24
        call    _sheet_refresh                          ; 3129 _ E8, 00000000(rel)
?_164:  mov     eax, dword [ebp+8H]                     ; 312E _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3131 _ 8B. 40, 10
        sub     eax, 1                                  ; 3134 _ 83. E8, 01
        mov     dword [esp+8H], eax                     ; 3137 _ 89. 44 24, 08
        mov     eax, dword [ebp-18H]                    ; 313B _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 313E _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3142 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3145 _ 89. 04 24
        call    _sheet_updown                           ; 3148 _ E8, 00000000(rel)
        cmp     dword [ebp-1CH], 2                      ; 314D _ 83. 7D, E4, 02
        jle     ?_165                                   ; 3151 _ 7E, 36
        mov     eax, dword [ebp-18H]                    ; 3153 _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 3156 _ 8B. 40, 04
        sub     eax, 3                                  ; 3159 _ 83. E8, 03
        cmp     dword [ebp-1CH], eax                    ; 315C _ 39. 45, E4
        jge     ?_165                                   ; 315F _ 7D, 28
        cmp     dword [ebp-20H], 2                      ; 3161 _ 83. 7D, E0, 02
        jle     ?_165                                   ; 3165 _ 7E, 22
        cmp     dword [ebp-20H], 20                     ; 3167 _ 83. 7D, E0, 14
        jg      ?_165                                   ; 316B _ 7F, 1C
        mov     eax, dword [_mx]                        ; 316D _ A1, 00000134(d)
        mov     dword [_mmx], eax                       ; 3172 _ A3, 00000118(d)
        mov     eax, dword [_my]                        ; 3177 _ A1, 00000138(d)
        mov     dword [_mmy], eax                       ; 317C _ A3, 0000011C(d)
        mov     eax, dword [ebp-18H]                    ; 3181 _ 8B. 45, E8
        mov     dword [_mouse_clicked_sht], eax         ; 3184 _ A3, 00000270(d)
?_165:  mov     eax, dword [ebp-18H]                    ; 3189 _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 318C _ 8B. 40, 04
        sub     eax, 21                                 ; 318F _ 83. E8, 15
        cmp     dword [ebp-1CH], eax                    ; 3192 _ 39. 45, E4
        jl      ?_170                                   ; 3195 _ 0F 8C, 000000FD
        mov     eax, dword [ebp-18H]                    ; 319B _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 319E _ 8B. 40, 04
        sub     eax, 5                                  ; 31A1 _ 83. E8, 05
        cmp     dword [ebp-1CH], eax                    ; 31A4 _ 39. 45, E4
        jge     ?_170                                   ; 31A7 _ 0F 8D, 000000EB
        cmp     dword [ebp-20H], 4                      ; 31AD _ 83. 7D, E0, 04
        jle     ?_170                                   ; 31B1 _ 0F 8E, 000000E1
        cmp     dword [ebp-20H], 18                     ; 31B7 _ 83. 7D, E0, 12
        jg      ?_170                                   ; 31BB _ 0F 8F, 000000D7
        mov     eax, dword [ebp-18H]                    ; 31C1 _ 8B. 45, E8
        mov     eax, dword [eax+20H]                    ; 31C4 _ 8B. 40, 20
        test    eax, eax                                ; 31C7 _ 85. C0
        je      ?_170                                   ; 31C9 _ 0F 84, 000000C9
        call    _io_cli                                 ; 31CF _ E8, 00000000(rel)
        mov     eax, dword [ebp-18H]                    ; 31D4 _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 31D7 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 31DB _ 8B. 45, 08
        mov     dword [esp], eax                        ; 31DE _ 89. 04 24
        call    _sheet_free                             ; 31E1 _ E8, 00000000(rel)
        call    _get_addr_code32                        ; 31E6 _ E8, 00000000(rel)
        mov     dword [ebp-24H], eax                    ; 31EB _ 89. 45, DC
        mov     ecx, _kill_process                      ; 31EE _ B9, 00000EB4(d)
        mov     eax, dword [ebp-18H]                    ; 31F3 _ 8B. 45, E8
        mov     edx, dword [eax+20H]                    ; 31F6 _ 8B. 50, 20
        mov     eax, ecx                                ; 31F9 _ 89. C8
        sub     eax, dword [ebp-24H]                    ; 31FB _ 2B. 45, DC
        mov     dword [edx+4CH], eax                    ; 31FE _ 89. 42, 4C
        call    _io_sti                                 ; 3201 _ E8, 00000000(rel)
        jmp     ?_170                                   ; 3206 _ E9, 0000008D

?_166:  sub     dword [ebp-0CH], 1                      ; 320B _ 83. 6D, F4, 01
?_167:  cmp     dword [ebp-0CH], 0                      ; 320F _ 83. 7D, F4, 00
        jg      ?_161                                   ; 3213 _ 0F 8F, FFFFFD51
        jmp     ?_171                                   ; 3219 _ EB, 7E

?_168:  mov     edx, dword [_mx]                        ; 321B _ 8B. 15, 00000134(d)
        mov     eax, dword [_mmx]                       ; 3221 _ A1, 00000118(d)
        sub     edx, eax                                ; 3226 _ 29. C2
        mov     eax, edx                                ; 3228 _ 89. D0
        mov     dword [ebp-1CH], eax                    ; 322A _ 89. 45, E4
        mov     edx, dword [_my]                        ; 322D _ 8B. 15, 00000138(d)
        mov     eax, dword [_mmy]                       ; 3233 _ A1, 0000011C(d)
        sub     edx, eax                                ; 3238 _ 29. C2
        mov     eax, edx                                ; 323A _ 89. D0
        mov     dword [ebp-20H], eax                    ; 323C _ 89. 45, E0
        mov     eax, dword [_mouse_clicked_sht]         ; 323F _ A1, 00000270(d)
        mov     edx, dword [eax+10H]                    ; 3244 _ 8B. 50, 10
        mov     eax, dword [ebp-20H]                    ; 3247 _ 8B. 45, E0
        lea     ecx, [edx+eax]                          ; 324A _ 8D. 0C 02
        mov     eax, dword [_mouse_clicked_sht]         ; 324D _ A1, 00000270(d)
        mov     edx, dword [eax+0CH]                    ; 3252 _ 8B. 50, 0C
        mov     eax, dword [ebp-1CH]                    ; 3255 _ 8B. 45, E4
        add     edx, eax                                ; 3258 _ 01. C2
        mov     eax, dword [_mouse_clicked_sht]         ; 325A _ A1, 00000270(d)
        mov     dword [esp+0CH], ecx                    ; 325F _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 3263 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 3267 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 326B _ 8B. 45, 08
        mov     dword [esp], eax                        ; 326E _ 89. 04 24
        call    _sheet_slide                            ; 3271 _ E8, 00000000(rel)
        mov     eax, dword [_mx]                        ; 3276 _ A1, 00000134(d)
        mov     dword [_mmx], eax                       ; 327B _ A3, 00000118(d)
        mov     eax, dword [_my]                        ; 3280 _ A1, 00000138(d)
        mov     dword [_mmy], eax                       ; 3285 _ A3, 0000011C(d)
        jmp     ?_171                                   ; 328A _ EB, 0D

?_169:  mov     dword [_mmx], -1                        ; 328C _ C7. 05, 00000118(d), FFFFFFFF
        jmp     ?_171                                   ; 3296 _ EB, 01

?_170:  nop                                             ; 3298 _ 90
?_171:  nop                                             ; 3299 _ 90
        leave                                           ; 329A _ C9
        ret                                             ; 329B _ C3
; _show_mouse_info End of function

_initBootInfo:; Function begin
        push    ebp                                     ; 329C _ 55
        mov     ebp, esp                                ; 329D _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 329F _ 8B. 45, 08
        mov     dword [eax], -536870912                 ; 32A2 _ C7. 00, E0000000
        mov     eax, dword [ebp+8H]                     ; 32A8 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 640                      ; 32AB _ 66: C7. 40, 04, 0280
        mov     eax, dword [ebp+8H]                     ; 32B1 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 480                      ; 32B4 _ 66: C7. 40, 06, 01E0
        nop                                             ; 32BA _ 90
        pop     ebp                                     ; 32BB _ 5D
        ret                                             ; 32BC _ C3
; _initBootInfo End of function

_init_palette:; Function begin
        push    ebp                                     ; 32BD _ 55
        mov     ebp, esp                                ; 32BE _ 89. E5
        push    ebx                                     ; 32C0 _ 53
        sub     esp, 692                                ; 32C1 _ 81. EC, 000002B4
        mov     dword [esp+8H], _table_rgb.2655         ; 32C7 _ C7. 44 24, 08, 00000140(d)
        mov     dword [esp+4H], 15                      ; 32CF _ C7. 44 24, 04, 0000000F
        mov     dword [esp], 0                          ; 32D7 _ C7. 04 24, 00000000
        call    _set_palette                            ; 32DE _ E8, 00000139
        mov     dword [ebp-14H], 0                      ; 32E3 _ C7. 45, EC, 00000000
        jmp     ?_177                                   ; 32EA _ E9, 000000FB

?_172:  mov     dword [ebp-10H], 0                      ; 32EF _ C7. 45, F0, 00000000
        jmp     ?_176                                   ; 32F6 _ E9, 000000E1

?_173:  mov     dword [ebp-0CH], 0                      ; 32FB _ C7. 45, F4, 00000000
        jmp     ?_175                                   ; 3302 _ E9, 000000C7

?_174:  mov     eax, dword [ebp-0CH]                    ; 3307 _ 8B. 45, F4
        mov     ebx, eax                                ; 330A _ 89. C3
        mov     edx, dword [ebp-10H]                    ; 330C _ 8B. 55, F0
        mov     eax, edx                                ; 330F _ 89. D0
        add     eax, eax                                ; 3311 _ 01. C0
        add     eax, edx                                ; 3313 _ 01. D0
        add     eax, eax                                ; 3315 _ 01. C0
        mov     edx, eax                                ; 3317 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 3319 _ 8B. 45, F4
        lea     ecx, [edx+eax]                          ; 331C _ 8D. 0C 02
        mov     edx, dword [ebp-14H]                    ; 331F _ 8B. 55, EC
        mov     eax, edx                                ; 3322 _ 89. D0
        shl     eax, 3                                  ; 3324 _ C1. E0, 03
        add     eax, edx                                ; 3327 _ 01. D0
        shl     eax, 2                                  ; 3329 _ C1. E0, 02
        lea     edx, [ecx+eax]                          ; 332C _ 8D. 14 01
        mov     eax, edx                                ; 332F _ 89. D0
        add     eax, eax                                ; 3331 _ 01. C0
        add     edx, eax                                ; 3333 _ 01. C2
        mov     ecx, 51                                 ; 3335 _ B9, 00000033
        mov     eax, ebx                                ; 333A _ 89. D8
        imul    eax, ecx                                ; 333C _ 0F AF. C1
        mov     byte [ebp+edx-29CH], al                 ; 333F _ 88. 84 15, FFFFFD64
        mov     eax, dword [ebp-10H]                    ; 3346 _ 8B. 45, F0
        mov     ebx, eax                                ; 3349 _ 89. C3
        mov     edx, dword [ebp-10H]                    ; 334B _ 8B. 55, F0
        mov     eax, edx                                ; 334E _ 89. D0
        add     eax, eax                                ; 3350 _ 01. C0
        add     eax, edx                                ; 3352 _ 01. D0
        add     eax, eax                                ; 3354 _ 01. C0
        mov     edx, eax                                ; 3356 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 3358 _ 8B. 45, F4
        lea     ecx, [edx+eax]                          ; 335B _ 8D. 0C 02
        mov     edx, dword [ebp-14H]                    ; 335E _ 8B. 55, EC
        mov     eax, edx                                ; 3361 _ 89. D0
        shl     eax, 3                                  ; 3363 _ C1. E0, 03
        add     eax, edx                                ; 3366 _ 01. D0
        shl     eax, 2                                  ; 3368 _ C1. E0, 02
        lea     edx, [ecx+eax]                          ; 336B _ 8D. 14 01
        mov     eax, edx                                ; 336E _ 89. D0
        add     eax, eax                                ; 3370 _ 01. C0
        add     eax, edx                                ; 3372 _ 01. D0
        lea     edx, [eax+1H]                           ; 3374 _ 8D. 50, 01
        mov     ecx, 51                                 ; 3377 _ B9, 00000033
        mov     eax, ebx                                ; 337C _ 89. D8
        imul    eax, ecx                                ; 337E _ 0F AF. C1
        mov     byte [ebp+edx-29CH], al                 ; 3381 _ 88. 84 15, FFFFFD64
        mov     eax, dword [ebp-14H]                    ; 3388 _ 8B. 45, EC
        mov     ebx, eax                                ; 338B _ 89. C3
        mov     edx, dword [ebp-10H]                    ; 338D _ 8B. 55, F0
        mov     eax, edx                                ; 3390 _ 89. D0
        add     eax, eax                                ; 3392 _ 01. C0
        add     eax, edx                                ; 3394 _ 01. D0
        add     eax, eax                                ; 3396 _ 01. C0
        mov     edx, eax                                ; 3398 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 339A _ 8B. 45, F4
        lea     ecx, [edx+eax]                          ; 339D _ 8D. 0C 02
        mov     edx, dword [ebp-14H]                    ; 33A0 _ 8B. 55, EC
        mov     eax, edx                                ; 33A3 _ 89. D0
        shl     eax, 3                                  ; 33A5 _ C1. E0, 03
        add     eax, edx                                ; 33A8 _ 01. D0
        shl     eax, 2                                  ; 33AA _ C1. E0, 02
        lea     edx, [ecx+eax]                          ; 33AD _ 8D. 14 01
        mov     eax, edx                                ; 33B0 _ 89. D0
        add     eax, eax                                ; 33B2 _ 01. C0
        add     eax, edx                                ; 33B4 _ 01. D0
        lea     edx, [eax+2H]                           ; 33B6 _ 8D. 50, 02
        mov     ecx, 51                                 ; 33B9 _ B9, 00000033
        mov     eax, ebx                                ; 33BE _ 89. D8
        imul    eax, ecx                                ; 33C0 _ 0F AF. C1
        mov     byte [ebp+edx-29CH], al                 ; 33C3 _ 88. 84 15, FFFFFD64
        add     dword [ebp-0CH], 1                      ; 33CA _ 83. 45, F4, 01
?_175:  cmp     dword [ebp-0CH], 5                      ; 33CE _ 83. 7D, F4, 05
        jle     ?_174                                   ; 33D2 _ 0F 8E, FFFFFF2F
        add     dword [ebp-10H], 1                      ; 33D8 _ 83. 45, F0, 01
?_176:  cmp     dword [ebp-10H], 5                      ; 33DC _ 83. 7D, F0, 05
        jle     ?_173                                   ; 33E0 _ 0F 8E, FFFFFF15
        add     dword [ebp-14H], 1                      ; 33E6 _ 83. 45, EC, 01
?_177:  cmp     dword [ebp-14H], 5                      ; 33EA _ 83. 7D, EC, 05
        jle     ?_172                                   ; 33EE _ 0F 8E, FFFFFEFB
        lea     eax, [ebp-29CH]                         ; 33F4 _ 8D. 85, FFFFFD64
        mov     dword [esp+8H], eax                     ; 33FA _ 89. 44 24, 08
        mov     dword [esp+4H], 231                     ; 33FE _ C7. 44 24, 04, 000000E7
        mov     dword [esp], 16                         ; 3406 _ C7. 04 24, 00000010
        call    _set_palette                            ; 340D _ E8, 0000000A
        nop                                             ; 3412 _ 90
        add     esp, 692                                ; 3413 _ 81. C4, 000002B4
        pop     ebx                                     ; 3419 _ 5B
        pop     ebp                                     ; 341A _ 5D
        ret                                             ; 341B _ C3
; _init_palette End of function

_set_palette:; Function begin
        push    ebp                                     ; 341C _ 55
        mov     ebp, esp                                ; 341D _ 89. E5
        sub     esp, 40                                 ; 341F _ 83. EC, 28
        call    _io_load_eflags                         ; 3422 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 3427 _ 89. 45, F0
        call    _io_cli                                 ; 342A _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 342F _ 8B. 45, 08
        mov     dword [esp+4H], eax                     ; 3432 _ 89. 44 24, 04
        mov     dword [esp], 968                        ; 3436 _ C7. 04 24, 000003C8
        call    _io_out8                                ; 343D _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 3442 _ 8B. 45, 08
        mov     dword [ebp-0CH], eax                    ; 3445 _ 89. 45, F4
        jmp     ?_179                                   ; 3448 _ EB, 62

?_178:  mov     eax, dword [ebp+10H]                    ; 344A _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 344D _ 0F B6. 00
        shr     al, 2                                   ; 3450 _ C0. E8, 02
        movzx   eax, al                                 ; 3453 _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 3456 _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 345A _ C7. 04 24, 000003C9
        call    _io_out8                                ; 3461 _ E8, 00000000(rel)
        mov     eax, dword [ebp+10H]                    ; 3466 _ 8B. 45, 10
        add     eax, 1                                  ; 3469 _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 346C _ 0F B6. 00
        shr     al, 2                                   ; 346F _ C0. E8, 02
        movzx   eax, al                                 ; 3472 _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 3475 _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 3479 _ C7. 04 24, 000003C9
        call    _io_out8                                ; 3480 _ E8, 00000000(rel)
        mov     eax, dword [ebp+10H]                    ; 3485 _ 8B. 45, 10
        add     eax, 2                                  ; 3488 _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 348B _ 0F B6. 00
        shr     al, 2                                   ; 348E _ C0. E8, 02
        movzx   eax, al                                 ; 3491 _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 3494 _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 3498 _ C7. 04 24, 000003C9
        call    _io_out8                                ; 349F _ E8, 00000000(rel)
        add     dword [ebp+10H], 3                      ; 34A4 _ 83. 45, 10, 03
        add     dword [ebp-0CH], 1                      ; 34A8 _ 83. 45, F4, 01
?_179:  mov     eax, dword [ebp-0CH]                    ; 34AC _ 8B. 45, F4
        cmp     eax, dword [ebp+0CH]                    ; 34AF _ 3B. 45, 0C
        jle     ?_178                                   ; 34B2 _ 7E, 96
        mov     eax, dword [ebp-10H]                    ; 34B4 _ 8B. 45, F0
        mov     dword [esp], eax                        ; 34B7 _ 89. 04 24
        call    _io_store_eflags                        ; 34BA _ E8, 00000000(rel)
        nop                                             ; 34BF _ 90
        leave                                           ; 34C0 _ C9
        ret                                             ; 34C1 _ C3
; _set_palette End of function

_boxfill8:; Function begin
        push    ebp                                     ; 34C2 _ 55
        mov     ebp, esp                                ; 34C3 _ 89. E5
        sub     esp, 20                                 ; 34C5 _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 34C8 _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 34CB _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 34CE _ 8B. 45, 18
        mov     dword [ebp-8H], eax                     ; 34D1 _ 89. 45, F8
        jmp     ?_183                                   ; 34D4 _ EB, 31

?_180:  mov     eax, dword [ebp+14H]                    ; 34D6 _ 8B. 45, 14
        mov     dword [ebp-4H], eax                     ; 34D9 _ 89. 45, FC
        jmp     ?_182                                   ; 34DC _ EB, 1D

?_181:  mov     eax, dword [ebp-8H]                     ; 34DE _ 8B. 45, F8
        imul    eax, dword [ebp+0CH]                    ; 34E1 _ 0F AF. 45, 0C
        mov     edx, dword [ebp-4H]                     ; 34E5 _ 8B. 55, FC
        add     eax, edx                                ; 34E8 _ 01. D0
        mov     edx, eax                                ; 34EA _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 34EC _ 8B. 45, 08
        add     edx, eax                                ; 34EF _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 34F1 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 34F5 _ 88. 02
        add     dword [ebp-4H], 1                       ; 34F7 _ 83. 45, FC, 01
?_182:  mov     eax, dword [ebp-4H]                     ; 34FB _ 8B. 45, FC
        cmp     eax, dword [ebp+1CH]                    ; 34FE _ 3B. 45, 1C
        jle     ?_181                                   ; 3501 _ 7E, DB
        add     dword [ebp-8H], 1                       ; 3503 _ 83. 45, F8, 01
?_183:  mov     eax, dword [ebp-8H]                     ; 3507 _ 8B. 45, F8
        cmp     eax, dword [ebp+20H]                    ; 350A _ 3B. 45, 20
        jle     ?_180                                   ; 350D _ 7E, C7
        nop                                             ; 350F _ 90
        leave                                           ; 3510 _ C9
        ret                                             ; 3511 _ C3
; _boxfill8 End of function

_showFont8:; Function begin
        push    ebp                                     ; 3512 _ 55
        mov     ebp, esp                                ; 3513 _ 89. E5
        sub     esp, 20                                 ; 3515 _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 3518 _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 351B _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 351E _ C7. 45, FC, 00000000
        jmp     ?_193                                   ; 3525 _ E9, 0000015C

?_184:  mov     edx, dword [ebp-4H]                     ; 352A _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 352D _ 8B. 45, 1C
        add     eax, edx                                ; 3530 _ 01. D0
        movzx   eax, byte [eax]                         ; 3532 _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 3535 _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 3538 _ 80. 7D, FB, 00
        jns     ?_185                                   ; 353C _ 79, 1E
        mov     edx, dword [ebp+14H]                    ; 353E _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 3541 _ 8B. 45, FC
        add     eax, edx                                ; 3544 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 3546 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 354A _ 8B. 55, 10
        add     eax, edx                                ; 354D _ 01. D0
        mov     edx, eax                                ; 354F _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3551 _ 8B. 45, 08
        add     edx, eax                                ; 3554 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 3556 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 355A _ 88. 02
?_185:  movsx   eax, byte [ebp-5H]                      ; 355C _ 0F BE. 45, FB
        and     eax, 40H                                ; 3560 _ 83. E0, 40
        test    eax, eax                                ; 3563 _ 85. C0
        jz      ?_186                                   ; 3565 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 3567 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 356A _ 8B. 45, FC
        add     eax, edx                                ; 356D _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 356F _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 3573 _ 8B. 55, 10
        add     eax, edx                                ; 3576 _ 01. D0
        lea     edx, [eax+1H]                           ; 3578 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 357B _ 8B. 45, 08
        add     edx, eax                                ; 357E _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 3580 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 3584 _ 88. 02
?_186:  movsx   eax, byte [ebp-5H]                      ; 3586 _ 0F BE. 45, FB
        and     eax, 20H                                ; 358A _ 83. E0, 20
        test    eax, eax                                ; 358D _ 85. C0
        jz      ?_187                                   ; 358F _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 3591 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 3594 _ 8B. 45, FC
        add     eax, edx                                ; 3597 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 3599 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 359D _ 8B. 55, 10
        add     eax, edx                                ; 35A0 _ 01. D0
        lea     edx, [eax+2H]                           ; 35A2 _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 35A5 _ 8B. 45, 08
        add     edx, eax                                ; 35A8 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 35AA _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 35AE _ 88. 02
?_187:  movsx   eax, byte [ebp-5H]                      ; 35B0 _ 0F BE. 45, FB
        and     eax, 10H                                ; 35B4 _ 83. E0, 10
        test    eax, eax                                ; 35B7 _ 85. C0
        jz      ?_188                                   ; 35B9 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 35BB _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 35BE _ 8B. 45, FC
        add     eax, edx                                ; 35C1 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 35C3 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 35C7 _ 8B. 55, 10
        add     eax, edx                                ; 35CA _ 01. D0
        lea     edx, [eax+3H]                           ; 35CC _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 35CF _ 8B. 45, 08
        add     edx, eax                                ; 35D2 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 35D4 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 35D8 _ 88. 02
?_188:  movsx   eax, byte [ebp-5H]                      ; 35DA _ 0F BE. 45, FB
        and     eax, 08H                                ; 35DE _ 83. E0, 08
        test    eax, eax                                ; 35E1 _ 85. C0
        jz      ?_189                                   ; 35E3 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 35E5 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 35E8 _ 8B. 45, FC
        add     eax, edx                                ; 35EB _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 35ED _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 35F1 _ 8B. 55, 10
        add     eax, edx                                ; 35F4 _ 01. D0
        lea     edx, [eax+4H]                           ; 35F6 _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 35F9 _ 8B. 45, 08
        add     edx, eax                                ; 35FC _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 35FE _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 3602 _ 88. 02
?_189:  movsx   eax, byte [ebp-5H]                      ; 3604 _ 0F BE. 45, FB
        and     eax, 04H                                ; 3608 _ 83. E0, 04
        test    eax, eax                                ; 360B _ 85. C0
        jz      ?_190                                   ; 360D _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 360F _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 3612 _ 8B. 45, FC
        add     eax, edx                                ; 3615 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 3617 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 361B _ 8B. 55, 10
        add     eax, edx                                ; 361E _ 01. D0
        lea     edx, [eax+5H]                           ; 3620 _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 3623 _ 8B. 45, 08
        add     edx, eax                                ; 3626 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 3628 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 362C _ 88. 02
?_190:  movsx   eax, byte [ebp-5H]                      ; 362E _ 0F BE. 45, FB
        and     eax, 02H                                ; 3632 _ 83. E0, 02
        test    eax, eax                                ; 3635 _ 85. C0
        jz      ?_191                                   ; 3637 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 3639 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 363C _ 8B. 45, FC
        add     eax, edx                                ; 363F _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 3641 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 3645 _ 8B. 55, 10
        add     eax, edx                                ; 3648 _ 01. D0
        lea     edx, [eax+6H]                           ; 364A _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 364D _ 8B. 45, 08
        add     edx, eax                                ; 3650 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 3652 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 3656 _ 88. 02
?_191:  movsx   eax, byte [ebp-5H]                      ; 3658 _ 0F BE. 45, FB
        and     eax, 01H                                ; 365C _ 83. E0, 01
        test    eax, eax                                ; 365F _ 85. C0
        jz      ?_192                                   ; 3661 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 3663 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 3666 _ 8B. 45, FC
        add     eax, edx                                ; 3669 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 366B _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 366F _ 8B. 55, 10
        add     eax, edx                                ; 3672 _ 01. D0
        lea     edx, [eax+7H]                           ; 3674 _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 3677 _ 8B. 45, 08
        add     edx, eax                                ; 367A _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 367C _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 3680 _ 88. 02
?_192:  add     dword [ebp-4H], 1                       ; 3682 _ 83. 45, FC, 01
?_193:  cmp     dword [ebp-4H], 15                      ; 3686 _ 83. 7D, FC, 0F
        jle     ?_184                                   ; 368A _ 0F 8E, FFFFFE9A
        nop                                             ; 3690 _ 90
        leave                                           ; 3691 _ C9
        ret                                             ; 3692 _ C3
; _showFont8 End of function

_init_mouse_cursor:; Function begin
        push    ebp                                     ; 3693 _ 55
        mov     ebp, esp                                ; 3694 _ 89. E5
        sub     esp, 20                                 ; 3696 _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 3699 _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 369C _ 88. 45, EC
        mov     dword [ebp-8H], 0                       ; 369F _ C7. 45, F8, 00000000
        jmp     ?_200                                   ; 36A6 _ E9, 000000B1

?_194:  mov     dword [ebp-4H], 0                       ; 36AB _ C7. 45, FC, 00000000
        jmp     ?_199                                   ; 36B2 _ E9, 00000097

?_195:  mov     eax, dword [ebp-8H]                     ; 36B7 _ 8B. 45, F8
        shl     eax, 4                                  ; 36BA _ C1. E0, 04
        mov     edx, eax                                ; 36BD _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 36BF _ 8B. 45, FC
        add     eax, edx                                ; 36C2 _ 01. D0
        add     eax, _cursor.2715                       ; 36C4 _ 05, 00000180(d)
        movzx   eax, byte [eax]                         ; 36C9 _ 0F B6. 00
        cmp     al, 42                                  ; 36CC _ 3C, 2A
        jnz     ?_196                                   ; 36CE _ 75, 17
        mov     eax, dword [ebp-8H]                     ; 36D0 _ 8B. 45, F8
        shl     eax, 4                                  ; 36D3 _ C1. E0, 04
        mov     edx, eax                                ; 36D6 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 36D8 _ 8B. 45, FC
        add     eax, edx                                ; 36DB _ 01. D0
        mov     edx, eax                                ; 36DD _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 36DF _ 8B. 45, 08
        add     eax, edx                                ; 36E2 _ 01. D0
        mov     byte [eax], 0                           ; 36E4 _ C6. 00, 00
?_196:  mov     eax, dword [ebp-8H]                     ; 36E7 _ 8B. 45, F8
        shl     eax, 4                                  ; 36EA _ C1. E0, 04
        mov     edx, eax                                ; 36ED _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 36EF _ 8B. 45, FC
        add     eax, edx                                ; 36F2 _ 01. D0
        add     eax, _cursor.2715                       ; 36F4 _ 05, 00000180(d)
        movzx   eax, byte [eax]                         ; 36F9 _ 0F B6. 00
        cmp     al, 79                                  ; 36FC _ 3C, 4F
        jnz     ?_197                                   ; 36FE _ 75, 17
        mov     eax, dword [ebp-8H]                     ; 3700 _ 8B. 45, F8
        shl     eax, 4                                  ; 3703 _ C1. E0, 04
        mov     edx, eax                                ; 3706 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 3708 _ 8B. 45, FC
        add     eax, edx                                ; 370B _ 01. D0
        mov     edx, eax                                ; 370D _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 370F _ 8B. 45, 08
        add     eax, edx                                ; 3712 _ 01. D0
        mov     byte [eax], 7                           ; 3714 _ C6. 00, 07
?_197:  mov     eax, dword [ebp-8H]                     ; 3717 _ 8B. 45, F8
        shl     eax, 4                                  ; 371A _ C1. E0, 04
        mov     edx, eax                                ; 371D _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 371F _ 8B. 45, FC
        add     eax, edx                                ; 3722 _ 01. D0
        add     eax, _cursor.2715                       ; 3724 _ 05, 00000180(d)
        movzx   eax, byte [eax]                         ; 3729 _ 0F B6. 00
        cmp     al, 46                                  ; 372C _ 3C, 2E
        jnz     ?_198                                   ; 372E _ 75, 1A
        mov     eax, dword [ebp-8H]                     ; 3730 _ 8B. 45, F8
        shl     eax, 4                                  ; 3733 _ C1. E0, 04
        mov     edx, eax                                ; 3736 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 3738 _ 8B. 45, FC
        add     eax, edx                                ; 373B _ 01. D0
        mov     edx, eax                                ; 373D _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 373F _ 8B. 45, 08
        add     edx, eax                                ; 3742 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 3744 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 3748 _ 88. 02
?_198:  add     dword [ebp-4H], 1                       ; 374A _ 83. 45, FC, 01
?_199:  cmp     dword [ebp-4H], 15                      ; 374E _ 83. 7D, FC, 0F
        jle     ?_195                                   ; 3752 _ 0F 8E, FFFFFF5F
        add     dword [ebp-8H], 1                       ; 3758 _ 83. 45, F8, 01
?_200:  cmp     dword [ebp-8H], 15                      ; 375C _ 83. 7D, F8, 0F
        jle     ?_194                                   ; 3760 _ 0F 8E, FFFFFF45
        nop                                             ; 3766 _ 90
        leave                                           ; 3767 _ C9
        ret                                             ; 3768 _ C3
; _init_mouse_cursor End of function

_putblock:; Function begin
        push    ebp                                     ; 3769 _ 55
        mov     ebp, esp                                ; 376A _ 89. E5
        push    ebx                                     ; 376C _ 53
        sub     esp, 16                                 ; 376D _ 83. EC, 10
        mov     dword [ebp-0CH], 0                      ; 3770 _ C7. 45, F4, 00000000
        jmp     ?_204                                   ; 3777 _ EB, 4E

?_201:  mov     dword [ebp-8H], 0                       ; 3779 _ C7. 45, F8, 00000000
        jmp     ?_203                                   ; 3780 _ EB, 39

?_202:  mov     eax, dword [ebp-0CH]                    ; 3782 _ 8B. 45, F4
        imul    eax, dword [ebp+24H]                    ; 3785 _ 0F AF. 45, 24
        mov     edx, dword [ebp-8H]                     ; 3789 _ 8B. 55, F8
        add     eax, edx                                ; 378C _ 01. D0
        mov     edx, eax                                ; 378E _ 89. C2
        mov     eax, dword [ebp+20H]                    ; 3790 _ 8B. 45, 20
        add     eax, edx                                ; 3793 _ 01. D0
        mov     ecx, dword [ebp+1CH]                    ; 3795 _ 8B. 4D, 1C
        mov     edx, dword [ebp-0CH]                    ; 3798 _ 8B. 55, F4
        add     edx, ecx                                ; 379B _ 01. CA
        imul    edx, dword [ebp+0CH]                    ; 379D _ 0F AF. 55, 0C
        mov     ebx, dword [ebp+18H]                    ; 37A1 _ 8B. 5D, 18
        mov     ecx, dword [ebp-8H]                     ; 37A4 _ 8B. 4D, F8
        add     ecx, ebx                                ; 37A7 _ 01. D9
        add     edx, ecx                                ; 37A9 _ 01. CA
        mov     ecx, edx                                ; 37AB _ 89. D1
        mov     edx, dword [ebp+8H]                     ; 37AD _ 8B. 55, 08
        add     edx, ecx                                ; 37B0 _ 01. CA
        movzx   eax, byte [eax]                         ; 37B2 _ 0F B6. 00
        mov     byte [edx], al                          ; 37B5 _ 88. 02
        add     dword [ebp-8H], 1                       ; 37B7 _ 83. 45, F8, 01
?_203:  mov     eax, dword [ebp-8H]                     ; 37BB _ 8B. 45, F8
        cmp     eax, dword [ebp+10H]                    ; 37BE _ 3B. 45, 10
        jl      ?_202                                   ; 37C1 _ 7C, BF
        add     dword [ebp-0CH], 1                      ; 37C3 _ 83. 45, F4, 01
?_204:  mov     eax, dword [ebp-0CH]                    ; 37C7 _ 8B. 45, F4
        cmp     eax, dword [ebp+14H]                    ; 37CA _ 3B. 45, 14
        jl      ?_201                                   ; 37CD _ 7C, AA
        nop                                             ; 37CF _ 90
        add     esp, 16                                 ; 37D0 _ 83. C4, 10
        pop     ebx                                     ; 37D3 _ 5B
        pop     ebp                                     ; 37D4 _ 5D
        ret                                             ; 37D5 _ C3
; _putblock End of function

_intHandlerFromC:; Function begin
        push    ebp                                     ; 37D6 _ 55
        mov     ebp, esp                                ; 37D7 _ 89. E5
        sub     esp, 40                                 ; 37D9 _ 83. EC, 28
        mov     eax, dword [_bootInfo]                  ; 37DC _ A1, 00000018(d)
        mov     dword [ebp-0CH], eax                    ; 37E1 _ 89. 45, F4
        movzx   eax, word [?_412]                       ; 37E4 _ 0F B7. 05, 0000001C(d)
        cwde                                            ; 37EB _ 98
        mov     dword [ebp-10H], eax                    ; 37EC _ 89. 45, F0
        movzx   eax, word [?_413]                       ; 37EF _ 0F B7. 05, 0000001E(d)
        cwde                                            ; 37F6 _ 98
        mov     dword [ebp-14H], eax                    ; 37F7 _ 89. 45, EC
        mov     dword [esp+4H], 32                      ; 37FA _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 3802 _ C7. 04 24, 00000020
        call    _io_out8                                ; 3809 _ E8, 00000000(rel)
        mov     byte [ebp-15H], 0                       ; 380E _ C6. 45, EB, 00
        mov     dword [esp], 96                         ; 3812 _ C7. 04 24, 00000060
        call    _io_in8                                 ; 3819 _ E8, 00000000(rel)
        mov     byte [ebp-15H], al                      ; 381E _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 3821 _ 0F B6. 45, EB
        mov     dword [esp+4H], eax                     ; 3825 _ 89. 44 24, 04
        mov     dword [esp], _keyinfo                   ; 3829 _ C7. 04 24, 00000020(d)
        call    _fifo8_put                              ; 3830 _ E8, 00000000(rel)
        nop                                             ; 3835 _ 90
        leave                                           ; 3836 _ C9
        ret                                             ; 3837 _ C3
; _intHandlerFromC End of function

_charToHexVal:; Function begin
        push    ebp                                     ; 3838 _ 55
        mov     ebp, esp                                ; 3839 _ 89. E5
        sub     esp, 4                                  ; 383B _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 383E _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 3841 _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 3844 _ 80. 7D, FC, 09
        jle     ?_205                                   ; 3848 _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 384A _ 0F B6. 45, FC
        add     eax, 55                                 ; 384E _ 83. C0, 37
        jmp     ?_206                                   ; 3851 _ EB, 07

?_205:  movzx   eax, byte [ebp-4H]                      ; 3853 _ 0F B6. 45, FC
        add     eax, 48                                 ; 3857 _ 83. C0, 30
?_206:  leave                                           ; 385A _ C9
        ret                                             ; 385B _ C3
; _charToHexVal End of function

_charToHexStr:; Function begin
        push    ebp                                     ; 385C _ 55
        mov     ebp, esp                                ; 385D _ 89. E5
        sub     esp, 24                                 ; 385F _ 83. EC, 18
        mov     eax, dword [ebp+8H]                     ; 3862 _ 8B. 45, 08
        mov     byte [ebp-14H], al                      ; 3865 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 3868 _ C7. 45, FC, 00000000
        movzx   eax, byte [ebp-14H]                     ; 386F _ 0F B6. 45, EC
        and     eax, 0FH                                ; 3873 _ 83. E0, 0F
        mov     byte [ebp-5H], al                       ; 3876 _ 88. 45, FB
        movsx   eax, byte [ebp-5H]                      ; 3879 _ 0F BE. 45, FB
        mov     dword [esp], eax                        ; 387D _ 89. 04 24
        call    _charToHexVal                           ; 3880 _ E8, FFFFFFB3
        mov     byte [?_383], al                        ; 3885 _ A2, 00000113(d)
        movzx   eax, byte [ebp-14H]                     ; 388A _ 0F B6. 45, EC
        shr     al, 4                                   ; 388E _ C0. E8, 04
        mov     byte [ebp-14H], al                      ; 3891 _ 88. 45, EC
        movzx   eax, byte [ebp-14H]                     ; 3894 _ 0F B6. 45, EC
        movsx   eax, al                                 ; 3898 _ 0F BE. C0
        mov     dword [esp], eax                        ; 389B _ 89. 04 24
        call    _charToHexVal                           ; 389E _ E8, FFFFFF95
        mov     byte [?_382], al                        ; 38A3 _ A2, 00000112(d)
        mov     eax, _keyval                            ; 38A8 _ B8, 00000110(d)
        leave                                           ; 38AD _ C9
        ret                                             ; 38AE _ C3
; _charToHexStr End of function

_intToHexStr:; Function begin
        push    ebp                                     ; 38AF _ 55
        mov     ebp, esp                                ; 38B0 _ 89. E5
        sub     esp, 16                                 ; 38B2 _ 83. EC, 10
        mov     byte [_str.2763], 48                    ; 38B5 _ C6. 05, 00000374(d), 30
        mov     byte [?_416], 88                        ; 38BC _ C6. 05, 00000375(d), 58
        mov     byte [?_417], 0                         ; 38C3 _ C6. 05, 0000037E(d), 00
        mov     dword [ebp-4H], 2                       ; 38CA _ C7. 45, FC, 00000002
        jmp     ?_208                                   ; 38D1 _ EB, 0F

?_207:  mov     eax, dword [ebp-4H]                     ; 38D3 _ 8B. 45, FC
        add     eax, _str.2763                          ; 38D6 _ 05, 00000374(d)
        mov     byte [eax], 48                          ; 38DB _ C6. 00, 30
        add     dword [ebp-4H], 1                       ; 38DE _ 83. 45, FC, 01
?_208:  cmp     dword [ebp-4H], 9                       ; 38E2 _ 83. 7D, FC, 09
        jle     ?_207                                   ; 38E6 _ 7E, EB
        mov     dword [ebp-8H], 9                       ; 38E8 _ C7. 45, F8, 00000009
        jmp     ?_212                                   ; 38EF _ EB, 42

?_209:  mov     eax, dword [ebp+8H]                     ; 38F1 _ 8B. 45, 08
        and     eax, 0FH                                ; 38F4 _ 83. E0, 0F
        mov     dword [ebp-0CH], eax                    ; 38F7 _ 89. 45, F4
        mov     eax, dword [ebp+8H]                     ; 38FA _ 8B. 45, 08
        shr     eax, 4                                  ; 38FD _ C1. E8, 04
        mov     dword [ebp+8H], eax                     ; 3900 _ 89. 45, 08
        cmp     dword [ebp-0CH], 9                      ; 3903 _ 83. 7D, F4, 09
        jle     ?_210                                   ; 3907 _ 7E, 14
        mov     eax, dword [ebp-0CH]                    ; 3909 _ 8B. 45, F4
        add     eax, 55                                 ; 390C _ 83. C0, 37
        mov     edx, eax                                ; 390F _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 3911 _ 8B. 45, F8
        add     eax, _str.2763                          ; 3914 _ 05, 00000374(d)
        mov     byte [eax], dl                          ; 3919 _ 88. 10
        jmp     ?_211                                   ; 391B _ EB, 12

?_210:  mov     eax, dword [ebp-0CH]                    ; 391D _ 8B. 45, F4
        add     eax, 48                                 ; 3920 _ 83. C0, 30
        mov     edx, eax                                ; 3923 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 3925 _ 8B. 45, F8
        add     eax, _str.2763                          ; 3928 _ 05, 00000374(d)
        mov     byte [eax], dl                          ; 392D _ 88. 10
?_211:  sub     dword [ebp-8H], 1                       ; 392F _ 83. 6D, F8, 01
?_212:  cmp     dword [ebp-8H], 1                       ; 3933 _ 83. 7D, F8, 01
        jle     ?_213                                   ; 3937 _ 7E, 06
        cmp     dword [ebp+8H], 0                       ; 3939 _ 83. 7D, 08, 00
        jnz     ?_209                                   ; 393D _ 75, B2
?_213:  mov     eax, _str.2763                          ; 393F _ B8, 00000374(d)
        leave                                           ; 3944 _ C9
        ret                                             ; 3945 _ C3
; _intToHexStr End of function

_wait_KBC_sendready:; Function begin
        push    ebp                                     ; 3946 _ 55
        mov     ebp, esp                                ; 3947 _ 89. E5
        sub     esp, 24                                 ; 3949 _ 83. EC, 18
?_214:  mov     dword [esp], 100                        ; 394C _ C7. 04 24, 00000064
        call    _io_in8                                 ; 3953 _ E8, 00000000(rel)
        and     eax, 02H                                ; 3958 _ 83. E0, 02
        test    eax, eax                                ; 395B _ 85. C0
        jz      ?_215                                   ; 395D _ 74, 02
        jmp     ?_214                                   ; 395F _ EB, EB
; _wait_KBC_sendready End of function

?_215:  ; Local function
        nop                                             ; 3961 _ 90
        nop                                             ; 3962 _ 90
        leave                                           ; 3963 _ C9
        ret                                             ; 3964 _ C3

_init_keyboard:; Function begin
        push    ebp                                     ; 3965 _ 55
        mov     ebp, esp                                ; 3966 _ 89. E5
        sub     esp, 24                                 ; 3968 _ 83. EC, 18
        call    _wait_KBC_sendready                     ; 396B _ E8, FFFFFFD6
        mov     dword [esp+4H], 96                      ; 3970 _ C7. 44 24, 04, 00000060
        mov     dword [esp], 100                        ; 3978 _ C7. 04 24, 00000064
        call    _io_out8                                ; 397F _ E8, 00000000(rel)
        call    _wait_KBC_sendready                     ; 3984 _ E8, FFFFFFBD
        mov     dword [esp+4H], 71                      ; 3989 _ C7. 44 24, 04, 00000047
        mov     dword [esp], 96                         ; 3991 _ C7. 04 24, 00000060
        call    _io_out8                                ; 3998 _ E8, 00000000(rel)
        nop                                             ; 399D _ 90
        leave                                           ; 399E _ C9
        ret                                             ; 399F _ C3
; _init_keyboard End of function

_enable_mouse:; Function begin
        push    ebp                                     ; 39A0 _ 55
        mov     ebp, esp                                ; 39A1 _ 89. E5
        sub     esp, 24                                 ; 39A3 _ 83. EC, 18
        call    _wait_KBC_sendready                     ; 39A6 _ E8, FFFFFF9B
        mov     dword [esp+4H], 212                     ; 39AB _ C7. 44 24, 04, 000000D4
        mov     dword [esp], 100                        ; 39B3 _ C7. 04 24, 00000064
        call    _io_out8                                ; 39BA _ E8, 00000000(rel)
        call    _wait_KBC_sendready                     ; 39BF _ E8, FFFFFF82
        mov     dword [esp+4H], 244                     ; 39C4 _ C7. 44 24, 04, 000000F4
        mov     dword [esp], 96                         ; 39CC _ C7. 04 24, 00000060
        call    _io_out8                                ; 39D3 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 39D8 _ 8B. 45, 08
        mov     byte [eax+3H], 0                        ; 39DB _ C6. 40, 03, 00
        nop                                             ; 39DF _ 90
        leave                                           ; 39E0 _ C9
        ret                                             ; 39E1 _ C3
; _enable_mouse End of function

_intHandlerForMouse:; Function begin
        push    ebp                                     ; 39E2 _ 55
        mov     ebp, esp                                ; 39E3 _ 89. E5
        sub     esp, 40                                 ; 39E5 _ 83. EC, 28
        mov     dword [esp+4H], 32                      ; 39E8 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 160                        ; 39F0 _ C7. 04 24, 000000A0
        call    _io_out8                                ; 39F7 _ E8, 00000000(rel)
        mov     dword [esp+4H], 32                      ; 39FC _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 3A04 _ C7. 04 24, 00000020
        call    _io_out8                                ; 3A0B _ E8, 00000000(rel)
        mov     dword [esp], 96                         ; 3A10 _ C7. 04 24, 00000060
        call    _io_in8                                 ; 3A17 _ E8, 00000000(rel)
        mov     byte [ebp-9H], al                       ; 3A1C _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 3A1F _ 0F B6. 45, F7
        mov     dword [esp+4H], eax                     ; 3A23 _ 89. 44 24, 04
        mov     dword [esp], _mouseinfo                 ; 3A27 _ C7. 04 24, 0000003C(d)
        call    _fifo8_put                              ; 3A2E _ E8, 00000000(rel)
        nop                                             ; 3A33 _ 90
        leave                                           ; 3A34 _ C9
        ret                                             ; 3A35 _ C3
; _intHandlerForMouse End of function

_mouse_decode:; Function begin
        push    ebp                                     ; 3A36 _ 55
        mov     ebp, esp                                ; 3A37 _ 89. E5
        sub     esp, 4                                  ; 3A39 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 3A3C _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 3A3F _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 3A42 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 3A45 _ 0F B6. 40, 03
        test    al, al                                  ; 3A49 _ 84. C0
        jnz     ?_217                                   ; 3A4B _ 75, 17
        cmp     byte [ebp-4H], -6                       ; 3A4D _ 80. 7D, FC, FA
        jnz     ?_216                                   ; 3A51 _ 75, 07
        mov     eax, dword [ebp+8H]                     ; 3A53 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 3A56 _ C6. 40, 03, 01
?_216:  mov     eax, 0                                  ; 3A5A _ B8, 00000000
        jmp     ?_224                                   ; 3A5F _ E9, 0000010F

?_217:  mov     eax, dword [ebp+8H]                     ; 3A64 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 3A67 _ 0F B6. 40, 03
        cmp     al, 1                                   ; 3A6B _ 3C, 01
        jnz     ?_219                                   ; 3A6D _ 75, 28
        movzx   eax, byte [ebp-4H]                      ; 3A6F _ 0F B6. 45, FC
        and     eax, 0C8H                               ; 3A73 _ 25, 000000C8
        cmp     eax, 8                                  ; 3A78 _ 83. F8, 08
        jnz     ?_218                                   ; 3A7B _ 75, 10
        mov     edx, dword [ebp+8H]                     ; 3A7D _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 3A80 _ 0F B6. 45, FC
        mov     byte [edx], al                          ; 3A84 _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 3A86 _ 8B. 45, 08
        mov     byte [eax+3H], 2                        ; 3A89 _ C6. 40, 03, 02
?_218:  mov     eax, 0                                  ; 3A8D _ B8, 00000000
        jmp     ?_224                                   ; 3A92 _ E9, 000000DC

?_219:  mov     eax, dword [ebp+8H]                     ; 3A97 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 3A9A _ 0F B6. 40, 03
        cmp     al, 2                                   ; 3A9E _ 3C, 02
        jnz     ?_220                                   ; 3AA0 _ 75, 1B
        mov     edx, dword [ebp+8H]                     ; 3AA2 _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 3AA5 _ 0F B6. 45, FC
        mov     byte [edx+1H], al                       ; 3AA9 _ 88. 42, 01
        mov     eax, dword [ebp+8H]                     ; 3AAC _ 8B. 45, 08
        mov     byte [eax+3H], 3                        ; 3AAF _ C6. 40, 03, 03
        mov     eax, 0                                  ; 3AB3 _ B8, 00000000
        jmp     ?_224                                   ; 3AB8 _ E9, 000000B6

?_220:  mov     eax, dword [ebp+8H]                     ; 3ABD _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 3AC0 _ 0F B6. 40, 03
        cmp     al, 3                                   ; 3AC4 _ 3C, 03
        jne     ?_223                                   ; 3AC6 _ 0F 85, 000000A2
        mov     edx, dword [ebp+8H]                     ; 3ACC _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 3ACF _ 0F B6. 45, FC
        mov     byte [edx+2H], al                       ; 3AD3 _ 88. 42, 02
        mov     eax, dword [ebp+8H]                     ; 3AD6 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 3AD9 _ C6. 40, 03, 01
        mov     eax, dword [ebp+8H]                     ; 3ADD _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 3AE0 _ 0F B6. 00
        movzx   eax, al                                 ; 3AE3 _ 0F B6. C0
        and     eax, 07H                                ; 3AE6 _ 83. E0, 07
        mov     edx, eax                                ; 3AE9 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3AEB _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 3AEE _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 3AF1 _ 8B. 45, 08
        movzx   eax, byte [eax+1H]                      ; 3AF4 _ 0F B6. 40, 01
        movzx   eax, al                                 ; 3AF8 _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 3AFB _ 8B. 55, 08
        mov     dword [edx+4H], eax                     ; 3AFE _ 89. 42, 04
        mov     eax, dword [ebp+8H]                     ; 3B01 _ 8B. 45, 08
        movzx   eax, byte [eax+2H]                      ; 3B04 _ 0F B6. 40, 02
        movzx   eax, al                                 ; 3B08 _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 3B0B _ 8B. 55, 08
        mov     dword [edx+8H], eax                     ; 3B0E _ 89. 42, 08
        mov     eax, dword [ebp+8H]                     ; 3B11 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 3B14 _ 0F B6. 00
        movzx   eax, al                                 ; 3B17 _ 0F B6. C0
        and     eax, 10H                                ; 3B1A _ 83. E0, 10
        test    eax, eax                                ; 3B1D _ 85. C0
        jz      ?_221                                   ; 3B1F _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 3B21 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 3B24 _ 8B. 40, 04
        or      eax, 0FFFFFF00H                         ; 3B27 _ 0D, FFFFFF00
        mov     edx, eax                                ; 3B2C _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3B2E _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 3B31 _ 89. 50, 04
?_221:  mov     eax, dword [ebp+8H]                     ; 3B34 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 3B37 _ 0F B6. 00
        movzx   eax, al                                 ; 3B3A _ 0F B6. C0
        and     eax, 20H                                ; 3B3D _ 83. E0, 20
        test    eax, eax                                ; 3B40 _ 85. C0
        jz      ?_222                                   ; 3B42 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 3B44 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3B47 _ 8B. 40, 08
        or      eax, 0FFFFFF00H                         ; 3B4A _ 0D, FFFFFF00
        mov     edx, eax                                ; 3B4F _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3B51 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 3B54 _ 89. 50, 08
?_222:  mov     eax, dword [ebp+8H]                     ; 3B57 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3B5A _ 8B. 40, 08
        neg     eax                                     ; 3B5D _ F7. D8
        mov     edx, eax                                ; 3B5F _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3B61 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 3B64 _ 89. 50, 08
        mov     eax, 1                                  ; 3B67 _ B8, 00000001
        jmp     ?_224                                   ; 3B6C _ EB, 05

?_223:  mov     eax, 4294967295                         ; 3B6E _ B8, FFFFFFFF
?_224:  leave                                           ; 3B73 _ C9
        ret                                             ; 3B74 _ C3
; _mouse_decode End of function

_showMemoryInfo:; Function begin
        push    ebp                                     ; 3B75 _ 55
        mov     ebp, esp                                ; 3B76 _ 89. E5
        sub     esp, 72                                 ; 3B78 _ 83. EC, 48
        mov     dword [ebp-0CH], 0                      ; 3B7B _ C7. 45, F4, 00000000
        mov     dword [ebp-10H], 0                      ; 3B82 _ C7. 45, F0, 00000000
        mov     dword [ebp-14H], 104                    ; 3B89 _ C7. 45, EC, 00000068
        mov     dword [ebp-18H], 80                     ; 3B90 _ C7. 45, E8, 00000050
        mov     edx, dword [_ysize]                     ; 3B97 _ 8B. 15, 00000140(d)
        mov     eax, dword [ebp+0CH]                    ; 3B9D _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 3BA0 _ 8B. 00
        mov     dword [esp+8H], edx                     ; 3BA2 _ 89. 54 24, 08
        mov     edx, dword [ebp+1CH]                    ; 3BA6 _ 8B. 55, 1C
        mov     dword [esp+4H], edx                     ; 3BA9 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3BAD _ 89. 04 24
        call    _init_screen8                           ; 3BB0 _ E8, FFFFEE30
        mov     eax, dword [ebp+20H]                    ; 3BB5 _ 8B. 45, 20
        movsx   eax, al                                 ; 3BB8 _ 0F BE. C0
        mov     dword [esp+14H], ?_403                  ; 3BBB _ C7. 44 24, 14, 00000072(d)
        mov     dword [esp+10H], eax                    ; 3BC3 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 3BC7 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 3BCA _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 3BCE _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 3BD1 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 3BD5 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 3BD8 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3BDC _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3BDF _ 89. 04 24
        call    _showString                             ; 3BE2 _ E8, FFFFF20E
        mov     eax, dword [ebp+18H]                    ; 3BE7 _ 8B. 45, 18
        mov     dword [esp], eax                        ; 3BEA _ 89. 04 24
        call    _intToHexStr                            ; 3BED _ E8, FFFFFCBD
        mov     dword [ebp-1CH], eax                    ; 3BF2 _ 89. 45, E4
        mov     eax, dword [ebp+20H]                    ; 3BF5 _ 8B. 45, 20
        movsx   eax, al                                 ; 3BF8 _ 0F BE. C0
        mov     edx, dword [ebp-1CH]                    ; 3BFB _ 8B. 55, E4
        mov     dword [esp+14H], edx                    ; 3BFE _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 3C02 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 3C06 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 3C09 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 3C0D _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 3C10 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 3C14 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 3C17 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3C1B _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3C1E _ 89. 04 24
        call    _showString                             ; 3C21 _ E8, FFFFF1CF
        add     dword [ebp-10H], 16                     ; 3C26 _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 3C2A _ 8B. 45, 20
        movsx   eax, al                                 ; 3C2D _ 0F BE. C0
        mov     dword [esp+14H], ?_404                  ; 3C30 _ C7. 44 24, 14, 0000007C(d)
        mov     dword [esp+10H], eax                    ; 3C38 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 3C3C _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 3C3F _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 3C43 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 3C46 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 3C4A _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 3C4D _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3C51 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3C54 _ 89. 04 24
        call    _showString                             ; 3C57 _ E8, FFFFF199
        mov     eax, dword [ebp+10H]                    ; 3C5C _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 3C5F _ 8B. 00
        mov     dword [esp], eax                        ; 3C61 _ 89. 04 24
        call    _intToHexStr                            ; 3C64 _ E8, FFFFFC46
        mov     dword [ebp-20H], eax                    ; 3C69 _ 89. 45, E0
        mov     eax, dword [ebp+20H]                    ; 3C6C _ 8B. 45, 20
        movsx   eax, al                                 ; 3C6F _ 0F BE. C0
        mov     edx, dword [ebp-20H]                    ; 3C72 _ 8B. 55, E0
        mov     dword [esp+14H], edx                    ; 3C75 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 3C79 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 3C7D _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 3C80 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 3C84 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 3C87 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 3C8B _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 3C8E _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3C92 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3C95 _ 89. 04 24
        call    _showString                             ; 3C98 _ E8, FFFFF158
        add     dword [ebp-10H], 16                     ; 3C9D _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 3CA1 _ 8B. 45, 20
        movsx   eax, al                                 ; 3CA4 _ 0F BE. C0
        mov     dword [esp+14H], ?_405                  ; 3CA7 _ C7. 44 24, 14, 00000088(d)
        mov     dword [esp+10H], eax                    ; 3CAF _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 3CB3 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 3CB6 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 3CBA _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 3CBD _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 3CC1 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 3CC4 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3CC8 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3CCB _ 89. 04 24
        call    _showString                             ; 3CCE _ E8, FFFFF122
        mov     eax, dword [ebp+10H]                    ; 3CD3 _ 8B. 45, 10
        mov     eax, dword [eax+4H]                     ; 3CD6 _ 8B. 40, 04
        mov     dword [esp], eax                        ; 3CD9 _ 89. 04 24
        call    _intToHexStr                            ; 3CDC _ E8, FFFFFBCE
        mov     dword [ebp-24H], eax                    ; 3CE1 _ 89. 45, DC
        mov     eax, dword [ebp+20H]                    ; 3CE4 _ 8B. 45, 20
        movsx   eax, al                                 ; 3CE7 _ 0F BE. C0
        mov     edx, dword [ebp-24H]                    ; 3CEA _ 8B. 55, DC
        mov     dword [esp+14H], edx                    ; 3CED _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 3CF1 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 3CF5 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 3CF8 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 3CFC _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 3CFF _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 3D03 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 3D06 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3D0A _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3D0D _ 89. 04 24
        call    _showString                             ; 3D10 _ E8, FFFFF0E0
        add     dword [ebp-10H], 16                     ; 3D15 _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 3D19 _ 8B. 45, 20
        movsx   eax, al                                 ; 3D1C _ 0F BE. C0
        mov     dword [esp+14H], ?_406                  ; 3D1F _ C7. 44 24, 14, 00000094(d)
        mov     dword [esp+10H], eax                    ; 3D27 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 3D2B _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 3D2E _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 3D32 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 3D35 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 3D39 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 3D3C _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3D40 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3D43 _ 89. 04 24
        call    _showString                             ; 3D46 _ E8, FFFFF0AA
        mov     eax, dword [ebp+10H]                    ; 3D4B _ 8B. 45, 10
        mov     eax, dword [eax+8H]                     ; 3D4E _ 8B. 40, 08
        mov     dword [esp], eax                        ; 3D51 _ 89. 04 24
        call    _intToHexStr                            ; 3D54 _ E8, FFFFFB56
        mov     dword [ebp-28H], eax                    ; 3D59 _ 89. 45, D8
        mov     eax, dword [ebp+20H]                    ; 3D5C _ 8B. 45, 20
        movsx   eax, al                                 ; 3D5F _ 0F BE. C0
        mov     edx, dword [ebp-28H]                    ; 3D62 _ 8B. 55, D8
        mov     dword [esp+14H], edx                    ; 3D65 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 3D69 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 3D6D _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 3D70 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 3D74 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 3D77 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 3D7B _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 3D7E _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3D82 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3D85 _ 89. 04 24
        call    _showString                             ; 3D88 _ E8, FFFFF068
        nop                                             ; 3D8D _ 90
        leave                                           ; 3D8E _ C9
        ret                                             ; 3D8F _ C3
; _showMemoryInfo End of function

_message_box:; Function begin
        push    ebp                                     ; 3D90 _ 55
        mov     ebp, esp                                ; 3D91 _ 89. E5
        sub     esp, 56                                 ; 3D93 _ 83. EC, 38
        mov     eax, dword [ebp+8H]                     ; 3D96 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3D99 _ 89. 04 24
        call    _sheet_alloc                            ; 3D9C _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 3DA1 _ 89. 45, F4
        mov     eax, dword [_memman]                    ; 3DA4 _ A1, 00000000(d)
        mov     dword [esp+4H], 10880                   ; 3DA9 _ C7. 44 24, 04, 00002A80
        mov     dword [esp], eax                        ; 3DB1 _ 89. 04 24
        call    _memman_alloc_4k                        ; 3DB4 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 3DB9 _ 89. 45, F0
        mov     dword [esp+10H], -1                     ; 3DBC _ C7. 44 24, 10, FFFFFFFF
        mov     dword [esp+0CH], 68                     ; 3DC4 _ C7. 44 24, 0C, 00000044
        mov     dword [esp+8H], 160                     ; 3DCC _ C7. 44 24, 08, 000000A0
        mov     eax, dword [ebp-10H]                    ; 3DD4 _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 3DD7 _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 3DDB _ 8B. 45, F4
        mov     dword [esp], eax                        ; 3DDE _ 89. 04 24
        call    _sheet_setbuf                           ; 3DE1 _ E8, 00000000(rel)
        mov     dword [esp+0CH], 1                      ; 3DE6 _ C7. 44 24, 0C, 00000001
        mov     eax, dword [ebp+0CH]                    ; 3DEE _ 8B. 45, 0C
        mov     dword [esp+8H], eax                     ; 3DF1 _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 3DF5 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 3DF8 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3DFC _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3DFF _ 89. 04 24
        call    _make_window8                           ; 3E02 _ E8, 00000074
        mov     dword [esp+14H], 7                      ; 3E07 _ C7. 44 24, 14, 00000007
        mov     dword [esp+10H], 16                     ; 3E0F _ C7. 44 24, 10, 00000010
        mov     dword [esp+0CH], 144                    ; 3E17 _ C7. 44 24, 0C, 00000090
        mov     dword [esp+8H], 28                      ; 3E1F _ C7. 44 24, 08, 0000001C
        mov     dword [esp+4H], 8                       ; 3E27 _ C7. 44 24, 04, 00000008
        mov     eax, dword [ebp-0CH]                    ; 3E2F _ 8B. 45, F4
        mov     dword [esp], eax                        ; 3E32 _ 89. 04 24
        call    _make_textbox8                          ; 3E35 _ E8, 00000444
        mov     dword [esp+0CH], 172                    ; 3E3A _ C7. 44 24, 0C, 000000AC
        mov     dword [esp+8H], 260                     ; 3E42 _ C7. 44 24, 08, 00000104
        mov     eax, dword [ebp-0CH]                    ; 3E4A _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 3E4D _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3E51 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3E54 _ 89. 04 24
        call    _sheet_slide                            ; 3E57 _ E8, 00000000(rel)
        mov     dword [esp+8H], 2                       ; 3E5C _ C7. 44 24, 08, 00000002
        mov     eax, dword [ebp-0CH]                    ; 3E64 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 3E67 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3E6B _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3E6E _ 89. 04 24
        call    _sheet_updown                           ; 3E71 _ E8, 00000000(rel)
        mov     eax, dword [ebp-0CH]                    ; 3E76 _ 8B. 45, F4
        leave                                           ; 3E79 _ C9
        ret                                             ; 3E7A _ C3
; _message_box End of function

_make_window8:; Function begin
        push    ebp                                     ; 3E7B _ 55
        mov     ebp, esp                                ; 3E7C _ 89. E5
        push    ebx                                     ; 3E7E _ 53
        sub     esp, 68                                 ; 3E7F _ 83. EC, 44
        mov     eax, dword [ebp+14H]                    ; 3E82 _ 8B. 45, 14
        mov     byte [ebp-1CH], al                      ; 3E85 _ 88. 45, E4
        mov     eax, dword [ebp+0CH]                    ; 3E88 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 3E8B _ 8B. 40, 04
        mov     dword [ebp-0CH], eax                    ; 3E8E _ 89. 45, F4
        mov     eax, dword [ebp+0CH]                    ; 3E91 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 3E94 _ 8B. 40, 08
        mov     dword [ebp-10H], eax                    ; 3E97 _ 89. 45, F0
        mov     eax, dword [ebp-0CH]                    ; 3E9A _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 3E9D _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 3EA0 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 3EA3 _ 8B. 00
        mov     dword [esp+18H], 0                      ; 3EA5 _ C7. 44 24, 18, 00000000
        mov     dword [esp+14H], edx                    ; 3EAD _ 89. 54 24, 14
        mov     dword [esp+10H], 0                      ; 3EB1 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 3EB9 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 3EC1 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-0CH]                    ; 3EC9 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 3ECC _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3ED0 _ 89. 04 24
        call    _boxfill8                               ; 3ED3 _ E8, FFFFF5EA
        mov     eax, dword [ebp-0CH]                    ; 3ED8 _ 8B. 45, F4
        lea     edx, [eax-2H]                           ; 3EDB _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 3EDE _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 3EE1 _ 8B. 00
        mov     dword [esp+18H], 1                      ; 3EE3 _ C7. 44 24, 18, 00000001
        mov     dword [esp+14H], edx                    ; 3EEB _ 89. 54 24, 14
        mov     dword [esp+10H], 1                      ; 3EEF _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], 1                      ; 3EF7 _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 7                       ; 3EFF _ C7. 44 24, 08, 00000007
        mov     edx, dword [ebp-0CH]                    ; 3F07 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 3F0A _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3F0E _ 89. 04 24
        call    _boxfill8                               ; 3F11 _ E8, FFFFF5AC
        mov     eax, dword [ebp-10H]                    ; 3F16 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 3F19 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 3F1C _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 3F1F _ 8B. 00
        mov     dword [esp+18H], edx                    ; 3F21 _ 89. 54 24, 18
        mov     dword [esp+14H], 0                      ; 3F25 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], 0                      ; 3F2D _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 3F35 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 3F3D _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-0CH]                    ; 3F45 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 3F48 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3F4C _ 89. 04 24
        call    _boxfill8                               ; 3F4F _ E8, FFFFF56E
        mov     eax, dword [ebp-10H]                    ; 3F54 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 3F57 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 3F5A _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 3F5D _ 8B. 00
        mov     dword [esp+18H], edx                    ; 3F5F _ 89. 54 24, 18
        mov     dword [esp+14H], 1                      ; 3F63 _ C7. 44 24, 14, 00000001
        mov     dword [esp+10H], 1                      ; 3F6B _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], 1                      ; 3F73 _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 7                       ; 3F7B _ C7. 44 24, 08, 00000007
        mov     edx, dword [ebp-0CH]                    ; 3F83 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 3F86 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3F8A _ 89. 04 24
        call    _boxfill8                               ; 3F8D _ E8, FFFFF530
        mov     eax, dword [ebp-10H]                    ; 3F92 _ 8B. 45, F0
        lea     ebx, [eax-2H]                           ; 3F95 _ 8D. 58, FE
        mov     eax, dword [ebp-0CH]                    ; 3F98 _ 8B. 45, F4
        lea     ecx, [eax-2H]                           ; 3F9B _ 8D. 48, FE
        mov     eax, dword [ebp-0CH]                    ; 3F9E _ 8B. 45, F4
        lea     edx, [eax-2H]                           ; 3FA1 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 3FA4 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 3FA7 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 3FA9 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 3FAD _ 89. 4C 24, 14
        mov     dword [esp+10H], 1                      ; 3FB1 _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], edx                    ; 3FB9 _ 89. 54 24, 0C
        mov     dword [esp+8H], 15                      ; 3FBD _ C7. 44 24, 08, 0000000F
        mov     edx, dword [ebp-0CH]                    ; 3FC5 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 3FC8 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3FCC _ 89. 04 24
        call    _boxfill8                               ; 3FCF _ E8, FFFFF4EE
        mov     eax, dword [ebp-10H]                    ; 3FD4 _ 8B. 45, F0
        lea     ebx, [eax-1H]                           ; 3FD7 _ 8D. 58, FF
        mov     eax, dword [ebp-0CH]                    ; 3FDA _ 8B. 45, F4
        lea     ecx, [eax-1H]                           ; 3FDD _ 8D. 48, FF
        mov     eax, dword [ebp-0CH]                    ; 3FE0 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 3FE3 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 3FE6 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 3FE9 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 3FEB _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 3FEF _ 89. 4C 24, 14
        mov     dword [esp+10H], 0                      ; 3FF3 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], edx                    ; 3FFB _ 89. 54 24, 0C
        mov     dword [esp+8H], 0                       ; 3FFF _ C7. 44 24, 08, 00000000
        mov     edx, dword [ebp-0CH]                    ; 4007 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 400A _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 400E _ 89. 04 24
        call    _boxfill8                               ; 4011 _ E8, FFFFF4AC
        mov     eax, dword [ebp-10H]                    ; 4016 _ 8B. 45, F0
        lea     ecx, [eax-3H]                           ; 4019 _ 8D. 48, FD
        mov     eax, dword [ebp-0CH]                    ; 401C _ 8B. 45, F4
        lea     edx, [eax-3H]                           ; 401F _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 4022 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 4025 _ 8B. 00
        mov     dword [esp+18H], ecx                    ; 4027 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 402B _ 89. 54 24, 14
        mov     dword [esp+10H], 2                      ; 402F _ C7. 44 24, 10, 00000002
        mov     dword [esp+0CH], 2                      ; 4037 _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 8                       ; 403F _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-0CH]                    ; 4047 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 404A _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 404E _ 89. 04 24
        call    _boxfill8                               ; 4051 _ E8, FFFFF46C
        mov     eax, dword [ebp-0CH]                    ; 4056 _ 8B. 45, F4
        lea     edx, [eax-4H]                           ; 4059 _ 8D. 50, FC
        mov     eax, dword [ebp+0CH]                    ; 405C _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 405F _ 8B. 00
        mov     dword [esp+18H], 20                     ; 4061 _ C7. 44 24, 18, 00000014
        mov     dword [esp+14H], edx                    ; 4069 _ 89. 54 24, 14
        mov     dword [esp+10H], 3                      ; 406D _ C7. 44 24, 10, 00000003
        mov     dword [esp+0CH], 3                      ; 4075 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 12                      ; 407D _ C7. 44 24, 08, 0000000C
        mov     edx, dword [ebp-0CH]                    ; 4085 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 4088 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 408C _ 89. 04 24
        call    _boxfill8                               ; 408F _ E8, FFFFF42E
        mov     eax, dword [ebp-10H]                    ; 4094 _ 8B. 45, F0
        lea     ebx, [eax-2H]                           ; 4097 _ 8D. 58, FE
        mov     eax, dword [ebp-0CH]                    ; 409A _ 8B. 45, F4
        lea     ecx, [eax-2H]                           ; 409D _ 8D. 48, FE
        mov     eax, dword [ebp-10H]                    ; 40A0 _ 8B. 45, F0
        lea     edx, [eax-2H]                           ; 40A3 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 40A6 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 40A9 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 40AB _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 40AF _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 40B3 _ 89. 54 24, 10
        mov     dword [esp+0CH], 1                      ; 40B7 _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 15                      ; 40BF _ C7. 44 24, 08, 0000000F
        mov     edx, dword [ebp-0CH]                    ; 40C7 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 40CA _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 40CE _ 89. 04 24
        call    _boxfill8                               ; 40D1 _ E8, FFFFF3EC
        mov     eax, dword [ebp-10H]                    ; 40D6 _ 8B. 45, F0
        lea     ebx, [eax-1H]                           ; 40D9 _ 8D. 58, FF
        mov     eax, dword [ebp-0CH]                    ; 40DC _ 8B. 45, F4
        lea     ecx, [eax-1H]                           ; 40DF _ 8D. 48, FF
        mov     eax, dword [ebp-10H]                    ; 40E2 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 40E5 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 40E8 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 40EB _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 40ED _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 40F1 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 40F5 _ 89. 54 24, 10
        mov     dword [esp+0CH], 0                      ; 40F9 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 4101 _ C7. 44 24, 08, 00000000
        mov     edx, dword [ebp-0CH]                    ; 4109 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 410C _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 4110 _ 89. 04 24
        call    _boxfill8                               ; 4113 _ E8, FFFFF3AA
        movsx   eax, byte [ebp-1CH]                     ; 4118 _ 0F BE. 45, E4
        mov     dword [esp+0CH], eax                    ; 411C _ 89. 44 24, 0C
        mov     eax, dword [ebp+10H]                    ; 4120 _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 4123 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 4127 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 412A _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 412E _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4131 _ 89. 04 24
        call    _make_wtitle8                           ; 4134 _ E8, 00000007
        nop                                             ; 4139 _ 90
        add     esp, 68                                 ; 413A _ 83. C4, 44
        pop     ebx                                     ; 413D _ 5B
        pop     ebp                                     ; 413E _ 5D
        ret                                             ; 413F _ C3
; _make_window8 End of function

_make_wtitle8:; Function begin
        push    ebp                                     ; 4140 _ 55
        mov     ebp, esp                                ; 4141 _ 89. E5
        push    ebx                                     ; 4143 _ 53
        sub     esp, 68                                 ; 4144 _ 83. EC, 44
        mov     eax, dword [ebp+14H]                    ; 4147 _ 8B. 45, 14
        mov     byte [ebp-1CH], al                      ; 414A _ 88. 45, E4
        cmp     byte [ebp-1CH], 0                       ; 414D _ 80. 7D, E4, 00
        jz      ?_225                                   ; 4151 _ 74, 0A
        mov     byte [ebp-12H], 7                       ; 4153 _ C6. 45, EE, 07
        mov     byte [ebp-13H], 12                      ; 4157 _ C6. 45, ED, 0C
        jmp     ?_226                                   ; 415B _ EB, 08

?_225:  mov     byte [ebp-12H], 8                       ; 415D _ C6. 45, EE, 08
        mov     byte [ebp-13H], 15                      ; 4161 _ C6. 45, ED, 0F
?_226:  mov     eax, dword [ebp+0CH]                    ; 4165 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 4168 _ 8B. 40, 04
        lea     ebx, [eax-4H]                           ; 416B _ 8D. 58, FC
        movzx   eax, byte [ebp-13H]                     ; 416E _ 0F B6. 45, ED
        movzx   eax, al                                 ; 4172 _ 0F B6. C0
        mov     edx, dword [ebp+0CH]                    ; 4175 _ 8B. 55, 0C
        mov     ecx, dword [edx+4H]                     ; 4178 _ 8B. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 417B _ 8B. 55, 0C
        mov     edx, dword [edx]                        ; 417E _ 8B. 12
        mov     dword [esp+18H], 20                     ; 4180 _ C7. 44 24, 18, 00000014
        mov     dword [esp+14H], ebx                    ; 4188 _ 89. 5C 24, 14
        mov     dword [esp+10H], 3                      ; 418C _ C7. 44 24, 10, 00000003
        mov     dword [esp+0CH], 3                      ; 4194 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], eax                     ; 419C _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 41A0 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 41A4 _ 89. 14 24
        call    _boxfill8                               ; 41A7 _ E8, FFFFF316
        movsx   eax, byte [ebp-12H]                     ; 41AC _ 0F BE. 45, EE
        mov     edx, dword [ebp+10H]                    ; 41B0 _ 8B. 55, 10
        mov     dword [esp+14H], edx                    ; 41B3 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 41B7 _ 89. 44 24, 10
        mov     dword [esp+0CH], 4                      ; 41BB _ C7. 44 24, 0C, 00000004
        mov     dword [esp+8H], 24                      ; 41C3 _ C7. 44 24, 08, 00000018
        mov     eax, dword [ebp+0CH]                    ; 41CB _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 41CE _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 41D2 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 41D5 _ 89. 04 24
        call    _showString                             ; 41D8 _ E8, FFFFEC18
        mov     dword [ebp-10H], 0                      ; 41DD _ C7. 45, F0, 00000000
        jmp     ?_234                                   ; 41E4 _ E9, 00000084

?_227:  mov     dword [ebp-0CH], 0                      ; 41E9 _ C7. 45, F4, 00000000
        jmp     ?_233                                   ; 41F0 _ EB, 71

?_228:  mov     eax, dword [ebp-10H]                    ; 41F2 _ 8B. 45, F0
        shl     eax, 4                                  ; 41F5 _ C1. E0, 04
        mov     edx, eax                                ; 41F8 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 41FA _ 8B. 45, F4
        add     eax, edx                                ; 41FD _ 01. D0
        add     eax, _closebtn.2834                     ; 41FF _ 05, 00000280(d)
        movzx   eax, byte [eax]                         ; 4204 _ 0F B6. 00
        mov     byte [ebp-11H], al                      ; 4207 _ 88. 45, EF
        cmp     byte [ebp-11H], 64                      ; 420A _ 80. 7D, EF, 40
        jnz     ?_229                                   ; 420E _ 75, 06
        mov     byte [ebp-11H], 0                       ; 4210 _ C6. 45, EF, 00
        jmp     ?_232                                   ; 4214 _ EB, 1C

?_229:  cmp     byte [ebp-11H], 36                      ; 4216 _ 80. 7D, EF, 24
        jnz     ?_230                                   ; 421A _ 75, 06
        mov     byte [ebp-11H], 15                      ; 421C _ C6. 45, EF, 0F
        jmp     ?_232                                   ; 4220 _ EB, 10

?_230:  cmp     byte [ebp-11H], 81                      ; 4222 _ 80. 7D, EF, 51
        jnz     ?_231                                   ; 4226 _ 75, 06
        mov     byte [ebp-11H], 8                       ; 4228 _ C6. 45, EF, 08
        jmp     ?_232                                   ; 422C _ EB, 04

?_231:  mov     byte [ebp-11H], 7                       ; 422E _ C6. 45, EF, 07
?_232:  mov     eax, dword [ebp+0CH]                    ; 4232 _ 8B. 45, 0C
        mov     ecx, dword [eax]                        ; 4235 _ 8B. 08
        mov     eax, dword [ebp-10H]                    ; 4237 _ 8B. 45, F0
        lea     edx, [eax+5H]                           ; 423A _ 8D. 50, 05
        mov     eax, dword [ebp+0CH]                    ; 423D _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 4240 _ 8B. 40, 04
        imul    eax, edx                                ; 4243 _ 0F AF. C2
        mov     edx, dword [ebp+0CH]                    ; 4246 _ 8B. 55, 0C
        mov     edx, dword [edx+4H]                     ; 4249 _ 8B. 52, 04
        lea     ebx, [edx-15H]                          ; 424C _ 8D. 5A, EB
        mov     edx, dword [ebp-0CH]                    ; 424F _ 8B. 55, F4
        add     edx, ebx                                ; 4252 _ 01. DA
        add     eax, edx                                ; 4254 _ 01. D0
        lea     edx, [ecx+eax]                          ; 4256 _ 8D. 14 01
        movzx   eax, byte [ebp-11H]                     ; 4259 _ 0F B6. 45, EF
        mov     byte [edx], al                          ; 425D _ 88. 02
        add     dword [ebp-0CH], 1                      ; 425F _ 83. 45, F4, 01
?_233:  cmp     dword [ebp-0CH], 15                     ; 4263 _ 83. 7D, F4, 0F
        jle     ?_228                                   ; 4267 _ 7E, 89
        add     dword [ebp-10H], 1                      ; 4269 _ 83. 45, F0, 01
?_234:  cmp     dword [ebp-10H], 13                     ; 426D _ 83. 7D, F0, 0D
        jle     ?_227                                   ; 4271 _ 0F 8E, FFFFFF72
        nop                                             ; 4277 _ 90
        add     esp, 68                                 ; 4278 _ 83. C4, 44
        pop     ebx                                     ; 427B _ 5B
        pop     ebp                                     ; 427C _ 5D
        ret                                             ; 427D _ C3
; _make_wtitle8 End of function

_make_textbox8:; Function begin
        push    ebp                                     ; 427E _ 55
        mov     ebp, esp                                ; 427F _ 89. E5
        push    edi                                     ; 4281 _ 57
        push    esi                                     ; 4282 _ 56
        push    ebx                                     ; 4283 _ 53
        sub     esp, 44                                 ; 4284 _ 83. EC, 2C
        mov     edx, dword [ebp+0CH]                    ; 4287 _ 8B. 55, 0C
        mov     eax, dword [ebp+14H]                    ; 428A _ 8B. 45, 14
        add     eax, edx                                ; 428D _ 01. D0
        mov     dword [ebp-10H], eax                    ; 428F _ 89. 45, F0
        mov     edx, dword [ebp+10H]                    ; 4292 _ 8B. 55, 10
        mov     eax, dword [ebp+18H]                    ; 4295 _ 8B. 45, 18
        add     eax, edx                                ; 4298 _ 01. D0
        mov     dword [ebp-14H], eax                    ; 429A _ 89. 45, EC
        mov     eax, dword [ebp+10H]                    ; 429D _ 8B. 45, 10
        lea     edi, [eax-3H]                           ; 42A0 _ 8D. 78, FD
        mov     eax, dword [ebp-10H]                    ; 42A3 _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 42A6 _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 42A9 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 42AC _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 42AF _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 42B2 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 42B5 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 42B8 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 42BB _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 42BE _ 8B. 00
        mov     dword [esp+18H], edi                    ; 42C0 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 42C4 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 42C8 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 42CC _ 89. 4C 24, 0C
        mov     dword [esp+8H], 15                      ; 42D0 _ C7. 44 24, 08, 0000000F
        mov     dword [esp+4H], edx                     ; 42D8 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 42DC _ 89. 04 24
        call    _boxfill8                               ; 42DF _ E8, FFFFF1DE
        mov     eax, dword [ebp-14H]                    ; 42E4 _ 8B. 45, EC
        lea     edi, [eax+1H]                           ; 42E7 _ 8D. 78, 01
        mov     eax, dword [ebp+0CH]                    ; 42EA _ 8B. 45, 0C
        lea     esi, [eax-3H]                           ; 42ED _ 8D. 70, FD
        mov     eax, dword [ebp+10H]                    ; 42F0 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 42F3 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 42F6 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 42F9 _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 42FC _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 42FF _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 4302 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 4305 _ 8B. 00
        mov     dword [esp+18H], edi                    ; 4307 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 430B _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 430F _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 4313 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 15                      ; 4317 _ C7. 44 24, 08, 0000000F
        mov     dword [esp+4H], edx                     ; 431F _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 4323 _ 89. 04 24
        call    _boxfill8                               ; 4326 _ E8, FFFFF197
        mov     eax, dword [ebp-14H]                    ; 432B _ 8B. 45, EC
        lea     edi, [eax+2H]                           ; 432E _ 8D. 78, 02
        mov     eax, dword [ebp-10H]                    ; 4331 _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 4334 _ 8D. 70, 01
        mov     eax, dword [ebp-14H]                    ; 4337 _ 8B. 45, EC
        lea     ebx, [eax+2H]                           ; 433A _ 8D. 58, 02
        mov     eax, dword [ebp+0CH]                    ; 433D _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 4340 _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 4343 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 4346 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 4349 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 434C _ 8B. 00
        mov     dword [esp+18H], edi                    ; 434E _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 4352 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 4356 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 435A _ 89. 4C 24, 0C
        mov     dword [esp+8H], 7                       ; 435E _ C7. 44 24, 08, 00000007
        mov     dword [esp+4H], edx                     ; 4366 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 436A _ 89. 04 24
        call    _boxfill8                               ; 436D _ E8, FFFFF150
        mov     eax, dword [ebp-14H]                    ; 4372 _ 8B. 45, EC
        lea     edi, [eax+2H]                           ; 4375 _ 8D. 78, 02
        mov     eax, dword [ebp-10H]                    ; 4378 _ 8B. 45, F0
        lea     esi, [eax+2H]                           ; 437B _ 8D. 70, 02
        mov     eax, dword [ebp+10H]                    ; 437E _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 4381 _ 8D. 58, FD
        mov     eax, dword [ebp-10H]                    ; 4384 _ 8B. 45, F0
        lea     ecx, [eax+2H]                           ; 4387 _ 8D. 48, 02
        mov     eax, dword [ebp+8H]                     ; 438A _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 438D _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 4390 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 4393 _ 8B. 00
        mov     dword [esp+18H], edi                    ; 4395 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 4399 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 439D _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 43A1 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 7                       ; 43A5 _ C7. 44 24, 08, 00000007
        mov     dword [esp+4H], edx                     ; 43AD _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 43B1 _ 89. 04 24
        call    _boxfill8                               ; 43B4 _ E8, FFFFF109
        mov     eax, dword [ebp+10H]                    ; 43B9 _ 8B. 45, 10
        lea     esi, [eax-2H]                           ; 43BC _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 43BF _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 43C2 _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 43C5 _ 8B. 45, 0C
        lea     ecx, [eax-1H]                           ; 43C8 _ 8D. 48, FF
        mov     eax, dword [ebp+8H]                     ; 43CB _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 43CE _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 43D1 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 43D4 _ 8B. 00
        mov     dword [esp+18H], esi                    ; 43D6 _ 89. 74 24, 18
        mov     esi, dword [ebp-10H]                    ; 43DA _ 8B. 75, F0
        mov     dword [esp+14H], esi                    ; 43DD _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 43E1 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 43E5 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 0                       ; 43E9 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 43F1 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 43F5 _ 89. 04 24
        call    _boxfill8                               ; 43F8 _ E8, FFFFF0C5
        mov     eax, dword [ebp+0CH]                    ; 43FD _ 8B. 45, 0C
        lea     esi, [eax-2H]                           ; 4400 _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 4403 _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 4406 _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 4409 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 440C _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 440F _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 4412 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 4415 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 4418 _ 8B. 00
        mov     edi, dword [ebp-14H]                    ; 441A _ 8B. 7D, EC
        mov     dword [esp+18H], edi                    ; 441D _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 4421 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 4425 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 4429 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 0                       ; 442D _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 4435 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 4439 _ 89. 04 24
        call    _boxfill8                               ; 443C _ E8, FFFFF081
        mov     eax, dword [ebp-14H]                    ; 4441 _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 4444 _ 8D. 70, 01
        mov     eax, dword [ebp-14H]                    ; 4447 _ 8B. 45, EC
        lea     ebx, [eax+1H]                           ; 444A _ 8D. 58, 01
        mov     eax, dword [ebp+0CH]                    ; 444D _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 4450 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 4453 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 4456 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 4459 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 445C _ 8B. 00
        mov     dword [esp+18H], esi                    ; 445E _ 89. 74 24, 18
        mov     esi, dword [ebp-10H]                    ; 4462 _ 8B. 75, F0
        mov     dword [esp+14H], esi                    ; 4465 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 4469 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 446D _ 89. 4C 24, 0C
        mov     dword [esp+8H], 8                       ; 4471 _ C7. 44 24, 08, 00000008
        mov     dword [esp+4H], edx                     ; 4479 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 447D _ 89. 04 24
        call    _boxfill8                               ; 4480 _ E8, FFFFF03D
        mov     eax, dword [ebp-14H]                    ; 4485 _ 8B. 45, EC
        lea     edi, [eax+1H]                           ; 4488 _ 8D. 78, 01
        mov     eax, dword [ebp-10H]                    ; 448B _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 448E _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 4491 _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 4494 _ 8D. 58, FE
        mov     eax, dword [ebp-10H]                    ; 4497 _ 8B. 45, F0
        lea     ecx, [eax+1H]                           ; 449A _ 8D. 48, 01
        mov     eax, dword [ebp+8H]                     ; 449D _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 44A0 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 44A3 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 44A6 _ 8B. 00
        mov     dword [esp+18H], edi                    ; 44A8 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 44AC _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 44B0 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 44B4 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 8                       ; 44B8 _ C7. 44 24, 08, 00000008
        mov     dword [esp+4H], edx                     ; 44C0 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 44C4 _ 89. 04 24
        call    _boxfill8                               ; 44C7 _ E8, FFFFEFF6
        mov     eax, dword [ebp+10H]                    ; 44CC _ 8B. 45, 10
        lea     esi, [eax-1H]                           ; 44CF _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 44D2 _ 8B. 45, 0C
        lea     ebx, [eax-1H]                           ; 44D5 _ 8D. 58, FF
        mov     eax, dword [ebp+1CH]                    ; 44D8 _ 8B. 45, 1C
        movzx   eax, al                                 ; 44DB _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 44DE _ 8B. 55, 08
        mov     ecx, dword [edx+4H]                     ; 44E1 _ 8B. 4A, 04
        mov     edx, dword [ebp+8H]                     ; 44E4 _ 8B. 55, 08
        mov     edx, dword [edx]                        ; 44E7 _ 8B. 12
        mov     edi, dword [ebp-14H]                    ; 44E9 _ 8B. 7D, EC
        mov     dword [esp+18H], edi                    ; 44EC _ 89. 7C 24, 18
        mov     edi, dword [ebp-10H]                    ; 44F0 _ 8B. 7D, F0
        mov     dword [esp+14H], edi                    ; 44F3 _ 89. 7C 24, 14
        mov     dword [esp+10H], esi                    ; 44F7 _ 89. 74 24, 10
        mov     dword [esp+0CH], ebx                    ; 44FB _ 89. 5C 24, 0C
        mov     dword [esp+8H], eax                     ; 44FF _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 4503 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 4507 _ 89. 14 24
        call    _boxfill8                               ; 450A _ E8, FFFFEFB3
        nop                                             ; 450F _ 90
        add     esp, 44                                 ; 4510 _ 83. C4, 2C
        pop     ebx                                     ; 4513 _ 5B
        pop     esi                                     ; 4514 _ 5E
        pop     edi                                     ; 4515 _ 5F
        pop     ebp                                     ; 4516 _ 5D
        ret                                             ; 4517 _ C3
; _make_textbox8 End of function

_file_loadfile:; Function begin
        push    ebp                                     ; 4518 _ 55
        mov     ebp, esp                                ; 4519 _ 89. E5
        sub     esp, 56                                 ; 451B _ 83. EC, 38
        mov     dword [ebp-0CH], 88064                  ; 451E _ C7. 45, F4, 00015800
        mov     eax, dword [_memman]                    ; 4525 _ A1, 00000000(d)
        mov     dword [esp+4H], 13                      ; 452A _ C7. 44 24, 04, 0000000D
        mov     dword [esp], eax                        ; 4532 _ 89. 04 24
        call    _memman_alloc                           ; 4535 _ E8, 00000000(rel)
        mov     dword [ebp-1CH], eax                    ; 453A _ 89. 45, E4
        mov     eax, dword [ebp-1CH]                    ; 453D _ 8B. 45, E4
        add     eax, 12                                 ; 4540 _ 83. C0, 0C
        mov     byte [eax], 0                           ; 4543 _ C6. 00, 00
        jmp     ?_245                                   ; 4546 _ E9, 00000125

?_235:  mov     dword [ebp-10H], 0                      ; 454B _ C7. 45, F0, 00000000
        jmp     ?_237                                   ; 4552 _ EB, 2A

?_236:  mov     edx, dword [ebp-0CH]                    ; 4554 _ 8B. 55, F4
        mov     eax, dword [ebp-10H]                    ; 4557 _ 8B. 45, F0
        add     eax, edx                                ; 455A _ 01. D0
        movzx   eax, byte [eax]                         ; 455C _ 0F B6. 00
        test    al, al                                  ; 455F _ 84. C0
        jz      ?_238                                   ; 4561 _ 74, 23
        mov     edx, dword [ebp-0CH]                    ; 4563 _ 8B. 55, F4
        mov     eax, dword [ebp-10H]                    ; 4566 _ 8B. 45, F0
        add     eax, edx                                ; 4569 _ 01. D0
        movzx   ecx, byte [eax]                         ; 456B _ 0F B6. 08
        mov     edx, dword [ebp-10H]                    ; 456E _ 8B. 55, F0
        mov     eax, dword [ebp-1CH]                    ; 4571 _ 8B. 45, E4
        add     eax, edx                                ; 4574 _ 01. D0
        mov     edx, ecx                                ; 4576 _ 89. CA
        mov     byte [eax], dl                          ; 4578 _ 88. 10
        add     dword [ebp-10H], 1                      ; 457A _ 83. 45, F0, 01
?_237:  cmp     dword [ebp-10H], 7                      ; 457E _ 83. 7D, F0, 07
        jle     ?_236                                   ; 4582 _ 7E, D0
        jmp     ?_239                                   ; 4584 _ EB, 01

?_238:  nop                                             ; 4586 _ 90
?_239:  mov     dword [ebp-14H], 0                      ; 4587 _ C7. 45, EC, 00000000
        mov     edx, dword [ebp-10H]                    ; 458E _ 8B. 55, F0
        mov     eax, dword [ebp-1CH]                    ; 4591 _ 8B. 45, E4
        add     eax, edx                                ; 4594 _ 01. D0
        mov     byte [eax], 46                          ; 4596 _ C6. 00, 2E
        add     dword [ebp-10H], 1                      ; 4599 _ 83. 45, F0, 01
        mov     dword [ebp-14H], 0                      ; 459D _ C7. 45, EC, 00000000
        jmp     ?_241                                   ; 45A4 _ EB, 22

?_240:  mov     edx, dword [ebp-0CH]                    ; 45A6 _ 8B. 55, F4
        mov     eax, dword [ebp-14H]                    ; 45A9 _ 8B. 45, EC
        add     eax, edx                                ; 45AC _ 01. D0
        add     eax, 8                                  ; 45AE _ 83. C0, 08
        movzx   ecx, byte [eax]                         ; 45B1 _ 0F B6. 08
        mov     edx, dword [ebp-10H]                    ; 45B4 _ 8B. 55, F0
        mov     eax, dword [ebp-1CH]                    ; 45B7 _ 8B. 45, E4
        add     eax, edx                                ; 45BA _ 01. D0
        mov     edx, ecx                                ; 45BC _ 89. CA
        mov     byte [eax], dl                          ; 45BE _ 88. 10
        add     dword [ebp-10H], 1                      ; 45C0 _ 83. 45, F0, 01
        add     dword [ebp-14H], 1                      ; 45C4 _ 83. 45, EC, 01
?_241:  cmp     dword [ebp-14H], 2                      ; 45C8 _ 83. 7D, EC, 02
        jle     ?_240                                   ; 45CC _ 7E, D8
        mov     eax, dword [ebp-1CH]                    ; 45CE _ 8B. 45, E4
        mov     dword [esp+4H], eax                     ; 45D1 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 45D5 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 45D8 _ 89. 04 24
        call    _strcmp                                 ; 45DB _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 45E0 _ 83. F8, 01
        jne     ?_244                                   ; 45E3 _ 0F 85, 00000083
        mov     eax, dword [ebp-0CH]                    ; 45E9 _ 8B. 45, F4
        mov     edx, dword [eax+1CH]                    ; 45EC _ 8B. 50, 1C
        mov     eax, dword [_memman]                    ; 45EF _ A1, 00000000(d)
        mov     dword [esp+4H], edx                     ; 45F4 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 45F8 _ 89. 04 24
        call    _memman_alloc_4k                        ; 45FB _ E8, 00000000(rel)
        mov     edx, eax                                ; 4600 _ 89. C2
        mov     eax, dword [ebp+0CH]                    ; 4602 _ 8B. 45, 0C
        mov     dword [eax], edx                        ; 4605 _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 4607 _ 8B. 45, F4
        mov     eax, dword [eax+1CH]                    ; 460A _ 8B. 40, 1C
        mov     edx, eax                                ; 460D _ 89. C2
        mov     eax, dword [ebp+0CH]                    ; 460F _ 8B. 45, 0C
        mov     dword [eax+8H], edx                     ; 4612 _ 89. 50, 08
        mov     dword [ebp-20H], 97280                  ; 4615 _ C7. 45, E0, 00017C00
        mov     eax, dword [ebp-0CH]                    ; 461C _ 8B. 45, F4
        movzx   eax, word [eax+1AH]                     ; 461F _ 0F B7. 40, 1A
        movzx   eax, ax                                 ; 4623 _ 0F B7. C0
        shl     eax, 9                                  ; 4626 _ C1. E0, 09
        add     dword [ebp-20H], eax                    ; 4629 _ 01. 45, E0
        mov     eax, dword [ebp-0CH]                    ; 462C _ 8B. 45, F4
        mov     eax, dword [eax+1CH]                    ; 462F _ 8B. 40, 1C
        mov     dword [ebp-24H], eax                    ; 4632 _ 89. 45, DC
        mov     dword [ebp-18H], 0                      ; 4635 _ C7. 45, E8, 00000000
        mov     dword [ebp-18H], 0                      ; 463C _ C7. 45, E8, 00000000
        jmp     ?_243                                   ; 4643 _ EB, 1D

?_242:  mov     edx, dword [ebp-18H]                    ; 4645 _ 8B. 55, E8
        mov     eax, dword [ebp-20H]                    ; 4648 _ 8B. 45, E0
        add     eax, edx                                ; 464B _ 01. D0
        movzx   ecx, byte [eax]                         ; 464D _ 0F B6. 08
        mov     eax, dword [ebp+0CH]                    ; 4650 _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 4653 _ 8B. 10
        mov     eax, dword [ebp-18H]                    ; 4655 _ 8B. 45, E8
        add     eax, edx                                ; 4658 _ 01. D0
        mov     edx, ecx                                ; 465A _ 89. CA
        mov     byte [eax], dl                          ; 465C _ 88. 10
        add     dword [ebp-18H], 1                      ; 465E _ 83. 45, E8, 01
?_243:  mov     eax, dword [ebp-18H]                    ; 4662 _ 8B. 45, E8
        cmp     eax, dword [ebp-24H]                    ; 4665 _ 3B. 45, DC
        jl      ?_242                                   ; 4668 _ 7C, DB
        jmp     ?_246                                   ; 466A _ EB, 12

?_244:  add     dword [ebp-0CH], 32                     ; 466C _ 83. 45, F4, 20
?_245:  mov     eax, dword [ebp-0CH]                    ; 4670 _ 8B. 45, F4
        movzx   eax, byte [eax]                         ; 4673 _ 0F B6. 00
        test    al, al                                  ; 4676 _ 84. C0
        jne     ?_235                                   ; 4678 _ 0F 85, FFFFFECD
?_246:  mov     edx, dword [ebp-1CH]                    ; 467E _ 8B. 55, E4
        mov     eax, dword [_memman]                    ; 4681 _ A1, 00000000(d)
        mov     dword [esp+8H], 13                      ; 4686 _ C7. 44 24, 08, 0000000D
        mov     dword [esp+4H], edx                     ; 468E _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 4692 _ 89. 04 24
        call    _memman_free                            ; 4695 _ E8, 00000000(rel)
        nop                                             ; 469A _ 90
        leave                                           ; 469B _ C9
        ret                                             ; 469C _ C3
; _file_loadfile End of function

_intHandlerForStackOverFlow:; Function begin
        push    ebp                                     ; 469D _ 55
        mov     ebp, esp                                ; 469E _ 89. E5
        sub     esp, 40                                 ; 46A0 _ 83. EC, 28
        call    _task_now                               ; 46A3 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 46A8 _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 46AB _ 8B. 45, F4
        mov     dword [eax+98H], 8                      ; 46AE _ C7. 80, 00000098, 00000008
        mov     dword [esp], ?_407                      ; 46B8 _ C7. 04 24, 000000A0(d)
        call    _cons_putstr                            ; 46BF _ E8, FFFFD939
        mov     eax, dword [ebp-0CH]                    ; 46C4 _ 8B. 45, F4
        mov     dword [eax+98H], 8                      ; 46C7 _ C7. 80, 00000098, 00000008
        mov     eax, dword [ebp-0CH]                    ; 46D1 _ 8B. 45, F4
        mov     eax, dword [eax+9CH]                    ; 46D4 _ 8B. 80, 0000009C
        lea     edx, [eax+10H]                          ; 46DA _ 8D. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 46DD _ 8B. 45, F4
        mov     dword [eax+9CH], edx                    ; 46E0 _ 89. 90, 0000009C
        mov     dword [esp], ?_408                      ; 46E6 _ C7. 04 24, 000000A7(d)
        call    _cons_putstr                            ; 46ED _ E8, FFFFD90B
        mov     eax, dword [ebp-0CH]                    ; 46F2 _ 8B. 45, F4
        mov     dword [eax+98H], 8                      ; 46F5 _ C7. 80, 00000098, 00000008
        mov     eax, dword [ebp-0CH]                    ; 46FF _ 8B. 45, F4
        mov     eax, dword [eax+9CH]                    ; 4702 _ 8B. 80, 0000009C
        lea     edx, [eax+10H]                          ; 4708 _ 8D. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 470B _ 8B. 45, F4
        mov     dword [eax+9CH], edx                    ; 470E _ 89. 90, 0000009C
        mov     eax, dword [ebp+8H]                     ; 4714 _ 8B. 45, 08
        add     eax, 44                                 ; 4717 _ 83. C0, 2C
        mov     eax, dword [eax]                        ; 471A _ 8B. 00
        mov     dword [esp], eax                        ; 471C _ 89. 04 24
        call    _intToHexStr                            ; 471F _ E8, FFFFF18B
        mov     dword [ebp-10H], eax                    ; 4724 _ 89. 45, F0
        mov     dword [esp], ?_409                      ; 4727 _ C7. 04 24, 000000B7(d)
        call    _cons_putstr                            ; 472E _ E8, FFFFD8CA
        mov     eax, dword [ebp-10H]                    ; 4733 _ 8B. 45, F0
        mov     dword [esp], eax                        ; 4736 _ 89. 04 24
        call    _cons_putstr                            ; 4739 _ E8, FFFFD8BF
        mov     eax, dword [ebp-0CH]                    ; 473E _ 8B. 45, F4
        mov     dword [eax+98H], 8                      ; 4741 _ C7. 80, 00000098, 00000008
        mov     eax, dword [ebp-0CH]                    ; 474B _ 8B. 45, F4
        mov     eax, dword [eax+9CH]                    ; 474E _ 8B. 80, 0000009C
        lea     edx, [eax+10H]                          ; 4754 _ 8D. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 4757 _ 8B. 45, F4
        mov     dword [eax+9CH], edx                    ; 475A _ 89. 90, 0000009C
        mov     eax, dword [ebp-0CH]                    ; 4760 _ 8B. 45, F4
        add     eax, 48                                 ; 4763 _ 83. C0, 30
        leave                                           ; 4766 _ C9
        ret                                             ; 4767 _ C3
; _intHandlerForStackOverFlow End of function

_intHandlerForException:; Function begin
        push    ebp                                     ; 4768 _ 55
        mov     ebp, esp                                ; 4769 _ 89. E5
        sub     esp, 40                                 ; 476B _ 83. EC, 28
        call    _task_now                               ; 476E _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 4773 _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 4776 _ 8B. 45, F4
        mov     dword [eax+98H], 8                      ; 4779 _ C7. 80, 00000098, 00000008
        mov     dword [esp], ?_410                      ; 4783 _ C7. 04 24, 000000BE(d)
        call    _cons_putstr                            ; 478A _ E8, FFFFD86E
        mov     eax, dword [ebp-0CH]                    ; 478F _ 8B. 45, F4
        mov     dword [eax+98H], 8                      ; 4792 _ C7. 80, 00000098, 00000008
        mov     eax, dword [ebp-0CH]                    ; 479C _ 8B. 45, F4
        mov     eax, dword [eax+9CH]                    ; 479F _ 8B. 80, 0000009C
        lea     edx, [eax+10H]                          ; 47A5 _ 8D. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 47A8 _ 8B. 45, F4
        mov     dword [eax+9CH], edx                    ; 47AB _ 89. 90, 0000009C
        mov     dword [esp], ?_411                      ; 47B1 _ C7. 04 24, 000000C6(d)
        call    _cons_putstr                            ; 47B8 _ E8, FFFFD840
        mov     eax, dword [ebp-0CH]                    ; 47BD _ 8B. 45, F4
        mov     eax, dword [eax+9CH]                    ; 47C0 _ 8B. 80, 0000009C
        lea     edx, [eax+10H]                          ; 47C6 _ 8D. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 47C9 _ 8B. 45, F4
        mov     dword [eax+9CH], edx                    ; 47CC _ 89. 90, 0000009C
        mov     eax, dword [ebp-0CH]                    ; 47D2 _ 8B. 45, F4
        mov     dword [eax+98H], 8                      ; 47D5 _ C7. 80, 00000098, 00000008
        mov     eax, dword [ebp-0CH]                    ; 47DF _ 8B. 45, F4
        add     eax, 48                                 ; 47E2 _ 83. C0, 30
        leave                                           ; 47E5 _ C9
        ret                                             ; 47E6 _ C3
; _intHandlerForException End of function

        nop                                             ; 47E7 _ 90


_shtctl_init:
        push    ebp                                     ; 47E8 _ 55
        mov     ebp, esp                                ; 47E9 _ 89. E5
        sub     esp, 40                                 ; 47EB _ 83. EC, 28
        mov     dword [esp+4H], 9232                    ; 47EE _ C7. 44 24, 04, 00002410
        mov     eax, dword [ebp+8H]                     ; 47F6 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 47F9 _ 89. 04 24
        call    _memman_alloc_4k                        ; 47FC _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 4801 _ 89. 45, F0
        cmp     dword [ebp-10H], 0                      ; 4804 _ 83. 7D, F0, 00
        jnz     ?_247                                   ; 4808 _ 75, 0A
        mov     eax, 0                                  ; 480A _ B8, 00000000
        jmp     ?_251                                   ; 480F _ E9, 000000A3

?_247:  mov     eax, dword [ebp+10H]                    ; 4814 _ 8B. 45, 10
        imul    eax, dword [ebp+14H]                    ; 4817 _ 0F AF. 45, 14
        mov     dword [esp+4H], eax                     ; 481B _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 481F _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4822 _ 89. 04 24
        call    _memman_alloc_4k                        ; 4825 _ E8, 00000000(rel)
        mov     edx, eax                                ; 482A _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 482C _ 8B. 45, F0
        mov     dword [eax+4H], edx                     ; 482F _ 89. 50, 04
        mov     eax, dword [ebp-10H]                    ; 4832 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 4835 _ 8B. 40, 04
        test    eax, eax                                ; 4838 _ 85. C0
        jnz     ?_248                                   ; 483A _ 75, 21
        mov     eax, dword [ebp-10H]                    ; 483C _ 8B. 45, F0
        mov     dword [esp+8H], 9232                    ; 483F _ C7. 44 24, 08, 00002410
        mov     dword [esp+4H], eax                     ; 4847 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 484B _ 8B. 45, 08
        mov     dword [esp], eax                        ; 484E _ 89. 04 24
        call    _memman_free_4k                         ; 4851 _ E8, 00000000(rel)
        mov     eax, 0                                  ; 4856 _ B8, 00000000
        jmp     ?_251                                   ; 485B _ EB, 5A

?_248:  mov     eax, dword [ebp-10H]                    ; 485D _ 8B. 45, F0
        mov     edx, dword [ebp+0CH]                    ; 4860 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 4863 _ 89. 10
        mov     eax, dword [ebp-10H]                    ; 4865 _ 8B. 45, F0
        mov     edx, dword [ebp+10H]                    ; 4868 _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 486B _ 89. 50, 08
        mov     eax, dword [ebp-10H]                    ; 486E _ 8B. 45, F0
        mov     edx, dword [ebp+14H]                    ; 4871 _ 8B. 55, 14
        mov     dword [eax+0CH], edx                    ; 4874 _ 89. 50, 0C
        mov     eax, dword [ebp-10H]                    ; 4877 _ 8B. 45, F0
        mov     dword [eax+10H], -1                     ; 487A _ C7. 40, 10, FFFFFFFF
        mov     dword [ebp-0CH], 0                      ; 4881 _ C7. 45, F4, 00000000
        jmp     ?_250                                   ; 4888 _ EB, 21

?_249:  mov     ecx, dword [ebp-10H]                    ; 488A _ 8B. 4D, F0
        mov     edx, dword [ebp-0CH]                    ; 488D _ 8B. 55, F4
        mov     eax, edx                                ; 4890 _ 89. D0
        shl     eax, 3                                  ; 4892 _ C1. E0, 03
        add     eax, edx                                ; 4895 _ 01. D0
        shl     eax, 2                                  ; 4897 _ C1. E0, 02
        add     eax, ecx                                ; 489A _ 01. C8
        add     eax, 1072                               ; 489C _ 05, 00000430
        mov     dword [eax], 0                          ; 48A1 _ C7. 00, 00000000
        add     dword [ebp-0CH], 1                      ; 48A7 _ 83. 45, F4, 01
?_250:  cmp     dword [ebp-0CH], 255                    ; 48AB _ 81. 7D, F4, 000000FF
        jle     ?_249                                   ; 48B2 _ 7E, D6
        mov     eax, dword [ebp-10H]                    ; 48B4 _ 8B. 45, F0
?_251:  leave                                           ; 48B7 _ C9
        ret                                             ; 48B8 _ C3

_sheet_alloc:; Function begin
        push    ebp                                     ; 48B9 _ 55
        mov     ebp, esp                                ; 48BA _ 89. E5
        sub     esp, 24                                 ; 48BC _ 83. EC, 18
        mov     dword [ebp-0CH], 0                      ; 48BF _ C7. 45, F4, 00000000
        jmp     ?_254                                   ; 48C6 _ EB, 75

?_252:  mov     ecx, dword [ebp+8H]                     ; 48C8 _ 8B. 4D, 08
        mov     edx, dword [ebp-0CH]                    ; 48CB _ 8B. 55, F4
        mov     eax, edx                                ; 48CE _ 89. D0
        shl     eax, 3                                  ; 48D0 _ C1. E0, 03
        add     eax, edx                                ; 48D3 _ 01. D0
        shl     eax, 2                                  ; 48D5 _ C1. E0, 02
        add     eax, ecx                                ; 48D8 _ 01. C8
        add     eax, 1072                               ; 48DA _ 05, 00000430
        mov     eax, dword [eax]                        ; 48DF _ 8B. 00
        test    eax, eax                                ; 48E1 _ 85. C0
        jnz     ?_253                                   ; 48E3 _ 75, 54
        mov     edx, dword [ebp-0CH]                    ; 48E5 _ 8B. 55, F4
        mov     eax, edx                                ; 48E8 _ 89. D0
        shl     eax, 3                                  ; 48EA _ C1. E0, 03
        add     eax, edx                                ; 48ED _ 01. D0
        shl     eax, 2                                  ; 48EF _ C1. E0, 02
        lea     edx, [eax+410H]                         ; 48F2 _ 8D. 90, 00000410
        mov     eax, dword [ebp+8H]                     ; 48F8 _ 8B. 45, 08
        add     eax, edx                                ; 48FB _ 01. D0
        add     eax, 4                                  ; 48FD _ 83. C0, 04
        mov     dword [ebp-10H], eax                    ; 4900 _ 89. 45, F0
        mov     eax, dword [ebp+8H]                     ; 4903 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 4906 _ 8B. 55, F4
        add     edx, 4                                  ; 4909 _ 83. C2, 04
        mov     ecx, dword [ebp-10H]                    ; 490C _ 8B. 4D, F0
        mov     dword [eax+edx*4+4H], ecx               ; 490F _ 89. 4C 90, 04
        mov     eax, dword [ebp-10H]                    ; 4913 _ 8B. 45, F0
        mov     dword [eax+1CH], 1                      ; 4916 _ C7. 40, 1C, 00000001
        mov     eax, dword [ebp-10H]                    ; 491D _ 8B. 45, F0
        mov     dword [eax+18H], -1                     ; 4920 _ C7. 40, 18, FFFFFFFF
        call    _task_now                               ; 4927 _ E8, 00000000(rel)
        mov     edx, eax                                ; 492C _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 492E _ 8B. 45, F0
        mov     dword [eax+20H], edx                    ; 4931 _ 89. 50, 20
        mov     eax, dword [ebp-10H]                    ; 4934 _ 8B. 45, F0
        jmp     ?_255                                   ; 4937 _ EB, 12

?_253:  add     dword [ebp-0CH], 1                      ; 4939 _ 83. 45, F4, 01
?_254:  cmp     dword [ebp-0CH], 255                    ; 493D _ 81. 7D, F4, 000000FF
        jle     ?_252                                   ; 4944 _ 7E, 82
        mov     eax, 0                                  ; 4946 _ B8, 00000000
?_255:  leave                                           ; 494B _ C9
        ret                                             ; 494C _ C3
; _sheet_alloc End of function

_sheet_setbuf:; Function begin
        push    ebp                                     ; 494D _ 55
        mov     ebp, esp                                ; 494E _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 4950 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 4953 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 4956 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 4958 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 495B _ 8B. 55, 10
        mov     dword [eax+4H], edx                     ; 495E _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 4961 _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 4964 _ 8B. 55, 14
        mov     dword [eax+8H], edx                     ; 4967 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 496A _ 8B. 45, 08
        mov     edx, dword [ebp+18H]                    ; 496D _ 8B. 55, 18
        mov     dword [eax+14H], edx                    ; 4970 _ 89. 50, 14
        nop                                             ; 4973 _ 90
        pop     ebp                                     ; 4974 _ 5D
        ret                                             ; 4975 _ C3
; _sheet_setbuf End of function

_sheet_updown:; Function begin
        push    ebp                                     ; 4976 _ 55
        mov     ebp, esp                                ; 4977 _ 89. E5
        push    edi                                     ; 4979 _ 57
        push    esi                                     ; 497A _ 56
        push    ebx                                     ; 497B _ 53
        sub     esp, 60                                 ; 497C _ 83. EC, 3C
        mov     eax, dword [ebp+0CH]                    ; 497F _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 4982 _ 8B. 40, 18
        mov     dword [ebp-20H], eax                    ; 4985 _ 89. 45, E0
        mov     eax, dword [ebp+8H]                     ; 4988 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 498B _ 8B. 40, 10
        add     eax, 1                                  ; 498E _ 83. C0, 01
        cmp     dword [ebp+10H], eax                    ; 4991 _ 39. 45, 10
        jle     ?_256                                   ; 4994 _ 7E, 0C
        mov     eax, dword [ebp+8H]                     ; 4996 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 4999 _ 8B. 40, 10
        add     eax, 1                                  ; 499C _ 83. C0, 01
        mov     dword [ebp+10H], eax                    ; 499F _ 89. 45, 10
?_256:  cmp     dword [ebp+10H], -1                     ; 49A2 _ 83. 7D, 10, FF
        jge     ?_257                                   ; 49A6 _ 7D, 07
        mov     dword [ebp+10H], -1                     ; 49A8 _ C7. 45, 10, FFFFFFFF
?_257:  mov     eax, dword [ebp+0CH]                    ; 49AF _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 49B2 _ 8B. 55, 10
        mov     dword [eax+18H], edx                    ; 49B5 _ 89. 50, 18
        mov     eax, dword [ebp-20H]                    ; 49B8 _ 8B. 45, E0
        cmp     eax, dword [ebp+10H]                    ; 49BB _ 3B. 45, 10
        jle     ?_264                                   ; 49BE _ 0F 8E, 00000212
        cmp     dword [ebp+10H], 0                      ; 49C4 _ 83. 7D, 10, 00
        js      ?_260                                   ; 49C8 _ 0F 88, 000000FE
        mov     eax, dword [ebp-20H]                    ; 49CE _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 49D1 _ 89. 45, E4
        jmp     ?_259                                   ; 49D4 _ EB, 34

?_258:  mov     eax, dword [ebp-1CH]                    ; 49D6 _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 49D9 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 49DC _ 8B. 45, 08
        add     edx, 4                                  ; 49DF _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 49E2 _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 49E6 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 49E9 _ 8B. 55, E4
        add     edx, 4                                  ; 49EC _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 49EF _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 49F3 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 49F6 _ 8B. 55, E4
        add     edx, 4                                  ; 49F9 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 49FC _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 4A00 _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 4A03 _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 4A06 _ 83. 6D, E4, 01
?_259:  mov     eax, dword [ebp-1CH]                    ; 4A0A _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 4A0D _ 3B. 45, 10
        jg      ?_258                                   ; 4A10 _ 7F, C4
        mov     eax, dword [ebp+8H]                     ; 4A12 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 4A15 _ 8B. 55, 10
        add     edx, 4                                  ; 4A18 _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 4A1B _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 4A1E _ 89. 4C 90, 04
        mov     eax, dword [ebp+10H]                    ; 4A22 _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 4A25 _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 4A28 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 4A2B _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 4A2E _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 4A31 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 4A34 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 4A37 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 4A3A _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 4A3D _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 4A40 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 4A43 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 4A46 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 4A49 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 4A4C _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 4A4F _ 8B. 40, 0C
        mov     dword [esp+14H], esi                    ; 4A52 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 4A56 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 4A5A _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 4A5E _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 4A62 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4A66 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4A69 _ 89. 04 24
        call    _sheet_refreshmap                       ; 4A6C _ E8, 00000643
        mov     eax, dword [ebp+10H]                    ; 4A71 _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 4A74 _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 4A77 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 4A7A _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 4A7D _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 4A80 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 4A83 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 4A86 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 4A89 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 4A8C _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 4A8F _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 4A92 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 4A95 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 4A98 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 4A9B _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 4A9E _ 8B. 40, 0C
        mov     edi, dword [ebp-20H]                    ; 4AA1 _ 8B. 7D, E0
        mov     dword [esp+18H], edi                    ; 4AA4 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 4AA8 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 4AAC _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 4AB0 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 4AB4 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 4AB8 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4ABC _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4ABF _ 89. 04 24
        call    _sheet_refreshsub                       ; 4AC2 _ E8, 00000465
        jmp     ?_271                                   ; 4AC7 _ E9, 0000027D

?_260:  mov     eax, dword [ebp+8H]                     ; 4ACC _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 4ACF _ 8B. 40, 10
        cmp     dword [ebp-20H], eax                    ; 4AD2 _ 39. 45, E0
        jge     ?_263                                   ; 4AD5 _ 7D, 47
        mov     eax, dword [ebp-20H]                    ; 4AD7 _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 4ADA _ 89. 45, E4
        jmp     ?_262                                   ; 4ADD _ EB, 34

?_261:  mov     eax, dword [ebp-1CH]                    ; 4ADF _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 4AE2 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 4AE5 _ 8B. 45, 08
        add     edx, 4                                  ; 4AE8 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 4AEB _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 4AEF _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 4AF2 _ 8B. 55, E4
        add     edx, 4                                  ; 4AF5 _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 4AF8 _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 4AFC _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 4AFF _ 8B. 55, E4
        add     edx, 4                                  ; 4B02 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 4B05 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 4B09 _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 4B0C _ 89. 50, 18
        add     dword [ebp-1CH], 1                      ; 4B0F _ 83. 45, E4, 01
?_262:  mov     eax, dword [ebp+8H]                     ; 4B13 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 4B16 _ 8B. 40, 10
        cmp     dword [ebp-1CH], eax                    ; 4B19 _ 39. 45, E4
        jl      ?_261                                   ; 4B1C _ 7C, C1
?_263:  mov     eax, dword [ebp+8H]                     ; 4B1E _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 4B21 _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 4B24 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 4B27 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 4B2A _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 4B2D _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 4B30 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 4B33 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 4B36 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 4B39 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 4B3C _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 4B3F _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 4B42 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 4B45 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 4B48 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 4B4B _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 4B4E _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 4B51 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 4B54 _ 8B. 40, 0C
        mov     dword [esp+14H], 0                      ; 4B57 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], ebx                    ; 4B5F _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 4B63 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 4B67 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 4B6B _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4B6F _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4B72 _ 89. 04 24
        call    _sheet_refreshmap                       ; 4B75 _ E8, 0000053A
        mov     eax, dword [ebp-20H]                    ; 4B7A _ 8B. 45, E0
        lea     esi, [eax-1H]                           ; 4B7D _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 4B80 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 4B83 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 4B86 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 4B89 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 4B8C _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 4B8F _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 4B92 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 4B95 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 4B98 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 4B9B _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 4B9E _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 4BA1 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 4BA4 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 4BA7 _ 8B. 40, 0C
        mov     dword [esp+18H], esi                    ; 4BAA _ 89. 74 24, 18
        mov     dword [esp+14H], 0                      ; 4BAE _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], ebx                    ; 4BB6 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 4BBA _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 4BBE _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 4BC2 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4BC6 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4BC9 _ 89. 04 24
        call    _sheet_refreshsub                       ; 4BCC _ E8, 0000035B
        jmp     ?_271                                   ; 4BD1 _ E9, 00000173

?_264:  mov     eax, dword [ebp-20H]                    ; 4BD6 _ 8B. 45, E0
        cmp     eax, dword [ebp+10H]                    ; 4BD9 _ 3B. 45, 10
        jge     ?_271                                   ; 4BDC _ 0F 8D, 00000167
        cmp     dword [ebp-20H], 0                      ; 4BE2 _ 83. 7D, E0, 00
        js      ?_267                                   ; 4BE6 _ 78, 56
        mov     eax, dword [ebp-20H]                    ; 4BE8 _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 4BEB _ 89. 45, E4
        jmp     ?_266                                   ; 4BEE _ EB, 34

?_265:  mov     eax, dword [ebp-1CH]                    ; 4BF0 _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 4BF3 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 4BF6 _ 8B. 45, 08
        add     edx, 4                                  ; 4BF9 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 4BFC _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 4C00 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 4C03 _ 8B. 55, E4
        add     edx, 4                                  ; 4C06 _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 4C09 _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 4C0D _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 4C10 _ 8B. 55, E4
        add     edx, 4                                  ; 4C13 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 4C16 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 4C1A _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 4C1D _ 89. 50, 18
        add     dword [ebp-1CH], 1                      ; 4C20 _ 83. 45, E4, 01
?_266:  mov     eax, dword [ebp-1CH]                    ; 4C24 _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 4C27 _ 3B. 45, 10
        jl      ?_265                                   ; 4C2A _ 7C, C4
        mov     eax, dword [ebp+8H]                     ; 4C2C _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 4C2F _ 8B. 55, 10
        add     edx, 4                                  ; 4C32 _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 4C35 _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 4C38 _ 89. 4C 90, 04
        jmp     ?_270                                   ; 4C3C _ EB, 6C

?_267:  mov     eax, dword [ebp+8H]                     ; 4C3E _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 4C41 _ 8B. 40, 10
        mov     dword [ebp-1CH], eax                    ; 4C44 _ 89. 45, E4
        jmp     ?_269                                   ; 4C47 _ EB, 3A

?_268:  mov     eax, dword [ebp-1CH]                    ; 4C49 _ 8B. 45, E4
        lea     ebx, [eax+1H]                           ; 4C4C _ 8D. 58, 01
        mov     eax, dword [ebp+8H]                     ; 4C4F _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 4C52 _ 8B. 55, E4
        add     edx, 4                                  ; 4C55 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 4C58 _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 4C5C _ 8B. 45, 08
        lea     edx, [ebx+4H]                           ; 4C5F _ 8D. 53, 04
        mov     dword [eax+edx*4+4H], ecx               ; 4C62 _ 89. 4C 90, 04
        mov     eax, dword [ebp-1CH]                    ; 4C66 _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 4C69 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 4C6C _ 8B. 45, 08
        add     edx, 4                                  ; 4C6F _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 4C72 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 4C76 _ 8B. 55, E4
        add     edx, 1                                  ; 4C79 _ 83. C2, 01
        mov     dword [eax+18H], edx                    ; 4C7C _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 4C7F _ 83. 6D, E4, 01
?_269:  mov     eax, dword [ebp-1CH]                    ; 4C83 _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 4C86 _ 3B. 45, 10
        jge     ?_268                                   ; 4C89 _ 7D, BE
        mov     eax, dword [ebp+8H]                     ; 4C8B _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 4C8E _ 8B. 55, 10
        add     edx, 4                                  ; 4C91 _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 4C94 _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 4C97 _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 4C9B _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 4C9E _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 4CA1 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 4CA4 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 4CA7 _ 89. 50, 10
?_270:  mov     eax, dword [ebp+0CH]                    ; 4CAA _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 4CAD _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 4CB0 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 4CB3 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 4CB6 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 4CB9 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 4CBC _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 4CBF _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 4CC2 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 4CC5 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 4CC8 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 4CCB _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 4CCE _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 4CD1 _ 8B. 40, 0C
        mov     esi, dword [ebp+10H]                    ; 4CD4 _ 8B. 75, 10
        mov     dword [esp+14H], esi                    ; 4CD7 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 4CDB _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 4CDF _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 4CE3 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 4CE7 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4CEB _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4CEE _ 89. 04 24
        call    _sheet_refreshmap                       ; 4CF1 _ E8, 000003BE
        mov     eax, dword [ebp+0CH]                    ; 4CF6 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 4CF9 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 4CFC _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 4CFF _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 4D02 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 4D05 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 4D08 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 4D0B _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 4D0E _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 4D11 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 4D14 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 4D17 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 4D1A _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 4D1D _ 8B. 40, 0C
        mov     esi, dword [ebp+10H]                    ; 4D20 _ 8B. 75, 10
        mov     dword [esp+18H], esi                    ; 4D23 _ 89. 74 24, 18
        mov     esi, dword [ebp+10H]                    ; 4D27 _ 8B. 75, 10
        mov     dword [esp+14H], esi                    ; 4D2A _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 4D2E _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 4D32 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 4D36 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 4D3A _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4D3E _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4D41 _ 89. 04 24
        call    _sheet_refreshsub                       ; 4D44 _ E8, 000001E3
?_271:  nop                                             ; 4D49 _ 90
        add     esp, 60                                 ; 4D4A _ 83. C4, 3C
        pop     ebx                                     ; 4D4D _ 5B
        pop     esi                                     ; 4D4E _ 5E
        pop     edi                                     ; 4D4F _ 5F
        pop     ebp                                     ; 4D50 _ 5D
        ret                                             ; 4D51 _ C3
; _sheet_updown End of function

_sheet_refresh:; Function begin
        push    ebp                                     ; 4D52 _ 55
        mov     ebp, esp                                ; 4D53 _ 89. E5
        push    edi                                     ; 4D55 _ 57
        push    esi                                     ; 4D56 _ 56
        push    ebx                                     ; 4D57 _ 53
        sub     esp, 60                                 ; 4D58 _ 83. EC, 3C
        mov     eax, dword [ebp+0CH]                    ; 4D5B _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 4D5E _ 8B. 40, 18
        test    eax, eax                                ; 4D61 _ 85. C0
        js      ?_272                                   ; 4D63 _ 78, 61
        mov     eax, dword [ebp+0CH]                    ; 4D65 _ 8B. 45, 0C
        mov     edi, dword [eax+18H]                    ; 4D68 _ 8B. 78, 18
        mov     eax, dword [ebp+0CH]                    ; 4D6B _ 8B. 45, 0C
        mov     esi, dword [eax+18H]                    ; 4D6E _ 8B. 70, 18
        mov     eax, dword [ebp+0CH]                    ; 4D71 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 4D74 _ 8B. 50, 10
        mov     eax, dword [ebp+1CH]                    ; 4D77 _ 8B. 45, 1C
        lea     ebx, [edx+eax]                          ; 4D7A _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 4D7D _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 4D80 _ 8B. 50, 0C
        mov     eax, dword [ebp+18H]                    ; 4D83 _ 8B. 45, 18
        lea     ecx, [edx+eax]                          ; 4D86 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 4D89 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 4D8C _ 8B. 50, 10
        mov     eax, dword [ebp+14H]                    ; 4D8F _ 8B. 45, 14
        add     edx, eax                                ; 4D92 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 4D94 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 4D97 _ 8B. 40, 0C
        mov     dword [ebp-1CH], eax                    ; 4D9A _ 89. 45, E4
        mov     eax, dword [ebp+10H]                    ; 4D9D _ 8B. 45, 10
        add     eax, dword [ebp-1CH]                    ; 4DA0 _ 03. 45, E4
        mov     dword [esp+18H], edi                    ; 4DA3 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 4DA7 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 4DAB _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 4DAF _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 4DB3 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 4DB7 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4DBB _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4DBE _ 89. 04 24
        call    _sheet_refreshsub                       ; 4DC1 _ E8, 00000166
?_272:  mov     eax, 0                                  ; 4DC6 _ B8, 00000000
        add     esp, 60                                 ; 4DCB _ 83. C4, 3C
        pop     ebx                                     ; 4DCE _ 5B
        pop     esi                                     ; 4DCF _ 5E
        pop     edi                                     ; 4DD0 _ 5F
        pop     ebp                                     ; 4DD1 _ 5D
        ret                                             ; 4DD2 _ C3
; _sheet_refresh End of function

_sheet_slide:; Function begin
        push    ebp                                     ; 4DD3 _ 55
        mov     ebp, esp                                ; 4DD4 _ 89. E5
        push    esi                                     ; 4DD6 _ 56
        push    ebx                                     ; 4DD7 _ 53
        sub     esp, 48                                 ; 4DD8 _ 83. EC, 30
        mov     eax, dword [ebp+0CH]                    ; 4DDB _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 4DDE _ 8B. 40, 0C
        mov     dword [ebp-0CH], eax                    ; 4DE1 _ 89. 45, F4
        mov     eax, dword [ebp+0CH]                    ; 4DE4 _ 8B. 45, 0C
        mov     eax, dword [eax+10H]                    ; 4DE7 _ 8B. 40, 10
        mov     dword [ebp-10H], eax                    ; 4DEA _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 4DED _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 4DF0 _ 8B. 55, 10
        mov     dword [eax+0CH], edx                    ; 4DF3 _ 89. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 4DF6 _ 8B. 45, 0C
        mov     edx, dword [ebp+14H]                    ; 4DF9 _ 8B. 55, 14
        mov     dword [eax+10H], edx                    ; 4DFC _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 4DFF _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 4E02 _ 8B. 40, 18
        test    eax, eax                                ; 4E05 _ 85. C0
        js      ?_273                                   ; 4E07 _ 0F 88, 00000117
        mov     eax, dword [ebp+0CH]                    ; 4E0D _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 4E10 _ 8B. 50, 08
        mov     eax, dword [ebp-10H]                    ; 4E13 _ 8B. 45, F0
        add     edx, eax                                ; 4E16 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 4E18 _ 8B. 45, 0C
        mov     ecx, dword [eax+4H]                     ; 4E1B _ 8B. 48, 04
        mov     eax, dword [ebp-0CH]                    ; 4E1E _ 8B. 45, F4
        add     eax, ecx                                ; 4E21 _ 01. C8
        mov     dword [esp+14H], 0                      ; 4E23 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], edx                    ; 4E2B _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 4E2F _ 89. 44 24, 0C
        mov     eax, dword [ebp-10H]                    ; 4E33 _ 8B. 45, F0
        mov     dword [esp+8H], eax                     ; 4E36 _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 4E3A _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 4E3D _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4E41 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4E44 _ 89. 04 24
        call    _sheet_refreshmap                       ; 4E47 _ E8, 00000268
        mov     eax, dword [ebp+0CH]                    ; 4E4C _ 8B. 45, 0C
        mov     ecx, dword [eax+18H]                    ; 4E4F _ 8B. 48, 18
        mov     eax, dword [ebp+0CH]                    ; 4E52 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 4E55 _ 8B. 50, 08
        mov     eax, dword [ebp+14H]                    ; 4E58 _ 8B. 45, 14
        add     edx, eax                                ; 4E5B _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 4E5D _ 8B. 45, 0C
        mov     ebx, dword [eax+4H]                     ; 4E60 _ 8B. 58, 04
        mov     eax, dword [ebp+10H]                    ; 4E63 _ 8B. 45, 10
        add     eax, ebx                                ; 4E66 _ 01. D8
        mov     dword [esp+14H], ecx                    ; 4E68 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 4E6C _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 4E70 _ 89. 44 24, 0C
        mov     eax, dword [ebp+14H]                    ; 4E74 _ 8B. 45, 14
        mov     dword [esp+8H], eax                     ; 4E77 _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 4E7B _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 4E7E _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4E82 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4E85 _ 89. 04 24
        call    _sheet_refreshmap                       ; 4E88 _ E8, 00000227
        mov     eax, dword [ebp+0CH]                    ; 4E8D _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 4E90 _ 8B. 40, 18
        lea     ecx, [eax-1H]                           ; 4E93 _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 4E96 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 4E99 _ 8B. 50, 08
        mov     eax, dword [ebp-10H]                    ; 4E9C _ 8B. 45, F0
        add     edx, eax                                ; 4E9F _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 4EA1 _ 8B. 45, 0C
        mov     ebx, dword [eax+4H]                     ; 4EA4 _ 8B. 58, 04
        mov     eax, dword [ebp-0CH]                    ; 4EA7 _ 8B. 45, F4
        add     eax, ebx                                ; 4EAA _ 01. D8
        mov     dword [esp+18H], ecx                    ; 4EAC _ 89. 4C 24, 18
        mov     dword [esp+14H], 0                      ; 4EB0 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], edx                    ; 4EB8 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 4EBC _ 89. 44 24, 0C
        mov     eax, dword [ebp-10H]                    ; 4EC0 _ 8B. 45, F0
        mov     dword [esp+8H], eax                     ; 4EC3 _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 4EC7 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 4ECA _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4ECE _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4ED1 _ 89. 04 24
        call    _sheet_refreshsub                       ; 4ED4 _ E8, 00000053
        mov     eax, dword [ebp+0CH]                    ; 4ED9 _ 8B. 45, 0C
        mov     ebx, dword [eax+18H]                    ; 4EDC _ 8B. 58, 18
        mov     eax, dword [ebp+0CH]                    ; 4EDF _ 8B. 45, 0C
        mov     ecx, dword [eax+18H]                    ; 4EE2 _ 8B. 48, 18
        mov     eax, dword [ebp+0CH]                    ; 4EE5 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 4EE8 _ 8B. 50, 08
        mov     eax, dword [ebp+14H]                    ; 4EEB _ 8B. 45, 14
        add     edx, eax                                ; 4EEE _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 4EF0 _ 8B. 45, 0C
        mov     esi, dword [eax+4H]                     ; 4EF3 _ 8B. 70, 04
        mov     eax, dword [ebp+10H]                    ; 4EF6 _ 8B. 45, 10
        add     eax, esi                                ; 4EF9 _ 01. F0
        mov     dword [esp+18H], ebx                    ; 4EFB _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 4EFF _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 4F03 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 4F07 _ 89. 44 24, 0C
        mov     eax, dword [ebp+14H]                    ; 4F0B _ 8B. 45, 14
        mov     dword [esp+8H], eax                     ; 4F0E _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 4F12 _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 4F15 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4F19 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4F1C _ 89. 04 24
        call    _sheet_refreshsub                       ; 4F1F _ E8, 00000008
?_273:  nop                                             ; 4F24 _ 90
        add     esp, 48                                 ; 4F25 _ 83. C4, 30
        pop     ebx                                     ; 4F28 _ 5B
        pop     esi                                     ; 4F29 _ 5E
        pop     ebp                                     ; 4F2A _ 5D
        ret                                             ; 4F2B _ C3
; _sheet_slide End of function

_sheet_refreshsub:; Function begin
        push    ebp                                     ; 4F2C _ 55
        mov     ebp, esp                                ; 4F2D _ 89. E5
        sub     esp, 48                                 ; 4F2F _ 83. EC, 30
        mov     eax, dword [ebp+8H]                     ; 4F32 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 4F35 _ 8B. 00
        mov     dword [ebp-10H], eax                    ; 4F37 _ 89. 45, F0
        mov     eax, dword [ebp+8H]                     ; 4F3A _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 4F3D _ 8B. 40, 04
        mov     dword [ebp-14H], eax                    ; 4F40 _ 89. 45, EC
        cmp     dword [ebp+0CH], 0                      ; 4F43 _ 83. 7D, 0C, 00
        jns     ?_274                                   ; 4F47 _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 4F49 _ C7. 45, 0C, 00000000
?_274:  cmp     dword [ebp+10H], 8                      ; 4F50 _ 83. 7D, 10, 08
        jg      ?_275                                   ; 4F54 _ 7F, 07
        mov     dword [ebp+10H], 0                      ; 4F56 _ C7. 45, 10, 00000000
?_275:  mov     eax, dword [ebp+8H]                     ; 4F5D _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 4F60 _ 8B. 40, 08
        cmp     dword [ebp+14H], eax                    ; 4F63 _ 39. 45, 14
        jle     ?_276                                   ; 4F66 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 4F68 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 4F6B _ 8B. 40, 08
        mov     dword [ebp+14H], eax                    ; 4F6E _ 89. 45, 14
?_276:  mov     eax, dword [ebp+8H]                     ; 4F71 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 4F74 _ 8B. 40, 0C
        cmp     dword [ebp+18H], eax                    ; 4F77 _ 39. 45, 18
        jle     ?_277                                   ; 4F7A _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 4F7C _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 4F7F _ 8B. 40, 0C
        mov     dword [ebp+18H], eax                    ; 4F82 _ 89. 45, 18
?_277:  mov     eax, dword [ebp+1CH]                    ; 4F85 _ 8B. 45, 1C
        mov     dword [ebp-4H], eax                     ; 4F88 _ 89. 45, FC
        jmp     ?_284                                   ; 4F8B _ E9, 00000115

?_278:  mov     eax, dword [ebp+8H]                     ; 4F90 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 4F93 _ 8B. 55, FC
        add     edx, 4                                  ; 4F96 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 4F99 _ 8B. 44 90, 04
        mov     dword [ebp-18H], eax                    ; 4F9D _ 89. 45, E8
        mov     eax, dword [ebp-18H]                    ; 4FA0 _ 8B. 45, E8
        mov     eax, dword [eax]                        ; 4FA3 _ 8B. 00
        mov     dword [ebp-1CH], eax                    ; 4FA5 _ 89. 45, E4
        mov     eax, dword [ebp+8H]                     ; 4FA8 _ 8B. 45, 08
        add     eax, 1044                               ; 4FAB _ 05, 00000414
        mov     edx, dword [ebp-18H]                    ; 4FB0 _ 8B. 55, E8
        sub     edx, eax                                ; 4FB3 _ 29. C2
        mov     eax, edx                                ; 4FB5 _ 89. D0
        sar     eax, 2                                  ; 4FB7 _ C1. F8, 02
        imul    eax, eax, 954437177                     ; 4FBA _ 69. C0, 38E38E39
        mov     byte [ebp-1DH], al                      ; 4FC0 _ 88. 45, E3
        mov     dword [ebp-0CH], 0                      ; 4FC3 _ C7. 45, F4, 00000000
        jmp     ?_283                                   ; 4FCA _ E9, 000000C3

?_279:  mov     eax, dword [ebp-18H]                    ; 4FCF _ 8B. 45, E8
        mov     edx, dword [eax+10H]                    ; 4FD2 _ 8B. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 4FD5 _ 8B. 45, F4
        add     eax, edx                                ; 4FD8 _ 01. D0
        mov     dword [ebp-24H], eax                    ; 4FDA _ 89. 45, DC
        mov     dword [ebp-8H], 0                       ; 4FDD _ C7. 45, F8, 00000000
        jmp     ?_282                                   ; 4FE4 _ E9, 00000096

?_280:  mov     eax, dword [ebp-18H]                    ; 4FE9 _ 8B. 45, E8
        mov     edx, dword [eax+0CH]                    ; 4FEC _ 8B. 50, 0C
        mov     eax, dword [ebp-8H]                     ; 4FEF _ 8B. 45, F8
        add     eax, edx                                ; 4FF2 _ 01. D0
        mov     dword [ebp-28H], eax                    ; 4FF4 _ 89. 45, D8
        mov     eax, dword [ebp+0CH]                    ; 4FF7 _ 8B. 45, 0C
        cmp     eax, dword [ebp-28H]                    ; 4FFA _ 3B. 45, D8
        jg      ?_281                                   ; 4FFD _ 7F, 7C
        mov     eax, dword [ebp-28H]                    ; 4FFF _ 8B. 45, D8
        cmp     eax, dword [ebp+14H]                    ; 5002 _ 3B. 45, 14
        jge     ?_281                                   ; 5005 _ 7D, 74
        mov     eax, dword [ebp+10H]                    ; 5007 _ 8B. 45, 10
        cmp     eax, dword [ebp-24H]                    ; 500A _ 3B. 45, DC
        jg      ?_281                                   ; 500D _ 7F, 6C
        mov     eax, dword [ebp-24H]                    ; 500F _ 8B. 45, DC
        cmp     eax, dword [ebp+18H]                    ; 5012 _ 3B. 45, 18
        jge     ?_281                                   ; 5015 _ 7D, 64
        mov     eax, dword [ebp-18H]                    ; 5017 _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 501A _ 8B. 40, 04
        imul    eax, dword [ebp-0CH]                    ; 501D _ 0F AF. 45, F4
        mov     edx, dword [ebp-8H]                     ; 5021 _ 8B. 55, F8
        add     eax, edx                                ; 5024 _ 01. D0
        mov     edx, eax                                ; 5026 _ 89. C2
        mov     eax, dword [ebp-1CH]                    ; 5028 _ 8B. 45, E4
        add     eax, edx                                ; 502B _ 01. D0
        movzx   eax, byte [eax]                         ; 502D _ 0F B6. 00
        mov     byte [ebp-29H], al                      ; 5030 _ 88. 45, D7
        mov     eax, dword [ebp+8H]                     ; 5033 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 5036 _ 8B. 40, 08
        imul    eax, dword [ebp-24H]                    ; 5039 _ 0F AF. 45, DC
        mov     edx, dword [ebp-28H]                    ; 503D _ 8B. 55, D8
        add     eax, edx                                ; 5040 _ 01. D0
        mov     edx, eax                                ; 5042 _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 5044 _ 8B. 45, EC
        add     eax, edx                                ; 5047 _ 01. D0
        movzx   eax, byte [eax]                         ; 5049 _ 0F B6. 00
        cmp     byte [ebp-1DH], al                      ; 504C _ 38. 45, E3
        jnz     ?_281                                   ; 504F _ 75, 2A
        movzx   eax, byte [ebp-29H]                     ; 5051 _ 0F B6. 45, D7
        mov     edx, dword [ebp-18H]                    ; 5055 _ 8B. 55, E8
        mov     edx, dword [edx+14H]                    ; 5058 _ 8B. 52, 14
        cmp     eax, edx                                ; 505B _ 39. D0
        jz      ?_281                                   ; 505D _ 74, 1C
        mov     eax, dword [ebp+8H]                     ; 505F _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 5062 _ 8B. 40, 08
        imul    eax, dword [ebp-24H]                    ; 5065 _ 0F AF. 45, DC
        mov     edx, dword [ebp-28H]                    ; 5069 _ 8B. 55, D8
        add     eax, edx                                ; 506C _ 01. D0
        mov     edx, eax                                ; 506E _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 5070 _ 8B. 45, F0
        add     edx, eax                                ; 5073 _ 01. C2
        movzx   eax, byte [ebp-29H]                     ; 5075 _ 0F B6. 45, D7
        mov     byte [edx], al                          ; 5079 _ 88. 02
?_281:  add     dword [ebp-8H], 1                       ; 507B _ 83. 45, F8, 01
?_282:  mov     eax, dword [ebp-18H]                    ; 507F _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 5082 _ 8B. 40, 04
        cmp     dword [ebp-8H], eax                     ; 5085 _ 39. 45, F8
        jl      ?_280                                   ; 5088 _ 0F 8C, FFFFFF5B
        add     dword [ebp-0CH], 1                      ; 508E _ 83. 45, F4, 01
?_283:  mov     eax, dword [ebp-18H]                    ; 5092 _ 8B. 45, E8
        mov     eax, dword [eax+8H]                     ; 5095 _ 8B. 40, 08
        cmp     dword [ebp-0CH], eax                    ; 5098 _ 39. 45, F4
        jl      ?_279                                   ; 509B _ 0F 8C, FFFFFF2E
        add     dword [ebp-4H], 1                       ; 50A1 _ 83. 45, FC, 01
?_284:  mov     eax, dword [ebp-4H]                     ; 50A5 _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 50A8 _ 3B. 45, 20
        jle     ?_278                                   ; 50AB _ 0F 8E, FFFFFEDF
        nop                                             ; 50B1 _ 90
        leave                                           ; 50B2 _ C9
        ret                                             ; 50B3 _ C3
; _sheet_refreshsub End of function

_sheet_refreshmap:; Function begin
        push    ebp                                     ; 50B4 _ 55
        mov     ebp, esp                                ; 50B5 _ 89. E5
        sub     esp, 64                                 ; 50B7 _ 83. EC, 40
        mov     eax, dword [ebp+8H]                     ; 50BA _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 50BD _ 8B. 40, 04
        mov     dword [ebp-20H], eax                    ; 50C0 _ 89. 45, E0
        cmp     dword [ebp+0CH], 0                      ; 50C3 _ 83. 7D, 0C, 00
        jns     ?_285                                   ; 50C7 _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 50C9 _ C7. 45, 0C, 00000000
?_285:  cmp     dword [ebp+10H], 0                      ; 50D0 _ 83. 7D, 10, 00
        jns     ?_286                                   ; 50D4 _ 79, 07
        mov     dword [ebp+10H], 0                      ; 50D6 _ C7. 45, 10, 00000000
?_286:  mov     eax, dword [ebp+8H]                     ; 50DD _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 50E0 _ 8B. 40, 08
        cmp     dword [ebp+14H], eax                    ; 50E3 _ 39. 45, 14
        jle     ?_287                                   ; 50E6 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 50E8 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 50EB _ 8B. 40, 08
        mov     dword [ebp+14H], eax                    ; 50EE _ 89. 45, 14
?_287:  mov     eax, dword [ebp+8H]                     ; 50F1 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 50F4 _ 8B. 40, 0C
        cmp     dword [ebp+18H], eax                    ; 50F7 _ 39. 45, 18
        jle     ?_288                                   ; 50FA _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 50FC _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 50FF _ 8B. 40, 0C
        mov     dword [ebp+18H], eax                    ; 5102 _ 89. 45, 18
?_288:  mov     eax, dword [ebp+1CH]                    ; 5105 _ 8B. 45, 1C
        mov     dword [ebp-4H], eax                     ; 5108 _ 89. 45, FC
        jmp     ?_299                                   ; 510B _ E9, 0000013F

?_289:  mov     eax, dword [ebp+8H]                     ; 5110 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 5113 _ 8B. 55, FC
        add     edx, 4                                  ; 5116 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 5119 _ 8B. 44 90, 04
        mov     dword [ebp-24H], eax                    ; 511D _ 89. 45, DC
        mov     eax, dword [ebp+8H]                     ; 5120 _ 8B. 45, 08
        add     eax, 1044                               ; 5123 _ 05, 00000414
        mov     edx, dword [ebp-24H]                    ; 5128 _ 8B. 55, DC
        sub     edx, eax                                ; 512B _ 29. C2
        mov     eax, edx                                ; 512D _ 89. D0
        sar     eax, 2                                  ; 512F _ C1. F8, 02
        imul    eax, eax, 954437177                     ; 5132 _ 69. C0, 38E38E39
        mov     byte [ebp-25H], al                      ; 5138 _ 88. 45, DB
        mov     eax, dword [ebp-24H]                    ; 513B _ 8B. 45, DC
        mov     eax, dword [eax]                        ; 513E _ 8B. 00
        mov     dword [ebp-2CH], eax                    ; 5140 _ 89. 45, D4
        mov     eax, dword [ebp-24H]                    ; 5143 _ 8B. 45, DC
        mov     eax, dword [eax+0CH]                    ; 5146 _ 8B. 40, 0C
        mov     edx, dword [ebp+0CH]                    ; 5149 _ 8B. 55, 0C
        sub     edx, eax                                ; 514C _ 29. C2
        mov     eax, edx                                ; 514E _ 89. D0
        mov     dword [ebp-10H], eax                    ; 5150 _ 89. 45, F0
        mov     eax, dword [ebp-24H]                    ; 5153 _ 8B. 45, DC
        mov     eax, dword [eax+10H]                    ; 5156 _ 8B. 40, 10
        mov     edx, dword [ebp+10H]                    ; 5159 _ 8B. 55, 10
        sub     edx, eax                                ; 515C _ 29. C2
        mov     eax, edx                                ; 515E _ 89. D0
        mov     dword [ebp-14H], eax                    ; 5160 _ 89. 45, EC
        mov     eax, dword [ebp-24H]                    ; 5163 _ 8B. 45, DC
        mov     eax, dword [eax+0CH]                    ; 5166 _ 8B. 40, 0C
        mov     edx, dword [ebp+14H]                    ; 5169 _ 8B. 55, 14
        sub     edx, eax                                ; 516C _ 29. C2
        mov     eax, edx                                ; 516E _ 89. D0
        mov     dword [ebp-18H], eax                    ; 5170 _ 89. 45, E8
        mov     eax, dword [ebp-24H]                    ; 5173 _ 8B. 45, DC
        mov     eax, dword [eax+10H]                    ; 5176 _ 8B. 40, 10
        mov     edx, dword [ebp+18H]                    ; 5179 _ 8B. 55, 18
        sub     edx, eax                                ; 517C _ 29. C2
        mov     eax, edx                                ; 517E _ 89. D0
        mov     dword [ebp-1CH], eax                    ; 5180 _ 89. 45, E4
        cmp     dword [ebp-10H], 0                      ; 5183 _ 83. 7D, F0, 00
        jns     ?_290                                   ; 5187 _ 79, 07
        mov     dword [ebp-10H], 0                      ; 5189 _ C7. 45, F0, 00000000
?_290:  cmp     dword [ebp-14H], 0                      ; 5190 _ 83. 7D, EC, 00
        jns     ?_291                                   ; 5194 _ 79, 07
        mov     dword [ebp-14H], 0                      ; 5196 _ C7. 45, EC, 00000000
?_291:  mov     eax, dword [ebp-24H]                    ; 519D _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 51A0 _ 8B. 40, 04
        cmp     dword [ebp-18H], eax                    ; 51A3 _ 39. 45, E8
        jle     ?_292                                   ; 51A6 _ 7E, 09
        mov     eax, dword [ebp-24H]                    ; 51A8 _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 51AB _ 8B. 40, 04
        mov     dword [ebp-18H], eax                    ; 51AE _ 89. 45, E8
?_292:  mov     eax, dword [ebp-24H]                    ; 51B1 _ 8B. 45, DC
        mov     eax, dword [eax+8H]                     ; 51B4 _ 8B. 40, 08
        cmp     dword [ebp-1CH], eax                    ; 51B7 _ 39. 45, E4
        jle     ?_293                                   ; 51BA _ 7E, 09
        mov     eax, dword [ebp-24H]                    ; 51BC _ 8B. 45, DC
        mov     eax, dword [eax+8H]                     ; 51BF _ 8B. 40, 08
        mov     dword [ebp-1CH], eax                    ; 51C2 _ 89. 45, E4
?_293:  mov     eax, dword [ebp-14H]                    ; 51C5 _ 8B. 45, EC
        mov     dword [ebp-0CH], eax                    ; 51C8 _ 89. 45, F4
        jmp     ?_298                                   ; 51CB _ EB, 76

?_294:  mov     eax, dword [ebp-24H]                    ; 51CD _ 8B. 45, DC
        mov     edx, dword [eax+10H]                    ; 51D0 _ 8B. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 51D3 _ 8B. 45, F4
        add     eax, edx                                ; 51D6 _ 01. D0
        mov     dword [ebp-30H], eax                    ; 51D8 _ 89. 45, D0
        mov     eax, dword [ebp-10H]                    ; 51DB _ 8B. 45, F0
        mov     dword [ebp-8H], eax                     ; 51DE _ 89. 45, F8
        jmp     ?_297                                   ; 51E1 _ EB, 54

?_295:  mov     eax, dword [ebp-24H]                    ; 51E3 _ 8B. 45, DC
        mov     edx, dword [eax+0CH]                    ; 51E6 _ 8B. 50, 0C
        mov     eax, dword [ebp-8H]                     ; 51E9 _ 8B. 45, F8
        add     eax, edx                                ; 51EC _ 01. D0
        mov     dword [ebp-34H], eax                    ; 51EE _ 89. 45, CC
        mov     eax, dword [ebp-24H]                    ; 51F1 _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 51F4 _ 8B. 40, 04
        imul    eax, dword [ebp-0CH]                    ; 51F7 _ 0F AF. 45, F4
        mov     edx, dword [ebp-8H]                     ; 51FB _ 8B. 55, F8
        add     eax, edx                                ; 51FE _ 01. D0
        mov     edx, eax                                ; 5200 _ 89. C2
        mov     eax, dword [ebp-2CH]                    ; 5202 _ 8B. 45, D4
        add     eax, edx                                ; 5205 _ 01. D0
        movzx   eax, byte [eax]                         ; 5207 _ 0F B6. 00
        movzx   eax, al                                 ; 520A _ 0F B6. C0
        mov     edx, dword [ebp-24H]                    ; 520D _ 8B. 55, DC
        mov     edx, dword [edx+14H]                    ; 5210 _ 8B. 52, 14
        cmp     eax, edx                                ; 5213 _ 39. D0
        jz      ?_296                                   ; 5215 _ 74, 1C
        mov     eax, dword [ebp+8H]                     ; 5217 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 521A _ 8B. 40, 08
        imul    eax, dword [ebp-30H]                    ; 521D _ 0F AF. 45, D0
        mov     edx, dword [ebp-34H]                    ; 5221 _ 8B. 55, CC
        add     eax, edx                                ; 5224 _ 01. D0
        mov     edx, eax                                ; 5226 _ 89. C2
        mov     eax, dword [ebp-20H]                    ; 5228 _ 8B. 45, E0
        add     edx, eax                                ; 522B _ 01. C2
        movzx   eax, byte [ebp-25H]                     ; 522D _ 0F B6. 45, DB
        mov     byte [edx], al                          ; 5231 _ 88. 02
?_296:  add     dword [ebp-8H], 1                       ; 5233 _ 83. 45, F8, 01
?_297:  mov     eax, dword [ebp-8H]                     ; 5237 _ 8B. 45, F8
        cmp     eax, dword [ebp-18H]                    ; 523A _ 3B. 45, E8
        jl      ?_295                                   ; 523D _ 7C, A4
        add     dword [ebp-0CH], 1                      ; 523F _ 83. 45, F4, 01
?_298:  mov     eax, dword [ebp-0CH]                    ; 5243 _ 8B. 45, F4
        cmp     eax, dword [ebp-1CH]                    ; 5246 _ 3B. 45, E4
        jl      ?_294                                   ; 5249 _ 7C, 82
        add     dword [ebp-4H], 1                       ; 524B _ 83. 45, FC, 01
?_299:  mov     eax, dword [ebp+8H]                     ; 524F _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 5252 _ 8B. 40, 10
        cmp     dword [ebp-4H], eax                     ; 5255 _ 39. 45, FC
        jle     ?_289                                   ; 5258 _ 0F 8E, FFFFFEB2
        nop                                             ; 525E _ 90
        leave                                           ; 525F _ C9
        ret                                             ; 5260 _ C3
; _sheet_refreshmap End of function

_sheet_free:; Function begin
        push    ebp                                     ; 5261 _ 55
        mov     ebp, esp                                ; 5262 _ 89. E5
        sub     esp, 24                                 ; 5264 _ 83. EC, 18
        mov     eax, dword [ebp+0CH]                    ; 5267 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 526A _ 8B. 40, 18
        test    eax, eax                                ; 526D _ 85. C0
        js      ?_300                                   ; 526F _ 78, 1A
        mov     dword [esp+8H], -1                      ; 5271 _ C7. 44 24, 08, FFFFFFFF
        mov     eax, dword [ebp+0CH]                    ; 5279 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 527C _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 5280 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 5283 _ 89. 04 24
        call    _sheet_updown                           ; 5286 _ E8, FFFFF6EB
?_300:  mov     eax, dword [ebp+0CH]                    ; 528B _ 8B. 45, 0C
        mov     dword [eax+1CH], 0                      ; 528E _ C7. 40, 1C, 00000000
        nop                                             ; 5295 _ 90
        leave                                           ; 5296 _ C9
        ret                                             ; 5297 _ C3
; _sheet_free End of function


_memman_init:
        push    ebp                                     ; 5298 _ 55
        mov     ebp, esp                                ; 5299 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 529B _ 8B. 45, 08
        mov     dword [eax], 0                          ; 529E _ C7. 00, 00000000
        mov     eax, dword [ebp+8H]                     ; 52A4 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 52A7 _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 52AE _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 52B1 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 52B8 _ 8B. 45, 08
        mov     dword [eax+0CH], 0                      ; 52BB _ C7. 40, 0C, 00000000
        nop                                             ; 52C2 _ 90
        pop     ebp                                     ; 52C3 _ 5D
        ret                                             ; 52C4 _ C3

_memman_total:; Function begin
        push    ebp                                     ; 52C5 _ 55
        mov     ebp, esp                                ; 52C6 _ 89. E5
        sub     esp, 16                                 ; 52C8 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 52CB _ C7. 45, F8, 00000000
        mov     dword [ebp-4H], 0                       ; 52D2 _ C7. 45, FC, 00000000
        jmp     ?_302                                   ; 52D9 _ EB, 14

?_301:  mov     eax, dword [ebp+8H]                     ; 52DB _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 52DE _ 8B. 55, FC
        add     edx, 2                                  ; 52E1 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 52E4 _ 8B. 44 D0, 04
        add     dword [ebp-8H], eax                     ; 52E8 _ 01. 45, F8
        add     dword [ebp-4H], 1                       ; 52EB _ 83. 45, FC, 01
?_302:  mov     eax, dword [ebp+8H]                     ; 52EF _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 52F2 _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 52F4 _ 39. 45, FC
        jc      ?_301                                   ; 52F7 _ 72, E2
        mov     eax, dword [ebp-8H]                     ; 52F9 _ 8B. 45, F8
        leave                                           ; 52FC _ C9
        ret                                             ; 52FD _ C3
; _memman_total End of function

_memman_alloc:; Function begin
        push    ebp                                     ; 52FE _ 55
        mov     ebp, esp                                ; 52FF _ 89. E5
        push    ebx                                     ; 5301 _ 53
        sub     esp, 16                                 ; 5302 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 5305 _ C7. 45, F8, 00000000
        jmp     ?_308                                   ; 530C _ E9, 000000BB

?_303:  mov     eax, dword [ebp+8H]                     ; 5311 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 5314 _ 8B. 55, F8
        add     edx, 2                                  ; 5317 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 531A _ 8B. 44 D0, 04
        cmp     dword [ebp+0CH], eax                    ; 531E _ 39. 45, 0C
        ja      ?_307                                   ; 5321 _ 0F 87, 000000A1
        mov     eax, dword [ebp+8H]                     ; 5327 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 532A _ 8B. 55, F8
        add     edx, 2                                  ; 532D _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 5330 _ 8B. 04 D0
        mov     dword [ebp-0CH], eax                    ; 5333 _ 89. 45, F4
        mov     eax, dword [ebp+8H]                     ; 5336 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 5339 _ 8B. 55, F8
        add     edx, 2                                  ; 533C _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 533F _ 8B. 14 D0
        mov     eax, dword [ebp+0CH]                    ; 5342 _ 8B. 45, 0C
        lea     ecx, [edx+eax]                          ; 5345 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 5348 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 534B _ 8B. 55, F8
        add     edx, 2                                  ; 534E _ 83. C2, 02
        mov     dword [eax+edx*8], ecx                  ; 5351 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 5354 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 5357 _ 8B. 55, F8
        add     edx, 2                                  ; 535A _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 535D _ 8B. 44 D0, 04
        sub     eax, dword [ebp+0CH]                    ; 5361 _ 2B. 45, 0C
        mov     edx, dword [ebp+8H]                     ; 5364 _ 8B. 55, 08
        mov     ecx, dword [ebp-8H]                     ; 5367 _ 8B. 4D, F8
        add     ecx, 2                                  ; 536A _ 83. C1, 02
        mov     dword [edx+ecx*8+4H], eax               ; 536D _ 89. 44 CA, 04
        mov     eax, dword [ebp+8H]                     ; 5371 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 5374 _ 8B. 55, F8
        add     edx, 2                                  ; 5377 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 537A _ 8B. 44 D0, 04
        test    eax, eax                                ; 537E _ 85. C0
        jnz     ?_306                                   ; 5380 _ 75, 41
        mov     eax, dword [ebp+8H]                     ; 5382 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 5385 _ 8B. 00
        lea     edx, [eax-1H]                           ; 5387 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 538A _ 8B. 45, 08
        mov     dword [eax], edx                        ; 538D _ 89. 10
        jmp     ?_305                                   ; 538F _ EB, 28

?_304:  mov     eax, dword [ebp-8H]                     ; 5391 _ 8B. 45, F8
        lea     edx, [eax+1H]                           ; 5394 _ 8D. 50, 01
        mov     ecx, dword [ebp+8H]                     ; 5397 _ 8B. 4D, 08
        mov     eax, dword [ebp-8H]                     ; 539A _ 8B. 45, F8
        lea     ebx, [eax+2H]                           ; 539D _ 8D. 58, 02
        mov     eax, dword [ebp+8H]                     ; 53A0 _ 8B. 45, 08
        add     edx, 2                                  ; 53A3 _ 83. C2, 02
        lea     edx, [eax+edx*8]                        ; 53A6 _ 8D. 14 D0
        mov     eax, dword [edx]                        ; 53A9 _ 8B. 02
        mov     edx, dword [edx+4H]                     ; 53AB _ 8B. 52, 04
        mov     dword [ecx+ebx*8], eax                  ; 53AE _ 89. 04 D9
        mov     dword [ecx+ebx*8+4H], edx               ; 53B1 _ 89. 54 D9, 04
        add     dword [ebp-8H], 1                       ; 53B5 _ 83. 45, F8, 01
?_305:  mov     eax, dword [ebp+8H]                     ; 53B9 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 53BC _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 53BE _ 39. 45, F8
        jc      ?_304                                   ; 53C1 _ 72, CE
?_306:  mov     eax, dword [ebp-0CH]                    ; 53C3 _ 8B. 45, F4
        jmp     ?_309                                   ; 53C6 _ EB, 17

?_307:  add     dword [ebp-8H], 1                       ; 53C8 _ 83. 45, F8, 01
?_308:  mov     eax, dword [ebp+8H]                     ; 53CC _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 53CF _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 53D1 _ 39. 45, F8
        jc      ?_303                                   ; 53D4 _ 0F 82, FFFFFF37
        mov     eax, 0                                  ; 53DA _ B8, 00000000
?_309:  add     esp, 16                                 ; 53DF _ 83. C4, 10
        pop     ebx                                     ; 53E2 _ 5B
        pop     ebp                                     ; 53E3 _ 5D
        ret                                             ; 53E4 _ C3
; _memman_alloc End of function

_memman_free:; Function begin
        push    ebp                                     ; 53E5 _ 55
        mov     ebp, esp                                ; 53E6 _ 89. E5
        push    ebx                                     ; 53E8 _ 53
        sub     esp, 16                                 ; 53E9 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 53EC _ C7. 45, F8, 00000000
        jmp     ?_311                                   ; 53F3 _ EB, 15

?_310:  mov     eax, dword [ebp+8H]                     ; 53F5 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 53F8 _ 8B. 55, F8
        add     edx, 2                                  ; 53FB _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 53FE _ 8B. 04 D0
        cmp     dword [ebp+0CH], eax                    ; 5401 _ 39. 45, 0C
        jc      ?_312                                   ; 5404 _ 72, 10
        add     dword [ebp-8H], 1                       ; 5406 _ 83. 45, F8, 01
?_311:  mov     eax, dword [ebp+8H]                     ; 540A _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 540D _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 540F _ 39. 45, F8
        jl      ?_310                                   ; 5412 _ 7C, E1
        jmp     ?_313                                   ; 5414 _ EB, 01

?_312:  nop                                             ; 5416 _ 90
?_313:  cmp     dword [ebp-8H], 0                       ; 5417 _ 83. 7D, F8, 00
        jle     ?_317                                   ; 541B _ 0F 8E, 000000F0
        mov     eax, dword [ebp-8H]                     ; 5421 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 5424 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 5427 _ 8B. 45, 08
        add     edx, 2                                  ; 542A _ 83. C2, 02
        mov     ecx, dword [eax+edx*8]                  ; 542D _ 8B. 0C D0
        mov     eax, dword [ebp-8H]                     ; 5430 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 5433 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 5436 _ 8B. 45, 08
        add     edx, 2                                  ; 5439 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 543C _ 8B. 44 D0, 04
        add     eax, ecx                                ; 5440 _ 01. C8
        cmp     dword [ebp+0CH], eax                    ; 5442 _ 39. 45, 0C
        jne     ?_317                                   ; 5445 _ 0F 85, 000000C6
        mov     eax, dword [ebp-8H]                     ; 544B _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 544E _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 5451 _ 8B. 45, 08
        add     edx, 2                                  ; 5454 _ 83. C2, 02
        mov     ecx, dword [eax+edx*8+4H]               ; 5457 _ 8B. 4C D0, 04
        mov     eax, dword [ebp-8H]                     ; 545B _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 545E _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 5461 _ 8B. 45, 10
        add     ecx, eax                                ; 5464 _ 01. C1
        mov     eax, dword [ebp+8H]                     ; 5466 _ 8B. 45, 08
        add     edx, 2                                  ; 5469 _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 546C _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 5470 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 5473 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 5475 _ 39. 45, F8
        jge     ?_316                                   ; 5478 _ 0F 8D, 00000089
        mov     edx, dword [ebp+0CH]                    ; 547E _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 5481 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 5484 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 5487 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 548A _ 8B. 55, F8
        add     edx, 2                                  ; 548D _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 5490 _ 8B. 04 D0
        cmp     ecx, eax                                ; 5493 _ 39. C1
        jnz     ?_316                                   ; 5495 _ 75, 70
        mov     eax, dword [ebp-8H]                     ; 5497 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 549A _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 549D _ 8B. 45, 08
        add     edx, 2                                  ; 54A0 _ 83. C2, 02
        mov     ecx, dword [eax+edx*8+4H]               ; 54A3 _ 8B. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 54A7 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 54AA _ 8B. 55, F8
        add     edx, 2                                  ; 54AD _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 54B0 _ 8B. 44 D0, 04
        mov     edx, dword [ebp-8H]                     ; 54B4 _ 8B. 55, F8
        sub     edx, 1                                  ; 54B7 _ 83. EA, 01
        add     ecx, eax                                ; 54BA _ 01. C1
        mov     eax, dword [ebp+8H]                     ; 54BC _ 8B. 45, 08
        add     edx, 2                                  ; 54BF _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 54C2 _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 54C6 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 54C9 _ 8B. 00
        lea     edx, [eax-1H]                           ; 54CB _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 54CE _ 8B. 45, 08
        mov     dword [eax], edx                        ; 54D1 _ 89. 10
        jmp     ?_315                                   ; 54D3 _ EB, 28

?_314:  mov     eax, dword [ebp-8H]                     ; 54D5 _ 8B. 45, F8
        lea     edx, [eax+1H]                           ; 54D8 _ 8D. 50, 01
        mov     ecx, dword [ebp+8H]                     ; 54DB _ 8B. 4D, 08
        mov     eax, dword [ebp-8H]                     ; 54DE _ 8B. 45, F8
        lea     ebx, [eax+2H]                           ; 54E1 _ 8D. 58, 02
        mov     eax, dword [ebp+8H]                     ; 54E4 _ 8B. 45, 08
        add     edx, 2                                  ; 54E7 _ 83. C2, 02
        lea     edx, [eax+edx*8]                        ; 54EA _ 8D. 14 D0
        mov     eax, dword [edx]                        ; 54ED _ 8B. 02
        mov     edx, dword [edx+4H]                     ; 54EF _ 8B. 52, 04
        mov     dword [ecx+ebx*8], eax                  ; 54F2 _ 89. 04 D9
        mov     dword [ecx+ebx*8+4H], edx               ; 54F5 _ 89. 54 D9, 04
        add     dword [ebp-8H], 1                       ; 54F9 _ 83. 45, F8, 01
?_315:  mov     eax, dword [ebp+8H]                     ; 54FD _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 5500 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 5502 _ 39. 45, F8
        jl      ?_314                                   ; 5505 _ 7C, CE
?_316:  mov     eax, 0                                  ; 5507 _ B8, 00000000
        jmp     ?_323                                   ; 550C _ E9, 0000011C

?_317:  mov     eax, dword [ebp+8H]                     ; 5511 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 5514 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 5516 _ 39. 45, F8
        jge     ?_318                                   ; 5519 _ 7D, 52
        mov     edx, dword [ebp+0CH]                    ; 551B _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 551E _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 5521 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 5524 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 5527 _ 8B. 55, F8
        add     edx, 2                                  ; 552A _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 552D _ 8B. 04 D0
        cmp     ecx, eax                                ; 5530 _ 39. C1
        jnz     ?_318                                   ; 5532 _ 75, 39
        mov     eax, dword [ebp+8H]                     ; 5534 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 5537 _ 8B. 55, F8
        add     edx, 2                                  ; 553A _ 83. C2, 02
        mov     ecx, dword [ebp+0CH]                    ; 553D _ 8B. 4D, 0C
        mov     dword [eax+edx*8], ecx                  ; 5540 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 5543 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 5546 _ 8B. 55, F8
        add     edx, 2                                  ; 5549 _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 554C _ 8B. 54 D0, 04
        mov     eax, dword [ebp+10H]                    ; 5550 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 5553 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 5556 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 5559 _ 8B. 55, F8
        add     edx, 2                                  ; 555C _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 555F _ 89. 4C D0, 04
        mov     eax, 0                                  ; 5563 _ B8, 00000000
        jmp     ?_323                                   ; 5568 _ E9, 000000C0

?_318:  mov     eax, dword [ebp+8H]                     ; 556D _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 5570 _ 8B. 00
        cmp     eax, 4095                               ; 5572 _ 3D, 00000FFF
        jg      ?_322                                   ; 5577 _ 0F 8F, 00000087
        mov     eax, dword [ebp+8H]                     ; 557D _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 5580 _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 5582 _ 89. 45, F4
        jmp     ?_320                                   ; 5585 _ EB, 28

?_319:  mov     eax, dword [ebp-0CH]                    ; 5587 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 558A _ 8D. 50, FF
        mov     ecx, dword [ebp+8H]                     ; 558D _ 8B. 4D, 08
        mov     eax, dword [ebp-0CH]                    ; 5590 _ 8B. 45, F4
        lea     ebx, [eax+2H]                           ; 5593 _ 8D. 58, 02
        mov     eax, dword [ebp+8H]                     ; 5596 _ 8B. 45, 08
        add     edx, 2                                  ; 5599 _ 83. C2, 02
        lea     edx, [eax+edx*8]                        ; 559C _ 8D. 14 D0
        mov     eax, dword [edx]                        ; 559F _ 8B. 02
        mov     edx, dword [edx+4H]                     ; 55A1 _ 8B. 52, 04
        mov     dword [ecx+ebx*8], eax                  ; 55A4 _ 89. 04 D9
        mov     dword [ecx+ebx*8+4H], edx               ; 55A7 _ 89. 54 D9, 04
        sub     dword [ebp-0CH], 1                      ; 55AB _ 83. 6D, F4, 01
?_320:  mov     eax, dword [ebp-0CH]                    ; 55AF _ 8B. 45, F4
        cmp     eax, dword [ebp-8H]                     ; 55B2 _ 3B. 45, F8
        jg      ?_319                                   ; 55B5 _ 7F, D0
        mov     eax, dword [ebp+8H]                     ; 55B7 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 55BA _ 8B. 00
        lea     edx, [eax+1H]                           ; 55BC _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 55BF _ 8B. 45, 08
        mov     dword [eax], edx                        ; 55C2 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 55C4 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 55C7 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 55CA _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 55CD _ 8B. 00
        cmp     edx, eax                                ; 55CF _ 39. C2
        jge     ?_321                                   ; 55D1 _ 7D, 0B
        mov     eax, dword [ebp+8H]                     ; 55D3 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 55D6 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 55D8 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 55DB _ 89. 50, 04
?_321:  mov     eax, dword [ebp+8H]                     ; 55DE _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 55E1 _ 8B. 55, F8
        add     edx, 2                                  ; 55E4 _ 83. C2, 02
        mov     ecx, dword [ebp+0CH]                    ; 55E7 _ 8B. 4D, 0C
        mov     dword [eax+edx*8], ecx                  ; 55EA _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 55ED _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 55F0 _ 8B. 55, F8
        add     edx, 2                                  ; 55F3 _ 83. C2, 02
        mov     ecx, dword [ebp+10H]                    ; 55F6 _ 8B. 4D, 10
        mov     dword [eax+edx*8+4H], ecx               ; 55F9 _ 89. 4C D0, 04
        mov     eax, 0                                  ; 55FD _ B8, 00000000
        jmp     ?_323                                   ; 5602 _ EB, 29

?_322:  mov     eax, dword [ebp+8H]                     ; 5604 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 5607 _ 8B. 40, 0C
        lea     edx, [eax+1H]                           ; 560A _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 560D _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 5610 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 5613 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 5616 _ 8B. 40, 08
        mov     edx, eax                                ; 5619 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 561B _ 8B. 45, 10
        add     eax, edx                                ; 561E _ 01. D0
        mov     edx, eax                                ; 5620 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 5622 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 5625 _ 89. 50, 08
        mov     eax, 4294967295                         ; 5628 _ B8, FFFFFFFF
?_323:  add     esp, 16                                 ; 562D _ 83. C4, 10
        pop     ebx                                     ; 5630 _ 5B
        pop     ebp                                     ; 5631 _ 5D
        ret                                             ; 5632 _ C3
; _memman_free End of function

_memman_alloc_4k:; Function begin
        push    ebp                                     ; 5633 _ 55
        mov     ebp, esp                                ; 5634 _ 89. E5
        sub     esp, 24                                 ; 5636 _ 83. EC, 18
        mov     eax, dword [ebp+0CH]                    ; 5639 _ 8B. 45, 0C
        add     eax, 4095                               ; 563C _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 5641 _ 25, FFFFF000
        mov     dword [ebp+0CH], eax                    ; 5646 _ 89. 45, 0C
        mov     eax, dword [ebp+0CH]                    ; 5649 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 564C _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 5650 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 5653 _ 89. 04 24
        call    _memman_alloc                           ; 5656 _ E8, FFFFFCA3
        mov     dword [ebp-4H], eax                     ; 565B _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 565E _ 8B. 45, FC
        leave                                           ; 5661 _ C9
        ret                                             ; 5662 _ C3
; _memman_alloc_4k End of function

_memman_free_4k:; Function begin
        push    ebp                                     ; 5663 _ 55
        mov     ebp, esp                                ; 5664 _ 89. E5
        sub     esp, 28                                 ; 5666 _ 83. EC, 1C
        mov     eax, dword [ebp+10H]                    ; 5669 _ 8B. 45, 10
        add     eax, 4095                               ; 566C _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 5671 _ 25, FFFFF000
        mov     dword [ebp+10H], eax                    ; 5676 _ 89. 45, 10
        mov     eax, dword [ebp+10H]                    ; 5679 _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 567C _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 5680 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 5683 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 5687 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 568A _ 89. 04 24
        call    _memman_free                            ; 568D _ E8, FFFFFD53
        mov     dword [ebp-4H], eax                     ; 5692 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 5695 _ 8B. 45, FC
        leave                                           ; 5698 _ C9
        ret                                             ; 5699 _ C3
; _memman_free_4k End of function

        nop                                             ; 569A _ 90
        nop                                             ; 569B _ 90


_fifo8_init:
        push    ebp                                     ; 569C _ 55
        mov     ebp, esp                                ; 569D _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 569F _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 56A2 _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 56A5 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 56A8 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 56AB _ 8B. 55, 10
        mov     dword [eax], edx                        ; 56AE _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 56B0 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 56B3 _ 8B. 55, 0C
        mov     dword [eax+10H], edx                    ; 56B6 _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 56B9 _ 8B. 45, 08
        mov     dword [eax+14H], 0                      ; 56BC _ C7. 40, 14, 00000000
        mov     eax, dword [ebp+8H]                     ; 56C3 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 56C6 _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 56CD _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 56D0 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 56D7 _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 56DA _ 8B. 55, 14
        mov     dword [eax+18H], edx                    ; 56DD _ 89. 50, 18
        nop                                             ; 56E0 _ 90
        pop     ebp                                     ; 56E1 _ 5D
        ret                                             ; 56E2 _ C3

_fifo8_put:; Function begin
        push    ebp                                     ; 56E3 _ 55
        mov     ebp, esp                                ; 56E4 _ 89. E5
        sub     esp, 40                                 ; 56E6 _ 83. EC, 28
        mov     eax, dword [ebp+0CH]                    ; 56E9 _ 8B. 45, 0C
        mov     byte [ebp-0CH], al                      ; 56EC _ 88. 45, F4
        cmp     dword [ebp+8H], 0                       ; 56EF _ 83. 7D, 08, 00
        jnz     ?_324                                   ; 56F3 _ 75, 0A
        mov     eax, 4294967295                         ; 56F5 _ B8, FFFFFFFF
        jmp     ?_328                                   ; 56FA _ E9, 000000AB

?_324:  mov     eax, dword [ebp+8H]                     ; 56FF _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 5702 _ 8B. 40, 10
        test    eax, eax                                ; 5705 _ 85. C0
        jnz     ?_325                                   ; 5707 _ 75, 1B
        mov     eax, dword [ebp+8H]                     ; 5709 _ 8B. 45, 08
        mov     eax, dword [eax+14H]                    ; 570C _ 8B. 40, 14
        or      eax, 01H                                ; 570F _ 83. C8, 01
        mov     edx, eax                                ; 5712 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 5714 _ 8B. 45, 08
        mov     dword [eax+14H], edx                    ; 5717 _ 89. 50, 14
        mov     eax, 4294967295                         ; 571A _ B8, FFFFFFFF
        jmp     ?_328                                   ; 571F _ E9, 00000086

?_325:  mov     eax, dword [ebp+8H]                     ; 5724 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 5727 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 5729 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 572C _ 8B. 40, 04
        add     edx, eax                                ; 572F _ 01. C2
        movzx   eax, byte [ebp-0CH]                     ; 5731 _ 0F B6. 45, F4
        mov     byte [edx], al                          ; 5735 _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 5737 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 573A _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 573D _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 5740 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 5743 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 5746 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 5749 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 574C _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 574F _ 8B. 40, 0C
        cmp     edx, eax                                ; 5752 _ 39. C2
        jnz     ?_326                                   ; 5754 _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 5756 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 5759 _ C7. 40, 04, 00000000
?_326:  mov     eax, dword [ebp+8H]                     ; 5760 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 5763 _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 5766 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 5769 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 576C _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 576F _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 5772 _ 8B. 40, 18
        test    eax, eax                                ; 5775 _ 85. C0
        jz      ?_327                                   ; 5777 _ 74, 2C
        mov     eax, dword [ebp+8H]                     ; 5779 _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 577C _ 8B. 40, 18
        mov     eax, dword [eax+4H]                     ; 577F _ 8B. 40, 04
        cmp     eax, 2                                  ; 5782 _ 83. F8, 02
        jz      ?_327                                   ; 5785 _ 74, 1E
        mov     eax, dword [ebp+8H]                     ; 5787 _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 578A _ 8B. 40, 18
        mov     dword [esp+8H], 0                       ; 578D _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], -1                      ; 5795 _ C7. 44 24, 04, FFFFFFFF
        mov     dword [esp], eax                        ; 579D _ 89. 04 24
        call    _task_run                               ; 57A0 _ E8, 00000000(rel)
?_327:  mov     eax, 0                                  ; 57A5 _ B8, 00000000
?_328:  leave                                           ; 57AA _ C9
        ret                                             ; 57AB _ C3
; _fifo8_put End of function

_fifo8_get:; Function begin
        push    ebp                                     ; 57AC _ 55
        mov     ebp, esp                                ; 57AD _ 89. E5
        sub     esp, 16                                 ; 57AF _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 57B2 _ 8B. 45, 08
        mov     edx, dword [eax+10H]                    ; 57B5 _ 8B. 50, 10
        mov     eax, dword [ebp+8H]                     ; 57B8 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 57BB _ 8B. 40, 0C
        cmp     edx, eax                                ; 57BE _ 39. C2
        jnz     ?_329                                   ; 57C0 _ 75, 07
        mov     eax, 4294967295                         ; 57C2 _ B8, FFFFFFFF
        jmp     ?_331                                   ; 57C7 _ EB, 51

?_329:  mov     eax, dword [ebp+8H]                     ; 57C9 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 57CC _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 57CE _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 57D1 _ 8B. 40, 08
        add     eax, edx                                ; 57D4 _ 01. D0
        movzx   eax, byte [eax]                         ; 57D6 _ 0F B6. 00
        movzx   eax, al                                 ; 57D9 _ 0F B6. C0
        mov     dword [ebp-4H], eax                     ; 57DC _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 57DF _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 57E2 _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 57E5 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 57E8 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 57EB _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 57EE _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 57F1 _ 8B. 50, 08
        mov     eax, dword [ebp+8H]                     ; 57F4 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 57F7 _ 8B. 40, 0C
        cmp     edx, eax                                ; 57FA _ 39. C2
        jnz     ?_330                                   ; 57FC _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 57FE _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 5801 _ C7. 40, 08, 00000000
?_330:  mov     eax, dword [ebp+8H]                     ; 5808 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 580B _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 580E _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 5811 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 5814 _ 89. 50, 10
        mov     eax, dword [ebp-4H]                     ; 5817 _ 8B. 45, FC
?_331:  leave                                           ; 581A _ C9
        ret                                             ; 581B _ C3
; _fifo8_get End of function

_fifo8_status:; Function begin
        push    ebp                                     ; 581C _ 55
        mov     ebp, esp                                ; 581D _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 581F _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 5822 _ 8B. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 5825 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 5828 _ 8B. 40, 10
        sub     edx, eax                                ; 582B _ 29. C2
        mov     eax, edx                                ; 582D _ 89. D0
        pop     ebp                                     ; 582F _ 5D
        ret                                             ; 5830 _ C3
; _fifo8_status End of function

        nop                                             ; 5831 _ 90
        nop                                             ; 5832 _ 90
        nop                                             ; 5833 _ 90


_init_pit:
        push    ebp                                     ; 5834 _ 55
        mov     ebp, esp                                ; 5835 _ 89. E5
        sub     esp, 40                                 ; 5837 _ 83. EC, 28
        mov     dword [esp+4H], 52                      ; 583A _ C7. 44 24, 04, 00000034
        mov     dword [esp], 67                         ; 5842 _ C7. 04 24, 00000043
        call    _io_out8                                ; 5849 _ E8, 00000000(rel)
        mov     dword [esp+4H], 156                     ; 584E _ C7. 44 24, 04, 0000009C
        mov     dword [esp], 64                         ; 5856 _ C7. 04 24, 00000040
        call    _io_out8                                ; 585D _ E8, 00000000(rel)
        mov     dword [esp+4H], 46                      ; 5862 _ C7. 44 24, 04, 0000002E
        mov     dword [esp], 64                         ; 586A _ C7. 04 24, 00000040
        call    _io_out8                                ; 5871 _ E8, 00000000(rel)
        mov     dword [_timerctl], 0                         ; 5876 _ C7. 05, 00000000(d), 00000000
        mov     dword [ebp-0CH], 0                      ; 5880 _ C7. 45, F4, 00000000
        jmp     ?_333                                   ; 5887 _ EB, 26

?_332:  mov     eax, dword [ebp-0CH]                    ; 5889 _ 8B. 45, F4
        shl     eax, 4                                  ; 588C _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 588F _ 05, 00000008(d)
        mov     dword [eax], 0                          ; 5894 _ C7. 00, 00000000
        mov     eax, dword [ebp-0CH]                    ; 589A _ 8B. 45, F4
        shl     eax, 4                                  ; 589D _ C1. E0, 04
        add     eax, _timerctl+0CH                           ; 58A0 _ 05, 0000000C(d)
        mov     dword [eax], 0                          ; 58A5 _ C7. 00, 00000000
        add     dword [ebp-0CH], 1                      ; 58AB _ 83. 45, F4, 01
?_333:  cmp     dword [ebp-0CH], 499                    ; 58AF _ 81. 7D, F4, 000001F3
        jle     ?_332                                   ; 58B6 _ 7E, D1
        nop                                             ; 58B8 _ 90
        leave                                           ; 58B9 _ C9
        ret                                             ; 58BA _ C3

_timer_alloc:; Function begin
        push    ebp                                     ; 58BB _ 55
        mov     ebp, esp                                ; 58BC _ 89. E5
        sub     esp, 16                                 ; 58BE _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 58C1 _ C7. 45, FC, 00000000
        jmp     ?_336                                   ; 58C8 _ EB, 36

?_334:  mov     eax, dword [ebp-4H]                     ; 58CA _ 8B. 45, FC
        shl     eax, 4                                  ; 58CD _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 58D0 _ 05, 00000008(d)
        mov     eax, dword [eax]                        ; 58D5 _ 8B. 00
        test    eax, eax                                ; 58D7 _ 85. C0
        jnz     ?_335                                   ; 58D9 _ 75, 21
        mov     eax, dword [ebp-4H]                     ; 58DB _ 8B. 45, FC
        shl     eax, 4                                  ; 58DE _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 58E1 _ 05, 00000008(d)
        mov     dword [eax], 1                          ; 58E6 _ C7. 00, 00000001
        mov     eax, dword [ebp-4H]                     ; 58EC _ 8B. 45, FC
        shl     eax, 4                                  ; 58EF _ C1. E0, 04
        add     eax, _timerctl                               ; 58F2 _ 05, 00000000(d)
        add     eax, 4                                  ; 58F7 _ 83. C0, 04
        jmp     ?_337                                   ; 58FA _ EB, 12

?_335:  add     dword [ebp-4H], 1                       ; 58FC _ 83. 45, FC, 01
?_336:  cmp     dword [ebp-4H], 499                     ; 5900 _ 81. 7D, FC, 000001F3
        jle     ?_334                                   ; 5907 _ 7E, C1
        mov     eax, 0                                  ; 5909 _ B8, 00000000
?_337:  leave                                           ; 590E _ C9
        ret                                             ; 590F _ C3
; _timer_alloc End of function

_timer_free:; Function begin
        push    ebp                                     ; 5910 _ 55
        mov     ebp, esp                                ; 5911 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 5913 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 5916 _ C7. 40, 04, 00000000
        nop                                             ; 591D _ 90
        pop     ebp                                     ; 591E _ 5D
        ret                                             ; 591F _ C3
; _timer_free End of function

_timer_init:; Function begin
        push    ebp                                     ; 5920 _ 55
        mov     ebp, esp                                ; 5921 _ 89. E5
        sub     esp, 4                                  ; 5923 _ 83. EC, 04
        mov     eax, dword [ebp+10H]                    ; 5926 _ 8B. 45, 10
        mov     byte [ebp-4H], al                       ; 5929 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 592C _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 592F _ 8B. 55, 0C
        mov     dword [eax+8H], edx                     ; 5932 _ 89. 50, 08
        mov     edx, dword [ebp+8H]                     ; 5935 _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 5938 _ 0F B6. 45, FC
        mov     byte [edx+0CH], al                      ; 593C _ 88. 42, 0C
        nop                                             ; 593F _ 90
        leave                                           ; 5940 _ C9
        ret                                             ; 5941 _ C3
; _timer_init End of function

_timer_settime:; Function begin
        push    ebp                                     ; 5942 _ 55
        mov     ebp, esp                                ; 5943 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 5945 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 5948 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 594B _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 594D _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 5950 _ C7. 40, 04, 00000002
        nop                                             ; 5957 _ 90
        pop     ebp                                     ; 5958 _ 5D
        ret                                             ; 5959 _ C3
; _timer_settime End of function

_intHandlerForTimer:; Function begin
        push    ebp                                     ; 595A _ 55
        mov     ebp, esp                                ; 595B _ 89. E5
        sub     esp, 40                                 ; 595D _ 83. EC, 28
        mov     dword [esp+4H], 32                      ; 5960 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 5968 _ C7. 04 24, 00000020
        call    _io_out8                                ; 596F _ E8, 00000000(rel)
        mov     eax, dword [_timerctl]                       ; 5974 _ A1, 00000000(d)
        add     eax, 1                                  ; 5979 _ 83. C0, 01
        mov     dword [_timerctl], eax                       ; 597C _ A3, 00000000(d)
        mov     byte [ebp-0DH], 0                       ; 5981 _ C6. 45, F3, 00
        mov     dword [ebp-0CH], 0                      ; 5985 _ C7. 45, F4, 00000000
        jmp     ?_341                                   ; 598C _ E9, 000000AA

?_338:  mov     eax, dword [ebp-0CH]                    ; 5991 _ 8B. 45, F4
        shl     eax, 4                                  ; 5994 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 5997 _ 05, 00000008(d)
        mov     eax, dword [eax]                        ; 599C _ 8B. 00
        cmp     eax, 2                                  ; 599E _ 83. F8, 02
        jne     ?_339                                   ; 59A1 _ 0F 85, 00000085
        mov     eax, dword [ebp-0CH]                    ; 59A7 _ 8B. 45, F4
        shl     eax, 4                                  ; 59AA _ C1. E0, 04
        add     eax, _timerctl+4H                            ; 59AD _ 05, 00000004(d)
        mov     eax, dword [eax]                        ; 59B2 _ 8B. 00
        lea     edx, [eax-1H]                           ; 59B4 _ 8D. 50, FF
        mov     eax, dword [ebp-0CH]                    ; 59B7 _ 8B. 45, F4
        shl     eax, 4                                  ; 59BA _ C1. E0, 04
        add     eax, _timerctl+4H                            ; 59BD _ 05, 00000004(d)
        mov     dword [eax], edx                        ; 59C2 _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 59C4 _ 8B. 45, F4
        shl     eax, 4                                  ; 59C7 _ C1. E0, 04
        add     eax, _timerctl+4H                            ; 59CA _ 05, 00000004(d)
        mov     eax, dword [eax]                        ; 59CF _ 8B. 00
        test    eax, eax                                ; 59D1 _ 85. C0
        jnz     ?_339                                   ; 59D3 _ 75, 57
        mov     eax, dword [ebp-0CH]                    ; 59D5 _ 8B. 45, F4
        shl     eax, 4                                  ; 59D8 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 59DB _ 05, 00000008(d)
        mov     dword [eax], 1                          ; 59E0 _ C7. 00, 00000001
        mov     eax, dword [ebp-0CH]                    ; 59E6 _ 8B. 45, F4
        shl     eax, 4                                  ; 59E9 _ C1. E0, 04
        add     eax, _timerctl+10H                           ; 59EC _ 05, 00000010(d)
        movzx   eax, byte [eax]                         ; 59F1 _ 0F B6. 00
        movzx   eax, al                                 ; 59F4 _ 0F B6. C0
        mov     edx, dword [ebp-0CH]                    ; 59F7 _ 8B. 55, F4
        shl     edx, 4                                  ; 59FA _ C1. E2, 04
        add     edx, _timerctl+0CH                           ; 59FD _ 81. C2, 0000000C(d)
        mov     edx, dword [edx]                        ; 5A03 _ 8B. 12
        mov     dword [esp+4H], eax                     ; 5A05 _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 5A09 _ 89. 14 24
        call    _fifo8_put                              ; 5A0C _ E8, 00000000(rel)
        mov     eax, dword [ebp-0CH]                    ; 5A11 _ 8B. 45, F4
        shl     eax, 4                                  ; 5A14 _ C1. E0, 04
        add     eax, _timerctl                               ; 5A17 _ 05, 00000000(d)
        lea     edx, [eax+4H]                           ; 5A1C _ 8D. 50, 04
        mov     eax, dword [_task_timer]                ; 5A1F _ A1, 00000000(d)
        cmp     edx, eax                                ; 5A24 _ 39. C2
        jnz     ?_339                                   ; 5A26 _ 75, 04
        mov     byte [ebp-0DH], 1                       ; 5A28 _ C6. 45, F3, 01
?_339:  cmp     byte [ebp-0DH], 0                       ; 5A2C _ 80. 7D, F3, 00
        jz      ?_340                                   ; 5A30 _ 74, 05
        call    _task_switch                            ; 5A32 _ E8, 00000000(rel)
?_340:  add     dword [ebp-0CH], 1                      ; 5A37 _ 83. 45, F4, 01
?_341:  cmp     dword [ebp-0CH], 499                    ; 5A3B _ 81. 7D, F4, 000001F3
        jle     ?_338                                   ; 5A42 _ 0F 8E, FFFFFF49
        nop                                             ; 5A48 _ 90
        leave                                           ; 5A49 _ C9
        ret                                             ; 5A4A _ C3
; _intHandlerForTimer End of function

_getTimerController:; Function begin
        mov     eax, _timerctl                               ; 5A4B _ B8, 00000000(d)
        ret                                             ; 5A50 _ C3
; _getTimerController End of function

        nop                                             ; 5A51 _ 90
        nop                                             ; 5A52 _ 90
        nop                                             ; 5A53 _ 90


_set_segmdesc:
        push    ebp                                     ; 5A54 _ 55
        mov     ebp, esp                                ; 5A55 _ 89. E5
        cmp     dword [ebp+0CH], 1048575                ; 5A57 _ 81. 7D, 0C, 000FFFFF
        jbe     ?_342                                   ; 5A5E _ 76, 10
        or      dword [ebp+14H], 8000H                  ; 5A60 _ 81. 4D, 14, 00008000
        mov     eax, dword [ebp+0CH]                    ; 5A67 _ 8B. 45, 0C
        shr     eax, 12                                 ; 5A6A _ C1. E8, 0C
        mov     dword [ebp+0CH], eax                    ; 5A6D _ 89. 45, 0C
?_342:  mov     eax, dword [ebp+0CH]                    ; 5A70 _ 8B. 45, 0C
        mov     edx, eax                                ; 5A73 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 5A75 _ 8B. 45, 08
        mov     word [eax], dx                          ; 5A78 _ 66: 89. 10
        mov     eax, dword [ebp+10H]                    ; 5A7B _ 8B. 45, 10
        mov     edx, eax                                ; 5A7E _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 5A80 _ 8B. 45, 08
        mov     word [eax+2H], dx                       ; 5A83 _ 66: 89. 50, 02
        mov     eax, dword [ebp+10H]                    ; 5A87 _ 8B. 45, 10
        sar     eax, 16                                 ; 5A8A _ C1. F8, 10
        mov     edx, eax                                ; 5A8D _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 5A8F _ 8B. 45, 08
        mov     byte [eax+4H], dl                       ; 5A92 _ 88. 50, 04
        mov     eax, dword [ebp+14H]                    ; 5A95 _ 8B. 45, 14
        mov     edx, eax                                ; 5A98 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 5A9A _ 8B. 45, 08
        mov     byte [eax+5H], dl                       ; 5A9D _ 88. 50, 05
        mov     eax, dword [ebp+0CH]                    ; 5AA0 _ 8B. 45, 0C
        shr     eax, 16                                 ; 5AA3 _ C1. E8, 10
        and     eax, 0FH                                ; 5AA6 _ 83. E0, 0F
        mov     edx, eax                                ; 5AA9 _ 89. C2
        mov     eax, dword [ebp+14H]                    ; 5AAB _ 8B. 45, 14
        sar     eax, 8                                  ; 5AAE _ C1. F8, 08
        and     eax, 0FFFFFFF0H                         ; 5AB1 _ 83. E0, F0
        or      eax, edx                                ; 5AB4 _ 09. D0
        mov     edx, eax                                ; 5AB6 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 5AB8 _ 8B. 45, 08
        mov     byte [eax+6H], dl                       ; 5ABB _ 88. 50, 06
        mov     eax, dword [ebp+10H]                    ; 5ABE _ 8B. 45, 10
        shr     eax, 24                                 ; 5AC1 _ C1. E8, 18
        mov     edx, eax                                ; 5AC4 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 5AC6 _ 8B. 45, 08
        mov     byte [eax+7H], dl                       ; 5AC9 _ 88. 50, 07
        nop                                             ; 5ACC _ 90
        pop     ebp                                     ; 5ACD _ 5D
        ret                                             ; 5ACE _ C3

_get_taskctl:; Function begin
        mov     eax, dword [_taskctl]                   ; 5ACF _ A1, 00000004(d)
        ret                                             ; 5AD4 _ C3
; _get_taskctl End of function

_init_task_level:; Function begin
        push    ebp                                     ; 5AD5 _ 55
        mov     ebp, esp                                ; 5AD6 _ 89. E5
        sub     esp, 16                                 ; 5AD8 _ 83. EC, 10
        mov     ecx, dword [_taskctl]                   ; 5ADB _ 8B. 0D, 00000004(d)
        mov     edx, dword [ebp+8H]                     ; 5AE1 _ 8B. 55, 08
        mov     eax, edx                                ; 5AE4 _ 89. D0
        add     eax, eax                                ; 5AE6 _ 01. C0
        add     eax, edx                                ; 5AE8 _ 01. D0
        shl     eax, 4                                  ; 5AEA _ C1. E0, 04
        add     eax, ecx                                ; 5AED _ 01. C8
        add     eax, 8                                  ; 5AEF _ 83. C0, 08
        mov     dword [eax], 0                          ; 5AF2 _ C7. 00, 00000000
        mov     ecx, dword [_taskctl]                   ; 5AF8 _ 8B. 0D, 00000004(d)
        mov     edx, dword [ebp+8H]                     ; 5AFE _ 8B. 55, 08
        mov     eax, edx                                ; 5B01 _ 89. D0
        add     eax, eax                                ; 5B03 _ 01. C0
        add     eax, edx                                ; 5B05 _ 01. D0
        shl     eax, 4                                  ; 5B07 _ C1. E0, 04
        add     eax, ecx                                ; 5B0A _ 01. C8
        add     eax, 12                                 ; 5B0C _ 83. C0, 0C
        mov     dword [eax], 0                          ; 5B0F _ C7. 00, 00000000
        mov     dword [ebp-4H], 0                       ; 5B15 _ C7. 45, FC, 00000000
        jmp     ?_344                                   ; 5B1C _ EB, 1B

?_343:  mov     edx, dword [_taskctl]                   ; 5B1E _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-4H]                     ; 5B24 _ 8B. 45, FC
        imul    eax, eax, 52                            ; 5B27 _ 6B. C0, 34
        add     eax, edx                                ; 5B2A _ 01. D0
        add     eax, 16                                 ; 5B2C _ 83. C0, 10
        mov     dword [eax], 0                          ; 5B2F _ C7. 00, 00000000
        add     dword [ebp-4H], 1                       ; 5B35 _ 83. 45, FC, 01
?_344:  cmp     dword [ebp-4H], 9                       ; 5B39 _ 83. 7D, FC, 09
        jle     ?_343                                   ; 5B3D _ 7E, DF
        nop                                             ; 5B3F _ 90
        leave                                           ; 5B40 _ C9
        ret                                             ; 5B41 _ C3
; _init_task_level End of function

_task_init:; Function begin
        push    ebp                                     ; 5B42 _ 55
        mov     ebp, esp                                ; 5B43 _ 89. E5
        sub     esp, 40                                 ; 5B45 _ 83. EC, 28
        call    _get_addr_gdt                           ; 5B48 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 5B4D _ 89. 45, F0
        mov     dword [esp+4H], 3048                    ; 5B50 _ C7. 44 24, 04, 00000BE8
        mov     eax, dword [ebp+8H]                     ; 5B58 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 5B5B _ 89. 04 24
        call    _memman_alloc_4k                        ; 5B5E _ E8, 00000000(rel)
        mov     dword [_taskctl], eax                   ; 5B63 _ A3, 00000004(d)
        mov     dword [ebp-0CH], 0                      ; 5B68 _ C7. 45, F4, 00000000
        jmp     ?_346                                   ; 5B6F _ E9, 000000FC

?_345:  mov     edx, dword [_taskctl]                   ; 5B74 _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-0CH]                    ; 5B7A _ 8B. 45, F4
        imul    eax, eax, 204                           ; 5B7D _ 69. C0, 000000CC
        add     eax, edx                                ; 5B83 _ 01. D0
        add     eax, 492                                ; 5B85 _ 05, 000001EC
        mov     dword [eax], 0                          ; 5B8A _ C7. 00, 00000000
        mov     eax, dword [ebp-0CH]                    ; 5B90 _ 8B. 45, F4
        add     eax, 7                                  ; 5B93 _ 83. C0, 07
        mov     ecx, dword [_taskctl]                   ; 5B96 _ 8B. 0D, 00000004(d)
        lea     edx, [eax*8]                            ; 5B9C _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-0CH]                    ; 5BA3 _ 8B. 45, F4
        imul    eax, eax, 204                           ; 5BA6 _ 69. C0, 000000CC
        add     eax, ecx                                ; 5BAC _ 01. C8
        add     eax, 488                                ; 5BAE _ 05, 000001E8
        mov     dword [eax], edx                        ; 5BB3 _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 5BB5 _ 8B. 45, F4
        add     eax, 17                                 ; 5BB8 _ 83. C0, 11
        mov     ecx, dword [_taskctl]                   ; 5BBB _ 8B. 0D, 00000004(d)
        lea     edx, [eax*8]                            ; 5BC1 _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-0CH]                    ; 5BC8 _ 8B. 45, F4
        imul    eax, eax, 204                           ; 5BCB _ 69. C0, 000000CC
        add     eax, ecx                                ; 5BD1 _ 01. C8
        add     eax, 628                                ; 5BD3 _ 05, 00000274
        mov     dword [eax], edx                        ; 5BD8 _ 89. 10
        mov     edx, dword [_taskctl]                   ; 5BDA _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-0CH]                    ; 5BE0 _ 8B. 45, F4
        imul    eax, eax, 204                           ; 5BE3 _ 69. C0, 000000CC
        add     eax, 512                                ; 5BE9 _ 05, 00000200
        add     eax, edx                                ; 5BEE _ 01. D0
        add     eax, 20                                 ; 5BF0 _ 83. C0, 14
        mov     ecx, eax                                ; 5BF3 _ 89. C1
        mov     eax, dword [ebp-0CH]                    ; 5BF5 _ 8B. 45, F4
        add     eax, 7                                  ; 5BF8 _ 83. C0, 07
        lea     edx, [eax*8]                            ; 5BFB _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-10H]                    ; 5C02 _ 8B. 45, F0
        add     eax, edx                                ; 5C05 _ 01. D0
        mov     dword [esp+0CH], 137                    ; 5C07 _ C7. 44 24, 0C, 00000089
        mov     dword [esp+8H], ecx                     ; 5C0F _ 89. 4C 24, 08
        mov     dword [esp+4H], 103                     ; 5C13 _ C7. 44 24, 04, 00000067
        mov     dword [esp], eax                        ; 5C1B _ 89. 04 24
        call    _set_segmdesc                           ; 5C1E _ E8, FFFFFE31
        mov     edx, dword [_taskctl]                   ; 5C23 _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-0CH]                    ; 5C29 _ 8B. 45, F4
        imul    eax, eax, 204                           ; 5C2C _ 69. C0, 000000CC
        add     eax, 656                                ; 5C32 _ 05, 00000290
        add     eax, edx                                ; 5C37 _ 01. D0
        add     eax, 20                                 ; 5C39 _ 83. C0, 14
        mov     ecx, eax                                ; 5C3C _ 89. C1
        mov     eax, dword [ebp-0CH]                    ; 5C3E _ 8B. 45, F4
        add     eax, 17                                 ; 5C41 _ 83. C0, 11
        lea     edx, [eax*8]                            ; 5C44 _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-10H]                    ; 5C4B _ 8B. 45, F0
        add     eax, edx                                ; 5C4E _ 01. D0
        mov     dword [esp+0CH], 130                    ; 5C50 _ C7. 44 24, 0C, 00000082
        mov     dword [esp+8H], ecx                     ; 5C58 _ 89. 4C 24, 08
        mov     dword [esp+4H], 15                      ; 5C5C _ C7. 44 24, 04, 0000000F
        mov     dword [esp], eax                        ; 5C64 _ 89. 04 24
        call    _set_segmdesc                           ; 5C67 _ E8, FFFFFDE8
        add     dword [ebp-0CH], 1                      ; 5C6C _ 83. 45, F4, 01
?_346:  cmp     dword [ebp-0CH], 9                      ; 5C70 _ 83. 7D, F4, 09
        jle     ?_345                                   ; 5C74 _ 0F 8E, FFFFFEFA
        mov     dword [ebp-0CH], 0                      ; 5C7A _ C7. 45, F4, 00000000
        jmp     ?_348                                   ; 5C81 _ EB, 0F

?_347:  mov     eax, dword [ebp-0CH]                    ; 5C83 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 5C86 _ 89. 04 24
        call    _init_task_level                        ; 5C89 _ E8, FFFFFE47
        add     dword [ebp-0CH], 1                      ; 5C8E _ 83. 45, F4, 01
?_348:  cmp     dword [ebp-0CH], 9                      ; 5C92 _ 83. 7D, F4, 09
        jle     ?_347                                   ; 5C96 _ 7E, EB
        call    _task_alloc                             ; 5C98 _ E8, 00000066
        mov     dword [ebp-14H], eax                    ; 5C9D _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 5CA0 _ 8B. 45, EC
        mov     dword [eax+4H], 2                       ; 5CA3 _ C7. 40, 04, 00000002
        mov     eax, dword [ebp-14H]                    ; 5CAA _ 8B. 45, EC
        mov     dword [eax+8H], 100                     ; 5CAD _ C7. 40, 08, 00000064
        mov     eax, dword [ebp-14H]                    ; 5CB4 _ 8B. 45, EC
        mov     dword [eax+0CH], 0                      ; 5CB7 _ C7. 40, 0C, 00000000
        mov     eax, dword [ebp-14H]                    ; 5CBE _ 8B. 45, EC
        mov     dword [esp], eax                        ; 5CC1 _ 89. 04 24
        call    _task_add                               ; 5CC4 _ E8, 0000034B
        call    _task_switchsub                         ; 5CC9 _ E8, 0000045F
        mov     eax, dword [ebp-14H]                    ; 5CCE _ 8B. 45, EC
        mov     eax, dword [eax]                        ; 5CD1 _ 8B. 00
        mov     dword [esp], eax                        ; 5CD3 _ 89. 04 24
        call    _load_tr                                ; 5CD6 _ E8, 00000000(rel)
        call    _timer_alloc                            ; 5CDB _ E8, 00000000(rel)
        mov     dword [_task_timer], eax                       ; 5CE0 _ A3, 00000000(d)
        mov     eax, dword [ebp-14H]                    ; 5CE5 _ 8B. 45, EC
        mov     eax, dword [eax+8H]                     ; 5CE8 _ 8B. 40, 08
        mov     edx, eax                                ; 5CEB _ 89. C2
        mov     eax, dword [_task_timer]                       ; 5CED _ A1, 00000000(d)
        mov     dword [esp+4H], edx                     ; 5CF2 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 5CF6 _ 89. 04 24
        call    _timer_settime                          ; 5CF9 _ E8, 00000000(rel)
        mov     eax, dword [ebp-14H]                    ; 5CFE _ 8B. 45, EC
        leave                                           ; 5D01 _ C9
        ret                                             ; 5D02 _ C3
; _task_init End of function

_task_alloc:; Function begin
        push    ebp                                     ; 5D03 _ 55
        mov     ebp, esp                                ; 5D04 _ 89. E5
        sub     esp, 16                                 ; 5D06 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 5D09 _ C7. 45, FC, 00000000
        jmp     ?_351                                   ; 5D10 _ E9, 000000F8

?_349:  mov     edx, dword [_taskctl]                   ; 5D15 _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-4H]                     ; 5D1B _ 8B. 45, FC
        imul    eax, eax, 204                           ; 5D1E _ 69. C0, 000000CC
        add     eax, edx                                ; 5D24 _ 01. D0
        add     eax, 492                                ; 5D26 _ 05, 000001EC
        mov     eax, dword [eax]                        ; 5D2B _ 8B. 00
        test    eax, eax                                ; 5D2D _ 85. C0
        jne     ?_350                                   ; 5D2F _ 0F 85, 000000D4
        mov     edx, dword [_taskctl]                   ; 5D35 _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-4H]                     ; 5D3B _ 8B. 45, FC
        imul    eax, eax, 204                           ; 5D3E _ 69. C0, 000000CC
        add     eax, 480                                ; 5D44 _ 05, 000001E0
        add     eax, edx                                ; 5D49 _ 01. D0
        add     eax, 8                                  ; 5D4B _ 83. C0, 08
        mov     dword [ebp-8H], eax                     ; 5D4E _ 89. 45, F8
        mov     eax, dword [ebp-8H]                     ; 5D51 _ 8B. 45, F8
        mov     dword [eax+4H], 1                       ; 5D54 _ C7. 40, 04, 00000001
        mov     eax, dword [ebp-8H]                     ; 5D5B _ 8B. 45, F8
        mov     dword [eax+50H], 514                    ; 5D5E _ C7. 40, 50, 00000202
        mov     eax, dword [ebp-8H]                     ; 5D65 _ 8B. 45, F8
        mov     dword [eax+54H], 0                      ; 5D68 _ C7. 40, 54, 00000000
        mov     eax, dword [ebp-8H]                     ; 5D6F _ 8B. 45, F8
        mov     dword [eax+58H], 0                      ; 5D72 _ C7. 40, 58, 00000000
        mov     eax, dword [ebp-8H]                     ; 5D79 _ 8B. 45, F8
        mov     dword [eax+5CH], 0                      ; 5D7C _ C7. 40, 5C, 00000000
        mov     eax, dword [ebp-8H]                     ; 5D83 _ 8B. 45, F8
        mov     dword [eax+60H], 0                      ; 5D86 _ C7. 40, 60, 00000000
        mov     eax, dword [ebp-8H]                     ; 5D8D _ 8B. 45, F8
        mov     dword [eax+68H], 0                      ; 5D90 _ C7. 40, 68, 00000000
        mov     eax, dword [ebp-4H]                     ; 5D97 _ 8B. 45, FC
        add     eax, 1                                  ; 5D9A _ 83. C0, 01
        shl     eax, 9                                  ; 5D9D _ C1. E0, 09
        mov     edx, eax                                ; 5DA0 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 5DA2 _ 8B. 45, F8
        mov     dword [eax+64H], edx                    ; 5DA5 _ 89. 50, 64
        mov     eax, dword [ebp-8H]                     ; 5DA8 _ 8B. 45, F8
        mov     dword [eax+6CH], 0                      ; 5DAB _ C7. 40, 6C, 00000000
        mov     eax, dword [ebp-8H]                     ; 5DB2 _ 8B. 45, F8
        mov     dword [eax+70H], 0                      ; 5DB5 _ C7. 40, 70, 00000000
        mov     eax, dword [ebp-8H]                     ; 5DBC _ 8B. 45, F8
        mov     dword [eax+74H], 0                      ; 5DBF _ C7. 40, 74, 00000000
        mov     eax, dword [ebp-8H]                     ; 5DC6 _ 8B. 45, F8
        mov     dword [eax+80H], 0                      ; 5DC9 _ C7. 80, 00000080, 00000000
        mov     eax, dword [ebp-8H]                     ; 5DD3 _ 8B. 45, F8
        mov     dword [eax+84H], 0                      ; 5DD6 _ C7. 80, 00000084, 00000000
        mov     eax, dword [ebp-8H]                     ; 5DE0 _ 8B. 45, F8
        mov     dword [eax+88H], 0                      ; 5DE3 _ C7. 80, 00000088, 00000000
        mov     eax, dword [ebp-8H]                     ; 5DED _ 8B. 45, F8
        mov     dword [eax+34H], 0                      ; 5DF0 _ C7. 40, 34, 00000000
        mov     eax, dword [ebp-8H]                     ; 5DF7 _ 8B. 45, F8
        mov     dword [eax+90H], 1073741824             ; 5DFA _ C7. 80, 00000090, 40000000
        mov     eax, dword [ebp-8H]                     ; 5E04 _ 8B. 45, F8
        jmp     ?_352                                   ; 5E07 _ EB, 13

?_350:  add     dword [ebp-4H], 1                       ; 5E09 _ 83. 45, FC, 01
?_351:  cmp     dword [ebp-4H], 9                       ; 5E0D _ 83. 7D, FC, 09
        jle     ?_349                                   ; 5E11 _ 0F 8E, FFFFFEFE
        mov     eax, 0                                  ; 5E17 _ B8, 00000000
?_352:  leave                                           ; 5E1C _ C9
        ret                                             ; 5E1D _ C3
; _task_alloc End of function

_task_run:; Function begin
        push    ebp                                     ; 5E1E _ 55
        mov     ebp, esp                                ; 5E1F _ 89. E5
        sub     esp, 24                                 ; 5E21 _ 83. EC, 18
        cmp     dword [ebp+0CH], 0                      ; 5E24 _ 83. 7D, 0C, 00
        jns     ?_353                                   ; 5E28 _ 79, 09
        mov     eax, dword [ebp+8H]                     ; 5E2A _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 5E2D _ 8B. 40, 0C
        mov     dword [ebp+0CH], eax                    ; 5E30 _ 89. 45, 0C
?_353:  cmp     dword [ebp+10H], 0                      ; 5E33 _ 83. 7D, 10, 00
        jle     ?_354                                   ; 5E37 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 5E39 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 5E3C _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 5E3F _ 89. 50, 08
?_354:  mov     eax, dword [ebp+8H]                     ; 5E42 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 5E45 _ 8B. 40, 04
        cmp     eax, 2                                  ; 5E48 _ 83. F8, 02
        jnz     ?_355                                   ; 5E4B _ 75, 16
        mov     eax, dword [ebp+8H]                     ; 5E4D _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 5E50 _ 8B. 40, 0C
        cmp     dword [ebp+0CH], eax                    ; 5E53 _ 39. 45, 0C
        jz      ?_355                                   ; 5E56 _ 74, 0B
        mov     eax, dword [ebp+8H]                     ; 5E58 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 5E5B _ 89. 04 24
        call    _task_remove                            ; 5E5E _ E8, 000001FD
?_355:  mov     eax, dword [ebp+8H]                     ; 5E63 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 5E66 _ 8B. 40, 04
        cmp     eax, 2                                  ; 5E69 _ 83. F8, 02
        jz      ?_356                                   ; 5E6C _ 74, 14
        mov     eax, dword [ebp+8H]                     ; 5E6E _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 5E71 _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 5E74 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 5E77 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 5E7A _ 89. 04 24
        call    _task_add                               ; 5E7D _ E8, 00000192
?_356:  mov     eax, dword [_taskctl]                   ; 5E82 _ A1, 00000004(d)
        mov     dword [eax+4H], 1                       ; 5E87 _ C7. 40, 04, 00000001
        nop                                             ; 5E8E _ 90
        leave                                           ; 5E8F _ C9
        ret                                             ; 5E90 _ C3
; _task_run End of function

_task_switch:; Function begin
        push    ebp                                     ; 5E91 _ 55
        mov     ebp, esp                                ; 5E92 _ 89. E5
        sub     esp, 40                                 ; 5E94 _ 83. EC, 28
        mov     ecx, dword [_taskctl]                   ; 5E97 _ 8B. 0D, 00000004(d)
        mov     eax, dword [_taskctl]                   ; 5E9D _ A1, 00000004(d)
        mov     edx, dword [eax]                        ; 5EA2 _ 8B. 10
        mov     eax, edx                                ; 5EA4 _ 89. D0
        add     eax, eax                                ; 5EA6 _ 01. C0
        add     eax, edx                                ; 5EA8 _ 01. D0
        shl     eax, 4                                  ; 5EAA _ C1. E0, 04
        add     eax, ecx                                ; 5EAD _ 01. C8
        add     eax, 8                                  ; 5EAF _ 83. C0, 08
        mov     dword [ebp-0CH], eax                    ; 5EB2 _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 5EB5 _ 8B. 45, F4
        mov     edx, dword [eax+4H]                     ; 5EB8 _ 8B. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 5EBB _ 8B. 45, F4
        mov     eax, dword [eax+edx*4+8H]               ; 5EBE _ 8B. 44 90, 08
        mov     dword [ebp-10H], eax                    ; 5EC2 _ 89. 45, F0
        mov     eax, dword [ebp-0CH]                    ; 5EC5 _ 8B. 45, F4
        mov     eax, dword [eax+4H]                     ; 5EC8 _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 5ECB _ 8D. 50, 01
        mov     eax, dword [ebp-0CH]                    ; 5ECE _ 8B. 45, F4
        mov     dword [eax+4H], edx                     ; 5ED1 _ 89. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 5ED4 _ 8B. 45, F4
        mov     edx, dword [eax+4H]                     ; 5ED7 _ 8B. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 5EDA _ 8B. 45, F4
        mov     eax, dword [eax]                        ; 5EDD _ 8B. 00
        cmp     edx, eax                                ; 5EDF _ 39. C2
        jnz     ?_357                                   ; 5EE1 _ 75, 0A
        mov     eax, dword [ebp-0CH]                    ; 5EE3 _ 8B. 45, F4
        mov     dword [eax+4H], 0                       ; 5EE6 _ C7. 40, 04, 00000000
?_357:  mov     eax, dword [_taskctl]                   ; 5EED _ A1, 00000004(d)
        mov     eax, dword [eax+4H]                     ; 5EF2 _ 8B. 40, 04
        test    eax, eax                                ; 5EF5 _ 85. C0
        jz      ?_358                                   ; 5EF7 _ 74, 23
        call    _task_switchsub                         ; 5EF9 _ E8, 0000022F
        mov     ecx, dword [_taskctl]                   ; 5EFE _ 8B. 0D, 00000004(d)
        mov     eax, dword [_taskctl]                   ; 5F04 _ A1, 00000004(d)
        mov     edx, dword [eax]                        ; 5F09 _ 8B. 10
        mov     eax, edx                                ; 5F0B _ 89. D0
        add     eax, eax                                ; 5F0D _ 01. C0
        add     eax, edx                                ; 5F0F _ 01. D0
        shl     eax, 4                                  ; 5F11 _ C1. E0, 04
        add     eax, ecx                                ; 5F14 _ 01. C8
        add     eax, 8                                  ; 5F16 _ 83. C0, 08
        mov     dword [ebp-0CH], eax                    ; 5F19 _ 89. 45, F4
?_358:  mov     eax, dword [ebp-0CH]                    ; 5F1C _ 8B. 45, F4
        mov     edx, dword [eax+4H]                     ; 5F1F _ 8B. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 5F22 _ 8B. 45, F4
        mov     eax, dword [eax+edx*4+8H]               ; 5F25 _ 8B. 44 90, 08
        mov     dword [ebp-14H], eax                    ; 5F29 _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 5F2C _ 8B. 45, EC
        mov     eax, dword [eax+8H]                     ; 5F2F _ 8B. 40, 08
        mov     edx, eax                                ; 5F32 _ 89. C2
        mov     eax, dword [_task_timer]                       ; 5F34 _ A1, 00000000(d)
        mov     dword [esp+4H], edx                     ; 5F39 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 5F3D _ 89. 04 24
        call    _timer_settime                          ; 5F40 _ E8, 00000000(rel)
        mov     eax, dword [ebp-14H]                    ; 5F45 _ 8B. 45, EC
        cmp     eax, dword [ebp-10H]                    ; 5F48 _ 3B. 45, F0
        jz      ?_359                                   ; 5F4B _ 74, 1C
        cmp     dword [ebp-14H], 0                      ; 5F4D _ 83. 7D, EC, 00
        jz      ?_359                                   ; 5F51 _ 74, 16
        mov     eax, dword [ebp-14H]                    ; 5F53 _ 8B. 45, EC
        mov     eax, dword [eax]                        ; 5F56 _ 8B. 00
        mov     dword [esp+4H], eax                     ; 5F58 _ 89. 44 24, 04
        mov     dword [esp], 0                          ; 5F5C _ C7. 04 24, 00000000
        call    _farjmp                                 ; 5F63 _ E8, 00000000(rel)
        nop                                             ; 5F68 _ 90
?_359:  nop                                             ; 5F69 _ 90
        leave                                           ; 5F6A _ C9
        ret                                             ; 5F6B _ C3
; _task_switch End of function

_task_sleep:; Function begin
        push    ebp                                     ; 5F6C _ 55
        mov     ebp, esp                                ; 5F6D _ 89. E5
        sub     esp, 40                                 ; 5F6F _ 83. EC, 28
        mov     dword [ebp-10H], 0                      ; 5F72 _ C7. 45, F0, 00000000
        mov     dword [ebp-0CH], 0                      ; 5F79 _ C7. 45, F4, 00000000
        mov     eax, dword [ebp+8H]                     ; 5F80 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 5F83 _ 8B. 40, 04
        cmp     eax, 2                                  ; 5F86 _ 83. F8, 02
        jnz     ?_360                                   ; 5F89 _ 75, 51
        call    _task_now                               ; 5F8B _ E8, 00000051
        mov     dword [ebp-10H], eax                    ; 5F90 _ 89. 45, F0
        mov     eax, dword [ebp+8H]                     ; 5F93 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 5F96 _ 89. 04 24
        call    _task_remove                            ; 5F99 _ E8, 000000C2
        mov     dword [ebp-0CH], 1                      ; 5F9E _ C7. 45, F4, 00000001
        mov     eax, dword [ebp+8H]                     ; 5FA5 _ 8B. 45, 08
        cmp     eax, dword [ebp-10H]                    ; 5FA8 _ 3B. 45, F0
        jnz     ?_360                                   ; 5FAB _ 75, 2F
        call    _task_switchsub                         ; 5FAD _ E8, 0000017B
        call    _task_now                               ; 5FB2 _ E8, 0000002A
        mov     dword [ebp-10H], eax                    ; 5FB7 _ 89. 45, F0
        mov     dword [ebp-0CH], 2                      ; 5FBA _ C7. 45, F4, 00000002
        cmp     dword [ebp-10H], 0                      ; 5FC1 _ 83. 7D, F0, 00
        jz      ?_360                                   ; 5FC5 _ 74, 15
        mov     eax, dword [ebp-10H]                    ; 5FC7 _ 8B. 45, F0
        mov     eax, dword [eax]                        ; 5FCA _ 8B. 00
        mov     dword [esp+4H], eax                     ; 5FCC _ 89. 44 24, 04
        mov     dword [esp], 0                          ; 5FD0 _ C7. 04 24, 00000000
        call    _farjmp                                 ; 5FD7 _ E8, 00000000(rel)
?_360:  mov     eax, dword [ebp-0CH]                    ; 5FDC _ 8B. 45, F4
        leave                                           ; 5FDF _ C9
        ret                                             ; 5FE0 _ C3
; _task_sleep End of function

_task_now:; Function begin
        push    ebp                                     ; 5FE1 _ 55
        mov     ebp, esp                                ; 5FE2 _ 89. E5
        sub     esp, 16                                 ; 5FE4 _ 83. EC, 10
        mov     ecx, dword [_taskctl]                   ; 5FE7 _ 8B. 0D, 00000004(d)
        mov     eax, dword [_taskctl]                   ; 5FED _ A1, 00000004(d)
        mov     edx, dword [eax]                        ; 5FF2 _ 8B. 10
        mov     eax, edx                                ; 5FF4 _ 89. D0
        add     eax, eax                                ; 5FF6 _ 01. C0
        add     eax, edx                                ; 5FF8 _ 01. D0
        shl     eax, 4                                  ; 5FFA _ C1. E0, 04
        add     eax, ecx                                ; 5FFD _ 01. C8
        add     eax, 8                                  ; 5FFF _ 83. C0, 08
        mov     dword [ebp-4H], eax                     ; 6002 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 6005 _ 8B. 45, FC
        mov     edx, dword [eax+4H]                     ; 6008 _ 8B. 50, 04
        mov     eax, dword [ebp-4H]                     ; 600B _ 8B. 45, FC
        mov     eax, dword [eax+edx*4+8H]               ; 600E _ 8B. 44 90, 08
        leave                                           ; 6012 _ C9
        ret                                             ; 6013 _ C3
; _task_now End of function

_task_add:; Function begin
        push    ebp                                     ; 6014 _ 55
        mov     ebp, esp                                ; 6015 _ 89. E5
        sub     esp, 16                                 ; 6017 _ 83. EC, 10
        mov     ecx, dword [_taskctl]                   ; 601A _ 8B. 0D, 00000004(d)
        mov     eax, dword [ebp+8H]                     ; 6020 _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 6023 _ 8B. 50, 0C
        mov     eax, edx                                ; 6026 _ 89. D0
        add     eax, eax                                ; 6028 _ 01. C0
        add     eax, edx                                ; 602A _ 01. D0
        shl     eax, 4                                  ; 602C _ C1. E0, 04
        add     eax, ecx                                ; 602F _ 01. C8
        add     eax, 8                                  ; 6031 _ 83. C0, 08
        mov     dword [ebp-4H], eax                     ; 6034 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 6037 _ 8B. 45, FC
        mov     edx, dword [eax]                        ; 603A _ 8B. 10
        mov     eax, dword [ebp-4H]                     ; 603C _ 8B. 45, FC
        mov     ecx, dword [ebp+8H]                     ; 603F _ 8B. 4D, 08
        mov     dword [eax+edx*4+8H], ecx               ; 6042 _ 89. 4C 90, 08
        mov     eax, dword [ebp-4H]                     ; 6046 _ 8B. 45, FC
        mov     eax, dword [eax]                        ; 6049 _ 8B. 00
        lea     edx, [eax+1H]                           ; 604B _ 8D. 50, 01
        mov     eax, dword [ebp-4H]                     ; 604E _ 8B. 45, FC
        mov     dword [eax], edx                        ; 6051 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 6053 _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 6056 _ C7. 40, 04, 00000002
        nop                                             ; 605D _ 90
        leave                                           ; 605E _ C9
        ret                                             ; 605F _ C3
; _task_add End of function

_task_remove:; Function begin
        push    ebp                                     ; 6060 _ 55
        mov     ebp, esp                                ; 6061 _ 89. E5
        sub     esp, 16                                 ; 6063 _ 83. EC, 10
        mov     ecx, dword [_taskctl]                   ; 6066 _ 8B. 0D, 00000004(d)
        mov     eax, dword [ebp+8H]                     ; 606C _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 606F _ 8B. 50, 0C
        mov     eax, edx                                ; 6072 _ 89. D0
        add     eax, eax                                ; 6074 _ 01. C0
        add     eax, edx                                ; 6076 _ 01. D0
        shl     eax, 4                                  ; 6078 _ C1. E0, 04
        add     eax, ecx                                ; 607B _ 01. C8
        add     eax, 8                                  ; 607D _ 83. C0, 08
        mov     dword [ebp-8H], eax                     ; 6080 _ 89. 45, F8
        mov     dword [ebp-4H], 0                       ; 6083 _ C7. 45, FC, 00000000
        jmp     ?_363                                   ; 608A _ EB, 23

?_361:  mov     eax, dword [ebp-8H]                     ; 608C _ 8B. 45, F8
        mov     edx, dword [ebp-4H]                     ; 608F _ 8B. 55, FC
        mov     eax, dword [eax+edx*4+8H]               ; 6092 _ 8B. 44 90, 08
        cmp     dword [ebp+8H], eax                     ; 6096 _ 39. 45, 08
        jnz     ?_362                                   ; 6099 _ 75, 10
        mov     eax, dword [ebp-8H]                     ; 609B _ 8B. 45, F8
        mov     edx, dword [ebp-4H]                     ; 609E _ 8B. 55, FC
        mov     dword [eax+edx*4+8H], 0                 ; 60A1 _ C7. 44 90, 08, 00000000
        jmp     ?_364                                   ; 60A9 _ EB, 0E

?_362:  add     dword [ebp-4H], 1                       ; 60AB _ 83. 45, FC, 01
?_363:  mov     eax, dword [ebp-8H]                     ; 60AF _ 8B. 45, F8
        mov     eax, dword [eax]                        ; 60B2 _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 60B4 _ 39. 45, FC
        jl      ?_361                                   ; 60B7 _ 7C, D3
?_364:  mov     eax, dword [ebp-8H]                     ; 60B9 _ 8B. 45, F8
        mov     eax, dword [eax]                        ; 60BC _ 8B. 00
        lea     edx, [eax-1H]                           ; 60BE _ 8D. 50, FF
        mov     eax, dword [ebp-8H]                     ; 60C1 _ 8B. 45, F8
        mov     dword [eax], edx                        ; 60C4 _ 89. 10
        mov     eax, dword [ebp-8H]                     ; 60C6 _ 8B. 45, F8
        mov     eax, dword [eax+4H]                     ; 60C9 _ 8B. 40, 04
        cmp     dword [ebp-4H], eax                     ; 60CC _ 39. 45, FC
        jge     ?_365                                   ; 60CF _ 7D, 0F
        mov     eax, dword [ebp-8H]                     ; 60D1 _ 8B. 45, F8
        mov     eax, dword [eax+4H]                     ; 60D4 _ 8B. 40, 04
        lea     edx, [eax-1H]                           ; 60D7 _ 8D. 50, FF
        mov     eax, dword [ebp-8H]                     ; 60DA _ 8B. 45, F8
        mov     dword [eax+4H], edx                     ; 60DD _ 89. 50, 04
?_365:  mov     eax, dword [ebp-8H]                     ; 60E0 _ 8B. 45, F8
        mov     edx, dword [eax+4H]                     ; 60E3 _ 8B. 50, 04
        mov     eax, dword [ebp-8H]                     ; 60E6 _ 8B. 45, F8
        mov     eax, dword [eax]                        ; 60E9 _ 8B. 00
        cmp     edx, eax                                ; 60EB _ 39. C2
        jl      ?_366                                   ; 60ED _ 7C, 0A
        mov     eax, dword [ebp-8H]                     ; 60EF _ 8B. 45, F8
        mov     dword [eax+4H], 0                       ; 60F2 _ C7. 40, 04, 00000000
?_366:  mov     eax, dword [ebp+8H]                     ; 60F9 _ 8B. 45, 08
        mov     dword [eax+4H], 1                       ; 60FC _ C7. 40, 04, 00000001
        jmp     ?_368                                   ; 6103 _ EB, 1B

?_367:  mov     eax, dword [ebp-4H]                     ; 6105 _ 8B. 45, FC
        lea     edx, [eax+1H]                           ; 6108 _ 8D. 50, 01
        mov     eax, dword [ebp-8H]                     ; 610B _ 8B. 45, F8
        mov     ecx, dword [eax+edx*4+8H]               ; 610E _ 8B. 4C 90, 08
        mov     eax, dword [ebp-8H]                     ; 6112 _ 8B. 45, F8
        mov     edx, dword [ebp-4H]                     ; 6115 _ 8B. 55, FC
        mov     dword [eax+edx*4+8H], ecx               ; 6118 _ 89. 4C 90, 08
        add     dword [ebp-4H], 1                       ; 611C _ 83. 45, FC, 01
?_368:  mov     eax, dword [ebp-8H]                     ; 6120 _ 8B. 45, F8
        mov     eax, dword [eax]                        ; 6123 _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 6125 _ 39. 45, FC
        jl      ?_367                                   ; 6128 _ 7C, DB
        nop                                             ; 612A _ 90
        leave                                           ; 612B _ C9
        ret                                             ; 612C _ C3
; _task_remove End of function

_task_switchsub:; Function begin
        push    ebp                                     ; 612D _ 55
        mov     ebp, esp                                ; 612E _ 89. E5
        sub     esp, 16                                 ; 6130 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 6133 _ C7. 45, FC, 00000000
        jmp     ?_370                                   ; 613A _ EB, 21

?_369:  mov     ecx, dword [_taskctl]                   ; 613C _ 8B. 0D, 00000004(d)
        mov     edx, dword [ebp-4H]                     ; 6142 _ 8B. 55, FC
        mov     eax, edx                                ; 6145 _ 89. D0
        add     eax, eax                                ; 6147 _ 01. C0
        add     eax, edx                                ; 6149 _ 01. D0
        shl     eax, 4                                  ; 614B _ C1. E0, 04
        add     eax, ecx                                ; 614E _ 01. C8
        add     eax, 8                                  ; 6150 _ 83. C0, 08
        mov     eax, dword [eax]                        ; 6153 _ 8B. 00
        test    eax, eax                                ; 6155 _ 85. C0
        jg      ?_371                                   ; 6157 _ 7F, 0C
        add     dword [ebp-4H], 1                       ; 6159 _ 83. 45, FC, 01
?_370:  cmp     dword [ebp-4H], 9                       ; 615D _ 83. 7D, FC, 09
        jle     ?_369                                   ; 6161 _ 7E, D9
        jmp     ?_372                                   ; 6163 _ EB, 01

?_371:  nop                                             ; 6165 _ 90
?_372:  mov     eax, dword [_taskctl]                   ; 6166 _ A1, 00000004(d)
        mov     edx, dword [ebp-4H]                     ; 616B _ 8B. 55, FC
        mov     dword [eax], edx                        ; 616E _ 89. 10
        mov     eax, dword [_taskctl]                   ; 6170 _ A1, 00000004(d)
        mov     dword [eax+4H], 0                       ; 6175 _ C7. 40, 04, 00000000
        nop                                             ; 617C _ 90
        leave                                           ; 617D _ C9
        ret                                             ; 617E _ C3
; _task_switchsub End of function

_send_message:; Function begin
        push    ebp                                     ; 617F _ 55
        mov     ebp, esp                                ; 6180 _ 89. E5
        sub     esp, 24                                 ; 6182 _ 83. EC, 18
        mov     eax, dword [ebp+10H]                    ; 6185 _ 8B. 45, 10
        movzx   eax, al                                 ; 6188 _ 0F B6. C0
        mov     edx, dword [ebp+0CH]                    ; 618B _ 8B. 55, 0C
        add     edx, 16                                 ; 618E _ 83. C2, 10
        mov     dword [esp+4H], eax                     ; 6191 _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 6195 _ 89. 14 24
        call    _fifo8_put                              ; 6198 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 619D _ 8B. 45, 08
        mov     dword [esp], eax                        ; 61A0 _ 89. 04 24
        call    _task_sleep                             ; 61A3 _ E8, FFFFFDC4
        nop                                             ; 61A8 _ 90
        leave                                           ; 61A9 _ C9
        ret                                             ; 61AA _ C3
; _send_message End of function

        nop                                             ; 61AB _ 90


_strcmp:
        push    ebp                                     ; 61AC _ 55
        mov     ebp, esp                                ; 61AD _ 89. E5
        sub     esp, 16                                 ; 61AF _ 83. EC, 10
        cmp     dword [ebp+8H], 0                       ; 61B2 _ 83. 7D, 08, 00
        jz      ?_373                                   ; 61B6 _ 74, 06
        cmp     dword [ebp+0CH], 0                      ; 61B8 _ 83. 7D, 0C, 00
        jnz     ?_374                                   ; 61BC _ 75, 0A
?_373:  mov     eax, 0                                  ; 61BE _ B8, 00000000
        jmp     ?_381                                   ; 61C3 _ E9, 0000009B

?_374:  mov     dword [ebp-4H], 0                       ; 61C8 _ C7. 45, FC, 00000000
        jmp     ?_377                                   ; 61CF _ EB, 25

?_375:  mov     edx, dword [ebp-4H]                     ; 61D1 _ 8B. 55, FC
        mov     eax, dword [ebp+8H]                     ; 61D4 _ 8B. 45, 08
        add     eax, edx                                ; 61D7 _ 01. D0
        movzx   edx, byte [eax]                         ; 61D9 _ 0F B6. 10
        mov     ecx, dword [ebp-4H]                     ; 61DC _ 8B. 4D, FC
        mov     eax, dword [ebp+0CH]                    ; 61DF _ 8B. 45, 0C
        add     eax, ecx                                ; 61E2 _ 01. C8
        movzx   eax, byte [eax]                         ; 61E4 _ 0F B6. 00
        cmp     dl, al                                  ; 61E7 _ 38. C2
        jz      ?_376                                   ; 61E9 _ 74, 07
        mov     eax, 0                                  ; 61EB _ B8, 00000000
        jmp     ?_381                                   ; 61F0 _ EB, 71

?_376:  add     dword [ebp-4H], 1                       ; 61F2 _ 83. 45, FC, 01
?_377:  mov     edx, dword [ebp-4H]                     ; 61F6 _ 8B. 55, FC
        mov     eax, dword [ebp+8H]                     ; 61F9 _ 8B. 45, 08
        add     eax, edx                                ; 61FC _ 01. D0
        movzx   eax, byte [eax]                         ; 61FE _ 0F B6. 00
        test    al, al                                  ; 6201 _ 84. C0
        jz      ?_378                                   ; 6203 _ 74, 0F
        mov     edx, dword [ebp-4H]                     ; 6205 _ 8B. 55, FC
        mov     eax, dword [ebp+0CH]                    ; 6208 _ 8B. 45, 0C
        add     eax, edx                                ; 620B _ 01. D0
        movzx   eax, byte [eax]                         ; 620D _ 0F B6. 00
        test    al, al                                  ; 6210 _ 84. C0
        jnz     ?_375                                   ; 6212 _ 75, BD
?_378:  mov     edx, dword [ebp-4H]                     ; 6214 _ 8B. 55, FC
        mov     eax, dword [ebp+8H]                     ; 6217 _ 8B. 45, 08
        add     eax, edx                                ; 621A _ 01. D0
        movzx   eax, byte [eax]                         ; 621C _ 0F B6. 00
        test    al, al                                  ; 621F _ 84. C0
        jnz     ?_379                                   ; 6221 _ 75, 16
        mov     edx, dword [ebp-4H]                     ; 6223 _ 8B. 55, FC
        mov     eax, dword [ebp+0CH]                    ; 6226 _ 8B. 45, 0C
        add     eax, edx                                ; 6229 _ 01. D0
        movzx   eax, byte [eax]                         ; 622B _ 0F B6. 00
        test    al, al                                  ; 622E _ 84. C0
        jz      ?_379                                   ; 6230 _ 74, 07
        mov     eax, 0                                  ; 6232 _ B8, 00000000
        jmp     ?_381                                   ; 6237 _ EB, 2A

?_379:  mov     edx, dword [ebp-4H]                     ; 6239 _ 8B. 55, FC
        mov     eax, dword [ebp+8H]                     ; 623C _ 8B. 45, 08
        add     eax, edx                                ; 623F _ 01. D0
        movzx   eax, byte [eax]                         ; 6241 _ 0F B6. 00
        test    al, al                                  ; 6244 _ 84. C0
        jz      ?_380                                   ; 6246 _ 74, 16
        mov     edx, dword [ebp-4H]                     ; 6248 _ 8B. 55, FC
        mov     eax, dword [ebp+0CH]                    ; 624B _ 8B. 45, 0C
        add     eax, edx                                ; 624E _ 01. D0
        movzx   eax, byte [eax]                         ; 6250 _ 0F B6. 00
        test    al, al                                  ; 6253 _ 84. C0
        jz      ?_380                                   ; 6255 _ 74, 07
        mov     eax, 0                                  ; 6257 _ B8, 00000000
        jmp     ?_381                                   ; 625C _ EB, 05

?_380:  mov     eax, 1                                  ; 625E _ B8, 00000001
?_381:  leave                                           ; 6263 _ C9
        ret                                             ; 6264 _ C3

        nop                                             ; 6265 _ 90
        nop                                             ; 6266 _ 90
        nop                                             ; 6267 _ 90



_memman:                                                ; dword
        dd 00100000H, 00000000H                         ; 0000 _ 1048576 0 
        dd 00000000H, 00000000H                         ; 0008 _ 0 0 
        dd 00000000H, 00000000H                         ; 0010 _ 0 0 
        dd 00000000H, 00000000H                         ; 0018 _ 0 0 

_keytable:                                              ; byte
        db 00H, 00H, 31H, 32H, 33H, 34H, 35H, 36H       ; 0020 _ ..123456
        db 37H, 38H, 39H, 30H, 2DH, 5EH, 00H, 00H       ; 0028 _ 7890-^..
        db 51H, 57H, 45H, 52H, 54H, 59H, 55H, 49H       ; 0030 _ QWERTYUI
        db 4FH, 50H, 40H, 5BH, 00H, 00H, 41H, 53H       ; 0038 _ OP@[..AS
        db 44H, 46H, 47H, 48H, 4AH, 4BH, 4CH, 3BH       ; 0040 _ DFGHJKL;
        db 3AH, 00H, 00H, 5DH, 5AH, 58H, 43H, 56H       ; 0048 _ :..]ZXCV
        db 42H, 4EH, 4DH, 2CH, 2EH, 2FH, 00H, 2AH       ; 0050 _ BNM,./.*
        db 00H, 20H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0058 _ . ......
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 37H       ; 0060 _ .......7
        db 38H, 39H, 2DH, 34H, 35H, 36H, 2BH, 31H       ; 0068 _ 89-456+1
        db 32H, 33H, 30H, 2EH, 00H, 00H, 00H, 00H       ; 0070 _ 230.....
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0078 _ ........

_keytable1:                                             ; byte
        db 00H, 00H, 21H, 40H, 23H, 24H, 25H, 5EH       ; 0080 _ ..!@#$%^
        db 26H, 2AH, 28H, 29H, 2DH, 3DH, 7EH, 00H       ; 0088 _ &*()-=~.
        db 00H, 51H, 57H, 45H, 52H, 54H, 59H, 55H       ; 0090 _ .QWERTYU
        db 49H, 4FH, 50H, 60H, 7BH, 00H, 00H, 41H       ; 0098 _ IOP`{..A
        db 53H, 44H, 46H, 47H, 48H, 4AH, 4BH, 4CH       ; 00A0 _ SDFGHJKL
        db 2BH, 2AH, 00H, 00H, 7DH, 5AH, 58H, 43H       ; 00A8 _ +*..}ZXC
        db 56H, 42H, 4EH, 4DH, 3CH, 3EH, 3FH, 00H       ; 00B0 _ VBNM<>?.
        db 2AH, 00H, 20H, 00H, 00H, 00H, 00H, 00H       ; 00B8 _ *. .....
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00C0 _ ........
        db 37H, 38H, 39H, 2DH, 34H, 35H, 36H, 2BH       ; 00C8 _ 789-456+
        db 31H, 32H, 33H, 30H, 2EH, 00H, 00H, 00H       ; 00D0 _ 1230....
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00D8 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00E0 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00E8 _ ........
        db 00H, 00H, 00H, 00H, 5FH, 00H, 00H, 00H       ; 00F0 _ ...._...
        db 00H, 00H, 00H, 00H, 00H, 00H, 7CH, 00H       ; 00F8 _ ......|.
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0100 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0108 _ ........

_keyval:                                                ; byte
        db 30H, 58H                                     ; 0110 _ 0X

?_382:  db 00H                                          ; 0112 _ .

?_383:  db 00H, 00H, 00H, 00H, 00H                      ; 0113 _ .....

_mmx:   dd 0FFFFFFFFH                                   ; 0118 _ -1 

_mmy:   dd 0FFFFFFFFH                                   ; 011C _ -1 

_KEY_CONTROL:                                           ; byte
        db 1DH, 00H, 00H, 00H                           ; 0120 _ ....

_show_console_window:                                   ; byte
        db 01H, 00H, 00H, 00H                           ; 0124 _ ....

_console_pos:                                           ; byte
        db 0F0H, 00H, 00H, 00H, 00H, 00H, 00H, 00H      ; 0128 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0130 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0138 _ ........

_table_rgb.2655:                                        ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0140 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0148 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0150 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0158 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 0160 _ ........
        db 00H, 84H, 00H, 84H, 84H, 84H, 84H, 84H       ; 0168 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0170 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0178 _ ........

_cursor.2715:                                           ; byte
        db 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH       ; 0180 _ ********
        db 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2EH, 2EH       ; 0188 _ ******..
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 0190 _ *OOOOOOO
        db 4FH, 4FH, 4FH, 4FH, 2AH, 2EH, 2EH, 2EH       ; 0198 _ OOOO*...
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 01A0 _ *OOOOOOO
        db 4FH, 4FH, 4FH, 2AH, 2EH, 2EH, 2EH, 2EH       ; 01A8 _ OOO*....
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 01B0 _ *OOOOOOO
        db 4FH, 4FH, 2AH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 01B8 _ OO*.....
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 01C0 _ *OOOOOOO
        db 4FH, 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 01C8 _ O*......
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 01D0 _ *OOOOOOO
        db 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 01D8 _ *.......
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 01E0 _ *OOOOOOO
        db 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 01E8 _ *.......
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 01F0 _ *OOOOOOO
        db 4FH, 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 01F8 _ O*......
        db 2AH, 4FH, 4FH, 4FH, 4FH, 2AH, 2AH, 4FH       ; 0200 _ *OOOO**O
        db 4FH, 4FH, 2AH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0208 _ OO*.....
        db 2AH, 4FH, 4FH, 4FH, 2AH, 2EH, 2EH, 2AH       ; 0210 _ *OOO*..*
        db 4FH, 4FH, 4FH, 2AH, 2EH, 2EH, 2EH, 2EH       ; 0218 _ OOO*....
        db 2AH, 4FH, 4FH, 2AH, 2EH, 2EH, 2EH, 2EH       ; 0220 _ *OO*....
        db 2AH, 4FH, 4FH, 4FH, 2AH, 2EH, 2EH, 2EH       ; 0228 _ *OOO*...
        db 2AH, 4FH, 2AH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0230 _ *O*.....
        db 2EH, 2AH, 4FH, 4FH, 4FH, 2AH, 2EH, 2EH       ; 0238 _ .*OOO*..
        db 2AH, 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0240 _ **......
        db 2EH, 2EH, 2AH, 4FH, 4FH, 4FH, 2AH, 2EH       ; 0248 _ ..*OOO*.
        db 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0250 _ *.......
        db 2EH, 2EH, 2EH, 2AH, 4FH, 4FH, 4FH, 2AH       ; 0258 _ ...*OOO*
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0260 _ ........
        db 2EH, 2EH, 2EH, 2EH, 2AH, 4FH, 4FH, 2AH       ; 0268 _ ....*OO*
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0270 _ ........
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2AH, 2AH, 2AH       ; 0278 _ .....***

_closebtn.2834:                                         ; byte
        db 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 0280 _ OOOOOOOO
        db 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 40H       ; 0288 _ OOOOOOO@
        db 4FH, 51H, 51H, 51H, 51H, 51H, 51H, 51H       ; 0290 _ OQQQQQQQ
        db 51H, 51H, 51H, 51H, 51H, 51H, 24H, 40H       ; 0298 _ QQQQQQ$@
        db 4FH, 51H, 51H, 51H, 51H, 51H, 51H, 51H       ; 02A0 _ OQQQQQQQ
        db 51H, 51H, 51H, 51H, 51H, 51H, 24H, 40H       ; 02A8 _ QQQQQQ$@
        db 4FH, 51H, 51H, 51H, 40H, 40H, 51H, 51H       ; 02B0 _ OQQQ@@QQ
        db 51H, 51H, 40H, 40H, 51H, 51H, 24H, 40H       ; 02B8 _ QQ@@QQ$@
        db 4FH, 51H, 51H, 51H, 51H, 40H, 40H, 51H       ; 02C0 _ OQQQQ@@Q
        db 51H, 40H, 40H, 51H, 51H, 51H, 24H, 40H       ; 02C8 _ Q@@QQQ$@
        db 4FH, 51H, 51H, 51H, 51H, 51H, 40H, 40H       ; 02D0 _ OQQQQQ@@
        db 40H, 40H, 51H, 51H, 51H, 51H, 24H, 40H       ; 02D8 _ @@QQQQ$@
        db 4FH, 51H, 51H, 51H, 51H, 51H, 51H, 40H       ; 02E0 _ OQQQQQQ@
        db 40H, 51H, 51H, 51H, 51H, 51H, 24H, 40H       ; 02E8 _ @QQQQQ$@
        db 4FH, 51H, 51H, 51H, 51H, 51H, 40H, 40H       ; 02F0 _ OQQQQQ@@
        db 40H, 40H, 51H, 51H, 51H, 51H, 24H, 40H       ; 02F8 _ @@QQQQ$@
        db 4FH, 51H, 51H, 51H, 51H, 40H, 40H, 51H       ; 0300 _ OQQQQ@@Q
        db 51H, 40H, 40H, 51H, 51H, 51H, 24H, 40H       ; 0308 _ Q@@QQQ$@
        db 4FH, 51H, 51H, 51H, 40H, 40H, 51H, 51H       ; 0310 _ OQQQ@@QQ
        db 51H, 51H, 40H, 40H, 51H, 51H, 24H, 40H       ; 0318 _ QQ@@QQ$@
        db 4FH, 51H, 51H, 51H, 51H, 51H, 51H, 51H       ; 0320 _ OQQQQQQQ
        db 51H, 51H, 51H, 51H, 51H, 51H, 24H, 40H       ; 0328 _ QQQQQQ$@
        db 4FH, 51H, 51H, 51H, 51H, 51H, 51H, 51H       ; 0330 _ OQQQQQQQ
        db 51H, 51H, 51H, 51H, 51H, 51H, 24H, 40H       ; 0338 _ QQQQQQ$@
        db 4FH, 24H, 24H, 24H, 24H, 24H, 24H, 24H       ; 0340 _ O$$$$$$$
        db 24H, 24H, 24H, 24H, 24H, 24H, 24H, 40H       ; 0348 _ $$$$$$$@
        db 40H, 40H, 40H, 40H, 40H, 40H, 40H, 40H       ; 0350 _ @@@@@@@@
        db 40H, 40H, 40H, 40H, 40H, 40H, 40H, 40H       ; 0358 _ @@@@@@@@


?_384:                                                  
        db 63H, 6FH, 75H, 6EH, 74H, 65H, 72H, 00H       ; 0000 _ counter.

?_385:                                                  ; byte
        db 74H, 61H, 73H, 6BH, 5FH, 61H, 00H            ; 0008 _ task_a.

?_386:                                                  ; byte
        db 63H, 6FH, 6EH, 73H, 6FH, 6CH, 65H, 00H       ; 000F _ console.

?_387:                                                  ; byte
        db 20H, 00H                                     ; 0017 _  .

?_388:                                                  ; byte
        db 66H, 72H, 65H, 65H, 20H, 00H                 ; 0019 _ free .

?_389:                                                  ; byte
        db 20H, 4BH, 42H, 00H                           ; 001F _  KB.

?_390:                                                  ; byte
        db 3EH, 00H                                     ; 0023 _ >.

?_391:                                                  ; byte
        db 6DH, 65H, 6DH, 00H                           ; 0025 _ mem.

?_392:                                                  ; byte
        db 63H, 6CH, 73H, 00H                           ; 0029 _ cls.

?_393:                                                  ; byte
        db 63H, 6FH, 6CH, 6FH, 72H, 00H                 ; 002D _ color.

?_394:                                                  ; byte
        db 61H, 62H, 63H, 2EH, 65H, 78H, 65H, 00H       ; 0033 _ abc.exe.

?_395:                                                  ; byte
        db 64H, 69H, 72H, 00H                           ; 003B _ dir.

?_396:                                                  ; byte
        db 65H, 78H, 69H, 74H, 00H                      ; 003F _ exit.

?_397:                                                  ; byte
        db 73H, 74H, 61H, 72H, 74H, 00H                 ; 0044 _ start.

?_398:                                                  ; byte
        db 6EH, 63H, 73H, 74H, 00H                      ; 004A _ ncst.

?_399:                                                  ; byte
        db 63H, 72H, 61H, 63H, 6BH, 00H                 ; 004F _ crack.

?_400:                                                  ; byte
        db 63H, 72H, 61H, 63H, 6BH, 2EH, 65H, 78H       ; 0055 _ crack.ex
        db 65H, 00H                                     ; 005D _ e.

?_401:                                                  ; byte
        db 6BH, 65H, 79H, 62H, 6FH, 61H, 72H, 64H       ; 005F _ keyboard
        db 00H                                          ; 0067 _ .

?_402:                                                  ; byte
        db 75H, 73H, 65H, 72H, 20H, 70H, 72H, 6FH       ; 0068 _ user pro
        db 63H, 00H                                     ; 0070 _ c.

?_403:                                                  ; byte
        db 70H, 61H, 67H, 65H, 20H, 69H, 73H, 3AH       ; 0072 _ page is:
        db 20H, 00H                                     ; 007A _  .

?_404:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 007C _ BaseAddr
        db 4CH, 3AH, 20H, 00H                           ; 0084 _ L: .

?_405:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0088 _ BaseAddr
        db 48H, 3AH, 20H, 00H                           ; 0090 _ H: .

?_406:                                                  ; byte
        db 6CH, 65H, 6EH, 67H, 74H, 68H, 4CH, 6FH       ; 0094 _ lengthLo
        db 77H, 3AH, 20H, 00H                           ; 009C _ w: .

?_407:                                                  ; byte
        db 49H, 4EH, 54H, 20H, 4FH, 43H, 00H            ; 00A0 _ INT OC.

?_408:                                                  ; byte
        db 53H, 74H, 61H, 63H, 6BH, 20H, 45H, 78H       ; 00A7 _ Stack Ex
        db 63H, 65H, 70H, 74H, 69H, 6FH, 6EH, 00H       ; 00AF _ ception.

?_409:                                                  ; byte
        db 45H, 49H, 50H, 20H, 3DH, 20H, 00H            ; 00B7 _ EIP = .

?_410:                                                  ; byte
        db 49H, 4EH, 54H, 20H, 30H, 44H, 20H, 00H       ; 00BE _ INT 0D .

?_411:                                                  ; byte
        db 47H, 65H, 6EH, 65H, 72H, 61H, 6CH, 20H       ; 00C6 _ General 
        db 50H, 72H, 6FH, 74H, 65H, 63H, 74H, 65H       ; 00CE _ Protecte
        db 64H, 20H, 45H, 78H, 63H, 65H, 70H, 74H       ; 00D6 _ d Except
        db 69H, 6FH, 6EH, 00H, 00H, 00H                 ; 00DE _ ion...


_key_shift:                                             
        resd    1                                       ; 0000

_caps_lock:                                             ; dword
        resd    1                                       ; 0004

_first_task_cons_selector:                              ; dword
        resd    1                                       ; 0008

_current_console:                                       ; dword
        resd    1                                       ; 000C

_console_count:                                         ; dword
        resd    1                                       ; 0010

_kernel_pos:                                            ; byte
        resb    4                                       ; 0014

_bootInfo:                                              ; dword
        resd    1                                       ; 0018

?_412:  resw    1                                       ; 001C

?_413:  resw    1                                       ; 001E

_keyinfo:                                               ; byte
        resb    24                                      ; 0020

?_414:  resd    1                                       ; 0038

_mouseinfo:                                             ; byte
        resb    36                                      ; 003C

_keybuf:                                                ; byte
        resb    32                                      ; 0060

_mousebuf:                                              ; byte
        resb    128                                     ; 0080

_mdec:                                                  ; byte
        resb    12                                      ; 0100

?_415:  resd    1                                       ; 010C

_timerinfo:                                             ; byte
        resb    28                                      ; 0110

_timerbuf:                                              ; byte
        resb    8                                       ; 012C

_mx:    resd    1                                       ; 0134

_my:    resd    1                                       ; 0138

_xsize: resd    1                                       ; 013C

_ysize: resd    1                                       ; 0140

_buf_back:                                              ; dword
        resd    7                                       ; 0144

_buf_mouse:                                             ; byte
        resb    256                                     ; 0160

_shtMsgBox:                                             ; dword
        resd    1                                       ; 0260

_shtctl: resd   1                                       ; 0264

_sht_back:                                              ; dword
        resd    1                                       ; 0268

_sht_mouse:                                             ; dword
        resd    1                                       ; 026C

_mouse_clicked_sht:                                     ; dword
        resd    1                                       ; 0270

_task_main:                                             ; dword
        resd    1                                       ; 0274

_current_console_task:                                  ; dword
        resd    1                                       ; 0278

_task_a.2371:                                           ; dword
        resd    1                                       ; 027C

_tss_a.2370:                                            ; byte
        resb    128                                     ; 0280

_tss_b.2369:                                            ; byte
        resb    104                                     ; 0300

_task_b.2359:                                           ; byte
        resb    12                                      ; 0368

_str.2763:                                              ; byte
        resb    1                                       ; 0374

?_416:  resb    9                                       ; 0375

?_417:  resb    2                                       ; 037E

_timerctl:                                              ; byte
        resb    8032                                    ; 0380

_task_timer:                                            ; byte
        resb    4                                       ; 22E0

_taskctl:                                               ; byte
        resb    4                                       ; 22E4


