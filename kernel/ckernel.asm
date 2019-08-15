; Disassembly of file: ckernel.o
; Thu Aug 15 13:35:26 2019
; Mode: 32 bits
; Syntax: YASM/NASM
; Instruction set: Pentium Pro







_launch:
        push    ebp                                     ; 0000 _ 55
        mov     ebp, esp                                ; 0001 _ 89. E5
        push    ebx                                     ; 0003 _ 53
        sub     esp, 132                                ; 0004 _ 81. EC, 00000084
        mov     dword [esp], _bootInfo                  ; 000A _ C7. 04 24, 0000027C(d)
        call    _initBootInfo                           ; 0011 _ E8, 00000000(rel)
        mov     eax, dword [_bootInfo]                  ; 0016 _ A1, 0000027C(d)
        mov     dword [ebp-18H], eax                    ; 001B _ 89. 45, E8
        movzx   eax, word [?_431]                       ; 001E _ 0F B7. 05, 00000280(d)
        cwde                                            ; 0025 _ 98
        mov     dword [_xsize], eax                     ; 0026 _ A3, 0000013C(d)
        movzx   eax, word [?_432]                       ; 002B _ 0F B7. 05, 00000282(d)
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
        call    _init_palette                           ; 014B _ E8, 00000000(rel)
        call    _init_keyboard                          ; 0150 _ E8, 00002C71
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
        call    _init_screen8                           ; 0281 _ E8, 00000000(rel)
        mov     dword [esp+4H], 99                      ; 0286 _ C7. 44 24, 04, 00000063
        mov     dword [esp], _buf_mouse                 ; 028E _ C7. 04 24, 00000160(d)
        call    _init_mouse_cursor                      ; 0295 _ E8, 00000000(rel)
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
        mov     dword [esp+4H], ?_410                   ; 032B _ C7. 44 24, 04, 00000000(d)
        mov     dword [esp], eax                        ; 0333 _ 89. 04 24
        call    _message_box                            ; 0336 _ E8, 00000000(rel)
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
        call    _enable_mouse                           ; 038A _ E8, 00002A72
        mov     eax, dword [_memman]                    ; 038F _ A1, 00000000(d)
        mov     dword [esp], eax                        ; 0394 _ 89. 04 24
        call    _task_init                              ; 0397 _ E8, 00000000(rel)
        mov     dword [_task_a.2390], eax               ; 039C _ A3, 00000284(d)
        mov     eax, dword [_task_a.2390]               ; 03A1 _ A1, 00000284(d)
        mov     dword [?_430], eax                      ; 03A6 _ A3, 0000002C(d)
        mov     eax, dword [_task_a.2390]               ; 03AB _ A1, 00000284(d)
        mov     dword [_task_main], eax                 ; 03B0 _ A3, 00000274(d)
        mov     eax, dword [_task_a.2390]               ; 03B5 _ A1, 00000284(d)
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
        mov     dword [esp+8H], ?_411                   ; 05E4 _ C7. 44 24, 08, 00000008(d)
        mov     dword [esp+4H], edx                     ; 05EC _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 05F0 _ 89. 04 24
        call    _make_wtitle8                           ; 05F3 _ E8, 00000000(rel)
        mov     eax, dword [_current_console_task]      ; 05F8 _ A1, 00000278(d)
        test    eax, eax                                ; 05FD _ 85. C0
        jz      ?_008                                   ; 05FF _ 74, 2C
        mov     eax, dword [_current_console_task]      ; 0601 _ A1, 00000278(d)
        mov     edx, dword [eax+0B4H]                   ; 0606 _ 8B. 90, 000000B4
        mov     eax, dword [_shtctl]                    ; 060C _ A1, 00000264(d)
        mov     dword [esp+0CH], 1                      ; 0611 _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], ?_412                   ; 0619 _ C7. 44 24, 08, 0000000F(d)
        mov     dword [esp+4H], edx                     ; 0621 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0625 _ 89. 04 24
        call    _make_wtitle8                           ; 0628 _ E8, 00000000(rel)
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
        mov     dword [esp+8H], ?_411                   ; 0677 _ C7. 44 24, 08, 00000008(d)
        mov     dword [esp+4H], edx                     ; 067F _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0683 _ 89. 04 24
        call    _make_wtitle8                           ; 0686 _ E8, 00000000(rel)
        mov     eax, dword [_current_console_task]      ; 068B _ A1, 00000278(d)
        test    eax, eax                                ; 0690 _ 85. C0
        jz      ?_010                                   ; 0692 _ 74, 2C
        mov     eax, dword [_current_console_task]      ; 0694 _ A1, 00000278(d)
        mov     edx, dword [eax+0B4H]                   ; 0699 _ 8B. 90, 000000B4
        mov     eax, dword [_shtctl]                    ; 069F _ A1, 00000264(d)
        mov     dword [esp+0CH], 0                      ; 06A4 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], ?_412                   ; 06AC _ C7. 44 24, 08, 0000000F(d)
        mov     dword [esp+4H], edx                     ; 06B4 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 06B8 _ 89. 04 24
        call    _make_wtitle8                           ; 06BB _ E8, 00000000(rel)
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
        call    _showString                             ; 07EC _ E8, 00000000(rel)
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
        mov     eax, dword [_task_a.2390]               ; 0871 _ A1, 00000284(d)
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
        call    _show_mouse_info                        ; 08AC _ E8, 00000000(rel)
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
        call    _boxfill8                               ; 09EF _ E8, 00000000(rel)
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
        add     eax, _keytable                          ; 0B4B _ 05, 00000000(d)
        movzx   eax, byte [eax]                         ; 0B50 _ 0F B6. 00
        test    al, al                                  ; 0B53 _ 84. C0
        jz      ?_032                                   ; 0B55 _ 74, 2F
        mov     eax, dword [ebp+8H]                     ; 0B57 _ 8B. 45, 08
        add     eax, _keytable                          ; 0B5A _ 05, 00000000(d)
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
        add     eax, _keytable1                         ; 0B98 _ 05, 00000000(d)
        movzx   eax, byte [eax]                         ; 0B9D _ 0F B6. 00
        test    al, al                                  ; 0BA0 _ 84. C0
        jz      ?_033                                   ; 0BA2 _ 74, 10
        mov     eax, dword [ebp+8H]                     ; 0BA4 _ 8B. 45, 08
        add     eax, _keytable1                         ; 0BA7 _ 05, 00000000(d)
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
        mov     dword [esp+8H], ?_412                   ; 0C37 _ C7. 44 24, 08, 0000000F(d)
        mov     edx, dword [ebp-0CH]                    ; 0C3F _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 0C42 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0C46 _ 89. 04 24
        call    _make_window8                           ; 0C49 _ E8, 00000000(rel)
        jmp     ?_038                                   ; 0C4E _ EB, 24

?_037:  mov     eax, dword [_shtctl]                    ; 0C50 _ A1, 00000264(d)
        mov     dword [esp+0CH], 0                      ; 0C55 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], ?_412                   ; 0C5D _ C7. 44 24, 08, 0000000F(d)
        mov     edx, dword [ebp-0CH]                    ; 0C65 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 0C68 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0C6C _ 89. 04 24
        call    _make_window8                           ; 0C6F _ E8, 00000000(rel)
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
        call    _make_textbox8                          ; 0CDA _ E8, 00000000(rel)
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
        mov     dword [esp+8H], ?_412                   ; 0D1D _ C7. 44 24, 08, 0000000F(d)
        mov     dword [esp+4H], edx                     ; 0D25 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0D29 _ 89. 04 24
        call    _make_wtitle8                           ; 0D2C _ E8, 00000000(rel)
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
        call    _showString                             ; 1048 _ E8, 00000000(rel)
        mov     dword [ebp-20H], 136                    ; 104D _ C7. 45, E0, 00000088
        mov     eax, dword [ebp-0CH]                    ; 1054 _ 8B. 45, F4
        mov     eax, dword [eax+1CH]                    ; 1057 _ 8B. 40, 1C
        mov     dword [esp], eax                        ; 105A _ 89. 04 24
        call    _intToHexStr                            ; 105D _ E8, 00000000(rel)
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
        call    _showString                             ; 109D _ E8, 00000000(rel)
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
        mov     dword [esp+14H], ?_413                  ; 12C5 _ C7. 44 24, 14, 00000017(d)
        mov     dword [esp+10H], 7                      ; 12CD _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ebx                    ; 12D5 _ 89. 5C 24, 0C
        mov     dword [esp+8H], ecx                     ; 12D9 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 12DD _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 12E1 _ 89. 04 24
        call    _showString                             ; 12E4 _ E8, 00000000(rel)
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
        call    _showString                             ; 13D7 _ E8, 00000000(rel)
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
        call    _intToHexStr                            ; 14EC _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 14F1 _ 89. 45, F0
        mov     eax, dword [ebp-0CH]                    ; 14F4 _ 8B. 45, F4
        mov     ecx, dword [eax+9CH]                    ; 14F7 _ 8B. 88, 0000009C
        mov     eax, dword [ebp-0CH]                    ; 14FD _ 8B. 45, F4
        mov     edx, dword [eax+94H]                    ; 1500 _ 8B. 90, 00000094
        mov     eax, dword [_shtctl]                    ; 1506 _ A1, 00000264(d)
        mov     dword [esp+14H], ?_414                  ; 150B _ C7. 44 24, 14, 00000019(d)
        mov     dword [esp+10H], 7                      ; 1513 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ecx                    ; 151B _ 89. 4C 24, 0C
        mov     dword [esp+8H], 16                      ; 151F _ C7. 44 24, 08, 00000010
        mov     dword [esp+4H], edx                     ; 1527 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 152B _ 89. 04 24
        call    _showString                             ; 152E _ E8, 00000000(rel)
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
        call    _showString                             ; 156C _ E8, 00000000(rel)
        mov     eax, dword [ebp-0CH]                    ; 1571 _ 8B. 45, F4
        mov     ecx, dword [eax+9CH]                    ; 1574 _ 8B. 88, 0000009C
        mov     eax, dword [ebp-0CH]                    ; 157A _ 8B. 45, F4
        mov     edx, dword [eax+94H]                    ; 157D _ 8B. 90, 00000094
        mov     eax, dword [_shtctl]                    ; 1583 _ A1, 00000264(d)
        mov     dword [esp+14H], ?_415                  ; 1588 _ C7. 44 24, 14, 0000001F(d)
        mov     dword [esp+10H], 7                      ; 1590 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ecx                    ; 1598 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 126                     ; 159C _ C7. 44 24, 08, 0000007E
        mov     dword [esp+4H], edx                     ; 15A4 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 15A8 _ 89. 04 24
        call    _showString                             ; 15AB _ E8, 00000000(rel)
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
        mov     dword [esp+14H], ?_416                  ; 16B5 _ C7. 44 24, 14, 00000023(d)
        mov     dword [esp+10H], 7                      ; 16BD _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 28                     ; 16C5 _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 8                       ; 16CD _ C7. 44 24, 08, 00000008
        mov     dword [esp+4H], edx                     ; 16D5 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 16D9 _ 89. 04 24
        call    _showString                             ; 16DC _ E8, 00000000(rel)
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
        call    _file_loadfile                          ; 172B _ E8, 00001852
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
        mov     dword [esp+14H], ?_416                  ; 1B88 _ C7. 44 24, 14, 00000023(d)
        mov     dword [esp+10H], 7                      ; 1B90 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 28                     ; 1B98 _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 8                       ; 1BA0 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp+8H]                     ; 1BA8 _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 1BAB _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1BAF _ 89. 04 24
        call    _showString                             ; 1BB2 _ E8, 00000000(rel)
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
        mov     dword [esp+4H], ?_417                   ; 1DC3 _ C7. 44 24, 04, 00000025(d)
        mov     eax, dword [ebp-1CH]                    ; 1DCB _ 8B. 45, E4
        mov     dword [esp], eax                        ; 1DCE _ 89. 04 24
        call    _strcmp                                 ; 1DD1 _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 1DD6 _ 83. F8, 01
        jnz     ?_095                                   ; 1DD9 _ 75, 10
        mov     eax, dword [ebp+0CH]                    ; 1DDB _ 8B. 45, 0C
        mov     dword [esp], eax                        ; 1DDE _ 89. 04 24
        call    _cmd_mem                                ; 1DE1 _ E8, FFFFF6D2
        jmp     ?_104                                   ; 1DE6 _ E9, 0000016A

?_095:  mov     dword [esp+4H], ?_418                   ; 1DEB _ C7. 44 24, 04, 00000029(d)
        mov     eax, dword [ebp-1CH]                    ; 1DF3 _ 8B. 45, E4
        mov     dword [esp], eax                        ; 1DF6 _ 89. 04 24
        call    _strcmp                                 ; 1DF9 _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 1DFE _ 83. F8, 01
        jnz     ?_096                                   ; 1E01 _ 75, 0A
        call    _cmd_cls                                ; 1E03 _ E8, FFFFF7DA
        jmp     ?_104                                   ; 1E08 _ E9, 00000148

?_096:  mov     dword [esp+4H], ?_419                   ; 1E0D _ C7. 44 24, 04, 0000002D(d)
        mov     eax, dword [ebp-1CH]                    ; 1E15 _ 8B. 45, E4
        mov     dword [esp], eax                        ; 1E18 _ 89. 04 24
        call    _strcmp                                 ; 1E1B _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 1E20 _ 83. F8, 01
        jnz     ?_097                                   ; 1E23 _ 75, 11
        mov     dword [esp], ?_420                      ; 1E25 _ C7. 04 24, 00000036(d)
        call    _cmd_execute_program                    ; 1E2C _ E8, FFFFF8B5
        jmp     ?_104                                   ; 1E31 _ E9, 0000011F

?_097:  mov     dword [esp+4H], ?_421                   ; 1E36 _ C7. 44 24, 04, 00000043(d)
        mov     eax, dword [ebp-1CH]                    ; 1E3E _ 8B. 45, E4
        mov     dword [esp], eax                        ; 1E41 _ 89. 04 24
        call    _strcmp                                 ; 1E44 _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 1E49 _ 83. F8, 01
        jnz     ?_098                                   ; 1E4C _ 75, 11
        mov     dword [esp], ?_422                      ; 1E4E _ C7. 04 24, 0000004A(d)
        call    _cmd_execute_program                    ; 1E55 _ E8, FFFFF88C
        jmp     ?_104                                   ; 1E5A _ E9, 000000F6

?_098:  mov     dword [esp+4H], ?_423                   ; 1E5F _ C7. 44 24, 04, 00000055(d)
        mov     eax, dword [ebp-1CH]                    ; 1E67 _ 8B. 45, E4
        mov     dword [esp], eax                        ; 1E6A _ 89. 04 24
        call    _strcmp                                 ; 1E6D _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 1E72 _ 83. F8, 01
        jnz     ?_099                                   ; 1E75 _ 75, 0A
        call    _cmd_dir                                ; 1E77 _ E8, FFFFF0C9
        jmp     ?_104                                   ; 1E7C _ E9, 000000D4

?_099:  mov     dword [esp+4H], ?_424                   ; 1E81 _ C7. 44 24, 04, 00000059(d)
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

?_101:  mov     dword [esp+4H], ?_425                   ; 1EE7 _ C7. 44 24, 04, 0000005E(d)
        mov     eax, dword [ebp-1CH]                    ; 1EEF _ 8B. 45, E4
        mov     dword [esp], eax                        ; 1EF2 _ 89. 04 24
        call    _strcmp                                 ; 1EF5 _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 1EFA _ 83. F8, 01
        jnz     ?_102                                   ; 1EFD _ 75, 0D
        lea     eax, [ebp-55H]                          ; 1EFF _ 8D. 45, AB
        mov     dword [esp], eax                        ; 1F02 _ 89. 04 24
        call    _cmd_start                              ; 1F05 _ E8, FFFFFA40
        jmp     ?_104                                   ; 1F0A _ EB, 49

?_102:  mov     dword [esp+4H], ?_426                   ; 1F0C _ C7. 44 24, 04, 00000064(d)
        mov     eax, dword [ebp-1CH]                    ; 1F14 _ 8B. 45, E4
        mov     dword [esp], eax                        ; 1F17 _ 89. 04 24
        call    _strcmp                                 ; 1F1A _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 1F1F _ 83. F8, 01
        jnz     ?_103                                   ; 1F22 _ 75, 0D
        lea     eax, [ebp-55H]                          ; 1F24 _ 8D. 45, AB
        mov     dword [esp], eax                        ; 1F27 _ 89. 04 24
        call    _cmd_ncst                               ; 1F2A _ E8, FFFFFAEF
        jmp     ?_104                                   ; 1F2F _ EB, 24

?_103:  mov     dword [esp+4H], ?_427                   ; 1F31 _ C7. 44 24, 04, 00000069(d)
        mov     eax, dword [ebp-1CH]                    ; 1F39 _ 8B. 45, E4
        mov     dword [esp], eax                        ; 1F3C _ 89. 04 24
        call    _strcmp                                 ; 1F3F _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 1F44 _ 83. F8, 01
        jnz     ?_104                                   ; 1F47 _ 75, 0C
        mov     dword [esp], ?_428                      ; 1F49 _ C7. 04 24, 0000006F(d)
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
        mov     dword [esp+14H], ?_429                  ; 22F0 _ C7. 44 24, 14, 00000079(d)
        mov     dword [esp+10H], 7                      ; 22F8 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 176                    ; 2300 _ C7. 44 24, 0C, 000000B0
        mov     dword [esp+8H], 0                       ; 2308 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 2310 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2314 _ 89. 04 24
        call    _showString                             ; 2317 _ E8, 00000000(rel)
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
        call    _make_window8                           ; 25E0 _ E8, 00000000(rel)
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
        call    _showString                             ; 26AB _ E8, 00000000(rel)
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
        call    _boxfill8                               ; 2738 _ E8, 00000000(rel)
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
        call    _file_loadfile                          ; 298F _ E8, 000005EE
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
        call    _showString                             ; 2C47 _ E8, 00000000(rel)
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
        mov     dword [esp+14H], ?_416                  ; 2D6C _ C7. 44 24, 14, 00000023(d)
        mov     dword [esp+10H], 7                      ; 2D74 _ C7. 44 24, 10, 00000007
        mov     edx, dword [ebp+8H]                     ; 2D7C _ 8B. 55, 08
        mov     dword [esp+0CH], edx                    ; 2D7F _ 89. 54 24, 0C
        mov     dword [esp+8H], 8                       ; 2D83 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp+0CH]                    ; 2D8B _ 8B. 55, 0C
        mov     dword [esp+4H], edx                     ; 2D8E _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2D92 _ 89. 04 24
        call    _showString                             ; 2D95 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 2D9A _ 8B. 45, 08
        jmp     ?_178                                   ; 2D9D _ EB, 02

?_177:  nop                                             ; 2D9F _ 90
        nop                                             ; 2DA0 _ 90
?_178:  add     esp, 52                                 ; 2DA1 _ 83. C4, 34
        pop     ebx                                     ; 2DA4 _ 5B
        pop     ebp                                     ; 2DA5 _ 5D
        ret                                             ; 2DA6 _ C3
; _cons_newline End of function

_wait_KBC_sendready:; Function begin
        push    ebp                                     ; 2DA7 _ 55
        mov     ebp, esp                                ; 2DA8 _ 89. E5
        sub     esp, 24                                 ; 2DAA _ 83. EC, 18
?_179:  mov     dword [esp], 100                        ; 2DAD _ C7. 04 24, 00000064
        call    _io_in8                                 ; 2DB4 _ E8, 00000000(rel)
        and     eax, 02H                                ; 2DB9 _ 83. E0, 02
        test    eax, eax                                ; 2DBC _ 85. C0
        jz      ?_180                                   ; 2DBE _ 74, 02
        jmp     ?_179                                   ; 2DC0 _ EB, EB
; _wait_KBC_sendready End of function

?_180:  ; Local function
        nop                                             ; 2DC2 _ 90
        nop                                             ; 2DC3 _ 90
        leave                                           ; 2DC4 _ C9
        ret                                             ; 2DC5 _ C3

_init_keyboard:; Function begin
        push    ebp                                     ; 2DC6 _ 55
        mov     ebp, esp                                ; 2DC7 _ 89. E5
        sub     esp, 24                                 ; 2DC9 _ 83. EC, 18
        call    _wait_KBC_sendready                     ; 2DCC _ E8, FFFFFFD6
        mov     dword [esp+4H], 96                      ; 2DD1 _ C7. 44 24, 04, 00000060
        mov     dword [esp], 100                        ; 2DD9 _ C7. 04 24, 00000064
        call    _io_out8                                ; 2DE0 _ E8, 00000000(rel)
        call    _wait_KBC_sendready                     ; 2DE5 _ E8, FFFFFFBD
        mov     dword [esp+4H], 71                      ; 2DEA _ C7. 44 24, 04, 00000047
        mov     dword [esp], 96                         ; 2DF2 _ C7. 04 24, 00000060
        call    _io_out8                                ; 2DF9 _ E8, 00000000(rel)
        nop                                             ; 2DFE _ 90
        leave                                           ; 2DFF _ C9
        ret                                             ; 2E00 _ C3
; _init_keyboard End of function

_enable_mouse:; Function begin
        push    ebp                                     ; 2E01 _ 55
        mov     ebp, esp                                ; 2E02 _ 89. E5
        sub     esp, 24                                 ; 2E04 _ 83. EC, 18
        call    _wait_KBC_sendready                     ; 2E07 _ E8, FFFFFF9B
        mov     dword [esp+4H], 212                     ; 2E0C _ C7. 44 24, 04, 000000D4
        mov     dword [esp], 100                        ; 2E14 _ C7. 04 24, 00000064
        call    _io_out8                                ; 2E1B _ E8, 00000000(rel)
        call    _wait_KBC_sendready                     ; 2E20 _ E8, FFFFFF82
        mov     dword [esp+4H], 244                     ; 2E25 _ C7. 44 24, 04, 000000F4
        mov     dword [esp], 96                         ; 2E2D _ C7. 04 24, 00000060
        call    _io_out8                                ; 2E34 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 2E39 _ 8B. 45, 08
        mov     byte [eax+3H], 0                        ; 2E3C _ C6. 40, 03, 00
        nop                                             ; 2E40 _ 90
        leave                                           ; 2E41 _ C9
        ret                                             ; 2E42 _ C3
; _enable_mouse End of function

_mouse_decode:; Function begin
        push    ebp                                     ; 2E43 _ 55
        mov     ebp, esp                                ; 2E44 _ 89. E5
        sub     esp, 4                                  ; 2E46 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 2E49 _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 2E4C _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 2E4F _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 2E52 _ 0F B6. 40, 03
        test    al, al                                  ; 2E56 _ 84. C0
        jnz     ?_182                                   ; 2E58 _ 75, 17
        cmp     byte [ebp-4H], -6                       ; 2E5A _ 80. 7D, FC, FA
        jnz     ?_181                                   ; 2E5E _ 75, 07
        mov     eax, dword [ebp+8H]                     ; 2E60 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 2E63 _ C6. 40, 03, 01
?_181:  mov     eax, 0                                  ; 2E67 _ B8, 00000000
        jmp     ?_189                                   ; 2E6C _ E9, 0000010F

?_182:  mov     eax, dword [ebp+8H]                     ; 2E71 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 2E74 _ 0F B6. 40, 03
        cmp     al, 1                                   ; 2E78 _ 3C, 01
        jnz     ?_184                                   ; 2E7A _ 75, 28
        movzx   eax, byte [ebp-4H]                      ; 2E7C _ 0F B6. 45, FC
        and     eax, 0C8H                               ; 2E80 _ 25, 000000C8
        cmp     eax, 8                                  ; 2E85 _ 83. F8, 08
        jnz     ?_183                                   ; 2E88 _ 75, 10
        mov     edx, dword [ebp+8H]                     ; 2E8A _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 2E8D _ 0F B6. 45, FC
        mov     byte [edx], al                          ; 2E91 _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 2E93 _ 8B. 45, 08
        mov     byte [eax+3H], 2                        ; 2E96 _ C6. 40, 03, 02
?_183:  mov     eax, 0                                  ; 2E9A _ B8, 00000000
        jmp     ?_189                                   ; 2E9F _ E9, 000000DC

?_184:  mov     eax, dword [ebp+8H]                     ; 2EA4 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 2EA7 _ 0F B6. 40, 03
        cmp     al, 2                                   ; 2EAB _ 3C, 02
        jnz     ?_185                                   ; 2EAD _ 75, 1B
        mov     edx, dword [ebp+8H]                     ; 2EAF _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 2EB2 _ 0F B6. 45, FC
        mov     byte [edx+1H], al                       ; 2EB6 _ 88. 42, 01
        mov     eax, dword [ebp+8H]                     ; 2EB9 _ 8B. 45, 08
        mov     byte [eax+3H], 3                        ; 2EBC _ C6. 40, 03, 03
        mov     eax, 0                                  ; 2EC0 _ B8, 00000000
        jmp     ?_189                                   ; 2EC5 _ E9, 000000B6

?_185:  mov     eax, dword [ebp+8H]                     ; 2ECA _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 2ECD _ 0F B6. 40, 03
        cmp     al, 3                                   ; 2ED1 _ 3C, 03
        jne     ?_188                                   ; 2ED3 _ 0F 85, 000000A2
        mov     edx, dword [ebp+8H]                     ; 2ED9 _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 2EDC _ 0F B6. 45, FC
        mov     byte [edx+2H], al                       ; 2EE0 _ 88. 42, 02
        mov     eax, dword [ebp+8H]                     ; 2EE3 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 2EE6 _ C6. 40, 03, 01
        mov     eax, dword [ebp+8H]                     ; 2EEA _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 2EED _ 0F B6. 00
        movzx   eax, al                                 ; 2EF0 _ 0F B6. C0
        and     eax, 07H                                ; 2EF3 _ 83. E0, 07
        mov     edx, eax                                ; 2EF6 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2EF8 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 2EFB _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 2EFE _ 8B. 45, 08
        movzx   eax, byte [eax+1H]                      ; 2F01 _ 0F B6. 40, 01
        movzx   eax, al                                 ; 2F05 _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 2F08 _ 8B. 55, 08
        mov     dword [edx+4H], eax                     ; 2F0B _ 89. 42, 04
        mov     eax, dword [ebp+8H]                     ; 2F0E _ 8B. 45, 08
        movzx   eax, byte [eax+2H]                      ; 2F11 _ 0F B6. 40, 02
        movzx   eax, al                                 ; 2F15 _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 2F18 _ 8B. 55, 08
        mov     dword [edx+8H], eax                     ; 2F1B _ 89. 42, 08
        mov     eax, dword [ebp+8H]                     ; 2F1E _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 2F21 _ 0F B6. 00
        movzx   eax, al                                 ; 2F24 _ 0F B6. C0
        and     eax, 10H                                ; 2F27 _ 83. E0, 10
        test    eax, eax                                ; 2F2A _ 85. C0
        jz      ?_186                                   ; 2F2C _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 2F2E _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 2F31 _ 8B. 40, 04
        or      eax, 0FFFFFF00H                         ; 2F34 _ 0D, FFFFFF00
        mov     edx, eax                                ; 2F39 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2F3B _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 2F3E _ 89. 50, 04
?_186:  mov     eax, dword [ebp+8H]                     ; 2F41 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 2F44 _ 0F B6. 00
        movzx   eax, al                                 ; 2F47 _ 0F B6. C0
        and     eax, 20H                                ; 2F4A _ 83. E0, 20
        test    eax, eax                                ; 2F4D _ 85. C0
        jz      ?_187                                   ; 2F4F _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 2F51 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2F54 _ 8B. 40, 08
        or      eax, 0FFFFFF00H                         ; 2F57 _ 0D, FFFFFF00
        mov     edx, eax                                ; 2F5C _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2F5E _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 2F61 _ 89. 50, 08
?_187:  mov     eax, dword [ebp+8H]                     ; 2F64 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2F67 _ 8B. 40, 08
        neg     eax                                     ; 2F6A _ F7. D8
        mov     edx, eax                                ; 2F6C _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2F6E _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 2F71 _ 89. 50, 08
        mov     eax, 1                                  ; 2F74 _ B8, 00000001
        jmp     ?_189                                   ; 2F79 _ EB, 05

?_188:  mov     eax, 4294967295                         ; 2F7B _ B8, FFFFFFFF
?_189:  leave                                           ; 2F80 _ C9
        ret                                             ; 2F81 _ C3
; _mouse_decode End of function

_file_loadfile:; Function begin
        push    ebp                                     ; 2F82 _ 55
        mov     ebp, esp                                ; 2F83 _ 89. E5
        sub     esp, 56                                 ; 2F85 _ 83. EC, 38
        mov     dword [ebp-0CH], 88064                  ; 2F88 _ C7. 45, F4, 00015800
        mov     eax, dword [_memman]                    ; 2F8F _ A1, 00000000(d)
        mov     dword [esp+4H], 13                      ; 2F94 _ C7. 44 24, 04, 0000000D
        mov     dword [esp], eax                        ; 2F9C _ 89. 04 24
        call    _memman_alloc                           ; 2F9F _ E8, 00000000(rel)
        mov     dword [ebp-1CH], eax                    ; 2FA4 _ 89. 45, E4
        jmp     ?_202                                   ; 2FA7 _ E9, 00000143

?_190:  mov     dword [ebp-10H], 0                      ; 2FAC _ C7. 45, F0, 00000000
        jmp     ?_192                                   ; 2FB3 _ EB, 0F

?_191:  mov     edx, dword [ebp-10H]                    ; 2FB5 _ 8B. 55, F0
        mov     eax, dword [ebp-1CH]                    ; 2FB8 _ 8B. 45, E4
        add     eax, edx                                ; 2FBB _ 01. D0
        mov     byte [eax], 0                           ; 2FBD _ C6. 00, 00
        add     dword [ebp-10H], 1                      ; 2FC0 _ 83. 45, F0, 01
?_192:  cmp     dword [ebp-10H], 11                     ; 2FC4 _ 83. 7D, F0, 0B
        jle     ?_191                                   ; 2FC8 _ 7E, EB
        mov     dword [ebp-10H], 0                      ; 2FCA _ C7. 45, F0, 00000000
        jmp     ?_194                                   ; 2FD1 _ EB, 2A

?_193:  mov     edx, dword [ebp-0CH]                    ; 2FD3 _ 8B. 55, F4
        mov     eax, dword [ebp-10H]                    ; 2FD6 _ 8B. 45, F0
        add     eax, edx                                ; 2FD9 _ 01. D0
        movzx   eax, byte [eax]                         ; 2FDB _ 0F B6. 00
        test    al, al                                  ; 2FDE _ 84. C0
        jz      ?_195                                   ; 2FE0 _ 74, 23
        mov     edx, dword [ebp-0CH]                    ; 2FE2 _ 8B. 55, F4
        mov     eax, dword [ebp-10H]                    ; 2FE5 _ 8B. 45, F0
        add     eax, edx                                ; 2FE8 _ 01. D0
        movzx   ecx, byte [eax]                         ; 2FEA _ 0F B6. 08
        mov     edx, dword [ebp-10H]                    ; 2FED _ 8B. 55, F0
        mov     eax, dword [ebp-1CH]                    ; 2FF0 _ 8B. 45, E4
        add     eax, edx                                ; 2FF3 _ 01. D0
        mov     edx, ecx                                ; 2FF5 _ 89. CA
        mov     byte [eax], dl                          ; 2FF7 _ 88. 10
        add     dword [ebp-10H], 1                      ; 2FF9 _ 83. 45, F0, 01
?_194:  cmp     dword [ebp-10H], 7                      ; 2FFD _ 83. 7D, F0, 07
        jle     ?_193                                   ; 3001 _ 7E, D0
        jmp     ?_196                                   ; 3003 _ EB, 01

?_195:  nop                                             ; 3005 _ 90
?_196:  mov     dword [ebp-14H], 0                      ; 3006 _ C7. 45, EC, 00000000
        mov     edx, dword [ebp-10H]                    ; 300D _ 8B. 55, F0
        mov     eax, dword [ebp-1CH]                    ; 3010 _ 8B. 45, E4
        add     eax, edx                                ; 3013 _ 01. D0
        mov     byte [eax], 46                          ; 3015 _ C6. 00, 2E
        add     dword [ebp-10H], 1                      ; 3018 _ 83. 45, F0, 01
        mov     dword [ebp-14H], 0                      ; 301C _ C7. 45, EC, 00000000
        jmp     ?_198                                   ; 3023 _ EB, 22

?_197:  mov     edx, dword [ebp-0CH]                    ; 3025 _ 8B. 55, F4
        mov     eax, dword [ebp-14H]                    ; 3028 _ 8B. 45, EC
        add     eax, edx                                ; 302B _ 01. D0
        add     eax, 8                                  ; 302D _ 83. C0, 08
        movzx   ecx, byte [eax]                         ; 3030 _ 0F B6. 08
        mov     edx, dword [ebp-10H]                    ; 3033 _ 8B. 55, F0
        mov     eax, dword [ebp-1CH]                    ; 3036 _ 8B. 45, E4
        add     eax, edx                                ; 3039 _ 01. D0
        mov     edx, ecx                                ; 303B _ 89. CA
        mov     byte [eax], dl                          ; 303D _ 88. 10
        add     dword [ebp-10H], 1                      ; 303F _ 83. 45, F0, 01
        add     dword [ebp-14H], 1                      ; 3043 _ 83. 45, EC, 01
?_198:  cmp     dword [ebp-14H], 2                      ; 3047 _ 83. 7D, EC, 02
        jle     ?_197                                   ; 304B _ 7E, D8
        mov     eax, dword [ebp-1CH]                    ; 304D _ 8B. 45, E4
        mov     dword [esp+4H], eax                     ; 3050 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3054 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3057 _ 89. 04 24
        call    _strcmp                                 ; 305A _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 305F _ 83. F8, 01
        jne     ?_201                                   ; 3062 _ 0F 85, 00000083
        mov     eax, dword [ebp-0CH]                    ; 3068 _ 8B. 45, F4
        mov     edx, dword [eax+1CH]                    ; 306B _ 8B. 50, 1C
        mov     eax, dword [_memman]                    ; 306E _ A1, 00000000(d)
        mov     dword [esp+4H], edx                     ; 3073 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3077 _ 89. 04 24
        call    _memman_alloc_4k                        ; 307A _ E8, 00000000(rel)
        mov     edx, eax                                ; 307F _ 89. C2
        mov     eax, dword [ebp+0CH]                    ; 3081 _ 8B. 45, 0C
        mov     dword [eax], edx                        ; 3084 _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 3086 _ 8B. 45, F4
        mov     eax, dword [eax+1CH]                    ; 3089 _ 8B. 40, 1C
        mov     edx, eax                                ; 308C _ 89. C2
        mov     eax, dword [ebp+0CH]                    ; 308E _ 8B. 45, 0C
        mov     dword [eax+8H], edx                     ; 3091 _ 89. 50, 08
        mov     dword [ebp-20H], 97280                  ; 3094 _ C7. 45, E0, 00017C00
        mov     eax, dword [ebp-0CH]                    ; 309B _ 8B. 45, F4
        movzx   eax, word [eax+1AH]                     ; 309E _ 0F B7. 40, 1A
        movzx   eax, ax                                 ; 30A2 _ 0F B7. C0
        shl     eax, 9                                  ; 30A5 _ C1. E0, 09
        add     dword [ebp-20H], eax                    ; 30A8 _ 01. 45, E0
        mov     eax, dword [ebp-0CH]                    ; 30AB _ 8B. 45, F4
        mov     eax, dword [eax+1CH]                    ; 30AE _ 8B. 40, 1C
        mov     dword [ebp-24H], eax                    ; 30B1 _ 89. 45, DC
        mov     dword [ebp-18H], 0                      ; 30B4 _ C7. 45, E8, 00000000
        mov     dword [ebp-18H], 0                      ; 30BB _ C7. 45, E8, 00000000
        jmp     ?_200                                   ; 30C2 _ EB, 1D

