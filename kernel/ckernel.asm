; Disassembly of file: ckernel.o
; Wed Aug 14 15:20:57 2019
; Mode: 32 bits
; Syntax: YASM/NASM
; Instruction set: Pentium Pro







_CMain:
        push    ebp                                     ; 0000 _ 55
        mov     ebp, esp                                ; 0001 _ 89. E5
        push    ebx                                     ; 0003 _ 53
        sub     esp, 132                                ; 0004 _ 81. EC, 00000084
        mov     dword [esp], _bootInfo                  ; 000A _ C7. 04 24, 00000014(d)
        call    _initBootInfo                           ; 0011 _ E8, 0000323D
        mov     eax, dword [_bootInfo]                  ; 0016 _ A1, 00000014(d)
        mov     dword [ebp-18H], eax                    ; 001B _ 89. 45, E8
        movzx   eax, word [?_411]                       ; 001E _ 0F B7. 05, 00000018(d)
        cwde                                            ; 0025 _ 98
        mov     dword [_xsize], eax                     ; 0026 _ A3, 0000013C(d)
        movzx   eax, word [?_412]                       ; 002B _ 0F B7. 05, 0000001A(d)
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
        mov     dword [esp], _keyinfo                   ; 011B _ C7. 04 24, 0000001C(d)
        call    _fifo8_init                             ; 0122 _ E8, 00000000(rel)
        mov     dword [esp+0CH], 0                      ; 0127 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], _mousebuf               ; 012F _ C7. 44 24, 08, 00000080(d)
        mov     dword [esp+4H], 128                     ; 0137 _ C7. 44 24, 04, 00000080
        mov     dword [esp], _mouseinfo                 ; 013F _ C7. 04 24, 00000038(d)
        call    _fifo8_init                             ; 0146 _ E8, 00000000(rel)
        call    _init_palette                           ; 014B _ E8, 00003124
        call    _init_keyboard                          ; 0150 _ E8, 000037C7
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
        call    _init_screen8                           ; 0281 _ E8, 0000273F
        mov     dword [esp+4H], 99                      ; 0286 _ C7. 44 24, 04, 00000063
        mov     dword [esp], _buf_mouse                 ; 028E _ C7. 04 24, 00000160(d)
        call    _init_mouse_cursor                      ; 0295 _ E8, 000033B0
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
        mov     dword [esp+4H], ?_385                   ; 032B _ C7. 44 24, 04, 00000000(d)
        mov     dword [esp], eax                        ; 0333 _ 89. 04 24
        call    _message_box                            ; 0336 _ E8, 00003A0C
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
        call    _enable_mouse                           ; 038A _ E8, 000035C8
        mov     eax, dword [_memman]                    ; 038F _ A1, 00000000(d)
        mov     dword [esp], eax                        ; 0394 _ 89. 04 24
        call    _task_init                              ; 0397 _ E8, 00000000(rel)
        mov     dword [_task_a.2368], eax               ; 039C _ A3, 0000027C(d)
        mov     eax, dword [_task_a.2368]               ; 03A1 _ A1, 0000027C(d)
        mov     dword [?_413], eax                      ; 03A6 _ A3, 00000034(d)
        mov     eax, dword [_task_a.2368]               ; 03AB _ A1, 0000027C(d)
        mov     dword [_task_main], eax                 ; 03B0 _ A3, 00000274(d)
        mov     eax, dword [_task_a.2368]               ; 03B5 _ A1, 0000027C(d)
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
?_001:  mov     dword [esp], _keyinfo                   ; 0466 _ C7. 04 24, 0000001C(d)
        call    _fifo8_status                           ; 046D _ E8, 00000000(rel)
        mov     ebx, eax                                ; 0472 _ 89. C3
        mov     dword [esp], _mouseinfo                 ; 0474 _ C7. 04 24, 00000038(d)
        call    _fifo8_status                           ; 047B _ E8, 00000000(rel)
        add     ebx, eax                                ; 0480 _ 01. C3
        mov     dword [esp], _timerinfo                 ; 0482 _ C7. 04 24, 00000110(d)
        call    _fifo8_status                           ; 0489 _ E8, 00000000(rel)
        add     eax, ebx                                ; 048E _ 01. D8
        test    eax, eax                                ; 0490 _ 85. C0
        jnz     ?_002                                   ; 0492 _ 75, 0A
        call    _io_sti                                 ; 0494 _ E8, 00000000(rel)
        jmp     ?_014                                   ; 0499 _ E9, 00000413

?_002:  mov     dword [esp], _keyinfo                   ; 049E _ C7. 04 24, 0000001C(d)
        call    _fifo8_status                           ; 04A5 _ E8, 00000000(rel)
        test    eax, eax                                ; 04AA _ 85. C0
        je      ?_013                                   ; 04AC _ 0F 84, 000003CE
        call    _io_sti                                 ; 04B2 _ E8, 00000000(rel)
        mov     dword [esp], _keyinfo                   ; 04B7 _ C7. 04 24, 0000001C(d)
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
        mov     dword [esp+8H], ?_386                   ; 05E4 _ C7. 44 24, 08, 00000008(d)
        mov     dword [esp+4H], edx                     ; 05EC _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 05F0 _ 89. 04 24
        call    _make_wtitle8                           ; 05F3 _ E8, 00003AFF
        mov     eax, dword [_current_console_task]      ; 05F8 _ A1, 00000278(d)
        test    eax, eax                                ; 05FD _ 85. C0
        jz      ?_008                                   ; 05FF _ 74, 2C
        mov     eax, dword [_current_console_task]      ; 0601 _ A1, 00000278(d)
        mov     edx, dword [eax+0B4H]                   ; 0606 _ 8B. 90, 000000B4
        mov     eax, dword [_shtctl]                    ; 060C _ A1, 00000264(d)
        mov     dword [esp+0CH], 1                      ; 0611 _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], ?_387                   ; 0619 _ C7. 44 24, 08, 0000000F(d)
        mov     dword [esp+4H], edx                     ; 0621 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0625 _ 89. 04 24
        call    _make_wtitle8                           ; 0628 _ E8, 00003ACA
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
        mov     dword [esp+8H], ?_386                   ; 0677 _ C7. 44 24, 08, 00000008(d)
        mov     dword [esp+4H], edx                     ; 067F _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0683 _ 89. 04 24
        call    _make_wtitle8                           ; 0686 _ E8, 00003A6C
        mov     eax, dword [_current_console_task]      ; 068B _ A1, 00000278(d)
        test    eax, eax                                ; 0690 _ 85. C0
        jz      ?_010                                   ; 0692 _ 74, 2C
        mov     eax, dword [_current_console_task]      ; 0694 _ A1, 00000278(d)
        mov     edx, dword [eax+0B4H]                   ; 0699 _ 8B. 90, 000000B4
        mov     eax, dword [_shtctl]                    ; 069F _ A1, 00000264(d)
        mov     dword [esp+0CH], 0                      ; 06A4 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], ?_387                   ; 06AC _ C7. 44 24, 08, 0000000F(d)
        mov     dword [esp+4H], edx                     ; 06B4 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 06B8 _ 89. 04 24
        call    _make_wtitle8                           ; 06BB _ E8, 00003A37
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
        call    _showString                             ; 07EC _ E8, 000025E4
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
        mov     dword [esp], _keyinfo                   ; 0861 _ C7. 04 24, 0000001C(d)
        call    _fifo8_status                           ; 0868 _ E8, 00000000(rel)
        test    eax, eax                                ; 086D _ 85. C0
        jnz     ?_014                                   ; 086F _ 75, 40
        mov     eax, dword [_task_a.2368]               ; 0871 _ A1, 0000027C(d)
        mov     dword [esp], eax                        ; 0876 _ 89. 04 24
        call    _task_sleep                             ; 0879 _ E8, 00000000(rel)
        jmp     ?_014                                   ; 087E _ EB, 31

?_013:  mov     dword [esp], _mouseinfo                 ; 0880 _ C7. 04 24, 00000038(d)
        call    _fifo8_status                           ; 0887 _ E8, 00000000(rel)
        test    eax, eax                                ; 088C _ 85. C0
        jz      ?_014                                   ; 088E _ 74, 21
        mov     ecx, dword [_sht_mouse]                 ; 0890 _ 8B. 0D, 0000026C(d)
        mov     edx, dword [_sht_back]                  ; 0896 _ 8B. 15, 00000268(d)
        mov     eax, dword [_shtctl]                    ; 089C _ A1, 00000264(d)
        mov     dword [esp+8H], ecx                     ; 08A1 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 08A5 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 08A9 _ 89. 04 24
        call    _show_mouse_info                        ; 08AC _ E8, 000025E3
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
        call    _boxfill8                               ; 09EF _ E8, 00002A85
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
        mov     eax, dword [_show_console_window]       ; 0BCF _ A1, 00000124(d)
        test    eax, eax                                ; 0BD4 _ 85. C0
        je      ?_039                                   ; 0BD6 _ 0F 84, 0000010D
        mov     eax, dword [_shtctl]                    ; 0BDC _ A1, 00000264(d)
        mov     dword [esp], eax                        ; 0BE1 _ 89. 04 24
        call    _sheet_alloc                            ; 0BE4 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 0BE9 _ 89. 45, F4
        mov     eax, dword [_memman]                    ; 0BEC _ A1, 00000000(d)
        mov     dword [esp+4H], 42240                   ; 0BF1 _ C7. 44 24, 04, 0000A500
        mov     dword [esp], eax                        ; 0BF9 _ 89. 04 24
        call    _memman_alloc_4k                        ; 0BFC _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 0C01 _ 89. 45, F0
        mov     dword [esp+10H], 99                     ; 0C04 _ C7. 44 24, 10, 00000063
        mov     dword [esp+0CH], 165                    ; 0C0C _ C7. 44 24, 0C, 000000A5
        mov     dword [esp+8H], 256                     ; 0C14 _ C7. 44 24, 08, 00000100
        mov     eax, dword [ebp-10H]                    ; 0C1C _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 0C1F _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 0C23 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 0C26 _ 89. 04 24
        call    _sheet_setbuf                           ; 0C29 _ E8, 00000000(rel)
        cmp     dword [ebp+8H], 0                       ; 0C2E _ 83. 7D, 08, 00
        jle     ?_037                                   ; 0C32 _ 7E, 26
        mov     eax, dword [_shtctl]                    ; 0C34 _ A1, 00000264(d)
        mov     dword [esp+0CH], 1                      ; 0C39 _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], ?_387                   ; 0C41 _ C7. 44 24, 08, 0000000F(d)
        mov     edx, dword [ebp-0CH]                    ; 0C49 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 0C4C _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0C50 _ 89. 04 24
        call    _make_window8                           ; 0C53 _ E8, 000031DA
        jmp     ?_038                                   ; 0C58 _ EB, 24

?_037:  mov     eax, dword [_shtctl]                    ; 0C5A _ A1, 00000264(d)
        mov     dword [esp+0CH], 0                      ; 0C5F _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], ?_387                   ; 0C67 _ C7. 44 24, 08, 0000000F(d)
        mov     edx, dword [ebp-0CH]                    ; 0C6F _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 0C72 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0C76 _ 89. 04 24
        call    _make_window8                           ; 0C79 _ E8, 000031B4
?_038:  mov     eax, dword [ebp-0CH]                    ; 0C7E _ 8B. 45, F4
        mov     ecx, dword [eax+8H]                     ; 0C81 _ 8B. 48, 08
        mov     eax, dword [ebp-0CH]                    ; 0C84 _ 8B. 45, F4
        mov     edx, dword [eax+4H]                     ; 0C87 _ 8B. 50, 04
        mov     eax, dword [_shtctl]                    ; 0C8A _ A1, 00000264(d)
        mov     dword [esp+14H], ecx                    ; 0C8F _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 0C93 _ 89. 54 24, 10
        mov     dword [esp+0CH], 0                      ; 0C97 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 0C9F _ C7. 44 24, 08, 00000000
        mov     edx, dword [ebp-0CH]                    ; 0CA7 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 0CAA _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0CAE _ 89. 04 24
        call    _sheet_refresh                          ; 0CB1 _ E8, 00000000(rel)
        mov     dword [esp+14H], 0                      ; 0CB6 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], 128                    ; 0CBE _ C7. 44 24, 10, 00000080
        mov     dword [esp+0CH], 240                    ; 0CC6 _ C7. 44 24, 0C, 000000F0
        mov     dword [esp+8H], 28                      ; 0CCE _ C7. 44 24, 08, 0000001C
        mov     dword [esp+4H], 8                       ; 0CD6 _ C7. 44 24, 04, 00000008
        mov     eax, dword [ebp-0CH]                    ; 0CDE _ 8B. 45, F4
        mov     dword [esp], eax                        ; 0CE1 _ 89. 04 24
        call    _make_textbox8                          ; 0CE4 _ E8, 0000354C
?_039:  call    _task_alloc                             ; 0CE9 _ E8, 00000000(rel)
        mov     dword [ebp-14H], eax                    ; 0CEE _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 0CF1 _ 8B. 45, EC
        mov     edx, dword [ebp-0CH]                    ; 0CF4 _ 8B. 55, F4
        mov     dword [eax+0B4H], edx                   ; 0CF7 _ 89. 90, 000000B4
        cmp     dword [ebp-0CH], 0                      ; 0CFD _ 83. 7D, F4, 00
        jz      ?_040                                   ; 0D01 _ 74, 09
        mov     eax, dword [ebp-0CH]                    ; 0D03 _ 8B. 45, F4
        mov     edx, dword [ebp-14H]                    ; 0D06 _ 8B. 55, EC
        mov     dword [eax+20H], edx                    ; 0D09 _ 89. 50, 20
?_040:  mov     eax, dword [_current_console_task]      ; 0D0C _ A1, 00000278(d)
        test    eax, eax                                ; 0D11 _ 85. C0
        je      ?_041                                   ; 0D13 _ 0F 84, 00000082
        cmp     dword [ebp-0CH], 0                      ; 0D19 _ 83. 7D, F4, 00
        jz      ?_041                                   ; 0D1D _ 74, 7C
        mov     eax, dword [_current_console_task]      ; 0D1F _ A1, 00000278(d)
        mov     edx, dword [eax+0B4H]                   ; 0D24 _ 8B. 90, 000000B4
        mov     eax, dword [_shtctl]                    ; 0D2A _ A1, 00000264(d)
        mov     dword [esp+0CH], 0                      ; 0D2F _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], ?_387                   ; 0D37 _ C7. 44 24, 08, 0000000F(d)
        mov     dword [esp+4H], edx                     ; 0D3F _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0D43 _ 89. 04 24
        call    _make_wtitle8                           ; 0D46 _ E8, 000033AC
        mov     eax, dword [_current_console_task]      ; 0D4B _ A1, 00000278(d)
        mov     eax, dword [eax+0B4H]                   ; 0D50 _ 8B. 80, 000000B4
        mov     ebx, dword [eax+8H]                     ; 0D56 _ 8B. 58, 08
        mov     eax, dword [_current_console_task]      ; 0D59 _ A1, 00000278(d)
        mov     eax, dword [eax+0B4H]                   ; 0D5E _ 8B. 80, 000000B4
        mov     ecx, dword [eax+4H]                     ; 0D64 _ 8B. 48, 04
        mov     eax, dword [_current_console_task]      ; 0D67 _ A1, 00000278(d)
        mov     edx, dword [eax+0B4H]                   ; 0D6C _ 8B. 90, 000000B4
        mov     eax, dword [_shtctl]                    ; 0D72 _ A1, 00000264(d)
        mov     dword [esp+14H], ebx                    ; 0D77 _ 89. 5C 24, 14
        mov     dword [esp+10H], ecx                    ; 0D7B _ 89. 4C 24, 10
        mov     dword [esp+0CH], 0                      ; 0D7F _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 0D87 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 0D8F _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0D93 _ 89. 04 24
        call    _sheet_refresh                          ; 0D96 _ E8, 00000000(rel)
?_041:  mov     eax, dword [ebp-14H]                    ; 0D9B _ 8B. 45, EC
        mov     dword [_current_console_task], eax      ; 0D9E _ A3, 00000278(d)
        call    _get_addr_code32                        ; 0DA3 _ E8, 00000000(rel)
        mov     dword [ebp-18H], eax                    ; 0DA8 _ 89. 45, E8
        mov     eax, dword [ebp-14H]                    ; 0DAB _ 8B. 45, EC
        mov     dword [eax+8CH], 0                      ; 0DAE _ C7. 80, 0000008C, 00000000
        mov     eax, dword [ebp-14H]                    ; 0DB8 _ 8B. 45, EC
        mov     dword [eax+90H], 1073741824             ; 0DBB _ C7. 80, 00000090, 40000000
        mov     eax, dword [ebp-18H]                    ; 0DC5 _ 8B. 45, E8
        neg     eax                                     ; 0DC8 _ F7. D8
        add     eax, _console_task                      ; 0DCA _ 05, 00001A17(d)
        mov     edx, eax                                ; 0DCF _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 0DD1 _ 8B. 45, EC
        mov     dword [eax+4CH], edx                    ; 0DD4 _ 89. 50, 4C
        mov     eax, dword [ebp-14H]                    ; 0DD7 _ 8B. 45, EC
        mov     dword [eax+74H], 0                      ; 0DDA _ C7. 40, 74, 00000000
        mov     eax, dword [ebp-14H]                    ; 0DE1 _ 8B. 45, EC
        mov     dword [eax+78H], 8                      ; 0DE4 _ C7. 40, 78, 00000008
        mov     eax, dword [ebp-14H]                    ; 0DEB _ 8B. 45, EC
        mov     dword [eax+7CH], 32                     ; 0DEE _ C7. 40, 7C, 00000020
        mov     eax, dword [ebp-14H]                    ; 0DF5 _ 8B. 45, EC
        mov     dword [eax+80H], 24                     ; 0DF8 _ C7. 80, 00000080, 00000018
        mov     eax, dword [ebp-14H]                    ; 0E02 _ 8B. 45, EC
        mov     dword [eax+84H], 0                      ; 0E05 _ C7. 80, 00000084, 00000000
        mov     eax, dword [ebp-14H]                    ; 0E0F _ 8B. 45, EC
        mov     dword [eax+88H], 16                     ; 0E12 _ C7. 80, 00000088, 00000010
        mov     eax, dword [_memman]                    ; 0E1C _ A1, 00000000(d)
        mov     dword [esp+4H], 65536                   ; 0E21 _ C7. 44 24, 04, 00010000
        mov     dword [esp], eax                        ; 0E29 _ 89. 04 24
        call    _memman_alloc_4k                        ; 0E2C _ E8, 00000000(rel)
        mov     edx, eax                                ; 0E31 _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 0E33 _ 8B. 45, EC
        mov     dword [eax+0B8H], edx                   ; 0E36 _ 89. 90, 000000B8
        mov     eax, dword [ebp-14H]                    ; 0E3C _ 8B. 45, EC
        mov     eax, dword [eax+0B8H]                   ; 0E3F _ 8B. 80, 000000B8
        lea     edx, [eax+3F4H]                         ; 0E45 _ 8D. 90, 000003F4
        mov     eax, dword [ebp-14H]                    ; 0E4B _ 8B. 45, EC
        mov     dword [eax+64H], edx                    ; 0E4E _ 89. 50, 64
        mov     eax, dword [ebp-14H]                    ; 0E51 _ 8B. 45, EC
        mov     eax, dword [eax+64H]                    ; 0E54 _ 8B. 40, 64
        add     eax, 4                                  ; 0E57 _ 83. C0, 04
        mov     edx, eax                                ; 0E5A _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 0E5C _ 8B. 45, F4
        mov     dword [edx], eax                        ; 0E5F _ 89. 02
        mov     eax, dword [_memman]                    ; 0E61 _ A1, 00000000(d)
        mov     dword [esp], eax                        ; 0E66 _ 89. 04 24
        call    _memman_total                           ; 0E69 _ E8, 00000000(rel)
        mov     edx, eax                                ; 0E6E _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 0E70 _ 8B. 45, EC
        mov     eax, dword [eax+64H]                    ; 0E73 _ 8B. 40, 64
        add     eax, 8                                  ; 0E76 _ 83. C0, 08
        mov     dword [eax], edx                        ; 0E79 _ 89. 10
        mov     eax, dword [_memman]                    ; 0E7B _ A1, 00000000(d)
        mov     dword [esp+4H], 128                     ; 0E80 _ C7. 44 24, 04, 00000080
        mov     dword [esp], eax                        ; 0E88 _ 89. 04 24
        call    _memman_alloc                           ; 0E8B _ E8, 00000000(rel)
        mov     dword [ebp-1CH], eax                    ; 0E90 _ 89. 45, E4
        mov     eax, dword [ebp-14H]                    ; 0E93 _ 8B. 45, EC
        add     eax, 16                                 ; 0E96 _ 83. C0, 10
        mov     edx, dword [ebp-14H]                    ; 0E99 _ 8B. 55, EC
        mov     dword [esp+0CH], edx                    ; 0E9C _ 89. 54 24, 0C
        mov     edx, dword [ebp-1CH]                    ; 0EA0 _ 8B. 55, E4
        mov     dword [esp+8H], edx                     ; 0EA3 _ 89. 54 24, 08
        mov     dword [esp+4H], 128                     ; 0EA7 _ C7. 44 24, 04, 00000080
        mov     dword [esp], eax                        ; 0EAF _ 89. 04 24
        call    _fifo8_init                             ; 0EB2 _ E8, 00000000(rel)
        mov     dword [esp+8H], 5                       ; 0EB7 _ C7. 44 24, 08, 00000005
        mov     dword [esp+4H], 1                       ; 0EBF _ C7. 44 24, 04, 00000001
        mov     eax, dword [ebp-14H]                    ; 0EC7 _ 8B. 45, EC
        mov     dword [esp], eax                        ; 0ECA _ 89. 04 24
        call    _task_run                               ; 0ECD _ E8, 00000000(rel)
        cmp     dword [ebp+8H], 0                       ; 0ED2 _ 83. 7D, 08, 00
        jnz     ?_042                                   ; 0ED6 _ 75, 0A
        mov     eax, dword [ebp-14H]                    ; 0ED8 _ 8B. 45, EC
        mov     eax, dword [eax]                        ; 0EDB _ 8B. 00
        mov     dword [_first_task_cons_selector], eax  ; 0EDD _ A3, 00000008(d)
?_042:  mov     eax, dword [ebp-0CH]                    ; 0EE2 _ 8B. 45, F4
        add     esp, 68                                 ; 0EE5 _ 83. C4, 44
        pop     ebx                                     ; 0EE8 _ 5B
        pop     ebp                                     ; 0EE9 _ 5D
        ret                                             ; 0EEA _ C3
; _launch_console End of function

_kill_process:; Function begin
        push    ebp                                     ; 0EEB _ 55
        mov     ebp, esp                                ; 0EEC _ 89. E5
        sub     esp, 40                                 ; 0EEE _ 83. EC, 28
        call    _task_now                               ; 0EF1 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 0EF6 _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 0EF9 _ 8B. 45, F4
        mov     edx, dword [eax+94H]                    ; 0EFC _ 8B. 90, 00000094
        mov     eax, dword [ebp-0CH]                    ; 0F02 _ 8B. 45, F4
        mov     eax, dword [eax+9CH]                    ; 0F05 _ 8B. 80, 0000009C
        mov     dword [esp+4H], edx                     ; 0F0B _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0F0F _ 89. 04 24
        call    _cons_newline                           ; 0F12 _ E8, 00001970
        mov     eax, dword [ebp-0CH]                    ; 0F17 _ 8B. 45, F4
        mov     eax, dword [eax+9CH]                    ; 0F1A _ 8B. 80, 0000009C
        lea     edx, [eax+10H]                          ; 0F20 _ 8D. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 0F23 _ 8B. 45, F4
        mov     dword [eax+9CH], edx                    ; 0F26 _ 89. 90, 0000009C
        mov     eax, dword [ebp-0CH]                    ; 0F2C _ 8B. 45, F4
        add     eax, 48                                 ; 0F2F _ 83. C0, 30
        mov     dword [esp], eax                        ; 0F32 _ 89. 04 24
        call    _asm_end_app                            ; 0F35 _ E8, 00000000(rel)
        nop                                             ; 0F3A _ 90
        leave                                           ; 0F3B _ C9
        ret                                             ; 0F3C _ C3
; _kill_process End of function

_cmd_dir:; Function begin
        push    ebp                                     ; 0F3D _ 55
        mov     ebp, esp                                ; 0F3E _ 89. E5
        push    ebx                                     ; 0F40 _ 53
        sub     esp, 68                                 ; 0F41 _ 83. EC, 44
        call    _task_now                               ; 0F44 _ E8, 00000000(rel)
        mov     dword [ebp-18H], eax                    ; 0F49 _ 89. 45, E8
        mov     dword [ebp-0CH], 78848                  ; 0F4C _ C7. 45, F4, 00013400
        mov     eax, dword [_memman]                    ; 0F53 _ A1, 00000000(d)
        mov     dword [esp+4H], 13                      ; 0F58 _ C7. 44 24, 04, 0000000D
        mov     dword [esp], eax                        ; 0F60 _ 89. 04 24
        call    _memman_alloc                           ; 0F63 _ E8, 00000000(rel)
        mov     dword [ebp-1CH], eax                    ; 0F68 _ 89. 45, E4
        mov     eax, dword [ebp-1CH]                    ; 0F6B _ 8B. 45, E4
        add     eax, 12                                 ; 0F6E _ 83. C0, 0C
        mov     byte [eax], 0                           ; 0F71 _ C6. 00, 00
        jmp     ?_050                                   ; 0F74 _ E9, 00000143

?_043:  mov     dword [ebp-10H], 0                      ; 0F79 _ C7. 45, F0, 00000000
        jmp     ?_045                                   ; 0F80 _ EB, 2A

?_044:  mov     edx, dword [ebp-0CH]                    ; 0F82 _ 8B. 55, F4
        mov     eax, dword [ebp-10H]                    ; 0F85 _ 8B. 45, F0
        add     eax, edx                                ; 0F88 _ 01. D0
        movzx   eax, byte [eax]                         ; 0F8A _ 0F B6. 00
        test    al, al                                  ; 0F8D _ 84. C0
        jz      ?_046                                   ; 0F8F _ 74, 23
        mov     edx, dword [ebp-0CH]                    ; 0F91 _ 8B. 55, F4
        mov     eax, dword [ebp-10H]                    ; 0F94 _ 8B. 45, F0
        add     eax, edx                                ; 0F97 _ 01. D0
        movzx   ecx, byte [eax]                         ; 0F99 _ 0F B6. 08
        mov     edx, dword [ebp-10H]                    ; 0F9C _ 8B. 55, F0
        mov     eax, dword [ebp-1CH]                    ; 0F9F _ 8B. 45, E4
        add     eax, edx                                ; 0FA2 _ 01. D0
        mov     edx, ecx                                ; 0FA4 _ 89. CA
        mov     byte [eax], dl                          ; 0FA6 _ 88. 10
        add     dword [ebp-10H], 1                      ; 0FA8 _ 83. 45, F0, 01
?_045:  cmp     dword [ebp-10H], 7                      ; 0FAC _ 83. 7D, F0, 07
        jle     ?_044                                   ; 0FB0 _ 7E, D0
        jmp     ?_047                                   ; 0FB2 _ EB, 01

?_046:  nop                                             ; 0FB4 _ 90
?_047:  mov     dword [ebp-14H], 0                      ; 0FB5 _ C7. 45, EC, 00000000
        mov     edx, dword [ebp-10H]                    ; 0FBC _ 8B. 55, F0
        mov     eax, dword [ebp-1CH]                    ; 0FBF _ 8B. 45, E4
        add     eax, edx                                ; 0FC2 _ 01. D0
        mov     byte [eax], 46                          ; 0FC4 _ C6. 00, 2E
        add     dword [ebp-10H], 1                      ; 0FC7 _ 83. 45, F0, 01
        mov     dword [ebp-14H], 0                      ; 0FCB _ C7. 45, EC, 00000000
        jmp     ?_049                                   ; 0FD2 _ EB, 22

?_048:  mov     edx, dword [ebp-0CH]                    ; 0FD4 _ 8B. 55, F4
        mov     eax, dword [ebp-14H]                    ; 0FD7 _ 8B. 45, EC
        add     eax, edx                                ; 0FDA _ 01. D0
        add     eax, 8                                  ; 0FDC _ 83. C0, 08
        movzx   ecx, byte [eax]                         ; 0FDF _ 0F B6. 08
        mov     edx, dword [ebp-10H]                    ; 0FE2 _ 8B. 55, F0
        mov     eax, dword [ebp-1CH]                    ; 0FE5 _ 8B. 45, E4
        add     eax, edx                                ; 0FE8 _ 01. D0
        mov     edx, ecx                                ; 0FEA _ 89. CA
        mov     byte [eax], dl                          ; 0FEC _ 88. 10
        add     dword [ebp-10H], 1                      ; 0FEE _ 83. 45, F0, 01
        add     dword [ebp-14H], 1                      ; 0FF2 _ 83. 45, EC, 01
?_049:  cmp     dword [ebp-14H], 2                      ; 0FF6 _ 83. 7D, EC, 02
        jle     ?_048                                   ; 0FFA _ 7E, D8
        mov     eax, dword [ebp-18H]                    ; 0FFC _ 8B. 45, E8
        mov     ecx, dword [eax+9CH]                    ; 0FFF _ 8B. 88, 0000009C
        mov     eax, dword [ebp-18H]                    ; 1005 _ 8B. 45, E8
        mov     edx, dword [eax+94H]                    ; 1008 _ 8B. 90, 00000094
        mov     eax, dword [_shtctl]                    ; 100E _ A1, 00000264(d)
        mov     ebx, dword [ebp-1CH]                    ; 1013 _ 8B. 5D, E4
        mov     dword [esp+14H], ebx                    ; 1016 _ 89. 5C 24, 14
        mov     dword [esp+10H], 7                      ; 101A _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ecx                    ; 1022 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 16                      ; 1026 _ C7. 44 24, 08, 00000010
        mov     dword [esp+4H], edx                     ; 102E _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1032 _ 89. 04 24
        call    _showString                             ; 1035 _ E8, 00001D9B
        mov     dword [ebp-20H], 136                    ; 103A _ C7. 45, E0, 00000088
        mov     eax, dword [ebp-0CH]                    ; 1041 _ 8B. 45, F4
        mov     eax, dword [eax+1CH]                    ; 1044 _ 8B. 40, 1C
        mov     dword [esp], eax                        ; 1047 _ 89. 04 24
        call    _intToHexStr                            ; 104A _ E8, 00002817
        mov     dword [ebp-24H], eax                    ; 104F _ 89. 45, DC
        mov     eax, dword [ebp-18H]                    ; 1052 _ 8B. 45, E8
        mov     ecx, dword [eax+9CH]                    ; 1055 _ 8B. 88, 0000009C
        mov     eax, dword [ebp-18H]                    ; 105B _ 8B. 45, E8
        mov     edx, dword [eax+94H]                    ; 105E _ 8B. 90, 00000094
        mov     eax, dword [_shtctl]                    ; 1064 _ A1, 00000264(d)
        mov     ebx, dword [ebp-24H]                    ; 1069 _ 8B. 5D, DC
        mov     dword [esp+14H], ebx                    ; 106C _ 89. 5C 24, 14
        mov     dword [esp+10H], 7                      ; 1070 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ecx                    ; 1078 _ 89. 4C 24, 0C
        mov     ecx, dword [ebp-20H]                    ; 107C _ 8B. 4D, E0
        mov     dword [esp+8H], ecx                     ; 107F _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 1083 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1087 _ 89. 04 24
        call    _showString                             ; 108A _ E8, 00001D46
        mov     eax, dword [ebp-18H]                    ; 108F _ 8B. 45, E8
        mov     edx, dword [eax+94H]                    ; 1092 _ 8B. 90, 00000094
        mov     eax, dword [ebp-18H]                    ; 1098 _ 8B. 45, E8
        mov     eax, dword [eax+9CH]                    ; 109B _ 8B. 80, 0000009C
        mov     dword [esp+4H], edx                     ; 10A1 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 10A5 _ 89. 04 24
        call    _cons_newline                           ; 10A8 _ E8, 000017DA
        mov     edx, eax                                ; 10AD _ 89. C2
        mov     eax, dword [ebp-18H]                    ; 10AF _ 8B. 45, E8
        mov     dword [eax+9CH], edx                    ; 10B2 _ 89. 90, 0000009C
        add     dword [ebp-0CH], 32                     ; 10B8 _ 83. 45, F4, 20
?_050:  mov     eax, dword [ebp-0CH]                    ; 10BC _ 8B. 45, F4
        movzx   eax, byte [eax]                         ; 10BF _ 0F B6. 00
        test    al, al                                  ; 10C2 _ 84. C0
        jne     ?_043                                   ; 10C4 _ 0F 85, FFFFFEAF
        mov     edx, dword [ebp-1CH]                    ; 10CA _ 8B. 55, E4
        mov     eax, dword [_memman]                    ; 10CD _ A1, 00000000(d)
        mov     dword [esp+8H], 13                      ; 10D2 _ C7. 44 24, 08, 0000000D
        mov     dword [esp+4H], edx                     ; 10DA _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 10DE _ 89. 04 24
        call    _memman_free                            ; 10E1 _ E8, 00000000(rel)
        nop                                             ; 10E6 _ 90
        add     esp, 68                                 ; 10E7 _ 83. C4, 44
        pop     ebx                                     ; 10EA _ 5B
        pop     ebp                                     ; 10EB _ 5D
        ret                                             ; 10EC _ C3
; _cmd_dir End of function

_cmd_type:; Function begin
        push    ebp                                     ; 10ED _ 55
        mov     ebp, esp                                ; 10EE _ 89. E5
        push    esi                                     ; 10F0 _ 56
        push    ebx                                     ; 10F1 _ 53
        sub     esp, 96                                 ; 10F2 _ 83. EC, 60
        call    _task_now                               ; 10F5 _ E8, 00000000(rel)
        mov     dword [ebp-24H], eax                    ; 10FA _ 89. 45, DC
        mov     eax, dword [ebp-24H]                    ; 10FD _ 8B. 45, DC
        mov     eax, dword [eax+94H]                    ; 1100 _ 8B. 80, 00000094
        test    eax, eax                                ; 1106 _ 85. C0
        je      ?_071                                   ; 1108 _ 0F 84, 0000038F
        mov     eax, dword [_memman]                    ; 110E _ A1, 00000000(d)
        mov     dword [esp+4H], 13                      ; 1113 _ C7. 44 24, 04, 0000000D
        mov     dword [esp], eax                        ; 111B _ 89. 04 24
        call    _memman_alloc                           ; 111E _ E8, 00000000(rel)
        mov     dword [ebp-28H], eax                    ; 1123 _ 89. 45, D8
        mov     eax, dword [ebp-28H]                    ; 1126 _ 8B. 45, D8
        add     eax, 12                                 ; 1129 _ 83. C0, 0C
        mov     byte [eax], 0                           ; 112C _ C6. 00, 00
        mov     dword [ebp-0CH], 0                      ; 112F _ C7. 45, F4, 00000000
        mov     dword [ebp-10H], 5                      ; 1136 _ C7. 45, F0, 00000005
        mov     dword [ebp-10H], 5                      ; 113D _ C7. 45, F0, 00000005
        jmp     ?_052                                   ; 1144 _ EB, 2C

?_051:  mov     edx, dword [ebp-10H]                    ; 1146 _ 8B. 55, F0
        mov     eax, dword [ebp+8H]                     ; 1149 _ 8B. 45, 08
        add     eax, edx                                ; 114C _ 01. D0
        movzx   eax, byte [eax]                         ; 114E _ 0F B6. 00
        test    al, al                                  ; 1151 _ 84. C0
        jz      ?_053                                   ; 1153 _ 74, 25
        mov     edx, dword [ebp-10H]                    ; 1155 _ 8B. 55, F0
        mov     eax, dword [ebp+8H]                     ; 1158 _ 8B. 45, 08
        add     eax, edx                                ; 115B _ 01. D0
        mov     ecx, dword [ebp-0CH]                    ; 115D _ 8B. 4D, F4
        mov     edx, dword [ebp-28H]                    ; 1160 _ 8B. 55, D8
        add     edx, ecx                                ; 1163 _ 01. CA
        movzx   eax, byte [eax]                         ; 1165 _ 0F B6. 00
        mov     byte [edx], al                          ; 1168 _ 88. 02
        add     dword [ebp-0CH], 1                      ; 116A _ 83. 45, F4, 01
        add     dword [ebp-10H], 1                      ; 116E _ 83. 45, F0, 01
?_052:  cmp     dword [ebp-10H], 16                     ; 1172 _ 83. 7D, F0, 10
        jle     ?_051                                   ; 1176 _ 7E, CE
        jmp     ?_054                                   ; 1178 _ EB, 01

?_053:  nop                                             ; 117A _ 90
?_054:  mov     edx, dword [ebp-0CH]                    ; 117B _ 8B. 55, F4
        mov     eax, dword [ebp-28H]                    ; 117E _ 8B. 45, D8
        add     eax, edx                                ; 1181 _ 01. D0
        mov     byte [eax], 0                           ; 1183 _ C6. 00, 00
        mov     dword [ebp-14H], 78848                  ; 1186 _ C7. 45, EC, 00013400
        jmp     ?_069                                   ; 118D _ E9, 000002A9

?_055:  mov     byte [ebp-31H], 0                       ; 1192 _ C6. 45, CF, 00
        mov     dword [ebp-18H], 0                      ; 1196 _ C7. 45, E8, 00000000
        jmp     ?_057                                   ; 119D _ EB, 2A

?_056:  mov     edx, dword [ebp-14H]                    ; 119F _ 8B. 55, EC
        mov     eax, dword [ebp-18H]                    ; 11A2 _ 8B. 45, E8
        add     eax, edx                                ; 11A5 _ 01. D0
        movzx   eax, byte [eax]                         ; 11A7 _ 0F B6. 00
        test    al, al                                  ; 11AA _ 84. C0
        jz      ?_058                                   ; 11AC _ 74, 23
        mov     edx, dword [ebp-14H]                    ; 11AE _ 8B. 55, EC
        mov     eax, dword [ebp-18H]                    ; 11B1 _ 8B. 45, E8
        add     eax, edx                                ; 11B4 _ 01. D0
        movzx   eax, byte [eax]                         ; 11B6 _ 0F B6. 00
        mov     ecx, eax                                ; 11B9 _ 89. C1
        lea     eax, [ebp-3DH]                          ; 11BB _ 8D. 45, C3
        mov     edx, dword [ebp-18H]                    ; 11BE _ 8B. 55, E8
        add     eax, edx                                ; 11C1 _ 01. D0
        mov     byte [eax], cl                          ; 11C3 _ 88. 08
        add     dword [ebp-18H], 1                      ; 11C5 _ 83. 45, E8, 01
?_057:  cmp     dword [ebp-18H], 7                      ; 11C9 _ 83. 7D, E8, 07
        jle     ?_056                                   ; 11CD _ 7E, D0
        jmp     ?_059                                   ; 11CF _ EB, 01

?_058:  nop                                             ; 11D1 _ 90
?_059:  mov     dword [ebp-1CH], 0                      ; 11D2 _ C7. 45, E4, 00000000
        lea     eax, [ebp-3DH]                          ; 11D9 _ 8D. 45, C3
        mov     edx, dword [ebp-18H]                    ; 11DC _ 8B. 55, E8
        add     eax, edx                                ; 11DF _ 01. D0
        mov     byte [eax], 46                          ; 11E1 _ C6. 00, 2E
        add     dword [ebp-18H], 1                      ; 11E4 _ 83. 45, E8, 01
        mov     dword [ebp-1CH], 0                      ; 11E8 _ C7. 45, E4, 00000000
        jmp     ?_061                                   ; 11EF _ EB, 22

?_060:  mov     edx, dword [ebp-14H]                    ; 11F1 _ 8B. 55, EC
        mov     eax, dword [ebp-1CH]                    ; 11F4 _ 8B. 45, E4
        add     eax, edx                                ; 11F7 _ 01. D0
        add     eax, 8                                  ; 11F9 _ 83. C0, 08
        movzx   eax, byte [eax]                         ; 11FC _ 0F B6. 00
        mov     ecx, eax                                ; 11FF _ 89. C1
        lea     eax, [ebp-3DH]                          ; 1201 _ 8D. 45, C3
        mov     edx, dword [ebp-18H]                    ; 1204 _ 8B. 55, E8
        add     eax, edx                                ; 1207 _ 01. D0
        mov     byte [eax], cl                          ; 1209 _ 88. 08
        add     dword [ebp-18H], 1                      ; 120B _ 83. 45, E8, 01
        add     dword [ebp-1CH], 1                      ; 120F _ 83. 45, E4, 01
?_061:  cmp     dword [ebp-1CH], 2                      ; 1213 _ 83. 7D, E4, 02
        jle     ?_060                                   ; 1217 _ 7E, D8
        lea     eax, [ebp-3DH]                          ; 1219 _ 8D. 45, C3
        mov     dword [esp+4H], eax                     ; 121C _ 89. 44 24, 04
        mov     eax, dword [ebp-28H]                    ; 1220 _ 8B. 45, D8
        mov     dword [esp], eax                        ; 1223 _ 89. 04 24
        call    _strcmp                                 ; 1226 _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 122B _ 83. F8, 01
        jne     ?_068                                   ; 122E _ 0F 85, 00000203
        mov     dword [ebp-2CH], 88064                  ; 1234 _ C7. 45, D4, 00015800
        mov     eax, dword [ebp-14H]                    ; 123B _ 8B. 45, EC
        movzx   eax, word [eax+1AH]                     ; 123E _ 0F B7. 40, 1A
        movzx   eax, ax                                 ; 1242 _ 0F B7. C0
        shl     eax, 9                                  ; 1245 _ C1. E0, 09
        add     dword [ebp-2CH], eax                    ; 1248 _ 01. 45, D4
        mov     eax, dword [ebp-14H]                    ; 124B _ 8B. 45, EC
        mov     eax, dword [eax+1CH]                    ; 124E _ 8B. 40, 1C
        mov     dword [ebp-30H], eax                    ; 1251 _ 89. 45, D0
        mov     dword [ebp-20H], 0                      ; 1254 _ C7. 45, E0, 00000000
        mov     eax, dword [ebp-24H]                    ; 125B _ 8B. 45, DC
        mov     dword [eax+98H], 16                     ; 125E _ C7. 80, 00000098, 00000010
        mov     dword [ebp-20H], 0                      ; 1268 _ C7. 45, E0, 00000000
        jmp     ?_067                                   ; 126F _ E9, 000001B4

?_062:  mov     edx, dword [ebp-20H]                    ; 1274 _ 8B. 55, E0
        mov     eax, dword [ebp-2CH]                    ; 1277 _ 8B. 45, D4
        add     eax, edx                                ; 127A _ 01. D0
        movzx   eax, byte [eax]                         ; 127C _ 0F B6. 00
        mov     byte [ebp-3FH], al                      ; 127F _ 88. 45, C1
        mov     byte [ebp-3EH], 0                       ; 1282 _ C6. 45, C2, 00
        movzx   eax, byte [ebp-3FH]                     ; 1286 _ 0F B6. 45, C1
        cmp     al, 9                                   ; 128A _ 3C, 09
        jne     ?_064                                   ; 128C _ 0F 85, 000000A4
?_063:  mov     eax, dword [ebp-24H]                    ; 1292 _ 8B. 45, DC
        mov     ebx, dword [eax+9CH]                    ; 1295 _ 8B. 98, 0000009C
        mov     eax, dword [ebp-24H]                    ; 129B _ 8B. 45, DC
        mov     ecx, dword [eax+98H]                    ; 129E _ 8B. 88, 00000098
        mov     eax, dword [ebp-24H]                    ; 12A4 _ 8B. 45, DC
        mov     edx, dword [eax+94H]                    ; 12A7 _ 8B. 90, 00000094
        mov     eax, dword [_shtctl]                    ; 12AD _ A1, 00000264(d)
        mov     dword [esp+14H], ?_388                  ; 12B2 _ C7. 44 24, 14, 00000017(d)
        mov     dword [esp+10H], 7                      ; 12BA _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ebx                    ; 12C2 _ 89. 5C 24, 0C
        mov     dword [esp+8H], ecx                     ; 12C6 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 12CA _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 12CE _ 89. 04 24
        call    _showString                             ; 12D1 _ E8, 00001AFF
        mov     eax, dword [ebp-24H]                    ; 12D6 _ 8B. 45, DC
        mov     eax, dword [eax+98H]                    ; 12D9 _ 8B. 80, 00000098
        lea     edx, [eax+8H]                           ; 12DF _ 8D. 50, 08
        mov     eax, dword [ebp-24H]                    ; 12E2 _ 8B. 45, DC
        mov     dword [eax+98H], edx                    ; 12E5 _ 89. 90, 00000098
        mov     eax, dword [ebp-24H]                    ; 12EB _ 8B. 45, DC
        mov     eax, dword [eax+98H]                    ; 12EE _ 8B. 80, 00000098
        cmp     eax, 248                                ; 12F4 _ 3D, 000000F8
        jnz     ?_063                                   ; 12F9 _ 75, 97
        mov     eax, dword [ebp-24H]                    ; 12FB _ 8B. 45, DC
        mov     dword [eax+98H], 8                      ; 12FE _ C7. 80, 00000098, 00000008
        mov     eax, dword [ebp-24H]                    ; 1308 _ 8B. 45, DC
        mov     edx, dword [eax+94H]                    ; 130B _ 8B. 90, 00000094
        mov     eax, dword [ebp-24H]                    ; 1311 _ 8B. 45, DC
        mov     eax, dword [eax+9CH]                    ; 1314 _ 8B. 80, 0000009C
        mov     dword [esp+4H], edx                     ; 131A _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 131E _ 89. 04 24
        call    _cons_newline                           ; 1321 _ E8, 00001561
        mov     edx, eax                                ; 1326 _ 89. C2
        mov     eax, dword [ebp-24H]                    ; 1328 _ 8B. 45, DC
        mov     dword [eax+9CH], edx                    ; 132B _ 89. 90, 0000009C
        jmp     ?_063                                   ; 1331 _ E9, FFFFFF5C

?_064:  movzx   eax, byte [ebp-3FH]                     ; 1336 _ 0F B6. 45, C1
        cmp     al, 10                                  ; 133A _ 3C, 0A
        jnz     ?_065                                   ; 133C _ 75, 3B
        mov     eax, dword [ebp-24H]                    ; 133E _ 8B. 45, DC
        mov     dword [eax+98H], 8                      ; 1341 _ C7. 80, 00000098, 00000008
        mov     eax, dword [ebp-24H]                    ; 134B _ 8B. 45, DC
        mov     edx, dword [eax+94H]                    ; 134E _ 8B. 90, 00000094
        mov     eax, dword [ebp-24H]                    ; 1354 _ 8B. 45, DC
        mov     eax, dword [eax+9CH]                    ; 1357 _ 8B. 80, 0000009C
        mov     dword [esp+4H], edx                     ; 135D _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1361 _ 89. 04 24
        call    _cons_newline                           ; 1364 _ E8, 0000151E
        mov     edx, eax                                ; 1369 _ 89. C2
        mov     eax, dword [ebp-24H]                    ; 136B _ 8B. 45, DC
        mov     dword [eax+9CH], edx                    ; 136E _ 89. 90, 0000009C
        jmp     ?_066                                   ; 1374 _ E9, 000000AB

?_065:  movzx   eax, byte [ebp-3FH]                     ; 1379 _ 0F B6. 45, C1
        cmp     al, 13                                  ; 137D _ 3C, 0D
        je      ?_066                                   ; 137F _ 0F 84, 0000009F
        mov     eax, dword [ebp-24H]                    ; 1385 _ 8B. 45, DC
        mov     esi, dword [eax+9CH]                    ; 1388 _ 8B. B0, 0000009C
        mov     eax, dword [ebp-24H]                    ; 138E _ 8B. 45, DC
        mov     ebx, dword [eax+98H]                    ; 1391 _ 8B. 98, 00000098
        mov     eax, dword [ebp-24H]                    ; 1397 _ 8B. 45, DC
        mov     ecx, dword [eax+94H]                    ; 139A _ 8B. 88, 00000094
        mov     edx, dword [_shtctl]                    ; 13A0 _ 8B. 15, 00000264(d)
        lea     eax, [ebp-3FH]                          ; 13A6 _ 8D. 45, C1
        mov     dword [esp+14H], eax                    ; 13A9 _ 89. 44 24, 14
        mov     dword [esp+10H], 7                      ; 13AD _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], esi                    ; 13B5 _ 89. 74 24, 0C
        mov     dword [esp+8H], ebx                     ; 13B9 _ 89. 5C 24, 08
        mov     dword [esp+4H], ecx                     ; 13BD _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 13C1 _ 89. 14 24
        call    _showString                             ; 13C4 _ E8, 00001A0C
        mov     eax, dword [ebp-24H]                    ; 13C9 _ 8B. 45, DC
        mov     eax, dword [eax+98H]                    ; 13CC _ 8B. 80, 00000098
        lea     edx, [eax+8H]                           ; 13D2 _ 8D. 50, 08
        mov     eax, dword [ebp-24H]                    ; 13D5 _ 8B. 45, DC
        mov     dword [eax+98H], edx                    ; 13D8 _ 89. 90, 00000098
        mov     eax, dword [ebp-24H]                    ; 13DE _ 8B. 45, DC
        mov     eax, dword [eax+98H]                    ; 13E1 _ 8B. 80, 00000098
        cmp     eax, 248                                ; 13E7 _ 3D, 000000F8
        jnz     ?_066                                   ; 13EC _ 75, 36
        mov     eax, dword [ebp-24H]                    ; 13EE _ 8B. 45, DC
        mov     dword [eax+98H], 16                     ; 13F1 _ C7. 80, 00000098, 00000010
        mov     eax, dword [ebp-24H]                    ; 13FB _ 8B. 45, DC
        mov     edx, dword [eax+94H]                    ; 13FE _ 8B. 90, 00000094
        mov     eax, dword [ebp-24H]                    ; 1404 _ 8B. 45, DC
        mov     eax, dword [eax+9CH]                    ; 1407 _ 8B. 80, 0000009C
        mov     dword [esp+4H], edx                     ; 140D _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1411 _ 89. 04 24
        call    _cons_newline                           ; 1414 _ E8, 0000146E
        mov     edx, eax                                ; 1419 _ 89. C2
        mov     eax, dword [ebp-24H]                    ; 141B _ 8B. 45, DC
        mov     dword [eax+9CH], edx                    ; 141E _ 89. 90, 0000009C
?_066:  add     dword [ebp-20H], 1                      ; 1424 _ 83. 45, E0, 01
?_067:  mov     eax, dword [ebp-20H]                    ; 1428 _ 8B. 45, E0
        cmp     eax, dword [ebp-30H]                    ; 142B _ 3B. 45, D0
        jl      ?_062                                   ; 142E _ 0F 8C, FFFFFE40
        nop                                             ; 1434 _ 90
        jmp     ?_070                                   ; 1435 _ EB, 12

?_068:  add     dword [ebp-14H], 32                     ; 1437 _ 83. 45, EC, 20
?_069:  mov     eax, dword [ebp-14H]                    ; 143B _ 8B. 45, EC
        movzx   eax, byte [eax]                         ; 143E _ 0F B6. 00
        test    al, al                                  ; 1441 _ 84. C0
        jne     ?_055                                   ; 1443 _ 0F 85, FFFFFD49
?_070:  mov     eax, dword [ebp-24H]                    ; 1449 _ 8B. 45, DC
        mov     edx, dword [eax+94H]                    ; 144C _ 8B. 90, 00000094
        mov     eax, dword [ebp-24H]                    ; 1452 _ 8B. 45, DC
        mov     eax, dword [eax+9CH]                    ; 1455 _ 8B. 80, 0000009C
        mov     dword [esp+4H], edx                     ; 145B _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 145F _ 89. 04 24
        call    _cons_newline                           ; 1462 _ E8, 00001420
        mov     edx, eax                                ; 1467 _ 89. C2
        mov     eax, dword [ebp-24H]                    ; 1469 _ 8B. 45, DC
        mov     dword [eax+9CH], edx                    ; 146C _ 89. 90, 0000009C
        mov     edx, dword [ebp-28H]                    ; 1472 _ 8B. 55, D8
        mov     eax, dword [_memman]                    ; 1475 _ A1, 00000000(d)
        mov     dword [esp+8H], 13                      ; 147A _ C7. 44 24, 08, 0000000D
        mov     dword [esp+4H], edx                     ; 1482 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1486 _ 89. 04 24
        call    _memman_free                            ; 1489 _ E8, 00000000(rel)
        mov     eax, dword [ebp-24H]                    ; 148E _ 8B. 45, DC
        mov     dword [eax+98H], 16                     ; 1491 _ C7. 80, 00000098, 00000010
        jmp     ?_072                                   ; 149B _ EB, 01

?_071:  nop                                             ; 149D _ 90
?_072:  add     esp, 96                                 ; 149E _ 83. C4, 60
        pop     ebx                                     ; 14A1 _ 5B
        pop     esi                                     ; 14A2 _ 5E
        pop     ebp                                     ; 14A3 _ 5D
        ret                                             ; 14A4 _ C3
; _cmd_type End of function

_cmd_mem:; Function begin
        push    ebp                                     ; 14A5 _ 55
        mov     ebp, esp                                ; 14A6 _ 89. E5
        push    ebx                                     ; 14A8 _ 53
        sub     esp, 52                                 ; 14A9 _ 83. EC, 34
        call    _task_now                               ; 14AC _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 14B1 _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 14B4 _ 8B. 45, F4
        mov     eax, dword [eax+94H]                    ; 14B7 _ 8B. 80, 00000094
        test    eax, eax                                ; 14BD _ 85. C0
        je      ?_073                                   ; 14BF _ 0F 84, 00000103
        mov     eax, dword [ebp+8H]                     ; 14C5 _ 8B. 45, 08
        lea     edx, [eax+3FFH]                         ; 14C8 _ 8D. 90, 000003FF
        test    eax, eax                                ; 14CE _ 85. C0
        cmovs   eax, edx                                ; 14D0 _ 0F 48. C2
        sar     eax, 10                                 ; 14D3 _ C1. F8, 0A
        mov     dword [esp], eax                        ; 14D6 _ 89. 04 24
        call    _intToHexStr                            ; 14D9 _ E8, 00002388
        mov     dword [ebp-10H], eax                    ; 14DE _ 89. 45, F0
        mov     eax, dword [ebp-0CH]                    ; 14E1 _ 8B. 45, F4
        mov     ecx, dword [eax+9CH]                    ; 14E4 _ 8B. 88, 0000009C
        mov     eax, dword [ebp-0CH]                    ; 14EA _ 8B. 45, F4
        mov     edx, dword [eax+94H]                    ; 14ED _ 8B. 90, 00000094
        mov     eax, dword [_shtctl]                    ; 14F3 _ A1, 00000264(d)
        mov     dword [esp+14H], ?_389                  ; 14F8 _ C7. 44 24, 14, 00000019(d)
        mov     dword [esp+10H], 7                      ; 1500 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ecx                    ; 1508 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 16                      ; 150C _ C7. 44 24, 08, 00000010
        mov     dword [esp+4H], edx                     ; 1514 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1518 _ 89. 04 24
        call    _showString                             ; 151B _ E8, 000018B5
        mov     eax, dword [ebp-0CH]                    ; 1520 _ 8B. 45, F4
        mov     ecx, dword [eax+9CH]                    ; 1523 _ 8B. 88, 0000009C
        mov     eax, dword [ebp-0CH]                    ; 1529 _ 8B. 45, F4
        mov     edx, dword [eax+94H]                    ; 152C _ 8B. 90, 00000094
        mov     eax, dword [_shtctl]                    ; 1532 _ A1, 00000264(d)
        mov     ebx, dword [ebp-10H]                    ; 1537 _ 8B. 5D, F0
        mov     dword [esp+14H], ebx                    ; 153A _ 89. 5C 24, 14
        mov     dword [esp+10H], 7                      ; 153E _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ecx                    ; 1546 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 52                      ; 154A _ C7. 44 24, 08, 00000034
        mov     dword [esp+4H], edx                     ; 1552 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1556 _ 89. 04 24
        call    _showString                             ; 1559 _ E8, 00001877
        mov     eax, dword [ebp-0CH]                    ; 155E _ 8B. 45, F4
        mov     ecx, dword [eax+9CH]                    ; 1561 _ 8B. 88, 0000009C
        mov     eax, dword [ebp-0CH]                    ; 1567 _ 8B. 45, F4
        mov     edx, dword [eax+94H]                    ; 156A _ 8B. 90, 00000094
        mov     eax, dword [_shtctl]                    ; 1570 _ A1, 00000264(d)
        mov     dword [esp+14H], ?_390                  ; 1575 _ C7. 44 24, 14, 0000001F(d)
        mov     dword [esp+10H], 7                      ; 157D _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ecx                    ; 1585 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 126                     ; 1589 _ C7. 44 24, 08, 0000007E
        mov     dword [esp+4H], edx                     ; 1591 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1595 _ 89. 04 24
        call    _showString                             ; 1598 _ E8, 00001838
        mov     eax, dword [ebp-0CH]                    ; 159D _ 8B. 45, F4
        mov     edx, dword [eax+94H]                    ; 15A0 _ 8B. 90, 00000094
        mov     eax, dword [ebp-0CH]                    ; 15A6 _ 8B. 45, F4
        mov     eax, dword [eax+9CH]                    ; 15A9 _ 8B. 80, 0000009C
        mov     dword [esp+4H], edx                     ; 15AF _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 15B3 _ 89. 04 24
        call    _cons_newline                           ; 15B6 _ E8, 000012CC
        mov     edx, eax                                ; 15BB _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 15BD _ 8B. 45, F4
        mov     dword [eax+9CH], edx                    ; 15C0 _ 89. 90, 0000009C
        jmp     ?_074                                   ; 15C6 _ EB, 01

?_073:  nop                                             ; 15C8 _ 90
?_074:  add     esp, 52                                 ; 15C9 _ 83. C4, 34
        pop     ebx                                     ; 15CC _ 5B
        pop     ebp                                     ; 15CD _ 5D
        ret                                             ; 15CE _ C3
; _cmd_mem End of function

_cmd_cls:; Function begin
        push    ebp                                     ; 15CF _ 55
        mov     ebp, esp                                ; 15D0 _ 89. E5
        sub     esp, 56                                 ; 15D2 _ 83. EC, 38
        call    _task_now                               ; 15D5 _ E8, 00000000(rel)
        mov     dword [ebp-14H], eax                    ; 15DA _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 15DD _ 8B. 45, EC
        mov     eax, dword [eax+94H]                    ; 15E0 _ 8B. 80, 00000094
        test    eax, eax                                ; 15E6 _ 85. C0
        je      ?_079                                   ; 15E8 _ 0F 84, 000000E2
        mov     dword [ebp-0CH], 8                      ; 15EE _ C7. 45, F4, 00000008
        mov     dword [ebp-10H], 28                     ; 15F5 _ C7. 45, F0, 0000001C
        mov     dword [ebp-10H], 28                     ; 15FC _ C7. 45, F0, 0000001C
        jmp     ?_078                                   ; 1603 _ EB, 3F

?_075:  mov     dword [ebp-0CH], 8                      ; 1605 _ C7. 45, F4, 00000008
        jmp     ?_077                                   ; 160C _ EB, 29

?_076:  mov     eax, dword [ebp-14H]                    ; 160E _ 8B. 45, EC
        mov     eax, dword [eax+94H]                    ; 1611 _ 8B. 80, 00000094
        mov     edx, dword [eax]                        ; 1617 _ 8B. 10
        mov     eax, dword [ebp-14H]                    ; 1619 _ 8B. 45, EC
        mov     eax, dword [eax+94H]                    ; 161C _ 8B. 80, 00000094
        mov     eax, dword [eax+4H]                     ; 1622 _ 8B. 40, 04
        imul    eax, dword [ebp-10H]                    ; 1625 _ 0F AF. 45, F0
        mov     ecx, dword [ebp-0CH]                    ; 1629 _ 8B. 4D, F4
        add     eax, ecx                                ; 162C _ 01. C8
        add     eax, edx                                ; 162E _ 01. D0
        mov     byte [eax], 0                           ; 1630 _ C6. 00, 00
        add     dword [ebp-0CH], 1                      ; 1633 _ 83. 45, F4, 01
?_077:  cmp     dword [ebp-0CH], 247                    ; 1637 _ 81. 7D, F4, 000000F7
        jle     ?_076                                   ; 163E _ 7E, CE
        add     dword [ebp-10H], 1                      ; 1640 _ 83. 45, F0, 01
?_078:  cmp     dword [ebp-10H], 155                    ; 1644 _ 81. 7D, F0, 0000009B
        jle     ?_075                                   ; 164B _ 7E, B8
        mov     eax, dword [ebp-14H]                    ; 164D _ 8B. 45, EC
        mov     edx, dword [eax+94H]                    ; 1650 _ 8B. 90, 00000094
        mov     eax, dword [_shtctl]                    ; 1656 _ A1, 00000264(d)
        mov     dword [esp+14H], 156                    ; 165B _ C7. 44 24, 14, 0000009C
        mov     dword [esp+10H], 248                    ; 1663 _ C7. 44 24, 10, 000000F8
        mov     dword [esp+0CH], 28                     ; 166B _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 8                       ; 1673 _ C7. 44 24, 08, 00000008
        mov     dword [esp+4H], edx                     ; 167B _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 167F _ 89. 04 24
        call    _sheet_refresh                          ; 1682 _ E8, 00000000(rel)
        mov     eax, dword [ebp-14H]                    ; 1687 _ 8B. 45, EC
        mov     dword [eax+9CH], 28                     ; 168A _ C7. 80, 0000009C, 0000001C
        mov     eax, dword [ebp-14H]                    ; 1694 _ 8B. 45, EC
        mov     edx, dword [eax+94H]                    ; 1697 _ 8B. 90, 00000094
        mov     eax, dword [_shtctl]                    ; 169D _ A1, 00000264(d)
        mov     dword [esp+14H], ?_391                  ; 16A2 _ C7. 44 24, 14, 00000023(d)
        mov     dword [esp+10H], 7                      ; 16AA _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 28                     ; 16B2 _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 8                       ; 16BA _ C7. 44 24, 08, 00000008
        mov     dword [esp+4H], edx                     ; 16C2 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 16C6 _ 89. 04 24
        call    _showString                             ; 16C9 _ E8, 00001707
        jmp     ?_080                                   ; 16CE _ EB, 01

?_079:  nop                                             ; 16D0 _ 90
?_080:  leave                                           ; 16D1 _ C9
        ret                                             ; 16D2 _ C3
; _cmd_cls End of function

_cmd_hlt:; Function begin
        push    ebp                                     ; 16D3 _ 55
        mov     ebp, esp                                ; 16D4 _ 89. E5
        sub     esp, 72                                 ; 16D6 _ 83. EC, 48
        call    _io_cli                                 ; 16D9 _ E8, 00000000(rel)
        mov     eax, dword [_memman]                    ; 16DE _ A1, 00000000(d)
        mov     dword [esp+4H], 16                      ; 16E3 _ C7. 44 24, 04, 00000010
        mov     dword [esp], eax                        ; 16EB _ 89. 04 24
        call    _memman_alloc                           ; 16EE _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 16F3 _ 89. 45, F4
        call    _task_now                               ; 16F6 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 16FB _ 89. 45, F0
        mov     eax, dword [ebp-10H]                    ; 16FE _ 8B. 45, F0
        mov     edx, dword [ebp-0CH]                    ; 1701 _ 8B. 55, F4
        mov     dword [eax+0B0H], edx                   ; 1704 _ 89. 90, 000000B0
        mov     eax, dword [ebp-0CH]                    ; 170A _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 170D _ 89. 44 24, 04
        mov     dword [esp], ?_392                      ; 1711 _ C7. 04 24, 00000025(d)
        call    _file_loadfile                          ; 1718 _ E8, 00002DB2
        call    _get_addr_gdt                           ; 171D _ E8, 00000000(rel)
        mov     dword [ebp-14H], eax                    ; 1722 _ 89. 45, EC
        mov     eax, dword [ebp-10H]                    ; 1725 _ 8B. 45, F0
        mov     edx, dword [eax]                        ; 1728 _ 8B. 10
        mov     eax, dword [_first_task_cons_selector]  ; 172A _ A1, 00000008(d)
        sub     edx, eax                                ; 172F _ 29. C2
        mov     eax, edx                                ; 1731 _ 89. D0
        lea     edx, [eax+7H]                           ; 1733 _ 8D. 50, 07
        test    eax, eax                                ; 1736 _ 85. C0
        cmovs   eax, edx                                ; 1738 _ 0F 48. C2
        sar     eax, 3                                  ; 173B _ C1. F8, 03
        add     eax, 21                                 ; 173E _ 83. C0, 15
        mov     dword [ebp-18H], eax                    ; 1741 _ 89. 45, E8
        mov     eax, dword [ebp-10H]                    ; 1744 _ 8B. 45, F0
        mov     edx, dword [eax]                        ; 1747 _ 8B. 10
        mov     eax, dword [_first_task_cons_selector]  ; 1749 _ A1, 00000008(d)
        sub     edx, eax                                ; 174E _ 29. C2
        mov     eax, edx                                ; 1750 _ 89. D0
        lea     edx, [eax+7H]                           ; 1752 _ 8D. 50, 07
        test    eax, eax                                ; 1755 _ 85. C0
        cmovs   eax, edx                                ; 1757 _ 0F 48. C2
        sar     eax, 3                                  ; 175A _ C1. F8, 03
        add     eax, 30                                 ; 175D _ 83. C0, 1E
        mov     dword [ebp-1CH], eax                    ; 1760 _ 89. 45, E4
        mov     eax, dword [ebp-0CH]                    ; 1763 _ 8B. 45, F4
        mov     eax, dword [eax]                        ; 1766 _ 8B. 00
        mov     ecx, eax                                ; 1768 _ 89. C1
        mov     eax, dword [ebp-18H]                    ; 176A _ 8B. 45, E8
        lea     edx, [eax*8]                            ; 176D _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-14H]                    ; 1774 _ 8B. 45, EC
        add     eax, edx                                ; 1777 _ 01. D0
        mov     dword [esp+0CH], 16634                  ; 1779 _ C7. 44 24, 0C, 000040FA
        mov     dword [esp+8H], ecx                     ; 1781 _ 89. 4C 24, 08
        mov     dword [esp+4H], 1048575                 ; 1785 _ C7. 44 24, 04, 000FFFFF
        mov     dword [esp], eax                        ; 178D _ 89. 04 24
        call    _set_segmdesc                           ; 1790 _ E8, 00000000(rel)
        mov     eax, dword [_memman]                    ; 1795 _ A1, 00000000(d)
        mov     dword [esp+4H], 65536                   ; 179A _ C7. 44 24, 04, 00010000
        mov     dword [esp], eax                        ; 17A2 _ 89. 04 24
        call    _memman_alloc_4k                        ; 17A5 _ E8, 00000000(rel)
        mov     dword [ebp-20H], eax                    ; 17AA _ 89. 45, E0
        mov     eax, dword [ebp-0CH]                    ; 17AD _ 8B. 45, F4
        mov     edx, dword [ebp-20H]                    ; 17B0 _ 8B. 55, E0
        mov     dword [eax+4H], edx                     ; 17B3 _ 89. 50, 04
        mov     edx, dword [ebp-20H]                    ; 17B6 _ 8B. 55, E0
        mov     eax, dword [ebp-1CH]                    ; 17B9 _ 8B. 45, E4
        lea     ecx, [eax*8]                            ; 17BC _ 8D. 0C C5, 00000000
        mov     eax, dword [ebp-14H]                    ; 17C3 _ 8B. 45, EC
        add     eax, ecx                                ; 17C6 _ 01. C8
        mov     dword [esp+0CH], 16626                  ; 17C8 _ C7. 44 24, 0C, 000040F2
        mov     dword [esp+8H], edx                     ; 17D0 _ 89. 54 24, 08
        mov     dword [esp+4H], 65535                   ; 17D4 _ C7. 44 24, 04, 0000FFFF
        mov     dword [esp], eax                        ; 17DC _ 89. 04 24
        call    _set_segmdesc                           ; 17DF _ E8, 00000000(rel)
        mov     eax, dword [ebp-10H]                    ; 17E4 _ 8B. 45, F0
        mov     dword [eax+30H], 0                      ; 17E7 _ C7. 40, 30, 00000000
        call    _io_sti                                 ; 17EE _ E8, 00000000(rel)
        mov     eax, dword [ebp-10H]                    ; 17F3 _ 8B. 45, F0
        lea     ecx, [eax+30H]                          ; 17F6 _ 8D. 48, 30
        mov     eax, dword [ebp-1CH]                    ; 17F9 _ 8B. 45, E4
        lea     edx, [eax*8]                            ; 17FC _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-18H]                    ; 1803 _ 8B. 45, E8
        shl     eax, 3                                  ; 1806 _ C1. E0, 03
        mov     dword [esp+10H], ecx                    ; 1809 _ 89. 4C 24, 10
        mov     dword [esp+0CH], edx                    ; 180D _ 89. 54 24, 0C
        mov     dword [esp+8H], 65536                   ; 1811 _ C7. 44 24, 08, 00010000
        mov     dword [esp+4H], eax                     ; 1819 _ 89. 44 24, 04
        mov     dword [esp], 0                          ; 181D _ C7. 04 24, 00000000
        call    _start_app                              ; 1824 _ E8, 00000000(rel)
        call    _io_cli                                 ; 1829 _ E8, 00000000(rel)
        mov     eax, dword [ebp-0CH]                    ; 182E _ 8B. 45, F4
        mov     eax, dword [eax+8H]                     ; 1831 _ 8B. 40, 08
        mov     ecx, eax                                ; 1834 _ 89. C1
        mov     eax, dword [ebp-0CH]                    ; 1836 _ 8B. 45, F4
        mov     eax, dword [eax]                        ; 1839 _ 8B. 00
        mov     edx, eax                                ; 183B _ 89. C2
        mov     eax, dword [_memman]                    ; 183D _ A1, 00000000(d)
        mov     dword [esp+8H], ecx                     ; 1842 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 1846 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 184A _ 89. 04 24
        call    _memman_free_4k                         ; 184D _ E8, 00000000(rel)
        mov     edx, dword [ebp-20H]                    ; 1852 _ 8B. 55, E0
        mov     eax, dword [_memman]                    ; 1855 _ A1, 00000000(d)
        mov     dword [esp+8H], 65536                   ; 185A _ C7. 44 24, 08, 00010000
        mov     dword [esp+4H], edx                     ; 1862 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1866 _ 89. 04 24
        call    _memman_free_4k                         ; 1869 _ E8, 00000000(rel)
        mov     edx, dword [ebp-0CH]                    ; 186E _ 8B. 55, F4
        mov     eax, dword [_memman]                    ; 1871 _ A1, 00000000(d)
        mov     dword [esp+8H], 16                      ; 1876 _ C7. 44 24, 08, 00000010
        mov     dword [esp+4H], edx                     ; 187E _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1882 _ 89. 04 24
        call    _memman_free                            ; 1885 _ E8, 00000000(rel)
        mov     eax, dword [ebp-10H]                    ; 188A _ 8B. 45, F0
        mov     dword [eax+0B0H], 0                     ; 188D _ C7. 80, 000000B0, 00000000
        call    _io_sti                                 ; 1897 _ E8, 00000000(rel)
        nop                                             ; 189C _ 90
        leave                                           ; 189D _ C9
        ret                                             ; 189E _ C3
; _cmd_hlt End of function

_cmd_start:; Function begin
        push    ebp                                     ; 189F _ 55
        mov     ebp, esp                                ; 18A0 _ 89. E5
        sub     esp, 40                                 ; 18A2 _ 83. EC, 28
        mov     eax, dword [_console_count]             ; 18A5 _ A1, 00000010(d)
        mov     dword [esp], eax                        ; 18AA _ 89. 04 24
        call    _launch_console                         ; 18AD _ E8, FFFFF30F
        mov     dword [ebp-10H], eax                    ; 18B2 _ 89. 45, F0
        mov     eax, dword [_shtctl]                    ; 18B5 _ A1, 00000264(d)
        mov     dword [esp+0CH], 176                    ; 18BA _ C7. 44 24, 0C, 000000B0
        mov     dword [esp+8H], 156                     ; 18C2 _ C7. 44 24, 08, 0000009C
        mov     edx, dword [ebp-10H]                    ; 18CA _ 8B. 55, F0
        mov     dword [esp+4H], edx                     ; 18CD _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 18D1 _ 89. 04 24
        call    _sheet_slide                            ; 18D4 _ E8, 00000000(rel)
        mov     eax, dword [_shtctl]                    ; 18D9 _ A1, 00000264(d)
        mov     dword [esp+8H], 1                       ; 18DE _ C7. 44 24, 08, 00000001
        mov     edx, dword [ebp-10H]                    ; 18E6 _ 8B. 55, F0
        mov     dword [esp+4H], edx                     ; 18E9 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 18ED _ 89. 04 24
        call    _sheet_updown                           ; 18F0 _ E8, 00000000(rel)
        mov     eax, dword [_console_count]             ; 18F5 _ A1, 00000010(d)
        add     eax, 1                                  ; 18FA _ 83. C0, 01
        mov     dword [_console_count], eax             ; 18FD _ A3, 00000010(d)
        mov     eax, dword [ebp-10H]                    ; 1902 _ 8B. 45, F0
        mov     eax, dword [eax+20H]                    ; 1905 _ 8B. 40, 20
        mov     dword [ebp-14H], eax                    ; 1908 _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 190B _ 8B. 45, EC
        mov     dword [eax+28H], 0                      ; 190E _ C7. 40, 28, 00000000
        mov     dword [ebp-0CH], 6                      ; 1915 _ C7. 45, F4, 00000006
        jmp     ?_082                                   ; 191C _ EB, 24

?_081:  mov     edx, dword [ebp-0CH]                    ; 191E _ 8B. 55, F4
        mov     eax, dword [ebp+8H]                     ; 1921 _ 8B. 45, 08
        add     eax, edx                                ; 1924 _ 01. D0
        movzx   eax, byte [eax]                         ; 1926 _ 0F B6. 00
        movzx   eax, al                                 ; 1929 _ 0F B6. C0
        mov     edx, dword [ebp-14H]                    ; 192C _ 8B. 55, EC
        add     edx, 16                                 ; 192F _ 83. C2, 10
        mov     dword [esp+4H], eax                     ; 1932 _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 1936 _ 89. 14 24
        call    _fifo8_put                              ; 1939 _ E8, 00000000(rel)
        add     dword [ebp-0CH], 1                      ; 193E _ 83. 45, F4, 01
?_082:  mov     edx, dword [ebp-0CH]                    ; 1942 _ 8B. 55, F4
        mov     eax, dword [ebp+8H]                     ; 1945 _ 8B. 45, 08
        add     eax, edx                                ; 1948 _ 01. D0
        movzx   eax, byte [eax]                         ; 194A _ 0F B6. 00
        test    al, al                                  ; 194D _ 84. C0
        jnz     ?_081                                   ; 194F _ 75, CD
        mov     eax, dword [ebp-14H]                    ; 1951 _ 8B. 45, EC
        mov     edx, dword [ebp-14H]                    ; 1954 _ 8B. 55, EC
        mov     dword [eax+28H], edx                    ; 1957 _ 89. 50, 28
        mov     eax, dword [ebp-14H]                    ; 195A _ 8B. 45, EC
        add     eax, 16                                 ; 195D _ 83. C0, 10
        mov     dword [esp+4H], 28                      ; 1960 _ C7. 44 24, 04, 0000001C
        mov     dword [esp], eax                        ; 1968 _ 89. 04 24
        call    _fifo8_put                              ; 196B _ E8, 00000000(rel)
        nop                                             ; 1970 _ 90
        leave                                           ; 1971 _ C9
        ret                                             ; 1972 _ C3
; _cmd_start End of function

_cmd_ncst:; Function begin
        push    ebp                                     ; 1973 _ 55
        mov     ebp, esp                                ; 1974 _ 89. E5
        sub     esp, 40                                 ; 1976 _ 83. EC, 28
        mov     dword [_show_console_window], 0         ; 1979 _ C7. 05, 00000124(d), 00000000
        mov     eax, dword [_console_count]             ; 1983 _ A1, 00000010(d)
        mov     dword [esp], eax                        ; 1988 _ 89. 04 24
        call    _launch_console                         ; 198B _ E8, FFFFF231
        mov     dword [_show_console_window], 1         ; 1990 _ C7. 05, 00000124(d), 00000001
        mov     eax, dword [_console_count]             ; 199A _ A1, 00000010(d)
        add     eax, 1                                  ; 199F _ 83. C0, 01
        mov     dword [_console_count], eax             ; 19A2 _ A3, 00000010(d)
        mov     eax, dword [_current_console_task]      ; 19A7 _ A1, 00000278(d)
        mov     dword [ebp-10H], eax                    ; 19AC _ 89. 45, F0
        mov     eax, dword [ebp-10H]                    ; 19AF _ 8B. 45, F0
        mov     dword [eax+28H], 0                      ; 19B2 _ C7. 40, 28, 00000000
        mov     dword [ebp-0CH], 5                      ; 19B9 _ C7. 45, F4, 00000005
        jmp     ?_084                                   ; 19C0 _ EB, 24

?_083:  mov     edx, dword [ebp-0CH]                    ; 19C2 _ 8B. 55, F4
        mov     eax, dword [ebp+8H]                     ; 19C5 _ 8B. 45, 08
        add     eax, edx                                ; 19C8 _ 01. D0
        movzx   eax, byte [eax]                         ; 19CA _ 0F B6. 00
        movzx   eax, al                                 ; 19CD _ 0F B6. C0
        mov     edx, dword [ebp-10H]                    ; 19D0 _ 8B. 55, F0
        add     edx, 16                                 ; 19D3 _ 83. C2, 10
        mov     dword [esp+4H], eax                     ; 19D6 _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 19DA _ 89. 14 24
        call    _fifo8_put                              ; 19DD _ E8, 00000000(rel)
        add     dword [ebp-0CH], 1                      ; 19E2 _ 83. 45, F4, 01
?_084:  mov     edx, dword [ebp-0CH]                    ; 19E6 _ 8B. 55, F4
        mov     eax, dword [ebp+8H]                     ; 19E9 _ 8B. 45, 08
        add     eax, edx                                ; 19EC _ 01. D0
        movzx   eax, byte [eax]                         ; 19EE _ 0F B6. 00
        test    al, al                                  ; 19F1 _ 84. C0
        jnz     ?_083                                   ; 19F3 _ 75, CD
        mov     eax, dword [ebp-10H]                    ; 19F5 _ 8B. 45, F0
        mov     edx, dword [ebp-10H]                    ; 19F8 _ 8B. 55, F0
        mov     dword [eax+28H], edx                    ; 19FB _ 89. 50, 28
        mov     eax, dword [ebp-10H]                    ; 19FE _ 8B. 45, F0
        add     eax, 16                                 ; 1A01 _ 83. C0, 10
        mov     dword [esp+4H], 28                      ; 1A04 _ C7. 44 24, 04, 0000001C
        mov     dword [esp], eax                        ; 1A0C _ 89. 04 24
        call    _fifo8_put                              ; 1A0F _ E8, 00000000(rel)
        nop                                             ; 1A14 _ 90
        leave                                           ; 1A15 _ C9
        ret                                             ; 1A16 _ C3
; _cmd_ncst End of function

_console_task:; Function begin
        push    ebp                                     ; 1A17 _ 55
        mov     ebp, esp                                ; 1A18 _ 89. E5
        push    esi                                     ; 1A1A _ 56
        push    ebx                                     ; 1A1B _ 53
        sub     esp, 112                                ; 1A1C _ 83. EC, 70
        call    _task_now                               ; 1A1F _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 1A24 _ 89. 45, F0
        mov     dword [ebp-0CH], 0                      ; 1A27 _ C7. 45, F4, 00000000
        mov     dword [ebp-14H], 0                      ; 1A2E _ C7. 45, EC, 00000000
        mov     dword [ebp-18H], 0                      ; 1A35 _ C7. 45, E8, 00000000
        mov     eax, dword [_memman]                    ; 1A3C _ A1, 00000000(d)
        mov     dword [esp+4H], 30                      ; 1A41 _ C7. 44 24, 04, 0000001E
        mov     dword [esp], eax                        ; 1A49 _ 89. 04 24
        call    _memman_alloc                           ; 1A4C _ E8, 00000000(rel)
        mov     dword [ebp-1CH], eax                    ; 1A51 _ 89. 45, E4
        mov     dword [ebp-20H], 64                     ; 1A54 _ C7. 45, E0, 00000040
        mov     eax, dword [ebp-10H]                    ; 1A5B _ 8B. 45, F0
        mov     edx, dword [ebp+8H]                     ; 1A5E _ 8B. 55, 08
        mov     dword [eax+94H], edx                    ; 1A61 _ 89. 90, 00000094
        mov     eax, dword [ebp-10H]                    ; 1A67 _ 8B. 45, F0
        mov     dword [eax+98H], 16                     ; 1A6A _ C7. 80, 00000098, 00000010
        mov     eax, dword [ebp-10H]                    ; 1A74 _ 8B. 45, F0
        mov     dword [eax+9CH], 28                     ; 1A77 _ C7. 80, 0000009C, 0000001C
        mov     eax, dword [ebp-10H]                    ; 1A81 _ 8B. 45, F0
        mov     dword [eax+0A0H], -1                    ; 1A84 _ C7. 80, 000000A0, FFFFFFFF
        call    _timer_alloc                            ; 1A8E _ E8, 00000000(rel)
        mov     dword [ebp-24H], eax                    ; 1A93 _ 89. 45, DC
        mov     eax, dword [ebp-10H]                    ; 1A96 _ 8B. 45, F0
        add     eax, 16                                 ; 1A99 _ 83. C0, 10
        mov     dword [esp+8H], 1                       ; 1A9C _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], eax                     ; 1AA4 _ 89. 44 24, 04
        mov     eax, dword [ebp-24H]                    ; 1AA8 _ 8B. 45, DC
        mov     dword [esp], eax                        ; 1AAB _ 89. 04 24
        call    _timer_init                             ; 1AAE _ E8, 00000000(rel)
        mov     dword [esp+4H], 50                      ; 1AB3 _ C7. 44 24, 04, 00000032
        mov     eax, dword [ebp-24H]                    ; 1ABB _ 8B. 45, DC
        mov     dword [esp], eax                        ; 1ABE _ 89. 04 24
        call    _timer_settime                          ; 1AC1 _ E8, 00000000(rel)
        mov     eax, dword [ebp-10H]                    ; 1AC6 _ 8B. 45, F0
        mov     edx, dword [ebp-24H]                    ; 1AC9 _ 8B. 55, DC
        mov     dword [eax+0A8H], edx                   ; 1ACC _ 89. 90, 000000A8
        mov     eax, dword [ebp-10H]                    ; 1AD2 _ 8B. 45, F0
        mov     edx, dword [ebp-1CH]                    ; 1AD5 _ 8B. 55, E4
        mov     dword [eax+0ACH], edx                   ; 1AD8 _ 89. 90, 000000AC
        mov     eax, dword [_shtctl]                    ; 1ADE _ A1, 00000264(d)
        mov     dword [esp+14H], ?_391                  ; 1AE3 _ C7. 44 24, 14, 00000023(d)
        mov     dword [esp+10H], 7                      ; 1AEB _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 28                     ; 1AF3 _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 8                       ; 1AFB _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp+8H]                     ; 1B03 _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 1B06 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1B0A _ 89. 04 24
        call    _showString                             ; 1B0D _ E8, 000012C3
        mov     dword [ebp-28H], 78848                  ; 1B12 _ C7. 45, D8, 00013400
        mov     dword [ebp-2CH], 0                      ; 1B19 _ C7. 45, D4, 00000000
?_085:  call    _io_cli                                 ; 1B20 _ E8, 00000000(rel)
        call    _task_now                               ; 1B25 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 1B2A _ 89. 45, F0
        mov     eax, dword [ebp-10H]                    ; 1B2D _ 8B. 45, F0
        add     eax, 16                                 ; 1B30 _ 83. C0, 10
        mov     dword [esp], eax                        ; 1B33 _ 89. 04 24
        call    _fifo8_status                           ; 1B36 _ E8, 00000000(rel)
        test    eax, eax                                ; 1B3B _ 85. C0
        jnz     ?_086                                   ; 1B3D _ 75, 0A
        call    _io_sti                                 ; 1B3F _ E8, 00000000(rel)
        jmp     ?_103                                   ; 1B44 _ E9, 000004AA

?_086:  mov     eax, dword [ebp-10H]                    ; 1B49 _ 8B. 45, F0
        add     eax, 16                                 ; 1B4C _ 83. C0, 10
        mov     dword [esp], eax                        ; 1B4F _ 89. 04 24
        call    _fifo8_get                              ; 1B52 _ E8, 00000000(rel)
        mov     dword [ebp-30H], eax                    ; 1B57 _ 89. 45, D0
        cmp     dword [ebp-30H], 1                      ; 1B5A _ 83. 7D, D0, 01
        jg      ?_089                                   ; 1B5E _ 7F, 6E
        cmp     dword [ebp-0CH], 0                      ; 1B60 _ 83. 7D, F4, 00
        js      ?_089                                   ; 1B64 _ 78, 68
        cmp     dword [ebp-30H], 0                      ; 1B66 _ 83. 7D, D0, 00
        jz      ?_087                                   ; 1B6A _ 74, 26
        mov     eax, dword [ebp-10H]                    ; 1B6C _ 8B. 45, F0
        add     eax, 16                                 ; 1B6F _ 83. C0, 10
        mov     dword [esp+8H], 0                       ; 1B72 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], eax                     ; 1B7A _ 89. 44 24, 04
        mov     eax, dword [ebp-24H]                    ; 1B7E _ 8B. 45, DC
        mov     dword [esp], eax                        ; 1B81 _ 89. 04 24
        call    _timer_init                             ; 1B84 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], 7                      ; 1B89 _ C7. 45, F4, 00000007
        jmp     ?_088                                   ; 1B90 _ EB, 24

?_087:  mov     eax, dword [ebp-10H]                    ; 1B92 _ 8B. 45, F0
        add     eax, 16                                 ; 1B95 _ 83. C0, 10
        mov     dword [esp+8H], 1                       ; 1B98 _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], eax                     ; 1BA0 _ 89. 44 24, 04
        mov     eax, dword [ebp-24H]                    ; 1BA4 _ 8B. 45, DC
        mov     dword [esp], eax                        ; 1BA7 _ 89. 04 24
        call    _timer_init                             ; 1BAA _ E8, 00000000(rel)
        mov     dword [ebp-0CH], 0                      ; 1BAF _ C7. 45, F4, 00000000
?_088:  mov     dword [esp+4H], 50                      ; 1BB6 _ C7. 44 24, 04, 00000032
        mov     eax, dword [ebp-24H]                    ; 1BBE _ 8B. 45, DC
        mov     dword [esp], eax                        ; 1BC1 _ 89. 04 24
        call    _timer_settime                          ; 1BC4 _ E8, 00000000(rel)
        jmp     ?_102                                   ; 1BC9 _ E9, 000003D7

?_089:  cmp     dword [ebp-30H], 87                     ; 1BCE _ 83. 7D, D0, 57
        jnz     ?_090                                   ; 1BD2 _ 75, 3C
        mov     dword [ebp-0CH], 7                      ; 1BD4 _ C7. 45, F4, 00000007
        mov     eax, dword [ebp-10H]                    ; 1BDB _ 8B. 45, F0
        add     eax, 16                                 ; 1BDE _ 83. C0, 10
        mov     dword [esp+8H], 0                       ; 1BE1 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], eax                     ; 1BE9 _ 89. 44 24, 04
        mov     eax, dword [ebp-24H]                    ; 1BED _ 8B. 45, DC
        mov     dword [esp], eax                        ; 1BF0 _ 89. 04 24
        call    _timer_init                             ; 1BF3 _ E8, 00000000(rel)
        mov     dword [esp+4H], 50                      ; 1BF8 _ C7. 44 24, 04, 00000032
        mov     eax, dword [ebp-24H]                    ; 1C00 _ 8B. 45, DC
        mov     dword [esp], eax                        ; 1C03 _ 89. 04 24
        call    _timer_settime                          ; 1C06 _ E8, 00000000(rel)
        jmp     ?_102                                   ; 1C0B _ E9, 00000395

?_090:  cmp     dword [ebp-30H], 88                     ; 1C10 _ 83. 7D, D0, 58
        jnz     ?_091                                   ; 1C14 _ 75, 6A
        mov     eax, dword [ebp-10H]                    ; 1C16 _ 8B. 45, F0
        mov     ecx, dword [eax+9CH]                    ; 1C19 _ 8B. 88, 0000009C
        mov     eax, dword [ebp-10H]                    ; 1C1F _ 8B. 45, F0
        mov     edx, dword [eax+98H]                    ; 1C22 _ 8B. 90, 00000098
        mov     eax, dword [_shtctl]                    ; 1C28 _ A1, 00000264(d)
        mov     dword [esp+10H], 0                      ; 1C2D _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], ecx                    ; 1C35 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 1C39 _ 89. 54 24, 08
        mov     edx, dword [ebp+8H]                     ; 1C3D _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 1C40 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1C44 _ 89. 04 24
        call    _set_cursor                             ; 1C47 _ E8, FFFFED57
        mov     dword [ebp-0CH], -1                     ; 1C4C _ C7. 45, F4, FFFFFFFF
        mov     eax, dword [_task_main]                 ; 1C53 _ A1, 00000274(d)
        mov     dword [esp+8H], 0                       ; 1C58 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], -1                      ; 1C60 _ C7. 44 24, 04, FFFFFFFF
        mov     dword [esp], eax                        ; 1C68 _ 89. 04 24
        call    _task_run                               ; 1C6B _ E8, 00000000(rel)
        mov     eax, dword [ebp-10H]                    ; 1C70 _ 8B. 45, F0
        mov     dword [esp], eax                        ; 1C73 _ 89. 04 24
        call    _task_sleep                             ; 1C76 _ E8, 00000000(rel)
        jmp     ?_102                                   ; 1C7B _ E9, 00000325

?_091:  cmp     dword [ebp-30H], 28                     ; 1C80 _ 83. 7D, D0, 1C
        jne     ?_100                                   ; 1C84 _ 0F 85, 000001E2
        mov     eax, dword [ebp-10H]                    ; 1C8A _ 8B. 45, F0
        mov     ecx, dword [eax+9CH]                    ; 1C8D _ 8B. 88, 0000009C
        mov     eax, dword [ebp-10H]                    ; 1C93 _ 8B. 45, F0
        mov     edx, dword [eax+98H]                    ; 1C96 _ 8B. 90, 00000098
        mov     eax, dword [_shtctl]                    ; 1C9C _ A1, 00000264(d)
        mov     dword [esp+10H], 0                      ; 1CA1 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], ecx                    ; 1CA9 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 1CAD _ 89. 54 24, 08
        mov     edx, dword [ebp+8H]                     ; 1CB1 _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 1CB4 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1CB8 _ 89. 04 24
        call    _set_cursor                             ; 1CBB _ E8, FFFFECE3
        mov     eax, dword [ebp-10H]                    ; 1CC0 _ 8B. 45, F0
        mov     eax, dword [eax+98H]                    ; 1CC3 _ 8B. 80, 00000098
        lea     edx, [eax+7H]                           ; 1CC9 _ 8D. 50, 07
        test    eax, eax                                ; 1CCC _ 85. C0
        cmovs   eax, edx                                ; 1CCE _ 0F 48. C2
        sar     eax, 3                                  ; 1CD1 _ C1. F8, 03
        lea     edx, [eax-2H]                           ; 1CD4 _ 8D. 50, FE
        mov     eax, dword [ebp-1CH]                    ; 1CD7 _ 8B. 45, E4
        add     eax, edx                                ; 1CDA _ 01. D0
        mov     byte [eax], 0                           ; 1CDC _ C6. 00, 00
        mov     eax, dword [ebp-10H]                    ; 1CDF _ 8B. 45, F0
        mov     eax, dword [eax+98H]                    ; 1CE2 _ 8B. 80, 00000098
        lea     edx, [eax+7H]                           ; 1CE8 _ 8D. 50, 07
        test    eax, eax                                ; 1CEB _ 85. C0
        cmovs   eax, edx                                ; 1CED _ 0F 48. C2
        sar     eax, 3                                  ; 1CF0 _ C1. F8, 03
        sub     eax, 2                                  ; 1CF3 _ 83. E8, 02
        mov     byte [ebp+eax-51H], 0                   ; 1CF6 _ C6. 44 05, AF, 00
        mov     eax, dword [ebp-10H]                    ; 1CFB _ 8B. 45, F0
        mov     eax, dword [eax+9CH]                    ; 1CFE _ 8B. 80, 0000009C
        mov     edx, dword [ebp+8H]                     ; 1D04 _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 1D07 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1D0B _ 89. 04 24
        call    _cons_newline                           ; 1D0E _ E8, 00000B74
        mov     edx, eax                                ; 1D13 _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 1D15 _ 8B. 45, F0
        mov     dword [eax+9CH], edx                    ; 1D18 _ 89. 90, 0000009C
        mov     dword [esp+4H], ?_393                   ; 1D1E _ C7. 44 24, 04, 0000002D(d)
        mov     eax, dword [ebp-1CH]                    ; 1D26 _ 8B. 45, E4
        mov     dword [esp], eax                        ; 1D29 _ 89. 04 24
        call    _strcmp                                 ; 1D2C _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 1D31 _ 83. F8, 01
        jnz     ?_092                                   ; 1D34 _ 75, 10
        mov     eax, dword [ebp+0CH]                    ; 1D36 _ 8B. 45, 0C
        mov     dword [esp], eax                        ; 1D39 _ 89. 04 24
        call    _cmd_mem                                ; 1D3C _ E8, FFFFF764
        jmp     ?_099                                   ; 1D41 _ E9, 00000114

?_092:  mov     dword [esp+4H], ?_394                   ; 1D46 _ C7. 44 24, 04, 00000031(d)
        mov     eax, dword [ebp-1CH]                    ; 1D4E _ 8B. 45, E4
        mov     dword [esp], eax                        ; 1D51 _ 89. 04 24
        call    _strcmp                                 ; 1D54 _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 1D59 _ 83. F8, 01
        jnz     ?_093                                   ; 1D5C _ 75, 0A
        call    _cmd_cls                                ; 1D5E _ E8, FFFFF86C
        jmp     ?_099                                   ; 1D63 _ E9, 000000F2

?_093:  mov     dword [esp+4H], ?_395                   ; 1D68 _ C7. 44 24, 04, 00000035(d)
        mov     eax, dword [ebp-1CH]                    ; 1D70 _ 8B. 45, E4
        mov     dword [esp], eax                        ; 1D73 _ 89. 04 24
        call    _strcmp                                 ; 1D76 _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 1D7B _ 83. F8, 01
        jnz     ?_094                                   ; 1D7E _ 75, 0A
        call    _cmd_hlt                                ; 1D80 _ E8, FFFFF94E
        jmp     ?_099                                   ; 1D85 _ E9, 000000D0

?_094:  mov     dword [esp+4H], ?_396                   ; 1D8A _ C7. 44 24, 04, 00000039(d)
        mov     eax, dword [ebp-1CH]                    ; 1D92 _ 8B. 45, E4
        mov     dword [esp], eax                        ; 1D95 _ 89. 04 24
        call    _strcmp                                 ; 1D98 _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 1D9D _ 83. F8, 01
        jnz     ?_095                                   ; 1DA0 _ 75, 0A
        call    _cmd_dir                                ; 1DA2 _ E8, FFFFF196
        jmp     ?_099                                   ; 1DA7 _ E9, 000000AE

?_095:  mov     dword [esp+4H], ?_397                   ; 1DAC _ C7. 44 24, 04, 0000003D(d)
        mov     eax, dword [ebp-1CH]                    ; 1DB4 _ 8B. 45, E4
        mov     dword [esp], eax                        ; 1DB7 _ 89. 04 24
        call    _strcmp                                 ; 1DBA _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 1DBF _ 83. F8, 01
        jnz     ?_096                                   ; 1DC2 _ 75, 10
        mov     eax, dword [ebp-10H]                    ; 1DC4 _ 8B. 45, F0
        mov     dword [esp], eax                        ; 1DC7 _ 89. 04 24
        call    _cmd_exit                               ; 1DCA _ E8, 000005AA
        jmp     ?_099                                   ; 1DCF _ E9, 00000086

?_096:  mov     eax, dword [ebp-1CH]                    ; 1DD4 _ 8B. 45, E4
        movzx   eax, byte [eax]                         ; 1DD7 _ 0F B6. 00
        cmp     al, 116                                 ; 1DDA _ 3C, 74
        jnz     ?_097                                   ; 1DDC _ 75, 34
        mov     eax, dword [ebp-1CH]                    ; 1DDE _ 8B. 45, E4
        add     eax, 1                                  ; 1DE1 _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 1DE4 _ 0F B6. 00
        cmp     al, 121                                 ; 1DE7 _ 3C, 79
        jnz     ?_097                                   ; 1DE9 _ 75, 27
        mov     eax, dword [ebp-1CH]                    ; 1DEB _ 8B. 45, E4
        add     eax, 2                                  ; 1DEE _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 1DF1 _ 0F B6. 00
        cmp     al, 112                                 ; 1DF4 _ 3C, 70
        jnz     ?_097                                   ; 1DF6 _ 75, 1A
        mov     eax, dword [ebp-1CH]                    ; 1DF8 _ 8B. 45, E4
        add     eax, 3                                  ; 1DFB _ 83. C0, 03
        movzx   eax, byte [eax]                         ; 1DFE _ 0F B6. 00
        cmp     al, 101                                 ; 1E01 _ 3C, 65
        jnz     ?_097                                   ; 1E03 _ 75, 0D
        mov     eax, dword [ebp-1CH]                    ; 1E05 _ 8B. 45, E4
        mov     dword [esp], eax                        ; 1E08 _ 89. 04 24
        call    _cmd_type                               ; 1E0B _ E8, FFFFF2DD
        jmp     ?_099                                   ; 1E10 _ EB, 48

?_097:  mov     dword [esp+4H], ?_398                   ; 1E12 _ C7. 44 24, 04, 00000042(d)
        mov     eax, dword [ebp-1CH]                    ; 1E1A _ 8B. 45, E4
        mov     dword [esp], eax                        ; 1E1D _ 89. 04 24
        call    _strcmp                                 ; 1E20 _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 1E25 _ 83. F8, 01
        jnz     ?_098                                   ; 1E28 _ 75, 0D
        lea     eax, [ebp-51H]                          ; 1E2A _ 8D. 45, AF
        mov     dword [esp], eax                        ; 1E2D _ 89. 04 24
        call    _cmd_start                              ; 1E30 _ E8, FFFFFA6A
        jmp     ?_099                                   ; 1E35 _ EB, 23

?_098:  mov     dword [esp+4H], ?_399                   ; 1E37 _ C7. 44 24, 04, 00000048(d)
        mov     eax, dword [ebp-1CH]                    ; 1E3F _ 8B. 45, E4
        mov     dword [esp], eax                        ; 1E42 _ 89. 04 24
        call    _strcmp                                 ; 1E45 _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 1E4A _ 83. F8, 01
        jnz     ?_099                                   ; 1E4D _ 75, 0B
        lea     eax, [ebp-51H]                          ; 1E4F _ 8D. 45, AF
        mov     dword [esp], eax                        ; 1E52 _ 89. 04 24
        call    _cmd_ncst                               ; 1E55 _ E8, FFFFFB19
?_099:  mov     eax, dword [ebp-10H]                    ; 1E5A _ 8B. 45, F0
        mov     dword [eax+98H], 16                     ; 1E5D _ C7. 80, 00000098, 00000010
        jmp     ?_102                                   ; 1E67 _ E9, 00000139

?_100:  cmp     dword [ebp-30H], 14                     ; 1E6C _ 83. 7D, D0, 0E
        jne     ?_101                                   ; 1E70 _ 0F 85, 00000098
        mov     eax, dword [ebp-10H]                    ; 1E76 _ 8B. 45, F0
        mov     eax, dword [eax+98H]                    ; 1E79 _ 8B. 80, 00000098
        cmp     eax, 8                                  ; 1E7F _ 83. F8, 08
        jle     ?_101                                   ; 1E82 _ 0F 8E, 00000086
        mov     eax, dword [ebp-10H]                    ; 1E88 _ 8B. 45, F0
        mov     ecx, dword [eax+9CH]                    ; 1E8B _ 8B. 88, 0000009C
        mov     eax, dword [ebp-10H]                    ; 1E91 _ 8B. 45, F0
        mov     edx, dword [eax+98H]                    ; 1E94 _ 8B. 90, 00000098
        mov     eax, dword [_shtctl]                    ; 1E9A _ A1, 00000264(d)
        mov     dword [esp+10H], 0                      ; 1E9F _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], ecx                    ; 1EA7 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 1EAB _ 89. 54 24, 08
        mov     edx, dword [ebp+8H]                     ; 1EAF _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 1EB2 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1EB6 _ 89. 04 24
        call    _set_cursor                             ; 1EB9 _ E8, FFFFEAE5
        mov     eax, dword [ebp-10H]                    ; 1EBE _ 8B. 45, F0
        mov     eax, dword [eax+98H]                    ; 1EC1 _ 8B. 80, 00000098
        lea     edx, [eax-8H]                           ; 1EC7 _ 8D. 50, F8
        mov     eax, dword [ebp-10H]                    ; 1ECA _ 8B. 45, F0
        mov     dword [eax+98H], edx                    ; 1ECD _ 89. 90, 00000098
        mov     eax, dword [ebp-10H]                    ; 1ED3 _ 8B. 45, F0
        mov     ecx, dword [eax+9CH]                    ; 1ED6 _ 8B. 88, 0000009C
        mov     eax, dword [ebp-10H]                    ; 1EDC _ 8B. 45, F0
        mov     edx, dword [eax+98H]                    ; 1EDF _ 8B. 90, 00000098
        mov     eax, dword [_shtctl]                    ; 1EE5 _ A1, 00000264(d)
        mov     dword [esp+10H], 0                      ; 1EEA _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], ecx                    ; 1EF2 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 1EF6 _ 89. 54 24, 08
        mov     edx, dword [ebp+8H]                     ; 1EFA _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 1EFD _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1F01 _ 89. 04 24
        call    _set_cursor                             ; 1F04 _ E8, FFFFEA9A
        jmp     ?_102                                   ; 1F09 _ E9, 00000097

?_101:  mov     eax, dword [ebp-30H]                    ; 1F0E _ 8B. 45, D0
        mov     dword [esp], eax                        ; 1F11 _ 89. 04 24
        call    _transferScanCode                       ; 1F14 _ E8, FFFFEB6B
        mov     byte [ebp-31H], al                      ; 1F19 _ 88. 45, CF
        mov     eax, dword [ebp-10H]                    ; 1F1C _ 8B. 45, F0
        mov     eax, dword [eax+98H]                    ; 1F1F _ 8B. 80, 00000098
        cmp     eax, 239                                ; 1F25 _ 3D, 000000EF
        jg      ?_102                                   ; 1F2A _ 7F, 79
        cmp     byte [ebp-31H], 0                       ; 1F2C _ 80. 7D, CF, 00
        jz      ?_102                                   ; 1F30 _ 74, 73
        mov     eax, dword [ebp-10H]                    ; 1F32 _ 8B. 45, F0
        mov     eax, dword [eax+98H]                    ; 1F35 _ 8B. 80, 00000098
        lea     edx, [eax+7H]                           ; 1F3B _ 8D. 50, 07
        test    eax, eax                                ; 1F3E _ 85. C0
        cmovs   eax, edx                                ; 1F40 _ 0F 48. C2
        sar     eax, 3                                  ; 1F43 _ C1. F8, 03
        lea     edx, [eax-2H]                           ; 1F46 _ 8D. 50, FE
        mov     eax, dword [ebp-1CH]                    ; 1F49 _ 8B. 45, E4
        add     edx, eax                                ; 1F4C _ 01. C2
        movzx   eax, byte [ebp-31H]                     ; 1F4E _ 0F B6. 45, CF
        mov     byte [edx], al                          ; 1F52 _ 88. 02
        mov     eax, dword [ebp-10H]                    ; 1F54 _ 8B. 45, F0
        mov     eax, dword [eax+98H]                    ; 1F57 _ 8B. 80, 00000098
        lea     edx, [eax+7H]                           ; 1F5D _ 8D. 50, 07
        test    eax, eax                                ; 1F60 _ 85. C0
        cmovs   eax, edx                                ; 1F62 _ 0F 48. C2
        sar     eax, 3                                  ; 1F65 _ C1. F8, 03
        lea     edx, [eax-1H]                           ; 1F68 _ 8D. 50, FF
        mov     eax, dword [ebp-1CH]                    ; 1F6B _ 8B. 45, E4
        add     eax, edx                                ; 1F6E _ 01. D0
        mov     byte [eax], 0                           ; 1F70 _ C6. 00, 00
        mov     eax, dword [ebp-10H]                    ; 1F73 _ 8B. 45, F0
        mov     eax, dword [eax+98H]                    ; 1F76 _ 8B. 80, 00000098
        lea     edx, [eax+7H]                           ; 1F7C _ 8D. 50, 07
        test    eax, eax                                ; 1F7F _ 85. C0
        cmovs   eax, edx                                ; 1F81 _ 0F 48. C2
        sar     eax, 3                                  ; 1F84 _ C1. F8, 03
        sub     eax, 2                                  ; 1F87 _ 83. E8, 02
        mov     edx, dword [ebp-30H]                    ; 1F8A _ 8B. 55, D0
        mov     byte [ebp+eax-51H], dl                  ; 1F8D _ 88. 54 05, AF
        movsx   eax, byte [ebp-31H]                     ; 1F91 _ 0F BE. 45, CF
        mov     dword [esp+4H], 1                       ; 1F95 _ C7. 44 24, 04, 00000001
        mov     dword [esp], eax                        ; 1F9D _ 89. 04 24
        call    _cons_putchar                           ; 1FA0 _ E8, 0000080B
?_102:  cmp     dword [ebp-0CH], 0                      ; 1FA5 _ 83. 7D, F4, 00
        js      ?_103                                   ; 1FA9 _ 78, 48
        mov     eax, dword [ebp-10H]                    ; 1FAB _ 8B. 45, F0
        mov     eax, dword [eax+94H]                    ; 1FAE _ 8B. 80, 00000094
        test    eax, eax                                ; 1FB4 _ 85. C0
        jz      ?_103                                   ; 1FB6 _ 74, 3B
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
?_103:  call    _io_sti                                 ; 1FF3 _ E8, 00000000(rel)
        jmp     ?_085                                   ; 1FF8 _ E9, FFFFFB23
; _console_task End of function

_cons_putstr:; Function begin
        push    ebp                                     ; 1FFD _ 55
        mov     ebp, esp                                ; 1FFE _ 89. E5
        sub     esp, 24                                 ; 2000 _ 83. EC, 18
        jmp     ?_105                                   ; 2003 _ EB, 1D

?_104:  mov     eax, dword [ebp+8H]                     ; 2005 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 2008 _ 0F B6. 00
        movsx   eax, al                                 ; 200B _ 0F BE. C0
        mov     dword [esp+4H], 1                       ; 200E _ C7. 44 24, 04, 00000001
        mov     dword [esp], eax                        ; 2016 _ 89. 04 24
        call    _cons_putchar                           ; 2019 _ E8, 00000792
        add     dword [ebp+8H], 1                       ; 201E _ 83. 45, 08, 01
?_105:  mov     eax, dword [ebp+8H]                     ; 2022 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 2025 _ 0F B6. 00
        test    al, al                                  ; 2028 _ 84. C0
        jnz     ?_104                                   ; 202A _ 75, D9
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
        jns     ?_106                                   ; 205D _ 79, 03
        neg     dword [ebp-14H]                         ; 205F _ F7. 5D, EC
?_106:  cmp     dword [ebp-18H], 0                      ; 2062 _ 83. 7D, E8, 00
        jns     ?_107                                   ; 2066 _ 79, 03
        neg     dword [ebp-18H]                         ; 2068 _ F7. 5D, E8
?_107:  mov     eax, dword [ebp-14H]                    ; 206B _ 8B. 45, EC
        cmp     eax, dword [ebp-18H]                    ; 206E _ 3B. 45, E8
        jl      ?_111                                   ; 2071 _ 7C, 53
        mov     eax, dword [ebp-14H]                    ; 2073 _ 8B. 45, EC
        add     eax, 1                                  ; 2076 _ 83. C0, 01
        mov     dword [ebp-10H], eax                    ; 2079 _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 207C _ 8B. 45, 0C
        cmp     eax, dword [ebp+14H]                    ; 207F _ 3B. 45, 14
        jle     ?_108                                   ; 2082 _ 7E, 09
        mov     dword [ebp-14H], -1024                  ; 2084 _ C7. 45, EC, FFFFFC00
        jmp     ?_109                                   ; 208B _ EB, 07

?_108:  mov     dword [ebp-14H], 1024                   ; 208D _ C7. 45, EC, 00000400
?_109:  mov     eax, dword [ebp+10H]                    ; 2094 _ 8B. 45, 10
        cmp     eax, dword [ebp+18H]                    ; 2097 _ 3B. 45, 18
        jg      ?_110                                   ; 209A _ 7F, 15
        mov     eax, dword [ebp+18H]                    ; 209C _ 8B. 45, 18
        sub     eax, dword [ebp+10H]                    ; 209F _ 2B. 45, 10
        add     eax, 1                                  ; 20A2 _ 83. C0, 01
        shl     eax, 10                                 ; 20A5 _ C1. E0, 0A
        cdq                                             ; 20A8 _ 99
        idiv    dword [ebp-10H]                         ; 20A9 _ F7. 7D, F0
        mov     dword [ebp-18H], eax                    ; 20AC _ 89. 45, E8
        jmp     ?_115                                   ; 20AF _ EB, 66

?_110:  mov     eax, dword [ebp+18H]                    ; 20B1 _ 8B. 45, 18
        sub     eax, dword [ebp+10H]                    ; 20B4 _ 2B. 45, 10
        sub     eax, 1                                  ; 20B7 _ 83. E8, 01
        shl     eax, 10                                 ; 20BA _ C1. E0, 0A
        cdq                                             ; 20BD _ 99
        idiv    dword [ebp-10H]                         ; 20BE _ F7. 7D, F0
        mov     dword [ebp-18H], eax                    ; 20C1 _ 89. 45, E8
        jmp     ?_115                                   ; 20C4 _ EB, 51

?_111:  mov     eax, dword [ebp-18H]                    ; 20C6 _ 8B. 45, E8
        add     eax, 1                                  ; 20C9 _ 83. C0, 01
        mov     dword [ebp-10H], eax                    ; 20CC _ 89. 45, F0
        mov     eax, dword [ebp+10H]                    ; 20CF _ 8B. 45, 10
        cmp     eax, dword [ebp+18H]                    ; 20D2 _ 3B. 45, 18
        jle     ?_112                                   ; 20D5 _ 7E, 09
        mov     dword [ebp-18H], -1024                  ; 20D7 _ C7. 45, E8, FFFFFC00
        jmp     ?_113                                   ; 20DE _ EB, 07

?_112:  mov     dword [ebp-18H], 1024                   ; 20E0 _ C7. 45, E8, 00000400
?_113:  mov     eax, dword [ebp+0CH]                    ; 20E7 _ 8B. 45, 0C
        cmp     eax, dword [ebp+14H]                    ; 20EA _ 3B. 45, 14
        jg      ?_114                                   ; 20ED _ 7F, 15
        mov     eax, dword [ebp+14H]                    ; 20EF _ 8B. 45, 14
        sub     eax, dword [ebp+0CH]                    ; 20F2 _ 2B. 45, 0C
        add     eax, 1                                  ; 20F5 _ 83. C0, 01
        shl     eax, 10                                 ; 20F8 _ C1. E0, 0A
        cdq                                             ; 20FB _ 99
        idiv    dword [ebp-10H]                         ; 20FC _ F7. 7D, F0
        mov     dword [ebp-14H], eax                    ; 20FF _ 89. 45, EC
        jmp     ?_115                                   ; 2102 _ EB, 13

?_114:  mov     eax, dword [ebp+14H]                    ; 2104 _ 8B. 45, 14
        sub     eax, dword [ebp+0CH]                    ; 2107 _ 2B. 45, 0C
        sub     eax, 1                                  ; 210A _ 83. E8, 01
        shl     eax, 10                                 ; 210D _ C1. E0, 0A
        cdq                                             ; 2110 _ 99
        idiv    dword [ebp-10H]                         ; 2111 _ F7. 7D, F0
        mov     dword [ebp-14H], eax                    ; 2114 _ 89. 45, EC
?_115:  mov     dword [ebp-4H], 0                       ; 2117 _ C7. 45, FC, 00000000
        jmp     ?_117                                   ; 211E _ EB, 35

?_116:  mov     eax, dword [ebp+8H]                     ; 2120 _ 8B. 45, 08
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
?_117:  mov     eax, dword [ebp-4H]                     ; 2155 _ 8B. 45, FC
        cmp     eax, dword [ebp-10H]                    ; 2158 _ 3B. 45, F0
        jl      ?_116                                   ; 215B _ 7C, C3
        nop                                             ; 215D _ 90
        leave                                           ; 215E _ C9
        ret                                             ; 215F _ C3
; _api_linewin End of function

_handle_keyboard:; Function begin
        push    ebp                                     ; 2160 _ 55
        mov     ebp, esp                                ; 2161 _ 89. E5
        sub     esp, 56                                 ; 2163 _ 83. EC, 38
?_118:  call    _io_cli                                 ; 2166 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 216B _ 8B. 45, 08
        add     eax, 16                                 ; 216E _ 83. C0, 10
        mov     dword [esp], eax                        ; 2171 _ 89. 04 24
        call    _fifo8_status                           ; 2174 _ E8, 00000000(rel)
        test    eax, eax                                ; 2179 _ 85. C0
        jnz     ?_119                                   ; 217B _ 75, 2A
        call    _io_sti                                 ; 217D _ E8, 00000000(rel)
        cmp     dword [ebp+0CH], 0                      ; 2182 _ 83. 7D, 0C, 00
        jne     ?_123                                   ; 2186 _ 0F 85, 000000E2
        call    _io_sti                                 ; 218C _ E8, 00000000(rel)
        mov     eax, dword [ebp+10H]                    ; 2191 _ 8B. 45, 10
        add     eax, 28                                 ; 2194 _ 83. C0, 1C
        mov     dword [eax], -1                         ; 2197 _ C7. 00, FFFFFFFF
        mov     eax, 0                                  ; 219D _ B8, 00000000
        jmp     ?_124                                   ; 21A2 _ E9, 000000CD

?_119:  mov     eax, dword [ebp+8H]                     ; 21A7 _ 8B. 45, 08
        add     eax, 16                                 ; 21AA _ 83. C0, 10
        mov     dword [esp], eax                        ; 21AD _ 89. 04 24
        call    _fifo8_get                              ; 21B0 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 21B5 _ 89. 45, F4
        call    _io_sti                                 ; 21B8 _ E8, 00000000(rel)
        cmp     dword [ebp-0CH], 255                    ; 21BD _ 81. 7D, F4, 000000FF
        jle     ?_120                                   ; 21C4 _ 7E, 37
        mov     edx, dword [_sht_back]                  ; 21C6 _ 8B. 15, 00000268(d)
        mov     eax, dword [_shtctl]                    ; 21CC _ A1, 00000264(d)
        mov     dword [esp+14H], ?_400                  ; 21D1 _ C7. 44 24, 14, 0000004D(d)
        mov     dword [esp+10H], 7                      ; 21D9 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 176                    ; 21E1 _ C7. 44 24, 0C, 000000B0
        mov     dword [esp+8H], 0                       ; 21E9 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 21F1 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 21F5 _ 89. 04 24
        call    _showString                             ; 21F8 _ E8, 00000BD8
?_120:  cmp     dword [ebp-0CH], 1                      ; 21FD _ 83. 7D, F4, 01
        jg      ?_121                                   ; 2201 _ 7F, 41
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
        jmp     ?_118                                   ; 223F _ E9, FFFFFF22

?_121:  cmp     dword [ebp-0CH], 2                      ; 2244 _ 83. 7D, F4, 02
        jnz     ?_122                                   ; 2248 _ 75, 12
        mov     eax, dword [ebp+8H]                     ; 224A _ 8B. 45, 08
        mov     dword [eax+0A0H], 7                     ; 224D _ C7. 80, 000000A0, 00000007
        jmp     ?_118                                   ; 2257 _ E9, FFFFFF0A

?_122:  mov     eax, dword [ebp+10H]                    ; 225C _ 8B. 45, 10
        add     eax, 28                                 ; 225F _ 83. C0, 1C
        mov     edx, dword [ebp-0CH]                    ; 2262 _ 8B. 55, F4
        mov     dword [eax], edx                        ; 2265 _ 89. 10
        mov     eax, 0                                  ; 2267 _ B8, 00000000
        jmp     ?_124                                   ; 226C _ EB, 06

?_123:  nop                                             ; 226E _ 90
        jmp     ?_118                                   ; 226F _ E9, FFFFFEF2
; _handle_keyboard End of function

?_124:  ; Local function
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
        jz      ?_125                                   ; 2329 _ 74, 40
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
?_125:  mov     eax, dword [ebp+8H]                     ; 236B _ 8B. 45, 08
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
        mov     dword [esp], _keyinfo                   ; 238C _ C7. 04 24, 0000001C(d)
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
        lea     eax, [ebp+24H]                          ; 23B0 _ 8D. 45, 24
        add     eax, 4                                  ; 23B3 _ 83. C0, 04
        mov     dword [ebp-10H], eax                    ; 23B6 _ 89. 45, F0
        mov     dword [ebp-14H], 0                      ; 23B9 _ C7. 45, EC, 00000000
        cmp     dword [ebp+1CH], 1                      ; 23C0 _ 83. 7D, 1C, 01
        jnz     ?_126                                   ; 23C4 _ 75, 1B
        mov     eax, dword [ebp+24H]                    ; 23C6 _ 8B. 45, 24
        movsx   eax, al                                 ; 23C9 _ 0F BE. C0
        mov     dword [esp+4H], 1                       ; 23CC _ C7. 44 24, 04, 00000001
        mov     dword [esp], eax                        ; 23D4 _ 89. 04 24
        call    _cons_putchar                           ; 23D7 _ E8, 000003D4
        jmp     ?_140                                   ; 23DC _ E9, 000003C3

?_126:  cmp     dword [ebp+1CH], 2                      ; 23E1 _ 83. 7D, 1C, 02
        jnz     ?_127                                   ; 23E5 _ 75, 1D
        mov     eax, dword [ebp-0CH]                    ; 23E7 _ 8B. 45, F4
        mov     eax, dword [eax+0B0H]                   ; 23EA _ 8B. 80, 000000B0
        mov     edx, dword [eax]                        ; 23F0 _ 8B. 10
        mov     eax, dword [ebp+18H]                    ; 23F2 _ 8B. 45, 18
        add     eax, edx                                ; 23F5 _ 01. D0
        mov     dword [esp], eax                        ; 23F7 _ 89. 04 24
        call    _cons_putstr                            ; 23FA _ E8, FFFFFBFE
        jmp     ?_140                                   ; 23FF _ E9, 000003A0

?_127:  cmp     dword [ebp+1CH], 4                      ; 2404 _ 83. 7D, 1C, 04
        jnz     ?_128                                   ; 2408 _ 75, 15
        mov     eax, dword [ebp-0CH]                    ; 240A _ 8B. 45, F4
        mov     dword [eax+34H], 0                      ; 240D _ C7. 40, 34, 00000000
        mov     eax, dword [ebp-0CH]                    ; 2414 _ 8B. 45, F4
        add     eax, 48                                 ; 2417 _ 83. C0, 30
        jmp     ?_141                                   ; 241A _ E9, 0000038A

?_128:  cmp     dword [ebp+1CH], 5                      ; 241F _ 83. 7D, 1C, 05
        jne     ?_129                                   ; 2423 _ 0F 85, 00000107
        mov     eax, dword [_shtctl]                    ; 2429 _ A1, 00000264(d)
        mov     dword [esp], eax                        ; 242E _ 89. 04 24
        call    _sheet_alloc                            ; 2431 _ E8, 00000000(rel)
        mov     dword [ebp-18H], eax                    ; 2436 _ 89. 45, E8
        mov     eax, dword [ebp-18H]                    ; 2439 _ 8B. 45, E8
        mov     edx, dword [ebp-0CH]                    ; 243C _ 8B. 55, F4
        mov     dword [eax+20H], edx                    ; 243F _ 89. 50, 20
        mov     eax, dword [ebp-18H]                    ; 2442 _ 8B. 45, E8
        mov     eax, dword [eax+1CH]                    ; 2445 _ 8B. 40, 1C
        or      eax, 10H                                ; 2448 _ 83. C8, 10
        mov     edx, eax                                ; 244B _ 89. C2
        mov     eax, dword [ebp-18H]                    ; 244D _ 8B. 45, E8
        mov     dword [eax+1CH], edx                    ; 2450 _ 89. 50, 1C
        mov     edx, dword [ebp+24H]                    ; 2453 _ 8B. 55, 24
        mov     eax, dword [ebp-0CH]                    ; 2456 _ 8B. 45, F4
        mov     eax, dword [eax+0B0H]                   ; 2459 _ 8B. 80, 000000B0
        mov     ecx, dword [eax+4H]                     ; 245F _ 8B. 48, 04
        mov     eax, dword [ebp+18H]                    ; 2462 _ 8B. 45, 18
        add     eax, ecx                                ; 2465 _ 01. C8
        mov     dword [esp+10H], edx                    ; 2467 _ 89. 54 24, 10
        mov     edx, dword [ebp+8H]                     ; 246B _ 8B. 55, 08
        mov     dword [esp+0CH], edx                    ; 246E _ 89. 54 24, 0C
        mov     edx, dword [ebp+0CH]                    ; 2472 _ 8B. 55, 0C
        mov     dword [esp+8H], edx                     ; 2475 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 2479 _ 89. 44 24, 04
        mov     eax, dword [ebp-18H]                    ; 247D _ 8B. 45, E8
        mov     dword [esp], eax                        ; 2480 _ 89. 04 24
        call    _sheet_setbuf                           ; 2483 _ E8, 00000000(rel)
        mov     eax, dword [ebp-0CH]                    ; 2488 _ 8B. 45, F4
        mov     eax, dword [eax+0B0H]                   ; 248B _ 8B. 80, 000000B0
        mov     edx, dword [eax]                        ; 2491 _ 8B. 10
        mov     eax, dword [ebp+20H]                    ; 2493 _ 8B. 45, 20
        add     edx, eax                                ; 2496 _ 01. C2
        mov     eax, dword [_shtctl]                    ; 2498 _ A1, 00000264(d)
        mov     dword [esp+0CH], 0                      ; 249D _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], edx                     ; 24A5 _ 89. 54 24, 08
        mov     edx, dword [ebp-18H]                    ; 24A9 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 24AC _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 24B0 _ 89. 04 24
        call    _make_window8                           ; 24B3 _ E8, 0000197A
        mov     eax, dword [_shtctl]                    ; 24B8 _ A1, 00000264(d)
        mov     eax, dword [eax+0CH]                    ; 24BD _ 8B. 40, 0C
        sub     eax, dword [ebp+8H]                     ; 24C0 _ 2B. 45, 08
        mov     edx, eax                                ; 24C3 _ 89. C2
        shr     edx, 31                                 ; 24C5 _ C1. EA, 1F
        add     eax, edx                                ; 24C8 _ 01. D0
        sar     eax, 1                                  ; 24CA _ D1. F8
        mov     ecx, eax                                ; 24CC _ 89. C1
        mov     eax, dword [_shtctl]                    ; 24CE _ A1, 00000264(d)
        mov     eax, dword [eax+8H]                     ; 24D3 _ 8B. 40, 08
        sub     eax, dword [ebp+0CH]                    ; 24D6 _ 2B. 45, 0C
        mov     edx, eax                                ; 24D9 _ 89. C2
        shr     edx, 31                                 ; 24DB _ C1. EA, 1F
        add     eax, edx                                ; 24DE _ 01. D0
        sar     eax, 1                                  ; 24E0 _ D1. F8
        mov     edx, eax                                ; 24E2 _ 89. C2
        mov     eax, dword [_shtctl]                    ; 24E4 _ A1, 00000264(d)
        mov     dword [esp+0CH], ecx                    ; 24E9 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 24ED _ 89. 54 24, 08
        mov     edx, dword [ebp-18H]                    ; 24F1 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 24F4 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 24F8 _ 89. 04 24
        call    _sheet_slide                            ; 24FB _ E8, 00000000(rel)
        mov     eax, dword [_shtctl]                    ; 2500 _ A1, 00000264(d)
        mov     edx, dword [eax+10H]                    ; 2505 _ 8B. 50, 10
        mov     eax, dword [_shtctl]                    ; 2508 _ A1, 00000264(d)
        mov     dword [esp+8H], edx                     ; 250D _ 89. 54 24, 08
        mov     edx, dword [ebp-18H]                    ; 2511 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 2514 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2518 _ 89. 04 24
        call    _sheet_updown                           ; 251B _ E8, 00000000(rel)
        mov     eax, dword [ebp-10H]                    ; 2520 _ 8B. 45, F0
        add     eax, 28                                 ; 2523 _ 83. C0, 1C
        mov     edx, dword [ebp-18H]                    ; 2526 _ 8B. 55, E8
        mov     dword [eax], edx                        ; 2529 _ 89. 10
        jmp     ?_140                                   ; 252B _ E9, 00000274

?_129:  cmp     dword [ebp+1CH], 6                      ; 2530 _ 83. 7D, 1C, 06
        jne     ?_130                                   ; 2534 _ 0F 85, 0000008D
        mov     eax, dword [ebp+18H]                    ; 253A _ 8B. 45, 18
        mov     dword [ebp-18H], eax                    ; 253D _ 89. 45, E8
        mov     eax, dword [ebp-0CH]                    ; 2540 _ 8B. 45, F4
        mov     eax, dword [eax+0B0H]                   ; 2543 _ 8B. 80, 000000B0
        mov     edx, dword [eax+4H]                     ; 2549 _ 8B. 50, 04
        mov     eax, dword [ebp+10H]                    ; 254C _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 254F _ 8D. 0C 02
        mov     eax, dword [ebp+24H]                    ; 2552 _ 8B. 45, 24
        movsx   eax, al                                 ; 2555 _ 0F BE. C0
        mov     edx, dword [_shtctl]                    ; 2558 _ 8B. 15, 00000264(d)
        mov     dword [esp+14H], ecx                    ; 255E _ 89. 4C 24, 14
        mov     dword [esp+10H], eax                    ; 2562 _ 89. 44 24, 10
        mov     eax, dword [ebp+8H]                     ; 2566 _ 8B. 45, 08
        mov     dword [esp+0CH], eax                    ; 2569 _ 89. 44 24, 0C
        mov     eax, dword [ebp+0CH]                    ; 256D _ 8B. 45, 0C
        mov     dword [esp+8H], eax                     ; 2570 _ 89. 44 24, 08
        mov     eax, dword [ebp-18H]                    ; 2574 _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 2577 _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 257B _ 89. 14 24
        call    _showString                             ; 257E _ E8, 00000852
        mov     eax, dword [ebp+8H]                     ; 2583 _ 8B. 45, 08
        lea     ecx, [eax+10H]                          ; 2586 _ 8D. 48, 10
        mov     eax, dword [ebp+20H]                    ; 2589 _ 8B. 45, 20
        lea     edx, [eax*8]                            ; 258C _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp+0CH]                    ; 2593 _ 8B. 45, 0C
        add     edx, eax                                ; 2596 _ 01. C2
        mov     eax, dword [_shtctl]                    ; 2598 _ A1, 00000264(d)
        mov     dword [esp+14H], ecx                    ; 259D _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 25A1 _ 89. 54 24, 10
        mov     edx, dword [ebp+8H]                     ; 25A5 _ 8B. 55, 08
        mov     dword [esp+0CH], edx                    ; 25A8 _ 89. 54 24, 0C
        mov     edx, dword [ebp+0CH]                    ; 25AC _ 8B. 55, 0C
        mov     dword [esp+8H], edx                     ; 25AF _ 89. 54 24, 08
        mov     edx, dword [ebp-18H]                    ; 25B3 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 25B6 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 25BA _ 89. 04 24
        call    _sheet_refresh                          ; 25BD _ E8, 00000000(rel)
        jmp     ?_140                                   ; 25C2 _ E9, 000001DD

?_130:  cmp     dword [ebp+1CH], 7                      ; 25C7 _ 83. 7D, 1C, 07
        jnz     ?_131                                   ; 25CB _ 75, 7E
        mov     eax, dword [ebp+18H]                    ; 25CD _ 8B. 45, 18
        mov     dword [ebp-18H], eax                    ; 25D0 _ 89. 45, E8
        mov     ebx, dword [ebp+24H]                    ; 25D3 _ 8B. 5D, 24
        mov     eax, dword [ebp+10H]                    ; 25D6 _ 8B. 45, 10
        movzx   eax, al                                 ; 25D9 _ 0F B6. C0
        mov     edx, dword [ebp-18H]                    ; 25DC _ 8B. 55, E8
        mov     ecx, dword [edx+4H]                     ; 25DF _ 8B. 4A, 04
        mov     edx, dword [ebp-18H]                    ; 25E2 _ 8B. 55, E8
        mov     edx, dword [edx]                        ; 25E5 _ 8B. 12
        mov     esi, dword [ebp+8H]                     ; 25E7 _ 8B. 75, 08
        mov     dword [esp+18H], esi                    ; 25EA _ 89. 74 24, 18
        mov     esi, dword [ebp+0CH]                    ; 25EE _ 8B. 75, 0C
        mov     dword [esp+14H], esi                    ; 25F1 _ 89. 74 24, 14
        mov     esi, dword [ebp+20H]                    ; 25F5 _ 8B. 75, 20
        mov     dword [esp+10H], esi                    ; 25F8 _ 89. 74 24, 10
        mov     dword [esp+0CH], ebx                    ; 25FC _ 89. 5C 24, 0C
        mov     dword [esp+8H], eax                     ; 2600 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 2604 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 2608 _ 89. 14 24
        call    _boxfill8                               ; 260B _ E8, 00000E69
        mov     eax, dword [ebp+8H]                     ; 2610 _ 8B. 45, 08
        lea     ebx, [eax+1H]                           ; 2613 _ 8D. 58, 01
        mov     eax, dword [ebp+0CH]                    ; 2616 _ 8B. 45, 0C
        lea     ecx, [eax+1H]                           ; 2619 _ 8D. 48, 01
        mov     edx, dword [ebp+24H]                    ; 261C _ 8B. 55, 24
        mov     eax, dword [_shtctl]                    ; 261F _ A1, 00000264(d)
        mov     dword [esp+14H], ebx                    ; 2624 _ 89. 5C 24, 14
        mov     dword [esp+10H], ecx                    ; 2628 _ 89. 4C 24, 10
        mov     ecx, dword [ebp+20H]                    ; 262C _ 8B. 4D, 20
        mov     dword [esp+0CH], ecx                    ; 262F _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 2633 _ 89. 54 24, 08
        mov     edx, dword [ebp-18H]                    ; 2637 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 263A _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 263E _ 89. 04 24
        call    _sheet_refresh                          ; 2641 _ E8, 00000000(rel)
        jmp     ?_140                                   ; 2646 _ E9, 00000159

?_131:  cmp     dword [ebp+1CH], 11                     ; 264B _ 83. 7D, 1C, 0B
        jnz     ?_132                                   ; 264F _ 75, 28
        mov     eax, dword [ebp+18H]                    ; 2651 _ 8B. 45, 18
        mov     dword [ebp-18H], eax                    ; 2654 _ 89. 45, E8
        mov     ebx, dword [ebp+24H]                    ; 2657 _ 8B. 5D, 24
        mov     eax, dword [ebp-18H]                    ; 265A _ 8B. 45, E8
        mov     edx, dword [eax]                        ; 265D _ 8B. 10
        mov     eax, dword [ebp-18H]                    ; 265F _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 2662 _ 8B. 40, 04
        imul    eax, dword [ebp+8H]                     ; 2665 _ 0F AF. 45, 08
        mov     ecx, dword [ebp+0CH]                    ; 2669 _ 8B. 4D, 0C
        add     eax, ecx                                ; 266C _ 01. C8
        add     eax, edx                                ; 266E _ 01. D0
        mov     edx, ebx                                ; 2670 _ 89. DA
        mov     byte [eax], dl                          ; 2672 _ 88. 10
        jmp     ?_140                                   ; 2674 _ E9, 0000012B

?_132:  cmp     dword [ebp+1CH], 12                     ; 2679 _ 83. 7D, 1C, 0C
        jnz     ?_133                                   ; 267D _ 75, 3B
        mov     eax, dword [ebp+18H]                    ; 267F _ 8B. 45, 18
        mov     dword [ebp-18H], eax                    ; 2682 _ 89. 45, E8
        mov     edx, dword [ebp+24H]                    ; 2685 _ 8B. 55, 24
        mov     eax, dword [_shtctl]                    ; 2688 _ A1, 00000264(d)
        mov     ecx, dword [ebp+8H]                     ; 268D _ 8B. 4D, 08
        mov     dword [esp+14H], ecx                    ; 2690 _ 89. 4C 24, 14
        mov     ecx, dword [ebp+0CH]                    ; 2694 _ 8B. 4D, 0C
        mov     dword [esp+10H], ecx                    ; 2697 _ 89. 4C 24, 10
        mov     ecx, dword [ebp+20H]                    ; 269B _ 8B. 4D, 20
        mov     dword [esp+0CH], ecx                    ; 269E _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 26A2 _ 89. 54 24, 08
        mov     edx, dword [ebp-18H]                    ; 26A6 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 26A9 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 26AD _ 89. 04 24
        call    _sheet_refresh                          ; 26B0 _ E8, 00000000(rel)
        jmp     ?_140                                   ; 26B5 _ E9, 000000EA

?_133:  cmp     dword [ebp+1CH], 13                     ; 26BA _ 83. 7D, 1C, 0D
        jnz     ?_134                                   ; 26BE _ 75, 39
        mov     eax, dword [ebp+18H]                    ; 26C0 _ 8B. 45, 18
        mov     dword [ebp-18H], eax                    ; 26C3 _ 89. 45, E8
        mov     eax, dword [ebp+24H]                    ; 26C6 _ 8B. 45, 24
        mov     edx, dword [ebp+10H]                    ; 26C9 _ 8B. 55, 10
        mov     dword [esp+14H], edx                    ; 26CC _ 89. 54 24, 14
        mov     edx, dword [ebp+8H]                     ; 26D0 _ 8B. 55, 08
        mov     dword [esp+10H], edx                    ; 26D3 _ 89. 54 24, 10
        mov     edx, dword [ebp+0CH]                    ; 26D7 _ 8B. 55, 0C
        mov     dword [esp+0CH], edx                    ; 26DA _ 89. 54 24, 0C
        mov     edx, dword [ebp+20H]                    ; 26DE _ 8B. 55, 20
        mov     dword [esp+8H], edx                     ; 26E1 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 26E5 _ 89. 44 24, 04
        mov     eax, dword [ebp-18H]                    ; 26E9 _ 8B. 45, E8
        mov     dword [esp], eax                        ; 26EC _ 89. 04 24
        call    _api_linewin                            ; 26EF _ E8, FFFFF93B
        jmp     ?_140                                   ; 26F4 _ E9, 000000AB

?_134:  cmp     dword [ebp+1CH], 14                     ; 26F9 _ 83. 7D, 1C, 0E
        jnz     ?_135                                   ; 26FD _ 75, 19
        mov     edx, dword [ebp+18H]                    ; 26FF _ 8B. 55, 18
        mov     eax, dword [_shtctl]                    ; 2702 _ A1, 00000264(d)
        mov     dword [esp+4H], edx                     ; 2707 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 270B _ 89. 04 24
        call    _sheet_free                             ; 270E _ E8, 00000000(rel)
        jmp     ?_140                                   ; 2713 _ E9, 0000008C

?_135:  cmp     dword [ebp+1CH], 15                     ; 2718 _ 83. 7D, 1C, 0F
        jnz     ?_136                                   ; 271C _ 75, 1B
        mov     eax, dword [ebp+24H]                    ; 271E _ 8B. 45, 24
        mov     edx, dword [ebp-10H]                    ; 2721 _ 8B. 55, F0
        mov     dword [esp+8H], edx                     ; 2724 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 2728 _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 272C _ 8B. 45, F4
        mov     dword [esp], eax                        ; 272F _ 89. 04 24
        call    _handle_keyboard                        ; 2732 _ E8, FFFFFA29
        jmp     ?_140                                   ; 2737 _ EB, 6B

?_136:  cmp     dword [ebp+1CH], 16                     ; 2739 _ 83. 7D, 1C, 10
        jnz     ?_137                                   ; 273D _ 75, 11
        call    _timer_alloc                            ; 273F _ E8, 00000000(rel)
        mov     edx, eax                                ; 2744 _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 2746 _ 8B. 45, F0
        add     eax, 28                                 ; 2749 _ 83. C0, 1C
        mov     dword [eax], edx                        ; 274C _ 89. 10
        jmp     ?_140                                   ; 274E _ EB, 54

?_137:  cmp     dword [ebp+1CH], 17                     ; 2750 _ 83. 7D, 1C, 11
        jnz     ?_138                                   ; 2754 _ 75, 21
        mov     eax, dword [ebp+24H]                    ; 2756 _ 8B. 45, 24
        movzx   eax, al                                 ; 2759 _ 0F B6. C0
        mov     edx, dword [ebp-0CH]                    ; 275C _ 8B. 55, F4
        lea     ecx, [edx+10H]                          ; 275F _ 8D. 4A, 10
        mov     edx, dword [ebp+18H]                    ; 2762 _ 8B. 55, 18
        mov     dword [esp+8H], eax                     ; 2765 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 2769 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 276D _ 89. 14 24
        call    _timer_init                             ; 2770 _ E8, 00000000(rel)
        jmp     ?_140                                   ; 2775 _ EB, 2D

?_138:  cmp     dword [ebp+1CH], 18                     ; 2777 _ 83. 7D, 1C, 12
        jnz     ?_139                                   ; 277B _ 75, 16
        mov     eax, dword [ebp+24H]                    ; 277D _ 8B. 45, 24
        mov     edx, eax                                ; 2780 _ 89. C2
        mov     eax, dword [ebp+18H]                    ; 2782 _ 8B. 45, 18
        mov     dword [esp+4H], edx                     ; 2785 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2789 _ 89. 04 24
        call    _timer_settime                          ; 278C _ E8, 00000000(rel)
        jmp     ?_140                                   ; 2791 _ EB, 11

?_139:  cmp     dword [ebp+1CH], 19                     ; 2793 _ 83. 7D, 1C, 13
        jnz     ?_140                                   ; 2797 _ 75, 0B
        mov     eax, dword [ebp+18H]                    ; 2799 _ 8B. 45, 18
        mov     dword [esp], eax                        ; 279C _ 89. 04 24
        call    _timer_free                             ; 279F _ E8, 00000000(rel)
?_140:  mov     eax, 0                                  ; 27A4 _ B8, 00000000
?_141:  add     esp, 48                                 ; 27A9 _ 83. C4, 30
        pop     ebx                                     ; 27AC _ 5B
        pop     esi                                     ; 27AD _ 5E
        pop     ebp                                     ; 27AE _ 5D
        ret                                             ; 27AF _ C3
; _kernel_api End of function

_cons_putchar:; Function begin
        push    ebp                                     ; 27B0 _ 55
        mov     ebp, esp                                ; 27B1 _ 89. E5
        push    esi                                     ; 27B3 _ 56
        push    ebx                                     ; 27B4 _ 53
        sub     esp, 64                                 ; 27B5 _ 83. EC, 40
        mov     eax, dword [ebp+8H]                     ; 27B8 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 27BB _ 8B. 55, 0C
        mov     byte [ebp-1CH], al                      ; 27BE _ 88. 45, E4
        mov     eax, edx                                ; 27C1 _ 89. D0
        mov     byte [ebp-20H], al                      ; 27C3 _ 88. 45, E0
        call    _task_now                               ; 27C6 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 27CB _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 27CE _ 8B. 45, F4
        mov     ebx, dword [eax+9CH]                    ; 27D1 _ 8B. 98, 0000009C
        mov     eax, dword [ebp-0CH]                    ; 27D7 _ 8B. 45, F4
        mov     ecx, dword [eax+98H]                    ; 27DA _ 8B. 88, 00000098
        mov     eax, dword [ebp-0CH]                    ; 27E0 _ 8B. 45, F4
        mov     edx, dword [eax+94H]                    ; 27E3 _ 8B. 90, 00000094
        mov     eax, dword [_shtctl]                    ; 27E9 _ A1, 00000264(d)
        mov     dword [esp+10H], 0                      ; 27EE _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], ebx                    ; 27F6 _ 89. 5C 24, 0C
        mov     dword [esp+8H], ecx                     ; 27FA _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 27FE _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2802 _ 89. 04 24
        call    _set_cursor                             ; 2805 _ E8, FFFFE199
        mov     edx, dword [ebp-0CH]                    ; 280A _ 8B. 55, F4
        movzx   eax, byte [ebp-1CH]                     ; 280D _ 0F B6. 45, E4
        mov     byte [edx+0A4H], al                     ; 2811 _ 88. 82, 000000A4
        mov     eax, dword [ebp-0CH]                    ; 2817 _ 8B. 45, F4
        mov     byte [eax+0A5H], 0                      ; 281A _ C6. 80, 000000A5, 00
        mov     eax, dword [ebp-0CH]                    ; 2821 _ 8B. 45, F4
        lea     esi, [eax+0A4H]                         ; 2824 _ 8D. B0, 000000A4
        mov     eax, dword [ebp-0CH]                    ; 282A _ 8B. 45, F4
        mov     ebx, dword [eax+9CH]                    ; 282D _ 8B. 98, 0000009C
        mov     eax, dword [ebp-0CH]                    ; 2833 _ 8B. 45, F4
        mov     ecx, dword [eax+98H]                    ; 2836 _ 8B. 88, 00000098
        mov     eax, dword [ebp-0CH]                    ; 283C _ 8B. 45, F4
        mov     edx, dword [eax+94H]                    ; 283F _ 8B. 90, 00000094
        mov     eax, dword [_shtctl]                    ; 2845 _ A1, 00000264(d)
        mov     dword [esp+14H], esi                    ; 284A _ 89. 74 24, 14
        mov     dword [esp+10H], 7                      ; 284E _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ebx                    ; 2856 _ 89. 5C 24, 0C
        mov     dword [esp+8H], ecx                     ; 285A _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 285E _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2862 _ 89. 04 24
        call    _showString                             ; 2865 _ E8, 0000056B
        mov     eax, dword [ebp-0CH]                    ; 286A _ 8B. 45, F4
        mov     eax, dword [eax+98H]                    ; 286D _ 8B. 80, 00000098
        lea     edx, [eax+8H]                           ; 2873 _ 8D. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 2876 _ 8B. 45, F4
        mov     dword [eax+98H], edx                    ; 2879 _ 89. 90, 00000098
        nop                                             ; 287F _ 90
        add     esp, 64                                 ; 2880 _ 83. C4, 40
        pop     ebx                                     ; 2883 _ 5B
        pop     esi                                     ; 2884 _ 5E
        pop     ebp                                     ; 2885 _ 5D
        ret                                             ; 2886 _ C3
; _cons_putchar End of function

_cons_newline:; Function begin
        push    ebp                                     ; 2887 _ 55
        mov     ebp, esp                                ; 2888 _ 89. E5
        push    ebx                                     ; 288A _ 53
        sub     esp, 52                                 ; 288B _ 83. EC, 34
        cmp     dword [ebp+0CH], 0                      ; 288E _ 83. 7D, 0C, 00
        je      ?_152                                   ; 2892 _ 0F 84, 00000125
        cmp     dword [ebp+8H], 139                     ; 2898 _ 81. 7D, 08, 0000008B
        jg      ?_142                                   ; 289F _ 7F, 09
        add     dword [ebp+8H], 16                      ; 28A1 _ 83. 45, 08, 10
        jmp     ?_151                                   ; 28A5 _ E9, 000000DB

?_142:  mov     dword [ebp-10H], 28                     ; 28AA _ C7. 45, F0, 0000001C
        jmp     ?_146                                   ; 28B1 _ EB, 50

?_143:  mov     dword [ebp-0CH], 8                      ; 28B3 _ C7. 45, F4, 00000008
        jmp     ?_145                                   ; 28BA _ EB, 3A

?_144:  mov     eax, dword [ebp+0CH]                    ; 28BC _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 28BF _ 8B. 10
        mov     eax, dword [ebp-10H]                    ; 28C1 _ 8B. 45, F0
        lea     ecx, [eax+10H]                          ; 28C4 _ 8D. 48, 10
        mov     eax, dword [ebp+0CH]                    ; 28C7 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 28CA _ 8B. 40, 04
        imul    eax, ecx                                ; 28CD _ 0F AF. C1
        mov     ecx, dword [ebp-0CH]                    ; 28D0 _ 8B. 4D, F4
        add     eax, ecx                                ; 28D3 _ 01. C8
        add     eax, edx                                ; 28D5 _ 01. D0
        mov     edx, dword [ebp+0CH]                    ; 28D7 _ 8B. 55, 0C
        mov     ecx, dword [edx]                        ; 28DA _ 8B. 0A
        mov     edx, dword [ebp+0CH]                    ; 28DC _ 8B. 55, 0C
        mov     edx, dword [edx+4H]                     ; 28DF _ 8B. 52, 04
        imul    edx, dword [ebp-10H]                    ; 28E2 _ 0F AF. 55, F0
        mov     ebx, dword [ebp-0CH]                    ; 28E6 _ 8B. 5D, F4
        add     edx, ebx                                ; 28E9 _ 01. DA
        add     edx, ecx                                ; 28EB _ 01. CA
        movzx   eax, byte [eax]                         ; 28ED _ 0F B6. 00
        mov     byte [edx], al                          ; 28F0 _ 88. 02
        add     dword [ebp-0CH], 1                      ; 28F2 _ 83. 45, F4, 01
?_145:  cmp     dword [ebp-0CH], 247                    ; 28F6 _ 81. 7D, F4, 000000F7
        jle     ?_144                                   ; 28FD _ 7E, BD
        add     dword [ebp-10H], 1                      ; 28FF _ 83. 45, F0, 01
?_146:  cmp     dword [ebp-10H], 139                    ; 2903 _ 81. 7D, F0, 0000008B
        jle     ?_143                                   ; 290A _ 7E, A7
        mov     dword [ebp-10H], 140                    ; 290C _ C7. 45, F0, 0000008C
        jmp     ?_150                                   ; 2913 _ EB, 33

?_147:  mov     dword [ebp-0CH], 8                      ; 2915 _ C7. 45, F4, 00000008
        jmp     ?_149                                   ; 291C _ EB, 1D

?_148:  mov     eax, dword [ebp+0CH]                    ; 291E _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 2921 _ 8B. 10
        mov     eax, dword [ebp+0CH]                    ; 2923 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2926 _ 8B. 40, 04
        imul    eax, dword [ebp-10H]                    ; 2929 _ 0F AF. 45, F0
        mov     ecx, dword [ebp-0CH]                    ; 292D _ 8B. 4D, F4
        add     eax, ecx                                ; 2930 _ 01. C8
        add     eax, edx                                ; 2932 _ 01. D0
        mov     byte [eax], 0                           ; 2934 _ C6. 00, 00
        add     dword [ebp-0CH], 1                      ; 2937 _ 83. 45, F4, 01
?_149:  cmp     dword [ebp-0CH], 247                    ; 293B _ 81. 7D, F4, 000000F7
        jle     ?_148                                   ; 2942 _ 7E, DA
        add     dword [ebp-10H], 1                      ; 2944 _ 83. 45, F0, 01
?_150:  cmp     dword [ebp-10H], 155                    ; 2948 _ 81. 7D, F0, 0000009B
        jle     ?_147                                   ; 294F _ 7E, C4
        mov     eax, dword [_shtctl]                    ; 2951 _ A1, 00000264(d)
        mov     dword [esp+14H], 156                    ; 2956 _ C7. 44 24, 14, 0000009C
        mov     dword [esp+10H], 248                    ; 295E _ C7. 44 24, 10, 000000F8
        mov     dword [esp+0CH], 28                     ; 2966 _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 8                       ; 296E _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp+0CH]                    ; 2976 _ 8B. 55, 0C
        mov     dword [esp+4H], edx                     ; 2979 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 297D _ 89. 04 24
        call    _sheet_refresh                          ; 2980 _ E8, 00000000(rel)
?_151:  mov     eax, dword [_shtctl]                    ; 2985 _ A1, 00000264(d)
        mov     dword [esp+14H], ?_391                  ; 298A _ C7. 44 24, 14, 00000023(d)
        mov     dword [esp+10H], 7                      ; 2992 _ C7. 44 24, 10, 00000007
        mov     edx, dword [ebp+8H]                     ; 299A _ 8B. 55, 08
        mov     dword [esp+0CH], edx                    ; 299D _ 89. 54 24, 0C
        mov     dword [esp+8H], 8                       ; 29A1 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp+0CH]                    ; 29A9 _ 8B. 55, 0C
        mov     dword [esp+4H], edx                     ; 29AC _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 29B0 _ 89. 04 24
        call    _showString                             ; 29B3 _ E8, 0000041D
        mov     eax, dword [ebp+8H]                     ; 29B8 _ 8B. 45, 08
        jmp     ?_153                                   ; 29BB _ EB, 02

?_152:  nop                                             ; 29BD _ 90
        nop                                             ; 29BE _ 90
?_153:  add     esp, 52                                 ; 29BF _ 83. C4, 34
        pop     ebx                                     ; 29C2 _ 5B
        pop     ebp                                     ; 29C3 _ 5D
        ret                                             ; 29C4 _ C3
; _cons_newline End of function

_init_screen8:; Function begin
        push    ebp                                     ; 29C5 _ 55
        mov     ebp, esp                                ; 29C6 _ 89. E5
        push    ebx                                     ; 29C8 _ 53
        sub     esp, 36                                 ; 29C9 _ 83. EC, 24
        mov     eax, dword [ebp+10H]                    ; 29CC _ 8B. 45, 10
        lea     edx, [eax-1DH]                          ; 29CF _ 8D. 50, E3
        mov     eax, dword [ebp+0CH]                    ; 29D2 _ 8B. 45, 0C
        sub     eax, 1                                  ; 29D5 _ 83. E8, 01
        mov     dword [esp+18H], edx                    ; 29D8 _ 89. 54 24, 18
        mov     dword [esp+14H], eax                    ; 29DC _ 89. 44 24, 14
        mov     dword [esp+10H], 0                      ; 29E0 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 29E8 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 14                      ; 29F0 _ C7. 44 24, 08, 0000000E
        mov     eax, dword [ebp+0CH]                    ; 29F8 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 29FB _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 29FF _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2A02 _ 89. 04 24
        call    _boxfill8                               ; 2A05 _ E8, 00000A6F
        mov     eax, dword [ebp+10H]                    ; 2A0A _ 8B. 45, 10
        lea     ecx, [eax-1CH]                          ; 2A0D _ 8D. 48, E4
        mov     eax, dword [ebp+0CH]                    ; 2A10 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 2A13 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 2A16 _ 8B. 45, 10
        sub     eax, 28                                 ; 2A19 _ 83. E8, 1C
        mov     dword [esp+18H], ecx                    ; 2A1C _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 2A20 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 2A24 _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 2A28 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 2A30 _ C7. 44 24, 08, 00000008
        mov     eax, dword [ebp+0CH]                    ; 2A38 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2A3B _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2A3F _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2A42 _ 89. 04 24
        call    _boxfill8                               ; 2A45 _ E8, 00000A2F
        mov     eax, dword [ebp+10H]                    ; 2A4A _ 8B. 45, 10
        lea     ecx, [eax-1BH]                          ; 2A4D _ 8D. 48, E5
        mov     eax, dword [ebp+0CH]                    ; 2A50 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 2A53 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 2A56 _ 8B. 45, 10
        sub     eax, 27                                 ; 2A59 _ 83. E8, 1B
        mov     dword [esp+18H], ecx                    ; 2A5C _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 2A60 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 2A64 _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 2A68 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 7                       ; 2A70 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 2A78 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2A7B _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2A7F _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2A82 _ 89. 04 24
        call    _boxfill8                               ; 2A85 _ E8, 000009EF
        mov     eax, dword [ebp+10H]                    ; 2A8A _ 8B. 45, 10
        lea     ecx, [eax-1H]                           ; 2A8D _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 2A90 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 2A93 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 2A96 _ 8B. 45, 10
        sub     eax, 26                                 ; 2A99 _ 83. E8, 1A
        mov     dword [esp+18H], ecx                    ; 2A9C _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 2AA0 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 2AA4 _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 2AA8 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 2AB0 _ C7. 44 24, 08, 00000008
        mov     eax, dword [ebp+0CH]                    ; 2AB8 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2ABB _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2ABF _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2AC2 _ 89. 04 24
        call    _boxfill8                               ; 2AC5 _ E8, 000009AF
        mov     eax, dword [ebp+10H]                    ; 2ACA _ 8B. 45, 10
        lea     edx, [eax-18H]                          ; 2ACD _ 8D. 50, E8
        mov     eax, dword [ebp+10H]                    ; 2AD0 _ 8B. 45, 10
        sub     eax, 24                                 ; 2AD3 _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 2AD6 _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 2ADA _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 2AE2 _ 89. 44 24, 10
        mov     dword [esp+0CH], 3                      ; 2AE6 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 7                       ; 2AEE _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 2AF6 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2AF9 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2AFD _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2B00 _ 89. 04 24
        call    _boxfill8                               ; 2B03 _ E8, 00000971
        mov     eax, dword [ebp+10H]                    ; 2B08 _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 2B0B _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 2B0E _ 8B. 45, 10
        sub     eax, 24                                 ; 2B11 _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 2B14 _ 89. 54 24, 18
        mov     dword [esp+14H], 2                      ; 2B18 _ C7. 44 24, 14, 00000002
        mov     dword [esp+10H], eax                    ; 2B20 _ 89. 44 24, 10
        mov     dword [esp+0CH], 2                      ; 2B24 _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 7                       ; 2B2C _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 2B34 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2B37 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2B3B _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2B3E _ 89. 04 24
        call    _boxfill8                               ; 2B41 _ E8, 00000933
        mov     eax, dword [ebp+10H]                    ; 2B46 _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 2B49 _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 2B4C _ 8B. 45, 10
        sub     eax, 4                                  ; 2B4F _ 83. E8, 04
        mov     dword [esp+18H], edx                    ; 2B52 _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 2B56 _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 2B5E _ 89. 44 24, 10
        mov     dword [esp+0CH], 3                      ; 2B62 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 15                      ; 2B6A _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 2B72 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2B75 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2B79 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2B7C _ 89. 04 24
        call    _boxfill8                               ; 2B7F _ E8, 000008F5
        mov     eax, dword [ebp+10H]                    ; 2B84 _ 8B. 45, 10
        lea     edx, [eax-5H]                           ; 2B87 _ 8D. 50, FB
        mov     eax, dword [ebp+10H]                    ; 2B8A _ 8B. 45, 10
        sub     eax, 23                                 ; 2B8D _ 83. E8, 17
        mov     dword [esp+18H], edx                    ; 2B90 _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 2B94 _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 2B9C _ 89. 44 24, 10
        mov     dword [esp+0CH], 59                     ; 2BA0 _ C7. 44 24, 0C, 0000003B
        mov     dword [esp+8H], 15                      ; 2BA8 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 2BB0 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2BB3 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2BB7 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2BBA _ 89. 04 24
        call    _boxfill8                               ; 2BBD _ E8, 000008B7
        mov     eax, dword [ebp+10H]                    ; 2BC2 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 2BC5 _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 2BC8 _ 8B. 45, 10
        sub     eax, 3                                  ; 2BCB _ 83. E8, 03
        mov     dword [esp+18H], edx                    ; 2BCE _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 2BD2 _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 2BDA _ 89. 44 24, 10
        mov     dword [esp+0CH], 2                      ; 2BDE _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 0                       ; 2BE6 _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp+0CH]                    ; 2BEE _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2BF1 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2BF5 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2BF8 _ 89. 04 24
        call    _boxfill8                               ; 2BFB _ E8, 00000879
        mov     eax, dword [ebp+10H]                    ; 2C00 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 2C03 _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 2C06 _ 8B. 45, 10
        sub     eax, 24                                 ; 2C09 _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 2C0C _ 89. 54 24, 18
        mov     dword [esp+14H], 60                     ; 2C10 _ C7. 44 24, 14, 0000003C
        mov     dword [esp+10H], eax                    ; 2C18 _ 89. 44 24, 10
        mov     dword [esp+0CH], 60                     ; 2C1C _ C7. 44 24, 0C, 0000003C
        mov     dword [esp+8H], 0                       ; 2C24 _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp+0CH]                    ; 2C2C _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2C2F _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2C33 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2C36 _ 89. 04 24
        call    _boxfill8                               ; 2C39 _ E8, 0000083B
        mov     eax, dword [ebp+10H]                    ; 2C3E _ 8B. 45, 10
        lea     ebx, [eax-18H]                          ; 2C41 _ 8D. 58, E8
        mov     eax, dword [ebp+0CH]                    ; 2C44 _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 2C47 _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 2C4A _ 8B. 45, 10
        lea     edx, [eax-18H]                          ; 2C4D _ 8D. 50, E8
        mov     eax, dword [ebp+0CH]                    ; 2C50 _ 8B. 45, 0C
        sub     eax, 47                                 ; 2C53 _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 2C56 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 2C5A _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 2C5E _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 2C62 _ 89. 44 24, 0C
        mov     dword [esp+8H], 15                      ; 2C66 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 2C6E _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2C71 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2C75 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2C78 _ 89. 04 24
        call    _boxfill8                               ; 2C7B _ E8, 000007F9
        mov     eax, dword [ebp+10H]                    ; 2C80 _ 8B. 45, 10
        lea     ebx, [eax-4H]                           ; 2C83 _ 8D. 58, FC
        mov     eax, dword [ebp+0CH]                    ; 2C86 _ 8B. 45, 0C
        lea     ecx, [eax-2FH]                          ; 2C89 _ 8D. 48, D1
        mov     eax, dword [ebp+10H]                    ; 2C8C _ 8B. 45, 10
        lea     edx, [eax-17H]                          ; 2C8F _ 8D. 50, E9
        mov     eax, dword [ebp+0CH]                    ; 2C92 _ 8B. 45, 0C
        sub     eax, 47                                 ; 2C95 _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 2C98 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 2C9C _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 2CA0 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 2CA4 _ 89. 44 24, 0C
        mov     dword [esp+8H], 15                      ; 2CA8 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 2CB0 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2CB3 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2CB7 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2CBA _ 89. 04 24
        call    _boxfill8                               ; 2CBD _ E8, 000007B7
        mov     eax, dword [ebp+10H]                    ; 2CC2 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 2CC5 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 2CC8 _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 2CCB _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 2CCE _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 2CD1 _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 2CD4 _ 8B. 45, 0C
        sub     eax, 47                                 ; 2CD7 _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 2CDA _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 2CDE _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 2CE2 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 2CE6 _ 89. 44 24, 0C
        mov     dword [esp+8H], 7                       ; 2CEA _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 2CF2 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2CF5 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2CF9 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2CFC _ 89. 04 24
        call    _boxfill8                               ; 2CFF _ E8, 00000775
        mov     eax, dword [ebp+10H]                    ; 2D04 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 2D07 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 2D0A _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 2D0D _ 8D. 48, FD
        mov     eax, dword [ebp+10H]                    ; 2D10 _ 8B. 45, 10
        lea     edx, [eax-18H]                          ; 2D13 _ 8D. 50, E8
        mov     eax, dword [ebp+0CH]                    ; 2D16 _ 8B. 45, 0C
        sub     eax, 3                                  ; 2D19 _ 83. E8, 03
        mov     dword [esp+18H], ebx                    ; 2D1C _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 2D20 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 2D24 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 2D28 _ 89. 44 24, 0C
        mov     dword [esp+8H], 7                       ; 2D2C _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 2D34 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2D37 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2D3B _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2D3E _ 89. 04 24
        call    _boxfill8                               ; 2D41 _ E8, 00000733
        nop                                             ; 2D46 _ 90
        add     esp, 36                                 ; 2D47 _ 83. C4, 24
        pop     ebx                                     ; 2D4A _ 5B
        pop     ebp                                     ; 2D4B _ 5D
        ret                                             ; 2D4C _ C3
; _init_screen8 End of function

_computeMousePosition:; Function begin
        push    ebp                                     ; 2D4D _ 55
        mov     ebp, esp                                ; 2D4E _ 89. E5
        mov     eax, dword [ebp+10H]                    ; 2D50 _ 8B. 45, 10
        mov     edx, dword [eax+4H]                     ; 2D53 _ 8B. 50, 04
        mov     eax, dword [_mx]                        ; 2D56 _ A1, 00000134(d)
        add     eax, edx                                ; 2D5B _ 01. D0
        mov     dword [_mx], eax                        ; 2D5D _ A3, 00000134(d)
        mov     eax, dword [ebp+10H]                    ; 2D62 _ 8B. 45, 10
        mov     edx, dword [eax+8H]                     ; 2D65 _ 8B. 50, 08
        mov     eax, dword [_my]                        ; 2D68 _ A1, 00000138(d)
        add     eax, edx                                ; 2D6D _ 01. D0
        mov     dword [_my], eax                        ; 2D6F _ A3, 00000138(d)
        mov     eax, dword [_mx]                        ; 2D74 _ A1, 00000134(d)
        test    eax, eax                                ; 2D79 _ 85. C0
        jns     ?_154                                   ; 2D7B _ 79, 0A
        mov     dword [_mx], 0                          ; 2D7D _ C7. 05, 00000134(d), 00000000
?_154:  mov     eax, dword [_my]                        ; 2D87 _ A1, 00000138(d)
        test    eax, eax                                ; 2D8C _ 85. C0
        jns     ?_155                                   ; 2D8E _ 79, 0A
        mov     dword [_my], 0                          ; 2D90 _ C7. 05, 00000138(d), 00000000
?_155:  mov     edx, dword [_xsize]                     ; 2D9A _ 8B. 15, 0000013C(d)
        mov     eax, dword [_mx]                        ; 2DA0 _ A1, 00000134(d)
        cmp     edx, eax                                ; 2DA5 _ 39. C2
        jg      ?_156                                   ; 2DA7 _ 7F, 0D
        mov     eax, dword [_xsize]                     ; 2DA9 _ A1, 0000013C(d)
        sub     eax, 1                                  ; 2DAE _ 83. E8, 01
        mov     dword [_mx], eax                        ; 2DB1 _ A3, 00000134(d)
?_156:  mov     edx, dword [_ysize]                     ; 2DB6 _ 8B. 15, 00000140(d)
        mov     eax, dword [_my]                        ; 2DBC _ A1, 00000138(d)
        cmp     edx, eax                                ; 2DC1 _ 39. C2
        jg      ?_157                                   ; 2DC3 _ 7F, 0D
        mov     eax, dword [_ysize]                     ; 2DC5 _ A1, 00000140(d)
        sub     eax, 1                                  ; 2DCA _ 83. E8, 01
        mov     dword [_my], eax                        ; 2DCD _ A3, 00000138(d)
?_157:  nop                                             ; 2DD2 _ 90
        pop     ebp                                     ; 2DD3 _ 5D
        ret                                             ; 2DD4 _ C3
; _computeMousePosition End of function

_showString:; Function begin
        push    ebp                                     ; 2DD5 _ 55
        mov     ebp, esp                                ; 2DD6 _ 89. E5
        push    ebx                                     ; 2DD8 _ 53
        sub     esp, 68                                 ; 2DD9 _ 83. EC, 44
        mov     eax, dword [ebp+18H]                    ; 2DDC _ 8B. 45, 18
        mov     byte [ebp-1CH], al                      ; 2DDF _ 88. 45, E4
        cmp     dword [ebp+8H], 0                       ; 2DE2 _ 83. 7D, 08, 00
        je      ?_160                                   ; 2DE6 _ 0F 84, 000000A1
        cmp     dword [ebp+0CH], 0                      ; 2DEC _ 83. 7D, 0C, 00
        je      ?_160                                   ; 2DF0 _ 0F 84, 00000097
        mov     eax, dword [ebp+10H]                    ; 2DF6 _ 8B. 45, 10
        mov     dword [ebp-0CH], eax                    ; 2DF9 _ 89. 45, F4
        mov     dword [ebp-10H], 0                      ; 2DFC _ C7. 45, F0, 00000000
        jmp     ?_159                                   ; 2E03 _ EB, 4B

?_158:  mov     eax, dword [ebp+1CH]                    ; 2E05 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 2E08 _ 0F B6. 00
        movzx   eax, al                                 ; 2E0B _ 0F B6. C0
        shl     eax, 4                                  ; 2E0E _ C1. E0, 04
        lea     ebx, [_systemFont+eax]                  ; 2E11 _ 8D. 98, 00000000(d)
        movsx   eax, byte [ebp-1CH]                     ; 2E17 _ 0F BE. 45, E4
        mov     edx, dword [ebp+0CH]                    ; 2E1B _ 8B. 55, 0C
        mov     ecx, dword [edx+4H]                     ; 2E1E _ 8B. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 2E21 _ 8B. 55, 0C
        mov     edx, dword [edx]                        ; 2E24 _ 8B. 12
        mov     dword [esp+14H], ebx                    ; 2E26 _ 89. 5C 24, 14
        mov     dword [esp+10H], eax                    ; 2E2A _ 89. 44 24, 10
        mov     eax, dword [ebp+14H]                    ; 2E2E _ 8B. 45, 14
        mov     dword [esp+0CH], eax                    ; 2E31 _ 89. 44 24, 0C
        mov     eax, dword [ebp+10H]                    ; 2E35 _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 2E38 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 2E3C _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 2E40 _ 89. 14 24
        call    _showFont8                              ; 2E43 _ E8, 00000681
        add     dword [ebp+10H], 8                      ; 2E48 _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 2E4C _ 83. 45, 1C, 01
?_159:  mov     eax, dword [ebp+1CH]                    ; 2E50 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 2E53 _ 0F B6. 00
        test    al, al                                  ; 2E56 _ 84. C0
        jnz     ?_158                                   ; 2E58 _ 75, AB
        mov     eax, dword [ebp+14H]                    ; 2E5A _ 8B. 45, 14
        add     eax, 16                                 ; 2E5D _ 83. C0, 10
        mov     dword [esp+14H], eax                    ; 2E60 _ 89. 44 24, 14
        mov     eax, dword [ebp+10H]                    ; 2E64 _ 8B. 45, 10
        mov     dword [esp+10H], eax                    ; 2E67 _ 89. 44 24, 10
        mov     eax, dword [ebp+14H]                    ; 2E6B _ 8B. 45, 14
        mov     dword [esp+0CH], eax                    ; 2E6E _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 2E72 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 2E75 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 2E79 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2E7C _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2E80 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2E83 _ 89. 04 24
        call    _sheet_refresh                          ; 2E86 _ E8, 00000000(rel)
        jmp     ?_161                                   ; 2E8B _ EB, 01

?_160:  nop                                             ; 2E8D _ 90
?_161:  add     esp, 68                                 ; 2E8E _ 83. C4, 44
        pop     ebx                                     ; 2E91 _ 5B
        pop     ebp                                     ; 2E92 _ 5D
        ret                                             ; 2E93 _ C3
; _showString End of function

_show_mouse_info:; Function begin
        push    ebp                                     ; 2E94 _ 55
        mov     ebp, esp                                ; 2E95 _ 89. E5
        sub     esp, 72                                 ; 2E97 _ 83. EC, 48
        mov     eax, dword [_buf_back]                  ; 2E9A _ A1, 00000144(d)
        mov     dword [ebp-10H], eax                    ; 2E9F _ 89. 45, F0
        mov     byte [ebp-11H], 0                       ; 2EA2 _ C6. 45, EF, 00
        mov     dword [ebp-18H], 0                      ; 2EA6 _ C7. 45, E8, 00000000
        call    _io_sti                                 ; 2EAD _ E8, 00000000(rel)
        mov     dword [esp], _mouseinfo                 ; 2EB2 _ C7. 04 24, 00000038(d)
        call    _fifo8_get                              ; 2EB9 _ E8, 00000000(rel)
        mov     byte [ebp-11H], al                      ; 2EBE _ 88. 45, EF
        movzx   eax, byte [ebp-11H]                     ; 2EC1 _ 0F B6. 45, EF
        mov     dword [esp+4H], eax                     ; 2EC5 _ 89. 44 24, 04
        mov     dword [esp], _mdec                      ; 2EC9 _ C7. 04 24, 00000100(d)
        call    _mouse_decode                           ; 2ED0 _ E8, 00000B18
        test    eax, eax                                ; 2ED5 _ 85. C0
        je      ?_172                                   ; 2ED7 _ 0F 84, 00000373
        mov     dword [esp+8H], _mdec                   ; 2EDD _ C7. 44 24, 08, 00000100(d)
        mov     eax, dword [ebp+0CH]                    ; 2EE5 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2EE8 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2EEC _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2EEF _ 89. 04 24
        call    _computeMousePosition                   ; 2EF2 _ E8, FFFFFE56
        mov     edx, dword [_my]                        ; 2EF7 _ 8B. 15, 00000138(d)
        mov     eax, dword [_mx]                        ; 2EFD _ A1, 00000134(d)
        mov     dword [esp+0CH], edx                    ; 2F02 _ 89. 54 24, 0C
        mov     dword [esp+8H], eax                     ; 2F06 _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 2F0A _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 2F0D _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2F11 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2F14 _ 89. 04 24
        call    _sheet_slide                            ; 2F17 _ E8, 00000000(rel)
        mov     eax, dword [?_414]                      ; 2F1C _ A1, 0000010C(d)
        and     eax, 01H                                ; 2F21 _ 83. E0, 01
        test    eax, eax                                ; 2F24 _ 85. C0
        je      ?_170                                   ; 2F26 _ 0F 84, 00000317
        mov     eax, dword [_mmx]                       ; 2F2C _ A1, 00000118(d)
        test    eax, eax                                ; 2F31 _ 85. C0
        jns     ?_169                                   ; 2F33 _ 0F 89, 00000299
        mov     eax, dword [ebp+8H]                     ; 2F39 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2F3C _ 8B. 40, 10
        sub     eax, 1                                  ; 2F3F _ 83. E8, 01
        mov     dword [ebp-0CH], eax                    ; 2F42 _ 89. 45, F4
        jmp     ?_168                                   ; 2F45 _ E9, 0000027C

?_162:  mov     eax, dword [ebp+8H]                     ; 2F4A _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2F4D _ 8B. 55, F4
        add     edx, 4                                  ; 2F50 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2F53 _ 8B. 44 90, 04
        mov     dword [ebp-18H], eax                    ; 2F57 _ 89. 45, E8
        mov     edx, dword [_mx]                        ; 2F5A _ 8B. 15, 00000134(d)
        mov     eax, dword [ebp-18H]                    ; 2F60 _ 8B. 45, E8
        mov     eax, dword [eax+0CH]                    ; 2F63 _ 8B. 40, 0C
        sub     edx, eax                                ; 2F66 _ 29. C2
        mov     eax, edx                                ; 2F68 _ 89. D0
        mov     dword [ebp-1CH], eax                    ; 2F6A _ 89. 45, E4
        mov     edx, dword [_my]                        ; 2F6D _ 8B. 15, 00000138(d)
        mov     eax, dword [ebp-18H]                    ; 2F73 _ 8B. 45, E8
        mov     eax, dword [eax+10H]                    ; 2F76 _ 8B. 40, 10
        sub     edx, eax                                ; 2F79 _ 29. C2
        mov     eax, edx                                ; 2F7B _ 89. D0
        mov     dword [ebp-20H], eax                    ; 2F7D _ 89. 45, E0
        cmp     dword [ebp-1CH], 0                      ; 2F80 _ 83. 7D, E4, 00
        js      ?_167                                   ; 2F84 _ 0F 88, 00000238
        mov     eax, dword [ebp-18H]                    ; 2F8A _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 2F8D _ 8B. 40, 04
        cmp     dword [ebp-1CH], eax                    ; 2F90 _ 39. 45, E4
        jge     ?_167                                   ; 2F93 _ 0F 8D, 00000229
        cmp     dword [ebp-20H], 0                      ; 2F99 _ 83. 7D, E0, 00
        js      ?_167                                   ; 2F9D _ 0F 88, 0000021F
        mov     eax, dword [ebp-18H]                    ; 2FA3 _ 8B. 45, E8
        mov     eax, dword [eax+8H]                     ; 2FA6 _ 8B. 40, 08
        cmp     dword [ebp-20H], eax                    ; 2FA9 _ 39. 45, E0
        jge     ?_167                                   ; 2FAC _ 0F 8D, 00000210
        mov     eax, dword [ebp-18H]                    ; 2FB2 _ 8B. 45, E8
        mov     edx, dword [eax]                        ; 2FB5 _ 8B. 10
        mov     eax, dword [ebp-18H]                    ; 2FB7 _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 2FBA _ 8B. 40, 04
        imul    eax, dword [ebp-20H]                    ; 2FBD _ 0F AF. 45, E0
        mov     ecx, dword [ebp-1CH]                    ; 2FC1 _ 8B. 4D, E4
        add     eax, ecx                                ; 2FC4 _ 01. C8
        add     eax, edx                                ; 2FC6 _ 01. D0
        movzx   eax, byte [eax]                         ; 2FC8 _ 0F B6. 00
        movzx   eax, al                                 ; 2FCB _ 0F B6. C0
        mov     edx, dword [ebp-18H]                    ; 2FCE _ 8B. 55, E8
        mov     edx, dword [edx+14H]                    ; 2FD1 _ 8B. 52, 14
        cmp     eax, edx                                ; 2FD4 _ 39. D0
        je      ?_167                                   ; 2FD6 _ 0F 84, 000001E6
        mov     eax, dword [_current_console_task]      ; 2FDC _ A1, 00000278(d)
        mov     eax, dword [eax+0B4H]                   ; 2FE1 _ 8B. 80, 000000B4
        test    eax, eax                                ; 2FE7 _ 85. C0
        jz      ?_163                                   ; 2FE9 _ 74, 68
        mov     eax, dword [_current_console_task]      ; 2FEB _ A1, 00000278(d)
        mov     eax, dword [eax+0B4H]                   ; 2FF0 _ 8B. 80, 000000B4
        mov     dword [esp+0CH], 0                      ; 2FF6 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], ?_387                   ; 2FFE _ C7. 44 24, 08, 0000000F(d)
        mov     dword [esp+4H], eax                     ; 3006 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 300A _ 8B. 45, 08
        mov     dword [esp], eax                        ; 300D _ 89. 04 24
        call    _make_wtitle8                           ; 3010 _ E8, 000010E2
        mov     eax, dword [ebp-18H]                    ; 3015 _ 8B. 45, E8
        mov     ecx, dword [eax+8H]                     ; 3018 _ 8B. 48, 08
        mov     eax, dword [ebp-18H]                    ; 301B _ 8B. 45, E8
        mov     edx, dword [eax+4H]                     ; 301E _ 8B. 50, 04
        mov     eax, dword [_current_console_task]      ; 3021 _ A1, 00000278(d)
        mov     eax, dword [eax+0B4H]                   ; 3026 _ 8B. 80, 000000B4
        mov     dword [esp+14H], ecx                    ; 302C _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 3030 _ 89. 54 24, 10
        mov     dword [esp+0CH], 0                      ; 3034 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 303C _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], eax                     ; 3044 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3048 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 304B _ 89. 04 24
        call    _sheet_refresh                          ; 304E _ E8, 00000000(rel)
?_163:  mov     eax, dword [ebp-18H]                    ; 3053 _ 8B. 45, E8
        mov     eax, dword [eax+20H]                    ; 3056 _ 8B. 40, 20
        mov     dword [_current_console_task], eax      ; 3059 _ A3, 00000278(d)
        mov     eax, dword [_current_console_task]      ; 305E _ A1, 00000278(d)
        mov     eax, dword [eax+0B4H]                   ; 3063 _ 8B. 80, 000000B4
        test    eax, eax                                ; 3069 _ 85. C0
        jnz     ?_164                                   ; 306B _ 75, 32
        mov     dword [esp+14H], ?_401                  ; 306D _ C7. 44 24, 14, 00000056(d)
        mov     dword [esp+10H], 7                      ; 3075 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 96                     ; 307D _ C7. 44 24, 0C, 00000060
        mov     dword [esp+8H], 0                       ; 3085 _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp+0CH]                    ; 308D _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 3090 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3094 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3097 _ 89. 04 24
        call    _showString                             ; 309A _ E8, FFFFFD36
?_164:  mov     eax, dword [_current_console_task]      ; 309F _ A1, 00000278(d)
        mov     eax, dword [eax+0B4H]                   ; 30A4 _ 8B. 80, 000000B4
        test    eax, eax                                ; 30AA _ 85. C0
        jz      ?_165                                   ; 30AC _ 74, 60
        mov     eax, dword [_current_console_task]      ; 30AE _ A1, 00000278(d)
        mov     eax, dword [eax+0B4H]                   ; 30B3 _ 8B. 80, 000000B4
        mov     dword [esp+0CH], 1                      ; 30B9 _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], ?_387                   ; 30C1 _ C7. 44 24, 08, 0000000F(d)
        mov     dword [esp+4H], eax                     ; 30C9 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 30CD _ 8B. 45, 08
        mov     dword [esp], eax                        ; 30D0 _ 89. 04 24
        call    _make_wtitle8                           ; 30D3 _ E8, 0000101F
        mov     eax, dword [ebp-18H]                    ; 30D8 _ 8B. 45, E8
        mov     edx, dword [eax+8H]                     ; 30DB _ 8B. 50, 08
        mov     eax, dword [ebp-18H]                    ; 30DE _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 30E1 _ 8B. 40, 04
        mov     dword [esp+14H], edx                    ; 30E4 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 30E8 _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 30EC _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 30F4 _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp-18H]                    ; 30FC _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 30FF _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3103 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3106 _ 89. 04 24
        call    _sheet_refresh                          ; 3109 _ E8, 00000000(rel)
?_165:  mov     eax, dword [ebp+8H]                     ; 310E _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3111 _ 8B. 40, 10
        sub     eax, 1                                  ; 3114 _ 83. E8, 01
        mov     dword [esp+8H], eax                     ; 3117 _ 89. 44 24, 08
        mov     eax, dword [ebp-18H]                    ; 311B _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 311E _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3122 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3125 _ 89. 04 24
        call    _sheet_updown                           ; 3128 _ E8, 00000000(rel)
        cmp     dword [ebp-1CH], 2                      ; 312D _ 83. 7D, E4, 02
        jle     ?_166                                   ; 3131 _ 7E, 36
        mov     eax, dword [ebp-18H]                    ; 3133 _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 3136 _ 8B. 40, 04
        sub     eax, 3                                  ; 3139 _ 83. E8, 03
        cmp     dword [ebp-1CH], eax                    ; 313C _ 39. 45, E4
        jge     ?_166                                   ; 313F _ 7D, 28
        cmp     dword [ebp-20H], 2                      ; 3141 _ 83. 7D, E0, 02
        jle     ?_166                                   ; 3145 _ 7E, 22
        cmp     dword [ebp-20H], 20                     ; 3147 _ 83. 7D, E0, 14
        jg      ?_166                                   ; 314B _ 7F, 1C
        mov     eax, dword [_mx]                        ; 314D _ A1, 00000134(d)
        mov     dword [_mmx], eax                       ; 3152 _ A3, 00000118(d)
        mov     eax, dword [_my]                        ; 3157 _ A1, 00000138(d)
        mov     dword [_mmy], eax                       ; 315C _ A3, 0000011C(d)
        mov     eax, dword [ebp-18H]                    ; 3161 _ 8B. 45, E8
        mov     dword [_mouse_clicked_sht], eax         ; 3164 _ A3, 00000270(d)
?_166:  mov     eax, dword [ebp-18H]                    ; 3169 _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 316C _ 8B. 40, 04
        sub     eax, 21                                 ; 316F _ 83. E8, 15
        cmp     dword [ebp-1CH], eax                    ; 3172 _ 39. 45, E4
        jl      ?_171                                   ; 3175 _ 0F 8C, 000000D4
        mov     eax, dword [ebp-18H]                    ; 317B _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 317E _ 8B. 40, 04
        sub     eax, 5                                  ; 3181 _ 83. E8, 05
        cmp     dword [ebp-1CH], eax                    ; 3184 _ 39. 45, E4
        jge     ?_171                                   ; 3187 _ 0F 8D, 000000C2
        cmp     dword [ebp-20H], 4                      ; 318D _ 83. 7D, E0, 04
        jle     ?_171                                   ; 3191 _ 0F 8E, 000000B8
        cmp     dword [ebp-20H], 18                     ; 3197 _ 83. 7D, E0, 12
        jg      ?_171                                   ; 319B _ 0F 8F, 000000AE
        mov     eax, dword [ebp-18H]                    ; 31A1 _ 8B. 45, E8
        mov     eax, dword [eax+20H]                    ; 31A4 _ 8B. 40, 20
        test    eax, eax                                ; 31A7 _ 85. C0
        je      ?_171                                   ; 31A9 _ 0F 84, 000000A0
        mov     eax, dword [ebp-18H]                    ; 31AF _ 8B. 45, E8
        mov     eax, dword [eax+20H]                    ; 31B2 _ 8B. 40, 20
        mov     dword [esp], eax                        ; 31B5 _ 89. 04 24
        call    _cmd_exit                               ; 31B8 _ E8, FFFFF1BC
        jmp     ?_171                                   ; 31BD _ E9, 0000008D

?_167:  sub     dword [ebp-0CH], 1                      ; 31C2 _ 83. 6D, F4, 01
?_168:  cmp     dword [ebp-0CH], 0                      ; 31C6 _ 83. 7D, F4, 00
        jg      ?_162                                   ; 31CA _ 0F 8F, FFFFFD7A
        jmp     ?_172                                   ; 31D0 _ EB, 7E

?_169:  mov     edx, dword [_mx]                        ; 31D2 _ 8B. 15, 00000134(d)
        mov     eax, dword [_mmx]                       ; 31D8 _ A1, 00000118(d)
        sub     edx, eax                                ; 31DD _ 29. C2
        mov     eax, edx                                ; 31DF _ 89. D0
        mov     dword [ebp-1CH], eax                    ; 31E1 _ 89. 45, E4
        mov     edx, dword [_my]                        ; 31E4 _ 8B. 15, 00000138(d)
        mov     eax, dword [_mmy]                       ; 31EA _ A1, 0000011C(d)
        sub     edx, eax                                ; 31EF _ 29. C2
        mov     eax, edx                                ; 31F1 _ 89. D0
        mov     dword [ebp-20H], eax                    ; 31F3 _ 89. 45, E0
        mov     eax, dword [_mouse_clicked_sht]         ; 31F6 _ A1, 00000270(d)
        mov     edx, dword [eax+10H]                    ; 31FB _ 8B. 50, 10
        mov     eax, dword [ebp-20H]                    ; 31FE _ 8B. 45, E0
        lea     ecx, [edx+eax]                          ; 3201 _ 8D. 0C 02
        mov     eax, dword [_mouse_clicked_sht]         ; 3204 _ A1, 00000270(d)
        mov     edx, dword [eax+0CH]                    ; 3209 _ 8B. 50, 0C
        mov     eax, dword [ebp-1CH]                    ; 320C _ 8B. 45, E4
        add     edx, eax                                ; 320F _ 01. C2
        mov     eax, dword [_mouse_clicked_sht]         ; 3211 _ A1, 00000270(d)
        mov     dword [esp+0CH], ecx                    ; 3216 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 321A _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 321E _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3222 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3225 _ 89. 04 24
        call    _sheet_slide                            ; 3228 _ E8, 00000000(rel)
        mov     eax, dword [_mx]                        ; 322D _ A1, 00000134(d)
        mov     dword [_mmx], eax                       ; 3232 _ A3, 00000118(d)
        mov     eax, dword [_my]                        ; 3237 _ A1, 00000138(d)
        mov     dword [_mmy], eax                       ; 323C _ A3, 0000011C(d)
        jmp     ?_172                                   ; 3241 _ EB, 0D

?_170:  mov     dword [_mmx], -1                        ; 3243 _ C7. 05, 00000118(d), FFFFFFFF
        jmp     ?_172                                   ; 324D _ EB, 01

?_171:  nop                                             ; 324F _ 90
?_172:  nop                                             ; 3250 _ 90
        leave                                           ; 3251 _ C9
        ret                                             ; 3252 _ C3
; _show_mouse_info End of function

_initBootInfo:; Function begin
        push    ebp                                     ; 3253 _ 55
        mov     ebp, esp                                ; 3254 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 3256 _ 8B. 45, 08
        mov     dword [eax], -536870912                 ; 3259 _ C7. 00, E0000000
        mov     eax, dword [ebp+8H]                     ; 325F _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 640                      ; 3262 _ 66: C7. 40, 04, 0280
        mov     eax, dword [ebp+8H]                     ; 3268 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 480                      ; 326B _ 66: C7. 40, 06, 01E0
        nop                                             ; 3271 _ 90
        pop     ebp                                     ; 3272 _ 5D
        ret                                             ; 3273 _ C3
; _initBootInfo End of function

_init_palette:; Function begin
        push    ebp                                     ; 3274 _ 55
        mov     ebp, esp                                ; 3275 _ 89. E5
        push    ebx                                     ; 3277 _ 53
        sub     esp, 692                                ; 3278 _ 81. EC, 000002B4
        mov     dword [esp+8H], _table_rgb.2646         ; 327E _ C7. 44 24, 08, 00000140(d)
        mov     dword [esp+4H], 15                      ; 3286 _ C7. 44 24, 04, 0000000F
        mov     dword [esp], 0                          ; 328E _ C7. 04 24, 00000000
        call    _set_palette                            ; 3295 _ E8, 00000139
        mov     dword [ebp-14H], 0                      ; 329A _ C7. 45, EC, 00000000
        jmp     ?_178                                   ; 32A1 _ E9, 000000FB

?_173:  mov     dword [ebp-10H], 0                      ; 32A6 _ C7. 45, F0, 00000000
        jmp     ?_177                                   ; 32AD _ E9, 000000E1

?_174:  mov     dword [ebp-0CH], 0                      ; 32B2 _ C7. 45, F4, 00000000
        jmp     ?_176                                   ; 32B9 _ E9, 000000C7

?_175:  mov     eax, dword [ebp-0CH]                    ; 32BE _ 8B. 45, F4
        mov     ebx, eax                                ; 32C1 _ 89. C3
        mov     edx, dword [ebp-10H]                    ; 32C3 _ 8B. 55, F0
        mov     eax, edx                                ; 32C6 _ 89. D0
        add     eax, eax                                ; 32C8 _ 01. C0
        add     eax, edx                                ; 32CA _ 01. D0
        add     eax, eax                                ; 32CC _ 01. C0
        mov     edx, eax                                ; 32CE _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 32D0 _ 8B. 45, F4
        lea     ecx, [edx+eax]                          ; 32D3 _ 8D. 0C 02
        mov     edx, dword [ebp-14H]                    ; 32D6 _ 8B. 55, EC
        mov     eax, edx                                ; 32D9 _ 89. D0
        shl     eax, 3                                  ; 32DB _ C1. E0, 03
        add     eax, edx                                ; 32DE _ 01. D0
        shl     eax, 2                                  ; 32E0 _ C1. E0, 02
        lea     edx, [ecx+eax]                          ; 32E3 _ 8D. 14 01
        mov     eax, edx                                ; 32E6 _ 89. D0
        add     eax, eax                                ; 32E8 _ 01. C0
        add     edx, eax                                ; 32EA _ 01. C2
        mov     ecx, 51                                 ; 32EC _ B9, 00000033
        mov     eax, ebx                                ; 32F1 _ 89. D8
        imul    eax, ecx                                ; 32F3 _ 0F AF. C1
        mov     byte [ebp+edx-29CH], al                 ; 32F6 _ 88. 84 15, FFFFFD64
        mov     eax, dword [ebp-10H]                    ; 32FD _ 8B. 45, F0
        mov     ebx, eax                                ; 3300 _ 89. C3
        mov     edx, dword [ebp-10H]                    ; 3302 _ 8B. 55, F0
        mov     eax, edx                                ; 3305 _ 89. D0
        add     eax, eax                                ; 3307 _ 01. C0
        add     eax, edx                                ; 3309 _ 01. D0
        add     eax, eax                                ; 330B _ 01. C0
        mov     edx, eax                                ; 330D _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 330F _ 8B. 45, F4
        lea     ecx, [edx+eax]                          ; 3312 _ 8D. 0C 02
        mov     edx, dword [ebp-14H]                    ; 3315 _ 8B. 55, EC
        mov     eax, edx                                ; 3318 _ 89. D0
        shl     eax, 3                                  ; 331A _ C1. E0, 03
        add     eax, edx                                ; 331D _ 01. D0
        shl     eax, 2                                  ; 331F _ C1. E0, 02
        lea     edx, [ecx+eax]                          ; 3322 _ 8D. 14 01
        mov     eax, edx                                ; 3325 _ 89. D0
        add     eax, eax                                ; 3327 _ 01. C0
        add     eax, edx                                ; 3329 _ 01. D0
        lea     edx, [eax+1H]                           ; 332B _ 8D. 50, 01
        mov     ecx, 51                                 ; 332E _ B9, 00000033
        mov     eax, ebx                                ; 3333 _ 89. D8
        imul    eax, ecx                                ; 3335 _ 0F AF. C1
        mov     byte [ebp+edx-29CH], al                 ; 3338 _ 88. 84 15, FFFFFD64
        mov     eax, dword [ebp-14H]                    ; 333F _ 8B. 45, EC
        mov     ebx, eax                                ; 3342 _ 89. C3
        mov     edx, dword [ebp-10H]                    ; 3344 _ 8B. 55, F0
        mov     eax, edx                                ; 3347 _ 89. D0
        add     eax, eax                                ; 3349 _ 01. C0
        add     eax, edx                                ; 334B _ 01. D0
        add     eax, eax                                ; 334D _ 01. C0
        mov     edx, eax                                ; 334F _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 3351 _ 8B. 45, F4
        lea     ecx, [edx+eax]                          ; 3354 _ 8D. 0C 02
        mov     edx, dword [ebp-14H]                    ; 3357 _ 8B. 55, EC
        mov     eax, edx                                ; 335A _ 89. D0
        shl     eax, 3                                  ; 335C _ C1. E0, 03
        add     eax, edx                                ; 335F _ 01. D0
        shl     eax, 2                                  ; 3361 _ C1. E0, 02
        lea     edx, [ecx+eax]                          ; 3364 _ 8D. 14 01
        mov     eax, edx                                ; 3367 _ 89. D0
        add     eax, eax                                ; 3369 _ 01. C0
        add     eax, edx                                ; 336B _ 01. D0
        lea     edx, [eax+2H]                           ; 336D _ 8D. 50, 02
        mov     ecx, 51                                 ; 3370 _ B9, 00000033
        mov     eax, ebx                                ; 3375 _ 89. D8
        imul    eax, ecx                                ; 3377 _ 0F AF. C1
        mov     byte [ebp+edx-29CH], al                 ; 337A _ 88. 84 15, FFFFFD64
        add     dword [ebp-0CH], 1                      ; 3381 _ 83. 45, F4, 01
?_176:  cmp     dword [ebp-0CH], 5                      ; 3385 _ 83. 7D, F4, 05
        jle     ?_175                                   ; 3389 _ 0F 8E, FFFFFF2F
        add     dword [ebp-10H], 1                      ; 338F _ 83. 45, F0, 01
?_177:  cmp     dword [ebp-10H], 5                      ; 3393 _ 83. 7D, F0, 05
        jle     ?_174                                   ; 3397 _ 0F 8E, FFFFFF15
        add     dword [ebp-14H], 1                      ; 339D _ 83. 45, EC, 01
?_178:  cmp     dword [ebp-14H], 5                      ; 33A1 _ 83. 7D, EC, 05
        jle     ?_173                                   ; 33A5 _ 0F 8E, FFFFFEFB
        lea     eax, [ebp-29CH]                         ; 33AB _ 8D. 85, FFFFFD64
        mov     dword [esp+8H], eax                     ; 33B1 _ 89. 44 24, 08
        mov     dword [esp+4H], 231                     ; 33B5 _ C7. 44 24, 04, 000000E7
        mov     dword [esp], 16                         ; 33BD _ C7. 04 24, 00000010
        call    _set_palette                            ; 33C4 _ E8, 0000000A
        nop                                             ; 33C9 _ 90
        add     esp, 692                                ; 33CA _ 81. C4, 000002B4
        pop     ebx                                     ; 33D0 _ 5B
        pop     ebp                                     ; 33D1 _ 5D
        ret                                             ; 33D2 _ C3
; _init_palette End of function

_set_palette:; Function begin
        push    ebp                                     ; 33D3 _ 55
        mov     ebp, esp                                ; 33D4 _ 89. E5
        sub     esp, 40                                 ; 33D6 _ 83. EC, 28
        call    _io_load_eflags                         ; 33D9 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 33DE _ 89. 45, F0
        call    _io_cli                                 ; 33E1 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 33E6 _ 8B. 45, 08
        mov     dword [esp+4H], eax                     ; 33E9 _ 89. 44 24, 04
        mov     dword [esp], 968                        ; 33ED _ C7. 04 24, 000003C8
        call    _io_out8                                ; 33F4 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 33F9 _ 8B. 45, 08
        mov     dword [ebp-0CH], eax                    ; 33FC _ 89. 45, F4
        jmp     ?_180                                   ; 33FF _ EB, 62

?_179:  mov     eax, dword [ebp+10H]                    ; 3401 _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 3404 _ 0F B6. 00
        shr     al, 2                                   ; 3407 _ C0. E8, 02
        movzx   eax, al                                 ; 340A _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 340D _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 3411 _ C7. 04 24, 000003C9
        call    _io_out8                                ; 3418 _ E8, 00000000(rel)
        mov     eax, dword [ebp+10H]                    ; 341D _ 8B. 45, 10
        add     eax, 1                                  ; 3420 _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 3423 _ 0F B6. 00
        shr     al, 2                                   ; 3426 _ C0. E8, 02
        movzx   eax, al                                 ; 3429 _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 342C _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 3430 _ C7. 04 24, 000003C9
        call    _io_out8                                ; 3437 _ E8, 00000000(rel)
        mov     eax, dword [ebp+10H]                    ; 343C _ 8B. 45, 10
        add     eax, 2                                  ; 343F _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 3442 _ 0F B6. 00
        shr     al, 2                                   ; 3445 _ C0. E8, 02
        movzx   eax, al                                 ; 3448 _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 344B _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 344F _ C7. 04 24, 000003C9
        call    _io_out8                                ; 3456 _ E8, 00000000(rel)
        add     dword [ebp+10H], 3                      ; 345B _ 83. 45, 10, 03
        add     dword [ebp-0CH], 1                      ; 345F _ 83. 45, F4, 01
?_180:  mov     eax, dword [ebp-0CH]                    ; 3463 _ 8B. 45, F4
        cmp     eax, dword [ebp+0CH]                    ; 3466 _ 3B. 45, 0C
        jle     ?_179                                   ; 3469 _ 7E, 96
        mov     eax, dword [ebp-10H]                    ; 346B _ 8B. 45, F0
        mov     dword [esp], eax                        ; 346E _ 89. 04 24
        call    _io_store_eflags                        ; 3471 _ E8, 00000000(rel)
        nop                                             ; 3476 _ 90
        leave                                           ; 3477 _ C9
        ret                                             ; 3478 _ C3
; _set_palette End of function

_boxfill8:; Function begin
        push    ebp                                     ; 3479 _ 55
        mov     ebp, esp                                ; 347A _ 89. E5
        sub     esp, 20                                 ; 347C _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 347F _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 3482 _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 3485 _ 8B. 45, 18
        mov     dword [ebp-8H], eax                     ; 3488 _ 89. 45, F8
        jmp     ?_184                                   ; 348B _ EB, 31

?_181:  mov     eax, dword [ebp+14H]                    ; 348D _ 8B. 45, 14
        mov     dword [ebp-4H], eax                     ; 3490 _ 89. 45, FC
        jmp     ?_183                                   ; 3493 _ EB, 1D

?_182:  mov     eax, dword [ebp-8H]                     ; 3495 _ 8B. 45, F8
        imul    eax, dword [ebp+0CH]                    ; 3498 _ 0F AF. 45, 0C
        mov     edx, dword [ebp-4H]                     ; 349C _ 8B. 55, FC
        add     eax, edx                                ; 349F _ 01. D0
        mov     edx, eax                                ; 34A1 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 34A3 _ 8B. 45, 08
        add     edx, eax                                ; 34A6 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 34A8 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 34AC _ 88. 02
        add     dword [ebp-4H], 1                       ; 34AE _ 83. 45, FC, 01
?_183:  mov     eax, dword [ebp-4H]                     ; 34B2 _ 8B. 45, FC
        cmp     eax, dword [ebp+1CH]                    ; 34B5 _ 3B. 45, 1C
        jle     ?_182                                   ; 34B8 _ 7E, DB
        add     dword [ebp-8H], 1                       ; 34BA _ 83. 45, F8, 01
?_184:  mov     eax, dword [ebp-8H]                     ; 34BE _ 8B. 45, F8
        cmp     eax, dword [ebp+20H]                    ; 34C1 _ 3B. 45, 20
        jle     ?_181                                   ; 34C4 _ 7E, C7
        nop                                             ; 34C6 _ 90
        leave                                           ; 34C7 _ C9
        ret                                             ; 34C8 _ C3
; _boxfill8 End of function

_showFont8:; Function begin
        push    ebp                                     ; 34C9 _ 55
        mov     ebp, esp                                ; 34CA _ 89. E5
        sub     esp, 20                                 ; 34CC _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 34CF _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 34D2 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 34D5 _ C7. 45, FC, 00000000
        jmp     ?_194                                   ; 34DC _ E9, 0000015C

?_185:  mov     edx, dword [ebp-4H]                     ; 34E1 _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 34E4 _ 8B. 45, 1C
        add     eax, edx                                ; 34E7 _ 01. D0
        movzx   eax, byte [eax]                         ; 34E9 _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 34EC _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 34EF _ 80. 7D, FB, 00
        jns     ?_186                                   ; 34F3 _ 79, 1E
        mov     edx, dword [ebp+14H]                    ; 34F5 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 34F8 _ 8B. 45, FC
        add     eax, edx                                ; 34FB _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 34FD _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 3501 _ 8B. 55, 10
        add     eax, edx                                ; 3504 _ 01. D0
        mov     edx, eax                                ; 3506 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3508 _ 8B. 45, 08
        add     edx, eax                                ; 350B _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 350D _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 3511 _ 88. 02
?_186:  movsx   eax, byte [ebp-5H]                      ; 3513 _ 0F BE. 45, FB
        and     eax, 40H                                ; 3517 _ 83. E0, 40
        test    eax, eax                                ; 351A _ 85. C0
        jz      ?_187                                   ; 351C _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 351E _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 3521 _ 8B. 45, FC
        add     eax, edx                                ; 3524 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 3526 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 352A _ 8B. 55, 10
        add     eax, edx                                ; 352D _ 01. D0
        lea     edx, [eax+1H]                           ; 352F _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 3532 _ 8B. 45, 08
        add     edx, eax                                ; 3535 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 3537 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 353B _ 88. 02
?_187:  movsx   eax, byte [ebp-5H]                      ; 353D _ 0F BE. 45, FB
        and     eax, 20H                                ; 3541 _ 83. E0, 20
        test    eax, eax                                ; 3544 _ 85. C0
        jz      ?_188                                   ; 3546 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 3548 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 354B _ 8B. 45, FC
        add     eax, edx                                ; 354E _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 3550 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 3554 _ 8B. 55, 10
        add     eax, edx                                ; 3557 _ 01. D0
        lea     edx, [eax+2H]                           ; 3559 _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 355C _ 8B. 45, 08
        add     edx, eax                                ; 355F _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 3561 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 3565 _ 88. 02
?_188:  movsx   eax, byte [ebp-5H]                      ; 3567 _ 0F BE. 45, FB
        and     eax, 10H                                ; 356B _ 83. E0, 10
        test    eax, eax                                ; 356E _ 85. C0
        jz      ?_189                                   ; 3570 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 3572 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 3575 _ 8B. 45, FC
        add     eax, edx                                ; 3578 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 357A _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 357E _ 8B. 55, 10
        add     eax, edx                                ; 3581 _ 01. D0
        lea     edx, [eax+3H]                           ; 3583 _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 3586 _ 8B. 45, 08
        add     edx, eax                                ; 3589 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 358B _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 358F _ 88. 02
?_189:  movsx   eax, byte [ebp-5H]                      ; 3591 _ 0F BE. 45, FB
        and     eax, 08H                                ; 3595 _ 83. E0, 08
        test    eax, eax                                ; 3598 _ 85. C0
        jz      ?_190                                   ; 359A _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 359C _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 359F _ 8B. 45, FC
        add     eax, edx                                ; 35A2 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 35A4 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 35A8 _ 8B. 55, 10
        add     eax, edx                                ; 35AB _ 01. D0
        lea     edx, [eax+4H]                           ; 35AD _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 35B0 _ 8B. 45, 08
        add     edx, eax                                ; 35B3 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 35B5 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 35B9 _ 88. 02
?_190:  movsx   eax, byte [ebp-5H]                      ; 35BB _ 0F BE. 45, FB
        and     eax, 04H                                ; 35BF _ 83. E0, 04
        test    eax, eax                                ; 35C2 _ 85. C0
        jz      ?_191                                   ; 35C4 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 35C6 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 35C9 _ 8B. 45, FC
        add     eax, edx                                ; 35CC _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 35CE _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 35D2 _ 8B. 55, 10
        add     eax, edx                                ; 35D5 _ 01. D0
        lea     edx, [eax+5H]                           ; 35D7 _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 35DA _ 8B. 45, 08
        add     edx, eax                                ; 35DD _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 35DF _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 35E3 _ 88. 02
?_191:  movsx   eax, byte [ebp-5H]                      ; 35E5 _ 0F BE. 45, FB
        and     eax, 02H                                ; 35E9 _ 83. E0, 02
        test    eax, eax                                ; 35EC _ 85. C0
        jz      ?_192                                   ; 35EE _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 35F0 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 35F3 _ 8B. 45, FC
        add     eax, edx                                ; 35F6 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 35F8 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 35FC _ 8B. 55, 10
        add     eax, edx                                ; 35FF _ 01. D0
        lea     edx, [eax+6H]                           ; 3601 _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 3604 _ 8B. 45, 08
        add     edx, eax                                ; 3607 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 3609 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 360D _ 88. 02
?_192:  movsx   eax, byte [ebp-5H]                      ; 360F _ 0F BE. 45, FB
        and     eax, 01H                                ; 3613 _ 83. E0, 01
        test    eax, eax                                ; 3616 _ 85. C0
        jz      ?_193                                   ; 3618 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 361A _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 361D _ 8B. 45, FC
        add     eax, edx                                ; 3620 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 3622 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 3626 _ 8B. 55, 10
        add     eax, edx                                ; 3629 _ 01. D0
        lea     edx, [eax+7H]                           ; 362B _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 362E _ 8B. 45, 08
        add     edx, eax                                ; 3631 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 3633 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 3637 _ 88. 02
?_193:  add     dword [ebp-4H], 1                       ; 3639 _ 83. 45, FC, 01
?_194:  cmp     dword [ebp-4H], 15                      ; 363D _ 83. 7D, FC, 0F
        jle     ?_185                                   ; 3641 _ 0F 8E, FFFFFE9A
        nop                                             ; 3647 _ 90
        leave                                           ; 3648 _ C9
        ret                                             ; 3649 _ C3
; _showFont8 End of function

_init_mouse_cursor:; Function begin
        push    ebp                                     ; 364A _ 55
        mov     ebp, esp                                ; 364B _ 89. E5
        sub     esp, 20                                 ; 364D _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 3650 _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 3653 _ 88. 45, EC
        mov     dword [ebp-8H], 0                       ; 3656 _ C7. 45, F8, 00000000
        jmp     ?_201                                   ; 365D _ E9, 000000B1

?_195:  mov     dword [ebp-4H], 0                       ; 3662 _ C7. 45, FC, 00000000
        jmp     ?_200                                   ; 3669 _ E9, 00000097

?_196:  mov     eax, dword [ebp-8H]                     ; 366E _ 8B. 45, F8
        shl     eax, 4                                  ; 3671 _ C1. E0, 04
        mov     edx, eax                                ; 3674 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 3676 _ 8B. 45, FC
        add     eax, edx                                ; 3679 _ 01. D0
        add     eax, _cursor.2706                       ; 367B _ 05, 00000180(d)
        movzx   eax, byte [eax]                         ; 3680 _ 0F B6. 00
        cmp     al, 42                                  ; 3683 _ 3C, 2A
        jnz     ?_197                                   ; 3685 _ 75, 17
        mov     eax, dword [ebp-8H]                     ; 3687 _ 8B. 45, F8
        shl     eax, 4                                  ; 368A _ C1. E0, 04
        mov     edx, eax                                ; 368D _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 368F _ 8B. 45, FC
        add     eax, edx                                ; 3692 _ 01. D0
        mov     edx, eax                                ; 3694 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3696 _ 8B. 45, 08
        add     eax, edx                                ; 3699 _ 01. D0
        mov     byte [eax], 0                           ; 369B _ C6. 00, 00
?_197:  mov     eax, dword [ebp-8H]                     ; 369E _ 8B. 45, F8
        shl     eax, 4                                  ; 36A1 _ C1. E0, 04
        mov     edx, eax                                ; 36A4 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 36A6 _ 8B. 45, FC
        add     eax, edx                                ; 36A9 _ 01. D0
        add     eax, _cursor.2706                       ; 36AB _ 05, 00000180(d)
        movzx   eax, byte [eax]                         ; 36B0 _ 0F B6. 00
        cmp     al, 79                                  ; 36B3 _ 3C, 4F
        jnz     ?_198                                   ; 36B5 _ 75, 17
        mov     eax, dword [ebp-8H]                     ; 36B7 _ 8B. 45, F8
        shl     eax, 4                                  ; 36BA _ C1. E0, 04
        mov     edx, eax                                ; 36BD _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 36BF _ 8B. 45, FC
        add     eax, edx                                ; 36C2 _ 01. D0
        mov     edx, eax                                ; 36C4 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 36C6 _ 8B. 45, 08
        add     eax, edx                                ; 36C9 _ 01. D0
        mov     byte [eax], 7                           ; 36CB _ C6. 00, 07
?_198:  mov     eax, dword [ebp-8H]                     ; 36CE _ 8B. 45, F8
        shl     eax, 4                                  ; 36D1 _ C1. E0, 04
        mov     edx, eax                                ; 36D4 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 36D6 _ 8B. 45, FC
        add     eax, edx                                ; 36D9 _ 01. D0
        add     eax, _cursor.2706                       ; 36DB _ 05, 00000180(d)
        movzx   eax, byte [eax]                         ; 36E0 _ 0F B6. 00
        cmp     al, 46                                  ; 36E3 _ 3C, 2E
        jnz     ?_199                                   ; 36E5 _ 75, 1A
        mov     eax, dword [ebp-8H]                     ; 36E7 _ 8B. 45, F8
        shl     eax, 4                                  ; 36EA _ C1. E0, 04
        mov     edx, eax                                ; 36ED _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 36EF _ 8B. 45, FC
        add     eax, edx                                ; 36F2 _ 01. D0
        mov     edx, eax                                ; 36F4 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 36F6 _ 8B. 45, 08
        add     edx, eax                                ; 36F9 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 36FB _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 36FF _ 88. 02
?_199:  add     dword [ebp-4H], 1                       ; 3701 _ 83. 45, FC, 01
?_200:  cmp     dword [ebp-4H], 15                      ; 3705 _ 83. 7D, FC, 0F
        jle     ?_196                                   ; 3709 _ 0F 8E, FFFFFF5F
        add     dword [ebp-8H], 1                       ; 370F _ 83. 45, F8, 01
?_201:  cmp     dword [ebp-8H], 15                      ; 3713 _ 83. 7D, F8, 0F
        jle     ?_195                                   ; 3717 _ 0F 8E, FFFFFF45
        nop                                             ; 371D _ 90
        leave                                           ; 371E _ C9
        ret                                             ; 371F _ C3
; _init_mouse_cursor End of function

_putblock:; Function begin
        push    ebp                                     ; 3720 _ 55
        mov     ebp, esp                                ; 3721 _ 89. E5
        push    ebx                                     ; 3723 _ 53
        sub     esp, 16                                 ; 3724 _ 83. EC, 10
        mov     dword [ebp-0CH], 0                      ; 3727 _ C7. 45, F4, 00000000
        jmp     ?_205                                   ; 372E _ EB, 4E

?_202:  mov     dword [ebp-8H], 0                       ; 3730 _ C7. 45, F8, 00000000
        jmp     ?_204                                   ; 3737 _ EB, 39

?_203:  mov     eax, dword [ebp-0CH]                    ; 3739 _ 8B. 45, F4
        imul    eax, dword [ebp+24H]                    ; 373C _ 0F AF. 45, 24
        mov     edx, dword [ebp-8H]                     ; 3740 _ 8B. 55, F8
        add     eax, edx                                ; 3743 _ 01. D0
        mov     edx, eax                                ; 3745 _ 89. C2
        mov     eax, dword [ebp+20H]                    ; 3747 _ 8B. 45, 20
        add     eax, edx                                ; 374A _ 01. D0
        mov     ecx, dword [ebp+1CH]                    ; 374C _ 8B. 4D, 1C
        mov     edx, dword [ebp-0CH]                    ; 374F _ 8B. 55, F4
        add     edx, ecx                                ; 3752 _ 01. CA
        imul    edx, dword [ebp+0CH]                    ; 3754 _ 0F AF. 55, 0C
        mov     ebx, dword [ebp+18H]                    ; 3758 _ 8B. 5D, 18
        mov     ecx, dword [ebp-8H]                     ; 375B _ 8B. 4D, F8
        add     ecx, ebx                                ; 375E _ 01. D9
        add     edx, ecx                                ; 3760 _ 01. CA
        mov     ecx, edx                                ; 3762 _ 89. D1
        mov     edx, dword [ebp+8H]                     ; 3764 _ 8B. 55, 08
        add     edx, ecx                                ; 3767 _ 01. CA
        movzx   eax, byte [eax]                         ; 3769 _ 0F B6. 00
        mov     byte [edx], al                          ; 376C _ 88. 02
        add     dword [ebp-8H], 1                       ; 376E _ 83. 45, F8, 01
?_204:  mov     eax, dword [ebp-8H]                     ; 3772 _ 8B. 45, F8
        cmp     eax, dword [ebp+10H]                    ; 3775 _ 3B. 45, 10
        jl      ?_203                                   ; 3778 _ 7C, BF
        add     dword [ebp-0CH], 1                      ; 377A _ 83. 45, F4, 01
?_205:  mov     eax, dword [ebp-0CH]                    ; 377E _ 8B. 45, F4
        cmp     eax, dword [ebp+14H]                    ; 3781 _ 3B. 45, 14
        jl      ?_202                                   ; 3784 _ 7C, AA
        nop                                             ; 3786 _ 90
        add     esp, 16                                 ; 3787 _ 83. C4, 10
        pop     ebx                                     ; 378A _ 5B
        pop     ebp                                     ; 378B _ 5D
        ret                                             ; 378C _ C3
; _putblock End of function

_intHandlerFromC:; Function begin
        push    ebp                                     ; 378D _ 55
        mov     ebp, esp                                ; 378E _ 89. E5
        sub     esp, 40                                 ; 3790 _ 83. EC, 28
        mov     eax, dword [_bootInfo]                  ; 3793 _ A1, 00000014(d)
        mov     dword [ebp-0CH], eax                    ; 3798 _ 89. 45, F4
        movzx   eax, word [?_411]                       ; 379B _ 0F B7. 05, 00000018(d)
        cwde                                            ; 37A2 _ 98
        mov     dword [ebp-10H], eax                    ; 37A3 _ 89. 45, F0
        movzx   eax, word [?_412]                       ; 37A6 _ 0F B7. 05, 0000001A(d)
        cwde                                            ; 37AD _ 98
        mov     dword [ebp-14H], eax                    ; 37AE _ 89. 45, EC
        mov     dword [esp+4H], 32                      ; 37B1 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 37B9 _ C7. 04 24, 00000020
        call    _io_out8                                ; 37C0 _ E8, 00000000(rel)
        mov     byte [ebp-15H], 0                       ; 37C5 _ C6. 45, EB, 00
        mov     dword [esp], 96                         ; 37C9 _ C7. 04 24, 00000060
        call    _io_in8                                 ; 37D0 _ E8, 00000000(rel)
        mov     byte [ebp-15H], al                      ; 37D5 _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 37D8 _ 0F B6. 45, EB
        mov     dword [esp+4H], eax                     ; 37DC _ 89. 44 24, 04
        mov     dword [esp], _keyinfo                   ; 37E0 _ C7. 04 24, 0000001C(d)
        call    _fifo8_put                              ; 37E7 _ E8, 00000000(rel)
        nop                                             ; 37EC _ 90
        leave                                           ; 37ED _ C9
        ret                                             ; 37EE _ C3
; _intHandlerFromC End of function

_charToHexVal:; Function begin
        push    ebp                                     ; 37EF _ 55
        mov     ebp, esp                                ; 37F0 _ 89. E5
        sub     esp, 4                                  ; 37F2 _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 37F5 _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 37F8 _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 37FB _ 80. 7D, FC, 09
        jle     ?_206                                   ; 37FF _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 3801 _ 0F B6. 45, FC
        add     eax, 55                                 ; 3805 _ 83. C0, 37
        jmp     ?_207                                   ; 3808 _ EB, 07

?_206:  movzx   eax, byte [ebp-4H]                      ; 380A _ 0F B6. 45, FC
        add     eax, 48                                 ; 380E _ 83. C0, 30
?_207:  leave                                           ; 3811 _ C9
        ret                                             ; 3812 _ C3
; _charToHexVal End of function

_charToHexStr:; Function begin
        push    ebp                                     ; 3813 _ 55
        mov     ebp, esp                                ; 3814 _ 89. E5
        sub     esp, 24                                 ; 3816 _ 83. EC, 18
        mov     eax, dword [ebp+8H]                     ; 3819 _ 8B. 45, 08
        mov     byte [ebp-14H], al                      ; 381C _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 381F _ C7. 45, FC, 00000000
        movzx   eax, byte [ebp-14H]                     ; 3826 _ 0F B6. 45, EC
        and     eax, 0FH                                ; 382A _ 83. E0, 0F
        mov     byte [ebp-5H], al                       ; 382D _ 88. 45, FB
        movsx   eax, byte [ebp-5H]                      ; 3830 _ 0F BE. 45, FB
        mov     dword [esp], eax                        ; 3834 _ 89. 04 24
        call    _charToHexVal                           ; 3837 _ E8, FFFFFFB3
        mov     byte [?_384], al                        ; 383C _ A2, 00000113(d)
        movzx   eax, byte [ebp-14H]                     ; 3841 _ 0F B6. 45, EC
        shr     al, 4                                   ; 3845 _ C0. E8, 04
        mov     byte [ebp-14H], al                      ; 3848 _ 88. 45, EC
        movzx   eax, byte [ebp-14H]                     ; 384B _ 0F B6. 45, EC
        movsx   eax, al                                 ; 384F _ 0F BE. C0
        mov     dword [esp], eax                        ; 3852 _ 89. 04 24
        call    _charToHexVal                           ; 3855 _ E8, FFFFFF95
        mov     byte [?_383], al                        ; 385A _ A2, 00000112(d)
        mov     eax, _keyval                            ; 385F _ B8, 00000110(d)
        leave                                           ; 3864 _ C9
        ret                                             ; 3865 _ C3
; _charToHexStr End of function

_intToHexStr:; Function begin
        push    ebp                                     ; 3866 _ 55
        mov     ebp, esp                                ; 3867 _ 89. E5
        sub     esp, 16                                 ; 3869 _ 83. EC, 10
        mov     byte [_str.2754], 48                    ; 386C _ C6. 05, 00000374(d), 30
        mov     byte [?_415], 88                        ; 3873 _ C6. 05, 00000375(d), 58
        mov     byte [?_416], 0                         ; 387A _ C6. 05, 0000037E(d), 00
        mov     dword [ebp-4H], 2                       ; 3881 _ C7. 45, FC, 00000002
        jmp     ?_209                                   ; 3888 _ EB, 0F

?_208:  mov     eax, dword [ebp-4H]                     ; 388A _ 8B. 45, FC
        add     eax, _str.2754                          ; 388D _ 05, 00000374(d)
        mov     byte [eax], 48                          ; 3892 _ C6. 00, 30
        add     dword [ebp-4H], 1                       ; 3895 _ 83. 45, FC, 01
?_209:  cmp     dword [ebp-4H], 9                       ; 3899 _ 83. 7D, FC, 09
        jle     ?_208                                   ; 389D _ 7E, EB
        mov     dword [ebp-8H], 9                       ; 389F _ C7. 45, F8, 00000009
        jmp     ?_213                                   ; 38A6 _ EB, 42

?_210:  mov     eax, dword [ebp+8H]                     ; 38A8 _ 8B. 45, 08
        and     eax, 0FH                                ; 38AB _ 83. E0, 0F
        mov     dword [ebp-0CH], eax                    ; 38AE _ 89. 45, F4
        mov     eax, dword [ebp+8H]                     ; 38B1 _ 8B. 45, 08
        shr     eax, 4                                  ; 38B4 _ C1. E8, 04
        mov     dword [ebp+8H], eax                     ; 38B7 _ 89. 45, 08
        cmp     dword [ebp-0CH], 9                      ; 38BA _ 83. 7D, F4, 09
        jle     ?_211                                   ; 38BE _ 7E, 14
        mov     eax, dword [ebp-0CH]                    ; 38C0 _ 8B. 45, F4
        add     eax, 55                                 ; 38C3 _ 83. C0, 37
        mov     edx, eax                                ; 38C6 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 38C8 _ 8B. 45, F8
        add     eax, _str.2754                          ; 38CB _ 05, 00000374(d)
        mov     byte [eax], dl                          ; 38D0 _ 88. 10
        jmp     ?_212                                   ; 38D2 _ EB, 12

?_211:  mov     eax, dword [ebp-0CH]                    ; 38D4 _ 8B. 45, F4
        add     eax, 48                                 ; 38D7 _ 83. C0, 30
        mov     edx, eax                                ; 38DA _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 38DC _ 8B. 45, F8
        add     eax, _str.2754                          ; 38DF _ 05, 00000374(d)
        mov     byte [eax], dl                          ; 38E4 _ 88. 10
?_212:  sub     dword [ebp-8H], 1                       ; 38E6 _ 83. 6D, F8, 01
?_213:  cmp     dword [ebp-8H], 1                       ; 38EA _ 83. 7D, F8, 01
        jle     ?_214                                   ; 38EE _ 7E, 06
        cmp     dword [ebp+8H], 0                       ; 38F0 _ 83. 7D, 08, 00
        jnz     ?_210                                   ; 38F4 _ 75, B2
?_214:  mov     eax, _str.2754                          ; 38F6 _ B8, 00000374(d)
        leave                                           ; 38FB _ C9
        ret                                             ; 38FC _ C3
; _intToHexStr End of function

_wait_KBC_sendready:; Function begin
        push    ebp                                     ; 38FD _ 55
        mov     ebp, esp                                ; 38FE _ 89. E5
        sub     esp, 24                                 ; 3900 _ 83. EC, 18
?_215:  mov     dword [esp], 100                        ; 3903 _ C7. 04 24, 00000064
        call    _io_in8                                 ; 390A _ E8, 00000000(rel)
        and     eax, 02H                                ; 390F _ 83. E0, 02
        test    eax, eax                                ; 3912 _ 85. C0
        jz      ?_216                                   ; 3914 _ 74, 02
        jmp     ?_215                                   ; 3916 _ EB, EB
; _wait_KBC_sendready End of function

?_216:  ; Local function
        nop                                             ; 3918 _ 90
        nop                                             ; 3919 _ 90
        leave                                           ; 391A _ C9
        ret                                             ; 391B _ C3

_init_keyboard:; Function begin
        push    ebp                                     ; 391C _ 55
        mov     ebp, esp                                ; 391D _ 89. E5
        sub     esp, 24                                 ; 391F _ 83. EC, 18
        call    _wait_KBC_sendready                     ; 3922 _ E8, FFFFFFD6
        mov     dword [esp+4H], 96                      ; 3927 _ C7. 44 24, 04, 00000060
        mov     dword [esp], 100                        ; 392F _ C7. 04 24, 00000064
        call    _io_out8                                ; 3936 _ E8, 00000000(rel)
        call    _wait_KBC_sendready                     ; 393B _ E8, FFFFFFBD
        mov     dword [esp+4H], 71                      ; 3940 _ C7. 44 24, 04, 00000047
        mov     dword [esp], 96                         ; 3948 _ C7. 04 24, 00000060
        call    _io_out8                                ; 394F _ E8, 00000000(rel)
        nop                                             ; 3954 _ 90
        leave                                           ; 3955 _ C9
        ret                                             ; 3956 _ C3
; _init_keyboard End of function

_enable_mouse:; Function begin
        push    ebp                                     ; 3957 _ 55
        mov     ebp, esp                                ; 3958 _ 89. E5
        sub     esp, 24                                 ; 395A _ 83. EC, 18
        call    _wait_KBC_sendready                     ; 395D _ E8, FFFFFF9B
        mov     dword [esp+4H], 212                     ; 3962 _ C7. 44 24, 04, 000000D4
        mov     dword [esp], 100                        ; 396A _ C7. 04 24, 00000064
        call    _io_out8                                ; 3971 _ E8, 00000000(rel)
        call    _wait_KBC_sendready                     ; 3976 _ E8, FFFFFF82
        mov     dword [esp+4H], 244                     ; 397B _ C7. 44 24, 04, 000000F4
        mov     dword [esp], 96                         ; 3983 _ C7. 04 24, 00000060
        call    _io_out8                                ; 398A _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 398F _ 8B. 45, 08
        mov     byte [eax+3H], 0                        ; 3992 _ C6. 40, 03, 00
        nop                                             ; 3996 _ 90
        leave                                           ; 3997 _ C9
        ret                                             ; 3998 _ C3
; _enable_mouse End of function

_intHandlerForMouse:; Function begin
        push    ebp                                     ; 3999 _ 55
        mov     ebp, esp                                ; 399A _ 89. E5
        sub     esp, 40                                 ; 399C _ 83. EC, 28
        mov     dword [esp+4H], 32                      ; 399F _ C7. 44 24, 04, 00000020
        mov     dword [esp], 160                        ; 39A7 _ C7. 04 24, 000000A0
        call    _io_out8                                ; 39AE _ E8, 00000000(rel)
        mov     dword [esp+4H], 32                      ; 39B3 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 39BB _ C7. 04 24, 00000020
        call    _io_out8                                ; 39C2 _ E8, 00000000(rel)
        mov     dword [esp], 96                         ; 39C7 _ C7. 04 24, 00000060
        call    _io_in8                                 ; 39CE _ E8, 00000000(rel)
        mov     byte [ebp-9H], al                       ; 39D3 _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 39D6 _ 0F B6. 45, F7
        mov     dword [esp+4H], eax                     ; 39DA _ 89. 44 24, 04
        mov     dword [esp], _mouseinfo                 ; 39DE _ C7. 04 24, 00000038(d)
        call    _fifo8_put                              ; 39E5 _ E8, 00000000(rel)
        nop                                             ; 39EA _ 90
        leave                                           ; 39EB _ C9
        ret                                             ; 39EC _ C3
; _intHandlerForMouse End of function

_mouse_decode:; Function begin
        push    ebp                                     ; 39ED _ 55
        mov     ebp, esp                                ; 39EE _ 89. E5
        sub     esp, 4                                  ; 39F0 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 39F3 _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 39F6 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 39F9 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 39FC _ 0F B6. 40, 03
        test    al, al                                  ; 3A00 _ 84. C0
        jnz     ?_218                                   ; 3A02 _ 75, 17
        cmp     byte [ebp-4H], -6                       ; 3A04 _ 80. 7D, FC, FA
        jnz     ?_217                                   ; 3A08 _ 75, 07
        mov     eax, dword [ebp+8H]                     ; 3A0A _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 3A0D _ C6. 40, 03, 01
?_217:  mov     eax, 0                                  ; 3A11 _ B8, 00000000
        jmp     ?_225                                   ; 3A16 _ E9, 0000010F

?_218:  mov     eax, dword [ebp+8H]                     ; 3A1B _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 3A1E _ 0F B6. 40, 03
        cmp     al, 1                                   ; 3A22 _ 3C, 01
        jnz     ?_220                                   ; 3A24 _ 75, 28
        movzx   eax, byte [ebp-4H]                      ; 3A26 _ 0F B6. 45, FC
        and     eax, 0C8H                               ; 3A2A _ 25, 000000C8
        cmp     eax, 8                                  ; 3A2F _ 83. F8, 08
        jnz     ?_219                                   ; 3A32 _ 75, 10
        mov     edx, dword [ebp+8H]                     ; 3A34 _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 3A37 _ 0F B6. 45, FC
        mov     byte [edx], al                          ; 3A3B _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 3A3D _ 8B. 45, 08
        mov     byte [eax+3H], 2                        ; 3A40 _ C6. 40, 03, 02
?_219:  mov     eax, 0                                  ; 3A44 _ B8, 00000000
        jmp     ?_225                                   ; 3A49 _ E9, 000000DC

?_220:  mov     eax, dword [ebp+8H]                     ; 3A4E _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 3A51 _ 0F B6. 40, 03
        cmp     al, 2                                   ; 3A55 _ 3C, 02
        jnz     ?_221                                   ; 3A57 _ 75, 1B
        mov     edx, dword [ebp+8H]                     ; 3A59 _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 3A5C _ 0F B6. 45, FC
        mov     byte [edx+1H], al                       ; 3A60 _ 88. 42, 01
        mov     eax, dword [ebp+8H]                     ; 3A63 _ 8B. 45, 08
        mov     byte [eax+3H], 3                        ; 3A66 _ C6. 40, 03, 03
        mov     eax, 0                                  ; 3A6A _ B8, 00000000
        jmp     ?_225                                   ; 3A6F _ E9, 000000B6

?_221:  mov     eax, dword [ebp+8H]                     ; 3A74 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 3A77 _ 0F B6. 40, 03
        cmp     al, 3                                   ; 3A7B _ 3C, 03
        jne     ?_224                                   ; 3A7D _ 0F 85, 000000A2
        mov     edx, dword [ebp+8H]                     ; 3A83 _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 3A86 _ 0F B6. 45, FC
        mov     byte [edx+2H], al                       ; 3A8A _ 88. 42, 02
        mov     eax, dword [ebp+8H]                     ; 3A8D _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 3A90 _ C6. 40, 03, 01
        mov     eax, dword [ebp+8H]                     ; 3A94 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 3A97 _ 0F B6. 00
        movzx   eax, al                                 ; 3A9A _ 0F B6. C0
        and     eax, 07H                                ; 3A9D _ 83. E0, 07
        mov     edx, eax                                ; 3AA0 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3AA2 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 3AA5 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 3AA8 _ 8B. 45, 08
        movzx   eax, byte [eax+1H]                      ; 3AAB _ 0F B6. 40, 01
        movzx   eax, al                                 ; 3AAF _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 3AB2 _ 8B. 55, 08
        mov     dword [edx+4H], eax                     ; 3AB5 _ 89. 42, 04
        mov     eax, dword [ebp+8H]                     ; 3AB8 _ 8B. 45, 08
        movzx   eax, byte [eax+2H]                      ; 3ABB _ 0F B6. 40, 02
        movzx   eax, al                                 ; 3ABF _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 3AC2 _ 8B. 55, 08
        mov     dword [edx+8H], eax                     ; 3AC5 _ 89. 42, 08
        mov     eax, dword [ebp+8H]                     ; 3AC8 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 3ACB _ 0F B6. 00
        movzx   eax, al                                 ; 3ACE _ 0F B6. C0
        and     eax, 10H                                ; 3AD1 _ 83. E0, 10
        test    eax, eax                                ; 3AD4 _ 85. C0
        jz      ?_222                                   ; 3AD6 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 3AD8 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 3ADB _ 8B. 40, 04
        or      eax, 0FFFFFF00H                         ; 3ADE _ 0D, FFFFFF00
        mov     edx, eax                                ; 3AE3 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3AE5 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 3AE8 _ 89. 50, 04
?_222:  mov     eax, dword [ebp+8H]                     ; 3AEB _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 3AEE _ 0F B6. 00
        movzx   eax, al                                 ; 3AF1 _ 0F B6. C0
        and     eax, 20H                                ; 3AF4 _ 83. E0, 20
        test    eax, eax                                ; 3AF7 _ 85. C0
        jz      ?_223                                   ; 3AF9 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 3AFB _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3AFE _ 8B. 40, 08
        or      eax, 0FFFFFF00H                         ; 3B01 _ 0D, FFFFFF00
        mov     edx, eax                                ; 3B06 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3B08 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 3B0B _ 89. 50, 08
?_223:  mov     eax, dword [ebp+8H]                     ; 3B0E _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3B11 _ 8B. 40, 08
        neg     eax                                     ; 3B14 _ F7. D8
        mov     edx, eax                                ; 3B16 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3B18 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 3B1B _ 89. 50, 08
        mov     eax, 1                                  ; 3B1E _ B8, 00000001
        jmp     ?_225                                   ; 3B23 _ EB, 05

?_224:  mov     eax, 4294967295                         ; 3B25 _ B8, FFFFFFFF
?_225:  leave                                           ; 3B2A _ C9
        ret                                             ; 3B2B _ C3
; _mouse_decode End of function

_showMemoryInfo:; Function begin
        push    ebp                                     ; 3B2C _ 55
        mov     ebp, esp                                ; 3B2D _ 89. E5
        sub     esp, 72                                 ; 3B2F _ 83. EC, 48
        mov     dword [ebp-0CH], 0                      ; 3B32 _ C7. 45, F4, 00000000
        mov     dword [ebp-10H], 0                      ; 3B39 _ C7. 45, F0, 00000000
        mov     dword [ebp-14H], 104                    ; 3B40 _ C7. 45, EC, 00000068
        mov     dword [ebp-18H], 80                     ; 3B47 _ C7. 45, E8, 00000050
        mov     edx, dword [_ysize]                     ; 3B4E _ 8B. 15, 00000140(d)
        mov     eax, dword [ebp+0CH]                    ; 3B54 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 3B57 _ 8B. 00
        mov     dword [esp+8H], edx                     ; 3B59 _ 89. 54 24, 08
        mov     edx, dword [ebp+1CH]                    ; 3B5D _ 8B. 55, 1C
        mov     dword [esp+4H], edx                     ; 3B60 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3B64 _ 89. 04 24
        call    _init_screen8                           ; 3B67 _ E8, FFFFEE59
        mov     eax, dword [ebp+20H]                    ; 3B6C _ 8B. 45, 20
        movsx   eax, al                                 ; 3B6F _ 0F BE. C0
        mov     dword [esp+14H], ?_402                  ; 3B72 _ C7. 44 24, 14, 00000060(d)
        mov     dword [esp+10H], eax                    ; 3B7A _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 3B7E _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 3B81 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 3B85 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 3B88 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 3B8C _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 3B8F _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3B93 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3B96 _ 89. 04 24
        call    _showString                             ; 3B99 _ E8, FFFFF237
        mov     eax, dword [ebp+18H]                    ; 3B9E _ 8B. 45, 18
        mov     dword [esp], eax                        ; 3BA1 _ 89. 04 24
        call    _intToHexStr                            ; 3BA4 _ E8, FFFFFCBD
        mov     dword [ebp-1CH], eax                    ; 3BA9 _ 89. 45, E4
        mov     eax, dword [ebp+20H]                    ; 3BAC _ 8B. 45, 20
        movsx   eax, al                                 ; 3BAF _ 0F BE. C0
        mov     edx, dword [ebp-1CH]                    ; 3BB2 _ 8B. 55, E4
        mov     dword [esp+14H], edx                    ; 3BB5 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 3BB9 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 3BBD _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 3BC0 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 3BC4 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 3BC7 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 3BCB _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 3BCE _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3BD2 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3BD5 _ 89. 04 24
        call    _showString                             ; 3BD8 _ E8, FFFFF1F8
        add     dword [ebp-10H], 16                     ; 3BDD _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 3BE1 _ 8B. 45, 20
        movsx   eax, al                                 ; 3BE4 _ 0F BE. C0
        mov     dword [esp+14H], ?_403                  ; 3BE7 _ C7. 44 24, 14, 0000006A(d)
        mov     dword [esp+10H], eax                    ; 3BEF _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 3BF3 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 3BF6 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 3BFA _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 3BFD _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 3C01 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 3C04 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3C08 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3C0B _ 89. 04 24
        call    _showString                             ; 3C0E _ E8, FFFFF1C2
        mov     eax, dword [ebp+10H]                    ; 3C13 _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 3C16 _ 8B. 00
        mov     dword [esp], eax                        ; 3C18 _ 89. 04 24
        call    _intToHexStr                            ; 3C1B _ E8, FFFFFC46
        mov     dword [ebp-20H], eax                    ; 3C20 _ 89. 45, E0
        mov     eax, dword [ebp+20H]                    ; 3C23 _ 8B. 45, 20
        movsx   eax, al                                 ; 3C26 _ 0F BE. C0
        mov     edx, dword [ebp-20H]                    ; 3C29 _ 8B. 55, E0
        mov     dword [esp+14H], edx                    ; 3C2C _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 3C30 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 3C34 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 3C37 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 3C3B _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 3C3E _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 3C42 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 3C45 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3C49 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3C4C _ 89. 04 24
        call    _showString                             ; 3C4F _ E8, FFFFF181
        add     dword [ebp-10H], 16                     ; 3C54 _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 3C58 _ 8B. 45, 20
        movsx   eax, al                                 ; 3C5B _ 0F BE. C0
        mov     dword [esp+14H], ?_404                  ; 3C5E _ C7. 44 24, 14, 00000076(d)
        mov     dword [esp+10H], eax                    ; 3C66 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 3C6A _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 3C6D _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 3C71 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 3C74 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 3C78 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 3C7B _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3C7F _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3C82 _ 89. 04 24
        call    _showString                             ; 3C85 _ E8, FFFFF14B
        mov     eax, dword [ebp+10H]                    ; 3C8A _ 8B. 45, 10
        mov     eax, dword [eax+4H]                     ; 3C8D _ 8B. 40, 04
        mov     dword [esp], eax                        ; 3C90 _ 89. 04 24
        call    _intToHexStr                            ; 3C93 _ E8, FFFFFBCE
        mov     dword [ebp-24H], eax                    ; 3C98 _ 89. 45, DC
        mov     eax, dword [ebp+20H]                    ; 3C9B _ 8B. 45, 20
        movsx   eax, al                                 ; 3C9E _ 0F BE. C0
        mov     edx, dword [ebp-24H]                    ; 3CA1 _ 8B. 55, DC
        mov     dword [esp+14H], edx                    ; 3CA4 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 3CA8 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 3CAC _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 3CAF _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 3CB3 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 3CB6 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 3CBA _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 3CBD _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3CC1 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3CC4 _ 89. 04 24
        call    _showString                             ; 3CC7 _ E8, FFFFF109
        add     dword [ebp-10H], 16                     ; 3CCC _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 3CD0 _ 8B. 45, 20
        movsx   eax, al                                 ; 3CD3 _ 0F BE. C0
        mov     dword [esp+14H], ?_405                  ; 3CD6 _ C7. 44 24, 14, 00000082(d)
        mov     dword [esp+10H], eax                    ; 3CDE _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 3CE2 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 3CE5 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 3CE9 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 3CEC _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 3CF0 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 3CF3 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3CF7 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3CFA _ 89. 04 24
        call    _showString                             ; 3CFD _ E8, FFFFF0D3
        mov     eax, dword [ebp+10H]                    ; 3D02 _ 8B. 45, 10
        mov     eax, dword [eax+8H]                     ; 3D05 _ 8B. 40, 08
        mov     dword [esp], eax                        ; 3D08 _ 89. 04 24
        call    _intToHexStr                            ; 3D0B _ E8, FFFFFB56
        mov     dword [ebp-28H], eax                    ; 3D10 _ 89. 45, D8
        mov     eax, dword [ebp+20H]                    ; 3D13 _ 8B. 45, 20
        movsx   eax, al                                 ; 3D16 _ 0F BE. C0
        mov     edx, dword [ebp-28H]                    ; 3D19 _ 8B. 55, D8
        mov     dword [esp+14H], edx                    ; 3D1C _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 3D20 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 3D24 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 3D27 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 3D2B _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 3D2E _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 3D32 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 3D35 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3D39 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3D3C _ 89. 04 24
        call    _showString                             ; 3D3F _ E8, FFFFF091
        nop                                             ; 3D44 _ 90
        leave                                           ; 3D45 _ C9
        ret                                             ; 3D46 _ C3
; _showMemoryInfo End of function

_message_box:; Function begin
        push    ebp                                     ; 3D47 _ 55
        mov     ebp, esp                                ; 3D48 _ 89. E5
        sub     esp, 56                                 ; 3D4A _ 83. EC, 38
        mov     eax, dword [ebp+8H]                     ; 3D4D _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3D50 _ 89. 04 24
        call    _sheet_alloc                            ; 3D53 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 3D58 _ 89. 45, F4
        mov     eax, dword [_memman]                    ; 3D5B _ A1, 00000000(d)
        mov     dword [esp+4H], 10880                   ; 3D60 _ C7. 44 24, 04, 00002A80
        mov     dword [esp], eax                        ; 3D68 _ 89. 04 24
        call    _memman_alloc_4k                        ; 3D6B _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 3D70 _ 89. 45, F0
        mov     dword [esp+10H], -1                     ; 3D73 _ C7. 44 24, 10, FFFFFFFF
        mov     dword [esp+0CH], 68                     ; 3D7B _ C7. 44 24, 0C, 00000044
        mov     dword [esp+8H], 160                     ; 3D83 _ C7. 44 24, 08, 000000A0
        mov     eax, dword [ebp-10H]                    ; 3D8B _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 3D8E _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 3D92 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 3D95 _ 89. 04 24
        call    _sheet_setbuf                           ; 3D98 _ E8, 00000000(rel)
        mov     dword [esp+0CH], 1                      ; 3D9D _ C7. 44 24, 0C, 00000001
        mov     eax, dword [ebp+0CH]                    ; 3DA5 _ 8B. 45, 0C
        mov     dword [esp+8H], eax                     ; 3DA8 _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 3DAC _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 3DAF _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3DB3 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3DB6 _ 89. 04 24
        call    _make_window8                           ; 3DB9 _ E8, 00000074
        mov     dword [esp+14H], 7                      ; 3DBE _ C7. 44 24, 14, 00000007
        mov     dword [esp+10H], 16                     ; 3DC6 _ C7. 44 24, 10, 00000010
        mov     dword [esp+0CH], 144                    ; 3DCE _ C7. 44 24, 0C, 00000090
        mov     dword [esp+8H], 28                      ; 3DD6 _ C7. 44 24, 08, 0000001C
        mov     dword [esp+4H], 8                       ; 3DDE _ C7. 44 24, 04, 00000008
        mov     eax, dword [ebp-0CH]                    ; 3DE6 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 3DE9 _ 89. 04 24
        call    _make_textbox8                          ; 3DEC _ E8, 00000444
        mov     dword [esp+0CH], 172                    ; 3DF1 _ C7. 44 24, 0C, 000000AC
        mov     dword [esp+8H], 260                     ; 3DF9 _ C7. 44 24, 08, 00000104
        mov     eax, dword [ebp-0CH]                    ; 3E01 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 3E04 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3E08 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3E0B _ 89. 04 24
        call    _sheet_slide                            ; 3E0E _ E8, 00000000(rel)
        mov     dword [esp+8H], 2                       ; 3E13 _ C7. 44 24, 08, 00000002
        mov     eax, dword [ebp-0CH]                    ; 3E1B _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 3E1E _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3E22 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3E25 _ 89. 04 24
        call    _sheet_updown                           ; 3E28 _ E8, 00000000(rel)
        mov     eax, dword [ebp-0CH]                    ; 3E2D _ 8B. 45, F4
        leave                                           ; 3E30 _ C9
        ret                                             ; 3E31 _ C3
; _message_box End of function

_make_window8:; Function begin
        push    ebp                                     ; 3E32 _ 55
        mov     ebp, esp                                ; 3E33 _ 89. E5
        push    ebx                                     ; 3E35 _ 53
        sub     esp, 68                                 ; 3E36 _ 83. EC, 44
        mov     eax, dword [ebp+14H]                    ; 3E39 _ 8B. 45, 14
        mov     byte [ebp-1CH], al                      ; 3E3C _ 88. 45, E4
        mov     eax, dword [ebp+0CH]                    ; 3E3F _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 3E42 _ 8B. 40, 04
        mov     dword [ebp-0CH], eax                    ; 3E45 _ 89. 45, F4
        mov     eax, dword [ebp+0CH]                    ; 3E48 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 3E4B _ 8B. 40, 08
        mov     dword [ebp-10H], eax                    ; 3E4E _ 89. 45, F0
        mov     eax, dword [ebp-0CH]                    ; 3E51 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 3E54 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 3E57 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 3E5A _ 8B. 00
        mov     dword [esp+18H], 0                      ; 3E5C _ C7. 44 24, 18, 00000000
        mov     dword [esp+14H], edx                    ; 3E64 _ 89. 54 24, 14
        mov     dword [esp+10H], 0                      ; 3E68 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 3E70 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 3E78 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-0CH]                    ; 3E80 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 3E83 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3E87 _ 89. 04 24
        call    _boxfill8                               ; 3E8A _ E8, FFFFF5EA
        mov     eax, dword [ebp-0CH]                    ; 3E8F _ 8B. 45, F4
        lea     edx, [eax-2H]                           ; 3E92 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 3E95 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 3E98 _ 8B. 00
        mov     dword [esp+18H], 1                      ; 3E9A _ C7. 44 24, 18, 00000001
        mov     dword [esp+14H], edx                    ; 3EA2 _ 89. 54 24, 14
        mov     dword [esp+10H], 1                      ; 3EA6 _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], 1                      ; 3EAE _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 7                       ; 3EB6 _ C7. 44 24, 08, 00000007
        mov     edx, dword [ebp-0CH]                    ; 3EBE _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 3EC1 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3EC5 _ 89. 04 24
        call    _boxfill8                               ; 3EC8 _ E8, FFFFF5AC
        mov     eax, dword [ebp-10H]                    ; 3ECD _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 3ED0 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 3ED3 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 3ED6 _ 8B. 00
        mov     dword [esp+18H], edx                    ; 3ED8 _ 89. 54 24, 18
        mov     dword [esp+14H], 0                      ; 3EDC _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], 0                      ; 3EE4 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 3EEC _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 3EF4 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-0CH]                    ; 3EFC _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 3EFF _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3F03 _ 89. 04 24
        call    _boxfill8                               ; 3F06 _ E8, FFFFF56E
        mov     eax, dword [ebp-10H]                    ; 3F0B _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 3F0E _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 3F11 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 3F14 _ 8B. 00
        mov     dword [esp+18H], edx                    ; 3F16 _ 89. 54 24, 18
        mov     dword [esp+14H], 1                      ; 3F1A _ C7. 44 24, 14, 00000001
        mov     dword [esp+10H], 1                      ; 3F22 _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], 1                      ; 3F2A _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 7                       ; 3F32 _ C7. 44 24, 08, 00000007
        mov     edx, dword [ebp-0CH]                    ; 3F3A _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 3F3D _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3F41 _ 89. 04 24
        call    _boxfill8                               ; 3F44 _ E8, FFFFF530
        mov     eax, dword [ebp-10H]                    ; 3F49 _ 8B. 45, F0
        lea     ebx, [eax-2H]                           ; 3F4C _ 8D. 58, FE
        mov     eax, dword [ebp-0CH]                    ; 3F4F _ 8B. 45, F4
        lea     ecx, [eax-2H]                           ; 3F52 _ 8D. 48, FE
        mov     eax, dword [ebp-0CH]                    ; 3F55 _ 8B. 45, F4
        lea     edx, [eax-2H]                           ; 3F58 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 3F5B _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 3F5E _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 3F60 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 3F64 _ 89. 4C 24, 14
        mov     dword [esp+10H], 1                      ; 3F68 _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], edx                    ; 3F70 _ 89. 54 24, 0C
        mov     dword [esp+8H], 15                      ; 3F74 _ C7. 44 24, 08, 0000000F
        mov     edx, dword [ebp-0CH]                    ; 3F7C _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 3F7F _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3F83 _ 89. 04 24
        call    _boxfill8                               ; 3F86 _ E8, FFFFF4EE
        mov     eax, dword [ebp-10H]                    ; 3F8B _ 8B. 45, F0
        lea     ebx, [eax-1H]                           ; 3F8E _ 8D. 58, FF
        mov     eax, dword [ebp-0CH]                    ; 3F91 _ 8B. 45, F4
        lea     ecx, [eax-1H]                           ; 3F94 _ 8D. 48, FF
        mov     eax, dword [ebp-0CH]                    ; 3F97 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 3F9A _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 3F9D _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 3FA0 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 3FA2 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 3FA6 _ 89. 4C 24, 14
        mov     dword [esp+10H], 0                      ; 3FAA _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], edx                    ; 3FB2 _ 89. 54 24, 0C
        mov     dword [esp+8H], 0                       ; 3FB6 _ C7. 44 24, 08, 00000000
        mov     edx, dword [ebp-0CH]                    ; 3FBE _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 3FC1 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3FC5 _ 89. 04 24
        call    _boxfill8                               ; 3FC8 _ E8, FFFFF4AC
        mov     eax, dword [ebp-10H]                    ; 3FCD _ 8B. 45, F0
        lea     ecx, [eax-3H]                           ; 3FD0 _ 8D. 48, FD
        mov     eax, dword [ebp-0CH]                    ; 3FD3 _ 8B. 45, F4
        lea     edx, [eax-3H]                           ; 3FD6 _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 3FD9 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 3FDC _ 8B. 00
        mov     dword [esp+18H], ecx                    ; 3FDE _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 3FE2 _ 89. 54 24, 14
        mov     dword [esp+10H], 2                      ; 3FE6 _ C7. 44 24, 10, 00000002
        mov     dword [esp+0CH], 2                      ; 3FEE _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 8                       ; 3FF6 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-0CH]                    ; 3FFE _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 4001 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 4005 _ 89. 04 24
        call    _boxfill8                               ; 4008 _ E8, FFFFF46C
        mov     eax, dword [ebp-0CH]                    ; 400D _ 8B. 45, F4
        lea     edx, [eax-4H]                           ; 4010 _ 8D. 50, FC
        mov     eax, dword [ebp+0CH]                    ; 4013 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 4016 _ 8B. 00
        mov     dword [esp+18H], 20                     ; 4018 _ C7. 44 24, 18, 00000014
        mov     dword [esp+14H], edx                    ; 4020 _ 89. 54 24, 14
        mov     dword [esp+10H], 3                      ; 4024 _ C7. 44 24, 10, 00000003
        mov     dword [esp+0CH], 3                      ; 402C _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 12                      ; 4034 _ C7. 44 24, 08, 0000000C
        mov     edx, dword [ebp-0CH]                    ; 403C _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 403F _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 4043 _ 89. 04 24
        call    _boxfill8                               ; 4046 _ E8, FFFFF42E
        mov     eax, dword [ebp-10H]                    ; 404B _ 8B. 45, F0
        lea     ebx, [eax-2H]                           ; 404E _ 8D. 58, FE
        mov     eax, dword [ebp-0CH]                    ; 4051 _ 8B. 45, F4
        lea     ecx, [eax-2H]                           ; 4054 _ 8D. 48, FE
        mov     eax, dword [ebp-10H]                    ; 4057 _ 8B. 45, F0
        lea     edx, [eax-2H]                           ; 405A _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 405D _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 4060 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 4062 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 4066 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 406A _ 89. 54 24, 10
        mov     dword [esp+0CH], 1                      ; 406E _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 15                      ; 4076 _ C7. 44 24, 08, 0000000F
        mov     edx, dword [ebp-0CH]                    ; 407E _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 4081 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 4085 _ 89. 04 24
        call    _boxfill8                               ; 4088 _ E8, FFFFF3EC
        mov     eax, dword [ebp-10H]                    ; 408D _ 8B. 45, F0
        lea     ebx, [eax-1H]                           ; 4090 _ 8D. 58, FF
        mov     eax, dword [ebp-0CH]                    ; 4093 _ 8B. 45, F4
        lea     ecx, [eax-1H]                           ; 4096 _ 8D. 48, FF
        mov     eax, dword [ebp-10H]                    ; 4099 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 409C _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 409F _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 40A2 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 40A4 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 40A8 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 40AC _ 89. 54 24, 10
        mov     dword [esp+0CH], 0                      ; 40B0 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 40B8 _ C7. 44 24, 08, 00000000
        mov     edx, dword [ebp-0CH]                    ; 40C0 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 40C3 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 40C7 _ 89. 04 24
        call    _boxfill8                               ; 40CA _ E8, FFFFF3AA
        movsx   eax, byte [ebp-1CH]                     ; 40CF _ 0F BE. 45, E4
        mov     dword [esp+0CH], eax                    ; 40D3 _ 89. 44 24, 0C
        mov     eax, dword [ebp+10H]                    ; 40D7 _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 40DA _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 40DE _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 40E1 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 40E5 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 40E8 _ 89. 04 24
        call    _make_wtitle8                           ; 40EB _ E8, 00000007
        nop                                             ; 40F0 _ 90
        add     esp, 68                                 ; 40F1 _ 83. C4, 44
        pop     ebx                                     ; 40F4 _ 5B
        pop     ebp                                     ; 40F5 _ 5D
        ret                                             ; 40F6 _ C3
; _make_window8 End of function

_make_wtitle8:; Function begin
        push    ebp                                     ; 40F7 _ 55
        mov     ebp, esp                                ; 40F8 _ 89. E5
        push    ebx                                     ; 40FA _ 53
        sub     esp, 68                                 ; 40FB _ 83. EC, 44
        mov     eax, dword [ebp+14H]                    ; 40FE _ 8B. 45, 14
        mov     byte [ebp-1CH], al                      ; 4101 _ 88. 45, E4
        cmp     byte [ebp-1CH], 0                       ; 4104 _ 80. 7D, E4, 00
        jz      ?_226                                   ; 4108 _ 74, 0A
        mov     byte [ebp-12H], 7                       ; 410A _ C6. 45, EE, 07
        mov     byte [ebp-13H], 12                      ; 410E _ C6. 45, ED, 0C
        jmp     ?_227                                   ; 4112 _ EB, 08

?_226:  mov     byte [ebp-12H], 8                       ; 4114 _ C6. 45, EE, 08
        mov     byte [ebp-13H], 15                      ; 4118 _ C6. 45, ED, 0F
?_227:  mov     eax, dword [ebp+0CH]                    ; 411C _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 411F _ 8B. 40, 04
        lea     ebx, [eax-4H]                           ; 4122 _ 8D. 58, FC
        movzx   eax, byte [ebp-13H]                     ; 4125 _ 0F B6. 45, ED
        movzx   eax, al                                 ; 4129 _ 0F B6. C0
        mov     edx, dword [ebp+0CH]                    ; 412C _ 8B. 55, 0C
        mov     ecx, dword [edx+4H]                     ; 412F _ 8B. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 4132 _ 8B. 55, 0C
        mov     edx, dword [edx]                        ; 4135 _ 8B. 12
        mov     dword [esp+18H], 20                     ; 4137 _ C7. 44 24, 18, 00000014
        mov     dword [esp+14H], ebx                    ; 413F _ 89. 5C 24, 14
        mov     dword [esp+10H], 3                      ; 4143 _ C7. 44 24, 10, 00000003
        mov     dword [esp+0CH], 3                      ; 414B _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], eax                     ; 4153 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 4157 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 415B _ 89. 14 24
        call    _boxfill8                               ; 415E _ E8, FFFFF316
        movsx   eax, byte [ebp-12H]                     ; 4163 _ 0F BE. 45, EE
        mov     edx, dword [ebp+10H]                    ; 4167 _ 8B. 55, 10
        mov     dword [esp+14H], edx                    ; 416A _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 416E _ 89. 44 24, 10
        mov     dword [esp+0CH], 4                      ; 4172 _ C7. 44 24, 0C, 00000004
        mov     dword [esp+8H], 24                      ; 417A _ C7. 44 24, 08, 00000018
        mov     eax, dword [ebp+0CH]                    ; 4182 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 4185 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4189 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 418C _ 89. 04 24
        call    _showString                             ; 418F _ E8, FFFFEC41
        mov     dword [ebp-10H], 0                      ; 4194 _ C7. 45, F0, 00000000
        jmp     ?_235                                   ; 419B _ E9, 00000084

?_228:  mov     dword [ebp-0CH], 0                      ; 41A0 _ C7. 45, F4, 00000000
        jmp     ?_234                                   ; 41A7 _ EB, 71

?_229:  mov     eax, dword [ebp-10H]                    ; 41A9 _ 8B. 45, F0
        shl     eax, 4                                  ; 41AC _ C1. E0, 04
        mov     edx, eax                                ; 41AF _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 41B1 _ 8B. 45, F4
        add     eax, edx                                ; 41B4 _ 01. D0
        add     eax, _closebtn.2825                     ; 41B6 _ 05, 00000280(d)
        movzx   eax, byte [eax]                         ; 41BB _ 0F B6. 00
        mov     byte [ebp-11H], al                      ; 41BE _ 88. 45, EF
        cmp     byte [ebp-11H], 64                      ; 41C1 _ 80. 7D, EF, 40
        jnz     ?_230                                   ; 41C5 _ 75, 06
        mov     byte [ebp-11H], 0                       ; 41C7 _ C6. 45, EF, 00
        jmp     ?_233                                   ; 41CB _ EB, 1C

?_230:  cmp     byte [ebp-11H], 36                      ; 41CD _ 80. 7D, EF, 24
        jnz     ?_231                                   ; 41D1 _ 75, 06
        mov     byte [ebp-11H], 15                      ; 41D3 _ C6. 45, EF, 0F
        jmp     ?_233                                   ; 41D7 _ EB, 10

?_231:  cmp     byte [ebp-11H], 81                      ; 41D9 _ 80. 7D, EF, 51
        jnz     ?_232                                   ; 41DD _ 75, 06
        mov     byte [ebp-11H], 8                       ; 41DF _ C6. 45, EF, 08
        jmp     ?_233                                   ; 41E3 _ EB, 04

?_232:  mov     byte [ebp-11H], 7                       ; 41E5 _ C6. 45, EF, 07
?_233:  mov     eax, dword [ebp+0CH]                    ; 41E9 _ 8B. 45, 0C
        mov     ecx, dword [eax]                        ; 41EC _ 8B. 08
        mov     eax, dword [ebp-10H]                    ; 41EE _ 8B. 45, F0
        lea     edx, [eax+5H]                           ; 41F1 _ 8D. 50, 05
        mov     eax, dword [ebp+0CH]                    ; 41F4 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 41F7 _ 8B. 40, 04
        imul    eax, edx                                ; 41FA _ 0F AF. C2
        mov     edx, dword [ebp+0CH]                    ; 41FD _ 8B. 55, 0C
        mov     edx, dword [edx+4H]                     ; 4200 _ 8B. 52, 04
        lea     ebx, [edx-15H]                          ; 4203 _ 8D. 5A, EB
        mov     edx, dword [ebp-0CH]                    ; 4206 _ 8B. 55, F4
        add     edx, ebx                                ; 4209 _ 01. DA
        add     eax, edx                                ; 420B _ 01. D0
        lea     edx, [ecx+eax]                          ; 420D _ 8D. 14 01
        movzx   eax, byte [ebp-11H]                     ; 4210 _ 0F B6. 45, EF
        mov     byte [edx], al                          ; 4214 _ 88. 02
        add     dword [ebp-0CH], 1                      ; 4216 _ 83. 45, F4, 01
?_234:  cmp     dword [ebp-0CH], 15                     ; 421A _ 83. 7D, F4, 0F
        jle     ?_229                                   ; 421E _ 7E, 89
        add     dword [ebp-10H], 1                      ; 4220 _ 83. 45, F0, 01
?_235:  cmp     dword [ebp-10H], 13                     ; 4224 _ 83. 7D, F0, 0D
        jle     ?_228                                   ; 4228 _ 0F 8E, FFFFFF72
        nop                                             ; 422E _ 90
        add     esp, 68                                 ; 422F _ 83. C4, 44
        pop     ebx                                     ; 4232 _ 5B
        pop     ebp                                     ; 4233 _ 5D
        ret                                             ; 4234 _ C3
; _make_wtitle8 End of function

_make_textbox8:; Function begin
        push    ebp                                     ; 4235 _ 55
        mov     ebp, esp                                ; 4236 _ 89. E5
        push    edi                                     ; 4238 _ 57
        push    esi                                     ; 4239 _ 56
        push    ebx                                     ; 423A _ 53
        sub     esp, 44                                 ; 423B _ 83. EC, 2C
        mov     edx, dword [ebp+0CH]                    ; 423E _ 8B. 55, 0C
        mov     eax, dword [ebp+14H]                    ; 4241 _ 8B. 45, 14
        add     eax, edx                                ; 4244 _ 01. D0
        mov     dword [ebp-10H], eax                    ; 4246 _ 89. 45, F0
        mov     edx, dword [ebp+10H]                    ; 4249 _ 8B. 55, 10
        mov     eax, dword [ebp+18H]                    ; 424C _ 8B. 45, 18
        add     eax, edx                                ; 424F _ 01. D0
        mov     dword [ebp-14H], eax                    ; 4251 _ 89. 45, EC
        mov     eax, dword [ebp+10H]                    ; 4254 _ 8B. 45, 10
        lea     edi, [eax-3H]                           ; 4257 _ 8D. 78, FD
        mov     eax, dword [ebp-10H]                    ; 425A _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 425D _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 4260 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 4263 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 4266 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 4269 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 426C _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 426F _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 4272 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 4275 _ 8B. 00
        mov     dword [esp+18H], edi                    ; 4277 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 427B _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 427F _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 4283 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 15                      ; 4287 _ C7. 44 24, 08, 0000000F
        mov     dword [esp+4H], edx                     ; 428F _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 4293 _ 89. 04 24
        call    _boxfill8                               ; 4296 _ E8, FFFFF1DE
        mov     eax, dword [ebp-14H]                    ; 429B _ 8B. 45, EC
        lea     edi, [eax+1H]                           ; 429E _ 8D. 78, 01
        mov     eax, dword [ebp+0CH]                    ; 42A1 _ 8B. 45, 0C
        lea     esi, [eax-3H]                           ; 42A4 _ 8D. 70, FD
        mov     eax, dword [ebp+10H]                    ; 42A7 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 42AA _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 42AD _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 42B0 _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 42B3 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 42B6 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 42B9 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 42BC _ 8B. 00
        mov     dword [esp+18H], edi                    ; 42BE _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 42C2 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 42C6 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 42CA _ 89. 4C 24, 0C
        mov     dword [esp+8H], 15                      ; 42CE _ C7. 44 24, 08, 0000000F
        mov     dword [esp+4H], edx                     ; 42D6 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 42DA _ 89. 04 24
        call    _boxfill8                               ; 42DD _ E8, FFFFF197
        mov     eax, dword [ebp-14H]                    ; 42E2 _ 8B. 45, EC
        lea     edi, [eax+2H]                           ; 42E5 _ 8D. 78, 02
        mov     eax, dword [ebp-10H]                    ; 42E8 _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 42EB _ 8D. 70, 01
        mov     eax, dword [ebp-14H]                    ; 42EE _ 8B. 45, EC
        lea     ebx, [eax+2H]                           ; 42F1 _ 8D. 58, 02
        mov     eax, dword [ebp+0CH]                    ; 42F4 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 42F7 _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 42FA _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 42FD _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 4300 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 4303 _ 8B. 00
        mov     dword [esp+18H], edi                    ; 4305 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 4309 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 430D _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 4311 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 7                       ; 4315 _ C7. 44 24, 08, 00000007
        mov     dword [esp+4H], edx                     ; 431D _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 4321 _ 89. 04 24
        call    _boxfill8                               ; 4324 _ E8, FFFFF150
        mov     eax, dword [ebp-14H]                    ; 4329 _ 8B. 45, EC
        lea     edi, [eax+2H]                           ; 432C _ 8D. 78, 02
        mov     eax, dword [ebp-10H]                    ; 432F _ 8B. 45, F0
        lea     esi, [eax+2H]                           ; 4332 _ 8D. 70, 02
        mov     eax, dword [ebp+10H]                    ; 4335 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 4338 _ 8D. 58, FD
        mov     eax, dword [ebp-10H]                    ; 433B _ 8B. 45, F0
        lea     ecx, [eax+2H]                           ; 433E _ 8D. 48, 02
        mov     eax, dword [ebp+8H]                     ; 4341 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 4344 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 4347 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 434A _ 8B. 00
        mov     dword [esp+18H], edi                    ; 434C _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 4350 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 4354 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 4358 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 7                       ; 435C _ C7. 44 24, 08, 00000007
        mov     dword [esp+4H], edx                     ; 4364 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 4368 _ 89. 04 24
        call    _boxfill8                               ; 436B _ E8, FFFFF109
        mov     eax, dword [ebp+10H]                    ; 4370 _ 8B. 45, 10
        lea     esi, [eax-2H]                           ; 4373 _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 4376 _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 4379 _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 437C _ 8B. 45, 0C
        lea     ecx, [eax-1H]                           ; 437F _ 8D. 48, FF
        mov     eax, dword [ebp+8H]                     ; 4382 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 4385 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 4388 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 438B _ 8B. 00
        mov     dword [esp+18H], esi                    ; 438D _ 89. 74 24, 18
        mov     esi, dword [ebp-10H]                    ; 4391 _ 8B. 75, F0
        mov     dword [esp+14H], esi                    ; 4394 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 4398 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 439C _ 89. 4C 24, 0C
        mov     dword [esp+8H], 0                       ; 43A0 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 43A8 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 43AC _ 89. 04 24
        call    _boxfill8                               ; 43AF _ E8, FFFFF0C5
        mov     eax, dword [ebp+0CH]                    ; 43B4 _ 8B. 45, 0C
        lea     esi, [eax-2H]                           ; 43B7 _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 43BA _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 43BD _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 43C0 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 43C3 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 43C6 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 43C9 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 43CC _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 43CF _ 8B. 00
        mov     edi, dword [ebp-14H]                    ; 43D1 _ 8B. 7D, EC
        mov     dword [esp+18H], edi                    ; 43D4 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 43D8 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 43DC _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 43E0 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 0                       ; 43E4 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 43EC _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 43F0 _ 89. 04 24
        call    _boxfill8                               ; 43F3 _ E8, FFFFF081
        mov     eax, dword [ebp-14H]                    ; 43F8 _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 43FB _ 8D. 70, 01
        mov     eax, dword [ebp-14H]                    ; 43FE _ 8B. 45, EC
        lea     ebx, [eax+1H]                           ; 4401 _ 8D. 58, 01
        mov     eax, dword [ebp+0CH]                    ; 4404 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 4407 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 440A _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 440D _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 4410 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 4413 _ 8B. 00
        mov     dword [esp+18H], esi                    ; 4415 _ 89. 74 24, 18
        mov     esi, dword [ebp-10H]                    ; 4419 _ 8B. 75, F0
        mov     dword [esp+14H], esi                    ; 441C _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 4420 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 4424 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 8                       ; 4428 _ C7. 44 24, 08, 00000008
        mov     dword [esp+4H], edx                     ; 4430 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 4434 _ 89. 04 24
        call    _boxfill8                               ; 4437 _ E8, FFFFF03D
        mov     eax, dword [ebp-14H]                    ; 443C _ 8B. 45, EC
        lea     edi, [eax+1H]                           ; 443F _ 8D. 78, 01
        mov     eax, dword [ebp-10H]                    ; 4442 _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 4445 _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 4448 _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 444B _ 8D. 58, FE
        mov     eax, dword [ebp-10H]                    ; 444E _ 8B. 45, F0
        lea     ecx, [eax+1H]                           ; 4451 _ 8D. 48, 01
        mov     eax, dword [ebp+8H]                     ; 4454 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 4457 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 445A _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 445D _ 8B. 00
        mov     dword [esp+18H], edi                    ; 445F _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 4463 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 4467 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 446B _ 89. 4C 24, 0C
        mov     dword [esp+8H], 8                       ; 446F _ C7. 44 24, 08, 00000008
        mov     dword [esp+4H], edx                     ; 4477 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 447B _ 89. 04 24
        call    _boxfill8                               ; 447E _ E8, FFFFEFF6
        mov     eax, dword [ebp+10H]                    ; 4483 _ 8B. 45, 10
        lea     esi, [eax-1H]                           ; 4486 _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 4489 _ 8B. 45, 0C
        lea     ebx, [eax-1H]                           ; 448C _ 8D. 58, FF
        mov     eax, dword [ebp+1CH]                    ; 448F _ 8B. 45, 1C
        movzx   eax, al                                 ; 4492 _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 4495 _ 8B. 55, 08
        mov     ecx, dword [edx+4H]                     ; 4498 _ 8B. 4A, 04
        mov     edx, dword [ebp+8H]                     ; 449B _ 8B. 55, 08
        mov     edx, dword [edx]                        ; 449E _ 8B. 12
        mov     edi, dword [ebp-14H]                    ; 44A0 _ 8B. 7D, EC
        mov     dword [esp+18H], edi                    ; 44A3 _ 89. 7C 24, 18
        mov     edi, dword [ebp-10H]                    ; 44A7 _ 8B. 7D, F0
        mov     dword [esp+14H], edi                    ; 44AA _ 89. 7C 24, 14
        mov     dword [esp+10H], esi                    ; 44AE _ 89. 74 24, 10
        mov     dword [esp+0CH], ebx                    ; 44B2 _ 89. 5C 24, 0C
        mov     dword [esp+8H], eax                     ; 44B6 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 44BA _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 44BE _ 89. 14 24
        call    _boxfill8                               ; 44C1 _ E8, FFFFEFB3
        nop                                             ; 44C6 _ 90
        add     esp, 44                                 ; 44C7 _ 83. C4, 2C
        pop     ebx                                     ; 44CA _ 5B
        pop     esi                                     ; 44CB _ 5E
        pop     edi                                     ; 44CC _ 5F
        pop     ebp                                     ; 44CD _ 5D
        ret                                             ; 44CE _ C3
; _make_textbox8 End of function

_file_loadfile:; Function begin
        push    ebp                                     ; 44CF _ 55
        mov     ebp, esp                                ; 44D0 _ 89. E5
        sub     esp, 56                                 ; 44D2 _ 83. EC, 38
        mov     dword [ebp-0CH], 78848                  ; 44D5 _ C7. 45, F4, 00013400
        mov     eax, dword [_memman]                    ; 44DC _ A1, 00000000(d)
        mov     dword [esp+4H], 13                      ; 44E1 _ C7. 44 24, 04, 0000000D
        mov     dword [esp], eax                        ; 44E9 _ 89. 04 24
        call    _memman_alloc                           ; 44EC _ E8, 00000000(rel)
        mov     dword [ebp-1CH], eax                    ; 44F1 _ 89. 45, E4
        mov     eax, dword [ebp-1CH]                    ; 44F4 _ 8B. 45, E4
        add     eax, 12                                 ; 44F7 _ 83. C0, 0C
        mov     byte [eax], 0                           ; 44FA _ C6. 00, 00
        jmp     ?_246                                   ; 44FD _ E9, 00000125

?_236:  mov     dword [ebp-10H], 0                      ; 4502 _ C7. 45, F0, 00000000
        jmp     ?_238                                   ; 4509 _ EB, 2A

?_237:  mov     edx, dword [ebp-0CH]                    ; 450B _ 8B. 55, F4
        mov     eax, dword [ebp-10H]                    ; 450E _ 8B. 45, F0
        add     eax, edx                                ; 4511 _ 01. D0
        movzx   eax, byte [eax]                         ; 4513 _ 0F B6. 00
        test    al, al                                  ; 4516 _ 84. C0
        jz      ?_239                                   ; 4518 _ 74, 23
        mov     edx, dword [ebp-0CH]                    ; 451A _ 8B. 55, F4
        mov     eax, dword [ebp-10H]                    ; 451D _ 8B. 45, F0
        add     eax, edx                                ; 4520 _ 01. D0
        movzx   ecx, byte [eax]                         ; 4522 _ 0F B6. 08
        mov     edx, dword [ebp-10H]                    ; 4525 _ 8B. 55, F0
        mov     eax, dword [ebp-1CH]                    ; 4528 _ 8B. 45, E4
        add     eax, edx                                ; 452B _ 01. D0
        mov     edx, ecx                                ; 452D _ 89. CA
        mov     byte [eax], dl                          ; 452F _ 88. 10
        add     dword [ebp-10H], 1                      ; 4531 _ 83. 45, F0, 01
?_238:  cmp     dword [ebp-10H], 7                      ; 4535 _ 83. 7D, F0, 07
        jle     ?_237                                   ; 4539 _ 7E, D0
        jmp     ?_240                                   ; 453B _ EB, 01

?_239:  nop                                             ; 453D _ 90
?_240:  mov     dword [ebp-14H], 0                      ; 453E _ C7. 45, EC, 00000000
        mov     edx, dword [ebp-10H]                    ; 4545 _ 8B. 55, F0
        mov     eax, dword [ebp-1CH]                    ; 4548 _ 8B. 45, E4
        add     eax, edx                                ; 454B _ 01. D0
        mov     byte [eax], 46                          ; 454D _ C6. 00, 2E
        add     dword [ebp-10H], 1                      ; 4550 _ 83. 45, F0, 01
        mov     dword [ebp-14H], 0                      ; 4554 _ C7. 45, EC, 00000000
        jmp     ?_242                                   ; 455B _ EB, 22

?_241:  mov     edx, dword [ebp-0CH]                    ; 455D _ 8B. 55, F4
        mov     eax, dword [ebp-14H]                    ; 4560 _ 8B. 45, EC
        add     eax, edx                                ; 4563 _ 01. D0
        add     eax, 8                                  ; 4565 _ 83. C0, 08
        movzx   ecx, byte [eax]                         ; 4568 _ 0F B6. 08
        mov     edx, dword [ebp-10H]                    ; 456B _ 8B. 55, F0
        mov     eax, dword [ebp-1CH]                    ; 456E _ 8B. 45, E4
        add     eax, edx                                ; 4571 _ 01. D0
        mov     edx, ecx                                ; 4573 _ 89. CA
        mov     byte [eax], dl                          ; 4575 _ 88. 10
        add     dword [ebp-10H], 1                      ; 4577 _ 83. 45, F0, 01
        add     dword [ebp-14H], 1                      ; 457B _ 83. 45, EC, 01
?_242:  cmp     dword [ebp-14H], 2                      ; 457F _ 83. 7D, EC, 02
        jle     ?_241                                   ; 4583 _ 7E, D8
        mov     eax, dword [ebp-1CH]                    ; 4585 _ 8B. 45, E4
        mov     dword [esp+4H], eax                     ; 4588 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 458C _ 8B. 45, 08
        mov     dword [esp], eax                        ; 458F _ 89. 04 24
        call    _strcmp                                 ; 4592 _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 4597 _ 83. F8, 01
        jne     ?_245                                   ; 459A _ 0F 85, 00000083
        mov     eax, dword [ebp-0CH]                    ; 45A0 _ 8B. 45, F4
        mov     edx, dword [eax+1CH]                    ; 45A3 _ 8B. 50, 1C
        mov     eax, dword [_memman]                    ; 45A6 _ A1, 00000000(d)
        mov     dword [esp+4H], edx                     ; 45AB _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 45AF _ 89. 04 24
        call    _memman_alloc_4k                        ; 45B2 _ E8, 00000000(rel)
        mov     edx, eax                                ; 45B7 _ 89. C2
        mov     eax, dword [ebp+0CH]                    ; 45B9 _ 8B. 45, 0C
        mov     dword [eax], edx                        ; 45BC _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 45BE _ 8B. 45, F4
        mov     eax, dword [eax+1CH]                    ; 45C1 _ 8B. 40, 1C
        mov     edx, eax                                ; 45C4 _ 89. C2
        mov     eax, dword [ebp+0CH]                    ; 45C6 _ 8B. 45, 0C
        mov     dword [eax+8H], edx                     ; 45C9 _ 89. 50, 08
        mov     dword [ebp-20H], 88064                  ; 45CC _ C7. 45, E0, 00015800
        mov     eax, dword [ebp-0CH]                    ; 45D3 _ 8B. 45, F4
        movzx   eax, word [eax+1AH]                     ; 45D6 _ 0F B7. 40, 1A
        movzx   eax, ax                                 ; 45DA _ 0F B7. C0
        shl     eax, 9                                  ; 45DD _ C1. E0, 09
        add     dword [ebp-20H], eax                    ; 45E0 _ 01. 45, E0
        mov     eax, dword [ebp-0CH]                    ; 45E3 _ 8B. 45, F4
        mov     eax, dword [eax+1CH]                    ; 45E6 _ 8B. 40, 1C
        mov     dword [ebp-24H], eax                    ; 45E9 _ 89. 45, DC
        mov     dword [ebp-18H], 0                      ; 45EC _ C7. 45, E8, 00000000
        mov     dword [ebp-18H], 0                      ; 45F3 _ C7. 45, E8, 00000000
        jmp     ?_244                                   ; 45FA _ EB, 1D

?_243:  mov     edx, dword [ebp-18H]                    ; 45FC _ 8B. 55, E8
        mov     eax, dword [ebp-20H]                    ; 45FF _ 8B. 45, E0
        add     eax, edx                                ; 4602 _ 01. D0
        movzx   ecx, byte [eax]                         ; 4604 _ 0F B6. 08
        mov     eax, dword [ebp+0CH]                    ; 4607 _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 460A _ 8B. 10
        mov     eax, dword [ebp-18H]                    ; 460C _ 8B. 45, E8
        add     eax, edx                                ; 460F _ 01. D0
        mov     edx, ecx                                ; 4611 _ 89. CA
        mov     byte [eax], dl                          ; 4613 _ 88. 10
        add     dword [ebp-18H], 1                      ; 4615 _ 83. 45, E8, 01
?_244:  mov     eax, dword [ebp-18H]                    ; 4619 _ 8B. 45, E8
        cmp     eax, dword [ebp-24H]                    ; 461C _ 3B. 45, DC
        jl      ?_243                                   ; 461F _ 7C, DB
        jmp     ?_247                                   ; 4621 _ EB, 12

?_245:  add     dword [ebp-0CH], 32                     ; 4623 _ 83. 45, F4, 20
?_246:  mov     eax, dword [ebp-0CH]                    ; 4627 _ 8B. 45, F4
        movzx   eax, byte [eax]                         ; 462A _ 0F B6. 00
        test    al, al                                  ; 462D _ 84. C0
        jne     ?_236                                   ; 462F _ 0F 85, FFFFFECD
?_247:  mov     edx, dword [ebp-1CH]                    ; 4635 _ 8B. 55, E4
        mov     eax, dword [_memman]                    ; 4638 _ A1, 00000000(d)
        mov     dword [esp+8H], 13                      ; 463D _ C7. 44 24, 08, 0000000D
        mov     dword [esp+4H], edx                     ; 4645 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 4649 _ 89. 04 24
        call    _memman_free                            ; 464C _ E8, 00000000(rel)
        nop                                             ; 4651 _ 90
        leave                                           ; 4652 _ C9
        ret                                             ; 4653 _ C3
; _file_loadfile End of function

_intHandlerForStackOverFlow:; Function begin
        push    ebp                                     ; 4654 _ 55
        mov     ebp, esp                                ; 4655 _ 89. E5
        sub     esp, 40                                 ; 4657 _ 83. EC, 28
        call    _task_now                               ; 465A _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 465F _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 4662 _ 8B. 45, F4
        mov     dword [eax+98H], 8                      ; 4665 _ C7. 80, 00000098, 00000008
        mov     dword [esp], ?_406                      ; 466F _ C7. 04 24, 0000008E(d)
        call    _cons_putstr                            ; 4676 _ E8, FFFFD982
        mov     eax, dword [ebp-0CH]                    ; 467B _ 8B. 45, F4
        mov     dword [eax+98H], 8                      ; 467E _ C7. 80, 00000098, 00000008
        mov     eax, dword [ebp-0CH]                    ; 4688 _ 8B. 45, F4
        mov     eax, dword [eax+9CH]                    ; 468B _ 8B. 80, 0000009C
        lea     edx, [eax+10H]                          ; 4691 _ 8D. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 4694 _ 8B. 45, F4
        mov     dword [eax+9CH], edx                    ; 4697 _ 89. 90, 0000009C
        mov     dword [esp], ?_407                      ; 469D _ C7. 04 24, 00000095(d)
        call    _cons_putstr                            ; 46A4 _ E8, FFFFD954
        mov     eax, dword [ebp-0CH]                    ; 46A9 _ 8B. 45, F4
        mov     dword [eax+98H], 8                      ; 46AC _ C7. 80, 00000098, 00000008
        mov     eax, dword [ebp-0CH]                    ; 46B6 _ 8B. 45, F4
        mov     eax, dword [eax+9CH]                    ; 46B9 _ 8B. 80, 0000009C
        lea     edx, [eax+10H]                          ; 46BF _ 8D. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 46C2 _ 8B. 45, F4
        mov     dword [eax+9CH], edx                    ; 46C5 _ 89. 90, 0000009C
        mov     eax, dword [ebp+8H]                     ; 46CB _ 8B. 45, 08
        add     eax, 44                                 ; 46CE _ 83. C0, 2C
        mov     eax, dword [eax]                        ; 46D1 _ 8B. 00
        mov     dword [esp], eax                        ; 46D3 _ 89. 04 24
        call    _intToHexStr                            ; 46D6 _ E8, FFFFF18B
        mov     dword [ebp-10H], eax                    ; 46DB _ 89. 45, F0
        mov     dword [esp], ?_408                      ; 46DE _ C7. 04 24, 000000A5(d)
        call    _cons_putstr                            ; 46E5 _ E8, FFFFD913
        mov     eax, dword [ebp-10H]                    ; 46EA _ 8B. 45, F0
        mov     dword [esp], eax                        ; 46ED _ 89. 04 24
        call    _cons_putstr                            ; 46F0 _ E8, FFFFD908
        mov     eax, dword [ebp-0CH]                    ; 46F5 _ 8B. 45, F4
        mov     dword [eax+98H], 8                      ; 46F8 _ C7. 80, 00000098, 00000008
        mov     eax, dword [ebp-0CH]                    ; 4702 _ 8B. 45, F4
        mov     eax, dword [eax+9CH]                    ; 4705 _ 8B. 80, 0000009C
        lea     edx, [eax+10H]                          ; 470B _ 8D. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 470E _ 8B. 45, F4
        mov     dword [eax+9CH], edx                    ; 4711 _ 89. 90, 0000009C
        mov     eax, dword [ebp-0CH]                    ; 4717 _ 8B. 45, F4
        add     eax, 48                                 ; 471A _ 83. C0, 30
        leave                                           ; 471D _ C9
        ret                                             ; 471E _ C3
; _intHandlerForStackOverFlow End of function

_intHandlerForException:; Function begin
        push    ebp                                     ; 471F _ 55
        mov     ebp, esp                                ; 4720 _ 89. E5
        sub     esp, 40                                 ; 4722 _ 83. EC, 28
        call    _task_now                               ; 4725 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 472A _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 472D _ 8B. 45, F4
        mov     dword [eax+98H], 8                      ; 4730 _ C7. 80, 00000098, 00000008
        mov     dword [esp], ?_409                      ; 473A _ C7. 04 24, 000000AC(d)
        call    _cons_putstr                            ; 4741 _ E8, FFFFD8B7
        mov     eax, dword [ebp-0CH]                    ; 4746 _ 8B. 45, F4
        mov     dword [eax+98H], 8                      ; 4749 _ C7. 80, 00000098, 00000008
        mov     eax, dword [ebp-0CH]                    ; 4753 _ 8B. 45, F4
        mov     eax, dword [eax+9CH]                    ; 4756 _ 8B. 80, 0000009C
        lea     edx, [eax+10H]                          ; 475C _ 8D. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 475F _ 8B. 45, F4
        mov     dword [eax+9CH], edx                    ; 4762 _ 89. 90, 0000009C
        mov     dword [esp], ?_410                      ; 4768 _ C7. 04 24, 000000B4(d)
        call    _cons_putstr                            ; 476F _ E8, FFFFD889
        mov     eax, dword [ebp-0CH]                    ; 4774 _ 8B. 45, F4
        mov     eax, dword [eax+9CH]                    ; 4777 _ 8B. 80, 0000009C
        lea     edx, [eax+10H]                          ; 477D _ 8D. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 4780 _ 8B. 45, F4
        mov     dword [eax+9CH], edx                    ; 4783 _ 89. 90, 0000009C
        mov     eax, dword [ebp-0CH]                    ; 4789 _ 8B. 45, F4
        mov     dword [eax+98H], 8                      ; 478C _ C7. 80, 00000098, 00000008
        mov     eax, dword [ebp-0CH]                    ; 4796 _ 8B. 45, F4
        add     eax, 48                                 ; 4799 _ 83. C0, 30
        leave                                           ; 479C _ C9
        ret                                             ; 479D _ C3
; _intHandlerForException End of function

        nop                                             ; 479E _ 90
        nop                                             ; 479F _ 90


_shtctl_init:
        push    ebp                                     ; 47A0 _ 55
        mov     ebp, esp                                ; 47A1 _ 89. E5
        sub     esp, 40                                 ; 47A3 _ 83. EC, 28
        mov     dword [esp+4H], 9232                    ; 47A6 _ C7. 44 24, 04, 00002410
        mov     eax, dword [ebp+8H]                     ; 47AE _ 8B. 45, 08
        mov     dword [esp], eax                        ; 47B1 _ 89. 04 24
        call    _memman_alloc_4k                        ; 47B4 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 47B9 _ 89. 45, F0
        cmp     dword [ebp-10H], 0                      ; 47BC _ 83. 7D, F0, 00
        jnz     ?_248                                   ; 47C0 _ 75, 0A
        mov     eax, 0                                  ; 47C2 _ B8, 00000000
        jmp     ?_252                                   ; 47C7 _ E9, 000000A3

?_248:  mov     eax, dword [ebp+10H]                    ; 47CC _ 8B. 45, 10
        imul    eax, dword [ebp+14H]                    ; 47CF _ 0F AF. 45, 14
        mov     dword [esp+4H], eax                     ; 47D3 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 47D7 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 47DA _ 89. 04 24
        call    _memman_alloc_4k                        ; 47DD _ E8, 00000000(rel)
        mov     edx, eax                                ; 47E2 _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 47E4 _ 8B. 45, F0
        mov     dword [eax+4H], edx                     ; 47E7 _ 89. 50, 04
        mov     eax, dword [ebp-10H]                    ; 47EA _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 47ED _ 8B. 40, 04
        test    eax, eax                                ; 47F0 _ 85. C0
        jnz     ?_249                                   ; 47F2 _ 75, 21
        mov     eax, dword [ebp-10H]                    ; 47F4 _ 8B. 45, F0
        mov     dword [esp+8H], 9232                    ; 47F7 _ C7. 44 24, 08, 00002410
        mov     dword [esp+4H], eax                     ; 47FF _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4803 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4806 _ 89. 04 24
        call    _memman_free_4k                         ; 4809 _ E8, 00000000(rel)
        mov     eax, 0                                  ; 480E _ B8, 00000000
        jmp     ?_252                                   ; 4813 _ EB, 5A

?_249:  mov     eax, dword [ebp-10H]                    ; 4815 _ 8B. 45, F0
        mov     edx, dword [ebp+0CH]                    ; 4818 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 481B _ 89. 10
        mov     eax, dword [ebp-10H]                    ; 481D _ 8B. 45, F0
        mov     edx, dword [ebp+10H]                    ; 4820 _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 4823 _ 89. 50, 08
        mov     eax, dword [ebp-10H]                    ; 4826 _ 8B. 45, F0
        mov     edx, dword [ebp+14H]                    ; 4829 _ 8B. 55, 14
        mov     dword [eax+0CH], edx                    ; 482C _ 89. 50, 0C
        mov     eax, dword [ebp-10H]                    ; 482F _ 8B. 45, F0
        mov     dword [eax+10H], -1                     ; 4832 _ C7. 40, 10, FFFFFFFF
        mov     dword [ebp-0CH], 0                      ; 4839 _ C7. 45, F4, 00000000
        jmp     ?_251                                   ; 4840 _ EB, 21

?_250:  mov     ecx, dword [ebp-10H]                    ; 4842 _ 8B. 4D, F0
        mov     edx, dword [ebp-0CH]                    ; 4845 _ 8B. 55, F4
        mov     eax, edx                                ; 4848 _ 89. D0
        shl     eax, 3                                  ; 484A _ C1. E0, 03
        add     eax, edx                                ; 484D _ 01. D0
        shl     eax, 2                                  ; 484F _ C1. E0, 02
        add     eax, ecx                                ; 4852 _ 01. C8
        add     eax, 1072                               ; 4854 _ 05, 00000430
        mov     dword [eax], 0                          ; 4859 _ C7. 00, 00000000
        add     dword [ebp-0CH], 1                      ; 485F _ 83. 45, F4, 01
?_251:  cmp     dword [ebp-0CH], 255                    ; 4863 _ 81. 7D, F4, 000000FF
        jle     ?_250                                   ; 486A _ 7E, D6
        mov     eax, dword [ebp-10H]                    ; 486C _ 8B. 45, F0
?_252:  leave                                           ; 486F _ C9
        ret                                             ; 4870 _ C3

_sheet_alloc:; Function begin
        push    ebp                                     ; 4871 _ 55
        mov     ebp, esp                                ; 4872 _ 89. E5
        sub     esp, 24                                 ; 4874 _ 83. EC, 18
        mov     dword [ebp-0CH], 0                      ; 4877 _ C7. 45, F4, 00000000
        jmp     ?_255                                   ; 487E _ EB, 75

?_253:  mov     ecx, dword [ebp+8H]                     ; 4880 _ 8B. 4D, 08
        mov     edx, dword [ebp-0CH]                    ; 4883 _ 8B. 55, F4
        mov     eax, edx                                ; 4886 _ 89. D0
        shl     eax, 3                                  ; 4888 _ C1. E0, 03
        add     eax, edx                                ; 488B _ 01. D0
        shl     eax, 2                                  ; 488D _ C1. E0, 02
        add     eax, ecx                                ; 4890 _ 01. C8
        add     eax, 1072                               ; 4892 _ 05, 00000430
        mov     eax, dword [eax]                        ; 4897 _ 8B. 00
        test    eax, eax                                ; 4899 _ 85. C0
        jnz     ?_254                                   ; 489B _ 75, 54
        mov     edx, dword [ebp-0CH]                    ; 489D _ 8B. 55, F4
        mov     eax, edx                                ; 48A0 _ 89. D0
        shl     eax, 3                                  ; 48A2 _ C1. E0, 03
        add     eax, edx                                ; 48A5 _ 01. D0
        shl     eax, 2                                  ; 48A7 _ C1. E0, 02
        lea     edx, [eax+410H]                         ; 48AA _ 8D. 90, 00000410
        mov     eax, dword [ebp+8H]                     ; 48B0 _ 8B. 45, 08
        add     eax, edx                                ; 48B3 _ 01. D0
        add     eax, 4                                  ; 48B5 _ 83. C0, 04
        mov     dword [ebp-10H], eax                    ; 48B8 _ 89. 45, F0
        mov     eax, dword [ebp+8H]                     ; 48BB _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 48BE _ 8B. 55, F4
        add     edx, 4                                  ; 48C1 _ 83. C2, 04
        mov     ecx, dword [ebp-10H]                    ; 48C4 _ 8B. 4D, F0
        mov     dword [eax+edx*4+4H], ecx               ; 48C7 _ 89. 4C 90, 04
        mov     eax, dword [ebp-10H]                    ; 48CB _ 8B. 45, F0
        mov     dword [eax+1CH], 1                      ; 48CE _ C7. 40, 1C, 00000001
        mov     eax, dword [ebp-10H]                    ; 48D5 _ 8B. 45, F0
        mov     dword [eax+18H], -1                     ; 48D8 _ C7. 40, 18, FFFFFFFF
        call    _task_now                               ; 48DF _ E8, 00000000(rel)
        mov     edx, eax                                ; 48E4 _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 48E6 _ 8B. 45, F0
        mov     dword [eax+20H], edx                    ; 48E9 _ 89. 50, 20
        mov     eax, dword [ebp-10H]                    ; 48EC _ 8B. 45, F0
        jmp     ?_256                                   ; 48EF _ EB, 12

?_254:  add     dword [ebp-0CH], 1                      ; 48F1 _ 83. 45, F4, 01
?_255:  cmp     dword [ebp-0CH], 255                    ; 48F5 _ 81. 7D, F4, 000000FF
        jle     ?_253                                   ; 48FC _ 7E, 82
        mov     eax, 0                                  ; 48FE _ B8, 00000000
?_256:  leave                                           ; 4903 _ C9
        ret                                             ; 4904 _ C3
; _sheet_alloc End of function

_sheet_setbuf:; Function begin
        push    ebp                                     ; 4905 _ 55
        mov     ebp, esp                                ; 4906 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 4908 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 490B _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 490E _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 4910 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 4913 _ 8B. 55, 10
        mov     dword [eax+4H], edx                     ; 4916 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 4919 _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 491C _ 8B. 55, 14
        mov     dword [eax+8H], edx                     ; 491F _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 4922 _ 8B. 45, 08
        mov     edx, dword [ebp+18H]                    ; 4925 _ 8B. 55, 18
        mov     dword [eax+14H], edx                    ; 4928 _ 89. 50, 14
        nop                                             ; 492B _ 90
        pop     ebp                                     ; 492C _ 5D
        ret                                             ; 492D _ C3
; _sheet_setbuf End of function

_sheet_updown:; Function begin
        push    ebp                                     ; 492E _ 55
        mov     ebp, esp                                ; 492F _ 89. E5
        push    edi                                     ; 4931 _ 57
        push    esi                                     ; 4932 _ 56
        push    ebx                                     ; 4933 _ 53
        sub     esp, 60                                 ; 4934 _ 83. EC, 3C
        mov     eax, dword [ebp+0CH]                    ; 4937 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 493A _ 8B. 40, 18
        mov     dword [ebp-20H], eax                    ; 493D _ 89. 45, E0
        mov     eax, dword [ebp+8H]                     ; 4940 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 4943 _ 8B. 40, 10
        add     eax, 1                                  ; 4946 _ 83. C0, 01
        cmp     dword [ebp+10H], eax                    ; 4949 _ 39. 45, 10
        jle     ?_257                                   ; 494C _ 7E, 0C
        mov     eax, dword [ebp+8H]                     ; 494E _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 4951 _ 8B. 40, 10
        add     eax, 1                                  ; 4954 _ 83. C0, 01
        mov     dword [ebp+10H], eax                    ; 4957 _ 89. 45, 10
?_257:  cmp     dword [ebp+10H], -1                     ; 495A _ 83. 7D, 10, FF
        jge     ?_258                                   ; 495E _ 7D, 07
        mov     dword [ebp+10H], -1                     ; 4960 _ C7. 45, 10, FFFFFFFF
?_258:  mov     eax, dword [ebp+0CH]                    ; 4967 _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 496A _ 8B. 55, 10
        mov     dword [eax+18H], edx                    ; 496D _ 89. 50, 18
        mov     eax, dword [ebp-20H]                    ; 4970 _ 8B. 45, E0
        cmp     eax, dword [ebp+10H]                    ; 4973 _ 3B. 45, 10
        jle     ?_265                                   ; 4976 _ 0F 8E, 00000212
        cmp     dword [ebp+10H], 0                      ; 497C _ 83. 7D, 10, 00
        js      ?_261                                   ; 4980 _ 0F 88, 000000FE
        mov     eax, dword [ebp-20H]                    ; 4986 _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 4989 _ 89. 45, E4
        jmp     ?_260                                   ; 498C _ EB, 34

?_259:  mov     eax, dword [ebp-1CH]                    ; 498E _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 4991 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 4994 _ 8B. 45, 08
        add     edx, 4                                  ; 4997 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 499A _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 499E _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 49A1 _ 8B. 55, E4
        add     edx, 4                                  ; 49A4 _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 49A7 _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 49AB _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 49AE _ 8B. 55, E4
        add     edx, 4                                  ; 49B1 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 49B4 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 49B8 _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 49BB _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 49BE _ 83. 6D, E4, 01
?_260:  mov     eax, dword [ebp-1CH]                    ; 49C2 _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 49C5 _ 3B. 45, 10
        jg      ?_259                                   ; 49C8 _ 7F, C4
        mov     eax, dword [ebp+8H]                     ; 49CA _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 49CD _ 8B. 55, 10
        add     edx, 4                                  ; 49D0 _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 49D3 _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 49D6 _ 89. 4C 90, 04
        mov     eax, dword [ebp+10H]                    ; 49DA _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 49DD _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 49E0 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 49E3 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 49E6 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 49E9 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 49EC _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 49EF _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 49F2 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 49F5 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 49F8 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 49FB _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 49FE _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 4A01 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 4A04 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 4A07 _ 8B. 40, 0C
        mov     dword [esp+14H], esi                    ; 4A0A _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 4A0E _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 4A12 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 4A16 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 4A1A _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4A1E _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4A21 _ 89. 04 24
        call    _sheet_refreshmap                       ; 4A24 _ E8, 00000643
        mov     eax, dword [ebp+10H]                    ; 4A29 _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 4A2C _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 4A2F _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 4A32 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 4A35 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 4A38 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 4A3B _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 4A3E _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 4A41 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 4A44 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 4A47 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 4A4A _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 4A4D _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 4A50 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 4A53 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 4A56 _ 8B. 40, 0C
        mov     edi, dword [ebp-20H]                    ; 4A59 _ 8B. 7D, E0
        mov     dword [esp+18H], edi                    ; 4A5C _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 4A60 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 4A64 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 4A68 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 4A6C _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 4A70 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4A74 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4A77 _ 89. 04 24
        call    _sheet_refreshsub                       ; 4A7A _ E8, 00000465
        jmp     ?_272                                   ; 4A7F _ E9, 0000027D

?_261:  mov     eax, dword [ebp+8H]                     ; 4A84 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 4A87 _ 8B. 40, 10
        cmp     dword [ebp-20H], eax                    ; 4A8A _ 39. 45, E0
        jge     ?_264                                   ; 4A8D _ 7D, 47
        mov     eax, dword [ebp-20H]                    ; 4A8F _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 4A92 _ 89. 45, E4
        jmp     ?_263                                   ; 4A95 _ EB, 34

?_262:  mov     eax, dword [ebp-1CH]                    ; 4A97 _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 4A9A _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 4A9D _ 8B. 45, 08
        add     edx, 4                                  ; 4AA0 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 4AA3 _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 4AA7 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 4AAA _ 8B. 55, E4
        add     edx, 4                                  ; 4AAD _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 4AB0 _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 4AB4 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 4AB7 _ 8B. 55, E4
        add     edx, 4                                  ; 4ABA _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 4ABD _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 4AC1 _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 4AC4 _ 89. 50, 18
        add     dword [ebp-1CH], 1                      ; 4AC7 _ 83. 45, E4, 01
?_263:  mov     eax, dword [ebp+8H]                     ; 4ACB _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 4ACE _ 8B. 40, 10
        cmp     dword [ebp-1CH], eax                    ; 4AD1 _ 39. 45, E4
        jl      ?_262                                   ; 4AD4 _ 7C, C1
?_264:  mov     eax, dword [ebp+8H]                     ; 4AD6 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 4AD9 _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 4ADC _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 4ADF _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 4AE2 _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 4AE5 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 4AE8 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 4AEB _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 4AEE _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 4AF1 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 4AF4 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 4AF7 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 4AFA _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 4AFD _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 4B00 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 4B03 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 4B06 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 4B09 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 4B0C _ 8B. 40, 0C
        mov     dword [esp+14H], 0                      ; 4B0F _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], ebx                    ; 4B17 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 4B1B _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 4B1F _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 4B23 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4B27 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4B2A _ 89. 04 24
        call    _sheet_refreshmap                       ; 4B2D _ E8, 0000053A
        mov     eax, dword [ebp-20H]                    ; 4B32 _ 8B. 45, E0
        lea     esi, [eax-1H]                           ; 4B35 _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 4B38 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 4B3B _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 4B3E _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 4B41 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 4B44 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 4B47 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 4B4A _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 4B4D _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 4B50 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 4B53 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 4B56 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 4B59 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 4B5C _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 4B5F _ 8B. 40, 0C
        mov     dword [esp+18H], esi                    ; 4B62 _ 89. 74 24, 18
        mov     dword [esp+14H], 0                      ; 4B66 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], ebx                    ; 4B6E _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 4B72 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 4B76 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 4B7A _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4B7E _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4B81 _ 89. 04 24
        call    _sheet_refreshsub                       ; 4B84 _ E8, 0000035B
        jmp     ?_272                                   ; 4B89 _ E9, 00000173

?_265:  mov     eax, dword [ebp-20H]                    ; 4B8E _ 8B. 45, E0
        cmp     eax, dword [ebp+10H]                    ; 4B91 _ 3B. 45, 10
        jge     ?_272                                   ; 4B94 _ 0F 8D, 00000167
        cmp     dword [ebp-20H], 0                      ; 4B9A _ 83. 7D, E0, 00
        js      ?_268                                   ; 4B9E _ 78, 56
        mov     eax, dword [ebp-20H]                    ; 4BA0 _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 4BA3 _ 89. 45, E4
        jmp     ?_267                                   ; 4BA6 _ EB, 34

?_266:  mov     eax, dword [ebp-1CH]                    ; 4BA8 _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 4BAB _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 4BAE _ 8B. 45, 08
        add     edx, 4                                  ; 4BB1 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 4BB4 _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 4BB8 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 4BBB _ 8B. 55, E4
        add     edx, 4                                  ; 4BBE _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 4BC1 _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 4BC5 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 4BC8 _ 8B. 55, E4
        add     edx, 4                                  ; 4BCB _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 4BCE _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 4BD2 _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 4BD5 _ 89. 50, 18
        add     dword [ebp-1CH], 1                      ; 4BD8 _ 83. 45, E4, 01
?_267:  mov     eax, dword [ebp-1CH]                    ; 4BDC _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 4BDF _ 3B. 45, 10
        jl      ?_266                                   ; 4BE2 _ 7C, C4
        mov     eax, dword [ebp+8H]                     ; 4BE4 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 4BE7 _ 8B. 55, 10
        add     edx, 4                                  ; 4BEA _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 4BED _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 4BF0 _ 89. 4C 90, 04
        jmp     ?_271                                   ; 4BF4 _ EB, 6C

?_268:  mov     eax, dword [ebp+8H]                     ; 4BF6 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 4BF9 _ 8B. 40, 10
        mov     dword [ebp-1CH], eax                    ; 4BFC _ 89. 45, E4
        jmp     ?_270                                   ; 4BFF _ EB, 3A

?_269:  mov     eax, dword [ebp-1CH]                    ; 4C01 _ 8B. 45, E4
        lea     ebx, [eax+1H]                           ; 4C04 _ 8D. 58, 01
        mov     eax, dword [ebp+8H]                     ; 4C07 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 4C0A _ 8B. 55, E4
        add     edx, 4                                  ; 4C0D _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 4C10 _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 4C14 _ 8B. 45, 08
        lea     edx, [ebx+4H]                           ; 4C17 _ 8D. 53, 04
        mov     dword [eax+edx*4+4H], ecx               ; 4C1A _ 89. 4C 90, 04
        mov     eax, dword [ebp-1CH]                    ; 4C1E _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 4C21 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 4C24 _ 8B. 45, 08
        add     edx, 4                                  ; 4C27 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 4C2A _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 4C2E _ 8B. 55, E4
        add     edx, 1                                  ; 4C31 _ 83. C2, 01
        mov     dword [eax+18H], edx                    ; 4C34 _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 4C37 _ 83. 6D, E4, 01
?_270:  mov     eax, dword [ebp-1CH]                    ; 4C3B _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 4C3E _ 3B. 45, 10
        jge     ?_269                                   ; 4C41 _ 7D, BE
        mov     eax, dword [ebp+8H]                     ; 4C43 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 4C46 _ 8B. 55, 10
        add     edx, 4                                  ; 4C49 _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 4C4C _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 4C4F _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 4C53 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 4C56 _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 4C59 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 4C5C _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 4C5F _ 89. 50, 10
?_271:  mov     eax, dword [ebp+0CH]                    ; 4C62 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 4C65 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 4C68 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 4C6B _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 4C6E _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 4C71 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 4C74 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 4C77 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 4C7A _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 4C7D _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 4C80 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 4C83 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 4C86 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 4C89 _ 8B. 40, 0C
        mov     esi, dword [ebp+10H]                    ; 4C8C _ 8B. 75, 10
        mov     dword [esp+14H], esi                    ; 4C8F _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 4C93 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 4C97 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 4C9B _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 4C9F _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4CA3 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4CA6 _ 89. 04 24
        call    _sheet_refreshmap                       ; 4CA9 _ E8, 000003BE
        mov     eax, dword [ebp+0CH]                    ; 4CAE _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 4CB1 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 4CB4 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 4CB7 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 4CBA _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 4CBD _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 4CC0 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 4CC3 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 4CC6 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 4CC9 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 4CCC _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 4CCF _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 4CD2 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 4CD5 _ 8B. 40, 0C
        mov     esi, dword [ebp+10H]                    ; 4CD8 _ 8B. 75, 10
        mov     dword [esp+18H], esi                    ; 4CDB _ 89. 74 24, 18
        mov     esi, dword [ebp+10H]                    ; 4CDF _ 8B. 75, 10
        mov     dword [esp+14H], esi                    ; 4CE2 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 4CE6 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 4CEA _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 4CEE _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 4CF2 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4CF6 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4CF9 _ 89. 04 24
        call    _sheet_refreshsub                       ; 4CFC _ E8, 000001E3
?_272:  nop                                             ; 4D01 _ 90
        add     esp, 60                                 ; 4D02 _ 83. C4, 3C
        pop     ebx                                     ; 4D05 _ 5B
        pop     esi                                     ; 4D06 _ 5E
        pop     edi                                     ; 4D07 _ 5F
        pop     ebp                                     ; 4D08 _ 5D
        ret                                             ; 4D09 _ C3
; _sheet_updown End of function

_sheet_refresh:; Function begin
        push    ebp                                     ; 4D0A _ 55
        mov     ebp, esp                                ; 4D0B _ 89. E5
        push    edi                                     ; 4D0D _ 57
        push    esi                                     ; 4D0E _ 56
        push    ebx                                     ; 4D0F _ 53
        sub     esp, 60                                 ; 4D10 _ 83. EC, 3C
        mov     eax, dword [ebp+0CH]                    ; 4D13 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 4D16 _ 8B. 40, 18
        test    eax, eax                                ; 4D19 _ 85. C0
        js      ?_273                                   ; 4D1B _ 78, 61
        mov     eax, dword [ebp+0CH]                    ; 4D1D _ 8B. 45, 0C
        mov     edi, dword [eax+18H]                    ; 4D20 _ 8B. 78, 18
        mov     eax, dword [ebp+0CH]                    ; 4D23 _ 8B. 45, 0C
        mov     esi, dword [eax+18H]                    ; 4D26 _ 8B. 70, 18
        mov     eax, dword [ebp+0CH]                    ; 4D29 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 4D2C _ 8B. 50, 10
        mov     eax, dword [ebp+1CH]                    ; 4D2F _ 8B. 45, 1C
        lea     ebx, [edx+eax]                          ; 4D32 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 4D35 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 4D38 _ 8B. 50, 0C
        mov     eax, dword [ebp+18H]                    ; 4D3B _ 8B. 45, 18
        lea     ecx, [edx+eax]                          ; 4D3E _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 4D41 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 4D44 _ 8B. 50, 10
        mov     eax, dword [ebp+14H]                    ; 4D47 _ 8B. 45, 14
        add     edx, eax                                ; 4D4A _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 4D4C _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 4D4F _ 8B. 40, 0C
        mov     dword [ebp-1CH], eax                    ; 4D52 _ 89. 45, E4
        mov     eax, dword [ebp+10H]                    ; 4D55 _ 8B. 45, 10
        add     eax, dword [ebp-1CH]                    ; 4D58 _ 03. 45, E4
        mov     dword [esp+18H], edi                    ; 4D5B _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 4D5F _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 4D63 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 4D67 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 4D6B _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 4D6F _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4D73 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4D76 _ 89. 04 24
        call    _sheet_refreshsub                       ; 4D79 _ E8, 00000166
?_273:  mov     eax, 0                                  ; 4D7E _ B8, 00000000
        add     esp, 60                                 ; 4D83 _ 83. C4, 3C
        pop     ebx                                     ; 4D86 _ 5B
        pop     esi                                     ; 4D87 _ 5E
        pop     edi                                     ; 4D88 _ 5F
        pop     ebp                                     ; 4D89 _ 5D
        ret                                             ; 4D8A _ C3
; _sheet_refresh End of function

_sheet_slide:; Function begin
        push    ebp                                     ; 4D8B _ 55
        mov     ebp, esp                                ; 4D8C _ 89. E5
        push    esi                                     ; 4D8E _ 56
        push    ebx                                     ; 4D8F _ 53
        sub     esp, 48                                 ; 4D90 _ 83. EC, 30
        mov     eax, dword [ebp+0CH]                    ; 4D93 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 4D96 _ 8B. 40, 0C
        mov     dword [ebp-0CH], eax                    ; 4D99 _ 89. 45, F4
        mov     eax, dword [ebp+0CH]                    ; 4D9C _ 8B. 45, 0C
        mov     eax, dword [eax+10H]                    ; 4D9F _ 8B. 40, 10
        mov     dword [ebp-10H], eax                    ; 4DA2 _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 4DA5 _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 4DA8 _ 8B. 55, 10
        mov     dword [eax+0CH], edx                    ; 4DAB _ 89. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 4DAE _ 8B. 45, 0C
        mov     edx, dword [ebp+14H]                    ; 4DB1 _ 8B. 55, 14
        mov     dword [eax+10H], edx                    ; 4DB4 _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 4DB7 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 4DBA _ 8B. 40, 18
        test    eax, eax                                ; 4DBD _ 85. C0
        js      ?_274                                   ; 4DBF _ 0F 88, 00000117
        mov     eax, dword [ebp+0CH]                    ; 4DC5 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 4DC8 _ 8B. 50, 08
        mov     eax, dword [ebp-10H]                    ; 4DCB _ 8B. 45, F0
        add     edx, eax                                ; 4DCE _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 4DD0 _ 8B. 45, 0C
        mov     ecx, dword [eax+4H]                     ; 4DD3 _ 8B. 48, 04
        mov     eax, dword [ebp-0CH]                    ; 4DD6 _ 8B. 45, F4
        add     eax, ecx                                ; 4DD9 _ 01. C8
        mov     dword [esp+14H], 0                      ; 4DDB _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], edx                    ; 4DE3 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 4DE7 _ 89. 44 24, 0C
        mov     eax, dword [ebp-10H]                    ; 4DEB _ 8B. 45, F0
        mov     dword [esp+8H], eax                     ; 4DEE _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 4DF2 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 4DF5 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4DF9 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4DFC _ 89. 04 24
        call    _sheet_refreshmap                       ; 4DFF _ E8, 00000268
        mov     eax, dword [ebp+0CH]                    ; 4E04 _ 8B. 45, 0C
        mov     ecx, dword [eax+18H]                    ; 4E07 _ 8B. 48, 18
        mov     eax, dword [ebp+0CH]                    ; 4E0A _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 4E0D _ 8B. 50, 08
        mov     eax, dword [ebp+14H]                    ; 4E10 _ 8B. 45, 14
        add     edx, eax                                ; 4E13 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 4E15 _ 8B. 45, 0C
        mov     ebx, dword [eax+4H]                     ; 4E18 _ 8B. 58, 04
        mov     eax, dword [ebp+10H]                    ; 4E1B _ 8B. 45, 10
        add     eax, ebx                                ; 4E1E _ 01. D8
        mov     dword [esp+14H], ecx                    ; 4E20 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 4E24 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 4E28 _ 89. 44 24, 0C
        mov     eax, dword [ebp+14H]                    ; 4E2C _ 8B. 45, 14
        mov     dword [esp+8H], eax                     ; 4E2F _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 4E33 _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 4E36 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4E3A _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4E3D _ 89. 04 24
        call    _sheet_refreshmap                       ; 4E40 _ E8, 00000227
        mov     eax, dword [ebp+0CH]                    ; 4E45 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 4E48 _ 8B. 40, 18
        lea     ecx, [eax-1H]                           ; 4E4B _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 4E4E _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 4E51 _ 8B. 50, 08
        mov     eax, dword [ebp-10H]                    ; 4E54 _ 8B. 45, F0
        add     edx, eax                                ; 4E57 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 4E59 _ 8B. 45, 0C
        mov     ebx, dword [eax+4H]                     ; 4E5C _ 8B. 58, 04
        mov     eax, dword [ebp-0CH]                    ; 4E5F _ 8B. 45, F4
        add     eax, ebx                                ; 4E62 _ 01. D8
        mov     dword [esp+18H], ecx                    ; 4E64 _ 89. 4C 24, 18
        mov     dword [esp+14H], 0                      ; 4E68 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], edx                    ; 4E70 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 4E74 _ 89. 44 24, 0C
        mov     eax, dword [ebp-10H]                    ; 4E78 _ 8B. 45, F0
        mov     dword [esp+8H], eax                     ; 4E7B _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 4E7F _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 4E82 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4E86 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4E89 _ 89. 04 24
        call    _sheet_refreshsub                       ; 4E8C _ E8, 00000053
        mov     eax, dword [ebp+0CH]                    ; 4E91 _ 8B. 45, 0C
        mov     ebx, dword [eax+18H]                    ; 4E94 _ 8B. 58, 18
        mov     eax, dword [ebp+0CH]                    ; 4E97 _ 8B. 45, 0C
        mov     ecx, dword [eax+18H]                    ; 4E9A _ 8B. 48, 18
        mov     eax, dword [ebp+0CH]                    ; 4E9D _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 4EA0 _ 8B. 50, 08
        mov     eax, dword [ebp+14H]                    ; 4EA3 _ 8B. 45, 14
        add     edx, eax                                ; 4EA6 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 4EA8 _ 8B. 45, 0C
        mov     esi, dword [eax+4H]                     ; 4EAB _ 8B. 70, 04
        mov     eax, dword [ebp+10H]                    ; 4EAE _ 8B. 45, 10
        add     eax, esi                                ; 4EB1 _ 01. F0
        mov     dword [esp+18H], ebx                    ; 4EB3 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 4EB7 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 4EBB _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 4EBF _ 89. 44 24, 0C
        mov     eax, dword [ebp+14H]                    ; 4EC3 _ 8B. 45, 14
        mov     dword [esp+8H], eax                     ; 4EC6 _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 4ECA _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 4ECD _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4ED1 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4ED4 _ 89. 04 24
        call    _sheet_refreshsub                       ; 4ED7 _ E8, 00000008
?_274:  nop                                             ; 4EDC _ 90
        add     esp, 48                                 ; 4EDD _ 83. C4, 30
        pop     ebx                                     ; 4EE0 _ 5B
        pop     esi                                     ; 4EE1 _ 5E
        pop     ebp                                     ; 4EE2 _ 5D
        ret                                             ; 4EE3 _ C3
; _sheet_slide End of function

_sheet_refreshsub:; Function begin
        push    ebp                                     ; 4EE4 _ 55
        mov     ebp, esp                                ; 4EE5 _ 89. E5
        sub     esp, 48                                 ; 4EE7 _ 83. EC, 30
        mov     eax, dword [ebp+8H]                     ; 4EEA _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 4EED _ 8B. 00
        mov     dword [ebp-10H], eax                    ; 4EEF _ 89. 45, F0
        mov     eax, dword [ebp+8H]                     ; 4EF2 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 4EF5 _ 8B. 40, 04
        mov     dword [ebp-14H], eax                    ; 4EF8 _ 89. 45, EC
        cmp     dword [ebp+0CH], 0                      ; 4EFB _ 83. 7D, 0C, 00
        jns     ?_275                                   ; 4EFF _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 4F01 _ C7. 45, 0C, 00000000
?_275:  cmp     dword [ebp+10H], 8                      ; 4F08 _ 83. 7D, 10, 08
        jg      ?_276                                   ; 4F0C _ 7F, 07
        mov     dword [ebp+10H], 0                      ; 4F0E _ C7. 45, 10, 00000000
?_276:  mov     eax, dword [ebp+8H]                     ; 4F15 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 4F18 _ 8B. 40, 08
        cmp     dword [ebp+14H], eax                    ; 4F1B _ 39. 45, 14
        jle     ?_277                                   ; 4F1E _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 4F20 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 4F23 _ 8B. 40, 08
        mov     dword [ebp+14H], eax                    ; 4F26 _ 89. 45, 14
?_277:  mov     eax, dword [ebp+8H]                     ; 4F29 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 4F2C _ 8B. 40, 0C
        cmp     dword [ebp+18H], eax                    ; 4F2F _ 39. 45, 18
        jle     ?_278                                   ; 4F32 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 4F34 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 4F37 _ 8B. 40, 0C
        mov     dword [ebp+18H], eax                    ; 4F3A _ 89. 45, 18
?_278:  mov     eax, dword [ebp+1CH]                    ; 4F3D _ 8B. 45, 1C
        mov     dword [ebp-4H], eax                     ; 4F40 _ 89. 45, FC
        jmp     ?_285                                   ; 4F43 _ E9, 00000115

?_279:  mov     eax, dword [ebp+8H]                     ; 4F48 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 4F4B _ 8B. 55, FC
        add     edx, 4                                  ; 4F4E _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 4F51 _ 8B. 44 90, 04
        mov     dword [ebp-18H], eax                    ; 4F55 _ 89. 45, E8
        mov     eax, dword [ebp-18H]                    ; 4F58 _ 8B. 45, E8
        mov     eax, dword [eax]                        ; 4F5B _ 8B. 00
        mov     dword [ebp-1CH], eax                    ; 4F5D _ 89. 45, E4
        mov     eax, dword [ebp+8H]                     ; 4F60 _ 8B. 45, 08
        add     eax, 1044                               ; 4F63 _ 05, 00000414
        mov     edx, dword [ebp-18H]                    ; 4F68 _ 8B. 55, E8
        sub     edx, eax                                ; 4F6B _ 29. C2
        mov     eax, edx                                ; 4F6D _ 89. D0
        sar     eax, 2                                  ; 4F6F _ C1. F8, 02
        imul    eax, eax, 954437177                     ; 4F72 _ 69. C0, 38E38E39
        mov     byte [ebp-1DH], al                      ; 4F78 _ 88. 45, E3
        mov     dword [ebp-0CH], 0                      ; 4F7B _ C7. 45, F4, 00000000
        jmp     ?_284                                   ; 4F82 _ E9, 000000C3

?_280:  mov     eax, dword [ebp-18H]                    ; 4F87 _ 8B. 45, E8
        mov     edx, dword [eax+10H]                    ; 4F8A _ 8B. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 4F8D _ 8B. 45, F4
        add     eax, edx                                ; 4F90 _ 01. D0
        mov     dword [ebp-24H], eax                    ; 4F92 _ 89. 45, DC
        mov     dword [ebp-8H], 0                       ; 4F95 _ C7. 45, F8, 00000000
        jmp     ?_283                                   ; 4F9C _ E9, 00000096

?_281:  mov     eax, dword [ebp-18H]                    ; 4FA1 _ 8B. 45, E8
        mov     edx, dword [eax+0CH]                    ; 4FA4 _ 8B. 50, 0C
        mov     eax, dword [ebp-8H]                     ; 4FA7 _ 8B. 45, F8
        add     eax, edx                                ; 4FAA _ 01. D0
        mov     dword [ebp-28H], eax                    ; 4FAC _ 89. 45, D8
        mov     eax, dword [ebp+0CH]                    ; 4FAF _ 8B. 45, 0C
        cmp     eax, dword [ebp-28H]                    ; 4FB2 _ 3B. 45, D8
        jg      ?_282                                   ; 4FB5 _ 7F, 7C
        mov     eax, dword [ebp-28H]                    ; 4FB7 _ 8B. 45, D8
        cmp     eax, dword [ebp+14H]                    ; 4FBA _ 3B. 45, 14
        jge     ?_282                                   ; 4FBD _ 7D, 74
        mov     eax, dword [ebp+10H]                    ; 4FBF _ 8B. 45, 10
        cmp     eax, dword [ebp-24H]                    ; 4FC2 _ 3B. 45, DC
        jg      ?_282                                   ; 4FC5 _ 7F, 6C
        mov     eax, dword [ebp-24H]                    ; 4FC7 _ 8B. 45, DC
        cmp     eax, dword [ebp+18H]                    ; 4FCA _ 3B. 45, 18
        jge     ?_282                                   ; 4FCD _ 7D, 64
        mov     eax, dword [ebp-18H]                    ; 4FCF _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 4FD2 _ 8B. 40, 04
        imul    eax, dword [ebp-0CH]                    ; 4FD5 _ 0F AF. 45, F4
        mov     edx, dword [ebp-8H]                     ; 4FD9 _ 8B. 55, F8
        add     eax, edx                                ; 4FDC _ 01. D0
        mov     edx, eax                                ; 4FDE _ 89. C2
        mov     eax, dword [ebp-1CH]                    ; 4FE0 _ 8B. 45, E4
        add     eax, edx                                ; 4FE3 _ 01. D0
        movzx   eax, byte [eax]                         ; 4FE5 _ 0F B6. 00
        mov     byte [ebp-29H], al                      ; 4FE8 _ 88. 45, D7
        mov     eax, dword [ebp+8H]                     ; 4FEB _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 4FEE _ 8B. 40, 08
        imul    eax, dword [ebp-24H]                    ; 4FF1 _ 0F AF. 45, DC
        mov     edx, dword [ebp-28H]                    ; 4FF5 _ 8B. 55, D8
        add     eax, edx                                ; 4FF8 _ 01. D0
        mov     edx, eax                                ; 4FFA _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 4FFC _ 8B. 45, EC
        add     eax, edx                                ; 4FFF _ 01. D0
        movzx   eax, byte [eax]                         ; 5001 _ 0F B6. 00
        cmp     byte [ebp-1DH], al                      ; 5004 _ 38. 45, E3
        jnz     ?_282                                   ; 5007 _ 75, 2A
        movzx   eax, byte [ebp-29H]                     ; 5009 _ 0F B6. 45, D7
        mov     edx, dword [ebp-18H]                    ; 500D _ 8B. 55, E8
        mov     edx, dword [edx+14H]                    ; 5010 _ 8B. 52, 14
        cmp     eax, edx                                ; 5013 _ 39. D0
        jz      ?_282                                   ; 5015 _ 74, 1C
        mov     eax, dword [ebp+8H]                     ; 5017 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 501A _ 8B. 40, 08
        imul    eax, dword [ebp-24H]                    ; 501D _ 0F AF. 45, DC
        mov     edx, dword [ebp-28H]                    ; 5021 _ 8B. 55, D8
        add     eax, edx                                ; 5024 _ 01. D0
        mov     edx, eax                                ; 5026 _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 5028 _ 8B. 45, F0
        add     edx, eax                                ; 502B _ 01. C2
        movzx   eax, byte [ebp-29H]                     ; 502D _ 0F B6. 45, D7
        mov     byte [edx], al                          ; 5031 _ 88. 02
?_282:  add     dword [ebp-8H], 1                       ; 5033 _ 83. 45, F8, 01
?_283:  mov     eax, dword [ebp-18H]                    ; 5037 _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 503A _ 8B. 40, 04
        cmp     dword [ebp-8H], eax                     ; 503D _ 39. 45, F8
        jl      ?_281                                   ; 5040 _ 0F 8C, FFFFFF5B
        add     dword [ebp-0CH], 1                      ; 5046 _ 83. 45, F4, 01
?_284:  mov     eax, dword [ebp-18H]                    ; 504A _ 8B. 45, E8
        mov     eax, dword [eax+8H]                     ; 504D _ 8B. 40, 08
        cmp     dword [ebp-0CH], eax                    ; 5050 _ 39. 45, F4
        jl      ?_280                                   ; 5053 _ 0F 8C, FFFFFF2E
        add     dword [ebp-4H], 1                       ; 5059 _ 83. 45, FC, 01
?_285:  mov     eax, dword [ebp-4H]                     ; 505D _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 5060 _ 3B. 45, 20
        jle     ?_279                                   ; 5063 _ 0F 8E, FFFFFEDF
        nop                                             ; 5069 _ 90
        leave                                           ; 506A _ C9
        ret                                             ; 506B _ C3
; _sheet_refreshsub End of function

_sheet_refreshmap:; Function begin
        push    ebp                                     ; 506C _ 55
        mov     ebp, esp                                ; 506D _ 89. E5
        sub     esp, 64                                 ; 506F _ 83. EC, 40
        mov     eax, dword [ebp+8H]                     ; 5072 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 5075 _ 8B. 40, 04
        mov     dword [ebp-20H], eax                    ; 5078 _ 89. 45, E0
        cmp     dword [ebp+0CH], 0                      ; 507B _ 83. 7D, 0C, 00
        jns     ?_286                                   ; 507F _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 5081 _ C7. 45, 0C, 00000000
?_286:  cmp     dword [ebp+10H], 0                      ; 5088 _ 83. 7D, 10, 00
        jns     ?_287                                   ; 508C _ 79, 07
        mov     dword [ebp+10H], 0                      ; 508E _ C7. 45, 10, 00000000
?_287:  mov     eax, dword [ebp+8H]                     ; 5095 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 5098 _ 8B. 40, 08
        cmp     dword [ebp+14H], eax                    ; 509B _ 39. 45, 14
        jle     ?_288                                   ; 509E _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 50A0 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 50A3 _ 8B. 40, 08
        mov     dword [ebp+14H], eax                    ; 50A6 _ 89. 45, 14
?_288:  mov     eax, dword [ebp+8H]                     ; 50A9 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 50AC _ 8B. 40, 0C
        cmp     dword [ebp+18H], eax                    ; 50AF _ 39. 45, 18
        jle     ?_289                                   ; 50B2 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 50B4 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 50B7 _ 8B. 40, 0C
        mov     dword [ebp+18H], eax                    ; 50BA _ 89. 45, 18
?_289:  mov     eax, dword [ebp+1CH]                    ; 50BD _ 8B. 45, 1C
        mov     dword [ebp-4H], eax                     ; 50C0 _ 89. 45, FC
        jmp     ?_300                                   ; 50C3 _ E9, 0000013F

?_290:  mov     eax, dword [ebp+8H]                     ; 50C8 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 50CB _ 8B. 55, FC
        add     edx, 4                                  ; 50CE _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 50D1 _ 8B. 44 90, 04
        mov     dword [ebp-24H], eax                    ; 50D5 _ 89. 45, DC
        mov     eax, dword [ebp+8H]                     ; 50D8 _ 8B. 45, 08
        add     eax, 1044                               ; 50DB _ 05, 00000414
        mov     edx, dword [ebp-24H]                    ; 50E0 _ 8B. 55, DC
        sub     edx, eax                                ; 50E3 _ 29. C2
        mov     eax, edx                                ; 50E5 _ 89. D0
        sar     eax, 2                                  ; 50E7 _ C1. F8, 02
        imul    eax, eax, 954437177                     ; 50EA _ 69. C0, 38E38E39
        mov     byte [ebp-25H], al                      ; 50F0 _ 88. 45, DB
        mov     eax, dword [ebp-24H]                    ; 50F3 _ 8B. 45, DC
        mov     eax, dword [eax]                        ; 50F6 _ 8B. 00
        mov     dword [ebp-2CH], eax                    ; 50F8 _ 89. 45, D4
        mov     eax, dword [ebp-24H]                    ; 50FB _ 8B. 45, DC
        mov     eax, dword [eax+0CH]                    ; 50FE _ 8B. 40, 0C
        mov     edx, dword [ebp+0CH]                    ; 5101 _ 8B. 55, 0C
        sub     edx, eax                                ; 5104 _ 29. C2
        mov     eax, edx                                ; 5106 _ 89. D0
        mov     dword [ebp-10H], eax                    ; 5108 _ 89. 45, F0
        mov     eax, dword [ebp-24H]                    ; 510B _ 8B. 45, DC
        mov     eax, dword [eax+10H]                    ; 510E _ 8B. 40, 10
        mov     edx, dword [ebp+10H]                    ; 5111 _ 8B. 55, 10
        sub     edx, eax                                ; 5114 _ 29. C2
        mov     eax, edx                                ; 5116 _ 89. D0
        mov     dword [ebp-14H], eax                    ; 5118 _ 89. 45, EC
        mov     eax, dword [ebp-24H]                    ; 511B _ 8B. 45, DC
        mov     eax, dword [eax+0CH]                    ; 511E _ 8B. 40, 0C
        mov     edx, dword [ebp+14H]                    ; 5121 _ 8B. 55, 14
        sub     edx, eax                                ; 5124 _ 29. C2
        mov     eax, edx                                ; 5126 _ 89. D0
        mov     dword [ebp-18H], eax                    ; 5128 _ 89. 45, E8
        mov     eax, dword [ebp-24H]                    ; 512B _ 8B. 45, DC
        mov     eax, dword [eax+10H]                    ; 512E _ 8B. 40, 10
        mov     edx, dword [ebp+18H]                    ; 5131 _ 8B. 55, 18
        sub     edx, eax                                ; 5134 _ 29. C2
        mov     eax, edx                                ; 5136 _ 89. D0
        mov     dword [ebp-1CH], eax                    ; 5138 _ 89. 45, E4
        cmp     dword [ebp-10H], 0                      ; 513B _ 83. 7D, F0, 00
        jns     ?_291                                   ; 513F _ 79, 07
        mov     dword [ebp-10H], 0                      ; 5141 _ C7. 45, F0, 00000000
?_291:  cmp     dword [ebp-14H], 0                      ; 5148 _ 83. 7D, EC, 00
        jns     ?_292                                   ; 514C _ 79, 07
        mov     dword [ebp-14H], 0                      ; 514E _ C7. 45, EC, 00000000
?_292:  mov     eax, dword [ebp-24H]                    ; 5155 _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 5158 _ 8B. 40, 04
        cmp     dword [ebp-18H], eax                    ; 515B _ 39. 45, E8
        jle     ?_293                                   ; 515E _ 7E, 09
        mov     eax, dword [ebp-24H]                    ; 5160 _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 5163 _ 8B. 40, 04
        mov     dword [ebp-18H], eax                    ; 5166 _ 89. 45, E8
?_293:  mov     eax, dword [ebp-24H]                    ; 5169 _ 8B. 45, DC
        mov     eax, dword [eax+8H]                     ; 516C _ 8B. 40, 08
        cmp     dword [ebp-1CH], eax                    ; 516F _ 39. 45, E4
        jle     ?_294                                   ; 5172 _ 7E, 09
        mov     eax, dword [ebp-24H]                    ; 5174 _ 8B. 45, DC
        mov     eax, dword [eax+8H]                     ; 5177 _ 8B. 40, 08
        mov     dword [ebp-1CH], eax                    ; 517A _ 89. 45, E4
?_294:  mov     eax, dword [ebp-14H]                    ; 517D _ 8B. 45, EC
        mov     dword [ebp-0CH], eax                    ; 5180 _ 89. 45, F4
        jmp     ?_299                                   ; 5183 _ EB, 76

?_295:  mov     eax, dword [ebp-24H]                    ; 5185 _ 8B. 45, DC
        mov     edx, dword [eax+10H]                    ; 5188 _ 8B. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 518B _ 8B. 45, F4
        add     eax, edx                                ; 518E _ 01. D0
        mov     dword [ebp-30H], eax                    ; 5190 _ 89. 45, D0
        mov     eax, dword [ebp-10H]                    ; 5193 _ 8B. 45, F0
        mov     dword [ebp-8H], eax                     ; 5196 _ 89. 45, F8
        jmp     ?_298                                   ; 5199 _ EB, 54

?_296:  mov     eax, dword [ebp-24H]                    ; 519B _ 8B. 45, DC
        mov     edx, dword [eax+0CH]                    ; 519E _ 8B. 50, 0C
        mov     eax, dword [ebp-8H]                     ; 51A1 _ 8B. 45, F8
        add     eax, edx                                ; 51A4 _ 01. D0
        mov     dword [ebp-34H], eax                    ; 51A6 _ 89. 45, CC
        mov     eax, dword [ebp-24H]                    ; 51A9 _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 51AC _ 8B. 40, 04
        imul    eax, dword [ebp-0CH]                    ; 51AF _ 0F AF. 45, F4
        mov     edx, dword [ebp-8H]                     ; 51B3 _ 8B. 55, F8
        add     eax, edx                                ; 51B6 _ 01. D0
        mov     edx, eax                                ; 51B8 _ 89. C2
        mov     eax, dword [ebp-2CH]                    ; 51BA _ 8B. 45, D4
        add     eax, edx                                ; 51BD _ 01. D0
        movzx   eax, byte [eax]                         ; 51BF _ 0F B6. 00
        movzx   eax, al                                 ; 51C2 _ 0F B6. C0
        mov     edx, dword [ebp-24H]                    ; 51C5 _ 8B. 55, DC
        mov     edx, dword [edx+14H]                    ; 51C8 _ 8B. 52, 14
        cmp     eax, edx                                ; 51CB _ 39. D0
        jz      ?_297                                   ; 51CD _ 74, 1C
        mov     eax, dword [ebp+8H]                     ; 51CF _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 51D2 _ 8B. 40, 08
        imul    eax, dword [ebp-30H]                    ; 51D5 _ 0F AF. 45, D0
        mov     edx, dword [ebp-34H]                    ; 51D9 _ 8B. 55, CC
        add     eax, edx                                ; 51DC _ 01. D0
        mov     edx, eax                                ; 51DE _ 89. C2
        mov     eax, dword [ebp-20H]                    ; 51E0 _ 8B. 45, E0
        add     edx, eax                                ; 51E3 _ 01. C2
        movzx   eax, byte [ebp-25H]                     ; 51E5 _ 0F B6. 45, DB
        mov     byte [edx], al                          ; 51E9 _ 88. 02
?_297:  add     dword [ebp-8H], 1                       ; 51EB _ 83. 45, F8, 01
?_298:  mov     eax, dword [ebp-8H]                     ; 51EF _ 8B. 45, F8
        cmp     eax, dword [ebp-18H]                    ; 51F2 _ 3B. 45, E8
        jl      ?_296                                   ; 51F5 _ 7C, A4
        add     dword [ebp-0CH], 1                      ; 51F7 _ 83. 45, F4, 01
?_299:  mov     eax, dword [ebp-0CH]                    ; 51FB _ 8B. 45, F4
        cmp     eax, dword [ebp-1CH]                    ; 51FE _ 3B. 45, E4
        jl      ?_295                                   ; 5201 _ 7C, 82
        add     dword [ebp-4H], 1                       ; 5203 _ 83. 45, FC, 01
?_300:  mov     eax, dword [ebp+8H]                     ; 5207 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 520A _ 8B. 40, 10
        cmp     dword [ebp-4H], eax                     ; 520D _ 39. 45, FC
        jle     ?_290                                   ; 5210 _ 0F 8E, FFFFFEB2
        nop                                             ; 5216 _ 90
        leave                                           ; 5217 _ C9
        ret                                             ; 5218 _ C3
; _sheet_refreshmap End of function

_sheet_free:; Function begin
        push    ebp                                     ; 5219 _ 55
        mov     ebp, esp                                ; 521A _ 89. E5
        sub     esp, 24                                 ; 521C _ 83. EC, 18
        mov     eax, dword [ebp+0CH]                    ; 521F _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 5222 _ 8B. 40, 18
        test    eax, eax                                ; 5225 _ 85. C0
        js      ?_301                                   ; 5227 _ 78, 1A
        mov     dword [esp+8H], -1                      ; 5229 _ C7. 44 24, 08, FFFFFFFF
        mov     eax, dword [ebp+0CH]                    ; 5231 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 5234 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 5238 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 523B _ 89. 04 24
        call    _sheet_updown                           ; 523E _ E8, FFFFF6EB
?_301:  mov     eax, dword [ebp+0CH]                    ; 5243 _ 8B. 45, 0C
        mov     dword [eax+1CH], 0                      ; 5246 _ C7. 40, 1C, 00000000
        nop                                             ; 524D _ 90
        leave                                           ; 524E _ C9
        ret                                             ; 524F _ C3
; _sheet_free End of function


_memman_init:
        push    ebp                                     ; 5250 _ 55
        mov     ebp, esp                                ; 5251 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 5253 _ 8B. 45, 08
        mov     dword [eax], 0                          ; 5256 _ C7. 00, 00000000
        mov     eax, dword [ebp+8H]                     ; 525C _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 525F _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 5266 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 5269 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 5270 _ 8B. 45, 08
        mov     dword [eax+0CH], 0                      ; 5273 _ C7. 40, 0C, 00000000
        nop                                             ; 527A _ 90
        pop     ebp                                     ; 527B _ 5D
        ret                                             ; 527C _ C3

_memman_total:; Function begin
        push    ebp                                     ; 527D _ 55
        mov     ebp, esp                                ; 527E _ 89. E5
        sub     esp, 16                                 ; 5280 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 5283 _ C7. 45, F8, 00000000
        mov     dword [ebp-4H], 0                       ; 528A _ C7. 45, FC, 00000000
        jmp     ?_303                                   ; 5291 _ EB, 14

?_302:  mov     eax, dword [ebp+8H]                     ; 5293 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 5296 _ 8B. 55, FC
        add     edx, 2                                  ; 5299 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 529C _ 8B. 44 D0, 04
        add     dword [ebp-8H], eax                     ; 52A0 _ 01. 45, F8
        add     dword [ebp-4H], 1                       ; 52A3 _ 83. 45, FC, 01
?_303:  mov     eax, dword [ebp+8H]                     ; 52A7 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 52AA _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 52AC _ 39. 45, FC
        jc      ?_302                                   ; 52AF _ 72, E2
        mov     eax, dword [ebp-8H]                     ; 52B1 _ 8B. 45, F8
        leave                                           ; 52B4 _ C9
        ret                                             ; 52B5 _ C3
; _memman_total End of function

_memman_alloc:; Function begin
        push    ebp                                     ; 52B6 _ 55
        mov     ebp, esp                                ; 52B7 _ 89. E5
        push    ebx                                     ; 52B9 _ 53
        sub     esp, 16                                 ; 52BA _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 52BD _ C7. 45, F8, 00000000
        jmp     ?_309                                   ; 52C4 _ E9, 000000BB

?_304:  mov     eax, dword [ebp+8H]                     ; 52C9 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 52CC _ 8B. 55, F8
        add     edx, 2                                  ; 52CF _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 52D2 _ 8B. 44 D0, 04
        cmp     dword [ebp+0CH], eax                    ; 52D6 _ 39. 45, 0C
        ja      ?_308                                   ; 52D9 _ 0F 87, 000000A1
        mov     eax, dword [ebp+8H]                     ; 52DF _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 52E2 _ 8B. 55, F8
        add     edx, 2                                  ; 52E5 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 52E8 _ 8B. 04 D0
        mov     dword [ebp-0CH], eax                    ; 52EB _ 89. 45, F4
        mov     eax, dword [ebp+8H]                     ; 52EE _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 52F1 _ 8B. 55, F8
        add     edx, 2                                  ; 52F4 _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 52F7 _ 8B. 14 D0
        mov     eax, dword [ebp+0CH]                    ; 52FA _ 8B. 45, 0C
        lea     ecx, [edx+eax]                          ; 52FD _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 5300 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 5303 _ 8B. 55, F8
        add     edx, 2                                  ; 5306 _ 83. C2, 02
        mov     dword [eax+edx*8], ecx                  ; 5309 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 530C _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 530F _ 8B. 55, F8
        add     edx, 2                                  ; 5312 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 5315 _ 8B. 44 D0, 04
        sub     eax, dword [ebp+0CH]                    ; 5319 _ 2B. 45, 0C
        mov     edx, dword [ebp+8H]                     ; 531C _ 8B. 55, 08
        mov     ecx, dword [ebp-8H]                     ; 531F _ 8B. 4D, F8
        add     ecx, 2                                  ; 5322 _ 83. C1, 02
        mov     dword [edx+ecx*8+4H], eax               ; 5325 _ 89. 44 CA, 04
        mov     eax, dword [ebp+8H]                     ; 5329 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 532C _ 8B. 55, F8
        add     edx, 2                                  ; 532F _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 5332 _ 8B. 44 D0, 04
        test    eax, eax                                ; 5336 _ 85. C0
        jnz     ?_307                                   ; 5338 _ 75, 41
        mov     eax, dword [ebp+8H]                     ; 533A _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 533D _ 8B. 00
        lea     edx, [eax-1H]                           ; 533F _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 5342 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 5345 _ 89. 10
        jmp     ?_306                                   ; 5347 _ EB, 28

?_305:  mov     eax, dword [ebp-8H]                     ; 5349 _ 8B. 45, F8
        lea     edx, [eax+1H]                           ; 534C _ 8D. 50, 01
        mov     ecx, dword [ebp+8H]                     ; 534F _ 8B. 4D, 08
        mov     eax, dword [ebp-8H]                     ; 5352 _ 8B. 45, F8
        lea     ebx, [eax+2H]                           ; 5355 _ 8D. 58, 02
        mov     eax, dword [ebp+8H]                     ; 5358 _ 8B. 45, 08
        add     edx, 2                                  ; 535B _ 83. C2, 02
        lea     edx, [eax+edx*8]                        ; 535E _ 8D. 14 D0
        mov     eax, dword [edx]                        ; 5361 _ 8B. 02
        mov     edx, dword [edx+4H]                     ; 5363 _ 8B. 52, 04
        mov     dword [ecx+ebx*8], eax                  ; 5366 _ 89. 04 D9
        mov     dword [ecx+ebx*8+4H], edx               ; 5369 _ 89. 54 D9, 04
        add     dword [ebp-8H], 1                       ; 536D _ 83. 45, F8, 01
?_306:  mov     eax, dword [ebp+8H]                     ; 5371 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 5374 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 5376 _ 39. 45, F8
        jc      ?_305                                   ; 5379 _ 72, CE
?_307:  mov     eax, dword [ebp-0CH]                    ; 537B _ 8B. 45, F4
        jmp     ?_310                                   ; 537E _ EB, 17

?_308:  add     dword [ebp-8H], 1                       ; 5380 _ 83. 45, F8, 01
?_309:  mov     eax, dword [ebp+8H]                     ; 5384 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 5387 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 5389 _ 39. 45, F8
        jc      ?_304                                   ; 538C _ 0F 82, FFFFFF37
        mov     eax, 0                                  ; 5392 _ B8, 00000000
?_310:  add     esp, 16                                 ; 5397 _ 83. C4, 10
        pop     ebx                                     ; 539A _ 5B
        pop     ebp                                     ; 539B _ 5D
        ret                                             ; 539C _ C3
; _memman_alloc End of function

_memman_free:; Function begin
        push    ebp                                     ; 539D _ 55
        mov     ebp, esp                                ; 539E _ 89. E5
        push    ebx                                     ; 53A0 _ 53
        sub     esp, 16                                 ; 53A1 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 53A4 _ C7. 45, F8, 00000000
        jmp     ?_312                                   ; 53AB _ EB, 15

?_311:  mov     eax, dword [ebp+8H]                     ; 53AD _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 53B0 _ 8B. 55, F8
        add     edx, 2                                  ; 53B3 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 53B6 _ 8B. 04 D0
        cmp     dword [ebp+0CH], eax                    ; 53B9 _ 39. 45, 0C
        jc      ?_313                                   ; 53BC _ 72, 10
        add     dword [ebp-8H], 1                       ; 53BE _ 83. 45, F8, 01
?_312:  mov     eax, dword [ebp+8H]                     ; 53C2 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 53C5 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 53C7 _ 39. 45, F8
        jl      ?_311                                   ; 53CA _ 7C, E1
        jmp     ?_314                                   ; 53CC _ EB, 01

?_313:  nop                                             ; 53CE _ 90
?_314:  cmp     dword [ebp-8H], 0                       ; 53CF _ 83. 7D, F8, 00
        jle     ?_318                                   ; 53D3 _ 0F 8E, 000000F0
        mov     eax, dword [ebp-8H]                     ; 53D9 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 53DC _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 53DF _ 8B. 45, 08
        add     edx, 2                                  ; 53E2 _ 83. C2, 02
        mov     ecx, dword [eax+edx*8]                  ; 53E5 _ 8B. 0C D0
        mov     eax, dword [ebp-8H]                     ; 53E8 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 53EB _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 53EE _ 8B. 45, 08
        add     edx, 2                                  ; 53F1 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 53F4 _ 8B. 44 D0, 04
        add     eax, ecx                                ; 53F8 _ 01. C8
        cmp     dword [ebp+0CH], eax                    ; 53FA _ 39. 45, 0C
        jne     ?_318                                   ; 53FD _ 0F 85, 000000C6
        mov     eax, dword [ebp-8H]                     ; 5403 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 5406 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 5409 _ 8B. 45, 08
        add     edx, 2                                  ; 540C _ 83. C2, 02
        mov     ecx, dword [eax+edx*8+4H]               ; 540F _ 8B. 4C D0, 04
        mov     eax, dword [ebp-8H]                     ; 5413 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 5416 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 5419 _ 8B. 45, 10
        add     ecx, eax                                ; 541C _ 01. C1
        mov     eax, dword [ebp+8H]                     ; 541E _ 8B. 45, 08
        add     edx, 2                                  ; 5421 _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 5424 _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 5428 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 542B _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 542D _ 39. 45, F8
        jge     ?_317                                   ; 5430 _ 0F 8D, 00000089
        mov     edx, dword [ebp+0CH]                    ; 5436 _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 5439 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 543C _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 543F _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 5442 _ 8B. 55, F8
        add     edx, 2                                  ; 5445 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 5448 _ 8B. 04 D0
        cmp     ecx, eax                                ; 544B _ 39. C1
        jnz     ?_317                                   ; 544D _ 75, 70
        mov     eax, dword [ebp-8H]                     ; 544F _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 5452 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 5455 _ 8B. 45, 08
        add     edx, 2                                  ; 5458 _ 83. C2, 02
        mov     ecx, dword [eax+edx*8+4H]               ; 545B _ 8B. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 545F _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 5462 _ 8B. 55, F8
        add     edx, 2                                  ; 5465 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 5468 _ 8B. 44 D0, 04
        mov     edx, dword [ebp-8H]                     ; 546C _ 8B. 55, F8
        sub     edx, 1                                  ; 546F _ 83. EA, 01
        add     ecx, eax                                ; 5472 _ 01. C1
        mov     eax, dword [ebp+8H]                     ; 5474 _ 8B. 45, 08
        add     edx, 2                                  ; 5477 _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 547A _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 547E _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 5481 _ 8B. 00
        lea     edx, [eax-1H]                           ; 5483 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 5486 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 5489 _ 89. 10
        jmp     ?_316                                   ; 548B _ EB, 28

?_315:  mov     eax, dword [ebp-8H]                     ; 548D _ 8B. 45, F8
        lea     edx, [eax+1H]                           ; 5490 _ 8D. 50, 01
        mov     ecx, dword [ebp+8H]                     ; 5493 _ 8B. 4D, 08
        mov     eax, dword [ebp-8H]                     ; 5496 _ 8B. 45, F8
        lea     ebx, [eax+2H]                           ; 5499 _ 8D. 58, 02
        mov     eax, dword [ebp+8H]                     ; 549C _ 8B. 45, 08
        add     edx, 2                                  ; 549F _ 83. C2, 02
        lea     edx, [eax+edx*8]                        ; 54A2 _ 8D. 14 D0
        mov     eax, dword [edx]                        ; 54A5 _ 8B. 02
        mov     edx, dword [edx+4H]                     ; 54A7 _ 8B. 52, 04
        mov     dword [ecx+ebx*8], eax                  ; 54AA _ 89. 04 D9
        mov     dword [ecx+ebx*8+4H], edx               ; 54AD _ 89. 54 D9, 04
        add     dword [ebp-8H], 1                       ; 54B1 _ 83. 45, F8, 01
?_316:  mov     eax, dword [ebp+8H]                     ; 54B5 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 54B8 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 54BA _ 39. 45, F8
        jl      ?_315                                   ; 54BD _ 7C, CE
?_317:  mov     eax, 0                                  ; 54BF _ B8, 00000000
        jmp     ?_324                                   ; 54C4 _ E9, 0000011C

?_318:  mov     eax, dword [ebp+8H]                     ; 54C9 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 54CC _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 54CE _ 39. 45, F8
        jge     ?_319                                   ; 54D1 _ 7D, 52
        mov     edx, dword [ebp+0CH]                    ; 54D3 _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 54D6 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 54D9 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 54DC _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 54DF _ 8B. 55, F8
        add     edx, 2                                  ; 54E2 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 54E5 _ 8B. 04 D0
        cmp     ecx, eax                                ; 54E8 _ 39. C1
        jnz     ?_319                                   ; 54EA _ 75, 39
        mov     eax, dword [ebp+8H]                     ; 54EC _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 54EF _ 8B. 55, F8
        add     edx, 2                                  ; 54F2 _ 83. C2, 02
        mov     ecx, dword [ebp+0CH]                    ; 54F5 _ 8B. 4D, 0C
        mov     dword [eax+edx*8], ecx                  ; 54F8 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 54FB _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 54FE _ 8B. 55, F8
        add     edx, 2                                  ; 5501 _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 5504 _ 8B. 54 D0, 04
        mov     eax, dword [ebp+10H]                    ; 5508 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 550B _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 550E _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 5511 _ 8B. 55, F8
        add     edx, 2                                  ; 5514 _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 5517 _ 89. 4C D0, 04
        mov     eax, 0                                  ; 551B _ B8, 00000000
        jmp     ?_324                                   ; 5520 _ E9, 000000C0

?_319:  mov     eax, dword [ebp+8H]                     ; 5525 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 5528 _ 8B. 00
        cmp     eax, 4095                               ; 552A _ 3D, 00000FFF
        jg      ?_323                                   ; 552F _ 0F 8F, 00000087
        mov     eax, dword [ebp+8H]                     ; 5535 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 5538 _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 553A _ 89. 45, F4
        jmp     ?_321                                   ; 553D _ EB, 28

?_320:  mov     eax, dword [ebp-0CH]                    ; 553F _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 5542 _ 8D. 50, FF
        mov     ecx, dword [ebp+8H]                     ; 5545 _ 8B. 4D, 08
        mov     eax, dword [ebp-0CH]                    ; 5548 _ 8B. 45, F4
        lea     ebx, [eax+2H]                           ; 554B _ 8D. 58, 02
        mov     eax, dword [ebp+8H]                     ; 554E _ 8B. 45, 08
        add     edx, 2                                  ; 5551 _ 83. C2, 02
        lea     edx, [eax+edx*8]                        ; 5554 _ 8D. 14 D0
        mov     eax, dword [edx]                        ; 5557 _ 8B. 02
        mov     edx, dword [edx+4H]                     ; 5559 _ 8B. 52, 04
        mov     dword [ecx+ebx*8], eax                  ; 555C _ 89. 04 D9
        mov     dword [ecx+ebx*8+4H], edx               ; 555F _ 89. 54 D9, 04
        sub     dword [ebp-0CH], 1                      ; 5563 _ 83. 6D, F4, 01
?_321:  mov     eax, dword [ebp-0CH]                    ; 5567 _ 8B. 45, F4
        cmp     eax, dword [ebp-8H]                     ; 556A _ 3B. 45, F8
        jg      ?_320                                   ; 556D _ 7F, D0
        mov     eax, dword [ebp+8H]                     ; 556F _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 5572 _ 8B. 00
        lea     edx, [eax+1H]                           ; 5574 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 5577 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 557A _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 557C _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 557F _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 5582 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 5585 _ 8B. 00
        cmp     edx, eax                                ; 5587 _ 39. C2
        jge     ?_322                                   ; 5589 _ 7D, 0B
        mov     eax, dword [ebp+8H]                     ; 558B _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 558E _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 5590 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 5593 _ 89. 50, 04
?_322:  mov     eax, dword [ebp+8H]                     ; 5596 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 5599 _ 8B. 55, F8
        add     edx, 2                                  ; 559C _ 83. C2, 02
        mov     ecx, dword [ebp+0CH]                    ; 559F _ 8B. 4D, 0C
        mov     dword [eax+edx*8], ecx                  ; 55A2 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 55A5 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 55A8 _ 8B. 55, F8
        add     edx, 2                                  ; 55AB _ 83. C2, 02
        mov     ecx, dword [ebp+10H]                    ; 55AE _ 8B. 4D, 10
        mov     dword [eax+edx*8+4H], ecx               ; 55B1 _ 89. 4C D0, 04
        mov     eax, 0                                  ; 55B5 _ B8, 00000000
        jmp     ?_324                                   ; 55BA _ EB, 29

?_323:  mov     eax, dword [ebp+8H]                     ; 55BC _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 55BF _ 8B. 40, 0C
        lea     edx, [eax+1H]                           ; 55C2 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 55C5 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 55C8 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 55CB _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 55CE _ 8B. 40, 08
        mov     edx, eax                                ; 55D1 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 55D3 _ 8B. 45, 10
        add     eax, edx                                ; 55D6 _ 01. D0
        mov     edx, eax                                ; 55D8 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 55DA _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 55DD _ 89. 50, 08
        mov     eax, 4294967295                         ; 55E0 _ B8, FFFFFFFF
?_324:  add     esp, 16                                 ; 55E5 _ 83. C4, 10
        pop     ebx                                     ; 55E8 _ 5B
        pop     ebp                                     ; 55E9 _ 5D
        ret                                             ; 55EA _ C3
; _memman_free End of function

_memman_alloc_4k:; Function begin
        push    ebp                                     ; 55EB _ 55
        mov     ebp, esp                                ; 55EC _ 89. E5
        sub     esp, 24                                 ; 55EE _ 83. EC, 18
        mov     eax, dword [ebp+0CH]                    ; 55F1 _ 8B. 45, 0C
        add     eax, 4095                               ; 55F4 _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 55F9 _ 25, FFFFF000
        mov     dword [ebp+0CH], eax                    ; 55FE _ 89. 45, 0C
        mov     eax, dword [ebp+0CH]                    ; 5601 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 5604 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 5608 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 560B _ 89. 04 24
        call    _memman_alloc                           ; 560E _ E8, FFFFFCA3
        mov     dword [ebp-4H], eax                     ; 5613 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 5616 _ 8B. 45, FC
        leave                                           ; 5619 _ C9
        ret                                             ; 561A _ C3
; _memman_alloc_4k End of function

_memman_free_4k:; Function begin
        push    ebp                                     ; 561B _ 55
        mov     ebp, esp                                ; 561C _ 89. E5
        sub     esp, 28                                 ; 561E _ 83. EC, 1C
        mov     eax, dword [ebp+10H]                    ; 5621 _ 8B. 45, 10
        add     eax, 4095                               ; 5624 _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 5629 _ 25, FFFFF000
        mov     dword [ebp+10H], eax                    ; 562E _ 89. 45, 10
        mov     eax, dword [ebp+10H]                    ; 5631 _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 5634 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 5638 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 563B _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 563F _ 8B. 45, 08
        mov     dword [esp], eax                        ; 5642 _ 89. 04 24
        call    _memman_free                            ; 5645 _ E8, FFFFFD53
        mov     dword [ebp-4H], eax                     ; 564A _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 564D _ 8B. 45, FC
        leave                                           ; 5650 _ C9
        ret                                             ; 5651 _ C3
; _memman_free_4k End of function

        nop                                             ; 5652 _ 90
        nop                                             ; 5653 _ 90


_fifo8_init:
        push    ebp                                     ; 5654 _ 55
        mov     ebp, esp                                ; 5655 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 5657 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 565A _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 565D _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 5660 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 5663 _ 8B. 55, 10
        mov     dword [eax], edx                        ; 5666 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 5668 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 566B _ 8B. 55, 0C
        mov     dword [eax+10H], edx                    ; 566E _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 5671 _ 8B. 45, 08
        mov     dword [eax+14H], 0                      ; 5674 _ C7. 40, 14, 00000000
        mov     eax, dword [ebp+8H]                     ; 567B _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 567E _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 5685 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 5688 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 568F _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 5692 _ 8B. 55, 14
        mov     dword [eax+18H], edx                    ; 5695 _ 89. 50, 18
        nop                                             ; 5698 _ 90
        pop     ebp                                     ; 5699 _ 5D
        ret                                             ; 569A _ C3

_fifo8_put:; Function begin
        push    ebp                                     ; 569B _ 55
        mov     ebp, esp                                ; 569C _ 89. E5
        sub     esp, 40                                 ; 569E _ 83. EC, 28
        mov     eax, dword [ebp+0CH]                    ; 56A1 _ 8B. 45, 0C
        mov     byte [ebp-0CH], al                      ; 56A4 _ 88. 45, F4
        cmp     dword [ebp+8H], 0                       ; 56A7 _ 83. 7D, 08, 00
        jnz     ?_325                                   ; 56AB _ 75, 0A
        mov     eax, 4294967295                         ; 56AD _ B8, FFFFFFFF
        jmp     ?_329                                   ; 56B2 _ E9, 000000AB

?_325:  mov     eax, dword [ebp+8H]                     ; 56B7 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 56BA _ 8B. 40, 10
        test    eax, eax                                ; 56BD _ 85. C0
        jnz     ?_326                                   ; 56BF _ 75, 1B
        mov     eax, dword [ebp+8H]                     ; 56C1 _ 8B. 45, 08
        mov     eax, dword [eax+14H]                    ; 56C4 _ 8B. 40, 14
        or      eax, 01H                                ; 56C7 _ 83. C8, 01
        mov     edx, eax                                ; 56CA _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 56CC _ 8B. 45, 08
        mov     dword [eax+14H], edx                    ; 56CF _ 89. 50, 14
        mov     eax, 4294967295                         ; 56D2 _ B8, FFFFFFFF
        jmp     ?_329                                   ; 56D7 _ E9, 00000086

?_326:  mov     eax, dword [ebp+8H]                     ; 56DC _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 56DF _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 56E1 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 56E4 _ 8B. 40, 04
        add     edx, eax                                ; 56E7 _ 01. C2
        movzx   eax, byte [ebp-0CH]                     ; 56E9 _ 0F B6. 45, F4
        mov     byte [edx], al                          ; 56ED _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 56EF _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 56F2 _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 56F5 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 56F8 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 56FB _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 56FE _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 5701 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 5704 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 5707 _ 8B. 40, 0C
        cmp     edx, eax                                ; 570A _ 39. C2
        jnz     ?_327                                   ; 570C _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 570E _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 5711 _ C7. 40, 04, 00000000
?_327:  mov     eax, dword [ebp+8H]                     ; 5718 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 571B _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 571E _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 5721 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 5724 _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 5727 _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 572A _ 8B. 40, 18
        test    eax, eax                                ; 572D _ 85. C0
        jz      ?_328                                   ; 572F _ 74, 2C
        mov     eax, dword [ebp+8H]                     ; 5731 _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 5734 _ 8B. 40, 18
        mov     eax, dword [eax+4H]                     ; 5737 _ 8B. 40, 04
        cmp     eax, 2                                  ; 573A _ 83. F8, 02
        jz      ?_328                                   ; 573D _ 74, 1E
        mov     eax, dword [ebp+8H]                     ; 573F _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 5742 _ 8B. 40, 18
        mov     dword [esp+8H], 0                       ; 5745 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], -1                      ; 574D _ C7. 44 24, 04, FFFFFFFF
        mov     dword [esp], eax                        ; 5755 _ 89. 04 24
        call    _task_run                               ; 5758 _ E8, 00000000(rel)
?_328:  mov     eax, 0                                  ; 575D _ B8, 00000000
?_329:  leave                                           ; 5762 _ C9
        ret                                             ; 5763 _ C3
; _fifo8_put End of function

_fifo8_get:; Function begin
        push    ebp                                     ; 5764 _ 55
        mov     ebp, esp                                ; 5765 _ 89. E5
        sub     esp, 16                                 ; 5767 _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 576A _ 8B. 45, 08
        mov     edx, dword [eax+10H]                    ; 576D _ 8B. 50, 10
        mov     eax, dword [ebp+8H]                     ; 5770 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 5773 _ 8B. 40, 0C
        cmp     edx, eax                                ; 5776 _ 39. C2
        jnz     ?_330                                   ; 5778 _ 75, 07
        mov     eax, 4294967295                         ; 577A _ B8, FFFFFFFF
        jmp     ?_332                                   ; 577F _ EB, 51

?_330:  mov     eax, dword [ebp+8H]                     ; 5781 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 5784 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 5786 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 5789 _ 8B. 40, 08
        add     eax, edx                                ; 578C _ 01. D0
        movzx   eax, byte [eax]                         ; 578E _ 0F B6. 00
        movzx   eax, al                                 ; 5791 _ 0F B6. C0
        mov     dword [ebp-4H], eax                     ; 5794 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 5797 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 579A _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 579D _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 57A0 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 57A3 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 57A6 _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 57A9 _ 8B. 50, 08
        mov     eax, dword [ebp+8H]                     ; 57AC _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 57AF _ 8B. 40, 0C
        cmp     edx, eax                                ; 57B2 _ 39. C2
        jnz     ?_331                                   ; 57B4 _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 57B6 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 57B9 _ C7. 40, 08, 00000000
?_331:  mov     eax, dword [ebp+8H]                     ; 57C0 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 57C3 _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 57C6 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 57C9 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 57CC _ 89. 50, 10
        mov     eax, dword [ebp-4H]                     ; 57CF _ 8B. 45, FC
?_332:  leave                                           ; 57D2 _ C9
        ret                                             ; 57D3 _ C3
; _fifo8_get End of function

_fifo8_status:; Function begin
        push    ebp                                     ; 57D4 _ 55
        mov     ebp, esp                                ; 57D5 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 57D7 _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 57DA _ 8B. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 57DD _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 57E0 _ 8B. 40, 10
        sub     edx, eax                                ; 57E3 _ 29. C2
        mov     eax, edx                                ; 57E5 _ 89. D0
        pop     ebp                                     ; 57E7 _ 5D
        ret                                             ; 57E8 _ C3
; _fifo8_status End of function

        nop                                             ; 57E9 _ 90
        nop                                             ; 57EA _ 90
        nop                                             ; 57EB _ 90


_init_pit:
        push    ebp                                     ; 57EC _ 55
        mov     ebp, esp                                ; 57ED _ 89. E5
        sub     esp, 40                                 ; 57EF _ 83. EC, 28
        mov     dword [esp+4H], 52                      ; 57F2 _ C7. 44 24, 04, 00000034
        mov     dword [esp], 67                         ; 57FA _ C7. 04 24, 00000043
        call    _io_out8                                ; 5801 _ E8, 00000000(rel)
        mov     dword [esp+4H], 156                     ; 5806 _ C7. 44 24, 04, 0000009C
        mov     dword [esp], 64                         ; 580E _ C7. 04 24, 00000040
        call    _io_out8                                ; 5815 _ E8, 00000000(rel)
        mov     dword [esp+4H], 46                      ; 581A _ C7. 44 24, 04, 0000002E
        mov     dword [esp], 64                         ; 5822 _ C7. 04 24, 00000040
        call    _io_out8                                ; 5829 _ E8, 00000000(rel)
        mov     dword [_timerctl], 0                         ; 582E _ C7. 05, 00000000(d), 00000000
        mov     dword [ebp-0CH], 0                      ; 5838 _ C7. 45, F4, 00000000
        jmp     ?_334                                   ; 583F _ EB, 26

?_333:  mov     eax, dword [ebp-0CH]                    ; 5841 _ 8B. 45, F4
        shl     eax, 4                                  ; 5844 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 5847 _ 05, 00000008(d)
        mov     dword [eax], 0                          ; 584C _ C7. 00, 00000000
        mov     eax, dword [ebp-0CH]                    ; 5852 _ 8B. 45, F4
        shl     eax, 4                                  ; 5855 _ C1. E0, 04
        add     eax, _timerctl+0CH                           ; 5858 _ 05, 0000000C(d)
        mov     dword [eax], 0                          ; 585D _ C7. 00, 00000000
        add     dword [ebp-0CH], 1                      ; 5863 _ 83. 45, F4, 01
?_334:  cmp     dword [ebp-0CH], 499                    ; 5867 _ 81. 7D, F4, 000001F3
        jle     ?_333                                   ; 586E _ 7E, D1
        nop                                             ; 5870 _ 90
        leave                                           ; 5871 _ C9
        ret                                             ; 5872 _ C3

_timer_alloc:; Function begin
        push    ebp                                     ; 5873 _ 55
        mov     ebp, esp                                ; 5874 _ 89. E5
        sub     esp, 16                                 ; 5876 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 5879 _ C7. 45, FC, 00000000
        jmp     ?_337                                   ; 5880 _ EB, 36

?_335:  mov     eax, dword [ebp-4H]                     ; 5882 _ 8B. 45, FC
        shl     eax, 4                                  ; 5885 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 5888 _ 05, 00000008(d)
        mov     eax, dword [eax]                        ; 588D _ 8B. 00
        test    eax, eax                                ; 588F _ 85. C0
        jnz     ?_336                                   ; 5891 _ 75, 21
        mov     eax, dword [ebp-4H]                     ; 5893 _ 8B. 45, FC
        shl     eax, 4                                  ; 5896 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 5899 _ 05, 00000008(d)
        mov     dword [eax], 1                          ; 589E _ C7. 00, 00000001
        mov     eax, dword [ebp-4H]                     ; 58A4 _ 8B. 45, FC
        shl     eax, 4                                  ; 58A7 _ C1. E0, 04
        add     eax, _timerctl                               ; 58AA _ 05, 00000000(d)
        add     eax, 4                                  ; 58AF _ 83. C0, 04
        jmp     ?_338                                   ; 58B2 _ EB, 12

?_336:  add     dword [ebp-4H], 1                       ; 58B4 _ 83. 45, FC, 01
?_337:  cmp     dword [ebp-4H], 499                     ; 58B8 _ 81. 7D, FC, 000001F3
        jle     ?_335                                   ; 58BF _ 7E, C1
        mov     eax, 0                                  ; 58C1 _ B8, 00000000
?_338:  leave                                           ; 58C6 _ C9
        ret                                             ; 58C7 _ C3
; _timer_alloc End of function

_timer_free:; Function begin
        push    ebp                                     ; 58C8 _ 55
        mov     ebp, esp                                ; 58C9 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 58CB _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 58CE _ C7. 40, 04, 00000000
        nop                                             ; 58D5 _ 90
        pop     ebp                                     ; 58D6 _ 5D
        ret                                             ; 58D7 _ C3
; _timer_free End of function

_timer_init:; Function begin
        push    ebp                                     ; 58D8 _ 55
        mov     ebp, esp                                ; 58D9 _ 89. E5
        sub     esp, 4                                  ; 58DB _ 83. EC, 04
        mov     eax, dword [ebp+10H]                    ; 58DE _ 8B. 45, 10
        mov     byte [ebp-4H], al                       ; 58E1 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 58E4 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 58E7 _ 8B. 55, 0C
        mov     dword [eax+8H], edx                     ; 58EA _ 89. 50, 08
        mov     edx, dword [ebp+8H]                     ; 58ED _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 58F0 _ 0F B6. 45, FC
        mov     byte [edx+0CH], al                      ; 58F4 _ 88. 42, 0C
        nop                                             ; 58F7 _ 90
        leave                                           ; 58F8 _ C9
        ret                                             ; 58F9 _ C3
; _timer_init End of function

_timer_settime:; Function begin
        push    ebp                                     ; 58FA _ 55
        mov     ebp, esp                                ; 58FB _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 58FD _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 5900 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 5903 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 5905 _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 5908 _ C7. 40, 04, 00000002
        nop                                             ; 590F _ 90
        pop     ebp                                     ; 5910 _ 5D
        ret                                             ; 5911 _ C3
; _timer_settime End of function

_intHandlerForTimer:; Function begin
        push    ebp                                     ; 5912 _ 55
        mov     ebp, esp                                ; 5913 _ 89. E5
        sub     esp, 40                                 ; 5915 _ 83. EC, 28
        mov     dword [esp+4H], 32                      ; 5918 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 5920 _ C7. 04 24, 00000020
        call    _io_out8                                ; 5927 _ E8, 00000000(rel)
        mov     eax, dword [_timerctl]                       ; 592C _ A1, 00000000(d)
        add     eax, 1                                  ; 5931 _ 83. C0, 01
        mov     dword [_timerctl], eax                       ; 5934 _ A3, 00000000(d)
        mov     byte [ebp-0DH], 0                       ; 5939 _ C6. 45, F3, 00
        mov     dword [ebp-0CH], 0                      ; 593D _ C7. 45, F4, 00000000
        jmp     ?_342                                   ; 5944 _ E9, 000000AA

?_339:  mov     eax, dword [ebp-0CH]                    ; 5949 _ 8B. 45, F4
        shl     eax, 4                                  ; 594C _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 594F _ 05, 00000008(d)
        mov     eax, dword [eax]                        ; 5954 _ 8B. 00
        cmp     eax, 2                                  ; 5956 _ 83. F8, 02
        jne     ?_340                                   ; 5959 _ 0F 85, 00000085
        mov     eax, dword [ebp-0CH]                    ; 595F _ 8B. 45, F4
        shl     eax, 4                                  ; 5962 _ C1. E0, 04
        add     eax, _timerctl+4H                            ; 5965 _ 05, 00000004(d)
        mov     eax, dword [eax]                        ; 596A _ 8B. 00
        lea     edx, [eax-1H]                           ; 596C _ 8D. 50, FF
        mov     eax, dword [ebp-0CH]                    ; 596F _ 8B. 45, F4
        shl     eax, 4                                  ; 5972 _ C1. E0, 04
        add     eax, _timerctl+4H                            ; 5975 _ 05, 00000004(d)
        mov     dword [eax], edx                        ; 597A _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 597C _ 8B. 45, F4
        shl     eax, 4                                  ; 597F _ C1. E0, 04
        add     eax, _timerctl+4H                            ; 5982 _ 05, 00000004(d)
        mov     eax, dword [eax]                        ; 5987 _ 8B. 00
        test    eax, eax                                ; 5989 _ 85. C0
        jnz     ?_340                                   ; 598B _ 75, 57
        mov     eax, dword [ebp-0CH]                    ; 598D _ 8B. 45, F4
        shl     eax, 4                                  ; 5990 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 5993 _ 05, 00000008(d)
        mov     dword [eax], 1                          ; 5998 _ C7. 00, 00000001
        mov     eax, dword [ebp-0CH]                    ; 599E _ 8B. 45, F4
        shl     eax, 4                                  ; 59A1 _ C1. E0, 04
        add     eax, _timerctl+10H                           ; 59A4 _ 05, 00000010(d)
        movzx   eax, byte [eax]                         ; 59A9 _ 0F B6. 00
        movzx   eax, al                                 ; 59AC _ 0F B6. C0
        mov     edx, dword [ebp-0CH]                    ; 59AF _ 8B. 55, F4
        shl     edx, 4                                  ; 59B2 _ C1. E2, 04
        add     edx, _timerctl+0CH                           ; 59B5 _ 81. C2, 0000000C(d)
        mov     edx, dword [edx]                        ; 59BB _ 8B. 12
        mov     dword [esp+4H], eax                     ; 59BD _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 59C1 _ 89. 14 24
        call    _fifo8_put                              ; 59C4 _ E8, 00000000(rel)
        mov     eax, dword [ebp-0CH]                    ; 59C9 _ 8B. 45, F4
        shl     eax, 4                                  ; 59CC _ C1. E0, 04
        add     eax, _timerctl                               ; 59CF _ 05, 00000000(d)
        lea     edx, [eax+4H]                           ; 59D4 _ 8D. 50, 04
        mov     eax, dword [_task_timer]                ; 59D7 _ A1, 00000000(d)
        cmp     edx, eax                                ; 59DC _ 39. C2
        jnz     ?_340                                   ; 59DE _ 75, 04
        mov     byte [ebp-0DH], 1                       ; 59E0 _ C6. 45, F3, 01
?_340:  cmp     byte [ebp-0DH], 0                       ; 59E4 _ 80. 7D, F3, 00
        jz      ?_341                                   ; 59E8 _ 74, 05
        call    _task_switch                            ; 59EA _ E8, 00000000(rel)
?_341:  add     dword [ebp-0CH], 1                      ; 59EF _ 83. 45, F4, 01
?_342:  cmp     dword [ebp-0CH], 499                    ; 59F3 _ 81. 7D, F4, 000001F3
        jle     ?_339                                   ; 59FA _ 0F 8E, FFFFFF49
        nop                                             ; 5A00 _ 90
        leave                                           ; 5A01 _ C9
        ret                                             ; 5A02 _ C3
; _intHandlerForTimer End of function

_getTimerController:; Function begin
        mov     eax, _timerctl                               ; 5A03 _ B8, 00000000(d)
        ret                                             ; 5A08 _ C3
; _getTimerController End of function

        nop                                             ; 5A09 _ 90
        nop                                             ; 5A0A _ 90
        nop                                             ; 5A0B _ 90


_set_segmdesc:
        push    ebp                                     ; 5A0C _ 55
        mov     ebp, esp                                ; 5A0D _ 89. E5
        cmp     dword [ebp+0CH], 1048575                ; 5A0F _ 81. 7D, 0C, 000FFFFF
        jbe     ?_343                                   ; 5A16 _ 76, 10
        or      dword [ebp+14H], 8000H                  ; 5A18 _ 81. 4D, 14, 00008000
        mov     eax, dword [ebp+0CH]                    ; 5A1F _ 8B. 45, 0C
        shr     eax, 12                                 ; 5A22 _ C1. E8, 0C
        mov     dword [ebp+0CH], eax                    ; 5A25 _ 89. 45, 0C
?_343:  mov     eax, dword [ebp+0CH]                    ; 5A28 _ 8B. 45, 0C
        mov     edx, eax                                ; 5A2B _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 5A2D _ 8B. 45, 08
        mov     word [eax], dx                          ; 5A30 _ 66: 89. 10
        mov     eax, dword [ebp+10H]                    ; 5A33 _ 8B. 45, 10
        mov     edx, eax                                ; 5A36 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 5A38 _ 8B. 45, 08
        mov     word [eax+2H], dx                       ; 5A3B _ 66: 89. 50, 02
        mov     eax, dword [ebp+10H]                    ; 5A3F _ 8B. 45, 10
        sar     eax, 16                                 ; 5A42 _ C1. F8, 10
        mov     edx, eax                                ; 5A45 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 5A47 _ 8B. 45, 08
        mov     byte [eax+4H], dl                       ; 5A4A _ 88. 50, 04
        mov     eax, dword [ebp+14H]                    ; 5A4D _ 8B. 45, 14
        mov     edx, eax                                ; 5A50 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 5A52 _ 8B. 45, 08
        mov     byte [eax+5H], dl                       ; 5A55 _ 88. 50, 05
        mov     eax, dword [ebp+0CH]                    ; 5A58 _ 8B. 45, 0C
        shr     eax, 16                                 ; 5A5B _ C1. E8, 10
        and     eax, 0FH                                ; 5A5E _ 83. E0, 0F
        mov     edx, eax                                ; 5A61 _ 89. C2
        mov     eax, dword [ebp+14H]                    ; 5A63 _ 8B. 45, 14
        sar     eax, 8                                  ; 5A66 _ C1. F8, 08
        and     eax, 0FFFFFFF0H                         ; 5A69 _ 83. E0, F0
        or      eax, edx                                ; 5A6C _ 09. D0
        mov     edx, eax                                ; 5A6E _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 5A70 _ 8B. 45, 08
        mov     byte [eax+6H], dl                       ; 5A73 _ 88. 50, 06
        mov     eax, dword [ebp+10H]                    ; 5A76 _ 8B. 45, 10
        shr     eax, 24                                 ; 5A79 _ C1. E8, 18
        mov     edx, eax                                ; 5A7C _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 5A7E _ 8B. 45, 08
        mov     byte [eax+7H], dl                       ; 5A81 _ 88. 50, 07
        nop                                             ; 5A84 _ 90
        pop     ebp                                     ; 5A85 _ 5D
        ret                                             ; 5A86 _ C3

_get_taskctl:; Function begin
        mov     eax, dword [_taskctl]                   ; 5A87 _ A1, 00000004(d)
        ret                                             ; 5A8C _ C3
; _get_taskctl End of function

_init_task_level:; Function begin
        push    ebp                                     ; 5A8D _ 55
        mov     ebp, esp                                ; 5A8E _ 89. E5
        sub     esp, 16                                 ; 5A90 _ 83. EC, 10
        mov     ecx, dword [_taskctl]                   ; 5A93 _ 8B. 0D, 00000004(d)
        mov     edx, dword [ebp+8H]                     ; 5A99 _ 8B. 55, 08
        mov     eax, edx                                ; 5A9C _ 89. D0
        add     eax, eax                                ; 5A9E _ 01. C0
        add     eax, edx                                ; 5AA0 _ 01. D0
        shl     eax, 4                                  ; 5AA2 _ C1. E0, 04
        add     eax, ecx                                ; 5AA5 _ 01. C8
        add     eax, 8                                  ; 5AA7 _ 83. C0, 08
        mov     dword [eax], 0                          ; 5AAA _ C7. 00, 00000000
        mov     ecx, dword [_taskctl]                   ; 5AB0 _ 8B. 0D, 00000004(d)
        mov     edx, dword [ebp+8H]                     ; 5AB6 _ 8B. 55, 08
        mov     eax, edx                                ; 5AB9 _ 89. D0
        add     eax, eax                                ; 5ABB _ 01. C0
        add     eax, edx                                ; 5ABD _ 01. D0
        shl     eax, 4                                  ; 5ABF _ C1. E0, 04
        add     eax, ecx                                ; 5AC2 _ 01. C8
        add     eax, 12                                 ; 5AC4 _ 83. C0, 0C
        mov     dword [eax], 0                          ; 5AC7 _ C7. 00, 00000000
        mov     dword [ebp-4H], 0                       ; 5ACD _ C7. 45, FC, 00000000
        jmp     ?_345                                   ; 5AD4 _ EB, 1B

?_344:  mov     edx, dword [_taskctl]                   ; 5AD6 _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-4H]                     ; 5ADC _ 8B. 45, FC
        imul    eax, eax, 52                            ; 5ADF _ 6B. C0, 34
        add     eax, edx                                ; 5AE2 _ 01. D0
        add     eax, 16                                 ; 5AE4 _ 83. C0, 10
        mov     dword [eax], 0                          ; 5AE7 _ C7. 00, 00000000
        add     dword [ebp-4H], 1                       ; 5AED _ 83. 45, FC, 01
?_345:  cmp     dword [ebp-4H], 9                       ; 5AF1 _ 83. 7D, FC, 09
        jle     ?_344                                   ; 5AF5 _ 7E, DF
        nop                                             ; 5AF7 _ 90
        leave                                           ; 5AF8 _ C9
        ret                                             ; 5AF9 _ C3
; _init_task_level End of function

_task_init:; Function begin
        push    ebp                                     ; 5AFA _ 55
        mov     ebp, esp                                ; 5AFB _ 89. E5
        sub     esp, 40                                 ; 5AFD _ 83. EC, 28
        call    _get_addr_gdt                           ; 5B00 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 5B05 _ 89. 45, F0
        mov     dword [esp+4H], 3048                    ; 5B08 _ C7. 44 24, 04, 00000BE8
        mov     eax, dword [ebp+8H]                     ; 5B10 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 5B13 _ 89. 04 24
        call    _memman_alloc_4k                        ; 5B16 _ E8, 00000000(rel)
        mov     dword [_taskctl], eax                   ; 5B1B _ A3, 00000004(d)
        mov     dword [ebp-0CH], 0                      ; 5B20 _ C7. 45, F4, 00000000
        jmp     ?_347                                   ; 5B27 _ E9, 0000008E

?_346:  mov     edx, dword [_taskctl]                   ; 5B2C _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-0CH]                    ; 5B32 _ 8B. 45, F4
        imul    eax, eax, 188                           ; 5B35 _ 69. C0, 000000BC
        add     eax, edx                                ; 5B3B _ 01. D0
        add     eax, 492                                ; 5B3D _ 05, 000001EC
        mov     dword [eax], 0                          ; 5B42 _ C7. 00, 00000000
        mov     eax, dword [ebp-0CH]                    ; 5B48 _ 8B. 45, F4
        add     eax, 7                                  ; 5B4B _ 83. C0, 07
        mov     ecx, dword [_taskctl]                   ; 5B4E _ 8B. 0D, 00000004(d)
        lea     edx, [eax*8]                            ; 5B54 _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-0CH]                    ; 5B5B _ 8B. 45, F4
        imul    eax, eax, 188                           ; 5B5E _ 69. C0, 000000BC
        add     eax, ecx                                ; 5B64 _ 01. C8
        add     eax, 488                                ; 5B66 _ 05, 000001E8
        mov     dword [eax], edx                        ; 5B6B _ 89. 10
        mov     edx, dword [_taskctl]                   ; 5B6D _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-0CH]                    ; 5B73 _ 8B. 45, F4
        imul    eax, eax, 188                           ; 5B76 _ 69. C0, 000000BC
        add     eax, 512                                ; 5B7C _ 05, 00000200
        add     eax, edx                                ; 5B81 _ 01. D0
        add     eax, 20                                 ; 5B83 _ 83. C0, 14
        mov     ecx, eax                                ; 5B86 _ 89. C1
        mov     eax, dword [ebp-0CH]                    ; 5B88 _ 8B. 45, F4
        add     eax, 7                                  ; 5B8B _ 83. C0, 07
        lea     edx, [eax*8]                            ; 5B8E _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-10H]                    ; 5B95 _ 8B. 45, F0
        add     eax, edx                                ; 5B98 _ 01. D0
        mov     dword [esp+0CH], 137                    ; 5B9A _ C7. 44 24, 0C, 00000089
        mov     dword [esp+8H], ecx                     ; 5BA2 _ 89. 4C 24, 08
        mov     dword [esp+4H], 103                     ; 5BA6 _ C7. 44 24, 04, 00000067
        mov     dword [esp], eax                        ; 5BAE _ 89. 04 24
        call    _set_segmdesc                           ; 5BB1 _ E8, FFFFFE56
        add     dword [ebp-0CH], 1                      ; 5BB6 _ 83. 45, F4, 01
?_347:  cmp     dword [ebp-0CH], 9                      ; 5BBA _ 83. 7D, F4, 09
        jle     ?_346                                   ; 5BBE _ 0F 8E, FFFFFF68
        mov     dword [ebp-0CH], 0                      ; 5BC4 _ C7. 45, F4, 00000000
        jmp     ?_349                                   ; 5BCB _ EB, 0F

?_348:  mov     eax, dword [ebp-0CH]                    ; 5BCD _ 8B. 45, F4
        mov     dword [esp], eax                        ; 5BD0 _ 89. 04 24
        call    _init_task_level                        ; 5BD3 _ E8, FFFFFEB5
        add     dword [ebp-0CH], 1                      ; 5BD8 _ 83. 45, F4, 01
?_349:  cmp     dword [ebp-0CH], 9                      ; 5BDC _ 83. 7D, F4, 09
        jle     ?_348                                   ; 5BE0 _ 7E, EB
        call    _task_alloc                             ; 5BE2 _ E8, 00000066
        mov     dword [ebp-14H], eax                    ; 5BE7 _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 5BEA _ 8B. 45, EC
        mov     dword [eax+4H], 2                       ; 5BED _ C7. 40, 04, 00000002
        mov     eax, dword [ebp-14H]                    ; 5BF4 _ 8B. 45, EC
        mov     dword [eax+8H], 100                     ; 5BF7 _ C7. 40, 08, 00000064
        mov     eax, dword [ebp-14H]                    ; 5BFE _ 8B. 45, EC
        mov     dword [eax+0CH], 0                      ; 5C01 _ C7. 40, 0C, 00000000
        mov     eax, dword [ebp-14H]                    ; 5C08 _ 8B. 45, EC
        mov     dword [esp], eax                        ; 5C0B _ 89. 04 24
        call    _task_add                               ; 5C0E _ E8, 00000358
        call    _task_switchsub                         ; 5C13 _ E8, 0000046C
        mov     eax, dword [ebp-14H]                    ; 5C18 _ 8B. 45, EC
        mov     eax, dword [eax]                        ; 5C1B _ 8B. 00
        mov     dword [esp], eax                        ; 5C1D _ 89. 04 24
        call    _load_tr                                ; 5C20 _ E8, 00000000(rel)
        call    _timer_alloc                            ; 5C25 _ E8, 00000000(rel)
        mov     dword [_task_timer], eax                       ; 5C2A _ A3, 00000000(d)
        mov     eax, dword [ebp-14H]                    ; 5C2F _ 8B. 45, EC
        mov     eax, dword [eax+8H]                     ; 5C32 _ 8B. 40, 08
        mov     edx, eax                                ; 5C35 _ 89. C2
        mov     eax, dword [_task_timer]                       ; 5C37 _ A1, 00000000(d)
        mov     dword [esp+4H], edx                     ; 5C3C _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 5C40 _ 89. 04 24
        call    _timer_settime                          ; 5C43 _ E8, 00000000(rel)
        mov     eax, dword [ebp-14H]                    ; 5C48 _ 8B. 45, EC
        leave                                           ; 5C4B _ C9
        ret                                             ; 5C4C _ C3
; _task_init End of function

_task_alloc:; Function begin
        push    ebp                                     ; 5C4D _ 55
        mov     ebp, esp                                ; 5C4E _ 89. E5
        sub     esp, 16                                 ; 5C50 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 5C53 _ C7. 45, FC, 00000000
        jmp     ?_352                                   ; 5C5A _ E9, 00000105

?_350:  mov     edx, dword [_taskctl]                   ; 5C5F _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-4H]                     ; 5C65 _ 8B. 45, FC
        imul    eax, eax, 188                           ; 5C68 _ 69. C0, 000000BC
        add     eax, edx                                ; 5C6E _ 01. D0
        add     eax, 492                                ; 5C70 _ 05, 000001EC
        mov     eax, dword [eax]                        ; 5C75 _ 8B. 00
        test    eax, eax                                ; 5C77 _ 85. C0
        jne     ?_351                                   ; 5C79 _ 0F 85, 000000E1
        mov     edx, dword [_taskctl]                   ; 5C7F _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-4H]                     ; 5C85 _ 8B. 45, FC
        imul    eax, eax, 188                           ; 5C88 _ 69. C0, 000000BC
        add     eax, 480                                ; 5C8E _ 05, 000001E0
        add     eax, edx                                ; 5C93 _ 01. D0
        add     eax, 8                                  ; 5C95 _ 83. C0, 08
        mov     dword [ebp-8H], eax                     ; 5C98 _ 89. 45, F8
        mov     eax, dword [ebp-8H]                     ; 5C9B _ 8B. 45, F8
        mov     dword [eax+4H], 1                       ; 5C9E _ C7. 40, 04, 00000001
        mov     eax, dword [ebp-8H]                     ; 5CA5 _ 8B. 45, F8
        mov     dword [eax+50H], 514                    ; 5CA8 _ C7. 40, 50, 00000202
        mov     eax, dword [ebp-8H]                     ; 5CAF _ 8B. 45, F8
        mov     dword [eax+54H], 0                      ; 5CB2 _ C7. 40, 54, 00000000
        mov     eax, dword [ebp-8H]                     ; 5CB9 _ 8B. 45, F8
        mov     dword [eax+58H], 0                      ; 5CBC _ C7. 40, 58, 00000000
        mov     eax, dword [ebp-8H]                     ; 5CC3 _ 8B. 45, F8
        mov     dword [eax+5CH], 0                      ; 5CC6 _ C7. 40, 5C, 00000000
        mov     eax, dword [ebp-8H]                     ; 5CCD _ 8B. 45, F8
        mov     dword [eax+60H], 0                      ; 5CD0 _ C7. 40, 60, 00000000
        mov     eax, dword [ebp-8H]                     ; 5CD7 _ 8B. 45, F8
        mov     dword [eax+68H], 0                      ; 5CDA _ C7. 40, 68, 00000000
        mov     eax, dword [ebp-4H]                     ; 5CE1 _ 8B. 45, FC
        add     eax, 1                                  ; 5CE4 _ 83. C0, 01
        shl     eax, 9                                  ; 5CE7 _ C1. E0, 09
        mov     edx, eax                                ; 5CEA _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 5CEC _ 8B. 45, F8
        mov     dword [eax+64H], edx                    ; 5CEF _ 89. 50, 64
        mov     eax, dword [ebp-8H]                     ; 5CF2 _ 8B. 45, F8
        mov     dword [eax+6CH], 0                      ; 5CF5 _ C7. 40, 6C, 00000000
        mov     eax, dword [ebp-8H]                     ; 5CFC _ 8B. 45, F8
        mov     dword [eax+70H], 0                      ; 5CFF _ C7. 40, 70, 00000000
        mov     eax, dword [ebp-8H]                     ; 5D06 _ 8B. 45, F8
        mov     dword [eax+74H], 0                      ; 5D09 _ C7. 40, 74, 00000000
        mov     eax, dword [ebp-8H]                     ; 5D10 _ 8B. 45, F8
        mov     dword [eax+80H], 0                      ; 5D13 _ C7. 80, 00000080, 00000000
        mov     eax, dword [ebp-8H]                     ; 5D1D _ 8B. 45, F8
        mov     dword [eax+84H], 0                      ; 5D20 _ C7. 80, 00000084, 00000000
        mov     eax, dword [ebp-8H]                     ; 5D2A _ 8B. 45, F8
        mov     dword [eax+88H], 0                      ; 5D2D _ C7. 80, 00000088, 00000000
        mov     eax, dword [ebp-8H]                     ; 5D37 _ 8B. 45, F8
        mov     dword [eax+34H], 0                      ; 5D3A _ C7. 40, 34, 00000000
        mov     eax, dword [ebp-8H]                     ; 5D41 _ 8B. 45, F8
        mov     dword [eax+8CH], 0                      ; 5D44 _ C7. 80, 0000008C, 00000000
        mov     eax, dword [ebp-8H]                     ; 5D4E _ 8B. 45, F8
        mov     dword [eax+90H], 1073741824             ; 5D51 _ C7. 80, 00000090, 40000000
        mov     eax, dword [ebp-8H]                     ; 5D5B _ 8B. 45, F8
        jmp     ?_353                                   ; 5D5E _ EB, 13

?_351:  add     dword [ebp-4H], 1                       ; 5D60 _ 83. 45, FC, 01
?_352:  cmp     dword [ebp-4H], 9                       ; 5D64 _ 83. 7D, FC, 09
        jle     ?_350                                   ; 5D68 _ 0F 8E, FFFFFEF1
        mov     eax, 0                                  ; 5D6E _ B8, 00000000
?_353:  leave                                           ; 5D73 _ C9
        ret                                             ; 5D74 _ C3
; _task_alloc End of function

_task_run:; Function begin
        push    ebp                                     ; 5D75 _ 55
        mov     ebp, esp                                ; 5D76 _ 89. E5
        sub     esp, 24                                 ; 5D78 _ 83. EC, 18
        cmp     dword [ebp+0CH], 0                      ; 5D7B _ 83. 7D, 0C, 00
        jns     ?_354                                   ; 5D7F _ 79, 09
        mov     eax, dword [ebp+8H]                     ; 5D81 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 5D84 _ 8B. 40, 0C
        mov     dword [ebp+0CH], eax                    ; 5D87 _ 89. 45, 0C
?_354:  cmp     dword [ebp+10H], 0                      ; 5D8A _ 83. 7D, 10, 00
        jle     ?_355                                   ; 5D8E _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 5D90 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 5D93 _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 5D96 _ 89. 50, 08
?_355:  mov     eax, dword [ebp+8H]                     ; 5D99 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 5D9C _ 8B. 40, 04
        cmp     eax, 2                                  ; 5D9F _ 83. F8, 02
        jnz     ?_356                                   ; 5DA2 _ 75, 16
        mov     eax, dword [ebp+8H]                     ; 5DA4 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 5DA7 _ 8B. 40, 0C
        cmp     dword [ebp+0CH], eax                    ; 5DAA _ 39. 45, 0C
        jz      ?_356                                   ; 5DAD _ 74, 0B
        mov     eax, dword [ebp+8H]                     ; 5DAF _ 8B. 45, 08
        mov     dword [esp], eax                        ; 5DB2 _ 89. 04 24
        call    _task_remove                            ; 5DB5 _ E8, 000001FD
?_356:  mov     eax, dword [ebp+8H]                     ; 5DBA _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 5DBD _ 8B. 40, 04
        cmp     eax, 2                                  ; 5DC0 _ 83. F8, 02
        jz      ?_357                                   ; 5DC3 _ 74, 14
        mov     eax, dword [ebp+8H]                     ; 5DC5 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 5DC8 _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 5DCB _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 5DCE _ 8B. 45, 08
        mov     dword [esp], eax                        ; 5DD1 _ 89. 04 24
        call    _task_add                               ; 5DD4 _ E8, 00000192
?_357:  mov     eax, dword [_taskctl]                   ; 5DD9 _ A1, 00000004(d)
        mov     dword [eax+4H], 1                       ; 5DDE _ C7. 40, 04, 00000001
        nop                                             ; 5DE5 _ 90
        leave                                           ; 5DE6 _ C9
        ret                                             ; 5DE7 _ C3
; _task_run End of function

_task_switch:; Function begin
        push    ebp                                     ; 5DE8 _ 55
        mov     ebp, esp                                ; 5DE9 _ 89. E5
        sub     esp, 40                                 ; 5DEB _ 83. EC, 28
        mov     ecx, dword [_taskctl]                   ; 5DEE _ 8B. 0D, 00000004(d)
        mov     eax, dword [_taskctl]                   ; 5DF4 _ A1, 00000004(d)
        mov     edx, dword [eax]                        ; 5DF9 _ 8B. 10
        mov     eax, edx                                ; 5DFB _ 89. D0
        add     eax, eax                                ; 5DFD _ 01. C0
        add     eax, edx                                ; 5DFF _ 01. D0
        shl     eax, 4                                  ; 5E01 _ C1. E0, 04
        add     eax, ecx                                ; 5E04 _ 01. C8
        add     eax, 8                                  ; 5E06 _ 83. C0, 08
        mov     dword [ebp-0CH], eax                    ; 5E09 _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 5E0C _ 8B. 45, F4
        mov     edx, dword [eax+4H]                     ; 5E0F _ 8B. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 5E12 _ 8B. 45, F4
        mov     eax, dword [eax+edx*4+8H]               ; 5E15 _ 8B. 44 90, 08
        mov     dword [ebp-10H], eax                    ; 5E19 _ 89. 45, F0
        mov     eax, dword [ebp-0CH]                    ; 5E1C _ 8B. 45, F4
        mov     eax, dword [eax+4H]                     ; 5E1F _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 5E22 _ 8D. 50, 01
        mov     eax, dword [ebp-0CH]                    ; 5E25 _ 8B. 45, F4
        mov     dword [eax+4H], edx                     ; 5E28 _ 89. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 5E2B _ 8B. 45, F4
        mov     edx, dword [eax+4H]                     ; 5E2E _ 8B. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 5E31 _ 8B. 45, F4
        mov     eax, dword [eax]                        ; 5E34 _ 8B. 00
        cmp     edx, eax                                ; 5E36 _ 39. C2
        jnz     ?_358                                   ; 5E38 _ 75, 0A
        mov     eax, dword [ebp-0CH]                    ; 5E3A _ 8B. 45, F4
        mov     dword [eax+4H], 0                       ; 5E3D _ C7. 40, 04, 00000000
?_358:  mov     eax, dword [_taskctl]                   ; 5E44 _ A1, 00000004(d)
        mov     eax, dword [eax+4H]                     ; 5E49 _ 8B. 40, 04
        test    eax, eax                                ; 5E4C _ 85. C0
        jz      ?_359                                   ; 5E4E _ 74, 23
        call    _task_switchsub                         ; 5E50 _ E8, 0000022F
        mov     ecx, dword [_taskctl]                   ; 5E55 _ 8B. 0D, 00000004(d)
        mov     eax, dword [_taskctl]                   ; 5E5B _ A1, 00000004(d)
        mov     edx, dword [eax]                        ; 5E60 _ 8B. 10
        mov     eax, edx                                ; 5E62 _ 89. D0
        add     eax, eax                                ; 5E64 _ 01. C0
        add     eax, edx                                ; 5E66 _ 01. D0
        shl     eax, 4                                  ; 5E68 _ C1. E0, 04
        add     eax, ecx                                ; 5E6B _ 01. C8
        add     eax, 8                                  ; 5E6D _ 83. C0, 08
        mov     dword [ebp-0CH], eax                    ; 5E70 _ 89. 45, F4
?_359:  mov     eax, dword [ebp-0CH]                    ; 5E73 _ 8B. 45, F4
        mov     edx, dword [eax+4H]                     ; 5E76 _ 8B. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 5E79 _ 8B. 45, F4
        mov     eax, dword [eax+edx*4+8H]               ; 5E7C _ 8B. 44 90, 08
        mov     dword [ebp-14H], eax                    ; 5E80 _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 5E83 _ 8B. 45, EC
        mov     eax, dword [eax+8H]                     ; 5E86 _ 8B. 40, 08
        mov     edx, eax                                ; 5E89 _ 89. C2
        mov     eax, dword [_task_timer]                       ; 5E8B _ A1, 00000000(d)
        mov     dword [esp+4H], edx                     ; 5E90 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 5E94 _ 89. 04 24
        call    _timer_settime                          ; 5E97 _ E8, 00000000(rel)
        mov     eax, dword [ebp-14H]                    ; 5E9C _ 8B. 45, EC
        cmp     eax, dword [ebp-10H]                    ; 5E9F _ 3B. 45, F0
        jz      ?_360                                   ; 5EA2 _ 74, 1C
        cmp     dword [ebp-14H], 0                      ; 5EA4 _ 83. 7D, EC, 00
        jz      ?_360                                   ; 5EA8 _ 74, 16
        mov     eax, dword [ebp-14H]                    ; 5EAA _ 8B. 45, EC
        mov     eax, dword [eax]                        ; 5EAD _ 8B. 00
        mov     dword [esp+4H], eax                     ; 5EAF _ 89. 44 24, 04
        mov     dword [esp], 0                          ; 5EB3 _ C7. 04 24, 00000000
        call    _farjmp                                 ; 5EBA _ E8, 00000000(rel)
        nop                                             ; 5EBF _ 90
?_360:  nop                                             ; 5EC0 _ 90
        leave                                           ; 5EC1 _ C9
        ret                                             ; 5EC2 _ C3
; _task_switch End of function

_task_sleep:; Function begin
        push    ebp                                     ; 5EC3 _ 55
        mov     ebp, esp                                ; 5EC4 _ 89. E5
        sub     esp, 40                                 ; 5EC6 _ 83. EC, 28
        mov     dword [ebp-10H], 0                      ; 5EC9 _ C7. 45, F0, 00000000
        mov     dword [ebp-0CH], 0                      ; 5ED0 _ C7. 45, F4, 00000000
        mov     eax, dword [ebp+8H]                     ; 5ED7 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 5EDA _ 8B. 40, 04
        cmp     eax, 2                                  ; 5EDD _ 83. F8, 02
        jnz     ?_361                                   ; 5EE0 _ 75, 51
        call    _task_now                               ; 5EE2 _ E8, 00000051
        mov     dword [ebp-10H], eax                    ; 5EE7 _ 89. 45, F0
        mov     eax, dword [ebp+8H]                     ; 5EEA _ 8B. 45, 08
        mov     dword [esp], eax                        ; 5EED _ 89. 04 24
        call    _task_remove                            ; 5EF0 _ E8, 000000C2
        mov     dword [ebp-0CH], 1                      ; 5EF5 _ C7. 45, F4, 00000001
        mov     eax, dword [ebp+8H]                     ; 5EFC _ 8B. 45, 08
        cmp     eax, dword [ebp-10H]                    ; 5EFF _ 3B. 45, F0
        jnz     ?_361                                   ; 5F02 _ 75, 2F
        call    _task_switchsub                         ; 5F04 _ E8, 0000017B
        call    _task_now                               ; 5F09 _ E8, 0000002A
        mov     dword [ebp-10H], eax                    ; 5F0E _ 89. 45, F0
        mov     dword [ebp-0CH], 2                      ; 5F11 _ C7. 45, F4, 00000002
        cmp     dword [ebp-10H], 0                      ; 5F18 _ 83. 7D, F0, 00
        jz      ?_361                                   ; 5F1C _ 74, 15
        mov     eax, dword [ebp-10H]                    ; 5F1E _ 8B. 45, F0
        mov     eax, dword [eax]                        ; 5F21 _ 8B. 00
        mov     dword [esp+4H], eax                     ; 5F23 _ 89. 44 24, 04
        mov     dword [esp], 0                          ; 5F27 _ C7. 04 24, 00000000
        call    _farjmp                                 ; 5F2E _ E8, 00000000(rel)
?_361:  mov     eax, dword [ebp-0CH]                    ; 5F33 _ 8B. 45, F4
        leave                                           ; 5F36 _ C9
        ret                                             ; 5F37 _ C3
; _task_sleep End of function

_task_now:; Function begin
        push    ebp                                     ; 5F38 _ 55
        mov     ebp, esp                                ; 5F39 _ 89. E5
        sub     esp, 16                                 ; 5F3B _ 83. EC, 10
        mov     ecx, dword [_taskctl]                   ; 5F3E _ 8B. 0D, 00000004(d)
        mov     eax, dword [_taskctl]                   ; 5F44 _ A1, 00000004(d)
        mov     edx, dword [eax]                        ; 5F49 _ 8B. 10
        mov     eax, edx                                ; 5F4B _ 89. D0
        add     eax, eax                                ; 5F4D _ 01. C0
        add     eax, edx                                ; 5F4F _ 01. D0
        shl     eax, 4                                  ; 5F51 _ C1. E0, 04
        add     eax, ecx                                ; 5F54 _ 01. C8
        add     eax, 8                                  ; 5F56 _ 83. C0, 08
        mov     dword [ebp-4H], eax                     ; 5F59 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 5F5C _ 8B. 45, FC
        mov     edx, dword [eax+4H]                     ; 5F5F _ 8B. 50, 04
        mov     eax, dword [ebp-4H]                     ; 5F62 _ 8B. 45, FC
        mov     eax, dword [eax+edx*4+8H]               ; 5F65 _ 8B. 44 90, 08
        leave                                           ; 5F69 _ C9
        ret                                             ; 5F6A _ C3
; _task_now End of function

_task_add:; Function begin
        push    ebp                                     ; 5F6B _ 55
        mov     ebp, esp                                ; 5F6C _ 89. E5
        sub     esp, 16                                 ; 5F6E _ 83. EC, 10
        mov     ecx, dword [_taskctl]                   ; 5F71 _ 8B. 0D, 00000004(d)
        mov     eax, dword [ebp+8H]                     ; 5F77 _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 5F7A _ 8B. 50, 0C
        mov     eax, edx                                ; 5F7D _ 89. D0
        add     eax, eax                                ; 5F7F _ 01. C0
        add     eax, edx                                ; 5F81 _ 01. D0
        shl     eax, 4                                  ; 5F83 _ C1. E0, 04
        add     eax, ecx                                ; 5F86 _ 01. C8
        add     eax, 8                                  ; 5F88 _ 83. C0, 08
        mov     dword [ebp-4H], eax                     ; 5F8B _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 5F8E _ 8B. 45, FC
        mov     edx, dword [eax]                        ; 5F91 _ 8B. 10
        mov     eax, dword [ebp-4H]                     ; 5F93 _ 8B. 45, FC
        mov     ecx, dword [ebp+8H]                     ; 5F96 _ 8B. 4D, 08
        mov     dword [eax+edx*4+8H], ecx               ; 5F99 _ 89. 4C 90, 08
        mov     eax, dword [ebp-4H]                     ; 5F9D _ 8B. 45, FC
        mov     eax, dword [eax]                        ; 5FA0 _ 8B. 00
        lea     edx, [eax+1H]                           ; 5FA2 _ 8D. 50, 01
        mov     eax, dword [ebp-4H]                     ; 5FA5 _ 8B. 45, FC
        mov     dword [eax], edx                        ; 5FA8 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 5FAA _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 5FAD _ C7. 40, 04, 00000002
        nop                                             ; 5FB4 _ 90
        leave                                           ; 5FB5 _ C9
        ret                                             ; 5FB6 _ C3
; _task_add End of function

_task_remove:; Function begin
        push    ebp                                     ; 5FB7 _ 55
        mov     ebp, esp                                ; 5FB8 _ 89. E5
        sub     esp, 16                                 ; 5FBA _ 83. EC, 10
        mov     ecx, dword [_taskctl]                   ; 5FBD _ 8B. 0D, 00000004(d)
        mov     eax, dword [ebp+8H]                     ; 5FC3 _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 5FC6 _ 8B. 50, 0C
        mov     eax, edx                                ; 5FC9 _ 89. D0
        add     eax, eax                                ; 5FCB _ 01. C0
        add     eax, edx                                ; 5FCD _ 01. D0
        shl     eax, 4                                  ; 5FCF _ C1. E0, 04
        add     eax, ecx                                ; 5FD2 _ 01. C8
        add     eax, 8                                  ; 5FD4 _ 83. C0, 08
        mov     dword [ebp-8H], eax                     ; 5FD7 _ 89. 45, F8
        mov     dword [ebp-4H], 0                       ; 5FDA _ C7. 45, FC, 00000000
        jmp     ?_364                                   ; 5FE1 _ EB, 23

?_362:  mov     eax, dword [ebp-8H]                     ; 5FE3 _ 8B. 45, F8
        mov     edx, dword [ebp-4H]                     ; 5FE6 _ 8B. 55, FC
        mov     eax, dword [eax+edx*4+8H]               ; 5FE9 _ 8B. 44 90, 08
        cmp     dword [ebp+8H], eax                     ; 5FED _ 39. 45, 08
        jnz     ?_363                                   ; 5FF0 _ 75, 10
        mov     eax, dword [ebp-8H]                     ; 5FF2 _ 8B. 45, F8
        mov     edx, dword [ebp-4H]                     ; 5FF5 _ 8B. 55, FC
        mov     dword [eax+edx*4+8H], 0                 ; 5FF8 _ C7. 44 90, 08, 00000000
        jmp     ?_365                                   ; 6000 _ EB, 0E

?_363:  add     dword [ebp-4H], 1                       ; 6002 _ 83. 45, FC, 01
?_364:  mov     eax, dword [ebp-8H]                     ; 6006 _ 8B. 45, F8
        mov     eax, dword [eax]                        ; 6009 _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 600B _ 39. 45, FC
        jl      ?_362                                   ; 600E _ 7C, D3
?_365:  mov     eax, dword [ebp-8H]                     ; 6010 _ 8B. 45, F8
        mov     eax, dword [eax]                        ; 6013 _ 8B. 00
        lea     edx, [eax-1H]                           ; 6015 _ 8D. 50, FF
        mov     eax, dword [ebp-8H]                     ; 6018 _ 8B. 45, F8
        mov     dword [eax], edx                        ; 601B _ 89. 10
        mov     eax, dword [ebp-8H]                     ; 601D _ 8B. 45, F8
        mov     eax, dword [eax+4H]                     ; 6020 _ 8B. 40, 04
        cmp     dword [ebp-4H], eax                     ; 6023 _ 39. 45, FC
        jge     ?_366                                   ; 6026 _ 7D, 0F
        mov     eax, dword [ebp-8H]                     ; 6028 _ 8B. 45, F8
        mov     eax, dword [eax+4H]                     ; 602B _ 8B. 40, 04
        lea     edx, [eax-1H]                           ; 602E _ 8D. 50, FF
        mov     eax, dword [ebp-8H]                     ; 6031 _ 8B. 45, F8
        mov     dword [eax+4H], edx                     ; 6034 _ 89. 50, 04
?_366:  mov     eax, dword [ebp-8H]                     ; 6037 _ 8B. 45, F8
        mov     edx, dword [eax+4H]                     ; 603A _ 8B. 50, 04
        mov     eax, dword [ebp-8H]                     ; 603D _ 8B. 45, F8
        mov     eax, dword [eax]                        ; 6040 _ 8B. 00
        cmp     edx, eax                                ; 6042 _ 39. C2
        jl      ?_367                                   ; 6044 _ 7C, 0A
        mov     eax, dword [ebp-8H]                     ; 6046 _ 8B. 45, F8
        mov     dword [eax+4H], 0                       ; 6049 _ C7. 40, 04, 00000000
?_367:  mov     eax, dword [ebp+8H]                     ; 6050 _ 8B. 45, 08
        mov     dword [eax+4H], 1                       ; 6053 _ C7. 40, 04, 00000001
        jmp     ?_369                                   ; 605A _ EB, 1B

?_368:  mov     eax, dword [ebp-4H]                     ; 605C _ 8B. 45, FC
        lea     edx, [eax+1H]                           ; 605F _ 8D. 50, 01
        mov     eax, dword [ebp-8H]                     ; 6062 _ 8B. 45, F8
        mov     ecx, dword [eax+edx*4+8H]               ; 6065 _ 8B. 4C 90, 08
        mov     eax, dword [ebp-8H]                     ; 6069 _ 8B. 45, F8
        mov     edx, dword [ebp-4H]                     ; 606C _ 8B. 55, FC
        mov     dword [eax+edx*4+8H], ecx               ; 606F _ 89. 4C 90, 08
        add     dword [ebp-4H], 1                       ; 6073 _ 83. 45, FC, 01
?_369:  mov     eax, dword [ebp-8H]                     ; 6077 _ 8B. 45, F8
        mov     eax, dword [eax]                        ; 607A _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 607C _ 39. 45, FC
        jl      ?_368                                   ; 607F _ 7C, DB
        nop                                             ; 6081 _ 90
        leave                                           ; 6082 _ C9
        ret                                             ; 6083 _ C3
; _task_remove End of function

_task_switchsub:; Function begin
        push    ebp                                     ; 6084 _ 55
        mov     ebp, esp                                ; 6085 _ 89. E5
        sub     esp, 16                                 ; 6087 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 608A _ C7. 45, FC, 00000000
        jmp     ?_371                                   ; 6091 _ EB, 21

?_370:  mov     ecx, dword [_taskctl]                   ; 6093 _ 8B. 0D, 00000004(d)
        mov     edx, dword [ebp-4H]                     ; 6099 _ 8B. 55, FC
        mov     eax, edx                                ; 609C _ 89. D0
        add     eax, eax                                ; 609E _ 01. C0
        add     eax, edx                                ; 60A0 _ 01. D0
        shl     eax, 4                                  ; 60A2 _ C1. E0, 04
        add     eax, ecx                                ; 60A5 _ 01. C8
        add     eax, 8                                  ; 60A7 _ 83. C0, 08
        mov     eax, dword [eax]                        ; 60AA _ 8B. 00
        test    eax, eax                                ; 60AC _ 85. C0
        jg      ?_372                                   ; 60AE _ 7F, 0C
        add     dword [ebp-4H], 1                       ; 60B0 _ 83. 45, FC, 01
?_371:  cmp     dword [ebp-4H], 9                       ; 60B4 _ 83. 7D, FC, 09
        jle     ?_370                                   ; 60B8 _ 7E, D9
        jmp     ?_373                                   ; 60BA _ EB, 01

?_372:  nop                                             ; 60BC _ 90
?_373:  mov     eax, dword [_taskctl]                   ; 60BD _ A1, 00000004(d)
        mov     edx, dword [ebp-4H]                     ; 60C2 _ 8B. 55, FC
        mov     dword [eax], edx                        ; 60C5 _ 89. 10
        mov     eax, dword [_taskctl]                   ; 60C7 _ A1, 00000004(d)
        mov     dword [eax+4H], 0                       ; 60CC _ C7. 40, 04, 00000000
        nop                                             ; 60D3 _ 90
        leave                                           ; 60D4 _ C9
        ret                                             ; 60D5 _ C3
; _task_switchsub End of function

_send_message:; Function begin
        push    ebp                                     ; 60D6 _ 55
        mov     ebp, esp                                ; 60D7 _ 89. E5
        sub     esp, 24                                 ; 60D9 _ 83. EC, 18
        mov     eax, dword [ebp+10H]                    ; 60DC _ 8B. 45, 10
        movzx   eax, al                                 ; 60DF _ 0F B6. C0
        mov     edx, dword [ebp+0CH]                    ; 60E2 _ 8B. 55, 0C
        add     edx, 16                                 ; 60E5 _ 83. C2, 10
        mov     dword [esp+4H], eax                     ; 60E8 _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 60EC _ 89. 14 24
        call    _fifo8_put                              ; 60EF _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 60F4 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 60F7 _ 89. 04 24
        call    _task_sleep                             ; 60FA _ E8, FFFFFDC4
        nop                                             ; 60FF _ 90
        leave                                           ; 6100 _ C9
        ret                                             ; 6101 _ C3
; _send_message End of function

        nop                                             ; 6102 _ 90
        nop                                             ; 6103 _ 90


_strcmp:
        push    ebp                                     ; 6104 _ 55
        mov     ebp, esp                                ; 6105 _ 89. E5
        sub     esp, 16                                 ; 6107 _ 83. EC, 10
        cmp     dword [ebp+8H], 0                       ; 610A _ 83. 7D, 08, 00
        jz      ?_374                                   ; 610E _ 74, 06
        cmp     dword [ebp+0CH], 0                      ; 6110 _ 83. 7D, 0C, 00
        jnz     ?_375                                   ; 6114 _ 75, 0A
?_374:  mov     eax, 0                                  ; 6116 _ B8, 00000000
        jmp     ?_382                                   ; 611B _ E9, 0000009B

?_375:  mov     dword [ebp-4H], 0                       ; 6120 _ C7. 45, FC, 00000000
        jmp     ?_378                                   ; 6127 _ EB, 25

?_376:  mov     edx, dword [ebp-4H]                     ; 6129 _ 8B. 55, FC
        mov     eax, dword [ebp+8H]                     ; 612C _ 8B. 45, 08
        add     eax, edx                                ; 612F _ 01. D0
        movzx   edx, byte [eax]                         ; 6131 _ 0F B6. 10
        mov     ecx, dword [ebp-4H]                     ; 6134 _ 8B. 4D, FC
        mov     eax, dword [ebp+0CH]                    ; 6137 _ 8B. 45, 0C
        add     eax, ecx                                ; 613A _ 01. C8
        movzx   eax, byte [eax]                         ; 613C _ 0F B6. 00
        cmp     dl, al                                  ; 613F _ 38. C2
        jz      ?_377                                   ; 6141 _ 74, 07
        mov     eax, 0                                  ; 6143 _ B8, 00000000
        jmp     ?_382                                   ; 6148 _ EB, 71

?_377:  add     dword [ebp-4H], 1                       ; 614A _ 83. 45, FC, 01
?_378:  mov     edx, dword [ebp-4H]                     ; 614E _ 8B. 55, FC
        mov     eax, dword [ebp+8H]                     ; 6151 _ 8B. 45, 08
        add     eax, edx                                ; 6154 _ 01. D0
        movzx   eax, byte [eax]                         ; 6156 _ 0F B6. 00
        test    al, al                                  ; 6159 _ 84. C0
        jz      ?_379                                   ; 615B _ 74, 0F
        mov     edx, dword [ebp-4H]                     ; 615D _ 8B. 55, FC
        mov     eax, dword [ebp+0CH]                    ; 6160 _ 8B. 45, 0C
        add     eax, edx                                ; 6163 _ 01. D0
        movzx   eax, byte [eax]                         ; 6165 _ 0F B6. 00
        test    al, al                                  ; 6168 _ 84. C0
        jnz     ?_376                                   ; 616A _ 75, BD
?_379:  mov     edx, dword [ebp-4H]                     ; 616C _ 8B. 55, FC
        mov     eax, dword [ebp+8H]                     ; 616F _ 8B. 45, 08
        add     eax, edx                                ; 6172 _ 01. D0
        movzx   eax, byte [eax]                         ; 6174 _ 0F B6. 00
        test    al, al                                  ; 6177 _ 84. C0
        jnz     ?_380                                   ; 6179 _ 75, 16
        mov     edx, dword [ebp-4H]                     ; 617B _ 8B. 55, FC
        mov     eax, dword [ebp+0CH]                    ; 617E _ 8B. 45, 0C
        add     eax, edx                                ; 6181 _ 01. D0
        movzx   eax, byte [eax]                         ; 6183 _ 0F B6. 00
        test    al, al                                  ; 6186 _ 84. C0
        jz      ?_380                                   ; 6188 _ 74, 07
        mov     eax, 0                                  ; 618A _ B8, 00000000
        jmp     ?_382                                   ; 618F _ EB, 2A

?_380:  mov     edx, dword [ebp-4H]                     ; 6191 _ 8B. 55, FC
        mov     eax, dword [ebp+8H]                     ; 6194 _ 8B. 45, 08
        add     eax, edx                                ; 6197 _ 01. D0
        movzx   eax, byte [eax]                         ; 6199 _ 0F B6. 00
        test    al, al                                  ; 619C _ 84. C0
        jz      ?_381                                   ; 619E _ 74, 16
        mov     edx, dword [ebp-4H]                     ; 61A0 _ 8B. 55, FC
        mov     eax, dword [ebp+0CH]                    ; 61A3 _ 8B. 45, 0C
        add     eax, edx                                ; 61A6 _ 01. D0
        movzx   eax, byte [eax]                         ; 61A8 _ 0F B6. 00
        test    al, al                                  ; 61AB _ 84. C0
        jz      ?_381                                   ; 61AD _ 74, 07
        mov     eax, 0                                  ; 61AF _ B8, 00000000
        jmp     ?_382                                   ; 61B4 _ EB, 05

?_381:  mov     eax, 1                                  ; 61B6 _ B8, 00000001
?_382:  leave                                           ; 61BB _ C9
        ret                                             ; 61BC _ C3

        nop                                             ; 61BD _ 90
        nop                                             ; 61BE _ 90
        nop                                             ; 61BF _ 90



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

?_383:  db 00H                                          ; 0112 _ .

?_384:  db 00H, 00H, 00H, 00H, 00H                      ; 0113 _ .....

_mmx:   dd 0FFFFFFFFH                                   ; 0118 _ -1 

_mmy:   dd 0FFFFFFFFH                                   ; 011C _ -1 

_KEY_CONTROL:                                           ; byte
        db 1DH, 00H, 00H, 00H                           ; 0120 _ ....

_show_console_window:                                   ; dword
        dd 00000001H, 00000000H                         ; 0124 _ 1 0 
        dd 00000000H, 00000000H                         ; 012C _ 0 0 
        dd 00000000H, 00000000H                         ; 0134 _ 0 0 
        dd 00000000H                                    ; 013C _ 0 

_table_rgb.2646:                                        ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0140 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0148 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0150 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0158 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 0160 _ ........
        db 00H, 84H, 00H, 84H, 84H, 84H, 84H, 84H       ; 0168 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0170 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0178 _ ........

_cursor.2706:                                           ; byte
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

_closebtn.2825:                                         ; byte
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


?_385:                                                  
        db 63H, 6FH, 75H, 6EH, 74H, 65H, 72H, 00H       ; 0000 _ counter.

?_386:                                                  ; byte
        db 74H, 61H, 73H, 6BH, 5FH, 61H, 00H            ; 0008 _ task_a.

?_387:                                                  ; byte
        db 63H, 6FH, 6EH, 73H, 6FH, 6CH, 65H, 00H       ; 000F _ console.

?_388:                                                  ; byte
        db 20H, 00H                                     ; 0017 _  .

?_389:                                                  ; byte
        db 66H, 72H, 65H, 65H, 20H, 00H                 ; 0019 _ free .

?_390:                                                  ; byte
        db 20H, 4BH, 42H, 00H                           ; 001F _  KB.

?_391:                                                  ; byte
        db 3EH, 00H                                     ; 0023 _ >.

?_392:                                                  ; byte
        db 61H, 62H, 63H, 2EH, 65H, 78H, 65H, 00H       ; 0025 _ abc.exe.

?_393:                                                  ; byte
        db 6DH, 65H, 6DH, 00H                           ; 002D _ mem.

?_394:                                                  ; byte
        db 63H, 6CH, 73H, 00H                           ; 0031 _ cls.

?_395:                                                  ; byte
        db 68H, 6CH, 74H, 00H                           ; 0035 _ hlt.

?_396:                                                  ; byte
        db 64H, 69H, 72H, 00H                           ; 0039 _ dir.

?_397:                                                  ; byte
        db 65H, 78H, 69H, 74H, 00H                      ; 003D _ exit.

?_398:                                                  ; byte
        db 73H, 74H, 61H, 72H, 74H, 00H                 ; 0042 _ start.

?_399:                                                  ; byte
        db 6EH, 63H, 73H, 74H, 00H                      ; 0048 _ ncst.

?_400:                                                  ; byte
        db 6BH, 65H, 79H, 62H, 6FH, 61H, 72H, 64H       ; 004D _ keyboard
        db 00H                                          ; 0055 _ .

?_401:                                                  ; byte
        db 75H, 73H, 65H, 72H, 20H, 70H, 72H, 6FH       ; 0056 _ user pro
        db 63H, 00H                                     ; 005E _ c.

?_402:                                                  ; byte
        db 70H, 61H, 67H, 65H, 20H, 69H, 73H, 3AH       ; 0060 _ page is:
        db 20H, 00H                                     ; 0068 _  .

?_403:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 006A _ BaseAddr
        db 4CH, 3AH, 20H, 00H                           ; 0072 _ L: .

?_404:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0076 _ BaseAddr
        db 48H, 3AH, 20H, 00H                           ; 007E _ H: .

?_405:                                                  ; byte
        db 6CH, 65H, 6EH, 67H, 74H, 68H, 4CH, 6FH       ; 0082 _ lengthLo
        db 77H, 3AH, 20H, 00H                           ; 008A _ w: .

?_406:                                                  ; byte
        db 49H, 4EH, 54H, 20H, 4FH, 43H, 00H            ; 008E _ INT OC.

?_407:                                                  ; byte
        db 53H, 74H, 61H, 63H, 6BH, 20H, 45H, 78H       ; 0095 _ Stack Ex
        db 63H, 65H, 70H, 74H, 69H, 6FH, 6EH, 00H       ; 009D _ ception.

?_408:                                                  ; byte
        db 45H, 49H, 50H, 20H, 3DH, 20H, 00H            ; 00A5 _ EIP = .

?_409:                                                  ; byte
        db 49H, 4EH, 54H, 20H, 30H, 44H, 20H, 00H       ; 00AC _ INT 0D .

?_410:                                                  ; byte
        db 47H, 65H, 6EH, 65H, 72H, 61H, 6CH, 20H       ; 00B4 _ General 
        db 50H, 72H, 6FH, 74H, 65H, 63H, 74H, 65H       ; 00BC _ Protecte
        db 64H, 20H, 45H, 78H, 63H, 65H, 70H, 74H       ; 00C4 _ d Except
        db 69H, 6FH, 6EH, 00H                           ; 00CC _ ion.


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

_bootInfo:                                              ; dword
        resd    1                                       ; 0014

?_411:  resw    1                                       ; 0018

?_412:  resw    1                                       ; 001A

_keyinfo:                                               ; byte
        resb    24                                      ; 001C

?_413:  resd    1                                       ; 0034

_mouseinfo:                                             ; byte
        resb    40                                      ; 0038

_keybuf:                                                ; byte
        resb    32                                      ; 0060

_mousebuf:                                              ; byte
        resb    128                                     ; 0080

_mdec:                                                  ; byte
        resb    12                                      ; 0100

?_414:  resd    1                                       ; 010C

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

_task_a.2368:                                           ; dword
        resd    1                                       ; 027C

_tss_a.2367:                                            ; byte
        resb    128                                     ; 0280

_tss_b.2366:                                            ; byte
        resb    104                                     ; 0300

_task_b.2356:                                           ; byte
        resb    12                                      ; 0368

_str.2754:                                              ; byte
        resb    1                                       ; 0374

?_415:  resb    9                                       ; 0375

?_416:  resb    2                                       ; 037E

_timerctl:                                              ; byte
        resb    8032                                    ; 0380

_task_timer:                                            ; byte
        resb    4                                       ; 22E0

_taskctl:                                               ; byte
        resb    4                                       ; 22E4


