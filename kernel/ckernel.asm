; Disassembly of file: ckernel.o
; Thu Aug 15 10:45:03 2019
; Mode: 32 bits
; Syntax: YASM/NASM
; Instruction set: Pentium Pro







_launch:
        push    ebp                                     ; 0000 _ 55
        mov     ebp, esp                                ; 0001 _ 89. E5
        push    ebx                                     ; 0003 _ 53
        sub     esp, 132                                ; 0004 _ 81. EC, 00000084
        mov     dword [esp], _bootInfo                  ; 000A _ C7. 04 24, 0000027C(d)
        call    _initBootInfo                           ; 0011 _ E8, 00003648
        mov     eax, dword [_bootInfo]                  ; 0016 _ A1, 0000027C(d)
        mov     dword [ebp-18H], eax                    ; 001B _ 89. 45, E8
        movzx   eax, word [?_439]                       ; 001E _ 0F B7. 05, 00000280(d)
        cwde                                            ; 0025 _ 98
        mov     dword [_xsize], eax                     ; 0026 _ A3, 0000013C(d)
        movzx   eax, word [?_440]                       ; 002B _ 0F B7. 05, 00000282(d)
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
        mov     dword [esp], _keyinfo                   ; 011B _ C7. 04 24, 00000014(d)
        call    _fifo8_init                             ; 0122 _ E8, 00000000(rel)
        mov     dword [esp+0CH], 0                      ; 0127 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], _mousebuf               ; 012F _ C7. 44 24, 08, 00000080(d)
        mov     dword [esp+4H], 128                     ; 0137 _ C7. 44 24, 04, 00000080
        mov     dword [esp], _mouseinfo                 ; 013F _ C7. 04 24, 00000030(d)
        call    _fifo8_init                             ; 0146 _ E8, 00000000(rel)
        call    _init_palette                           ; 014B _ E8, 0000352F
        call    _init_keyboard                          ; 0150 _ E8, 00003B70
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
        call    _init_screen8                           ; 0281 _ E8, 00002B21
        mov     dword [esp+4H], 99                      ; 0286 _ C7. 44 24, 04, 00000063
        mov     dword [esp], _buf_mouse                 ; 028E _ C7. 04 24, 00000160(d)
        call    _init_mouse_cursor                      ; 0295 _ E8, 000037BB
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
        mov     dword [esp+4H], ?_412                   ; 032B _ C7. 44 24, 04, 00000000(d)
        mov     dword [esp], eax                        ; 0333 _ 89. 04 24
        call    _message_box                            ; 0336 _ E8, 00003D61
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
        call    _enable_mouse                           ; 038A _ E8, 00003971
        mov     eax, dword [_memman]                    ; 038F _ A1, 00000000(d)
        mov     dword [esp], eax                        ; 0394 _ 89. 04 24
        call    _task_init                              ; 0397 _ E8, 00000000(rel)
        mov     dword [_task_a.2383], eax               ; 039C _ A3, 00000284(d)
        mov     eax, dword [_task_a.2383]               ; 03A1 _ A1, 00000284(d)
        mov     dword [?_437], eax                      ; 03A6 _ A3, 0000002C(d)
        mov     eax, dword [_task_a.2383]               ; 03AB _ A1, 00000284(d)
        mov     dword [_task_main], eax                 ; 03B0 _ A3, 00000274(d)
        mov     eax, dword [_task_a.2383]               ; 03B5 _ A1, 00000284(d)
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
?_001:  mov     dword [esp], _keyinfo                   ; 0466 _ C7. 04 24, 00000014(d)
        call    _fifo8_status                           ; 046D _ E8, 00000000(rel)
        mov     ebx, eax                                ; 0472 _ 89. C3
        mov     dword [esp], _mouseinfo                 ; 0474 _ C7. 04 24, 00000030(d)
        call    _fifo8_status                           ; 047B _ E8, 00000000(rel)
        add     ebx, eax                                ; 0480 _ 01. C3
        mov     dword [esp], _timerinfo                 ; 0482 _ C7. 04 24, 00000110(d)
        call    _fifo8_status                           ; 0489 _ E8, 00000000(rel)
        add     eax, ebx                                ; 048E _ 01. D8
        test    eax, eax                                ; 0490 _ 85. C0
        jnz     ?_002                                   ; 0492 _ 75, 0A
        call    _io_sti                                 ; 0494 _ E8, 00000000(rel)
        jmp     ?_014                                   ; 0499 _ E9, 00000413

?_002:  mov     dword [esp], _keyinfo                   ; 049E _ C7. 04 24, 00000014(d)
        call    _fifo8_status                           ; 04A5 _ E8, 00000000(rel)
        test    eax, eax                                ; 04AA _ 85. C0
        je      ?_013                                   ; 04AC _ 0F 84, 000003CE
        call    _io_sti                                 ; 04B2 _ E8, 00000000(rel)
        mov     dword [esp], _keyinfo                   ; 04B7 _ C7. 04 24, 00000014(d)
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
        call    _close_console                          ; 054C _ E8, 00001ED5
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
        mov     dword [esp+8H], ?_413                   ; 05E4 _ C7. 44 24, 08, 00000008(d)
        mov     dword [esp+4H], edx                     ; 05EC _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 05F0 _ 89. 04 24
        call    _make_wtitle8                           ; 05F3 _ E8, 00003E54
        mov     eax, dword [_current_console_task]      ; 05F8 _ A1, 00000278(d)
        test    eax, eax                                ; 05FD _ 85. C0
        jz      ?_008                                   ; 05FF _ 74, 2C
        mov     eax, dword [_current_console_task]      ; 0601 _ A1, 00000278(d)
        mov     edx, dword [eax+0B4H]                   ; 0606 _ 8B. 90, 000000B4
        mov     eax, dword [_shtctl]                    ; 060C _ A1, 00000264(d)
        mov     dword [esp+0CH], 1                      ; 0611 _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], ?_414                   ; 0619 _ C7. 44 24, 08, 0000000F(d)
        mov     dword [esp+4H], edx                     ; 0621 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0625 _ 89. 04 24
        call    _make_wtitle8                           ; 0628 _ E8, 00003E1F
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
        mov     dword [esp+8H], ?_413                   ; 0677 _ C7. 44 24, 08, 00000008(d)
        mov     dword [esp+4H], edx                     ; 067F _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0683 _ 89. 04 24
        call    _make_wtitle8                           ; 0686 _ E8, 00003DC1
        mov     eax, dword [_current_console_task]      ; 068B _ A1, 00000278(d)
        test    eax, eax                                ; 0690 _ 85. C0
        jz      ?_010                                   ; 0692 _ 74, 2C
        mov     eax, dword [_current_console_task]      ; 0694 _ A1, 00000278(d)
        mov     edx, dword [eax+0B4H]                   ; 0699 _ 8B. 90, 000000B4
        mov     eax, dword [_shtctl]                    ; 069F _ A1, 00000264(d)
        mov     dword [esp+0CH], 0                      ; 06A4 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], ?_414                   ; 06AC _ C7. 44 24, 08, 0000000F(d)
        mov     dword [esp+4H], edx                     ; 06B4 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 06B8 _ 89. 04 24
        call    _make_wtitle8                           ; 06BB _ E8, 00003D8C
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
        call    _showString                             ; 07EC _ E8, 000029C6
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
        mov     dword [esp], _keyinfo                   ; 0861 _ C7. 04 24, 00000014(d)
        call    _fifo8_status                           ; 0868 _ E8, 00000000(rel)
        test    eax, eax                                ; 086D _ 85. C0
        jnz     ?_014                                   ; 086F _ 75, 40
        mov     eax, dword [_task_a.2383]               ; 0871 _ A1, 00000284(d)
        mov     dword [esp], eax                        ; 0876 _ 89. 04 24
        call    _task_sleep                             ; 0879 _ E8, 00000000(rel)
        jmp     ?_014                                   ; 087E _ EB, 31

?_013:  mov     dword [esp], _mouseinfo                 ; 0880 _ C7. 04 24, 00000030(d)
        call    _fifo8_status                           ; 0887 _ E8, 00000000(rel)
        test    eax, eax                                ; 088C _ 85. C0
        jz      ?_014                                   ; 088E _ 74, 21
        mov     ecx, dword [_sht_mouse]                 ; 0890 _ 8B. 0D, 0000026C(d)
        mov     edx, dword [_sht_back]                  ; 0896 _ 8B. 15, 00000268(d)
        mov     eax, dword [_shtctl]                    ; 089C _ A1, 00000264(d)
        mov     dword [esp+8H], ecx                     ; 08A1 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 08A5 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 08A9 _ 89. 04 24
        call    _show_mouse_info                        ; 08AC _ E8, 000029C5
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
        call    _boxfill8                               ; 09EF _ E8, 00002E90
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
        sub     esp, 164                                ; 0BC5 _ 81. EC, 000000A4
        mov     dword [ebp-0CH], 0                      ; 0BCB _ C7. 45, F4, 00000000
        mov     eax, dword [_shtctl]                    ; 0BD2 _ A1, 00000264(d)
        mov     dword [esp], eax                        ; 0BD7 _ 89. 04 24
        call    _sheet_alloc                            ; 0BDA _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 0BDF _ 89. 45, F4
        mov     eax, dword [_memman]                    ; 0BE2 _ A1, 00000000(d)
        mov     dword [esp+4H], 42240                   ; 0BE7 _ C7. 44 24, 04, 0000A500
        mov     dword [esp], eax                        ; 0BEF _ 89. 04 24
        call    _memman_alloc_4k                        ; 0BF2 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 0BF7 _ 89. 45, F0
        mov     dword [esp+10H], 99                     ; 0BFA _ C7. 44 24, 10, 00000063
        mov     dword [esp+0CH], 165                    ; 0C02 _ C7. 44 24, 0C, 000000A5
        mov     dword [esp+8H], 256                     ; 0C0A _ C7. 44 24, 08, 00000100
        mov     eax, dword [ebp-10H]                    ; 0C12 _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 0C15 _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 0C19 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 0C1C _ 89. 04 24
        call    _sheet_setbuf                           ; 0C1F _ E8, 00000000(rel)
        cmp     dword [ebp+8H], 0                       ; 0C24 _ 83. 7D, 08, 00
        jle     ?_037                                   ; 0C28 _ 7E, 26
        mov     eax, dword [_shtctl]                    ; 0C2A _ A1, 00000264(d)
        mov     dword [esp+0CH], 1                      ; 0C2F _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], ?_414                   ; 0C37 _ C7. 44 24, 08, 0000000F(d)
        mov     edx, dword [ebp-0CH]                    ; 0C3F _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 0C42 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0C46 _ 89. 04 24
        call    _make_window8                           ; 0C49 _ E8, 00003539
        jmp     ?_038                                   ; 0C4E _ EB, 24

?_037:  mov     eax, dword [_shtctl]                    ; 0C50 _ A1, 00000264(d)
        mov     dword [esp+0CH], 0                      ; 0C55 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], ?_414                   ; 0C5D _ C7. 44 24, 08, 0000000F(d)
        mov     edx, dword [ebp-0CH]                    ; 0C65 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 0C68 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0C6C _ 89. 04 24
        call    _make_window8                           ; 0C6F _ E8, 00003513
?_038:  mov     eax, dword [ebp-0CH]                    ; 0C74 _ 8B. 45, F4
        mov     ecx, dword [eax+8H]                     ; 0C77 _ 8B. 48, 08
        mov     eax, dword [ebp-0CH]                    ; 0C7A _ 8B. 45, F4
        mov     edx, dword [eax+4H]                     ; 0C7D _ 8B. 50, 04
        mov     eax, dword [_shtctl]                    ; 0C80 _ A1, 00000264(d)
        mov     dword [esp+14H], ecx                    ; 0C85 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 0C89 _ 89. 54 24, 10
        mov     dword [esp+0CH], 0                      ; 0C8D _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 0C95 _ C7. 44 24, 08, 00000000
        mov     edx, dword [ebp-0CH]                    ; 0C9D _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 0CA0 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0CA4 _ 89. 04 24
        call    _sheet_refresh                          ; 0CA7 _ E8, 00000000(rel)
        mov     dword [esp+14H], 0                      ; 0CAC _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], 128                    ; 0CB4 _ C7. 44 24, 10, 00000080
        mov     dword [esp+0CH], 240                    ; 0CBC _ C7. 44 24, 0C, 000000F0
        mov     dword [esp+8H], 28                      ; 0CC4 _ C7. 44 24, 08, 0000001C
        mov     dword [esp+4H], 8                       ; 0CCC _ C7. 44 24, 04, 00000008
        mov     eax, dword [ebp-0CH]                    ; 0CD4 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 0CD7 _ 89. 04 24
        call    _make_textbox8                          ; 0CDA _ E8, 000038AB
        call    _task_alloc                             ; 0CDF _ E8, 00000000(rel)
        mov     dword [ebp-14H], eax                    ; 0CE4 _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 0CE7 _ 8B. 45, EC
        mov     edx, dword [ebp-0CH]                    ; 0CEA _ 8B. 55, F4
        mov     dword [eax+0B4H], edx                   ; 0CED _ 89. 90, 000000B4
        mov     eax, dword [ebp-0CH]                    ; 0CF3 _ 8B. 45, F4
        mov     edx, dword [ebp-14H]                    ; 0CF6 _ 8B. 55, EC
        mov     dword [eax+20H], edx                    ; 0CF9 _ 89. 50, 20
        mov     eax, dword [_current_console_task]      ; 0CFC _ A1, 00000278(d)
        test    eax, eax                                ; 0D01 _ 85. C0
        jz      ?_039                                   ; 0D03 _ 74, 7C
        mov     eax, dword [_current_console_task]      ; 0D05 _ A1, 00000278(d)
        mov     edx, dword [eax+0B4H]                   ; 0D0A _ 8B. 90, 000000B4
        mov     eax, dword [_shtctl]                    ; 0D10 _ A1, 00000264(d)
        mov     dword [esp+0CH], 0                      ; 0D15 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], ?_414                   ; 0D1D _ C7. 44 24, 08, 0000000F(d)
        mov     dword [esp+4H], edx                     ; 0D25 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0D29 _ 89. 04 24
        call    _make_wtitle8                           ; 0D2C _ E8, 0000371B
        mov     eax, dword [_current_console_task]      ; 0D31 _ A1, 00000278(d)
        mov     eax, dword [eax+0B4H]                   ; 0D36 _ 8B. 80, 000000B4
        mov     ebx, dword [eax+8H]                     ; 0D3C _ 8B. 58, 08
        mov     eax, dword [_current_console_task]      ; 0D3F _ A1, 00000278(d)
        mov     eax, dword [eax+0B4H]                   ; 0D44 _ 8B. 80, 000000B4
        mov     ecx, dword [eax+4H]                     ; 0D4A _ 8B. 48, 04
        mov     eax, dword [_current_console_task]      ; 0D4D _ A1, 00000278(d)
        mov     edx, dword [eax+0B4H]                   ; 0D52 _ 8B. 90, 000000B4
        mov     eax, dword [_shtctl]                    ; 0D58 _ A1, 00000264(d)
        mov     dword [esp+14H], ebx                    ; 0D5D _ 89. 5C 24, 14
        mov     dword [esp+10H], ecx                    ; 0D61 _ 89. 4C 24, 10
        mov     dword [esp+0CH], 0                      ; 0D65 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 0D6D _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 0D75 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0D79 _ 89. 04 24
        call    _sheet_refresh                          ; 0D7C _ E8, 00000000(rel)
?_039:  mov     eax, dword [ebp-14H]                    ; 0D81 _ 8B. 45, EC
        mov     dword [_current_console_task], eax      ; 0D84 _ A3, 00000278(d)
        call    _get_addr_code32                        ; 0D89 _ E8, 00000000(rel)
        mov     dword [ebp-18H], eax                    ; 0D8E _ 89. 45, E8
        mov     eax, dword [ebp-18H]                    ; 0D91 _ 8B. 45, E8
        neg     eax                                     ; 0D94 _ F7. D8
        add     eax, _console_task                      ; 0D96 _ 05, 00001AB5(d)
        mov     edx, eax                                ; 0D9B _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 0D9D _ 8B. 45, EC
        mov     dword [eax+4CH], edx                    ; 0DA0 _ 89. 50, 4C
        mov     eax, dword [ebp-14H]                    ; 0DA3 _ 8B. 45, EC
        mov     dword [eax+74H], 0                      ; 0DA6 _ C7. 40, 74, 00000000
        mov     eax, dword [ebp-14H]                    ; 0DAD _ 8B. 45, EC
        mov     dword [eax+78H], 8                      ; 0DB0 _ C7. 40, 78, 00000008
        mov     eax, dword [ebp-14H]                    ; 0DB7 _ 8B. 45, EC
        mov     dword [eax+7CH], 32                     ; 0DBA _ C7. 40, 7C, 00000020
        mov     eax, dword [ebp-14H]                    ; 0DC1 _ 8B. 45, EC
        mov     dword [eax+80H], 24                     ; 0DC4 _ C7. 80, 00000080, 00000018
        mov     eax, dword [ebp-14H]                    ; 0DCE _ 8B. 45, EC
        mov     dword [eax+84H], 0                      ; 0DD1 _ C7. 80, 00000084, 00000000
        mov     eax, dword [ebp-14H]                    ; 0DDB _ 8B. 45, EC
        mov     dword [eax+88H], 16                     ; 0DDE _ C7. 80, 00000088, 00000010
        mov     eax, dword [_memman]                    ; 0DE8 _ A1, 00000000(d)
        mov     dword [esp+4H], 65536                   ; 0DED _ C7. 44 24, 04, 00010000
        mov     dword [esp], eax                        ; 0DF5 _ 89. 04 24
        call    _memman_alloc_4k                        ; 0DF8 _ E8, 00000000(rel)
        mov     edx, eax                                ; 0DFD _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 0DFF _ 8B. 45, EC
        mov     dword [eax+0B8H], edx                   ; 0E02 _ 89. 90, 000000B8
        mov     eax, dword [ebp-14H]                    ; 0E08 _ 8B. 45, EC
        mov     eax, dword [eax+0B8H]                   ; 0E0B _ 8B. 80, 000000B8
        lea     edx, [eax+0FFF4H]                       ; 0E11 _ 8D. 90, 0000FFF4
        mov     eax, dword [ebp-14H]                    ; 0E17 _ 8B. 45, EC
        mov     dword [eax+64H], edx                    ; 0E1A _ 89. 50, 64
        mov     eax, dword [ebp-14H]                    ; 0E1D _ 8B. 45, EC
        mov     eax, dword [eax+64H]                    ; 0E20 _ 8B. 40, 64
        add     eax, 4                                  ; 0E23 _ 83. C0, 04
        mov     edx, eax                                ; 0E26 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 0E28 _ 8B. 45, F4
        mov     dword [edx], eax                        ; 0E2B _ 89. 02
        mov     eax, dword [_memman]                    ; 0E2D _ A1, 00000000(d)
        mov     dword [esp], eax                        ; 0E32 _ 89. 04 24
        call    _memman_total                           ; 0E35 _ E8, 00000000(rel)
        mov     edx, eax                                ; 0E3A _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 0E3C _ 8B. 45, EC
        mov     eax, dword [eax+64H]                    ; 0E3F _ 8B. 40, 64
        add     eax, 8                                  ; 0E42 _ 83. C0, 08
        mov     dword [eax], edx                        ; 0E45 _ 89. 10
        mov     eax, dword [_memman]                    ; 0E47 _ A1, 00000000(d)
        mov     dword [esp+4H], 128                     ; 0E4C _ C7. 44 24, 04, 00000080
        mov     dword [esp], eax                        ; 0E54 _ 89. 04 24
        call    _memman_alloc                           ; 0E57 _ E8, 00000000(rel)
        mov     dword [ebp-1CH], eax                    ; 0E5C _ 89. 45, E4
        mov     eax, dword [ebp-14H]                    ; 0E5F _ 8B. 45, EC
        add     eax, 16                                 ; 0E62 _ 83. C0, 10
        mov     edx, dword [ebp-14H]                    ; 0E65 _ 8B. 55, EC
        mov     dword [esp+0CH], edx                    ; 0E68 _ 89. 54 24, 0C
        mov     edx, dword [ebp-1CH]                    ; 0E6C _ 8B. 55, E4
        mov     dword [esp+8H], edx                     ; 0E6F _ 89. 54 24, 08
        mov     dword [esp+4H], 128                     ; 0E73 _ C7. 44 24, 04, 00000080
        mov     dword [esp], eax                        ; 0E7B _ 89. 04 24
        call    _fifo8_init                             ; 0E7E _ E8, 00000000(rel)
        mov     dword [ebp+8H], 0                       ; 0E83 _ C7. 45, 08, 00000000
        jmp     ?_041                                   ; 0E8A _ EB, 1E

?_040:  mov     edx, dword [ebp+8H]                     ; 0E8C _ 8B. 55, 08
        mov     eax, edx                                ; 0E8F _ 89. D0
        add     eax, eax                                ; 0E91 _ 01. C0
        add     eax, edx                                ; 0E93 _ 01. D0
        shl     eax, 2                                  ; 0E95 _ C1. E0, 02
        lea     ebx, [ebp-8H]                           ; 0E98 _ 8D. 5D, F8
        add     eax, ebx                                ; 0E9B _ 01. D8
        sub     eax, 116                                ; 0E9D _ 83. E8, 74
        mov     dword [eax], 0                          ; 0EA0 _ C7. 00, 00000000
        add     dword [ebp+8H], 1                       ; 0EA6 _ 83. 45, 08, 01
?_041:  cmp     dword [ebp+8H], 7                       ; 0EAA _ 83. 7D, 08, 07
        jle     ?_040                                   ; 0EAE _ 7E, DC
        mov     edx, dword [ebp-14H]                    ; 0EB0 _ 8B. 55, EC
        lea     eax, [ebp-7CH]                          ; 0EB3 _ 8D. 45, 84
        mov     dword [edx+0CCH], eax                   ; 0EB6 _ 89. 82, 000000CC
        mov     dword [esp+8H], 5                       ; 0EBC _ C7. 44 24, 08, 00000005
        mov     dword [esp+4H], 1                       ; 0EC4 _ C7. 44 24, 04, 00000001
        mov     eax, dword [ebp-14H]                    ; 0ECC _ 8B. 45, EC
        mov     dword [esp], eax                        ; 0ECF _ 89. 04 24
        call    _task_run                               ; 0ED2 _ E8, 00000000(rel)
        cmp     dword [ebp+8H], 0                       ; 0ED7 _ 83. 7D, 08, 00
        jnz     ?_042                                   ; 0EDB _ 75, 0A
        mov     eax, dword [ebp-14H]                    ; 0EDD _ 8B. 45, EC
        mov     eax, dword [eax]                        ; 0EE0 _ 8B. 00
        mov     dword [_first_task_cons_selector], eax  ; 0EE2 _ A3, 00000008(d)
?_042:  mov     eax, dword [ebp-0CH]                    ; 0EE7 _ 8B. 45, F4
        add     esp, 164                                ; 0EEA _ 81. C4, 000000A4
        pop     ebx                                     ; 0EF0 _ 5B
        pop     ebp                                     ; 0EF1 _ 5D
        ret                                             ; 0EF2 _ C3
; _launch_console End of function

_kill_process:; Function begin
        push    ebp                                     ; 0EF3 _ 55
        mov     ebp, esp                                ; 0EF4 _ 89. E5
        sub     esp, 40                                 ; 0EF6 _ 83. EC, 28
        call    _task_now                               ; 0EF9 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 0EFE _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 0F01 _ 8B. 45, F4
        mov     edx, dword [eax+94H]                    ; 0F04 _ 8B. 90, 00000094
        mov     eax, dword [ebp-0CH]                    ; 0F0A _ 8B. 45, F4
        mov     eax, dword [eax+9CH]                    ; 0F0D _ 8B. 80, 0000009C
        mov     dword [esp+4H], edx                     ; 0F13 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0F17 _ 89. 04 24
        call    _cons_newline                           ; 0F1A _ E8, 00001D4A
        mov     eax, dword [ebp-0CH]                    ; 0F1F _ 8B. 45, F4
        mov     eax, dword [eax+9CH]                    ; 0F22 _ 8B. 80, 0000009C
        lea     edx, [eax+10H]                          ; 0F28 _ 8D. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 0F2B _ 8B. 45, F4
        mov     dword [eax+9CH], edx                    ; 0F2E _ 89. 90, 0000009C
        mov     eax, dword [ebp-0CH]                    ; 0F34 _ 8B. 45, F4
        add     eax, 48                                 ; 0F37 _ 83. C0, 30
        mov     dword [esp], eax                        ; 0F3A _ 89. 04 24
        call    _asm_end_app                            ; 0F3D _ E8, 00000000(rel)
        nop                                             ; 0F42 _ 90
        leave                                           ; 0F43 _ C9
        ret                                             ; 0F44 _ C3
; _kill_process End of function

_cmd_dir:; Function begin
        push    ebp                                     ; 0F45 _ 55
        mov     ebp, esp                                ; 0F46 _ 89. E5
        push    ebx                                     ; 0F48 _ 53
        sub     esp, 68                                 ; 0F49 _ 83. EC, 44
        call    _task_now                               ; 0F4C _ E8, 00000000(rel)
        mov     dword [ebp-18H], eax                    ; 0F51 _ 89. 45, E8
        mov     dword [ebp-0CH], 88064                  ; 0F54 _ C7. 45, F4, 00015800
        mov     eax, dword [_memman]                    ; 0F5B _ A1, 00000000(d)
        mov     dword [esp+4H], 13                      ; 0F60 _ C7. 44 24, 04, 0000000D
        mov     dword [esp], eax                        ; 0F68 _ 89. 04 24
        call    _memman_alloc                           ; 0F6B _ E8, 00000000(rel)
        mov     dword [ebp-1CH], eax                    ; 0F70 _ 89. 45, E4
        mov     eax, dword [ebp-1CH]                    ; 0F73 _ 8B. 45, E4
        add     eax, 12                                 ; 0F76 _ 83. C0, 0C
        mov     byte [eax], 0                           ; 0F79 _ C6. 00, 00
        jmp     ?_050                                   ; 0F7C _ E9, 0000014E

?_043:  mov     dword [ebp-10H], 0                      ; 0F81 _ C7. 45, F0, 00000000
        jmp     ?_045                                   ; 0F88 _ EB, 2A

?_044:  mov     edx, dword [ebp-0CH]                    ; 0F8A _ 8B. 55, F4
        mov     eax, dword [ebp-10H]                    ; 0F8D _ 8B. 45, F0
        add     eax, edx                                ; 0F90 _ 01. D0
        movzx   eax, byte [eax]                         ; 0F92 _ 0F B6. 00
        test    al, al                                  ; 0F95 _ 84. C0
        jz      ?_046                                   ; 0F97 _ 74, 23
        mov     edx, dword [ebp-0CH]                    ; 0F99 _ 8B. 55, F4
        mov     eax, dword [ebp-10H]                    ; 0F9C _ 8B. 45, F0
        add     eax, edx                                ; 0F9F _ 01. D0
        movzx   ecx, byte [eax]                         ; 0FA1 _ 0F B6. 08
        mov     edx, dword [ebp-10H]                    ; 0FA4 _ 8B. 55, F0
        mov     eax, dword [ebp-1CH]                    ; 0FA7 _ 8B. 45, E4
        add     eax, edx                                ; 0FAA _ 01. D0
        mov     edx, ecx                                ; 0FAC _ 89. CA
        mov     byte [eax], dl                          ; 0FAE _ 88. 10
        add     dword [ebp-10H], 1                      ; 0FB0 _ 83. 45, F0, 01
?_045:  cmp     dword [ebp-10H], 7                      ; 0FB4 _ 83. 7D, F0, 07
        jle     ?_044                                   ; 0FB8 _ 7E, D0
        jmp     ?_047                                   ; 0FBA _ EB, 01

?_046:  nop                                             ; 0FBC _ 90
?_047:  mov     dword [ebp-14H], 0                      ; 0FBD _ C7. 45, EC, 00000000
        mov     edx, dword [ebp-10H]                    ; 0FC4 _ 8B. 55, F0
        mov     eax, dword [ebp-1CH]                    ; 0FC7 _ 8B. 45, E4
        add     eax, edx                                ; 0FCA _ 01. D0
        mov     byte [eax], 46                          ; 0FCC _ C6. 00, 2E
        add     dword [ebp-10H], 1                      ; 0FCF _ 83. 45, F0, 01
        mov     dword [ebp-14H], 0                      ; 0FD3 _ C7. 45, EC, 00000000
        jmp     ?_049                                   ; 0FDA _ EB, 22

?_048:  mov     edx, dword [ebp-0CH]                    ; 0FDC _ 8B. 55, F4
        mov     eax, dword [ebp-14H]                    ; 0FDF _ 8B. 45, EC
        add     eax, edx                                ; 0FE2 _ 01. D0
        add     eax, 8                                  ; 0FE4 _ 83. C0, 08
        movzx   ecx, byte [eax]                         ; 0FE7 _ 0F B6. 08
        mov     edx, dword [ebp-10H]                    ; 0FEA _ 8B. 55, F0
        mov     eax, dword [ebp-1CH]                    ; 0FED _ 8B. 45, E4
        add     eax, edx                                ; 0FF0 _ 01. D0
        mov     edx, ecx                                ; 0FF2 _ 89. CA
        mov     byte [eax], dl                          ; 0FF4 _ 88. 10
        add     dword [ebp-10H], 1                      ; 0FF6 _ 83. 45, F0, 01
        add     dword [ebp-14H], 1                      ; 0FFA _ 83. 45, EC, 01
?_049:  cmp     dword [ebp-14H], 2                      ; 0FFE _ 83. 7D, EC, 02
        jle     ?_048                                   ; 1002 _ 7E, D8
        mov     edx, dword [ebp-10H]                    ; 1004 _ 8B. 55, F0
        mov     eax, dword [ebp-1CH]                    ; 1007 _ 8B. 45, E4
        add     eax, edx                                ; 100A _ 01. D0
        mov     byte [eax], 0                           ; 100C _ C6. 00, 00
        mov     eax, dword [ebp-18H]                    ; 100F _ 8B. 45, E8
        mov     ecx, dword [eax+9CH]                    ; 1012 _ 8B. 88, 0000009C
        mov     eax, dword [ebp-18H]                    ; 1018 _ 8B. 45, E8
        mov     edx, dword [eax+94H]                    ; 101B _ 8B. 90, 00000094
        mov     eax, dword [_shtctl]                    ; 1021 _ A1, 00000264(d)
        mov     ebx, dword [ebp-1CH]                    ; 1026 _ 8B. 5D, E4
        mov     dword [esp+14H], ebx                    ; 1029 _ 89. 5C 24, 14
        mov     dword [esp+10H], 7                      ; 102D _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ecx                    ; 1035 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 16                      ; 1039 _ C7. 44 24, 08, 00000010
        mov     dword [esp+4H], edx                     ; 1041 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1045 _ 89. 04 24
        call    _showString                             ; 1048 _ E8, 0000216A
        mov     dword [ebp-20H], 136                    ; 104D _ C7. 45, E0, 00000088
        mov     eax, dword [ebp-0CH]                    ; 1054 _ 8B. 45, F4
        mov     eax, dword [eax+1CH]                    ; 1057 _ 8B. 40, 1C
        mov     dword [esp], eax                        ; 105A _ 89. 04 24
        call    _intToHexStr                            ; 105D _ E8, 00002BAD
        mov     dword [ebp-24H], eax                    ; 1062 _ 89. 45, DC
        mov     eax, dword [ebp-18H]                    ; 1065 _ 8B. 45, E8
        mov     ecx, dword [eax+9CH]                    ; 1068 _ 8B. 88, 0000009C
        mov     eax, dword [ebp-18H]                    ; 106E _ 8B. 45, E8
        mov     edx, dword [eax+94H]                    ; 1071 _ 8B. 90, 00000094
        mov     eax, dword [_shtctl]                    ; 1077 _ A1, 00000264(d)
        mov     ebx, dword [ebp-24H]                    ; 107C _ 8B. 5D, DC
        mov     dword [esp+14H], ebx                    ; 107F _ 89. 5C 24, 14
        mov     dword [esp+10H], 7                      ; 1083 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ecx                    ; 108B _ 89. 4C 24, 0C
        mov     ecx, dword [ebp-20H]                    ; 108F _ 8B. 4D, E0
        mov     dword [esp+8H], ecx                     ; 1092 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 1096 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 109A _ 89. 04 24
        call    _showString                             ; 109D _ E8, 00002115
        mov     eax, dword [ebp-18H]                    ; 10A2 _ 8B. 45, E8
        mov     edx, dword [eax+94H]                    ; 10A5 _ 8B. 90, 00000094
        mov     eax, dword [ebp-18H]                    ; 10AB _ 8B. 45, E8
        mov     eax, dword [eax+9CH]                    ; 10AE _ 8B. 80, 0000009C
        mov     dword [esp+4H], edx                     ; 10B4 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 10B8 _ 89. 04 24
        call    _cons_newline                           ; 10BB _ E8, 00001BA9
        mov     edx, eax                                ; 10C0 _ 89. C2
        mov     eax, dword [ebp-18H]                    ; 10C2 _ 8B. 45, E8
        mov     dword [eax+9CH], edx                    ; 10C5 _ 89. 90, 0000009C
        add     dword [ebp-0CH], 32                     ; 10CB _ 83. 45, F4, 20
?_050:  mov     eax, dword [ebp-0CH]                    ; 10CF _ 8B. 45, F4
        movzx   eax, byte [eax]                         ; 10D2 _ 0F B6. 00
        test    al, al                                  ; 10D5 _ 84. C0
        jne     ?_043                                   ; 10D7 _ 0F 85, FFFFFEA4
        mov     edx, dword [ebp-1CH]                    ; 10DD _ 8B. 55, E4
        mov     eax, dword [_memman]                    ; 10E0 _ A1, 00000000(d)
        mov     dword [esp+8H], 13                      ; 10E5 _ C7. 44 24, 08, 0000000D
        mov     dword [esp+4H], edx                     ; 10ED _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 10F1 _ 89. 04 24
        call    _memman_free                            ; 10F4 _ E8, 00000000(rel)
        nop                                             ; 10F9 _ 90
        add     esp, 68                                 ; 10FA _ 83. C4, 44
        pop     ebx                                     ; 10FD _ 5B
        pop     ebp                                     ; 10FE _ 5D
        ret                                             ; 10FF _ C3
; _cmd_dir End of function

_cmd_type:; Function begin
        push    ebp                                     ; 1100 _ 55
        mov     ebp, esp                                ; 1101 _ 89. E5
        push    esi                                     ; 1103 _ 56
        push    ebx                                     ; 1104 _ 53
        sub     esp, 96                                 ; 1105 _ 83. EC, 60
        call    _task_now                               ; 1108 _ E8, 00000000(rel)
        mov     dword [ebp-24H], eax                    ; 110D _ 89. 45, DC
        mov     eax, dword [ebp-24H]                    ; 1110 _ 8B. 45, DC
        mov     eax, dword [eax+94H]                    ; 1113 _ 8B. 80, 00000094
        test    eax, eax                                ; 1119 _ 85. C0
        je      ?_071                                   ; 111B _ 0F 84, 0000038F
        mov     eax, dword [_memman]                    ; 1121 _ A1, 00000000(d)
        mov     dword [esp+4H], 13                      ; 1126 _ C7. 44 24, 04, 0000000D
        mov     dword [esp], eax                        ; 112E _ 89. 04 24
        call    _memman_alloc                           ; 1131 _ E8, 00000000(rel)
        mov     dword [ebp-28H], eax                    ; 1136 _ 89. 45, D8
        mov     eax, dword [ebp-28H]                    ; 1139 _ 8B. 45, D8
        add     eax, 12                                 ; 113C _ 83. C0, 0C
        mov     byte [eax], 0                           ; 113F _ C6. 00, 00
        mov     dword [ebp-0CH], 0                      ; 1142 _ C7. 45, F4, 00000000
        mov     dword [ebp-10H], 5                      ; 1149 _ C7. 45, F0, 00000005
        mov     dword [ebp-10H], 5                      ; 1150 _ C7. 45, F0, 00000005
        jmp     ?_052                                   ; 1157 _ EB, 2C

?_051:  mov     edx, dword [ebp-10H]                    ; 1159 _ 8B. 55, F0
        mov     eax, dword [ebp+8H]                     ; 115C _ 8B. 45, 08
        add     eax, edx                                ; 115F _ 01. D0
        movzx   eax, byte [eax]                         ; 1161 _ 0F B6. 00
        test    al, al                                  ; 1164 _ 84. C0
        jz      ?_053                                   ; 1166 _ 74, 25
        mov     edx, dword [ebp-10H]                    ; 1168 _ 8B. 55, F0
        mov     eax, dword [ebp+8H]                     ; 116B _ 8B. 45, 08
        add     eax, edx                                ; 116E _ 01. D0
        mov     ecx, dword [ebp-0CH]                    ; 1170 _ 8B. 4D, F4
        mov     edx, dword [ebp-28H]                    ; 1173 _ 8B. 55, D8
        add     edx, ecx                                ; 1176 _ 01. CA
        movzx   eax, byte [eax]                         ; 1178 _ 0F B6. 00
        mov     byte [edx], al                          ; 117B _ 88. 02
        add     dword [ebp-0CH], 1                      ; 117D _ 83. 45, F4, 01
        add     dword [ebp-10H], 1                      ; 1181 _ 83. 45, F0, 01
?_052:  cmp     dword [ebp-10H], 16                     ; 1185 _ 83. 7D, F0, 10
        jle     ?_051                                   ; 1189 _ 7E, CE
        jmp     ?_054                                   ; 118B _ EB, 01

?_053:  nop                                             ; 118D _ 90
?_054:  mov     edx, dword [ebp-0CH]                    ; 118E _ 8B. 55, F4
        mov     eax, dword [ebp-28H]                    ; 1191 _ 8B. 45, D8
        add     eax, edx                                ; 1194 _ 01. D0
        mov     byte [eax], 0                           ; 1196 _ C6. 00, 00
        mov     dword [ebp-14H], 88064                  ; 1199 _ C7. 45, EC, 00015800
        jmp     ?_069                                   ; 11A0 _ E9, 000002A9

?_055:  mov     byte [ebp-31H], 0                       ; 11A5 _ C6. 45, CF, 00
        mov     dword [ebp-18H], 0                      ; 11A9 _ C7. 45, E8, 00000000
        jmp     ?_057                                   ; 11B0 _ EB, 2A

?_056:  mov     edx, dword [ebp-14H]                    ; 11B2 _ 8B. 55, EC
        mov     eax, dword [ebp-18H]                    ; 11B5 _ 8B. 45, E8
        add     eax, edx                                ; 11B8 _ 01. D0
        movzx   eax, byte [eax]                         ; 11BA _ 0F B6. 00
        test    al, al                                  ; 11BD _ 84. C0
        jz      ?_058                                   ; 11BF _ 74, 23
        mov     edx, dword [ebp-14H]                    ; 11C1 _ 8B. 55, EC
        mov     eax, dword [ebp-18H]                    ; 11C4 _ 8B. 45, E8
        add     eax, edx                                ; 11C7 _ 01. D0
        movzx   eax, byte [eax]                         ; 11C9 _ 0F B6. 00
        mov     ecx, eax                                ; 11CC _ 89. C1
        lea     eax, [ebp-3DH]                          ; 11CE _ 8D. 45, C3
        mov     edx, dword [ebp-18H]                    ; 11D1 _ 8B. 55, E8
        add     eax, edx                                ; 11D4 _ 01. D0
        mov     byte [eax], cl                          ; 11D6 _ 88. 08
        add     dword [ebp-18H], 1                      ; 11D8 _ 83. 45, E8, 01
?_057:  cmp     dword [ebp-18H], 7                      ; 11DC _ 83. 7D, E8, 07
        jle     ?_056                                   ; 11E0 _ 7E, D0
        jmp     ?_059                                   ; 11E2 _ EB, 01

?_058:  nop                                             ; 11E4 _ 90
?_059:  mov     dword [ebp-1CH], 0                      ; 11E5 _ C7. 45, E4, 00000000
        lea     eax, [ebp-3DH]                          ; 11EC _ 8D. 45, C3
        mov     edx, dword [ebp-18H]                    ; 11EF _ 8B. 55, E8
        add     eax, edx                                ; 11F2 _ 01. D0
        mov     byte [eax], 46                          ; 11F4 _ C6. 00, 2E
        add     dword [ebp-18H], 1                      ; 11F7 _ 83. 45, E8, 01
        mov     dword [ebp-1CH], 0                      ; 11FB _ C7. 45, E4, 00000000
        jmp     ?_061                                   ; 1202 _ EB, 22

?_060:  mov     edx, dword [ebp-14H]                    ; 1204 _ 8B. 55, EC
        mov     eax, dword [ebp-1CH]                    ; 1207 _ 8B. 45, E4
        add     eax, edx                                ; 120A _ 01. D0
        add     eax, 8                                  ; 120C _ 83. C0, 08
        movzx   eax, byte [eax]                         ; 120F _ 0F B6. 00
        mov     ecx, eax                                ; 1212 _ 89. C1
        lea     eax, [ebp-3DH]                          ; 1214 _ 8D. 45, C3
        mov     edx, dword [ebp-18H]                    ; 1217 _ 8B. 55, E8
        add     eax, edx                                ; 121A _ 01. D0
        mov     byte [eax], cl                          ; 121C _ 88. 08
        add     dword [ebp-18H], 1                      ; 121E _ 83. 45, E8, 01
        add     dword [ebp-1CH], 1                      ; 1222 _ 83. 45, E4, 01
?_061:  cmp     dword [ebp-1CH], 2                      ; 1226 _ 83. 7D, E4, 02
        jle     ?_060                                   ; 122A _ 7E, D8
        lea     eax, [ebp-3DH]                          ; 122C _ 8D. 45, C3
        mov     dword [esp+4H], eax                     ; 122F _ 89. 44 24, 04
        mov     eax, dword [ebp-28H]                    ; 1233 _ 8B. 45, D8
        mov     dword [esp], eax                        ; 1236 _ 89. 04 24
        call    _strcmp                                 ; 1239 _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 123E _ 83. F8, 01
        jne     ?_068                                   ; 1241 _ 0F 85, 00000203
        mov     dword [ebp-2CH], 97280                  ; 1247 _ C7. 45, D4, 00017C00
        mov     eax, dword [ebp-14H]                    ; 124E _ 8B. 45, EC
        movzx   eax, word [eax+1AH]                     ; 1251 _ 0F B7. 40, 1A
        movzx   eax, ax                                 ; 1255 _ 0F B7. C0
        shl     eax, 9                                  ; 1258 _ C1. E0, 09
        add     dword [ebp-2CH], eax                    ; 125B _ 01. 45, D4
        mov     eax, dword [ebp-14H]                    ; 125E _ 8B. 45, EC
        mov     eax, dword [eax+1CH]                    ; 1261 _ 8B. 40, 1C
        mov     dword [ebp-30H], eax                    ; 1264 _ 89. 45, D0
        mov     dword [ebp-20H], 0                      ; 1267 _ C7. 45, E0, 00000000
        mov     eax, dword [ebp-24H]                    ; 126E _ 8B. 45, DC
        mov     dword [eax+98H], 16                     ; 1271 _ C7. 80, 00000098, 00000010
        mov     dword [ebp-20H], 0                      ; 127B _ C7. 45, E0, 00000000
        jmp     ?_067                                   ; 1282 _ E9, 000001B4

?_062:  mov     edx, dword [ebp-20H]                    ; 1287 _ 8B. 55, E0
        mov     eax, dword [ebp-2CH]                    ; 128A _ 8B. 45, D4
        add     eax, edx                                ; 128D _ 01. D0
        movzx   eax, byte [eax]                         ; 128F _ 0F B6. 00
        mov     byte [ebp-3FH], al                      ; 1292 _ 88. 45, C1
        mov     byte [ebp-3EH], 0                       ; 1295 _ C6. 45, C2, 00
        movzx   eax, byte [ebp-3FH]                     ; 1299 _ 0F B6. 45, C1
        cmp     al, 9                                   ; 129D _ 3C, 09
        jne     ?_064                                   ; 129F _ 0F 85, 000000A4
?_063:  mov     eax, dword [ebp-24H]                    ; 12A5 _ 8B. 45, DC
        mov     ebx, dword [eax+9CH]                    ; 12A8 _ 8B. 98, 0000009C
        mov     eax, dword [ebp-24H]                    ; 12AE _ 8B. 45, DC
        mov     ecx, dword [eax+98H]                    ; 12B1 _ 8B. 88, 00000098
        mov     eax, dword [ebp-24H]                    ; 12B7 _ 8B. 45, DC
        mov     edx, dword [eax+94H]                    ; 12BA _ 8B. 90, 00000094
        mov     eax, dword [_shtctl]                    ; 12C0 _ A1, 00000264(d)
        mov     dword [esp+14H], ?_415                  ; 12C5 _ C7. 44 24, 14, 00000017(d)
        mov     dword [esp+10H], 7                      ; 12CD _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ebx                    ; 12D5 _ 89. 5C 24, 0C
        mov     dword [esp+8H], ecx                     ; 12D9 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 12DD _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 12E1 _ 89. 04 24
        call    _showString                             ; 12E4 _ E8, 00001ECE
        mov     eax, dword [ebp-24H]                    ; 12E9 _ 8B. 45, DC
        mov     eax, dword [eax+98H]                    ; 12EC _ 8B. 80, 00000098
        lea     edx, [eax+8H]                           ; 12F2 _ 8D. 50, 08
        mov     eax, dword [ebp-24H]                    ; 12F5 _ 8B. 45, DC
        mov     dword [eax+98H], edx                    ; 12F8 _ 89. 90, 00000098
        mov     eax, dword [ebp-24H]                    ; 12FE _ 8B. 45, DC
        mov     eax, dword [eax+98H]                    ; 1301 _ 8B. 80, 00000098
        cmp     eax, 248                                ; 1307 _ 3D, 000000F8
        jnz     ?_063                                   ; 130C _ 75, 97
        mov     eax, dword [ebp-24H]                    ; 130E _ 8B. 45, DC
        mov     dword [eax+98H], 8                      ; 1311 _ C7. 80, 00000098, 00000008
        mov     eax, dword [ebp-24H]                    ; 131B _ 8B. 45, DC
        mov     edx, dword [eax+94H]                    ; 131E _ 8B. 90, 00000094
        mov     eax, dword [ebp-24H]                    ; 1324 _ 8B. 45, DC
        mov     eax, dword [eax+9CH]                    ; 1327 _ 8B. 80, 0000009C
        mov     dword [esp+4H], edx                     ; 132D _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1331 _ 89. 04 24
        call    _cons_newline                           ; 1334 _ E8, 00001930
        mov     edx, eax                                ; 1339 _ 89. C2
        mov     eax, dword [ebp-24H]                    ; 133B _ 8B. 45, DC
        mov     dword [eax+9CH], edx                    ; 133E _ 89. 90, 0000009C
        jmp     ?_063                                   ; 1344 _ E9, FFFFFF5C

?_064:  movzx   eax, byte [ebp-3FH]                     ; 1349 _ 0F B6. 45, C1
        cmp     al, 10                                  ; 134D _ 3C, 0A
        jnz     ?_065                                   ; 134F _ 75, 3B
        mov     eax, dword [ebp-24H]                    ; 1351 _ 8B. 45, DC
        mov     dword [eax+98H], 8                      ; 1354 _ C7. 80, 00000098, 00000008
        mov     eax, dword [ebp-24H]                    ; 135E _ 8B. 45, DC
        mov     edx, dword [eax+94H]                    ; 1361 _ 8B. 90, 00000094
        mov     eax, dword [ebp-24H]                    ; 1367 _ 8B. 45, DC
        mov     eax, dword [eax+9CH]                    ; 136A _ 8B. 80, 0000009C
        mov     dword [esp+4H], edx                     ; 1370 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1374 _ 89. 04 24
        call    _cons_newline                           ; 1377 _ E8, 000018ED
        mov     edx, eax                                ; 137C _ 89. C2
        mov     eax, dword [ebp-24H]                    ; 137E _ 8B. 45, DC
        mov     dword [eax+9CH], edx                    ; 1381 _ 89. 90, 0000009C
        jmp     ?_066                                   ; 1387 _ E9, 000000AB

?_065:  movzx   eax, byte [ebp-3FH]                     ; 138C _ 0F B6. 45, C1
        cmp     al, 13                                  ; 1390 _ 3C, 0D
        je      ?_066                                   ; 1392 _ 0F 84, 0000009F
        mov     eax, dword [ebp-24H]                    ; 1398 _ 8B. 45, DC
        mov     esi, dword [eax+9CH]                    ; 139B _ 8B. B0, 0000009C
        mov     eax, dword [ebp-24H]                    ; 13A1 _ 8B. 45, DC
        mov     ebx, dword [eax+98H]                    ; 13A4 _ 8B. 98, 00000098
        mov     eax, dword [ebp-24H]                    ; 13AA _ 8B. 45, DC
        mov     ecx, dword [eax+94H]                    ; 13AD _ 8B. 88, 00000094
        mov     edx, dword [_shtctl]                    ; 13B3 _ 8B. 15, 00000264(d)
        lea     eax, [ebp-3FH]                          ; 13B9 _ 8D. 45, C1
        mov     dword [esp+14H], eax                    ; 13BC _ 89. 44 24, 14
        mov     dword [esp+10H], 7                      ; 13C0 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], esi                    ; 13C8 _ 89. 74 24, 0C
        mov     dword [esp+8H], ebx                     ; 13CC _ 89. 5C 24, 08
        mov     dword [esp+4H], ecx                     ; 13D0 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 13D4 _ 89. 14 24
        call    _showString                             ; 13D7 _ E8, 00001DDB
        mov     eax, dword [ebp-24H]                    ; 13DC _ 8B. 45, DC
        mov     eax, dword [eax+98H]                    ; 13DF _ 8B. 80, 00000098
        lea     edx, [eax+8H]                           ; 13E5 _ 8D. 50, 08
        mov     eax, dword [ebp-24H]                    ; 13E8 _ 8B. 45, DC
        mov     dword [eax+98H], edx                    ; 13EB _ 89. 90, 00000098
        mov     eax, dword [ebp-24H]                    ; 13F1 _ 8B. 45, DC
        mov     eax, dword [eax+98H]                    ; 13F4 _ 8B. 80, 00000098
        cmp     eax, 248                                ; 13FA _ 3D, 000000F8
        jnz     ?_066                                   ; 13FF _ 75, 36
        mov     eax, dword [ebp-24H]                    ; 1401 _ 8B. 45, DC
        mov     dword [eax+98H], 16                     ; 1404 _ C7. 80, 00000098, 00000010
        mov     eax, dword [ebp-24H]                    ; 140E _ 8B. 45, DC
        mov     edx, dword [eax+94H]                    ; 1411 _ 8B. 90, 00000094
        mov     eax, dword [ebp-24H]                    ; 1417 _ 8B. 45, DC
        mov     eax, dword [eax+9CH]                    ; 141A _ 8B. 80, 0000009C
        mov     dword [esp+4H], edx                     ; 1420 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1424 _ 89. 04 24
        call    _cons_newline                           ; 1427 _ E8, 0000183D
        mov     edx, eax                                ; 142C _ 89. C2
        mov     eax, dword [ebp-24H]                    ; 142E _ 8B. 45, DC
        mov     dword [eax+9CH], edx                    ; 1431 _ 89. 90, 0000009C
?_066:  add     dword [ebp-20H], 1                      ; 1437 _ 83. 45, E0, 01
?_067:  mov     eax, dword [ebp-20H]                    ; 143B _ 8B. 45, E0
        cmp     eax, dword [ebp-30H]                    ; 143E _ 3B. 45, D0
        jl      ?_062                                   ; 1441 _ 0F 8C, FFFFFE40
        nop                                             ; 1447 _ 90
        jmp     ?_070                                   ; 1448 _ EB, 12

?_068:  add     dword [ebp-14H], 32                     ; 144A _ 83. 45, EC, 20
?_069:  mov     eax, dword [ebp-14H]                    ; 144E _ 8B. 45, EC
        movzx   eax, byte [eax]                         ; 1451 _ 0F B6. 00
        test    al, al                                  ; 1454 _ 84. C0
        jne     ?_055                                   ; 1456 _ 0F 85, FFFFFD49
?_070:  mov     eax, dword [ebp-24H]                    ; 145C _ 8B. 45, DC
        mov     edx, dword [eax+94H]                    ; 145F _ 8B. 90, 00000094
        mov     eax, dword [ebp-24H]                    ; 1465 _ 8B. 45, DC
        mov     eax, dword [eax+9CH]                    ; 1468 _ 8B. 80, 0000009C
        mov     dword [esp+4H], edx                     ; 146E _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1472 _ 89. 04 24
        call    _cons_newline                           ; 1475 _ E8, 000017EF
        mov     edx, eax                                ; 147A _ 89. C2
        mov     eax, dword [ebp-24H]                    ; 147C _ 8B. 45, DC
        mov     dword [eax+9CH], edx                    ; 147F _ 89. 90, 0000009C
        mov     edx, dword [ebp-28H]                    ; 1485 _ 8B. 55, D8
        mov     eax, dword [_memman]                    ; 1488 _ A1, 00000000(d)
        mov     dword [esp+8H], 13                      ; 148D _ C7. 44 24, 08, 0000000D
        mov     dword [esp+4H], edx                     ; 1495 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1499 _ 89. 04 24
        call    _memman_free                            ; 149C _ E8, 00000000(rel)
        mov     eax, dword [ebp-24H]                    ; 14A1 _ 8B. 45, DC
        mov     dword [eax+98H], 16                     ; 14A4 _ C7. 80, 00000098, 00000010
        jmp     ?_072                                   ; 14AE _ EB, 01

?_071:  nop                                             ; 14B0 _ 90
?_072:  add     esp, 96                                 ; 14B1 _ 83. C4, 60
        pop     ebx                                     ; 14B4 _ 5B
        pop     esi                                     ; 14B5 _ 5E
        pop     ebp                                     ; 14B6 _ 5D
        ret                                             ; 14B7 _ C3
; _cmd_type End of function

_cmd_mem:; Function begin
        push    ebp                                     ; 14B8 _ 55
        mov     ebp, esp                                ; 14B9 _ 89. E5
        push    ebx                                     ; 14BB _ 53
        sub     esp, 52                                 ; 14BC _ 83. EC, 34
        call    _task_now                               ; 14BF _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 14C4 _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 14C7 _ 8B. 45, F4
        mov     eax, dword [eax+94H]                    ; 14CA _ 8B. 80, 00000094
        test    eax, eax                                ; 14D0 _ 85. C0
        je      ?_073                                   ; 14D2 _ 0F 84, 00000103
        mov     eax, dword [ebp+8H]                     ; 14D8 _ 8B. 45, 08
        lea     edx, [eax+3FFH]                         ; 14DB _ 8D. 90, 000003FF
        test    eax, eax                                ; 14E1 _ 85. C0
        cmovs   eax, edx                                ; 14E3 _ 0F 48. C2
        sar     eax, 10                                 ; 14E6 _ C1. F8, 0A
        mov     dword [esp], eax                        ; 14E9 _ 89. 04 24
        call    _intToHexStr                            ; 14EC _ E8, 0000271E
        mov     dword [ebp-10H], eax                    ; 14F1 _ 89. 45, F0
        mov     eax, dword [ebp-0CH]                    ; 14F4 _ 8B. 45, F4
        mov     ecx, dword [eax+9CH]                    ; 14F7 _ 8B. 88, 0000009C
        mov     eax, dword [ebp-0CH]                    ; 14FD _ 8B. 45, F4
        mov     edx, dword [eax+94H]                    ; 1500 _ 8B. 90, 00000094
        mov     eax, dword [_shtctl]                    ; 1506 _ A1, 00000264(d)
        mov     dword [esp+14H], ?_416                  ; 150B _ C7. 44 24, 14, 00000019(d)
        mov     dword [esp+10H], 7                      ; 1513 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ecx                    ; 151B _ 89. 4C 24, 0C
        mov     dword [esp+8H], 16                      ; 151F _ C7. 44 24, 08, 00000010
        mov     dword [esp+4H], edx                     ; 1527 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 152B _ 89. 04 24
        call    _showString                             ; 152E _ E8, 00001C84
        mov     eax, dword [ebp-0CH]                    ; 1533 _ 8B. 45, F4
        mov     ecx, dword [eax+9CH]                    ; 1536 _ 8B. 88, 0000009C
        mov     eax, dword [ebp-0CH]                    ; 153C _ 8B. 45, F4
        mov     edx, dword [eax+94H]                    ; 153F _ 8B. 90, 00000094
        mov     eax, dword [_shtctl]                    ; 1545 _ A1, 00000264(d)
        mov     ebx, dword [ebp-10H]                    ; 154A _ 8B. 5D, F0
        mov     dword [esp+14H], ebx                    ; 154D _ 89. 5C 24, 14
        mov     dword [esp+10H], 7                      ; 1551 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ecx                    ; 1559 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 52                      ; 155D _ C7. 44 24, 08, 00000034
        mov     dword [esp+4H], edx                     ; 1565 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1569 _ 89. 04 24
        call    _showString                             ; 156C _ E8, 00001C46
        mov     eax, dword [ebp-0CH]                    ; 1571 _ 8B. 45, F4
        mov     ecx, dword [eax+9CH]                    ; 1574 _ 8B. 88, 0000009C
        mov     eax, dword [ebp-0CH]                    ; 157A _ 8B. 45, F4
        mov     edx, dword [eax+94H]                    ; 157D _ 8B. 90, 00000094
        mov     eax, dword [_shtctl]                    ; 1583 _ A1, 00000264(d)
        mov     dword [esp+14H], ?_417                  ; 1588 _ C7. 44 24, 14, 0000001F(d)
        mov     dword [esp+10H], 7                      ; 1590 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ecx                    ; 1598 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 126                     ; 159C _ C7. 44 24, 08, 0000007E
        mov     dword [esp+4H], edx                     ; 15A4 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 15A8 _ 89. 04 24
        call    _showString                             ; 15AB _ E8, 00001C07
        mov     eax, dword [ebp-0CH]                    ; 15B0 _ 8B. 45, F4
        mov     edx, dword [eax+94H]                    ; 15B3 _ 8B. 90, 00000094
        mov     eax, dword [ebp-0CH]                    ; 15B9 _ 8B. 45, F4
        mov     eax, dword [eax+9CH]                    ; 15BC _ 8B. 80, 0000009C
        mov     dword [esp+4H], edx                     ; 15C2 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 15C6 _ 89. 04 24
        call    _cons_newline                           ; 15C9 _ E8, 0000169B
        mov     edx, eax                                ; 15CE _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 15D0 _ 8B. 45, F4
        mov     dword [eax+9CH], edx                    ; 15D3 _ 89. 90, 0000009C
        jmp     ?_074                                   ; 15D9 _ EB, 01

?_073:  nop                                             ; 15DB _ 90
?_074:  add     esp, 52                                 ; 15DC _ 83. C4, 34
        pop     ebx                                     ; 15DF _ 5B
        pop     ebp                                     ; 15E0 _ 5D
        ret                                             ; 15E1 _ C3
; _cmd_mem End of function

_cmd_cls:; Function begin
        push    ebp                                     ; 15E2 _ 55
        mov     ebp, esp                                ; 15E3 _ 89. E5
        sub     esp, 56                                 ; 15E5 _ 83. EC, 38
        call    _task_now                               ; 15E8 _ E8, 00000000(rel)
        mov     dword [ebp-14H], eax                    ; 15ED _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 15F0 _ 8B. 45, EC
        mov     eax, dword [eax+94H]                    ; 15F3 _ 8B. 80, 00000094
        test    eax, eax                                ; 15F9 _ 85. C0
        je      ?_079                                   ; 15FB _ 0F 84, 000000E2
        mov     dword [ebp-0CH], 8                      ; 1601 _ C7. 45, F4, 00000008
        mov     dword [ebp-10H], 28                     ; 1608 _ C7. 45, F0, 0000001C
        mov     dword [ebp-10H], 28                     ; 160F _ C7. 45, F0, 0000001C
        jmp     ?_078                                   ; 1616 _ EB, 3F

?_075:  mov     dword [ebp-0CH], 8                      ; 1618 _ C7. 45, F4, 00000008
        jmp     ?_077                                   ; 161F _ EB, 29

?_076:  mov     eax, dword [ebp-14H]                    ; 1621 _ 8B. 45, EC
        mov     eax, dword [eax+94H]                    ; 1624 _ 8B. 80, 00000094
        mov     edx, dword [eax]                        ; 162A _ 8B. 10
        mov     eax, dword [ebp-14H]                    ; 162C _ 8B. 45, EC
        mov     eax, dword [eax+94H]                    ; 162F _ 8B. 80, 00000094
        mov     eax, dword [eax+4H]                     ; 1635 _ 8B. 40, 04
        imul    eax, dword [ebp-10H]                    ; 1638 _ 0F AF. 45, F0
        mov     ecx, dword [ebp-0CH]                    ; 163C _ 8B. 4D, F4
        add     eax, ecx                                ; 163F _ 01. C8
        add     eax, edx                                ; 1641 _ 01. D0
        mov     byte [eax], 0                           ; 1643 _ C6. 00, 00
        add     dword [ebp-0CH], 1                      ; 1646 _ 83. 45, F4, 01
?_077:  cmp     dword [ebp-0CH], 247                    ; 164A _ 81. 7D, F4, 000000F7
        jle     ?_076                                   ; 1651 _ 7E, CE
        add     dword [ebp-10H], 1                      ; 1653 _ 83. 45, F0, 01
?_078:  cmp     dword [ebp-10H], 155                    ; 1657 _ 81. 7D, F0, 0000009B
        jle     ?_075                                   ; 165E _ 7E, B8
        mov     eax, dword [ebp-14H]                    ; 1660 _ 8B. 45, EC
        mov     edx, dword [eax+94H]                    ; 1663 _ 8B. 90, 00000094
        mov     eax, dword [_shtctl]                    ; 1669 _ A1, 00000264(d)
        mov     dword [esp+14H], 156                    ; 166E _ C7. 44 24, 14, 0000009C
        mov     dword [esp+10H], 248                    ; 1676 _ C7. 44 24, 10, 000000F8
        mov     dword [esp+0CH], 28                     ; 167E _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 8                       ; 1686 _ C7. 44 24, 08, 00000008
        mov     dword [esp+4H], edx                     ; 168E _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1692 _ 89. 04 24
        call    _sheet_refresh                          ; 1695 _ E8, 00000000(rel)
        mov     eax, dword [ebp-14H]                    ; 169A _ 8B. 45, EC
        mov     dword [eax+9CH], 28                     ; 169D _ C7. 80, 0000009C, 0000001C
        mov     eax, dword [ebp-14H]                    ; 16A7 _ 8B. 45, EC
        mov     edx, dword [eax+94H]                    ; 16AA _ 8B. 90, 00000094
        mov     eax, dword [_shtctl]                    ; 16B0 _ A1, 00000264(d)
        mov     dword [esp+14H], ?_418                  ; 16B5 _ C7. 44 24, 14, 00000023(d)
        mov     dword [esp+10H], 7                      ; 16BD _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 28                     ; 16C5 _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 8                       ; 16CD _ C7. 44 24, 08, 00000008
        mov     dword [esp+4H], edx                     ; 16D5 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 16D9 _ 89. 04 24
        call    _showString                             ; 16DC _ E8, 00001AD6
        jmp     ?_080                                   ; 16E1 _ EB, 01

?_079:  nop                                             ; 16E3 _ 90
?_080:  leave                                           ; 16E4 _ C9
        ret                                             ; 16E5 _ C3
; _cmd_cls End of function

_cmd_execute_program:; Function begin
        push    ebp                                     ; 16E6 _ 55
        mov     ebp, esp                                ; 16E7 _ 89. E5
        push    ebx                                     ; 16E9 _ 53
        sub     esp, 68                                 ; 16EA _ 83. EC, 44
        call    _io_cli                                 ; 16ED _ E8, 00000000(rel)
        mov     eax, dword [_memman]                    ; 16F2 _ A1, 00000000(d)
        mov     dword [esp+4H], 16                      ; 16F7 _ C7. 44 24, 04, 00000010
        mov     dword [esp], eax                        ; 16FF _ 89. 04 24
        call    _memman_alloc                           ; 1702 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 1707 _ 89. 45, F0
        call    _task_now                               ; 170A _ E8, 00000000(rel)
        mov     dword [ebp-14H], eax                    ; 170F _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 1712 _ 8B. 45, EC
        mov     edx, dword [ebp-10H]                    ; 1715 _ 8B. 55, F0
        mov     dword [eax+0B0H], edx                   ; 1718 _ 89. 90, 000000B0
        mov     eax, dword [ebp-10H]                    ; 171E _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 1721 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1725 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1728 _ 89. 04 24
        call    _file_loadfile                          ; 172B _ E8, 000030F4
        call    _get_addr_gdt                           ; 1730 _ E8, 00000000(rel)
        mov     dword [ebp-18H], eax                    ; 1735 _ 89. 45, E8
        mov     eax, dword [ebp-14H]                    ; 1738 _ 8B. 45, EC
        mov     edx, dword [eax]                        ; 173B _ 8B. 10
        mov     eax, dword [_first_task_cons_selector]  ; 173D _ A1, 00000008(d)
        sub     edx, eax                                ; 1742 _ 29. C2
        mov     eax, edx                                ; 1744 _ 89. D0
        lea     edx, [eax+7H]                           ; 1746 _ 8D. 50, 07
        test    eax, eax                                ; 1749 _ 85. C0
        cmovs   eax, edx                                ; 174B _ 0F 48. C2
        sar     eax, 3                                  ; 174E _ C1. F8, 03
        add     eax, 21                                 ; 1751 _ 83. C0, 15
        mov     dword [ebp-1CH], eax                    ; 1754 _ 89. 45, E4
        mov     eax, dword [ebp-14H]                    ; 1757 _ 8B. 45, EC
        mov     edx, dword [eax]                        ; 175A _ 8B. 10
        mov     eax, dword [_first_task_cons_selector]  ; 175C _ A1, 00000008(d)
        sub     edx, eax                                ; 1761 _ 29. C2
        mov     eax, edx                                ; 1763 _ 89. D0
        lea     edx, [eax+7H]                           ; 1765 _ 8D. 50, 07
        test    eax, eax                                ; 1768 _ 85. C0
        cmovs   eax, edx                                ; 176A _ 0F 48. C2
        sar     eax, 3                                  ; 176D _ C1. F8, 03
        add     eax, 30                                 ; 1770 _ 83. C0, 1E
        mov     dword [ebp-20H], eax                    ; 1773 _ 89. 45, E0
        mov     eax, dword [ebp-10H]                    ; 1776 _ 8B. 45, F0
        mov     eax, dword [eax]                        ; 1779 _ 8B. 00
        mov     edx, eax                                ; 177B _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 177D _ 8B. 45, EC
        add     eax, 188                                ; 1780 _ 05, 000000BC
        mov     dword [esp+0CH], 16634                  ; 1785 _ C7. 44 24, 0C, 000040FA
        mov     dword [esp+8H], edx                     ; 178D _ 89. 54 24, 08
        mov     dword [esp+4H], 1048575                 ; 1791 _ C7. 44 24, 04, 000FFFFF
        mov     dword [esp], eax                        ; 1799 _ 89. 04 24
        call    _set_segmdesc                           ; 179C _ E8, 00000000(rel)
        mov     eax, dword [_memman]                    ; 17A1 _ A1, 00000000(d)
        mov     dword [esp+4H], 65536                   ; 17A6 _ C7. 44 24, 04, 00010000
        mov     dword [esp], eax                        ; 17AE _ 89. 04 24
        call    _memman_alloc_4k                        ; 17B1 _ E8, 00000000(rel)
        mov     dword [ebp-24H], eax                    ; 17B6 _ 89. 45, DC
        mov     eax, dword [ebp-10H]                    ; 17B9 _ 8B. 45, F0
        mov     edx, dword [ebp-24H]                    ; 17BC _ 8B. 55, DC
        mov     dword [eax+4H], edx                     ; 17BF _ 89. 50, 04
        mov     edx, dword [ebp-24H]                    ; 17C2 _ 8B. 55, DC
        mov     eax, dword [ebp-14H]                    ; 17C5 _ 8B. 45, EC
        add     eax, 188                                ; 17C8 _ 05, 000000BC
        add     eax, 8                                  ; 17CD _ 83. C0, 08
        mov     dword [esp+0CH], 16626                  ; 17D0 _ C7. 44 24, 0C, 000040F2
        mov     dword [esp+8H], edx                     ; 17D8 _ 89. 54 24, 08
        mov     dword [esp+4H], 77055                   ; 17DC _ C7. 44 24, 04, 00012CFF
        mov     dword [esp], eax                        ; 17E4 _ 89. 04 24
        call    _set_segmdesc                           ; 17E7 _ E8, 00000000(rel)
        mov     eax, dword [ebp-14H]                    ; 17EC _ 8B. 45, EC
        mov     dword [eax+30H], 0                      ; 17EF _ C7. 40, 30, 00000000
        call    _io_sti                                 ; 17F6 _ E8, 00000000(rel)
        mov     eax, dword [ebp-14H]                    ; 17FB _ 8B. 45, EC
        add     eax, 48                                 ; 17FE _ 83. C0, 30
        mov     dword [esp+10H], eax                    ; 1801 _ 89. 44 24, 10
        mov     dword [esp+0CH], 12                     ; 1805 _ C7. 44 24, 0C, 0000000C
        mov     dword [esp+8H], 65536                   ; 180D _ C7. 44 24, 08, 00010000
        mov     dword [esp+4H], 4                       ; 1815 _ C7. 44 24, 04, 00000004
        mov     dword [esp], 0                          ; 181D _ C7. 04 24, 00000000
        call    _start_app                              ; 1824 _ E8, 00000000(rel)
        call    _io_cli                                 ; 1829 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], 0                      ; 182E _ C7. 45, F4, 00000000
        mov     dword [ebp-0CH], 0                      ; 1835 _ C7. 45, F4, 00000000
        jmp     ?_083                                   ; 183C _ E9, 0000008A

?_081:  mov     eax, dword [ebp-14H]                    ; 1841 _ 8B. 45, EC
        mov     ecx, dword [eax+0CCH]                   ; 1844 _ 8B. 88, 000000CC
        mov     edx, dword [ebp-0CH]                    ; 184A _ 8B. 55, F4
        mov     eax, edx                                ; 184D _ 89. D0
        add     eax, eax                                ; 184F _ 01. C0
        add     eax, edx                                ; 1851 _ 01. D0
        shl     eax, 2                                  ; 1853 _ C1. E0, 02
        add     eax, ecx                                ; 1856 _ 01. C8
        mov     eax, dword [eax]                        ; 1858 _ 8B. 00
        test    eax, eax                                ; 185A _ 85. C0
        jz      ?_082                                   ; 185C _ 74, 69
        mov     eax, dword [ebp-14H]                    ; 185E _ 8B. 45, EC
        mov     ecx, dword [eax+0CCH]                   ; 1861 _ 8B. 88, 000000CC
        mov     edx, dword [ebp-0CH]                    ; 1867 _ 8B. 55, F4
        mov     eax, edx                                ; 186A _ 89. D0
        add     eax, eax                                ; 186C _ 01. C0
        add     eax, edx                                ; 186E _ 01. D0
        shl     eax, 2                                  ; 1870 _ C1. E0, 02
        add     eax, ecx                                ; 1873 _ 01. C8
        mov     eax, dword [eax+4H]                     ; 1875 _ 8B. 40, 04
        mov     ebx, eax                                ; 1878 _ 89. C3
        mov     eax, dword [ebp-14H]                    ; 187A _ 8B. 45, EC
        mov     ecx, dword [eax+0CCH]                   ; 187D _ 8B. 88, 000000CC
        mov     edx, dword [ebp-0CH]                    ; 1883 _ 8B. 55, F4
        mov     eax, edx                                ; 1886 _ 89. D0
        add     eax, eax                                ; 1888 _ 01. C0
        add     eax, edx                                ; 188A _ 01. D0
        shl     eax, 2                                  ; 188C _ C1. E0, 02
        add     eax, ecx                                ; 188F _ 01. C8
        mov     eax, dword [eax]                        ; 1891 _ 8B. 00
        mov     edx, eax                                ; 1893 _ 89. C2
        mov     eax, dword [_memman]                    ; 1895 _ A1, 00000000(d)
        mov     dword [esp+8H], ebx                     ; 189A _ 89. 5C 24, 08
        mov     dword [esp+4H], edx                     ; 189E _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 18A2 _ 89. 04 24
        call    _memman_free_4k                         ; 18A5 _ E8, 00000000(rel)
        mov     eax, dword [ebp-14H]                    ; 18AA _ 8B. 45, EC
        mov     ecx, dword [eax+0CCH]                   ; 18AD _ 8B. 88, 000000CC
        mov     edx, dword [ebp-0CH]                    ; 18B3 _ 8B. 55, F4
        mov     eax, edx                                ; 18B6 _ 89. D0
        add     eax, eax                                ; 18B8 _ 01. C0
        add     eax, edx                                ; 18BA _ 01. D0
        shl     eax, 2                                  ; 18BC _ C1. E0, 02
        add     eax, ecx                                ; 18BF _ 01. C8
        mov     dword [eax], 0                          ; 18C1 _ C7. 00, 00000000
?_082:  add     dword [ebp-0CH], 1                      ; 18C7 _ 83. 45, F4, 01
?_083:  cmp     dword [ebp-0CH], 7                      ; 18CB _ 83. 7D, F4, 07
        jle     ?_081                                   ; 18CF _ 0F 8E, FFFFFF6C
        mov     eax, dword [ebp-10H]                    ; 18D5 _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 18D8 _ 8B. 40, 08
        mov     ecx, eax                                ; 18DB _ 89. C1
        mov     eax, dword [ebp-10H]                    ; 18DD _ 8B. 45, F0
        mov     eax, dword [eax]                        ; 18E0 _ 8B. 00
        mov     edx, eax                                ; 18E2 _ 89. C2
        mov     eax, dword [_memman]                    ; 18E4 _ A1, 00000000(d)
        mov     dword [esp+8H], ecx                     ; 18E9 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 18ED _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 18F1 _ 89. 04 24
        call    _memman_free_4k                         ; 18F4 _ E8, 00000000(rel)
        mov     edx, dword [ebp-24H]                    ; 18F9 _ 8B. 55, DC
        mov     eax, dword [_memman]                    ; 18FC _ A1, 00000000(d)
        mov     dword [esp+8H], 65536                   ; 1901 _ C7. 44 24, 08, 00010000
        mov     dword [esp+4H], edx                     ; 1909 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 190D _ 89. 04 24
        call    _memman_free_4k                         ; 1910 _ E8, 00000000(rel)
        mov     edx, dword [ebp-10H]                    ; 1915 _ 8B. 55, F0
        mov     eax, dword [_memman]                    ; 1918 _ A1, 00000000(d)
        mov     dword [esp+8H], 16                      ; 191D _ C7. 44 24, 08, 00000010
        mov     dword [esp+4H], edx                     ; 1925 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1929 _ 89. 04 24
        call    _memman_free                            ; 192C _ E8, 00000000(rel)
        mov     eax, dword [ebp-14H]                    ; 1931 _ 8B. 45, EC
        mov     dword [eax+0B0H], 0                     ; 1934 _ C7. 80, 000000B0, 00000000
        call    _io_sti                                 ; 193E _ E8, 00000000(rel)
        nop                                             ; 1943 _ 90
        add     esp, 68                                 ; 1944 _ 83. C4, 44
        pop     ebx                                     ; 1947 _ 5B
        pop     ebp                                     ; 1948 _ 5D
        ret                                             ; 1949 _ C3
; _cmd_execute_program End of function

_cmd_start:; Function begin
        push    ebp                                     ; 194A _ 55
        mov     ebp, esp                                ; 194B _ 89. E5
        sub     esp, 40                                 ; 194D _ 83. EC, 28
        mov     eax, dword [_console_count]             ; 1950 _ A1, 00000010(d)
        mov     dword [esp], eax                        ; 1955 _ 89. 04 24
        call    _launch_console                         ; 1958 _ E8, FFFFF264
        mov     dword [ebp-10H], eax                    ; 195D _ 89. 45, F0
        mov     eax, dword [_shtctl]                    ; 1960 _ A1, 00000264(d)
        mov     dword [esp+0CH], 176                    ; 1965 _ C7. 44 24, 0C, 000000B0
        mov     dword [esp+8H], 156                     ; 196D _ C7. 44 24, 08, 0000009C
        mov     edx, dword [ebp-10H]                    ; 1975 _ 8B. 55, F0
        mov     dword [esp+4H], edx                     ; 1978 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 197C _ 89. 04 24
        call    _sheet_slide                            ; 197F _ E8, 00000000(rel)
        mov     eax, dword [_shtctl]                    ; 1984 _ A1, 00000264(d)
        mov     dword [esp+8H], 1                       ; 1989 _ C7. 44 24, 08, 00000001
        mov     edx, dword [ebp-10H]                    ; 1991 _ 8B. 55, F0
        mov     dword [esp+4H], edx                     ; 1994 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1998 _ 89. 04 24
        call    _sheet_updown                           ; 199B _ E8, 00000000(rel)
        mov     eax, dword [_console_count]             ; 19A0 _ A1, 00000010(d)
        add     eax, 1                                  ; 19A5 _ 83. C0, 01
        mov     dword [_console_count], eax             ; 19A8 _ A3, 00000010(d)
        mov     eax, dword [ebp-10H]                    ; 19AD _ 8B. 45, F0
        mov     eax, dword [eax+20H]                    ; 19B0 _ 8B. 40, 20
        mov     dword [ebp-14H], eax                    ; 19B3 _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 19B6 _ 8B. 45, EC
        mov     dword [eax+28H], 0                      ; 19B9 _ C7. 40, 28, 00000000
        mov     dword [ebp-0CH], 6                      ; 19C0 _ C7. 45, F4, 00000006
        jmp     ?_085                                   ; 19C7 _ EB, 24

?_084:  mov     edx, dword [ebp-0CH]                    ; 19C9 _ 8B. 55, F4
        mov     eax, dword [ebp+8H]                     ; 19CC _ 8B. 45, 08
        add     eax, edx                                ; 19CF _ 01. D0
        movzx   eax, byte [eax]                         ; 19D1 _ 0F B6. 00
        movzx   eax, al                                 ; 19D4 _ 0F B6. C0
        mov     edx, dword [ebp-14H]                    ; 19D7 _ 8B. 55, EC
        add     edx, 16                                 ; 19DA _ 83. C2, 10
        mov     dword [esp+4H], eax                     ; 19DD _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 19E1 _ 89. 14 24
        call    _fifo8_put                              ; 19E4 _ E8, 00000000(rel)
        add     dword [ebp-0CH], 1                      ; 19E9 _ 83. 45, F4, 01
?_085:  mov     edx, dword [ebp-0CH]                    ; 19ED _ 8B. 55, F4
        mov     eax, dword [ebp+8H]                     ; 19F0 _ 8B. 45, 08
        add     eax, edx                                ; 19F3 _ 01. D0
        movzx   eax, byte [eax]                         ; 19F5 _ 0F B6. 00
        test    al, al                                  ; 19F8 _ 84. C0
        jnz     ?_084                                   ; 19FA _ 75, CD
        mov     eax, dword [ebp-14H]                    ; 19FC _ 8B. 45, EC
        mov     edx, dword [ebp-14H]                    ; 19FF _ 8B. 55, EC
        mov     dword [eax+28H], edx                    ; 1A02 _ 89. 50, 28
        mov     eax, dword [ebp-14H]                    ; 1A05 _ 8B. 45, EC
        add     eax, 16                                 ; 1A08 _ 83. C0, 10
        mov     dword [esp+4H], 28                      ; 1A0B _ C7. 44 24, 04, 0000001C
        mov     dword [esp], eax                        ; 1A13 _ 89. 04 24
        call    _fifo8_put                              ; 1A16 _ E8, 00000000(rel)
        nop                                             ; 1A1B _ 90
        leave                                           ; 1A1C _ C9
        ret                                             ; 1A1D _ C3
; _cmd_start End of function

_cmd_ncst:; Function begin
        push    ebp                                     ; 1A1E _ 55
        mov     ebp, esp                                ; 1A1F _ 89. E5
        sub     esp, 40                                 ; 1A21 _ 83. EC, 28
        mov     eax, dword [_console_count]             ; 1A24 _ A1, 00000010(d)
        mov     dword [esp], eax                        ; 1A29 _ 89. 04 24
        call    _launch_console                         ; 1A2C _ E8, FFFFF190
        mov     eax, dword [_console_count]             ; 1A31 _ A1, 00000010(d)
        add     eax, 1                                  ; 1A36 _ 83. C0, 01
        mov     dword [_console_count], eax             ; 1A39 _ A3, 00000010(d)
        mov     eax, dword [_current_console_task]      ; 1A3E _ A1, 00000278(d)
        mov     dword [ebp-10H], eax                    ; 1A43 _ 89. 45, F0
        mov     eax, dword [ebp-10H]                    ; 1A46 _ 8B. 45, F0
        mov     dword [eax+28H], 0                      ; 1A49 _ C7. 40, 28, 00000000
        mov     dword [ebp-0CH], 5                      ; 1A50 _ C7. 45, F4, 00000005
        mov     dword [ebp-14H], 0                      ; 1A57 _ C7. 45, EC, 00000000
        jmp     ?_087                                   ; 1A5E _ EB, 24

?_086:  mov     edx, dword [ebp-0CH]                    ; 1A60 _ 8B. 55, F4
        mov     eax, dword [ebp+8H]                     ; 1A63 _ 8B. 45, 08
        add     eax, edx                                ; 1A66 _ 01. D0
        movzx   eax, byte [eax]                         ; 1A68 _ 0F B6. 00
        movzx   eax, al                                 ; 1A6B _ 0F B6. C0
        mov     edx, dword [ebp-10H]                    ; 1A6E _ 8B. 55, F0
        add     edx, 16                                 ; 1A71 _ 83. C2, 10
        mov     dword [esp+4H], eax                     ; 1A74 _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 1A78 _ 89. 14 24
        call    _fifo8_put                              ; 1A7B _ E8, 00000000(rel)
        add     dword [ebp-0CH], 1                      ; 1A80 _ 83. 45, F4, 01
?_087:  mov     edx, dword [ebp-0CH]                    ; 1A84 _ 8B. 55, F4
        mov     eax, dword [ebp+8H]                     ; 1A87 _ 8B. 45, 08
        add     eax, edx                                ; 1A8A _ 01. D0
        movzx   eax, byte [eax]                         ; 1A8C _ 0F B6. 00
        test    al, al                                  ; 1A8F _ 84. C0
        jnz     ?_086                                   ; 1A91 _ 75, CD
        mov     eax, dword [ebp-10H]                    ; 1A93 _ 8B. 45, F0
        mov     edx, dword [ebp-10H]                    ; 1A96 _ 8B. 55, F0
        mov     dword [eax+28H], edx                    ; 1A99 _ 89. 50, 28
        mov     eax, dword [ebp-10H]                    ; 1A9C _ 8B. 45, F0
        add     eax, 16                                 ; 1A9F _ 83. C0, 10
        mov     dword [esp+4H], 28                      ; 1AA2 _ C7. 44 24, 04, 0000001C
        mov     dword [esp], eax                        ; 1AAA _ 89. 04 24
        call    _fifo8_put                              ; 1AAD _ E8, 00000000(rel)
        nop                                             ; 1AB2 _ 90
        leave                                           ; 1AB3 _ C9
        ret                                             ; 1AB4 _ C3
; _cmd_ncst End of function

_console_task:; Function begin
        push    ebp                                     ; 1AB5 _ 55
        mov     ebp, esp                                ; 1AB6 _ 89. E5
        push    esi                                     ; 1AB8 _ 56
        push    ebx                                     ; 1AB9 _ 53
        sub     esp, 112                                ; 1ABA _ 83. EC, 70
        call    _task_now                               ; 1ABD _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 1AC2 _ 89. 45, F0
        mov     dword [ebp-0CH], 0                      ; 1AC5 _ C7. 45, F4, 00000000
        mov     dword [ebp-14H], 0                      ; 1ACC _ C7. 45, EC, 00000000
        mov     dword [ebp-18H], 0                      ; 1AD3 _ C7. 45, E8, 00000000
        mov     eax, dword [_memman]                    ; 1ADA _ A1, 00000000(d)
        mov     dword [esp+4H], 30                      ; 1ADF _ C7. 44 24, 04, 0000001E
        mov     dword [esp], eax                        ; 1AE7 _ 89. 04 24
        call    _memman_alloc                           ; 1AEA _ E8, 00000000(rel)
        mov     dword [ebp-1CH], eax                    ; 1AEF _ 89. 45, E4
        mov     dword [ebp-20H], 96                     ; 1AF2 _ C7. 45, E0, 00000060
        mov     dword [ebp-24H], 176                    ; 1AF9 _ C7. 45, DC, 000000B0
        mov     eax, dword [ebp-10H]                    ; 1B00 _ 8B. 45, F0
        mov     edx, dword [ebp+8H]                     ; 1B03 _ 8B. 55, 08
        mov     dword [eax+94H], edx                    ; 1B06 _ 89. 90, 00000094
        mov     eax, dword [ebp-10H]                    ; 1B0C _ 8B. 45, F0
        mov     dword [eax+98H], 16                     ; 1B0F _ C7. 80, 00000098, 00000010
        mov     eax, dword [ebp-10H]                    ; 1B19 _ 8B. 45, F0
        mov     dword [eax+9CH], 28                     ; 1B1C _ C7. 80, 0000009C, 0000001C
        mov     eax, dword [ebp-10H]                    ; 1B26 _ 8B. 45, F0
        mov     dword [eax+0A0H], -1                    ; 1B29 _ C7. 80, 000000A0, FFFFFFFF
        call    _timer_alloc                            ; 1B33 _ E8, 00000000(rel)
        mov     dword [ebp-28H], eax                    ; 1B38 _ 89. 45, D8
        mov     eax, dword [ebp-10H]                    ; 1B3B _ 8B. 45, F0
        add     eax, 16                                 ; 1B3E _ 83. C0, 10
        mov     dword [esp+8H], 1                       ; 1B41 _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], eax                     ; 1B49 _ 89. 44 24, 04
        mov     eax, dword [ebp-28H]                    ; 1B4D _ 8B. 45, D8
        mov     dword [esp], eax                        ; 1B50 _ 89. 04 24
        call    _timer_init                             ; 1B53 _ E8, 00000000(rel)
        mov     dword [esp+4H], 50                      ; 1B58 _ C7. 44 24, 04, 00000032
        mov     eax, dword [ebp-28H]                    ; 1B60 _ 8B. 45, D8
        mov     dword [esp], eax                        ; 1B63 _ 89. 04 24
        call    _timer_settime                          ; 1B66 _ E8, 00000000(rel)
        mov     eax, dword [ebp-10H]                    ; 1B6B _ 8B. 45, F0
        mov     edx, dword [ebp-28H]                    ; 1B6E _ 8B. 55, D8
        mov     dword [eax+0A8H], edx                   ; 1B71 _ 89. 90, 000000A8
        mov     eax, dword [ebp-10H]                    ; 1B77 _ 8B. 45, F0
        mov     edx, dword [ebp-1CH]                    ; 1B7A _ 8B. 55, E4
        mov     dword [eax+0ACH], edx                   ; 1B7D _ 89. 90, 000000AC
        mov     eax, dword [_shtctl]                    ; 1B83 _ A1, 00000264(d)
        mov     dword [esp+14H], ?_418                  ; 1B88 _ C7. 44 24, 14, 00000023(d)
        mov     dword [esp+10H], 7                      ; 1B90 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 28                     ; 1B98 _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 8                       ; 1BA0 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp+8H]                     ; 1BA8 _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 1BAB _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1BAF _ 89. 04 24
        call    _showString                             ; 1BB2 _ E8, 00001600
        mov     dword [ebp-2CH], 88064                  ; 1BB7 _ C7. 45, D4, 00015800
        mov     dword [ebp-30H], 0                      ; 1BBE _ C7. 45, D0, 00000000
?_088:  call    _io_cli                                 ; 1BC5 _ E8, 00000000(rel)
        call    _task_now                               ; 1BCA _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 1BCF _ 89. 45, F0
        mov     eax, dword [ebp-10H]                    ; 1BD2 _ 8B. 45, F0
        add     eax, 16                                 ; 1BD5 _ 83. C0, 10
        mov     dword [esp], eax                        ; 1BD8 _ 89. 04 24
        call    _fifo8_status                           ; 1BDB _ E8, 00000000(rel)
        test    eax, eax                                ; 1BE0 _ 85. C0
        jnz     ?_089                                   ; 1BE2 _ 75, 0A
        call    _io_sti                                 ; 1BE4 _ E8, 00000000(rel)
        jmp     ?_108                                   ; 1BE9 _ E9, 00000524

?_089:  mov     eax, dword [ebp-10H]                    ; 1BEE _ 8B. 45, F0
        add     eax, 16                                 ; 1BF1 _ 83. C0, 10
        mov     dword [esp], eax                        ; 1BF4 _ 89. 04 24
        call    _fifo8_get                              ; 1BF7 _ E8, 00000000(rel)
        mov     dword [ebp-34H], eax                    ; 1BFC _ 89. 45, CC
        cmp     dword [ebp-34H], 1                      ; 1BFF _ 83. 7D, CC, 01
        jg      ?_092                                   ; 1C03 _ 7F, 6E
        cmp     dword [ebp-0CH], 0                      ; 1C05 _ 83. 7D, F4, 00
        js      ?_092                                   ; 1C09 _ 78, 68
        cmp     dword [ebp-34H], 0                      ; 1C0B _ 83. 7D, CC, 00
        jz      ?_090                                   ; 1C0F _ 74, 26
        mov     eax, dword [ebp-10H]                    ; 1C11 _ 8B. 45, F0
        add     eax, 16                                 ; 1C14 _ 83. C0, 10
        mov     dword [esp+8H], 0                       ; 1C17 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], eax                     ; 1C1F _ 89. 44 24, 04
        mov     eax, dword [ebp-28H]                    ; 1C23 _ 8B. 45, D8
        mov     dword [esp], eax                        ; 1C26 _ 89. 04 24
        call    _timer_init                             ; 1C29 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], 7                      ; 1C2E _ C7. 45, F4, 00000007
        jmp     ?_091                                   ; 1C35 _ EB, 24

?_090:  mov     eax, dword [ebp-10H]                    ; 1C37 _ 8B. 45, F0
        add     eax, 16                                 ; 1C3A _ 83. C0, 10
        mov     dword [esp+8H], 1                       ; 1C3D _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], eax                     ; 1C45 _ 89. 44 24, 04
        mov     eax, dword [ebp-28H]                    ; 1C49 _ 8B. 45, D8
        mov     dword [esp], eax                        ; 1C4C _ 89. 04 24
        call    _timer_init                             ; 1C4F _ E8, 00000000(rel)
        mov     dword [ebp-0CH], 0                      ; 1C54 _ C7. 45, F4, 00000000
?_091:  mov     dword [esp+4H], 50                      ; 1C5B _ C7. 44 24, 04, 00000032
        mov     eax, dword [ebp-28H]                    ; 1C63 _ 8B. 45, D8
        mov     dword [esp], eax                        ; 1C66 _ 89. 04 24
        call    _timer_settime                          ; 1C69 _ E8, 00000000(rel)
        jmp     ?_107                                   ; 1C6E _ E9, 00000451

?_092:  cmp     dword [ebp-34H], 87                     ; 1C73 _ 83. 7D, CC, 57
        jnz     ?_093                                   ; 1C77 _ 75, 3C
        mov     dword [ebp-0CH], 7                      ; 1C79 _ C7. 45, F4, 00000007
        mov     eax, dword [ebp-10H]                    ; 1C80 _ 8B. 45, F0
        add     eax, 16                                 ; 1C83 _ 83. C0, 10
        mov     dword [esp+8H], 0                       ; 1C86 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], eax                     ; 1C8E _ 89. 44 24, 04
        mov     eax, dword [ebp-28H]                    ; 1C92 _ 8B. 45, D8
        mov     dword [esp], eax                        ; 1C95 _ 89. 04 24
        call    _timer_init                             ; 1C98 _ E8, 00000000(rel)
        mov     dword [esp+4H], 50                      ; 1C9D _ C7. 44 24, 04, 00000032
        mov     eax, dword [ebp-28H]                    ; 1CA5 _ 8B. 45, D8
        mov     dword [esp], eax                        ; 1CA8 _ 89. 04 24
        call    _timer_settime                          ; 1CAB _ E8, 00000000(rel)
        jmp     ?_107                                   ; 1CB0 _ E9, 0000040F

?_093:  cmp     dword [ebp-34H], 88                     ; 1CB5 _ 83. 7D, CC, 58
        jnz     ?_094                                   ; 1CB9 _ 75, 6A
        mov     eax, dword [ebp-10H]                    ; 1CBB _ 8B. 45, F0
        mov     ecx, dword [eax+9CH]                    ; 1CBE _ 8B. 88, 0000009C
        mov     eax, dword [ebp-10H]                    ; 1CC4 _ 8B. 45, F0
        mov     edx, dword [eax+98H]                    ; 1CC7 _ 8B. 90, 00000098
        mov     eax, dword [_shtctl]                    ; 1CCD _ A1, 00000264(d)
        mov     dword [esp+10H], 0                      ; 1CD2 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], ecx                    ; 1CDA _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 1CDE _ 89. 54 24, 08
        mov     edx, dword [ebp+8H]                     ; 1CE2 _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 1CE5 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1CE9 _ 89. 04 24
        call    _set_cursor                             ; 1CEC _ E8, FFFFECB2
        mov     dword [ebp-0CH], -1                     ; 1CF1 _ C7. 45, F4, FFFFFFFF
        mov     eax, dword [_task_main]                 ; 1CF8 _ A1, 00000274(d)
        mov     dword [esp+8H], 0                       ; 1CFD _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], -1                      ; 1D05 _ C7. 44 24, 04, FFFFFFFF
        mov     dword [esp], eax                        ; 1D0D _ 89. 04 24
        call    _task_run                               ; 1D10 _ E8, 00000000(rel)
        mov     eax, dword [ebp-10H]                    ; 1D15 _ 8B. 45, F0
        mov     dword [esp], eax                        ; 1D18 _ 89. 04 24
        call    _task_sleep                             ; 1D1B _ E8, 00000000(rel)
        jmp     ?_107                                   ; 1D20 _ E9, 0000039F

?_094:  cmp     dword [ebp-34H], 28                     ; 1D25 _ 83. 7D, CC, 1C
        jne     ?_105                                   ; 1D29 _ 0F 85, 00000238
        mov     eax, dword [ebp-10H]                    ; 1D2F _ 8B. 45, F0
        mov     ecx, dword [eax+9CH]                    ; 1D32 _ 8B. 88, 0000009C
        mov     eax, dword [ebp-10H]                    ; 1D38 _ 8B. 45, F0
        mov     edx, dword [eax+98H]                    ; 1D3B _ 8B. 90, 00000098
        mov     eax, dword [_shtctl]                    ; 1D41 _ A1, 00000264(d)
        mov     dword [esp+10H], 0                      ; 1D46 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], ecx                    ; 1D4E _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 1D52 _ 89. 54 24, 08
        mov     edx, dword [ebp+8H]                     ; 1D56 _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 1D59 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1D5D _ 89. 04 24
        call    _set_cursor                             ; 1D60 _ E8, FFFFEC3E
        mov     eax, dword [ebp-10H]                    ; 1D65 _ 8B. 45, F0
        mov     eax, dword [eax+98H]                    ; 1D68 _ 8B. 80, 00000098
        lea     edx, [eax+7H]                           ; 1D6E _ 8D. 50, 07
        test    eax, eax                                ; 1D71 _ 85. C0
        cmovs   eax, edx                                ; 1D73 _ 0F 48. C2
        sar     eax, 3                                  ; 1D76 _ C1. F8, 03
        lea     edx, [eax-2H]                           ; 1D79 _ 8D. 50, FE
        mov     eax, dword [ebp-1CH]                    ; 1D7C _ 8B. 45, E4
        add     eax, edx                                ; 1D7F _ 01. D0
        mov     byte [eax], 0                           ; 1D81 _ C6. 00, 00
        mov     eax, dword [ebp-10H]                    ; 1D84 _ 8B. 45, F0
        mov     eax, dword [eax+98H]                    ; 1D87 _ 8B. 80, 00000098
        lea     edx, [eax+7H]                           ; 1D8D _ 8D. 50, 07
        test    eax, eax                                ; 1D90 _ 85. C0
        cmovs   eax, edx                                ; 1D92 _ 0F 48. C2
        sar     eax, 3                                  ; 1D95 _ C1. F8, 03
        sub     eax, 2                                  ; 1D98 _ 83. E8, 02
        mov     byte [ebp+eax-55H], 0                   ; 1D9B _ C6. 44 05, AB, 00
        mov     eax, dword [ebp-10H]                    ; 1DA0 _ 8B. 45, F0
        mov     eax, dword [eax+9CH]                    ; 1DA3 _ 8B. 80, 0000009C
        mov     edx, dword [ebp+8H]                     ; 1DA9 _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 1DAC _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1DB0 _ 89. 04 24
        call    _cons_newline                           ; 1DB3 _ E8, 00000EB1
        mov     edx, eax                                ; 1DB8 _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 1DBA _ 8B. 45, F0
        mov     dword [eax+9CH], edx                    ; 1DBD _ 89. 90, 0000009C
        mov     dword [esp+4H], ?_419                   ; 1DC3 _ C7. 44 24, 04, 00000025(d)
        mov     eax, dword [ebp-1CH]                    ; 1DCB _ 8B. 45, E4
        mov     dword [esp], eax                        ; 1DCE _ 89. 04 24
        call    _strcmp                                 ; 1DD1 _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 1DD6 _ 83. F8, 01
        jnz     ?_095                                   ; 1DD9 _ 75, 10
        mov     eax, dword [ebp+0CH]                    ; 1DDB _ 8B. 45, 0C
        mov     dword [esp], eax                        ; 1DDE _ 89. 04 24
        call    _cmd_mem                                ; 1DE1 _ E8, FFFFF6D2
        jmp     ?_104                                   ; 1DE6 _ E9, 0000016A

?_095:  mov     dword [esp+4H], ?_420                   ; 1DEB _ C7. 44 24, 04, 00000029(d)
        mov     eax, dword [ebp-1CH]                    ; 1DF3 _ 8B. 45, E4
        mov     dword [esp], eax                        ; 1DF6 _ 89. 04 24
        call    _strcmp                                 ; 1DF9 _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 1DFE _ 83. F8, 01
        jnz     ?_096                                   ; 1E01 _ 75, 0A
        call    _cmd_cls                                ; 1E03 _ E8, FFFFF7DA
        jmp     ?_104                                   ; 1E08 _ E9, 00000148

?_096:  mov     dword [esp+4H], ?_421                   ; 1E0D _ C7. 44 24, 04, 0000002D(d)
        mov     eax, dword [ebp-1CH]                    ; 1E15 _ 8B. 45, E4
        mov     dword [esp], eax                        ; 1E18 _ 89. 04 24
        call    _strcmp                                 ; 1E1B _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 1E20 _ 83. F8, 01
        jnz     ?_097                                   ; 1E23 _ 75, 11
        mov     dword [esp], ?_422                      ; 1E25 _ C7. 04 24, 00000036(d)
        call    _cmd_execute_program                    ; 1E2C _ E8, FFFFF8B5
        jmp     ?_104                                   ; 1E31 _ E9, 0000011F

?_097:  mov     dword [esp+4H], ?_423                   ; 1E36 _ C7. 44 24, 04, 00000043(d)
        mov     eax, dword [ebp-1CH]                    ; 1E3E _ 8B. 45, E4
        mov     dword [esp], eax                        ; 1E41 _ 89. 04 24
        call    _strcmp                                 ; 1E44 _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 1E49 _ 83. F8, 01
        jnz     ?_098                                   ; 1E4C _ 75, 11
        mov     dword [esp], ?_424                      ; 1E4E _ C7. 04 24, 0000004A(d)
        call    _cmd_execute_program                    ; 1E55 _ E8, FFFFF88C
        jmp     ?_104                                   ; 1E5A _ E9, 000000F6

?_098:  mov     dword [esp+4H], ?_425                   ; 1E5F _ C7. 44 24, 04, 00000055(d)
        mov     eax, dword [ebp-1CH]                    ; 1E67 _ 8B. 45, E4
        mov     dword [esp], eax                        ; 1E6A _ 89. 04 24
        call    _strcmp                                 ; 1E6D _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 1E72 _ 83. F8, 01
        jnz     ?_099                                   ; 1E75 _ 75, 0A
        call    _cmd_dir                                ; 1E77 _ E8, FFFFF0C9
        jmp     ?_104                                   ; 1E7C _ E9, 000000D4

?_099:  mov     dword [esp+4H], ?_426                   ; 1E81 _ C7. 44 24, 04, 00000059(d)
        mov     eax, dword [ebp-1CH]                    ; 1E89 _ 8B. 45, E4
        mov     dword [esp], eax                        ; 1E8C _ 89. 04 24
        call    _strcmp                                 ; 1E8F _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 1E94 _ 83. F8, 01
        jnz     ?_100                                   ; 1E97 _ 75, 10
        mov     eax, dword [ebp-10H]                    ; 1E99 _ 8B. 45, F0
        mov     dword [esp], eax                        ; 1E9C _ 89. 04 24
        call    _cmd_exit                               ; 1E9F _ E8, 000005F4
        jmp     ?_104                                   ; 1EA4 _ E9, 000000AC

?_100:  mov     eax, dword [ebp-1CH]                    ; 1EA9 _ 8B. 45, E4
        movzx   eax, byte [eax]                         ; 1EAC _ 0F B6. 00
        cmp     al, 116                                 ; 1EAF _ 3C, 74
        jnz     ?_101                                   ; 1EB1 _ 75, 34
        mov     eax, dword [ebp-1CH]                    ; 1EB3 _ 8B. 45, E4
        add     eax, 1                                  ; 1EB6 _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 1EB9 _ 0F B6. 00
        cmp     al, 121                                 ; 1EBC _ 3C, 79
        jnz     ?_101                                   ; 1EBE _ 75, 27
        mov     eax, dword [ebp-1CH]                    ; 1EC0 _ 8B. 45, E4
        add     eax, 2                                  ; 1EC3 _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 1EC6 _ 0F B6. 00
        cmp     al, 112                                 ; 1EC9 _ 3C, 70
        jnz     ?_101                                   ; 1ECB _ 75, 1A
        mov     eax, dword [ebp-1CH]                    ; 1ECD _ 8B. 45, E4
        add     eax, 3                                  ; 1ED0 _ 83. C0, 03
        movzx   eax, byte [eax]                         ; 1ED3 _ 0F B6. 00
        cmp     al, 101                                 ; 1ED6 _ 3C, 65
        jnz     ?_101                                   ; 1ED8 _ 75, 0D
        mov     eax, dword [ebp-1CH]                    ; 1EDA _ 8B. 45, E4
        mov     dword [esp], eax                        ; 1EDD _ 89. 04 24
        call    _cmd_type                               ; 1EE0 _ E8, FFFFF21B
        jmp     ?_104                                   ; 1EE5 _ EB, 6E

?_101:  mov     dword [esp+4H], ?_427                   ; 1EE7 _ C7. 44 24, 04, 0000005E(d)
        mov     eax, dword [ebp-1CH]                    ; 1EEF _ 8B. 45, E4
        mov     dword [esp], eax                        ; 1EF2 _ 89. 04 24
        call    _strcmp                                 ; 1EF5 _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 1EFA _ 83. F8, 01
        jnz     ?_102                                   ; 1EFD _ 75, 0D
        lea     eax, [ebp-55H]                          ; 1EFF _ 8D. 45, AB
        mov     dword [esp], eax                        ; 1F02 _ 89. 04 24
        call    _cmd_start                              ; 1F05 _ E8, FFFFFA40
        jmp     ?_104                                   ; 1F0A _ EB, 49

?_102:  mov     dword [esp+4H], ?_428                   ; 1F0C _ C7. 44 24, 04, 00000064(d)
        mov     eax, dword [ebp-1CH]                    ; 1F14 _ 8B. 45, E4
        mov     dword [esp], eax                        ; 1F17 _ 89. 04 24
        call    _strcmp                                 ; 1F1A _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 1F1F _ 83. F8, 01
        jnz     ?_103                                   ; 1F22 _ 75, 0D
        lea     eax, [ebp-55H]                          ; 1F24 _ 8D. 45, AB
        mov     dword [esp], eax                        ; 1F27 _ 89. 04 24
        call    _cmd_ncst                               ; 1F2A _ E8, FFFFFAEF
        jmp     ?_104                                   ; 1F2F _ EB, 24

?_103:  mov     dword [esp+4H], ?_429                   ; 1F31 _ C7. 44 24, 04, 00000069(d)
        mov     eax, dword [ebp-1CH]                    ; 1F39 _ 8B. 45, E4
        mov     dword [esp], eax                        ; 1F3C _ 89. 04 24
        call    _strcmp                                 ; 1F3F _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 1F44 _ 83. F8, 01
        jnz     ?_104                                   ; 1F47 _ 75, 0C
        mov     dword [esp], ?_430                      ; 1F49 _ C7. 04 24, 0000006F(d)
        call    _cmd_execute_program                    ; 1F50 _ E8, FFFFF791
?_104:  mov     eax, dword [ebp-10H]                    ; 1F55 _ 8B. 45, F0
        mov     dword [eax+98H], 16                     ; 1F58 _ C7. 80, 00000098, 00000010
        jmp     ?_107                                   ; 1F62 _ E9, 0000015D

?_105:  cmp     dword [ebp-34H], 14                     ; 1F67 _ 83. 7D, CC, 0E
        jne     ?_106                                   ; 1F6B _ 0F 85, 00000098
        mov     eax, dword [ebp-10H]                    ; 1F71 _ 8B. 45, F0
        mov     eax, dword [eax+98H]                    ; 1F74 _ 8B. 80, 00000098
        cmp     eax, 8                                  ; 1F7A _ 83. F8, 08
        jle     ?_106                                   ; 1F7D _ 0F 8E, 00000086
        mov     eax, dword [ebp-10H]                    ; 1F83 _ 8B. 45, F0
        mov     ecx, dword [eax+9CH]                    ; 1F86 _ 8B. 88, 0000009C
        mov     eax, dword [ebp-10H]                    ; 1F8C _ 8B. 45, F0
        mov     edx, dword [eax+98H]                    ; 1F8F _ 8B. 90, 00000098
        mov     eax, dword [_shtctl]                    ; 1F95 _ A1, 00000264(d)
        mov     dword [esp+10H], 0                      ; 1F9A _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], ecx                    ; 1FA2 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 1FA6 _ 89. 54 24, 08
        mov     edx, dword [ebp+8H]                     ; 1FAA _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 1FAD _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1FB1 _ 89. 04 24
        call    _set_cursor                             ; 1FB4 _ E8, FFFFE9EA
        mov     eax, dword [ebp-10H]                    ; 1FB9 _ 8B. 45, F0
        mov     eax, dword [eax+98H]                    ; 1FBC _ 8B. 80, 00000098
        lea     edx, [eax-8H]                           ; 1FC2 _ 8D. 50, F8
        mov     eax, dword [ebp-10H]                    ; 1FC5 _ 8B. 45, F0
        mov     dword [eax+98H], edx                    ; 1FC8 _ 89. 90, 00000098
        mov     eax, dword [ebp-10H]                    ; 1FCE _ 8B. 45, F0
        mov     ecx, dword [eax+9CH]                    ; 1FD1 _ 8B. 88, 0000009C
        mov     eax, dword [ebp-10H]                    ; 1FD7 _ 8B. 45, F0
        mov     edx, dword [eax+98H]                    ; 1FDA _ 8B. 90, 00000098
        mov     eax, dword [_shtctl]                    ; 1FE0 _ A1, 00000264(d)
        mov     dword [esp+10H], 0                      ; 1FE5 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], ecx                    ; 1FED _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 1FF1 _ 89. 54 24, 08
        mov     edx, dword [ebp+8H]                     ; 1FF5 _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 1FF8 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1FFC _ 89. 04 24
        call    _set_cursor                             ; 1FFF _ E8, FFFFE99F
        jmp     ?_107                                   ; 2004 _ E9, 000000BB

?_106:  mov     eax, dword [ebp-34H]                    ; 2009 _ 8B. 45, CC
        mov     dword [esp], eax                        ; 200C _ 89. 04 24
        call    _transferScanCode                       ; 200F _ E8, FFFFEA70
        mov     byte [ebp-35H], al                      ; 2014 _ 88. 45, CB
        mov     eax, dword [ebp-10H]                    ; 2017 _ 8B. 45, F0
        mov     eax, dword [eax+98H]                    ; 201A _ 8B. 80, 00000098
        cmp     eax, 239                                ; 2020 _ 3D, 000000EF
        jg      ?_107                                   ; 2025 _ 0F 8F, 00000099
        cmp     byte [ebp-35H], 0                       ; 202B _ 80. 7D, CB, 00
        je      ?_107                                   ; 202F _ 0F 84, 0000008F
        mov     eax, dword [ebp-10H]                    ; 2035 _ 8B. 45, F0
        mov     eax, dword [eax+98H]                    ; 2038 _ 8B. 80, 00000098
        lea     edx, [eax+7H]                           ; 203E _ 8D. 50, 07
        test    eax, eax                                ; 2041 _ 85. C0
        cmovs   eax, edx                                ; 2043 _ 0F 48. C2
        sar     eax, 3                                  ; 2046 _ C1. F8, 03
        lea     edx, [eax-2H]                           ; 2049 _ 8D. 50, FE
        mov     eax, dword [ebp-1CH]                    ; 204C _ 8B. 45, E4
        add     edx, eax                                ; 204F _ 01. C2
        movzx   eax, byte [ebp-35H]                     ; 2051 _ 0F B6. 45, CB
        mov     byte [edx], al                          ; 2055 _ 88. 02
        mov     eax, dword [ebp-10H]                    ; 2057 _ 8B. 45, F0
        mov     eax, dword [eax+98H]                    ; 205A _ 8B. 80, 00000098
        lea     edx, [eax+7H]                           ; 2060 _ 8D. 50, 07
        test    eax, eax                                ; 2063 _ 85. C0
        cmovs   eax, edx                                ; 2065 _ 0F 48. C2
        sar     eax, 3                                  ; 2068 _ C1. F8, 03
        lea     edx, [eax-1H]                           ; 206B _ 8D. 50, FF
        mov     eax, dword [ebp-1CH]                    ; 206E _ 8B. 45, E4
        add     eax, edx                                ; 2071 _ 01. D0
        mov     byte [eax], 0                           ; 2073 _ C6. 00, 00
        mov     eax, dword [ebp-10H]                    ; 2076 _ 8B. 45, F0
        mov     eax, dword [eax+98H]                    ; 2079 _ 8B. 80, 00000098
        lea     edx, [eax+7H]                           ; 207F _ 8D. 50, 07
        test    eax, eax                                ; 2082 _ 85. C0
        cmovs   eax, edx                                ; 2084 _ 0F 48. C2
        sar     eax, 3                                  ; 2087 _ C1. F8, 03
        sub     eax, 2                                  ; 208A _ 83. E8, 02
        mov     edx, dword [ebp-34H]                    ; 208D _ 8B. 55, CC
        mov     byte [ebp+eax-55H], dl                  ; 2090 _ 88. 54 05, AB
        mov     eax, dword [ebp-10H]                    ; 2094 _ 8B. 45, F0
        mov     eax, dword [eax+98H]                    ; 2097 _ 8B. 80, 00000098
        lea     edx, [eax+7H]                           ; 209D _ 8D. 50, 07
        test    eax, eax                                ; 20A0 _ 85. C0
        cmovs   eax, edx                                ; 20A2 _ 0F 48. C2
        sar     eax, 3                                  ; 20A5 _ C1. F8, 03
        sub     eax, 1                                  ; 20A8 _ 83. E8, 01
        mov     byte [ebp+eax-55H], 0                   ; 20AB _ C6. 44 05, AB, 00
        movsx   eax, byte [ebp-35H]                     ; 20B0 _ 0F BE. 45, CB
        mov     dword [esp+4H], 1                       ; 20B4 _ C7. 44 24, 04, 00000001
        mov     dword [esp], eax                        ; 20BC _ 89. 04 24
        call    _cons_putchar                           ; 20BF _ E8, 00000ACE
?_107:  cmp     dword [ebp-0CH], 0                      ; 20C4 _ 83. 7D, F4, 00
        js      ?_108                                   ; 20C8 _ 78, 48
        mov     eax, dword [ebp-10H]                    ; 20CA _ 8B. 45, F0
        mov     eax, dword [eax+94H]                    ; 20CD _ 8B. 80, 00000094
        test    eax, eax                                ; 20D3 _ 85. C0
        jz      ?_108                                   ; 20D5 _ 74, 3B
        mov     eax, dword [ebp-10H]                    ; 20D7 _ 8B. 45, F0
        mov     ebx, dword [eax+9CH]                    ; 20DA _ 8B. 98, 0000009C
        mov     eax, dword [ebp-10H]                    ; 20E0 _ 8B. 45, F0
        mov     ecx, dword [eax+98H]                    ; 20E3 _ 8B. 88, 00000098
        mov     eax, dword [ebp-10H]                    ; 20E9 _ 8B. 45, F0
        mov     edx, dword [eax+94H]                    ; 20EC _ 8B. 90, 00000094
        mov     eax, dword [_shtctl]                    ; 20F2 _ A1, 00000264(d)
        mov     esi, dword [ebp-0CH]                    ; 20F7 _ 8B. 75, F4
        mov     dword [esp+10H], esi                    ; 20FA _ 89. 74 24, 10
        mov     dword [esp+0CH], ebx                    ; 20FE _ 89. 5C 24, 0C
        mov     dword [esp+8H], ecx                     ; 2102 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 2106 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 210A _ 89. 04 24
        call    _set_cursor                             ; 210D _ E8, FFFFE891
?_108:  call    _io_sti                                 ; 2112 _ E8, 00000000(rel)
        jmp     ?_088                                   ; 2117 _ E9, FFFFFAA9
; _console_task End of function

_cons_putstr:; Function begin
        push    ebp                                     ; 211C _ 55
        mov     ebp, esp                                ; 211D _ 89. E5
        sub     esp, 24                                 ; 211F _ 83. EC, 18
        jmp     ?_110                                   ; 2122 _ EB, 1D

?_109:  mov     eax, dword [ebp+8H]                     ; 2124 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 2127 _ 0F B6. 00
        movsx   eax, al                                 ; 212A _ 0F BE. C0
        mov     dword [esp+4H], 1                       ; 212D _ C7. 44 24, 04, 00000001
        mov     dword [esp], eax                        ; 2135 _ 89. 04 24
        call    _cons_putchar                           ; 2138 _ E8, 00000A55
        add     dword [ebp+8H], 1                       ; 213D _ 83. 45, 08, 01
?_110:  mov     eax, dword [ebp+8H]                     ; 2141 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 2144 _ 0F B6. 00
        test    al, al                                  ; 2147 _ 84. C0
        jnz     ?_109                                   ; 2149 _ 75, D9
        nop                                             ; 214B _ 90
        leave                                           ; 214C _ C9
        ret                                             ; 214D _ C3
; _cons_putstr End of function

_api_linewin:; Function begin
        push    ebp                                     ; 214E _ 55
        mov     ebp, esp                                ; 214F _ 89. E5
        sub     esp, 32                                 ; 2151 _ 83. EC, 20
        mov     eax, dword [ebp+14H]                    ; 2154 _ 8B. 45, 14
        sub     eax, dword [ebp+0CH]                    ; 2157 _ 2B. 45, 0C
        mov     dword [ebp-14H], eax                    ; 215A _ 89. 45, EC
        mov     eax, dword [ebp+18H]                    ; 215D _ 8B. 45, 18
        sub     eax, dword [ebp+10H]                    ; 2160 _ 2B. 45, 10
        mov     dword [ebp-18H], eax                    ; 2163 _ 89. 45, E8
        mov     eax, dword [ebp+0CH]                    ; 2166 _ 8B. 45, 0C
        shl     eax, 10                                 ; 2169 _ C1. E0, 0A
        mov     dword [ebp-8H], eax                     ; 216C _ 89. 45, F8
        mov     eax, dword [ebp+10H]                    ; 216F _ 8B. 45, 10
        shl     eax, 10                                 ; 2172 _ C1. E0, 0A
        mov     dword [ebp-0CH], eax                    ; 2175 _ 89. 45, F4
        cmp     dword [ebp-14H], 0                      ; 2178 _ 83. 7D, EC, 00
        jns     ?_111                                   ; 217C _ 79, 03
        neg     dword [ebp-14H]                         ; 217E _ F7. 5D, EC
?_111:  cmp     dword [ebp-18H], 0                      ; 2181 _ 83. 7D, E8, 00
        jns     ?_112                                   ; 2185 _ 79, 03
        neg     dword [ebp-18H]                         ; 2187 _ F7. 5D, E8
?_112:  mov     eax, dword [ebp-14H]                    ; 218A _ 8B. 45, EC
        cmp     eax, dword [ebp-18H]                    ; 218D _ 3B. 45, E8
        jl      ?_116                                   ; 2190 _ 7C, 53
        mov     eax, dword [ebp-14H]                    ; 2192 _ 8B. 45, EC
        add     eax, 1                                  ; 2195 _ 83. C0, 01
        mov     dword [ebp-10H], eax                    ; 2198 _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 219B _ 8B. 45, 0C
        cmp     eax, dword [ebp+14H]                    ; 219E _ 3B. 45, 14
        jle     ?_113                                   ; 21A1 _ 7E, 09
        mov     dword [ebp-14H], -1024                  ; 21A3 _ C7. 45, EC, FFFFFC00
        jmp     ?_114                                   ; 21AA _ EB, 07

?_113:  mov     dword [ebp-14H], 1024                   ; 21AC _ C7. 45, EC, 00000400
?_114:  mov     eax, dword [ebp+10H]                    ; 21B3 _ 8B. 45, 10
        cmp     eax, dword [ebp+18H]                    ; 21B6 _ 3B. 45, 18
        jg      ?_115                                   ; 21B9 _ 7F, 15
        mov     eax, dword [ebp+18H]                    ; 21BB _ 8B. 45, 18
        sub     eax, dword [ebp+10H]                    ; 21BE _ 2B. 45, 10
        add     eax, 1                                  ; 21C1 _ 83. C0, 01
        shl     eax, 10                                 ; 21C4 _ C1. E0, 0A
        cdq                                             ; 21C7 _ 99
        idiv    dword [ebp-10H]                         ; 21C8 _ F7. 7D, F0
        mov     dword [ebp-18H], eax                    ; 21CB _ 89. 45, E8
        jmp     ?_120                                   ; 21CE _ EB, 66

?_115:  mov     eax, dword [ebp+18H]                    ; 21D0 _ 8B. 45, 18
        sub     eax, dword [ebp+10H]                    ; 21D3 _ 2B. 45, 10
        sub     eax, 1                                  ; 21D6 _ 83. E8, 01
        shl     eax, 10                                 ; 21D9 _ C1. E0, 0A
        cdq                                             ; 21DC _ 99
        idiv    dword [ebp-10H]                         ; 21DD _ F7. 7D, F0
        mov     dword [ebp-18H], eax                    ; 21E0 _ 89. 45, E8
        jmp     ?_120                                   ; 21E3 _ EB, 51

?_116:  mov     eax, dword [ebp-18H]                    ; 21E5 _ 8B. 45, E8
        add     eax, 1                                  ; 21E8 _ 83. C0, 01
        mov     dword [ebp-10H], eax                    ; 21EB _ 89. 45, F0
        mov     eax, dword [ebp+10H]                    ; 21EE _ 8B. 45, 10
        cmp     eax, dword [ebp+18H]                    ; 21F1 _ 3B. 45, 18
        jle     ?_117                                   ; 21F4 _ 7E, 09
        mov     dword [ebp-18H], -1024                  ; 21F6 _ C7. 45, E8, FFFFFC00
        jmp     ?_118                                   ; 21FD _ EB, 07

?_117:  mov     dword [ebp-18H], 1024                   ; 21FF _ C7. 45, E8, 00000400
?_118:  mov     eax, dword [ebp+0CH]                    ; 2206 _ 8B. 45, 0C
        cmp     eax, dword [ebp+14H]                    ; 2209 _ 3B. 45, 14
        jg      ?_119                                   ; 220C _ 7F, 15
        mov     eax, dword [ebp+14H]                    ; 220E _ 8B. 45, 14
        sub     eax, dword [ebp+0CH]                    ; 2211 _ 2B. 45, 0C
        add     eax, 1                                  ; 2214 _ 83. C0, 01
        shl     eax, 10                                 ; 2217 _ C1. E0, 0A
        cdq                                             ; 221A _ 99
        idiv    dword [ebp-10H]                         ; 221B _ F7. 7D, F0
        mov     dword [ebp-14H], eax                    ; 221E _ 89. 45, EC
        jmp     ?_120                                   ; 2221 _ EB, 13

?_119:  mov     eax, dword [ebp+14H]                    ; 2223 _ 8B. 45, 14
        sub     eax, dword [ebp+0CH]                    ; 2226 _ 2B. 45, 0C
        sub     eax, 1                                  ; 2229 _ 83. E8, 01
        shl     eax, 10                                 ; 222C _ C1. E0, 0A
        cdq                                             ; 222F _ 99
        idiv    dword [ebp-10H]                         ; 2230 _ F7. 7D, F0
        mov     dword [ebp-14H], eax                    ; 2233 _ 89. 45, EC
?_120:  mov     dword [ebp-4H], 0                       ; 2236 _ C7. 45, FC, 00000000
        jmp     ?_122                                   ; 223D _ EB, 35

?_121:  mov     eax, dword [ebp+8H]                     ; 223F _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 2242 _ 8B. 10
        mov     eax, dword [ebp-0CH]                    ; 2244 _ 8B. 45, F4
        sar     eax, 10                                 ; 2247 _ C1. F8, 0A
        mov     ecx, eax                                ; 224A _ 89. C1
        mov     eax, dword [ebp+8H]                     ; 224C _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 224F _ 8B. 40, 04
        imul    eax, ecx                                ; 2252 _ 0F AF. C1
        mov     ecx, dword [ebp-8H]                     ; 2255 _ 8B. 4D, F8
        sar     ecx, 10                                 ; 2258 _ C1. F9, 0A
        add     eax, ecx                                ; 225B _ 01. C8
        add     eax, edx                                ; 225D _ 01. D0
        mov     edx, dword [ebp+1CH]                    ; 225F _ 8B. 55, 1C
        mov     byte [eax], dl                          ; 2262 _ 88. 10
        mov     eax, dword [ebp-14H]                    ; 2264 _ 8B. 45, EC
        add     dword [ebp-8H], eax                     ; 2267 _ 01. 45, F8
        mov     eax, dword [ebp-18H]                    ; 226A _ 8B. 45, E8
        add     dword [ebp-0CH], eax                    ; 226D _ 01. 45, F4
        add     dword [ebp-4H], 1                       ; 2270 _ 83. 45, FC, 01
?_122:  mov     eax, dword [ebp-4H]                     ; 2274 _ 8B. 45, FC
        cmp     eax, dword [ebp-10H]                    ; 2277 _ 3B. 45, F0
        jl      ?_121                                   ; 227A _ 7C, C3
        nop                                             ; 227C _ 90
        leave                                           ; 227D _ C9
        ret                                             ; 227E _ C3
; _api_linewin End of function

_handle_keyboard:; Function begin
        push    ebp                                     ; 227F _ 55
        mov     ebp, esp                                ; 2280 _ 89. E5
        sub     esp, 56                                 ; 2282 _ 83. EC, 38
?_123:  call    _io_cli                                 ; 2285 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 228A _ 8B. 45, 08
        add     eax, 16                                 ; 228D _ 83. C0, 10
        mov     dword [esp], eax                        ; 2290 _ 89. 04 24
        call    _fifo8_status                           ; 2293 _ E8, 00000000(rel)
        test    eax, eax                                ; 2298 _ 85. C0
        jnz     ?_124                                   ; 229A _ 75, 2A
        call    _io_sti                                 ; 229C _ E8, 00000000(rel)
        cmp     dword [ebp+0CH], 0                      ; 22A1 _ 83. 7D, 0C, 00
        jne     ?_128                                   ; 22A5 _ 0F 85, 000000E2
        call    _io_sti                                 ; 22AB _ E8, 00000000(rel)
        mov     eax, dword [ebp+10H]                    ; 22B0 _ 8B. 45, 10
        add     eax, 28                                 ; 22B3 _ 83. C0, 1C
        mov     dword [eax], -1                         ; 22B6 _ C7. 00, FFFFFFFF
        mov     eax, 0                                  ; 22BC _ B8, 00000000
        jmp     ?_129                                   ; 22C1 _ E9, 000000CD

?_124:  mov     eax, dword [ebp+8H]                     ; 22C6 _ 8B. 45, 08
        add     eax, 16                                 ; 22C9 _ 83. C0, 10
        mov     dword [esp], eax                        ; 22CC _ 89. 04 24
        call    _fifo8_get                              ; 22CF _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 22D4 _ 89. 45, F4
        call    _io_sti                                 ; 22D7 _ E8, 00000000(rel)
        cmp     dword [ebp-0CH], 255                    ; 22DC _ 81. 7D, F4, 000000FF
        jle     ?_125                                   ; 22E3 _ 7E, 37
        mov     edx, dword [_sht_back]                  ; 22E5 _ 8B. 15, 00000268(d)
        mov     eax, dword [_shtctl]                    ; 22EB _ A1, 00000264(d)
        mov     dword [esp+14H], ?_431                  ; 22F0 _ C7. 44 24, 14, 00000079(d)
        mov     dword [esp+10H], 7                      ; 22F8 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 176                    ; 2300 _ C7. 44 24, 0C, 000000B0
        mov     dword [esp+8H], 0                       ; 2308 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 2310 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2314 _ 89. 04 24
        call    _showString                             ; 2317 _ E8, 00000E9B
?_125:  cmp     dword [ebp-0CH], 1                      ; 231C _ 83. 7D, F4, 01
        jg      ?_126                                   ; 2320 _ 7F, 41
        mov     eax, dword [ebp+8H]                     ; 2322 _ 8B. 45, 08
        lea     edx, [eax+10H]                          ; 2325 _ 8D. 50, 10
        mov     eax, dword [ebp+8H]                     ; 2328 _ 8B. 45, 08
        mov     eax, dword [eax+0A8H]                   ; 232B _ 8B. 80, 000000A8
        mov     dword [esp+8H], 1                       ; 2331 _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], edx                     ; 2339 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 233D _ 89. 04 24
        call    _timer_init                             ; 2340 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 2345 _ 8B. 45, 08
        mov     eax, dword [eax+0A8H]                   ; 2348 _ 8B. 80, 000000A8
        mov     dword [esp+4H], 50                      ; 234E _ C7. 44 24, 04, 00000032
        mov     dword [esp], eax                        ; 2356 _ 89. 04 24
        call    _timer_settime                          ; 2359 _ E8, 00000000(rel)
        jmp     ?_123                                   ; 235E _ E9, FFFFFF22

?_126:  cmp     dword [ebp-0CH], 2                      ; 2363 _ 83. 7D, F4, 02
        jnz     ?_127                                   ; 2367 _ 75, 12
        mov     eax, dword [ebp+8H]                     ; 2369 _ 8B. 45, 08
        mov     dword [eax+0A0H], 7                     ; 236C _ C7. 80, 000000A0, 00000007
        jmp     ?_123                                   ; 2376 _ E9, FFFFFF0A

?_127:  mov     eax, dword [ebp+10H]                    ; 237B _ 8B. 45, 10
        add     eax, 28                                 ; 237E _ 83. C0, 1C
        mov     edx, dword [ebp-0CH]                    ; 2381 _ 8B. 55, F4
        mov     dword [eax], edx                        ; 2384 _ 89. 10
        mov     eax, 0                                  ; 2386 _ B8, 00000000
        jmp     ?_129                                   ; 238B _ EB, 06

?_128:  nop                                             ; 238D _ 90
        jmp     ?_123                                   ; 238E _ E9, FFFFFEF2
; _handle_keyboard End of function

?_129:  ; Local function
        leave                                           ; 2393 _ C9
        ret                                             ; 2394 _ C3

_close_constask:; Function begin
        push    ebp                                     ; 2395 _ 55
        mov     ebp, esp                                ; 2396 _ 89. E5
        sub     esp, 24                                 ; 2398 _ 83. EC, 18
        mov     eax, dword [ebp+8H]                     ; 239B _ 8B. 45, 08
        mov     dword [esp], eax                        ; 239E _ 89. 04 24
        call    _task_sleep                             ; 23A1 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 23A6 _ 8B. 45, 08
        mov     eax, dword [eax+0B8H]                   ; 23A9 _ 8B. 80, 000000B8
        mov     edx, eax                                ; 23AF _ 89. C2
        mov     eax, dword [_memman]                    ; 23B1 _ A1, 00000000(d)
        mov     dword [esp+8H], 65536                   ; 23B6 _ C7. 44 24, 08, 00010000
        mov     dword [esp+4H], edx                     ; 23BE _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 23C2 _ 89. 04 24
        call    _memman_free_4k                         ; 23C5 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 23CA _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 23CD _ 8B. 40, 10
        mov     edx, eax                                ; 23D0 _ 89. C2
        mov     eax, dword [_memman]                    ; 23D2 _ A1, 00000000(d)
        mov     dword [esp+8H], 128                     ; 23D7 _ C7. 44 24, 08, 00000080
        mov     dword [esp+4H], edx                     ; 23DF _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 23E3 _ 89. 04 24
        call    _memman_free                            ; 23E6 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 23EB _ 8B. 45, 08
        mov     eax, dword [eax+0ACH]                   ; 23EE _ 8B. 80, 000000AC
        mov     edx, eax                                ; 23F4 _ 89. C2
        mov     eax, dword [_memman]                    ; 23F6 _ A1, 00000000(d)
        mov     dword [esp+8H], 30                      ; 23FB _ C7. 44 24, 08, 0000001E
        mov     dword [esp+4H], edx                     ; 2403 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2407 _ 89. 04 24
        call    _memman_free                            ; 240A _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 240F _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 2412 _ C7. 40, 04, 00000000
        mov     dword [_current_console_task], 0        ; 2419 _ C7. 05, 00000278(d), 00000000
        nop                                             ; 2423 _ 90
        leave                                           ; 2424 _ C9
        ret                                             ; 2425 _ C3
; _close_constask End of function

_close_console:; Function begin
        push    ebp                                     ; 2426 _ 55
        mov     ebp, esp                                ; 2427 _ 89. E5
        sub     esp, 40                                 ; 2429 _ 83. EC, 28
        mov     eax, dword [ebp+8H]                     ; 242C _ 8B. 45, 08
        mov     eax, dword [eax+0A8H]                   ; 242F _ 8B. 80, 000000A8
        mov     dword [esp], eax                        ; 2435 _ 89. 04 24
        call    _timer_free                             ; 2438 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 243D _ 8B. 45, 08
        mov     eax, dword [eax+0B4H]                   ; 2440 _ 8B. 80, 000000B4
        test    eax, eax                                ; 2446 _ 85. C0
        jz      ?_130                                   ; 2448 _ 74, 40
        mov     eax, dword [ebp+8H]                     ; 244A _ 8B. 45, 08
        mov     eax, dword [eax+0B4H]                   ; 244D _ 8B. 80, 000000B4
        mov     dword [ebp-0CH], eax                    ; 2453 _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 2456 _ 8B. 45, F4
        mov     eax, dword [eax]                        ; 2459 _ 8B. 00
        mov     edx, eax                                ; 245B _ 89. C2
        mov     eax, dword [_memman]                    ; 245D _ A1, 00000000(d)
        mov     dword [esp+8H], 42240                   ; 2462 _ C7. 44 24, 08, 0000A500
        mov     dword [esp+4H], edx                     ; 246A _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 246E _ 89. 04 24
        call    _memman_free_4k                         ; 2471 _ E8, 00000000(rel)
        mov     eax, dword [_shtctl]                    ; 2476 _ A1, 00000264(d)
        mov     edx, dword [ebp-0CH]                    ; 247B _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 247E _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2482 _ 89. 04 24
        call    _sheet_free                             ; 2485 _ E8, 00000000(rel)
?_130:  mov     eax, dword [ebp+8H]                     ; 248A _ 8B. 45, 08
        mov     dword [esp], eax                        ; 248D _ 89. 04 24
        call    _close_constask                         ; 2490 _ E8, FFFFFF00
        nop                                             ; 2495 _ 90
        leave                                           ; 2496 _ C9
        ret                                             ; 2497 _ C3
; _close_console End of function

_cmd_exit:; Function begin
        push    ebp                                     ; 2498 _ 55
        mov     ebp, esp                                ; 2499 _ 89. E5
        sub     esp, 24                                 ; 249B _ 83. EC, 18
        call    _io_cli                                 ; 249E _ E8, 00000000(rel)
        mov     dword [esp+4H], 255                     ; 24A3 _ C7. 44 24, 04, 000000FF
        mov     dword [esp], _keyinfo                   ; 24AB _ C7. 04 24, 00000014(d)
        call    _fifo8_put                              ; 24B2 _ E8, 00000000(rel)
        call    _io_sti                                 ; 24B7 _ E8, 00000000(rel)
        nop                                             ; 24BC _ 90
        leave                                           ; 24BD _ C9
        ret                                             ; 24BE _ C3
; _cmd_exit End of function

_kernel_api:; Function begin
        push    ebp                                     ; 24BF _ 55
        mov     ebp, esp                                ; 24C0 _ 89. E5
        push    esi                                     ; 24C2 _ 56
        push    ebx                                     ; 24C3 _ 53
        sub     esp, 80                                 ; 24C4 _ 83. EC, 50
        call    _task_now                               ; 24C7 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 24CC _ 89. 45, F0
        mov     dword [ebp-14H], 0                      ; 24CF _ C7. 45, EC, 00000000
        lea     eax, [ebp+24H]                          ; 24D6 _ 8D. 45, 24
        add     eax, 4                                  ; 24D9 _ 83. C0, 04
        mov     dword [ebp-18H], eax                    ; 24DC _ 89. 45, E8
        mov     dword [ebp-0CH], 0                      ; 24DF _ C7. 45, F4, 00000000
        mov     dword [ebp-1CH], 0                      ; 24E6 _ C7. 45, E4, 00000000
        cmp     dword [ebp+1CH], 1                      ; 24ED _ 83. 7D, 1C, 01
        jnz     ?_131                                   ; 24F1 _ 75, 1B
        mov     eax, dword [ebp+24H]                    ; 24F3 _ 8B. 45, 24
        movsx   eax, al                                 ; 24F6 _ 0F BE. C0
        mov     dword [esp+4H], 1                       ; 24F9 _ C7. 44 24, 04, 00000001
        mov     dword [esp], eax                        ; 2501 _ 89. 04 24
        call    _cons_putchar                           ; 2504 _ E8, 00000689
        jmp     ?_165                                   ; 2509 _ E9, 00000678

?_131:  cmp     dword [ebp+1CH], 2                      ; 250E _ 83. 7D, 1C, 02
        jnz     ?_132                                   ; 2512 _ 75, 1D
        mov     eax, dword [ebp-10H]                    ; 2514 _ 8B. 45, F0
        mov     eax, dword [eax+0B0H]                   ; 2517 _ 8B. 80, 000000B0
        mov     edx, dword [eax]                        ; 251D _ 8B. 10
        mov     eax, dword [ebp+18H]                    ; 251F _ 8B. 45, 18
        add     eax, edx                                ; 2522 _ 01. D0
        mov     dword [esp], eax                        ; 2524 _ 89. 04 24
        call    _cons_putstr                            ; 2527 _ E8, FFFFFBF0
        jmp     ?_165                                   ; 252C _ E9, 00000655

?_132:  cmp     dword [ebp+1CH], 4                      ; 2531 _ 83. 7D, 1C, 04
        jnz     ?_133                                   ; 2535 _ 75, 15
        mov     eax, dword [ebp-10H]                    ; 2537 _ 8B. 45, F0
        mov     dword [eax+34H], 0                      ; 253A _ C7. 40, 34, 00000000
        mov     eax, dword [ebp-10H]                    ; 2541 _ 8B. 45, F0
        add     eax, 48                                 ; 2544 _ 83. C0, 30
        jmp     ?_166                                   ; 2547 _ E9, 0000063F

?_133:  cmp     dword [ebp+1CH], 5                      ; 254C _ 83. 7D, 1C, 05
        jne     ?_134                                   ; 2550 _ 0F 85, 00000107
        mov     eax, dword [_shtctl]                    ; 2556 _ A1, 00000264(d)
        mov     dword [esp], eax                        ; 255B _ 89. 04 24
        call    _sheet_alloc                            ; 255E _ E8, 00000000(rel)
        mov     dword [ebp-14H], eax                    ; 2563 _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 2566 _ 8B. 45, EC
        mov     edx, dword [ebp-10H]                    ; 2569 _ 8B. 55, F0
        mov     dword [eax+20H], edx                    ; 256C _ 89. 50, 20
        mov     eax, dword [ebp-14H]                    ; 256F _ 8B. 45, EC
        mov     eax, dword [eax+1CH]                    ; 2572 _ 8B. 40, 1C
        or      eax, 10H                                ; 2575 _ 83. C8, 10
        mov     edx, eax                                ; 2578 _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 257A _ 8B. 45, EC
        mov     dword [eax+1CH], edx                    ; 257D _ 89. 50, 1C
        mov     edx, dword [ebp+24H]                    ; 2580 _ 8B. 55, 24
        mov     eax, dword [ebp-10H]                    ; 2583 _ 8B. 45, F0
        mov     eax, dword [eax+0B0H]                   ; 2586 _ 8B. 80, 000000B0
        mov     ecx, dword [eax+4H]                     ; 258C _ 8B. 48, 04
        mov     eax, dword [ebp+18H]                    ; 258F _ 8B. 45, 18
        add     eax, ecx                                ; 2592 _ 01. C8
        mov     dword [esp+10H], edx                    ; 2594 _ 89. 54 24, 10
        mov     edx, dword [ebp+8H]                     ; 2598 _ 8B. 55, 08
        mov     dword [esp+0CH], edx                    ; 259B _ 89. 54 24, 0C
        mov     edx, dword [ebp+0CH]                    ; 259F _ 8B. 55, 0C
        mov     dword [esp+8H], edx                     ; 25A2 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 25A6 _ 89. 44 24, 04
        mov     eax, dword [ebp-14H]                    ; 25AA _ 8B. 45, EC
        mov     dword [esp], eax                        ; 25AD _ 89. 04 24
        call    _sheet_setbuf                           ; 25B0 _ E8, 00000000(rel)
        mov     eax, dword [ebp-10H]                    ; 25B5 _ 8B. 45, F0
        mov     eax, dword [eax+0B0H]                   ; 25B8 _ 8B. 80, 000000B0
        mov     edx, dword [eax]                        ; 25BE _ 8B. 10
        mov     eax, dword [ebp+20H]                    ; 25C0 _ 8B. 45, 20
        add     edx, eax                                ; 25C3 _ 01. C2
        mov     eax, dword [_shtctl]                    ; 25C5 _ A1, 00000264(d)
        mov     dword [esp+0CH], 0                      ; 25CA _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], edx                     ; 25D2 _ 89. 54 24, 08
        mov     edx, dword [ebp-14H]                    ; 25D6 _ 8B. 55, EC
        mov     dword [esp+4H], edx                     ; 25D9 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 25DD _ 89. 04 24
        call    _make_window8                           ; 25E0 _ E8, 00001BA2
        mov     eax, dword [_shtctl]                    ; 25E5 _ A1, 00000264(d)
        mov     eax, dword [eax+0CH]                    ; 25EA _ 8B. 40, 0C
        sub     eax, dword [ebp+8H]                     ; 25ED _ 2B. 45, 08
        mov     edx, eax                                ; 25F0 _ 89. C2
        shr     edx, 31                                 ; 25F2 _ C1. EA, 1F
        add     eax, edx                                ; 25F5 _ 01. D0
        sar     eax, 1                                  ; 25F7 _ D1. F8
        mov     ecx, eax                                ; 25F9 _ 89. C1
        mov     eax, dword [_shtctl]                    ; 25FB _ A1, 00000264(d)
        mov     eax, dword [eax+8H]                     ; 2600 _ 8B. 40, 08
        sub     eax, dword [ebp+0CH]                    ; 2603 _ 2B. 45, 0C
        mov     edx, eax                                ; 2606 _ 89. C2
        shr     edx, 31                                 ; 2608 _ C1. EA, 1F
        add     eax, edx                                ; 260B _ 01. D0
        sar     eax, 1                                  ; 260D _ D1. F8
        mov     edx, eax                                ; 260F _ 89. C2
        mov     eax, dword [_shtctl]                    ; 2611 _ A1, 00000264(d)
        mov     dword [esp+0CH], ecx                    ; 2616 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 261A _ 89. 54 24, 08
        mov     edx, dword [ebp-14H]                    ; 261E _ 8B. 55, EC
        mov     dword [esp+4H], edx                     ; 2621 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2625 _ 89. 04 24
        call    _sheet_slide                            ; 2628 _ E8, 00000000(rel)
        mov     eax, dword [_shtctl]                    ; 262D _ A1, 00000264(d)
        mov     edx, dword [eax+10H]                    ; 2632 _ 8B. 50, 10
        mov     eax, dword [_shtctl]                    ; 2635 _ A1, 00000264(d)
        mov     dword [esp+8H], edx                     ; 263A _ 89. 54 24, 08
        mov     edx, dword [ebp-14H]                    ; 263E _ 8B. 55, EC
        mov     dword [esp+4H], edx                     ; 2641 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2645 _ 89. 04 24
        call    _sheet_updown                           ; 2648 _ E8, 00000000(rel)
        mov     eax, dword [ebp-18H]                    ; 264D _ 8B. 45, E8
        add     eax, 28                                 ; 2650 _ 83. C0, 1C
        mov     edx, dword [ebp-14H]                    ; 2653 _ 8B. 55, EC
        mov     dword [eax], edx                        ; 2656 _ 89. 10
        jmp     ?_165                                   ; 2658 _ E9, 00000529

?_134:  cmp     dword [ebp+1CH], 6                      ; 265D _ 83. 7D, 1C, 06
        jne     ?_135                                   ; 2661 _ 0F 85, 0000008D
        mov     eax, dword [ebp+18H]                    ; 2667 _ 8B. 45, 18
        mov     dword [ebp-14H], eax                    ; 266A _ 89. 45, EC
        mov     eax, dword [ebp-10H]                    ; 266D _ 8B. 45, F0
        mov     eax, dword [eax+0B0H]                   ; 2670 _ 8B. 80, 000000B0
        mov     edx, dword [eax+4H]                     ; 2676 _ 8B. 50, 04
        mov     eax, dword [ebp+10H]                    ; 2679 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 267C _ 8D. 0C 02
        mov     eax, dword [ebp+24H]                    ; 267F _ 8B. 45, 24
        movsx   eax, al                                 ; 2682 _ 0F BE. C0
        mov     edx, dword [_shtctl]                    ; 2685 _ 8B. 15, 00000264(d)
        mov     dword [esp+14H], ecx                    ; 268B _ 89. 4C 24, 14
        mov     dword [esp+10H], eax                    ; 268F _ 89. 44 24, 10
        mov     eax, dword [ebp+8H]                     ; 2693 _ 8B. 45, 08
        mov     dword [esp+0CH], eax                    ; 2696 _ 89. 44 24, 0C
        mov     eax, dword [ebp+0CH]                    ; 269A _ 8B. 45, 0C
        mov     dword [esp+8H], eax                     ; 269D _ 89. 44 24, 08
        mov     eax, dword [ebp-14H]                    ; 26A1 _ 8B. 45, EC
        mov     dword [esp+4H], eax                     ; 26A4 _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 26A8 _ 89. 14 24
        call    _showString                             ; 26AB _ E8, 00000B07
        mov     eax, dword [ebp+8H]                     ; 26B0 _ 8B. 45, 08
        lea     ecx, [eax+10H]                          ; 26B3 _ 8D. 48, 10
        mov     eax, dword [ebp+20H]                    ; 26B6 _ 8B. 45, 20
        lea     edx, [eax*8]                            ; 26B9 _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp+0CH]                    ; 26C0 _ 8B. 45, 0C
        add     edx, eax                                ; 26C3 _ 01. C2
        mov     eax, dword [_shtctl]                    ; 26C5 _ A1, 00000264(d)
        mov     dword [esp+14H], ecx                    ; 26CA _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 26CE _ 89. 54 24, 10
        mov     edx, dword [ebp+8H]                     ; 26D2 _ 8B. 55, 08
        mov     dword [esp+0CH], edx                    ; 26D5 _ 89. 54 24, 0C
        mov     edx, dword [ebp+0CH]                    ; 26D9 _ 8B. 55, 0C
        mov     dword [esp+8H], edx                     ; 26DC _ 89. 54 24, 08
        mov     edx, dword [ebp-14H]                    ; 26E0 _ 8B. 55, EC
        mov     dword [esp+4H], edx                     ; 26E3 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 26E7 _ 89. 04 24
        call    _sheet_refresh                          ; 26EA _ E8, 00000000(rel)
        jmp     ?_165                                   ; 26EF _ E9, 00000492

?_135:  cmp     dword [ebp+1CH], 7                      ; 26F4 _ 83. 7D, 1C, 07
        jnz     ?_136                                   ; 26F8 _ 75, 7E
        mov     eax, dword [ebp+18H]                    ; 26FA _ 8B. 45, 18
        mov     dword [ebp-14H], eax                    ; 26FD _ 89. 45, EC
        mov     ebx, dword [ebp+24H]                    ; 2700 _ 8B. 5D, 24
        mov     eax, dword [ebp+10H]                    ; 2703 _ 8B. 45, 10
        movzx   eax, al                                 ; 2706 _ 0F B6. C0
        mov     edx, dword [ebp-14H]                    ; 2709 _ 8B. 55, EC
        mov     ecx, dword [edx+4H]                     ; 270C _ 8B. 4A, 04
        mov     edx, dword [ebp-14H]                    ; 270F _ 8B. 55, EC
        mov     edx, dword [edx]                        ; 2712 _ 8B. 12
        mov     esi, dword [ebp+8H]                     ; 2714 _ 8B. 75, 08
        mov     dword [esp+18H], esi                    ; 2717 _ 89. 74 24, 18
        mov     esi, dword [ebp+0CH]                    ; 271B _ 8B. 75, 0C
        mov     dword [esp+14H], esi                    ; 271E _ 89. 74 24, 14
        mov     esi, dword [ebp+20H]                    ; 2722 _ 8B. 75, 20
        mov     dword [esp+10H], esi                    ; 2725 _ 89. 74 24, 10
        mov     dword [esp+0CH], ebx                    ; 2729 _ 89. 5C 24, 0C
        mov     dword [esp+8H], eax                     ; 272D _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 2731 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 2735 _ 89. 14 24
        call    _boxfill8                               ; 2738 _ E8, 00001147
        mov     eax, dword [ebp+8H]                     ; 273D _ 8B. 45, 08
        lea     ebx, [eax+1H]                           ; 2740 _ 8D. 58, 01
        mov     eax, dword [ebp+0CH]                    ; 2743 _ 8B. 45, 0C
        lea     ecx, [eax+1H]                           ; 2746 _ 8D. 48, 01
        mov     edx, dword [ebp+24H]                    ; 2749 _ 8B. 55, 24
        mov     eax, dword [_shtctl]                    ; 274C _ A1, 00000264(d)
        mov     dword [esp+14H], ebx                    ; 2751 _ 89. 5C 24, 14
        mov     dword [esp+10H], ecx                    ; 2755 _ 89. 4C 24, 10
        mov     ecx, dword [ebp+20H]                    ; 2759 _ 8B. 4D, 20
        mov     dword [esp+0CH], ecx                    ; 275C _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 2760 _ 89. 54 24, 08
        mov     edx, dword [ebp-14H]                    ; 2764 _ 8B. 55, EC
        mov     dword [esp+4H], edx                     ; 2767 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 276B _ 89. 04 24
        call    _sheet_refresh                          ; 276E _ E8, 00000000(rel)
        jmp     ?_165                                   ; 2773 _ E9, 0000040E

?_136:  cmp     dword [ebp+1CH], 11                     ; 2778 _ 83. 7D, 1C, 0B
        jnz     ?_137                                   ; 277C _ 75, 28
        mov     eax, dword [ebp+18H]                    ; 277E _ 8B. 45, 18
        mov     dword [ebp-14H], eax                    ; 2781 _ 89. 45, EC
        mov     ebx, dword [ebp+24H]                    ; 2784 _ 8B. 5D, 24
        mov     eax, dword [ebp-14H]                    ; 2787 _ 8B. 45, EC
        mov     edx, dword [eax]                        ; 278A _ 8B. 10
        mov     eax, dword [ebp-14H]                    ; 278C _ 8B. 45, EC
        mov     eax, dword [eax+4H]                     ; 278F _ 8B. 40, 04
        imul    eax, dword [ebp+8H]                     ; 2792 _ 0F AF. 45, 08
        mov     ecx, dword [ebp+0CH]                    ; 2796 _ 8B. 4D, 0C
        add     eax, ecx                                ; 2799 _ 01. C8
        add     eax, edx                                ; 279B _ 01. D0
        mov     edx, ebx                                ; 279D _ 89. DA
        mov     byte [eax], dl                          ; 279F _ 88. 10
        jmp     ?_165                                   ; 27A1 _ E9, 000003E0

?_137:  cmp     dword [ebp+1CH], 12                     ; 27A6 _ 83. 7D, 1C, 0C
        jnz     ?_138                                   ; 27AA _ 75, 3B
        mov     eax, dword [ebp+18H]                    ; 27AC _ 8B. 45, 18
        mov     dword [ebp-14H], eax                    ; 27AF _ 89. 45, EC
        mov     edx, dword [ebp+24H]                    ; 27B2 _ 8B. 55, 24
        mov     eax, dword [_shtctl]                    ; 27B5 _ A1, 00000264(d)
        mov     ecx, dword [ebp+8H]                     ; 27BA _ 8B. 4D, 08
        mov     dword [esp+14H], ecx                    ; 27BD _ 89. 4C 24, 14
        mov     ecx, dword [ebp+0CH]                    ; 27C1 _ 8B. 4D, 0C
        mov     dword [esp+10H], ecx                    ; 27C4 _ 89. 4C 24, 10
        mov     ecx, dword [ebp+20H]                    ; 27C8 _ 8B. 4D, 20
        mov     dword [esp+0CH], ecx                    ; 27CB _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 27CF _ 89. 54 24, 08
        mov     edx, dword [ebp-14H]                    ; 27D3 _ 8B. 55, EC
        mov     dword [esp+4H], edx                     ; 27D6 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 27DA _ 89. 04 24
        call    _sheet_refresh                          ; 27DD _ E8, 00000000(rel)
        jmp     ?_165                                   ; 27E2 _ E9, 0000039F

?_138:  cmp     dword [ebp+1CH], 13                     ; 27E7 _ 83. 7D, 1C, 0D
        jnz     ?_139                                   ; 27EB _ 75, 39
        mov     eax, dword [ebp+18H]                    ; 27ED _ 8B. 45, 18
        mov     dword [ebp-14H], eax                    ; 27F0 _ 89. 45, EC
        mov     eax, dword [ebp+24H]                    ; 27F3 _ 8B. 45, 24
        mov     edx, dword [ebp+10H]                    ; 27F6 _ 8B. 55, 10
        mov     dword [esp+14H], edx                    ; 27F9 _ 89. 54 24, 14
        mov     edx, dword [ebp+8H]                     ; 27FD _ 8B. 55, 08
        mov     dword [esp+10H], edx                    ; 2800 _ 89. 54 24, 10
        mov     edx, dword [ebp+0CH]                    ; 2804 _ 8B. 55, 0C
        mov     dword [esp+0CH], edx                    ; 2807 _ 89. 54 24, 0C
        mov     edx, dword [ebp+20H]                    ; 280B _ 8B. 55, 20
        mov     dword [esp+8H], edx                     ; 280E _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 2812 _ 89. 44 24, 04
        mov     eax, dword [ebp-14H]                    ; 2816 _ 8B. 45, EC
        mov     dword [esp], eax                        ; 2819 _ 89. 04 24
        call    _api_linewin                            ; 281C _ E8, FFFFF92D
        jmp     ?_165                                   ; 2821 _ E9, 00000360

?_139:  cmp     dword [ebp+1CH], 14                     ; 2826 _ 83. 7D, 1C, 0E
        jnz     ?_140                                   ; 282A _ 75, 32
        mov     edx, dword [ebp+18H]                    ; 282C _ 8B. 55, 18
        mov     eax, dword [_shtctl]                    ; 282F _ A1, 00000264(d)
        mov     dword [esp+4H], edx                     ; 2834 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2838 _ 89. 04 24
        call    _sheet_free                             ; 283B _ E8, 00000000(rel)
        mov     eax, dword [ebp-10H]                    ; 2840 _ 8B. 45, F0
        mov     eax, dword [eax+0B0H]                   ; 2843 _ 8B. 80, 000000B0
        mov     eax, dword [eax+4H]                     ; 2849 _ 8B. 40, 04
        add     eax, 291                                ; 284C _ 05, 00000123
        mov     dword [esp], eax                        ; 2851 _ 89. 04 24
        call    _cons_putstr                            ; 2854 _ E8, FFFFF8C3
        jmp     ?_165                                   ; 2859 _ E9, 00000328

?_140:  cmp     dword [ebp+1CH], 15                     ; 285E _ 83. 7D, 1C, 0F
        jnz     ?_141                                   ; 2862 _ 75, 1E
        mov     eax, dword [ebp+24H]                    ; 2864 _ 8B. 45, 24
        mov     edx, dword [ebp-18H]                    ; 2867 _ 8B. 55, E8
        mov     dword [esp+8H], edx                     ; 286A _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 286E _ 89. 44 24, 04
        mov     eax, dword [ebp-10H]                    ; 2872 _ 8B. 45, F0
        mov     dword [esp], eax                        ; 2875 _ 89. 04 24
        call    _handle_keyboard                        ; 2878 _ E8, FFFFFA02
        jmp     ?_165                                   ; 287D _ E9, 00000304

?_141:  cmp     dword [ebp+1CH], 16                     ; 2882 _ 83. 7D, 1C, 10
        jnz     ?_142                                   ; 2886 _ 75, 14
        call    _timer_alloc                            ; 2888 _ E8, 00000000(rel)
        mov     edx, eax                                ; 288D _ 89. C2
        mov     eax, dword [ebp-18H]                    ; 288F _ 8B. 45, E8
        add     eax, 28                                 ; 2892 _ 83. C0, 1C
        mov     dword [eax], edx                        ; 2895 _ 89. 10
        jmp     ?_165                                   ; 2897 _ E9, 000002EA

?_142:  cmp     dword [ebp+1CH], 17                     ; 289C _ 83. 7D, 1C, 11
        jnz     ?_143                                   ; 28A0 _ 75, 24
        mov     eax, dword [ebp+24H]                    ; 28A2 _ 8B. 45, 24
        movzx   eax, al                                 ; 28A5 _ 0F B6. C0
        mov     edx, dword [ebp-10H]                    ; 28A8 _ 8B. 55, F0
        lea     ecx, [edx+10H]                          ; 28AB _ 8D. 4A, 10
        mov     edx, dword [ebp+18H]                    ; 28AE _ 8B. 55, 18
        mov     dword [esp+8H], eax                     ; 28B1 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 28B5 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 28B9 _ 89. 14 24
        call    _timer_init                             ; 28BC _ E8, 00000000(rel)
        jmp     ?_165                                   ; 28C1 _ E9, 000002C0

?_143:  cmp     dword [ebp+1CH], 18                     ; 28C6 _ 83. 7D, 1C, 12
        jnz     ?_144                                   ; 28CA _ 75, 19
        mov     eax, dword [ebp+24H]                    ; 28CC _ 8B. 45, 24
        mov     edx, eax                                ; 28CF _ 89. C2
        mov     eax, dword [ebp+18H]                    ; 28D1 _ 8B. 45, 18
        mov     dword [esp+4H], edx                     ; 28D4 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 28D8 _ 89. 04 24
        call    _timer_settime                          ; 28DB _ E8, 00000000(rel)
        jmp     ?_165                                   ; 28E0 _ E9, 000002A1

?_144:  cmp     dword [ebp+1CH], 19                     ; 28E5 _ 83. 7D, 1C, 13
        jnz     ?_145                                   ; 28E9 _ 75, 10
        mov     eax, dword [ebp+18H]                    ; 28EB _ 8B. 45, 18
        mov     dword [esp], eax                        ; 28EE _ 89. 04 24
        call    _timer_free                             ; 28F1 _ E8, 00000000(rel)
        jmp     ?_165                                   ; 28F6 _ E9, 0000028B

?_145:  cmp     dword [ebp+1CH], 21                     ; 28FB _ 83. 7D, 1C, 15
        jne     ?_150                                   ; 28FF _ 0F 85, 000000C5
        mov     dword [ebp-0CH], 0                      ; 2905 _ C7. 45, F4, 00000000
        jmp     ?_147                                   ; 290C _ EB, 21

?_146:  mov     eax, dword [ebp-10H]                    ; 290E _ 8B. 45, F0
        mov     ecx, dword [eax+0CCH]                   ; 2911 _ 8B. 88, 000000CC
        mov     edx, dword [ebp-0CH]                    ; 2917 _ 8B. 55, F4
        mov     eax, edx                                ; 291A _ 89. D0
        add     eax, eax                                ; 291C _ 01. C0
        add     eax, edx                                ; 291E _ 01. D0
        shl     eax, 2                                  ; 2920 _ C1. E0, 02
        add     eax, ecx                                ; 2923 _ 01. C8
        mov     eax, dword [eax]                        ; 2925 _ 8B. 00
        test    eax, eax                                ; 2927 _ 85. C0
        jz      ?_148                                   ; 2929 _ 74, 0C
        add     dword [ebp-0CH], 1                      ; 292B _ 83. 45, F4, 01
?_147:  cmp     dword [ebp-0CH], 7                      ; 292F _ 83. 7D, F4, 07
        jle     ?_146                                   ; 2933 _ 7E, D9
        jmp     ?_149                                   ; 2935 _ EB, 01

?_148:  nop                                             ; 2937 _ 90
?_149:  mov     eax, dword [ebp-10H]                    ; 2938 _ 8B. 45, F0
        mov     ecx, dword [eax+0CCH]                   ; 293B _ 8B. 88, 000000CC
        mov     edx, dword [ebp-0CH]                    ; 2941 _ 8B. 55, F4
        mov     eax, edx                                ; 2944 _ 89. D0
        add     eax, eax                                ; 2946 _ 01. C0
        add     eax, edx                                ; 2948 _ 01. D0
        shl     eax, 2                                  ; 294A _ C1. E0, 02
        add     eax, ecx                                ; 294D _ 01. C8
        mov     dword [ebp-1CH], eax                    ; 294F _ 89. 45, E4
        mov     eax, dword [ebp-18H]                    ; 2952 _ 8B. 45, E8
        add     eax, 28                                 ; 2955 _ 83. C0, 1C
        mov     dword [eax], 0                          ; 2958 _ C7. 00, 00000000
        cmp     dword [ebp-0CH], 7                      ; 295E _ 83. 7D, F4, 07
        jg      ?_165                                   ; 2962 _ 0F 8F, 0000021E
        mov     dword [ebp-2CH], 0                      ; 2968 _ C7. 45, D4, 00000000
        mov     eax, dword [ebp-10H]                    ; 296F _ 8B. 45, F0
        mov     eax, dword [eax+0B0H]                   ; 2972 _ 8B. 80, 000000B0
        mov     edx, dword [eax]                        ; 2978 _ 8B. 10
        mov     eax, dword [ebp+18H]                    ; 297A _ 8B. 45, 18
        add     eax, edx                                ; 297D _ 01. D0
        mov     dword [ebp-20H], eax                    ; 297F _ 89. 45, E0
        lea     eax, [ebp-2CH]                          ; 2982 _ 8D. 45, D4
        mov     dword [esp+4H], eax                     ; 2985 _ 89. 44 24, 04
        mov     eax, dword [ebp-20H]                    ; 2989 _ 8B. 45, E0
        mov     dword [esp], eax                        ; 298C _ 89. 04 24
        call    _file_loadfile                          ; 298F _ E8, 00001E90
        mov     eax, dword [ebp-2CH]                    ; 2994 _ 8B. 45, D4
        test    eax, eax                                ; 2997 _ 85. C0
        je      ?_165                                   ; 2999 _ 0F 84, 000001E7
        mov     eax, dword [ebp-18H]                    ; 299F _ 8B. 45, E8
        add     eax, 28                                 ; 29A2 _ 83. C0, 1C
        mov     edx, dword [ebp-1CH]                    ; 29A5 _ 8B. 55, E4
        mov     dword [eax], edx                        ; 29A8 _ 89. 10
        mov     edx, dword [ebp-2CH]                    ; 29AA _ 8B. 55, D4
        mov     eax, dword [ebp-1CH]                    ; 29AD _ 8B. 45, E4
        mov     dword [eax], edx                        ; 29B0 _ 89. 10
        mov     edx, dword [ebp-24H]                    ; 29B2 _ 8B. 55, DC
        mov     eax, dword [ebp-1CH]                    ; 29B5 _ 8B. 45, E4
        mov     dword [eax+4H], edx                     ; 29B8 _ 89. 50, 04
        mov     eax, dword [ebp-1CH]                    ; 29BB _ 8B. 45, E4
        mov     dword [eax+8H], 0                       ; 29BE _ C7. 40, 08, 00000000
        jmp     ?_165                                   ; 29C5 _ E9, 000001BC

?_150:  cmp     dword [ebp+1CH], 22                     ; 29CA _ 83. 7D, 1C, 16
        jnz     ?_151                                   ; 29CE _ 75, 38
        mov     eax, dword [ebp+24H]                    ; 29D0 _ 8B. 45, 24
        mov     dword [ebp-1CH], eax                    ; 29D3 _ 89. 45, E4
        mov     eax, dword [ebp-1CH]                    ; 29D6 _ 8B. 45, E4
        mov     eax, dword [eax+4H]                     ; 29D9 _ 8B. 40, 04
        mov     ecx, eax                                ; 29DC _ 89. C1
        mov     eax, dword [ebp-1CH]                    ; 29DE _ 8B. 45, E4
        mov     eax, dword [eax]                        ; 29E1 _ 8B. 00
        mov     edx, eax                                ; 29E3 _ 89. C2
        mov     eax, dword [_memman]                    ; 29E5 _ A1, 00000000(d)
        mov     dword [esp+8H], ecx                     ; 29EA _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 29EE _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 29F2 _ 89. 04 24
        call    _memman_free_4k                         ; 29F5 _ E8, 00000000(rel)
        mov     eax, dword [ebp-1CH]                    ; 29FA _ 8B. 45, E4
        mov     dword [eax], 0                          ; 29FD _ C7. 00, 00000000
        jmp     ?_165                                   ; 2A03 _ E9, 0000017E

?_151:  cmp     dword [ebp+1CH], 23                     ; 2A08 _ 83. 7D, 1C, 17
        jne     ?_156                                   ; 2A0C _ 0F 85, 00000080
        mov     eax, dword [ebp+24H]                    ; 2A12 _ 8B. 45, 24
        mov     dword [ebp-1CH], eax                    ; 2A15 _ 89. 45, E4
        cmp     dword [ebp+20H], 0                      ; 2A18 _ 83. 7D, 20, 00
        jnz     ?_152                                   ; 2A1C _ 75, 0B
        mov     eax, dword [ebp-1CH]                    ; 2A1E _ 8B. 45, E4
        mov     edx, dword [ebp+18H]                    ; 2A21 _ 8B. 55, 18
        mov     dword [eax+8H], edx                     ; 2A24 _ 89. 50, 08
        jmp     ?_154                                   ; 2A27 _ EB, 30

?_152:  cmp     dword [ebp+20H], 1                      ; 2A29 _ 83. 7D, 20, 01
        jnz     ?_153                                   ; 2A2D _ 75, 13
        mov     eax, dword [ebp-1CH]                    ; 2A2F _ 8B. 45, E4
        mov     edx, dword [eax+8H]                     ; 2A32 _ 8B. 50, 08
        mov     eax, dword [ebp+18H]                    ; 2A35 _ 8B. 45, 18
        add     edx, eax                                ; 2A38 _ 01. C2
        mov     eax, dword [ebp-1CH]                    ; 2A3A _ 8B. 45, E4
        mov     dword [eax+8H], edx                     ; 2A3D _ 89. 50, 08
        jmp     ?_154                                   ; 2A40 _ EB, 17

?_153:  cmp     dword [ebp+20H], 2                      ; 2A42 _ 83. 7D, 20, 02
        jnz     ?_154                                   ; 2A46 _ 75, 11
        mov     eax, dword [ebp-1CH]                    ; 2A48 _ 8B. 45, E4
        mov     edx, dword [eax+4H]                     ; 2A4B _ 8B. 50, 04
        mov     eax, dword [ebp+18H]                    ; 2A4E _ 8B. 45, 18
        add     edx, eax                                ; 2A51 _ 01. C2
        mov     eax, dword [ebp-1CH]                    ; 2A53 _ 8B. 45, E4
        mov     dword [eax+8H], edx                     ; 2A56 _ 89. 50, 08
?_154:  mov     eax, dword [ebp-1CH]                    ; 2A59 _ 8B. 45, E4
        mov     eax, dword [eax+8H]                     ; 2A5C _ 8B. 40, 08
        test    eax, eax                                ; 2A5F _ 85. C0
        jns     ?_155                                   ; 2A61 _ 79, 0A
        mov     eax, dword [ebp-1CH]                    ; 2A63 _ 8B. 45, E4
        mov     dword [eax+8H], 0                       ; 2A66 _ C7. 40, 08, 00000000
?_155:  mov     eax, dword [ebp-1CH]                    ; 2A6D _ 8B. 45, E4
        mov     edx, dword [eax+8H]                     ; 2A70 _ 8B. 50, 08
        mov     eax, dword [ebp-1CH]                    ; 2A73 _ 8B. 45, E4
        mov     eax, dword [eax+4H]                     ; 2A76 _ 8B. 40, 04
        cmp     edx, eax                                ; 2A79 _ 39. C2
        jle     ?_165                                   ; 2A7B _ 0F 8E, 00000105
        mov     eax, dword [ebp-1CH]                    ; 2A81 _ 8B. 45, E4
        mov     edx, dword [eax+4H]                     ; 2A84 _ 8B. 50, 04
        mov     eax, dword [ebp-1CH]                    ; 2A87 _ 8B. 45, E4
        mov     dword [eax+8H], edx                     ; 2A8A _ 89. 50, 08
        jmp     ?_165                                   ; 2A8D _ E9, 000000F4

?_156:  cmp     dword [ebp+1CH], 24                     ; 2A92 _ 83. 7D, 1C, 18
        jnz     ?_159                                   ; 2A96 _ 75, 5F
        mov     eax, dword [ebp+24H]                    ; 2A98 _ 8B. 45, 24
        mov     dword [ebp-1CH], eax                    ; 2A9B _ 89. 45, E4
        cmp     dword [ebp+20H], 0                      ; 2A9E _ 83. 7D, 20, 00
        jnz     ?_157                                   ; 2AA2 _ 75, 13
        mov     eax, dword [ebp-18H]                    ; 2AA4 _ 8B. 45, E8
        add     eax, 28                                 ; 2AA7 _ 83. C0, 1C
        mov     edx, dword [ebp-1CH]                    ; 2AAA _ 8B. 55, E4
        mov     edx, dword [edx+4H]                     ; 2AAD _ 8B. 52, 04
        mov     dword [eax], edx                        ; 2AB0 _ 89. 10
        jmp     ?_165                                   ; 2AB2 _ E9, 000000CF

?_157:  cmp     dword [ebp+20H], 1                      ; 2AB7 _ 83. 7D, 20, 01
        jnz     ?_158                                   ; 2ABB _ 75, 13
        mov     eax, dword [ebp-18H]                    ; 2ABD _ 8B. 45, E8
        add     eax, 28                                 ; 2AC0 _ 83. C0, 1C
        mov     edx, dword [ebp-1CH]                    ; 2AC3 _ 8B. 55, E4
        mov     edx, dword [edx+8H]                     ; 2AC6 _ 8B. 52, 08
        mov     dword [eax], edx                        ; 2AC9 _ 89. 10
        jmp     ?_165                                   ; 2ACB _ E9, 000000B6

?_158:  cmp     dword [ebp+20H], 2                      ; 2AD0 _ 83. 7D, 20, 02
        jne     ?_165                                   ; 2AD4 _ 0F 85, 000000AC
        mov     eax, dword [ebp-1CH]                    ; 2ADA _ 8B. 45, E4
        mov     ecx, dword [eax+8H]                     ; 2ADD _ 8B. 48, 08
        mov     eax, dword [ebp-1CH]                    ; 2AE0 _ 8B. 45, E4
        mov     edx, dword [eax+4H]                     ; 2AE3 _ 8B. 50, 04
        mov     eax, dword [ebp-18H]                    ; 2AE6 _ 8B. 45, E8
        add     eax, 28                                 ; 2AE9 _ 83. C0, 1C
        sub     ecx, edx                                ; 2AEC _ 29. D1
        mov     edx, ecx                                ; 2AEE _ 89. CA
        mov     dword [eax], edx                        ; 2AF0 _ 89. 10
        jmp     ?_165                                   ; 2AF2 _ E9, 0000008F

?_159:  cmp     dword [ebp+1CH], 25                     ; 2AF7 _ 83. 7D, 1C, 19
        jnz     ?_164                                   ; 2AFB _ 75, 72
        mov     eax, dword [ebp+24H]                    ; 2AFD _ 8B. 45, 24
        mov     dword [ebp-1CH], eax                    ; 2B00 _ 89. 45, E4
        mov     dword [ebp-0CH], 0                      ; 2B03 _ C7. 45, F4, 00000000
        jmp     ?_161                                   ; 2B0A _ EB, 4B

?_160:  mov     eax, dword [ebp-1CH]                    ; 2B0C _ 8B. 45, E4
        mov     edx, dword [eax+8H]                     ; 2B0F _ 8B. 50, 08
        mov     eax, dword [ebp-1CH]                    ; 2B12 _ 8B. 45, E4
        mov     eax, dword [eax+4H]                     ; 2B15 _ 8B. 40, 04
        cmp     edx, eax                                ; 2B18 _ 39. C2
        jz      ?_162                                   ; 2B1A _ 74, 45
        mov     eax, dword [ebp-1CH]                    ; 2B1C _ 8B. 45, E4
        mov     edx, dword [eax]                        ; 2B1F _ 8B. 10
        mov     eax, dword [ebp-1CH]                    ; 2B21 _ 8B. 45, E4
        mov     eax, dword [eax+8H]                     ; 2B24 _ 8B. 40, 08
        add     eax, edx                                ; 2B27 _ 01. D0
        mov     edx, dword [ebp-10H]                    ; 2B29 _ 8B. 55, F0
        mov     edx, dword [edx+0B0H]                   ; 2B2C _ 8B. 92, 000000B0
        mov     ecx, dword [edx+4H]                     ; 2B32 _ 8B. 4A, 04
        mov     ebx, dword [ebp+18H]                    ; 2B35 _ 8B. 5D, 18
        mov     edx, dword [ebp-0CH]                    ; 2B38 _ 8B. 55, F4
        add     edx, ebx                                ; 2B3B _ 01. DA
        add     edx, ecx                                ; 2B3D _ 01. CA
        movzx   eax, byte [eax]                         ; 2B3F _ 0F B6. 00
        mov     byte [edx], al                          ; 2B42 _ 88. 02
        mov     eax, dword [ebp-1CH]                    ; 2B44 _ 8B. 45, E4
        mov     eax, dword [eax+8H]                     ; 2B47 _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 2B4A _ 8D. 50, 01
        mov     eax, dword [ebp-1CH]                    ; 2B4D _ 8B. 45, E4
        mov     dword [eax+8H], edx                     ; 2B50 _ 89. 50, 08
        add     dword [ebp-0CH], 1                      ; 2B53 _ 83. 45, F4, 01
?_161:  mov     eax, dword [ebp-0CH]                    ; 2B57 _ 8B. 45, F4
        cmp     eax, dword [ebp+20H]                    ; 2B5A _ 3B. 45, 20
        jl      ?_160                                   ; 2B5D _ 7C, AD
        jmp     ?_163                                   ; 2B5F _ EB, 01

?_162:  nop                                             ; 2B61 _ 90
?_163:  mov     eax, dword [ebp-18H]                    ; 2B62 _ 8B. 45, E8
        add     eax, 28                                 ; 2B65 _ 83. C0, 1C
        mov     edx, dword [ebp-0CH]                    ; 2B68 _ 8B. 55, F4
        mov     dword [eax], edx                        ; 2B6B _ 89. 10
        jmp     ?_165                                   ; 2B6D _ EB, 17

?_164:  cmp     dword [ebp+1CH], 26                     ; 2B6F _ 83. 7D, 1C, 1A
        jnz     ?_165                                   ; 2B73 _ 75, 11
        mov     eax, dword [ebp-10H]                    ; 2B75 _ 8B. 45, F0
        mov     edx, dword [eax+0ACH]                   ; 2B78 _ 8B. 90, 000000AC
        mov     eax, dword [ebp-18H]                    ; 2B7E _ 8B. 45, E8
        add     eax, 28                                 ; 2B81 _ 83. C0, 1C
        mov     dword [eax], edx                        ; 2B84 _ 89. 10
?_165:  mov     eax, 0                                  ; 2B86 _ B8, 00000000
?_166:  add     esp, 80                                 ; 2B8B _ 83. C4, 50
        pop     ebx                                     ; 2B8E _ 5B
        pop     esi                                     ; 2B8F _ 5E
        pop     ebp                                     ; 2B90 _ 5D
        ret                                             ; 2B91 _ C3
; _kernel_api End of function

_cons_putchar:; Function begin
        push    ebp                                     ; 2B92 _ 55
        mov     ebp, esp                                ; 2B93 _ 89. E5
        push    esi                                     ; 2B95 _ 56
        push    ebx                                     ; 2B96 _ 53
        sub     esp, 64                                 ; 2B97 _ 83. EC, 40
        mov     eax, dword [ebp+8H]                     ; 2B9A _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 2B9D _ 8B. 55, 0C
        mov     byte [ebp-1CH], al                      ; 2BA0 _ 88. 45, E4
        mov     eax, edx                                ; 2BA3 _ 89. D0
        mov     byte [ebp-20H], al                      ; 2BA5 _ 88. 45, E0
        call    _task_now                               ; 2BA8 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 2BAD _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 2BB0 _ 8B. 45, F4
        mov     ebx, dword [eax+9CH]                    ; 2BB3 _ 8B. 98, 0000009C
        mov     eax, dword [ebp-0CH]                    ; 2BB9 _ 8B. 45, F4
        mov     ecx, dword [eax+98H]                    ; 2BBC _ 8B. 88, 00000098
        mov     eax, dword [ebp-0CH]                    ; 2BC2 _ 8B. 45, F4
        mov     edx, dword [eax+94H]                    ; 2BC5 _ 8B. 90, 00000094
        mov     eax, dword [_shtctl]                    ; 2BCB _ A1, 00000264(d)
        mov     dword [esp+10H], 0                      ; 2BD0 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], ebx                    ; 2BD8 _ 89. 5C 24, 0C
        mov     dword [esp+8H], ecx                     ; 2BDC _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 2BE0 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2BE4 _ 89. 04 24
        call    _set_cursor                             ; 2BE7 _ E8, FFFFDDB7
        mov     edx, dword [ebp-0CH]                    ; 2BEC _ 8B. 55, F4
        movzx   eax, byte [ebp-1CH]                     ; 2BEF _ 0F B6. 45, E4
        mov     byte [edx+0A4H], al                     ; 2BF3 _ 88. 82, 000000A4
        mov     eax, dword [ebp-0CH]                    ; 2BF9 _ 8B. 45, F4
        mov     byte [eax+0A5H], 0                      ; 2BFC _ C6. 80, 000000A5, 00
        mov     eax, dword [ebp-0CH]                    ; 2C03 _ 8B. 45, F4
        lea     esi, [eax+0A4H]                         ; 2C06 _ 8D. B0, 000000A4
        mov     eax, dword [ebp-0CH]                    ; 2C0C _ 8B. 45, F4
        mov     ebx, dword [eax+9CH]                    ; 2C0F _ 8B. 98, 0000009C
        mov     eax, dword [ebp-0CH]                    ; 2C15 _ 8B. 45, F4
        mov     ecx, dword [eax+98H]                    ; 2C18 _ 8B. 88, 00000098
        mov     eax, dword [ebp-0CH]                    ; 2C1E _ 8B. 45, F4
        mov     edx, dword [eax+94H]                    ; 2C21 _ 8B. 90, 00000094
        mov     eax, dword [_shtctl]                    ; 2C27 _ A1, 00000264(d)
        mov     dword [esp+14H], esi                    ; 2C2C _ 89. 74 24, 14
        mov     dword [esp+10H], 7                      ; 2C30 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ebx                    ; 2C38 _ 89. 5C 24, 0C
        mov     dword [esp+8H], ecx                     ; 2C3C _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 2C40 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2C44 _ 89. 04 24
        call    _showString                             ; 2C47 _ E8, 0000056B
        mov     eax, dword [ebp-0CH]                    ; 2C4C _ 8B. 45, F4
        mov     eax, dword [eax+98H]                    ; 2C4F _ 8B. 80, 00000098
        lea     edx, [eax+8H]                           ; 2C55 _ 8D. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 2C58 _ 8B. 45, F4
        mov     dword [eax+98H], edx                    ; 2C5B _ 89. 90, 00000098
        nop                                             ; 2C61 _ 90
        add     esp, 64                                 ; 2C62 _ 83. C4, 40
        pop     ebx                                     ; 2C65 _ 5B
        pop     esi                                     ; 2C66 _ 5E
        pop     ebp                                     ; 2C67 _ 5D
        ret                                             ; 2C68 _ C3
; _cons_putchar End of function

_cons_newline:; Function begin
        push    ebp                                     ; 2C69 _ 55
        mov     ebp, esp                                ; 2C6A _ 89. E5
        push    ebx                                     ; 2C6C _ 53
        sub     esp, 52                                 ; 2C6D _ 83. EC, 34
        cmp     dword [ebp+0CH], 0                      ; 2C70 _ 83. 7D, 0C, 00
        je      ?_177                                   ; 2C74 _ 0F 84, 00000125
        cmp     dword [ebp+8H], 139                     ; 2C7A _ 81. 7D, 08, 0000008B
        jg      ?_167                                   ; 2C81 _ 7F, 09
        add     dword [ebp+8H], 16                      ; 2C83 _ 83. 45, 08, 10
        jmp     ?_176                                   ; 2C87 _ E9, 000000DB

?_167:  mov     dword [ebp-10H], 28                     ; 2C8C _ C7. 45, F0, 0000001C
        jmp     ?_171                                   ; 2C93 _ EB, 50

?_168:  mov     dword [ebp-0CH], 8                      ; 2C95 _ C7. 45, F4, 00000008
        jmp     ?_170                                   ; 2C9C _ EB, 3A

?_169:  mov     eax, dword [ebp+0CH]                    ; 2C9E _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 2CA1 _ 8B. 10
        mov     eax, dword [ebp-10H]                    ; 2CA3 _ 8B. 45, F0
        lea     ecx, [eax+10H]                          ; 2CA6 _ 8D. 48, 10
        mov     eax, dword [ebp+0CH]                    ; 2CA9 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2CAC _ 8B. 40, 04
        imul    eax, ecx                                ; 2CAF _ 0F AF. C1
        mov     ecx, dword [ebp-0CH]                    ; 2CB2 _ 8B. 4D, F4
        add     eax, ecx                                ; 2CB5 _ 01. C8
        add     eax, edx                                ; 2CB7 _ 01. D0
        mov     edx, dword [ebp+0CH]                    ; 2CB9 _ 8B. 55, 0C
        mov     ecx, dword [edx]                        ; 2CBC _ 8B. 0A
        mov     edx, dword [ebp+0CH]                    ; 2CBE _ 8B. 55, 0C
        mov     edx, dword [edx+4H]                     ; 2CC1 _ 8B. 52, 04
        imul    edx, dword [ebp-10H]                    ; 2CC4 _ 0F AF. 55, F0
        mov     ebx, dword [ebp-0CH]                    ; 2CC8 _ 8B. 5D, F4
        add     edx, ebx                                ; 2CCB _ 01. DA
        add     edx, ecx                                ; 2CCD _ 01. CA
        movzx   eax, byte [eax]                         ; 2CCF _ 0F B6. 00
        mov     byte [edx], al                          ; 2CD2 _ 88. 02
        add     dword [ebp-0CH], 1                      ; 2CD4 _ 83. 45, F4, 01
?_170:  cmp     dword [ebp-0CH], 247                    ; 2CD8 _ 81. 7D, F4, 000000F7
        jle     ?_169                                   ; 2CDF _ 7E, BD
        add     dword [ebp-10H], 1                      ; 2CE1 _ 83. 45, F0, 01
?_171:  cmp     dword [ebp-10H], 139                    ; 2CE5 _ 81. 7D, F0, 0000008B
        jle     ?_168                                   ; 2CEC _ 7E, A7
        mov     dword [ebp-10H], 140                    ; 2CEE _ C7. 45, F0, 0000008C
        jmp     ?_175                                   ; 2CF5 _ EB, 33

?_172:  mov     dword [ebp-0CH], 8                      ; 2CF7 _ C7. 45, F4, 00000008
        jmp     ?_174                                   ; 2CFE _ EB, 1D

?_173:  mov     eax, dword [ebp+0CH]                    ; 2D00 _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 2D03 _ 8B. 10
        mov     eax, dword [ebp+0CH]                    ; 2D05 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2D08 _ 8B. 40, 04
        imul    eax, dword [ebp-10H]                    ; 2D0B _ 0F AF. 45, F0
        mov     ecx, dword [ebp-0CH]                    ; 2D0F _ 8B. 4D, F4
        add     eax, ecx                                ; 2D12 _ 01. C8
        add     eax, edx                                ; 2D14 _ 01. D0
        mov     byte [eax], 0                           ; 2D16 _ C6. 00, 00
        add     dword [ebp-0CH], 1                      ; 2D19 _ 83. 45, F4, 01
?_174:  cmp     dword [ebp-0CH], 247                    ; 2D1D _ 81. 7D, F4, 000000F7
        jle     ?_173                                   ; 2D24 _ 7E, DA
        add     dword [ebp-10H], 1                      ; 2D26 _ 83. 45, F0, 01
?_175:  cmp     dword [ebp-10H], 155                    ; 2D2A _ 81. 7D, F0, 0000009B
        jle     ?_172                                   ; 2D31 _ 7E, C4
        mov     eax, dword [_shtctl]                    ; 2D33 _ A1, 00000264(d)
        mov     dword [esp+14H], 156                    ; 2D38 _ C7. 44 24, 14, 0000009C
        mov     dword [esp+10H], 248                    ; 2D40 _ C7. 44 24, 10, 000000F8
        mov     dword [esp+0CH], 28                     ; 2D48 _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 8                       ; 2D50 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp+0CH]                    ; 2D58 _ 8B. 55, 0C
        mov     dword [esp+4H], edx                     ; 2D5B _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2D5F _ 89. 04 24
        call    _sheet_refresh                          ; 2D62 _ E8, 00000000(rel)
?_176:  mov     eax, dword [_shtctl]                    ; 2D67 _ A1, 00000264(d)
        mov     dword [esp+14H], ?_418                  ; 2D6C _ C7. 44 24, 14, 00000023(d)
        mov     dword [esp+10H], 7                      ; 2D74 _ C7. 44 24, 10, 00000007
        mov     edx, dword [ebp+8H]                     ; 2D7C _ 8B. 55, 08
        mov     dword [esp+0CH], edx                    ; 2D7F _ 89. 54 24, 0C
        mov     dword [esp+8H], 8                       ; 2D83 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp+0CH]                    ; 2D8B _ 8B. 55, 0C
        mov     dword [esp+4H], edx                     ; 2D8E _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2D92 _ 89. 04 24
        call    _showString                             ; 2D95 _ E8, 0000041D
        mov     eax, dword [ebp+8H]                     ; 2D9A _ 8B. 45, 08
        jmp     ?_178                                   ; 2D9D _ EB, 02

?_177:  nop                                             ; 2D9F _ 90
        nop                                             ; 2DA0 _ 90
?_178:  add     esp, 52                                 ; 2DA1 _ 83. C4, 34
        pop     ebx                                     ; 2DA4 _ 5B
        pop     ebp                                     ; 2DA5 _ 5D
        ret                                             ; 2DA6 _ C3
; _cons_newline End of function

_init_screen8:; Function begin
        push    ebp                                     ; 2DA7 _ 55
        mov     ebp, esp                                ; 2DA8 _ 89. E5
        push    ebx                                     ; 2DAA _ 53
        sub     esp, 36                                 ; 2DAB _ 83. EC, 24
        mov     eax, dword [ebp+10H]                    ; 2DAE _ 8B. 45, 10
        lea     edx, [eax-1DH]                          ; 2DB1 _ 8D. 50, E3
        mov     eax, dword [ebp+0CH]                    ; 2DB4 _ 8B. 45, 0C
        sub     eax, 1                                  ; 2DB7 _ 83. E8, 01
        mov     dword [esp+18H], edx                    ; 2DBA _ 89. 54 24, 18
        mov     dword [esp+14H], eax                    ; 2DBE _ 89. 44 24, 14
        mov     dword [esp+10H], 0                      ; 2DC2 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 2DCA _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 14                      ; 2DD2 _ C7. 44 24, 08, 0000000E
        mov     eax, dword [ebp+0CH]                    ; 2DDA _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2DDD _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2DE1 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2DE4 _ 89. 04 24
        call    _boxfill8                               ; 2DE7 _ E8, 00000A98
        mov     eax, dword [ebp+10H]                    ; 2DEC _ 8B. 45, 10
        lea     ecx, [eax-1CH]                          ; 2DEF _ 8D. 48, E4
        mov     eax, dword [ebp+0CH]                    ; 2DF2 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 2DF5 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 2DF8 _ 8B. 45, 10
        sub     eax, 28                                 ; 2DFB _ 83. E8, 1C
        mov     dword [esp+18H], ecx                    ; 2DFE _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 2E02 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 2E06 _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 2E0A _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 2E12 _ C7. 44 24, 08, 00000008
        mov     eax, dword [ebp+0CH]                    ; 2E1A _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2E1D _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2E21 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2E24 _ 89. 04 24
        call    _boxfill8                               ; 2E27 _ E8, 00000A58
        mov     eax, dword [ebp+10H]                    ; 2E2C _ 8B. 45, 10
        lea     ecx, [eax-1BH]                          ; 2E2F _ 8D. 48, E5
        mov     eax, dword [ebp+0CH]                    ; 2E32 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 2E35 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 2E38 _ 8B. 45, 10
        sub     eax, 27                                 ; 2E3B _ 83. E8, 1B
        mov     dword [esp+18H], ecx                    ; 2E3E _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 2E42 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 2E46 _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 2E4A _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 7                       ; 2E52 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 2E5A _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2E5D _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2E61 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2E64 _ 89. 04 24
        call    _boxfill8                               ; 2E67 _ E8, 00000A18
        mov     eax, dword [ebp+10H]                    ; 2E6C _ 8B. 45, 10
        lea     ecx, [eax-1H]                           ; 2E6F _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 2E72 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 2E75 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 2E78 _ 8B. 45, 10
        sub     eax, 26                                 ; 2E7B _ 83. E8, 1A
        mov     dword [esp+18H], ecx                    ; 2E7E _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 2E82 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 2E86 _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 2E8A _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 2E92 _ C7. 44 24, 08, 00000008
        mov     eax, dword [ebp+0CH]                    ; 2E9A _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2E9D _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2EA1 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2EA4 _ 89. 04 24
        call    _boxfill8                               ; 2EA7 _ E8, 000009D8
        mov     eax, dword [ebp+10H]                    ; 2EAC _ 8B. 45, 10
        lea     edx, [eax-18H]                          ; 2EAF _ 8D. 50, E8
        mov     eax, dword [ebp+10H]                    ; 2EB2 _ 8B. 45, 10
        sub     eax, 24                                 ; 2EB5 _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 2EB8 _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 2EBC _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 2EC4 _ 89. 44 24, 10
        mov     dword [esp+0CH], 3                      ; 2EC8 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 7                       ; 2ED0 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 2ED8 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2EDB _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2EDF _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2EE2 _ 89. 04 24
        call    _boxfill8                               ; 2EE5 _ E8, 0000099A
        mov     eax, dword [ebp+10H]                    ; 2EEA _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 2EED _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 2EF0 _ 8B. 45, 10
        sub     eax, 24                                 ; 2EF3 _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 2EF6 _ 89. 54 24, 18
        mov     dword [esp+14H], 2                      ; 2EFA _ C7. 44 24, 14, 00000002
        mov     dword [esp+10H], eax                    ; 2F02 _ 89. 44 24, 10
        mov     dword [esp+0CH], 2                      ; 2F06 _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 7                       ; 2F0E _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 2F16 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2F19 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2F1D _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2F20 _ 89. 04 24
        call    _boxfill8                               ; 2F23 _ E8, 0000095C
        mov     eax, dword [ebp+10H]                    ; 2F28 _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 2F2B _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 2F2E _ 8B. 45, 10
        sub     eax, 4                                  ; 2F31 _ 83. E8, 04
        mov     dword [esp+18H], edx                    ; 2F34 _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 2F38 _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 2F40 _ 89. 44 24, 10
        mov     dword [esp+0CH], 3                      ; 2F44 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 15                      ; 2F4C _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 2F54 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2F57 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2F5B _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2F5E _ 89. 04 24
        call    _boxfill8                               ; 2F61 _ E8, 0000091E
        mov     eax, dword [ebp+10H]                    ; 2F66 _ 8B. 45, 10
        lea     edx, [eax-5H]                           ; 2F69 _ 8D. 50, FB
        mov     eax, dword [ebp+10H]                    ; 2F6C _ 8B. 45, 10
        sub     eax, 23                                 ; 2F6F _ 83. E8, 17
        mov     dword [esp+18H], edx                    ; 2F72 _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 2F76 _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 2F7E _ 89. 44 24, 10
        mov     dword [esp+0CH], 59                     ; 2F82 _ C7. 44 24, 0C, 0000003B
        mov     dword [esp+8H], 15                      ; 2F8A _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 2F92 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2F95 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2F99 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2F9C _ 89. 04 24
        call    _boxfill8                               ; 2F9F _ E8, 000008E0
        mov     eax, dword [ebp+10H]                    ; 2FA4 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 2FA7 _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 2FAA _ 8B. 45, 10
        sub     eax, 3                                  ; 2FAD _ 83. E8, 03
        mov     dword [esp+18H], edx                    ; 2FB0 _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 2FB4 _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 2FBC _ 89. 44 24, 10
        mov     dword [esp+0CH], 2                      ; 2FC0 _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 0                       ; 2FC8 _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp+0CH]                    ; 2FD0 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2FD3 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2FD7 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2FDA _ 89. 04 24
        call    _boxfill8                               ; 2FDD _ E8, 000008A2
        mov     eax, dword [ebp+10H]                    ; 2FE2 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 2FE5 _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 2FE8 _ 8B. 45, 10
        sub     eax, 24                                 ; 2FEB _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 2FEE _ 89. 54 24, 18
        mov     dword [esp+14H], 60                     ; 2FF2 _ C7. 44 24, 14, 0000003C
        mov     dword [esp+10H], eax                    ; 2FFA _ 89. 44 24, 10
        mov     dword [esp+0CH], 60                     ; 2FFE _ C7. 44 24, 0C, 0000003C
        mov     dword [esp+8H], 0                       ; 3006 _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp+0CH]                    ; 300E _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 3011 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3015 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3018 _ 89. 04 24
        call    _boxfill8                               ; 301B _ E8, 00000864
        mov     eax, dword [ebp+10H]                    ; 3020 _ 8B. 45, 10
        lea     ebx, [eax-18H]                          ; 3023 _ 8D. 58, E8
        mov     eax, dword [ebp+0CH]                    ; 3026 _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 3029 _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 302C _ 8B. 45, 10
        lea     edx, [eax-18H]                          ; 302F _ 8D. 50, E8
        mov     eax, dword [ebp+0CH]                    ; 3032 _ 8B. 45, 0C
        sub     eax, 47                                 ; 3035 _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 3038 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 303C _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 3040 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 3044 _ 89. 44 24, 0C
        mov     dword [esp+8H], 15                      ; 3048 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 3050 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 3053 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3057 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 305A _ 89. 04 24
        call    _boxfill8                               ; 305D _ E8, 00000822
        mov     eax, dword [ebp+10H]                    ; 3062 _ 8B. 45, 10
        lea     ebx, [eax-4H]                           ; 3065 _ 8D. 58, FC
        mov     eax, dword [ebp+0CH]                    ; 3068 _ 8B. 45, 0C
        lea     ecx, [eax-2FH]                          ; 306B _ 8D. 48, D1
        mov     eax, dword [ebp+10H]                    ; 306E _ 8B. 45, 10
        lea     edx, [eax-17H]                          ; 3071 _ 8D. 50, E9
        mov     eax, dword [ebp+0CH]                    ; 3074 _ 8B. 45, 0C
        sub     eax, 47                                 ; 3077 _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 307A _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 307E _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 3082 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 3086 _ 89. 44 24, 0C
        mov     dword [esp+8H], 15                      ; 308A _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 3092 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 3095 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3099 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 309C _ 89. 04 24
        call    _boxfill8                               ; 309F _ E8, 000007E0
        mov     eax, dword [ebp+10H]                    ; 30A4 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 30A7 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 30AA _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 30AD _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 30B0 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 30B3 _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 30B6 _ 8B. 45, 0C
        sub     eax, 47                                 ; 30B9 _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 30BC _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 30C0 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 30C4 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 30C8 _ 89. 44 24, 0C
        mov     dword [esp+8H], 7                       ; 30CC _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 30D4 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 30D7 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 30DB _ 8B. 45, 08
        mov     dword [esp], eax                        ; 30DE _ 89. 04 24
        call    _boxfill8                               ; 30E1 _ E8, 0000079E
        mov     eax, dword [ebp+10H]                    ; 30E6 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 30E9 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 30EC _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 30EF _ 8D. 48, FD
        mov     eax, dword [ebp+10H]                    ; 30F2 _ 8B. 45, 10
        lea     edx, [eax-18H]                          ; 30F5 _ 8D. 50, E8
        mov     eax, dword [ebp+0CH]                    ; 30F8 _ 8B. 45, 0C
        sub     eax, 3                                  ; 30FB _ 83. E8, 03
        mov     dword [esp+18H], ebx                    ; 30FE _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 3102 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 3106 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 310A _ 89. 44 24, 0C
        mov     dword [esp+8H], 7                       ; 310E _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 3116 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 3119 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 311D _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3120 _ 89. 04 24
        call    _boxfill8                               ; 3123 _ E8, 0000075C
        nop                                             ; 3128 _ 90
        add     esp, 36                                 ; 3129 _ 83. C4, 24
        pop     ebx                                     ; 312C _ 5B
        pop     ebp                                     ; 312D _ 5D
        ret                                             ; 312E _ C3
; _init_screen8 End of function

_computeMousePosition:; Function begin
        push    ebp                                     ; 312F _ 55
        mov     ebp, esp                                ; 3130 _ 89. E5
        mov     eax, dword [ebp+10H]                    ; 3132 _ 8B. 45, 10
        mov     edx, dword [eax+4H]                     ; 3135 _ 8B. 50, 04
        mov     eax, dword [_mx]                        ; 3138 _ A1, 00000134(d)
        add     eax, edx                                ; 313D _ 01. D0
        mov     dword [_mx], eax                        ; 313F _ A3, 00000134(d)
        mov     eax, dword [ebp+10H]                    ; 3144 _ 8B. 45, 10
        mov     edx, dword [eax+8H]                     ; 3147 _ 8B. 50, 08
        mov     eax, dword [_my]                        ; 314A _ A1, 00000138(d)
        add     eax, edx                                ; 314F _ 01. D0
        mov     dword [_my], eax                        ; 3151 _ A3, 00000138(d)
        mov     eax, dword [_mx]                        ; 3156 _ A1, 00000134(d)
        test    eax, eax                                ; 315B _ 85. C0
        jns     ?_179                                   ; 315D _ 79, 0A
        mov     dword [_mx], 0                          ; 315F _ C7. 05, 00000134(d), 00000000
?_179:  mov     eax, dword [_my]                        ; 3169 _ A1, 00000138(d)
        test    eax, eax                                ; 316E _ 85. C0
        jns     ?_180                                   ; 3170 _ 79, 0A
        mov     dword [_my], 0                          ; 3172 _ C7. 05, 00000138(d), 00000000
?_180:  mov     edx, dword [_xsize]                     ; 317C _ 8B. 15, 0000013C(d)
        mov     eax, dword [_mx]                        ; 3182 _ A1, 00000134(d)
        cmp     edx, eax                                ; 3187 _ 39. C2
        jg      ?_181                                   ; 3189 _ 7F, 0D
        mov     eax, dword [_xsize]                     ; 318B _ A1, 0000013C(d)
        sub     eax, 1                                  ; 3190 _ 83. E8, 01
        mov     dword [_mx], eax                        ; 3193 _ A3, 00000134(d)
?_181:  mov     edx, dword [_ysize]                     ; 3198 _ 8B. 15, 00000140(d)
        mov     eax, dword [_my]                        ; 319E _ A1, 00000138(d)
        cmp     edx, eax                                ; 31A3 _ 39. C2
        jg      ?_182                                   ; 31A5 _ 7F, 0D
        mov     eax, dword [_ysize]                     ; 31A7 _ A1, 00000140(d)
        sub     eax, 1                                  ; 31AC _ 83. E8, 01
        mov     dword [_my], eax                        ; 31AF _ A3, 00000138(d)
?_182:  nop                                             ; 31B4 _ 90
        pop     ebp                                     ; 31B5 _ 5D
        ret                                             ; 31B6 _ C3
; _computeMousePosition End of function

_showString:; Function begin
        push    ebp                                     ; 31B7 _ 55
        mov     ebp, esp                                ; 31B8 _ 89. E5
        push    ebx                                     ; 31BA _ 53
        sub     esp, 68                                 ; 31BB _ 83. EC, 44
        mov     eax, dword [ebp+18H]                    ; 31BE _ 8B. 45, 18
        mov     byte [ebp-1CH], al                      ; 31C1 _ 88. 45, E4
        cmp     dword [ebp+8H], 0                       ; 31C4 _ 83. 7D, 08, 00
        je      ?_185                                   ; 31C8 _ 0F 84, 000000A1
        cmp     dword [ebp+0CH], 0                      ; 31CE _ 83. 7D, 0C, 00
        je      ?_185                                   ; 31D2 _ 0F 84, 00000097
        mov     eax, dword [ebp+10H]                    ; 31D8 _ 8B. 45, 10
        mov     dword [ebp-0CH], eax                    ; 31DB _ 89. 45, F4
        mov     dword [ebp-10H], 0                      ; 31DE _ C7. 45, F0, 00000000
        jmp     ?_184                                   ; 31E5 _ EB, 4B

?_183:  mov     eax, dword [ebp+1CH]                    ; 31E7 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 31EA _ 0F B6. 00
        movzx   eax, al                                 ; 31ED _ 0F B6. C0
        shl     eax, 4                                  ; 31F0 _ C1. E0, 04
        lea     ebx, [_systemFont+eax]                  ; 31F3 _ 8D. 98, 00000000(d)
        movsx   eax, byte [ebp-1CH]                     ; 31F9 _ 0F BE. 45, E4
        mov     edx, dword [ebp+0CH]                    ; 31FD _ 8B. 55, 0C
        mov     ecx, dword [edx+4H]                     ; 3200 _ 8B. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 3203 _ 8B. 55, 0C
        mov     edx, dword [edx]                        ; 3206 _ 8B. 12
        mov     dword [esp+14H], ebx                    ; 3208 _ 89. 5C 24, 14
        mov     dword [esp+10H], eax                    ; 320C _ 89. 44 24, 10
        mov     eax, dword [ebp+14H]                    ; 3210 _ 8B. 45, 14
        mov     dword [esp+0CH], eax                    ; 3213 _ 89. 44 24, 0C
        mov     eax, dword [ebp+10H]                    ; 3217 _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 321A _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 321E _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 3222 _ 89. 14 24
        call    _showFont8                              ; 3225 _ E8, 000006AA
        add     dword [ebp+10H], 8                      ; 322A _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 322E _ 83. 45, 1C, 01
?_184:  mov     eax, dword [ebp+1CH]                    ; 3232 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 3235 _ 0F B6. 00
        test    al, al                                  ; 3238 _ 84. C0
        jnz     ?_183                                   ; 323A _ 75, AB
        mov     eax, dword [ebp+14H]                    ; 323C _ 8B. 45, 14
        add     eax, 16                                 ; 323F _ 83. C0, 10
        mov     dword [esp+14H], eax                    ; 3242 _ 89. 44 24, 14
        mov     eax, dword [ebp+10H]                    ; 3246 _ 8B. 45, 10
        mov     dword [esp+10H], eax                    ; 3249 _ 89. 44 24, 10
        mov     eax, dword [ebp+14H]                    ; 324D _ 8B. 45, 14
        mov     dword [esp+0CH], eax                    ; 3250 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 3254 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 3257 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 325B _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 325E _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3262 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3265 _ 89. 04 24
        call    _sheet_refresh                          ; 3268 _ E8, 00000000(rel)
        jmp     ?_186                                   ; 326D _ EB, 01

?_185:  nop                                             ; 326F _ 90
?_186:  add     esp, 68                                 ; 3270 _ 83. C4, 44
        pop     ebx                                     ; 3273 _ 5B
        pop     ebp                                     ; 3274 _ 5D
        ret                                             ; 3275 _ C3
; _showString End of function

_show_mouse_info:; Function begin
        push    ebp                                     ; 3276 _ 55
        mov     ebp, esp                                ; 3277 _ 89. E5
        sub     esp, 72                                 ; 3279 _ 83. EC, 48
        mov     eax, dword [_buf_back]                  ; 327C _ A1, 00000144(d)
        mov     dword [ebp-10H], eax                    ; 3281 _ 89. 45, F0
        mov     byte [ebp-11H], 0                       ; 3284 _ C6. 45, EF, 00
        mov     dword [ebp-18H], 0                      ; 3288 _ C7. 45, E8, 00000000
        call    _io_sti                                 ; 328F _ E8, 00000000(rel)
        mov     dword [esp], _mouseinfo                 ; 3294 _ C7. 04 24, 00000030(d)
        call    _fifo8_get                              ; 329B _ E8, 00000000(rel)
        mov     byte [ebp-11H], al                      ; 32A0 _ 88. 45, EF
        movzx   eax, byte [ebp-11H]                     ; 32A3 _ 0F B6. 45, EF
        mov     dword [esp+4H], eax                     ; 32A7 _ 89. 44 24, 04
        mov     dword [esp], _mdec                      ; 32AB _ C7. 04 24, 00000100(d)
        call    _mouse_decode                           ; 32B2 _ E8, 00000A8B
        test    eax, eax                                ; 32B7 _ 85. C0
        je      ?_197                                   ; 32B9 _ 0F 84, 0000039C
        mov     dword [esp+8H], _mdec                   ; 32BF _ C7. 44 24, 08, 00000100(d)
        mov     eax, dword [ebp+0CH]                    ; 32C7 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 32CA _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 32CE _ 8B. 45, 08
        mov     dword [esp], eax                        ; 32D1 _ 89. 04 24
        call    _computeMousePosition                   ; 32D4 _ E8, FFFFFE56
        mov     edx, dword [_my]                        ; 32D9 _ 8B. 15, 00000138(d)
        mov     eax, dword [_mx]                        ; 32DF _ A1, 00000134(d)
        mov     dword [esp+0CH], edx                    ; 32E4 _ 89. 54 24, 0C
        mov     dword [esp+8H], eax                     ; 32E8 _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 32EC _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 32EF _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 32F3 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 32F6 _ 89. 04 24
        call    _sheet_slide                            ; 32F9 _ E8, 00000000(rel)
        mov     eax, dword [?_438]                      ; 32FE _ A1, 0000010C(d)
        and     eax, 01H                                ; 3303 _ 83. E0, 01
        test    eax, eax                                ; 3306 _ 85. C0
        je      ?_195                                   ; 3308 _ 0F 84, 00000340
        mov     eax, dword [_mmx]                       ; 330E _ A1, 00000118(d)
        test    eax, eax                                ; 3313 _ 85. C0
        jns     ?_194                                   ; 3315 _ 0F 89, 000002C2
        mov     eax, dword [ebp+8H]                     ; 331B _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 331E _ 8B. 40, 10
        sub     eax, 1                                  ; 3321 _ 83. E8, 01
        mov     dword [ebp-0CH], eax                    ; 3324 _ 89. 45, F4
        jmp     ?_193                                   ; 3327 _ E9, 000002A5

?_187:  mov     eax, dword [ebp+8H]                     ; 332C _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 332F _ 8B. 55, F4
        add     edx, 4                                  ; 3332 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 3335 _ 8B. 44 90, 04
        mov     dword [ebp-18H], eax                    ; 3339 _ 89. 45, E8
        mov     edx, dword [_mx]                        ; 333C _ 8B. 15, 00000134(d)
        mov     eax, dword [ebp-18H]                    ; 3342 _ 8B. 45, E8
        mov     eax, dword [eax+0CH]                    ; 3345 _ 8B. 40, 0C
        sub     edx, eax                                ; 3348 _ 29. C2
        mov     eax, edx                                ; 334A _ 89. D0
        mov     dword [ebp-1CH], eax                    ; 334C _ 89. 45, E4
        mov     edx, dword [_my]                        ; 334F _ 8B. 15, 00000138(d)
        mov     eax, dword [ebp-18H]                    ; 3355 _ 8B. 45, E8
        mov     eax, dword [eax+10H]                    ; 3358 _ 8B. 40, 10
        sub     edx, eax                                ; 335B _ 29. C2
        mov     eax, edx                                ; 335D _ 89. D0
        mov     dword [ebp-20H], eax                    ; 335F _ 89. 45, E0
        cmp     dword [ebp-1CH], 0                      ; 3362 _ 83. 7D, E4, 00
        js      ?_192                                   ; 3366 _ 0F 88, 00000261
        mov     eax, dword [ebp-18H]                    ; 336C _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 336F _ 8B. 40, 04
        cmp     dword [ebp-1CH], eax                    ; 3372 _ 39. 45, E4
        jge     ?_192                                   ; 3375 _ 0F 8D, 00000252
        cmp     dword [ebp-20H], 0                      ; 337B _ 83. 7D, E0, 00
        js      ?_192                                   ; 337F _ 0F 88, 00000248
        mov     eax, dword [ebp-18H]                    ; 3385 _ 8B. 45, E8
        mov     eax, dword [eax+8H]                     ; 3388 _ 8B. 40, 08
        cmp     dword [ebp-20H], eax                    ; 338B _ 39. 45, E0
        jge     ?_192                                   ; 338E _ 0F 8D, 00000239
        mov     eax, dword [ebp-18H]                    ; 3394 _ 8B. 45, E8
        mov     edx, dword [eax]                        ; 3397 _ 8B. 10
        mov     eax, dword [ebp-18H]                    ; 3399 _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 339C _ 8B. 40, 04
        imul    eax, dword [ebp-20H]                    ; 339F _ 0F AF. 45, E0
        mov     ecx, dword [ebp-1CH]                    ; 33A3 _ 8B. 4D, E4
        add     eax, ecx                                ; 33A6 _ 01. C8
        add     eax, edx                                ; 33A8 _ 01. D0
        movzx   eax, byte [eax]                         ; 33AA _ 0F B6. 00
        movzx   eax, al                                 ; 33AD _ 0F B6. C0
        mov     edx, dword [ebp-18H]                    ; 33B0 _ 8B. 55, E8
        mov     edx, dword [edx+14H]                    ; 33B3 _ 8B. 52, 14
        cmp     eax, edx                                ; 33B6 _ 39. D0
        je      ?_192                                   ; 33B8 _ 0F 84, 0000020F
        mov     eax, dword [_current_console_task]      ; 33BE _ A1, 00000278(d)
        mov     eax, dword [eax+0B4H]                   ; 33C3 _ 8B. 80, 000000B4
        test    eax, eax                                ; 33C9 _ 85. C0
        jz      ?_188                                   ; 33CB _ 74, 68
        mov     eax, dword [_current_console_task]      ; 33CD _ A1, 00000278(d)
        mov     eax, dword [eax+0B4H]                   ; 33D2 _ 8B. 80, 000000B4
        mov     dword [esp+0CH], 0                      ; 33D8 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], ?_414                   ; 33E0 _ C7. 44 24, 08, 0000000F(d)
        mov     dword [esp+4H], eax                     ; 33E8 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 33EC _ 8B. 45, 08
        mov     dword [esp], eax                        ; 33EF _ 89. 04 24
        call    _make_wtitle8                           ; 33F2 _ E8, 00001055
        mov     eax, dword [ebp-18H]                    ; 33F7 _ 8B. 45, E8
        mov     ecx, dword [eax+8H]                     ; 33FA _ 8B. 48, 08
        mov     eax, dword [ebp-18H]                    ; 33FD _ 8B. 45, E8
        mov     edx, dword [eax+4H]                     ; 3400 _ 8B. 50, 04
        mov     eax, dword [_current_console_task]      ; 3403 _ A1, 00000278(d)
        mov     eax, dword [eax+0B4H]                   ; 3408 _ 8B. 80, 000000B4
        mov     dword [esp+14H], ecx                    ; 340E _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 3412 _ 89. 54 24, 10
        mov     dword [esp+0CH], 0                      ; 3416 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 341E _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], eax                     ; 3426 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 342A _ 8B. 45, 08
        mov     dword [esp], eax                        ; 342D _ 89. 04 24
        call    _sheet_refresh                          ; 3430 _ E8, 00000000(rel)
?_188:  mov     eax, dword [ebp-18H]                    ; 3435 _ 8B. 45, E8
        mov     eax, dword [eax+20H]                    ; 3438 _ 8B. 40, 20
        mov     dword [_current_console_task], eax      ; 343B _ A3, 00000278(d)
        mov     eax, dword [_current_console_task]      ; 3440 _ A1, 00000278(d)
        mov     eax, dword [eax+0B4H]                   ; 3445 _ 8B. 80, 000000B4
        test    eax, eax                                ; 344B _ 85. C0
        jnz     ?_189                                   ; 344D _ 75, 32
        mov     dword [esp+14H], ?_432                  ; 344F _ C7. 44 24, 14, 00000082(d)
        mov     dword [esp+10H], 7                      ; 3457 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 96                     ; 345F _ C7. 44 24, 0C, 00000060
        mov     dword [esp+8H], 0                       ; 3467 _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp+0CH]                    ; 346F _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 3472 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3476 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3479 _ 89. 04 24
        call    _showString                             ; 347C _ E8, FFFFFD36
?_189:  mov     eax, dword [_current_console_task]      ; 3481 _ A1, 00000278(d)
        mov     eax, dword [eax+0B4H]                   ; 3486 _ 8B. 80, 000000B4
        test    eax, eax                                ; 348C _ 85. C0
        jz      ?_190                                   ; 348E _ 74, 60
        mov     eax, dword [_current_console_task]      ; 3490 _ A1, 00000278(d)
        mov     eax, dword [eax+0B4H]                   ; 3495 _ 8B. 80, 000000B4
        mov     dword [esp+0CH], 1                      ; 349B _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], ?_414                   ; 34A3 _ C7. 44 24, 08, 0000000F(d)
        mov     dword [esp+4H], eax                     ; 34AB _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 34AF _ 8B. 45, 08
        mov     dword [esp], eax                        ; 34B2 _ 89. 04 24
        call    _make_wtitle8                           ; 34B5 _ E8, 00000F92
        mov     eax, dword [ebp-18H]                    ; 34BA _ 8B. 45, E8
        mov     edx, dword [eax+8H]                     ; 34BD _ 8B. 50, 08
        mov     eax, dword [ebp-18H]                    ; 34C0 _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 34C3 _ 8B. 40, 04
        mov     dword [esp+14H], edx                    ; 34C6 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 34CA _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 34CE _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 34D6 _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp-18H]                    ; 34DE _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 34E1 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 34E5 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 34E8 _ 89. 04 24
        call    _sheet_refresh                          ; 34EB _ E8, 00000000(rel)
?_190:  mov     eax, dword [ebp+8H]                     ; 34F0 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 34F3 _ 8B. 40, 10
        sub     eax, 1                                  ; 34F6 _ 83. E8, 01
        mov     dword [esp+8H], eax                     ; 34F9 _ 89. 44 24, 08
        mov     eax, dword [ebp-18H]                    ; 34FD _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 3500 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3504 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3507 _ 89. 04 24
        call    _sheet_updown                           ; 350A _ E8, 00000000(rel)
        cmp     dword [ebp-1CH], 2                      ; 350F _ 83. 7D, E4, 02
        jle     ?_191                                   ; 3513 _ 7E, 36
        mov     eax, dword [ebp-18H]                    ; 3515 _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 3518 _ 8B. 40, 04
        sub     eax, 3                                  ; 351B _ 83. E8, 03
        cmp     dword [ebp-1CH], eax                    ; 351E _ 39. 45, E4
        jge     ?_191                                   ; 3521 _ 7D, 28
        cmp     dword [ebp-20H], 2                      ; 3523 _ 83. 7D, E0, 02
        jle     ?_191                                   ; 3527 _ 7E, 22
        cmp     dword [ebp-20H], 20                     ; 3529 _ 83. 7D, E0, 14
        jg      ?_191                                   ; 352D _ 7F, 1C
        mov     eax, dword [_mx]                        ; 352F _ A1, 00000134(d)
        mov     dword [_mmx], eax                       ; 3534 _ A3, 00000118(d)
        mov     eax, dword [_my]                        ; 3539 _ A1, 00000138(d)
        mov     dword [_mmy], eax                       ; 353E _ A3, 0000011C(d)
        mov     eax, dword [ebp-18H]                    ; 3543 _ 8B. 45, E8
        mov     dword [_mouse_clicked_sht], eax         ; 3546 _ A3, 00000270(d)
?_191:  mov     eax, dword [ebp-18H]                    ; 354B _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 354E _ 8B. 40, 04
        sub     eax, 21                                 ; 3551 _ 83. E8, 15
        cmp     dword [ebp-1CH], eax                    ; 3554 _ 39. 45, E4
        jl      ?_196                                   ; 3557 _ 0F 8C, 000000FD
        mov     eax, dword [ebp-18H]                    ; 355D _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 3560 _ 8B. 40, 04
        sub     eax, 5                                  ; 3563 _ 83. E8, 05
        cmp     dword [ebp-1CH], eax                    ; 3566 _ 39. 45, E4
        jge     ?_196                                   ; 3569 _ 0F 8D, 000000EB
        cmp     dword [ebp-20H], 4                      ; 356F _ 83. 7D, E0, 04
        jle     ?_196                                   ; 3573 _ 0F 8E, 000000E1
        cmp     dword [ebp-20H], 18                     ; 3579 _ 83. 7D, E0, 12
        jg      ?_196                                   ; 357D _ 0F 8F, 000000D7
        mov     eax, dword [ebp-18H]                    ; 3583 _ 8B. 45, E8
        mov     eax, dword [eax+20H]                    ; 3586 _ 8B. 40, 20
        test    eax, eax                                ; 3589 _ 85. C0
        je      ?_196                                   ; 358B _ 0F 84, 000000C9
        call    _io_cli                                 ; 3591 _ E8, 00000000(rel)
        mov     eax, dword [ebp-18H]                    ; 3596 _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 3599 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 359D _ 8B. 45, 08
        mov     dword [esp], eax                        ; 35A0 _ 89. 04 24
        call    _sheet_free                             ; 35A3 _ E8, 00000000(rel)
        call    _get_addr_code32                        ; 35A8 _ E8, 00000000(rel)
        mov     dword [ebp-24H], eax                    ; 35AD _ 89. 45, DC
        mov     ecx, _kill_process                      ; 35B0 _ B9, 00000EF3(d)
        mov     eax, dword [ebp-18H]                    ; 35B5 _ 8B. 45, E8
        mov     edx, dword [eax+20H]                    ; 35B8 _ 8B. 50, 20
        mov     eax, ecx                                ; 35BB _ 89. C8
        sub     eax, dword [ebp-24H]                    ; 35BD _ 2B. 45, DC
        mov     dword [edx+4CH], eax                    ; 35C0 _ 89. 42, 4C
        call    _io_sti                                 ; 35C3 _ E8, 00000000(rel)
        jmp     ?_196                                   ; 35C8 _ E9, 0000008D

?_192:  sub     dword [ebp-0CH], 1                      ; 35CD _ 83. 6D, F4, 01
?_193:  cmp     dword [ebp-0CH], 0                      ; 35D1 _ 83. 7D, F4, 00
        jg      ?_187                                   ; 35D5 _ 0F 8F, FFFFFD51
        jmp     ?_197                                   ; 35DB _ EB, 7E

?_194:  mov     edx, dword [_mx]                        ; 35DD _ 8B. 15, 00000134(d)
        mov     eax, dword [_mmx]                       ; 35E3 _ A1, 00000118(d)
        sub     edx, eax                                ; 35E8 _ 29. C2
        mov     eax, edx                                ; 35EA _ 89. D0
        mov     dword [ebp-1CH], eax                    ; 35EC _ 89. 45, E4
        mov     edx, dword [_my]                        ; 35EF _ 8B. 15, 00000138(d)
        mov     eax, dword [_mmy]                       ; 35F5 _ A1, 0000011C(d)
        sub     edx, eax                                ; 35FA _ 29. C2
        mov     eax, edx                                ; 35FC _ 89. D0
        mov     dword [ebp-20H], eax                    ; 35FE _ 89. 45, E0
        mov     eax, dword [_mouse_clicked_sht]         ; 3601 _ A1, 00000270(d)
        mov     edx, dword [eax+10H]                    ; 3606 _ 8B. 50, 10
        mov     eax, dword [ebp-20H]                    ; 3609 _ 8B. 45, E0
        lea     ecx, [edx+eax]                          ; 360C _ 8D. 0C 02
        mov     eax, dword [_mouse_clicked_sht]         ; 360F _ A1, 00000270(d)
        mov     edx, dword [eax+0CH]                    ; 3614 _ 8B. 50, 0C
        mov     eax, dword [ebp-1CH]                    ; 3617 _ 8B. 45, E4
        add     edx, eax                                ; 361A _ 01. C2
        mov     eax, dword [_mouse_clicked_sht]         ; 361C _ A1, 00000270(d)
        mov     dword [esp+0CH], ecx                    ; 3621 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 3625 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 3629 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 362D _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3630 _ 89. 04 24
        call    _sheet_slide                            ; 3633 _ E8, 00000000(rel)
        mov     eax, dword [_mx]                        ; 3638 _ A1, 00000134(d)
        mov     dword [_mmx], eax                       ; 363D _ A3, 00000118(d)
        mov     eax, dword [_my]                        ; 3642 _ A1, 00000138(d)
        mov     dword [_mmy], eax                       ; 3647 _ A3, 0000011C(d)
        jmp     ?_197                                   ; 364C _ EB, 0D

?_195:  mov     dword [_mmx], -1                        ; 364E _ C7. 05, 00000118(d), FFFFFFFF
        jmp     ?_197                                   ; 3658 _ EB, 01

?_196:  nop                                             ; 365A _ 90
?_197:  nop                                             ; 365B _ 90
        leave                                           ; 365C _ C9
        ret                                             ; 365D _ C3
; _show_mouse_info End of function

_initBootInfo:; Function begin
        push    ebp                                     ; 365E _ 55
        mov     ebp, esp                                ; 365F _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 3661 _ 8B. 45, 08
        mov     dword [eax], -536870912                 ; 3664 _ C7. 00, E0000000
        mov     eax, dword [ebp+8H]                     ; 366A _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 640                      ; 366D _ 66: C7. 40, 04, 0280
        mov     eax, dword [ebp+8H]                     ; 3673 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 480                      ; 3676 _ 66: C7. 40, 06, 01E0
        nop                                             ; 367C _ 90
        pop     ebp                                     ; 367D _ 5D
        ret                                             ; 367E _ C3
; _initBootInfo End of function

_init_palette:; Function begin
        push    ebp                                     ; 367F _ 55
        mov     ebp, esp                                ; 3680 _ 89. E5
        push    ebx                                     ; 3682 _ 53
        sub     esp, 692                                ; 3683 _ 81. EC, 000002B4
        mov     dword [esp+8H], _table_rgb.2683         ; 3689 _ C7. 44 24, 08, 00000140(d)
        mov     dword [esp+4H], 15                      ; 3691 _ C7. 44 24, 04, 0000000F
        mov     dword [esp], 0                          ; 3699 _ C7. 04 24, 00000000
        call    _set_palette                            ; 36A0 _ E8, 00000139
        mov     dword [ebp-14H], 0                      ; 36A5 _ C7. 45, EC, 00000000
        jmp     ?_203                                   ; 36AC _ E9, 000000FB

?_198:  mov     dword [ebp-10H], 0                      ; 36B1 _ C7. 45, F0, 00000000
        jmp     ?_202                                   ; 36B8 _ E9, 000000E1

?_199:  mov     dword [ebp-0CH], 0                      ; 36BD _ C7. 45, F4, 00000000
        jmp     ?_201                                   ; 36C4 _ E9, 000000C7

?_200:  mov     eax, dword [ebp-0CH]                    ; 36C9 _ 8B. 45, F4
        mov     ebx, eax                                ; 36CC _ 89. C3
        mov     edx, dword [ebp-10H]                    ; 36CE _ 8B. 55, F0
        mov     eax, edx                                ; 36D1 _ 89. D0
        add     eax, eax                                ; 36D3 _ 01. C0
        add     eax, edx                                ; 36D5 _ 01. D0
        add     eax, eax                                ; 36D7 _ 01. C0
        mov     edx, eax                                ; 36D9 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 36DB _ 8B. 45, F4
        lea     ecx, [edx+eax]                          ; 36DE _ 8D. 0C 02
        mov     edx, dword [ebp-14H]                    ; 36E1 _ 8B. 55, EC
        mov     eax, edx                                ; 36E4 _ 89. D0
        shl     eax, 3                                  ; 36E6 _ C1. E0, 03
        add     eax, edx                                ; 36E9 _ 01. D0
        shl     eax, 2                                  ; 36EB _ C1. E0, 02
        lea     edx, [ecx+eax]                          ; 36EE _ 8D. 14 01
        mov     eax, edx                                ; 36F1 _ 89. D0
        add     eax, eax                                ; 36F3 _ 01. C0
        add     edx, eax                                ; 36F5 _ 01. C2
        mov     ecx, 51                                 ; 36F7 _ B9, 00000033
        mov     eax, ebx                                ; 36FC _ 89. D8
        imul    eax, ecx                                ; 36FE _ 0F AF. C1
        mov     byte [ebp+edx-29CH], al                 ; 3701 _ 88. 84 15, FFFFFD64
        mov     eax, dword [ebp-10H]                    ; 3708 _ 8B. 45, F0
        mov     ebx, eax                                ; 370B _ 89. C3
        mov     edx, dword [ebp-10H]                    ; 370D _ 8B. 55, F0
        mov     eax, edx                                ; 3710 _ 89. D0
        add     eax, eax                                ; 3712 _ 01. C0
        add     eax, edx                                ; 3714 _ 01. D0
        add     eax, eax                                ; 3716 _ 01. C0
        mov     edx, eax                                ; 3718 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 371A _ 8B. 45, F4
        lea     ecx, [edx+eax]                          ; 371D _ 8D. 0C 02
        mov     edx, dword [ebp-14H]                    ; 3720 _ 8B. 55, EC
        mov     eax, edx                                ; 3723 _ 89. D0
        shl     eax, 3                                  ; 3725 _ C1. E0, 03
        add     eax, edx                                ; 3728 _ 01. D0
        shl     eax, 2                                  ; 372A _ C1. E0, 02
        lea     edx, [ecx+eax]                          ; 372D _ 8D. 14 01
        mov     eax, edx                                ; 3730 _ 89. D0
        add     eax, eax                                ; 3732 _ 01. C0
        add     eax, edx                                ; 3734 _ 01. D0
        lea     edx, [eax+1H]                           ; 3736 _ 8D. 50, 01
        mov     ecx, 51                                 ; 3739 _ B9, 00000033
        mov     eax, ebx                                ; 373E _ 89. D8
        imul    eax, ecx                                ; 3740 _ 0F AF. C1
        mov     byte [ebp+edx-29CH], al                 ; 3743 _ 88. 84 15, FFFFFD64
        mov     eax, dword [ebp-14H]                    ; 374A _ 8B. 45, EC
        mov     ebx, eax                                ; 374D _ 89. C3
        mov     edx, dword [ebp-10H]                    ; 374F _ 8B. 55, F0
        mov     eax, edx                                ; 3752 _ 89. D0
        add     eax, eax                                ; 3754 _ 01. C0
        add     eax, edx                                ; 3756 _ 01. D0
        add     eax, eax                                ; 3758 _ 01. C0
        mov     edx, eax                                ; 375A _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 375C _ 8B. 45, F4
        lea     ecx, [edx+eax]                          ; 375F _ 8D. 0C 02
        mov     edx, dword [ebp-14H]                    ; 3762 _ 8B. 55, EC
        mov     eax, edx                                ; 3765 _ 89. D0
        shl     eax, 3                                  ; 3767 _ C1. E0, 03
        add     eax, edx                                ; 376A _ 01. D0
        shl     eax, 2                                  ; 376C _ C1. E0, 02
        lea     edx, [ecx+eax]                          ; 376F _ 8D. 14 01
        mov     eax, edx                                ; 3772 _ 89. D0
        add     eax, eax                                ; 3774 _ 01. C0
        add     eax, edx                                ; 3776 _ 01. D0
        lea     edx, [eax+2H]                           ; 3778 _ 8D. 50, 02
        mov     ecx, 51                                 ; 377B _ B9, 00000033
        mov     eax, ebx                                ; 3780 _ 89. D8
        imul    eax, ecx                                ; 3782 _ 0F AF. C1
        mov     byte [ebp+edx-29CH], al                 ; 3785 _ 88. 84 15, FFFFFD64
        add     dword [ebp-0CH], 1                      ; 378C _ 83. 45, F4, 01
?_201:  cmp     dword [ebp-0CH], 5                      ; 3790 _ 83. 7D, F4, 05
        jle     ?_200                                   ; 3794 _ 0F 8E, FFFFFF2F
        add     dword [ebp-10H], 1                      ; 379A _ 83. 45, F0, 01
?_202:  cmp     dword [ebp-10H], 5                      ; 379E _ 83. 7D, F0, 05
        jle     ?_199                                   ; 37A2 _ 0F 8E, FFFFFF15
        add     dword [ebp-14H], 1                      ; 37A8 _ 83. 45, EC, 01
?_203:  cmp     dword [ebp-14H], 5                      ; 37AC _ 83. 7D, EC, 05
        jle     ?_198                                   ; 37B0 _ 0F 8E, FFFFFEFB
        lea     eax, [ebp-29CH]                         ; 37B6 _ 8D. 85, FFFFFD64
        mov     dword [esp+8H], eax                     ; 37BC _ 89. 44 24, 08
        mov     dword [esp+4H], 231                     ; 37C0 _ C7. 44 24, 04, 000000E7
        mov     dword [esp], 16                         ; 37C8 _ C7. 04 24, 00000010
        call    _set_palette                            ; 37CF _ E8, 0000000A
        nop                                             ; 37D4 _ 90
        add     esp, 692                                ; 37D5 _ 81. C4, 000002B4
        pop     ebx                                     ; 37DB _ 5B
        pop     ebp                                     ; 37DC _ 5D
        ret                                             ; 37DD _ C3
; _init_palette End of function

_set_palette:; Function begin
        push    ebp                                     ; 37DE _ 55
        mov     ebp, esp                                ; 37DF _ 89. E5
        sub     esp, 40                                 ; 37E1 _ 83. EC, 28
        call    _io_load_eflags                         ; 37E4 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 37E9 _ 89. 45, F0
        call    _io_cli                                 ; 37EC _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 37F1 _ 8B. 45, 08
        mov     dword [esp+4H], eax                     ; 37F4 _ 89. 44 24, 04
        mov     dword [esp], 968                        ; 37F8 _ C7. 04 24, 000003C8
        call    _io_out8                                ; 37FF _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 3804 _ 8B. 45, 08
        mov     dword [ebp-0CH], eax                    ; 3807 _ 89. 45, F4
        jmp     ?_205                                   ; 380A _ EB, 62

?_204:  mov     eax, dword [ebp+10H]                    ; 380C _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 380F _ 0F B6. 00
        shr     al, 2                                   ; 3812 _ C0. E8, 02
        movzx   eax, al                                 ; 3815 _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 3818 _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 381C _ C7. 04 24, 000003C9
        call    _io_out8                                ; 3823 _ E8, 00000000(rel)
        mov     eax, dword [ebp+10H]                    ; 3828 _ 8B. 45, 10
        add     eax, 1                                  ; 382B _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 382E _ 0F B6. 00
        shr     al, 2                                   ; 3831 _ C0. E8, 02
        movzx   eax, al                                 ; 3834 _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 3837 _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 383B _ C7. 04 24, 000003C9
        call    _io_out8                                ; 3842 _ E8, 00000000(rel)
        mov     eax, dword [ebp+10H]                    ; 3847 _ 8B. 45, 10
        add     eax, 2                                  ; 384A _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 384D _ 0F B6. 00
        shr     al, 2                                   ; 3850 _ C0. E8, 02
        movzx   eax, al                                 ; 3853 _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 3856 _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 385A _ C7. 04 24, 000003C9
        call    _io_out8                                ; 3861 _ E8, 00000000(rel)
        add     dword [ebp+10H], 3                      ; 3866 _ 83. 45, 10, 03
        add     dword [ebp-0CH], 1                      ; 386A _ 83. 45, F4, 01
?_205:  mov     eax, dword [ebp-0CH]                    ; 386E _ 8B. 45, F4
        cmp     eax, dword [ebp+0CH]                    ; 3871 _ 3B. 45, 0C
        jle     ?_204                                   ; 3874 _ 7E, 96
        mov     eax, dword [ebp-10H]                    ; 3876 _ 8B. 45, F0
        mov     dword [esp], eax                        ; 3879 _ 89. 04 24
        call    _io_store_eflags                        ; 387C _ E8, 00000000(rel)
        nop                                             ; 3881 _ 90
        leave                                           ; 3882 _ C9
        ret                                             ; 3883 _ C3
; _set_palette End of function

_boxfill8:; Function begin
        push    ebp                                     ; 3884 _ 55
        mov     ebp, esp                                ; 3885 _ 89. E5
        sub     esp, 20                                 ; 3887 _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 388A _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 388D _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 3890 _ 8B. 45, 18
        mov     dword [ebp-8H], eax                     ; 3893 _ 89. 45, F8
        jmp     ?_209                                   ; 3896 _ EB, 31

?_206:  mov     eax, dword [ebp+14H]                    ; 3898 _ 8B. 45, 14
        mov     dword [ebp-4H], eax                     ; 389B _ 89. 45, FC
        jmp     ?_208                                   ; 389E _ EB, 1D

?_207:  mov     eax, dword [ebp-8H]                     ; 38A0 _ 8B. 45, F8
        imul    eax, dword [ebp+0CH]                    ; 38A3 _ 0F AF. 45, 0C
        mov     edx, dword [ebp-4H]                     ; 38A7 _ 8B. 55, FC
        add     eax, edx                                ; 38AA _ 01. D0
        mov     edx, eax                                ; 38AC _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 38AE _ 8B. 45, 08
        add     edx, eax                                ; 38B1 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 38B3 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 38B7 _ 88. 02
        add     dword [ebp-4H], 1                       ; 38B9 _ 83. 45, FC, 01
?_208:  mov     eax, dword [ebp-4H]                     ; 38BD _ 8B. 45, FC
        cmp     eax, dword [ebp+1CH]                    ; 38C0 _ 3B. 45, 1C
        jle     ?_207                                   ; 38C3 _ 7E, DB
        add     dword [ebp-8H], 1                       ; 38C5 _ 83. 45, F8, 01
?_209:  mov     eax, dword [ebp-8H]                     ; 38C9 _ 8B. 45, F8
        cmp     eax, dword [ebp+20H]                    ; 38CC _ 3B. 45, 20
        jle     ?_206                                   ; 38CF _ 7E, C7
        nop                                             ; 38D1 _ 90
        leave                                           ; 38D2 _ C9
        ret                                             ; 38D3 _ C3
; _boxfill8 End of function

_showFont8:; Function begin
        push    ebp                                     ; 38D4 _ 55
        mov     ebp, esp                                ; 38D5 _ 89. E5
        sub     esp, 20                                 ; 38D7 _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 38DA _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 38DD _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 38E0 _ C7. 45, FC, 00000000
        jmp     ?_219                                   ; 38E7 _ E9, 0000015C

?_210:  mov     edx, dword [ebp-4H]                     ; 38EC _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 38EF _ 8B. 45, 1C
        add     eax, edx                                ; 38F2 _ 01. D0
        movzx   eax, byte [eax]                         ; 38F4 _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 38F7 _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 38FA _ 80. 7D, FB, 00
        jns     ?_211                                   ; 38FE _ 79, 1E
        mov     edx, dword [ebp+14H]                    ; 3900 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 3903 _ 8B. 45, FC
        add     eax, edx                                ; 3906 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 3908 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 390C _ 8B. 55, 10
        add     eax, edx                                ; 390F _ 01. D0
        mov     edx, eax                                ; 3911 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3913 _ 8B. 45, 08
        add     edx, eax                                ; 3916 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 3918 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 391C _ 88. 02
?_211:  movsx   eax, byte [ebp-5H]                      ; 391E _ 0F BE. 45, FB
        and     eax, 40H                                ; 3922 _ 83. E0, 40
        test    eax, eax                                ; 3925 _ 85. C0
        jz      ?_212                                   ; 3927 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 3929 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 392C _ 8B. 45, FC
        add     eax, edx                                ; 392F _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 3931 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 3935 _ 8B. 55, 10
        add     eax, edx                                ; 3938 _ 01. D0
        lea     edx, [eax+1H]                           ; 393A _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 393D _ 8B. 45, 08
        add     edx, eax                                ; 3940 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 3942 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 3946 _ 88. 02
?_212:  movsx   eax, byte [ebp-5H]                      ; 3948 _ 0F BE. 45, FB
        and     eax, 20H                                ; 394C _ 83. E0, 20
        test    eax, eax                                ; 394F _ 85. C0
        jz      ?_213                                   ; 3951 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 3953 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 3956 _ 8B. 45, FC
        add     eax, edx                                ; 3959 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 395B _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 395F _ 8B. 55, 10
        add     eax, edx                                ; 3962 _ 01. D0
        lea     edx, [eax+2H]                           ; 3964 _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 3967 _ 8B. 45, 08
        add     edx, eax                                ; 396A _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 396C _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 3970 _ 88. 02
?_213:  movsx   eax, byte [ebp-5H]                      ; 3972 _ 0F BE. 45, FB
        and     eax, 10H                                ; 3976 _ 83. E0, 10
        test    eax, eax                                ; 3979 _ 85. C0
        jz      ?_214                                   ; 397B _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 397D _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 3980 _ 8B. 45, FC
        add     eax, edx                                ; 3983 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 3985 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 3989 _ 8B. 55, 10
        add     eax, edx                                ; 398C _ 01. D0
        lea     edx, [eax+3H]                           ; 398E _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 3991 _ 8B. 45, 08
        add     edx, eax                                ; 3994 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 3996 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 399A _ 88. 02
?_214:  movsx   eax, byte [ebp-5H]                      ; 399C _ 0F BE. 45, FB
        and     eax, 08H                                ; 39A0 _ 83. E0, 08
        test    eax, eax                                ; 39A3 _ 85. C0
        jz      ?_215                                   ; 39A5 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 39A7 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 39AA _ 8B. 45, FC
        add     eax, edx                                ; 39AD _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 39AF _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 39B3 _ 8B. 55, 10
        add     eax, edx                                ; 39B6 _ 01. D0
        lea     edx, [eax+4H]                           ; 39B8 _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 39BB _ 8B. 45, 08
        add     edx, eax                                ; 39BE _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 39C0 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 39C4 _ 88. 02
?_215:  movsx   eax, byte [ebp-5H]                      ; 39C6 _ 0F BE. 45, FB
        and     eax, 04H                                ; 39CA _ 83. E0, 04
        test    eax, eax                                ; 39CD _ 85. C0
        jz      ?_216                                   ; 39CF _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 39D1 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 39D4 _ 8B. 45, FC
        add     eax, edx                                ; 39D7 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 39D9 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 39DD _ 8B. 55, 10
        add     eax, edx                                ; 39E0 _ 01. D0
        lea     edx, [eax+5H]                           ; 39E2 _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 39E5 _ 8B. 45, 08
        add     edx, eax                                ; 39E8 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 39EA _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 39EE _ 88. 02
?_216:  movsx   eax, byte [ebp-5H]                      ; 39F0 _ 0F BE. 45, FB
        and     eax, 02H                                ; 39F4 _ 83. E0, 02
        test    eax, eax                                ; 39F7 _ 85. C0
        jz      ?_217                                   ; 39F9 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 39FB _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 39FE _ 8B. 45, FC
        add     eax, edx                                ; 3A01 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 3A03 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 3A07 _ 8B. 55, 10
        add     eax, edx                                ; 3A0A _ 01. D0
        lea     edx, [eax+6H]                           ; 3A0C _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 3A0F _ 8B. 45, 08
        add     edx, eax                                ; 3A12 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 3A14 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 3A18 _ 88. 02
?_217:  movsx   eax, byte [ebp-5H]                      ; 3A1A _ 0F BE. 45, FB
        and     eax, 01H                                ; 3A1E _ 83. E0, 01
        test    eax, eax                                ; 3A21 _ 85. C0
        jz      ?_218                                   ; 3A23 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 3A25 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 3A28 _ 8B. 45, FC
        add     eax, edx                                ; 3A2B _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 3A2D _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 3A31 _ 8B. 55, 10
        add     eax, edx                                ; 3A34 _ 01. D0
        lea     edx, [eax+7H]                           ; 3A36 _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 3A39 _ 8B. 45, 08
        add     edx, eax                                ; 3A3C _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 3A3E _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 3A42 _ 88. 02
?_218:  add     dword [ebp-4H], 1                       ; 3A44 _ 83. 45, FC, 01
?_219:  cmp     dword [ebp-4H], 15                      ; 3A48 _ 83. 7D, FC, 0F
        jle     ?_210                                   ; 3A4C _ 0F 8E, FFFFFE9A
        nop                                             ; 3A52 _ 90
        leave                                           ; 3A53 _ C9
        ret                                             ; 3A54 _ C3
; _showFont8 End of function

_init_mouse_cursor:; Function begin
        push    ebp                                     ; 3A55 _ 55
        mov     ebp, esp                                ; 3A56 _ 89. E5
        sub     esp, 20                                 ; 3A58 _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 3A5B _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 3A5E _ 88. 45, EC
        mov     dword [ebp-8H], 0                       ; 3A61 _ C7. 45, F8, 00000000
        jmp     ?_226                                   ; 3A68 _ E9, 000000B1

?_220:  mov     dword [ebp-4H], 0                       ; 3A6D _ C7. 45, FC, 00000000
        jmp     ?_225                                   ; 3A74 _ E9, 00000097

?_221:  mov     eax, dword [ebp-8H]                     ; 3A79 _ 8B. 45, F8
        shl     eax, 4                                  ; 3A7C _ C1. E0, 04
        mov     edx, eax                                ; 3A7F _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 3A81 _ 8B. 45, FC
        add     eax, edx                                ; 3A84 _ 01. D0
        add     eax, _cursor.2743                       ; 3A86 _ 05, 00000180(d)
        movzx   eax, byte [eax]                         ; 3A8B _ 0F B6. 00
        cmp     al, 42                                  ; 3A8E _ 3C, 2A
        jnz     ?_222                                   ; 3A90 _ 75, 17
        mov     eax, dword [ebp-8H]                     ; 3A92 _ 8B. 45, F8
        shl     eax, 4                                  ; 3A95 _ C1. E0, 04
        mov     edx, eax                                ; 3A98 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 3A9A _ 8B. 45, FC
        add     eax, edx                                ; 3A9D _ 01. D0
        mov     edx, eax                                ; 3A9F _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3AA1 _ 8B. 45, 08
        add     eax, edx                                ; 3AA4 _ 01. D0
        mov     byte [eax], 0                           ; 3AA6 _ C6. 00, 00
?_222:  mov     eax, dword [ebp-8H]                     ; 3AA9 _ 8B. 45, F8
        shl     eax, 4                                  ; 3AAC _ C1. E0, 04
        mov     edx, eax                                ; 3AAF _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 3AB1 _ 8B. 45, FC
        add     eax, edx                                ; 3AB4 _ 01. D0
        add     eax, _cursor.2743                       ; 3AB6 _ 05, 00000180(d)
        movzx   eax, byte [eax]                         ; 3ABB _ 0F B6. 00
        cmp     al, 79                                  ; 3ABE _ 3C, 4F
        jnz     ?_223                                   ; 3AC0 _ 75, 17
        mov     eax, dword [ebp-8H]                     ; 3AC2 _ 8B. 45, F8
        shl     eax, 4                                  ; 3AC5 _ C1. E0, 04
        mov     edx, eax                                ; 3AC8 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 3ACA _ 8B. 45, FC
        add     eax, edx                                ; 3ACD _ 01. D0
        mov     edx, eax                                ; 3ACF _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3AD1 _ 8B. 45, 08
        add     eax, edx                                ; 3AD4 _ 01. D0
        mov     byte [eax], 7                           ; 3AD6 _ C6. 00, 07
?_223:  mov     eax, dword [ebp-8H]                     ; 3AD9 _ 8B. 45, F8
        shl     eax, 4                                  ; 3ADC _ C1. E0, 04
        mov     edx, eax                                ; 3ADF _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 3AE1 _ 8B. 45, FC
        add     eax, edx                                ; 3AE4 _ 01. D0
        add     eax, _cursor.2743                       ; 3AE6 _ 05, 00000180(d)
        movzx   eax, byte [eax]                         ; 3AEB _ 0F B6. 00
        cmp     al, 46                                  ; 3AEE _ 3C, 2E
        jnz     ?_224                                   ; 3AF0 _ 75, 1A
        mov     eax, dword [ebp-8H]                     ; 3AF2 _ 8B. 45, F8
        shl     eax, 4                                  ; 3AF5 _ C1. E0, 04
        mov     edx, eax                                ; 3AF8 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 3AFA _ 8B. 45, FC
        add     eax, edx                                ; 3AFD _ 01. D0
        mov     edx, eax                                ; 3AFF _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3B01 _ 8B. 45, 08
        add     edx, eax                                ; 3B04 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 3B06 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 3B0A _ 88. 02
?_224:  add     dword [ebp-4H], 1                       ; 3B0C _ 83. 45, FC, 01
?_225:  cmp     dword [ebp-4H], 15                      ; 3B10 _ 83. 7D, FC, 0F
        jle     ?_221                                   ; 3B14 _ 0F 8E, FFFFFF5F
        add     dword [ebp-8H], 1                       ; 3B1A _ 83. 45, F8, 01
?_226:  cmp     dword [ebp-8H], 15                      ; 3B1E _ 83. 7D, F8, 0F
        jle     ?_220                                   ; 3B22 _ 0F 8E, FFFFFF45
        nop                                             ; 3B28 _ 90
        leave                                           ; 3B29 _ C9
        ret                                             ; 3B2A _ C3
; _init_mouse_cursor End of function

_putblock:; Function begin
        push    ebp                                     ; 3B2B _ 55
        mov     ebp, esp                                ; 3B2C _ 89. E5
        push    ebx                                     ; 3B2E _ 53
        sub     esp, 16                                 ; 3B2F _ 83. EC, 10
        mov     dword [ebp-0CH], 0                      ; 3B32 _ C7. 45, F4, 00000000
        jmp     ?_230                                   ; 3B39 _ EB, 4E

?_227:  mov     dword [ebp-8H], 0                       ; 3B3B _ C7. 45, F8, 00000000
        jmp     ?_229                                   ; 3B42 _ EB, 39

?_228:  mov     eax, dword [ebp-0CH]                    ; 3B44 _ 8B. 45, F4
        imul    eax, dword [ebp+24H]                    ; 3B47 _ 0F AF. 45, 24
        mov     edx, dword [ebp-8H]                     ; 3B4B _ 8B. 55, F8
        add     eax, edx                                ; 3B4E _ 01. D0
        mov     edx, eax                                ; 3B50 _ 89. C2
        mov     eax, dword [ebp+20H]                    ; 3B52 _ 8B. 45, 20
        add     eax, edx                                ; 3B55 _ 01. D0
        mov     ecx, dword [ebp+1CH]                    ; 3B57 _ 8B. 4D, 1C
        mov     edx, dword [ebp-0CH]                    ; 3B5A _ 8B. 55, F4
        add     edx, ecx                                ; 3B5D _ 01. CA
        imul    edx, dword [ebp+0CH]                    ; 3B5F _ 0F AF. 55, 0C
        mov     ebx, dword [ebp+18H]                    ; 3B63 _ 8B. 5D, 18
        mov     ecx, dword [ebp-8H]                     ; 3B66 _ 8B. 4D, F8
        add     ecx, ebx                                ; 3B69 _ 01. D9
        add     edx, ecx                                ; 3B6B _ 01. CA
        mov     ecx, edx                                ; 3B6D _ 89. D1
        mov     edx, dword [ebp+8H]                     ; 3B6F _ 8B. 55, 08
        add     edx, ecx                                ; 3B72 _ 01. CA
        movzx   eax, byte [eax]                         ; 3B74 _ 0F B6. 00
        mov     byte [edx], al                          ; 3B77 _ 88. 02
        add     dword [ebp-8H], 1                       ; 3B79 _ 83. 45, F8, 01
?_229:  mov     eax, dword [ebp-8H]                     ; 3B7D _ 8B. 45, F8
        cmp     eax, dword [ebp+10H]                    ; 3B80 _ 3B. 45, 10
        jl      ?_228                                   ; 3B83 _ 7C, BF
        add     dword [ebp-0CH], 1                      ; 3B85 _ 83. 45, F4, 01
?_230:  mov     eax, dword [ebp-0CH]                    ; 3B89 _ 8B. 45, F4
        cmp     eax, dword [ebp+14H]                    ; 3B8C _ 3B. 45, 14
        jl      ?_227                                   ; 3B8F _ 7C, AA
        nop                                             ; 3B91 _ 90
        add     esp, 16                                 ; 3B92 _ 83. C4, 10
        pop     ebx                                     ; 3B95 _ 5B
        pop     ebp                                     ; 3B96 _ 5D
        ret                                             ; 3B97 _ C3
; _putblock End of function

_charToHexVal:; Function begin
        push    ebp                                     ; 3B98 _ 55
        mov     ebp, esp                                ; 3B99 _ 89. E5
        sub     esp, 4                                  ; 3B9B _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 3B9E _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 3BA1 _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 3BA4 _ 80. 7D, FC, 09
        jle     ?_231                                   ; 3BA8 _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 3BAA _ 0F B6. 45, FC
        add     eax, 55                                 ; 3BAE _ 83. C0, 37
        jmp     ?_232                                   ; 3BB1 _ EB, 07

?_231:  movzx   eax, byte [ebp-4H]                      ; 3BB3 _ 0F B6. 45, FC
        add     eax, 48                                 ; 3BB7 _ 83. C0, 30
?_232:  leave                                           ; 3BBA _ C9
        ret                                             ; 3BBB _ C3
; _charToHexVal End of function

_charToHexStr:; Function begin
        push    ebp                                     ; 3BBC _ 55
        mov     ebp, esp                                ; 3BBD _ 89. E5
        sub     esp, 24                                 ; 3BBF _ 83. EC, 18
        mov     eax, dword [ebp+8H]                     ; 3BC2 _ 8B. 45, 08
        mov     byte [ebp-14H], al                      ; 3BC5 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 3BC8 _ C7. 45, FC, 00000000
        movzx   eax, byte [ebp-14H]                     ; 3BCF _ 0F B6. 45, EC
        and     eax, 0FH                                ; 3BD3 _ 83. E0, 0F
        mov     byte [ebp-5H], al                       ; 3BD6 _ 88. 45, FB
        movsx   eax, byte [ebp-5H]                      ; 3BD9 _ 0F BE. 45, FB
        mov     dword [esp], eax                        ; 3BDD _ 89. 04 24
        call    _charToHexVal                           ; 3BE0 _ E8, FFFFFFB3
        mov     byte [?_411], al                        ; 3BE5 _ A2, 00000113(d)
        movzx   eax, byte [ebp-14H]                     ; 3BEA _ 0F B6. 45, EC
        shr     al, 4                                   ; 3BEE _ C0. E8, 04
        mov     byte [ebp-14H], al                      ; 3BF1 _ 88. 45, EC
        movzx   eax, byte [ebp-14H]                     ; 3BF4 _ 0F B6. 45, EC
        movsx   eax, al                                 ; 3BF8 _ 0F BE. C0
        mov     dword [esp], eax                        ; 3BFB _ 89. 04 24
        call    _charToHexVal                           ; 3BFE _ E8, FFFFFF95
        mov     byte [?_410], al                        ; 3C03 _ A2, 00000112(d)
        mov     eax, _keyval                            ; 3C08 _ B8, 00000110(d)
        leave                                           ; 3C0D _ C9
        ret                                             ; 3C0E _ C3
; _charToHexStr End of function

_intToHexStr:; Function begin
        push    ebp                                     ; 3C0F _ 55
        mov     ebp, esp                                ; 3C10 _ 89. E5
        sub     esp, 16                                 ; 3C12 _ 83. EC, 10
        mov     byte [_str.2781], 48                    ; 3C15 _ C6. 05, 00000394(d), 30
        mov     byte [?_441], 88                        ; 3C1C _ C6. 05, 00000395(d), 58
        mov     byte [?_442], 0                         ; 3C23 _ C6. 05, 0000039E(d), 00
        mov     dword [ebp-4H], 2                       ; 3C2A _ C7. 45, FC, 00000002
        jmp     ?_234                                   ; 3C31 _ EB, 0F

?_233:  mov     eax, dword [ebp-4H]                     ; 3C33 _ 8B. 45, FC
        add     eax, _str.2781                          ; 3C36 _ 05, 00000394(d)
        mov     byte [eax], 48                          ; 3C3B _ C6. 00, 30
        add     dword [ebp-4H], 1                       ; 3C3E _ 83. 45, FC, 01
?_234:  cmp     dword [ebp-4H], 9                       ; 3C42 _ 83. 7D, FC, 09
        jle     ?_233                                   ; 3C46 _ 7E, EB
        mov     dword [ebp-8H], 9                       ; 3C48 _ C7. 45, F8, 00000009
        jmp     ?_238                                   ; 3C4F _ EB, 42

?_235:  mov     eax, dword [ebp+8H]                     ; 3C51 _ 8B. 45, 08
        and     eax, 0FH                                ; 3C54 _ 83. E0, 0F
        mov     dword [ebp-0CH], eax                    ; 3C57 _ 89. 45, F4
        mov     eax, dword [ebp+8H]                     ; 3C5A _ 8B. 45, 08
        shr     eax, 4                                  ; 3C5D _ C1. E8, 04
        mov     dword [ebp+8H], eax                     ; 3C60 _ 89. 45, 08
        cmp     dword [ebp-0CH], 9                      ; 3C63 _ 83. 7D, F4, 09
        jle     ?_236                                   ; 3C67 _ 7E, 14
        mov     eax, dword [ebp-0CH]                    ; 3C69 _ 8B. 45, F4
        add     eax, 55                                 ; 3C6C _ 83. C0, 37
        mov     edx, eax                                ; 3C6F _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 3C71 _ 8B. 45, F8
        add     eax, _str.2781                          ; 3C74 _ 05, 00000394(d)
        mov     byte [eax], dl                          ; 3C79 _ 88. 10
        jmp     ?_237                                   ; 3C7B _ EB, 12

?_236:  mov     eax, dword [ebp-0CH]                    ; 3C7D _ 8B. 45, F4
        add     eax, 48                                 ; 3C80 _ 83. C0, 30
        mov     edx, eax                                ; 3C83 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 3C85 _ 8B. 45, F8
        add     eax, _str.2781                          ; 3C88 _ 05, 00000394(d)
        mov     byte [eax], dl                          ; 3C8D _ 88. 10
?_237:  sub     dword [ebp-8H], 1                       ; 3C8F _ 83. 6D, F8, 01
?_238:  cmp     dword [ebp-8H], 1                       ; 3C93 _ 83. 7D, F8, 01
        jle     ?_239                                   ; 3C97 _ 7E, 06
        cmp     dword [ebp+8H], 0                       ; 3C99 _ 83. 7D, 08, 00
        jnz     ?_235                                   ; 3C9D _ 75, B2
?_239:  mov     eax, _str.2781                          ; 3C9F _ B8, 00000394(d)
        leave                                           ; 3CA4 _ C9
        ret                                             ; 3CA5 _ C3
; _intToHexStr End of function

_wait_KBC_sendready:; Function begin
        push    ebp                                     ; 3CA6 _ 55
        mov     ebp, esp                                ; 3CA7 _ 89. E5
        sub     esp, 24                                 ; 3CA9 _ 83. EC, 18
?_240:  mov     dword [esp], 100                        ; 3CAC _ C7. 04 24, 00000064
        call    _io_in8                                 ; 3CB3 _ E8, 00000000(rel)
        and     eax, 02H                                ; 3CB8 _ 83. E0, 02
        test    eax, eax                                ; 3CBB _ 85. C0
        jz      ?_241                                   ; 3CBD _ 74, 02
        jmp     ?_240                                   ; 3CBF _ EB, EB
; _wait_KBC_sendready End of function

?_241:  ; Local function
        nop                                             ; 3CC1 _ 90
        nop                                             ; 3CC2 _ 90
        leave                                           ; 3CC3 _ C9
        ret                                             ; 3CC4 _ C3

_init_keyboard:; Function begin
        push    ebp                                     ; 3CC5 _ 55
        mov     ebp, esp                                ; 3CC6 _ 89. E5
        sub     esp, 24                                 ; 3CC8 _ 83. EC, 18
        call    _wait_KBC_sendready                     ; 3CCB _ E8, FFFFFFD6
        mov     dword [esp+4H], 96                      ; 3CD0 _ C7. 44 24, 04, 00000060
        mov     dword [esp], 100                        ; 3CD8 _ C7. 04 24, 00000064
        call    _io_out8                                ; 3CDF _ E8, 00000000(rel)
        call    _wait_KBC_sendready                     ; 3CE4 _ E8, FFFFFFBD
        mov     dword [esp+4H], 71                      ; 3CE9 _ C7. 44 24, 04, 00000047
        mov     dword [esp], 96                         ; 3CF1 _ C7. 04 24, 00000060
        call    _io_out8                                ; 3CF8 _ E8, 00000000(rel)
        nop                                             ; 3CFD _ 90
        leave                                           ; 3CFE _ C9
        ret                                             ; 3CFF _ C3
; _init_keyboard End of function

_enable_mouse:; Function begin
        push    ebp                                     ; 3D00 _ 55
        mov     ebp, esp                                ; 3D01 _ 89. E5
        sub     esp, 24                                 ; 3D03 _ 83. EC, 18
        call    _wait_KBC_sendready                     ; 3D06 _ E8, FFFFFF9B
        mov     dword [esp+4H], 212                     ; 3D0B _ C7. 44 24, 04, 000000D4
        mov     dword [esp], 100                        ; 3D13 _ C7. 04 24, 00000064
        call    _io_out8                                ; 3D1A _ E8, 00000000(rel)
        call    _wait_KBC_sendready                     ; 3D1F _ E8, FFFFFF82
        mov     dword [esp+4H], 244                     ; 3D24 _ C7. 44 24, 04, 000000F4
        mov     dword [esp], 96                         ; 3D2C _ C7. 04 24, 00000060
        call    _io_out8                                ; 3D33 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 3D38 _ 8B. 45, 08
        mov     byte [eax+3H], 0                        ; 3D3B _ C6. 40, 03, 00
        nop                                             ; 3D3F _ 90
        leave                                           ; 3D40 _ C9
        ret                                             ; 3D41 _ C3
; _enable_mouse End of function

_mouse_decode:; Function begin
        push    ebp                                     ; 3D42 _ 55
        mov     ebp, esp                                ; 3D43 _ 89. E5
        sub     esp, 4                                  ; 3D45 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 3D48 _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 3D4B _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 3D4E _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 3D51 _ 0F B6. 40, 03
        test    al, al                                  ; 3D55 _ 84. C0
        jnz     ?_243                                   ; 3D57 _ 75, 17
        cmp     byte [ebp-4H], -6                       ; 3D59 _ 80. 7D, FC, FA
        jnz     ?_242                                   ; 3D5D _ 75, 07
        mov     eax, dword [ebp+8H]                     ; 3D5F _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 3D62 _ C6. 40, 03, 01
?_242:  mov     eax, 0                                  ; 3D66 _ B8, 00000000
        jmp     ?_250                                   ; 3D6B _ E9, 0000010F

?_243:  mov     eax, dword [ebp+8H]                     ; 3D70 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 3D73 _ 0F B6. 40, 03
        cmp     al, 1                                   ; 3D77 _ 3C, 01
        jnz     ?_245                                   ; 3D79 _ 75, 28
        movzx   eax, byte [ebp-4H]                      ; 3D7B _ 0F B6. 45, FC
        and     eax, 0C8H                               ; 3D7F _ 25, 000000C8
        cmp     eax, 8                                  ; 3D84 _ 83. F8, 08
        jnz     ?_244                                   ; 3D87 _ 75, 10
        mov     edx, dword [ebp+8H]                     ; 3D89 _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 3D8C _ 0F B6. 45, FC
        mov     byte [edx], al                          ; 3D90 _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 3D92 _ 8B. 45, 08
        mov     byte [eax+3H], 2                        ; 3D95 _ C6. 40, 03, 02
?_244:  mov     eax, 0                                  ; 3D99 _ B8, 00000000
        jmp     ?_250                                   ; 3D9E _ E9, 000000DC

?_245:  mov     eax, dword [ebp+8H]                     ; 3DA3 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 3DA6 _ 0F B6. 40, 03
        cmp     al, 2                                   ; 3DAA _ 3C, 02
        jnz     ?_246                                   ; 3DAC _ 75, 1B
        mov     edx, dword [ebp+8H]                     ; 3DAE _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 3DB1 _ 0F B6. 45, FC
        mov     byte [edx+1H], al                       ; 3DB5 _ 88. 42, 01
        mov     eax, dword [ebp+8H]                     ; 3DB8 _ 8B. 45, 08
        mov     byte [eax+3H], 3                        ; 3DBB _ C6. 40, 03, 03
        mov     eax, 0                                  ; 3DBF _ B8, 00000000
        jmp     ?_250                                   ; 3DC4 _ E9, 000000B6

?_246:  mov     eax, dword [ebp+8H]                     ; 3DC9 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 3DCC _ 0F B6. 40, 03
        cmp     al, 3                                   ; 3DD0 _ 3C, 03
        jne     ?_249                                   ; 3DD2 _ 0F 85, 000000A2
        mov     edx, dword [ebp+8H]                     ; 3DD8 _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 3DDB _ 0F B6. 45, FC
        mov     byte [edx+2H], al                       ; 3DDF _ 88. 42, 02
        mov     eax, dword [ebp+8H]                     ; 3DE2 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 3DE5 _ C6. 40, 03, 01
        mov     eax, dword [ebp+8H]                     ; 3DE9 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 3DEC _ 0F B6. 00
        movzx   eax, al                                 ; 3DEF _ 0F B6. C0
        and     eax, 07H                                ; 3DF2 _ 83. E0, 07
        mov     edx, eax                                ; 3DF5 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3DF7 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 3DFA _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 3DFD _ 8B. 45, 08
        movzx   eax, byte [eax+1H]                      ; 3E00 _ 0F B6. 40, 01
        movzx   eax, al                                 ; 3E04 _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 3E07 _ 8B. 55, 08
        mov     dword [edx+4H], eax                     ; 3E0A _ 89. 42, 04
        mov     eax, dword [ebp+8H]                     ; 3E0D _ 8B. 45, 08
        movzx   eax, byte [eax+2H]                      ; 3E10 _ 0F B6. 40, 02
        movzx   eax, al                                 ; 3E14 _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 3E17 _ 8B. 55, 08
        mov     dword [edx+8H], eax                     ; 3E1A _ 89. 42, 08
        mov     eax, dword [ebp+8H]                     ; 3E1D _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 3E20 _ 0F B6. 00
        movzx   eax, al                                 ; 3E23 _ 0F B6. C0
        and     eax, 10H                                ; 3E26 _ 83. E0, 10
        test    eax, eax                                ; 3E29 _ 85. C0
        jz      ?_247                                   ; 3E2B _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 3E2D _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 3E30 _ 8B. 40, 04
        or      eax, 0FFFFFF00H                         ; 3E33 _ 0D, FFFFFF00
        mov     edx, eax                                ; 3E38 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3E3A _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 3E3D _ 89. 50, 04
?_247:  mov     eax, dword [ebp+8H]                     ; 3E40 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 3E43 _ 0F B6. 00
        movzx   eax, al                                 ; 3E46 _ 0F B6. C0
        and     eax, 20H                                ; 3E49 _ 83. E0, 20
        test    eax, eax                                ; 3E4C _ 85. C0
        jz      ?_248                                   ; 3E4E _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 3E50 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3E53 _ 8B. 40, 08
        or      eax, 0FFFFFF00H                         ; 3E56 _ 0D, FFFFFF00
        mov     edx, eax                                ; 3E5B _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3E5D _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 3E60 _ 89. 50, 08
?_248:  mov     eax, dword [ebp+8H]                     ; 3E63 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3E66 _ 8B. 40, 08
        neg     eax                                     ; 3E69 _ F7. D8
        mov     edx, eax                                ; 3E6B _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3E6D _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 3E70 _ 89. 50, 08
        mov     eax, 1                                  ; 3E73 _ B8, 00000001
        jmp     ?_250                                   ; 3E78 _ EB, 05

?_249:  mov     eax, 4294967295                         ; 3E7A _ B8, FFFFFFFF
?_250:  leave                                           ; 3E7F _ C9
        ret                                             ; 3E80 _ C3
; _mouse_decode End of function

_showMemoryInfo:; Function begin
        push    ebp                                     ; 3E81 _ 55
        mov     ebp, esp                                ; 3E82 _ 89. E5
        sub     esp, 72                                 ; 3E84 _ 83. EC, 48
        mov     dword [ebp-0CH], 0                      ; 3E87 _ C7. 45, F4, 00000000
        mov     dword [ebp-10H], 0                      ; 3E8E _ C7. 45, F0, 00000000
        mov     dword [ebp-14H], 104                    ; 3E95 _ C7. 45, EC, 00000068
        mov     dword [ebp-18H], 80                     ; 3E9C _ C7. 45, E8, 00000050
        mov     edx, dword [_ysize]                     ; 3EA3 _ 8B. 15, 00000140(d)
        mov     eax, dword [ebp+0CH]                    ; 3EA9 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 3EAC _ 8B. 00
        mov     dword [esp+8H], edx                     ; 3EAE _ 89. 54 24, 08
        mov     edx, dword [ebp+1CH]                    ; 3EB2 _ 8B. 55, 1C
        mov     dword [esp+4H], edx                     ; 3EB5 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3EB9 _ 89. 04 24
        call    _init_screen8                           ; 3EBC _ E8, FFFFEEE6
        mov     eax, dword [ebp+20H]                    ; 3EC1 _ 8B. 45, 20
        movsx   eax, al                                 ; 3EC4 _ 0F BE. C0
        mov     dword [esp+14H], ?_433                  ; 3EC7 _ C7. 44 24, 14, 0000008C(d)
        mov     dword [esp+10H], eax                    ; 3ECF _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 3ED3 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 3ED6 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 3EDA _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 3EDD _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 3EE1 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 3EE4 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3EE8 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3EEB _ 89. 04 24
        call    _showString                             ; 3EEE _ E8, FFFFF2C4
        mov     eax, dword [ebp+18H]                    ; 3EF3 _ 8B. 45, 18
        mov     dword [esp], eax                        ; 3EF6 _ 89. 04 24
        call    _intToHexStr                            ; 3EF9 _ E8, FFFFFD11
        mov     dword [ebp-1CH], eax                    ; 3EFE _ 89. 45, E4
        mov     eax, dword [ebp+20H]                    ; 3F01 _ 8B. 45, 20
        movsx   eax, al                                 ; 3F04 _ 0F BE. C0
        mov     edx, dword [ebp-1CH]                    ; 3F07 _ 8B. 55, E4
        mov     dword [esp+14H], edx                    ; 3F0A _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 3F0E _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 3F12 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 3F15 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 3F19 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 3F1C _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 3F20 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 3F23 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3F27 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3F2A _ 89. 04 24
        call    _showString                             ; 3F2D _ E8, FFFFF285
        add     dword [ebp-10H], 16                     ; 3F32 _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 3F36 _ 8B. 45, 20
        movsx   eax, al                                 ; 3F39 _ 0F BE. C0
        mov     dword [esp+14H], ?_434                  ; 3F3C _ C7. 44 24, 14, 00000096(d)
        mov     dword [esp+10H], eax                    ; 3F44 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 3F48 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 3F4B _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 3F4F _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 3F52 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 3F56 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 3F59 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3F5D _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3F60 _ 89. 04 24
        call    _showString                             ; 3F63 _ E8, FFFFF24F
        mov     eax, dword [ebp+10H]                    ; 3F68 _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 3F6B _ 8B. 00
        mov     dword [esp], eax                        ; 3F6D _ 89. 04 24
        call    _intToHexStr                            ; 3F70 _ E8, FFFFFC9A
        mov     dword [ebp-20H], eax                    ; 3F75 _ 89. 45, E0
        mov     eax, dword [ebp+20H]                    ; 3F78 _ 8B. 45, 20
        movsx   eax, al                                 ; 3F7B _ 0F BE. C0
        mov     edx, dword [ebp-20H]                    ; 3F7E _ 8B. 55, E0
        mov     dword [esp+14H], edx                    ; 3F81 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 3F85 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 3F89 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 3F8C _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 3F90 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 3F93 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 3F97 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 3F9A _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3F9E _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3FA1 _ 89. 04 24
        call    _showString                             ; 3FA4 _ E8, FFFFF20E
        add     dword [ebp-10H], 16                     ; 3FA9 _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 3FAD _ 8B. 45, 20
        movsx   eax, al                                 ; 3FB0 _ 0F BE. C0
        mov     dword [esp+14H], ?_435                  ; 3FB3 _ C7. 44 24, 14, 000000A2(d)
        mov     dword [esp+10H], eax                    ; 3FBB _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 3FBF _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 3FC2 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 3FC6 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 3FC9 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 3FCD _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 3FD0 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3FD4 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3FD7 _ 89. 04 24
        call    _showString                             ; 3FDA _ E8, FFFFF1D8
        mov     eax, dword [ebp+10H]                    ; 3FDF _ 8B. 45, 10
        mov     eax, dword [eax+4H]                     ; 3FE2 _ 8B. 40, 04
        mov     dword [esp], eax                        ; 3FE5 _ 89. 04 24
        call    _intToHexStr                            ; 3FE8 _ E8, FFFFFC22
        mov     dword [ebp-24H], eax                    ; 3FED _ 89. 45, DC
        mov     eax, dword [ebp+20H]                    ; 3FF0 _ 8B. 45, 20
        movsx   eax, al                                 ; 3FF3 _ 0F BE. C0
        mov     edx, dword [ebp-24H]                    ; 3FF6 _ 8B. 55, DC
        mov     dword [esp+14H], edx                    ; 3FF9 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 3FFD _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 4001 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 4004 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 4008 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 400B _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 400F _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 4012 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4016 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4019 _ 89. 04 24
        call    _showString                             ; 401C _ E8, FFFFF196
        add     dword [ebp-10H], 16                     ; 4021 _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 4025 _ 8B. 45, 20
        movsx   eax, al                                 ; 4028 _ 0F BE. C0
        mov     dword [esp+14H], ?_436                  ; 402B _ C7. 44 24, 14, 000000AE(d)
        mov     dword [esp+10H], eax                    ; 4033 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 4037 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 403A _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 403E _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 4041 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 4045 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 4048 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 404C _ 8B. 45, 08
        mov     dword [esp], eax                        ; 404F _ 89. 04 24
        call    _showString                             ; 4052 _ E8, FFFFF160
        mov     eax, dword [ebp+10H]                    ; 4057 _ 8B. 45, 10
        mov     eax, dword [eax+8H]                     ; 405A _ 8B. 40, 08
        mov     dword [esp], eax                        ; 405D _ 89. 04 24
        call    _intToHexStr                            ; 4060 _ E8, FFFFFBAA
        mov     dword [ebp-28H], eax                    ; 4065 _ 89. 45, D8
        mov     eax, dword [ebp+20H]                    ; 4068 _ 8B. 45, 20
        movsx   eax, al                                 ; 406B _ 0F BE. C0
        mov     edx, dword [ebp-28H]                    ; 406E _ 8B. 55, D8
        mov     dword [esp+14H], edx                    ; 4071 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 4075 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 4079 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 407C _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 4080 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 4083 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 4087 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 408A _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 408E _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4091 _ 89. 04 24
        call    _showString                             ; 4094 _ E8, FFFFF11E
        nop                                             ; 4099 _ 90
        leave                                           ; 409A _ C9
        ret                                             ; 409B _ C3
; _showMemoryInfo End of function

_message_box:; Function begin
        push    ebp                                     ; 409C _ 55
        mov     ebp, esp                                ; 409D _ 89. E5
        sub     esp, 56                                 ; 409F _ 83. EC, 38
        mov     eax, dword [ebp+8H]                     ; 40A2 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 40A5 _ 89. 04 24
        call    _sheet_alloc                            ; 40A8 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 40AD _ 89. 45, F4
        mov     eax, dword [_memman]                    ; 40B0 _ A1, 00000000(d)
        mov     dword [esp+4H], 10880                   ; 40B5 _ C7. 44 24, 04, 00002A80
        mov     dword [esp], eax                        ; 40BD _ 89. 04 24
        call    _memman_alloc_4k                        ; 40C0 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 40C5 _ 89. 45, F0
        mov     dword [esp+10H], -1                     ; 40C8 _ C7. 44 24, 10, FFFFFFFF
        mov     dword [esp+0CH], 68                     ; 40D0 _ C7. 44 24, 0C, 00000044
        mov     dword [esp+8H], 160                     ; 40D8 _ C7. 44 24, 08, 000000A0
        mov     eax, dword [ebp-10H]                    ; 40E0 _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 40E3 _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 40E7 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 40EA _ 89. 04 24
        call    _sheet_setbuf                           ; 40ED _ E8, 00000000(rel)
        mov     dword [esp+0CH], 1                      ; 40F2 _ C7. 44 24, 0C, 00000001
        mov     eax, dword [ebp+0CH]                    ; 40FA _ 8B. 45, 0C
        mov     dword [esp+8H], eax                     ; 40FD _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 4101 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 4104 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4108 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 410B _ 89. 04 24
        call    _make_window8                           ; 410E _ E8, 00000074
        mov     dword [esp+14H], 7                      ; 4113 _ C7. 44 24, 14, 00000007
        mov     dword [esp+10H], 16                     ; 411B _ C7. 44 24, 10, 00000010
        mov     dword [esp+0CH], 144                    ; 4123 _ C7. 44 24, 0C, 00000090
        mov     dword [esp+8H], 28                      ; 412B _ C7. 44 24, 08, 0000001C
        mov     dword [esp+4H], 8                       ; 4133 _ C7. 44 24, 04, 00000008
        mov     eax, dword [ebp-0CH]                    ; 413B _ 8B. 45, F4
        mov     dword [esp], eax                        ; 413E _ 89. 04 24
        call    _make_textbox8                          ; 4141 _ E8, 00000444
        mov     dword [esp+0CH], 172                    ; 4146 _ C7. 44 24, 0C, 000000AC
        mov     dword [esp+8H], 260                     ; 414E _ C7. 44 24, 08, 00000104
        mov     eax, dword [ebp-0CH]                    ; 4156 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 4159 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 415D _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4160 _ 89. 04 24
        call    _sheet_slide                            ; 4163 _ E8, 00000000(rel)
        mov     dword [esp+8H], 2                       ; 4168 _ C7. 44 24, 08, 00000002
        mov     eax, dword [ebp-0CH]                    ; 4170 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 4173 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4177 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 417A _ 89. 04 24
        call    _sheet_updown                           ; 417D _ E8, 00000000(rel)
        mov     eax, dword [ebp-0CH]                    ; 4182 _ 8B. 45, F4
        leave                                           ; 4185 _ C9
        ret                                             ; 4186 _ C3
; _message_box End of function

_make_window8:; Function begin
        push    ebp                                     ; 4187 _ 55
        mov     ebp, esp                                ; 4188 _ 89. E5
        push    ebx                                     ; 418A _ 53
        sub     esp, 68                                 ; 418B _ 83. EC, 44
        mov     eax, dword [ebp+14H]                    ; 418E _ 8B. 45, 14
        mov     byte [ebp-1CH], al                      ; 4191 _ 88. 45, E4
        mov     eax, dword [ebp+0CH]                    ; 4194 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 4197 _ 8B. 40, 04
        mov     dword [ebp-0CH], eax                    ; 419A _ 89. 45, F4
        mov     eax, dword [ebp+0CH]                    ; 419D _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 41A0 _ 8B. 40, 08
        mov     dword [ebp-10H], eax                    ; 41A3 _ 89. 45, F0
        mov     eax, dword [ebp-0CH]                    ; 41A6 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 41A9 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 41AC _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 41AF _ 8B. 00
        mov     dword [esp+18H], 0                      ; 41B1 _ C7. 44 24, 18, 00000000
        mov     dword [esp+14H], edx                    ; 41B9 _ 89. 54 24, 14
        mov     dword [esp+10H], 0                      ; 41BD _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 41C5 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 41CD _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-0CH]                    ; 41D5 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 41D8 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 41DC _ 89. 04 24
        call    _boxfill8                               ; 41DF _ E8, FFFFF6A0
        mov     eax, dword [ebp-0CH]                    ; 41E4 _ 8B. 45, F4
        lea     edx, [eax-2H]                           ; 41E7 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 41EA _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 41ED _ 8B. 00
        mov     dword [esp+18H], 1                      ; 41EF _ C7. 44 24, 18, 00000001
        mov     dword [esp+14H], edx                    ; 41F7 _ 89. 54 24, 14
        mov     dword [esp+10H], 1                      ; 41FB _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], 1                      ; 4203 _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 7                       ; 420B _ C7. 44 24, 08, 00000007
        mov     edx, dword [ebp-0CH]                    ; 4213 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 4216 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 421A _ 89. 04 24
        call    _boxfill8                               ; 421D _ E8, FFFFF662
        mov     eax, dword [ebp-10H]                    ; 4222 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 4225 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 4228 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 422B _ 8B. 00
        mov     dword [esp+18H], edx                    ; 422D _ 89. 54 24, 18
        mov     dword [esp+14H], 0                      ; 4231 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], 0                      ; 4239 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 4241 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 4249 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-0CH]                    ; 4251 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 4254 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 4258 _ 89. 04 24
        call    _boxfill8                               ; 425B _ E8, FFFFF624
        mov     eax, dword [ebp-10H]                    ; 4260 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 4263 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 4266 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 4269 _ 8B. 00
        mov     dword [esp+18H], edx                    ; 426B _ 89. 54 24, 18
        mov     dword [esp+14H], 1                      ; 426F _ C7. 44 24, 14, 00000001
        mov     dword [esp+10H], 1                      ; 4277 _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], 1                      ; 427F _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 7                       ; 4287 _ C7. 44 24, 08, 00000007
        mov     edx, dword [ebp-0CH]                    ; 428F _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 4292 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 4296 _ 89. 04 24
        call    _boxfill8                               ; 4299 _ E8, FFFFF5E6
        mov     eax, dword [ebp-10H]                    ; 429E _ 8B. 45, F0
        lea     ebx, [eax-2H]                           ; 42A1 _ 8D. 58, FE
        mov     eax, dword [ebp-0CH]                    ; 42A4 _ 8B. 45, F4
        lea     ecx, [eax-2H]                           ; 42A7 _ 8D. 48, FE
        mov     eax, dword [ebp-0CH]                    ; 42AA _ 8B. 45, F4
        lea     edx, [eax-2H]                           ; 42AD _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 42B0 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 42B3 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 42B5 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 42B9 _ 89. 4C 24, 14
        mov     dword [esp+10H], 1                      ; 42BD _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], edx                    ; 42C5 _ 89. 54 24, 0C
        mov     dword [esp+8H], 15                      ; 42C9 _ C7. 44 24, 08, 0000000F
        mov     edx, dword [ebp-0CH]                    ; 42D1 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 42D4 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 42D8 _ 89. 04 24
        call    _boxfill8                               ; 42DB _ E8, FFFFF5A4
        mov     eax, dword [ebp-10H]                    ; 42E0 _ 8B. 45, F0
        lea     ebx, [eax-1H]                           ; 42E3 _ 8D. 58, FF
        mov     eax, dword [ebp-0CH]                    ; 42E6 _ 8B. 45, F4
        lea     ecx, [eax-1H]                           ; 42E9 _ 8D. 48, FF
        mov     eax, dword [ebp-0CH]                    ; 42EC _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 42EF _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 42F2 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 42F5 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 42F7 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 42FB _ 89. 4C 24, 14
        mov     dword [esp+10H], 0                      ; 42FF _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], edx                    ; 4307 _ 89. 54 24, 0C
        mov     dword [esp+8H], 0                       ; 430B _ C7. 44 24, 08, 00000000
        mov     edx, dword [ebp-0CH]                    ; 4313 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 4316 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 431A _ 89. 04 24
        call    _boxfill8                               ; 431D _ E8, FFFFF562
        mov     eax, dword [ebp-10H]                    ; 4322 _ 8B. 45, F0
        lea     ecx, [eax-3H]                           ; 4325 _ 8D. 48, FD
        mov     eax, dword [ebp-0CH]                    ; 4328 _ 8B. 45, F4
        lea     edx, [eax-3H]                           ; 432B _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 432E _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 4331 _ 8B. 00
        mov     dword [esp+18H], ecx                    ; 4333 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 4337 _ 89. 54 24, 14
        mov     dword [esp+10H], 2                      ; 433B _ C7. 44 24, 10, 00000002
        mov     dword [esp+0CH], 2                      ; 4343 _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 8                       ; 434B _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-0CH]                    ; 4353 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 4356 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 435A _ 89. 04 24
        call    _boxfill8                               ; 435D _ E8, FFFFF522
        mov     eax, dword [ebp-0CH]                    ; 4362 _ 8B. 45, F4
        lea     edx, [eax-4H]                           ; 4365 _ 8D. 50, FC
        mov     eax, dword [ebp+0CH]                    ; 4368 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 436B _ 8B. 00
        mov     dword [esp+18H], 20                     ; 436D _ C7. 44 24, 18, 00000014
        mov     dword [esp+14H], edx                    ; 4375 _ 89. 54 24, 14
        mov     dword [esp+10H], 3                      ; 4379 _ C7. 44 24, 10, 00000003
        mov     dword [esp+0CH], 3                      ; 4381 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 12                      ; 4389 _ C7. 44 24, 08, 0000000C
        mov     edx, dword [ebp-0CH]                    ; 4391 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 4394 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 4398 _ 89. 04 24
        call    _boxfill8                               ; 439B _ E8, FFFFF4E4
        mov     eax, dword [ebp-10H]                    ; 43A0 _ 8B. 45, F0
        lea     ebx, [eax-2H]                           ; 43A3 _ 8D. 58, FE
        mov     eax, dword [ebp-0CH]                    ; 43A6 _ 8B. 45, F4
        lea     ecx, [eax-2H]                           ; 43A9 _ 8D. 48, FE
        mov     eax, dword [ebp-10H]                    ; 43AC _ 8B. 45, F0
        lea     edx, [eax-2H]                           ; 43AF _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 43B2 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 43B5 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 43B7 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 43BB _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 43BF _ 89. 54 24, 10
        mov     dword [esp+0CH], 1                      ; 43C3 _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 15                      ; 43CB _ C7. 44 24, 08, 0000000F
        mov     edx, dword [ebp-0CH]                    ; 43D3 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 43D6 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 43DA _ 89. 04 24
        call    _boxfill8                               ; 43DD _ E8, FFFFF4A2
        mov     eax, dword [ebp-10H]                    ; 43E2 _ 8B. 45, F0
        lea     ebx, [eax-1H]                           ; 43E5 _ 8D. 58, FF
        mov     eax, dword [ebp-0CH]                    ; 43E8 _ 8B. 45, F4
        lea     ecx, [eax-1H]                           ; 43EB _ 8D. 48, FF
        mov     eax, dword [ebp-10H]                    ; 43EE _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 43F1 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 43F4 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 43F7 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 43F9 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 43FD _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 4401 _ 89. 54 24, 10
        mov     dword [esp+0CH], 0                      ; 4405 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 440D _ C7. 44 24, 08, 00000000
        mov     edx, dword [ebp-0CH]                    ; 4415 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 4418 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 441C _ 89. 04 24
        call    _boxfill8                               ; 441F _ E8, FFFFF460
        movsx   eax, byte [ebp-1CH]                     ; 4424 _ 0F BE. 45, E4
        mov     dword [esp+0CH], eax                    ; 4428 _ 89. 44 24, 0C
        mov     eax, dword [ebp+10H]                    ; 442C _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 442F _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 4433 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 4436 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 443A _ 8B. 45, 08
        mov     dword [esp], eax                        ; 443D _ 89. 04 24
        call    _make_wtitle8                           ; 4440 _ E8, 00000007
        nop                                             ; 4445 _ 90
        add     esp, 68                                 ; 4446 _ 83. C4, 44
        pop     ebx                                     ; 4449 _ 5B
        pop     ebp                                     ; 444A _ 5D
        ret                                             ; 444B _ C3
; _make_window8 End of function

_make_wtitle8:; Function begin
        push    ebp                                     ; 444C _ 55
        mov     ebp, esp                                ; 444D _ 89. E5
        push    ebx                                     ; 444F _ 53
        sub     esp, 68                                 ; 4450 _ 83. EC, 44
        mov     eax, dword [ebp+14H]                    ; 4453 _ 8B. 45, 14
        mov     byte [ebp-1CH], al                      ; 4456 _ 88. 45, E4
        cmp     byte [ebp-1CH], 0                       ; 4459 _ 80. 7D, E4, 00
        jz      ?_251                                   ; 445D _ 74, 0A
        mov     byte [ebp-12H], 7                       ; 445F _ C6. 45, EE, 07
        mov     byte [ebp-13H], 12                      ; 4463 _ C6. 45, ED, 0C
        jmp     ?_252                                   ; 4467 _ EB, 08

?_251:  mov     byte [ebp-12H], 8                       ; 4469 _ C6. 45, EE, 08
        mov     byte [ebp-13H], 15                      ; 446D _ C6. 45, ED, 0F
?_252:  mov     eax, dword [ebp+0CH]                    ; 4471 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 4474 _ 8B. 40, 04
        lea     ebx, [eax-4H]                           ; 4477 _ 8D. 58, FC
        movzx   eax, byte [ebp-13H]                     ; 447A _ 0F B6. 45, ED
        movzx   eax, al                                 ; 447E _ 0F B6. C0
        mov     edx, dword [ebp+0CH]                    ; 4481 _ 8B. 55, 0C
        mov     ecx, dword [edx+4H]                     ; 4484 _ 8B. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 4487 _ 8B. 55, 0C
        mov     edx, dword [edx]                        ; 448A _ 8B. 12
        mov     dword [esp+18H], 20                     ; 448C _ C7. 44 24, 18, 00000014
        mov     dword [esp+14H], ebx                    ; 4494 _ 89. 5C 24, 14
        mov     dword [esp+10H], 3                      ; 4498 _ C7. 44 24, 10, 00000003
        mov     dword [esp+0CH], 3                      ; 44A0 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], eax                     ; 44A8 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 44AC _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 44B0 _ 89. 14 24
        call    _boxfill8                               ; 44B3 _ E8, FFFFF3CC
        movsx   eax, byte [ebp-12H]                     ; 44B8 _ 0F BE. 45, EE
        mov     edx, dword [ebp+10H]                    ; 44BC _ 8B. 55, 10
        mov     dword [esp+14H], edx                    ; 44BF _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 44C3 _ 89. 44 24, 10
        mov     dword [esp+0CH], 4                      ; 44C7 _ C7. 44 24, 0C, 00000004
        mov     dword [esp+8H], 24                      ; 44CF _ C7. 44 24, 08, 00000018
        mov     eax, dword [ebp+0CH]                    ; 44D7 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 44DA _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 44DE _ 8B. 45, 08
        mov     dword [esp], eax                        ; 44E1 _ 89. 04 24
        call    _showString                             ; 44E4 _ E8, FFFFECCE
        mov     dword [ebp-10H], 0                      ; 44E9 _ C7. 45, F0, 00000000
        jmp     ?_260                                   ; 44F0 _ E9, 00000084

?_253:  mov     dword [ebp-0CH], 0                      ; 44F5 _ C7. 45, F4, 00000000
        jmp     ?_259                                   ; 44FC _ EB, 71

?_254:  mov     eax, dword [ebp-10H]                    ; 44FE _ 8B. 45, F0
        shl     eax, 4                                  ; 4501 _ C1. E0, 04
        mov     edx, eax                                ; 4504 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 4506 _ 8B. 45, F4
        add     eax, edx                                ; 4509 _ 01. D0
        add     eax, _closebtn.2847                     ; 450B _ 05, 00000280(d)
        movzx   eax, byte [eax]                         ; 4510 _ 0F B6. 00
        mov     byte [ebp-11H], al                      ; 4513 _ 88. 45, EF
        cmp     byte [ebp-11H], 64                      ; 4516 _ 80. 7D, EF, 40
        jnz     ?_255                                   ; 451A _ 75, 06
        mov     byte [ebp-11H], 0                       ; 451C _ C6. 45, EF, 00
        jmp     ?_258                                   ; 4520 _ EB, 1C

?_255:  cmp     byte [ebp-11H], 36                      ; 4522 _ 80. 7D, EF, 24
        jnz     ?_256                                   ; 4526 _ 75, 06
        mov     byte [ebp-11H], 15                      ; 4528 _ C6. 45, EF, 0F
        jmp     ?_258                                   ; 452C _ EB, 10

?_256:  cmp     byte [ebp-11H], 81                      ; 452E _ 80. 7D, EF, 51
        jnz     ?_257                                   ; 4532 _ 75, 06
        mov     byte [ebp-11H], 8                       ; 4534 _ C6. 45, EF, 08
        jmp     ?_258                                   ; 4538 _ EB, 04

?_257:  mov     byte [ebp-11H], 7                       ; 453A _ C6. 45, EF, 07
?_258:  mov     eax, dword [ebp+0CH]                    ; 453E _ 8B. 45, 0C
        mov     ecx, dword [eax]                        ; 4541 _ 8B. 08
        mov     eax, dword [ebp-10H]                    ; 4543 _ 8B. 45, F0
        lea     edx, [eax+5H]                           ; 4546 _ 8D. 50, 05
        mov     eax, dword [ebp+0CH]                    ; 4549 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 454C _ 8B. 40, 04
        imul    eax, edx                                ; 454F _ 0F AF. C2
        mov     edx, dword [ebp+0CH]                    ; 4552 _ 8B. 55, 0C
        mov     edx, dword [edx+4H]                     ; 4555 _ 8B. 52, 04
        lea     ebx, [edx-15H]                          ; 4558 _ 8D. 5A, EB
        mov     edx, dword [ebp-0CH]                    ; 455B _ 8B. 55, F4
        add     edx, ebx                                ; 455E _ 01. DA
        add     eax, edx                                ; 4560 _ 01. D0
        lea     edx, [ecx+eax]                          ; 4562 _ 8D. 14 01
        movzx   eax, byte [ebp-11H]                     ; 4565 _ 0F B6. 45, EF
        mov     byte [edx], al                          ; 4569 _ 88. 02
        add     dword [ebp-0CH], 1                      ; 456B _ 83. 45, F4, 01
?_259:  cmp     dword [ebp-0CH], 15                     ; 456F _ 83. 7D, F4, 0F
        jle     ?_254                                   ; 4573 _ 7E, 89
        add     dword [ebp-10H], 1                      ; 4575 _ 83. 45, F0, 01
?_260:  cmp     dword [ebp-10H], 13                     ; 4579 _ 83. 7D, F0, 0D
        jle     ?_253                                   ; 457D _ 0F 8E, FFFFFF72
        nop                                             ; 4583 _ 90
        add     esp, 68                                 ; 4584 _ 83. C4, 44
        pop     ebx                                     ; 4587 _ 5B
        pop     ebp                                     ; 4588 _ 5D
        ret                                             ; 4589 _ C3
; _make_wtitle8 End of function

_make_textbox8:; Function begin
        push    ebp                                     ; 458A _ 55
        mov     ebp, esp                                ; 458B _ 89. E5
        push    edi                                     ; 458D _ 57
        push    esi                                     ; 458E _ 56
        push    ebx                                     ; 458F _ 53
        sub     esp, 44                                 ; 4590 _ 83. EC, 2C
        mov     edx, dword [ebp+0CH]                    ; 4593 _ 8B. 55, 0C
        mov     eax, dword [ebp+14H]                    ; 4596 _ 8B. 45, 14
        add     eax, edx                                ; 4599 _ 01. D0
        mov     dword [ebp-10H], eax                    ; 459B _ 89. 45, F0
        mov     edx, dword [ebp+10H]                    ; 459E _ 8B. 55, 10
        mov     eax, dword [ebp+18H]                    ; 45A1 _ 8B. 45, 18
        add     eax, edx                                ; 45A4 _ 01. D0
        mov     dword [ebp-14H], eax                    ; 45A6 _ 89. 45, EC
        mov     eax, dword [ebp+10H]                    ; 45A9 _ 8B. 45, 10
        lea     edi, [eax-3H]                           ; 45AC _ 8D. 78, FD
        mov     eax, dword [ebp-10H]                    ; 45AF _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 45B2 _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 45B5 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 45B8 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 45BB _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 45BE _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 45C1 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 45C4 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 45C7 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 45CA _ 8B. 00
        mov     dword [esp+18H], edi                    ; 45CC _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 45D0 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 45D4 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 45D8 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 15                      ; 45DC _ C7. 44 24, 08, 0000000F
        mov     dword [esp+4H], edx                     ; 45E4 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 45E8 _ 89. 04 24
        call    _boxfill8                               ; 45EB _ E8, FFFFF294
        mov     eax, dword [ebp-14H]                    ; 45F0 _ 8B. 45, EC
        lea     edi, [eax+1H]                           ; 45F3 _ 8D. 78, 01
        mov     eax, dword [ebp+0CH]                    ; 45F6 _ 8B. 45, 0C
        lea     esi, [eax-3H]                           ; 45F9 _ 8D. 70, FD
        mov     eax, dword [ebp+10H]                    ; 45FC _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 45FF _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 4602 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 4605 _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 4608 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 460B _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 460E _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 4611 _ 8B. 00
        mov     dword [esp+18H], edi                    ; 4613 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 4617 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 461B _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 461F _ 89. 4C 24, 0C
        mov     dword [esp+8H], 15                      ; 4623 _ C7. 44 24, 08, 0000000F
        mov     dword [esp+4H], edx                     ; 462B _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 462F _ 89. 04 24
        call    _boxfill8                               ; 4632 _ E8, FFFFF24D
        mov     eax, dword [ebp-14H]                    ; 4637 _ 8B. 45, EC
        lea     edi, [eax+2H]                           ; 463A _ 8D. 78, 02
        mov     eax, dword [ebp-10H]                    ; 463D _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 4640 _ 8D. 70, 01
        mov     eax, dword [ebp-14H]                    ; 4643 _ 8B. 45, EC
        lea     ebx, [eax+2H]                           ; 4646 _ 8D. 58, 02
        mov     eax, dword [ebp+0CH]                    ; 4649 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 464C _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 464F _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 4652 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 4655 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 4658 _ 8B. 00
        mov     dword [esp+18H], edi                    ; 465A _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 465E _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 4662 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 4666 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 7                       ; 466A _ C7. 44 24, 08, 00000007
        mov     dword [esp+4H], edx                     ; 4672 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 4676 _ 89. 04 24
        call    _boxfill8                               ; 4679 _ E8, FFFFF206
        mov     eax, dword [ebp-14H]                    ; 467E _ 8B. 45, EC
        lea     edi, [eax+2H]                           ; 4681 _ 8D. 78, 02
        mov     eax, dword [ebp-10H]                    ; 4684 _ 8B. 45, F0
        lea     esi, [eax+2H]                           ; 4687 _ 8D. 70, 02
        mov     eax, dword [ebp+10H]                    ; 468A _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 468D _ 8D. 58, FD
        mov     eax, dword [ebp-10H]                    ; 4690 _ 8B. 45, F0
        lea     ecx, [eax+2H]                           ; 4693 _ 8D. 48, 02
        mov     eax, dword [ebp+8H]                     ; 4696 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 4699 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 469C _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 469F _ 8B. 00
        mov     dword [esp+18H], edi                    ; 46A1 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 46A5 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 46A9 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 46AD _ 89. 4C 24, 0C
        mov     dword [esp+8H], 7                       ; 46B1 _ C7. 44 24, 08, 00000007
        mov     dword [esp+4H], edx                     ; 46B9 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 46BD _ 89. 04 24
        call    _boxfill8                               ; 46C0 _ E8, FFFFF1BF
        mov     eax, dword [ebp+10H]                    ; 46C5 _ 8B. 45, 10
        lea     esi, [eax-2H]                           ; 46C8 _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 46CB _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 46CE _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 46D1 _ 8B. 45, 0C
        lea     ecx, [eax-1H]                           ; 46D4 _ 8D. 48, FF
        mov     eax, dword [ebp+8H]                     ; 46D7 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 46DA _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 46DD _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 46E0 _ 8B. 00
        mov     dword [esp+18H], esi                    ; 46E2 _ 89. 74 24, 18
        mov     esi, dword [ebp-10H]                    ; 46E6 _ 8B. 75, F0
        mov     dword [esp+14H], esi                    ; 46E9 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 46ED _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 46F1 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 0                       ; 46F5 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 46FD _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 4701 _ 89. 04 24
        call    _boxfill8                               ; 4704 _ E8, FFFFF17B
        mov     eax, dword [ebp+0CH]                    ; 4709 _ 8B. 45, 0C
        lea     esi, [eax-2H]                           ; 470C _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 470F _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 4712 _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 4715 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 4718 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 471B _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 471E _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 4721 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 4724 _ 8B. 00
        mov     edi, dword [ebp-14H]                    ; 4726 _ 8B. 7D, EC
        mov     dword [esp+18H], edi                    ; 4729 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 472D _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 4731 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 4735 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 0                       ; 4739 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 4741 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 4745 _ 89. 04 24
        call    _boxfill8                               ; 4748 _ E8, FFFFF137
        mov     eax, dword [ebp-14H]                    ; 474D _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 4750 _ 8D. 70, 01
        mov     eax, dword [ebp-14H]                    ; 4753 _ 8B. 45, EC
        lea     ebx, [eax+1H]                           ; 4756 _ 8D. 58, 01
        mov     eax, dword [ebp+0CH]                    ; 4759 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 475C _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 475F _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 4762 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 4765 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 4768 _ 8B. 00
        mov     dword [esp+18H], esi                    ; 476A _ 89. 74 24, 18
        mov     esi, dword [ebp-10H]                    ; 476E _ 8B. 75, F0
        mov     dword [esp+14H], esi                    ; 4771 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 4775 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 4779 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 8                       ; 477D _ C7. 44 24, 08, 00000008
        mov     dword [esp+4H], edx                     ; 4785 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 4789 _ 89. 04 24
        call    _boxfill8                               ; 478C _ E8, FFFFF0F3
        mov     eax, dword [ebp-14H]                    ; 4791 _ 8B. 45, EC
        lea     edi, [eax+1H]                           ; 4794 _ 8D. 78, 01
        mov     eax, dword [ebp-10H]                    ; 4797 _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 479A _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 479D _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 47A0 _ 8D. 58, FE
        mov     eax, dword [ebp-10H]                    ; 47A3 _ 8B. 45, F0
        lea     ecx, [eax+1H]                           ; 47A6 _ 8D. 48, 01
        mov     eax, dword [ebp+8H]                     ; 47A9 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 47AC _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 47AF _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 47B2 _ 8B. 00
        mov     dword [esp+18H], edi                    ; 47B4 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 47B8 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 47BC _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 47C0 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 8                       ; 47C4 _ C7. 44 24, 08, 00000008
        mov     dword [esp+4H], edx                     ; 47CC _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 47D0 _ 89. 04 24
        call    _boxfill8                               ; 47D3 _ E8, FFFFF0AC
        mov     eax, dword [ebp+10H]                    ; 47D8 _ 8B. 45, 10
        lea     esi, [eax-1H]                           ; 47DB _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 47DE _ 8B. 45, 0C
        lea     ebx, [eax-1H]                           ; 47E1 _ 8D. 58, FF
        mov     eax, dword [ebp+1CH]                    ; 47E4 _ 8B. 45, 1C
        movzx   eax, al                                 ; 47E7 _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 47EA _ 8B. 55, 08
        mov     ecx, dword [edx+4H]                     ; 47ED _ 8B. 4A, 04
        mov     edx, dword [ebp+8H]                     ; 47F0 _ 8B. 55, 08
        mov     edx, dword [edx]                        ; 47F3 _ 8B. 12
        mov     edi, dword [ebp-14H]                    ; 47F5 _ 8B. 7D, EC
        mov     dword [esp+18H], edi                    ; 47F8 _ 89. 7C 24, 18
        mov     edi, dword [ebp-10H]                    ; 47FC _ 8B. 7D, F0
        mov     dword [esp+14H], edi                    ; 47FF _ 89. 7C 24, 14
        mov     dword [esp+10H], esi                    ; 4803 _ 89. 74 24, 10
        mov     dword [esp+0CH], ebx                    ; 4807 _ 89. 5C 24, 0C
        mov     dword [esp+8H], eax                     ; 480B _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 480F _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 4813 _ 89. 14 24
        call    _boxfill8                               ; 4816 _ E8, FFFFF069
        nop                                             ; 481B _ 90
        add     esp, 44                                 ; 481C _ 83. C4, 2C
        pop     ebx                                     ; 481F _ 5B
        pop     esi                                     ; 4820 _ 5E
        pop     edi                                     ; 4821 _ 5F
        pop     ebp                                     ; 4822 _ 5D
        ret                                             ; 4823 _ C3
; _make_textbox8 End of function

_file_loadfile:; Function begin
        push    ebp                                     ; 4824 _ 55
        mov     ebp, esp                                ; 4825 _ 89. E5
        sub     esp, 56                                 ; 4827 _ 83. EC, 38
        mov     dword [ebp-0CH], 88064                  ; 482A _ C7. 45, F4, 00015800
        mov     eax, dword [_memman]                    ; 4831 _ A1, 00000000(d)
        mov     dword [esp+4H], 13                      ; 4836 _ C7. 44 24, 04, 0000000D
        mov     dword [esp], eax                        ; 483E _ 89. 04 24
        call    _memman_alloc                           ; 4841 _ E8, 00000000(rel)
        mov     dword [ebp-1CH], eax                    ; 4846 _ 89. 45, E4
        jmp     ?_273                                   ; 4849 _ E9, 00000143

?_261:  mov     dword [ebp-10H], 0                      ; 484E _ C7. 45, F0, 00000000
        jmp     ?_263                                   ; 4855 _ EB, 0F

?_262:  mov     edx, dword [ebp-10H]                    ; 4857 _ 8B. 55, F0
        mov     eax, dword [ebp-1CH]                    ; 485A _ 8B. 45, E4
        add     eax, edx                                ; 485D _ 01. D0
        mov     byte [eax], 0                           ; 485F _ C6. 00, 00
        add     dword [ebp-10H], 1                      ; 4862 _ 83. 45, F0, 01
?_263:  cmp     dword [ebp-10H], 11                     ; 4866 _ 83. 7D, F0, 0B
        jle     ?_262                                   ; 486A _ 7E, EB
        mov     dword [ebp-10H], 0                      ; 486C _ C7. 45, F0, 00000000
        jmp     ?_265                                   ; 4873 _ EB, 2A

?_264:  mov     edx, dword [ebp-0CH]                    ; 4875 _ 8B. 55, F4
        mov     eax, dword [ebp-10H]                    ; 4878 _ 8B. 45, F0
        add     eax, edx                                ; 487B _ 01. D0
        movzx   eax, byte [eax]                         ; 487D _ 0F B6. 00
        test    al, al                                  ; 4880 _ 84. C0
        jz      ?_266                                   ; 4882 _ 74, 23
        mov     edx, dword [ebp-0CH]                    ; 4884 _ 8B. 55, F4
        mov     eax, dword [ebp-10H]                    ; 4887 _ 8B. 45, F0
        add     eax, edx                                ; 488A _ 01. D0
        movzx   ecx, byte [eax]                         ; 488C _ 0F B6. 08
        mov     edx, dword [ebp-10H]                    ; 488F _ 8B. 55, F0
        mov     eax, dword [ebp-1CH]                    ; 4892 _ 8B. 45, E4
        add     eax, edx                                ; 4895 _ 01. D0
        mov     edx, ecx                                ; 4897 _ 89. CA
        mov     byte [eax], dl                          ; 4899 _ 88. 10
        add     dword [ebp-10H], 1                      ; 489B _ 83. 45, F0, 01
?_265:  cmp     dword [ebp-10H], 7                      ; 489F _ 83. 7D, F0, 07
        jle     ?_264                                   ; 48A3 _ 7E, D0
        jmp     ?_267                                   ; 48A5 _ EB, 01

?_266:  nop                                             ; 48A7 _ 90
?_267:  mov     dword [ebp-14H], 0                      ; 48A8 _ C7. 45, EC, 00000000
        mov     edx, dword [ebp-10H]                    ; 48AF _ 8B. 55, F0
        mov     eax, dword [ebp-1CH]                    ; 48B2 _ 8B. 45, E4
        add     eax, edx                                ; 48B5 _ 01. D0
        mov     byte [eax], 46                          ; 48B7 _ C6. 00, 2E
        add     dword [ebp-10H], 1                      ; 48BA _ 83. 45, F0, 01
        mov     dword [ebp-14H], 0                      ; 48BE _ C7. 45, EC, 00000000
        jmp     ?_269                                   ; 48C5 _ EB, 22

?_268:  mov     edx, dword [ebp-0CH]                    ; 48C7 _ 8B. 55, F4
        mov     eax, dword [ebp-14H]                    ; 48CA _ 8B. 45, EC
        add     eax, edx                                ; 48CD _ 01. D0
        add     eax, 8                                  ; 48CF _ 83. C0, 08
        movzx   ecx, byte [eax]                         ; 48D2 _ 0F B6. 08
        mov     edx, dword [ebp-10H]                    ; 48D5 _ 8B. 55, F0
        mov     eax, dword [ebp-1CH]                    ; 48D8 _ 8B. 45, E4
        add     eax, edx                                ; 48DB _ 01. D0
        mov     edx, ecx                                ; 48DD _ 89. CA
        mov     byte [eax], dl                          ; 48DF _ 88. 10
        add     dword [ebp-10H], 1                      ; 48E1 _ 83. 45, F0, 01
        add     dword [ebp-14H], 1                      ; 48E5 _ 83. 45, EC, 01
?_269:  cmp     dword [ebp-14H], 2                      ; 48E9 _ 83. 7D, EC, 02
        jle     ?_268                                   ; 48ED _ 7E, D8
        mov     eax, dword [ebp-1CH]                    ; 48EF _ 8B. 45, E4
        mov     dword [esp+4H], eax                     ; 48F2 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 48F6 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 48F9 _ 89. 04 24
        call    _strcmp                                 ; 48FC _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 4901 _ 83. F8, 01
        jne     ?_272                                   ; 4904 _ 0F 85, 00000083
        mov     eax, dword [ebp-0CH]                    ; 490A _ 8B. 45, F4
        mov     edx, dword [eax+1CH]                    ; 490D _ 8B. 50, 1C
        mov     eax, dword [_memman]                    ; 4910 _ A1, 00000000(d)
        mov     dword [esp+4H], edx                     ; 4915 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 4919 _ 89. 04 24
        call    _memman_alloc_4k                        ; 491C _ E8, 00000000(rel)
        mov     edx, eax                                ; 4921 _ 89. C2
        mov     eax, dword [ebp+0CH]                    ; 4923 _ 8B. 45, 0C
        mov     dword [eax], edx                        ; 4926 _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 4928 _ 8B. 45, F4
        mov     eax, dword [eax+1CH]                    ; 492B _ 8B. 40, 1C
        mov     edx, eax                                ; 492E _ 89. C2
        mov     eax, dword [ebp+0CH]                    ; 4930 _ 8B. 45, 0C
        mov     dword [eax+8H], edx                     ; 4933 _ 89. 50, 08
        mov     dword [ebp-20H], 97280                  ; 4936 _ C7. 45, E0, 00017C00
        mov     eax, dword [ebp-0CH]                    ; 493D _ 8B. 45, F4
        movzx   eax, word [eax+1AH]                     ; 4940 _ 0F B7. 40, 1A
        movzx   eax, ax                                 ; 4944 _ 0F B7. C0
        shl     eax, 9                                  ; 4947 _ C1. E0, 09
        add     dword [ebp-20H], eax                    ; 494A _ 01. 45, E0
        mov     eax, dword [ebp-0CH]                    ; 494D _ 8B. 45, F4
        mov     eax, dword [eax+1CH]                    ; 4950 _ 8B. 40, 1C
        mov     dword [ebp-24H], eax                    ; 4953 _ 89. 45, DC
        mov     dword [ebp-18H], 0                      ; 4956 _ C7. 45, E8, 00000000
        mov     dword [ebp-18H], 0                      ; 495D _ C7. 45, E8, 00000000
        jmp     ?_271                                   ; 4964 _ EB, 1D

?_270:  mov     edx, dword [ebp-18H]                    ; 4966 _ 8B. 55, E8
        mov     eax, dword [ebp-20H]                    ; 4969 _ 8B. 45, E0
        add     eax, edx                                ; 496C _ 01. D0
        movzx   ecx, byte [eax]                         ; 496E _ 0F B6. 08
        mov     eax, dword [ebp+0CH]                    ; 4971 _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 4974 _ 8B. 10
        mov     eax, dword [ebp-18H]                    ; 4976 _ 8B. 45, E8
        add     eax, edx                                ; 4979 _ 01. D0
        mov     edx, ecx                                ; 497B _ 89. CA
        mov     byte [eax], dl                          ; 497D _ 88. 10
        add     dword [ebp-18H], 1                      ; 497F _ 83. 45, E8, 01
?_271:  mov     eax, dword [ebp-18H]                    ; 4983 _ 8B. 45, E8
        cmp     eax, dword [ebp-24H]                    ; 4986 _ 3B. 45, DC
        jl      ?_270                                   ; 4989 _ 7C, DB
        jmp     ?_274                                   ; 498B _ EB, 12

?_272:  add     dword [ebp-0CH], 32                     ; 498D _ 83. 45, F4, 20
?_273:  mov     eax, dword [ebp-0CH]                    ; 4991 _ 8B. 45, F4
        movzx   eax, byte [eax]                         ; 4994 _ 0F B6. 00
        test    al, al                                  ; 4997 _ 84. C0
        jne     ?_261                                   ; 4999 _ 0F 85, FFFFFEAF
?_274:  mov     edx, dword [ebp-1CH]                    ; 499F _ 8B. 55, E4
        mov     eax, dword [_memman]                    ; 49A2 _ A1, 00000000(d)
        mov     dword [esp+8H], 13                      ; 49A7 _ C7. 44 24, 08, 0000000D
        mov     dword [esp+4H], edx                     ; 49AF _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 49B3 _ 89. 04 24
        call    _memman_free                            ; 49B6 _ E8, 00000000(rel)
        nop                                             ; 49BB _ 90
        leave                                           ; 49BC _ C9
        ret                                             ; 49BD _ C3
; _file_loadfile End of function

        nop                                             ; 49BE _ 90
        nop                                             ; 49BF _ 90


_shtctl_init:
        push    ebp                                     ; 49C0 _ 55
        mov     ebp, esp                                ; 49C1 _ 89. E5
        sub     esp, 40                                 ; 49C3 _ 83. EC, 28
        mov     dword [esp+4H], 9232                    ; 49C6 _ C7. 44 24, 04, 00002410
        mov     eax, dword [ebp+8H]                     ; 49CE _ 8B. 45, 08
        mov     dword [esp], eax                        ; 49D1 _ 89. 04 24
        call    _memman_alloc_4k                        ; 49D4 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 49D9 _ 89. 45, F0
        cmp     dword [ebp-10H], 0                      ; 49DC _ 83. 7D, F0, 00
        jnz     ?_275                                   ; 49E0 _ 75, 0A
        mov     eax, 0                                  ; 49E2 _ B8, 00000000
        jmp     ?_279                                   ; 49E7 _ E9, 000000A3

?_275:  mov     eax, dword [ebp+10H]                    ; 49EC _ 8B. 45, 10
        imul    eax, dword [ebp+14H]                    ; 49EF _ 0F AF. 45, 14
        mov     dword [esp+4H], eax                     ; 49F3 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 49F7 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 49FA _ 89. 04 24
        call    _memman_alloc_4k                        ; 49FD _ E8, 00000000(rel)
        mov     edx, eax                                ; 4A02 _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 4A04 _ 8B. 45, F0
        mov     dword [eax+4H], edx                     ; 4A07 _ 89. 50, 04
        mov     eax, dword [ebp-10H]                    ; 4A0A _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 4A0D _ 8B. 40, 04
        test    eax, eax                                ; 4A10 _ 85. C0
        jnz     ?_276                                   ; 4A12 _ 75, 21
        mov     eax, dword [ebp-10H]                    ; 4A14 _ 8B. 45, F0
        mov     dword [esp+8H], 9232                    ; 4A17 _ C7. 44 24, 08, 00002410
        mov     dword [esp+4H], eax                     ; 4A1F _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4A23 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4A26 _ 89. 04 24
        call    _memman_free_4k                         ; 4A29 _ E8, 00000000(rel)
        mov     eax, 0                                  ; 4A2E _ B8, 00000000
        jmp     ?_279                                   ; 4A33 _ EB, 5A

?_276:  mov     eax, dword [ebp-10H]                    ; 4A35 _ 8B. 45, F0
        mov     edx, dword [ebp+0CH]                    ; 4A38 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 4A3B _ 89. 10
        mov     eax, dword [ebp-10H]                    ; 4A3D _ 8B. 45, F0
        mov     edx, dword [ebp+10H]                    ; 4A40 _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 4A43 _ 89. 50, 08
        mov     eax, dword [ebp-10H]                    ; 4A46 _ 8B. 45, F0
        mov     edx, dword [ebp+14H]                    ; 4A49 _ 8B. 55, 14
        mov     dword [eax+0CH], edx                    ; 4A4C _ 89. 50, 0C
        mov     eax, dword [ebp-10H]                    ; 4A4F _ 8B. 45, F0
        mov     dword [eax+10H], -1                     ; 4A52 _ C7. 40, 10, FFFFFFFF
        mov     dword [ebp-0CH], 0                      ; 4A59 _ C7. 45, F4, 00000000
        jmp     ?_278                                   ; 4A60 _ EB, 21

?_277:  mov     ecx, dword [ebp-10H]                    ; 4A62 _ 8B. 4D, F0
        mov     edx, dword [ebp-0CH]                    ; 4A65 _ 8B. 55, F4
        mov     eax, edx                                ; 4A68 _ 89. D0
        shl     eax, 3                                  ; 4A6A _ C1. E0, 03
        add     eax, edx                                ; 4A6D _ 01. D0
        shl     eax, 2                                  ; 4A6F _ C1. E0, 02
        add     eax, ecx                                ; 4A72 _ 01. C8
        add     eax, 1072                               ; 4A74 _ 05, 00000430
        mov     dword [eax], 0                          ; 4A79 _ C7. 00, 00000000
        add     dword [ebp-0CH], 1                      ; 4A7F _ 83. 45, F4, 01
?_278:  cmp     dword [ebp-0CH], 255                    ; 4A83 _ 81. 7D, F4, 000000FF
        jle     ?_277                                   ; 4A8A _ 7E, D6
        mov     eax, dword [ebp-10H]                    ; 4A8C _ 8B. 45, F0
?_279:  leave                                           ; 4A8F _ C9
        ret                                             ; 4A90 _ C3

_sheet_alloc:; Function begin
        push    ebp                                     ; 4A91 _ 55
        mov     ebp, esp                                ; 4A92 _ 89. E5
        sub     esp, 24                                 ; 4A94 _ 83. EC, 18
        mov     dword [ebp-0CH], 0                      ; 4A97 _ C7. 45, F4, 00000000
        jmp     ?_282                                   ; 4A9E _ EB, 75

?_280:  mov     ecx, dword [ebp+8H]                     ; 4AA0 _ 8B. 4D, 08
        mov     edx, dword [ebp-0CH]                    ; 4AA3 _ 8B. 55, F4
        mov     eax, edx                                ; 4AA6 _ 89. D0
        shl     eax, 3                                  ; 4AA8 _ C1. E0, 03
        add     eax, edx                                ; 4AAB _ 01. D0
        shl     eax, 2                                  ; 4AAD _ C1. E0, 02
        add     eax, ecx                                ; 4AB0 _ 01. C8
        add     eax, 1072                               ; 4AB2 _ 05, 00000430
        mov     eax, dword [eax]                        ; 4AB7 _ 8B. 00
        test    eax, eax                                ; 4AB9 _ 85. C0
        jnz     ?_281                                   ; 4ABB _ 75, 54
        mov     edx, dword [ebp-0CH]                    ; 4ABD _ 8B. 55, F4
        mov     eax, edx                                ; 4AC0 _ 89. D0
        shl     eax, 3                                  ; 4AC2 _ C1. E0, 03
        add     eax, edx                                ; 4AC5 _ 01. D0
        shl     eax, 2                                  ; 4AC7 _ C1. E0, 02
        lea     edx, [eax+410H]                         ; 4ACA _ 8D. 90, 00000410
        mov     eax, dword [ebp+8H]                     ; 4AD0 _ 8B. 45, 08
        add     eax, edx                                ; 4AD3 _ 01. D0
        add     eax, 4                                  ; 4AD5 _ 83. C0, 04
        mov     dword [ebp-10H], eax                    ; 4AD8 _ 89. 45, F0
        mov     eax, dword [ebp+8H]                     ; 4ADB _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 4ADE _ 8B. 55, F4
        add     edx, 4                                  ; 4AE1 _ 83. C2, 04
        mov     ecx, dword [ebp-10H]                    ; 4AE4 _ 8B. 4D, F0
        mov     dword [eax+edx*4+4H], ecx               ; 4AE7 _ 89. 4C 90, 04
        mov     eax, dword [ebp-10H]                    ; 4AEB _ 8B. 45, F0
        mov     dword [eax+1CH], 1                      ; 4AEE _ C7. 40, 1C, 00000001
        mov     eax, dword [ebp-10H]                    ; 4AF5 _ 8B. 45, F0
        mov     dword [eax+18H], -1                     ; 4AF8 _ C7. 40, 18, FFFFFFFF
        call    _task_now                               ; 4AFF _ E8, 00000000(rel)
        mov     edx, eax                                ; 4B04 _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 4B06 _ 8B. 45, F0
        mov     dword [eax+20H], edx                    ; 4B09 _ 89. 50, 20
        mov     eax, dword [ebp-10H]                    ; 4B0C _ 8B. 45, F0
        jmp     ?_283                                   ; 4B0F _ EB, 12

?_281:  add     dword [ebp-0CH], 1                      ; 4B11 _ 83. 45, F4, 01
?_282:  cmp     dword [ebp-0CH], 255                    ; 4B15 _ 81. 7D, F4, 000000FF
        jle     ?_280                                   ; 4B1C _ 7E, 82
        mov     eax, 0                                  ; 4B1E _ B8, 00000000
?_283:  leave                                           ; 4B23 _ C9
        ret                                             ; 4B24 _ C3
; _sheet_alloc End of function

_sheet_setbuf:; Function begin
        push    ebp                                     ; 4B25 _ 55
        mov     ebp, esp                                ; 4B26 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 4B28 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 4B2B _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 4B2E _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 4B30 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 4B33 _ 8B. 55, 10
        mov     dword [eax+4H], edx                     ; 4B36 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 4B39 _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 4B3C _ 8B. 55, 14
        mov     dword [eax+8H], edx                     ; 4B3F _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 4B42 _ 8B. 45, 08
        mov     edx, dword [ebp+18H]                    ; 4B45 _ 8B. 55, 18
        mov     dword [eax+14H], edx                    ; 4B48 _ 89. 50, 14
        nop                                             ; 4B4B _ 90
        pop     ebp                                     ; 4B4C _ 5D
        ret                                             ; 4B4D _ C3
; _sheet_setbuf End of function

_sheet_updown:; Function begin
        push    ebp                                     ; 4B4E _ 55
        mov     ebp, esp                                ; 4B4F _ 89. E5
        push    edi                                     ; 4B51 _ 57
        push    esi                                     ; 4B52 _ 56
        push    ebx                                     ; 4B53 _ 53
        sub     esp, 60                                 ; 4B54 _ 83. EC, 3C
        mov     eax, dword [ebp+0CH]                    ; 4B57 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 4B5A _ 8B. 40, 18
        mov     dword [ebp-20H], eax                    ; 4B5D _ 89. 45, E0
        mov     eax, dword [ebp+8H]                     ; 4B60 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 4B63 _ 8B. 40, 10
        add     eax, 1                                  ; 4B66 _ 83. C0, 01
        cmp     dword [ebp+10H], eax                    ; 4B69 _ 39. 45, 10
        jle     ?_284                                   ; 4B6C _ 7E, 0C
        mov     eax, dword [ebp+8H]                     ; 4B6E _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 4B71 _ 8B. 40, 10
        add     eax, 1                                  ; 4B74 _ 83. C0, 01
        mov     dword [ebp+10H], eax                    ; 4B77 _ 89. 45, 10
?_284:  cmp     dword [ebp+10H], -1                     ; 4B7A _ 83. 7D, 10, FF
        jge     ?_285                                   ; 4B7E _ 7D, 07
        mov     dword [ebp+10H], -1                     ; 4B80 _ C7. 45, 10, FFFFFFFF
?_285:  mov     eax, dword [ebp+0CH]                    ; 4B87 _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 4B8A _ 8B. 55, 10
        mov     dword [eax+18H], edx                    ; 4B8D _ 89. 50, 18
        mov     eax, dword [ebp-20H]                    ; 4B90 _ 8B. 45, E0
        cmp     eax, dword [ebp+10H]                    ; 4B93 _ 3B. 45, 10
        jle     ?_292                                   ; 4B96 _ 0F 8E, 00000212
        cmp     dword [ebp+10H], 0                      ; 4B9C _ 83. 7D, 10, 00
        js      ?_288                                   ; 4BA0 _ 0F 88, 000000FE
        mov     eax, dword [ebp-20H]                    ; 4BA6 _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 4BA9 _ 89. 45, E4
        jmp     ?_287                                   ; 4BAC _ EB, 34

?_286:  mov     eax, dword [ebp-1CH]                    ; 4BAE _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 4BB1 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 4BB4 _ 8B. 45, 08
        add     edx, 4                                  ; 4BB7 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 4BBA _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 4BBE _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 4BC1 _ 8B. 55, E4
        add     edx, 4                                  ; 4BC4 _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 4BC7 _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 4BCB _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 4BCE _ 8B. 55, E4
        add     edx, 4                                  ; 4BD1 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 4BD4 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 4BD8 _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 4BDB _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 4BDE _ 83. 6D, E4, 01
?_287:  mov     eax, dword [ebp-1CH]                    ; 4BE2 _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 4BE5 _ 3B. 45, 10
        jg      ?_286                                   ; 4BE8 _ 7F, C4
        mov     eax, dword [ebp+8H]                     ; 4BEA _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 4BED _ 8B. 55, 10
        add     edx, 4                                  ; 4BF0 _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 4BF3 _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 4BF6 _ 89. 4C 90, 04
        mov     eax, dword [ebp+10H]                    ; 4BFA _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 4BFD _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 4C00 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 4C03 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 4C06 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 4C09 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 4C0C _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 4C0F _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 4C12 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 4C15 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 4C18 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 4C1B _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 4C1E _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 4C21 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 4C24 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 4C27 _ 8B. 40, 0C
        mov     dword [esp+14H], esi                    ; 4C2A _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 4C2E _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 4C32 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 4C36 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 4C3A _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4C3E _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4C41 _ 89. 04 24
        call    _sheet_refreshmap                       ; 4C44 _ E8, 00000643
        mov     eax, dword [ebp+10H]                    ; 4C49 _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 4C4C _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 4C4F _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 4C52 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 4C55 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 4C58 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 4C5B _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 4C5E _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 4C61 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 4C64 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 4C67 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 4C6A _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 4C6D _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 4C70 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 4C73 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 4C76 _ 8B. 40, 0C
        mov     edi, dword [ebp-20H]                    ; 4C79 _ 8B. 7D, E0
        mov     dword [esp+18H], edi                    ; 4C7C _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 4C80 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 4C84 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 4C88 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 4C8C _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 4C90 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4C94 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4C97 _ 89. 04 24
        call    _sheet_refreshsub                       ; 4C9A _ E8, 00000465
        jmp     ?_299                                   ; 4C9F _ E9, 0000027D

?_288:  mov     eax, dword [ebp+8H]                     ; 4CA4 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 4CA7 _ 8B. 40, 10
        cmp     dword [ebp-20H], eax                    ; 4CAA _ 39. 45, E0
        jge     ?_291                                   ; 4CAD _ 7D, 47
        mov     eax, dword [ebp-20H]                    ; 4CAF _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 4CB2 _ 89. 45, E4
        jmp     ?_290                                   ; 4CB5 _ EB, 34

?_289:  mov     eax, dword [ebp-1CH]                    ; 4CB7 _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 4CBA _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 4CBD _ 8B. 45, 08
        add     edx, 4                                  ; 4CC0 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 4CC3 _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 4CC7 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 4CCA _ 8B. 55, E4
        add     edx, 4                                  ; 4CCD _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 4CD0 _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 4CD4 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 4CD7 _ 8B. 55, E4
        add     edx, 4                                  ; 4CDA _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 4CDD _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 4CE1 _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 4CE4 _ 89. 50, 18
        add     dword [ebp-1CH], 1                      ; 4CE7 _ 83. 45, E4, 01
?_290:  mov     eax, dword [ebp+8H]                     ; 4CEB _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 4CEE _ 8B. 40, 10
        cmp     dword [ebp-1CH], eax                    ; 4CF1 _ 39. 45, E4
        jl      ?_289                                   ; 4CF4 _ 7C, C1
?_291:  mov     eax, dword [ebp+8H]                     ; 4CF6 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 4CF9 _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 4CFC _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 4CFF _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 4D02 _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 4D05 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 4D08 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 4D0B _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 4D0E _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 4D11 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 4D14 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 4D17 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 4D1A _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 4D1D _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 4D20 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 4D23 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 4D26 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 4D29 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 4D2C _ 8B. 40, 0C
        mov     dword [esp+14H], 0                      ; 4D2F _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], ebx                    ; 4D37 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 4D3B _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 4D3F _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 4D43 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4D47 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4D4A _ 89. 04 24
        call    _sheet_refreshmap                       ; 4D4D _ E8, 0000053A
        mov     eax, dword [ebp-20H]                    ; 4D52 _ 8B. 45, E0
        lea     esi, [eax-1H]                           ; 4D55 _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 4D58 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 4D5B _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 4D5E _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 4D61 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 4D64 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 4D67 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 4D6A _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 4D6D _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 4D70 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 4D73 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 4D76 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 4D79 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 4D7C _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 4D7F _ 8B. 40, 0C
        mov     dword [esp+18H], esi                    ; 4D82 _ 89. 74 24, 18
        mov     dword [esp+14H], 0                      ; 4D86 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], ebx                    ; 4D8E _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 4D92 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 4D96 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 4D9A _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4D9E _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4DA1 _ 89. 04 24
        call    _sheet_refreshsub                       ; 4DA4 _ E8, 0000035B
        jmp     ?_299                                   ; 4DA9 _ E9, 00000173

?_292:  mov     eax, dword [ebp-20H]                    ; 4DAE _ 8B. 45, E0
        cmp     eax, dword [ebp+10H]                    ; 4DB1 _ 3B. 45, 10
        jge     ?_299                                   ; 4DB4 _ 0F 8D, 00000167
        cmp     dword [ebp-20H], 0                      ; 4DBA _ 83. 7D, E0, 00
        js      ?_295                                   ; 4DBE _ 78, 56
        mov     eax, dword [ebp-20H]                    ; 4DC0 _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 4DC3 _ 89. 45, E4
        jmp     ?_294                                   ; 4DC6 _ EB, 34

?_293:  mov     eax, dword [ebp-1CH]                    ; 4DC8 _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 4DCB _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 4DCE _ 8B. 45, 08
        add     edx, 4                                  ; 4DD1 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 4DD4 _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 4DD8 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 4DDB _ 8B. 55, E4
        add     edx, 4                                  ; 4DDE _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 4DE1 _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 4DE5 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 4DE8 _ 8B. 55, E4
        add     edx, 4                                  ; 4DEB _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 4DEE _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 4DF2 _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 4DF5 _ 89. 50, 18
        add     dword [ebp-1CH], 1                      ; 4DF8 _ 83. 45, E4, 01
?_294:  mov     eax, dword [ebp-1CH]                    ; 4DFC _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 4DFF _ 3B. 45, 10
        jl      ?_293                                   ; 4E02 _ 7C, C4
        mov     eax, dword [ebp+8H]                     ; 4E04 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 4E07 _ 8B. 55, 10
        add     edx, 4                                  ; 4E0A _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 4E0D _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 4E10 _ 89. 4C 90, 04
        jmp     ?_298                                   ; 4E14 _ EB, 6C

?_295:  mov     eax, dword [ebp+8H]                     ; 4E16 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 4E19 _ 8B. 40, 10
        mov     dword [ebp-1CH], eax                    ; 4E1C _ 89. 45, E4
        jmp     ?_297                                   ; 4E1F _ EB, 3A

?_296:  mov     eax, dword [ebp-1CH]                    ; 4E21 _ 8B. 45, E4
        lea     ebx, [eax+1H]                           ; 4E24 _ 8D. 58, 01
        mov     eax, dword [ebp+8H]                     ; 4E27 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 4E2A _ 8B. 55, E4
        add     edx, 4                                  ; 4E2D _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 4E30 _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 4E34 _ 8B. 45, 08
        lea     edx, [ebx+4H]                           ; 4E37 _ 8D. 53, 04
        mov     dword [eax+edx*4+4H], ecx               ; 4E3A _ 89. 4C 90, 04
        mov     eax, dword [ebp-1CH]                    ; 4E3E _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 4E41 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 4E44 _ 8B. 45, 08
        add     edx, 4                                  ; 4E47 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 4E4A _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 4E4E _ 8B. 55, E4
        add     edx, 1                                  ; 4E51 _ 83. C2, 01
        mov     dword [eax+18H], edx                    ; 4E54 _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 4E57 _ 83. 6D, E4, 01
?_297:  mov     eax, dword [ebp-1CH]                    ; 4E5B _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 4E5E _ 3B. 45, 10
        jge     ?_296                                   ; 4E61 _ 7D, BE
        mov     eax, dword [ebp+8H]                     ; 4E63 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 4E66 _ 8B. 55, 10
        add     edx, 4                                  ; 4E69 _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 4E6C _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 4E6F _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 4E73 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 4E76 _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 4E79 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 4E7C _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 4E7F _ 89. 50, 10
?_298:  mov     eax, dword [ebp+0CH]                    ; 4E82 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 4E85 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 4E88 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 4E8B _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 4E8E _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 4E91 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 4E94 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 4E97 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 4E9A _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 4E9D _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 4EA0 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 4EA3 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 4EA6 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 4EA9 _ 8B. 40, 0C
        mov     esi, dword [ebp+10H]                    ; 4EAC _ 8B. 75, 10
        mov     dword [esp+14H], esi                    ; 4EAF _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 4EB3 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 4EB7 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 4EBB _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 4EBF _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4EC3 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4EC6 _ 89. 04 24
        call    _sheet_refreshmap                       ; 4EC9 _ E8, 000003BE
        mov     eax, dword [ebp+0CH]                    ; 4ECE _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 4ED1 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 4ED4 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 4ED7 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 4EDA _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 4EDD _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 4EE0 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 4EE3 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 4EE6 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 4EE9 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 4EEC _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 4EEF _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 4EF2 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 4EF5 _ 8B. 40, 0C
        mov     esi, dword [ebp+10H]                    ; 4EF8 _ 8B. 75, 10
        mov     dword [esp+18H], esi                    ; 4EFB _ 89. 74 24, 18
        mov     esi, dword [ebp+10H]                    ; 4EFF _ 8B. 75, 10
        mov     dword [esp+14H], esi                    ; 4F02 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 4F06 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 4F0A _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 4F0E _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 4F12 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4F16 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4F19 _ 89. 04 24
        call    _sheet_refreshsub                       ; 4F1C _ E8, 000001E3
?_299:  nop                                             ; 4F21 _ 90
        add     esp, 60                                 ; 4F22 _ 83. C4, 3C
        pop     ebx                                     ; 4F25 _ 5B
        pop     esi                                     ; 4F26 _ 5E
        pop     edi                                     ; 4F27 _ 5F
        pop     ebp                                     ; 4F28 _ 5D
        ret                                             ; 4F29 _ C3
; _sheet_updown End of function

_sheet_refresh:; Function begin
        push    ebp                                     ; 4F2A _ 55
        mov     ebp, esp                                ; 4F2B _ 89. E5
        push    edi                                     ; 4F2D _ 57
        push    esi                                     ; 4F2E _ 56
        push    ebx                                     ; 4F2F _ 53
        sub     esp, 60                                 ; 4F30 _ 83. EC, 3C
        mov     eax, dword [ebp+0CH]                    ; 4F33 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 4F36 _ 8B. 40, 18
        test    eax, eax                                ; 4F39 _ 85. C0
        js      ?_300                                   ; 4F3B _ 78, 61
        mov     eax, dword [ebp+0CH]                    ; 4F3D _ 8B. 45, 0C
        mov     edi, dword [eax+18H]                    ; 4F40 _ 8B. 78, 18
        mov     eax, dword [ebp+0CH]                    ; 4F43 _ 8B. 45, 0C
        mov     esi, dword [eax+18H]                    ; 4F46 _ 8B. 70, 18
        mov     eax, dword [ebp+0CH]                    ; 4F49 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 4F4C _ 8B. 50, 10
        mov     eax, dword [ebp+1CH]                    ; 4F4F _ 8B. 45, 1C
        lea     ebx, [edx+eax]                          ; 4F52 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 4F55 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 4F58 _ 8B. 50, 0C
        mov     eax, dword [ebp+18H]                    ; 4F5B _ 8B. 45, 18
        lea     ecx, [edx+eax]                          ; 4F5E _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 4F61 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 4F64 _ 8B. 50, 10
        mov     eax, dword [ebp+14H]                    ; 4F67 _ 8B. 45, 14
        add     edx, eax                                ; 4F6A _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 4F6C _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 4F6F _ 8B. 40, 0C
        mov     dword [ebp-1CH], eax                    ; 4F72 _ 89. 45, E4
        mov     eax, dword [ebp+10H]                    ; 4F75 _ 8B. 45, 10
        add     eax, dword [ebp-1CH]                    ; 4F78 _ 03. 45, E4
        mov     dword [esp+18H], edi                    ; 4F7B _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 4F7F _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 4F83 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 4F87 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 4F8B _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 4F8F _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4F93 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4F96 _ 89. 04 24
        call    _sheet_refreshsub                       ; 4F99 _ E8, 00000166
?_300:  mov     eax, 0                                  ; 4F9E _ B8, 00000000
        add     esp, 60                                 ; 4FA3 _ 83. C4, 3C
        pop     ebx                                     ; 4FA6 _ 5B
        pop     esi                                     ; 4FA7 _ 5E
        pop     edi                                     ; 4FA8 _ 5F
        pop     ebp                                     ; 4FA9 _ 5D
        ret                                             ; 4FAA _ C3
; _sheet_refresh End of function

_sheet_slide:; Function begin
        push    ebp                                     ; 4FAB _ 55
        mov     ebp, esp                                ; 4FAC _ 89. E5
        push    esi                                     ; 4FAE _ 56
        push    ebx                                     ; 4FAF _ 53
        sub     esp, 48                                 ; 4FB0 _ 83. EC, 30
        mov     eax, dword [ebp+0CH]                    ; 4FB3 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 4FB6 _ 8B. 40, 0C
        mov     dword [ebp-0CH], eax                    ; 4FB9 _ 89. 45, F4
        mov     eax, dword [ebp+0CH]                    ; 4FBC _ 8B. 45, 0C
        mov     eax, dword [eax+10H]                    ; 4FBF _ 8B. 40, 10
        mov     dword [ebp-10H], eax                    ; 4FC2 _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 4FC5 _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 4FC8 _ 8B. 55, 10
        mov     dword [eax+0CH], edx                    ; 4FCB _ 89. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 4FCE _ 8B. 45, 0C
        mov     edx, dword [ebp+14H]                    ; 4FD1 _ 8B. 55, 14
        mov     dword [eax+10H], edx                    ; 4FD4 _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 4FD7 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 4FDA _ 8B. 40, 18
        test    eax, eax                                ; 4FDD _ 85. C0
        js      ?_301                                   ; 4FDF _ 0F 88, 00000117
        mov     eax, dword [ebp+0CH]                    ; 4FE5 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 4FE8 _ 8B. 50, 08
        mov     eax, dword [ebp-10H]                    ; 4FEB _ 8B. 45, F0
        add     edx, eax                                ; 4FEE _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 4FF0 _ 8B. 45, 0C
        mov     ecx, dword [eax+4H]                     ; 4FF3 _ 8B. 48, 04
        mov     eax, dword [ebp-0CH]                    ; 4FF6 _ 8B. 45, F4
        add     eax, ecx                                ; 4FF9 _ 01. C8
        mov     dword [esp+14H], 0                      ; 4FFB _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], edx                    ; 5003 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 5007 _ 89. 44 24, 0C
        mov     eax, dword [ebp-10H]                    ; 500B _ 8B. 45, F0
        mov     dword [esp+8H], eax                     ; 500E _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 5012 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 5015 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 5019 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 501C _ 89. 04 24
        call    _sheet_refreshmap                       ; 501F _ E8, 00000268
        mov     eax, dword [ebp+0CH]                    ; 5024 _ 8B. 45, 0C
        mov     ecx, dword [eax+18H]                    ; 5027 _ 8B. 48, 18
        mov     eax, dword [ebp+0CH]                    ; 502A _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 502D _ 8B. 50, 08
        mov     eax, dword [ebp+14H]                    ; 5030 _ 8B. 45, 14
        add     edx, eax                                ; 5033 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 5035 _ 8B. 45, 0C
        mov     ebx, dword [eax+4H]                     ; 5038 _ 8B. 58, 04
        mov     eax, dword [ebp+10H]                    ; 503B _ 8B. 45, 10
        add     eax, ebx                                ; 503E _ 01. D8
        mov     dword [esp+14H], ecx                    ; 5040 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 5044 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 5048 _ 89. 44 24, 0C
        mov     eax, dword [ebp+14H]                    ; 504C _ 8B. 45, 14
        mov     dword [esp+8H], eax                     ; 504F _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 5053 _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 5056 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 505A _ 8B. 45, 08
        mov     dword [esp], eax                        ; 505D _ 89. 04 24
        call    _sheet_refreshmap                       ; 5060 _ E8, 00000227
        mov     eax, dword [ebp+0CH]                    ; 5065 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 5068 _ 8B. 40, 18
        lea     ecx, [eax-1H]                           ; 506B _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 506E _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 5071 _ 8B. 50, 08
        mov     eax, dword [ebp-10H]                    ; 5074 _ 8B. 45, F0
        add     edx, eax                                ; 5077 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 5079 _ 8B. 45, 0C
        mov     ebx, dword [eax+4H]                     ; 507C _ 8B. 58, 04
        mov     eax, dword [ebp-0CH]                    ; 507F _ 8B. 45, F4
        add     eax, ebx                                ; 5082 _ 01. D8
        mov     dword [esp+18H], ecx                    ; 5084 _ 89. 4C 24, 18
        mov     dword [esp+14H], 0                      ; 5088 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], edx                    ; 5090 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 5094 _ 89. 44 24, 0C
        mov     eax, dword [ebp-10H]                    ; 5098 _ 8B. 45, F0
        mov     dword [esp+8H], eax                     ; 509B _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 509F _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 50A2 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 50A6 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 50A9 _ 89. 04 24
        call    _sheet_refreshsub                       ; 50AC _ E8, 00000053
        mov     eax, dword [ebp+0CH]                    ; 50B1 _ 8B. 45, 0C
        mov     ebx, dword [eax+18H]                    ; 50B4 _ 8B. 58, 18
        mov     eax, dword [ebp+0CH]                    ; 50B7 _ 8B. 45, 0C
        mov     ecx, dword [eax+18H]                    ; 50BA _ 8B. 48, 18
        mov     eax, dword [ebp+0CH]                    ; 50BD _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 50C0 _ 8B. 50, 08
        mov     eax, dword [ebp+14H]                    ; 50C3 _ 8B. 45, 14
        add     edx, eax                                ; 50C6 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 50C8 _ 8B. 45, 0C
        mov     esi, dword [eax+4H]                     ; 50CB _ 8B. 70, 04
        mov     eax, dword [ebp+10H]                    ; 50CE _ 8B. 45, 10
        add     eax, esi                                ; 50D1 _ 01. F0
        mov     dword [esp+18H], ebx                    ; 50D3 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 50D7 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 50DB _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 50DF _ 89. 44 24, 0C
        mov     eax, dword [ebp+14H]                    ; 50E3 _ 8B. 45, 14
        mov     dword [esp+8H], eax                     ; 50E6 _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 50EA _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 50ED _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 50F1 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 50F4 _ 89. 04 24
        call    _sheet_refreshsub                       ; 50F7 _ E8, 00000008
?_301:  nop                                             ; 50FC _ 90
        add     esp, 48                                 ; 50FD _ 83. C4, 30
        pop     ebx                                     ; 5100 _ 5B
        pop     esi                                     ; 5101 _ 5E
        pop     ebp                                     ; 5102 _ 5D
        ret                                             ; 5103 _ C3
; _sheet_slide End of function

_sheet_refreshsub:; Function begin
        push    ebp                                     ; 5104 _ 55
        mov     ebp, esp                                ; 5105 _ 89. E5
        sub     esp, 48                                 ; 5107 _ 83. EC, 30
        mov     eax, dword [ebp+8H]                     ; 510A _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 510D _ 8B. 00
        mov     dword [ebp-10H], eax                    ; 510F _ 89. 45, F0
        mov     eax, dword [ebp+8H]                     ; 5112 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 5115 _ 8B. 40, 04
        mov     dword [ebp-14H], eax                    ; 5118 _ 89. 45, EC
        cmp     dword [ebp+0CH], 0                      ; 511B _ 83. 7D, 0C, 00
        jns     ?_302                                   ; 511F _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 5121 _ C7. 45, 0C, 00000000
?_302:  cmp     dword [ebp+10H], 8                      ; 5128 _ 83. 7D, 10, 08
        jg      ?_303                                   ; 512C _ 7F, 07
        mov     dword [ebp+10H], 0                      ; 512E _ C7. 45, 10, 00000000
?_303:  mov     eax, dword [ebp+8H]                     ; 5135 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 5138 _ 8B. 40, 08
        cmp     dword [ebp+14H], eax                    ; 513B _ 39. 45, 14
        jle     ?_304                                   ; 513E _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 5140 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 5143 _ 8B. 40, 08
        mov     dword [ebp+14H], eax                    ; 5146 _ 89. 45, 14
?_304:  mov     eax, dword [ebp+8H]                     ; 5149 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 514C _ 8B. 40, 0C
        cmp     dword [ebp+18H], eax                    ; 514F _ 39. 45, 18
        jle     ?_305                                   ; 5152 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 5154 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 5157 _ 8B. 40, 0C
        mov     dword [ebp+18H], eax                    ; 515A _ 89. 45, 18
?_305:  mov     eax, dword [ebp+1CH]                    ; 515D _ 8B. 45, 1C
        mov     dword [ebp-4H], eax                     ; 5160 _ 89. 45, FC
        jmp     ?_312                                   ; 5163 _ E9, 00000115

?_306:  mov     eax, dword [ebp+8H]                     ; 5168 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 516B _ 8B. 55, FC
        add     edx, 4                                  ; 516E _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 5171 _ 8B. 44 90, 04
        mov     dword [ebp-18H], eax                    ; 5175 _ 89. 45, E8
        mov     eax, dword [ebp-18H]                    ; 5178 _ 8B. 45, E8
        mov     eax, dword [eax]                        ; 517B _ 8B. 00
        mov     dword [ebp-1CH], eax                    ; 517D _ 89. 45, E4
        mov     eax, dword [ebp+8H]                     ; 5180 _ 8B. 45, 08
        add     eax, 1044                               ; 5183 _ 05, 00000414
        mov     edx, dword [ebp-18H]                    ; 5188 _ 8B. 55, E8
        sub     edx, eax                                ; 518B _ 29. C2
        mov     eax, edx                                ; 518D _ 89. D0
        sar     eax, 2                                  ; 518F _ C1. F8, 02
        imul    eax, eax, 954437177                     ; 5192 _ 69. C0, 38E38E39
        mov     byte [ebp-1DH], al                      ; 5198 _ 88. 45, E3
        mov     dword [ebp-0CH], 0                      ; 519B _ C7. 45, F4, 00000000
        jmp     ?_311                                   ; 51A2 _ E9, 000000C3

?_307:  mov     eax, dword [ebp-18H]                    ; 51A7 _ 8B. 45, E8
        mov     edx, dword [eax+10H]                    ; 51AA _ 8B. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 51AD _ 8B. 45, F4
        add     eax, edx                                ; 51B0 _ 01. D0
        mov     dword [ebp-24H], eax                    ; 51B2 _ 89. 45, DC
        mov     dword [ebp-8H], 0                       ; 51B5 _ C7. 45, F8, 00000000
        jmp     ?_310                                   ; 51BC _ E9, 00000096

?_308:  mov     eax, dword [ebp-18H]                    ; 51C1 _ 8B. 45, E8
        mov     edx, dword [eax+0CH]                    ; 51C4 _ 8B. 50, 0C
        mov     eax, dword [ebp-8H]                     ; 51C7 _ 8B. 45, F8
        add     eax, edx                                ; 51CA _ 01. D0
        mov     dword [ebp-28H], eax                    ; 51CC _ 89. 45, D8
        mov     eax, dword [ebp+0CH]                    ; 51CF _ 8B. 45, 0C
        cmp     eax, dword [ebp-28H]                    ; 51D2 _ 3B. 45, D8
        jg      ?_309                                   ; 51D5 _ 7F, 7C
        mov     eax, dword [ebp-28H]                    ; 51D7 _ 8B. 45, D8
        cmp     eax, dword [ebp+14H]                    ; 51DA _ 3B. 45, 14
        jge     ?_309                                   ; 51DD _ 7D, 74
        mov     eax, dword [ebp+10H]                    ; 51DF _ 8B. 45, 10
        cmp     eax, dword [ebp-24H]                    ; 51E2 _ 3B. 45, DC
        jg      ?_309                                   ; 51E5 _ 7F, 6C
        mov     eax, dword [ebp-24H]                    ; 51E7 _ 8B. 45, DC
        cmp     eax, dword [ebp+18H]                    ; 51EA _ 3B. 45, 18
        jge     ?_309                                   ; 51ED _ 7D, 64
        mov     eax, dword [ebp-18H]                    ; 51EF _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 51F2 _ 8B. 40, 04
        imul    eax, dword [ebp-0CH]                    ; 51F5 _ 0F AF. 45, F4
        mov     edx, dword [ebp-8H]                     ; 51F9 _ 8B. 55, F8
        add     eax, edx                                ; 51FC _ 01. D0
        mov     edx, eax                                ; 51FE _ 89. C2
        mov     eax, dword [ebp-1CH]                    ; 5200 _ 8B. 45, E4
        add     eax, edx                                ; 5203 _ 01. D0
        movzx   eax, byte [eax]                         ; 5205 _ 0F B6. 00
        mov     byte [ebp-29H], al                      ; 5208 _ 88. 45, D7
        mov     eax, dword [ebp+8H]                     ; 520B _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 520E _ 8B. 40, 08
        imul    eax, dword [ebp-24H]                    ; 5211 _ 0F AF. 45, DC
        mov     edx, dword [ebp-28H]                    ; 5215 _ 8B. 55, D8
        add     eax, edx                                ; 5218 _ 01. D0
        mov     edx, eax                                ; 521A _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 521C _ 8B. 45, EC
        add     eax, edx                                ; 521F _ 01. D0
        movzx   eax, byte [eax]                         ; 5221 _ 0F B6. 00
        cmp     byte [ebp-1DH], al                      ; 5224 _ 38. 45, E3
        jnz     ?_309                                   ; 5227 _ 75, 2A
        movzx   eax, byte [ebp-29H]                     ; 5229 _ 0F B6. 45, D7
        mov     edx, dword [ebp-18H]                    ; 522D _ 8B. 55, E8
        mov     edx, dword [edx+14H]                    ; 5230 _ 8B. 52, 14
        cmp     eax, edx                                ; 5233 _ 39. D0
        jz      ?_309                                   ; 5235 _ 74, 1C
        mov     eax, dword [ebp+8H]                     ; 5237 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 523A _ 8B. 40, 08
        imul    eax, dword [ebp-24H]                    ; 523D _ 0F AF. 45, DC
        mov     edx, dword [ebp-28H]                    ; 5241 _ 8B. 55, D8
        add     eax, edx                                ; 5244 _ 01. D0
        mov     edx, eax                                ; 5246 _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 5248 _ 8B. 45, F0
        add     edx, eax                                ; 524B _ 01. C2
        movzx   eax, byte [ebp-29H]                     ; 524D _ 0F B6. 45, D7
        mov     byte [edx], al                          ; 5251 _ 88. 02
?_309:  add     dword [ebp-8H], 1                       ; 5253 _ 83. 45, F8, 01
?_310:  mov     eax, dword [ebp-18H]                    ; 5257 _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 525A _ 8B. 40, 04
        cmp     dword [ebp-8H], eax                     ; 525D _ 39. 45, F8
        jl      ?_308                                   ; 5260 _ 0F 8C, FFFFFF5B
        add     dword [ebp-0CH], 1                      ; 5266 _ 83. 45, F4, 01
?_311:  mov     eax, dword [ebp-18H]                    ; 526A _ 8B. 45, E8
        mov     eax, dword [eax+8H]                     ; 526D _ 8B. 40, 08
        cmp     dword [ebp-0CH], eax                    ; 5270 _ 39. 45, F4
        jl      ?_307                                   ; 5273 _ 0F 8C, FFFFFF2E
        add     dword [ebp-4H], 1                       ; 5279 _ 83. 45, FC, 01
?_312:  mov     eax, dword [ebp-4H]                     ; 527D _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 5280 _ 3B. 45, 20
        jle     ?_306                                   ; 5283 _ 0F 8E, FFFFFEDF
        nop                                             ; 5289 _ 90
        leave                                           ; 528A _ C9
        ret                                             ; 528B _ C3
; _sheet_refreshsub End of function

_sheet_refreshmap:; Function begin
        push    ebp                                     ; 528C _ 55
        mov     ebp, esp                                ; 528D _ 89. E5
        sub     esp, 64                                 ; 528F _ 83. EC, 40
        mov     eax, dword [ebp+8H]                     ; 5292 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 5295 _ 8B. 40, 04
        mov     dword [ebp-20H], eax                    ; 5298 _ 89. 45, E0
        cmp     dword [ebp+0CH], 0                      ; 529B _ 83. 7D, 0C, 00
        jns     ?_313                                   ; 529F _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 52A1 _ C7. 45, 0C, 00000000
?_313:  cmp     dword [ebp+10H], 0                      ; 52A8 _ 83. 7D, 10, 00
        jns     ?_314                                   ; 52AC _ 79, 07
        mov     dword [ebp+10H], 0                      ; 52AE _ C7. 45, 10, 00000000
?_314:  mov     eax, dword [ebp+8H]                     ; 52B5 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 52B8 _ 8B. 40, 08
        cmp     dword [ebp+14H], eax                    ; 52BB _ 39. 45, 14
        jle     ?_315                                   ; 52BE _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 52C0 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 52C3 _ 8B. 40, 08
        mov     dword [ebp+14H], eax                    ; 52C6 _ 89. 45, 14
?_315:  mov     eax, dword [ebp+8H]                     ; 52C9 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 52CC _ 8B. 40, 0C
        cmp     dword [ebp+18H], eax                    ; 52CF _ 39. 45, 18
        jle     ?_316                                   ; 52D2 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 52D4 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 52D7 _ 8B. 40, 0C
        mov     dword [ebp+18H], eax                    ; 52DA _ 89. 45, 18
?_316:  mov     eax, dword [ebp+1CH]                    ; 52DD _ 8B. 45, 1C
        mov     dword [ebp-4H], eax                     ; 52E0 _ 89. 45, FC
        jmp     ?_327                                   ; 52E3 _ E9, 0000013F

?_317:  mov     eax, dword [ebp+8H]                     ; 52E8 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 52EB _ 8B. 55, FC
        add     edx, 4                                  ; 52EE _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 52F1 _ 8B. 44 90, 04
        mov     dword [ebp-24H], eax                    ; 52F5 _ 89. 45, DC
        mov     eax, dword [ebp+8H]                     ; 52F8 _ 8B. 45, 08
        add     eax, 1044                               ; 52FB _ 05, 00000414
        mov     edx, dword [ebp-24H]                    ; 5300 _ 8B. 55, DC
        sub     edx, eax                                ; 5303 _ 29. C2
        mov     eax, edx                                ; 5305 _ 89. D0
        sar     eax, 2                                  ; 5307 _ C1. F8, 02
        imul    eax, eax, 954437177                     ; 530A _ 69. C0, 38E38E39
        mov     byte [ebp-25H], al                      ; 5310 _ 88. 45, DB
        mov     eax, dword [ebp-24H]                    ; 5313 _ 8B. 45, DC
        mov     eax, dword [eax]                        ; 5316 _ 8B. 00
        mov     dword [ebp-2CH], eax                    ; 5318 _ 89. 45, D4
        mov     eax, dword [ebp-24H]                    ; 531B _ 8B. 45, DC
        mov     eax, dword [eax+0CH]                    ; 531E _ 8B. 40, 0C
        mov     edx, dword [ebp+0CH]                    ; 5321 _ 8B. 55, 0C
        sub     edx, eax                                ; 5324 _ 29. C2
        mov     eax, edx                                ; 5326 _ 89. D0
        mov     dword [ebp-10H], eax                    ; 5328 _ 89. 45, F0
        mov     eax, dword [ebp-24H]                    ; 532B _ 8B. 45, DC
        mov     eax, dword [eax+10H]                    ; 532E _ 8B. 40, 10
        mov     edx, dword [ebp+10H]                    ; 5331 _ 8B. 55, 10
        sub     edx, eax                                ; 5334 _ 29. C2
        mov     eax, edx                                ; 5336 _ 89. D0
        mov     dword [ebp-14H], eax                    ; 5338 _ 89. 45, EC
        mov     eax, dword [ebp-24H]                    ; 533B _ 8B. 45, DC
        mov     eax, dword [eax+0CH]                    ; 533E _ 8B. 40, 0C
        mov     edx, dword [ebp+14H]                    ; 5341 _ 8B. 55, 14
        sub     edx, eax                                ; 5344 _ 29. C2
        mov     eax, edx                                ; 5346 _ 89. D0
        mov     dword [ebp-18H], eax                    ; 5348 _ 89. 45, E8
        mov     eax, dword [ebp-24H]                    ; 534B _ 8B. 45, DC
        mov     eax, dword [eax+10H]                    ; 534E _ 8B. 40, 10
        mov     edx, dword [ebp+18H]                    ; 5351 _ 8B. 55, 18
        sub     edx, eax                                ; 5354 _ 29. C2
        mov     eax, edx                                ; 5356 _ 89. D0
        mov     dword [ebp-1CH], eax                    ; 5358 _ 89. 45, E4
        cmp     dword [ebp-10H], 0                      ; 535B _ 83. 7D, F0, 00
        jns     ?_318                                   ; 535F _ 79, 07
        mov     dword [ebp-10H], 0                      ; 5361 _ C7. 45, F0, 00000000
?_318:  cmp     dword [ebp-14H], 0                      ; 5368 _ 83. 7D, EC, 00
        jns     ?_319                                   ; 536C _ 79, 07
        mov     dword [ebp-14H], 0                      ; 536E _ C7. 45, EC, 00000000
?_319:  mov     eax, dword [ebp-24H]                    ; 5375 _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 5378 _ 8B. 40, 04
        cmp     dword [ebp-18H], eax                    ; 537B _ 39. 45, E8
        jle     ?_320                                   ; 537E _ 7E, 09
        mov     eax, dword [ebp-24H]                    ; 5380 _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 5383 _ 8B. 40, 04
        mov     dword [ebp-18H], eax                    ; 5386 _ 89. 45, E8
?_320:  mov     eax, dword [ebp-24H]                    ; 5389 _ 8B. 45, DC
        mov     eax, dword [eax+8H]                     ; 538C _ 8B. 40, 08
        cmp     dword [ebp-1CH], eax                    ; 538F _ 39. 45, E4
        jle     ?_321                                   ; 5392 _ 7E, 09
        mov     eax, dword [ebp-24H]                    ; 5394 _ 8B. 45, DC
        mov     eax, dword [eax+8H]                     ; 5397 _ 8B. 40, 08
        mov     dword [ebp-1CH], eax                    ; 539A _ 89. 45, E4
?_321:  mov     eax, dword [ebp-14H]                    ; 539D _ 8B. 45, EC
        mov     dword [ebp-0CH], eax                    ; 53A0 _ 89. 45, F4
        jmp     ?_326                                   ; 53A3 _ EB, 76

?_322:  mov     eax, dword [ebp-24H]                    ; 53A5 _ 8B. 45, DC
        mov     edx, dword [eax+10H]                    ; 53A8 _ 8B. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 53AB _ 8B. 45, F4
        add     eax, edx                                ; 53AE _ 01. D0
        mov     dword [ebp-30H], eax                    ; 53B0 _ 89. 45, D0
        mov     eax, dword [ebp-10H]                    ; 53B3 _ 8B. 45, F0
        mov     dword [ebp-8H], eax                     ; 53B6 _ 89. 45, F8
        jmp     ?_325                                   ; 53B9 _ EB, 54

?_323:  mov     eax, dword [ebp-24H]                    ; 53BB _ 8B. 45, DC
        mov     edx, dword [eax+0CH]                    ; 53BE _ 8B. 50, 0C
        mov     eax, dword [ebp-8H]                     ; 53C1 _ 8B. 45, F8
        add     eax, edx                                ; 53C4 _ 01. D0
        mov     dword [ebp-34H], eax                    ; 53C6 _ 89. 45, CC
        mov     eax, dword [ebp-24H]                    ; 53C9 _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 53CC _ 8B. 40, 04
        imul    eax, dword [ebp-0CH]                    ; 53CF _ 0F AF. 45, F4
        mov     edx, dword [ebp-8H]                     ; 53D3 _ 8B. 55, F8
        add     eax, edx                                ; 53D6 _ 01. D0
        mov     edx, eax                                ; 53D8 _ 89. C2
        mov     eax, dword [ebp-2CH]                    ; 53DA _ 8B. 45, D4
        add     eax, edx                                ; 53DD _ 01. D0
        movzx   eax, byte [eax]                         ; 53DF _ 0F B6. 00
        movzx   eax, al                                 ; 53E2 _ 0F B6. C0
        mov     edx, dword [ebp-24H]                    ; 53E5 _ 8B. 55, DC
        mov     edx, dword [edx+14H]                    ; 53E8 _ 8B. 52, 14
        cmp     eax, edx                                ; 53EB _ 39. D0
        jz      ?_324                                   ; 53ED _ 74, 1C
        mov     eax, dword [ebp+8H]                     ; 53EF _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 53F2 _ 8B. 40, 08
        imul    eax, dword [ebp-30H]                    ; 53F5 _ 0F AF. 45, D0
        mov     edx, dword [ebp-34H]                    ; 53F9 _ 8B. 55, CC
        add     eax, edx                                ; 53FC _ 01. D0
        mov     edx, eax                                ; 53FE _ 89. C2
        mov     eax, dword [ebp-20H]                    ; 5400 _ 8B. 45, E0
        add     edx, eax                                ; 5403 _ 01. C2
        movzx   eax, byte [ebp-25H]                     ; 5405 _ 0F B6. 45, DB
        mov     byte [edx], al                          ; 5409 _ 88. 02
?_324:  add     dword [ebp-8H], 1                       ; 540B _ 83. 45, F8, 01
?_325:  mov     eax, dword [ebp-8H]                     ; 540F _ 8B. 45, F8
        cmp     eax, dword [ebp-18H]                    ; 5412 _ 3B. 45, E8
        jl      ?_323                                   ; 5415 _ 7C, A4
        add     dword [ebp-0CH], 1                      ; 5417 _ 83. 45, F4, 01
?_326:  mov     eax, dword [ebp-0CH]                    ; 541B _ 8B. 45, F4
        cmp     eax, dword [ebp-1CH]                    ; 541E _ 3B. 45, E4
        jl      ?_322                                   ; 5421 _ 7C, 82
        add     dword [ebp-4H], 1                       ; 5423 _ 83. 45, FC, 01
?_327:  mov     eax, dword [ebp+8H]                     ; 5427 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 542A _ 8B. 40, 10
        cmp     dword [ebp-4H], eax                     ; 542D _ 39. 45, FC
        jle     ?_317                                   ; 5430 _ 0F 8E, FFFFFEB2
        nop                                             ; 5436 _ 90
        leave                                           ; 5437 _ C9
        ret                                             ; 5438 _ C3
; _sheet_refreshmap End of function

_sheet_free:; Function begin
        push    ebp                                     ; 5439 _ 55
        mov     ebp, esp                                ; 543A _ 89. E5
        sub     esp, 24                                 ; 543C _ 83. EC, 18
        mov     eax, dword [ebp+0CH]                    ; 543F _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 5442 _ 8B. 40, 18
        test    eax, eax                                ; 5445 _ 85. C0
        js      ?_328                                   ; 5447 _ 78, 1A
        mov     dword [esp+8H], -1                      ; 5449 _ C7. 44 24, 08, FFFFFFFF
        mov     eax, dword [ebp+0CH]                    ; 5451 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 5454 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 5458 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 545B _ 89. 04 24
        call    _sheet_updown                           ; 545E _ E8, FFFFF6EB
?_328:  mov     eax, dword [ebp+0CH]                    ; 5463 _ 8B. 45, 0C
        mov     dword [eax+1CH], 0                      ; 5466 _ C7. 40, 1C, 00000000
        nop                                             ; 546D _ 90
        leave                                           ; 546E _ C9
        ret                                             ; 546F _ C3
; _sheet_free End of function


_memman_init:
        push    ebp                                     ; 5470 _ 55
        mov     ebp, esp                                ; 5471 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 5473 _ 8B. 45, 08
        mov     dword [eax], 0                          ; 5476 _ C7. 00, 00000000
        mov     eax, dword [ebp+8H]                     ; 547C _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 547F _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 5486 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 5489 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 5490 _ 8B. 45, 08
        mov     dword [eax+0CH], 0                      ; 5493 _ C7. 40, 0C, 00000000
        nop                                             ; 549A _ 90
        pop     ebp                                     ; 549B _ 5D
        ret                                             ; 549C _ C3

_memman_total:; Function begin
        push    ebp                                     ; 549D _ 55
        mov     ebp, esp                                ; 549E _ 89. E5
        sub     esp, 16                                 ; 54A0 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 54A3 _ C7. 45, F8, 00000000
        mov     dword [ebp-4H], 0                       ; 54AA _ C7. 45, FC, 00000000
        jmp     ?_330                                   ; 54B1 _ EB, 14

?_329:  mov     eax, dword [ebp+8H]                     ; 54B3 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 54B6 _ 8B. 55, FC
        add     edx, 2                                  ; 54B9 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 54BC _ 8B. 44 D0, 04
        add     dword [ebp-8H], eax                     ; 54C0 _ 01. 45, F8
        add     dword [ebp-4H], 1                       ; 54C3 _ 83. 45, FC, 01
?_330:  mov     eax, dword [ebp+8H]                     ; 54C7 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 54CA _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 54CC _ 39. 45, FC
        jc      ?_329                                   ; 54CF _ 72, E2
        mov     eax, dword [ebp-8H]                     ; 54D1 _ 8B. 45, F8
        leave                                           ; 54D4 _ C9
        ret                                             ; 54D5 _ C3
; _memman_total End of function

_memman_alloc:; Function begin
        push    ebp                                     ; 54D6 _ 55
        mov     ebp, esp                                ; 54D7 _ 89. E5
        push    ebx                                     ; 54D9 _ 53
        sub     esp, 16                                 ; 54DA _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 54DD _ C7. 45, F8, 00000000
        jmp     ?_336                                   ; 54E4 _ E9, 000000BB

?_331:  mov     eax, dword [ebp+8H]                     ; 54E9 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 54EC _ 8B. 55, F8
        add     edx, 2                                  ; 54EF _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 54F2 _ 8B. 44 D0, 04
        cmp     dword [ebp+0CH], eax                    ; 54F6 _ 39. 45, 0C
        ja      ?_335                                   ; 54F9 _ 0F 87, 000000A1
        mov     eax, dword [ebp+8H]                     ; 54FF _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 5502 _ 8B. 55, F8
        add     edx, 2                                  ; 5505 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 5508 _ 8B. 04 D0
        mov     dword [ebp-0CH], eax                    ; 550B _ 89. 45, F4
        mov     eax, dword [ebp+8H]                     ; 550E _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 5511 _ 8B. 55, F8
        add     edx, 2                                  ; 5514 _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 5517 _ 8B. 14 D0
        mov     eax, dword [ebp+0CH]                    ; 551A _ 8B. 45, 0C
        lea     ecx, [edx+eax]                          ; 551D _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 5520 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 5523 _ 8B. 55, F8
        add     edx, 2                                  ; 5526 _ 83. C2, 02
        mov     dword [eax+edx*8], ecx                  ; 5529 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 552C _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 552F _ 8B. 55, F8
        add     edx, 2                                  ; 5532 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 5535 _ 8B. 44 D0, 04
        sub     eax, dword [ebp+0CH]                    ; 5539 _ 2B. 45, 0C
        mov     edx, dword [ebp+8H]                     ; 553C _ 8B. 55, 08
        mov     ecx, dword [ebp-8H]                     ; 553F _ 8B. 4D, F8
        add     ecx, 2                                  ; 5542 _ 83. C1, 02
        mov     dword [edx+ecx*8+4H], eax               ; 5545 _ 89. 44 CA, 04
        mov     eax, dword [ebp+8H]                     ; 5549 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 554C _ 8B. 55, F8
        add     edx, 2                                  ; 554F _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 5552 _ 8B. 44 D0, 04
        test    eax, eax                                ; 5556 _ 85. C0
        jnz     ?_334                                   ; 5558 _ 75, 41
        mov     eax, dword [ebp+8H]                     ; 555A _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 555D _ 8B. 00
        lea     edx, [eax-1H]                           ; 555F _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 5562 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 5565 _ 89. 10
        jmp     ?_333                                   ; 5567 _ EB, 28

?_332:  mov     eax, dword [ebp-8H]                     ; 5569 _ 8B. 45, F8
        lea     edx, [eax+1H]                           ; 556C _ 8D. 50, 01
        mov     ecx, dword [ebp+8H]                     ; 556F _ 8B. 4D, 08
        mov     eax, dword [ebp-8H]                     ; 5572 _ 8B. 45, F8
        lea     ebx, [eax+2H]                           ; 5575 _ 8D. 58, 02
        mov     eax, dword [ebp+8H]                     ; 5578 _ 8B. 45, 08
        add     edx, 2                                  ; 557B _ 83. C2, 02
        lea     edx, [eax+edx*8]                        ; 557E _ 8D. 14 D0
        mov     eax, dword [edx]                        ; 5581 _ 8B. 02
        mov     edx, dword [edx+4H]                     ; 5583 _ 8B. 52, 04
        mov     dword [ecx+ebx*8], eax                  ; 5586 _ 89. 04 D9
        mov     dword [ecx+ebx*8+4H], edx               ; 5589 _ 89. 54 D9, 04
        add     dword [ebp-8H], 1                       ; 558D _ 83. 45, F8, 01
?_333:  mov     eax, dword [ebp+8H]                     ; 5591 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 5594 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 5596 _ 39. 45, F8
        jc      ?_332                                   ; 5599 _ 72, CE
?_334:  mov     eax, dword [ebp-0CH]                    ; 559B _ 8B. 45, F4
        jmp     ?_337                                   ; 559E _ EB, 17

?_335:  add     dword [ebp-8H], 1                       ; 55A0 _ 83. 45, F8, 01
?_336:  mov     eax, dword [ebp+8H]                     ; 55A4 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 55A7 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 55A9 _ 39. 45, F8
        jc      ?_331                                   ; 55AC _ 0F 82, FFFFFF37
        mov     eax, 0                                  ; 55B2 _ B8, 00000000
?_337:  add     esp, 16                                 ; 55B7 _ 83. C4, 10
        pop     ebx                                     ; 55BA _ 5B
        pop     ebp                                     ; 55BB _ 5D
        ret                                             ; 55BC _ C3
; _memman_alloc End of function

_memman_free:; Function begin
        push    ebp                                     ; 55BD _ 55
        mov     ebp, esp                                ; 55BE _ 89. E5
        push    ebx                                     ; 55C0 _ 53
        sub     esp, 16                                 ; 55C1 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 55C4 _ C7. 45, F8, 00000000
        jmp     ?_339                                   ; 55CB _ EB, 15

?_338:  mov     eax, dword [ebp+8H]                     ; 55CD _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 55D0 _ 8B. 55, F8
        add     edx, 2                                  ; 55D3 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 55D6 _ 8B. 04 D0
        cmp     dword [ebp+0CH], eax                    ; 55D9 _ 39. 45, 0C
        jc      ?_340                                   ; 55DC _ 72, 10
        add     dword [ebp-8H], 1                       ; 55DE _ 83. 45, F8, 01
?_339:  mov     eax, dword [ebp+8H]                     ; 55E2 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 55E5 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 55E7 _ 39. 45, F8
        jl      ?_338                                   ; 55EA _ 7C, E1
        jmp     ?_341                                   ; 55EC _ EB, 01

?_340:  nop                                             ; 55EE _ 90
?_341:  cmp     dword [ebp-8H], 0                       ; 55EF _ 83. 7D, F8, 00
        jle     ?_345                                   ; 55F3 _ 0F 8E, 000000F0
        mov     eax, dword [ebp-8H]                     ; 55F9 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 55FC _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 55FF _ 8B. 45, 08
        add     edx, 2                                  ; 5602 _ 83. C2, 02
        mov     ecx, dword [eax+edx*8]                  ; 5605 _ 8B. 0C D0
        mov     eax, dword [ebp-8H]                     ; 5608 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 560B _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 560E _ 8B. 45, 08
        add     edx, 2                                  ; 5611 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 5614 _ 8B. 44 D0, 04
        add     eax, ecx                                ; 5618 _ 01. C8
        cmp     dword [ebp+0CH], eax                    ; 561A _ 39. 45, 0C
        jne     ?_345                                   ; 561D _ 0F 85, 000000C6
        mov     eax, dword [ebp-8H]                     ; 5623 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 5626 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 5629 _ 8B. 45, 08
        add     edx, 2                                  ; 562C _ 83. C2, 02
        mov     ecx, dword [eax+edx*8+4H]               ; 562F _ 8B. 4C D0, 04
        mov     eax, dword [ebp-8H]                     ; 5633 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 5636 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 5639 _ 8B. 45, 10
        add     ecx, eax                                ; 563C _ 01. C1
        mov     eax, dword [ebp+8H]                     ; 563E _ 8B. 45, 08
        add     edx, 2                                  ; 5641 _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 5644 _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 5648 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 564B _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 564D _ 39. 45, F8
        jge     ?_344                                   ; 5650 _ 0F 8D, 00000089
        mov     edx, dword [ebp+0CH]                    ; 5656 _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 5659 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 565C _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 565F _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 5662 _ 8B. 55, F8
        add     edx, 2                                  ; 5665 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 5668 _ 8B. 04 D0
        cmp     ecx, eax                                ; 566B _ 39. C1
        jnz     ?_344                                   ; 566D _ 75, 70
        mov     eax, dword [ebp-8H]                     ; 566F _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 5672 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 5675 _ 8B. 45, 08
        add     edx, 2                                  ; 5678 _ 83. C2, 02
        mov     ecx, dword [eax+edx*8+4H]               ; 567B _ 8B. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 567F _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 5682 _ 8B. 55, F8
        add     edx, 2                                  ; 5685 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 5688 _ 8B. 44 D0, 04
        mov     edx, dword [ebp-8H]                     ; 568C _ 8B. 55, F8
        sub     edx, 1                                  ; 568F _ 83. EA, 01
        add     ecx, eax                                ; 5692 _ 01. C1
        mov     eax, dword [ebp+8H]                     ; 5694 _ 8B. 45, 08
        add     edx, 2                                  ; 5697 _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 569A _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 569E _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 56A1 _ 8B. 00
        lea     edx, [eax-1H]                           ; 56A3 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 56A6 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 56A9 _ 89. 10
        jmp     ?_343                                   ; 56AB _ EB, 28

?_342:  mov     eax, dword [ebp-8H]                     ; 56AD _ 8B. 45, F8
        lea     edx, [eax+1H]                           ; 56B0 _ 8D. 50, 01
        mov     ecx, dword [ebp+8H]                     ; 56B3 _ 8B. 4D, 08
        mov     eax, dword [ebp-8H]                     ; 56B6 _ 8B. 45, F8
        lea     ebx, [eax+2H]                           ; 56B9 _ 8D. 58, 02
        mov     eax, dword [ebp+8H]                     ; 56BC _ 8B. 45, 08
        add     edx, 2                                  ; 56BF _ 83. C2, 02
        lea     edx, [eax+edx*8]                        ; 56C2 _ 8D. 14 D0
        mov     eax, dword [edx]                        ; 56C5 _ 8B. 02
        mov     edx, dword [edx+4H]                     ; 56C7 _ 8B. 52, 04
        mov     dword [ecx+ebx*8], eax                  ; 56CA _ 89. 04 D9
        mov     dword [ecx+ebx*8+4H], edx               ; 56CD _ 89. 54 D9, 04
        add     dword [ebp-8H], 1                       ; 56D1 _ 83. 45, F8, 01
?_343:  mov     eax, dword [ebp+8H]                     ; 56D5 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 56D8 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 56DA _ 39. 45, F8
        jl      ?_342                                   ; 56DD _ 7C, CE
?_344:  mov     eax, 0                                  ; 56DF _ B8, 00000000
        jmp     ?_351                                   ; 56E4 _ E9, 0000011C

?_345:  mov     eax, dword [ebp+8H]                     ; 56E9 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 56EC _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 56EE _ 39. 45, F8
        jge     ?_346                                   ; 56F1 _ 7D, 52
        mov     edx, dword [ebp+0CH]                    ; 56F3 _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 56F6 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 56F9 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 56FC _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 56FF _ 8B. 55, F8
        add     edx, 2                                  ; 5702 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 5705 _ 8B. 04 D0
        cmp     ecx, eax                                ; 5708 _ 39. C1
        jnz     ?_346                                   ; 570A _ 75, 39
        mov     eax, dword [ebp+8H]                     ; 570C _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 570F _ 8B. 55, F8
        add     edx, 2                                  ; 5712 _ 83. C2, 02
        mov     ecx, dword [ebp+0CH]                    ; 5715 _ 8B. 4D, 0C
        mov     dword [eax+edx*8], ecx                  ; 5718 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 571B _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 571E _ 8B. 55, F8
        add     edx, 2                                  ; 5721 _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 5724 _ 8B. 54 D0, 04
        mov     eax, dword [ebp+10H]                    ; 5728 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 572B _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 572E _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 5731 _ 8B. 55, F8
        add     edx, 2                                  ; 5734 _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 5737 _ 89. 4C D0, 04
        mov     eax, 0                                  ; 573B _ B8, 00000000
        jmp     ?_351                                   ; 5740 _ E9, 000000C0

?_346:  mov     eax, dword [ebp+8H]                     ; 5745 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 5748 _ 8B. 00
        cmp     eax, 4095                               ; 574A _ 3D, 00000FFF
        jg      ?_350                                   ; 574F _ 0F 8F, 00000087
        mov     eax, dword [ebp+8H]                     ; 5755 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 5758 _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 575A _ 89. 45, F4
        jmp     ?_348                                   ; 575D _ EB, 28

?_347:  mov     eax, dword [ebp-0CH]                    ; 575F _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 5762 _ 8D. 50, FF
        mov     ecx, dword [ebp+8H]                     ; 5765 _ 8B. 4D, 08
        mov     eax, dword [ebp-0CH]                    ; 5768 _ 8B. 45, F4
        lea     ebx, [eax+2H]                           ; 576B _ 8D. 58, 02
        mov     eax, dword [ebp+8H]                     ; 576E _ 8B. 45, 08
        add     edx, 2                                  ; 5771 _ 83. C2, 02
        lea     edx, [eax+edx*8]                        ; 5774 _ 8D. 14 D0
        mov     eax, dword [edx]                        ; 5777 _ 8B. 02
        mov     edx, dword [edx+4H]                     ; 5779 _ 8B. 52, 04
        mov     dword [ecx+ebx*8], eax                  ; 577C _ 89. 04 D9
        mov     dword [ecx+ebx*8+4H], edx               ; 577F _ 89. 54 D9, 04
        sub     dword [ebp-0CH], 1                      ; 5783 _ 83. 6D, F4, 01
?_348:  mov     eax, dword [ebp-0CH]                    ; 5787 _ 8B. 45, F4
        cmp     eax, dword [ebp-8H]                     ; 578A _ 3B. 45, F8
        jg      ?_347                                   ; 578D _ 7F, D0
        mov     eax, dword [ebp+8H]                     ; 578F _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 5792 _ 8B. 00
        lea     edx, [eax+1H]                           ; 5794 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 5797 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 579A _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 579C _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 579F _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 57A2 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 57A5 _ 8B. 00
        cmp     edx, eax                                ; 57A7 _ 39. C2
        jge     ?_349                                   ; 57A9 _ 7D, 0B
        mov     eax, dword [ebp+8H]                     ; 57AB _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 57AE _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 57B0 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 57B3 _ 89. 50, 04
?_349:  mov     eax, dword [ebp+8H]                     ; 57B6 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 57B9 _ 8B. 55, F8
        add     edx, 2                                  ; 57BC _ 83. C2, 02
        mov     ecx, dword [ebp+0CH]                    ; 57BF _ 8B. 4D, 0C
        mov     dword [eax+edx*8], ecx                  ; 57C2 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 57C5 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 57C8 _ 8B. 55, F8
        add     edx, 2                                  ; 57CB _ 83. C2, 02
        mov     ecx, dword [ebp+10H]                    ; 57CE _ 8B. 4D, 10
        mov     dword [eax+edx*8+4H], ecx               ; 57D1 _ 89. 4C D0, 04
        mov     eax, 0                                  ; 57D5 _ B8, 00000000
        jmp     ?_351                                   ; 57DA _ EB, 29

?_350:  mov     eax, dword [ebp+8H]                     ; 57DC _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 57DF _ 8B. 40, 0C
        lea     edx, [eax+1H]                           ; 57E2 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 57E5 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 57E8 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 57EB _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 57EE _ 8B. 40, 08
        mov     edx, eax                                ; 57F1 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 57F3 _ 8B. 45, 10
        add     eax, edx                                ; 57F6 _ 01. D0
        mov     edx, eax                                ; 57F8 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 57FA _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 57FD _ 89. 50, 08
        mov     eax, 4294967295                         ; 5800 _ B8, FFFFFFFF
?_351:  add     esp, 16                                 ; 5805 _ 83. C4, 10
        pop     ebx                                     ; 5808 _ 5B
        pop     ebp                                     ; 5809 _ 5D
        ret                                             ; 580A _ C3
; _memman_free End of function

_memman_alloc_4k:; Function begin
        push    ebp                                     ; 580B _ 55
        mov     ebp, esp                                ; 580C _ 89. E5
        sub     esp, 24                                 ; 580E _ 83. EC, 18
        mov     eax, dword [ebp+0CH]                    ; 5811 _ 8B. 45, 0C
        add     eax, 4095                               ; 5814 _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 5819 _ 25, FFFFF000
        mov     dword [ebp+0CH], eax                    ; 581E _ 89. 45, 0C
        mov     eax, dword [ebp+0CH]                    ; 5821 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 5824 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 5828 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 582B _ 89. 04 24
        call    _memman_alloc                           ; 582E _ E8, FFFFFCA3
        mov     dword [ebp-4H], eax                     ; 5833 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 5836 _ 8B. 45, FC
        leave                                           ; 5839 _ C9
        ret                                             ; 583A _ C3
; _memman_alloc_4k End of function

_memman_free_4k:; Function begin
        push    ebp                                     ; 583B _ 55
        mov     ebp, esp                                ; 583C _ 89. E5
        sub     esp, 28                                 ; 583E _ 83. EC, 1C
        mov     eax, dword [ebp+10H]                    ; 5841 _ 8B. 45, 10
        add     eax, 4095                               ; 5844 _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 5849 _ 25, FFFFF000
        mov     dword [ebp+10H], eax                    ; 584E _ 89. 45, 10
        mov     eax, dword [ebp+10H]                    ; 5851 _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 5854 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 5858 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 585B _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 585F _ 8B. 45, 08
        mov     dword [esp], eax                        ; 5862 _ 89. 04 24
        call    _memman_free                            ; 5865 _ E8, FFFFFD53
        mov     dword [ebp-4H], eax                     ; 586A _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 586D _ 8B. 45, FC
        leave                                           ; 5870 _ C9
        ret                                             ; 5871 _ C3
; _memman_free_4k End of function

        nop                                             ; 5872 _ 90
        nop                                             ; 5873 _ 90


_fifo8_init:
        push    ebp                                     ; 5874 _ 55
        mov     ebp, esp                                ; 5875 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 5877 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 587A _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 587D _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 5880 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 5883 _ 8B. 55, 10
        mov     dword [eax], edx                        ; 5886 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 5888 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 588B _ 8B. 55, 0C
        mov     dword [eax+10H], edx                    ; 588E _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 5891 _ 8B. 45, 08
        mov     dword [eax+14H], 0                      ; 5894 _ C7. 40, 14, 00000000
        mov     eax, dword [ebp+8H]                     ; 589B _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 589E _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 58A5 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 58A8 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 58AF _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 58B2 _ 8B. 55, 14
        mov     dword [eax+18H], edx                    ; 58B5 _ 89. 50, 18
        nop                                             ; 58B8 _ 90
        pop     ebp                                     ; 58B9 _ 5D
        ret                                             ; 58BA _ C3

_fifo8_put:; Function begin
        push    ebp                                     ; 58BB _ 55
        mov     ebp, esp                                ; 58BC _ 89. E5
        sub     esp, 40                                 ; 58BE _ 83. EC, 28
        mov     eax, dword [ebp+0CH]                    ; 58C1 _ 8B. 45, 0C
        mov     byte [ebp-0CH], al                      ; 58C4 _ 88. 45, F4
        cmp     dword [ebp+8H], 0                       ; 58C7 _ 83. 7D, 08, 00
        jnz     ?_352                                   ; 58CB _ 75, 0A
        mov     eax, 4294967295                         ; 58CD _ B8, FFFFFFFF
        jmp     ?_356                                   ; 58D2 _ E9, 000000AB

?_352:  mov     eax, dword [ebp+8H]                     ; 58D7 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 58DA _ 8B. 40, 10
        test    eax, eax                                ; 58DD _ 85. C0
        jnz     ?_353                                   ; 58DF _ 75, 1B
        mov     eax, dword [ebp+8H]                     ; 58E1 _ 8B. 45, 08
        mov     eax, dword [eax+14H]                    ; 58E4 _ 8B. 40, 14
        or      eax, 01H                                ; 58E7 _ 83. C8, 01
        mov     edx, eax                                ; 58EA _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 58EC _ 8B. 45, 08
        mov     dword [eax+14H], edx                    ; 58EF _ 89. 50, 14
        mov     eax, 4294967295                         ; 58F2 _ B8, FFFFFFFF
        jmp     ?_356                                   ; 58F7 _ E9, 00000086

?_353:  mov     eax, dword [ebp+8H]                     ; 58FC _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 58FF _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 5901 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 5904 _ 8B. 40, 04
        add     edx, eax                                ; 5907 _ 01. C2
        movzx   eax, byte [ebp-0CH]                     ; 5909 _ 0F B6. 45, F4
        mov     byte [edx], al                          ; 590D _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 590F _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 5912 _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 5915 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 5918 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 591B _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 591E _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 5921 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 5924 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 5927 _ 8B. 40, 0C
        cmp     edx, eax                                ; 592A _ 39. C2
        jnz     ?_354                                   ; 592C _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 592E _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 5931 _ C7. 40, 04, 00000000
?_354:  mov     eax, dword [ebp+8H]                     ; 5938 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 593B _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 593E _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 5941 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 5944 _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 5947 _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 594A _ 8B. 40, 18
        test    eax, eax                                ; 594D _ 85. C0
        jz      ?_355                                   ; 594F _ 74, 2C
        mov     eax, dword [ebp+8H]                     ; 5951 _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 5954 _ 8B. 40, 18
        mov     eax, dword [eax+4H]                     ; 5957 _ 8B. 40, 04
        cmp     eax, 2                                  ; 595A _ 83. F8, 02
        jz      ?_355                                   ; 595D _ 74, 1E
        mov     eax, dword [ebp+8H]                     ; 595F _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 5962 _ 8B. 40, 18
        mov     dword [esp+8H], 0                       ; 5965 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], -1                      ; 596D _ C7. 44 24, 04, FFFFFFFF
        mov     dword [esp], eax                        ; 5975 _ 89. 04 24
        call    _task_run                               ; 5978 _ E8, 00000000(rel)
?_355:  mov     eax, 0                                  ; 597D _ B8, 00000000
?_356:  leave                                           ; 5982 _ C9
        ret                                             ; 5983 _ C3
; _fifo8_put End of function

_fifo8_get:; Function begin
        push    ebp                                     ; 5984 _ 55
        mov     ebp, esp                                ; 5985 _ 89. E5
        sub     esp, 16                                 ; 5987 _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 598A _ 8B. 45, 08
        mov     edx, dword [eax+10H]                    ; 598D _ 8B. 50, 10
        mov     eax, dword [ebp+8H]                     ; 5990 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 5993 _ 8B. 40, 0C
        cmp     edx, eax                                ; 5996 _ 39. C2
        jnz     ?_357                                   ; 5998 _ 75, 07
        mov     eax, 4294967295                         ; 599A _ B8, FFFFFFFF
        jmp     ?_359                                   ; 599F _ EB, 51

?_357:  mov     eax, dword [ebp+8H]                     ; 59A1 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 59A4 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 59A6 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 59A9 _ 8B. 40, 08
        add     eax, edx                                ; 59AC _ 01. D0
        movzx   eax, byte [eax]                         ; 59AE _ 0F B6. 00
        movzx   eax, al                                 ; 59B1 _ 0F B6. C0
        mov     dword [ebp-4H], eax                     ; 59B4 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 59B7 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 59BA _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 59BD _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 59C0 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 59C3 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 59C6 _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 59C9 _ 8B. 50, 08
        mov     eax, dword [ebp+8H]                     ; 59CC _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 59CF _ 8B. 40, 0C
        cmp     edx, eax                                ; 59D2 _ 39. C2
        jnz     ?_358                                   ; 59D4 _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 59D6 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 59D9 _ C7. 40, 08, 00000000
?_358:  mov     eax, dword [ebp+8H]                     ; 59E0 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 59E3 _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 59E6 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 59E9 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 59EC _ 89. 50, 10
        mov     eax, dword [ebp-4H]                     ; 59EF _ 8B. 45, FC
?_359:  leave                                           ; 59F2 _ C9
        ret                                             ; 59F3 _ C3
; _fifo8_get End of function

_fifo8_status:; Function begin
        push    ebp                                     ; 59F4 _ 55
        mov     ebp, esp                                ; 59F5 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 59F7 _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 59FA _ 8B. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 59FD _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 5A00 _ 8B. 40, 10
        sub     edx, eax                                ; 5A03 _ 29. C2
        mov     eax, edx                                ; 5A05 _ 89. D0
        pop     ebp                                     ; 5A07 _ 5D
        ret                                             ; 5A08 _ C3
; _fifo8_status End of function

        nop                                             ; 5A09 _ 90
        nop                                             ; 5A0A _ 90
        nop                                             ; 5A0B _ 90


_init_pit:
        push    ebp                                     ; 5A0C _ 55
        mov     ebp, esp                                ; 5A0D _ 89. E5
        sub     esp, 40                                 ; 5A0F _ 83. EC, 28
        mov     dword [esp+4H], 52                      ; 5A12 _ C7. 44 24, 04, 00000034
        mov     dword [esp], 67                         ; 5A1A _ C7. 04 24, 00000043
        call    _io_out8                                ; 5A21 _ E8, 00000000(rel)
        mov     dword [esp+4H], 156                     ; 5A26 _ C7. 44 24, 04, 0000009C
        mov     dword [esp], 64                         ; 5A2E _ C7. 04 24, 00000040
        call    _io_out8                                ; 5A35 _ E8, 00000000(rel)
        mov     dword [esp+4H], 46                      ; 5A3A _ C7. 44 24, 04, 0000002E
        mov     dword [esp], 64                         ; 5A42 _ C7. 04 24, 00000040
        call    _io_out8                                ; 5A49 _ E8, 00000000(rel)
        mov     dword [_timerctl], 0                         ; 5A4E _ C7. 05, 00000000(d), 00000000
        mov     dword [ebp-0CH], 0                      ; 5A58 _ C7. 45, F4, 00000000
        jmp     ?_361                                   ; 5A5F _ EB, 26

?_360:  mov     eax, dword [ebp-0CH]                    ; 5A61 _ 8B. 45, F4
        shl     eax, 4                                  ; 5A64 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 5A67 _ 05, 00000008(d)
        mov     dword [eax], 0                          ; 5A6C _ C7. 00, 00000000
        mov     eax, dword [ebp-0CH]                    ; 5A72 _ 8B. 45, F4
        shl     eax, 4                                  ; 5A75 _ C1. E0, 04
        add     eax, _timerctl+0CH                           ; 5A78 _ 05, 0000000C(d)
        mov     dword [eax], 0                          ; 5A7D _ C7. 00, 00000000
        add     dword [ebp-0CH], 1                      ; 5A83 _ 83. 45, F4, 01
?_361:  cmp     dword [ebp-0CH], 499                    ; 5A87 _ 81. 7D, F4, 000001F3
        jle     ?_360                                   ; 5A8E _ 7E, D1
        nop                                             ; 5A90 _ 90
        leave                                           ; 5A91 _ C9
        ret                                             ; 5A92 _ C3

_timer_alloc:; Function begin
        push    ebp                                     ; 5A93 _ 55
        mov     ebp, esp                                ; 5A94 _ 89. E5
        sub     esp, 16                                 ; 5A96 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 5A99 _ C7. 45, FC, 00000000
        jmp     ?_364                                   ; 5AA0 _ EB, 36

?_362:  mov     eax, dword [ebp-4H]                     ; 5AA2 _ 8B. 45, FC
        shl     eax, 4                                  ; 5AA5 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 5AA8 _ 05, 00000008(d)
        mov     eax, dword [eax]                        ; 5AAD _ 8B. 00
        test    eax, eax                                ; 5AAF _ 85. C0
        jnz     ?_363                                   ; 5AB1 _ 75, 21
        mov     eax, dword [ebp-4H]                     ; 5AB3 _ 8B. 45, FC
        shl     eax, 4                                  ; 5AB6 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 5AB9 _ 05, 00000008(d)
        mov     dword [eax], 1                          ; 5ABE _ C7. 00, 00000001
        mov     eax, dword [ebp-4H]                     ; 5AC4 _ 8B. 45, FC
        shl     eax, 4                                  ; 5AC7 _ C1. E0, 04
        add     eax, _timerctl                               ; 5ACA _ 05, 00000000(d)
        add     eax, 4                                  ; 5ACF _ 83. C0, 04
        jmp     ?_365                                   ; 5AD2 _ EB, 12

?_363:  add     dword [ebp-4H], 1                       ; 5AD4 _ 83. 45, FC, 01
?_364:  cmp     dword [ebp-4H], 499                     ; 5AD8 _ 81. 7D, FC, 000001F3
        jle     ?_362                                   ; 5ADF _ 7E, C1
        mov     eax, 0                                  ; 5AE1 _ B8, 00000000
?_365:  leave                                           ; 5AE6 _ C9
        ret                                             ; 5AE7 _ C3
; _timer_alloc End of function

_timer_free:; Function begin
        push    ebp                                     ; 5AE8 _ 55
        mov     ebp, esp                                ; 5AE9 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 5AEB _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 5AEE _ C7. 40, 04, 00000000
        nop                                             ; 5AF5 _ 90
        pop     ebp                                     ; 5AF6 _ 5D
        ret                                             ; 5AF7 _ C3
; _timer_free End of function

_timer_init:; Function begin
        push    ebp                                     ; 5AF8 _ 55
        mov     ebp, esp                                ; 5AF9 _ 89. E5
        sub     esp, 4                                  ; 5AFB _ 83. EC, 04
        mov     eax, dword [ebp+10H]                    ; 5AFE _ 8B. 45, 10
        mov     byte [ebp-4H], al                       ; 5B01 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 5B04 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 5B07 _ 8B. 55, 0C
        mov     dword [eax+8H], edx                     ; 5B0A _ 89. 50, 08
        mov     edx, dword [ebp+8H]                     ; 5B0D _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 5B10 _ 0F B6. 45, FC
        mov     byte [edx+0CH], al                      ; 5B14 _ 88. 42, 0C
        nop                                             ; 5B17 _ 90
        leave                                           ; 5B18 _ C9
        ret                                             ; 5B19 _ C3
; _timer_init End of function

_timer_settime:; Function begin
        push    ebp                                     ; 5B1A _ 55
        mov     ebp, esp                                ; 5B1B _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 5B1D _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 5B20 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 5B23 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 5B25 _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 5B28 _ C7. 40, 04, 00000002
        nop                                             ; 5B2F _ 90
        pop     ebp                                     ; 5B30 _ 5D
        ret                                             ; 5B31 _ C3
; _timer_settime End of function

_intHandlerForTimer:; Function begin
        push    ebp                                     ; 5B32 _ 55
        mov     ebp, esp                                ; 5B33 _ 89. E5
        sub     esp, 40                                 ; 5B35 _ 83. EC, 28
        mov     dword [esp+4H], 32                      ; 5B38 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 5B40 _ C7. 04 24, 00000020
        call    _io_out8                                ; 5B47 _ E8, 00000000(rel)
        mov     eax, dword [_timerctl]                       ; 5B4C _ A1, 00000000(d)
        add     eax, 1                                  ; 5B51 _ 83. C0, 01
        mov     dword [_timerctl], eax                       ; 5B54 _ A3, 00000000(d)
        mov     byte [ebp-0DH], 0                       ; 5B59 _ C6. 45, F3, 00
        mov     dword [ebp-0CH], 0                      ; 5B5D _ C7. 45, F4, 00000000
        jmp     ?_369                                   ; 5B64 _ E9, 000000AA

?_366:  mov     eax, dword [ebp-0CH]                    ; 5B69 _ 8B. 45, F4
        shl     eax, 4                                  ; 5B6C _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 5B6F _ 05, 00000008(d)
        mov     eax, dword [eax]                        ; 5B74 _ 8B. 00
        cmp     eax, 2                                  ; 5B76 _ 83. F8, 02
        jne     ?_367                                   ; 5B79 _ 0F 85, 00000085
        mov     eax, dword [ebp-0CH]                    ; 5B7F _ 8B. 45, F4
        shl     eax, 4                                  ; 5B82 _ C1. E0, 04
        add     eax, _timerctl+4H                            ; 5B85 _ 05, 00000004(d)
        mov     eax, dword [eax]                        ; 5B8A _ 8B. 00
        lea     edx, [eax-1H]                           ; 5B8C _ 8D. 50, FF
        mov     eax, dword [ebp-0CH]                    ; 5B8F _ 8B. 45, F4
        shl     eax, 4                                  ; 5B92 _ C1. E0, 04
        add     eax, _timerctl+4H                            ; 5B95 _ 05, 00000004(d)
        mov     dword [eax], edx                        ; 5B9A _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 5B9C _ 8B. 45, F4
        shl     eax, 4                                  ; 5B9F _ C1. E0, 04
        add     eax, _timerctl+4H                            ; 5BA2 _ 05, 00000004(d)
        mov     eax, dword [eax]                        ; 5BA7 _ 8B. 00
        test    eax, eax                                ; 5BA9 _ 85. C0
        jnz     ?_367                                   ; 5BAB _ 75, 57
        mov     eax, dword [ebp-0CH]                    ; 5BAD _ 8B. 45, F4
        shl     eax, 4                                  ; 5BB0 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 5BB3 _ 05, 00000008(d)
        mov     dword [eax], 1                          ; 5BB8 _ C7. 00, 00000001
        mov     eax, dword [ebp-0CH]                    ; 5BBE _ 8B. 45, F4
        shl     eax, 4                                  ; 5BC1 _ C1. E0, 04
        add     eax, _timerctl+10H                           ; 5BC4 _ 05, 00000010(d)
        movzx   eax, byte [eax]                         ; 5BC9 _ 0F B6. 00
        movzx   eax, al                                 ; 5BCC _ 0F B6. C0
        mov     edx, dword [ebp-0CH]                    ; 5BCF _ 8B. 55, F4
        shl     edx, 4                                  ; 5BD2 _ C1. E2, 04
        add     edx, _timerctl+0CH                           ; 5BD5 _ 81. C2, 0000000C(d)
        mov     edx, dword [edx]                        ; 5BDB _ 8B. 12
        mov     dword [esp+4H], eax                     ; 5BDD _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 5BE1 _ 89. 14 24
        call    _fifo8_put                              ; 5BE4 _ E8, 00000000(rel)
        mov     eax, dword [ebp-0CH]                    ; 5BE9 _ 8B. 45, F4
        shl     eax, 4                                  ; 5BEC _ C1. E0, 04
        add     eax, _timerctl                               ; 5BEF _ 05, 00000000(d)
        lea     edx, [eax+4H]                           ; 5BF4 _ 8D. 50, 04
        mov     eax, dword [_task_timer]                ; 5BF7 _ A1, 00000000(d)
        cmp     edx, eax                                ; 5BFC _ 39. C2
        jnz     ?_367                                   ; 5BFE _ 75, 04
        mov     byte [ebp-0DH], 1                       ; 5C00 _ C6. 45, F3, 01
?_367:  cmp     byte [ebp-0DH], 0                       ; 5C04 _ 80. 7D, F3, 00
        jz      ?_368                                   ; 5C08 _ 74, 05
        call    _task_switch                            ; 5C0A _ E8, 00000000(rel)
?_368:  add     dword [ebp-0CH], 1                      ; 5C0F _ 83. 45, F4, 01
?_369:  cmp     dword [ebp-0CH], 499                    ; 5C13 _ 81. 7D, F4, 000001F3
        jle     ?_366                                   ; 5C1A _ 0F 8E, FFFFFF49
        nop                                             ; 5C20 _ 90
        leave                                           ; 5C21 _ C9
        ret                                             ; 5C22 _ C3
; _intHandlerForTimer End of function

_getTimerController:; Function begin
        mov     eax, _timerctl                               ; 5C23 _ B8, 00000000(d)
        ret                                             ; 5C28 _ C3
; _getTimerController End of function

        nop                                             ; 5C29 _ 90
        nop                                             ; 5C2A _ 90
        nop                                             ; 5C2B _ 90


_intHandlerFromC:
        push    ebp                                     ; 5C2C _ 55
        mov     ebp, esp                                ; 5C2D _ 89. E5
        sub     esp, 40                                 ; 5C2F _ 83. EC, 28
        mov     eax, dword [_bootInfo]                  ; 5C32 _ A1, 00000000(d)
        mov     dword [ebp-0CH], eax                    ; 5C37 _ 89. 45, F4
        movzx   eax, word [_bootInfo+4H]                ; 5C3A _ 0F B7. 05, 00000004(d)
        cwde                                            ; 5C41 _ 98
        mov     dword [ebp-10H], eax                    ; 5C42 _ 89. 45, F0
        movzx   eax, word [_bootInfo+6H]                ; 5C45 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 5C4C _ 98
        mov     dword [ebp-14H], eax                    ; 5C4D _ 89. 45, EC
        mov     dword [esp+4H], 32                      ; 5C50 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 5C58 _ C7. 04 24, 00000020
        call    _io_out8                                ; 5C5F _ E8, 00000000(rel)
        mov     byte [ebp-15H], 0                       ; 5C64 _ C6. 45, EB, 00
        mov     dword [esp], 96                         ; 5C68 _ C7. 04 24, 00000060
        call    _io_in8                                 ; 5C6F _ E8, 00000000(rel)
        mov     byte [ebp-15H], al                      ; 5C74 _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 5C77 _ 0F B6. 45, EB
        mov     dword [esp+4H], eax                     ; 5C7B _ 89. 44 24, 04
        mov     dword [esp], _keyinfo                   ; 5C7F _ C7. 04 24, 00000000(d)
        call    _fifo8_put                              ; 5C86 _ E8, 00000000(rel)
        nop                                             ; 5C8B _ 90
        leave                                           ; 5C8C _ C9
        ret                                             ; 5C8D _ C3

_intHandlerForMouse:; Function begin
        push    ebp                                     ; 5C8E _ 55
        mov     ebp, esp                                ; 5C8F _ 89. E5
        sub     esp, 40                                 ; 5C91 _ 83. EC, 28
        mov     dword [esp+4H], 32                      ; 5C94 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 160                        ; 5C9C _ C7. 04 24, 000000A0
        call    _io_out8                                ; 5CA3 _ E8, 00000000(rel)
        mov     dword [esp+4H], 32                      ; 5CA8 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 5CB0 _ C7. 04 24, 00000020
        call    _io_out8                                ; 5CB7 _ E8, 00000000(rel)
        mov     dword [esp], 96                         ; 5CBC _ C7. 04 24, 00000060
        call    _io_in8                                 ; 5CC3 _ E8, 00000000(rel)
        mov     byte [ebp-9H], al                       ; 5CC8 _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 5CCB _ 0F B6. 45, F7
        mov     dword [esp+4H], eax                     ; 5CCF _ 89. 44 24, 04
        mov     dword [esp], _mouseinfo                 ; 5CD3 _ C7. 04 24, 00000000(d)
        call    _fifo8_put                              ; 5CDA _ E8, 00000000(rel)
        nop                                             ; 5CDF _ 90
        leave                                           ; 5CE0 _ C9
        ret                                             ; 5CE1 _ C3
; _intHandlerForMouse End of function

_intHandlerForStackOverFlow:; Function begin
        push    ebp                                     ; 5CE2 _ 55
        mov     ebp, esp                                ; 5CE3 _ 89. E5
        sub     esp, 40                                 ; 5CE5 _ 83. EC, 28
        call    _task_now                               ; 5CE8 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 5CED _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 5CF0 _ 8B. 45, F4
        mov     dword [eax+98H], 8                      ; 5CF3 _ C7. 80, 00000098, 00000008
_intHandlerForException:
        push    ebp                                     ; 5DAD _ 55
        mov     ebp, esp                                ; 5DAE _ 89. E5
        sub     esp, 40                                 ; 5DB0 _ 83. EC, 28
        call    _task_now                               ; 5DB3 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 5DB8 _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 5DBB _ 8B. 45, F4
        mov     dword [eax+98H], 8                      ; 5DBE _ C7. 80, 00000098, 00000008
.text:  

_set_segmdesc:
        push    ebp                                     ; 5E2C _ 55
        mov     ebp, esp                                ; 5E2D _ 89. E5
        cmp     dword [ebp+0CH], 1048575                ; 5E2F _ 81. 7D, 0C, 000FFFFF
        jbe     ?_370                                   ; 5E36 _ 76, 10
        or      dword [ebp+14H], 8000H                  ; 5E38 _ 81. 4D, 14, 00008000
        mov     eax, dword [ebp+0CH]                    ; 5E3F _ 8B. 45, 0C
        shr     eax, 12                                 ; 5E42 _ C1. E8, 0C
        mov     dword [ebp+0CH], eax                    ; 5E45 _ 89. 45, 0C
?_370:  mov     eax, dword [ebp+0CH]                    ; 5E48 _ 8B. 45, 0C
        mov     edx, eax                                ; 5E4B _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 5E4D _ 8B. 45, 08
        mov     word [eax], dx                          ; 5E50 _ 66: 89. 10
        mov     eax, dword [ebp+10H]                    ; 5E53 _ 8B. 45, 10
        mov     edx, eax                                ; 5E56 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 5E58 _ 8B. 45, 08
        mov     word [eax+2H], dx                       ; 5E5B _ 66: 89. 50, 02
        mov     eax, dword [ebp+10H]                    ; 5E5F _ 8B. 45, 10
        sar     eax, 16                                 ; 5E62 _ C1. F8, 10
        mov     edx, eax                                ; 5E65 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 5E67 _ 8B. 45, 08
        mov     byte [eax+4H], dl                       ; 5E6A _ 88. 50, 04
        mov     eax, dword [ebp+14H]                    ; 5E6D _ 8B. 45, 14
        mov     edx, eax                                ; 5E70 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 5E72 _ 8B. 45, 08
        mov     byte [eax+5H], dl                       ; 5E75 _ 88. 50, 05
        mov     eax, dword [ebp+0CH]                    ; 5E78 _ 8B. 45, 0C
        shr     eax, 16                                 ; 5E7B _ C1. E8, 10
        and     eax, 0FH                                ; 5E7E _ 83. E0, 0F
        mov     edx, eax                                ; 5E81 _ 89. C2
        mov     eax, dword [ebp+14H]                    ; 5E83 _ 8B. 45, 14
        sar     eax, 8                                  ; 5E86 _ C1. F8, 08
        and     eax, 0FFFFFFF0H                         ; 5E89 _ 83. E0, F0
        or      eax, edx                                ; 5E8C _ 09. D0
        mov     edx, eax                                ; 5E8E _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 5E90 _ 8B. 45, 08
        mov     byte [eax+6H], dl                       ; 5E93 _ 88. 50, 06
        mov     eax, dword [ebp+10H]                    ; 5E96 _ 8B. 45, 10
        shr     eax, 24                                 ; 5E99 _ C1. E8, 18
        mov     edx, eax                                ; 5E9C _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 5E9E _ 8B. 45, 08
        mov     byte [eax+7H], dl                       ; 5EA1 _ 88. 50, 07
        nop                                             ; 5EA4 _ 90
        pop     ebp                                     ; 5EA5 _ 5D
        ret                                             ; 5EA6 _ C3

_get_taskctl:; Function begin
        mov     eax, dword [_taskctl]                   ; 5EA7 _ A1, 00000004(d)
        ret                                             ; 5EAC _ C3
; _get_taskctl End of function

_init_task_level:; Function begin
        push    ebp                                     ; 5EAD _ 55
        mov     ebp, esp                                ; 5EAE _ 89. E5
        sub     esp, 16                                 ; 5EB0 _ 83. EC, 10
        mov     ecx, dword [_taskctl]                   ; 5EB3 _ 8B. 0D, 00000004(d)
        mov     edx, dword [ebp+8H]                     ; 5EB9 _ 8B. 55, 08
        mov     eax, edx                                ; 5EBC _ 89. D0
        add     eax, eax                                ; 5EBE _ 01. C0
        add     eax, edx                                ; 5EC0 _ 01. D0
        shl     eax, 4                                  ; 5EC2 _ C1. E0, 04
        add     eax, ecx                                ; 5EC5 _ 01. C8
        add     eax, 8                                  ; 5EC7 _ 83. C0, 08
        mov     dword [eax], 0                          ; 5ECA _ C7. 00, 00000000
        mov     ecx, dword [_taskctl]                   ; 5ED0 _ 8B. 0D, 00000004(d)
        mov     edx, dword [ebp+8H]                     ; 5ED6 _ 8B. 55, 08
        mov     eax, edx                                ; 5ED9 _ 89. D0
        add     eax, eax                                ; 5EDB _ 01. C0
        add     eax, edx                                ; 5EDD _ 01. D0
        shl     eax, 4                                  ; 5EDF _ C1. E0, 04
        add     eax, ecx                                ; 5EE2 _ 01. C8
        add     eax, 12                                 ; 5EE4 _ 83. C0, 0C
        mov     dword [eax], 0                          ; 5EE7 _ C7. 00, 00000000
        mov     dword [ebp-4H], 0                       ; 5EED _ C7. 45, FC, 00000000
        jmp     ?_372                                   ; 5EF4 _ EB, 1B

?_371:  mov     edx, dword [_taskctl]                   ; 5EF6 _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-4H]                     ; 5EFC _ 8B. 45, FC
        imul    eax, eax, 52                            ; 5EFF _ 6B. C0, 34
        add     eax, edx                                ; 5F02 _ 01. D0
        add     eax, 16                                 ; 5F04 _ 83. C0, 10
        mov     dword [eax], 0                          ; 5F07 _ C7. 00, 00000000
        add     dword [ebp-4H], 1                       ; 5F0D _ 83. 45, FC, 01
?_372:  cmp     dword [ebp-4H], 9                       ; 5F11 _ 83. 7D, FC, 09
        jle     ?_371                                   ; 5F15 _ 7E, DF
        nop                                             ; 5F17 _ 90
        leave                                           ; 5F18 _ C9
        ret                                             ; 5F19 _ C3
; _init_task_level End of function

_task_init:; Function begin
        push    ebp                                     ; 5F1A _ 55
        mov     ebp, esp                                ; 5F1B _ 89. E5
        sub     esp, 40                                 ; 5F1D _ 83. EC, 28
        call    _get_addr_gdt                           ; 5F20 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 5F25 _ 89. 45, F0
        mov     dword [esp+4H], 3128                    ; 5F28 _ C7. 44 24, 04, 00000C38
        mov     eax, dword [ebp+8H]                     ; 5F30 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 5F33 _ 89. 04 24
        call    _memman_alloc_4k                        ; 5F36 _ E8, 00000000(rel)
        mov     dword [_taskctl], eax                   ; 5F3B _ A3, 00000004(d)
        mov     dword [ebp-0CH], 0                      ; 5F40 _ C7. 45, F4, 00000000
        jmp     ?_374                                   ; 5F47 _ E9, 000000FC

?_373:  mov     edx, dword [_taskctl]                   ; 5F4C _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-0CH]                    ; 5F52 _ 8B. 45, F4
        imul    eax, eax, 208                           ; 5F55 _ 69. C0, 000000D0
        add     eax, edx                                ; 5F5B _ 01. D0
        add     eax, 492                                ; 5F5D _ 05, 000001EC
        mov     dword [eax], 0                          ; 5F62 _ C7. 00, 00000000
        mov     eax, dword [ebp-0CH]                    ; 5F68 _ 8B. 45, F4
        add     eax, 7                                  ; 5F6B _ 83. C0, 07
        mov     ecx, dword [_taskctl]                   ; 5F6E _ 8B. 0D, 00000004(d)
        lea     edx, [eax*8]                            ; 5F74 _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-0CH]                    ; 5F7B _ 8B. 45, F4
        imul    eax, eax, 208                           ; 5F7E _ 69. C0, 000000D0
        add     eax, ecx                                ; 5F84 _ 01. C8
        add     eax, 488                                ; 5F86 _ 05, 000001E8
        mov     dword [eax], edx                        ; 5F8B _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 5F8D _ 8B. 45, F4
        add     eax, 17                                 ; 5F90 _ 83. C0, 11
        mov     ecx, dword [_taskctl]                   ; 5F93 _ 8B. 0D, 00000004(d)
        lea     edx, [eax*8]                            ; 5F99 _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-0CH]                    ; 5FA0 _ 8B. 45, F4
        imul    eax, eax, 208                           ; 5FA3 _ 69. C0, 000000D0
        add     eax, ecx                                ; 5FA9 _ 01. C8
        add     eax, 628                                ; 5FAB _ 05, 00000274
        mov     dword [eax], edx                        ; 5FB0 _ 89. 10
        mov     edx, dword [_taskctl]                   ; 5FB2 _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-0CH]                    ; 5FB8 _ 8B. 45, F4
        imul    eax, eax, 208                           ; 5FBB _ 69. C0, 000000D0
        add     eax, 512                                ; 5FC1 _ 05, 00000200
        add     eax, edx                                ; 5FC6 _ 01. D0
        add     eax, 20                                 ; 5FC8 _ 83. C0, 14
        mov     ecx, eax                                ; 5FCB _ 89. C1
        mov     eax, dword [ebp-0CH]                    ; 5FCD _ 8B. 45, F4
        add     eax, 7                                  ; 5FD0 _ 83. C0, 07
        lea     edx, [eax*8]                            ; 5FD3 _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-10H]                    ; 5FDA _ 8B. 45, F0
        add     eax, edx                                ; 5FDD _ 01. D0
        mov     dword [esp+0CH], 137                    ; 5FDF _ C7. 44 24, 0C, 00000089
        mov     dword [esp+8H], ecx                     ; 5FE7 _ 89. 4C 24, 08
        mov     dword [esp+4H], 103                     ; 5FEB _ C7. 44 24, 04, 00000067
        mov     dword [esp], eax                        ; 5FF3 _ 89. 04 24
        call    _set_segmdesc                           ; 5FF6 _ E8, FFFFFE31
        mov     edx, dword [_taskctl]                   ; 5FFB _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-0CH]                    ; 6001 _ 8B. 45, F4
        imul    eax, eax, 208                           ; 6004 _ 69. C0, 000000D0
        add     eax, 656                                ; 600A _ 05, 00000290
        add     eax, edx                                ; 600F _ 01. D0
        add     eax, 20                                 ; 6011 _ 83. C0, 14
        mov     ecx, eax                                ; 6014 _ 89. C1
        mov     eax, dword [ebp-0CH]                    ; 6016 _ 8B. 45, F4
        add     eax, 17                                 ; 6019 _ 83. C0, 11
        lea     edx, [eax*8]                            ; 601C _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-10H]                    ; 6023 _ 8B. 45, F0
        add     eax, edx                                ; 6026 _ 01. D0
        mov     dword [esp+0CH], 130                    ; 6028 _ C7. 44 24, 0C, 00000082
        mov     dword [esp+8H], ecx                     ; 6030 _ 89. 4C 24, 08
        mov     dword [esp+4H], 15                      ; 6034 _ C7. 44 24, 04, 0000000F
        mov     dword [esp], eax                        ; 603C _ 89. 04 24
        call    _set_segmdesc                           ; 603F _ E8, FFFFFDE8
        add     dword [ebp-0CH], 1                      ; 6044 _ 83. 45, F4, 01
?_374:  cmp     dword [ebp-0CH], 9                      ; 6048 _ 83. 7D, F4, 09
        jle     ?_373                                   ; 604C _ 0F 8E, FFFFFEFA
        mov     dword [ebp-0CH], 0                      ; 6052 _ C7. 45, F4, 00000000
        jmp     ?_376                                   ; 6059 _ EB, 0F

?_375:  mov     eax, dword [ebp-0CH]                    ; 605B _ 8B. 45, F4
        mov     dword [esp], eax                        ; 605E _ 89. 04 24
        call    _init_task_level                        ; 6061 _ E8, FFFFFE47
        add     dword [ebp-0CH], 1                      ; 6066 _ 83. 45, F4, 01
?_376:  cmp     dword [ebp-0CH], 9                      ; 606A _ 83. 7D, F4, 09
        jle     ?_375                                   ; 606E _ 7E, EB
        call    _task_alloc                             ; 6070 _ E8, 00000066
        mov     dword [ebp-14H], eax                    ; 6075 _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 6078 _ 8B. 45, EC
        mov     dword [eax+4H], 2                       ; 607B _ C7. 40, 04, 00000002
        mov     eax, dword [ebp-14H]                    ; 6082 _ 8B. 45, EC
        mov     dword [eax+8H], 100                     ; 6085 _ C7. 40, 08, 00000064
        mov     eax, dword [ebp-14H]                    ; 608C _ 8B. 45, EC
        mov     dword [eax+0CH], 0                      ; 608F _ C7. 40, 0C, 00000000
        mov     eax, dword [ebp-14H]                    ; 6096 _ 8B. 45, EC
        mov     dword [esp], eax                        ; 6099 _ 89. 04 24
        call    _task_add                               ; 609C _ E8, 0000034B
        call    _task_switchsub                         ; 60A1 _ E8, 0000045F
        mov     eax, dword [ebp-14H]                    ; 60A6 _ 8B. 45, EC
        mov     eax, dword [eax]                        ; 60A9 _ 8B. 00
        mov     dword [esp], eax                        ; 60AB _ 89. 04 24
        call    _load_tr                                ; 60AE _ E8, 00000000(rel)
        call    _timer_alloc                            ; 60B3 _ E8, 00000000(rel)
        mov     dword [_task_timer], eax                       ; 60B8 _ A3, 00000000(d)
        mov     eax, dword [ebp-14H]                    ; 60BD _ 8B. 45, EC
        mov     eax, dword [eax+8H]                     ; 60C0 _ 8B. 40, 08
        mov     edx, eax                                ; 60C3 _ 89. C2
        mov     eax, dword [_task_timer]                       ; 60C5 _ A1, 00000000(d)
        mov     dword [esp+4H], edx                     ; 60CA _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 60CE _ 89. 04 24
        call    _timer_settime                          ; 60D1 _ E8, 00000000(rel)
        mov     eax, dword [ebp-14H]                    ; 60D6 _ 8B. 45, EC
        leave                                           ; 60D9 _ C9
        ret                                             ; 60DA _ C3
; _task_init End of function

_task_alloc:; Function begin
        push    ebp                                     ; 60DB _ 55
        mov     ebp, esp                                ; 60DC _ 89. E5
        sub     esp, 16                                 ; 60DE _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 60E1 _ C7. 45, FC, 00000000
        jmp     ?_379                                   ; 60E8 _ E9, 000000F8

?_377:  mov     edx, dword [_taskctl]                   ; 60ED _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-4H]                     ; 60F3 _ 8B. 45, FC
        imul    eax, eax, 208                           ; 60F6 _ 69. C0, 000000D0
        add     eax, edx                                ; 60FC _ 01. D0
        add     eax, 492                                ; 60FE _ 05, 000001EC
        mov     eax, dword [eax]                        ; 6103 _ 8B. 00
        test    eax, eax                                ; 6105 _ 85. C0
        jne     ?_378                                   ; 6107 _ 0F 85, 000000D4
        mov     edx, dword [_taskctl]                   ; 610D _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-4H]                     ; 6113 _ 8B. 45, FC
        imul    eax, eax, 208                           ; 6116 _ 69. C0, 000000D0
        add     eax, 480                                ; 611C _ 05, 000001E0
        add     eax, edx                                ; 6121 _ 01. D0
        add     eax, 8                                  ; 6123 _ 83. C0, 08
        mov     dword [ebp-8H], eax                     ; 6126 _ 89. 45, F8
        mov     eax, dword [ebp-8H]                     ; 6129 _ 8B. 45, F8
        mov     dword [eax+4H], 1                       ; 612C _ C7. 40, 04, 00000001
        mov     eax, dword [ebp-8H]                     ; 6133 _ 8B. 45, F8
        mov     dword [eax+50H], 514                    ; 6136 _ C7. 40, 50, 00000202
        mov     eax, dword [ebp-8H]                     ; 613D _ 8B. 45, F8
        mov     dword [eax+54H], 0                      ; 6140 _ C7. 40, 54, 00000000
        mov     eax, dword [ebp-8H]                     ; 6147 _ 8B. 45, F8
        mov     dword [eax+58H], 0                      ; 614A _ C7. 40, 58, 00000000
        mov     eax, dword [ebp-8H]                     ; 6151 _ 8B. 45, F8
        mov     dword [eax+5CH], 0                      ; 6154 _ C7. 40, 5C, 00000000
        mov     eax, dword [ebp-8H]                     ; 615B _ 8B. 45, F8
        mov     dword [eax+60H], 0                      ; 615E _ C7. 40, 60, 00000000
        mov     eax, dword [ebp-8H]                     ; 6165 _ 8B. 45, F8
        mov     dword [eax+68H], 0                      ; 6168 _ C7. 40, 68, 00000000
        mov     eax, dword [ebp-4H]                     ; 616F _ 8B. 45, FC
        add     eax, 1                                  ; 6172 _ 83. C0, 01
        shl     eax, 9                                  ; 6175 _ C1. E0, 09
        mov     edx, eax                                ; 6178 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 617A _ 8B. 45, F8
        mov     dword [eax+64H], edx                    ; 617D _ 89. 50, 64
        mov     eax, dword [ebp-8H]                     ; 6180 _ 8B. 45, F8
        mov     dword [eax+6CH], 0                      ; 6183 _ C7. 40, 6C, 00000000
        mov     eax, dword [ebp-8H]                     ; 618A _ 8B. 45, F8
        mov     dword [eax+70H], 0                      ; 618D _ C7. 40, 70, 00000000
        mov     eax, dword [ebp-8H]                     ; 6194 _ 8B. 45, F8
        mov     dword [eax+74H], 0                      ; 6197 _ C7. 40, 74, 00000000
        mov     eax, dword [ebp-8H]                     ; 619E _ 8B. 45, F8
        mov     dword [eax+80H], 0                      ; 61A1 _ C7. 80, 00000080, 00000000
        mov     eax, dword [ebp-8H]                     ; 61AB _ 8B. 45, F8
        mov     dword [eax+84H], 0                      ; 61AE _ C7. 80, 00000084, 00000000
        mov     eax, dword [ebp-8H]                     ; 61B8 _ 8B. 45, F8
        mov     dword [eax+88H], 0                      ; 61BB _ C7. 80, 00000088, 00000000
        mov     eax, dword [ebp-8H]                     ; 61C5 _ 8B. 45, F8
        mov     dword [eax+34H], 0                      ; 61C8 _ C7. 40, 34, 00000000
        mov     eax, dword [ebp-8H]                     ; 61CF _ 8B. 45, F8
        mov     dword [eax+90H], 1073741824             ; 61D2 _ C7. 80, 00000090, 40000000
        mov     eax, dword [ebp-8H]                     ; 61DC _ 8B. 45, F8
        jmp     ?_380                                   ; 61DF _ EB, 13

?_378:  add     dword [ebp-4H], 1                       ; 61E1 _ 83. 45, FC, 01
?_379:  cmp     dword [ebp-4H], 9                       ; 61E5 _ 83. 7D, FC, 09
        jle     ?_377                                   ; 61E9 _ 0F 8E, FFFFFEFE
        mov     eax, 0                                  ; 61EF _ B8, 00000000
?_380:  leave                                           ; 61F4 _ C9
        ret                                             ; 61F5 _ C3
; _task_alloc End of function

_task_run:; Function begin
        push    ebp                                     ; 61F6 _ 55
        mov     ebp, esp                                ; 61F7 _ 89. E5
        sub     esp, 24                                 ; 61F9 _ 83. EC, 18
        cmp     dword [ebp+0CH], 0                      ; 61FC _ 83. 7D, 0C, 00
        jns     ?_381                                   ; 6200 _ 79, 09
        mov     eax, dword [ebp+8H]                     ; 6202 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 6205 _ 8B. 40, 0C
        mov     dword [ebp+0CH], eax                    ; 6208 _ 89. 45, 0C
?_381:  cmp     dword [ebp+10H], 0                      ; 620B _ 83. 7D, 10, 00
        jle     ?_382                                   ; 620F _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 6211 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 6214 _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 6217 _ 89. 50, 08
?_382:  mov     eax, dword [ebp+8H]                     ; 621A _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 621D _ 8B. 40, 04
        cmp     eax, 2                                  ; 6220 _ 83. F8, 02
        jnz     ?_383                                   ; 6223 _ 75, 16
        mov     eax, dword [ebp+8H]                     ; 6225 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 6228 _ 8B. 40, 0C
        cmp     dword [ebp+0CH], eax                    ; 622B _ 39. 45, 0C
        jz      ?_383                                   ; 622E _ 74, 0B
        mov     eax, dword [ebp+8H]                     ; 6230 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 6233 _ 89. 04 24
        call    _task_remove                            ; 6236 _ E8, 000001FD
?_383:  mov     eax, dword [ebp+8H]                     ; 623B _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 623E _ 8B. 40, 04
        cmp     eax, 2                                  ; 6241 _ 83. F8, 02
        jz      ?_384                                   ; 6244 _ 74, 14
        mov     eax, dword [ebp+8H]                     ; 6246 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 6249 _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 624C _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 624F _ 8B. 45, 08
        mov     dword [esp], eax                        ; 6252 _ 89. 04 24
        call    _task_add                               ; 6255 _ E8, 00000192
?_384:  mov     eax, dword [_taskctl]                   ; 625A _ A1, 00000004(d)
        mov     dword [eax+4H], 1                       ; 625F _ C7. 40, 04, 00000001
        nop                                             ; 6266 _ 90
        leave                                           ; 6267 _ C9
        ret                                             ; 6268 _ C3
; _task_run End of function

_task_switch:; Function begin
        push    ebp                                     ; 6269 _ 55
        mov     ebp, esp                                ; 626A _ 89. E5
        sub     esp, 40                                 ; 626C _ 83. EC, 28
        mov     ecx, dword [_taskctl]                   ; 626F _ 8B. 0D, 00000004(d)
        mov     eax, dword [_taskctl]                   ; 6275 _ A1, 00000004(d)
        mov     edx, dword [eax]                        ; 627A _ 8B. 10
        mov     eax, edx                                ; 627C _ 89. D0
        add     eax, eax                                ; 627E _ 01. C0
        add     eax, edx                                ; 6280 _ 01. D0
        shl     eax, 4                                  ; 6282 _ C1. E0, 04
        add     eax, ecx                                ; 6285 _ 01. C8
        add     eax, 8                                  ; 6287 _ 83. C0, 08
        mov     dword [ebp-0CH], eax                    ; 628A _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 628D _ 8B. 45, F4
        mov     edx, dword [eax+4H]                     ; 6290 _ 8B. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 6293 _ 8B. 45, F4
        mov     eax, dword [eax+edx*4+8H]               ; 6296 _ 8B. 44 90, 08
        mov     dword [ebp-10H], eax                    ; 629A _ 89. 45, F0
        mov     eax, dword [ebp-0CH]                    ; 629D _ 8B. 45, F4
        mov     eax, dword [eax+4H]                     ; 62A0 _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 62A3 _ 8D. 50, 01
        mov     eax, dword [ebp-0CH]                    ; 62A6 _ 8B. 45, F4
        mov     dword [eax+4H], edx                     ; 62A9 _ 89. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 62AC _ 8B. 45, F4
        mov     edx, dword [eax+4H]                     ; 62AF _ 8B. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 62B2 _ 8B. 45, F4
        mov     eax, dword [eax]                        ; 62B5 _ 8B. 00
        cmp     edx, eax                                ; 62B7 _ 39. C2
        jnz     ?_385                                   ; 62B9 _ 75, 0A
        mov     eax, dword [ebp-0CH]                    ; 62BB _ 8B. 45, F4
        mov     dword [eax+4H], 0                       ; 62BE _ C7. 40, 04, 00000000
?_385:  mov     eax, dword [_taskctl]                   ; 62C5 _ A1, 00000004(d)
        mov     eax, dword [eax+4H]                     ; 62CA _ 8B. 40, 04
        test    eax, eax                                ; 62CD _ 85. C0
        jz      ?_386                                   ; 62CF _ 74, 23
        call    _task_switchsub                         ; 62D1 _ E8, 0000022F
        mov     ecx, dword [_taskctl]                   ; 62D6 _ 8B. 0D, 00000004(d)
        mov     eax, dword [_taskctl]                   ; 62DC _ A1, 00000004(d)
        mov     edx, dword [eax]                        ; 62E1 _ 8B. 10
        mov     eax, edx                                ; 62E3 _ 89. D0
        add     eax, eax                                ; 62E5 _ 01. C0
        add     eax, edx                                ; 62E7 _ 01. D0
        shl     eax, 4                                  ; 62E9 _ C1. E0, 04
        add     eax, ecx                                ; 62EC _ 01. C8
        add     eax, 8                                  ; 62EE _ 83. C0, 08
        mov     dword [ebp-0CH], eax                    ; 62F1 _ 89. 45, F4
?_386:  mov     eax, dword [ebp-0CH]                    ; 62F4 _ 8B. 45, F4
        mov     edx, dword [eax+4H]                     ; 62F7 _ 8B. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 62FA _ 8B. 45, F4
        mov     eax, dword [eax+edx*4+8H]               ; 62FD _ 8B. 44 90, 08
        mov     dword [ebp-14H], eax                    ; 6301 _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 6304 _ 8B. 45, EC
        mov     eax, dword [eax+8H]                     ; 6307 _ 8B. 40, 08
        mov     edx, eax                                ; 630A _ 89. C2
        mov     eax, dword [_task_timer]                       ; 630C _ A1, 00000000(d)
        mov     dword [esp+4H], edx                     ; 6311 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 6315 _ 89. 04 24
        call    _timer_settime                          ; 6318 _ E8, 00000000(rel)
        mov     eax, dword [ebp-14H]                    ; 631D _ 8B. 45, EC
        cmp     eax, dword [ebp-10H]                    ; 6320 _ 3B. 45, F0
        jz      ?_387                                   ; 6323 _ 74, 1C
        cmp     dword [ebp-14H], 0                      ; 6325 _ 83. 7D, EC, 00
        jz      ?_387                                   ; 6329 _ 74, 16
        mov     eax, dword [ebp-14H]                    ; 632B _ 8B. 45, EC
        mov     eax, dword [eax]                        ; 632E _ 8B. 00
        mov     dword [esp+4H], eax                     ; 6330 _ 89. 44 24, 04
        mov     dword [esp], 0                          ; 6334 _ C7. 04 24, 00000000
        call    _farjmp                                 ; 633B _ E8, 00000000(rel)
        nop                                             ; 6340 _ 90
?_387:  nop                                             ; 6341 _ 90
        leave                                           ; 6342 _ C9
        ret                                             ; 6343 _ C3
; _task_switch End of function

_task_sleep:; Function begin
        push    ebp                                     ; 6344 _ 55
        mov     ebp, esp                                ; 6345 _ 89. E5
        sub     esp, 40                                 ; 6347 _ 83. EC, 28
        mov     dword [ebp-10H], 0                      ; 634A _ C7. 45, F0, 00000000
        mov     dword [ebp-0CH], 0                      ; 6351 _ C7. 45, F4, 00000000
        mov     eax, dword [ebp+8H]                     ; 6358 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 635B _ 8B. 40, 04
        cmp     eax, 2                                  ; 635E _ 83. F8, 02
        jnz     ?_388                                   ; 6361 _ 75, 51
        call    _task_now                               ; 6363 _ E8, 00000051
        mov     dword [ebp-10H], eax                    ; 6368 _ 89. 45, F0
        mov     eax, dword [ebp+8H]                     ; 636B _ 8B. 45, 08
        mov     dword [esp], eax                        ; 636E _ 89. 04 24
        call    _task_remove                            ; 6371 _ E8, 000000C2
        mov     dword [ebp-0CH], 1                      ; 6376 _ C7. 45, F4, 00000001
        mov     eax, dword [ebp+8H]                     ; 637D _ 8B. 45, 08
        cmp     eax, dword [ebp-10H]                    ; 6380 _ 3B. 45, F0
        jnz     ?_388                                   ; 6383 _ 75, 2F
        call    _task_switchsub                         ; 6385 _ E8, 0000017B
        call    _task_now                               ; 638A _ E8, 0000002A
        mov     dword [ebp-10H], eax                    ; 638F _ 89. 45, F0
        mov     dword [ebp-0CH], 2                      ; 6392 _ C7. 45, F4, 00000002
        cmp     dword [ebp-10H], 0                      ; 6399 _ 83. 7D, F0, 00
        jz      ?_388                                   ; 639D _ 74, 15
        mov     eax, dword [ebp-10H]                    ; 639F _ 8B. 45, F0
        mov     eax, dword [eax]                        ; 63A2 _ 8B. 00
        mov     dword [esp+4H], eax                     ; 63A4 _ 89. 44 24, 04
        mov     dword [esp], 0                          ; 63A8 _ C7. 04 24, 00000000
        call    _farjmp                                 ; 63AF _ E8, 00000000(rel)
?_388:  mov     eax, dword [ebp-0CH]                    ; 63B4 _ 8B. 45, F4
        leave                                           ; 63B7 _ C9
        ret                                             ; 63B8 _ C3
; _task_sleep End of function

_task_now:; Function begin
        push    ebp                                     ; 63B9 _ 55
        mov     ebp, esp                                ; 63BA _ 89. E5
        sub     esp, 16                                 ; 63BC _ 83. EC, 10
        mov     ecx, dword [_taskctl]                   ; 63BF _ 8B. 0D, 00000004(d)
        mov     eax, dword [_taskctl]                   ; 63C5 _ A1, 00000004(d)
        mov     edx, dword [eax]                        ; 63CA _ 8B. 10
        mov     eax, edx                                ; 63CC _ 89. D0
        add     eax, eax                                ; 63CE _ 01. C0
        add     eax, edx                                ; 63D0 _ 01. D0
        shl     eax, 4                                  ; 63D2 _ C1. E0, 04
        add     eax, ecx                                ; 63D5 _ 01. C8
        add     eax, 8                                  ; 63D7 _ 83. C0, 08
        mov     dword [ebp-4H], eax                     ; 63DA _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 63DD _ 8B. 45, FC
        mov     edx, dword [eax+4H]                     ; 63E0 _ 8B. 50, 04
        mov     eax, dword [ebp-4H]                     ; 63E3 _ 8B. 45, FC
        mov     eax, dword [eax+edx*4+8H]               ; 63E6 _ 8B. 44 90, 08
        leave                                           ; 63EA _ C9
        ret                                             ; 63EB _ C3
; _task_now End of function

_task_add:; Function begin
        push    ebp                                     ; 63EC _ 55
        mov     ebp, esp                                ; 63ED _ 89. E5
        sub     esp, 16                                 ; 63EF _ 83. EC, 10
        mov     ecx, dword [_taskctl]                   ; 63F2 _ 8B. 0D, 00000004(d)
        mov     eax, dword [ebp+8H]                     ; 63F8 _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 63FB _ 8B. 50, 0C
        mov     eax, edx                                ; 63FE _ 89. D0
        add     eax, eax                                ; 6400 _ 01. C0
        add     eax, edx                                ; 6402 _ 01. D0
        shl     eax, 4                                  ; 6404 _ C1. E0, 04
        add     eax, ecx                                ; 6407 _ 01. C8
        add     eax, 8                                  ; 6409 _ 83. C0, 08
        mov     dword [ebp-4H], eax                     ; 640C _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 640F _ 8B. 45, FC
        mov     edx, dword [eax]                        ; 6412 _ 8B. 10
        mov     eax, dword [ebp-4H]                     ; 6414 _ 8B. 45, FC
        mov     ecx, dword [ebp+8H]                     ; 6417 _ 8B. 4D, 08
        mov     dword [eax+edx*4+8H], ecx               ; 641A _ 89. 4C 90, 08
        mov     eax, dword [ebp-4H]                     ; 641E _ 8B. 45, FC
        mov     eax, dword [eax]                        ; 6421 _ 8B. 00
        lea     edx, [eax+1H]                           ; 6423 _ 8D. 50, 01
        mov     eax, dword [ebp-4H]                     ; 6426 _ 8B. 45, FC
        mov     dword [eax], edx                        ; 6429 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 642B _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 642E _ C7. 40, 04, 00000002
        nop                                             ; 6435 _ 90
        leave                                           ; 6436 _ C9
        ret                                             ; 6437 _ C3
; _task_add End of function

_task_remove:; Function begin
        push    ebp                                     ; 6438 _ 55
        mov     ebp, esp                                ; 6439 _ 89. E5
        sub     esp, 16                                 ; 643B _ 83. EC, 10
        mov     ecx, dword [_taskctl]                   ; 643E _ 8B. 0D, 00000004(d)
        mov     eax, dword [ebp+8H]                     ; 6444 _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 6447 _ 8B. 50, 0C
        mov     eax, edx                                ; 644A _ 89. D0
        add     eax, eax                                ; 644C _ 01. C0
        add     eax, edx                                ; 644E _ 01. D0
        shl     eax, 4                                  ; 6450 _ C1. E0, 04
        add     eax, ecx                                ; 6453 _ 01. C8
        add     eax, 8                                  ; 6455 _ 83. C0, 08
        mov     dword [ebp-8H], eax                     ; 6458 _ 89. 45, F8
        mov     dword [ebp-4H], 0                       ; 645B _ C7. 45, FC, 00000000
        jmp     ?_391                                   ; 6462 _ EB, 23

?_389:  mov     eax, dword [ebp-8H]                     ; 6464 _ 8B. 45, F8
        mov     edx, dword [ebp-4H]                     ; 6467 _ 8B. 55, FC
        mov     eax, dword [eax+edx*4+8H]               ; 646A _ 8B. 44 90, 08
        cmp     dword [ebp+8H], eax                     ; 646E _ 39. 45, 08
        jnz     ?_390                                   ; 6471 _ 75, 10
        mov     eax, dword [ebp-8H]                     ; 6473 _ 8B. 45, F8
        mov     edx, dword [ebp-4H]                     ; 6476 _ 8B. 55, FC
        mov     dword [eax+edx*4+8H], 0                 ; 6479 _ C7. 44 90, 08, 00000000
        jmp     ?_392                                   ; 6481 _ EB, 0E

?_390:  add     dword [ebp-4H], 1                       ; 6483 _ 83. 45, FC, 01
?_391:  mov     eax, dword [ebp-8H]                     ; 6487 _ 8B. 45, F8
        mov     eax, dword [eax]                        ; 648A _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 648C _ 39. 45, FC
        jl      ?_389                                   ; 648F _ 7C, D3
?_392:  mov     eax, dword [ebp-8H]                     ; 6491 _ 8B. 45, F8
        mov     eax, dword [eax]                        ; 6494 _ 8B. 00
        lea     edx, [eax-1H]                           ; 6496 _ 8D. 50, FF
        mov     eax, dword [ebp-8H]                     ; 6499 _ 8B. 45, F8
        mov     dword [eax], edx                        ; 649C _ 89. 10
        mov     eax, dword [ebp-8H]                     ; 649E _ 8B. 45, F8
        mov     eax, dword [eax+4H]                     ; 64A1 _ 8B. 40, 04
        cmp     dword [ebp-4H], eax                     ; 64A4 _ 39. 45, FC
        jge     ?_393                                   ; 64A7 _ 7D, 0F
        mov     eax, dword [ebp-8H]                     ; 64A9 _ 8B. 45, F8
        mov     eax, dword [eax+4H]                     ; 64AC _ 8B. 40, 04
        lea     edx, [eax-1H]                           ; 64AF _ 8D. 50, FF
        mov     eax, dword [ebp-8H]                     ; 64B2 _ 8B. 45, F8
        mov     dword [eax+4H], edx                     ; 64B5 _ 89. 50, 04
?_393:  mov     eax, dword [ebp-8H]                     ; 64B8 _ 8B. 45, F8
        mov     edx, dword [eax+4H]                     ; 64BB _ 8B. 50, 04
        mov     eax, dword [ebp-8H]                     ; 64BE _ 8B. 45, F8
        mov     eax, dword [eax]                        ; 64C1 _ 8B. 00
        cmp     edx, eax                                ; 64C3 _ 39. C2
        jl      ?_394                                   ; 64C5 _ 7C, 0A
        mov     eax, dword [ebp-8H]                     ; 64C7 _ 8B. 45, F8
        mov     dword [eax+4H], 0                       ; 64CA _ C7. 40, 04, 00000000
?_394:  mov     eax, dword [ebp+8H]                     ; 64D1 _ 8B. 45, 08
        mov     dword [eax+4H], 1                       ; 64D4 _ C7. 40, 04, 00000001
        jmp     ?_396                                   ; 64DB _ EB, 1B

?_395:  mov     eax, dword [ebp-4H]                     ; 64DD _ 8B. 45, FC
        lea     edx, [eax+1H]                           ; 64E0 _ 8D. 50, 01
        mov     eax, dword [ebp-8H]                     ; 64E3 _ 8B. 45, F8
        mov     ecx, dword [eax+edx*4+8H]               ; 64E6 _ 8B. 4C 90, 08
        mov     eax, dword [ebp-8H]                     ; 64EA _ 8B. 45, F8
        mov     edx, dword [ebp-4H]                     ; 64ED _ 8B. 55, FC
        mov     dword [eax+edx*4+8H], ecx               ; 64F0 _ 89. 4C 90, 08
        add     dword [ebp-4H], 1                       ; 64F4 _ 83. 45, FC, 01
?_396:  mov     eax, dword [ebp-8H]                     ; 64F8 _ 8B. 45, F8
        mov     eax, dword [eax]                        ; 64FB _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 64FD _ 39. 45, FC
        jl      ?_395                                   ; 6500 _ 7C, DB
        nop                                             ; 6502 _ 90
        leave                                           ; 6503 _ C9
        ret                                             ; 6504 _ C3
; _task_remove End of function

_task_switchsub:; Function begin
        push    ebp                                     ; 6505 _ 55
        mov     ebp, esp                                ; 6506 _ 89. E5
        sub     esp, 16                                 ; 6508 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 650B _ C7. 45, FC, 00000000
        jmp     ?_398                                   ; 6512 _ EB, 21

?_397:  mov     ecx, dword [_taskctl]                   ; 6514 _ 8B. 0D, 00000004(d)
        mov     edx, dword [ebp-4H]                     ; 651A _ 8B. 55, FC
        mov     eax, edx                                ; 651D _ 89. D0
        add     eax, eax                                ; 651F _ 01. C0
        add     eax, edx                                ; 6521 _ 01. D0
        shl     eax, 4                                  ; 6523 _ C1. E0, 04
        add     eax, ecx                                ; 6526 _ 01. C8
        add     eax, 8                                  ; 6528 _ 83. C0, 08
        mov     eax, dword [eax]                        ; 652B _ 8B. 00
        test    eax, eax                                ; 652D _ 85. C0
        jg      ?_399                                   ; 652F _ 7F, 0C
        add     dword [ebp-4H], 1                       ; 6531 _ 83. 45, FC, 01
?_398:  cmp     dword [ebp-4H], 9                       ; 6535 _ 83. 7D, FC, 09
        jle     ?_397                                   ; 6539 _ 7E, D9
        jmp     ?_400                                   ; 653B _ EB, 01

?_399:  nop                                             ; 653D _ 90
?_400:  mov     eax, dword [_taskctl]                   ; 653E _ A1, 00000004(d)
        mov     edx, dword [ebp-4H]                     ; 6543 _ 8B. 55, FC
        mov     dword [eax], edx                        ; 6546 _ 89. 10
        mov     eax, dword [_taskctl]                   ; 6548 _ A1, 00000004(d)
        mov     dword [eax+4H], 0                       ; 654D _ C7. 40, 04, 00000000
        nop                                             ; 6554 _ 90
        leave                                           ; 6555 _ C9
        ret                                             ; 6556 _ C3
; _task_switchsub End of function

_send_message:; Function begin
        push    ebp                                     ; 6557 _ 55
        mov     ebp, esp                                ; 6558 _ 89. E5
        sub     esp, 24                                 ; 655A _ 83. EC, 18
        mov     eax, dword [ebp+10H]                    ; 655D _ 8B. 45, 10
        movzx   eax, al                                 ; 6560 _ 0F B6. C0
        mov     edx, dword [ebp+0CH]                    ; 6563 _ 8B. 55, 0C
        add     edx, 16                                 ; 6566 _ 83. C2, 10
        mov     dword [esp+4H], eax                     ; 6569 _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 656D _ 89. 14 24
        call    _fifo8_put                              ; 6570 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 6575 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 6578 _ 89. 04 24
        call    _task_sleep                             ; 657B _ E8, FFFFFDC4
        nop                                             ; 6580 _ 90
        leave                                           ; 6581 _ C9
        ret                                             ; 6582 _ C3
; _send_message End of function

        nop                                             ; 6583 _ 90


_strcmp:
        push    ebp                                     ; 6584 _ 55
        mov     ebp, esp                                ; 6585 _ 89. E5
        sub     esp, 16                                 ; 6587 _ 83. EC, 10
        cmp     dword [ebp+8H], 0                       ; 658A _ 83. 7D, 08, 00
        jz      ?_401                                   ; 658E _ 74, 06
        cmp     dword [ebp+0CH], 0                      ; 6590 _ 83. 7D, 0C, 00
        jnz     ?_402                                   ; 6594 _ 75, 0A
?_401:  mov     eax, 0                                  ; 6596 _ B8, 00000000
        jmp     ?_409                                   ; 659B _ E9, 0000009B

?_402:  mov     dword [ebp-4H], 0                       ; 65A0 _ C7. 45, FC, 00000000
        jmp     ?_405                                   ; 65A7 _ EB, 25

?_403:  mov     edx, dword [ebp-4H]                     ; 65A9 _ 8B. 55, FC
        mov     eax, dword [ebp+8H]                     ; 65AC _ 8B. 45, 08
        add     eax, edx                                ; 65AF _ 01. D0
        movzx   edx, byte [eax]                         ; 65B1 _ 0F B6. 10
        mov     ecx, dword [ebp-4H]                     ; 65B4 _ 8B. 4D, FC
        mov     eax, dword [ebp+0CH]                    ; 65B7 _ 8B. 45, 0C
        add     eax, ecx                                ; 65BA _ 01. C8
        movzx   eax, byte [eax]                         ; 65BC _ 0F B6. 00
        cmp     dl, al                                  ; 65BF _ 38. C2
        jz      ?_404                                   ; 65C1 _ 74, 07
        mov     eax, 0                                  ; 65C3 _ B8, 00000000
        jmp     ?_409                                   ; 65C8 _ EB, 71

?_404:  add     dword [ebp-4H], 1                       ; 65CA _ 83. 45, FC, 01
?_405:  mov     edx, dword [ebp-4H]                     ; 65CE _ 8B. 55, FC
        mov     eax, dword [ebp+8H]                     ; 65D1 _ 8B. 45, 08
        add     eax, edx                                ; 65D4 _ 01. D0
        movzx   eax, byte [eax]                         ; 65D6 _ 0F B6. 00
        test    al, al                                  ; 65D9 _ 84. C0
        jz      ?_406                                   ; 65DB _ 74, 0F
        mov     edx, dword [ebp-4H]                     ; 65DD _ 8B. 55, FC
        mov     eax, dword [ebp+0CH]                    ; 65E0 _ 8B. 45, 0C
        add     eax, edx                                ; 65E3 _ 01. D0
        movzx   eax, byte [eax]                         ; 65E5 _ 0F B6. 00
        test    al, al                                  ; 65E8 _ 84. C0
        jnz     ?_403                                   ; 65EA _ 75, BD
?_406:  mov     edx, dword [ebp-4H]                     ; 65EC _ 8B. 55, FC
        mov     eax, dword [ebp+8H]                     ; 65EF _ 8B. 45, 08
        add     eax, edx                                ; 65F2 _ 01. D0
        movzx   eax, byte [eax]                         ; 65F4 _ 0F B6. 00
        test    al, al                                  ; 65F7 _ 84. C0
        jnz     ?_407                                   ; 65F9 _ 75, 16
        mov     edx, dword [ebp-4H]                     ; 65FB _ 8B. 55, FC
        mov     eax, dword [ebp+0CH]                    ; 65FE _ 8B. 45, 0C
        add     eax, edx                                ; 6601 _ 01. D0
        movzx   eax, byte [eax]                         ; 6603 _ 0F B6. 00
        test    al, al                                  ; 6606 _ 84. C0
        jz      ?_407                                   ; 6608 _ 74, 07
        mov     eax, 0                                  ; 660A _ B8, 00000000
        jmp     ?_409                                   ; 660F _ EB, 2A

?_407:  mov     edx, dword [ebp-4H]                     ; 6611 _ 8B. 55, FC
        mov     eax, dword [ebp+8H]                     ; 6614 _ 8B. 45, 08
        add     eax, edx                                ; 6617 _ 01. D0
        movzx   eax, byte [eax]                         ; 6619 _ 0F B6. 00
        test    al, al                                  ; 661C _ 84. C0
        jz      ?_408                                   ; 661E _ 74, 16
        mov     edx, dword [ebp-4H]                     ; 6620 _ 8B. 55, FC
        mov     eax, dword [ebp+0CH]                    ; 6623 _ 8B. 45, 0C
        add     eax, edx                                ; 6626 _ 01. D0
        movzx   eax, byte [eax]                         ; 6628 _ 0F B6. 00
        test    al, al                                  ; 662B _ 84. C0
        jz      ?_408                                   ; 662D _ 74, 07
        mov     eax, 0                                  ; 662F _ B8, 00000000
        jmp     ?_409                                   ; 6634 _ EB, 05

?_408:  mov     eax, 1                                  ; 6636 _ B8, 00000001
?_409:  leave                                           ; 663B _ C9
        ret                                             ; 663C _ C3

        nop                                             ; 663D _ 90
        nop                                             ; 663E _ 90
        nop                                             ; 663F _ 90



_memman:                                                ; dword
        dd 00100000H                                    ; 0000 _ 1048576 

_KEY_CONTROL:                                           ; byte
        db 1DH, 00H, 00H, 00H                           ; 0004 _ ....

_show_console_window:                                   ; byte
        db 01H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0008 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0010 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0018 _ ........

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

?_410:  db 00H                                          ; 0112 _ .

?_411:  db 00H, 00H, 00H, 00H, 00H                      ; 0113 _ .....

_mmx:   dd 0FFFFFFFFH                                   ; 0118 _ -1 

_mmy:   dd 0FFFFFFFFH                                   ; 011C _ -1 

_console_pos:                                           ; byte
        db 0F0H, 00H, 00H, 00H, 00H, 00H, 00H, 00H      ; 0120 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0128 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0130 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0138 _ ........

_table_rgb.2683:                                        ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0140 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0148 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0150 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0158 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 0160 _ ........
        db 00H, 84H, 00H, 84H, 84H, 84H, 84H, 84H       ; 0168 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0170 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0178 _ ........

_cursor.2743:                                           ; byte
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

_closebtn.2847:                                         ; byte
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


?_412:                                                  
        db 63H, 6FH, 75H, 6EH, 74H, 65H, 72H, 00H       ; 0000 _ counter.

?_413:                                                  ; byte
        db 74H, 61H, 73H, 6BH, 5FH, 61H, 00H            ; 0008 _ task_a.

?_414:                                                  ; byte
        db 63H, 6FH, 6EH, 73H, 6FH, 6CH, 65H, 00H       ; 000F _ console.

?_415:                                                  ; byte
        db 20H, 00H                                     ; 0017 _  .

?_416:                                                  ; byte
        db 66H, 72H, 65H, 65H, 20H, 00H                 ; 0019 _ free .

?_417:                                                  ; byte
        db 20H, 4BH, 42H, 00H                           ; 001F _  KB.

?_418:                                                  ; byte
        db 3EH, 00H                                     ; 0023 _ >.

?_419:                                                  ; byte
        db 6DH, 65H, 6DH, 00H                           ; 0025 _ mem.

?_420:                                                  ; byte
        db 63H, 6CH, 73H, 00H                           ; 0029 _ cls.

?_421:                                                  ; byte
        db 61H, 6CH, 69H, 65H, 6EH, 77H, 61H, 72H       ; 002D _ alienwar
        db 00H                                          ; 0035 _ .

?_422:                                                  ; byte
        db 61H, 6CH, 69H, 65H, 6EH, 77H, 61H, 72H       ; 0036 _ alienwar
        db 2EH, 65H, 78H, 65H, 00H                      ; 003E _ .exe.

?_423:                                                  ; byte
        db 63H, 69H, 72H, 63H, 6CH, 65H, 00H            ; 0043 _ circle.

?_424:                                                  ; byte
        db 63H, 69H, 72H, 63H, 6CH, 65H, 2EH, 65H       ; 004A _ circle.e
        db 78H, 65H, 00H                                ; 0052 _ xe.

?_425:                                                  ; byte
        db 64H, 69H, 72H, 00H                           ; 0055 _ dir.

?_426:                                                  ; byte
        db 65H, 78H, 69H, 74H, 00H                      ; 0059 _ exit.

?_427:                                                  ; byte
        db 73H, 74H, 61H, 72H, 74H, 00H                 ; 005E _ start.

?_428:                                                  ; byte
        db 6EH, 63H, 73H, 74H, 00H                      ; 0064 _ ncst.

?_429:                                                  ; byte
        db 63H, 72H, 61H, 63H, 6BH, 00H                 ; 0069 _ crack.

?_430:                                                  ; byte
        db 63H, 72H, 61H, 63H, 6BH, 2EH, 65H, 78H       ; 006F _ crack.ex
        db 65H, 00H                                     ; 0077 _ e.

?_431:                                                  ; byte
        db 6BH, 65H, 79H, 62H, 6FH, 61H, 72H, 64H       ; 0079 _ keyboard
        db 00H                                          ; 0081 _ .

?_432:                                                  ; byte
        db 75H, 73H, 65H, 72H, 20H, 70H, 72H, 6FH       ; 0082 _ user pro
        db 63H, 00H                                     ; 008A _ c.

?_433:                                                  ; byte
        db 70H, 61H, 67H, 65H, 20H, 69H, 73H, 3AH       ; 008C _ page is:
        db 20H, 00H                                     ; 0094 _  .

?_434:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0096 _ BaseAddr
        db 4CH, 3AH, 20H, 00H                           ; 009E _ L: .

?_435:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 00A2 _ BaseAddr
        db 48H, 3AH, 20H, 00H                           ; 00AA _ H: .

?_436:                                                  ; byte
        db 6CH, 65H, 6EH, 67H, 74H, 68H, 4CH, 6FH       ; 00AE _ lengthLo
        db 77H, 3AH, 20H, 00H, 00H, 00H                 ; 00B6 _ w: ...

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

_keyinfo:                                               ; byte
        resb    24                                      ; 0014

?_437:  resd    1                                       ; 002C

_mouseinfo:                                             ; byte
        resb    48                                      ; 0030

_keybuf:                                                ; byte
        resb    32                                      ; 0060

_mousebuf:                                              ; byte
        resb    128                                     ; 0080

_mdec:                                                  ; byte
        resb    12                                      ; 0100

?_438:  resd    1                                       ; 010C

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

_bootInfo:                                              ; dword
        resd    1                                       ; 027C

?_439:  resw    1                                       ; 0280

?_440:  resw    1                                       ; 0282

_task_a.2383:                                           ; dword
        resd    7                                       ; 0284

_tss_a.2382:                                            ; byte
        resb    128                                     ; 02A0

_tss_b.2381:                                            ; byte
        resb    104                                     ; 0320

_task_b.2371:                                           ; byte
        resb    12                                      ; 0388

_str.2781:                                              ; byte
        resb    1                                       ; 0394

?_441:  resb    9                                       ; 0395

?_442:  resb    2                                       ; 039E

_timerctl:                                              ; byte
        resb    8032                                    ; 03A0

_task_timer:                                            ; byte
        resb    4                                       ; 2300

_taskctl:                                               ; byte
        resb    4                                       ; 2304