?_199:  mov     edx, dword [ebp-18H]                    ; 30C4 _ 8B. 55, E8
        mov     eax, dword [ebp-20H]                    ; 30C7 _ 8B. 45, E0
        add     eax, edx                                ; 30CA _ 01. D0
        movzx   ecx, byte [eax]                         ; 30CC _ 0F B6. 08
        mov     eax, dword [ebp+0CH]                    ; 30CF _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 30D2 _ 8B. 10
        mov     eax, dword [ebp-18H]                    ; 30D4 _ 8B. 45, E8
        add     eax, edx                                ; 30D7 _ 01. D0
        mov     edx, ecx                                ; 30D9 _ 89. CA
        mov     byte [eax], dl                          ; 30DB _ 88. 10
        add     dword [ebp-18H], 1                      ; 30DD _ 83. 45, E8, 01
?_200:  mov     eax, dword [ebp-18H]                    ; 30E1 _ 8B. 45, E8
        cmp     eax, dword [ebp-24H]                    ; 30E4 _ 3B. 45, DC
        jl      ?_199                                   ; 30E7 _ 7C, DB
        jmp     ?_203                                   ; 30E9 _ EB, 12

?_201:  add     dword [ebp-0CH], 32                     ; 30EB _ 83. 45, F4, 20
?_202:  mov     eax, dword [ebp-0CH]                    ; 30EF _ 8B. 45, F4
        movzx   eax, byte [eax]                         ; 30F2 _ 0F B6. 00
        test    al, al                                  ; 30F5 _ 84. C0
        jne     ?_190                                   ; 30F7 _ 0F 85, FFFFFEAF
?_203:  mov     edx, dword [ebp-1CH]                    ; 30FD _ 8B. 55, E4
        mov     eax, dword [_memman]                    ; 3100 _ A1, 00000000(d)
        mov     dword [esp+8H], 13                      ; 3105 _ C7. 44 24, 08, 0000000D
        mov     dword [esp+4H], edx                     ; 310D _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3111 _ 89. 04 24
        call    _memman_free                            ; 3114 _ E8, 00000000(rel)
        nop                                             ; 3119 _ 90
        leave                                           ; 311A _ C9
        ret                                             ; 311B _ C3
; _file_loadfile End of function


_showMemoryInfo:
        push    ebp                                     ; 311C _ 55
        mov     ebp, esp                                ; 311D _ 89. E5
        sub     esp, 72                                 ; 311F _ 83. EC, 48
        mov     dword [ebp-0CH], 0                      ; 3122 _ C7. 45, F4, 00000000
        mov     dword [ebp-10H], 0                      ; 3129 _ C7. 45, F0, 00000000
        mov     dword [ebp-14H], 104                    ; 3130 _ C7. 45, EC, 00000068
        mov     dword [ebp-18H], 80                     ; 3137 _ C7. 45, E8, 00000050
        mov     edx, dword [_ysize]                     ; 313E _ 8B. 15, 00000000(d)
        mov     eax, dword [ebp+0CH]                    ; 3144 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 3147 _ 8B. 00
        mov     dword [esp+8H], edx                     ; 3149 _ 89. 54 24, 08
        mov     edx, dword [ebp+1CH]                    ; 314D _ 8B. 55, 1C
        mov     dword [esp+4H], edx                     ; 3150 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3154 _ 89. 04 24
        call    _init_screen8                           ; 3157 _ E8, 00000E04
        mov     eax, dword [ebp+20H]                    ; 315C _ 8B. 45, 20
        movsx   eax, al                                 ; 315F _ 0F BE. C0
_message_box:
        push    ebp                                     ; 3337 _ 55
        mov     ebp, esp                                ; 3338 _ 89. E5
        sub     esp, 56                                 ; 333A _ 83. EC, 38
        mov     eax, dword [ebp+8H]                     ; 333D _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3340 _ 89. 04 24
        call    _sheet_alloc                            ; 3343 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 3348 _ 89. 45, F4
        mov     eax, dword [_memman]                    ; 334B _ A1, 00000000(d)
        mov     dword [esp+4H], 10880                   ; 3350 _ C7. 44 24, 04, 00002A80
        mov     dword [esp], eax                        ; 3358 _ 89. 04 24
        call    _memman_alloc_4k                        ; 335B _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 3360 _ 89. 45, F0
        mov     dword [esp+10H], -1                     ; 3363 _ C7. 44 24, 10, FFFFFFFF
        mov     dword [esp+0CH], 68                     ; 336B _ C7. 44 24, 0C, 00000044
        mov     dword [esp+8H], 160                     ; 3373 _ C7. 44 24, 08, 000000A0
        mov     eax, dword [ebp-10H]                    ; 337B _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 337E _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 3382 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 3385 _ 89. 04 24
        call    _sheet_setbuf                           ; 3388 _ E8, 00000000(rel)
        mov     dword [esp+0CH], 1                      ; 338D _ C7. 44 24, 0C, 00000001
        mov     eax, dword [ebp+0CH]                    ; 3395 _ 8B. 45, 0C
        mov     dword [esp+8H], eax                     ; 3398 _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 339C _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 339F _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 33A3 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 33A6 _ 89. 04 24
        call    _make_window8                           ; 33A9 _ E8, 0000051B
        mov     dword [esp+14H], 7                      ; 33AE _ C7. 44 24, 14, 00000007
        mov     dword [esp+10H], 16                     ; 33B6 _ C7. 44 24, 10, 00000010
        mov     dword [esp+0CH], 144                    ; 33BE _ C7. 44 24, 0C, 00000090
        mov     dword [esp+8H], 28                      ; 33C6 _ C7. 44 24, 08, 0000001C
        mov     dword [esp+4H], 8                       ; 33CE _ C7. 44 24, 04, 00000008
        mov     eax, dword [ebp-0CH]                    ; 33D6 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 33D9 _ 89. 04 24
        call    _make_textbox8                          ; 33DC _ E8, 000008E8
        mov     dword [esp+0CH], 172                    ; 33E1 _ C7. 44 24, 0C, 000000AC
        mov     dword [esp+8H], 260                     ; 33E9 _ C7. 44 24, 08, 00000104
        mov     eax, dword [ebp-0CH]                    ; 33F1 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 33F4 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 33F8 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 33FB _ 89. 04 24
        call    _sheet_slide                            ; 33FE _ E8, 00000000(rel)
        mov     dword [esp+8H], 2                       ; 3403 _ C7. 44 24, 08, 00000002
        mov     eax, dword [ebp-0CH]                    ; 340B _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 340E _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3412 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3415 _ 89. 04 24
        call    _sheet_updown                           ; 3418 _ E8, 00000000(rel)
        mov     eax, dword [ebp-0CH]                    ; 341D _ 8B. 45, F4
        leave                                           ; 3420 _ C9
        ret                                             ; 3421 _ C3
; _message_box End of function

_showString:; Function begin
        push    ebp                                     ; 3422 _ 55
        mov     ebp, esp                                ; 3423 _ 89. E5
        push    ebx                                     ; 3425 _ 53
        sub     esp, 68                                 ; 3426 _ 83. EC, 44
        mov     eax, dword [ebp+18H]                    ; 3429 _ 8B. 45, 18
        mov     byte [ebp-1CH], al                      ; 342C _ 88. 45, E4
        cmp     dword [ebp+8H], 0                       ; 342F _ 83. 7D, 08, 00
        je      ?_206                                   ; 3433 _ 0F 84, 000000A1
        cmp     dword [ebp+0CH], 0                      ; 3439 _ 83. 7D, 0C, 00
        je      ?_206                                   ; 343D _ 0F 84, 00000097
        mov     eax, dword [ebp+10H]                    ; 3443 _ 8B. 45, 10
        mov     dword [ebp-0CH], eax                    ; 3446 _ 89. 45, F4
        mov     dword [ebp-10H], 0                      ; 3449 _ C7. 45, F0, 00000000
        jmp     ?_205                                   ; 3450 _ EB, 4B

?_204:  mov     eax, dword [ebp+1CH]                    ; 3452 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 3455 _ 0F B6. 00
        movzx   eax, al                                 ; 3458 _ 0F B6. C0
        shl     eax, 4                                  ; 345B _ C1. E0, 04
        lea     ebx, [_systemFont+eax]                  ; 345E _ 8D. 98, 00000000(d)
        movsx   eax, byte [ebp-1CH]                     ; 3464 _ 0F BE. 45, E4
        mov     edx, dword [ebp+0CH]                    ; 3468 _ 8B. 55, 0C
        mov     ecx, dword [edx+4H]                     ; 346B _ 8B. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 346E _ 8B. 55, 0C
        mov     edx, dword [edx]                        ; 3471 _ 8B. 12
        mov     dword [esp+14H], ebx                    ; 3473 _ 89. 5C 24, 14
        mov     dword [esp+10H], eax                    ; 3477 _ 89. 44 24, 10
        mov     eax, dword [ebp+14H]                    ; 347B _ 8B. 45, 14
        mov     dword [esp+0CH], eax                    ; 347E _ 89. 44 24, 0C
        mov     eax, dword [ebp+10H]                    ; 3482 _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 3485 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 3489 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 348D _ 89. 14 24
        call    _showFont8                              ; 3490 _ E8, 00001151
        add     dword [ebp+10H], 8                      ; 3495 _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 3499 _ 83. 45, 1C, 01
?_205:  mov     eax, dword [ebp+1CH]                    ; 349D _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 34A0 _ 0F B6. 00
        test    al, al                                  ; 34A3 _ 84. C0
        jnz     ?_204                                   ; 34A5 _ 75, AB
        mov     eax, dword [ebp+14H]                    ; 34A7 _ 8B. 45, 14
        add     eax, 16                                 ; 34AA _ 83. C0, 10
        mov     dword [esp+14H], eax                    ; 34AD _ 89. 44 24, 14
        mov     eax, dword [ebp+10H]                    ; 34B1 _ 8B. 45, 10
        mov     dword [esp+10H], eax                    ; 34B4 _ 89. 44 24, 10
        mov     eax, dword [ebp+14H]                    ; 34B8 _ 8B. 45, 14
        mov     dword [esp+0CH], eax                    ; 34BB _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 34BF _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 34C2 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 34C6 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 34C9 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 34CD _ 8B. 45, 08
        mov     dword [esp], eax                        ; 34D0 _ 89. 04 24
        call    _sheet_refresh                          ; 34D3 _ E8, 00000000(rel)
        jmp     ?_207                                   ; 34D8 _ EB, 01

?_206:  nop                                             ; 34DA _ 90
?_207:  add     esp, 68                                 ; 34DB _ 83. C4, 44
        pop     ebx                                     ; 34DE _ 5B
        pop     ebp                                     ; 34DF _ 5D
        ret                                             ; 34E0 _ C3
; _showString End of function

_show_mouse_info:; Function begin
        push    ebp                                     ; 34E1 _ 55
        mov     ebp, esp                                ; 34E2 _ 89. E5
        sub     esp, 72                                 ; 34E4 _ 83. EC, 48
        mov     eax, dword [_buf_back]                  ; 34E7 _ A1, 00000000(d)
        mov     dword [ebp-10H], eax                    ; 34EC _ 89. 45, F0
        mov     byte [ebp-11H], 0                       ; 34EF _ C6. 45, EF, 00
        mov     dword [ebp-18H], 0                      ; 34F3 _ C7. 45, E8, 00000000
        call    _io_sti                                 ; 34FA _ E8, 00000000(rel)
        mov     dword [esp], _mouseinfo                 ; 34FF _ C7. 04 24, 00000000(d)
        call    _fifo8_get                              ; 3506 _ E8, 00000000(rel)
        mov     byte [ebp-11H], al                      ; 350B _ 88. 45, EF
        movzx   eax, byte [ebp-11H]                     ; 350E _ 0F B6. 45, EF
        mov     dword [esp+4H], eax                     ; 3512 _ 89. 44 24, 04
        mov     dword [esp], _mdec                      ; 3516 _ C7. 04 24, 00000000(d)
        call    _mouse_decode                           ; 351D _ E8, 00000000(rel)
        test    eax, eax                                ; 3522 _ 85. C0
        je      ?_218                                   ; 3524 _ 0F 84, 0000039C
        mov     dword [esp+8H], _mdec                   ; 352A _ C7. 44 24, 08, 00000000(d)
        mov     eax, dword [ebp+0CH]                    ; 3532 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 3535 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3539 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 353C _ 89. 04 24
        call    _computeMousePosition                   ; 353F _ E8, 00000DA4
        mov     edx, dword [_my]                        ; 3544 _ 8B. 15, 00000000(d)
        mov     eax, dword [_mx]                        ; 354A _ A1, 00000000(d)
        mov     dword [esp+0CH], edx                    ; 354F _ 89. 54 24, 0C
        mov     dword [esp+8H], eax                     ; 3553 _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 3557 _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 355A _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 355E _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3561 _ 89. 04 24
        call    _sheet_slide                            ; 3564 _ E8, 00000000(rel)
        mov     eax, dword [_mdec+0CH]                  ; 3569 _ A1, 0000000C(d)
        and     eax, 01H                                ; 356E _ 83. E0, 01
        test    eax, eax                                ; 3571 _ 85. C0
        je      ?_216                                   ; 3573 _ 0F 84, 00000340
        mov     eax, dword [_mmx]                       ; 3579 _ A1, 00000000(d)
        test    eax, eax                                ; 357E _ 85. C0
        jns     ?_215                                   ; 3580 _ 0F 89, 000002C2
        mov     eax, dword [ebp+8H]                     ; 3586 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3589 _ 8B. 40, 10
        sub     eax, 1                                  ; 358C _ 83. E8, 01
        mov     dword [ebp-0CH], eax                    ; 358F _ 89. 45, F4
        jmp     ?_214                                   ; 3592 _ E9, 000002A5

?_208:  mov     eax, dword [ebp+8H]                     ; 3597 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 359A _ 8B. 55, F4
        add     edx, 4                                  ; 359D _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 35A0 _ 8B. 44 90, 04
        mov     dword [ebp-18H], eax                    ; 35A4 _ 89. 45, E8
        mov     edx, dword [_mx]                        ; 35A7 _ 8B. 15, 00000000(d)
        mov     eax, dword [ebp-18H]                    ; 35AD _ 8B. 45, E8
        mov     eax, dword [eax+0CH]                    ; 35B0 _ 8B. 40, 0C
        sub     edx, eax                                ; 35B3 _ 29. C2
        mov     eax, edx                                ; 35B5 _ 89. D0
        mov     dword [ebp-1CH], eax                    ; 35B7 _ 89. 45, E4
        mov     edx, dword [_my]                        ; 35BA _ 8B. 15, 00000000(d)
        mov     eax, dword [ebp-18H]                    ; 35C0 _ 8B. 45, E8
        mov     eax, dword [eax+10H]                    ; 35C3 _ 8B. 40, 10
        sub     edx, eax                                ; 35C6 _ 29. C2
        mov     eax, edx                                ; 35C8 _ 89. D0
        mov     dword [ebp-20H], eax                    ; 35CA _ 89. 45, E0
        cmp     dword [ebp-1CH], 0                      ; 35CD _ 83. 7D, E4, 00
        js      ?_213                                   ; 35D1 _ 0F 88, 00000261
        mov     eax, dword [ebp-18H]                    ; 35D7 _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 35DA _ 8B. 40, 04
        cmp     dword [ebp-1CH], eax                    ; 35DD _ 39. 45, E4
        jge     ?_213                                   ; 35E0 _ 0F 8D, 00000252
        cmp     dword [ebp-20H], 0                      ; 35E6 _ 83. 7D, E0, 00
        js      ?_213                                   ; 35EA _ 0F 88, 00000248
        mov     eax, dword [ebp-18H]                    ; 35F0 _ 8B. 45, E8
        mov     eax, dword [eax+8H]                     ; 35F3 _ 8B. 40, 08
        cmp     dword [ebp-20H], eax                    ; 35F6 _ 39. 45, E0
        jge     ?_213                                   ; 35F9 _ 0F 8D, 00000239
        mov     eax, dword [ebp-18H]                    ; 35FF _ 8B. 45, E8
        mov     edx, dword [eax]                        ; 3602 _ 8B. 10
        mov     eax, dword [ebp-18H]                    ; 3604 _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 3607 _ 8B. 40, 04
        imul    eax, dword [ebp-20H]                    ; 360A _ 0F AF. 45, E0
        mov     ecx, dword [ebp-1CH]                    ; 360E _ 8B. 4D, E4
        add     eax, ecx                                ; 3611 _ 01. C8
        add     eax, edx                                ; 3613 _ 01. D0
        movzx   eax, byte [eax]                         ; 3615 _ 0F B6. 00
        movzx   eax, al                                 ; 3618 _ 0F B6. C0
        mov     edx, dword [ebp-18H]                    ; 361B _ 8B. 55, E8
        mov     edx, dword [edx+14H]                    ; 361E _ 8B. 52, 14
        cmp     eax, edx                                ; 3621 _ 39. D0
        je      ?_213                                   ; 3623 _ 0F 84, 0000020F
        mov     eax, dword [_current_console_task]      ; 3629 _ A1, 00000000(d)
        mov     eax, dword [eax+0B4H]                   ; 362E _ 8B. 80, 000000B4
        test    eax, eax                                ; 3634 _ 85. C0
        jz      ?_209                                   ; 3636 _ 74, 68
        mov     eax, dword [_current_console_task]      ; 3638 _ A1, 00000000(d)
        mov     eax, dword [eax+0B4H]                   ; 363D _ 8B. 80, 000000B4
        mov     dword [esp+0CH], 0                      ; 3643 _ C7. 44 24, 0C, 00000000
?_209:  mov     eax, dword [ebp-18H]                    
        mov     eax, dword [eax+20H]                    ; 36A3 _ 8B. 40, 20
        mov     dword [_current_console_task], eax      ; 36A6 _ A3, 00000000(d)
        mov     eax, dword [_current_console_task]      ; 36AB _ A1, 00000000(d)
        mov     eax, dword [eax+0B4H]                   ; 36B0 _ 8B. 80, 000000B4
        test    eax, eax                                ; 36B6 _ 85. C0
        jnz     ?_210                                   ; 36B8 _ 75, 32
?_210:  mov     eax, dword [_current_console_task]      
        mov     eax, dword [eax+0B4H]                   ; 36F1 _ 8B. 80, 000000B4
        test    eax, eax                                ; 36F7 _ 85. C0
        jz      ?_211                                   ; 36F9 _ 74, 60
        mov     eax, dword [_current_console_task]      ; 36FB _ A1, 00000000(d)
        mov     eax, dword [eax+0B4H]                   ; 3700 _ 8B. 80, 000000B4
        mov     dword [esp+0CH], 1                      ; 3706 _ C7. 44 24, 0C, 00000001
?_211:  mov     eax, dword [ebp+8H]                     
        mov     eax, dword [eax+10H]                    ; 375E _ 8B. 40, 10
        sub     eax, 1                                  ; 3761 _ 83. E8, 01
        mov     dword [esp+8H], eax                     ; 3764 _ 89. 44 24, 08
        mov     eax, dword [ebp-18H]                    ; 3768 _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 376B _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 376F _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3772 _ 89. 04 24
        call    _sheet_updown                           ; 3775 _ E8, 00000000(rel)
        cmp     dword [ebp-1CH], 2                      ; 377A _ 83. 7D, E4, 02
        jle     ?_212                                   ; 377E _ 7E, 36
        mov     eax, dword [ebp-18H]                    ; 3780 _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 3783 _ 8B. 40, 04
        sub     eax, 3                                  ; 3786 _ 83. E8, 03
        cmp     dword [ebp-1CH], eax                    ; 3789 _ 39. 45, E4
        jge     ?_212                                   ; 378C _ 7D, 28
        cmp     dword [ebp-20H], 2                      ; 378E _ 83. 7D, E0, 02
        jle     ?_212                                   ; 3792 _ 7E, 22
        cmp     dword [ebp-20H], 20                     ; 3794 _ 83. 7D, E0, 14
        jg      ?_212                                   ; 3798 _ 7F, 1C
        mov     eax, dword [_mx]                        ; 379A _ A1, 00000000(d)
        mov     dword [_mmx], eax                       ; 379F _ A3, 00000000(d)
        mov     eax, dword [_my]                        ; 37A4 _ A1, 00000000(d)
        mov     dword [_mmy], eax                       ; 37A9 _ A3, 00000000(d)
        mov     eax, dword [ebp-18H]                    ; 37AE _ 8B. 45, E8
        mov     dword [_mouse_clicked_sht], eax         ; 37B1 _ A3, 00000000(d)
?_212:  mov     eax, dword [ebp-18H]                    ; 37B6 _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 37B9 _ 8B. 40, 04
        sub     eax, 21                                 ; 37BC _ 83. E8, 15
        cmp     dword [ebp-1CH], eax                    ; 37BF _ 39. 45, E4
        jl      ?_217                                   ; 37C2 _ 0F 8C, 000000FD
        mov     eax, dword [ebp-18H]                    ; 37C8 _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 37CB _ 8B. 40, 04
        sub     eax, 5                                  ; 37CE _ 83. E8, 05
        cmp     dword [ebp-1CH], eax                    ; 37D1 _ 39. 45, E4
        jge     ?_217                                   ; 37D4 _ 0F 8D, 000000EB
        cmp     dword [ebp-20H], 4                      ; 37DA _ 83. 7D, E0, 04
        jle     ?_217                                   ; 37DE _ 0F 8E, 000000E1
        cmp     dword [ebp-20H], 18                     ; 37E4 _ 83. 7D, E0, 12
        jg      ?_217                                   ; 37E8 _ 0F 8F, 000000D7
        mov     eax, dword [ebp-18H]                    ; 37EE _ 8B. 45, E8
        mov     eax, dword [eax+20H]                    ; 37F1 _ 8B. 40, 20
        test    eax, eax                                ; 37F4 _ 85. C0
        je      ?_217                                   ; 37F6 _ 0F 84, 000000C9
        call    _io_cli                                 ; 37FC _ E8, 00000000(rel)
        mov     eax, dword [ebp-18H]                    ; 3801 _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 3804 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3808 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 380B _ 89. 04 24
        call    _sheet_free                             ; 380E _ E8, 00000000(rel)
        call    _get_addr_code32                        ; 3813 _ E8, 00000000(rel)
        mov     dword [ebp-24H], eax                    ; 3818 _ 89. 45, DC
        mov     ecx, _kill_process                      ; 381B _ B9, 00000000(d)
        mov     eax, dword [ebp-18H]                    ; 3820 _ 8B. 45, E8
        mov     edx, dword [eax+20H]                    ; 3823 _ 8B. 50, 20
        mov     eax, ecx                                ; 3826 _ 89. C8
        sub     eax, dword [ebp-24H]                    ; 3828 _ 2B. 45, DC
        mov     dword [edx+4CH], eax                    ; 382B _ 89. 42, 4C
        call    _io_sti                                 ; 382E _ E8, 00000000(rel)
        jmp     ?_217                                   ; 3833 _ E9, 0000008D

?_213:  sub     dword [ebp-0CH], 1                      ; 3838 _ 83. 6D, F4, 01
?_214:  cmp     dword [ebp-0CH], 0                      ; 383C _ 83. 7D, F4, 00
        jg      ?_208                                   ; 3840 _ 0F 8F, FFFFFD51
        jmp     ?_218                                   ; 3846 _ EB, 7E

?_215:  mov     edx, dword [_mx]                        ; 3848 _ 8B. 15, 00000000(d)
        mov     eax, dword [_mmx]                       ; 384E _ A1, 00000000(d)
        sub     edx, eax                                ; 3853 _ 29. C2
        mov     eax, edx                                ; 3855 _ 89. D0
        mov     dword [ebp-1CH], eax                    ; 3857 _ 89. 45, E4
        mov     edx, dword [_my]                        ; 385A _ 8B. 15, 00000000(d)
        mov     eax, dword [_mmy]                       ; 3860 _ A1, 00000000(d)
        sub     edx, eax                                ; 3865 _ 29. C2
        mov     eax, edx                                ; 3867 _ 89. D0
        mov     dword [ebp-20H], eax                    ; 3869 _ 89. 45, E0
        mov     eax, dword [_mouse_clicked_sht]         ; 386C _ A1, 00000000(d)
        mov     edx, dword [eax+10H]                    ; 3871 _ 8B. 50, 10
        mov     eax, dword [ebp-20H]                    ; 3874 _ 8B. 45, E0
        lea     ecx, [edx+eax]                          ; 3877 _ 8D. 0C 02
        mov     eax, dword [_mouse_clicked_sht]         ; 387A _ A1, 00000000(d)
        mov     edx, dword [eax+0CH]                    ; 387F _ 8B. 50, 0C
        mov     eax, dword [ebp-1CH]                    ; 3882 _ 8B. 45, E4
        add     edx, eax                                ; 3885 _ 01. C2
        mov     eax, dword [_mouse_clicked_sht]         ; 3887 _ A1, 00000000(d)
        mov     dword [esp+0CH], ecx                    ; 388C _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 3890 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 3894 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3898 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 389B _ 89. 04 24
        call    _sheet_slide                            ; 389E _ E8, 00000000(rel)
        mov     eax, dword [_mx]                        ; 38A3 _ A1, 00000000(d)
        mov     dword [_mmx], eax                       ; 38A8 _ A3, 00000000(d)
        mov     eax, dword [_my]                        ; 38AD _ A1, 00000000(d)
        mov     dword [_mmy], eax                       ; 38B2 _ A3, 00000000(d)
        jmp     ?_218                                   ; 38B7 _ EB, 0D

?_216:  mov     dword [_mmx], -1                        ; 38B9 _ C7. 05, 00000000(d), FFFFFFFF
        jmp     ?_218                                   ; 38C3 _ EB, 01

?_217:  nop                                             ; 38C5 _ 90
?_218:  nop                                             ; 38C6 _ 90
        leave                                           ; 38C7 _ C9
        ret                                             ; 38C8 _ C3
; _show_mouse_info End of function

_make_window8:; Function begin
        push    ebp                                     ; 38C9 _ 55
        mov     ebp, esp                                ; 38CA _ 89. E5
        push    ebx                                     ; 38CC _ 53
        sub     esp, 68                                 ; 38CD _ 83. EC, 44
        mov     eax, dword [ebp+14H]                    ; 38D0 _ 8B. 45, 14
        mov     byte [ebp-1CH], al                      ; 38D3 _ 88. 45, E4
        mov     eax, dword [ebp+0CH]                    ; 38D6 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 38D9 _ 8B. 40, 04
        mov     dword [ebp-0CH], eax                    ; 38DC _ 89. 45, F4
        mov     eax, dword [ebp+0CH]                    ; 38DF _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 38E2 _ 8B. 40, 08
        mov     dword [ebp-10H], eax                    ; 38E5 _ 89. 45, F0
        mov     eax, dword [ebp-0CH]                    ; 38E8 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 38EB _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 38EE _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 38F1 _ 8B. 00
        mov     dword [esp+18H], 0                      ; 38F3 _ C7. 44 24, 18, 00000000
        mov     dword [esp+14H], edx                    ; 38FB _ 89. 54 24, 14
        mov     dword [esp+10H], 0                      ; 38FF _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 3907 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 390F _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-0CH]                    ; 3917 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 391A _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 391E _ 89. 04 24
        call    _boxfill8                               ; 3921 _ E8, 00000C70
        mov     eax, dword [ebp-0CH]                    ; 3926 _ 8B. 45, F4
        lea     edx, [eax-2H]                           ; 3929 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 392C _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 392F _ 8B. 00
        mov     dword [esp+18H], 1                      ; 3931 _ C7. 44 24, 18, 00000001
        mov     dword [esp+14H], edx                    ; 3939 _ 89. 54 24, 14
        mov     dword [esp+10H], 1                      ; 393D _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], 1                      ; 3945 _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 7                       ; 394D _ C7. 44 24, 08, 00000007
        mov     edx, dword [ebp-0CH]                    ; 3955 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 3958 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 395C _ 89. 04 24
        call    _boxfill8                               ; 395F _ E8, 00000C32
        mov     eax, dword [ebp-10H]                    ; 3964 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 3967 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 396A _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 396D _ 8B. 00
        mov     dword [esp+18H], edx                    ; 396F _ 89. 54 24, 18
        mov     dword [esp+14H], 0                      ; 3973 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], 0                      ; 397B _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 3983 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 398B _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-0CH]                    ; 3993 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 3996 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 399A _ 89. 04 24
        call    _boxfill8                               ; 399D _ E8, 00000BF4
        mov     eax, dword [ebp-10H]                    ; 39A2 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 39A5 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 39A8 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 39AB _ 8B. 00
        mov     dword [esp+18H], edx                    ; 39AD _ 89. 54 24, 18
        mov     dword [esp+14H], 1                      ; 39B1 _ C7. 44 24, 14, 00000001
        mov     dword [esp+10H], 1                      ; 39B9 _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], 1                      ; 39C1 _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 7                       ; 39C9 _ C7. 44 24, 08, 00000007
        mov     edx, dword [ebp-0CH]                    ; 39D1 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 39D4 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 39D8 _ 89. 04 24
        call    _boxfill8                               ; 39DB _ E8, 00000BB6
        mov     eax, dword [ebp-10H]                    ; 39E0 _ 8B. 45, F0
        lea     ebx, [eax-2H]                           ; 39E3 _ 8D. 58, FE
        mov     eax, dword [ebp-0CH]                    ; 39E6 _ 8B. 45, F4
        lea     ecx, [eax-2H]                           ; 39E9 _ 8D. 48, FE
        mov     eax, dword [ebp-0CH]                    ; 39EC _ 8B. 45, F4
        lea     edx, [eax-2H]                           ; 39EF _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 39F2 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 39F5 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 39F7 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 39FB _ 89. 4C 24, 14
        mov     dword [esp+10H], 1                      ; 39FF _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], edx                    ; 3A07 _ 89. 54 24, 0C
        mov     dword [esp+8H], 15                      ; 3A0B _ C7. 44 24, 08, 0000000F
        mov     edx, dword [ebp-0CH]                    ; 3A13 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 3A16 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3A1A _ 89. 04 24
        call    _boxfill8                               ; 3A1D _ E8, 00000B74
        mov     eax, dword [ebp-10H]                    ; 3A22 _ 8B. 45, F0
        lea     ebx, [eax-1H]                           ; 3A25 _ 8D. 58, FF
        mov     eax, dword [ebp-0CH]                    ; 3A28 _ 8B. 45, F4
        lea     ecx, [eax-1H]                           ; 3A2B _ 8D. 48, FF
        mov     eax, dword [ebp-0CH]                    ; 3A2E _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 3A31 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 3A34 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 3A37 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 3A39 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 3A3D _ 89. 4C 24, 14
        mov     dword [esp+10H], 0                      ; 3A41 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], edx                    ; 3A49 _ 89. 54 24, 0C
        mov     dword [esp+8H], 0                       ; 3A4D _ C7. 44 24, 08, 00000000
        mov     edx, dword [ebp-0CH]                    ; 3A55 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 3A58 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3A5C _ 89. 04 24
        call    _boxfill8                               ; 3A5F _ E8, 00000B32
        mov     eax, dword [ebp-10H]                    ; 3A64 _ 8B. 45, F0
        lea     ecx, [eax-3H]                           ; 3A67 _ 8D. 48, FD
        mov     eax, dword [ebp-0CH]                    ; 3A6A _ 8B. 45, F4
        lea     edx, [eax-3H]                           ; 3A6D _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 3A70 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 3A73 _ 8B. 00
        mov     dword [esp+18H], ecx                    ; 3A75 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 3A79 _ 89. 54 24, 14
        mov     dword [esp+10H], 2                      ; 3A7D _ C7. 44 24, 10, 00000002
        mov     dword [esp+0CH], 2                      ; 3A85 _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 8                       ; 3A8D _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-0CH]                    ; 3A95 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 3A98 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3A9C _ 89. 04 24
        call    _boxfill8                               ; 3A9F _ E8, 00000AF2
        mov     eax, dword [ebp-0CH]                    ; 3AA4 _ 8B. 45, F4
        lea     edx, [eax-4H]                           ; 3AA7 _ 8D. 50, FC
        mov     eax, dword [ebp+0CH]                    ; 3AAA _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 3AAD _ 8B. 00
        mov     dword [esp+18H], 20                     ; 3AAF _ C7. 44 24, 18, 00000014
        mov     dword [esp+14H], edx                    ; 3AB7 _ 89. 54 24, 14
        mov     dword [esp+10H], 3                      ; 3ABB _ C7. 44 24, 10, 00000003
        mov     dword [esp+0CH], 3                      ; 3AC3 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 12                      ; 3ACB _ C7. 44 24, 08, 0000000C
        mov     edx, dword [ebp-0CH]                    ; 3AD3 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 3AD6 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3ADA _ 89. 04 24
        call    _boxfill8                               ; 3ADD _ E8, 00000AB4
        mov     eax, dword [ebp-10H]                    ; 3AE2 _ 8B. 45, F0
        lea     ebx, [eax-2H]                           ; 3AE5 _ 8D. 58, FE
        mov     eax, dword [ebp-0CH]                    ; 3AE8 _ 8B. 45, F4
        lea     ecx, [eax-2H]                           ; 3AEB _ 8D. 48, FE
        mov     eax, dword [ebp-10H]                    ; 3AEE _ 8B. 45, F0
        lea     edx, [eax-2H]                           ; 3AF1 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 3AF4 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 3AF7 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 3AF9 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 3AFD _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 3B01 _ 89. 54 24, 10
        mov     dword [esp+0CH], 1                      ; 3B05 _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 15                      ; 3B0D _ C7. 44 24, 08, 0000000F
        mov     edx, dword [ebp-0CH]                    ; 3B15 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 3B18 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3B1C _ 89. 04 24
        call    _boxfill8                               ; 3B1F _ E8, 00000A72
        mov     eax, dword [ebp-10H]                    ; 3B24 _ 8B. 45, F0
        lea     ebx, [eax-1H]                           ; 3B27 _ 8D. 58, FF
        mov     eax, dword [ebp-0CH]                    ; 3B2A _ 8B. 45, F4
        lea     ecx, [eax-1H]                           ; 3B2D _ 8D. 48, FF
        mov     eax, dword [ebp-10H]                    ; 3B30 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 3B33 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 3B36 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 3B39 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 3B3B _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 3B3F _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 3B43 _ 89. 54 24, 10
        mov     dword [esp+0CH], 0                      ; 3B47 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 3B4F _ C7. 44 24, 08, 00000000
        mov     edx, dword [ebp-0CH]                    ; 3B57 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 3B5A _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3B5E _ 89. 04 24
        call    _boxfill8                               ; 3B61 _ E8, 00000A30
        movsx   eax, byte [ebp-1CH]                     ; 3B66 _ 0F BE. 45, E4
        mov     dword [esp+0CH], eax                    ; 3B6A _ 89. 44 24, 0C
        mov     eax, dword [ebp+10H]                    ; 3B6E _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 3B71 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 3B75 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 3B78 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3B7C _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3B7F _ 89. 04 24
        call    _make_wtitle8                           ; 3B82 _ E8, 00000007
        nop                                             ; 3B87 _ 90
        add     esp, 68                                 ; 3B88 _ 83. C4, 44
        pop     ebx                                     ; 3B8B _ 5B
        pop     ebp                                     ; 3B8C _ 5D
        ret                                             ; 3B8D _ C3
; _make_window8 End of function

_make_wtitle8:; Function begin
        push    ebp                                     ; 3B8E _ 55
        mov     ebp, esp                                ; 3B8F _ 89. E5
        push    ebx                                     ; 3B91 _ 53
        sub     esp, 68                                 ; 3B92 _ 83. EC, 44
        mov     eax, dword [ebp+14H]                    ; 3B95 _ 8B. 45, 14
        mov     byte [ebp-1CH], al                      ; 3B98 _ 88. 45, E4
        cmp     byte [ebp-1CH], 0                       ; 3B9B _ 80. 7D, E4, 00
        jz      ?_219                                   ; 3B9F _ 74, 0A
        mov     byte [ebp-12H], 7                       ; 3BA1 _ C6. 45, EE, 07
        mov     byte [ebp-13H], 12                      ; 3BA5 _ C6. 45, ED, 0C
        jmp     ?_220                                   ; 3BA9 _ EB, 08

?_219:  mov     byte [ebp-12H], 8                       ; 3BAB _ C6. 45, EE, 08
        mov     byte [ebp-13H], 15                      ; 3BAF _ C6. 45, ED, 0F
?_220:  mov     eax, dword [ebp+0CH]                    ; 3BB3 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 3BB6 _ 8B. 40, 04
        lea     ebx, [eax-4H]                           ; 3BB9 _ 8D. 58, FC
        movsx   eax, byte [ebp-13H]                     ; 3BBC _ 0F BE. 45, ED
        mov     edx, dword [ebp+0CH]                    ; 3BC0 _ 8B. 55, 0C
        mov     ecx, dword [edx+4H]                     ; 3BC3 _ 8B. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 3BC6 _ 8B. 55, 0C
        mov     edx, dword [edx]                        ; 3BC9 _ 8B. 12
        mov     dword [esp+18H], 20                     ; 3BCB _ C7. 44 24, 18, 00000014
        mov     dword [esp+14H], ebx                    ; 3BD3 _ 89. 5C 24, 14
        mov     dword [esp+10H], 3                      ; 3BD7 _ C7. 44 24, 10, 00000003
        mov     dword [esp+0CH], 3                      ; 3BDF _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], eax                     ; 3BE7 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 3BEB _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 3BEF _ 89. 14 24
        call    _boxfill8                               ; 3BF2 _ E8, 0000099F
        movsx   eax, byte [ebp-12H]                     ; 3BF7 _ 0F BE. 45, EE
        mov     edx, dword [ebp+10H]                    ; 3BFB _ 8B. 55, 10
        mov     dword [esp+14H], edx                    ; 3BFE _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 3C02 _ 89. 44 24, 10
        mov     dword [esp+0CH], 4                      ; 3C06 _ C7. 44 24, 0C, 00000004
        mov     dword [esp+8H], 24                      ; 3C0E _ C7. 44 24, 08, 00000018
        mov     eax, dword [ebp+0CH]                    ; 3C16 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 3C19 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3C1D _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3C20 _ 89. 04 24
        call    _showString                             ; 3C23 _ E8, FFFFF7FA
        mov     dword [ebp-10H], 0                      ; 3C28 _ C7. 45, F0, 00000000
        jmp     ?_228                                   ; 3C2F _ E9, 00000084

?_221:  mov     dword [ebp-0CH], 0                      ; 3C34 _ C7. 45, F4, 00000000
        jmp     ?_227                                   ; 3C3B _ EB, 71

?_222:  mov     eax, dword [ebp-10H]                    ; 3C3D _ 8B. 45, F0
        shl     eax, 4                                  ; 3C40 _ C1. E0, 04
        mov     edx, eax                                ; 3C43 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 3C45 _ 8B. 45, F4
        add     eax, edx                                ; 3C48 _ 01. D0
        add     eax, _closebtn.2304                     ; 3C4A _ 05, 00000100(d)
        movzx   eax, byte [eax]                         ; 3C4F _ 0F B6. 00
        mov     byte [ebp-11H], al                      ; 3C52 _ 88. 45, EF
        cmp     byte [ebp-11H], 64                      ; 3C55 _ 80. 7D, EF, 40
        jnz     ?_223                                   ; 3C59 _ 75, 06
        mov     byte [ebp-11H], 0                       ; 3C5B _ C6. 45, EF, 00
        jmp     ?_226                                   ; 3C5F _ EB, 1C

?_223:  cmp     byte [ebp-11H], 36                      ; 3C61 _ 80. 7D, EF, 24
        jnz     ?_224                                   ; 3C65 _ 75, 06
        mov     byte [ebp-11H], 15                      ; 3C67 _ C6. 45, EF, 0F
        jmp     ?_226                                   ; 3C6B _ EB, 10

?_224:  cmp     byte [ebp-11H], 81                      ; 3C6D _ 80. 7D, EF, 51
        jnz     ?_225                                   ; 3C71 _ 75, 06
        mov     byte [ebp-11H], 8                       ; 3C73 _ C6. 45, EF, 08
        jmp     ?_226                                   ; 3C77 _ EB, 04

?_225:  mov     byte [ebp-11H], 7                       ; 3C79 _ C6. 45, EF, 07
?_226:  mov     eax, dword [ebp+0CH]                    ; 3C7D _ 8B. 45, 0C
        mov     ecx, dword [eax]                        ; 3C80 _ 8B. 08
        mov     eax, dword [ebp-10H]                    ; 3C82 _ 8B. 45, F0
        lea     edx, [eax+5H]                           ; 3C85 _ 8D. 50, 05
        mov     eax, dword [ebp+0CH]                    ; 3C88 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 3C8B _ 8B. 40, 04
        imul    eax, edx                                ; 3C8E _ 0F AF. C2
        mov     edx, dword [ebp+0CH]                    ; 3C91 _ 8B. 55, 0C
        mov     edx, dword [edx+4H]                     ; 3C94 _ 8B. 52, 04
        lea     ebx, [edx-15H]                          ; 3C97 _ 8D. 5A, EB
        mov     edx, dword [ebp-0CH]                    ; 3C9A _ 8B. 55, F4
        add     edx, ebx                                ; 3C9D _ 01. DA
        add     eax, edx                                ; 3C9F _ 01. D0
        lea     edx, [ecx+eax]                          ; 3CA1 _ 8D. 14 01
        movzx   eax, byte [ebp-11H]                     ; 3CA4 _ 0F B6. 45, EF
        mov     byte [edx], al                          ; 3CA8 _ 88. 02
        add     dword [ebp-0CH], 1                      ; 3CAA _ 83. 45, F4, 01
?_227:  cmp     dword [ebp-0CH], 15                     ; 3CAE _ 83. 7D, F4, 0F
        jle     ?_222                                   ; 3CB2 _ 7E, 89
        add     dword [ebp-10H], 1                      ; 3CB4 _ 83. 45, F0, 01
?_228:  cmp     dword [ebp-10H], 13                     ; 3CB8 _ 83. 7D, F0, 0D
        jle     ?_221                                   ; 3CBC _ 0F 8E, FFFFFF72
        nop                                             ; 3CC2 _ 90
        add     esp, 68                                 ; 3CC3 _ 83. C4, 44
        pop     ebx                                     ; 3CC6 _ 5B
        pop     ebp                                     ; 3CC7 _ 5D
        ret                                             ; 3CC8 _ C3
; _make_wtitle8 End of function

_make_textbox8:; Function begin
        push    ebp                                     ; 3CC9 _ 55
        mov     ebp, esp                                ; 3CCA _ 89. E5
        push    edi                                     ; 3CCC _ 57
        push    esi                                     ; 3CCD _ 56
        push    ebx                                     ; 3CCE _ 53
        sub     esp, 60                                 ; 3CCF _ 83. EC, 3C
        mov     edx, dword [ebp+0CH]                    ; 3CD2 _ 8B. 55, 0C
        mov     eax, dword [ebp+14H]                    ; 3CD5 _ 8B. 45, 14
        add     eax, edx                                ; 3CD8 _ 01. D0
        mov     dword [ebp-1CH], eax                    ; 3CDA _ 89. 45, E4
        mov     edx, dword [ebp+10H]                    ; 3CDD _ 8B. 55, 10
        mov     eax, dword [ebp+18H]                    ; 3CE0 _ 8B. 45, 18
        add     eax, edx                                ; 3CE3 _ 01. D0
        mov     dword [ebp-20H], eax                    ; 3CE5 _ 89. 45, E0
        mov     eax, dword [ebp+10H]                    ; 3CE8 _ 8B. 45, 10
        lea     edi, [eax-3H]                           ; 3CEB _ 8D. 78, FD
        mov     eax, dword [ebp-1CH]                    ; 3CEE _ 8B. 45, E4
        lea     esi, [eax+1H]                           ; 3CF1 _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 3CF4 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 3CF7 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 3CFA _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 3CFD _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 3D00 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 3D03 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 3D06 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3D09 _ 8B. 00
        mov     dword [esp+18H], edi                    ; 3D0B _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 3D0F _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 3D13 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 3D17 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 15                      ; 3D1B _ C7. 44 24, 08, 0000000F
        mov     dword [esp+4H], edx                     ; 3D23 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3D27 _ 89. 04 24
        call    _boxfill8                               ; 3D2A _ E8, 00000867
        mov     eax, dword [ebp-20H]                    ; 3D2F _ 8B. 45, E0
        lea     edi, [eax+1H]                           ; 3D32 _ 8D. 78, 01
        mov     eax, dword [ebp+0CH]                    ; 3D35 _ 8B. 45, 0C
        lea     esi, [eax-3H]                           ; 3D38 _ 8D. 70, FD
        mov     eax, dword [ebp+10H]                    ; 3D3B _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 3D3E _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 3D41 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 3D44 _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 3D47 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 3D4A _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 3D4D _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3D50 _ 8B. 00
        mov     dword [esp+18H], edi                    ; 3D52 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 3D56 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 3D5A _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 3D5E _ 89. 4C 24, 0C
        mov     dword [esp+8H], 15                      ; 3D62 _ C7. 44 24, 08, 0000000F
        mov     dword [esp+4H], edx                     ; 3D6A _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3D6E _ 89. 04 24
        call    _boxfill8                               ; 3D71 _ E8, 00000820
        mov     eax, dword [ebp-20H]                    ; 3D76 _ 8B. 45, E0
        lea     edi, [eax+2H]                           ; 3D79 _ 8D. 78, 02
        mov     eax, dword [ebp-1CH]                    ; 3D7C _ 8B. 45, E4
        lea     esi, [eax+1H]                           ; 3D7F _ 8D. 70, 01
        mov     eax, dword [ebp-20H]                    ; 3D82 _ 8B. 45, E0
        lea     ebx, [eax+2H]                           ; 3D85 _ 8D. 58, 02
        mov     eax, dword [ebp+0CH]                    ; 3D88 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 3D8B _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 3D8E _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 3D91 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 3D94 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3D97 _ 8B. 00
        mov     dword [esp+18H], edi                    ; 3D99 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 3D9D _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 3DA1 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 3DA5 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 7                       ; 3DA9 _ C7. 44 24, 08, 00000007
        mov     dword [esp+4H], edx                     ; 3DB1 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3DB5 _ 89. 04 24
        call    _boxfill8                               ; 3DB8 _ E8, 000007D9
        mov     eax, dword [ebp-20H]                    ; 3DBD _ 8B. 45, E0
        lea     edi, [eax+2H]                           ; 3DC0 _ 8D. 78, 02
        mov     eax, dword [ebp-1CH]                    ; 3DC3 _ 8B. 45, E4
        lea     esi, [eax+2H]                           ; 3DC6 _ 8D. 70, 02
        mov     eax, dword [ebp+10H]                    ; 3DC9 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 3DCC _ 8D. 58, FD
        mov     eax, dword [ebp-1CH]                    ; 3DCF _ 8B. 45, E4
        lea     ecx, [eax+2H]                           ; 3DD2 _ 8D. 48, 02
        mov     eax, dword [ebp+8H]                     ; 3DD5 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 3DD8 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 3DDB _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3DDE _ 8B. 00
        mov     dword [esp+18H], edi                    ; 3DE0 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 3DE4 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 3DE8 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 3DEC _ 89. 4C 24, 0C
        mov     dword [esp+8H], 7                       ; 3DF0 _ C7. 44 24, 08, 00000007
        mov     dword [esp+4H], edx                     ; 3DF8 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3DFC _ 89. 04 24
        call    _boxfill8                               ; 3DFF _ E8, 00000792
        mov     eax, dword [ebp+10H]                    ; 3E04 _ 8B. 45, 10
        lea     esi, [eax-2H]                           ; 3E07 _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 3E0A _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 3E0D _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 3E10 _ 8B. 45, 0C
        lea     ecx, [eax-1H]                           ; 3E13 _ 8D. 48, FF
        mov     eax, dword [ebp+8H]                     ; 3E16 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 3E19 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 3E1C _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3E1F _ 8B. 00
        mov     dword [esp+18H], esi                    ; 3E21 _ 89. 74 24, 18
        mov     esi, dword [ebp-1CH]                    ; 3E25 _ 8B. 75, E4
        mov     dword [esp+14H], esi                    ; 3E28 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 3E2C _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 3E30 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 0                       ; 3E34 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 3E3C _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3E40 _ 89. 04 24
        call    _boxfill8                               ; 3E43 _ E8, 0000074E
        mov     eax, dword [ebp+0CH]                    ; 3E48 _ 8B. 45, 0C
        lea     esi, [eax-2H]                           ; 3E4B _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 3E4E _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 3E51 _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 3E54 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 3E57 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 3E5A _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 3E5D _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 3E60 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3E63 _ 8B. 00
        mov     edi, dword [ebp-20H]                    ; 3E65 _ 8B. 7D, E0
        mov     dword [esp+18H], edi                    ; 3E68 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 3E6C _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 3E70 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 3E74 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 0                       ; 3E78 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 3E80 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3E84 _ 89. 04 24
        call    _boxfill8                               ; 3E87 _ E8, 0000070A
        mov     eax, dword [ebp-20H]                    ; 3E8C _ 8B. 45, E0
        lea     esi, [eax+1H]                           ; 3E8F _ 8D. 70, 01
        mov     eax, dword [ebp-20H]                    ; 3E92 _ 8B. 45, E0
        lea     ebx, [eax+1H]                           ; 3E95 _ 8D. 58, 01
        mov     eax, dword [ebp+0CH]                    ; 3E98 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 3E9B _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 3E9E _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 3EA1 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 3EA4 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3EA7 _ 8B. 00
        mov     dword [esp+18H], esi                    ; 3EA9 _ 89. 74 24, 18
        mov     esi, dword [ebp-1CH]                    ; 3EAD _ 8B. 75, E4
        mov     dword [esp+14H], esi                    ; 3EB0 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 3EB4 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 3EB8 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 8                       ; 3EBC _ C7. 44 24, 08, 00000008
        mov     dword [esp+4H], edx                     ; 3EC4 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3EC8 _ 89. 04 24
        call    _boxfill8                               ; 3ECB _ E8, 000006C6
        mov     eax, dword [ebp-20H]                    ; 3ED0 _ 8B. 45, E0
        lea     edi, [eax+1H]                           ; 3ED3 _ 8D. 78, 01
        mov     eax, dword [ebp-1CH]                    ; 3ED6 _ 8B. 45, E4
        lea     esi, [eax+1H]                           ; 3ED9 _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 3EDC _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 3EDF _ 8D. 58, FE
        mov     eax, dword [ebp-1CH]                    ; 3EE2 _ 8B. 45, E4
        lea     ecx, [eax+1H]                           ; 3EE5 _ 8D. 48, 01
        mov     eax, dword [ebp+8H]                     ; 3EE8 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 3EEB _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 3EEE _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3EF1 _ 8B. 00
        mov     dword [esp+18H], edi                    ; 3EF3 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 3EF7 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 3EFB _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 3EFF _ 89. 4C 24, 0C
        mov     dword [esp+8H], 8                       ; 3F03 _ C7. 44 24, 08, 00000008
        mov     dword [esp+4H], edx                     ; 3F0B _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3F0F _ 89. 04 24
        call    _boxfill8                               ; 3F12 _ E8, 0000067F
        mov     eax, dword [ebp+10H]                    ; 3F17 _ 8B. 45, 10
        lea     ebx, [eax-1H]                           ; 3F1A _ 8D. 58, FF
        mov     eax, dword [ebp+0CH]                    ; 3F1D _ 8B. 45, 0C
        lea     ecx, [eax-1H]                           ; 3F20 _ 8D. 48, FF
        mov     eax, dword [ebp+8H]                     ; 3F23 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 3F26 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 3F29 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3F2C _ 8B. 00
        mov     esi, dword [ebp-20H]                    ; 3F2E _ 8B. 75, E0
        mov     dword [esp+18H], esi                    ; 3F31 _ 89. 74 24, 18
        mov     esi, dword [ebp-1CH]                    ; 3F35 _ 8B. 75, E4
        mov     dword [esp+14H], esi                    ; 3F38 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 3F3C _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 3F40 _ 89. 4C 24, 0C
        mov     ecx, dword [ebp+1CH]                    ; 3F44 _ 8B. 4D, 1C
        mov     dword [esp+8H], ecx                     ; 3F47 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 3F4B _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3F4F _ 89. 04 24
        call    _boxfill8                               ; 3F52 _ E8, 0000063F
        nop                                             ; 3F57 _ 90
        add     esp, 60                                 ; 3F58 _ 83. C4, 3C
        pop     ebx                                     ; 3F5B _ 5B
        pop     esi                                     ; 3F5C _ 5E
        pop     edi                                     ; 3F5D _ 5F
        pop     ebp                                     ; 3F5E _ 5D
        ret                                             ; 3F5F _ C3
; _make_textbox8 End of function

_init_screen8:; Function begin
        push    ebp                                     ; 3F60 _ 55
        mov     ebp, esp                                ; 3F61 _ 89. E5
        push    ebx                                     ; 3F63 _ 53
        sub     esp, 36                                 ; 3F64 _ 83. EC, 24
        mov     eax, dword [ebp+10H]                    ; 3F67 _ 8B. 45, 10
        lea     edx, [eax-1DH]                          ; 3F6A _ 8D. 50, E3
        mov     eax, dword [ebp+0CH]                    ; 3F6D _ 8B. 45, 0C
        sub     eax, 1                                  ; 3F70 _ 83. E8, 01
        mov     dword [esp+18H], edx                    ; 3F73 _ 89. 54 24, 18
        mov     dword [esp+14H], eax                    ; 3F77 _ 89. 44 24, 14
        mov     dword [esp+10H], 0                      ; 3F7B _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 3F83 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 14                      ; 3F8B _ C7. 44 24, 08, 0000000E
        mov     eax, dword [ebp+0CH]                    ; 3F93 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 3F96 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3F9A _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3F9D _ 89. 04 24
        call    _boxfill8                               ; 3FA0 _ E8, 000005F1
        mov     eax, dword [ebp+10H]                    ; 3FA5 _ 8B. 45, 10
        lea     ecx, [eax-1CH]                          ; 3FA8 _ 8D. 48, E4
        mov     eax, dword [ebp+0CH]                    ; 3FAB _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 3FAE _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 3FB1 _ 8B. 45, 10
        sub     eax, 28                                 ; 3FB4 _ 83. E8, 1C
        mov     dword [esp+18H], ecx                    ; 3FB7 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 3FBB _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 3FBF _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 3FC3 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 3FCB _ C7. 44 24, 08, 00000008
        mov     eax, dword [ebp+0CH]                    ; 3FD3 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 3FD6 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3FDA _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3FDD _ 89. 04 24
        call    _boxfill8                               ; 3FE0 _ E8, 000005B1
        mov     eax, dword [ebp+10H]                    ; 3FE5 _ 8B. 45, 10
        lea     ecx, [eax-1BH]                          ; 3FE8 _ 8D. 48, E5
        mov     eax, dword [ebp+0CH]                    ; 3FEB _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 3FEE _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 3FF1 _ 8B. 45, 10
        sub     eax, 27                                 ; 3FF4 _ 83. E8, 1B
        mov     dword [esp+18H], ecx                    ; 3FF7 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 3FFB _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 3FFF _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 4003 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 7                       ; 400B _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 4013 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 4016 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 401A _ 8B. 45, 08
        mov     dword [esp], eax                        ; 401D _ 89. 04 24
        call    _boxfill8                               ; 4020 _ E8, 00000571
        mov     eax, dword [ebp+10H]                    ; 4025 _ 8B. 45, 10
        lea     ecx, [eax-1H]                           ; 4028 _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 402B _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 402E _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 4031 _ 8B. 45, 10
        sub     eax, 26                                 ; 4034 _ 83. E8, 1A
        mov     dword [esp+18H], ecx                    ; 4037 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 403B _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 403F _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 4043 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 404B _ C7. 44 24, 08, 00000008
        mov     eax, dword [ebp+0CH]                    ; 4053 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 4056 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 405A _ 8B. 45, 08
        mov     dword [esp], eax                        ; 405D _ 89. 04 24
        call    _boxfill8                               ; 4060 _ E8, 00000531
        mov     eax, dword [ebp+10H]                    ; 4065 _ 8B. 45, 10
        lea     edx, [eax-18H]                          ; 4068 _ 8D. 50, E8
        mov     eax, dword [ebp+10H]                    ; 406B _ 8B. 45, 10
        sub     eax, 24                                 ; 406E _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 4071 _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 4075 _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 407D _ 89. 44 24, 10
        mov     dword [esp+0CH], 3                      ; 4081 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 7                       ; 4089 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 4091 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 4094 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4098 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 409B _ 89. 04 24
        call    _boxfill8                               ; 409E _ E8, 000004F3
        mov     eax, dword [ebp+10H]                    ; 40A3 _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 40A6 _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 40A9 _ 8B. 45, 10
        sub     eax, 24                                 ; 40AC _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 40AF _ 89. 54 24, 18
        mov     dword [esp+14H], 2                      ; 40B3 _ C7. 44 24, 14, 00000002
        mov     dword [esp+10H], eax                    ; 40BB _ 89. 44 24, 10
        mov     dword [esp+0CH], 2                      ; 40BF _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 7                       ; 40C7 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 40CF _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 40D2 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 40D6 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 40D9 _ 89. 04 24
        call    _boxfill8                               ; 40DC _ E8, 000004B5
        mov     eax, dword [ebp+10H]                    ; 40E1 _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 40E4 _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 40E7 _ 8B. 45, 10
        sub     eax, 4                                  ; 40EA _ 83. E8, 04
        mov     dword [esp+18H], edx                    ; 40ED _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 40F1 _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 40F9 _ 89. 44 24, 10
        mov     dword [esp+0CH], 3                      ; 40FD _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 15                      ; 4105 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 410D _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 4110 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4114 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4117 _ 89. 04 24
        call    _boxfill8                               ; 411A _ E8, 00000477
        mov     eax, dword [ebp+10H]                    ; 411F _ 8B. 45, 10
        lea     edx, [eax-5H]                           ; 4122 _ 8D. 50, FB
        mov     eax, dword [ebp+10H]                    ; 4125 _ 8B. 45, 10
        sub     eax, 23                                 ; 4128 _ 83. E8, 17
        mov     dword [esp+18H], edx                    ; 412B _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 412F _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 4137 _ 89. 44 24, 10
        mov     dword [esp+0CH], 59                     ; 413B _ C7. 44 24, 0C, 0000003B
        mov     dword [esp+8H], 15                      ; 4143 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 414B _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 414E _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4152 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4155 _ 89. 04 24
        call    _boxfill8                               ; 4158 _ E8, 00000439
        mov     eax, dword [ebp+10H]                    ; 415D _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 4160 _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 4163 _ 8B. 45, 10
        sub     eax, 3                                  ; 4166 _ 83. E8, 03
        mov     dword [esp+18H], edx                    ; 4169 _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 416D _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 4175 _ 89. 44 24, 10
        mov     dword [esp+0CH], 2                      ; 4179 _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 0                       ; 4181 _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp+0CH]                    ; 4189 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 418C _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4190 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4193 _ 89. 04 24
        call    _boxfill8                               ; 4196 _ E8, 000003FB
        mov     eax, dword [ebp+10H]                    ; 419B _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 419E _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 41A1 _ 8B. 45, 10
        sub     eax, 24                                 ; 41A4 _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 41A7 _ 89. 54 24, 18
        mov     dword [esp+14H], 60                     ; 41AB _ C7. 44 24, 14, 0000003C
        mov     dword [esp+10H], eax                    ; 41B3 _ 89. 44 24, 10
        mov     dword [esp+0CH], 60                     ; 41B7 _ C7. 44 24, 0C, 0000003C
        mov     dword [esp+8H], 0                       ; 41BF _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp+0CH]                    ; 41C7 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 41CA _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 41CE _ 8B. 45, 08
        mov     dword [esp], eax                        ; 41D1 _ 89. 04 24
        call    _boxfill8                               ; 41D4 _ E8, 000003BD
        mov     eax, dword [ebp+10H]                    ; 41D9 _ 8B. 45, 10
        lea     ebx, [eax-18H]                          ; 41DC _ 8D. 58, E8
        mov     eax, dword [ebp+0CH]                    ; 41DF _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 41E2 _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 41E5 _ 8B. 45, 10
        lea     edx, [eax-18H]                          ; 41E8 _ 8D. 50, E8
        mov     eax, dword [ebp+0CH]                    ; 41EB _ 8B. 45, 0C
        sub     eax, 47                                 ; 41EE _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 41F1 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 41F5 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 41F9 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 41FD _ 89. 44 24, 0C
        mov     dword [esp+8H], 15                      ; 4201 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 4209 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 420C _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4210 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4213 _ 89. 04 24
        call    _boxfill8                               ; 4216 _ E8, 0000037B
        mov     eax, dword [ebp+10H]                    ; 421B _ 8B. 45, 10
        lea     ebx, [eax-4H]                           ; 421E _ 8D. 58, FC
        mov     eax, dword [ebp+0CH]                    ; 4221 _ 8B. 45, 0C
        lea     ecx, [eax-2FH]                          ; 4224 _ 8D. 48, D1
        mov     eax, dword [ebp+10H]                    ; 4227 _ 8B. 45, 10
        lea     edx, [eax-17H]                          ; 422A _ 8D. 50, E9
        mov     eax, dword [ebp+0CH]                    ; 422D _ 8B. 45, 0C
        sub     eax, 47                                 ; 4230 _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 4233 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 4237 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 423B _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 423F _ 89. 44 24, 0C
        mov     dword [esp+8H], 15                      ; 4243 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 424B _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 424E _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4252 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4255 _ 89. 04 24
        call    _boxfill8                               ; 4258 _ E8, 00000339
        mov     eax, dword [ebp+10H]                    ; 425D _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 4260 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 4263 _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 4266 _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 4269 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 426C _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 426F _ 8B. 45, 0C
        sub     eax, 47                                 ; 4272 _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 4275 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 4279 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 427D _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 4281 _ 89. 44 24, 0C
        mov     dword [esp+8H], 7                       ; 4285 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 428D _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 4290 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4294 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4297 _ 89. 04 24
        call    _boxfill8                               ; 429A _ E8, 000002F7
        mov     eax, dword [ebp+10H]                    ; 429F _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 42A2 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 42A5 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 42A8 _ 8D. 48, FD
        mov     eax, dword [ebp+10H]                    ; 42AB _ 8B. 45, 10
        lea     edx, [eax-18H]                          ; 42AE _ 8D. 50, E8
        mov     eax, dword [ebp+0CH]                    ; 42B1 _ 8B. 45, 0C
        sub     eax, 3                                  ; 42B4 _ 83. E8, 03
        mov     dword [esp+18H], ebx                    ; 42B7 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 42BB _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 42BF _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 42C3 _ 89. 44 24, 0C
        mov     dword [esp+8H], 7                       ; 42C7 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 42CF _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 42D2 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 42D6 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 42D9 _ 89. 04 24
        call    _boxfill8                               ; 42DC _ E8, 000002B5
        nop                                             ; 42E1 _ 90
        add     esp, 36                                 ; 42E2 _ 83. C4, 24
        pop     ebx                                     ; 42E5 _ 5B
        pop     ebp                                     ; 42E6 _ 5D
        ret                                             ; 42E7 _ C3
; _init_screen8 End of function

_computeMousePosition:; Function begin
        push    ebp                                     ; 42E8 _ 55
        mov     ebp, esp                                ; 42E9 _ 89. E5
        mov     eax, dword [ebp+10H]                    ; 42EB _ 8B. 45, 10
        mov     edx, dword [eax+4H]                     ; 42EE _ 8B. 50, 04
        mov     eax, dword [_mx]                        ; 42F1 _ A1, 00000000(d)
        add     eax, edx                                ; 42F6 _ 01. D0
        mov     dword [_mx], eax                        ; 42F8 _ A3, 00000000(d)
        mov     eax, dword [ebp+10H]                    ; 42FD _ 8B. 45, 10
        mov     edx, dword [eax+8H]                     ; 4300 _ 8B. 50, 08
        mov     eax, dword [_my]                        ; 4303 _ A1, 00000000(d)
        add     eax, edx                                ; 4308 _ 01. D0
        mov     dword [_my], eax                        ; 430A _ A3, 00000000(d)
        mov     eax, dword [_mx]                        ; 430F _ A1, 00000000(d)
        test    eax, eax                                ; 4314 _ 85. C0
        jns     ?_229                                   ; 4316 _ 79, 0A
        mov     dword [_mx], 0                          ; 4318 _ C7. 05, 00000000(d), 00000000
?_229:  mov     eax, dword [_my]                        ; 4322 _ A1, 00000000(d)
        test    eax, eax                                ; 4327 _ 85. C0
        jns     ?_230                                   ; 4329 _ 79, 0A
        mov     dword [_my], 0                          ; 432B _ C7. 05, 00000000(d), 00000000
?_230:  mov     edx, dword [_xsize]                     ; 4335 _ 8B. 15, 00000000(d)
        mov     eax, dword [_mx]                        ; 433B _ A1, 00000000(d)
        cmp     edx, eax                                ; 4340 _ 39. C2
        jg      ?_231                                   ; 4342 _ 7F, 0D
        mov     eax, dword [_xsize]                     ; 4344 _ A1, 00000000(d)
        sub     eax, 1                                  ; 4349 _ 83. E8, 01
        mov     dword [_mx], eax                        ; 434C _ A3, 00000000(d)
?_231:  mov     edx, dword [_ysize]                     ; 4351 _ 8B. 15, 00000000(d)
        mov     eax, dword [_my]                        ; 4357 _ A1, 00000000(d)
        cmp     edx, eax                                ; 435C _ 39. C2
        jg      ?_232                                   ; 435E _ 7F, 0D
        mov     eax, dword [_ysize]                     ; 4360 _ A1, 00000000(d)
        sub     eax, 1                                  ; 4365 _ 83. E8, 01
        mov     dword [_my], eax                        ; 4368 _ A3, 00000000(d)
?_232:  nop                                             ; 436D _ 90
        pop     ebp                                     ; 436E _ 5D
        ret                                             ; 436F _ C3
; _computeMousePosition End of function

_initBootInfo:; Function begin
        push    ebp                                     ; 4370 _ 55
        mov     ebp, esp                                ; 4371 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 4373 _ 8B. 45, 08
        mov     dword [eax], -536870912                 ; 4376 _ C7. 00, E0000000
        mov     eax, dword [ebp+8H]                     ; 437C _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 640                      ; 437F _ 66: C7. 40, 04, 0280
        mov     eax, dword [ebp+8H]                     ; 4385 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 480                      ; 4388 _ 66: C7. 40, 06, 01E0
        nop                                             ; 438E _ 90
        pop     ebp                                     ; 438F _ 5D
        ret                                             ; 4390 _ C3
; _initBootInfo End of function

_init_palette:; Function begin
        push    ebp                                     ; 4391 _ 55
        mov     ebp, esp                                ; 4392 _ 89. E5
        push    ebx                                     ; 4394 _ 53
        sub     esp, 692                                ; 4395 _ 81. EC, 000002B4
        mov     dword [esp+4H], 15                      ; 43A3 _ C7. 44 24, 04, 0000000F
        mov     dword [esp], 0                          ; 43AB _ C7. 04 24, 00000000
mov     dword [esp+8H], _table_rgb.2345
        call    _set_palette                            ; 43B2 _ E8, 00000139
        mov     dword [ebp-14H], 0                      ; 43B7 _ C7. 45, EC, 00000000
        jmp     ?_238                                   ; 43BE _ E9, 000000FB

?_233:  mov     dword [ebp-10H], 0                      ; 43C3 _ C7. 45, F0, 00000000
        jmp     ?_237                                   ; 43CA _ E9, 000000E1

?_234:  mov     dword [ebp-0CH], 0                      ; 43CF _ C7. 45, F4, 00000000
        jmp     ?_236                                   ; 43D6 _ E9, 000000C7

?_235:  mov     eax, dword [ebp-0CH]                    ; 43DB _ 8B. 45, F4
        mov     ebx, eax                                ; 43DE _ 89. C3
        mov     edx, dword [ebp-10H]                    ; 43E0 _ 8B. 55, F0
        mov     eax, edx                                ; 43E3 _ 89. D0
        add     eax, eax                                ; 43E5 _ 01. C0
        add     eax, edx                                ; 43E7 _ 01. D0
        add     eax, eax                                ; 43E9 _ 01. C0
        mov     edx, eax                                ; 43EB _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 43ED _ 8B. 45, F4
        lea     ecx, [edx+eax]                          ; 43F0 _ 8D. 0C 02
        mov     edx, dword [ebp-14H]                    ; 43F3 _ 8B. 55, EC
        mov     eax, edx                                ; 43F6 _ 89. D0
        shl     eax, 3                                  ; 43F8 _ C1. E0, 03
        add     eax, edx                                ; 43FB _ 01. D0
        shl     eax, 2                                  ; 43FD _ C1. E0, 02
        lea     edx, [ecx+eax]                          ; 4400 _ 8D. 14 01
        mov     eax, edx                                ; 4403 _ 89. D0
        add     eax, eax                                ; 4405 _ 01. C0
        add     edx, eax                                ; 4407 _ 01. C2
        mov     ecx, 51                                 ; 4409 _ B9, 00000033
        mov     eax, ebx                                ; 440E _ 89. D8
        imul    eax, ecx                                ; 4410 _ 0F AF. C1
        mov     byte [ebp+edx-29CH], al                 ; 4413 _ 88. 84 15, FFFFFD64
        mov     eax, dword [ebp-10H]                    ; 441A _ 8B. 45, F0
        mov     ebx, eax                                ; 441D _ 89. C3
        mov     edx, dword [ebp-10H]                    ; 441F _ 8B. 55, F0
        mov     eax, edx                                ; 4422 _ 89. D0
        add     eax, eax                                ; 4424 _ 01. C0
        add     eax, edx                                ; 4426 _ 01. D0
        add     eax, eax                                ; 4428 _ 01. C0
        mov     edx, eax                                ; 442A _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 442C _ 8B. 45, F4
        lea     ecx, [edx+eax]                          ; 442F _ 8D. 0C 02
        mov     edx, dword [ebp-14H]                    ; 4432 _ 8B. 55, EC
        mov     eax, edx                                ; 4435 _ 89. D0
        shl     eax, 3                                  ; 4437 _ C1. E0, 03
        add     eax, edx                                ; 443A _ 01. D0
        shl     eax, 2                                  ; 443C _ C1. E0, 02
        lea     edx, [ecx+eax]                          ; 443F _ 8D. 14 01
        mov     eax, edx                                ; 4442 _ 89. D0
        add     eax, eax                                ; 4444 _ 01. C0
        add     eax, edx                                ; 4446 _ 01. D0
        lea     edx, [eax+1H]                           ; 4448 _ 8D. 50, 01
        mov     ecx, 51                                 ; 444B _ B9, 00000033
        mov     eax, ebx                                ; 4450 _ 89. D8
        imul    eax, ecx                                ; 4452 _ 0F AF. C1
        mov     byte [ebp+edx-29CH], al                 ; 4455 _ 88. 84 15, FFFFFD64
        mov     eax, dword [ebp-14H]                    ; 445C _ 8B. 45, EC
        mov     ebx, eax                                ; 445F _ 89. C3
        mov     edx, dword [ebp-10H]                    ; 4461 _ 8B. 55, F0
        mov     eax, edx                                ; 4464 _ 89. D0
        add     eax, eax                                ; 4466 _ 01. C0
        add     eax, edx                                ; 4468 _ 01. D0
        add     eax, eax                                ; 446A _ 01. C0
        mov     edx, eax                                ; 446C _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 446E _ 8B. 45, F4
        lea     ecx, [edx+eax]                          ; 4471 _ 8D. 0C 02
        mov     edx, dword [ebp-14H]                    ; 4474 _ 8B. 55, EC
        mov     eax, edx                                ; 4477 _ 89. D0
        shl     eax, 3                                  ; 4479 _ C1. E0, 03
        add     eax, edx                                ; 447C _ 01. D0
        shl     eax, 2                                  ; 447E _ C1. E0, 02
        lea     edx, [ecx+eax]                          ; 4481 _ 8D. 14 01
        mov     eax, edx                                ; 4484 _ 89. D0
        add     eax, eax                                ; 4486 _ 01. C0
        add     eax, edx                                ; 4488 _ 01. D0
        lea     edx, [eax+2H]                           ; 448A _ 8D. 50, 02
        mov     ecx, 51                                 ; 448D _ B9, 00000033
        mov     eax, ebx                                ; 4492 _ 89. D8
        imul    eax, ecx                                ; 4494 _ 0F AF. C1
        mov     byte [ebp+edx-29CH], al                 ; 4497 _ 88. 84 15, FFFFFD64
        add     dword [ebp-0CH], 1                      ; 449E _ 83. 45, F4, 01
?_236:  cmp     dword [ebp-0CH], 5                      ; 44A2 _ 83. 7D, F4, 05
        jle     ?_235                                   ; 44A6 _ 0F 8E, FFFFFF2F
        add     dword [ebp-10H], 1                      ; 44AC _ 83. 45, F0, 01
?_237:  cmp     dword [ebp-10H], 5                      ; 44B0 _ 83. 7D, F0, 05
        jle     ?_234                                   ; 44B4 _ 0F 8E, FFFFFF15
        add     dword [ebp-14H], 1                      ; 44BA _ 83. 45, EC, 01
?_238:  cmp     dword [ebp-14H], 5                      ; 44BE _ 83. 7D, EC, 05
        jle     ?_233                                   ; 44C2 _ 0F 8E, FFFFFEFB
        lea     eax, [ebp-29CH]                         ; 44C8 _ 8D. 85, FFFFFD64
        mov     dword [esp+8H], eax                     ; 44CE _ 89. 44 24, 08
        mov     dword [esp+4H], 231                     ; 44D2 _ C7. 44 24, 04, 000000E7
        mov     dword [esp], 16                         ; 44DA _ C7. 04 24, 00000010
mov     dword [esp+8H], _table_rgb.2345
        call    _set_palette                            ; 44E1 _ E8, 0000000A
        nop                                             ; 44E6 _ 90
        add     esp, 692                                ; 44E7 _ 81. C4, 000002B4
        pop     ebx                                     ; 44ED _ 5B
        pop     ebp                                     ; 44EE _ 5D
        ret                                             ; 44EF _ C3
; _init_palette End of function

_set_palette:; Function begin
        push    ebp                                     ; 44F0 _ 55
        mov     ebp, esp                                ; 44F1 _ 89. E5
        sub     esp, 40                                 ; 44F3 _ 83. EC, 28
        call    _io_load_eflags                         ; 44F6 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 44FB _ 89. 45, F0
        call    _io_cli                                 ; 44FE _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 4503 _ 8B. 45, 08
        mov     dword [esp+4H], eax                     ; 4506 _ 89. 44 24, 04
        mov     dword [esp], 968                        ; 450A _ C7. 04 24, 000003C8
        call    _io_out8                                ; 4511 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 4516 _ 8B. 45, 08
        mov     dword [ebp-0CH], eax                    ; 4519 _ 89. 45, F4
        jmp     ?_240                                   ; 451C _ EB, 62

?_239:  mov     eax, dword [ebp+10H]                    ; 451E _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 4521 _ 0F B6. 00
        shr     al, 2                                   ; 4524 _ C0. E8, 02
        movzx   eax, al                                 ; 4527 _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 452A _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 452E _ C7. 04 24, 000003C9
        call    _io_out8                                ; 4535 _ E8, 00000000(rel)
        mov     eax, dword [ebp+10H]                    ; 453A _ 8B. 45, 10
        add     eax, 1                                  ; 453D _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 4540 _ 0F B6. 00
        shr     al, 2                                   ; 4543 _ C0. E8, 02
        movzx   eax, al                                 ; 4546 _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 4549 _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 454D _ C7. 04 24, 000003C9
        call    _io_out8                                ; 4554 _ E8, 00000000(rel)
        mov     eax, dword [ebp+10H]                    ; 4559 _ 8B. 45, 10
        add     eax, 2                                  ; 455C _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 455F _ 0F B6. 00
        shr     al, 2                                   ; 4562 _ C0. E8, 02
        movzx   eax, al                                 ; 4565 _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 4568 _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 456C _ C7. 04 24, 000003C9
        call    _io_out8                                ; 4573 _ E8, 00000000(rel)
        add     dword [ebp+10H], 3                      ; 4578 _ 83. 45, 10, 03
        add     dword [ebp-0CH], 1                      ; 457C _ 83. 45, F4, 01
?_240:  mov     eax, dword [ebp-0CH]                    ; 4580 _ 8B. 45, F4
        cmp     eax, dword [ebp+0CH]                    ; 4583 _ 3B. 45, 0C
        jle     ?_239                                   ; 4586 _ 7E, 96
        mov     eax, dword [ebp-10H]                    ; 4588 _ 8B. 45, F0
        mov     dword [esp], eax                        ; 458B _ 89. 04 24
        call    _io_store_eflags                        ; 458E _ E8, 00000000(rel)
        nop                                             ; 4593 _ 90
        leave                                           ; 4594 _ C9
        ret                                             ; 4595 _ C3
; _set_palette End of function

_boxfill8:; Function begin
        push    ebp                                     ; 4596 _ 55
        mov     ebp, esp                                ; 4597 _ 89. E5
        sub     esp, 20                                 ; 4599 _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 459C _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 459F _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 45A2 _ 8B. 45, 18
        mov     dword [ebp-8H], eax                     ; 45A5 _ 89. 45, F8
        jmp     ?_244                                   ; 45A8 _ EB, 31

?_241:  mov     eax, dword [ebp+14H]                    ; 45AA _ 8B. 45, 14
        mov     dword [ebp-4H], eax                     ; 45AD _ 89. 45, FC
        jmp     ?_243                                   ; 45B0 _ EB, 1D

?_242:  mov     eax, dword [ebp-8H]                     ; 45B2 _ 8B. 45, F8
        imul    eax, dword [ebp+0CH]                    ; 45B5 _ 0F AF. 45, 0C
        mov     edx, dword [ebp-4H]                     ; 45B9 _ 8B. 55, FC
        add     eax, edx                                ; 45BC _ 01. D0
        mov     edx, eax                                ; 45BE _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 45C0 _ 8B. 45, 08
        add     edx, eax                                ; 45C3 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 45C5 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 45C9 _ 88. 02
        add     dword [ebp-4H], 1                       ; 45CB _ 83. 45, FC, 01
?_243:  mov     eax, dword [ebp-4H]                     ; 45CF _ 8B. 45, FC
        cmp     eax, dword [ebp+1CH]                    ; 45D2 _ 3B. 45, 1C
        jle     ?_242                                   ; 45D5 _ 7E, DB
        add     dword [ebp-8H], 1                       ; 45D7 _ 83. 45, F8, 01
?_244:  mov     eax, dword [ebp-8H]                     ; 45DB _ 8B. 45, F8
        cmp     eax, dword [ebp+20H]                    ; 45DE _ 3B. 45, 20
        jle     ?_241                                   ; 45E1 _ 7E, C7
        nop                                             ; 45E3 _ 90
        leave                                           ; 45E4 _ C9
        ret                                             ; 45E5 _ C3
; _boxfill8 End of function

_showFont8:; Function begin
        push    ebp                                     ; 45E6 _ 55
        mov     ebp, esp                                ; 45E7 _ 89. E5
        sub     esp, 20                                 ; 45E9 _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 45EC _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 45EF _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 45F2 _ C7. 45, FC, 00000000
        jmp     ?_254                                   ; 45F9 _ E9, 0000015C

?_245:  mov     edx, dword [ebp-4H]                     ; 45FE _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 4601 _ 8B. 45, 1C
        add     eax, edx                                ; 4604 _ 01. D0
        movzx   eax, byte [eax]                         ; 4606 _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 4609 _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 460C _ 80. 7D, FB, 00
        jns     ?_246                                   ; 4610 _ 79, 1E
        mov     edx, dword [ebp+14H]                    ; 4612 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 4615 _ 8B. 45, FC
        add     eax, edx                                ; 4618 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 461A _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 461E _ 8B. 55, 10
        add     eax, edx                                ; 4621 _ 01. D0
        mov     edx, eax                                ; 4623 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 4625 _ 8B. 45, 08
        add     edx, eax                                ; 4628 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 462A _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 462E _ 88. 02
?_246:  movsx   eax, byte [ebp-5H]                      ; 4630 _ 0F BE. 45, FB
        and     eax, 40H                                ; 4634 _ 83. E0, 40
        test    eax, eax                                ; 4637 _ 85. C0
        jz      ?_247                                   ; 4639 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 463B _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 463E _ 8B. 45, FC
        add     eax, edx                                ; 4641 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 4643 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 4647 _ 8B. 55, 10
        add     eax, edx                                ; 464A _ 01. D0
        lea     edx, [eax+1H]                           ; 464C _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 464F _ 8B. 45, 08
        add     edx, eax                                ; 4652 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 4654 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 4658 _ 88. 02
?_247:  movsx   eax, byte [ebp-5H]                      ; 465A _ 0F BE. 45, FB
        and     eax, 20H                                ; 465E _ 83. E0, 20
        test    eax, eax                                ; 4661 _ 85. C0
        jz      ?_248                                   ; 4663 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 4665 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 4668 _ 8B. 45, FC
        add     eax, edx                                ; 466B _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 466D _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 4671 _ 8B. 55, 10
        add     eax, edx                                ; 4674 _ 01. D0
        lea     edx, [eax+2H]                           ; 4676 _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 4679 _ 8B. 45, 08
        add     edx, eax                                ; 467C _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 467E _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 4682 _ 88. 02
?_248:  movsx   eax, byte [ebp-5H]                      ; 4684 _ 0F BE. 45, FB
        and     eax, 10H                                ; 4688 _ 83. E0, 10
        test    eax, eax                                ; 468B _ 85. C0
        jz      ?_249                                   ; 468D _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 468F _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 4692 _ 8B. 45, FC
        add     eax, edx                                ; 4695 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 4697 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 469B _ 8B. 55, 10
        add     eax, edx                                ; 469E _ 01. D0
        lea     edx, [eax+3H]                           ; 46A0 _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 46A3 _ 8B. 45, 08
        add     edx, eax                                ; 46A6 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 46A8 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 46AC _ 88. 02
?_249:  movsx   eax, byte [ebp-5H]                      ; 46AE _ 0F BE. 45, FB
        and     eax, 08H                                ; 46B2 _ 83. E0, 08
        test    eax, eax                                ; 46B5 _ 85. C0
        jz      ?_250                                   ; 46B7 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 46B9 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 46BC _ 8B. 45, FC
        add     eax, edx                                ; 46BF _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 46C1 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 46C5 _ 8B. 55, 10
        add     eax, edx                                ; 46C8 _ 01. D0
        lea     edx, [eax+4H]                           ; 46CA _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 46CD _ 8B. 45, 08
        add     edx, eax                                ; 46D0 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 46D2 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 46D6 _ 88. 02
?_250:  movsx   eax, byte [ebp-5H]                      ; 46D8 _ 0F BE. 45, FB
        and     eax, 04H                                ; 46DC _ 83. E0, 04
        test    eax, eax                                ; 46DF _ 85. C0
        jz      ?_251                                   ; 46E1 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 46E3 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 46E6 _ 8B. 45, FC
        add     eax, edx                                ; 46E9 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 46EB _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 46EF _ 8B. 55, 10
        add     eax, edx                                ; 46F2 _ 01. D0
        lea     edx, [eax+5H]                           ; 46F4 _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 46F7 _ 8B. 45, 08
        add     edx, eax                                ; 46FA _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 46FC _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 4700 _ 88. 02
?_251:  movsx   eax, byte [ebp-5H]                      ; 4702 _ 0F BE. 45, FB
        and     eax, 02H                                ; 4706 _ 83. E0, 02
        test    eax, eax                                ; 4709 _ 85. C0
        jz      ?_252                                   ; 470B _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 470D _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 4710 _ 8B. 45, FC
        add     eax, edx                                ; 4713 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 4715 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 4719 _ 8B. 55, 10
        add     eax, edx                                ; 471C _ 01. D0
        lea     edx, [eax+6H]                           ; 471E _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 4721 _ 8B. 45, 08
        add     edx, eax                                ; 4724 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 4726 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 472A _ 88. 02
?_252:  movsx   eax, byte [ebp-5H]                      ; 472C _ 0F BE. 45, FB
        and     eax, 01H                                ; 4730 _ 83. E0, 01
        test    eax, eax                                ; 4733 _ 85. C0
        jz      ?_253                                   ; 4735 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 4737 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 473A _ 8B. 45, FC
        add     eax, edx                                ; 473D _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 473F _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 4743 _ 8B. 55, 10
        add     eax, edx                                ; 4746 _ 01. D0
        lea     edx, [eax+7H]                           ; 4748 _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 474B _ 8B. 45, 08
        add     edx, eax                                ; 474E _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 4750 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 4754 _ 88. 02
?_253:  add     dword [ebp-4H], 1                       ; 4756 _ 83. 45, FC, 01
?_254:  cmp     dword [ebp-4H], 15                      ; 475A _ 83. 7D, FC, 0F
        jle     ?_245                                   ; 475E _ 0F 8E, FFFFFE9A
        nop                                             ; 4764 _ 90
        leave                                           ; 4765 _ C9
        ret                                             ; 4766 _ C3
; _showFont8 End of function

_init_mouse_cursor:; Function begin
        push    ebp                                     ; 4767 _ 55
        mov     ebp, esp                                ; 4768 _ 89. E5
        sub     esp, 20                                 ; 476A _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 476D _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 4770 _ 88. 45, EC
        mov     dword [ebp-8H], 0                       ; 4773 _ C7. 45, F8, 00000000
        jmp     ?_261                                   ; 477A _ E9, 000000B1

?_255:  mov     dword [ebp-4H], 0                       ; 477F _ C7. 45, FC, 00000000
        jmp     ?_260                                   ; 4786 _ E9, 00000097

?_256:  mov     eax, dword [ebp-8H]                     ; 478B _ 8B. 45, F8
        shl     eax, 4                                  ; 478E _ C1. E0, 04
        mov     edx, eax                                ; 4791 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 4793 _ 8B. 45, FC
        add     eax, edx                                ; 4796 _ 01. D0
        add     eax, _cursor.2412                       ; 4798 _ 05, 00000220(d)
        movzx   eax, byte [eax]                         ; 479D _ 0F B6. 00
        cmp     al, 42                                  ; 47A0 _ 3C, 2A
        jnz     ?_257                                   ; 47A2 _ 75, 17
        mov     eax, dword [ebp-8H]                     ; 47A4 _ 8B. 45, F8
        shl     eax, 4                                  ; 47A7 _ C1. E0, 04
        mov     edx, eax                                ; 47AA _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 47AC _ 8B. 45, FC
        add     eax, edx                                ; 47AF _ 01. D0
        mov     edx, eax                                ; 47B1 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 47B3 _ 8B. 45, 08
        add     eax, edx                                ; 47B6 _ 01. D0
        mov     byte [eax], 0                           ; 47B8 _ C6. 00, 00
?_257:  mov     eax, dword [ebp-8H]                     ; 47BB _ 8B. 45, F8
        shl     eax, 4                                  ; 47BE _ C1. E0, 04
        mov     edx, eax                                ; 47C1 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 47C3 _ 8B. 45, FC
        add     eax, edx                                ; 47C6 _ 01. D0
        add     eax, _cursor.2412                       ; 47C8 _ 05, 00000220(d)
        movzx   eax, byte [eax]                         ; 47CD _ 0F B6. 00
        cmp     al, 79                                  ; 47D0 _ 3C, 4F
        jnz     ?_258                                   ; 47D2 _ 75, 17
        mov     eax, dword [ebp-8H]                     ; 47D4 _ 8B. 45, F8
        shl     eax, 4                                  ; 47D7 _ C1. E0, 04
        mov     edx, eax                                ; 47DA _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 47DC _ 8B. 45, FC
        add     eax, edx                                ; 47DF _ 01. D0
        mov     edx, eax                                ; 47E1 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 47E3 _ 8B. 45, 08
        add     eax, edx                                ; 47E6 _ 01. D0
        mov     byte [eax], 7                           ; 47E8 _ C6. 00, 07
?_258:  mov     eax, dword [ebp-8H]                     ; 47EB _ 8B. 45, F8
        shl     eax, 4                                  ; 47EE _ C1. E0, 04
        mov     edx, eax                                ; 47F1 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 47F3 _ 8B. 45, FC
        add     eax, edx                                ; 47F6 _ 01. D0
        add     eax, _cursor.2412                       ; 47F8 _ 05, 00000220(d)
        movzx   eax, byte [eax]                         ; 47FD _ 0F B6. 00
        cmp     al, 46                                  ; 4800 _ 3C, 2E
        jnz     ?_259                                   ; 4802 _ 75, 1A
        mov     eax, dword [ebp-8H]                     ; 4804 _ 8B. 45, F8
        shl     eax, 4                                  ; 4807 _ C1. E0, 04
        mov     edx, eax                                ; 480A _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 480C _ 8B. 45, FC
        add     eax, edx                                ; 480F _ 01. D0
        mov     edx, eax                                ; 4811 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 4813 _ 8B. 45, 08
        add     edx, eax                                ; 4816 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 4818 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 481C _ 88. 02
?_259:  add     dword [ebp-4H], 1                       ; 481E _ 83. 45, FC, 01
?_260:  cmp     dword [ebp-4H], 15                      ; 4822 _ 83. 7D, FC, 0F
        jle     ?_256                                   ; 4826 _ 0F 8E, FFFFFF5F
        add     dword [ebp-8H], 1                       ; 482C _ 83. 45, F8, 01
?_261:  cmp     dword [ebp-8H], 15                      ; 4830 _ 83. 7D, F8, 0F
        jle     ?_255                                   ; 4834 _ 0F 8E, FFFFFF45
        nop                                             ; 483A _ 90
        leave                                           ; 483B _ C9
        ret                                             ; 483C _ C3
; _init_mouse_cursor End of function

_putblock:; Function begin
        push    ebp                                     ; 483D _ 55
        mov     ebp, esp                                ; 483E _ 89. E5
        push    ebx                                     ; 4840 _ 53
        sub     esp, 16                                 ; 4841 _ 83. EC, 10
        mov     dword [ebp-0CH], 0                      ; 4844 _ C7. 45, F4, 00000000
        jmp     ?_265                                   ; 484B _ EB, 4E

?_262:  mov     dword [ebp-8H], 0                       ; 484D _ C7. 45, F8, 00000000
        jmp     ?_264                                   ; 4854 _ EB, 39

?_263:  mov     eax, dword [ebp-0CH]                    ; 4856 _ 8B. 45, F4
        imul    eax, dword [ebp+24H]                    ; 4859 _ 0F AF. 45, 24
        mov     edx, dword [ebp-8H]                     ; 485D _ 8B. 55, F8
        add     eax, edx                                ; 4860 _ 01. D0
        mov     edx, eax                                ; 4862 _ 89. C2
        mov     eax, dword [ebp+20H]                    ; 4864 _ 8B. 45, 20
        add     eax, edx                                ; 4867 _ 01. D0
        mov     ecx, dword [ebp+1CH]                    ; 4869 _ 8B. 4D, 1C
        mov     edx, dword [ebp-0CH]                    ; 486C _ 8B. 55, F4
        add     edx, ecx                                ; 486F _ 01. CA
        imul    edx, dword [ebp+0CH]                    ; 4871 _ 0F AF. 55, 0C
        mov     ebx, dword [ebp+18H]                    ; 4875 _ 8B. 5D, 18
        mov     ecx, dword [ebp-8H]                     ; 4878 _ 8B. 4D, F8
        add     ecx, ebx                                ; 487B _ 01. D9
        add     edx, ecx                                ; 487D _ 01. CA
        mov     ecx, edx                                ; 487F _ 89. D1
        mov     edx, dword [ebp+8H]                     ; 4881 _ 8B. 55, 08
        add     edx, ecx                                ; 4884 _ 01. CA
        movzx   eax, byte [eax]                         ; 4886 _ 0F B6. 00
        mov     byte [edx], al                          ; 4889 _ 88. 02
        add     dword [ebp-8H], 1                       ; 488B _ 83. 45, F8, 01
?_264:  mov     eax, dword [ebp-8H]                     ; 488F _ 8B. 45, F8
        cmp     eax, dword [ebp+10H]                    ; 4892 _ 3B. 45, 10
        jl      ?_263                                   ; 4895 _ 7C, BF
        add     dword [ebp-0CH], 1                      ; 4897 _ 83. 45, F4, 01
?_265:  mov     eax, dword [ebp-0CH]                    ; 489B _ 8B. 45, F4
        cmp     eax, dword [ebp+14H]                    ; 489E _ 3B. 45, 14
        jl      ?_262                                   ; 48A1 _ 7C, AA
        nop                                             ; 48A3 _ 90
        add     esp, 16                                 ; 48A4 _ 83. C4, 10
        pop     ebx                                     ; 48A7 _ 5B
        pop     ebp                                     ; 48A8 _ 5D
        ret                                             ; 48A9 _ C3
; _putblock End of function

_charToHexVal:; Function begin
        push    ebp                                     ; 48AA _ 55
        mov     ebp, esp                                ; 48AB _ 89. E5
        sub     esp, 4                                  ; 48AD _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 48B0 _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 48B3 _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 48B6 _ 80. 7D, FC, 09
        jle     ?_266                                   ; 48BA _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 48BC _ 0F B6. 45, FC
        add     eax, 55                                 ; 48C0 _ 83. C0, 37
        jmp     ?_267                                   ; 48C3 _ EB, 07

?_266:  movzx   eax, byte [ebp-4H]                      ; 48C5 _ 0F B6. 45, FC
        add     eax, 48                                 ; 48C9 _ 83. C0, 30
?_267:  leave                                           ; 48CC _ C9
        ret                                             ; 48CD _ C3
; _charToHexVal End of function

_charToHexStr:; Function begin
        push    ebp                                     ; 48CE _ 55
        mov     ebp, esp                                ; 48CF _ 89. E5
        sub     esp, 24                                 ; 48D1 _ 83. EC, 18
        mov     eax, dword [ebp+8H]                     ; 48D4 _ 8B. 45, 08
        mov     byte [ebp-14H], al                      ; 48D7 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 48DA _ C7. 45, FC, 00000000
        movzx   eax, byte [ebp-14H]                     ; 48E1 _ 0F B6. 45, EC
        and     eax, 0FH                                ; 48E5 _ 83. E0, 0F
        mov     byte [ebp-5H], al                       ; 48E8 _ 88. 45, FB
        movsx   eax, byte [ebp-5H]                      ; 48EB _ 0F BE. 45, FB
        mov     dword [esp], eax                        ; 48EF _ 89. 04 24
        call    _charToHexVal                           ; 48F2 _ E8, FFFFFFB3
        movzx   eax, byte [ebp-14H]                     ; 48FC _ 0F B6. 45, EC
        shr     al, 4                                   ; 4900 _ C0. E8, 04
        mov     byte [ebp-14H], al                      ; 4903 _ 88. 45, EC
        movzx   eax, byte [ebp-14H]                     ; 4906 _ 0F B6. 45, EC
        movsx   eax, al                                 ; 490A _ 0F BE. C0
        mov     dword [esp], eax                        ; 490D _ 89. 04 24
        call    _charToHexVal                           ; 4910 _ E8, FFFFFF95
        mov     eax, _keyval                            ; 491A _ B8, 000000F0(d)
        leave                                           ; 491F _ C9
        ret                                             ; 4920 _ C3
; _charToHexStr End of function

_intToHexStr:; Function begin
        push    ebp                                     ; 4921 _ 55
        mov     ebp, esp                                ; 4922 _ 89. E5
        sub     esp, 32                                 ; 4924 _ 83. EC, 20
        mov     byte [ebp-17H], 48                      ; 4927 _ C6. 45, E9, 30
        mov     byte [ebp-16H], 88                      ; 492B _ C6. 45, EA, 58
        mov     byte [ebp-0DH], 0                       ; 492F _ C6. 45, F3, 00
        mov     dword [ebp-4H], 2                       ; 4933 _ C7. 45, FC, 00000002
        jmp     ?_269                                   ; 493A _ EB, 0F

?_268:  lea     eax, [ebp-17H]                          ; 493C _ 8D. 45, E9
        mov     edx, dword [ebp-4H]                     ; 493F _ 8B. 55, FC
        add     eax, edx                                ; 4942 _ 01. D0
        mov     byte [eax], 48                          ; 4944 _ C6. 00, 30
        add     dword [ebp-4H], 1                       ; 4947 _ 83. 45, FC, 01
?_269:  cmp     dword [ebp-4H], 9                       ; 494B _ 83. 7D, FC, 09
        jle     ?_268                                   ; 494F _ 7E, EB
        mov     dword [ebp-8H], 9                       ; 4951 _ C7. 45, F8, 00000009
        jmp     ?_273                                   ; 4958 _ EB, 42

?_270:  mov     eax, dword [ebp+8H]                     ; 495A _ 8B. 45, 08
        and     eax, 0FH                                ; 495D _ 83. E0, 0F
        mov     dword [ebp-0CH], eax                    ; 4960 _ 89. 45, F4
        mov     eax, dword [ebp+8H]                     ; 4963 _ 8B. 45, 08
        shr     eax, 4                                  ; 4966 _ C1. E8, 04
        mov     dword [ebp+8H], eax                     ; 4969 _ 89. 45, 08
        cmp     dword [ebp-0CH], 9                      ; 496C _ 83. 7D, F4, 09
        jle     ?_271                                   ; 4970 _ 7E, 14
        mov     eax, dword [ebp-0CH]                    ; 4972 _ 8B. 45, F4
        add     eax, 55                                 ; 4975 _ 83. C0, 37
        mov     ecx, eax                                ; 4978 _ 89. C1
        lea     eax, [ebp-17H]                          ; 497A _ 8D. 45, E9
        mov     edx, dword [ebp-8H]                     ; 497D _ 8B. 55, F8
        add     eax, edx                                ; 4980 _ 01. D0
        mov     byte [eax], cl                          ; 4982 _ 88. 08
        jmp     ?_272                                   ; 4984 _ EB, 12

?_271:  mov     eax, dword [ebp-0CH]                    ; 4986 _ 8B. 45, F4
        add     eax, 48                                 ; 4989 _ 83. C0, 30
        mov     ecx, eax                                ; 498C _ 89. C1
        lea     eax, [ebp-17H]                          ; 498E _ 8D. 45, E9
        mov     edx, dword [ebp-8H]                     ; 4991 _ 8B. 55, F8
        add     eax, edx                                ; 4994 _ 01. D0
        mov     byte [eax], cl                          ; 4996 _ 88. 08
?_272:  sub     dword [ebp-8H], 1                       ; 4998 _ 83. 6D, F8, 01
?_273:  cmp     dword [ebp-8H], 1                       ; 499C _ 83. 7D, F8, 01
        jle     ?_274                                   ; 49A0 _ 7E, 06
        cmp     dword [ebp+8H], 0                       ; 49A2 _ 83. 7D, 08, 00
        jnz     ?_270                                   ; 49A6 _ 75, B2
?_274:  mov     eax, 0                                  ; 49A8 _ B8, 00000000
        leave                                           ; 49AD _ C9
        ret                                             ; 49AE _ C3
; _intToHexStr End of function

        nop                                             ; 49AF _ 90


_shtctl_init:
        push    ebp                                     ; 49B0 _ 55
        mov     ebp, esp                                ; 49B1 _ 89. E5
        sub     esp, 40                                 ; 49B3 _ 83. EC, 28
        mov     dword [esp+4H], 9232                    ; 49B6 _ C7. 44 24, 04, 00002410
        mov     eax, dword [ebp+8H]                     ; 49BE _ 8B. 45, 08
        mov     dword [esp], eax                        ; 49C1 _ 89. 04 24
        call    _memman_alloc_4k                        ; 49C4 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 49C9 _ 89. 45, F0
        cmp     dword [ebp-10H], 0                      ; 49CC _ 83. 7D, F0, 00
        jnz     ?_275                                   ; 49D0 _ 75, 0A
        mov     eax, 0                                  ; 49D2 _ B8, 00000000
        jmp     ?_279                                   ; 49D7 _ E9, 000000A3

?_275:  mov     eax, dword [ebp+10H]                    ; 49DC _ 8B. 45, 10
        imul    eax, dword [ebp+14H]                    ; 49DF _ 0F AF. 45, 14
        mov     dword [esp+4H], eax                     ; 49E3 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 49E7 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 49EA _ 89. 04 24
        call    _memman_alloc_4k                        ; 49ED _ E8, 00000000(rel)
        mov     edx, eax                                ; 49F2 _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 49F4 _ 8B. 45, F0
        mov     dword [eax+4H], edx                     ; 49F7 _ 89. 50, 04
        mov     eax, dword [ebp-10H]                    ; 49FA _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 49FD _ 8B. 40, 04
        test    eax, eax                                ; 4A00 _ 85. C0
        jnz     ?_276                                   ; 4A02 _ 75, 21
        mov     eax, dword [ebp-10H]                    ; 4A04 _ 8B. 45, F0
        mov     dword [esp+8H], 9232                    ; 4A07 _ C7. 44 24, 08, 00002410
        mov     dword [esp+4H], eax                     ; 4A0F _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4A13 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4A16 _ 89. 04 24
        call    _memman_free_4k                         ; 4A19 _ E8, 00000000(rel)
        mov     eax, 0                                  ; 4A1E _ B8, 00000000
        jmp     ?_279                                   ; 4A23 _ EB, 5A

?_276:  mov     eax, dword [ebp-10H]                    ; 4A25 _ 8B. 45, F0
        mov     edx, dword [ebp+0CH]                    ; 4A28 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 4A2B _ 89. 10
        mov     eax, dword [ebp-10H]                    ; 4A2D _ 8B. 45, F0
        mov     edx, dword [ebp+10H]                    ; 4A30 _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 4A33 _ 89. 50, 08
        mov     eax, dword [ebp-10H]                    ; 4A36 _ 8B. 45, F0
        mov     edx, dword [ebp+14H]                    ; 4A39 _ 8B. 55, 14
        mov     dword [eax+0CH], edx                    ; 4A3C _ 89. 50, 0C
        mov     eax, dword [ebp-10H]                    ; 4A3F _ 8B. 45, F0
        mov     dword [eax+10H], -1                     ; 4A42 _ C7. 40, 10, FFFFFFFF
        mov     dword [ebp-0CH], 0                      ; 4A49 _ C7. 45, F4, 00000000
        jmp     ?_278                                   ; 4A50 _ EB, 21

?_277:  mov     ecx, dword [ebp-10H]                    ; 4A52 _ 8B. 4D, F0
        mov     edx, dword [ebp-0CH]                    ; 4A55 _ 8B. 55, F4
        mov     eax, edx                                ; 4A58 _ 89. D0
        shl     eax, 3                                  ; 4A5A _ C1. E0, 03
        add     eax, edx                                ; 4A5D _ 01. D0
        shl     eax, 2                                  ; 4A5F _ C1. E0, 02
        add     eax, ecx                                ; 4A62 _ 01. C8
        add     eax, 1072                               ; 4A64 _ 05, 00000430
        mov     dword [eax], 0                          ; 4A69 _ C7. 00, 00000000
        add     dword [ebp-0CH], 1                      ; 4A6F _ 83. 45, F4, 01
?_278:  cmp     dword [ebp-0CH], 255                    ; 4A73 _ 81. 7D, F4, 000000FF
        jle     ?_277                                   ; 4A7A _ 7E, D6
        mov     eax, dword [ebp-10H]                    ; 4A7C _ 8B. 45, F0
?_279:  leave                                           ; 4A7F _ C9
        ret                                             ; 4A80 _ C3

_sheet_alloc:; Function begin
        push    ebp                                     ; 4A81 _ 55
        mov     ebp, esp                                ; 4A82 _ 89. E5
        sub     esp, 24                                 ; 4A84 _ 83. EC, 18
        mov     dword [ebp-0CH], 0                      ; 4A87 _ C7. 45, F4, 00000000
        jmp     ?_282                                   ; 4A8E _ EB, 75

?_280:  mov     ecx, dword [ebp+8H]                     ; 4A90 _ 8B. 4D, 08
        mov     edx, dword [ebp-0CH]                    ; 4A93 _ 8B. 55, F4
        mov     eax, edx                                ; 4A96 _ 89. D0
        shl     eax, 3                                  ; 4A98 _ C1. E0, 03
        add     eax, edx                                ; 4A9B _ 01. D0
        shl     eax, 2                                  ; 4A9D _ C1. E0, 02
        add     eax, ecx                                ; 4AA0 _ 01. C8
        add     eax, 1072                               ; 4AA2 _ 05, 00000430
        mov     eax, dword [eax]                        ; 4AA7 _ 8B. 00
        test    eax, eax                                ; 4AA9 _ 85. C0
        jnz     ?_281                                   ; 4AAB _ 75, 54
        mov     edx, dword [ebp-0CH]                    ; 4AAD _ 8B. 55, F4
        mov     eax, edx                                ; 4AB0 _ 89. D0
        shl     eax, 3                                  ; 4AB2 _ C1. E0, 03
        add     eax, edx                                ; 4AB5 _ 01. D0
        shl     eax, 2                                  ; 4AB7 _ C1. E0, 02
        lea     edx, [eax+410H]                         ; 4ABA _ 8D. 90, 00000410
        mov     eax, dword [ebp+8H]                     ; 4AC0 _ 8B. 45, 08
        add     eax, edx                                ; 4AC3 _ 01. D0
        add     eax, 4                                  ; 4AC5 _ 83. C0, 04
        mov     dword [ebp-10H], eax                    ; 4AC8 _ 89. 45, F0
        mov     eax, dword [ebp+8H]                     ; 4ACB _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 4ACE _ 8B. 55, F4
        add     edx, 4                                  ; 4AD1 _ 83. C2, 04
        mov     ecx, dword [ebp-10H]                    ; 4AD4 _ 8B. 4D, F0
        mov     dword [eax+edx*4+4H], ecx               ; 4AD7 _ 89. 4C 90, 04
        mov     eax, dword [ebp-10H]                    ; 4ADB _ 8B. 45, F0
        mov     dword [eax+1CH], 1                      ; 4ADE _ C7. 40, 1C, 00000001
        mov     eax, dword [ebp-10H]                    ; 4AE5 _ 8B. 45, F0
        mov     dword [eax+18H], -1                     ; 4AE8 _ C7. 40, 18, FFFFFFFF
        call    _task_now                               ; 4AEF _ E8, 00000000(rel)
        mov     edx, eax                                ; 4AF4 _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 4AF6 _ 8B. 45, F0
        mov     dword [eax+20H], edx                    ; 4AF9 _ 89. 50, 20
        mov     eax, dword [ebp-10H]                    ; 4AFC _ 8B. 45, F0
        jmp     ?_283                                   ; 4AFF _ EB, 12

?_281:  add     dword [ebp-0CH], 1                      ; 4B01 _ 83. 45, F4, 01
?_282:  cmp     dword [ebp-0CH], 255                    ; 4B05 _ 81. 7D, F4, 000000FF
        jle     ?_280                                   ; 4B0C _ 7E, 82
        mov     eax, 0                                  ; 4B0E _ B8, 00000000
?_283:  leave                                           ; 4B13 _ C9
        ret                                             ; 4B14 _ C3
; _sheet_alloc End of function

_sheet_setbuf:; Function begin
        push    ebp                                     ; 4B15 _ 55
        mov     ebp, esp                                ; 4B16 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 4B18 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 4B1B _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 4B1E _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 4B20 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 4B23 _ 8B. 55, 10
        mov     dword [eax+4H], edx                     ; 4B26 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 4B29 _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 4B2C _ 8B. 55, 14
        mov     dword [eax+8H], edx                     ; 4B2F _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 4B32 _ 8B. 45, 08
        mov     edx, dword [ebp+18H]                    ; 4B35 _ 8B. 55, 18
        mov     dword [eax+14H], edx                    ; 4B38 _ 89. 50, 14
        nop                                             ; 4B3B _ 90
        pop     ebp                                     ; 4B3C _ 5D
        ret                                             ; 4B3D _ C3
; _sheet_setbuf End of function

_sheet_updown:; Function begin
        push    ebp                                     ; 4B3E _ 55
        mov     ebp, esp                                ; 4B3F _ 89. E5
        push    edi                                     ; 4B41 _ 57
        push    esi                                     ; 4B42 _ 56
        push    ebx                                     ; 4B43 _ 53
        sub     esp, 60                                 ; 4B44 _ 83. EC, 3C
        mov     eax, dword [ebp+0CH]                    ; 4B47 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 4B4A _ 8B. 40, 18
        mov     dword [ebp-20H], eax                    ; 4B4D _ 89. 45, E0
        mov     eax, dword [ebp+8H]                     ; 4B50 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 4B53 _ 8B. 40, 10
        add     eax, 1                                  ; 4B56 _ 83. C0, 01
        cmp     dword [ebp+10H], eax                    ; 4B59 _ 39. 45, 10
        jle     ?_284                                   ; 4B5C _ 7E, 0C
        mov     eax, dword [ebp+8H]                     ; 4B5E _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 4B61 _ 8B. 40, 10
        add     eax, 1                                  ; 4B64 _ 83. C0, 01
        mov     dword [ebp+10H], eax                    ; 4B67 _ 89. 45, 10
?_284:  cmp     dword [ebp+10H], -1                     ; 4B6A _ 83. 7D, 10, FF
        jge     ?_285                                   ; 4B6E _ 7D, 07
        mov     dword [ebp+10H], -1                     ; 4B70 _ C7. 45, 10, FFFFFFFF
?_285:  mov     eax, dword [ebp+0CH]                    ; 4B77 _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 4B7A _ 8B. 55, 10
        mov     dword [eax+18H], edx                    ; 4B7D _ 89. 50, 18
        mov     eax, dword [ebp-20H]                    ; 4B80 _ 8B. 45, E0
        cmp     eax, dword [ebp+10H]                    ; 4B83 _ 3B. 45, 10
        jle     ?_292                                   ; 4B86 _ 0F 8E, 00000212
        cmp     dword [ebp+10H], 0                      ; 4B8C _ 83. 7D, 10, 00
        js      ?_288                                   ; 4B90 _ 0F 88, 000000FE
        mov     eax, dword [ebp-20H]                    ; 4B96 _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 4B99 _ 89. 45, E4
        jmp     ?_287                                   ; 4B9C _ EB, 34

?_286:  mov     eax, dword [ebp-1CH]                    ; 4B9E _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 4BA1 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 4BA4 _ 8B. 45, 08
        add     edx, 4                                  ; 4BA7 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 4BAA _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 4BAE _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 4BB1 _ 8B. 55, E4
        add     edx, 4                                  ; 4BB4 _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 4BB7 _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 4BBB _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 4BBE _ 8B. 55, E4
        add     edx, 4                                  ; 4BC1 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 4BC4 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 4BC8 _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 4BCB _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 4BCE _ 83. 6D, E4, 01
?_287:  mov     eax, dword [ebp-1CH]                    ; 4BD2 _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 4BD5 _ 3B. 45, 10
        jg      ?_286                                   ; 4BD8 _ 7F, C4
        mov     eax, dword [ebp+8H]                     ; 4BDA _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 4BDD _ 8B. 55, 10
        add     edx, 4                                  ; 4BE0 _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 4BE3 _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 4BE6 _ 89. 4C 90, 04
        mov     eax, dword [ebp+10H]                    ; 4BEA _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 4BED _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 4BF0 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 4BF3 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 4BF6 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 4BF9 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 4BFC _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 4BFF _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 4C02 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 4C05 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 4C08 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 4C0B _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 4C0E _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 4C11 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 4C14 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 4C17 _ 8B. 40, 0C
        mov     dword [esp+14H], esi                    ; 4C1A _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 4C1E _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 4C22 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 4C26 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 4C2A _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4C2E _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4C31 _ 89. 04 24
        call    _sheet_refreshmap                       ; 4C34 _ E8, 00000643
        mov     eax, dword [ebp+10H]                    ; 4C39 _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 4C3C _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 4C3F _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 4C42 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 4C45 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 4C48 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 4C4B _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 4C4E _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 4C51 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 4C54 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 4C57 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 4C5A _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 4C5D _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 4C60 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 4C63 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 4C66 _ 8B. 40, 0C
        mov     edi, dword [ebp-20H]                    ; 4C69 _ 8B. 7D, E0
        mov     dword [esp+18H], edi                    ; 4C6C _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 4C70 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 4C74 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 4C78 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 4C7C _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 4C80 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4C84 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4C87 _ 89. 04 24
        call    _sheet_refreshsub                       ; 4C8A _ E8, 00000465
        jmp     ?_299                                   ; 4C8F _ E9, 0000027D

?_288:  mov     eax, dword [ebp+8H]                     ; 4C94 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 4C97 _ 8B. 40, 10
        cmp     dword [ebp-20H], eax                    ; 4C9A _ 39. 45, E0
        jge     ?_291                                   ; 4C9D _ 7D, 47
        mov     eax, dword [ebp-20H]                    ; 4C9F _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 4CA2 _ 89. 45, E4
        jmp     ?_290                                   ; 4CA5 _ EB, 34

?_289:  mov     eax, dword [ebp-1CH]                    ; 4CA7 _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 4CAA _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 4CAD _ 8B. 45, 08
        add     edx, 4                                  ; 4CB0 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 4CB3 _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 4CB7 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 4CBA _ 8B. 55, E4
        add     edx, 4                                  ; 4CBD _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 4CC0 _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 4CC4 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 4CC7 _ 8B. 55, E4
        add     edx, 4                                  ; 4CCA _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 4CCD _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 4CD1 _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 4CD4 _ 89. 50, 18
        add     dword [ebp-1CH], 1                      ; 4CD7 _ 83. 45, E4, 01
?_290:  mov     eax, dword [ebp+8H]                     ; 4CDB _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 4CDE _ 8B. 40, 10
        cmp     dword [ebp-1CH], eax                    ; 4CE1 _ 39. 45, E4
        jl      ?_289                                   ; 4CE4 _ 7C, C1
?_291:  mov     eax, dword [ebp+8H]                     ; 4CE6 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 4CE9 _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 4CEC _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 4CEF _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 4CF2 _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 4CF5 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 4CF8 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 4CFB _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 4CFE _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 4D01 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 4D04 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 4D07 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 4D0A _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 4D0D _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 4D10 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 4D13 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 4D16 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 4D19 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 4D1C _ 8B. 40, 0C
        mov     dword [esp+14H], 0                      ; 4D1F _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], ebx                    ; 4D27 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 4D2B _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 4D2F _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 4D33 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4D37 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4D3A _ 89. 04 24
        call    _sheet_refreshmap                       ; 4D3D _ E8, 0000053A
        mov     eax, dword [ebp-20H]                    ; 4D42 _ 8B. 45, E0
        lea     esi, [eax-1H]                           ; 4D45 _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 4D48 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 4D4B _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 4D4E _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 4D51 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 4D54 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 4D57 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 4D5A _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 4D5D _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 4D60 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 4D63 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 4D66 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 4D69 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 4D6C _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 4D6F _ 8B. 40, 0C
        mov     dword [esp+18H], esi                    ; 4D72 _ 89. 74 24, 18
        mov     dword [esp+14H], 0                      ; 4D76 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], ebx                    ; 4D7E _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 4D82 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 4D86 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 4D8A _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4D8E _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4D91 _ 89. 04 24
        call    _sheet_refreshsub                       ; 4D94 _ E8, 0000035B
        jmp     ?_299                                   ; 4D99 _ E9, 00000173

?_292:  mov     eax, dword [ebp-20H]                    ; 4D9E _ 8B. 45, E0
        cmp     eax, dword [ebp+10H]                    ; 4DA1 _ 3B. 45, 10
        jge     ?_299                                   ; 4DA4 _ 0F 8D, 00000167
        cmp     dword [ebp-20H], 0                      ; 4DAA _ 83. 7D, E0, 00
        js      ?_295                                   ; 4DAE _ 78, 56
        mov     eax, dword [ebp-20H]                    ; 4DB0 _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 4DB3 _ 89. 45, E4
        jmp     ?_294                                   ; 4DB6 _ EB, 34

?_293:  mov     eax, dword [ebp-1CH]                    ; 4DB8 _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 4DBB _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 4DBE _ 8B. 45, 08
        add     edx, 4                                  ; 4DC1 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 4DC4 _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 4DC8 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 4DCB _ 8B. 55, E4
        add     edx, 4                                  ; 4DCE _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 4DD1 _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 4DD5 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 4DD8 _ 8B. 55, E4
        add     edx, 4                                  ; 4DDB _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 4DDE _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 4DE2 _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 4DE5 _ 89. 50, 18
        add     dword [ebp-1CH], 1                      ; 4DE8 _ 83. 45, E4, 01
?_294:  mov     eax, dword [ebp-1CH]                    ; 4DEC _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 4DEF _ 3B. 45, 10
        jl      ?_293                                   ; 4DF2 _ 7C, C4
        mov     eax, dword [ebp+8H]                     ; 4DF4 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 4DF7 _ 8B. 55, 10
        add     edx, 4                                  ; 4DFA _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 4DFD _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 4E00 _ 89. 4C 90, 04
        jmp     ?_298                                   ; 4E04 _ EB, 6C

?_295:  mov     eax, dword [ebp+8H]                     ; 4E06 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 4E09 _ 8B. 40, 10
        mov     dword [ebp-1CH], eax                    ; 4E0C _ 89. 45, E4
        jmp     ?_297                                   ; 4E0F _ EB, 3A

?_296:  mov     eax, dword [ebp-1CH]                    ; 4E11 _ 8B. 45, E4
        lea     ebx, [eax+1H]                           ; 4E14 _ 8D. 58, 01
        mov     eax, dword [ebp+8H]                     ; 4E17 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 4E1A _ 8B. 55, E4
        add     edx, 4                                  ; 4E1D _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 4E20 _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 4E24 _ 8B. 45, 08
        lea     edx, [ebx+4H]                           ; 4E27 _ 8D. 53, 04
        mov     dword [eax+edx*4+4H], ecx               ; 4E2A _ 89. 4C 90, 04
        mov     eax, dword [ebp-1CH]                    ; 4E2E _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 4E31 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 4E34 _ 8B. 45, 08
        add     edx, 4                                  ; 4E37 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 4E3A _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 4E3E _ 8B. 55, E4
        add     edx, 1                                  ; 4E41 _ 83. C2, 01
        mov     dword [eax+18H], edx                    ; 4E44 _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 4E47 _ 83. 6D, E4, 01
?_297:  mov     eax, dword [ebp-1CH]                    ; 4E4B _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 4E4E _ 3B. 45, 10
        jge     ?_296                                   ; 4E51 _ 7D, BE
        mov     eax, dword [ebp+8H]                     ; 4E53 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 4E56 _ 8B. 55, 10
        add     edx, 4                                  ; 4E59 _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 4E5C _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 4E5F _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 4E63 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 4E66 _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 4E69 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 4E6C _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 4E6F _ 89. 50, 10
?_298:  mov     eax, dword [ebp+0CH]                    ; 4E72 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 4E75 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 4E78 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 4E7B _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 4E7E _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 4E81 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 4E84 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 4E87 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 4E8A _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 4E8D _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 4E90 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 4E93 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 4E96 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 4E99 _ 8B. 40, 0C
        mov     esi, dword [ebp+10H]                    ; 4E9C _ 8B. 75, 10
        mov     dword [esp+14H], esi                    ; 4E9F _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 4EA3 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 4EA7 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 4EAB _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 4EAF _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4EB3 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4EB6 _ 89. 04 24
        call    _sheet_refreshmap                       ; 4EB9 _ E8, 000003BE
        mov     eax, dword [ebp+0CH]                    ; 4EBE _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 4EC1 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 4EC4 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 4EC7 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 4ECA _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 4ECD _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 4ED0 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 4ED3 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 4ED6 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 4ED9 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 4EDC _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 4EDF _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 4EE2 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 4EE5 _ 8B. 40, 0C
        mov     esi, dword [ebp+10H]                    ; 4EE8 _ 8B. 75, 10
        mov     dword [esp+18H], esi                    ; 4EEB _ 89. 74 24, 18
        mov     esi, dword [ebp+10H]                    ; 4EEF _ 8B. 75, 10
        mov     dword [esp+14H], esi                    ; 4EF2 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 4EF6 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 4EFA _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 4EFE _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 4F02 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4F06 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4F09 _ 89. 04 24
        call    _sheet_refreshsub                       ; 4F0C _ E8, 000001E3
?_299:  nop                                             ; 4F11 _ 90
        add     esp, 60                                 ; 4F12 _ 83. C4, 3C
        pop     ebx                                     ; 4F15 _ 5B
        pop     esi                                     ; 4F16 _ 5E
        pop     edi                                     ; 4F17 _ 5F
        pop     ebp                                     ; 4F18 _ 5D
        ret                                             ; 4F19 _ C3
; _sheet_updown End of function

_sheet_refresh:; Function begin
        push    ebp                                     ; 4F1A _ 55
        mov     ebp, esp                                ; 4F1B _ 89. E5
        push    edi                                     ; 4F1D _ 57
        push    esi                                     ; 4F1E _ 56
        push    ebx                                     ; 4F1F _ 53
        sub     esp, 60                                 ; 4F20 _ 83. EC, 3C
        mov     eax, dword [ebp+0CH]                    ; 4F23 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 4F26 _ 8B. 40, 18
        test    eax, eax                                ; 4F29 _ 85. C0
        js      ?_300                                   ; 4F2B _ 78, 61
        mov     eax, dword [ebp+0CH]                    ; 4F2D _ 8B. 45, 0C
        mov     edi, dword [eax+18H]                    ; 4F30 _ 8B. 78, 18
        mov     eax, dword [ebp+0CH]                    ; 4F33 _ 8B. 45, 0C
        mov     esi, dword [eax+18H]                    ; 4F36 _ 8B. 70, 18
        mov     eax, dword [ebp+0CH]                    ; 4F39 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 4F3C _ 8B. 50, 10
        mov     eax, dword [ebp+1CH]                    ; 4F3F _ 8B. 45, 1C
        lea     ebx, [edx+eax]                          ; 4F42 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 4F45 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 4F48 _ 8B. 50, 0C
        mov     eax, dword [ebp+18H]                    ; 4F4B _ 8B. 45, 18
        lea     ecx, [edx+eax]                          ; 4F4E _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 4F51 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 4F54 _ 8B. 50, 10
        mov     eax, dword [ebp+14H]                    ; 4F57 _ 8B. 45, 14
        add     edx, eax                                ; 4F5A _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 4F5C _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 4F5F _ 8B. 40, 0C
        mov     dword [ebp-1CH], eax                    ; 4F62 _ 89. 45, E4
        mov     eax, dword [ebp+10H]                    ; 4F65 _ 8B. 45, 10
        add     eax, dword [ebp-1CH]                    ; 4F68 _ 03. 45, E4
        mov     dword [esp+18H], edi                    ; 4F6B _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 4F6F _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 4F73 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 4F77 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 4F7B _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 4F7F _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4F83 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4F86 _ 89. 04 24
        call    _sheet_refreshsub                       ; 4F89 _ E8, 00000166
?_300:  mov     eax, 0                                  ; 4F8E _ B8, 00000000
        add     esp, 60                                 ; 4F93 _ 83. C4, 3C
        pop     ebx                                     ; 4F96 _ 5B
        pop     esi                                     ; 4F97 _ 5E
        pop     edi                                     ; 4F98 _ 5F
        pop     ebp                                     ; 4F99 _ 5D
        ret                                             ; 4F9A _ C3
; _sheet_refresh End of function

_sheet_slide:; Function begin
        push    ebp                                     ; 4F9B _ 55
        mov     ebp, esp                                ; 4F9C _ 89. E5
        push    esi                                     ; 4F9E _ 56
        push    ebx                                     ; 4F9F _ 53
        sub     esp, 48                                 ; 4FA0 _ 83. EC, 30
        mov     eax, dword [ebp+0CH]                    ; 4FA3 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 4FA6 _ 8B. 40, 0C
        mov     dword [ebp-0CH], eax                    ; 4FA9 _ 89. 45, F4
        mov     eax, dword [ebp+0CH]                    ; 4FAC _ 8B. 45, 0C
        mov     eax, dword [eax+10H]                    ; 4FAF _ 8B. 40, 10
        mov     dword [ebp-10H], eax                    ; 4FB2 _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 4FB5 _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 4FB8 _ 8B. 55, 10
        mov     dword [eax+0CH], edx                    ; 4FBB _ 89. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 4FBE _ 8B. 45, 0C
        mov     edx, dword [ebp+14H]                    ; 4FC1 _ 8B. 55, 14
        mov     dword [eax+10H], edx                    ; 4FC4 _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 4FC7 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 4FCA _ 8B. 40, 18
        test    eax, eax                                ; 4FCD _ 85. C0
        js      ?_301                                   ; 4FCF _ 0F 88, 00000117
        mov     eax, dword [ebp+0CH]                    ; 4FD5 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 4FD8 _ 8B. 50, 08
        mov     eax, dword [ebp-10H]                    ; 4FDB _ 8B. 45, F0
        add     edx, eax                                ; 4FDE _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 4FE0 _ 8B. 45, 0C
        mov     ecx, dword [eax+4H]                     ; 4FE3 _ 8B. 48, 04
        mov     eax, dword [ebp-0CH]                    ; 4FE6 _ 8B. 45, F4
        add     eax, ecx                                ; 4FE9 _ 01. C8
        mov     dword [esp+14H], 0                      ; 4FEB _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], edx                    ; 4FF3 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 4FF7 _ 89. 44 24, 0C
        mov     eax, dword [ebp-10H]                    ; 4FFB _ 8B. 45, F0
        mov     dword [esp+8H], eax                     ; 4FFE _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 5002 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 5005 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 5009 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 500C _ 89. 04 24
        call    _sheet_refreshmap                       ; 500F _ E8, 00000268
        mov     eax, dword [ebp+0CH]                    ; 5014 _ 8B. 45, 0C
        mov     ecx, dword [eax+18H]                    ; 5017 _ 8B. 48, 18
        mov     eax, dword [ebp+0CH]                    ; 501A _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 501D _ 8B. 50, 08
        mov     eax, dword [ebp+14H]                    ; 5020 _ 8B. 45, 14
        add     edx, eax                                ; 5023 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 5025 _ 8B. 45, 0C
        mov     ebx, dword [eax+4H]                     ; 5028 _ 8B. 58, 04
        mov     eax, dword [ebp+10H]                    ; 502B _ 8B. 45, 10
        add     eax, ebx                                ; 502E _ 01. D8
        mov     dword [esp+14H], ecx                    ; 5030 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 5034 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 5038 _ 89. 44 24, 0C
        mov     eax, dword [ebp+14H]                    ; 503C _ 8B. 45, 14
        mov     dword [esp+8H], eax                     ; 503F _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 5043 _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 5046 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 504A _ 8B. 45, 08
        mov     dword [esp], eax                        ; 504D _ 89. 04 24
        call    _sheet_refreshmap                       ; 5050 _ E8, 00000227
        mov     eax, dword [ebp+0CH]                    ; 5055 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 5058 _ 8B. 40, 18
        lea     ecx, [eax-1H]                           ; 505B _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 505E _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 5061 _ 8B. 50, 08
        mov     eax, dword [ebp-10H]                    ; 5064 _ 8B. 45, F0
        add     edx, eax                                ; 5067 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 5069 _ 8B. 45, 0C
        mov     ebx, dword [eax+4H]                     ; 506C _ 8B. 58, 04
        mov     eax, dword [ebp-0CH]                    ; 506F _ 8B. 45, F4
        add     eax, ebx                                ; 5072 _ 01. D8
        mov     dword [esp+18H], ecx                    ; 5074 _ 89. 4C 24, 18
        mov     dword [esp+14H], 0                      ; 5078 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], edx                    ; 5080 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 5084 _ 89. 44 24, 0C
        mov     eax, dword [ebp-10H]                    ; 5088 _ 8B. 45, F0
        mov     dword [esp+8H], eax                     ; 508B _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 508F _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 5092 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 5096 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 5099 _ 89. 04 24
        call    _sheet_refreshsub                       ; 509C _ E8, 00000053
        mov     eax, dword [ebp+0CH]                    ; 50A1 _ 8B. 45, 0C
        mov     ebx, dword [eax+18H]                    ; 50A4 _ 8B. 58, 18
        mov     eax, dword [ebp+0CH]                    ; 50A7 _ 8B. 45, 0C
        mov     ecx, dword [eax+18H]                    ; 50AA _ 8B. 48, 18
        mov     eax, dword [ebp+0CH]                    ; 50AD _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 50B0 _ 8B. 50, 08
        mov     eax, dword [ebp+14H]                    ; 50B3 _ 8B. 45, 14
        add     edx, eax                                ; 50B6 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 50B8 _ 8B. 45, 0C
        mov     esi, dword [eax+4H]                     ; 50BB _ 8B. 70, 04
        mov     eax, dword [ebp+10H]                    ; 50BE _ 8B. 45, 10
        add     eax, esi                                ; 50C1 _ 01. F0
        mov     dword [esp+18H], ebx                    ; 50C3 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 50C7 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 50CB _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 50CF _ 89. 44 24, 0C
        mov     eax, dword [ebp+14H]                    ; 50D3 _ 8B. 45, 14
        mov     dword [esp+8H], eax                     ; 50D6 _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 50DA _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 50DD _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 50E1 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 50E4 _ 89. 04 24
        call    _sheet_refreshsub                       ; 50E7 _ E8, 00000008
?_301:  nop                                             ; 50EC _ 90
        add     esp, 48                                 ; 50ED _ 83. C4, 30
        pop     ebx                                     ; 50F0 _ 5B
        pop     esi                                     ; 50F1 _ 5E
        pop     ebp                                     ; 50F2 _ 5D
        ret                                             ; 50F3 _ C3
; _sheet_slide End of function

_sheet_refreshsub:; Function begin
        push    ebp                                     ; 50F4 _ 55
        mov     ebp, esp                                ; 50F5 _ 89. E5
        sub     esp, 48                                 ; 50F7 _ 83. EC, 30
        mov     eax, dword [ebp+8H]                     ; 50FA _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 50FD _ 8B. 00
        mov     dword [ebp-10H], eax                    ; 50FF _ 89. 45, F0
        mov     eax, dword [ebp+8H]                     ; 5102 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 5105 _ 8B. 40, 04
        mov     dword [ebp-14H], eax                    ; 5108 _ 89. 45, EC
        cmp     dword [ebp+0CH], 0                      ; 510B _ 83. 7D, 0C, 00
        jns     ?_302                                   ; 510F _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 5111 _ C7. 45, 0C, 00000000
?_302:  cmp     dword [ebp+10H], 8                      ; 5118 _ 83. 7D, 10, 08
        jg      ?_303                                   ; 511C _ 7F, 07
        mov     dword [ebp+10H], 0                      ; 511E _ C7. 45, 10, 00000000
?_303:  mov     eax, dword [ebp+8H]                     ; 5125 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 5128 _ 8B. 40, 08
        cmp     dword [ebp+14H], eax                    ; 512B _ 39. 45, 14
        jle     ?_304                                   ; 512E _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 5130 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 5133 _ 8B. 40, 08
        mov     dword [ebp+14H], eax                    ; 5136 _ 89. 45, 14
?_304:  mov     eax, dword [ebp+8H]                     ; 5139 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 513C _ 8B. 40, 0C
        cmp     dword [ebp+18H], eax                    ; 513F _ 39. 45, 18
        jle     ?_305                                   ; 5142 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 5144 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 5147 _ 8B. 40, 0C
        mov     dword [ebp+18H], eax                    ; 514A _ 89. 45, 18
?_305:  mov     eax, dword [ebp+1CH]                    ; 514D _ 8B. 45, 1C
        mov     dword [ebp-4H], eax                     ; 5150 _ 89. 45, FC
        jmp     ?_312                                   ; 5153 _ E9, 00000115

?_306:  mov     eax, dword [ebp+8H]                     ; 5158 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 515B _ 8B. 55, FC
        add     edx, 4                                  ; 515E _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 5161 _ 8B. 44 90, 04
        mov     dword [ebp-18H], eax                    ; 5165 _ 89. 45, E8
        mov     eax, dword [ebp-18H]                    ; 5168 _ 8B. 45, E8
        mov     eax, dword [eax]                        ; 516B _ 8B. 00
        mov     dword [ebp-1CH], eax                    ; 516D _ 89. 45, E4
        mov     eax, dword [ebp+8H]                     ; 5170 _ 8B. 45, 08
        add     eax, 1044                               ; 5173 _ 05, 00000414
        mov     edx, dword [ebp-18H]                    ; 5178 _ 8B. 55, E8
        sub     edx, eax                                ; 517B _ 29. C2
        mov     eax, edx                                ; 517D _ 89. D0
        sar     eax, 2                                  ; 517F _ C1. F8, 02
        imul    eax, eax, 954437177                     ; 5182 _ 69. C0, 38E38E39
        mov     byte [ebp-1DH], al                      ; 5188 _ 88. 45, E3
        mov     dword [ebp-0CH], 0                      ; 518B _ C7. 45, F4, 00000000
        jmp     ?_311                                   ; 5192 _ E9, 000000C3

?_307:  mov     eax, dword [ebp-18H]                    ; 5197 _ 8B. 45, E8
        mov     edx, dword [eax+10H]                    ; 519A _ 8B. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 519D _ 8B. 45, F4
        add     eax, edx                                ; 51A0 _ 01. D0
        mov     dword [ebp-24H], eax                    ; 51A2 _ 89. 45, DC
        mov     dword [ebp-8H], 0                       ; 51A5 _ C7. 45, F8, 00000000
        jmp     ?_310                                   ; 51AC _ E9, 00000096

?_308:  mov     eax, dword [ebp-18H]                    ; 51B1 _ 8B. 45, E8
        mov     edx, dword [eax+0CH]                    ; 51B4 _ 8B. 50, 0C
        mov     eax, dword [ebp-8H]                     ; 51B7 _ 8B. 45, F8
        add     eax, edx                                ; 51BA _ 01. D0
        mov     dword [ebp-28H], eax                    ; 51BC _ 89. 45, D8
        mov     eax, dword [ebp+0CH]                    ; 51BF _ 8B. 45, 0C
        cmp     eax, dword [ebp-28H]                    ; 51C2 _ 3B. 45, D8
        jg      ?_309                                   ; 51C5 _ 7F, 7C
        mov     eax, dword [ebp-28H]                    ; 51C7 _ 8B. 45, D8
        cmp     eax, dword [ebp+14H]                    ; 51CA _ 3B. 45, 14
        jge     ?_309                                   ; 51CD _ 7D, 74
        mov     eax, dword [ebp+10H]                    ; 51CF _ 8B. 45, 10
        cmp     eax, dword [ebp-24H]                    ; 51D2 _ 3B. 45, DC
        jg      ?_309                                   ; 51D5 _ 7F, 6C
        mov     eax, dword [ebp-24H]                    ; 51D7 _ 8B. 45, DC
        cmp     eax, dword [ebp+18H]                    ; 51DA _ 3B. 45, 18
        jge     ?_309                                   ; 51DD _ 7D, 64
        mov     eax, dword [ebp-18H]                    ; 51DF _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 51E2 _ 8B. 40, 04
        imul    eax, dword [ebp-0CH]                    ; 51E5 _ 0F AF. 45, F4
        mov     edx, dword [ebp-8H]                     ; 51E9 _ 8B. 55, F8
        add     eax, edx                                ; 51EC _ 01. D0
        mov     edx, eax                                ; 51EE _ 89. C2
        mov     eax, dword [ebp-1CH]                    ; 51F0 _ 8B. 45, E4
        add     eax, edx                                ; 51F3 _ 01. D0
        movzx   eax, byte [eax]                         ; 51F5 _ 0F B6. 00
        mov     byte [ebp-29H], al                      ; 51F8 _ 88. 45, D7
        mov     eax, dword [ebp+8H]                     ; 51FB _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 51FE _ 8B. 40, 08
        imul    eax, dword [ebp-24H]                    ; 5201 _ 0F AF. 45, DC
        mov     edx, dword [ebp-28H]                    ; 5205 _ 8B. 55, D8
        add     eax, edx                                ; 5208 _ 01. D0
        mov     edx, eax                                ; 520A _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 520C _ 8B. 45, EC
        add     eax, edx                                ; 520F _ 01. D0
        movzx   eax, byte [eax]                         ; 5211 _ 0F B6. 00
        cmp     byte [ebp-1DH], al                      ; 5214 _ 38. 45, E3
        jnz     ?_309                                   ; 5217 _ 75, 2A
        movzx   eax, byte [ebp-29H]                     ; 5219 _ 0F B6. 45, D7
        mov     edx, dword [ebp-18H]                    ; 521D _ 8B. 55, E8
        mov     edx, dword [edx+14H]                    ; 5220 _ 8B. 52, 14
        cmp     eax, edx                                ; 5223 _ 39. D0
        jz      ?_309                                   ; 5225 _ 74, 1C
        mov     eax, dword [ebp+8H]                     ; 5227 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 522A _ 8B. 40, 08
        imul    eax, dword [ebp-24H]                    ; 522D _ 0F AF. 45, DC
        mov     edx, dword [ebp-28H]                    ; 5231 _ 8B. 55, D8
        add     eax, edx                                ; 5234 _ 01. D0
        mov     edx, eax                                ; 5236 _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 5238 _ 8B. 45, F0
        add     edx, eax                                ; 523B _ 01. C2
        movzx   eax, byte [ebp-29H]                     ; 523D _ 0F B6. 45, D7
        mov     byte [edx], al                          ; 5241 _ 88. 02
?_309:  add     dword [ebp-8H], 1                       ; 5243 _ 83. 45, F8, 01
?_310:  mov     eax, dword [ebp-18H]                    ; 5247 _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 524A _ 8B. 40, 04
        cmp     dword [ebp-8H], eax                     ; 524D _ 39. 45, F8
        jl      ?_308                                   ; 5250 _ 0F 8C, FFFFFF5B
        add     dword [ebp-0CH], 1                      ; 5256 _ 83. 45, F4, 01
?_311:  mov     eax, dword [ebp-18H]                    ; 525A _ 8B. 45, E8
        mov     eax, dword [eax+8H]                     ; 525D _ 8B. 40, 08
        cmp     dword [ebp-0CH], eax                    ; 5260 _ 39. 45, F4
        jl      ?_307                                   ; 5263 _ 0F 8C, FFFFFF2E
        add     dword [ebp-4H], 1                       ; 5269 _ 83. 45, FC, 01
?_312:  mov     eax, dword [ebp-4H]                     ; 526D _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 5270 _ 3B. 45, 20
        jle     ?_306                                   ; 5273 _ 0F 8E, FFFFFEDF
        nop                                             ; 5279 _ 90
        leave                                           ; 527A _ C9
        ret                                             ; 527B _ C3
; _sheet_refreshsub End of function

_sheet_refreshmap:; Function begin
        push    ebp                                     ; 527C _ 55
        mov     ebp, esp                                ; 527D _ 89. E5
        sub     esp, 64                                 ; 527F _ 83. EC, 40
        mov     eax, dword [ebp+8H]                     ; 5282 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 5285 _ 8B. 40, 04
        mov     dword [ebp-20H], eax                    ; 5288 _ 89. 45, E0
        cmp     dword [ebp+0CH], 0                      ; 528B _ 83. 7D, 0C, 00
        jns     ?_313                                   ; 528F _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 5291 _ C7. 45, 0C, 00000000
?_313:  cmp     dword [ebp+10H], 0                      ; 5298 _ 83. 7D, 10, 00
        jns     ?_314                                   ; 529C _ 79, 07
        mov     dword [ebp+10H], 0                      ; 529E _ C7. 45, 10, 00000000
?_314:  mov     eax, dword [ebp+8H]                     ; 52A5 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 52A8 _ 8B. 40, 08
        cmp     dword [ebp+14H], eax                    ; 52AB _ 39. 45, 14
        jle     ?_315                                   ; 52AE _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 52B0 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 52B3 _ 8B. 40, 08
        mov     dword [ebp+14H], eax                    ; 52B6 _ 89. 45, 14
?_315:  mov     eax, dword [ebp+8H]                     ; 52B9 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 52BC _ 8B. 40, 0C
        cmp     dword [ebp+18H], eax                    ; 52BF _ 39. 45, 18
        jle     ?_316                                   ; 52C2 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 52C4 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 52C7 _ 8B. 40, 0C
        mov     dword [ebp+18H], eax                    ; 52CA _ 89. 45, 18
?_316:  mov     eax, dword [ebp+1CH]                    ; 52CD _ 8B. 45, 1C
        mov     dword [ebp-4H], eax                     ; 52D0 _ 89. 45, FC
        jmp     ?_327                                   ; 52D3 _ E9, 0000013F

?_317:  mov     eax, dword [ebp+8H]                     ; 52D8 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 52DB _ 8B. 55, FC
        add     edx, 4                                  ; 52DE _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 52E1 _ 8B. 44 90, 04
        mov     dword [ebp-24H], eax                    ; 52E5 _ 89. 45, DC
        mov     eax, dword [ebp+8H]                     ; 52E8 _ 8B. 45, 08
        add     eax, 1044                               ; 52EB _ 05, 00000414
        mov     edx, dword [ebp-24H]                    ; 52F0 _ 8B. 55, DC
        sub     edx, eax                                ; 52F3 _ 29. C2
        mov     eax, edx                                ; 52F5 _ 89. D0
        sar     eax, 2                                  ; 52F7 _ C1. F8, 02
        imul    eax, eax, 954437177                     ; 52FA _ 69. C0, 38E38E39
        mov     byte [ebp-25H], al                      ; 5300 _ 88. 45, DB
        mov     eax, dword [ebp-24H]                    ; 5303 _ 8B. 45, DC
        mov     eax, dword [eax]                        ; 5306 _ 8B. 00
        mov     dword [ebp-2CH], eax                    ; 5308 _ 89. 45, D4
        mov     eax, dword [ebp-24H]                    ; 530B _ 8B. 45, DC
        mov     eax, dword [eax+0CH]                    ; 530E _ 8B. 40, 0C
        mov     edx, dword [ebp+0CH]                    ; 5311 _ 8B. 55, 0C
        sub     edx, eax                                ; 5314 _ 29. C2
        mov     eax, edx                                ; 5316 _ 89. D0
        mov     dword [ebp-10H], eax                    ; 5318 _ 89. 45, F0
        mov     eax, dword [ebp-24H]                    ; 531B _ 8B. 45, DC
        mov     eax, dword [eax+10H]                    ; 531E _ 8B. 40, 10
        mov     edx, dword [ebp+10H]                    ; 5321 _ 8B. 55, 10
        sub     edx, eax                                ; 5324 _ 29. C2
        mov     eax, edx                                ; 5326 _ 89. D0
        mov     dword [ebp-14H], eax                    ; 5328 _ 89. 45, EC
        mov     eax, dword [ebp-24H]                    ; 532B _ 8B. 45, DC
        mov     eax, dword [eax+0CH]                    ; 532E _ 8B. 40, 0C
        mov     edx, dword [ebp+14H]                    ; 5331 _ 8B. 55, 14
        sub     edx, eax                                ; 5334 _ 29. C2
        mov     eax, edx                                ; 5336 _ 89. D0
        mov     dword [ebp-18H], eax                    ; 5338 _ 89. 45, E8
        mov     eax, dword [ebp-24H]                    ; 533B _ 8B. 45, DC
        mov     eax, dword [eax+10H]                    ; 533E _ 8B. 40, 10
        mov     edx, dword [ebp+18H]                    ; 5341 _ 8B. 55, 18
        sub     edx, eax                                ; 5344 _ 29. C2
        mov     eax, edx                                ; 5346 _ 89. D0
        mov     dword [ebp-1CH], eax                    ; 5348 _ 89. 45, E4
        cmp     dword [ebp-10H], 0                      ; 534B _ 83. 7D, F0, 00
        jns     ?_318                                   ; 534F _ 79, 07
        mov     dword [ebp-10H], 0                      ; 5351 _ C7. 45, F0, 00000000
?_318:  cmp     dword [ebp-14H], 0                      ; 5358 _ 83. 7D, EC, 00
        jns     ?_319                                   ; 535C _ 79, 07
        mov     dword [ebp-14H], 0                      ; 535E _ C7. 45, EC, 00000000
?_319:  mov     eax, dword [ebp-24H]                    ; 5365 _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 5368 _ 8B. 40, 04
        cmp     dword [ebp-18H], eax                    ; 536B _ 39. 45, E8
        jle     ?_320                                   ; 536E _ 7E, 09
        mov     eax, dword [ebp-24H]                    ; 5370 _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 5373 _ 8B. 40, 04
        mov     dword [ebp-18H], eax                    ; 5376 _ 89. 45, E8
?_320:  mov     eax, dword [ebp-24H]                    ; 5379 _ 8B. 45, DC
        mov     eax, dword [eax+8H]                     ; 537C _ 8B. 40, 08
        cmp     dword [ebp-1CH], eax                    ; 537F _ 39. 45, E4
        jle     ?_321                                   ; 5382 _ 7E, 09
        mov     eax, dword [ebp-24H]                    ; 5384 _ 8B. 45, DC
        mov     eax, dword [eax+8H]                     ; 5387 _ 8B. 40, 08
        mov     dword [ebp-1CH], eax                    ; 538A _ 89. 45, E4
?_321:  mov     eax, dword [ebp-14H]                    ; 538D _ 8B. 45, EC
        mov     dword [ebp-0CH], eax                    ; 5390 _ 89. 45, F4
        jmp     ?_326                                   ; 5393 _ EB, 76

?_322:  mov     eax, dword [ebp-24H]                    ; 5395 _ 8B. 45, DC
        mov     edx, dword [eax+10H]                    ; 5398 _ 8B. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 539B _ 8B. 45, F4
        add     eax, edx                                ; 539E _ 01. D0
        mov     dword [ebp-30H], eax                    ; 53A0 _ 89. 45, D0
        mov     eax, dword [ebp-10H]                    ; 53A3 _ 8B. 45, F0
        mov     dword [ebp-8H], eax                     ; 53A6 _ 89. 45, F8
        jmp     ?_325                                   ; 53A9 _ EB, 54

?_323:  mov     eax, dword [ebp-24H]                    ; 53AB _ 8B. 45, DC
        mov     edx, dword [eax+0CH]                    ; 53AE _ 8B. 50, 0C
        mov     eax, dword [ebp-8H]                     ; 53B1 _ 8B. 45, F8
        add     eax, edx                                ; 53B4 _ 01. D0
        mov     dword [ebp-34H], eax                    ; 53B6 _ 89. 45, CC
        mov     eax, dword [ebp-24H]                    ; 53B9 _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 53BC _ 8B. 40, 04
        imul    eax, dword [ebp-0CH]                    ; 53BF _ 0F AF. 45, F4
        mov     edx, dword [ebp-8H]                     ; 53C3 _ 8B. 55, F8
        add     eax, edx                                ; 53C6 _ 01. D0
        mov     edx, eax                                ; 53C8 _ 89. C2
        mov     eax, dword [ebp-2CH]                    ; 53CA _ 8B. 45, D4
        add     eax, edx                                ; 53CD _ 01. D0
        movzx   eax, byte [eax]                         ; 53CF _ 0F B6. 00
        movzx   eax, al                                 ; 53D2 _ 0F B6. C0
        mov     edx, dword [ebp-24H]                    ; 53D5 _ 8B. 55, DC
        mov     edx, dword [edx+14H]                    ; 53D8 _ 8B. 52, 14
        cmp     eax, edx                                ; 53DB _ 39. D0
        jz      ?_324                                   ; 53DD _ 74, 1C
        mov     eax, dword [ebp+8H]                     ; 53DF _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 53E2 _ 8B. 40, 08
        imul    eax, dword [ebp-30H]                    ; 53E5 _ 0F AF. 45, D0
        mov     edx, dword [ebp-34H]                    ; 53E9 _ 8B. 55, CC
        add     eax, edx                                ; 53EC _ 01. D0
        mov     edx, eax                                ; 53EE _ 89. C2
        mov     eax, dword [ebp-20H]                    ; 53F0 _ 8B. 45, E0
        add     edx, eax                                ; 53F3 _ 01. C2
        movzx   eax, byte [ebp-25H]                     ; 53F5 _ 0F B6. 45, DB
        mov     byte [edx], al                          ; 53F9 _ 88. 02
?_324:  add     dword [ebp-8H], 1                       ; 53FB _ 83. 45, F8, 01
?_325:  mov     eax, dword [ebp-8H]                     ; 53FF _ 8B. 45, F8
        cmp     eax, dword [ebp-18H]                    ; 5402 _ 3B. 45, E8
        jl      ?_323                                   ; 5405 _ 7C, A4
        add     dword [ebp-0CH], 1                      ; 5407 _ 83. 45, F4, 01
?_326:  mov     eax, dword [ebp-0CH]                    ; 540B _ 8B. 45, F4
        cmp     eax, dword [ebp-1CH]                    ; 540E _ 3B. 45, E4
        jl      ?_322                                   ; 5411 _ 7C, 82
        add     dword [ebp-4H], 1                       ; 5413 _ 83. 45, FC, 01
?_327:  mov     eax, dword [ebp+8H]                     ; 5417 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 541A _ 8B. 40, 10
        cmp     dword [ebp-4H], eax                     ; 541D _ 39. 45, FC
        jle     ?_317                                   ; 5420 _ 0F 8E, FFFFFEB2
        nop                                             ; 5426 _ 90
        leave                                           ; 5427 _ C9
        ret                                             ; 5428 _ C3
; _sheet_refreshmap End of function

_sheet_free:; Function begin
        push    ebp                                     ; 5429 _ 55
        mov     ebp, esp                                ; 542A _ 89. E5
        sub     esp, 24                                 ; 542C _ 83. EC, 18
        mov     eax, dword [ebp+0CH]                    ; 542F _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 5432 _ 8B. 40, 18
        test    eax, eax                                ; 5435 _ 85. C0
        js      ?_328                                   ; 5437 _ 78, 1A
        mov     dword [esp+8H], -1                      ; 5439 _ C7. 44 24, 08, FFFFFFFF
        mov     eax, dword [ebp+0CH]                    ; 5441 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 5444 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 5448 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 544B _ 89. 04 24
        call    _sheet_updown                           ; 544E _ E8, FFFFF6EB
?_328:  mov     eax, dword [ebp+0CH]                    ; 5453 _ 8B. 45, 0C
        mov     dword [eax+1CH], 0                      ; 5456 _ C7. 40, 1C, 00000000
        nop                                             ; 545D _ 90
        leave                                           ; 545E _ C9
        ret                                             ; 545F _ C3
; _sheet_free End of function


_memman_init:
        push    ebp                                     ; 5460 _ 55
        mov     ebp, esp                                ; 5461 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 5463 _ 8B. 45, 08
        mov     dword [eax], 0                          ; 5466 _ C7. 00, 00000000
        mov     eax, dword [ebp+8H]                     ; 546C _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 546F _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 5476 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 5479 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 5480 _ 8B. 45, 08
        mov     dword [eax+0CH], 0                      ; 5483 _ C7. 40, 0C, 00000000
        nop                                             ; 548A _ 90
        pop     ebp                                     ; 548B _ 5D
        ret                                             ; 548C _ C3

_memman_total:; Function begin
        push    ebp                                     ; 548D _ 55
        mov     ebp, esp                                ; 548E _ 89. E5
        sub     esp, 16                                 ; 5490 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 5493 _ C7. 45, F8, 00000000
        mov     dword [ebp-4H], 0                       ; 549A _ C7. 45, FC, 00000000
        jmp     ?_330                                   ; 54A1 _ EB, 14

?_329:  mov     eax, dword [ebp+8H]                     ; 54A3 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 54A6 _ 8B. 55, FC
        add     edx, 2                                  ; 54A9 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 54AC _ 8B. 44 D0, 04
        add     dword [ebp-8H], eax                     ; 54B0 _ 01. 45, F8
        add     dword [ebp-4H], 1                       ; 54B3 _ 83. 45, FC, 01
?_330:  mov     eax, dword [ebp+8H]                     ; 54B7 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 54BA _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 54BC _ 39. 45, FC
        jc      ?_329                                   ; 54BF _ 72, E2
        mov     eax, dword [ebp-8H]                     ; 54C1 _ 8B. 45, F8
        leave                                           ; 54C4 _ C9
        ret                                             ; 54C5 _ C3
; _memman_total End of function

_memman_alloc:; Function begin
        push    ebp                                     ; 54C6 _ 55
        mov     ebp, esp                                ; 54C7 _ 89. E5
        push    ebx                                     ; 54C9 _ 53
        sub     esp, 16                                 ; 54CA _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 54CD _ C7. 45, F8, 00000000
        jmp     ?_336                                   ; 54D4 _ E9, 000000BB

?_331:  mov     eax, dword [ebp+8H]                     ; 54D9 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 54DC _ 8B. 55, F8
        add     edx, 2                                  ; 54DF _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 54E2 _ 8B. 44 D0, 04
        cmp     dword [ebp+0CH], eax                    ; 54E6 _ 39. 45, 0C
        ja      ?_335                                   ; 54E9 _ 0F 87, 000000A1
        mov     eax, dword [ebp+8H]                     ; 54EF _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 54F2 _ 8B. 55, F8
        add     edx, 2                                  ; 54F5 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 54F8 _ 8B. 04 D0
        mov     dword [ebp-0CH], eax                    ; 54FB _ 89. 45, F4
        mov     eax, dword [ebp+8H]                     ; 54FE _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 5501 _ 8B. 55, F8
        add     edx, 2                                  ; 5504 _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 5507 _ 8B. 14 D0
        mov     eax, dword [ebp+0CH]                    ; 550A _ 8B. 45, 0C
        lea     ecx, [edx+eax]                          ; 550D _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 5510 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 5513 _ 8B. 55, F8
        add     edx, 2                                  ; 5516 _ 83. C2, 02
        mov     dword [eax+edx*8], ecx                  ; 5519 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 551C _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 551F _ 8B. 55, F8
        add     edx, 2                                  ; 5522 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 5525 _ 8B. 44 D0, 04
        sub     eax, dword [ebp+0CH]                    ; 5529 _ 2B. 45, 0C
        mov     edx, dword [ebp+8H]                     ; 552C _ 8B. 55, 08
        mov     ecx, dword [ebp-8H]                     ; 552F _ 8B. 4D, F8
        add     ecx, 2                                  ; 5532 _ 83. C1, 02
        mov     dword [edx+ecx*8+4H], eax               ; 5535 _ 89. 44 CA, 04
        mov     eax, dword [ebp+8H]                     ; 5539 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 553C _ 8B. 55, F8
        add     edx, 2                                  ; 553F _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 5542 _ 8B. 44 D0, 04
        test    eax, eax                                ; 5546 _ 85. C0
        jnz     ?_334                                   ; 5548 _ 75, 41
        mov     eax, dword [ebp+8H]                     ; 554A _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 554D _ 8B. 00
        lea     edx, [eax-1H]                           ; 554F _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 5552 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 5555 _ 89. 10
        jmp     ?_333                                   ; 5557 _ EB, 28

?_332:  mov     eax, dword [ebp-8H]                     ; 5559 _ 8B. 45, F8
        lea     edx, [eax+1H]                           ; 555C _ 8D. 50, 01
        mov     ecx, dword [ebp+8H]                     ; 555F _ 8B. 4D, 08
        mov     eax, dword [ebp-8H]                     ; 5562 _ 8B. 45, F8
        lea     ebx, [eax+2H]                           ; 5565 _ 8D. 58, 02
        mov     eax, dword [ebp+8H]                     ; 5568 _ 8B. 45, 08
        add     edx, 2                                  ; 556B _ 83. C2, 02
        lea     edx, [eax+edx*8]                        ; 556E _ 8D. 14 D0
        mov     eax, dword [edx]                        ; 5571 _ 8B. 02
        mov     edx, dword [edx+4H]                     ; 5573 _ 8B. 52, 04
        mov     dword [ecx+ebx*8], eax                  ; 5576 _ 89. 04 D9
        mov     dword [ecx+ebx*8+4H], edx               ; 5579 _ 89. 54 D9, 04
        add     dword [ebp-8H], 1                       ; 557D _ 83. 45, F8, 01
?_333:  mov     eax, dword [ebp+8H]                     ; 5581 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 5584 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 5586 _ 39. 45, F8
        jc      ?_332                                   ; 5589 _ 72, CE
?_334:  mov     eax, dword [ebp-0CH]                    ; 558B _ 8B. 45, F4
        jmp     ?_337                                   ; 558E _ EB, 17

?_335:  add     dword [ebp-8H], 1                       ; 5590 _ 83. 45, F8, 01
?_336:  mov     eax, dword [ebp+8H]                     ; 5594 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 5597 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 5599 _ 39. 45, F8
        jc      ?_331                                   ; 559C _ 0F 82, FFFFFF37
        mov     eax, 0                                  ; 55A2 _ B8, 00000000
?_337:  add     esp, 16                                 ; 55A7 _ 83. C4, 10
        pop     ebx                                     ; 55AA _ 5B
        pop     ebp                                     ; 55AB _ 5D
        ret                                             ; 55AC _ C3
; _memman_alloc End of function

_memman_free:; Function begin
        push    ebp                                     ; 55AD _ 55
        mov     ebp, esp                                ; 55AE _ 89. E5
        push    ebx                                     ; 55B0 _ 53
        sub     esp, 16                                 ; 55B1 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 55B4 _ C7. 45, F8, 00000000
        jmp     ?_339                                   ; 55BB _ EB, 15

?_338:  mov     eax, dword [ebp+8H]                     ; 55BD _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 55C0 _ 8B. 55, F8
        add     edx, 2                                  ; 55C3 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 55C6 _ 8B. 04 D0
        cmp     dword [ebp+0CH], eax                    ; 55C9 _ 39. 45, 0C
        jc      ?_340                                   ; 55CC _ 72, 10
        add     dword [ebp-8H], 1                       ; 55CE _ 83. 45, F8, 01
?_339:  mov     eax, dword [ebp+8H]                     ; 55D2 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 55D5 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 55D7 _ 39. 45, F8
        jl      ?_338                                   ; 55DA _ 7C, E1
        jmp     ?_341                                   ; 55DC _ EB, 01

?_340:  nop                                             ; 55DE _ 90
?_341:  cmp     dword [ebp-8H], 0                       ; 55DF _ 83. 7D, F8, 00
        jle     ?_345                                   ; 55E3 _ 0F 8E, 000000F0
        mov     eax, dword [ebp-8H]                     ; 55E9 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 55EC _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 55EF _ 8B. 45, 08
        add     edx, 2                                  ; 55F2 _ 83. C2, 02
        mov     ecx, dword [eax+edx*8]                  ; 55F5 _ 8B. 0C D0
        mov     eax, dword [ebp-8H]                     ; 55F8 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 55FB _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 55FE _ 8B. 45, 08
        add     edx, 2                                  ; 5601 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 5604 _ 8B. 44 D0, 04
        add     eax, ecx                                ; 5608 _ 01. C8
        cmp     dword [ebp+0CH], eax                    ; 560A _ 39. 45, 0C
        jne     ?_345                                   ; 560D _ 0F 85, 000000C6
        mov     eax, dword [ebp-8H]                     ; 5613 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 5616 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 5619 _ 8B. 45, 08
        add     edx, 2                                  ; 561C _ 83. C2, 02
        mov     ecx, dword [eax+edx*8+4H]               ; 561F _ 8B. 4C D0, 04
        mov     eax, dword [ebp-8H]                     ; 5623 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 5626 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 5629 _ 8B. 45, 10
        add     ecx, eax                                ; 562C _ 01. C1
        mov     eax, dword [ebp+8H]                     ; 562E _ 8B. 45, 08
        add     edx, 2                                  ; 5631 _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 5634 _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 5638 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 563B _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 563D _ 39. 45, F8
        jge     ?_344                                   ; 5640 _ 0F 8D, 00000089
        mov     edx, dword [ebp+0CH]                    ; 5646 _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 5649 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 564C _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 564F _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 5652 _ 8B. 55, F8
        add     edx, 2                                  ; 5655 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 5658 _ 8B. 04 D0
        cmp     ecx, eax                                ; 565B _ 39. C1
        jnz     ?_344                                   ; 565D _ 75, 70
        mov     eax, dword [ebp-8H]                     ; 565F _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 5662 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 5665 _ 8B. 45, 08
        add     edx, 2                                  ; 5668 _ 83. C2, 02
        mov     ecx, dword [eax+edx*8+4H]               ; 566B _ 8B. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 566F _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 5672 _ 8B. 55, F8
        add     edx, 2                                  ; 5675 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 5678 _ 8B. 44 D0, 04
        mov     edx, dword [ebp-8H]                     ; 567C _ 8B. 55, F8
        sub     edx, 1                                  ; 567F _ 83. EA, 01
        add     ecx, eax                                ; 5682 _ 01. C1
        mov     eax, dword [ebp+8H]                     ; 5684 _ 8B. 45, 08
        add     edx, 2                                  ; 5687 _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 568A _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 568E _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 5691 _ 8B. 00
        lea     edx, [eax-1H]                           ; 5693 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 5696 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 5699 _ 89. 10
        jmp     ?_343                                   ; 569B _ EB, 28

?_342:  mov     eax, dword [ebp-8H]                     ; 569D _ 8B. 45, F8
        lea     edx, [eax+1H]                           ; 56A0 _ 8D. 50, 01
        mov     ecx, dword [ebp+8H]                     ; 56A3 _ 8B. 4D, 08
        mov     eax, dword [ebp-8H]                     ; 56A6 _ 8B. 45, F8
        lea     ebx, [eax+2H]                           ; 56A9 _ 8D. 58, 02
        mov     eax, dword [ebp+8H]                     ; 56AC _ 8B. 45, 08
        add     edx, 2                                  ; 56AF _ 83. C2, 02
        lea     edx, [eax+edx*8]                        ; 56B2 _ 8D. 14 D0
        mov     eax, dword [edx]                        ; 56B5 _ 8B. 02
        mov     edx, dword [edx+4H]                     ; 56B7 _ 8B. 52, 04
        mov     dword [ecx+ebx*8], eax                  ; 56BA _ 89. 04 D9
        mov     dword [ecx+ebx*8+4H], edx               ; 56BD _ 89. 54 D9, 04
        add     dword [ebp-8H], 1                       ; 56C1 _ 83. 45, F8, 01
?_343:  mov     eax, dword [ebp+8H]                     ; 56C5 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 56C8 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 56CA _ 39. 45, F8
        jl      ?_342                                   ; 56CD _ 7C, CE
?_344:  mov     eax, 0                                  ; 56CF _ B8, 00000000
        jmp     ?_351                                   ; 56D4 _ E9, 0000011C

?_345:  mov     eax, dword [ebp+8H]                     ; 56D9 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 56DC _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 56DE _ 39. 45, F8
        jge     ?_346                                   ; 56E1 _ 7D, 52
        mov     edx, dword [ebp+0CH]                    ; 56E3 _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 56E6 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 56E9 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 56EC _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 56EF _ 8B. 55, F8
        add     edx, 2                                  ; 56F2 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 56F5 _ 8B. 04 D0
        cmp     ecx, eax                                ; 56F8 _ 39. C1
        jnz     ?_346                                   ; 56FA _ 75, 39
        mov     eax, dword [ebp+8H]                     ; 56FC _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 56FF _ 8B. 55, F8
        add     edx, 2                                  ; 5702 _ 83. C2, 02
        mov     ecx, dword [ebp+0CH]                    ; 5705 _ 8B. 4D, 0C
        mov     dword [eax+edx*8], ecx                  ; 5708 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 570B _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 570E _ 8B. 55, F8
        add     edx, 2                                  ; 5711 _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 5714 _ 8B. 54 D0, 04
        mov     eax, dword [ebp+10H]                    ; 5718 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 571B _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 571E _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 5721 _ 8B. 55, F8
        add     edx, 2                                  ; 5724 _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 5727 _ 89. 4C D0, 04
        mov     eax, 0                                  ; 572B _ B8, 00000000
        jmp     ?_351                                   ; 5730 _ E9, 000000C0

?_346:  mov     eax, dword [ebp+8H]                     ; 5735 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 5738 _ 8B. 00
        cmp     eax, 4095                               ; 573A _ 3D, 00000FFF
        jg      ?_350                                   ; 573F _ 0F 8F, 00000087
        mov     eax, dword [ebp+8H]                     ; 5745 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 5748 _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 574A _ 89. 45, F4
        jmp     ?_348                                   ; 574D _ EB, 28

?_347:  mov     eax, dword [ebp-0CH]                    ; 574F _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 5752 _ 8D. 50, FF
        mov     ecx, dword [ebp+8H]                     ; 5755 _ 8B. 4D, 08
        mov     eax, dword [ebp-0CH]                    ; 5758 _ 8B. 45, F4
        lea     ebx, [eax+2H]                           ; 575B _ 8D. 58, 02
        mov     eax, dword [ebp+8H]                     ; 575E _ 8B. 45, 08
        add     edx, 2                                  ; 5761 _ 83. C2, 02
        lea     edx, [eax+edx*8]                        ; 5764 _ 8D. 14 D0
        mov     eax, dword [edx]                        ; 5767 _ 8B. 02
        mov     edx, dword [edx+4H]                     ; 5769 _ 8B. 52, 04
        mov     dword [ecx+ebx*8], eax                  ; 576C _ 89. 04 D9
        mov     dword [ecx+ebx*8+4H], edx               ; 576F _ 89. 54 D9, 04
        sub     dword [ebp-0CH], 1                      ; 5773 _ 83. 6D, F4, 01
?_348:  mov     eax, dword [ebp-0CH]                    ; 5777 _ 8B. 45, F4
        cmp     eax, dword [ebp-8H]                     ; 577A _ 3B. 45, F8
        jg      ?_347                                   ; 577D _ 7F, D0
        mov     eax, dword [ebp+8H]                     ; 577F _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 5782 _ 8B. 00
        lea     edx, [eax+1H]                           ; 5784 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 5787 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 578A _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 578C _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 578F _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 5792 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 5795 _ 8B. 00
        cmp     edx, eax                                ; 5797 _ 39. C2
        jge     ?_349                                   ; 5799 _ 7D, 0B
        mov     eax, dword [ebp+8H]                     ; 579B _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 579E _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 57A0 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 57A3 _ 89. 50, 04
?_349:  mov     eax, dword [ebp+8H]                     ; 57A6 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 57A9 _ 8B. 55, F8
        add     edx, 2                                  ; 57AC _ 83. C2, 02
        mov     ecx, dword [ebp+0CH]                    ; 57AF _ 8B. 4D, 0C
        mov     dword [eax+edx*8], ecx                  ; 57B2 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 57B5 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 57B8 _ 8B. 55, F8
        add     edx, 2                                  ; 57BB _ 83. C2, 02
        mov     ecx, dword [ebp+10H]                    ; 57BE _ 8B. 4D, 10
        mov     dword [eax+edx*8+4H], ecx               ; 57C1 _ 89. 4C D0, 04
        mov     eax, 0                                  ; 57C5 _ B8, 00000000
        jmp     ?_351                                   ; 57CA _ EB, 29

?_350:  mov     eax, dword [ebp+8H]                     ; 57CC _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 57CF _ 8B. 40, 0C
        lea     edx, [eax+1H]                           ; 57D2 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 57D5 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 57D8 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 57DB _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 57DE _ 8B. 40, 08
        mov     edx, eax                                ; 57E1 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 57E3 _ 8B. 45, 10
        add     eax, edx                                ; 57E6 _ 01. D0
        mov     edx, eax                                ; 57E8 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 57EA _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 57ED _ 89. 50, 08
        mov     eax, 4294967295                         ; 57F0 _ B8, FFFFFFFF
?_351:  add     esp, 16                                 ; 57F5 _ 83. C4, 10
        pop     ebx                                     ; 57F8 _ 5B
        pop     ebp                                     ; 57F9 _ 5D
        ret                                             ; 57FA _ C3
; _memman_free End of function

_memman_alloc_4k:; Function begin
        push    ebp                                     ; 57FB _ 55
        mov     ebp, esp                                ; 57FC _ 89. E5
        sub     esp, 24                                 ; 57FE _ 83. EC, 18
        mov     eax, dword [ebp+0CH]                    ; 5801 _ 8B. 45, 0C
        add     eax, 4095                               ; 5804 _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 5809 _ 25, FFFFF000
        mov     dword [ebp+0CH], eax                    ; 580E _ 89. 45, 0C
        mov     eax, dword [ebp+0CH]                    ; 5811 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 5814 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 5818 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 581B _ 89. 04 24
        call    _memman_alloc                           ; 581E _ E8, FFFFFCA3
        mov     dword [ebp-4H], eax                     ; 5823 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 5826 _ 8B. 45, FC
        leave                                           ; 5829 _ C9
        ret                                             ; 582A _ C3
; _memman_alloc_4k End of function

_memman_free_4k:; Function begin
        push    ebp                                     ; 582B _ 55
        mov     ebp, esp                                ; 582C _ 89. E5
        sub     esp, 28                                 ; 582E _ 83. EC, 1C
        mov     eax, dword [ebp+10H]                    ; 5831 _ 8B. 45, 10
        add     eax, 4095                               ; 5834 _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 5839 _ 25, FFFFF000
        mov     dword [ebp+10H], eax                    ; 583E _ 89. 45, 10
        mov     eax, dword [ebp+10H]                    ; 5841 _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 5844 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 5848 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 584B _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 584F _ 8B. 45, 08
        mov     dword [esp], eax                        ; 5852 _ 89. 04 24
        call    _memman_free                            ; 5855 _ E8, FFFFFD53
        mov     dword [ebp-4H], eax                     ; 585A _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 585D _ 8B. 45, FC
        leave                                           ; 5860 _ C9
        ret                                             ; 5861 _ C3
; _memman_free_4k End of function

        nop                                             ; 5862 _ 90
        nop                                             ; 5863 _ 90


_fifo8_init:
        push    ebp                                     ; 5864 _ 55
        mov     ebp, esp                                ; 5865 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 5867 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 586A _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 586D _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 5870 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 5873 _ 8B. 55, 10
        mov     dword [eax], edx                        ; 5876 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 5878 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 587B _ 8B. 55, 0C
        mov     dword [eax+10H], edx                    ; 587E _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 5881 _ 8B. 45, 08
        mov     dword [eax+14H], 0                      ; 5884 _ C7. 40, 14, 00000000
        mov     eax, dword [ebp+8H]                     ; 588B _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 588E _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 5895 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 5898 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 589F _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 58A2 _ 8B. 55, 14
        mov     dword [eax+18H], edx                    ; 58A5 _ 89. 50, 18
        nop                                             ; 58A8 _ 90
        pop     ebp                                     ; 58A9 _ 5D
        ret                                             ; 58AA _ C3

_fifo8_put:; Function begin
        push    ebp                                     ; 58AB _ 55
        mov     ebp, esp                                ; 58AC _ 89. E5
        sub     esp, 40                                 ; 58AE _ 83. EC, 28
        mov     eax, dword [ebp+0CH]                    ; 58B1 _ 8B. 45, 0C
        mov     byte [ebp-0CH], al                      ; 58B4 _ 88. 45, F4
        cmp     dword [ebp+8H], 0                       ; 58B7 _ 83. 7D, 08, 00
        jnz     ?_352                                   ; 58BB _ 75, 0A
        mov     eax, 4294967295                         ; 58BD _ B8, FFFFFFFF
        jmp     ?_356                                   ; 58C2 _ E9, 000000AB

?_352:  mov     eax, dword [ebp+8H]                     ; 58C7 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 58CA _ 8B. 40, 10
        test    eax, eax                                ; 58CD _ 85. C0
        jnz     ?_353                                   ; 58CF _ 75, 1B
        mov     eax, dword [ebp+8H]                     ; 58D1 _ 8B. 45, 08
        mov     eax, dword [eax+14H]                    ; 58D4 _ 8B. 40, 14
        or      eax, 01H                                ; 58D7 _ 83. C8, 01
        mov     edx, eax                                ; 58DA _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 58DC _ 8B. 45, 08
        mov     dword [eax+14H], edx                    ; 58DF _ 89. 50, 14
        mov     eax, 4294967295                         ; 58E2 _ B8, FFFFFFFF
        jmp     ?_356                                   ; 58E7 _ E9, 00000086

?_353:  mov     eax, dword [ebp+8H]                     ; 58EC _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 58EF _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 58F1 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 58F4 _ 8B. 40, 04
        add     edx, eax                                ; 58F7 _ 01. C2
        movzx   eax, byte [ebp-0CH]                     ; 58F9 _ 0F B6. 45, F4
        mov     byte [edx], al                          ; 58FD _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 58FF _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 5902 _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 5905 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 5908 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 590B _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 590E _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 5911 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 5914 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 5917 _ 8B. 40, 0C
        cmp     edx, eax                                ; 591A _ 39. C2
        jnz     ?_354                                   ; 591C _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 591E _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 5921 _ C7. 40, 04, 00000000
?_354:  mov     eax, dword [ebp+8H]                     ; 5928 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 592B _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 592E _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 5931 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 5934 _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 5937 _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 593A _ 8B. 40, 18
        test    eax, eax                                ; 593D _ 85. C0
        jz      ?_355                                   ; 593F _ 74, 2C
        mov     eax, dword [ebp+8H]                     ; 5941 _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 5944 _ 8B. 40, 18
        mov     eax, dword [eax+4H]                     ; 5947 _ 8B. 40, 04
        cmp     eax, 2                                  ; 594A _ 83. F8, 02
        jz      ?_355                                   ; 594D _ 74, 1E
        mov     eax, dword [ebp+8H]                     ; 594F _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 5952 _ 8B. 40, 18
        mov     dword [esp+8H], 0                       ; 5955 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], -1                      ; 595D _ C7. 44 24, 04, FFFFFFFF
        mov     dword [esp], eax                        ; 5965 _ 89. 04 24
        call    _task_run                               ; 5968 _ E8, 00000000(rel)
?_355:  mov     eax, 0                                  ; 596D _ B8, 00000000
?_356:  leave                                           ; 5972 _ C9
        ret                                             ; 5973 _ C3
; _fifo8_put End of function

_fifo8_get:; Function begin
        push    ebp                                     ; 5974 _ 55
        mov     ebp, esp                                ; 5975 _ 89. E5
        sub     esp, 16                                 ; 5977 _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 597A _ 8B. 45, 08
        mov     edx, dword [eax+10H]                    ; 597D _ 8B. 50, 10
        mov     eax, dword [ebp+8H]                     ; 5980 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 5983 _ 8B. 40, 0C
        cmp     edx, eax                                ; 5986 _ 39. C2
        jnz     ?_357                                   ; 5988 _ 75, 07
        mov     eax, 4294967295                         ; 598A _ B8, FFFFFFFF
        jmp     ?_359                                   ; 598F _ EB, 51

?_357:  mov     eax, dword [ebp+8H]                     ; 5991 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 5994 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 5996 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 5999 _ 8B. 40, 08
        add     eax, edx                                ; 599C _ 01. D0
        movzx   eax, byte [eax]                         ; 599E _ 0F B6. 00
        movzx   eax, al                                 ; 59A1 _ 0F B6. C0
        mov     dword [ebp-4H], eax                     ; 59A4 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 59A7 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 59AA _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 59AD _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 59B0 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 59B3 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 59B6 _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 59B9 _ 8B. 50, 08
        mov     eax, dword [ebp+8H]                     ; 59BC _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 59BF _ 8B. 40, 0C
        cmp     edx, eax                                ; 59C2 _ 39. C2
        jnz     ?_358                                   ; 59C4 _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 59C6 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 59C9 _ C7. 40, 08, 00000000
?_358:  mov     eax, dword [ebp+8H]                     ; 59D0 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 59D3 _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 59D6 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 59D9 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 59DC _ 89. 50, 10
        mov     eax, dword [ebp-4H]                     ; 59DF _ 8B. 45, FC
?_359:  leave                                           ; 59E2 _ C9
        ret                                             ; 59E3 _ C3
; _fifo8_get End of function

_fifo8_status:; Function begin
        push    ebp                                     ; 59E4 _ 55
        mov     ebp, esp                                ; 59E5 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 59E7 _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 59EA _ 8B. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 59ED _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 59F0 _ 8B. 40, 10
        sub     edx, eax                                ; 59F3 _ 29. C2
        mov     eax, edx                                ; 59F5 _ 89. D0
        pop     ebp                                     ; 59F7 _ 5D
        ret                                             ; 59F8 _ C3
; _fifo8_status End of function

        nop                                             ; 59F9 _ 90
        nop                                             ; 59FA _ 90
        nop                                             ; 59FB _ 90


_init_pit:
        push    ebp                                     ; 59FC _ 55
        mov     ebp, esp                                ; 59FD _ 89. E5
        sub     esp, 40                                 ; 59FF _ 83. EC, 28
        mov     dword [esp+4H], 52                      ; 5A02 _ C7. 44 24, 04, 00000034
        mov     dword [esp], 67                         ; 5A0A _ C7. 04 24, 00000043
        call    _io_out8                                ; 5A11 _ E8, 00000000(rel)
        mov     dword [esp+4H], 156                     ; 5A16 _ C7. 44 24, 04, 0000009C
        mov     dword [esp], 64                         ; 5A1E _ C7. 04 24, 00000040
        call    _io_out8                                ; 5A25 _ E8, 00000000(rel)
        mov     dword [esp+4H], 46                      ; 5A2A _ C7. 44 24, 04, 0000002E
        mov     dword [esp], 64                         ; 5A32 _ C7. 04 24, 00000040
        call    _io_out8                                ; 5A39 _ E8, 00000000(rel)
        mov     dword [_timerctl], 0                         ; 5A3E _ C7. 05, 00000000(d), 00000000
        mov     dword [ebp-0CH], 0                      ; 5A48 _ C7. 45, F4, 00000000
        jmp     ?_361                                   ; 5A4F _ EB, 26

?_360:  mov     eax, dword [ebp-0CH]                    ; 5A51 _ 8B. 45, F4
        shl     eax, 4                                  ; 5A54 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 5A57 _ 05, 00000008(d)
        mov     dword [eax], 0                          ; 5A5C _ C7. 00, 00000000
        mov     eax, dword [ebp-0CH]                    ; 5A62 _ 8B. 45, F4
        shl     eax, 4                                  ; 5A65 _ C1. E0, 04
        add     eax, _timerctl+0CH                           ; 5A68 _ 05, 0000000C(d)
        mov     dword [eax], 0                          ; 5A6D _ C7. 00, 00000000
        add     dword [ebp-0CH], 1                      ; 5A73 _ 83. 45, F4, 01
?_361:  cmp     dword [ebp-0CH], 499                    ; 5A77 _ 81. 7D, F4, 000001F3
        jle     ?_360                                   ; 5A7E _ 7E, D1
        nop                                             ; 5A80 _ 90
        leave                                           ; 5A81 _ C9
        ret                                             ; 5A82 _ C3

_timer_alloc:; Function begin
        push    ebp                                     ; 5A83 _ 55
        mov     ebp, esp                                ; 5A84 _ 89. E5
        sub     esp, 16                                 ; 5A86 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 5A89 _ C7. 45, FC, 00000000
        jmp     ?_364                                   ; 5A90 _ EB, 36

?_362:  mov     eax, dword [ebp-4H]                     ; 5A92 _ 8B. 45, FC
        shl     eax, 4                                  ; 5A95 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 5A98 _ 05, 00000008(d)
        mov     eax, dword [eax]                        ; 5A9D _ 8B. 00
        test    eax, eax                                ; 5A9F _ 85. C0
        jnz     ?_363                                   ; 5AA1 _ 75, 21
        mov     eax, dword [ebp-4H]                     ; 5AA3 _ 8B. 45, FC
        shl     eax, 4                                  ; 5AA6 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 5AA9 _ 05, 00000008(d)
        mov     dword [eax], 1                          ; 5AAE _ C7. 00, 00000001
        mov     eax, dword [ebp-4H]                     ; 5AB4 _ 8B. 45, FC
        shl     eax, 4                                  ; 5AB7 _ C1. E0, 04
        add     eax, _timerctl                               ; 5ABA _ 05, 00000000(d)
        add     eax, 4                                  ; 5ABF _ 83. C0, 04
        jmp     ?_365                                   ; 5AC2 _ EB, 12

?_363:  add     dword [ebp-4H], 1                       ; 5AC4 _ 83. 45, FC, 01
?_364:  cmp     dword [ebp-4H], 499                     ; 5AC8 _ 81. 7D, FC, 000001F3
        jle     ?_362                                   ; 5ACF _ 7E, C1
        mov     eax, 0                                  ; 5AD1 _ B8, 00000000
?_365:  leave                                           ; 5AD6 _ C9
        ret                                             ; 5AD7 _ C3
; _timer_alloc End of function

_timer_free:; Function begin
        push    ebp                                     ; 5AD8 _ 55
        mov     ebp, esp                                ; 5AD9 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 5ADB _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 5ADE _ C7. 40, 04, 00000000
        nop                                             ; 5AE5 _ 90
        pop     ebp                                     ; 5AE6 _ 5D
        ret                                             ; 5AE7 _ C3
; _timer_free End of function

_timer_init:; Function begin
        push    ebp                                     ; 5AE8 _ 55
        mov     ebp, esp                                ; 5AE9 _ 89. E5
        sub     esp, 4                                  ; 5AEB _ 83. EC, 04
        mov     eax, dword [ebp+10H]                    ; 5AEE _ 8B. 45, 10
        mov     byte [ebp-4H], al                       ; 5AF1 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 5AF4 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 5AF7 _ 8B. 55, 0C
        mov     dword [eax+8H], edx                     ; 5AFA _ 89. 50, 08
        mov     edx, dword [ebp+8H]                     ; 5AFD _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 5B00 _ 0F B6. 45, FC
        mov     byte [edx+0CH], al                      ; 5B04 _ 88. 42, 0C
        nop                                             ; 5B07 _ 90
        leave                                           ; 5B08 _ C9
        ret                                             ; 5B09 _ C3
; _timer_init End of function

_timer_settime:; Function begin
        push    ebp                                     ; 5B0A _ 55
        mov     ebp, esp                                ; 5B0B _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 5B0D _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 5B10 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 5B13 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 5B15 _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 5B18 _ C7. 40, 04, 00000002
        nop                                             ; 5B1F _ 90
        pop     ebp                                     ; 5B20 _ 5D
        ret                                             ; 5B21 _ C3
; _timer_settime End of function

_intHandlerForTimer:; Function begin
        push    ebp                                     ; 5B22 _ 55
        mov     ebp, esp                                ; 5B23 _ 89. E5
        sub     esp, 40                                 ; 5B25 _ 83. EC, 28
        mov     dword [esp+4H], 32                      ; 5B28 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 5B30 _ C7. 04 24, 00000020
        call    _io_out8                                ; 5B37 _ E8, 00000000(rel)
        mov     eax, dword [_timerctl]                       ; 5B3C _ A1, 00000000(d)
        add     eax, 1                                  ; 5B41 _ 83. C0, 01
        mov     dword [_timerctl], eax                       ; 5B44 _ A3, 00000000(d)
        mov     byte [ebp-0DH], 0                       ; 5B49 _ C6. 45, F3, 00
        mov     dword [ebp-0CH], 0                      ; 5B4D _ C7. 45, F4, 00000000
        jmp     ?_369                                   ; 5B54 _ E9, 000000AA

?_366:  mov     eax, dword [ebp-0CH]                    ; 5B59 _ 8B. 45, F4
        shl     eax, 4                                  ; 5B5C _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 5B5F _ 05, 00000008(d)
        mov     eax, dword [eax]                        ; 5B64 _ 8B. 00
        cmp     eax, 2                                  ; 5B66 _ 83. F8, 02
        jne     ?_367                                   ; 5B69 _ 0F 85, 00000085
        mov     eax, dword [ebp-0CH]                    ; 5B6F _ 8B. 45, F4
        shl     eax, 4                                  ; 5B72 _ C1. E0, 04
        add     eax, _timerctl+4H                            ; 5B75 _ 05, 00000004(d)
        mov     eax, dword [eax]                        ; 5B7A _ 8B. 00
        lea     edx, [eax-1H]                           ; 5B7C _ 8D. 50, FF
        mov     eax, dword [ebp-0CH]                    ; 5B7F _ 8B. 45, F4
        shl     eax, 4                                  ; 5B82 _ C1. E0, 04
        add     eax, _timerctl+4H                            ; 5B85 _ 05, 00000004(d)
        mov     dword [eax], edx                        ; 5B8A _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 5B8C _ 8B. 45, F4
        shl     eax, 4                                  ; 5B8F _ C1. E0, 04
        add     eax, _timerctl+4H                            ; 5B92 _ 05, 00000004(d)
        mov     eax, dword [eax]                        ; 5B97 _ 8B. 00
        test    eax, eax                                ; 5B99 _ 85. C0
        jnz     ?_367                                   ; 5B9B _ 75, 57
        mov     eax, dword [ebp-0CH]                    ; 5B9D _ 8B. 45, F4
        shl     eax, 4                                  ; 5BA0 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 5BA3 _ 05, 00000008(d)
        mov     dword [eax], 1                          ; 5BA8 _ C7. 00, 00000001
        mov     eax, dword [ebp-0CH]                    ; 5BAE _ 8B. 45, F4
        shl     eax, 4                                  ; 5BB1 _ C1. E0, 04
        add     eax, _timerctl+10H                           ; 5BB4 _ 05, 00000010(d)
        movzx   eax, byte [eax]                         ; 5BB9 _ 0F B6. 00
        movzx   eax, al                                 ; 5BBC _ 0F B6. C0
        mov     edx, dword [ebp-0CH]                    ; 5BBF _ 8B. 55, F4
        shl     edx, 4                                  ; 5BC2 _ C1. E2, 04
        add     edx, _timerctl+0CH                           ; 5BC5 _ 81. C2, 0000000C(d)
        mov     edx, dword [edx]                        ; 5BCB _ 8B. 12
        mov     dword [esp+4H], eax                     ; 5BCD _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 5BD1 _ 89. 14 24
        call    _fifo8_put                              ; 5BD4 _ E8, 00000000(rel)
        mov     eax, dword [ebp-0CH]                    ; 5BD9 _ 8B. 45, F4
        shl     eax, 4                                  ; 5BDC _ C1. E0, 04
        add     eax, _timerctl                               ; 5BDF _ 05, 00000000(d)
        lea     edx, [eax+4H]                           ; 5BE4 _ 8D. 50, 04
        mov     eax, dword [_task_timer]                ; 5BE7 _ A1, 00000000(d)
        cmp     edx, eax                                ; 5BEC _ 39. C2
        jnz     ?_367                                   ; 5BEE _ 75, 04
        mov     byte [ebp-0DH], 1                       ; 5BF0 _ C6. 45, F3, 01
?_367:  cmp     byte [ebp-0DH], 0                       ; 5BF4 _ 80. 7D, F3, 00
        jz      ?_368                                   ; 5BF8 _ 74, 05
        call    _task_switch                            ; 5BFA _ E8, 00000000(rel)
?_368:  add     dword [ebp-0CH], 1                      ; 5BFF _ 83. 45, F4, 01
?_369:  cmp     dword [ebp-0CH], 499                    ; 5C03 _ 81. 7D, F4, 000001F3
        jle     ?_366                                   ; 5C0A _ 0F 8E, FFFFFF49
        nop                                             ; 5C10 _ 90
        leave                                           ; 5C11 _ C9
        ret                                             ; 5C12 _ C3
; _intHandlerForTimer End of function

_getTimerController:; Function begin
        mov     eax, _timerctl                               ; 5C13 _ B8, 00000000(d)
        ret                                             ; 5C18 _ C3
; _getTimerController End of function

        nop                                             ; 5C19 _ 90
        nop                                             ; 5C1A _ 90
        nop                                             ; 5C1B _ 90


_intHandlerFromC:
        push    ebp                                     ; 5C1C _ 55
        mov     ebp, esp                                ; 5C1D _ 89. E5
        sub     esp, 40                                 ; 5C1F _ 83. EC, 28
        mov     eax, dword [_bootInfo]                  ; 5C22 _ A1, 00000000(d)
        mov     dword [ebp-0CH], eax                    ; 5C27 _ 89. 45, F4
        movzx   eax, word [_bootInfo+4H]                ; 5C2A _ 0F B7. 05, 00000004(d)
        cwde                                            ; 5C31 _ 98
        mov     dword [ebp-10H], eax                    ; 5C32 _ 89. 45, F0
        movzx   eax, word [_bootInfo+6H]                ; 5C35 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 5C3C _ 98
        mov     dword [ebp-14H], eax                    ; 5C3D _ 89. 45, EC
        mov     dword [esp+4H], 32                      ; 5C40 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 5C48 _ C7. 04 24, 00000020
        call    _io_out8                                ; 5C4F _ E8, 00000000(rel)
        mov     byte [ebp-15H], 0                       ; 5C54 _ C6. 45, EB, 00
        mov     dword [esp], 96                         ; 5C58 _ C7. 04 24, 00000060
        call    _io_in8                                 ; 5C5F _ E8, 00000000(rel)
        mov     byte [ebp-15H], al                      ; 5C64 _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 5C67 _ 0F B6. 45, EB
        mov     dword [esp+4H], eax                     ; 5C6B _ 89. 44 24, 04
        mov     dword [esp], _keyinfo                   ; 5C6F _ C7. 04 24, 00000000(d)
        call    _fifo8_put                              ; 5C76 _ E8, 00000000(rel)
        nop                                             ; 5C7B _ 90
        leave                                           ; 5C7C _ C9
        ret                                             ; 5C7D _ C3

_intHandlerForMouse:; Function begin
        push    ebp                                     ; 5C7E _ 55
        mov     ebp, esp                                ; 5C7F _ 89. E5
        sub     esp, 40                                 ; 5C81 _ 83. EC, 28
        mov     dword [esp+4H], 32                      ; 5C84 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 160                        ; 5C8C _ C7. 04 24, 000000A0
        call    _io_out8                                ; 5C93 _ E8, 00000000(rel)
        mov     dword [esp+4H], 32                      ; 5C98 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 5CA0 _ C7. 04 24, 00000020
        call    _io_out8                                ; 5CA7 _ E8, 00000000(rel)
        mov     dword [esp], 96                         ; 5CAC _ C7. 04 24, 00000060
        call    _io_in8                                 ; 5CB3 _ E8, 00000000(rel)
        mov     byte [ebp-9H], al                       ; 5CB8 _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 5CBB _ 0F B6. 45, F7
        mov     dword [esp+4H], eax                     ; 5CBF _ 89. 44 24, 04
        mov     dword [esp], _mouseinfo                 ; 5CC3 _ C7. 04 24, 00000000(d)
        call    _fifo8_put                              ; 5CCA _ E8, 00000000(rel)
        nop                                             ; 5CCF _ 90
        leave                                           ; 5CD0 _ C9
        ret                                             ; 5CD1 _ C3
; _intHandlerForMouse End of function

_intHandlerForStackOverFlow:; Function begin
        push    ebp                                     ; 5CD2 _ 55
        mov     ebp, esp                                ; 5CD3 _ 89. E5
        sub     esp, 40                                 ; 5CD5 _ 83. EC, 28
        call    _task_now                               ; 5CD8 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 5CDD _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 5CE0 _ 8B. 45, F4
        mov     dword [eax+98H], 8                      ; 5CE3 _ C7. 80, 00000098, 00000008
_intHandlerForException:
        push    ebp                                     ; 5D9D _ 55
        mov     ebp, esp                                ; 5D9E _ 89. E5
        sub     esp, 40                                 ; 5DA0 _ 83. EC, 28
        call    _task_now                               ; 5DA3 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 5DA8 _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 5DAB _ 8B. 45, F4
        mov     dword [eax+98H], 8                      ; 5DAE _ C7. 80, 00000098, 00000008
.text:  

_set_segmdesc:
        push    ebp                                     ; 5E1C _ 55
        mov     ebp, esp                                ; 5E1D _ 89. E5
        cmp     dword [ebp+0CH], 1048575                ; 5E1F _ 81. 7D, 0C, 000FFFFF
        jbe     ?_370                                   ; 5E26 _ 76, 10
        or      dword [ebp+14H], 8000H                  ; 5E28 _ 81. 4D, 14, 00008000
        mov     eax, dword [ebp+0CH]                    ; 5E2F _ 8B. 45, 0C
        shr     eax, 12                                 ; 5E32 _ C1. E8, 0C
        mov     dword [ebp+0CH], eax                    ; 5E35 _ 89. 45, 0C
?_370:  mov     eax, dword [ebp+0CH]                    ; 5E38 _ 8B. 45, 0C
        mov     edx, eax                                ; 5E3B _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 5E3D _ 8B. 45, 08
        mov     word [eax], dx                          ; 5E40 _ 66: 89. 10
        mov     eax, dword [ebp+10H]                    ; 5E43 _ 8B. 45, 10
        mov     edx, eax                                ; 5E46 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 5E48 _ 8B. 45, 08
        mov     word [eax+2H], dx                       ; 5E4B _ 66: 89. 50, 02
        mov     eax, dword [ebp+10H]                    ; 5E4F _ 8B. 45, 10
        sar     eax, 16                                 ; 5E52 _ C1. F8, 10
        mov     edx, eax                                ; 5E55 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 5E57 _ 8B. 45, 08
        mov     byte [eax+4H], dl                       ; 5E5A _ 88. 50, 04
        mov     eax, dword [ebp+14H]                    ; 5E5D _ 8B. 45, 14
        mov     edx, eax                                ; 5E60 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 5E62 _ 8B. 45, 08
        mov     byte [eax+5H], dl                       ; 5E65 _ 88. 50, 05
        mov     eax, dword [ebp+0CH]                    ; 5E68 _ 8B. 45, 0C
        shr     eax, 16                                 ; 5E6B _ C1. E8, 10
        and     eax, 0FH                                ; 5E6E _ 83. E0, 0F
        mov     edx, eax                                ; 5E71 _ 89. C2
        mov     eax, dword [ebp+14H]                    ; 5E73 _ 8B. 45, 14
        sar     eax, 8                                  ; 5E76 _ C1. F8, 08
        and     eax, 0FFFFFFF0H                         ; 5E79 _ 83. E0, F0
        or      eax, edx                                ; 5E7C _ 09. D0
        mov     edx, eax                                ; 5E7E _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 5E80 _ 8B. 45, 08
        mov     byte [eax+6H], dl                       ; 5E83 _ 88. 50, 06
        mov     eax, dword [ebp+10H]                    ; 5E86 _ 8B. 45, 10
        shr     eax, 24                                 ; 5E89 _ C1. E8, 18
        mov     edx, eax                                ; 5E8C _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 5E8E _ 8B. 45, 08
        mov     byte [eax+7H], dl                       ; 5E91 _ 88. 50, 07
        nop                                             ; 5E94 _ 90
        pop     ebp                                     ; 5E95 _ 5D
        ret                                             ; 5E96 _ C3

_get_taskctl:; Function begin
        mov     eax, dword [_taskctl]                   ; 5E97 _ A1, 00000004(d)
        ret                                             ; 5E9C _ C3
; _get_taskctl End of function

_init_task_level:; Function begin
        push    ebp                                     ; 5E9D _ 55
        mov     ebp, esp                                ; 5E9E _ 89. E5
        sub     esp, 16                                 ; 5EA0 _ 83. EC, 10
        mov     ecx, dword [_taskctl]                   ; 5EA3 _ 8B. 0D, 00000004(d)
        mov     edx, dword [ebp+8H]                     ; 5EA9 _ 8B. 55, 08
        mov     eax, edx                                ; 5EAC _ 89. D0
        add     eax, eax                                ; 5EAE _ 01. C0
        add     eax, edx                                ; 5EB0 _ 01. D0
        shl     eax, 4                                  ; 5EB2 _ C1. E0, 04
        add     eax, ecx                                ; 5EB5 _ 01. C8
        add     eax, 8                                  ; 5EB7 _ 83. C0, 08
        mov     dword [eax], 0                          ; 5EBA _ C7. 00, 00000000
        mov     ecx, dword [_taskctl]                   ; 5EC0 _ 8B. 0D, 00000004(d)
        mov     edx, dword [ebp+8H]                     ; 5EC6 _ 8B. 55, 08
        mov     eax, edx                                ; 5EC9 _ 89. D0
        add     eax, eax                                ; 5ECB _ 01. C0
        add     eax, edx                                ; 5ECD _ 01. D0
        shl     eax, 4                                  ; 5ECF _ C1. E0, 04
        add     eax, ecx                                ; 5ED2 _ 01. C8
        add     eax, 12                                 ; 5ED4 _ 83. C0, 0C
        mov     dword [eax], 0                          ; 5ED7 _ C7. 00, 00000000
        mov     dword [ebp-4H], 0                       ; 5EDD _ C7. 45, FC, 00000000
        jmp     ?_372                                   ; 5EE4 _ EB, 1B

?_371:  mov     edx, dword [_taskctl]                   ; 5EE6 _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-4H]                     ; 5EEC _ 8B. 45, FC
        imul    eax, eax, 52                            ; 5EEF _ 6B. C0, 34
        add     eax, edx                                ; 5EF2 _ 01. D0
        add     eax, 16                                 ; 5EF4 _ 83. C0, 10
        mov     dword [eax], 0                          ; 5EF7 _ C7. 00, 00000000
        add     dword [ebp-4H], 1                       ; 5EFD _ 83. 45, FC, 01
?_372:  cmp     dword [ebp-4H], 9                       ; 5F01 _ 83. 7D, FC, 09
        jle     ?_371                                   ; 5F05 _ 7E, DF
        nop                                             ; 5F07 _ 90
        leave                                           ; 5F08 _ C9
        ret                                             ; 5F09 _ C3
; _init_task_level End of function

_task_init:; Function begin
        push    ebp                                     ; 5F0A _ 55
        mov     ebp, esp                                ; 5F0B _ 89. E5
        sub     esp, 40                                 ; 5F0D _ 83. EC, 28
        call    _get_addr_gdt                           ; 5F10 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 5F15 _ 89. 45, F0
        mov     dword [esp+4H], 3128                    ; 5F18 _ C7. 44 24, 04, 00000C38
        mov     eax, dword [ebp+8H]                     ; 5F20 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 5F23 _ 89. 04 24
        call    _memman_alloc_4k                        ; 5F26 _ E8, 00000000(rel)
        mov     dword [_taskctl], eax                   ; 5F2B _ A3, 00000004(d)
        mov     dword [ebp-0CH], 0                      ; 5F30 _ C7. 45, F4, 00000000
        jmp     ?_374                                   ; 5F37 _ E9, 000000FC

?_373:  mov     edx, dword [_taskctl]                   ; 5F3C _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-0CH]                    ; 5F42 _ 8B. 45, F4
        imul    eax, eax, 208                           ; 5F45 _ 69. C0, 000000D0
        add     eax, edx                                ; 5F4B _ 01. D0
        add     eax, 492                                ; 5F4D _ 05, 000001EC
        mov     dword [eax], 0                          ; 5F52 _ C7. 00, 00000000
        mov     eax, dword [ebp-0CH]                    ; 5F58 _ 8B. 45, F4
        add     eax, 7                                  ; 5F5B _ 83. C0, 07
        mov     ecx, dword [_taskctl]                   ; 5F5E _ 8B. 0D, 00000004(d)
        lea     edx, [eax*8]                            ; 5F64 _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-0CH]                    ; 5F6B _ 8B. 45, F4
        imul    eax, eax, 208                           ; 5F6E _ 69. C0, 000000D0
        add     eax, ecx                                ; 5F74 _ 01. C8
        add     eax, 488                                ; 5F76 _ 05, 000001E8
        mov     dword [eax], edx                        ; 5F7B _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 5F7D _ 8B. 45, F4
        add     eax, 17                                 ; 5F80 _ 83. C0, 11
        mov     ecx, dword [_taskctl]                   ; 5F83 _ 8B. 0D, 00000004(d)
        lea     edx, [eax*8]                            ; 5F89 _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-0CH]                    ; 5F90 _ 8B. 45, F4
        imul    eax, eax, 208                           ; 5F93 _ 69. C0, 000000D0
        add     eax, ecx                                ; 5F99 _ 01. C8
        add     eax, 628                                ; 5F9B _ 05, 00000274
        mov     dword [eax], edx                        ; 5FA0 _ 89. 10
        mov     edx, dword [_taskctl]                   ; 5FA2 _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-0CH]                    ; 5FA8 _ 8B. 45, F4
        imul    eax, eax, 208                           ; 5FAB _ 69. C0, 000000D0
        add     eax, 512                                ; 5FB1 _ 05, 00000200
        add     eax, edx                                ; 5FB6 _ 01. D0
        add     eax, 20                                 ; 5FB8 _ 83. C0, 14
        mov     ecx, eax                                ; 5FBB _ 89. C1
        mov     eax, dword [ebp-0CH]                    ; 5FBD _ 8B. 45, F4
        add     eax, 7                                  ; 5FC0 _ 83. C0, 07
        lea     edx, [eax*8]                            ; 5FC3 _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-10H]                    ; 5FCA _ 8B. 45, F0
        add     eax, edx                                ; 5FCD _ 01. D0
        mov     dword [esp+0CH], 137                    ; 5FCF _ C7. 44 24, 0C, 00000089
        mov     dword [esp+8H], ecx                     ; 5FD7 _ 89. 4C 24, 08
        mov     dword [esp+4H], 103                     ; 5FDB _ C7. 44 24, 04, 00000067
        mov     dword [esp], eax                        ; 5FE3 _ 89. 04 24
        call    _set_segmdesc                           ; 5FE6 _ E8, FFFFFE31
        mov     edx, dword [_taskctl]                   ; 5FEB _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-0CH]                    ; 5FF1 _ 8B. 45, F4
        imul    eax, eax, 208                           ; 5FF4 _ 69. C0, 000000D0
        add     eax, 656                                ; 5FFA _ 05, 00000290
        add     eax, edx                                ; 5FFF _ 01. D0
        add     eax, 20                                 ; 6001 _ 83. C0, 14
        mov     ecx, eax                                ; 6004 _ 89. C1
        mov     eax, dword [ebp-0CH]                    ; 6006 _ 8B. 45, F4
        add     eax, 17                                 ; 6009 _ 83. C0, 11
        lea     edx, [eax*8]                            ; 600C _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-10H]                    ; 6013 _ 8B. 45, F0
        add     eax, edx                                ; 6016 _ 01. D0
        mov     dword [esp+0CH], 130                    ; 6018 _ C7. 44 24, 0C, 00000082
        mov     dword [esp+8H], ecx                     ; 6020 _ 89. 4C 24, 08
        mov     dword [esp+4H], 15                      ; 6024 _ C7. 44 24, 04, 0000000F
        mov     dword [esp], eax                        ; 602C _ 89. 04 24
        call    _set_segmdesc                           ; 602F _ E8, FFFFFDE8
        add     dword [ebp-0CH], 1                      ; 6034 _ 83. 45, F4, 01
?_374:  cmp     dword [ebp-0CH], 9                      ; 6038 _ 83. 7D, F4, 09
        jle     ?_373                                   ; 603C _ 0F 8E, FFFFFEFA
        mov     dword [ebp-0CH], 0                      ; 6042 _ C7. 45, F4, 00000000
        jmp     ?_376                                   ; 6049 _ EB, 0F

?_375:  mov     eax, dword [ebp-0CH]                    ; 604B _ 8B. 45, F4
        mov     dword [esp], eax                        ; 604E _ 89. 04 24
        call    _init_task_level                        ; 6051 _ E8, FFFFFE47
        add     dword [ebp-0CH], 1                      ; 6056 _ 83. 45, F4, 01
?_376:  cmp     dword [ebp-0CH], 9                      ; 605A _ 83. 7D, F4, 09
        jle     ?_375                                   ; 605E _ 7E, EB
        call    _task_alloc                             ; 6060 _ E8, 00000066
        mov     dword [ebp-14H], eax                    ; 6065 _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 6068 _ 8B. 45, EC
        mov     dword [eax+4H], 2                       ; 606B _ C7. 40, 04, 00000002
        mov     eax, dword [ebp-14H]                    ; 6072 _ 8B. 45, EC
        mov     dword [eax+8H], 100                     ; 6075 _ C7. 40, 08, 00000064
        mov     eax, dword [ebp-14H]                    ; 607C _ 8B. 45, EC
        mov     dword [eax+0CH], 0                      ; 607F _ C7. 40, 0C, 00000000
        mov     eax, dword [ebp-14H]                    ; 6086 _ 8B. 45, EC
        mov     dword [esp], eax                        ; 6089 _ 89. 04 24
        call    _task_add                               ; 608C _ E8, 0000034B
        call    _task_switchsub                         ; 6091 _ E8, 0000045F
        mov     eax, dword [ebp-14H]                    ; 6096 _ 8B. 45, EC
        mov     eax, dword [eax]                        ; 6099 _ 8B. 00
        mov     dword [esp], eax                        ; 609B _ 89. 04 24
        call    _load_tr                                ; 609E _ E8, 00000000(rel)
        call    _timer_alloc                            ; 60A3 _ E8, 00000000(rel)
        mov     dword [_task_timer], eax                       ; 60A8 _ A3, 00000000(d)
        mov     eax, dword [ebp-14H]                    ; 60AD _ 8B. 45, EC
        mov     eax, dword [eax+8H]                     ; 60B0 _ 8B. 40, 08
        mov     edx, eax                                ; 60B3 _ 89. C2
        mov     eax, dword [_task_timer]                       ; 60B5 _ A1, 00000000(d)
        mov     dword [esp+4H], edx                     ; 60BA _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 60BE _ 89. 04 24
        call    _timer_settime                          ; 60C1 _ E8, 00000000(rel)
        mov     eax, dword [ebp-14H]                    ; 60C6 _ 8B. 45, EC
        leave                                           ; 60C9 _ C9
        ret                                             ; 60CA _ C3
; _task_init End of function

_task_alloc:; Function begin
        push    ebp                                     ; 60CB _ 55
        mov     ebp, esp                                ; 60CC _ 89. E5
        sub     esp, 16                                 ; 60CE _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 60D1 _ C7. 45, FC, 00000000
        jmp     ?_379                                   ; 60D8 _ E9, 000000F8

?_377:  mov     edx, dword [_taskctl]                   ; 60DD _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-4H]                     ; 60E3 _ 8B. 45, FC
        imul    eax, eax, 208                           ; 60E6 _ 69. C0, 000000D0
        add     eax, edx                                ; 60EC _ 01. D0
        add     eax, 492                                ; 60EE _ 05, 000001EC
        mov     eax, dword [eax]                        ; 60F3 _ 8B. 00
        test    eax, eax                                ; 60F5 _ 85. C0
        jne     ?_378                                   ; 60F7 _ 0F 85, 000000D4
        mov     edx, dword [_taskctl]                   ; 60FD _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-4H]                     ; 6103 _ 8B. 45, FC
        imul    eax, eax, 208                           ; 6106 _ 69. C0, 000000D0
        add     eax, 480                                ; 610C _ 05, 000001E0
        add     eax, edx                                ; 6111 _ 01. D0
        add     eax, 8                                  ; 6113 _ 83. C0, 08
        mov     dword [ebp-8H], eax                     ; 6116 _ 89. 45, F8
        mov     eax, dword [ebp-8H]                     ; 6119 _ 8B. 45, F8
        mov     dword [eax+4H], 1                       ; 611C _ C7. 40, 04, 00000001
        mov     eax, dword [ebp-8H]                     ; 6123 _ 8B. 45, F8
        mov     dword [eax+50H], 514                    ; 6126 _ C7. 40, 50, 00000202
        mov     eax, dword [ebp-8H]                     ; 612D _ 8B. 45, F8
        mov     dword [eax+54H], 0                      ; 6130 _ C7. 40, 54, 00000000
        mov     eax, dword [ebp-8H]                     ; 6137 _ 8B. 45, F8
        mov     dword [eax+58H], 0                      ; 613A _ C7. 40, 58, 00000000
        mov     eax, dword [ebp-8H]                     ; 6141 _ 8B. 45, F8
        mov     dword [eax+5CH], 0                      ; 6144 _ C7. 40, 5C, 00000000
        mov     eax, dword [ebp-8H]                     ; 614B _ 8B. 45, F8
        mov     dword [eax+60H], 0                      ; 614E _ C7. 40, 60, 00000000
        mov     eax, dword [ebp-8H]                     ; 6155 _ 8B. 45, F8
        mov     dword [eax+68H], 0                      ; 6158 _ C7. 40, 68, 00000000
        mov     eax, dword [ebp-4H]                     ; 615F _ 8B. 45, FC
        add     eax, 1                                  ; 6162 _ 83. C0, 01
        shl     eax, 9                                  ; 6165 _ C1. E0, 09
        mov     edx, eax                                ; 6168 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 616A _ 8B. 45, F8
        mov     dword [eax+64H], edx                    ; 616D _ 89. 50, 64
        mov     eax, dword [ebp-8H]                     ; 6170 _ 8B. 45, F8
        mov     dword [eax+6CH], 0                      ; 6173 _ C7. 40, 6C, 00000000
        mov     eax, dword [ebp-8H]                     ; 617A _ 8B. 45, F8
        mov     dword [eax+70H], 0                      ; 617D _ C7. 40, 70, 00000000
        mov     eax, dword [ebp-8H]                     ; 6184 _ 8B. 45, F8
        mov     dword [eax+74H], 0                      ; 6187 _ C7. 40, 74, 00000000
        mov     eax, dword [ebp-8H]                     ; 618E _ 8B. 45, F8
        mov     dword [eax+80H], 0                      ; 6191 _ C7. 80, 00000080, 00000000
        mov     eax, dword [ebp-8H]                     ; 619B _ 8B. 45, F8
        mov     dword [eax+84H], 0                      ; 619E _ C7. 80, 00000084, 00000000
        mov     eax, dword [ebp-8H]                     ; 61A8 _ 8B. 45, F8
        mov     dword [eax+88H], 0                      ; 61AB _ C7. 80, 00000088, 00000000
        mov     eax, dword [ebp-8H]                     ; 61B5 _ 8B. 45, F8
        mov     dword [eax+34H], 0                      ; 61B8 _ C7. 40, 34, 00000000
        mov     eax, dword [ebp-8H]                     ; 61BF _ 8B. 45, F8
        mov     dword [eax+90H], 1073741824             ; 61C2 _ C7. 80, 00000090, 40000000
        mov     eax, dword [ebp-8H]                     ; 61CC _ 8B. 45, F8
        jmp     ?_380                                   ; 61CF _ EB, 13

?_378:  add     dword [ebp-4H], 1                       ; 61D1 _ 83. 45, FC, 01
?_379:  cmp     dword [ebp-4H], 9                       ; 61D5 _ 83. 7D, FC, 09
        jle     ?_377                                   ; 61D9 _ 0F 8E, FFFFFEFE
        mov     eax, 0                                  ; 61DF _ B8, 00000000
?_380:  leave                                           ; 61E4 _ C9
        ret                                             ; 61E5 _ C3
; _task_alloc End of function

_task_run:; Function begin
        push    ebp                                     ; 61E6 _ 55
        mov     ebp, esp                                ; 61E7 _ 89. E5
        sub     esp, 24                                 ; 61E9 _ 83. EC, 18
        cmp     dword [ebp+0CH], 0                      ; 61EC _ 83. 7D, 0C, 00
        jns     ?_381                                   ; 61F0 _ 79, 09
        mov     eax, dword [ebp+8H]                     ; 61F2 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 61F5 _ 8B. 40, 0C
        mov     dword [ebp+0CH], eax                    ; 61F8 _ 89. 45, 0C
?_381:  cmp     dword [ebp+10H], 0                      ; 61FB _ 83. 7D, 10, 00
        jle     ?_382                                   ; 61FF _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 6201 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 6204 _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 6207 _ 89. 50, 08
?_382:  mov     eax, dword [ebp+8H]                     ; 620A _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 620D _ 8B. 40, 04
        cmp     eax, 2                                  ; 6210 _ 83. F8, 02
        jnz     ?_383                                   ; 6213 _ 75, 16
        mov     eax, dword [ebp+8H]                     ; 6215 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 6218 _ 8B. 40, 0C
        cmp     dword [ebp+0CH], eax                    ; 621B _ 39. 45, 0C
        jz      ?_383                                   ; 621E _ 74, 0B
        mov     eax, dword [ebp+8H]                     ; 6220 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 6223 _ 89. 04 24
        call    _task_remove                            ; 6226 _ E8, 000001FD
?_383:  mov     eax, dword [ebp+8H]                     ; 622B _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 622E _ 8B. 40, 04
        cmp     eax, 2                                  ; 6231 _ 83. F8, 02
        jz      ?_384                                   ; 6234 _ 74, 14
        mov     eax, dword [ebp+8H]                     ; 6236 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 6239 _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 623C _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 623F _ 8B. 45, 08
        mov     dword [esp], eax                        ; 6242 _ 89. 04 24
        call    _task_add                               ; 6245 _ E8, 00000192
?_384:  mov     eax, dword [_taskctl]                   ; 624A _ A1, 00000004(d)
        mov     dword [eax+4H], 1                       ; 624F _ C7. 40, 04, 00000001
        nop                                             ; 6256 _ 90
        leave                                           ; 6257 _ C9
        ret                                             ; 6258 _ C3
; _task_run End of function

_task_switch:; Function begin
        push    ebp                                     ; 6259 _ 55
        mov     ebp, esp                                ; 625A _ 89. E5
        sub     esp, 40                                 ; 625C _ 83. EC, 28
        mov     ecx, dword [_taskctl]                   ; 625F _ 8B. 0D, 00000004(d)
        mov     eax, dword [_taskctl]                   ; 6265 _ A1, 00000004(d)
        mov     edx, dword [eax]                        ; 626A _ 8B. 10
        mov     eax, edx                                ; 626C _ 89. D0
        add     eax, eax                                ; 626E _ 01. C0
        add     eax, edx                                ; 6270 _ 01. D0
        shl     eax, 4                                  ; 6272 _ C1. E0, 04
        add     eax, ecx                                ; 6275 _ 01. C8
        add     eax, 8                                  ; 6277 _ 83. C0, 08
        mov     dword [ebp-0CH], eax                    ; 627A _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 627D _ 8B. 45, F4
        mov     edx, dword [eax+4H]                     ; 6280 _ 8B. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 6283 _ 8B. 45, F4
        mov     eax, dword [eax+edx*4+8H]               ; 6286 _ 8B. 44 90, 08
        mov     dword [ebp-10H], eax                    ; 628A _ 89. 45, F0
        mov     eax, dword [ebp-0CH]                    ; 628D _ 8B. 45, F4
        mov     eax, dword [eax+4H]                     ; 6290 _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 6293 _ 8D. 50, 01
        mov     eax, dword [ebp-0CH]                    ; 6296 _ 8B. 45, F4
        mov     dword [eax+4H], edx                     ; 6299 _ 89. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 629C _ 8B. 45, F4
        mov     edx, dword [eax+4H]                     ; 629F _ 8B. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 62A2 _ 8B. 45, F4
        mov     eax, dword [eax]                        ; 62A5 _ 8B. 00
        cmp     edx, eax                                ; 62A7 _ 39. C2
        jnz     ?_385                                   ; 62A9 _ 75, 0A
        mov     eax, dword [ebp-0CH]                    ; 62AB _ 8B. 45, F4
        mov     dword [eax+4H], 0                       ; 62AE _ C7. 40, 04, 00000000
?_385:  mov     eax, dword [_taskctl]                   ; 62B5 _ A1, 00000004(d)
        mov     eax, dword [eax+4H]                     ; 62BA _ 8B. 40, 04
        test    eax, eax                                ; 62BD _ 85. C0
        jz      ?_386                                   ; 62BF _ 74, 23
        call    _task_switchsub                         ; 62C1 _ E8, 0000022F
        mov     ecx, dword [_taskctl]                   ; 62C6 _ 8B. 0D, 00000004(d)
        mov     eax, dword [_taskctl]                   ; 62CC _ A1, 00000004(d)
        mov     edx, dword [eax]                        ; 62D1 _ 8B. 10
        mov     eax, edx                                ; 62D3 _ 89. D0
        add     eax, eax                                ; 62D5 _ 01. C0
        add     eax, edx                                ; 62D7 _ 01. D0
        shl     eax, 4                                  ; 62D9 _ C1. E0, 04
        add     eax, ecx                                ; 62DC _ 01. C8
        add     eax, 8                                  ; 62DE _ 83. C0, 08
        mov     dword [ebp-0CH], eax                    ; 62E1 _ 89. 45, F4
?_386:  mov     eax, dword [ebp-0CH]                    ; 62E4 _ 8B. 45, F4
        mov     edx, dword [eax+4H]                     ; 62E7 _ 8B. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 62EA _ 8B. 45, F4
        mov     eax, dword [eax+edx*4+8H]               ; 62ED _ 8B. 44 90, 08
        mov     dword [ebp-14H], eax                    ; 62F1 _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 62F4 _ 8B. 45, EC
        mov     eax, dword [eax+8H]                     ; 62F7 _ 8B. 40, 08
        mov     edx, eax                                ; 62FA _ 89. C2
        mov     eax, dword [_task_timer]                       ; 62FC _ A1, 00000000(d)
        mov     dword [esp+4H], edx                     ; 6301 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 6305 _ 89. 04 24
        call    _timer_settime                          ; 6308 _ E8, 00000000(rel)
        mov     eax, dword [ebp-14H]                    ; 630D _ 8B. 45, EC
        cmp     eax, dword [ebp-10H]                    ; 6310 _ 3B. 45, F0
        jz      ?_387                                   ; 6313 _ 74, 1C
        cmp     dword [ebp-14H], 0                      ; 6315 _ 83. 7D, EC, 00
        jz      ?_387                                   ; 6319 _ 74, 16
        mov     eax, dword [ebp-14H]                    ; 631B _ 8B. 45, EC
        mov     eax, dword [eax]                        ; 631E _ 8B. 00
        mov     dword [esp+4H], eax                     ; 6320 _ 89. 44 24, 04
        mov     dword [esp], 0                          ; 6324 _ C7. 04 24, 00000000
        call    _farjmp                                 ; 632B _ E8, 00000000(rel)
        nop                                             ; 6330 _ 90
?_387:  nop                                             ; 6331 _ 90
        leave                                           ; 6332 _ C9
        ret                                             ; 6333 _ C3
; _task_switch End of function

_task_sleep:; Function begin
        push    ebp                                     ; 6334 _ 55
        mov     ebp, esp                                ; 6335 _ 89. E5
        sub     esp, 40                                 ; 6337 _ 83. EC, 28
        mov     dword [ebp-10H], 0                      ; 633A _ C7. 45, F0, 00000000
        mov     dword [ebp-0CH], 0                      ; 6341 _ C7. 45, F4, 00000000
        mov     eax, dword [ebp+8H]                     ; 6348 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 634B _ 8B. 40, 04
        cmp     eax, 2                                  ; 634E _ 83. F8, 02
        jnz     ?_388                                   ; 6351 _ 75, 51
        call    _task_now                               ; 6353 _ E8, 00000051
        mov     dword [ebp-10H], eax                    ; 6358 _ 89. 45, F0
        mov     eax, dword [ebp+8H]                     ; 635B _ 8B. 45, 08
        mov     dword [esp], eax                        ; 635E _ 89. 04 24
        call    _task_remove                            ; 6361 _ E8, 000000C2
        mov     dword [ebp-0CH], 1                      ; 6366 _ C7. 45, F4, 00000001
        mov     eax, dword [ebp+8H]                     ; 636D _ 8B. 45, 08
        cmp     eax, dword [ebp-10H]                    ; 6370 _ 3B. 45, F0
        jnz     ?_388                                   ; 6373 _ 75, 2F
        call    _task_switchsub                         ; 6375 _ E8, 0000017B
        call    _task_now                               ; 637A _ E8, 0000002A
        mov     dword [ebp-10H], eax                    ; 637F _ 89. 45, F0
        mov     dword [ebp-0CH], 2                      ; 6382 _ C7. 45, F4, 00000002
        cmp     dword [ebp-10H], 0                      ; 6389 _ 83. 7D, F0, 00
        jz      ?_388                                   ; 638D _ 74, 15
        mov     eax, dword [ebp-10H]                    ; 638F _ 8B. 45, F0
        mov     eax, dword [eax]                        ; 6392 _ 8B. 00
        mov     dword [esp+4H], eax                     ; 6394 _ 89. 44 24, 04
        mov     dword [esp], 0                          ; 6398 _ C7. 04 24, 00000000
        call    _farjmp                                 ; 639F _ E8, 00000000(rel)
?_388:  mov     eax, dword [ebp-0CH]                    ; 63A4 _ 8B. 45, F4
        leave                                           ; 63A7 _ C9
        ret                                             ; 63A8 _ C3
; _task_sleep End of function

_task_now:; Function begin
        push    ebp                                     ; 63A9 _ 55
        mov     ebp, esp                                ; 63AA _ 89. E5
        sub     esp, 16                                 ; 63AC _ 83. EC, 10
        mov     ecx, dword [_taskctl]                   ; 63AF _ 8B. 0D, 00000004(d)
        mov     eax, dword [_taskctl]                   ; 63B5 _ A1, 00000004(d)
        mov     edx, dword [eax]                        ; 63BA _ 8B. 10
        mov     eax, edx                                ; 63BC _ 89. D0
        add     eax, eax                                ; 63BE _ 01. C0
        add     eax, edx                                ; 63C0 _ 01. D0
        shl     eax, 4                                  ; 63C2 _ C1. E0, 04
        add     eax, ecx                                ; 63C5 _ 01. C8
        add     eax, 8                                  ; 63C7 _ 83. C0, 08
        mov     dword [ebp-4H], eax                     ; 63CA _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 63CD _ 8B. 45, FC
        mov     edx, dword [eax+4H]                     ; 63D0 _ 8B. 50, 04
        mov     eax, dword [ebp-4H]                     ; 63D3 _ 8B. 45, FC
        mov     eax, dword [eax+edx*4+8H]               ; 63D6 _ 8B. 44 90, 08
        leave                                           ; 63DA _ C9
        ret                                             ; 63DB _ C3
; _task_now End of function

_task_add:; Function begin
        push    ebp                                     ; 63DC _ 55
        mov     ebp, esp                                ; 63DD _ 89. E5
        sub     esp, 16                                 ; 63DF _ 83. EC, 10
        mov     ecx, dword [_taskctl]                   ; 63E2 _ 8B. 0D, 00000004(d)
        mov     eax, dword [ebp+8H]                     ; 63E8 _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 63EB _ 8B. 50, 0C
        mov     eax, edx                                ; 63EE _ 89. D0
        add     eax, eax                                ; 63F0 _ 01. C0
        add     eax, edx                                ; 63F2 _ 01. D0
        shl     eax, 4                                  ; 63F4 _ C1. E0, 04
        add     eax, ecx                                ; 63F7 _ 01. C8
        add     eax, 8                                  ; 63F9 _ 83. C0, 08
        mov     dword [ebp-4H], eax                     ; 63FC _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 63FF _ 8B. 45, FC
        mov     edx, dword [eax]                        ; 6402 _ 8B. 10
        mov     eax, dword [ebp-4H]                     ; 6404 _ 8B. 45, FC
        mov     ecx, dword [ebp+8H]                     ; 6407 _ 8B. 4D, 08
        mov     dword [eax+edx*4+8H], ecx               ; 640A _ 89. 4C 90, 08
        mov     eax, dword [ebp-4H]                     ; 640E _ 8B. 45, FC
        mov     eax, dword [eax]                        ; 6411 _ 8B. 00
        lea     edx, [eax+1H]                           ; 6413 _ 8D. 50, 01
        mov     eax, dword [ebp-4H]                     ; 6416 _ 8B. 45, FC
        mov     dword [eax], edx                        ; 6419 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 641B _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 641E _ C7. 40, 04, 00000002
        nop                                             ; 6425 _ 90
        leave                                           ; 6426 _ C9
        ret                                             ; 6427 _ C3
; _task_add End of function

_task_remove:; Function begin
        push    ebp                                     ; 6428 _ 55
        mov     ebp, esp                                ; 6429 _ 89. E5
        sub     esp, 16                                 ; 642B _ 83. EC, 10
        mov     ecx, dword [_taskctl]                   ; 642E _ 8B. 0D, 00000004(d)
        mov     eax, dword [ebp+8H]                     ; 6434 _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 6437 _ 8B. 50, 0C
        mov     eax, edx                                ; 643A _ 89. D0
        add     eax, eax                                ; 643C _ 01. C0
        add     eax, edx                                ; 643E _ 01. D0
        shl     eax, 4                                  ; 6440 _ C1. E0, 04
        add     eax, ecx                                ; 6443 _ 01. C8
        add     eax, 8                                  ; 6445 _ 83. C0, 08
        mov     dword [ebp-8H], eax                     ; 6448 _ 89. 45, F8
        mov     dword [ebp-4H], 0                       ; 644B _ C7. 45, FC, 00000000
        jmp     ?_391                                   ; 6452 _ EB, 23

?_389:  mov     eax, dword [ebp-8H]                     ; 6454 _ 8B. 45, F8
        mov     edx, dword [ebp-4H]                     ; 6457 _ 8B. 55, FC
        mov     eax, dword [eax+edx*4+8H]               ; 645A _ 8B. 44 90, 08
        cmp     dword [ebp+8H], eax                     ; 645E _ 39. 45, 08
        jnz     ?_390                                   ; 6461 _ 75, 10
        mov     eax, dword [ebp-8H]                     ; 6463 _ 8B. 45, F8
        mov     edx, dword [ebp-4H]                     ; 6466 _ 8B. 55, FC
        mov     dword [eax+edx*4+8H], 0                 ; 6469 _ C7. 44 90, 08, 00000000
        jmp     ?_392                                   ; 6471 _ EB, 0E

?_390:  add     dword [ebp-4H], 1                       ; 6473 _ 83. 45, FC, 01
?_391:  mov     eax, dword [ebp-8H]                     ; 6477 _ 8B. 45, F8
        mov     eax, dword [eax]                        ; 647A _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 647C _ 39. 45, FC
        jl      ?_389                                   ; 647F _ 7C, D3
?_392:  mov     eax, dword [ebp-8H]                     ; 6481 _ 8B. 45, F8
        mov     eax, dword [eax]                        ; 6484 _ 8B. 00
        lea     edx, [eax-1H]                           ; 6486 _ 8D. 50, FF
        mov     eax, dword [ebp-8H]                     ; 6489 _ 8B. 45, F8
        mov     dword [eax], edx                        ; 648C _ 89. 10
        mov     eax, dword [ebp-8H]                     ; 648E _ 8B. 45, F8
        mov     eax, dword [eax+4H]                     ; 6491 _ 8B. 40, 04
        cmp     dword [ebp-4H], eax                     ; 6494 _ 39. 45, FC
        jge     ?_393                                   ; 6497 _ 7D, 0F
        mov     eax, dword [ebp-8H]                     ; 6499 _ 8B. 45, F8
        mov     eax, dword [eax+4H]                     ; 649C _ 8B. 40, 04
        lea     edx, [eax-1H]                           ; 649F _ 8D. 50, FF
        mov     eax, dword [ebp-8H]                     ; 64A2 _ 8B. 45, F8
        mov     dword [eax+4H], edx                     ; 64A5 _ 89. 50, 04
?_393:  mov     eax, dword [ebp-8H]                     ; 64A8 _ 8B. 45, F8
        mov     edx, dword [eax+4H]                     ; 64AB _ 8B. 50, 04
        mov     eax, dword [ebp-8H]                     ; 64AE _ 8B. 45, F8
        mov     eax, dword [eax]                        ; 64B1 _ 8B. 00
        cmp     edx, eax                                ; 64B3 _ 39. C2
        jl      ?_394                                   ; 64B5 _ 7C, 0A
        mov     eax, dword [ebp-8H]                     ; 64B7 _ 8B. 45, F8
        mov     dword [eax+4H], 0                       ; 64BA _ C7. 40, 04, 00000000
?_394:  mov     eax, dword [ebp+8H]                     ; 64C1 _ 8B. 45, 08
        mov     dword [eax+4H], 1                       ; 64C4 _ C7. 40, 04, 00000001
        jmp     ?_396                                   ; 64CB _ EB, 1B

?_395:  mov     eax, dword [ebp-4H]                     ; 64CD _ 8B. 45, FC
        lea     edx, [eax+1H]                           ; 64D0 _ 8D. 50, 01
        mov     eax, dword [ebp-8H]                     ; 64D3 _ 8B. 45, F8
        mov     ecx, dword [eax+edx*4+8H]               ; 64D6 _ 8B. 4C 90, 08
        mov     eax, dword [ebp-8H]                     ; 64DA _ 8B. 45, F8
        mov     edx, dword [ebp-4H]                     ; 64DD _ 8B. 55, FC
        mov     dword [eax+edx*4+8H], ecx               ; 64E0 _ 89. 4C 90, 08
        add     dword [ebp-4H], 1                       ; 64E4 _ 83. 45, FC, 01
?_396:  mov     eax, dword [ebp-8H]                     ; 64E8 _ 8B. 45, F8
        mov     eax, dword [eax]                        ; 64EB _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 64ED _ 39. 45, FC
        jl      ?_395                                   ; 64F0 _ 7C, DB
        nop                                             ; 64F2 _ 90
        leave                                           ; 64F3 _ C9
        ret                                             ; 64F4 _ C3
; _task_remove End of function

_task_switchsub:; Function begin
        push    ebp                                     ; 64F5 _ 55
        mov     ebp, esp                                ; 64F6 _ 89. E5
        sub     esp, 16                                 ; 64F8 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 64FB _ C7. 45, FC, 00000000
        jmp     ?_398                                   ; 6502 _ EB, 21

?_397:  mov     ecx, dword [_taskctl]                   ; 6504 _ 8B. 0D, 00000004(d)
        mov     edx, dword [ebp-4H]                     ; 650A _ 8B. 55, FC
        mov     eax, edx                                ; 650D _ 89. D0
        add     eax, eax                                ; 650F _ 01. C0
        add     eax, edx                                ; 6511 _ 01. D0
        shl     eax, 4                                  ; 6513 _ C1. E0, 04
        add     eax, ecx                                ; 6516 _ 01. C8
        add     eax, 8                                  ; 6518 _ 83. C0, 08
        mov     eax, dword [eax]                        ; 651B _ 8B. 00
        test    eax, eax                                ; 651D _ 85. C0
        jg      ?_399                                   ; 651F _ 7F, 0C
        add     dword [ebp-4H], 1                       ; 6521 _ 83. 45, FC, 01
?_398:  cmp     dword [ebp-4H], 9                       ; 6525 _ 83. 7D, FC, 09
        jle     ?_397                                   ; 6529 _ 7E, D9
        jmp     ?_400                                   ; 652B _ EB, 01

?_399:  nop                                             ; 652D _ 90
?_400:  mov     eax, dword [_taskctl]                   ; 652E _ A1, 00000004(d)
        mov     edx, dword [ebp-4H]                     ; 6533 _ 8B. 55, FC
        mov     dword [eax], edx                        ; 6536 _ 89. 10
        mov     eax, dword [_taskctl]                   ; 6538 _ A1, 00000004(d)
        mov     dword [eax+4H], 0                       ; 653D _ C7. 40, 04, 00000000
        nop                                             ; 6544 _ 90
        leave                                           ; 6545 _ C9
        ret                                             ; 6546 _ C3
; _task_switchsub End of function

_send_message:; Function begin
        push    ebp                                     ; 6547 _ 55
        mov     ebp, esp                                ; 6548 _ 89. E5
        sub     esp, 24                                 ; 654A _ 83. EC, 18
        mov     eax, dword [ebp+10H]                    ; 654D _ 8B. 45, 10
        movzx   eax, al                                 ; 6550 _ 0F B6. C0
        mov     edx, dword [ebp+0CH]                    ; 6553 _ 8B. 55, 0C
        add     edx, 16                                 ; 6556 _ 83. C2, 10
        mov     dword [esp+4H], eax                     ; 6559 _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 655D _ 89. 14 24
        call    _fifo8_put                              ; 6560 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 6565 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 6568 _ 89. 04 24
        call    _task_sleep                             ; 656B _ E8, FFFFFDC4
        nop                                             ; 6570 _ 90
        leave                                           ; 6571 _ C9
        ret                                             ; 6572 _ C3
; _send_message End of function

        nop                                             ; 6573 _ 90


_strcmp:
        push    ebp                                     ; 6574 _ 55
        mov     ebp, esp                                ; 6575 _ 89. E5
        sub     esp, 16                                 ; 6577 _ 83. EC, 10
        cmp     dword [ebp+8H], 0                       ; 657A _ 83. 7D, 08, 00
        jz      ?_401                                   ; 657E _ 74, 06
        cmp     dword [ebp+0CH], 0                      ; 6580 _ 83. 7D, 0C, 00
        jnz     ?_402                                   ; 6584 _ 75, 0A
?_401:  mov     eax, 0                                  ; 6586 _ B8, 00000000
        jmp     ?_409                                   ; 658B _ E9, 0000009B

?_402:  mov     dword [ebp-4H], 0                       ; 6590 _ C7. 45, FC, 00000000
        jmp     ?_405                                   ; 6597 _ EB, 25

?_403:  mov     edx, dword [ebp-4H]                     ; 6599 _ 8B. 55, FC
        mov     eax, dword [ebp+8H]                     ; 659C _ 8B. 45, 08
        add     eax, edx                                ; 659F _ 01. D0
        movzx   edx, byte [eax]                         ; 65A1 _ 0F B6. 10
        mov     ecx, dword [ebp-4H]                     ; 65A4 _ 8B. 4D, FC
        mov     eax, dword [ebp+0CH]                    ; 65A7 _ 8B. 45, 0C
        add     eax, ecx                                ; 65AA _ 01. C8
        movzx   eax, byte [eax]                         ; 65AC _ 0F B6. 00
        cmp     dl, al                                  ; 65AF _ 38. C2
        jz      ?_404                                   ; 65B1 _ 74, 07
        mov     eax, 0                                  ; 65B3 _ B8, 00000000
        jmp     ?_409                                   ; 65B8 _ EB, 71

?_404:  add     dword [ebp-4H], 1                       ; 65BA _ 83. 45, FC, 01
?_405:  mov     edx, dword [ebp-4H]                     ; 65BE _ 8B. 55, FC
        mov     eax, dword [ebp+8H]                     ; 65C1 _ 8B. 45, 08
        add     eax, edx                                ; 65C4 _ 01. D0
        movzx   eax, byte [eax]                         ; 65C6 _ 0F B6. 00
        test    al, al                                  ; 65C9 _ 84. C0
        jz      ?_406                                   ; 65CB _ 74, 0F
        mov     edx, dword [ebp-4H]                     ; 65CD _ 8B. 55, FC
        mov     eax, dword [ebp+0CH]                    ; 65D0 _ 8B. 45, 0C
        add     eax, edx                                ; 65D3 _ 01. D0
        movzx   eax, byte [eax]                         ; 65D5 _ 0F B6. 00
        test    al, al                                  ; 65D8 _ 84. C0
        jnz     ?_403                                   ; 65DA _ 75, BD
?_406:  mov     edx, dword [ebp-4H]                     ; 65DC _ 8B. 55, FC
        mov     eax, dword [ebp+8H]                     ; 65DF _ 8B. 45, 08
        add     eax, edx                                ; 65E2 _ 01. D0
        movzx   eax, byte [eax]                         ; 65E4 _ 0F B6. 00
        test    al, al                                  ; 65E7 _ 84. C0
        jnz     ?_407                                   ; 65E9 _ 75, 16
        mov     edx, dword [ebp-4H]                     ; 65EB _ 8B. 55, FC
        mov     eax, dword [ebp+0CH]                    ; 65EE _ 8B. 45, 0C
        add     eax, edx                                ; 65F1 _ 01. D0
        movzx   eax, byte [eax]                         ; 65F3 _ 0F B6. 00
        test    al, al                                  ; 65F6 _ 84. C0
        jz      ?_407                                   ; 65F8 _ 74, 07
        mov     eax, 0                                  ; 65FA _ B8, 00000000
        jmp     ?_409                                   ; 65FF _ EB, 2A

?_407:  mov     edx, dword [ebp-4H]                     ; 6601 _ 8B. 55, FC
        mov     eax, dword [ebp+8H]                     ; 6604 _ 8B. 45, 08
        add     eax, edx                                ; 6607 _ 01. D0
        movzx   eax, byte [eax]                         ; 6609 _ 0F B6. 00
        test    al, al                                  ; 660C _ 84. C0
        jz      ?_408                                   ; 660E _ 74, 16
        mov     edx, dword [ebp-4H]                     ; 6610 _ 8B. 55, FC
        mov     eax, dword [ebp+0CH]                    ; 6613 _ 8B. 45, 0C
        add     eax, edx                                ; 6616 _ 01. D0
        movzx   eax, byte [eax]                         ; 6618 _ 0F B6. 00
        test    al, al                                  ; 661B _ 84. C0
        jz      ?_408                                   ; 661D _ 74, 07
        mov     eax, 0                                  ; 661F _ B8, 00000000
        jmp     ?_409                                   ; 6624 _ EB, 05

?_408:  mov     eax, 1                                  ; 6626 _ B8, 00000001
?_409:  leave                                           ; 662B _ C9
        ret                                             ; 662C _ C3

        nop                                             ; 662D _ 90
        nop                                             ; 662E _ 90
        nop                                             ; 662F _ 90



_memman:                                                ; dword
        dd 00100000H                                    ; 0000 _ 1048576 

_KEY_CONTROL:                                           ; byte
        db 1DH, 00H, 00H, 00H                           ; 0004 _ ....

_show_console_window:                                   ; byte
        db 01H, 00H, 00H, 00H                           ; 0008 _ ....

_mmx:                                                   ; byte
        db 0FFH, 0FFH, 0FFH, 0FFH                       ; 000C _ ....

_mmy:                                                   ; byte
        db 0FFH, 0FFH, 0FFH, 0FFH                       ; 0010 _ ....

_console_pos:                                           ; byte
        db 0F0H, 00H, 00H, 00H, 00H, 00H, 00H, 00H      ; 0014 _ ........
        db 00H, 00H, 00H, 00H                           ; 001C _ ....

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
        db 30H, 58H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0110 _ 0X......
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0118 _ ........

_closebtn.2304:                                         ; byte
        db 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 0120 _ OOOOOOOO
        db 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 40H       ; 0128 _ OOOOOOO@
        db 4FH, 51H, 51H, 51H, 51H, 51H, 51H, 51H       ; 0130 _ OQQQQQQQ
        db 51H, 51H, 51H, 51H, 51H, 51H, 24H, 40H       ; 0138 _ QQQQQQ$@
        db 4FH, 51H, 51H, 51H, 51H, 51H, 51H, 51H       ; 0140 _ OQQQQQQQ
        db 51H, 51H, 51H, 51H, 51H, 51H, 24H, 40H       ; 0148 _ QQQQQQ$@
        db 4FH, 51H, 51H, 51H, 40H, 40H, 51H, 51H       ; 0150 _ OQQQ@@QQ
        db 51H, 51H, 40H, 40H, 51H, 51H, 24H, 40H       ; 0158 _ QQ@@QQ$@
        db 4FH, 51H, 51H, 51H, 51H, 40H, 40H, 51H       ; 0160 _ OQQQQ@@Q
        db 51H, 40H, 40H, 51H, 51H, 51H, 24H, 40H       ; 0168 _ Q@@QQQ$@
        db 4FH, 51H, 51H, 51H, 51H, 51H, 40H, 40H       ; 0170 _ OQQQQQ@@
        db 40H, 40H, 51H, 51H, 51H, 51H, 24H, 40H       ; 0178 _ @@QQQQ$@
        db 4FH, 51H, 51H, 51H, 51H, 51H, 51H, 40H       ; 0180 _ OQQQQQQ@
        db 40H, 51H, 51H, 51H, 51H, 51H, 24H, 40H       ; 0188 _ @QQQQQ$@
        db 4FH, 51H, 51H, 51H, 51H, 51H, 40H, 40H       ; 0190 _ OQQQQQ@@
        db 40H, 40H, 51H, 51H, 51H, 51H, 24H, 40H       ; 0198 _ @@QQQQ$@
        db 4FH, 51H, 51H, 51H, 51H, 40H, 40H, 51H       ; 01A0 _ OQQQQ@@Q
        db 51H, 40H, 40H, 51H, 51H, 51H, 24H, 40H       ; 01A8 _ Q@@QQQ$@
        db 4FH, 51H, 51H, 51H, 40H, 40H, 51H, 51H       ; 01B0 _ OQQQ@@QQ
        db 51H, 51H, 40H, 40H, 51H, 51H, 24H, 40H       ; 01B8 _ QQ@@QQ$@
        db 4FH, 51H, 51H, 51H, 51H, 51H, 51H, 51H       ; 01C0 _ OQQQQQQQ
        db 51H, 51H, 51H, 51H, 51H, 51H, 24H, 40H       ; 01C8 _ QQQQQQ$@
        db 4FH, 51H, 51H, 51H, 51H, 51H, 51H, 51H       ; 01D0 _ OQQQQQQQ
        db 51H, 51H, 51H, 51H, 51H, 51H, 24H, 40H       ; 01D8 _ QQQQQQ$@
        db 4FH, 24H, 24H, 24H, 24H, 24H, 24H, 24H       ; 01E0 _ O$$$$$$$
        db 24H, 24H, 24H, 24H, 24H, 24H, 24H, 40H       ; 01E8 _ $$$$$$$@
        db 40H, 40H, 40H, 40H, 40H, 40H, 40H, 40H       ; 01F0 _ @@@@@@@@
        db 40H, 40H, 40H, 40H, 40H, 40H, 40H, 40H       ; 01F8 _ @@@@@@@@

_table_rgb.2345:                                        ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0200 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0208 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0210 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0218 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 0220 _ ........
        db 00H, 84H, 00H, 84H, 84H, 84H, 84H, 84H       ; 0228 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0230 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0238 _ ........

_cursor.2412:                                           ; byte
        db 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH       ; 0240 _ ********
        db 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2EH, 2EH       ; 0248 _ ******..
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 0250 _ *OOOOOOO
        db 4FH, 4FH, 4FH, 4FH, 2AH, 2EH, 2EH, 2EH       ; 0258 _ OOOO*...
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 0260 _ *OOOOOOO
        db 4FH, 4FH, 4FH, 2AH, 2EH, 2EH, 2EH, 2EH       ; 0268 _ OOO*....
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 0270 _ *OOOOOOO
        db 4FH, 4FH, 2AH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0278 _ OO*.....
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 0280 _ *OOOOOOO
        db 4FH, 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0288 _ O*......
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 0290 _ *OOOOOOO
        db 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0298 _ *.......
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 02A0 _ *OOOOOOO
        db 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 02A8 _ *.......
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 02B0 _ *OOOOOOO
        db 4FH, 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 02B8 _ O*......
        db 2AH, 4FH, 4FH, 4FH, 4FH, 2AH, 2AH, 4FH       ; 02C0 _ *OOOO**O
        db 4FH, 4FH, 2AH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 02C8 _ OO*.....
        db 2AH, 4FH, 4FH, 4FH, 2AH, 2EH, 2EH, 2AH       ; 02D0 _ *OOO*..*
        db 4FH, 4FH, 4FH, 2AH, 2EH, 2EH, 2EH, 2EH       ; 02D8 _ OOO*....
        db 2AH, 4FH, 4FH, 2AH, 2EH, 2EH, 2EH, 2EH       ; 02E0 _ *OO*....
        db 2AH, 4FH, 4FH, 4FH, 2AH, 2EH, 2EH, 2EH       ; 02E8 _ *OOO*...
        db 2AH, 4FH, 2AH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 02F0 _ *O*.....
        db 2EH, 2AH, 4FH, 4FH, 4FH, 2AH, 2EH, 2EH       ; 02F8 _ .*OOO*..
        db 2AH, 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0300 _ **......
        db 2EH, 2EH, 2AH, 4FH, 4FH, 4FH, 2AH, 2EH       ; 0308 _ ..*OOO*.
        db 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0310 _ *.......
        db 2EH, 2EH, 2EH, 2AH, 4FH, 4FH, 4FH, 2AH       ; 0318 _ ...*OOO*
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0320 _ ........
        db 2EH, 2EH, 2EH, 2EH, 2AH, 4FH, 4FH, 2AH       ; 0328 _ ....*OO*
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0330 _ ........
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2AH, 2AH, 2AH       ; 0338 _ .....***


?_410:                                                  
        db 63H, 6FH, 75H, 6EH, 74H, 65H, 72H, 00H       ; 0000 _ counter.

?_411:                                                  ; byte
        db 74H, 61H, 73H, 6BH, 5FH, 61H, 00H            ; 0008 _ task_a.

?_412:                                                  ; byte
        db 63H, 6FH, 6EH, 73H, 6FH, 6CH, 65H, 00H       ; 000F _ console.

?_413:                                                  ; byte
        db 20H, 00H                                     ; 0017 _  .

?_414:                                                  ; byte
        db 66H, 72H, 65H, 65H, 20H, 00H                 ; 0019 _ free .

?_415:                                                  ; byte
        db 20H, 4BH, 42H, 00H                           ; 001F _  KB.

?_416:                                                  ; byte
        db 3EH, 00H                                     ; 0023 _ >.

?_417:                                                  ; byte
        db 6DH, 65H, 6DH, 00H                           ; 0025 _ mem.

?_418:                                                  ; byte
        db 63H, 6CH, 73H, 00H                           ; 0029 _ cls.

?_419:                                                  ; byte
        db 61H, 6CH, 69H, 65H, 6EH, 77H, 61H, 72H       ; 002D _ alienwar
        db 00H                                          ; 0035 _ .

?_420:                                                  ; byte
        db 61H, 6CH, 69H, 65H, 6EH, 77H, 61H, 72H       ; 0036 _ alienwar
        db 2EH, 65H, 78H, 65H, 00H                      ; 003E _ .exe.

?_421:                                                  ; byte
        db 63H, 69H, 72H, 63H, 6CH, 65H, 00H            ; 0043 _ circle.

?_422:                                                  ; byte
        db 63H, 69H, 72H, 63H, 6CH, 65H, 2EH, 65H       ; 004A _ circle.e
        db 78H, 65H, 00H                                ; 0052 _ xe.

?_423:                                                  ; byte
        db 64H, 69H, 72H, 00H                           ; 0055 _ dir.

?_424:                                                  ; byte
        db 65H, 78H, 69H, 74H, 00H                      ; 0059 _ exit.

?_425:                                                  ; byte
        db 73H, 74H, 61H, 72H, 74H, 00H                 ; 005E _ start.

?_426:                                                  ; byte
        db 6EH, 63H, 73H, 74H, 00H                      ; 0064 _ ncst.

?_427:                                                  ; byte
        db 63H, 72H, 61H, 63H, 6BH, 00H                 ; 0069 _ crack.

?_428:                                                  ; byte
        db 63H, 72H, 61H, 63H, 6BH, 2EH, 65H, 78H       ; 006F _ crack.ex
        db 65H, 00H                                     ; 0077 _ e.

?_429:                                                  ; byte
        db 6BH, 65H, 79H, 62H, 6FH, 61H, 72H, 64H       ; 0079 _ keyboard
        db 00H, 00H, 00H                                ; 0081 _ ...

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

?_430:  resd    1                                       ; 002C

_mouseinfo:                                             ; byte
        resb    48                                      ; 0030

_keybuf:                                                ; byte
        resb    32                                      ; 0060

_mousebuf:                                              ; byte
        resb    128                                     ; 0080

_mdec:                                                  ; byte
        resb    16                                      ; 0100

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

_mouse_clicked_sht:                                     ; byte
        resb    4                                       ; 0270

_task_main:                                             ; dword
        resd    1                                       ; 0274

_current_console_task:                                  ; dword
        resd    1                                       ; 0278

_bootInfo:                                              ; dword
        resd    1                                       ; 027C

?_431:  resw    1                                       ; 0280

?_432:  resw    1                                       ; 0282

_task_a.2390:                                           ; dword
        resd    7                                       ; 0284

_tss_a.2389:                                            ; byte
        resb    128                                     ; 02A0

_tss_b.2388:                                            ; byte
        resb    104                                     ; 0320

_task_b.2378:                                           ; byte
        resb    24                                      ; 0388

_timerctl:                                              ; byte
        resb    8032                                    ; 03A0

_task_timer:                                            ; byte
        resb    4                                       ; 2300

_taskctl:                                               ; byte
        resb    4                                       ; 2304


