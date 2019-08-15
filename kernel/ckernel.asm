; Disassembly of file: ckernel.o
; Thu Aug 15 14:35:18 2019
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
        call    _init_keyboard                          ; 0150 _ E8, 00000000(rel)
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
        call    _enable_mouse                           ; 038A _ E8, 00000000(rel)
        mov     eax, dword [_memman]                    ; 038F _ A1, 00000000(d)
        mov     dword [esp], eax                        ; 0394 _ 89. 04 24
        call    _task_init                              ; 0397 _ E8, 00000000(rel)
        mov     dword [_task_a.2388], eax               ; 039C _ A3, 00000284(d)
        mov     eax, dword [_task_a.2388]               ; 03A1 _ A1, 00000284(d)
        mov     dword [?_430], eax                      ; 03A6 _ A3, 0000002C(d)
        mov     eax, dword [_task_a.2388]               ; 03AB _ A1, 00000284(d)
        mov     dword [_task_main], eax                 ; 03B0 _ A3, 00000274(d)
        mov     eax, dword [_task_a.2388]               ; 03B5 _ A1, 00000284(d)
        mov     dword [esp+8H], 0                       ; 03BA _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], 0                       ; 03C2 _ C7. 44 24, 04, 00000000
        mov     dword [esp], eax                        ; 03CA _ 89. 04 24
        call    _task_run                               ; 03CD _ E8, 00000000(rel)
        mov     dword [esp], 0                          ; 03D2 _ C7. 04 24, 00000000
        call    _launch_console                         ; 03D9 _ E8, 000005C5
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
        call    _launch_console                         ; 04DD _ E8, 000004C1
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
        call    _close_console                          ; 054C _ E8, 0000259F
        jmp     ?_018                                   ; 0551 _ E9, 00000448

?_004:  mov     eax, dword [ebp-34H]                    ; 0556 _ 8B. 45, CC
        mov     dword [esp], eax                        ; 0559 _ 89. 04 24
        call    _transferScanCode                       ; 055C _ E8, 00000000(rel)
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
        call    _set_cursor                             ; 0656 _ E8, 00000000(rel)
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
        call    _transferScanCode                       ; 075A _ E8, 00000000(rel)
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
        call    _set_cursor                             ; 079D _ E8, 00000000(rel)
        mov     eax, dword [ebp-34H]                    ; 07A2 _ 8B. 45, CC
        mov     dword [esp], eax                        ; 07A5 _ 89. 04 24
        call    _transferScanCode                       ; 07A8 _ E8, 00000000(rel)
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
        call    _set_cursor                             ; 0824 _ E8, 00000000(rel)
        jmp     ?_014                                   ; 0829 _ E9, 00000083

?_012:  mov     eax, dword [ebp-34H]                    ; 082E _ 8B. 45, CC
        mov     dword [esp], eax                        ; 0831 _ 89. 04 24
        call    _isSpecialKey                           ; 0834 _ E8, 00000000(rel)
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
        mov     eax, dword [_task_a.2388]               ; 0871 _ A1, 00000284(d)
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
        call    _set_cursor                             ; 0966 _ E8, 00000000(rel)
        jmp     ?_001                                   ; 096B _ E9, FFFFFAF6

?_017:  mov     edx, dword [_shtMsgBox]                 ; 0970 _ 8B. 15, 00000260(d)
        mov     eax, dword [_shtctl]                    ; 0976 _ A1, 00000264(d)
        mov     dword [esp+10H], 7                      ; 097B _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 28                     ; 0983 _ C7. 44 24, 0C, 0000001C
        mov     ecx, dword [ebp-0CH]                    ; 098B _ 8B. 4D, F4
        mov     dword [esp+8H], ecx                     ; 098E _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 0992 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0996 _ 89. 04 24
        call    _set_cursor                             ; 0999 _ E8, 00000000(rel)
?_018:  jmp     ?_001                                   ; 099E _ E9, FFFFFAC3

_launch_console:; Function begin
        push    ebp                                     ; 09A3 _ 55
        mov     ebp, esp                                ; 09A4 _ 89. E5
        push    ebx                                     ; 09A6 _ 53
        sub     esp, 164                                ; 09A7 _ 81. EC, 000000A4
        mov     dword [ebp-0CH], 0                      ; 09AD _ C7. 45, F4, 00000000
        mov     eax, dword [_shtctl]                    ; 09B4 _ A1, 00000264(d)
        mov     dword [esp], eax                        ; 09B9 _ 89. 04 24
        call    _sheet_alloc                            ; 09BC _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 09C1 _ 89. 45, F4
        mov     eax, dword [_memman]                    ; 09C4 _ A1, 00000000(d)
        mov     dword [esp+4H], 42240                   ; 09C9 _ C7. 44 24, 04, 0000A500
        mov     dword [esp], eax                        ; 09D1 _ 89. 04 24
        call    _memman_alloc_4k                        ; 09D4 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 09D9 _ 89. 45, F0
        mov     dword [esp+10H], 99                     ; 09DC _ C7. 44 24, 10, 00000063
        mov     dword [esp+0CH], 165                    ; 09E4 _ C7. 44 24, 0C, 000000A5
        mov     dword [esp+8H], 256                     ; 09EC _ C7. 44 24, 08, 00000100
        mov     eax, dword [ebp-10H]                    ; 09F4 _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 09F7 _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 09FB _ 8B. 45, F4
        mov     dword [esp], eax                        ; 09FE _ 89. 04 24
        call    _sheet_setbuf                           ; 0A01 _ E8, 00000000(rel)
        cmp     dword [ebp+8H], 0                       ; 0A06 _ 83. 7D, 08, 00
        jle     ?_019                                   ; 0A0A _ 7E, 26
        mov     eax, dword [_shtctl]                    ; 0A0C _ A1, 00000264(d)
        mov     dword [esp+0CH], 1                      ; 0A11 _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], ?_412                   ; 0A19 _ C7. 44 24, 08, 0000000F(d)
        mov     edx, dword [ebp-0CH]                    ; 0A21 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 0A24 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0A28 _ 89. 04 24
        call    _make_window8                           ; 0A2B _ E8, 00000000(rel)
        jmp     ?_020                                   ; 0A30 _ EB, 24

?_019:  mov     eax, dword [_shtctl]                    ; 0A32 _ A1, 00000264(d)
        mov     dword [esp+0CH], 0                      ; 0A37 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], ?_412                   ; 0A3F _ C7. 44 24, 08, 0000000F(d)
        mov     edx, dword [ebp-0CH]                    ; 0A47 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 0A4A _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0A4E _ 89. 04 24
        call    _make_window8                           ; 0A51 _ E8, 00000000(rel)
?_020:  mov     eax, dword [ebp-0CH]                    ; 0A56 _ 8B. 45, F4
        mov     ecx, dword [eax+8H]                     ; 0A59 _ 8B. 48, 08
        mov     eax, dword [ebp-0CH]                    ; 0A5C _ 8B. 45, F4
        mov     edx, dword [eax+4H]                     ; 0A5F _ 8B. 50, 04
        mov     eax, dword [_shtctl]                    ; 0A62 _ A1, 00000264(d)
        mov     dword [esp+14H], ecx                    ; 0A67 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 0A6B _ 89. 54 24, 10
        mov     dword [esp+0CH], 0                      ; 0A6F _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 0A77 _ C7. 44 24, 08, 00000000
        mov     edx, dword [ebp-0CH]                    ; 0A7F _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 0A82 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0A86 _ 89. 04 24
        call    _sheet_refresh                          ; 0A89 _ E8, 00000000(rel)
        mov     dword [esp+14H], 0                      ; 0A8E _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], 128                    ; 0A96 _ C7. 44 24, 10, 00000080
        mov     dword [esp+0CH], 240                    ; 0A9E _ C7. 44 24, 0C, 000000F0
        mov     dword [esp+8H], 28                      ; 0AA6 _ C7. 44 24, 08, 0000001C
        mov     dword [esp+4H], 8                       ; 0AAE _ C7. 44 24, 04, 00000008
        mov     eax, dword [ebp-0CH]                    ; 0AB6 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 0AB9 _ 89. 04 24
        call    _make_textbox8                          ; 0ABC _ E8, 00000000(rel)
        call    _task_alloc                             ; 0AC1 _ E8, 00000000(rel)
        mov     dword [ebp-14H], eax                    ; 0AC6 _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 0AC9 _ 8B. 45, EC
        mov     edx, dword [ebp-0CH]                    ; 0ACC _ 8B. 55, F4
        mov     dword [eax+0B4H], edx                   ; 0ACF _ 89. 90, 000000B4
        mov     eax, dword [ebp-0CH]                    ; 0AD5 _ 8B. 45, F4
        mov     edx, dword [ebp-14H]                    ; 0AD8 _ 8B. 55, EC
        mov     dword [eax+20H], edx                    ; 0ADB _ 89. 50, 20
        mov     eax, dword [_current_console_task]      ; 0ADE _ A1, 00000278(d)
        test    eax, eax                                ; 0AE3 _ 85. C0
        jz      ?_021                                   ; 0AE5 _ 74, 7C
        mov     eax, dword [_current_console_task]      ; 0AE7 _ A1, 00000278(d)
        mov     edx, dword [eax+0B4H]                   ; 0AEC _ 8B. 90, 000000B4
        mov     eax, dword [_shtctl]                    ; 0AF2 _ A1, 00000264(d)
        mov     dword [esp+0CH], 0                      ; 0AF7 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], ?_412                   ; 0AFF _ C7. 44 24, 08, 0000000F(d)
        mov     dword [esp+4H], edx                     ; 0B07 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0B0B _ 89. 04 24
        call    _make_wtitle8                           ; 0B0E _ E8, 00000000(rel)
        mov     eax, dword [_current_console_task]      ; 0B13 _ A1, 00000278(d)
        mov     eax, dword [eax+0B4H]                   ; 0B18 _ 8B. 80, 000000B4
        mov     ebx, dword [eax+8H]                     ; 0B1E _ 8B. 58, 08
        mov     eax, dword [_current_console_task]      ; 0B21 _ A1, 00000278(d)
        mov     eax, dword [eax+0B4H]                   ; 0B26 _ 8B. 80, 000000B4
        mov     ecx, dword [eax+4H]                     ; 0B2C _ 8B. 48, 04
        mov     eax, dword [_current_console_task]      ; 0B2F _ A1, 00000278(d)
        mov     edx, dword [eax+0B4H]                   ; 0B34 _ 8B. 90, 000000B4
        mov     eax, dword [_shtctl]                    ; 0B3A _ A1, 00000264(d)
        mov     dword [esp+14H], ebx                    ; 0B3F _ 89. 5C 24, 14
        mov     dword [esp+10H], ecx                    ; 0B43 _ 89. 4C 24, 10
        mov     dword [esp+0CH], 0                      ; 0B47 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 0B4F _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 0B57 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0B5B _ 89. 04 24
        call    _sheet_refresh                          ; 0B5E _ E8, 00000000(rel)
?_021:  mov     eax, dword [ebp-14H]                    ; 0B63 _ 8B. 45, EC
        mov     dword [_current_console_task], eax      ; 0B66 _ A3, 00000278(d)
        call    _get_addr_code32                        ; 0B6B _ E8, 00000000(rel)
        mov     dword [ebp-18H], eax                    ; 0B70 _ 89. 45, E8
        mov     eax, dword [ebp-18H]                    ; 0B73 _ 8B. 45, E8
        neg     eax                                     ; 0B76 _ F7. D8
        add     eax, _console_task                      ; 0B78 _ 05, 00001897(d)
        mov     edx, eax                                ; 0B7D _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 0B7F _ 8B. 45, EC
        mov     dword [eax+4CH], edx                    ; 0B82 _ 89. 50, 4C
        mov     eax, dword [ebp-14H]                    ; 0B85 _ 8B. 45, EC
        mov     dword [eax+74H], 0                      ; 0B88 _ C7. 40, 74, 00000000
        mov     eax, dword [ebp-14H]                    ; 0B8F _ 8B. 45, EC
        mov     dword [eax+78H], 8                      ; 0B92 _ C7. 40, 78, 00000008
        mov     eax, dword [ebp-14H]                    ; 0B99 _ 8B. 45, EC
        mov     dword [eax+7CH], 32                     ; 0B9C _ C7. 40, 7C, 00000020
        mov     eax, dword [ebp-14H]                    ; 0BA3 _ 8B. 45, EC
        mov     dword [eax+80H], 24                     ; 0BA6 _ C7. 80, 00000080, 00000018
        mov     eax, dword [ebp-14H]                    ; 0BB0 _ 8B. 45, EC
        mov     dword [eax+84H], 0                      ; 0BB3 _ C7. 80, 00000084, 00000000
        mov     eax, dword [ebp-14H]                    ; 0BBD _ 8B. 45, EC
        mov     dword [eax+88H], 16                     ; 0BC0 _ C7. 80, 00000088, 00000010
        mov     eax, dword [_memman]                    ; 0BCA _ A1, 00000000(d)
        mov     dword [esp+4H], 65536                   ; 0BCF _ C7. 44 24, 04, 00010000
        mov     dword [esp], eax                        ; 0BD7 _ 89. 04 24
        call    _memman_alloc_4k                        ; 0BDA _ E8, 00000000(rel)
        mov     edx, eax                                ; 0BDF _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 0BE1 _ 8B. 45, EC
        mov     dword [eax+0B8H], edx                   ; 0BE4 _ 89. 90, 000000B8
        mov     eax, dword [ebp-14H]                    ; 0BEA _ 8B. 45, EC
        mov     eax, dword [eax+0B8H]                   ; 0BED _ 8B. 80, 000000B8
        lea     edx, [eax+0FFF4H]                       ; 0BF3 _ 8D. 90, 0000FFF4
        mov     eax, dword [ebp-14H]                    ; 0BF9 _ 8B. 45, EC
        mov     dword [eax+64H], edx                    ; 0BFC _ 89. 50, 64
        mov     eax, dword [ebp-14H]                    ; 0BFF _ 8B. 45, EC
        mov     eax, dword [eax+64H]                    ; 0C02 _ 8B. 40, 64
        add     eax, 4                                  ; 0C05 _ 83. C0, 04
        mov     edx, eax                                ; 0C08 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 0C0A _ 8B. 45, F4
        mov     dword [edx], eax                        ; 0C0D _ 89. 02
        mov     eax, dword [_memman]                    ; 0C0F _ A1, 00000000(d)
        mov     dword [esp], eax                        ; 0C14 _ 89. 04 24
        call    _memman_total                           ; 0C17 _ E8, 00000000(rel)
        mov     edx, eax                                ; 0C1C _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 0C1E _ 8B. 45, EC
        mov     eax, dword [eax+64H]                    ; 0C21 _ 8B. 40, 64
        add     eax, 8                                  ; 0C24 _ 83. C0, 08
        mov     dword [eax], edx                        ; 0C27 _ 89. 10
        mov     eax, dword [_memman]                    ; 0C29 _ A1, 00000000(d)
        mov     dword [esp+4H], 128                     ; 0C2E _ C7. 44 24, 04, 00000080
        mov     dword [esp], eax                        ; 0C36 _ 89. 04 24
        call    _memman_alloc                           ; 0C39 _ E8, 00000000(rel)
        mov     dword [ebp-1CH], eax                    ; 0C3E _ 89. 45, E4
        mov     eax, dword [ebp-14H]                    ; 0C41 _ 8B. 45, EC
        add     eax, 16                                 ; 0C44 _ 83. C0, 10
        mov     edx, dword [ebp-14H]                    ; 0C47 _ 8B. 55, EC
        mov     dword [esp+0CH], edx                    ; 0C4A _ 89. 54 24, 0C
        mov     edx, dword [ebp-1CH]                    ; 0C4E _ 8B. 55, E4
        mov     dword [esp+8H], edx                     ; 0C51 _ 89. 54 24, 08
        mov     dword [esp+4H], 128                     ; 0C55 _ C7. 44 24, 04, 00000080
        mov     dword [esp], eax                        ; 0C5D _ 89. 04 24
        call    _fifo8_init                             ; 0C60 _ E8, 00000000(rel)
        mov     dword [ebp+8H], 0                       ; 0C65 _ C7. 45, 08, 00000000
        jmp     ?_023                                   ; 0C6C _ EB, 1E

?_022:  mov     edx, dword [ebp+8H]                     ; 0C6E _ 8B. 55, 08
        mov     eax, edx                                ; 0C71 _ 89. D0
        add     eax, eax                                ; 0C73 _ 01. C0
        add     eax, edx                                ; 0C75 _ 01. D0
        shl     eax, 2                                  ; 0C77 _ C1. E0, 02
        lea     ebx, [ebp-8H]                           ; 0C7A _ 8D. 5D, F8
        add     eax, ebx                                ; 0C7D _ 01. D8
        sub     eax, 116                                ; 0C7F _ 83. E8, 74
        mov     dword [eax], 0                          ; 0C82 _ C7. 00, 00000000
        add     dword [ebp+8H], 1                       ; 0C88 _ 83. 45, 08, 01
?_023:  cmp     dword [ebp+8H], 7                       ; 0C8C _ 83. 7D, 08, 07
        jle     ?_022                                   ; 0C90 _ 7E, DC
        mov     edx, dword [ebp-14H]                    ; 0C92 _ 8B. 55, EC
        lea     eax, [ebp-7CH]                          ; 0C95 _ 8D. 45, 84
        mov     dword [edx+0CCH], eax                   ; 0C98 _ 89. 82, 000000CC
        mov     dword [esp+8H], 5                       ; 0C9E _ C7. 44 24, 08, 00000005
        mov     dword [esp+4H], 1                       ; 0CA6 _ C7. 44 24, 04, 00000001
        mov     eax, dword [ebp-14H]                    ; 0CAE _ 8B. 45, EC
        mov     dword [esp], eax                        ; 0CB1 _ 89. 04 24
        call    _task_run                               ; 0CB4 _ E8, 00000000(rel)
        cmp     dword [ebp+8H], 0                       ; 0CB9 _ 83. 7D, 08, 00
        jnz     ?_024                                   ; 0CBD _ 75, 0A
        mov     eax, dword [ebp-14H]                    ; 0CBF _ 8B. 45, EC
        mov     eax, dword [eax]                        ; 0CC2 _ 8B. 00
        mov     dword [_first_task_cons_selector], eax  ; 0CC4 _ A3, 00000008(d)
?_024:  mov     eax, dword [ebp-0CH]                    ; 0CC9 _ 8B. 45, F4
        add     esp, 164                                ; 0CCC _ 81. C4, 000000A4
        pop     ebx                                     ; 0CD2 _ 5B
        pop     ebp                                     ; 0CD3 _ 5D
        ret                                             ; 0CD4 _ C3
; _launch_console End of function

_kill_process:; Function begin
        push    ebp                                     ; 0CD5 _ 55
        mov     ebp, esp                                ; 0CD6 _ 89. E5
        sub     esp, 40                                 ; 0CD8 _ 83. EC, 28
        call    _task_now                               ; 0CDB _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 0CE0 _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 0CE3 _ 8B. 45, F4
        mov     edx, dword [eax+94H]                    ; 0CE6 _ 8B. 90, 00000094
        mov     eax, dword [ebp-0CH]                    ; 0CEC _ 8B. 45, F4
        mov     eax, dword [eax+9CH]                    ; 0CEF _ 8B. 80, 0000009C
        mov     dword [esp+4H], edx                     ; 0CF5 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0CF9 _ 89. 04 24
        call    _cons_newline                           ; 0CFC _ E8, 00001C20
        mov     eax, dword [ebp-0CH]                    ; 0D01 _ 8B. 45, F4
        mov     eax, dword [eax+9CH]                    ; 0D04 _ 8B. 80, 0000009C
        lea     edx, [eax+10H]                          ; 0D0A _ 8D. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 0D0D _ 8B. 45, F4
        mov     dword [eax+9CH], edx                    ; 0D10 _ 89. 90, 0000009C
        mov     eax, dword [ebp-0CH]                    ; 0D16 _ 8B. 45, F4
        add     eax, 48                                 ; 0D19 _ 83. C0, 30
        mov     dword [esp], eax                        ; 0D1C _ 89. 04 24
        call    _asm_end_app                            ; 0D1F _ E8, 00000000(rel)
        nop                                             ; 0D24 _ 90
        leave                                           ; 0D25 _ C9
        ret                                             ; 0D26 _ C3
; _kill_process End of function

_cmd_dir:; Function begin
        push    ebp                                     ; 0D27 _ 55
        mov     ebp, esp                                ; 0D28 _ 89. E5
        push    ebx                                     ; 0D2A _ 53
        sub     esp, 68                                 ; 0D2B _ 83. EC, 44
        call    _task_now                               ; 0D2E _ E8, 00000000(rel)
        mov     dword [ebp-18H], eax                    ; 0D33 _ 89. 45, E8
        mov     dword [ebp-0CH], 88064                  ; 0D36 _ C7. 45, F4, 00015800
        mov     eax, dword [_memman]                    ; 0D3D _ A1, 00000000(d)
        mov     dword [esp+4H], 13                      ; 0D42 _ C7. 44 24, 04, 0000000D
        mov     dword [esp], eax                        ; 0D4A _ 89. 04 24
        call    _memman_alloc                           ; 0D4D _ E8, 00000000(rel)
        mov     dword [ebp-1CH], eax                    ; 0D52 _ 89. 45, E4
        mov     eax, dword [ebp-1CH]                    ; 0D55 _ 8B. 45, E4
        add     eax, 12                                 ; 0D58 _ 83. C0, 0C
        mov     byte [eax], 0                           ; 0D5B _ C6. 00, 00
        jmp     ?_032                                   ; 0D5E _ E9, 0000014E

?_025:  mov     dword [ebp-10H], 0                      ; 0D63 _ C7. 45, F0, 00000000
        jmp     ?_027                                   ; 0D6A _ EB, 2A

?_026:  mov     edx, dword [ebp-0CH]                    ; 0D6C _ 8B. 55, F4
        mov     eax, dword [ebp-10H]                    ; 0D6F _ 8B. 45, F0
        add     eax, edx                                ; 0D72 _ 01. D0
        movzx   eax, byte [eax]                         ; 0D74 _ 0F B6. 00
        test    al, al                                  ; 0D77 _ 84. C0
        jz      ?_028                                   ; 0D79 _ 74, 23
        mov     edx, dword [ebp-0CH]                    ; 0D7B _ 8B. 55, F4
        mov     eax, dword [ebp-10H]                    ; 0D7E _ 8B. 45, F0
        add     eax, edx                                ; 0D81 _ 01. D0
        movzx   ecx, byte [eax]                         ; 0D83 _ 0F B6. 08
        mov     edx, dword [ebp-10H]                    ; 0D86 _ 8B. 55, F0
        mov     eax, dword [ebp-1CH]                    ; 0D89 _ 8B. 45, E4
        add     eax, edx                                ; 0D8C _ 01. D0
        mov     edx, ecx                                ; 0D8E _ 89. CA
        mov     byte [eax], dl                          ; 0D90 _ 88. 10
        add     dword [ebp-10H], 1                      ; 0D92 _ 83. 45, F0, 01
?_027:  cmp     dword [ebp-10H], 7                      ; 0D96 _ 83. 7D, F0, 07
        jle     ?_026                                   ; 0D9A _ 7E, D0
        jmp     ?_029                                   ; 0D9C _ EB, 01

?_028:  nop                                             ; 0D9E _ 90
?_029:  mov     dword [ebp-14H], 0                      ; 0D9F _ C7. 45, EC, 00000000
        mov     edx, dword [ebp-10H]                    ; 0DA6 _ 8B. 55, F0
        mov     eax, dword [ebp-1CH]                    ; 0DA9 _ 8B. 45, E4
        add     eax, edx                                ; 0DAC _ 01. D0
        mov     byte [eax], 46                          ; 0DAE _ C6. 00, 2E
        add     dword [ebp-10H], 1                      ; 0DB1 _ 83. 45, F0, 01
        mov     dword [ebp-14H], 0                      ; 0DB5 _ C7. 45, EC, 00000000
        jmp     ?_031                                   ; 0DBC _ EB, 22

?_030:  mov     edx, dword [ebp-0CH]                    ; 0DBE _ 8B. 55, F4
        mov     eax, dword [ebp-14H]                    ; 0DC1 _ 8B. 45, EC
        add     eax, edx                                ; 0DC4 _ 01. D0
        add     eax, 8                                  ; 0DC6 _ 83. C0, 08
        movzx   ecx, byte [eax]                         ; 0DC9 _ 0F B6. 08
        mov     edx, dword [ebp-10H]                    ; 0DCC _ 8B. 55, F0
        mov     eax, dword [ebp-1CH]                    ; 0DCF _ 8B. 45, E4
        add     eax, edx                                ; 0DD2 _ 01. D0
        mov     edx, ecx                                ; 0DD4 _ 89. CA
        mov     byte [eax], dl                          ; 0DD6 _ 88. 10
        add     dword [ebp-10H], 1                      ; 0DD8 _ 83. 45, F0, 01
        add     dword [ebp-14H], 1                      ; 0DDC _ 83. 45, EC, 01
?_031:  cmp     dword [ebp-14H], 2                      ; 0DE0 _ 83. 7D, EC, 02
        jle     ?_030                                   ; 0DE4 _ 7E, D8
        mov     edx, dword [ebp-10H]                    ; 0DE6 _ 8B. 55, F0
        mov     eax, dword [ebp-1CH]                    ; 0DE9 _ 8B. 45, E4
        add     eax, edx                                ; 0DEC _ 01. D0
        mov     byte [eax], 0                           ; 0DEE _ C6. 00, 00
        mov     eax, dword [ebp-18H]                    ; 0DF1 _ 8B. 45, E8
        mov     ecx, dword [eax+9CH]                    ; 0DF4 _ 8B. 88, 0000009C
        mov     eax, dword [ebp-18H]                    ; 0DFA _ 8B. 45, E8
        mov     edx, dword [eax+94H]                    ; 0DFD _ 8B. 90, 00000094
        mov     eax, dword [_shtctl]                    ; 0E03 _ A1, 00000264(d)
        mov     ebx, dword [ebp-1CH]                    ; 0E08 _ 8B. 5D, E4
        mov     dword [esp+14H], ebx                    ; 0E0B _ 89. 5C 24, 14
        mov     dword [esp+10H], 7                      ; 0E0F _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ecx                    ; 0E17 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 16                      ; 0E1B _ C7. 44 24, 08, 00000010
        mov     dword [esp+4H], edx                     ; 0E23 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0E27 _ 89. 04 24
        call    _showString                             ; 0E2A _ E8, 00000000(rel)
        mov     dword [ebp-20H], 136                    ; 0E2F _ C7. 45, E0, 00000088
        mov     eax, dword [ebp-0CH]                    ; 0E36 _ 8B. 45, F4
        mov     eax, dword [eax+1CH]                    ; 0E39 _ 8B. 40, 1C
        mov     dword [esp], eax                        ; 0E3C _ 89. 04 24
        call    _intToHexStr                            ; 0E3F _ E8, 00000000(rel)
        mov     dword [ebp-24H], eax                    ; 0E44 _ 89. 45, DC
        mov     eax, dword [ebp-18H]                    ; 0E47 _ 8B. 45, E8
        mov     ecx, dword [eax+9CH]                    ; 0E4A _ 8B. 88, 0000009C
        mov     eax, dword [ebp-18H]                    ; 0E50 _ 8B. 45, E8
        mov     edx, dword [eax+94H]                    ; 0E53 _ 8B. 90, 00000094
        mov     eax, dword [_shtctl]                    ; 0E59 _ A1, 00000264(d)
        mov     ebx, dword [ebp-24H]                    ; 0E5E _ 8B. 5D, DC
        mov     dword [esp+14H], ebx                    ; 0E61 _ 89. 5C 24, 14
        mov     dword [esp+10H], 7                      ; 0E65 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ecx                    ; 0E6D _ 89. 4C 24, 0C
        mov     ecx, dword [ebp-20H]                    ; 0E71 _ 8B. 4D, E0
        mov     dword [esp+8H], ecx                     ; 0E74 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 0E78 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0E7C _ 89. 04 24
        call    _showString                             ; 0E7F _ E8, 00000000(rel)
        mov     eax, dword [ebp-18H]                    ; 0E84 _ 8B. 45, E8
        mov     edx, dword [eax+94H]                    ; 0E87 _ 8B. 90, 00000094
        mov     eax, dword [ebp-18H]                    ; 0E8D _ 8B. 45, E8
        mov     eax, dword [eax+9CH]                    ; 0E90 _ 8B. 80, 0000009C
        mov     dword [esp+4H], edx                     ; 0E96 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0E9A _ 89. 04 24
        call    _cons_newline                           ; 0E9D _ E8, 00001A7F
        mov     edx, eax                                ; 0EA2 _ 89. C2
        mov     eax, dword [ebp-18H]                    ; 0EA4 _ 8B. 45, E8
        mov     dword [eax+9CH], edx                    ; 0EA7 _ 89. 90, 0000009C
        add     dword [ebp-0CH], 32                     ; 0EAD _ 83. 45, F4, 20
?_032:  mov     eax, dword [ebp-0CH]                    ; 0EB1 _ 8B. 45, F4
        movzx   eax, byte [eax]                         ; 0EB4 _ 0F B6. 00
        test    al, al                                  ; 0EB7 _ 84. C0
        jne     ?_025                                   ; 0EB9 _ 0F 85, FFFFFEA4
        mov     edx, dword [ebp-1CH]                    ; 0EBF _ 8B. 55, E4
        mov     eax, dword [_memman]                    ; 0EC2 _ A1, 00000000(d)
        mov     dword [esp+8H], 13                      ; 0EC7 _ C7. 44 24, 08, 0000000D
        mov     dword [esp+4H], edx                     ; 0ECF _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0ED3 _ 89. 04 24
        call    _memman_free                            ; 0ED6 _ E8, 00000000(rel)
        nop                                             ; 0EDB _ 90
        add     esp, 68                                 ; 0EDC _ 83. C4, 44
        pop     ebx                                     ; 0EDF _ 5B
        pop     ebp                                     ; 0EE0 _ 5D
        ret                                             ; 0EE1 _ C3
; _cmd_dir End of function

_cmd_type:; Function begin
        push    ebp                                     ; 0EE2 _ 55
        mov     ebp, esp                                ; 0EE3 _ 89. E5
        push    esi                                     ; 0EE5 _ 56
        push    ebx                                     ; 0EE6 _ 53
        sub     esp, 96                                 ; 0EE7 _ 83. EC, 60
        call    _task_now                               ; 0EEA _ E8, 00000000(rel)
        mov     dword [ebp-24H], eax                    ; 0EEF _ 89. 45, DC
        mov     eax, dword [ebp-24H]                    ; 0EF2 _ 8B. 45, DC
        mov     eax, dword [eax+94H]                    ; 0EF5 _ 8B. 80, 00000094
        test    eax, eax                                ; 0EFB _ 85. C0
        je      ?_053                                   ; 0EFD _ 0F 84, 0000038F
        mov     eax, dword [_memman]                    ; 0F03 _ A1, 00000000(d)
        mov     dword [esp+4H], 13                      ; 0F08 _ C7. 44 24, 04, 0000000D
        mov     dword [esp], eax                        ; 0F10 _ 89. 04 24
        call    _memman_alloc                           ; 0F13 _ E8, 00000000(rel)
        mov     dword [ebp-28H], eax                    ; 0F18 _ 89. 45, D8
        mov     eax, dword [ebp-28H]                    ; 0F1B _ 8B. 45, D8
        add     eax, 12                                 ; 0F1E _ 83. C0, 0C
        mov     byte [eax], 0                           ; 0F21 _ C6. 00, 00
        mov     dword [ebp-0CH], 0                      ; 0F24 _ C7. 45, F4, 00000000
        mov     dword [ebp-10H], 5                      ; 0F2B _ C7. 45, F0, 00000005
        mov     dword [ebp-10H], 5                      ; 0F32 _ C7. 45, F0, 00000005
        jmp     ?_034                                   ; 0F39 _ EB, 2C

?_033:  mov     edx, dword [ebp-10H]                    ; 0F3B _ 8B. 55, F0
        mov     eax, dword [ebp+8H]                     ; 0F3E _ 8B. 45, 08
        add     eax, edx                                ; 0F41 _ 01. D0
        movzx   eax, byte [eax]                         ; 0F43 _ 0F B6. 00
        test    al, al                                  ; 0F46 _ 84. C0
        jz      ?_035                                   ; 0F48 _ 74, 25
        mov     edx, dword [ebp-10H]                    ; 0F4A _ 8B. 55, F0
        mov     eax, dword [ebp+8H]                     ; 0F4D _ 8B. 45, 08
        add     eax, edx                                ; 0F50 _ 01. D0
        mov     ecx, dword [ebp-0CH]                    ; 0F52 _ 8B. 4D, F4
        mov     edx, dword [ebp-28H]                    ; 0F55 _ 8B. 55, D8
        add     edx, ecx                                ; 0F58 _ 01. CA
        movzx   eax, byte [eax]                         ; 0F5A _ 0F B6. 00
        mov     byte [edx], al                          ; 0F5D _ 88. 02
        add     dword [ebp-0CH], 1                      ; 0F5F _ 83. 45, F4, 01
        add     dword [ebp-10H], 1                      ; 0F63 _ 83. 45, F0, 01
?_034:  cmp     dword [ebp-10H], 16                     ; 0F67 _ 83. 7D, F0, 10
        jle     ?_033                                   ; 0F6B _ 7E, CE
        jmp     ?_036                                   ; 0F6D _ EB, 01

?_035:  nop                                             ; 0F6F _ 90
?_036:  mov     edx, dword [ebp-0CH]                    ; 0F70 _ 8B. 55, F4
        mov     eax, dword [ebp-28H]                    ; 0F73 _ 8B. 45, D8
        add     eax, edx                                ; 0F76 _ 01. D0
        mov     byte [eax], 0                           ; 0F78 _ C6. 00, 00
        mov     dword [ebp-14H], 88064                  ; 0F7B _ C7. 45, EC, 00015800
        jmp     ?_051                                   ; 0F82 _ E9, 000002A9

?_037:  mov     byte [ebp-31H], 0                       ; 0F87 _ C6. 45, CF, 00
        mov     dword [ebp-18H], 0                      ; 0F8B _ C7. 45, E8, 00000000
        jmp     ?_039                                   ; 0F92 _ EB, 2A

?_038:  mov     edx, dword [ebp-14H]                    ; 0F94 _ 8B. 55, EC
        mov     eax, dword [ebp-18H]                    ; 0F97 _ 8B. 45, E8
        add     eax, edx                                ; 0F9A _ 01. D0
        movzx   eax, byte [eax]                         ; 0F9C _ 0F B6. 00
        test    al, al                                  ; 0F9F _ 84. C0
        jz      ?_040                                   ; 0FA1 _ 74, 23
        mov     edx, dword [ebp-14H]                    ; 0FA3 _ 8B. 55, EC
        mov     eax, dword [ebp-18H]                    ; 0FA6 _ 8B. 45, E8
        add     eax, edx                                ; 0FA9 _ 01. D0
        movzx   eax, byte [eax]                         ; 0FAB _ 0F B6. 00
        mov     ecx, eax                                ; 0FAE _ 89. C1
        lea     eax, [ebp-3DH]                          ; 0FB0 _ 8D. 45, C3
        mov     edx, dword [ebp-18H]                    ; 0FB3 _ 8B. 55, E8
        add     eax, edx                                ; 0FB6 _ 01. D0
        mov     byte [eax], cl                          ; 0FB8 _ 88. 08
        add     dword [ebp-18H], 1                      ; 0FBA _ 83. 45, E8, 01
?_039:  cmp     dword [ebp-18H], 7                      ; 0FBE _ 83. 7D, E8, 07
        jle     ?_038                                   ; 0FC2 _ 7E, D0
        jmp     ?_041                                   ; 0FC4 _ EB, 01

?_040:  nop                                             ; 0FC6 _ 90
?_041:  mov     dword [ebp-1CH], 0                      ; 0FC7 _ C7. 45, E4, 00000000
        lea     eax, [ebp-3DH]                          ; 0FCE _ 8D. 45, C3
        mov     edx, dword [ebp-18H]                    ; 0FD1 _ 8B. 55, E8
        add     eax, edx                                ; 0FD4 _ 01. D0
        mov     byte [eax], 46                          ; 0FD6 _ C6. 00, 2E
        add     dword [ebp-18H], 1                      ; 0FD9 _ 83. 45, E8, 01
        mov     dword [ebp-1CH], 0                      ; 0FDD _ C7. 45, E4, 00000000
        jmp     ?_043                                   ; 0FE4 _ EB, 22

?_042:  mov     edx, dword [ebp-14H]                    ; 0FE6 _ 8B. 55, EC
        mov     eax, dword [ebp-1CH]                    ; 0FE9 _ 8B. 45, E4
        add     eax, edx                                ; 0FEC _ 01. D0
        add     eax, 8                                  ; 0FEE _ 83. C0, 08
        movzx   eax, byte [eax]                         ; 0FF1 _ 0F B6. 00
        mov     ecx, eax                                ; 0FF4 _ 89. C1
        lea     eax, [ebp-3DH]                          ; 0FF6 _ 8D. 45, C3
        mov     edx, dword [ebp-18H]                    ; 0FF9 _ 8B. 55, E8
        add     eax, edx                                ; 0FFC _ 01. D0
        mov     byte [eax], cl                          ; 0FFE _ 88. 08
        add     dword [ebp-18H], 1                      ; 1000 _ 83. 45, E8, 01
        add     dword [ebp-1CH], 1                      ; 1004 _ 83. 45, E4, 01
?_043:  cmp     dword [ebp-1CH], 2                      ; 1008 _ 83. 7D, E4, 02
        jle     ?_042                                   ; 100C _ 7E, D8
        lea     eax, [ebp-3DH]                          ; 100E _ 8D. 45, C3
        mov     dword [esp+4H], eax                     ; 1011 _ 89. 44 24, 04
        mov     eax, dword [ebp-28H]                    ; 1015 _ 8B. 45, D8
        mov     dword [esp], eax                        ; 1018 _ 89. 04 24
        call    _strcmp                                 ; 101B _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 1020 _ 83. F8, 01
        jne     ?_050                                   ; 1023 _ 0F 85, 00000203
        mov     dword [ebp-2CH], 97280                  ; 1029 _ C7. 45, D4, 00017C00
        mov     eax, dword [ebp-14H]                    ; 1030 _ 8B. 45, EC
        movzx   eax, word [eax+1AH]                     ; 1033 _ 0F B7. 40, 1A
        movzx   eax, ax                                 ; 1037 _ 0F B7. C0
        shl     eax, 9                                  ; 103A _ C1. E0, 09
        add     dword [ebp-2CH], eax                    ; 103D _ 01. 45, D4
        mov     eax, dword [ebp-14H]                    ; 1040 _ 8B. 45, EC
        mov     eax, dword [eax+1CH]                    ; 1043 _ 8B. 40, 1C
        mov     dword [ebp-30H], eax                    ; 1046 _ 89. 45, D0
        mov     dword [ebp-20H], 0                      ; 1049 _ C7. 45, E0, 00000000
        mov     eax, dword [ebp-24H]                    ; 1050 _ 8B. 45, DC
        mov     dword [eax+98H], 16                     ; 1053 _ C7. 80, 00000098, 00000010
        mov     dword [ebp-20H], 0                      ; 105D _ C7. 45, E0, 00000000
        jmp     ?_049                                   ; 1064 _ E9, 000001B4

?_044:  mov     edx, dword [ebp-20H]                    ; 1069 _ 8B. 55, E0
        mov     eax, dword [ebp-2CH]                    ; 106C _ 8B. 45, D4
        add     eax, edx                                ; 106F _ 01. D0
        movzx   eax, byte [eax]                         ; 1071 _ 0F B6. 00
        mov     byte [ebp-3FH], al                      ; 1074 _ 88. 45, C1
        mov     byte [ebp-3EH], 0                       ; 1077 _ C6. 45, C2, 00
        movzx   eax, byte [ebp-3FH]                     ; 107B _ 0F B6. 45, C1
        cmp     al, 9                                   ; 107F _ 3C, 09
        jne     ?_046                                   ; 1081 _ 0F 85, 000000A4
?_045:  mov     eax, dword [ebp-24H]                    ; 1087 _ 8B. 45, DC
        mov     ebx, dword [eax+9CH]                    ; 108A _ 8B. 98, 0000009C
        mov     eax, dword [ebp-24H]                    ; 1090 _ 8B. 45, DC
        mov     ecx, dword [eax+98H]                    ; 1093 _ 8B. 88, 00000098
        mov     eax, dword [ebp-24H]                    ; 1099 _ 8B. 45, DC
        mov     edx, dword [eax+94H]                    ; 109C _ 8B. 90, 00000094
        mov     eax, dword [_shtctl]                    ; 10A2 _ A1, 00000264(d)
        mov     dword [esp+14H], ?_413                  ; 10A7 _ C7. 44 24, 14, 00000017(d)
        mov     dword [esp+10H], 7                      ; 10AF _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ebx                    ; 10B7 _ 89. 5C 24, 0C
        mov     dword [esp+8H], ecx                     ; 10BB _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 10BF _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 10C3 _ 89. 04 24
        call    _showString                             ; 10C6 _ E8, 00000000(rel)
        mov     eax, dword [ebp-24H]                    ; 10CB _ 8B. 45, DC
        mov     eax, dword [eax+98H]                    ; 10CE _ 8B. 80, 00000098
        lea     edx, [eax+8H]                           ; 10D4 _ 8D. 50, 08
        mov     eax, dword [ebp-24H]                    ; 10D7 _ 8B. 45, DC
        mov     dword [eax+98H], edx                    ; 10DA _ 89. 90, 00000098
        mov     eax, dword [ebp-24H]                    ; 10E0 _ 8B. 45, DC
        mov     eax, dword [eax+98H]                    ; 10E3 _ 8B. 80, 00000098
        cmp     eax, 248                                ; 10E9 _ 3D, 000000F8
        jnz     ?_045                                   ; 10EE _ 75, 97
        mov     eax, dword [ebp-24H]                    ; 10F0 _ 8B. 45, DC
        mov     dword [eax+98H], 8                      ; 10F3 _ C7. 80, 00000098, 00000008
        mov     eax, dword [ebp-24H]                    ; 10FD _ 8B. 45, DC
        mov     edx, dword [eax+94H]                    ; 1100 _ 8B. 90, 00000094
        mov     eax, dword [ebp-24H]                    ; 1106 _ 8B. 45, DC
        mov     eax, dword [eax+9CH]                    ; 1109 _ 8B. 80, 0000009C
        mov     dword [esp+4H], edx                     ; 110F _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1113 _ 89. 04 24
        call    _cons_newline                           ; 1116 _ E8, 00001806
        mov     edx, eax                                ; 111B _ 89. C2
        mov     eax, dword [ebp-24H]                    ; 111D _ 8B. 45, DC
        mov     dword [eax+9CH], edx                    ; 1120 _ 89. 90, 0000009C
        jmp     ?_045                                   ; 1126 _ E9, FFFFFF5C

?_046:  movzx   eax, byte [ebp-3FH]                     ; 112B _ 0F B6. 45, C1
        cmp     al, 10                                  ; 112F _ 3C, 0A
        jnz     ?_047                                   ; 1131 _ 75, 3B
        mov     eax, dword [ebp-24H]                    ; 1133 _ 8B. 45, DC
        mov     dword [eax+98H], 8                      ; 1136 _ C7. 80, 00000098, 00000008
        mov     eax, dword [ebp-24H]                    ; 1140 _ 8B. 45, DC
        mov     edx, dword [eax+94H]                    ; 1143 _ 8B. 90, 00000094
        mov     eax, dword [ebp-24H]                    ; 1149 _ 8B. 45, DC
        mov     eax, dword [eax+9CH]                    ; 114C _ 8B. 80, 0000009C
        mov     dword [esp+4H], edx                     ; 1152 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1156 _ 89. 04 24
        call    _cons_newline                           ; 1159 _ E8, 000017C3
        mov     edx, eax                                ; 115E _ 89. C2
        mov     eax, dword [ebp-24H]                    ; 1160 _ 8B. 45, DC
        mov     dword [eax+9CH], edx                    ; 1163 _ 89. 90, 0000009C
        jmp     ?_048                                   ; 1169 _ E9, 000000AB

?_047:  movzx   eax, byte [ebp-3FH]                     ; 116E _ 0F B6. 45, C1
        cmp     al, 13                                  ; 1172 _ 3C, 0D
        je      ?_048                                   ; 1174 _ 0F 84, 0000009F
        mov     eax, dword [ebp-24H]                    ; 117A _ 8B. 45, DC
        mov     esi, dword [eax+9CH]                    ; 117D _ 8B. B0, 0000009C
        mov     eax, dword [ebp-24H]                    ; 1183 _ 8B. 45, DC
        mov     ebx, dword [eax+98H]                    ; 1186 _ 8B. 98, 00000098
        mov     eax, dword [ebp-24H]                    ; 118C _ 8B. 45, DC
        mov     ecx, dword [eax+94H]                    ; 118F _ 8B. 88, 00000094
        mov     edx, dword [_shtctl]                    ; 1195 _ 8B. 15, 00000264(d)
        lea     eax, [ebp-3FH]                          ; 119B _ 8D. 45, C1
        mov     dword [esp+14H], eax                    ; 119E _ 89. 44 24, 14
        mov     dword [esp+10H], 7                      ; 11A2 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], esi                    ; 11AA _ 89. 74 24, 0C
        mov     dword [esp+8H], ebx                     ; 11AE _ 89. 5C 24, 08
        mov     dword [esp+4H], ecx                     ; 11B2 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 11B6 _ 89. 14 24
        call    _showString                             ; 11B9 _ E8, 00000000(rel)
        mov     eax, dword [ebp-24H]                    ; 11BE _ 8B. 45, DC
        mov     eax, dword [eax+98H]                    ; 11C1 _ 8B. 80, 00000098
        lea     edx, [eax+8H]                           ; 11C7 _ 8D. 50, 08
        mov     eax, dword [ebp-24H]                    ; 11CA _ 8B. 45, DC
        mov     dword [eax+98H], edx                    ; 11CD _ 89. 90, 00000098
        mov     eax, dword [ebp-24H]                    ; 11D3 _ 8B. 45, DC
        mov     eax, dword [eax+98H]                    ; 11D6 _ 8B. 80, 00000098
        cmp     eax, 248                                ; 11DC _ 3D, 000000F8
        jnz     ?_048                                   ; 11E1 _ 75, 36
        mov     eax, dword [ebp-24H]                    ; 11E3 _ 8B. 45, DC
        mov     dword [eax+98H], 16                     ; 11E6 _ C7. 80, 00000098, 00000010
        mov     eax, dword [ebp-24H]                    ; 11F0 _ 8B. 45, DC
        mov     edx, dword [eax+94H]                    ; 11F3 _ 8B. 90, 00000094
        mov     eax, dword [ebp-24H]                    ; 11F9 _ 8B. 45, DC
        mov     eax, dword [eax+9CH]                    ; 11FC _ 8B. 80, 0000009C
        mov     dword [esp+4H], edx                     ; 1202 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1206 _ 89. 04 24
        call    _cons_newline                           ; 1209 _ E8, 00001713
        mov     edx, eax                                ; 120E _ 89. C2
        mov     eax, dword [ebp-24H]                    ; 1210 _ 8B. 45, DC
        mov     dword [eax+9CH], edx                    ; 1213 _ 89. 90, 0000009C
?_048:  add     dword [ebp-20H], 1                      ; 1219 _ 83. 45, E0, 01
?_049:  mov     eax, dword [ebp-20H]                    ; 121D _ 8B. 45, E0
        cmp     eax, dword [ebp-30H]                    ; 1220 _ 3B. 45, D0
        jl      ?_044                                   ; 1223 _ 0F 8C, FFFFFE40
        nop                                             ; 1229 _ 90
        jmp     ?_052                                   ; 122A _ EB, 12

?_050:  add     dword [ebp-14H], 32                     ; 122C _ 83. 45, EC, 20
?_051:  mov     eax, dword [ebp-14H]                    ; 1230 _ 8B. 45, EC
        movzx   eax, byte [eax]                         ; 1233 _ 0F B6. 00
        test    al, al                                  ; 1236 _ 84. C0
        jne     ?_037                                   ; 1238 _ 0F 85, FFFFFD49
?_052:  mov     eax, dword [ebp-24H]                    ; 123E _ 8B. 45, DC
        mov     edx, dword [eax+94H]                    ; 1241 _ 8B. 90, 00000094
        mov     eax, dword [ebp-24H]                    ; 1247 _ 8B. 45, DC
        mov     eax, dword [eax+9CH]                    ; 124A _ 8B. 80, 0000009C
        mov     dword [esp+4H], edx                     ; 1250 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1254 _ 89. 04 24
        call    _cons_newline                           ; 1257 _ E8, 000016C5
        mov     edx, eax                                ; 125C _ 89. C2
        mov     eax, dword [ebp-24H]                    ; 125E _ 8B. 45, DC
        mov     dword [eax+9CH], edx                    ; 1261 _ 89. 90, 0000009C
        mov     edx, dword [ebp-28H]                    ; 1267 _ 8B. 55, D8
        mov     eax, dword [_memman]                    ; 126A _ A1, 00000000(d)
        mov     dword [esp+8H], 13                      ; 126F _ C7. 44 24, 08, 0000000D
        mov     dword [esp+4H], edx                     ; 1277 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 127B _ 89. 04 24
        call    _memman_free                            ; 127E _ E8, 00000000(rel)
        mov     eax, dword [ebp-24H]                    ; 1283 _ 8B. 45, DC
        mov     dword [eax+98H], 16                     ; 1286 _ C7. 80, 00000098, 00000010
        jmp     ?_054                                   ; 1290 _ EB, 01

?_053:  nop                                             ; 1292 _ 90
?_054:  add     esp, 96                                 ; 1293 _ 83. C4, 60
        pop     ebx                                     ; 1296 _ 5B
        pop     esi                                     ; 1297 _ 5E
        pop     ebp                                     ; 1298 _ 5D
        ret                                             ; 1299 _ C3
; _cmd_type End of function

_cmd_mem:; Function begin
        push    ebp                                     ; 129A _ 55
        mov     ebp, esp                                ; 129B _ 89. E5
        push    ebx                                     ; 129D _ 53
        sub     esp, 52                                 ; 129E _ 83. EC, 34
        call    _task_now                               ; 12A1 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 12A6 _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 12A9 _ 8B. 45, F4
        mov     eax, dword [eax+94H]                    ; 12AC _ 8B. 80, 00000094
        test    eax, eax                                ; 12B2 _ 85. C0
        je      ?_055                                   ; 12B4 _ 0F 84, 00000103
        mov     eax, dword [ebp+8H]                     ; 12BA _ 8B. 45, 08
        lea     edx, [eax+3FFH]                         ; 12BD _ 8D. 90, 000003FF
        test    eax, eax                                ; 12C3 _ 85. C0
        cmovs   eax, edx                                ; 12C5 _ 0F 48. C2
        sar     eax, 10                                 ; 12C8 _ C1. F8, 0A
        mov     dword [esp], eax                        ; 12CB _ 89. 04 24
        call    _intToHexStr                            ; 12CE _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 12D3 _ 89. 45, F0
        mov     eax, dword [ebp-0CH]                    ; 12D6 _ 8B. 45, F4
        mov     ecx, dword [eax+9CH]                    ; 12D9 _ 8B. 88, 0000009C
        mov     eax, dword [ebp-0CH]                    ; 12DF _ 8B. 45, F4
        mov     edx, dword [eax+94H]                    ; 12E2 _ 8B. 90, 00000094
        mov     eax, dword [_shtctl]                    ; 12E8 _ A1, 00000264(d)
        mov     dword [esp+14H], ?_414                  ; 12ED _ C7. 44 24, 14, 00000019(d)
        mov     dword [esp+10H], 7                      ; 12F5 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ecx                    ; 12FD _ 89. 4C 24, 0C
        mov     dword [esp+8H], 16                      ; 1301 _ C7. 44 24, 08, 00000010
        mov     dword [esp+4H], edx                     ; 1309 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 130D _ 89. 04 24
        call    _showString                             ; 1310 _ E8, 00000000(rel)
        mov     eax, dword [ebp-0CH]                    ; 1315 _ 8B. 45, F4
        mov     ecx, dword [eax+9CH]                    ; 1318 _ 8B. 88, 0000009C
        mov     eax, dword [ebp-0CH]                    ; 131E _ 8B. 45, F4
        mov     edx, dword [eax+94H]                    ; 1321 _ 8B. 90, 00000094
        mov     eax, dword [_shtctl]                    ; 1327 _ A1, 00000264(d)
        mov     ebx, dword [ebp-10H]                    ; 132C _ 8B. 5D, F0
        mov     dword [esp+14H], ebx                    ; 132F _ 89. 5C 24, 14
        mov     dword [esp+10H], 7                      ; 1333 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ecx                    ; 133B _ 89. 4C 24, 0C
        mov     dword [esp+8H], 52                      ; 133F _ C7. 44 24, 08, 00000034
        mov     dword [esp+4H], edx                     ; 1347 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 134B _ 89. 04 24
        call    _showString                             ; 134E _ E8, 00000000(rel)
        mov     eax, dword [ebp-0CH]                    ; 1353 _ 8B. 45, F4
        mov     ecx, dword [eax+9CH]                    ; 1356 _ 8B. 88, 0000009C
        mov     eax, dword [ebp-0CH]                    ; 135C _ 8B. 45, F4
        mov     edx, dword [eax+94H]                    ; 135F _ 8B. 90, 00000094
        mov     eax, dword [_shtctl]                    ; 1365 _ A1, 00000264(d)
        mov     dword [esp+14H], ?_415                  ; 136A _ C7. 44 24, 14, 0000001F(d)
        mov     dword [esp+10H], 7                      ; 1372 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ecx                    ; 137A _ 89. 4C 24, 0C
        mov     dword [esp+8H], 126                     ; 137E _ C7. 44 24, 08, 0000007E
        mov     dword [esp+4H], edx                     ; 1386 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 138A _ 89. 04 24
        call    _showString                             ; 138D _ E8, 00000000(rel)
        mov     eax, dword [ebp-0CH]                    ; 1392 _ 8B. 45, F4
        mov     edx, dword [eax+94H]                    ; 1395 _ 8B. 90, 00000094
        mov     eax, dword [ebp-0CH]                    ; 139B _ 8B. 45, F4
        mov     eax, dword [eax+9CH]                    ; 139E _ 8B. 80, 0000009C
        mov     dword [esp+4H], edx                     ; 13A4 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 13A8 _ 89. 04 24
        call    _cons_newline                           ; 13AB _ E8, 00001571
        mov     edx, eax                                ; 13B0 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 13B2 _ 8B. 45, F4
        mov     dword [eax+9CH], edx                    ; 13B5 _ 89. 90, 0000009C
        jmp     ?_056                                   ; 13BB _ EB, 01

?_055:  nop                                             ; 13BD _ 90
?_056:  add     esp, 52                                 ; 13BE _ 83. C4, 34
        pop     ebx                                     ; 13C1 _ 5B
        pop     ebp                                     ; 13C2 _ 5D
        ret                                             ; 13C3 _ C3
; _cmd_mem End of function

_cmd_cls:; Function begin
        push    ebp                                     ; 13C4 _ 55
        mov     ebp, esp                                ; 13C5 _ 89. E5
        sub     esp, 56                                 ; 13C7 _ 83. EC, 38
        call    _task_now                               ; 13CA _ E8, 00000000(rel)
        mov     dword [ebp-14H], eax                    ; 13CF _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 13D2 _ 8B. 45, EC
        mov     eax, dword [eax+94H]                    ; 13D5 _ 8B. 80, 00000094
        test    eax, eax                                ; 13DB _ 85. C0
        je      ?_061                                   ; 13DD _ 0F 84, 000000E2
        mov     dword [ebp-0CH], 8                      ; 13E3 _ C7. 45, F4, 00000008
        mov     dword [ebp-10H], 28                     ; 13EA _ C7. 45, F0, 0000001C
        mov     dword [ebp-10H], 28                     ; 13F1 _ C7. 45, F0, 0000001C
        jmp     ?_060                                   ; 13F8 _ EB, 3F

?_057:  mov     dword [ebp-0CH], 8                      ; 13FA _ C7. 45, F4, 00000008
        jmp     ?_059                                   ; 1401 _ EB, 29

?_058:  mov     eax, dword [ebp-14H]                    ; 1403 _ 8B. 45, EC
        mov     eax, dword [eax+94H]                    ; 1406 _ 8B. 80, 00000094
        mov     edx, dword [eax]                        ; 140C _ 8B. 10
        mov     eax, dword [ebp-14H]                    ; 140E _ 8B. 45, EC
        mov     eax, dword [eax+94H]                    ; 1411 _ 8B. 80, 00000094
        mov     eax, dword [eax+4H]                     ; 1417 _ 8B. 40, 04
        imul    eax, dword [ebp-10H]                    ; 141A _ 0F AF. 45, F0
        mov     ecx, dword [ebp-0CH]                    ; 141E _ 8B. 4D, F4
        add     eax, ecx                                ; 1421 _ 01. C8
        add     eax, edx                                ; 1423 _ 01. D0
        mov     byte [eax], 0                           ; 1425 _ C6. 00, 00
        add     dword [ebp-0CH], 1                      ; 1428 _ 83. 45, F4, 01
?_059:  cmp     dword [ebp-0CH], 247                    ; 142C _ 81. 7D, F4, 000000F7
        jle     ?_058                                   ; 1433 _ 7E, CE
        add     dword [ebp-10H], 1                      ; 1435 _ 83. 45, F0, 01
?_060:  cmp     dword [ebp-10H], 155                    ; 1439 _ 81. 7D, F0, 0000009B
        jle     ?_057                                   ; 1440 _ 7E, B8
        mov     eax, dword [ebp-14H]                    ; 1442 _ 8B. 45, EC
        mov     edx, dword [eax+94H]                    ; 1445 _ 8B. 90, 00000094
        mov     eax, dword [_shtctl]                    ; 144B _ A1, 00000264(d)
        mov     dword [esp+14H], 156                    ; 1450 _ C7. 44 24, 14, 0000009C
        mov     dword [esp+10H], 248                    ; 1458 _ C7. 44 24, 10, 000000F8
        mov     dword [esp+0CH], 28                     ; 1460 _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 8                       ; 1468 _ C7. 44 24, 08, 00000008
        mov     dword [esp+4H], edx                     ; 1470 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1474 _ 89. 04 24
        call    _sheet_refresh                          ; 1477 _ E8, 00000000(rel)
        mov     eax, dword [ebp-14H]                    ; 147C _ 8B. 45, EC
        mov     dword [eax+9CH], 28                     ; 147F _ C7. 80, 0000009C, 0000001C
        mov     eax, dword [ebp-14H]                    ; 1489 _ 8B. 45, EC
        mov     edx, dword [eax+94H]                    ; 148C _ 8B. 90, 00000094
        mov     eax, dword [_shtctl]                    ; 1492 _ A1, 00000264(d)
        mov     dword [esp+14H], ?_416                  ; 1497 _ C7. 44 24, 14, 00000023(d)
        mov     dword [esp+10H], 7                      ; 149F _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 28                     ; 14A7 _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 8                       ; 14AF _ C7. 44 24, 08, 00000008
        mov     dword [esp+4H], edx                     ; 14B7 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 14BB _ 89. 04 24
        call    _showString                             ; 14BE _ E8, 00000000(rel)
        jmp     ?_062                                   ; 14C3 _ EB, 01

?_061:  nop                                             ; 14C5 _ 90
?_062:  leave                                           ; 14C6 _ C9
        ret                                             ; 14C7 _ C3
; _cmd_cls End of function

_cmd_execute_program:; Function begin
        push    ebp                                     ; 14C8 _ 55
        mov     ebp, esp                                ; 14C9 _ 89. E5
        push    ebx                                     ; 14CB _ 53
        sub     esp, 68                                 ; 14CC _ 83. EC, 44
        call    _io_cli                                 ; 14CF _ E8, 00000000(rel)
        mov     eax, dword [_memman]                    ; 14D4 _ A1, 00000000(d)
        mov     dword [esp+4H], 16                      ; 14D9 _ C7. 44 24, 04, 00000010
        mov     dword [esp], eax                        ; 14E1 _ 89. 04 24
        call    _memman_alloc                           ; 14E4 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 14E9 _ 89. 45, F0
        call    _task_now                               ; 14EC _ E8, 00000000(rel)
        mov     dword [ebp-14H], eax                    ; 14F1 _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 14F4 _ 8B. 45, EC
        mov     edx, dword [ebp-10H]                    ; 14F7 _ 8B. 55, F0
        mov     dword [eax+0B0H], edx                   ; 14FA _ 89. 90, 000000B0
        mov     eax, dword [ebp-10H]                    ; 1500 _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 1503 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1507 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 150A _ 89. 04 24
        call    _file_loadfile                          ; 150D _ E8, 00000000(rel)
        call    _get_addr_gdt                           ; 1512 _ E8, 00000000(rel)
        mov     dword [ebp-18H], eax                    ; 1517 _ 89. 45, E8
        mov     eax, dword [ebp-14H]                    ; 151A _ 8B. 45, EC
        mov     edx, dword [eax]                        ; 151D _ 8B. 10
        mov     eax, dword [_first_task_cons_selector]  ; 151F _ A1, 00000008(d)
        sub     edx, eax                                ; 1524 _ 29. C2
        mov     eax, edx                                ; 1526 _ 89. D0
        lea     edx, [eax+7H]                           ; 1528 _ 8D. 50, 07
        test    eax, eax                                ; 152B _ 85. C0
        cmovs   eax, edx                                ; 152D _ 0F 48. C2
        sar     eax, 3                                  ; 1530 _ C1. F8, 03
        add     eax, 21                                 ; 1533 _ 83. C0, 15
        mov     dword [ebp-1CH], eax                    ; 1536 _ 89. 45, E4
        mov     eax, dword [ebp-14H]                    ; 1539 _ 8B. 45, EC
        mov     edx, dword [eax]                        ; 153C _ 8B. 10
        mov     eax, dword [_first_task_cons_selector]  ; 153E _ A1, 00000008(d)
        sub     edx, eax                                ; 1543 _ 29. C2
        mov     eax, edx                                ; 1545 _ 89. D0
        lea     edx, [eax+7H]                           ; 1547 _ 8D. 50, 07
        test    eax, eax                                ; 154A _ 85. C0
        cmovs   eax, edx                                ; 154C _ 0F 48. C2
        sar     eax, 3                                  ; 154F _ C1. F8, 03
        add     eax, 30                                 ; 1552 _ 83. C0, 1E
        mov     dword [ebp-20H], eax                    ; 1555 _ 89. 45, E0
        mov     eax, dword [ebp-10H]                    ; 1558 _ 8B. 45, F0
        mov     eax, dword [eax]                        ; 155B _ 8B. 00
        mov     edx, eax                                ; 155D _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 155F _ 8B. 45, EC
        add     eax, 188                                ; 1562 _ 05, 000000BC
        mov     dword [esp+0CH], 16634                  ; 1567 _ C7. 44 24, 0C, 000040FA
        mov     dword [esp+8H], edx                     ; 156F _ 89. 54 24, 08
        mov     dword [esp+4H], 1048575                 ; 1573 _ C7. 44 24, 04, 000FFFFF
        mov     dword [esp], eax                        ; 157B _ 89. 04 24
        call    _set_segmdesc                           ; 157E _ E8, 00000000(rel)
        mov     eax, dword [_memman]                    ; 1583 _ A1, 00000000(d)
        mov     dword [esp+4H], 65536                   ; 1588 _ C7. 44 24, 04, 00010000
        mov     dword [esp], eax                        ; 1590 _ 89. 04 24
        call    _memman_alloc_4k                        ; 1593 _ E8, 00000000(rel)
        mov     dword [ebp-24H], eax                    ; 1598 _ 89. 45, DC
        mov     eax, dword [ebp-10H]                    ; 159B _ 8B. 45, F0
        mov     edx, dword [ebp-24H]                    ; 159E _ 8B. 55, DC
        mov     dword [eax+4H], edx                     ; 15A1 _ 89. 50, 04
        mov     edx, dword [ebp-24H]                    ; 15A4 _ 8B. 55, DC
        mov     eax, dword [ebp-14H]                    ; 15A7 _ 8B. 45, EC
        add     eax, 188                                ; 15AA _ 05, 000000BC
        add     eax, 8                                  ; 15AF _ 83. C0, 08
        mov     dword [esp+0CH], 16626                  ; 15B2 _ C7. 44 24, 0C, 000040F2
        mov     dword [esp+8H], edx                     ; 15BA _ 89. 54 24, 08
        mov     dword [esp+4H], 77055                   ; 15BE _ C7. 44 24, 04, 00012CFF
        mov     dword [esp], eax                        ; 15C6 _ 89. 04 24
        call    _set_segmdesc                           ; 15C9 _ E8, 00000000(rel)
        mov     eax, dword [ebp-14H]                    ; 15CE _ 8B. 45, EC
        mov     dword [eax+30H], 0                      ; 15D1 _ C7. 40, 30, 00000000
        call    _io_sti                                 ; 15D8 _ E8, 00000000(rel)
        mov     eax, dword [ebp-14H]                    ; 15DD _ 8B. 45, EC
        add     eax, 48                                 ; 15E0 _ 83. C0, 30
        mov     dword [esp+10H], eax                    ; 15E3 _ 89. 44 24, 10
        mov     dword [esp+0CH], 12                     ; 15E7 _ C7. 44 24, 0C, 0000000C
        mov     dword [esp+8H], 65536                   ; 15EF _ C7. 44 24, 08, 00010000
        mov     dword [esp+4H], 4                       ; 15F7 _ C7. 44 24, 04, 00000004
        mov     dword [esp], 0                          ; 15FF _ C7. 04 24, 00000000
        call    _start_app                              ; 1606 _ E8, 00000000(rel)
        call    _io_cli                                 ; 160B _ E8, 00000000(rel)
        mov     dword [ebp-0CH], 0                      ; 1610 _ C7. 45, F4, 00000000
        mov     dword [ebp-0CH], 0                      ; 1617 _ C7. 45, F4, 00000000
        jmp     ?_065                                   ; 161E _ E9, 0000008A

?_063:  mov     eax, dword [ebp-14H]                    ; 1623 _ 8B. 45, EC
        mov     ecx, dword [eax+0CCH]                   ; 1626 _ 8B. 88, 000000CC
        mov     edx, dword [ebp-0CH]                    ; 162C _ 8B. 55, F4
        mov     eax, edx                                ; 162F _ 89. D0
        add     eax, eax                                ; 1631 _ 01. C0
        add     eax, edx                                ; 1633 _ 01. D0
        shl     eax, 2                                  ; 1635 _ C1. E0, 02
        add     eax, ecx                                ; 1638 _ 01. C8
        mov     eax, dword [eax]                        ; 163A _ 8B. 00
        test    eax, eax                                ; 163C _ 85. C0
        jz      ?_064                                   ; 163E _ 74, 69
        mov     eax, dword [ebp-14H]                    ; 1640 _ 8B. 45, EC
        mov     ecx, dword [eax+0CCH]                   ; 1643 _ 8B. 88, 000000CC
        mov     edx, dword [ebp-0CH]                    ; 1649 _ 8B. 55, F4
        mov     eax, edx                                ; 164C _ 89. D0
        add     eax, eax                                ; 164E _ 01. C0
        add     eax, edx                                ; 1650 _ 01. D0
        shl     eax, 2                                  ; 1652 _ C1. E0, 02
        add     eax, ecx                                ; 1655 _ 01. C8
        mov     eax, dword [eax+4H]                     ; 1657 _ 8B. 40, 04
        mov     ebx, eax                                ; 165A _ 89. C3
        mov     eax, dword [ebp-14H]                    ; 165C _ 8B. 45, EC
        mov     ecx, dword [eax+0CCH]                   ; 165F _ 8B. 88, 000000CC
        mov     edx, dword [ebp-0CH]                    ; 1665 _ 8B. 55, F4
        mov     eax, edx                                ; 1668 _ 89. D0
        add     eax, eax                                ; 166A _ 01. C0
        add     eax, edx                                ; 166C _ 01. D0
        shl     eax, 2                                  ; 166E _ C1. E0, 02
        add     eax, ecx                                ; 1671 _ 01. C8
        mov     eax, dword [eax]                        ; 1673 _ 8B. 00
        mov     edx, eax                                ; 1675 _ 89. C2
        mov     eax, dword [_memman]                    ; 1677 _ A1, 00000000(d)
        mov     dword [esp+8H], ebx                     ; 167C _ 89. 5C 24, 08
        mov     dword [esp+4H], edx                     ; 1680 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1684 _ 89. 04 24
        call    _memman_free_4k                         ; 1687 _ E8, 00000000(rel)
        mov     eax, dword [ebp-14H]                    ; 168C _ 8B. 45, EC
        mov     ecx, dword [eax+0CCH]                   ; 168F _ 8B. 88, 000000CC
        mov     edx, dword [ebp-0CH]                    ; 1695 _ 8B. 55, F4
        mov     eax, edx                                ; 1698 _ 89. D0
        add     eax, eax                                ; 169A _ 01. C0
        add     eax, edx                                ; 169C _ 01. D0
        shl     eax, 2                                  ; 169E _ C1. E0, 02
        add     eax, ecx                                ; 16A1 _ 01. C8
        mov     dword [eax], 0                          ; 16A3 _ C7. 00, 00000000
?_064:  add     dword [ebp-0CH], 1                      ; 16A9 _ 83. 45, F4, 01
?_065:  cmp     dword [ebp-0CH], 7                      ; 16AD _ 83. 7D, F4, 07
        jle     ?_063                                   ; 16B1 _ 0F 8E, FFFFFF6C
        mov     eax, dword [ebp-10H]                    ; 16B7 _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 16BA _ 8B. 40, 08
        mov     ecx, eax                                ; 16BD _ 89. C1
        mov     eax, dword [ebp-10H]                    ; 16BF _ 8B. 45, F0
        mov     eax, dword [eax]                        ; 16C2 _ 8B. 00
        mov     edx, eax                                ; 16C4 _ 89. C2
        mov     eax, dword [_memman]                    ; 16C6 _ A1, 00000000(d)
        mov     dword [esp+8H], ecx                     ; 16CB _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 16CF _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 16D3 _ 89. 04 24
        call    _memman_free_4k                         ; 16D6 _ E8, 00000000(rel)
        mov     edx, dword [ebp-24H]                    ; 16DB _ 8B. 55, DC
        mov     eax, dword [_memman]                    ; 16DE _ A1, 00000000(d)
        mov     dword [esp+8H], 65536                   ; 16E3 _ C7. 44 24, 08, 00010000
        mov     dword [esp+4H], edx                     ; 16EB _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 16EF _ 89. 04 24
        call    _memman_free_4k                         ; 16F2 _ E8, 00000000(rel)
        mov     edx, dword [ebp-10H]                    ; 16F7 _ 8B. 55, F0
        mov     eax, dword [_memman]                    ; 16FA _ A1, 00000000(d)
        mov     dword [esp+8H], 16                      ; 16FF _ C7. 44 24, 08, 00000010
        mov     dword [esp+4H], edx                     ; 1707 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 170B _ 89. 04 24
        call    _memman_free                            ; 170E _ E8, 00000000(rel)
        mov     eax, dword [ebp-14H]                    ; 1713 _ 8B. 45, EC
        mov     dword [eax+0B0H], 0                     ; 1716 _ C7. 80, 000000B0, 00000000
        call    _io_sti                                 ; 1720 _ E8, 00000000(rel)
        nop                                             ; 1725 _ 90
        add     esp, 68                                 ; 1726 _ 83. C4, 44
        pop     ebx                                     ; 1729 _ 5B
        pop     ebp                                     ; 172A _ 5D
        ret                                             ; 172B _ C3
; _cmd_execute_program End of function

_cmd_start:; Function begin
        push    ebp                                     ; 172C _ 55
        mov     ebp, esp                                ; 172D _ 89. E5
        sub     esp, 40                                 ; 172F _ 83. EC, 28
        mov     eax, dword [_console_count]             ; 1732 _ A1, 00000010(d)
        mov     dword [esp], eax                        ; 1737 _ 89. 04 24
        call    _launch_console                         ; 173A _ E8, FFFFF264
        mov     dword [ebp-10H], eax                    ; 173F _ 89. 45, F0
        mov     eax, dword [_shtctl]                    ; 1742 _ A1, 00000264(d)
        mov     dword [esp+0CH], 176                    ; 1747 _ C7. 44 24, 0C, 000000B0
        mov     dword [esp+8H], 156                     ; 174F _ C7. 44 24, 08, 0000009C
        mov     edx, dword [ebp-10H]                    ; 1757 _ 8B. 55, F0
        mov     dword [esp+4H], edx                     ; 175A _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 175E _ 89. 04 24
        call    _sheet_slide                            ; 1761 _ E8, 00000000(rel)
        mov     eax, dword [_shtctl]                    ; 1766 _ A1, 00000264(d)
        mov     dword [esp+8H], 1                       ; 176B _ C7. 44 24, 08, 00000001
        mov     edx, dword [ebp-10H]                    ; 1773 _ 8B. 55, F0
        mov     dword [esp+4H], edx                     ; 1776 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 177A _ 89. 04 24
        call    _sheet_updown                           ; 177D _ E8, 00000000(rel)
        mov     eax, dword [_console_count]             ; 1782 _ A1, 00000010(d)
        add     eax, 1                                  ; 1787 _ 83. C0, 01
        mov     dword [_console_count], eax             ; 178A _ A3, 00000010(d)
        mov     eax, dword [ebp-10H]                    ; 178F _ 8B. 45, F0
        mov     eax, dword [eax+20H]                    ; 1792 _ 8B. 40, 20
        mov     dword [ebp-14H], eax                    ; 1795 _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 1798 _ 8B. 45, EC
        mov     dword [eax+28H], 0                      ; 179B _ C7. 40, 28, 00000000
        mov     dword [ebp-0CH], 6                      ; 17A2 _ C7. 45, F4, 00000006
        jmp     ?_067                                   ; 17A9 _ EB, 24

?_066:  mov     edx, dword [ebp-0CH]                    ; 17AB _ 8B. 55, F4
        mov     eax, dword [ebp+8H]                     ; 17AE _ 8B. 45, 08
        add     eax, edx                                ; 17B1 _ 01. D0
        movzx   eax, byte [eax]                         ; 17B3 _ 0F B6. 00
        movzx   eax, al                                 ; 17B6 _ 0F B6. C0
        mov     edx, dword [ebp-14H]                    ; 17B9 _ 8B. 55, EC
        add     edx, 16                                 ; 17BC _ 83. C2, 10
        mov     dword [esp+4H], eax                     ; 17BF _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 17C3 _ 89. 14 24
        call    _fifo8_put                              ; 17C6 _ E8, 00000000(rel)
        add     dword [ebp-0CH], 1                      ; 17CB _ 83. 45, F4, 01
?_067:  mov     edx, dword [ebp-0CH]                    ; 17CF _ 8B. 55, F4
        mov     eax, dword [ebp+8H]                     ; 17D2 _ 8B. 45, 08
        add     eax, edx                                ; 17D5 _ 01. D0
        movzx   eax, byte [eax]                         ; 17D7 _ 0F B6. 00
        test    al, al                                  ; 17DA _ 84. C0
        jnz     ?_066                                   ; 17DC _ 75, CD
        mov     eax, dword [ebp-14H]                    ; 17DE _ 8B. 45, EC
        mov     edx, dword [ebp-14H]                    ; 17E1 _ 8B. 55, EC
        mov     dword [eax+28H], edx                    ; 17E4 _ 89. 50, 28
        mov     eax, dword [ebp-14H]                    ; 17E7 _ 8B. 45, EC
        add     eax, 16                                 ; 17EA _ 83. C0, 10
        mov     dword [esp+4H], 28                      ; 17ED _ C7. 44 24, 04, 0000001C
        mov     dword [esp], eax                        ; 17F5 _ 89. 04 24
        call    _fifo8_put                              ; 17F8 _ E8, 00000000(rel)
        nop                                             ; 17FD _ 90
        leave                                           ; 17FE _ C9
        ret                                             ; 17FF _ C3
; _cmd_start End of function

_cmd_ncst:; Function begin
        push    ebp                                     ; 1800 _ 55
        mov     ebp, esp                                ; 1801 _ 89. E5
        sub     esp, 40                                 ; 1803 _ 83. EC, 28
        mov     eax, dword [_console_count]             ; 1806 _ A1, 00000010(d)
        mov     dword [esp], eax                        ; 180B _ 89. 04 24
        call    _launch_console                         ; 180E _ E8, FFFFF190
        mov     eax, dword [_console_count]             ; 1813 _ A1, 00000010(d)
        add     eax, 1                                  ; 1818 _ 83. C0, 01
        mov     dword [_console_count], eax             ; 181B _ A3, 00000010(d)
        mov     eax, dword [_current_console_task]      ; 1820 _ A1, 00000278(d)
        mov     dword [ebp-10H], eax                    ; 1825 _ 89. 45, F0
        mov     eax, dword [ebp-10H]                    ; 1828 _ 8B. 45, F0
        mov     dword [eax+28H], 0                      ; 182B _ C7. 40, 28, 00000000
        mov     dword [ebp-0CH], 5                      ; 1832 _ C7. 45, F4, 00000005
        mov     dword [ebp-14H], 0                      ; 1839 _ C7. 45, EC, 00000000
        jmp     ?_069                                   ; 1840 _ EB, 24

?_068:  mov     edx, dword [ebp-0CH]                    ; 1842 _ 8B. 55, F4
        mov     eax, dword [ebp+8H]                     ; 1845 _ 8B. 45, 08
        add     eax, edx                                ; 1848 _ 01. D0
        movzx   eax, byte [eax]                         ; 184A _ 0F B6. 00
        movzx   eax, al                                 ; 184D _ 0F B6. C0
        mov     edx, dword [ebp-10H]                    ; 1850 _ 8B. 55, F0
        add     edx, 16                                 ; 1853 _ 83. C2, 10
        mov     dword [esp+4H], eax                     ; 1856 _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 185A _ 89. 14 24
        call    _fifo8_put                              ; 185D _ E8, 00000000(rel)
        add     dword [ebp-0CH], 1                      ; 1862 _ 83. 45, F4, 01
?_069:  mov     edx, dword [ebp-0CH]                    ; 1866 _ 8B. 55, F4
        mov     eax, dword [ebp+8H]                     ; 1869 _ 8B. 45, 08
        add     eax, edx                                ; 186C _ 01. D0
        movzx   eax, byte [eax]                         ; 186E _ 0F B6. 00
        test    al, al                                  ; 1871 _ 84. C0
        jnz     ?_068                                   ; 1873 _ 75, CD
        mov     eax, dword [ebp-10H]                    ; 1875 _ 8B. 45, F0
        mov     edx, dword [ebp-10H]                    ; 1878 _ 8B. 55, F0
        mov     dword [eax+28H], edx                    ; 187B _ 89. 50, 28
        mov     eax, dword [ebp-10H]                    ; 187E _ 8B. 45, F0
        add     eax, 16                                 ; 1881 _ 83. C0, 10
        mov     dword [esp+4H], 28                      ; 1884 _ C7. 44 24, 04, 0000001C
        mov     dword [esp], eax                        ; 188C _ 89. 04 24
        call    _fifo8_put                              ; 188F _ E8, 00000000(rel)
        nop                                             ; 1894 _ 90
        leave                                           ; 1895 _ C9
        ret                                             ; 1896 _ C3
; _cmd_ncst End of function

_console_task:; Function begin
        push    ebp                                     ; 1897 _ 55
        mov     ebp, esp                                ; 1898 _ 89. E5
        push    esi                                     ; 189A _ 56
        push    ebx                                     ; 189B _ 53
        sub     esp, 112                                ; 189C _ 83. EC, 70
        call    _task_now                               ; 189F _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 18A4 _ 89. 45, F0
        mov     dword [ebp-0CH], 0                      ; 18A7 _ C7. 45, F4, 00000000
        mov     dword [ebp-14H], 0                      ; 18AE _ C7. 45, EC, 00000000
        mov     dword [ebp-18H], 0                      ; 18B5 _ C7. 45, E8, 00000000
        mov     eax, dword [_memman]                    ; 18BC _ A1, 00000000(d)
        mov     dword [esp+4H], 30                      ; 18C1 _ C7. 44 24, 04, 0000001E
        mov     dword [esp], eax                        ; 18C9 _ 89. 04 24
        call    _memman_alloc                           ; 18CC _ E8, 00000000(rel)
        mov     dword [ebp-1CH], eax                    ; 18D1 _ 89. 45, E4
        mov     dword [ebp-20H], 96                     ; 18D4 _ C7. 45, E0, 00000060
        mov     dword [ebp-24H], 176                    ; 18DB _ C7. 45, DC, 000000B0
        mov     eax, dword [ebp-10H]                    ; 18E2 _ 8B. 45, F0
        mov     edx, dword [ebp+8H]                     ; 18E5 _ 8B. 55, 08
        mov     dword [eax+94H], edx                    ; 18E8 _ 89. 90, 00000094
        mov     eax, dword [ebp-10H]                    ; 18EE _ 8B. 45, F0
        mov     dword [eax+98H], 16                     ; 18F1 _ C7. 80, 00000098, 00000010
        mov     eax, dword [ebp-10H]                    ; 18FB _ 8B. 45, F0
        mov     dword [eax+9CH], 28                     ; 18FE _ C7. 80, 0000009C, 0000001C
        mov     eax, dword [ebp-10H]                    ; 1908 _ 8B. 45, F0
        mov     dword [eax+0A0H], -1                    ; 190B _ C7. 80, 000000A0, FFFFFFFF
        call    _timer_alloc                            ; 1915 _ E8, 00000000(rel)
        mov     dword [ebp-28H], eax                    ; 191A _ 89. 45, D8
        mov     eax, dword [ebp-10H]                    ; 191D _ 8B. 45, F0
        add     eax, 16                                 ; 1920 _ 83. C0, 10
        mov     dword [esp+8H], 1                       ; 1923 _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], eax                     ; 192B _ 89. 44 24, 04
        mov     eax, dword [ebp-28H]                    ; 192F _ 8B. 45, D8
        mov     dword [esp], eax                        ; 1932 _ 89. 04 24
        call    _timer_init                             ; 1935 _ E8, 00000000(rel)
        mov     dword [esp+4H], 50                      ; 193A _ C7. 44 24, 04, 00000032
        mov     eax, dword [ebp-28H]                    ; 1942 _ 8B. 45, D8
        mov     dword [esp], eax                        ; 1945 _ 89. 04 24
        call    _timer_settime                          ; 1948 _ E8, 00000000(rel)
        mov     eax, dword [ebp-10H]                    ; 194D _ 8B. 45, F0
        mov     edx, dword [ebp-28H]                    ; 1950 _ 8B. 55, D8
        mov     dword [eax+0A8H], edx                   ; 1953 _ 89. 90, 000000A8
        mov     eax, dword [ebp-10H]                    ; 1959 _ 8B. 45, F0
        mov     edx, dword [ebp-1CH]                    ; 195C _ 8B. 55, E4
        mov     dword [eax+0ACH], edx                   ; 195F _ 89. 90, 000000AC
        mov     eax, dword [_shtctl]                    ; 1965 _ A1, 00000264(d)
        mov     dword [esp+14H], ?_416                  ; 196A _ C7. 44 24, 14, 00000023(d)
        mov     dword [esp+10H], 7                      ; 1972 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 28                     ; 197A _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 8                       ; 1982 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp+8H]                     ; 198A _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 198D _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1991 _ 89. 04 24
        call    _showString                             ; 1994 _ E8, 00000000(rel)
        mov     dword [ebp-2CH], 88064                  ; 1999 _ C7. 45, D4, 00015800
        mov     dword [ebp-30H], 0                      ; 19A0 _ C7. 45, D0, 00000000
?_070:  call    _io_cli                                 ; 19A7 _ E8, 00000000(rel)
        call    _task_now                               ; 19AC _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 19B1 _ 89. 45, F0
        mov     eax, dword [ebp-10H]                    ; 19B4 _ 8B. 45, F0
        add     eax, 16                                 ; 19B7 _ 83. C0, 10
        mov     dword [esp], eax                        ; 19BA _ 89. 04 24
        call    _fifo8_status                           ; 19BD _ E8, 00000000(rel)
        test    eax, eax                                ; 19C2 _ 85. C0
        jnz     ?_071                                   ; 19C4 _ 75, 0A
        call    _io_sti                                 ; 19C6 _ E8, 00000000(rel)
        jmp     ?_090                                   ; 19CB _ E9, 00000524

?_071:  mov     eax, dword [ebp-10H]                    ; 19D0 _ 8B. 45, F0
        add     eax, 16                                 ; 19D3 _ 83. C0, 10
        mov     dword [esp], eax                        ; 19D6 _ 89. 04 24
        call    _fifo8_get                              ; 19D9 _ E8, 00000000(rel)
        mov     dword [ebp-34H], eax                    ; 19DE _ 89. 45, CC
        cmp     dword [ebp-34H], 1                      ; 19E1 _ 83. 7D, CC, 01
        jg      ?_074                                   ; 19E5 _ 7F, 6E
        cmp     dword [ebp-0CH], 0                      ; 19E7 _ 83. 7D, F4, 00
        js      ?_074                                   ; 19EB _ 78, 68
        cmp     dword [ebp-34H], 0                      ; 19ED _ 83. 7D, CC, 00
        jz      ?_072                                   ; 19F1 _ 74, 26
        mov     eax, dword [ebp-10H]                    ; 19F3 _ 8B. 45, F0
        add     eax, 16                                 ; 19F6 _ 83. C0, 10
        mov     dword [esp+8H], 0                       ; 19F9 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], eax                     ; 1A01 _ 89. 44 24, 04
        mov     eax, dword [ebp-28H]                    ; 1A05 _ 8B. 45, D8
        mov     dword [esp], eax                        ; 1A08 _ 89. 04 24
        call    _timer_init                             ; 1A0B _ E8, 00000000(rel)
        mov     dword [ebp-0CH], 7                      ; 1A10 _ C7. 45, F4, 00000007
        jmp     ?_073                                   ; 1A17 _ EB, 24

?_072:  mov     eax, dword [ebp-10H]                    ; 1A19 _ 8B. 45, F0
        add     eax, 16                                 ; 1A1C _ 83. C0, 10
        mov     dword [esp+8H], 1                       ; 1A1F _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], eax                     ; 1A27 _ 89. 44 24, 04
        mov     eax, dword [ebp-28H]                    ; 1A2B _ 8B. 45, D8
        mov     dword [esp], eax                        ; 1A2E _ 89. 04 24
        call    _timer_init                             ; 1A31 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], 0                      ; 1A36 _ C7. 45, F4, 00000000
?_073:  mov     dword [esp+4H], 50                      ; 1A3D _ C7. 44 24, 04, 00000032
        mov     eax, dword [ebp-28H]                    ; 1A45 _ 8B. 45, D8
        mov     dword [esp], eax                        ; 1A48 _ 89. 04 24
        call    _timer_settime                          ; 1A4B _ E8, 00000000(rel)
        jmp     ?_089                                   ; 1A50 _ E9, 00000451

?_074:  cmp     dword [ebp-34H], 87                     ; 1A55 _ 83. 7D, CC, 57
        jnz     ?_075                                   ; 1A59 _ 75, 3C
        mov     dword [ebp-0CH], 7                      ; 1A5B _ C7. 45, F4, 00000007
        mov     eax, dword [ebp-10H]                    ; 1A62 _ 8B. 45, F0
        add     eax, 16                                 ; 1A65 _ 83. C0, 10
        mov     dword [esp+8H], 0                       ; 1A68 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], eax                     ; 1A70 _ 89. 44 24, 04
        mov     eax, dword [ebp-28H]                    ; 1A74 _ 8B. 45, D8
        mov     dword [esp], eax                        ; 1A77 _ 89. 04 24
        call    _timer_init                             ; 1A7A _ E8, 00000000(rel)
        mov     dword [esp+4H], 50                      ; 1A7F _ C7. 44 24, 04, 00000032
        mov     eax, dword [ebp-28H]                    ; 1A87 _ 8B. 45, D8
        mov     dword [esp], eax                        ; 1A8A _ 89. 04 24
        call    _timer_settime                          ; 1A8D _ E8, 00000000(rel)
        jmp     ?_089                                   ; 1A92 _ E9, 0000040F

?_075:  cmp     dword [ebp-34H], 88                     ; 1A97 _ 83. 7D, CC, 58
        jnz     ?_076                                   ; 1A9B _ 75, 6A
        mov     eax, dword [ebp-10H]                    ; 1A9D _ 8B. 45, F0
        mov     ecx, dword [eax+9CH]                    ; 1AA0 _ 8B. 88, 0000009C
        mov     eax, dword [ebp-10H]                    ; 1AA6 _ 8B. 45, F0
        mov     edx, dword [eax+98H]                    ; 1AA9 _ 8B. 90, 00000098
        mov     eax, dword [_shtctl]                    ; 1AAF _ A1, 00000264(d)
        mov     dword [esp+10H], 0                      ; 1AB4 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], ecx                    ; 1ABC _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 1AC0 _ 89. 54 24, 08
        mov     edx, dword [ebp+8H]                     ; 1AC4 _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 1AC7 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1ACB _ 89. 04 24
        call    _set_cursor                             ; 1ACE _ E8, 00000000(rel)
        mov     dword [ebp-0CH], -1                     ; 1AD3 _ C7. 45, F4, FFFFFFFF
        mov     eax, dword [_task_main]                 ; 1ADA _ A1, 00000274(d)
        mov     dword [esp+8H], 0                       ; 1ADF _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], -1                      ; 1AE7 _ C7. 44 24, 04, FFFFFFFF
        mov     dword [esp], eax                        ; 1AEF _ 89. 04 24
        call    _task_run                               ; 1AF2 _ E8, 00000000(rel)
        mov     eax, dword [ebp-10H]                    ; 1AF7 _ 8B. 45, F0
        mov     dword [esp], eax                        ; 1AFA _ 89. 04 24
        call    _task_sleep                             ; 1AFD _ E8, 00000000(rel)
        jmp     ?_089                                   ; 1B02 _ E9, 0000039F

?_076:  cmp     dword [ebp-34H], 28                     ; 1B07 _ 83. 7D, CC, 1C
        jne     ?_087                                   ; 1B0B _ 0F 85, 00000238
        mov     eax, dword [ebp-10H]                    ; 1B11 _ 8B. 45, F0
        mov     ecx, dword [eax+9CH]                    ; 1B14 _ 8B. 88, 0000009C
        mov     eax, dword [ebp-10H]                    ; 1B1A _ 8B. 45, F0
        mov     edx, dword [eax+98H]                    ; 1B1D _ 8B. 90, 00000098
        mov     eax, dword [_shtctl]                    ; 1B23 _ A1, 00000264(d)
        mov     dword [esp+10H], 0                      ; 1B28 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], ecx                    ; 1B30 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 1B34 _ 89. 54 24, 08
        mov     edx, dword [ebp+8H]                     ; 1B38 _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 1B3B _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1B3F _ 89. 04 24
        call    _set_cursor                             ; 1B42 _ E8, 00000000(rel)
        mov     eax, dword [ebp-10H]                    ; 1B47 _ 8B. 45, F0
        mov     eax, dword [eax+98H]                    ; 1B4A _ 8B. 80, 00000098
        lea     edx, [eax+7H]                           ; 1B50 _ 8D. 50, 07
        test    eax, eax                                ; 1B53 _ 85. C0
        cmovs   eax, edx                                ; 1B55 _ 0F 48. C2
        sar     eax, 3                                  ; 1B58 _ C1. F8, 03
        lea     edx, [eax-2H]                           ; 1B5B _ 8D. 50, FE
        mov     eax, dword [ebp-1CH]                    ; 1B5E _ 8B. 45, E4
        add     eax, edx                                ; 1B61 _ 01. D0
        mov     byte [eax], 0                           ; 1B63 _ C6. 00, 00
        mov     eax, dword [ebp-10H]                    ; 1B66 _ 8B. 45, F0
        mov     eax, dword [eax+98H]                    ; 1B69 _ 8B. 80, 00000098
        lea     edx, [eax+7H]                           ; 1B6F _ 8D. 50, 07
        test    eax, eax                                ; 1B72 _ 85. C0
        cmovs   eax, edx                                ; 1B74 _ 0F 48. C2
        sar     eax, 3                                  ; 1B77 _ C1. F8, 03
        sub     eax, 2                                  ; 1B7A _ 83. E8, 02
        mov     byte [ebp+eax-55H], 0                   ; 1B7D _ C6. 44 05, AB, 00
        mov     eax, dword [ebp-10H]                    ; 1B82 _ 8B. 45, F0
        mov     eax, dword [eax+9CH]                    ; 1B85 _ 8B. 80, 0000009C
        mov     edx, dword [ebp+8H]                     ; 1B8B _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 1B8E _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1B92 _ 89. 04 24
        call    _cons_newline                           ; 1B95 _ E8, 00000D87
        mov     edx, eax                                ; 1B9A _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 1B9C _ 8B. 45, F0
        mov     dword [eax+9CH], edx                    ; 1B9F _ 89. 90, 0000009C
        mov     dword [esp+4H], ?_417                   ; 1BA5 _ C7. 44 24, 04, 00000025(d)
        mov     eax, dword [ebp-1CH]                    ; 1BAD _ 8B. 45, E4
        mov     dword [esp], eax                        ; 1BB0 _ 89. 04 24
        call    _strcmp                                 ; 1BB3 _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 1BB8 _ 83. F8, 01
        jnz     ?_077                                   ; 1BBB _ 75, 10
        mov     eax, dword [ebp+0CH]                    ; 1BBD _ 8B. 45, 0C
        mov     dword [esp], eax                        ; 1BC0 _ 89. 04 24
        call    _cmd_mem                                ; 1BC3 _ E8, FFFFF6D2
        jmp     ?_086                                   ; 1BC8 _ E9, 0000016A

?_077:  mov     dword [esp+4H], ?_418                   ; 1BCD _ C7. 44 24, 04, 00000029(d)
        mov     eax, dword [ebp-1CH]                    ; 1BD5 _ 8B. 45, E4
        mov     dword [esp], eax                        ; 1BD8 _ 89. 04 24
        call    _strcmp                                 ; 1BDB _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 1BE0 _ 83. F8, 01
        jnz     ?_078                                   ; 1BE3 _ 75, 0A
        call    _cmd_cls                                ; 1BE5 _ E8, FFFFF7DA
        jmp     ?_086                                   ; 1BEA _ E9, 00000148

?_078:  mov     dword [esp+4H], ?_419                   ; 1BEF _ C7. 44 24, 04, 0000002D(d)
        mov     eax, dword [ebp-1CH]                    ; 1BF7 _ 8B. 45, E4
        mov     dword [esp], eax                        ; 1BFA _ 89. 04 24
        call    _strcmp                                 ; 1BFD _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 1C02 _ 83. F8, 01
        jnz     ?_079                                   ; 1C05 _ 75, 11
        mov     dword [esp], ?_420                      ; 1C07 _ C7. 04 24, 00000036(d)
        call    _cmd_execute_program                    ; 1C0E _ E8, FFFFF8B5
        jmp     ?_086                                   ; 1C13 _ E9, 0000011F

?_079:  mov     dword [esp+4H], ?_421                   ; 1C18 _ C7. 44 24, 04, 00000043(d)
        mov     eax, dword [ebp-1CH]                    ; 1C20 _ 8B. 45, E4
        mov     dword [esp], eax                        ; 1C23 _ 89. 04 24
        call    _strcmp                                 ; 1C26 _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 1C2B _ 83. F8, 01
        jnz     ?_080                                   ; 1C2E _ 75, 11
        mov     dword [esp], ?_422                      ; 1C30 _ C7. 04 24, 0000004A(d)
        call    _cmd_execute_program                    ; 1C37 _ E8, FFFFF88C
        jmp     ?_086                                   ; 1C3C _ E9, 000000F6

?_080:  mov     dword [esp+4H], ?_423                   ; 1C41 _ C7. 44 24, 04, 00000055(d)
        mov     eax, dword [ebp-1CH]                    ; 1C49 _ 8B. 45, E4
        mov     dword [esp], eax                        ; 1C4C _ 89. 04 24
        call    _strcmp                                 ; 1C4F _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 1C54 _ 83. F8, 01
        jnz     ?_081                                   ; 1C57 _ 75, 0A
        call    _cmd_dir                                ; 1C59 _ E8, FFFFF0C9
        jmp     ?_086                                   ; 1C5E _ E9, 000000D4

?_081:  mov     dword [esp+4H], ?_424                   ; 1C63 _ C7. 44 24, 04, 00000059(d)
        mov     eax, dword [ebp-1CH]                    ; 1C6B _ 8B. 45, E4
        mov     dword [esp], eax                        ; 1C6E _ 89. 04 24
        call    _strcmp                                 ; 1C71 _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 1C76 _ 83. F8, 01
        jnz     ?_082                                   ; 1C79 _ 75, 10
        mov     eax, dword [ebp-10H]                    ; 1C7B _ 8B. 45, F0
        mov     dword [esp], eax                        ; 1C7E _ 89. 04 24
        call    _cmd_exit                               ; 1C81 _ E8, 00000EDC
        jmp     ?_086                                   ; 1C86 _ E9, 000000AC

?_082:  mov     eax, dword [ebp-1CH]                    ; 1C8B _ 8B. 45, E4
        movzx   eax, byte [eax]                         ; 1C8E _ 0F B6. 00
        cmp     al, 116                                 ; 1C91 _ 3C, 74
        jnz     ?_083                                   ; 1C93 _ 75, 34
        mov     eax, dword [ebp-1CH]                    ; 1C95 _ 8B. 45, E4
        add     eax, 1                                  ; 1C98 _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 1C9B _ 0F B6. 00
        cmp     al, 121                                 ; 1C9E _ 3C, 79
        jnz     ?_083                                   ; 1CA0 _ 75, 27
        mov     eax, dword [ebp-1CH]                    ; 1CA2 _ 8B. 45, E4
        add     eax, 2                                  ; 1CA5 _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 1CA8 _ 0F B6. 00
        cmp     al, 112                                 ; 1CAB _ 3C, 70
        jnz     ?_083                                   ; 1CAD _ 75, 1A
        mov     eax, dword [ebp-1CH]                    ; 1CAF _ 8B. 45, E4
        add     eax, 3                                  ; 1CB2 _ 83. C0, 03
        movzx   eax, byte [eax]                         ; 1CB5 _ 0F B6. 00
        cmp     al, 101                                 ; 1CB8 _ 3C, 65
        jnz     ?_083                                   ; 1CBA _ 75, 0D
        mov     eax, dword [ebp-1CH]                    ; 1CBC _ 8B. 45, E4
        mov     dword [esp], eax                        ; 1CBF _ 89. 04 24
        call    _cmd_type                               ; 1CC2 _ E8, FFFFF21B
        jmp     ?_086                                   ; 1CC7 _ EB, 6E

?_083:  mov     dword [esp+4H], ?_425                   ; 1CC9 _ C7. 44 24, 04, 0000005E(d)
        mov     eax, dword [ebp-1CH]                    ; 1CD1 _ 8B. 45, E4
        mov     dword [esp], eax                        ; 1CD4 _ 89. 04 24
        call    _strcmp                                 ; 1CD7 _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 1CDC _ 83. F8, 01
        jnz     ?_084                                   ; 1CDF _ 75, 0D
        lea     eax, [ebp-55H]                          ; 1CE1 _ 8D. 45, AB
        mov     dword [esp], eax                        ; 1CE4 _ 89. 04 24
        call    _cmd_start                              ; 1CE7 _ E8, FFFFFA40
        jmp     ?_086                                   ; 1CEC _ EB, 49

?_084:  mov     dword [esp+4H], ?_426                   ; 1CEE _ C7. 44 24, 04, 00000064(d)
        mov     eax, dword [ebp-1CH]                    ; 1CF6 _ 8B. 45, E4
        mov     dword [esp], eax                        ; 1CF9 _ 89. 04 24
        call    _strcmp                                 ; 1CFC _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 1D01 _ 83. F8, 01
        jnz     ?_085                                   ; 1D04 _ 75, 0D
        lea     eax, [ebp-55H]                          ; 1D06 _ 8D. 45, AB
        mov     dword [esp], eax                        ; 1D09 _ 89. 04 24
        call    _cmd_ncst                               ; 1D0C _ E8, FFFFFAEF
        jmp     ?_086                                   ; 1D11 _ EB, 24

?_085:  mov     dword [esp+4H], ?_427                   ; 1D13 _ C7. 44 24, 04, 00000069(d)
        mov     eax, dword [ebp-1CH]                    ; 1D1B _ 8B. 45, E4
        mov     dword [esp], eax                        ; 1D1E _ 89. 04 24
        call    _strcmp                                 ; 1D21 _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 1D26 _ 83. F8, 01
        jnz     ?_086                                   ; 1D29 _ 75, 0C
        mov     dword [esp], ?_428                      ; 1D2B _ C7. 04 24, 0000006F(d)
        call    _cmd_execute_program                    ; 1D32 _ E8, FFFFF791
?_086:  mov     eax, dword [ebp-10H]                    ; 1D37 _ 8B. 45, F0
        mov     dword [eax+98H], 16                     ; 1D3A _ C7. 80, 00000098, 00000010
        jmp     ?_089                                   ; 1D44 _ E9, 0000015D

?_087:  cmp     dword [ebp-34H], 14                     ; 1D49 _ 83. 7D, CC, 0E
        jne     ?_088                                   ; 1D4D _ 0F 85, 00000098
        mov     eax, dword [ebp-10H]                    ; 1D53 _ 8B. 45, F0
        mov     eax, dword [eax+98H]                    ; 1D56 _ 8B. 80, 00000098
        cmp     eax, 8                                  ; 1D5C _ 83. F8, 08
        jle     ?_088                                   ; 1D5F _ 0F 8E, 00000086
        mov     eax, dword [ebp-10H]                    ; 1D65 _ 8B. 45, F0
        mov     ecx, dword [eax+9CH]                    ; 1D68 _ 8B. 88, 0000009C
        mov     eax, dword [ebp-10H]                    ; 1D6E _ 8B. 45, F0
        mov     edx, dword [eax+98H]                    ; 1D71 _ 8B. 90, 00000098
        mov     eax, dword [_shtctl]                    ; 1D77 _ A1, 00000264(d)
        mov     dword [esp+10H], 0                      ; 1D7C _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], ecx                    ; 1D84 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 1D88 _ 89. 54 24, 08
        mov     edx, dword [ebp+8H]                     ; 1D8C _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 1D8F _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1D93 _ 89. 04 24
        call    _set_cursor                             ; 1D96 _ E8, 00000000(rel)
        mov     eax, dword [ebp-10H]                    ; 1D9B _ 8B. 45, F0
        mov     eax, dword [eax+98H]                    ; 1D9E _ 8B. 80, 00000098
        lea     edx, [eax-8H]                           ; 1DA4 _ 8D. 50, F8
        mov     eax, dword [ebp-10H]                    ; 1DA7 _ 8B. 45, F0
        mov     dword [eax+98H], edx                    ; 1DAA _ 89. 90, 00000098
        mov     eax, dword [ebp-10H]                    ; 1DB0 _ 8B. 45, F0
        mov     ecx, dword [eax+9CH]                    ; 1DB3 _ 8B. 88, 0000009C
        mov     eax, dword [ebp-10H]                    ; 1DB9 _ 8B. 45, F0
        mov     edx, dword [eax+98H]                    ; 1DBC _ 8B. 90, 00000098
        mov     eax, dword [_shtctl]                    ; 1DC2 _ A1, 00000264(d)
        mov     dword [esp+10H], 0                      ; 1DC7 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], ecx                    ; 1DCF _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 1DD3 _ 89. 54 24, 08
        mov     edx, dword [ebp+8H]                     ; 1DD7 _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 1DDA _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1DDE _ 89. 04 24
        call    _set_cursor                             ; 1DE1 _ E8, 00000000(rel)
        jmp     ?_089                                   ; 1DE6 _ E9, 000000BB

?_088:  mov     eax, dword [ebp-34H]                    ; 1DEB _ 8B. 45, CC
        mov     dword [esp], eax                        ; 1DEE _ 89. 04 24
        call    _transferScanCode                       ; 1DF1 _ E8, 00000000(rel)
        mov     byte [ebp-35H], al                      ; 1DF6 _ 88. 45, CB
        mov     eax, dword [ebp-10H]                    ; 1DF9 _ 8B. 45, F0
        mov     eax, dword [eax+98H]                    ; 1DFC _ 8B. 80, 00000098
        cmp     eax, 239                                ; 1E02 _ 3D, 000000EF
        jg      ?_089                                   ; 1E07 _ 0F 8F, 00000099
        cmp     byte [ebp-35H], 0                       ; 1E0D _ 80. 7D, CB, 00
        je      ?_089                                   ; 1E11 _ 0F 84, 0000008F
        mov     eax, dword [ebp-10H]                    ; 1E17 _ 8B. 45, F0
        mov     eax, dword [eax+98H]                    ; 1E1A _ 8B. 80, 00000098
        lea     edx, [eax+7H]                           ; 1E20 _ 8D. 50, 07
        test    eax, eax                                ; 1E23 _ 85. C0
        cmovs   eax, edx                                ; 1E25 _ 0F 48. C2
        sar     eax, 3                                  ; 1E28 _ C1. F8, 03
        lea     edx, [eax-2H]                           ; 1E2B _ 8D. 50, FE
        mov     eax, dword [ebp-1CH]                    ; 1E2E _ 8B. 45, E4
        add     edx, eax                                ; 1E31 _ 01. C2
        movzx   eax, byte [ebp-35H]                     ; 1E33 _ 0F B6. 45, CB
        mov     byte [edx], al                          ; 1E37 _ 88. 02
        mov     eax, dword [ebp-10H]                    ; 1E39 _ 8B. 45, F0
        mov     eax, dword [eax+98H]                    ; 1E3C _ 8B. 80, 00000098
        lea     edx, [eax+7H]                           ; 1E42 _ 8D. 50, 07
        test    eax, eax                                ; 1E45 _ 85. C0
        cmovs   eax, edx                                ; 1E47 _ 0F 48. C2
        sar     eax, 3                                  ; 1E4A _ C1. F8, 03
        lea     edx, [eax-1H]                           ; 1E4D _ 8D. 50, FF
        mov     eax, dword [ebp-1CH]                    ; 1E50 _ 8B. 45, E4
        add     eax, edx                                ; 1E53 _ 01. D0
        mov     byte [eax], 0                           ; 1E55 _ C6. 00, 00
        mov     eax, dword [ebp-10H]                    ; 1E58 _ 8B. 45, F0
        mov     eax, dword [eax+98H]                    ; 1E5B _ 8B. 80, 00000098
        lea     edx, [eax+7H]                           ; 1E61 _ 8D. 50, 07
        test    eax, eax                                ; 1E64 _ 85. C0
        cmovs   eax, edx                                ; 1E66 _ 0F 48. C2
        sar     eax, 3                                  ; 1E69 _ C1. F8, 03
        sub     eax, 2                                  ; 1E6C _ 83. E8, 02
        mov     edx, dword [ebp-34H]                    ; 1E6F _ 8B. 55, CC
        mov     byte [ebp+eax-55H], dl                  ; 1E72 _ 88. 54 05, AB
        mov     eax, dword [ebp-10H]                    ; 1E76 _ 8B. 45, F0
        mov     eax, dword [eax+98H]                    ; 1E79 _ 8B. 80, 00000098
        lea     edx, [eax+7H]                           ; 1E7F _ 8D. 50, 07
        test    eax, eax                                ; 1E82 _ 85. C0
        cmovs   eax, edx                                ; 1E84 _ 0F 48. C2
        sar     eax, 3                                  ; 1E87 _ C1. F8, 03
        sub     eax, 1                                  ; 1E8A _ 83. E8, 01
        mov     byte [ebp+eax-55H], 0                   ; 1E8D _ C6. 44 05, AB, 00
        movsx   eax, byte [ebp-35H]                     ; 1E92 _ 0F BE. 45, CB
        mov     dword [esp+4H], 1                       ; 1E96 _ C7. 44 24, 04, 00000001
        mov     dword [esp], eax                        ; 1E9E _ 89. 04 24
        call    _cons_putchar                           ; 1EA1 _ E8, 000009A4
?_089:  cmp     dword [ebp-0CH], 0                      ; 1EA6 _ 83. 7D, F4, 00
        js      ?_090                                   ; 1EAA _ 78, 48
        mov     eax, dword [ebp-10H]                    ; 1EAC _ 8B. 45, F0
        mov     eax, dword [eax+94H]                    ; 1EAF _ 8B. 80, 00000094
        test    eax, eax                                ; 1EB5 _ 85. C0
        jz      ?_090                                   ; 1EB7 _ 74, 3B
        mov     eax, dword [ebp-10H]                    ; 1EB9 _ 8B. 45, F0
        mov     ebx, dword [eax+9CH]                    ; 1EBC _ 8B. 98, 0000009C
        mov     eax, dword [ebp-10H]                    ; 1EC2 _ 8B. 45, F0
        mov     ecx, dword [eax+98H]                    ; 1EC5 _ 8B. 88, 00000098
        mov     eax, dword [ebp-10H]                    ; 1ECB _ 8B. 45, F0
        mov     edx, dword [eax+94H]                    ; 1ECE _ 8B. 90, 00000094
        mov     eax, dword [_shtctl]                    ; 1ED4 _ A1, 00000264(d)
        mov     esi, dword [ebp-0CH]                    ; 1ED9 _ 8B. 75, F4
        mov     dword [esp+10H], esi                    ; 1EDC _ 89. 74 24, 10
        mov     dword [esp+0CH], ebx                    ; 1EE0 _ 89. 5C 24, 0C
        mov     dword [esp+8H], ecx                     ; 1EE4 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 1EE8 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1EEC _ 89. 04 24
        call    _set_cursor                             ; 1EEF _ E8, 00000000(rel)
?_090:  call    _io_sti                                 ; 1EF4 _ E8, 00000000(rel)
        jmp     ?_070                                   ; 1EF9 _ E9, FFFFFAA9
; _console_task End of function

_cons_putstr:; Function begin
        push    ebp                                     ; 1EFE _ 55
        mov     ebp, esp                                ; 1EFF _ 89. E5
        sub     esp, 24                                 ; 1F01 _ 83. EC, 18
        jmp     ?_092                                   ; 1F04 _ EB, 1D

?_091:  mov     eax, dword [ebp+8H]                     ; 1F06 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1F09 _ 0F B6. 00
        movsx   eax, al                                 ; 1F0C _ 0F BE. C0
        mov     dword [esp+4H], 1                       ; 1F0F _ C7. 44 24, 04, 00000001
        mov     dword [esp], eax                        ; 1F17 _ 89. 04 24
        call    _cons_putchar                           ; 1F1A _ E8, 0000092B
        add     dword [ebp+8H], 1                       ; 1F1F _ 83. 45, 08, 01
?_092:  mov     eax, dword [ebp+8H]                     ; 1F23 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1F26 _ 0F B6. 00
        test    al, al                                  ; 1F29 _ 84. C0
        jnz     ?_091                                   ; 1F2B _ 75, D9
        nop                                             ; 1F2D _ 90
        leave                                           ; 1F2E _ C9
        ret                                             ; 1F2F _ C3
; _cons_putstr End of function

_api_linewin:; Function begin
        push    ebp                                     ; 1F30 _ 55
        mov     ebp, esp                                ; 1F31 _ 89. E5
        sub     esp, 32                                 ; 1F33 _ 83. EC, 20
        mov     eax, dword [ebp+14H]                    ; 1F36 _ 8B. 45, 14
        sub     eax, dword [ebp+0CH]                    ; 1F39 _ 2B. 45, 0C
        mov     dword [ebp-14H], eax                    ; 1F3C _ 89. 45, EC
        mov     eax, dword [ebp+18H]                    ; 1F3F _ 8B. 45, 18
        sub     eax, dword [ebp+10H]                    ; 1F42 _ 2B. 45, 10
        mov     dword [ebp-18H], eax                    ; 1F45 _ 89. 45, E8
        mov     eax, dword [ebp+0CH]                    ; 1F48 _ 8B. 45, 0C
        shl     eax, 10                                 ; 1F4B _ C1. E0, 0A
        mov     dword [ebp-8H], eax                     ; 1F4E _ 89. 45, F8
        mov     eax, dword [ebp+10H]                    ; 1F51 _ 8B. 45, 10
        shl     eax, 10                                 ; 1F54 _ C1. E0, 0A
        mov     dword [ebp-0CH], eax                    ; 1F57 _ 89. 45, F4
        cmp     dword [ebp-14H], 0                      ; 1F5A _ 83. 7D, EC, 00
        jns     ?_093                                   ; 1F5E _ 79, 03
        neg     dword [ebp-14H]                         ; 1F60 _ F7. 5D, EC
?_093:  cmp     dword [ebp-18H], 0                      ; 1F63 _ 83. 7D, E8, 00
        jns     ?_094                                   ; 1F67 _ 79, 03
        neg     dword [ebp-18H]                         ; 1F69 _ F7. 5D, E8
?_094:  mov     eax, dword [ebp-14H]                    ; 1F6C _ 8B. 45, EC
        cmp     eax, dword [ebp-18H]                    ; 1F6F _ 3B. 45, E8
        jl      ?_098                                   ; 1F72 _ 7C, 53
        mov     eax, dword [ebp-14H]                    ; 1F74 _ 8B. 45, EC
        add     eax, 1                                  ; 1F77 _ 83. C0, 01
        mov     dword [ebp-10H], eax                    ; 1F7A _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 1F7D _ 8B. 45, 0C
        cmp     eax, dword [ebp+14H]                    ; 1F80 _ 3B. 45, 14
        jle     ?_095                                   ; 1F83 _ 7E, 09
        mov     dword [ebp-14H], -1024                  ; 1F85 _ C7. 45, EC, FFFFFC00
        jmp     ?_096                                   ; 1F8C _ EB, 07

?_095:  mov     dword [ebp-14H], 1024                   ; 1F8E _ C7. 45, EC, 00000400
?_096:  mov     eax, dword [ebp+10H]                    ; 1F95 _ 8B. 45, 10
        cmp     eax, dword [ebp+18H]                    ; 1F98 _ 3B. 45, 18
        jg      ?_097                                   ; 1F9B _ 7F, 15
        mov     eax, dword [ebp+18H]                    ; 1F9D _ 8B. 45, 18
        sub     eax, dword [ebp+10H]                    ; 1FA0 _ 2B. 45, 10
        add     eax, 1                                  ; 1FA3 _ 83. C0, 01
        shl     eax, 10                                 ; 1FA6 _ C1. E0, 0A
        cdq                                             ; 1FA9 _ 99
        idiv    dword [ebp-10H]                         ; 1FAA _ F7. 7D, F0
        mov     dword [ebp-18H], eax                    ; 1FAD _ 89. 45, E8
        jmp     ?_102                                   ; 1FB0 _ EB, 66

?_097:  mov     eax, dword [ebp+18H]                    ; 1FB2 _ 8B. 45, 18
        sub     eax, dword [ebp+10H]                    ; 1FB5 _ 2B. 45, 10
        sub     eax, 1                                  ; 1FB8 _ 83. E8, 01
        shl     eax, 10                                 ; 1FBB _ C1. E0, 0A
        cdq                                             ; 1FBE _ 99
        idiv    dword [ebp-10H]                         ; 1FBF _ F7. 7D, F0
        mov     dword [ebp-18H], eax                    ; 1FC2 _ 89. 45, E8
        jmp     ?_102                                   ; 1FC5 _ EB, 51

?_098:  mov     eax, dword [ebp-18H]                    ; 1FC7 _ 8B. 45, E8
        add     eax, 1                                  ; 1FCA _ 83. C0, 01
        mov     dword [ebp-10H], eax                    ; 1FCD _ 89. 45, F0
        mov     eax, dword [ebp+10H]                    ; 1FD0 _ 8B. 45, 10
        cmp     eax, dword [ebp+18H]                    ; 1FD3 _ 3B. 45, 18
        jle     ?_099                                   ; 1FD6 _ 7E, 09
        mov     dword [ebp-18H], -1024                  ; 1FD8 _ C7. 45, E8, FFFFFC00
        jmp     ?_100                                   ; 1FDF _ EB, 07

?_099:  mov     dword [ebp-18H], 1024                   ; 1FE1 _ C7. 45, E8, 00000400
?_100:  mov     eax, dword [ebp+0CH]                    ; 1FE8 _ 8B. 45, 0C
        cmp     eax, dword [ebp+14H]                    ; 1FEB _ 3B. 45, 14
        jg      ?_101                                   ; 1FEE _ 7F, 15
        mov     eax, dword [ebp+14H]                    ; 1FF0 _ 8B. 45, 14
        sub     eax, dword [ebp+0CH]                    ; 1FF3 _ 2B. 45, 0C
        add     eax, 1                                  ; 1FF6 _ 83. C0, 01
        shl     eax, 10                                 ; 1FF9 _ C1. E0, 0A
        cdq                                             ; 1FFC _ 99
        idiv    dword [ebp-10H]                         ; 1FFD _ F7. 7D, F0
        mov     dword [ebp-14H], eax                    ; 2000 _ 89. 45, EC
        jmp     ?_102                                   ; 2003 _ EB, 13

?_101:  mov     eax, dword [ebp+14H]                    ; 2005 _ 8B. 45, 14
        sub     eax, dword [ebp+0CH]                    ; 2008 _ 2B. 45, 0C
        sub     eax, 1                                  ; 200B _ 83. E8, 01
        shl     eax, 10                                 ; 200E _ C1. E0, 0A
        cdq                                             ; 2011 _ 99
        idiv    dword [ebp-10H]                         ; 2012 _ F7. 7D, F0
        mov     dword [ebp-14H], eax                    ; 2015 _ 89. 45, EC
?_102:  mov     dword [ebp-4H], 0                       ; 2018 _ C7. 45, FC, 00000000
        jmp     ?_104                                   ; 201F _ EB, 35

?_103:  mov     eax, dword [ebp+8H]                     ; 2021 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 2024 _ 8B. 10
        mov     eax, dword [ebp-0CH]                    ; 2026 _ 8B. 45, F4
        sar     eax, 10                                 ; 2029 _ C1. F8, 0A
        mov     ecx, eax                                ; 202C _ 89. C1
        mov     eax, dword [ebp+8H]                     ; 202E _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 2031 _ 8B. 40, 04
        imul    eax, ecx                                ; 2034 _ 0F AF. C1
        mov     ecx, dword [ebp-8H]                     ; 2037 _ 8B. 4D, F8
        sar     ecx, 10                                 ; 203A _ C1. F9, 0A
        add     eax, ecx                                ; 203D _ 01. C8
        add     eax, edx                                ; 203F _ 01. D0
        mov     edx, dword [ebp+1CH]                    ; 2041 _ 8B. 55, 1C
        mov     byte [eax], dl                          ; 2044 _ 88. 10
        mov     eax, dword [ebp-14H]                    ; 2046 _ 8B. 45, EC
        add     dword [ebp-8H], eax                     ; 2049 _ 01. 45, F8
        mov     eax, dword [ebp-18H]                    ; 204C _ 8B. 45, E8
        add     dword [ebp-0CH], eax                    ; 204F _ 01. 45, F4
        add     dword [ebp-4H], 1                       ; 2052 _ 83. 45, FC, 01
?_104:  mov     eax, dword [ebp-4H]                     ; 2056 _ 8B. 45, FC
        cmp     eax, dword [ebp-10H]                    ; 2059 _ 3B. 45, F0
        jl      ?_103                                   ; 205C _ 7C, C3
        nop                                             ; 205E _ 90
        leave                                           ; 205F _ C9
        ret                                             ; 2060 _ C3
; _api_linewin End of function

_handle_keyboard:; Function begin
        push    ebp                                     ; 2061 _ 55
        mov     ebp, esp                                ; 2062 _ 89. E5
        sub     esp, 56                                 ; 2064 _ 83. EC, 38
?_105:  call    _io_cli                                 ; 2067 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 206C _ 8B. 45, 08
        add     eax, 16                                 ; 206F _ 83. C0, 10
        mov     dword [esp], eax                        ; 2072 _ 89. 04 24
        call    _fifo8_status                           ; 2075 _ E8, 00000000(rel)
        test    eax, eax                                ; 207A _ 85. C0
        jnz     ?_106                                   ; 207C _ 75, 2A
        call    _io_sti                                 ; 207E _ E8, 00000000(rel)
        cmp     dword [ebp+0CH], 0                      ; 2083 _ 83. 7D, 0C, 00
        jne     ?_110                                   ; 2087 _ 0F 85, 000000E2
        call    _io_sti                                 ; 208D _ E8, 00000000(rel)
        mov     eax, dword [ebp+10H]                    ; 2092 _ 8B. 45, 10
        add     eax, 28                                 ; 2095 _ 83. C0, 1C
        mov     dword [eax], -1                         ; 2098 _ C7. 00, FFFFFFFF
        mov     eax, 0                                  ; 209E _ B8, 00000000
        jmp     ?_111                                   ; 20A3 _ E9, 000000CD

?_106:  mov     eax, dword [ebp+8H]                     ; 20A8 _ 8B. 45, 08
        add     eax, 16                                 ; 20AB _ 83. C0, 10
        mov     dword [esp], eax                        ; 20AE _ 89. 04 24
        call    _fifo8_get                              ; 20B1 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 20B6 _ 89. 45, F4
        call    _io_sti                                 ; 20B9 _ E8, 00000000(rel)
        cmp     dword [ebp-0CH], 255                    ; 20BE _ 81. 7D, F4, 000000FF
        jle     ?_107                                   ; 20C5 _ 7E, 37
        mov     edx, dword [_sht_back]                  ; 20C7 _ 8B. 15, 00000268(d)
        mov     eax, dword [_shtctl]                    ; 20CD _ A1, 00000264(d)
        mov     dword [esp+14H], ?_429                  ; 20D2 _ C7. 44 24, 14, 00000079(d)
        mov     dword [esp+10H], 7                      ; 20DA _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 176                    ; 20E2 _ C7. 44 24, 0C, 000000B0
        mov     dword [esp+8H], 0                       ; 20EA _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 20F2 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 20F6 _ 89. 04 24
        call    _showString                             ; 20F9 _ E8, 00000000(rel)
?_107:  cmp     dword [ebp-0CH], 1                      ; 20FE _ 83. 7D, F4, 01
        jg      ?_108                                   ; 2102 _ 7F, 41
        mov     eax, dword [ebp+8H]                     ; 2104 _ 8B. 45, 08
        lea     edx, [eax+10H]                          ; 2107 _ 8D. 50, 10
        mov     eax, dword [ebp+8H]                     ; 210A _ 8B. 45, 08
        mov     eax, dword [eax+0A8H]                   ; 210D _ 8B. 80, 000000A8
        mov     dword [esp+8H], 1                       ; 2113 _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], edx                     ; 211B _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 211F _ 89. 04 24
        call    _timer_init                             ; 2122 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 2127 _ 8B. 45, 08
        mov     eax, dword [eax+0A8H]                   ; 212A _ 8B. 80, 000000A8
        mov     dword [esp+4H], 50                      ; 2130 _ C7. 44 24, 04, 00000032
        mov     dword [esp], eax                        ; 2138 _ 89. 04 24
        call    _timer_settime                          ; 213B _ E8, 00000000(rel)
        jmp     ?_105                                   ; 2140 _ E9, FFFFFF22

?_108:  cmp     dword [ebp-0CH], 2                      ; 2145 _ 83. 7D, F4, 02
        jnz     ?_109                                   ; 2149 _ 75, 12
        mov     eax, dword [ebp+8H]                     ; 214B _ 8B. 45, 08
        mov     dword [eax+0A0H], 7                     ; 214E _ C7. 80, 000000A0, 00000007
        jmp     ?_105                                   ; 2158 _ E9, FFFFFF0A

?_109:  mov     eax, dword [ebp+10H]                    ; 215D _ 8B. 45, 10
        add     eax, 28                                 ; 2160 _ 83. C0, 1C
        mov     edx, dword [ebp-0CH]                    ; 2163 _ 8B. 55, F4
        mov     dword [eax], edx                        ; 2166 _ 89. 10
        mov     eax, 0                                  ; 2168 _ B8, 00000000
        jmp     ?_111                                   ; 216D _ EB, 06

?_110:  nop                                             ; 216F _ 90
        jmp     ?_105                                   ; 2170 _ E9, FFFFFEF2
; _handle_keyboard End of function

?_111:  ; Local function
        leave                                           ; 2175 _ C9
        ret                                             ; 2176 _ C3

_kernel_api:; Function begin
        push    ebp                                     ; 2177 _ 55
        mov     ebp, esp                                ; 2178 _ 89. E5
        push    esi                                     ; 217A _ 56
        push    ebx                                     ; 217B _ 53
        sub     esp, 80                                 ; 217C _ 83. EC, 50
        call    _task_now                               ; 217F _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 2184 _ 89. 45, F0
        mov     dword [ebp-14H], 0                      ; 2187 _ C7. 45, EC, 00000000
        lea     eax, [ebp+24H]                          ; 218E _ 8D. 45, 24
        add     eax, 4                                  ; 2191 _ 83. C0, 04
        mov     dword [ebp-18H], eax                    ; 2194 _ 89. 45, E8
        mov     dword [ebp-0CH], 0                      ; 2197 _ C7. 45, F4, 00000000
        mov     dword [ebp-1CH], 0                      ; 219E _ C7. 45, E4, 00000000
        cmp     dword [ebp+1CH], 1                      ; 21A5 _ 83. 7D, 1C, 01
        jnz     ?_112                                   ; 21A9 _ 75, 1B
        mov     eax, dword [ebp+24H]                    ; 21AB _ 8B. 45, 24
        movsx   eax, al                                 ; 21AE _ 0F BE. C0
        mov     dword [esp+4H], 1                       ; 21B1 _ C7. 44 24, 04, 00000001
        mov     dword [esp], eax                        ; 21B9 _ 89. 04 24
        call    _cons_putchar                           ; 21BC _ E8, 00000689
        jmp     ?_146                                   ; 21C1 _ E9, 00000678

?_112:  cmp     dword [ebp+1CH], 2                      ; 21C6 _ 83. 7D, 1C, 02
        jnz     ?_113                                   ; 21CA _ 75, 1D
        mov     eax, dword [ebp-10H]                    ; 21CC _ 8B. 45, F0
        mov     eax, dword [eax+0B0H]                   ; 21CF _ 8B. 80, 000000B0
        mov     edx, dword [eax]                        ; 21D5 _ 8B. 10
        mov     eax, dword [ebp+18H]                    ; 21D7 _ 8B. 45, 18
        add     eax, edx                                ; 21DA _ 01. D0
        mov     dword [esp], eax                        ; 21DC _ 89. 04 24
        call    _cons_putstr                            ; 21DF _ E8, FFFFFD1A
        jmp     ?_146                                   ; 21E4 _ E9, 00000655

?_113:  cmp     dword [ebp+1CH], 4                      ; 21E9 _ 83. 7D, 1C, 04
        jnz     ?_114                                   ; 21ED _ 75, 15
        mov     eax, dword [ebp-10H]                    ; 21EF _ 8B. 45, F0
        mov     dword [eax+34H], 0                      ; 21F2 _ C7. 40, 34, 00000000
        mov     eax, dword [ebp-10H]                    ; 21F9 _ 8B. 45, F0
        add     eax, 48                                 ; 21FC _ 83. C0, 30
        jmp     ?_147                                   ; 21FF _ E9, 0000063F

?_114:  cmp     dword [ebp+1CH], 5                      ; 2204 _ 83. 7D, 1C, 05
        jne     ?_115                                   ; 2208 _ 0F 85, 00000107
        mov     eax, dword [_shtctl]                    ; 220E _ A1, 00000264(d)
        mov     dword [esp], eax                        ; 2213 _ 89. 04 24
        call    _sheet_alloc                            ; 2216 _ E8, 00000000(rel)
        mov     dword [ebp-14H], eax                    ; 221B _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 221E _ 8B. 45, EC
        mov     edx, dword [ebp-10H]                    ; 2221 _ 8B. 55, F0
        mov     dword [eax+20H], edx                    ; 2224 _ 89. 50, 20
        mov     eax, dword [ebp-14H]                    ; 2227 _ 8B. 45, EC
        mov     eax, dword [eax+1CH]                    ; 222A _ 8B. 40, 1C
        or      eax, 10H                                ; 222D _ 83. C8, 10
        mov     edx, eax                                ; 2230 _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 2232 _ 8B. 45, EC
        mov     dword [eax+1CH], edx                    ; 2235 _ 89. 50, 1C
        mov     edx, dword [ebp+24H]                    ; 2238 _ 8B. 55, 24
        mov     eax, dword [ebp-10H]                    ; 223B _ 8B. 45, F0
        mov     eax, dword [eax+0B0H]                   ; 223E _ 8B. 80, 000000B0
        mov     ecx, dword [eax+4H]                     ; 2244 _ 8B. 48, 04
        mov     eax, dword [ebp+18H]                    ; 2247 _ 8B. 45, 18
        add     eax, ecx                                ; 224A _ 01. C8
        mov     dword [esp+10H], edx                    ; 224C _ 89. 54 24, 10
        mov     edx, dword [ebp+8H]                     ; 2250 _ 8B. 55, 08
        mov     dword [esp+0CH], edx                    ; 2253 _ 89. 54 24, 0C
        mov     edx, dword [ebp+0CH]                    ; 2257 _ 8B. 55, 0C
        mov     dword [esp+8H], edx                     ; 225A _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 225E _ 89. 44 24, 04
        mov     eax, dword [ebp-14H]                    ; 2262 _ 8B. 45, EC
        mov     dword [esp], eax                        ; 2265 _ 89. 04 24
        call    _sheet_setbuf                           ; 2268 _ E8, 00000000(rel)
        mov     eax, dword [ebp-10H]                    ; 226D _ 8B. 45, F0
        mov     eax, dword [eax+0B0H]                   ; 2270 _ 8B. 80, 000000B0
        mov     edx, dword [eax]                        ; 2276 _ 8B. 10
        mov     eax, dword [ebp+20H]                    ; 2278 _ 8B. 45, 20
        add     edx, eax                                ; 227B _ 01. C2
        mov     eax, dword [_shtctl]                    ; 227D _ A1, 00000264(d)
        mov     dword [esp+0CH], 0                      ; 2282 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], edx                     ; 228A _ 89. 54 24, 08
        mov     edx, dword [ebp-14H]                    ; 228E _ 8B. 55, EC
        mov     dword [esp+4H], edx                     ; 2291 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2295 _ 89. 04 24
        call    _make_window8                           ; 2298 _ E8, 00000000(rel)
        mov     eax, dword [_shtctl]                    ; 229D _ A1, 00000264(d)
        mov     eax, dword [eax+0CH]                    ; 22A2 _ 8B. 40, 0C
        sub     eax, dword [ebp+8H]                     ; 22A5 _ 2B. 45, 08
        mov     edx, eax                                ; 22A8 _ 89. C2
        shr     edx, 31                                 ; 22AA _ C1. EA, 1F
        add     eax, edx                                ; 22AD _ 01. D0
        sar     eax, 1                                  ; 22AF _ D1. F8
        mov     ecx, eax                                ; 22B1 _ 89. C1
        mov     eax, dword [_shtctl]                    ; 22B3 _ A1, 00000264(d)
        mov     eax, dword [eax+8H]                     ; 22B8 _ 8B. 40, 08
        sub     eax, dword [ebp+0CH]                    ; 22BB _ 2B. 45, 0C
        mov     edx, eax                                ; 22BE _ 89. C2
        shr     edx, 31                                 ; 22C0 _ C1. EA, 1F
        add     eax, edx                                ; 22C3 _ 01. D0
        sar     eax, 1                                  ; 22C5 _ D1. F8
        mov     edx, eax                                ; 22C7 _ 89. C2
        mov     eax, dword [_shtctl]                    ; 22C9 _ A1, 00000264(d)
        mov     dword [esp+0CH], ecx                    ; 22CE _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 22D2 _ 89. 54 24, 08
        mov     edx, dword [ebp-14H]                    ; 22D6 _ 8B. 55, EC
        mov     dword [esp+4H], edx                     ; 22D9 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 22DD _ 89. 04 24
        call    _sheet_slide                            ; 22E0 _ E8, 00000000(rel)
        mov     eax, dword [_shtctl]                    ; 22E5 _ A1, 00000264(d)
        mov     edx, dword [eax+10H]                    ; 22EA _ 8B. 50, 10
        mov     eax, dword [_shtctl]                    ; 22ED _ A1, 00000264(d)
        mov     dword [esp+8H], edx                     ; 22F2 _ 89. 54 24, 08
        mov     edx, dword [ebp-14H]                    ; 22F6 _ 8B. 55, EC
        mov     dword [esp+4H], edx                     ; 22F9 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 22FD _ 89. 04 24
        call    _sheet_updown                           ; 2300 _ E8, 00000000(rel)
        mov     eax, dword [ebp-18H]                    ; 2305 _ 8B. 45, E8
        add     eax, 28                                 ; 2308 _ 83. C0, 1C
        mov     edx, dword [ebp-14H]                    ; 230B _ 8B. 55, EC
        mov     dword [eax], edx                        ; 230E _ 89. 10
        jmp     ?_146                                   ; 2310 _ E9, 00000529

?_115:  cmp     dword [ebp+1CH], 6                      ; 2315 _ 83. 7D, 1C, 06
        jne     ?_116                                   ; 2319 _ 0F 85, 0000008D
        mov     eax, dword [ebp+18H]                    ; 231F _ 8B. 45, 18
        mov     dword [ebp-14H], eax                    ; 2322 _ 89. 45, EC
        mov     eax, dword [ebp-10H]                    ; 2325 _ 8B. 45, F0
        mov     eax, dword [eax+0B0H]                   ; 2328 _ 8B. 80, 000000B0
        mov     edx, dword [eax+4H]                     ; 232E _ 8B. 50, 04
        mov     eax, dword [ebp+10H]                    ; 2331 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 2334 _ 8D. 0C 02
        mov     eax, dword [ebp+24H]                    ; 2337 _ 8B. 45, 24
        movsx   eax, al                                 ; 233A _ 0F BE. C0
        mov     edx, dword [_shtctl]                    ; 233D _ 8B. 15, 00000264(d)
        mov     dword [esp+14H], ecx                    ; 2343 _ 89. 4C 24, 14
        mov     dword [esp+10H], eax                    ; 2347 _ 89. 44 24, 10
        mov     eax, dword [ebp+8H]                     ; 234B _ 8B. 45, 08
        mov     dword [esp+0CH], eax                    ; 234E _ 89. 44 24, 0C
        mov     eax, dword [ebp+0CH]                    ; 2352 _ 8B. 45, 0C
        mov     dword [esp+8H], eax                     ; 2355 _ 89. 44 24, 08
        mov     eax, dword [ebp-14H]                    ; 2359 _ 8B. 45, EC
        mov     dword [esp+4H], eax                     ; 235C _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 2360 _ 89. 14 24
        call    _showString                             ; 2363 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 2368 _ 8B. 45, 08
        lea     ecx, [eax+10H]                          ; 236B _ 8D. 48, 10
        mov     eax, dword [ebp+20H]                    ; 236E _ 8B. 45, 20
        lea     edx, [eax*8]                            ; 2371 _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp+0CH]                    ; 2378 _ 8B. 45, 0C
        add     edx, eax                                ; 237B _ 01. C2
        mov     eax, dword [_shtctl]                    ; 237D _ A1, 00000264(d)
        mov     dword [esp+14H], ecx                    ; 2382 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 2386 _ 89. 54 24, 10
        mov     edx, dword [ebp+8H]                     ; 238A _ 8B. 55, 08
        mov     dword [esp+0CH], edx                    ; 238D _ 89. 54 24, 0C
        mov     edx, dword [ebp+0CH]                    ; 2391 _ 8B. 55, 0C
        mov     dword [esp+8H], edx                     ; 2394 _ 89. 54 24, 08
        mov     edx, dword [ebp-14H]                    ; 2398 _ 8B. 55, EC
        mov     dword [esp+4H], edx                     ; 239B _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 239F _ 89. 04 24
        call    _sheet_refresh                          ; 23A2 _ E8, 00000000(rel)
        jmp     ?_146                                   ; 23A7 _ E9, 00000492

?_116:  cmp     dword [ebp+1CH], 7                      ; 23AC _ 83. 7D, 1C, 07
        jnz     ?_117                                   ; 23B0 _ 75, 7E
        mov     eax, dword [ebp+18H]                    ; 23B2 _ 8B. 45, 18
        mov     dword [ebp-14H], eax                    ; 23B5 _ 89. 45, EC
        mov     ebx, dword [ebp+24H]                    ; 23B8 _ 8B. 5D, 24
        mov     eax, dword [ebp+10H]                    ; 23BB _ 8B. 45, 10
        movzx   eax, al                                 ; 23BE _ 0F B6. C0
        mov     edx, dword [ebp-14H]                    ; 23C1 _ 8B. 55, EC
        mov     ecx, dword [edx+4H]                     ; 23C4 _ 8B. 4A, 04
        mov     edx, dword [ebp-14H]                    ; 23C7 _ 8B. 55, EC
        mov     edx, dword [edx]                        ; 23CA _ 8B. 12
        mov     esi, dword [ebp+8H]                     ; 23CC _ 8B. 75, 08
        mov     dword [esp+18H], esi                    ; 23CF _ 89. 74 24, 18
        mov     esi, dword [ebp+0CH]                    ; 23D3 _ 8B. 75, 0C
        mov     dword [esp+14H], esi                    ; 23D6 _ 89. 74 24, 14
        mov     esi, dword [ebp+20H]                    ; 23DA _ 8B. 75, 20
        mov     dword [esp+10H], esi                    ; 23DD _ 89. 74 24, 10
        mov     dword [esp+0CH], ebx                    ; 23E1 _ 89. 5C 24, 0C
        mov     dword [esp+8H], eax                     ; 23E5 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 23E9 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 23ED _ 89. 14 24
        call    _boxfill8                               ; 23F0 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 23F5 _ 8B. 45, 08
        lea     ebx, [eax+1H]                           ; 23F8 _ 8D. 58, 01
        mov     eax, dword [ebp+0CH]                    ; 23FB _ 8B. 45, 0C
        lea     ecx, [eax+1H]                           ; 23FE _ 8D. 48, 01
        mov     edx, dword [ebp+24H]                    ; 2401 _ 8B. 55, 24
        mov     eax, dword [_shtctl]                    ; 2404 _ A1, 00000264(d)
        mov     dword [esp+14H], ebx                    ; 2409 _ 89. 5C 24, 14
        mov     dword [esp+10H], ecx                    ; 240D _ 89. 4C 24, 10
        mov     ecx, dword [ebp+20H]                    ; 2411 _ 8B. 4D, 20
        mov     dword [esp+0CH], ecx                    ; 2414 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 2418 _ 89. 54 24, 08
        mov     edx, dword [ebp-14H]                    ; 241C _ 8B. 55, EC
        mov     dword [esp+4H], edx                     ; 241F _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2423 _ 89. 04 24
        call    _sheet_refresh                          ; 2426 _ E8, 00000000(rel)
        jmp     ?_146                                   ; 242B _ E9, 0000040E

?_117:  cmp     dword [ebp+1CH], 11                     ; 2430 _ 83. 7D, 1C, 0B
        jnz     ?_118                                   ; 2434 _ 75, 28
        mov     eax, dword [ebp+18H]                    ; 2436 _ 8B. 45, 18
        mov     dword [ebp-14H], eax                    ; 2439 _ 89. 45, EC
        mov     ebx, dword [ebp+24H]                    ; 243C _ 8B. 5D, 24
        mov     eax, dword [ebp-14H]                    ; 243F _ 8B. 45, EC
        mov     edx, dword [eax]                        ; 2442 _ 8B. 10
        mov     eax, dword [ebp-14H]                    ; 2444 _ 8B. 45, EC
        mov     eax, dword [eax+4H]                     ; 2447 _ 8B. 40, 04
        imul    eax, dword [ebp+8H]                     ; 244A _ 0F AF. 45, 08
        mov     ecx, dword [ebp+0CH]                    ; 244E _ 8B. 4D, 0C
        add     eax, ecx                                ; 2451 _ 01. C8
        add     eax, edx                                ; 2453 _ 01. D0
        mov     edx, ebx                                ; 2455 _ 89. DA
        mov     byte [eax], dl                          ; 2457 _ 88. 10
        jmp     ?_146                                   ; 2459 _ E9, 000003E0

?_118:  cmp     dword [ebp+1CH], 12                     ; 245E _ 83. 7D, 1C, 0C
        jnz     ?_119                                   ; 2462 _ 75, 3B
        mov     eax, dword [ebp+18H]                    ; 2464 _ 8B. 45, 18
        mov     dword [ebp-14H], eax                    ; 2467 _ 89. 45, EC
        mov     edx, dword [ebp+24H]                    ; 246A _ 8B. 55, 24
        mov     eax, dword [_shtctl]                    ; 246D _ A1, 00000264(d)
        mov     ecx, dword [ebp+8H]                     ; 2472 _ 8B. 4D, 08
        mov     dword [esp+14H], ecx                    ; 2475 _ 89. 4C 24, 14
        mov     ecx, dword [ebp+0CH]                    ; 2479 _ 8B. 4D, 0C
        mov     dword [esp+10H], ecx                    ; 247C _ 89. 4C 24, 10
        mov     ecx, dword [ebp+20H]                    ; 2480 _ 8B. 4D, 20
        mov     dword [esp+0CH], ecx                    ; 2483 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 2487 _ 89. 54 24, 08
        mov     edx, dword [ebp-14H]                    ; 248B _ 8B. 55, EC
        mov     dword [esp+4H], edx                     ; 248E _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2492 _ 89. 04 24
        call    _sheet_refresh                          ; 2495 _ E8, 00000000(rel)
        jmp     ?_146                                   ; 249A _ E9, 0000039F

?_119:  cmp     dword [ebp+1CH], 13                     ; 249F _ 83. 7D, 1C, 0D
        jnz     ?_120                                   ; 24A3 _ 75, 39
        mov     eax, dword [ebp+18H]                    ; 24A5 _ 8B. 45, 18
        mov     dword [ebp-14H], eax                    ; 24A8 _ 89. 45, EC
        mov     eax, dword [ebp+24H]                    ; 24AB _ 8B. 45, 24
        mov     edx, dword [ebp+10H]                    ; 24AE _ 8B. 55, 10
        mov     dword [esp+14H], edx                    ; 24B1 _ 89. 54 24, 14
        mov     edx, dword [ebp+8H]                     ; 24B5 _ 8B. 55, 08
        mov     dword [esp+10H], edx                    ; 24B8 _ 89. 54 24, 10
        mov     edx, dword [ebp+0CH]                    ; 24BC _ 8B. 55, 0C
        mov     dword [esp+0CH], edx                    ; 24BF _ 89. 54 24, 0C
        mov     edx, dword [ebp+20H]                    ; 24C3 _ 8B. 55, 20
        mov     dword [esp+8H], edx                     ; 24C6 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 24CA _ 89. 44 24, 04
        mov     eax, dword [ebp-14H]                    ; 24CE _ 8B. 45, EC
        mov     dword [esp], eax                        ; 24D1 _ 89. 04 24
        call    _api_linewin                            ; 24D4 _ E8, FFFFFA57
        jmp     ?_146                                   ; 24D9 _ E9, 00000360

?_120:  cmp     dword [ebp+1CH], 14                     ; 24DE _ 83. 7D, 1C, 0E
        jnz     ?_121                                   ; 24E2 _ 75, 32
        mov     edx, dword [ebp+18H]                    ; 24E4 _ 8B. 55, 18
        mov     eax, dword [_shtctl]                    ; 24E7 _ A1, 00000264(d)
        mov     dword [esp+4H], edx                     ; 24EC _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 24F0 _ 89. 04 24
        call    _sheet_free                             ; 24F3 _ E8, 00000000(rel)
        mov     eax, dword [ebp-10H]                    ; 24F8 _ 8B. 45, F0
        mov     eax, dword [eax+0B0H]                   ; 24FB _ 8B. 80, 000000B0
        mov     eax, dword [eax+4H]                     ; 2501 _ 8B. 40, 04
        add     eax, 291                                ; 2504 _ 05, 00000123
        mov     dword [esp], eax                        ; 2509 _ 89. 04 24
        call    _cons_putstr                            ; 250C _ E8, FFFFF9ED
        jmp     ?_146                                   ; 2511 _ E9, 00000328

?_121:  cmp     dword [ebp+1CH], 15                     ; 2516 _ 83. 7D, 1C, 0F
        jnz     ?_122                                   ; 251A _ 75, 1E
        mov     eax, dword [ebp+24H]                    ; 251C _ 8B. 45, 24
        mov     edx, dword [ebp-18H]                    ; 251F _ 8B. 55, E8
        mov     dword [esp+8H], edx                     ; 2522 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 2526 _ 89. 44 24, 04
        mov     eax, dword [ebp-10H]                    ; 252A _ 8B. 45, F0
        mov     dword [esp], eax                        ; 252D _ 89. 04 24
        call    _handle_keyboard                        ; 2530 _ E8, FFFFFB2C
        jmp     ?_146                                   ; 2535 _ E9, 00000304

?_122:  cmp     dword [ebp+1CH], 16                     ; 253A _ 83. 7D, 1C, 10
        jnz     ?_123                                   ; 253E _ 75, 14
        call    _timer_alloc                            ; 2540 _ E8, 00000000(rel)
        mov     edx, eax                                ; 2545 _ 89. C2
        mov     eax, dword [ebp-18H]                    ; 2547 _ 8B. 45, E8
        add     eax, 28                                 ; 254A _ 83. C0, 1C
        mov     dword [eax], edx                        ; 254D _ 89. 10
        jmp     ?_146                                   ; 254F _ E9, 000002EA

?_123:  cmp     dword [ebp+1CH], 17                     ; 2554 _ 83. 7D, 1C, 11
        jnz     ?_124                                   ; 2558 _ 75, 24
        mov     eax, dword [ebp+24H]                    ; 255A _ 8B. 45, 24
        movzx   eax, al                                 ; 255D _ 0F B6. C0
        mov     edx, dword [ebp-10H]                    ; 2560 _ 8B. 55, F0
        lea     ecx, [edx+10H]                          ; 2563 _ 8D. 4A, 10
        mov     edx, dword [ebp+18H]                    ; 2566 _ 8B. 55, 18
        mov     dword [esp+8H], eax                     ; 2569 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 256D _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 2571 _ 89. 14 24
        call    _timer_init                             ; 2574 _ E8, 00000000(rel)
        jmp     ?_146                                   ; 2579 _ E9, 000002C0

?_124:  cmp     dword [ebp+1CH], 18                     ; 257E _ 83. 7D, 1C, 12
        jnz     ?_125                                   ; 2582 _ 75, 19
        mov     eax, dword [ebp+24H]                    ; 2584 _ 8B. 45, 24
        mov     edx, eax                                ; 2587 _ 89. C2
        mov     eax, dword [ebp+18H]                    ; 2589 _ 8B. 45, 18
        mov     dword [esp+4H], edx                     ; 258C _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2590 _ 89. 04 24
        call    _timer_settime                          ; 2593 _ E8, 00000000(rel)
        jmp     ?_146                                   ; 2598 _ E9, 000002A1

?_125:  cmp     dword [ebp+1CH], 19                     ; 259D _ 83. 7D, 1C, 13
        jnz     ?_126                                   ; 25A1 _ 75, 10
        mov     eax, dword [ebp+18H]                    ; 25A3 _ 8B. 45, 18
        mov     dword [esp], eax                        ; 25A6 _ 89. 04 24
        call    _timer_free                             ; 25A9 _ E8, 00000000(rel)
        jmp     ?_146                                   ; 25AE _ E9, 0000028B

?_126:  cmp     dword [ebp+1CH], 21                     ; 25B3 _ 83. 7D, 1C, 15
        jne     ?_131                                   ; 25B7 _ 0F 85, 000000C5
        mov     dword [ebp-0CH], 0                      ; 25BD _ C7. 45, F4, 00000000
        jmp     ?_128                                   ; 25C4 _ EB, 21

?_127:  mov     eax, dword [ebp-10H]                    ; 25C6 _ 8B. 45, F0
        mov     ecx, dword [eax+0CCH]                   ; 25C9 _ 8B. 88, 000000CC
        mov     edx, dword [ebp-0CH]                    ; 25CF _ 8B. 55, F4
        mov     eax, edx                                ; 25D2 _ 89. D0
        add     eax, eax                                ; 25D4 _ 01. C0
        add     eax, edx                                ; 25D6 _ 01. D0
        shl     eax, 2                                  ; 25D8 _ C1. E0, 02
        add     eax, ecx                                ; 25DB _ 01. C8
        mov     eax, dword [eax]                        ; 25DD _ 8B. 00
        test    eax, eax                                ; 25DF _ 85. C0
        jz      ?_129                                   ; 25E1 _ 74, 0C
        add     dword [ebp-0CH], 1                      ; 25E3 _ 83. 45, F4, 01
?_128:  cmp     dword [ebp-0CH], 7                      ; 25E7 _ 83. 7D, F4, 07
        jle     ?_127                                   ; 25EB _ 7E, D9
        jmp     ?_130                                   ; 25ED _ EB, 01

?_129:  nop                                             ; 25EF _ 90
?_130:  mov     eax, dword [ebp-10H]                    ; 25F0 _ 8B. 45, F0
        mov     ecx, dword [eax+0CCH]                   ; 25F3 _ 8B. 88, 000000CC
        mov     edx, dword [ebp-0CH]                    ; 25F9 _ 8B. 55, F4
        mov     eax, edx                                ; 25FC _ 89. D0
        add     eax, eax                                ; 25FE _ 01. C0
        add     eax, edx                                ; 2600 _ 01. D0
        shl     eax, 2                                  ; 2602 _ C1. E0, 02
        add     eax, ecx                                ; 2605 _ 01. C8
        mov     dword [ebp-1CH], eax                    ; 2607 _ 89. 45, E4
        mov     eax, dword [ebp-18H]                    ; 260A _ 8B. 45, E8
        add     eax, 28                                 ; 260D _ 83. C0, 1C
        mov     dword [eax], 0                          ; 2610 _ C7. 00, 00000000
        cmp     dword [ebp-0CH], 7                      ; 2616 _ 83. 7D, F4, 07
        jg      ?_146                                   ; 261A _ 0F 8F, 0000021E
        mov     dword [ebp-2CH], 0                      ; 2620 _ C7. 45, D4, 00000000
        mov     eax, dword [ebp-10H]                    ; 2627 _ 8B. 45, F0
        mov     eax, dword [eax+0B0H]                   ; 262A _ 8B. 80, 000000B0
        mov     edx, dword [eax]                        ; 2630 _ 8B. 10
        mov     eax, dword [ebp+18H]                    ; 2632 _ 8B. 45, 18
        add     eax, edx                                ; 2635 _ 01. D0
        mov     dword [ebp-20H], eax                    ; 2637 _ 89. 45, E0
        lea     eax, [ebp-2CH]                          ; 263A _ 8D. 45, D4
        mov     dword [esp+4H], eax                     ; 263D _ 89. 44 24, 04
        mov     eax, dword [ebp-20H]                    ; 2641 _ 8B. 45, E0
        mov     dword [esp], eax                        ; 2644 _ 89. 04 24
        call    _file_loadfile                          ; 2647 _ E8, 00000000(rel)
        mov     eax, dword [ebp-2CH]                    ; 264C _ 8B. 45, D4
        test    eax, eax                                ; 264F _ 85. C0
        je      ?_146                                   ; 2651 _ 0F 84, 000001E7
        mov     eax, dword [ebp-18H]                    ; 2657 _ 8B. 45, E8
        add     eax, 28                                 ; 265A _ 83. C0, 1C
        mov     edx, dword [ebp-1CH]                    ; 265D _ 8B. 55, E4
        mov     dword [eax], edx                        ; 2660 _ 89. 10
        mov     edx, dword [ebp-2CH]                    ; 2662 _ 8B. 55, D4
        mov     eax, dword [ebp-1CH]                    ; 2665 _ 8B. 45, E4
        mov     dword [eax], edx                        ; 2668 _ 89. 10
        mov     edx, dword [ebp-24H]                    ; 266A _ 8B. 55, DC
        mov     eax, dword [ebp-1CH]                    ; 266D _ 8B. 45, E4
        mov     dword [eax+4H], edx                     ; 2670 _ 89. 50, 04
        mov     eax, dword [ebp-1CH]                    ; 2673 _ 8B. 45, E4
        mov     dword [eax+8H], 0                       ; 2676 _ C7. 40, 08, 00000000
        jmp     ?_146                                   ; 267D _ E9, 000001BC

?_131:  cmp     dword [ebp+1CH], 22                     ; 2682 _ 83. 7D, 1C, 16
        jnz     ?_132                                   ; 2686 _ 75, 38
        mov     eax, dword [ebp+24H]                    ; 2688 _ 8B. 45, 24
        mov     dword [ebp-1CH], eax                    ; 268B _ 89. 45, E4
        mov     eax, dword [ebp-1CH]                    ; 268E _ 8B. 45, E4
        mov     eax, dword [eax+4H]                     ; 2691 _ 8B. 40, 04
        mov     ecx, eax                                ; 2694 _ 89. C1
        mov     eax, dword [ebp-1CH]                    ; 2696 _ 8B. 45, E4
        mov     eax, dword [eax]                        ; 2699 _ 8B. 00
        mov     edx, eax                                ; 269B _ 89. C2
        mov     eax, dword [_memman]                    ; 269D _ A1, 00000000(d)
        mov     dword [esp+8H], ecx                     ; 26A2 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 26A6 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 26AA _ 89. 04 24
        call    _memman_free_4k                         ; 26AD _ E8, 00000000(rel)
        mov     eax, dword [ebp-1CH]                    ; 26B2 _ 8B. 45, E4
        mov     dword [eax], 0                          ; 26B5 _ C7. 00, 00000000
        jmp     ?_146                                   ; 26BB _ E9, 0000017E

?_132:  cmp     dword [ebp+1CH], 23                     ; 26C0 _ 83. 7D, 1C, 17
        jne     ?_137                                   ; 26C4 _ 0F 85, 00000080
        mov     eax, dword [ebp+24H]                    ; 26CA _ 8B. 45, 24
        mov     dword [ebp-1CH], eax                    ; 26CD _ 89. 45, E4
        cmp     dword [ebp+20H], 0                      ; 26D0 _ 83. 7D, 20, 00
        jnz     ?_133                                   ; 26D4 _ 75, 0B
        mov     eax, dword [ebp-1CH]                    ; 26D6 _ 8B. 45, E4
        mov     edx, dword [ebp+18H]                    ; 26D9 _ 8B. 55, 18
        mov     dword [eax+8H], edx                     ; 26DC _ 89. 50, 08
        jmp     ?_135                                   ; 26DF _ EB, 30

?_133:  cmp     dword [ebp+20H], 1                      ; 26E1 _ 83. 7D, 20, 01
        jnz     ?_134                                   ; 26E5 _ 75, 13
        mov     eax, dword [ebp-1CH]                    ; 26E7 _ 8B. 45, E4
        mov     edx, dword [eax+8H]                     ; 26EA _ 8B. 50, 08
        mov     eax, dword [ebp+18H]                    ; 26ED _ 8B. 45, 18
        add     edx, eax                                ; 26F0 _ 01. C2
        mov     eax, dword [ebp-1CH]                    ; 26F2 _ 8B. 45, E4
        mov     dword [eax+8H], edx                     ; 26F5 _ 89. 50, 08
        jmp     ?_135                                   ; 26F8 _ EB, 17

?_134:  cmp     dword [ebp+20H], 2                      ; 26FA _ 83. 7D, 20, 02
        jnz     ?_135                                   ; 26FE _ 75, 11
        mov     eax, dword [ebp-1CH]                    ; 2700 _ 8B. 45, E4
        mov     edx, dword [eax+4H]                     ; 2703 _ 8B. 50, 04
        mov     eax, dword [ebp+18H]                    ; 2706 _ 8B. 45, 18
        add     edx, eax                                ; 2709 _ 01. C2
        mov     eax, dword [ebp-1CH]                    ; 270B _ 8B. 45, E4
        mov     dword [eax+8H], edx                     ; 270E _ 89. 50, 08
?_135:  mov     eax, dword [ebp-1CH]                    ; 2711 _ 8B. 45, E4
        mov     eax, dword [eax+8H]                     ; 2714 _ 8B. 40, 08
        test    eax, eax                                ; 2717 _ 85. C0
        jns     ?_136                                   ; 2719 _ 79, 0A
        mov     eax, dword [ebp-1CH]                    ; 271B _ 8B. 45, E4
        mov     dword [eax+8H], 0                       ; 271E _ C7. 40, 08, 00000000
?_136:  mov     eax, dword [ebp-1CH]                    ; 2725 _ 8B. 45, E4
        mov     edx, dword [eax+8H]                     ; 2728 _ 8B. 50, 08
        mov     eax, dword [ebp-1CH]                    ; 272B _ 8B. 45, E4
        mov     eax, dword [eax+4H]                     ; 272E _ 8B. 40, 04
        cmp     edx, eax                                ; 2731 _ 39. C2
        jle     ?_146                                   ; 2733 _ 0F 8E, 00000105
        mov     eax, dword [ebp-1CH]                    ; 2739 _ 8B. 45, E4
        mov     edx, dword [eax+4H]                     ; 273C _ 8B. 50, 04
        mov     eax, dword [ebp-1CH]                    ; 273F _ 8B. 45, E4
        mov     dword [eax+8H], edx                     ; 2742 _ 89. 50, 08
        jmp     ?_146                                   ; 2745 _ E9, 000000F4

?_137:  cmp     dword [ebp+1CH], 24                     ; 274A _ 83. 7D, 1C, 18
        jnz     ?_140                                   ; 274E _ 75, 5F
        mov     eax, dword [ebp+24H]                    ; 2750 _ 8B. 45, 24
        mov     dword [ebp-1CH], eax                    ; 2753 _ 89. 45, E4
        cmp     dword [ebp+20H], 0                      ; 2756 _ 83. 7D, 20, 00
        jnz     ?_138                                   ; 275A _ 75, 13
        mov     eax, dword [ebp-18H]                    ; 275C _ 8B. 45, E8
        add     eax, 28                                 ; 275F _ 83. C0, 1C
        mov     edx, dword [ebp-1CH]                    ; 2762 _ 8B. 55, E4
        mov     edx, dword [edx+4H]                     ; 2765 _ 8B. 52, 04
        mov     dword [eax], edx                        ; 2768 _ 89. 10
        jmp     ?_146                                   ; 276A _ E9, 000000CF

?_138:  cmp     dword [ebp+20H], 1                      ; 276F _ 83. 7D, 20, 01
        jnz     ?_139                                   ; 2773 _ 75, 13
        mov     eax, dword [ebp-18H]                    ; 2775 _ 8B. 45, E8
        add     eax, 28                                 ; 2778 _ 83. C0, 1C
        mov     edx, dword [ebp-1CH]                    ; 277B _ 8B. 55, E4
        mov     edx, dword [edx+8H]                     ; 277E _ 8B. 52, 08
        mov     dword [eax], edx                        ; 2781 _ 89. 10
        jmp     ?_146                                   ; 2783 _ E9, 000000B6

?_139:  cmp     dword [ebp+20H], 2                      ; 2788 _ 83. 7D, 20, 02
        jne     ?_146                                   ; 278C _ 0F 85, 000000AC
        mov     eax, dword [ebp-1CH]                    ; 2792 _ 8B. 45, E4
        mov     ecx, dword [eax+8H]                     ; 2795 _ 8B. 48, 08
        mov     eax, dword [ebp-1CH]                    ; 2798 _ 8B. 45, E4
        mov     edx, dword [eax+4H]                     ; 279B _ 8B. 50, 04
        mov     eax, dword [ebp-18H]                    ; 279E _ 8B. 45, E8
        add     eax, 28                                 ; 27A1 _ 83. C0, 1C
        sub     ecx, edx                                ; 27A4 _ 29. D1
        mov     edx, ecx                                ; 27A6 _ 89. CA
        mov     dword [eax], edx                        ; 27A8 _ 89. 10
        jmp     ?_146                                   ; 27AA _ E9, 0000008F

?_140:  cmp     dword [ebp+1CH], 25                     ; 27AF _ 83. 7D, 1C, 19
        jnz     ?_145                                   ; 27B3 _ 75, 72
        mov     eax, dword [ebp+24H]                    ; 27B5 _ 8B. 45, 24
        mov     dword [ebp-1CH], eax                    ; 27B8 _ 89. 45, E4
        mov     dword [ebp-0CH], 0                      ; 27BB _ C7. 45, F4, 00000000
        jmp     ?_142                                   ; 27C2 _ EB, 4B

?_141:  mov     eax, dword [ebp-1CH]                    ; 27C4 _ 8B. 45, E4
        mov     edx, dword [eax+8H]                     ; 27C7 _ 8B. 50, 08
        mov     eax, dword [ebp-1CH]                    ; 27CA _ 8B. 45, E4
        mov     eax, dword [eax+4H]                     ; 27CD _ 8B. 40, 04
        cmp     edx, eax                                ; 27D0 _ 39. C2
        jz      ?_143                                   ; 27D2 _ 74, 45
        mov     eax, dword [ebp-1CH]                    ; 27D4 _ 8B. 45, E4
        mov     edx, dword [eax]                        ; 27D7 _ 8B. 10
        mov     eax, dword [ebp-1CH]                    ; 27D9 _ 8B. 45, E4
        mov     eax, dword [eax+8H]                     ; 27DC _ 8B. 40, 08
        add     eax, edx                                ; 27DF _ 01. D0
        mov     edx, dword [ebp-10H]                    ; 27E1 _ 8B. 55, F0
        mov     edx, dword [edx+0B0H]                   ; 27E4 _ 8B. 92, 000000B0
        mov     ecx, dword [edx+4H]                     ; 27EA _ 8B. 4A, 04
        mov     ebx, dword [ebp+18H]                    ; 27ED _ 8B. 5D, 18
        mov     edx, dword [ebp-0CH]                    ; 27F0 _ 8B. 55, F4
        add     edx, ebx                                ; 27F3 _ 01. DA
        add     edx, ecx                                ; 27F5 _ 01. CA
        movzx   eax, byte [eax]                         ; 27F7 _ 0F B6. 00
        mov     byte [edx], al                          ; 27FA _ 88. 02
        mov     eax, dword [ebp-1CH]                    ; 27FC _ 8B. 45, E4
        mov     eax, dword [eax+8H]                     ; 27FF _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 2802 _ 8D. 50, 01
        mov     eax, dword [ebp-1CH]                    ; 2805 _ 8B. 45, E4
        mov     dword [eax+8H], edx                     ; 2808 _ 89. 50, 08
        add     dword [ebp-0CH], 1                      ; 280B _ 83. 45, F4, 01
?_142:  mov     eax, dword [ebp-0CH]                    ; 280F _ 8B. 45, F4
        cmp     eax, dword [ebp+20H]                    ; 2812 _ 3B. 45, 20
        jl      ?_141                                   ; 2815 _ 7C, AD
        jmp     ?_144                                   ; 2817 _ EB, 01

?_143:  nop                                             ; 2819 _ 90
?_144:  mov     eax, dword [ebp-18H]                    ; 281A _ 8B. 45, E8
        add     eax, 28                                 ; 281D _ 83. C0, 1C
        mov     edx, dword [ebp-0CH]                    ; 2820 _ 8B. 55, F4
        mov     dword [eax], edx                        ; 2823 _ 89. 10
        jmp     ?_146                                   ; 2825 _ EB, 17

?_145:  cmp     dword [ebp+1CH], 26                     ; 2827 _ 83. 7D, 1C, 1A
        jnz     ?_146                                   ; 282B _ 75, 11
        mov     eax, dword [ebp-10H]                    ; 282D _ 8B. 45, F0
        mov     edx, dword [eax+0ACH]                   ; 2830 _ 8B. 90, 000000AC
        mov     eax, dword [ebp-18H]                    ; 2836 _ 8B. 45, E8
        add     eax, 28                                 ; 2839 _ 83. C0, 1C
        mov     dword [eax], edx                        ; 283C _ 89. 10
?_146:  mov     eax, 0                                  ; 283E _ B8, 00000000
?_147:  add     esp, 80                                 ; 2843 _ 83. C4, 50
        pop     ebx                                     ; 2846 _ 5B
        pop     esi                                     ; 2847 _ 5E
        pop     ebp                                     ; 2848 _ 5D
        ret                                             ; 2849 _ C3
; _kernel_api End of function

_cons_putchar:; Function begin
        push    ebp                                     ; 284A _ 55
        mov     ebp, esp                                ; 284B _ 89. E5
        push    esi                                     ; 284D _ 56
        push    ebx                                     ; 284E _ 53
        sub     esp, 64                                 ; 284F _ 83. EC, 40
        mov     eax, dword [ebp+8H]                     ; 2852 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 2855 _ 8B. 55, 0C
        mov     byte [ebp-1CH], al                      ; 2858 _ 88. 45, E4
        mov     eax, edx                                ; 285B _ 89. D0
        mov     byte [ebp-20H], al                      ; 285D _ 88. 45, E0
        call    _task_now                               ; 2860 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 2865 _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 2868 _ 8B. 45, F4
        mov     ebx, dword [eax+9CH]                    ; 286B _ 8B. 98, 0000009C
        mov     eax, dword [ebp-0CH]                    ; 2871 _ 8B. 45, F4
        mov     ecx, dword [eax+98H]                    ; 2874 _ 8B. 88, 00000098
        mov     eax, dword [ebp-0CH]                    ; 287A _ 8B. 45, F4
        mov     edx, dword [eax+94H]                    ; 287D _ 8B. 90, 00000094
        mov     eax, dword [_shtctl]                    ; 2883 _ A1, 00000264(d)
        mov     dword [esp+10H], 0                      ; 2888 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], ebx                    ; 2890 _ 89. 5C 24, 0C
        mov     dword [esp+8H], ecx                     ; 2894 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 2898 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 289C _ 89. 04 24
        call    _set_cursor                             ; 289F _ E8, 00000000(rel)
        mov     edx, dword [ebp-0CH]                    ; 28A4 _ 8B. 55, F4
        movzx   eax, byte [ebp-1CH]                     ; 28A7 _ 0F B6. 45, E4
        mov     byte [edx+0A4H], al                     ; 28AB _ 88. 82, 000000A4
        mov     eax, dword [ebp-0CH]                    ; 28B1 _ 8B. 45, F4
        mov     byte [eax+0A5H], 0                      ; 28B4 _ C6. 80, 000000A5, 00
        mov     eax, dword [ebp-0CH]                    ; 28BB _ 8B. 45, F4
        lea     esi, [eax+0A4H]                         ; 28BE _ 8D. B0, 000000A4
        mov     eax, dword [ebp-0CH]                    ; 28C4 _ 8B. 45, F4
        mov     ebx, dword [eax+9CH]                    ; 28C7 _ 8B. 98, 0000009C
        mov     eax, dword [ebp-0CH]                    ; 28CD _ 8B. 45, F4
        mov     ecx, dword [eax+98H]                    ; 28D0 _ 8B. 88, 00000098
        mov     eax, dword [ebp-0CH]                    ; 28D6 _ 8B. 45, F4
        mov     edx, dword [eax+94H]                    ; 28D9 _ 8B. 90, 00000094
        mov     eax, dword [_shtctl]                    ; 28DF _ A1, 00000264(d)
        mov     dword [esp+14H], esi                    ; 28E4 _ 89. 74 24, 14
        mov     dword [esp+10H], 7                      ; 28E8 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ebx                    ; 28F0 _ 89. 5C 24, 0C
        mov     dword [esp+8H], ecx                     ; 28F4 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 28F8 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 28FC _ 89. 04 24
        call    _showString                             ; 28FF _ E8, 00000000(rel)
        mov     eax, dword [ebp-0CH]                    ; 2904 _ 8B. 45, F4
        mov     eax, dword [eax+98H]                    ; 2907 _ 8B. 80, 00000098
        lea     edx, [eax+8H]                           ; 290D _ 8D. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 2910 _ 8B. 45, F4
        mov     dword [eax+98H], edx                    ; 2913 _ 89. 90, 00000098
        nop                                             ; 2919 _ 90
        add     esp, 64                                 ; 291A _ 83. C4, 40
        pop     ebx                                     ; 291D _ 5B
        pop     esi                                     ; 291E _ 5E
        pop     ebp                                     ; 291F _ 5D
        ret                                             ; 2920 _ C3
; _cons_putchar End of function

_cons_newline:; Function begin
        push    ebp                                     ; 2921 _ 55
        mov     ebp, esp                                ; 2922 _ 89. E5
        push    ebx                                     ; 2924 _ 53
        sub     esp, 52                                 ; 2925 _ 83. EC, 34
        cmp     dword [ebp+0CH], 0                      ; 2928 _ 83. 7D, 0C, 00
        je      ?_158                                   ; 292C _ 0F 84, 00000125
        cmp     dword [ebp+8H], 139                     ; 2932 _ 81. 7D, 08, 0000008B
        jg      ?_148                                   ; 2939 _ 7F, 09
        add     dword [ebp+8H], 16                      ; 293B _ 83. 45, 08, 10
        jmp     ?_157                                   ; 293F _ E9, 000000DB

?_148:  mov     dword [ebp-10H], 28                     ; 2944 _ C7. 45, F0, 0000001C
        jmp     ?_152                                   ; 294B _ EB, 50

?_149:  mov     dword [ebp-0CH], 8                      ; 294D _ C7. 45, F4, 00000008
        jmp     ?_151                                   ; 2954 _ EB, 3A

?_150:  mov     eax, dword [ebp+0CH]                    ; 2956 _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 2959 _ 8B. 10
        mov     eax, dword [ebp-10H]                    ; 295B _ 8B. 45, F0
        lea     ecx, [eax+10H]                          ; 295E _ 8D. 48, 10
        mov     eax, dword [ebp+0CH]                    ; 2961 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2964 _ 8B. 40, 04
        imul    eax, ecx                                ; 2967 _ 0F AF. C1
        mov     ecx, dword [ebp-0CH]                    ; 296A _ 8B. 4D, F4
        add     eax, ecx                                ; 296D _ 01. C8
        add     eax, edx                                ; 296F _ 01. D0
        mov     edx, dword [ebp+0CH]                    ; 2971 _ 8B. 55, 0C
        mov     ecx, dword [edx]                        ; 2974 _ 8B. 0A
        mov     edx, dword [ebp+0CH]                    ; 2976 _ 8B. 55, 0C
        mov     edx, dword [edx+4H]                     ; 2979 _ 8B. 52, 04
        imul    edx, dword [ebp-10H]                    ; 297C _ 0F AF. 55, F0
        mov     ebx, dword [ebp-0CH]                    ; 2980 _ 8B. 5D, F4
        add     edx, ebx                                ; 2983 _ 01. DA
        add     edx, ecx                                ; 2985 _ 01. CA
        movzx   eax, byte [eax]                         ; 2987 _ 0F B6. 00
        mov     byte [edx], al                          ; 298A _ 88. 02
        add     dword [ebp-0CH], 1                      ; 298C _ 83. 45, F4, 01
?_151:  cmp     dword [ebp-0CH], 247                    ; 2990 _ 81. 7D, F4, 000000F7
        jle     ?_150                                   ; 2997 _ 7E, BD
        add     dword [ebp-10H], 1                      ; 2999 _ 83. 45, F0, 01
?_152:  cmp     dword [ebp-10H], 139                    ; 299D _ 81. 7D, F0, 0000008B
        jle     ?_149                                   ; 29A4 _ 7E, A7
        mov     dword [ebp-10H], 140                    ; 29A6 _ C7. 45, F0, 0000008C
        jmp     ?_156                                   ; 29AD _ EB, 33

?_153:  mov     dword [ebp-0CH], 8                      ; 29AF _ C7. 45, F4, 00000008
        jmp     ?_155                                   ; 29B6 _ EB, 1D

?_154:  mov     eax, dword [ebp+0CH]                    ; 29B8 _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 29BB _ 8B. 10
        mov     eax, dword [ebp+0CH]                    ; 29BD _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 29C0 _ 8B. 40, 04
        imul    eax, dword [ebp-10H]                    ; 29C3 _ 0F AF. 45, F0
        mov     ecx, dword [ebp-0CH]                    ; 29C7 _ 8B. 4D, F4
        add     eax, ecx                                ; 29CA _ 01. C8
        add     eax, edx                                ; 29CC _ 01. D0
        mov     byte [eax], 0                           ; 29CE _ C6. 00, 00
        add     dword [ebp-0CH], 1                      ; 29D1 _ 83. 45, F4, 01
?_155:  cmp     dword [ebp-0CH], 247                    ; 29D5 _ 81. 7D, F4, 000000F7
        jle     ?_154                                   ; 29DC _ 7E, DA
        add     dword [ebp-10H], 1                      ; 29DE _ 83. 45, F0, 01
?_156:  cmp     dword [ebp-10H], 155                    ; 29E2 _ 81. 7D, F0, 0000009B
        jle     ?_153                                   ; 29E9 _ 7E, C4
        mov     eax, dword [_shtctl]                    ; 29EB _ A1, 00000264(d)
        mov     dword [esp+14H], 156                    ; 29F0 _ C7. 44 24, 14, 0000009C
        mov     dword [esp+10H], 248                    ; 29F8 _ C7. 44 24, 10, 000000F8
        mov     dword [esp+0CH], 28                     ; 2A00 _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 8                       ; 2A08 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp+0CH]                    ; 2A10 _ 8B. 55, 0C
        mov     dword [esp+4H], edx                     ; 2A13 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2A17 _ 89. 04 24
        call    _sheet_refresh                          ; 2A1A _ E8, 00000000(rel)
?_157:  mov     eax, dword [_shtctl]                    ; 2A1F _ A1, 00000264(d)
        mov     dword [esp+14H], ?_416                  ; 2A24 _ C7. 44 24, 14, 00000023(d)
        mov     dword [esp+10H], 7                      ; 2A2C _ C7. 44 24, 10, 00000007
        mov     edx, dword [ebp+8H]                     ; 2A34 _ 8B. 55, 08
        mov     dword [esp+0CH], edx                    ; 2A37 _ 89. 54 24, 0C
        mov     dword [esp+8H], 8                       ; 2A3B _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp+0CH]                    ; 2A43 _ 8B. 55, 0C
        mov     dword [esp+4H], edx                     ; 2A46 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2A4A _ 89. 04 24
        call    _showString                             ; 2A4D _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 2A52 _ 8B. 45, 08
        jmp     ?_159                                   ; 2A55 _ EB, 02

?_158:  nop                                             ; 2A57 _ 90
        nop                                             ; 2A58 _ 90
?_159:  add     esp, 52                                 ; 2A59 _ 83. C4, 34
        pop     ebx                                     ; 2A5C _ 5B
        pop     ebp                                     ; 2A5D _ 5D
        ret                                             ; 2A5E _ C3
; _cons_newline End of function

_close_constask:; Function begin
        push    ebp                                     ; 2A5F _ 55
        mov     ebp, esp                                ; 2A60 _ 89. E5
        sub     esp, 24                                 ; 2A62 _ 83. EC, 18
        mov     eax, dword [ebp+8H]                     ; 2A65 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2A68 _ 89. 04 24
        call    _task_sleep                             ; 2A6B _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 2A70 _ 8B. 45, 08
        mov     eax, dword [eax+0B8H]                   ; 2A73 _ 8B. 80, 000000B8
        mov     edx, eax                                ; 2A79 _ 89. C2
        mov     eax, dword [_memman]                    ; 2A7B _ A1, 00000000(d)
        mov     dword [esp+8H], 65536                   ; 2A80 _ C7. 44 24, 08, 00010000
        mov     dword [esp+4H], edx                     ; 2A88 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2A8C _ 89. 04 24
        call    _memman_free_4k                         ; 2A8F _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 2A94 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2A97 _ 8B. 40, 10
        mov     edx, eax                                ; 2A9A _ 89. C2
        mov     eax, dword [_memman]                    ; 2A9C _ A1, 00000000(d)
        mov     dword [esp+8H], 128                     ; 2AA1 _ C7. 44 24, 08, 00000080
        mov     dword [esp+4H], edx                     ; 2AA9 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2AAD _ 89. 04 24
        call    _memman_free                            ; 2AB0 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 2AB5 _ 8B. 45, 08
        mov     eax, dword [eax+0ACH]                   ; 2AB8 _ 8B. 80, 000000AC
        mov     edx, eax                                ; 2ABE _ 89. C2
        mov     eax, dword [_memman]                    ; 2AC0 _ A1, 00000000(d)
        mov     dword [esp+8H], 30                      ; 2AC5 _ C7. 44 24, 08, 0000001E
        mov     dword [esp+4H], edx                     ; 2ACD _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2AD1 _ 89. 04 24
        call    _memman_free                            ; 2AD4 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 2AD9 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 2ADC _ C7. 40, 04, 00000000
        mov     dword [_current_console_task], 0        ; 2AE3 _ C7. 05, 00000278(d), 00000000
        nop                                             ; 2AED _ 90
        leave                                           ; 2AEE _ C9
        ret                                             ; 2AEF _ C3
; _close_constask End of function

_close_console:; Function begin
        push    ebp                                     ; 2AF0 _ 55
        mov     ebp, esp                                ; 2AF1 _ 89. E5
        sub     esp, 40                                 ; 2AF3 _ 83. EC, 28
        mov     eax, dword [ebp+8H]                     ; 2AF6 _ 8B. 45, 08
        mov     eax, dword [eax+0A8H]                   ; 2AF9 _ 8B. 80, 000000A8
        mov     dword [esp], eax                        ; 2AFF _ 89. 04 24
        call    _timer_free                             ; 2B02 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 2B07 _ 8B. 45, 08
        mov     eax, dword [eax+0B4H]                   ; 2B0A _ 8B. 80, 000000B4
        test    eax, eax                                ; 2B10 _ 85. C0
        jz      ?_160                                   ; 2B12 _ 74, 40
        mov     eax, dword [ebp+8H]                     ; 2B14 _ 8B. 45, 08
        mov     eax, dword [eax+0B4H]                   ; 2B17 _ 8B. 80, 000000B4
        mov     dword [ebp-0CH], eax                    ; 2B1D _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 2B20 _ 8B. 45, F4
        mov     eax, dword [eax]                        ; 2B23 _ 8B. 00
        mov     edx, eax                                ; 2B25 _ 89. C2
        mov     eax, dword [_memman]                    ; 2B27 _ A1, 00000000(d)
        mov     dword [esp+8H], 42240                   ; 2B2C _ C7. 44 24, 08, 0000A500
        mov     dword [esp+4H], edx                     ; 2B34 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2B38 _ 89. 04 24
        call    _memman_free_4k                         ; 2B3B _ E8, 00000000(rel)
        mov     eax, dword [_shtctl]                    ; 2B40 _ A1, 00000264(d)
        mov     edx, dword [ebp-0CH]                    ; 2B45 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 2B48 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2B4C _ 89. 04 24
        call    _sheet_free                             ; 2B4F _ E8, 00000000(rel)
?_160:  mov     eax, dword [ebp+8H]                     ; 2B54 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2B57 _ 89. 04 24
        call    _close_constask                         ; 2B5A _ E8, FFFFFF00
        nop                                             ; 2B5F _ 90
        leave                                           ; 2B60 _ C9
        ret                                             ; 2B61 _ C3
; _close_console End of function

_cmd_exit:; Function begin
        push    ebp                                     ; 2B62 _ 55
        mov     ebp, esp                                ; 2B63 _ 89. E5
        sub     esp, 24                                 ; 2B65 _ 83. EC, 18
        call    _io_cli                                 ; 2B68 _ E8, 00000000(rel)
        mov     dword [esp+4H], 255                     ; 2B6D _ C7. 44 24, 04, 000000FF
        mov     dword [esp], _keyinfo                   ; 2B75 _ C7. 04 24, 00000014(d)
        call    _fifo8_put                              ; 2B7C _ E8, 00000000(rel)
        call    _io_sti                                 ; 2B81 _ E8, 00000000(rel)
        nop                                             ; 2B86 _ 90
        leave                                           ; 2B87 _ C9
        ret                                             ; 2B88 _ C3
; _cmd_exit End of function

        nop                                             ; 2B89 _ 90
        nop                                             ; 2B8A _ 90
        nop                                             ; 2B8B _ 90


_showMemoryInfo:
        push    ebp                                     ; 2B8C _ 55
        mov     ebp, esp                                ; 2B8D _ 89. E5
        sub     esp, 72                                 ; 2B8F _ 83. EC, 48
        mov     dword [ebp-0CH], 0                      ; 2B92 _ C7. 45, F4, 00000000
        mov     dword [ebp-10H], 0                      ; 2B99 _ C7. 45, F0, 00000000
        mov     dword [ebp-14H], 104                    ; 2BA0 _ C7. 45, EC, 00000068
        mov     dword [ebp-18H], 80                     ; 2BA7 _ C7. 45, E8, 00000050
        mov     edx, dword [_ysize]                     ; 2BAE _ 8B. 15, 00000000(d)
        mov     eax, dword [ebp+0CH]                    ; 2BB4 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2BB7 _ 8B. 00
        mov     dword [esp+8H], edx                     ; 2BB9 _ 89. 54 24, 08
        mov     edx, dword [ebp+1CH]                    ; 2BBD _ 8B. 55, 1C
        mov     dword [esp+4H], edx                     ; 2BC0 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2BC4 _ 89. 04 24
        call    _init_screen8                           ; 2BC7 _ E8, 00000E0A
        mov     eax, dword [ebp+20H]                    ; 2BCC _ 8B. 45, 20
        movsx   eax, al                                 ; 2BCF _ 0F BE. C0
_message_box:
        push    ebp                                     ; 2DA7 _ 55
        mov     ebp, esp                                ; 2DA8 _ 89. E5
        sub     esp, 56                                 ; 2DAA _ 83. EC, 38
        mov     eax, dword [ebp+8H]                     ; 2DAD _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2DB0 _ 89. 04 24
        call    _sheet_alloc                            ; 2DB3 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 2DB8 _ 89. 45, F4
        mov     eax, dword [_memman]                    ; 2DBB _ A1, 00000000(d)
        mov     dword [esp+4H], 10880                   ; 2DC0 _ C7. 44 24, 04, 00002A80
        mov     dword [esp], eax                        ; 2DC8 _ 89. 04 24
        call    _memman_alloc_4k                        ; 2DCB _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 2DD0 _ 89. 45, F0
        mov     dword [esp+10H], -1                     ; 2DD3 _ C7. 44 24, 10, FFFFFFFF
        mov     dword [esp+0CH], 68                     ; 2DDB _ C7. 44 24, 0C, 00000044
        mov     dword [esp+8H], 160                     ; 2DE3 _ C7. 44 24, 08, 000000A0
        mov     eax, dword [ebp-10H]                    ; 2DEB _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 2DEE _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 2DF2 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 2DF5 _ 89. 04 24
        call    _sheet_setbuf                           ; 2DF8 _ E8, 00000000(rel)
        mov     dword [esp+0CH], 1                      ; 2DFD _ C7. 44 24, 0C, 00000001
        mov     eax, dword [ebp+0CH]                    ; 2E05 _ 8B. 45, 0C
        mov     dword [esp+8H], eax                     ; 2E08 _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 2E0C _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 2E0F _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2E13 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2E16 _ 89. 04 24
        call    _make_window8                           ; 2E19 _ E8, 0000051B
        mov     dword [esp+14H], 7                      ; 2E1E _ C7. 44 24, 14, 00000007
        mov     dword [esp+10H], 16                     ; 2E26 _ C7. 44 24, 10, 00000010
        mov     dword [esp+0CH], 144                    ; 2E2E _ C7. 44 24, 0C, 00000090
        mov     dword [esp+8H], 28                      ; 2E36 _ C7. 44 24, 08, 0000001C
        mov     dword [esp+4H], 8                       ; 2E3E _ C7. 44 24, 04, 00000008
        mov     eax, dword [ebp-0CH]                    ; 2E46 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 2E49 _ 89. 04 24
        call    _make_textbox8                          ; 2E4C _ E8, 000008EB
        mov     dword [esp+0CH], 172                    ; 2E51 _ C7. 44 24, 0C, 000000AC
        mov     dword [esp+8H], 260                     ; 2E59 _ C7. 44 24, 08, 00000104
        mov     eax, dword [ebp-0CH]                    ; 2E61 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 2E64 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2E68 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2E6B _ 89. 04 24
        call    _sheet_slide                            ; 2E6E _ E8, 00000000(rel)
        mov     dword [esp+8H], 2                       ; 2E73 _ C7. 44 24, 08, 00000002
        mov     eax, dword [ebp-0CH]                    ; 2E7B _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 2E7E _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2E82 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2E85 _ 89. 04 24
        call    _sheet_updown                           ; 2E88 _ E8, 00000000(rel)
        mov     eax, dword [ebp-0CH]                    ; 2E8D _ 8B. 45, F4
        leave                                           ; 2E90 _ C9
        ret                                             ; 2E91 _ C3
; _message_box End of function

_showString:; Function begin
        push    ebp                                     ; 2E92 _ 55
        mov     ebp, esp                                ; 2E93 _ 89. E5
        push    ebx                                     ; 2E95 _ 53
        sub     esp, 68                                 ; 2E96 _ 83. EC, 44
        mov     eax, dword [ebp+18H]                    ; 2E99 _ 8B. 45, 18
        mov     byte [ebp-1CH], al                      ; 2E9C _ 88. 45, E4
        cmp     dword [ebp+8H], 0                       ; 2E9F _ 83. 7D, 08, 00
        je      ?_163                                   ; 2EA3 _ 0F 84, 000000A1
        cmp     dword [ebp+0CH], 0                      ; 2EA9 _ 83. 7D, 0C, 00
        je      ?_163                                   ; 2EAD _ 0F 84, 00000097
        mov     eax, dword [ebp+10H]                    ; 2EB3 _ 8B. 45, 10
        mov     dword [ebp-0CH], eax                    ; 2EB6 _ 89. 45, F4
        mov     dword [ebp-10H], 0                      ; 2EB9 _ C7. 45, F0, 00000000
        jmp     ?_162                                   ; 2EC0 _ EB, 4B

?_161:  mov     eax, dword [ebp+1CH]                    ; 2EC2 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 2EC5 _ 0F B6. 00
        movzx   eax, al                                 ; 2EC8 _ 0F B6. C0
        shl     eax, 4                                  ; 2ECB _ C1. E0, 04
        lea     ebx, [_systemFont+eax]                  ; 2ECE _ 8D. 98, 00000000(d)
        movsx   eax, byte [ebp-1CH]                     ; 2ED4 _ 0F BE. 45, E4
        mov     edx, dword [ebp+0CH]                    ; 2ED8 _ 8B. 55, 0C
        mov     ecx, dword [edx+4H]                     ; 2EDB _ 8B. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 2EDE _ 8B. 55, 0C
        mov     edx, dword [edx]                        ; 2EE1 _ 8B. 12
        mov     dword [esp+14H], ebx                    ; 2EE3 _ 89. 5C 24, 14
        mov     dword [esp+10H], eax                    ; 2EE7 _ 89. 44 24, 10
        mov     eax, dword [ebp+14H]                    ; 2EEB _ 8B. 45, 14
        mov     dword [esp+0CH], eax                    ; 2EEE _ 89. 44 24, 0C
        mov     eax, dword [ebp+10H]                    ; 2EF2 _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 2EF5 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 2EF9 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 2EFD _ 89. 14 24
        call    _showFont8                              ; 2F00 _ E8, 00001157
        add     dword [ebp+10H], 8                      ; 2F05 _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 2F09 _ 83. 45, 1C, 01
?_162:  mov     eax, dword [ebp+1CH]                    ; 2F0D _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 2F10 _ 0F B6. 00
        test    al, al                                  ; 2F13 _ 84. C0
        jnz     ?_161                                   ; 2F15 _ 75, AB
        mov     eax, dword [ebp+14H]                    ; 2F17 _ 8B. 45, 14
        add     eax, 16                                 ; 2F1A _ 83. C0, 10
        mov     dword [esp+14H], eax                    ; 2F1D _ 89. 44 24, 14
        mov     eax, dword [ebp+10H]                    ; 2F21 _ 8B. 45, 10
        mov     dword [esp+10H], eax                    ; 2F24 _ 89. 44 24, 10
        mov     eax, dword [ebp+14H]                    ; 2F28 _ 8B. 45, 14
        mov     dword [esp+0CH], eax                    ; 2F2B _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 2F2F _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 2F32 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 2F36 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2F39 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2F3D _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2F40 _ 89. 04 24
        call    _sheet_refresh                          ; 2F43 _ E8, 00000000(rel)
        jmp     ?_164                                   ; 2F48 _ EB, 01

?_163:  nop                                             ; 2F4A _ 90
?_164:  add     esp, 68                                 ; 2F4B _ 83. C4, 44
        pop     ebx                                     ; 2F4E _ 5B
        pop     ebp                                     ; 2F4F _ 5D
        ret                                             ; 2F50 _ C3
; _showString End of function

_show_mouse_info:; Function begin
        push    ebp                                     ; 2F51 _ 55
        mov     ebp, esp                                ; 2F52 _ 89. E5
        sub     esp, 72                                 ; 2F54 _ 83. EC, 48
        mov     eax, dword [_buf_back]                  ; 2F57 _ A1, 00000000(d)
        mov     dword [ebp-10H], eax                    ; 2F5C _ 89. 45, F0
        mov     byte [ebp-11H], 0                       ; 2F5F _ C6. 45, EF, 00
        mov     dword [ebp-18H], 0                      ; 2F63 _ C7. 45, E8, 00000000
        call    _io_sti                                 ; 2F6A _ E8, 00000000(rel)
        mov     dword [esp], _mouseinfo                 ; 2F6F _ C7. 04 24, 00000000(d)
        call    _fifo8_get                              ; 2F76 _ E8, 00000000(rel)
        mov     byte [ebp-11H], al                      ; 2F7B _ 88. 45, EF
        movzx   eax, byte [ebp-11H]                     ; 2F7E _ 0F B6. 45, EF
        mov     dword [esp+4H], eax                     ; 2F82 _ 89. 44 24, 04
        mov     dword [esp], _mdec                      ; 2F86 _ C7. 04 24, 00000000(d)
        call    _mouse_decode                           ; 2F8D _ E8, 00000000(rel)
        test    eax, eax                                ; 2F92 _ 85. C0
        je      ?_175                                   ; 2F94 _ 0F 84, 0000039C
        mov     dword [esp+8H], _mdec                   ; 2F9A _ C7. 44 24, 08, 00000000(d)
        mov     eax, dword [ebp+0CH]                    ; 2FA2 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2FA5 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2FA9 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2FAC _ 89. 04 24
        call    _computeMousePosition                   ; 2FAF _ E8, 00000DAA
        mov     edx, dword [_my]                        ; 2FB4 _ 8B. 15, 00000000(d)
        mov     eax, dword [_mx]                        ; 2FBA _ A1, 00000000(d)
        mov     dword [esp+0CH], edx                    ; 2FBF _ 89. 54 24, 0C
        mov     dword [esp+8H], eax                     ; 2FC3 _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 2FC7 _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 2FCA _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2FCE _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2FD1 _ 89. 04 24
        call    _sheet_slide                            ; 2FD4 _ E8, 00000000(rel)
        mov     eax, dword [_mdec+0CH]                  ; 2FD9 _ A1, 0000000C(d)
        and     eax, 01H                                ; 2FDE _ 83. E0, 01
        test    eax, eax                                ; 2FE1 _ 85. C0
        je      ?_173                                   ; 2FE3 _ 0F 84, 00000340
        mov     eax, dword [_mmx]                       ; 2FE9 _ A1, 00000000(d)
        test    eax, eax                                ; 2FEE _ 85. C0
        jns     ?_172                                   ; 2FF0 _ 0F 89, 000002C2
        mov     eax, dword [ebp+8H]                     ; 2FF6 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2FF9 _ 8B. 40, 10
        sub     eax, 1                                  ; 2FFC _ 83. E8, 01
        mov     dword [ebp-0CH], eax                    ; 2FFF _ 89. 45, F4
        jmp     ?_171                                   ; 3002 _ E9, 000002A5

?_165:  mov     eax, dword [ebp+8H]                     ; 3007 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 300A _ 8B. 55, F4
        add     edx, 4                                  ; 300D _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 3010 _ 8B. 44 90, 04
        mov     dword [ebp-18H], eax                    ; 3014 _ 89. 45, E8
        mov     edx, dword [_mx]                        ; 3017 _ 8B. 15, 00000000(d)
        mov     eax, dword [ebp-18H]                    ; 301D _ 8B. 45, E8
        mov     eax, dword [eax+0CH]                    ; 3020 _ 8B. 40, 0C
        sub     edx, eax                                ; 3023 _ 29. C2
        mov     eax, edx                                ; 3025 _ 89. D0
        mov     dword [ebp-1CH], eax                    ; 3027 _ 89. 45, E4
        mov     edx, dword [_my]                        ; 302A _ 8B. 15, 00000000(d)
        mov     eax, dword [ebp-18H]                    ; 3030 _ 8B. 45, E8
        mov     eax, dword [eax+10H]                    ; 3033 _ 8B. 40, 10
        sub     edx, eax                                ; 3036 _ 29. C2
        mov     eax, edx                                ; 3038 _ 89. D0
        mov     dword [ebp-20H], eax                    ; 303A _ 89. 45, E0
        cmp     dword [ebp-1CH], 0                      ; 303D _ 83. 7D, E4, 00
        js      ?_170                                   ; 3041 _ 0F 88, 00000261
        mov     eax, dword [ebp-18H]                    ; 3047 _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 304A _ 8B. 40, 04
        cmp     dword [ebp-1CH], eax                    ; 304D _ 39. 45, E4
        jge     ?_170                                   ; 3050 _ 0F 8D, 00000252
        cmp     dword [ebp-20H], 0                      ; 3056 _ 83. 7D, E0, 00
        js      ?_170                                   ; 305A _ 0F 88, 00000248
        mov     eax, dword [ebp-18H]                    ; 3060 _ 8B. 45, E8
        mov     eax, dword [eax+8H]                     ; 3063 _ 8B. 40, 08
        cmp     dword [ebp-20H], eax                    ; 3066 _ 39. 45, E0
        jge     ?_170                                   ; 3069 _ 0F 8D, 00000239
        mov     eax, dword [ebp-18H]                    ; 306F _ 8B. 45, E8
        mov     edx, dword [eax]                        ; 3072 _ 8B. 10
        mov     eax, dword [ebp-18H]                    ; 3074 _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 3077 _ 8B. 40, 04
        imul    eax, dword [ebp-20H]                    ; 307A _ 0F AF. 45, E0
        mov     ecx, dword [ebp-1CH]                    ; 307E _ 8B. 4D, E4
        add     eax, ecx                                ; 3081 _ 01. C8
        add     eax, edx                                ; 3083 _ 01. D0
        movzx   eax, byte [eax]                         ; 3085 _ 0F B6. 00
        movzx   eax, al                                 ; 3088 _ 0F B6. C0
        mov     edx, dword [ebp-18H]                    ; 308B _ 8B. 55, E8
        mov     edx, dword [edx+14H]                    ; 308E _ 8B. 52, 14
        cmp     eax, edx                                ; 3091 _ 39. D0
        je      ?_170                                   ; 3093 _ 0F 84, 0000020F
        mov     eax, dword [_current_console_task]      ; 3099 _ A1, 00000000(d)
        mov     eax, dword [eax+0B4H]                   ; 309E _ 8B. 80, 000000B4
        test    eax, eax                                ; 30A4 _ 85. C0
        jz      ?_166                                   ; 30A6 _ 74, 68
        mov     eax, dword [_current_console_task]      ; 30A8 _ A1, 00000000(d)
        mov     eax, dword [eax+0B4H]                   ; 30AD _ 8B. 80, 000000B4
        mov     dword [esp+0CH], 0                      ; 30B3 _ C7. 44 24, 0C, 00000000
?_166:  mov     eax, dword [ebp-18H]                    
        mov     eax, dword [eax+20H]                    ; 3113 _ 8B. 40, 20
        mov     dword [_current_console_task], eax      ; 3116 _ A3, 00000000(d)
        mov     eax, dword [_current_console_task]      ; 311B _ A1, 00000000(d)
        mov     eax, dword [eax+0B4H]                   ; 3120 _ 8B. 80, 000000B4
        test    eax, eax                                ; 3126 _ 85. C0
        jnz     ?_167                                   ; 3128 _ 75, 32
?_167:  mov     eax, dword [_current_console_task]      
        mov     eax, dword [eax+0B4H]                   ; 3161 _ 8B. 80, 000000B4
        test    eax, eax                                ; 3167 _ 85. C0
        jz      ?_168                                   ; 3169 _ 74, 60
        mov     eax, dword [_current_console_task]      ; 316B _ A1, 00000000(d)
        mov     eax, dword [eax+0B4H]                   ; 3170 _ 8B. 80, 000000B4
        mov     dword [esp+0CH], 1                      ; 3176 _ C7. 44 24, 0C, 00000001
?_168:  mov     eax, dword [ebp+8H]                     
        mov     eax, dword [eax+10H]                    ; 31CE _ 8B. 40, 10
        sub     eax, 1                                  ; 31D1 _ 83. E8, 01
        mov     dword [esp+8H], eax                     ; 31D4 _ 89. 44 24, 08
        mov     eax, dword [ebp-18H]                    ; 31D8 _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 31DB _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 31DF _ 8B. 45, 08
        mov     dword [esp], eax                        ; 31E2 _ 89. 04 24
        call    _sheet_updown                           ; 31E5 _ E8, 00000000(rel)
        cmp     dword [ebp-1CH], 2                      ; 31EA _ 83. 7D, E4, 02
        jle     ?_169                                   ; 31EE _ 7E, 36
        mov     eax, dword [ebp-18H]                    ; 31F0 _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 31F3 _ 8B. 40, 04
        sub     eax, 3                                  ; 31F6 _ 83. E8, 03
        cmp     dword [ebp-1CH], eax                    ; 31F9 _ 39. 45, E4
        jge     ?_169                                   ; 31FC _ 7D, 28
        cmp     dword [ebp-20H], 2                      ; 31FE _ 83. 7D, E0, 02
        jle     ?_169                                   ; 3202 _ 7E, 22
        cmp     dword [ebp-20H], 20                     ; 3204 _ 83. 7D, E0, 14
        jg      ?_169                                   ; 3208 _ 7F, 1C
        mov     eax, dword [_mx]                        ; 320A _ A1, 00000000(d)
        mov     dword [_mmx], eax                       ; 320F _ A3, 00000000(d)
        mov     eax, dword [_my]                        ; 3214 _ A1, 00000000(d)
        mov     dword [_mmy], eax                       ; 3219 _ A3, 00000000(d)
        mov     eax, dword [ebp-18H]                    ; 321E _ 8B. 45, E8
        mov     dword [_mouse_clicked_sht], eax         ; 3221 _ A3, 00000000(d)
?_169:  mov     eax, dword [ebp-18H]                    ; 3226 _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 3229 _ 8B. 40, 04
        sub     eax, 21                                 ; 322C _ 83. E8, 15
        cmp     dword [ebp-1CH], eax                    ; 322F _ 39. 45, E4
        jl      ?_174                                   ; 3232 _ 0F 8C, 000000FD
        mov     eax, dword [ebp-18H]                    ; 3238 _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 323B _ 8B. 40, 04
        sub     eax, 5                                  ; 323E _ 83. E8, 05
        cmp     dword [ebp-1CH], eax                    ; 3241 _ 39. 45, E4
        jge     ?_174                                   ; 3244 _ 0F 8D, 000000EB
        cmp     dword [ebp-20H], 4                      ; 324A _ 83. 7D, E0, 04
        jle     ?_174                                   ; 324E _ 0F 8E, 000000E1
        cmp     dword [ebp-20H], 18                     ; 3254 _ 83. 7D, E0, 12
        jg      ?_174                                   ; 3258 _ 0F 8F, 000000D7
        mov     eax, dword [ebp-18H]                    ; 325E _ 8B. 45, E8
        mov     eax, dword [eax+20H]                    ; 3261 _ 8B. 40, 20
        test    eax, eax                                ; 3264 _ 85. C0
        je      ?_174                                   ; 3266 _ 0F 84, 000000C9
        call    _io_cli                                 ; 326C _ E8, 00000000(rel)
        mov     eax, dword [ebp-18H]                    ; 3271 _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 3274 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3278 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 327B _ 89. 04 24
        call    _sheet_free                             ; 327E _ E8, 00000000(rel)
        call    _get_addr_code32                        ; 3283 _ E8, 00000000(rel)
        mov     dword [ebp-24H], eax                    ; 3288 _ 89. 45, DC
        mov     ecx, _kill_process                      ; 328B _ B9, 00000000(d)
        mov     eax, dword [ebp-18H]                    ; 3290 _ 8B. 45, E8
        mov     edx, dword [eax+20H]                    ; 3293 _ 8B. 50, 20
        mov     eax, ecx                                ; 3296 _ 89. C8
        sub     eax, dword [ebp-24H]                    ; 3298 _ 2B. 45, DC
        mov     dword [edx+4CH], eax                    ; 329B _ 89. 42, 4C
        call    _io_sti                                 ; 329E _ E8, 00000000(rel)
        jmp     ?_174                                   ; 32A3 _ E9, 0000008D

?_170:  sub     dword [ebp-0CH], 1                      ; 32A8 _ 83. 6D, F4, 01
?_171:  cmp     dword [ebp-0CH], 0                      ; 32AC _ 83. 7D, F4, 00
        jg      ?_165                                   ; 32B0 _ 0F 8F, FFFFFD51
        jmp     ?_175                                   ; 32B6 _ EB, 7E

?_172:  mov     edx, dword [_mx]                        ; 32B8 _ 8B. 15, 00000000(d)
        mov     eax, dword [_mmx]                       ; 32BE _ A1, 00000000(d)
        sub     edx, eax                                ; 32C3 _ 29. C2
        mov     eax, edx                                ; 32C5 _ 89. D0
        mov     dword [ebp-1CH], eax                    ; 32C7 _ 89. 45, E4
        mov     edx, dword [_my]                        ; 32CA _ 8B. 15, 00000000(d)
        mov     eax, dword [_mmy]                       ; 32D0 _ A1, 00000000(d)
        sub     edx, eax                                ; 32D5 _ 29. C2
        mov     eax, edx                                ; 32D7 _ 89. D0
        mov     dword [ebp-20H], eax                    ; 32D9 _ 89. 45, E0
        mov     eax, dword [_mouse_clicked_sht]         ; 32DC _ A1, 00000000(d)
        mov     edx, dword [eax+10H]                    ; 32E1 _ 8B. 50, 10
        mov     eax, dword [ebp-20H]                    ; 32E4 _ 8B. 45, E0
        lea     ecx, [edx+eax]                          ; 32E7 _ 8D. 0C 02
        mov     eax, dword [_mouse_clicked_sht]         ; 32EA _ A1, 00000000(d)
        mov     edx, dword [eax+0CH]                    ; 32EF _ 8B. 50, 0C
        mov     eax, dword [ebp-1CH]                    ; 32F2 _ 8B. 45, E4
        add     edx, eax                                ; 32F5 _ 01. C2
        mov     eax, dword [_mouse_clicked_sht]         ; 32F7 _ A1, 00000000(d)
        mov     dword [esp+0CH], ecx                    ; 32FC _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 3300 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 3304 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3308 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 330B _ 89. 04 24
        call    _sheet_slide                            ; 330E _ E8, 00000000(rel)
        mov     eax, dword [_mx]                        ; 3313 _ A1, 00000000(d)
        mov     dword [_mmx], eax                       ; 3318 _ A3, 00000000(d)
        mov     eax, dword [_my]                        ; 331D _ A1, 00000000(d)
        mov     dword [_mmy], eax                       ; 3322 _ A3, 00000000(d)
        jmp     ?_175                                   ; 3327 _ EB, 0D

?_173:  mov     dword [_mmx], -1                        ; 3329 _ C7. 05, 00000000(d), FFFFFFFF
        jmp     ?_175                                   ; 3333 _ EB, 01

?_174:  nop                                             ; 3335 _ 90
?_175:  nop                                             ; 3336 _ 90
        leave                                           ; 3337 _ C9
        ret                                             ; 3338 _ C3
; _show_mouse_info End of function

_make_window8:; Function begin
        push    ebp                                     ; 3339 _ 55
        mov     ebp, esp                                ; 333A _ 89. E5
        push    ebx                                     ; 333C _ 53
        sub     esp, 68                                 ; 333D _ 83. EC, 44
        mov     eax, dword [ebp+14H]                    ; 3340 _ 8B. 45, 14
        mov     byte [ebp-1CH], al                      ; 3343 _ 88. 45, E4
        mov     eax, dword [ebp+0CH]                    ; 3346 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 3349 _ 8B. 40, 04
        mov     dword [ebp-0CH], eax                    ; 334C _ 89. 45, F4
        mov     eax, dword [ebp+0CH]                    ; 334F _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 3352 _ 8B. 40, 08
        mov     dword [ebp-10H], eax                    ; 3355 _ 89. 45, F0
        mov     eax, dword [ebp-0CH]                    ; 3358 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 335B _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 335E _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 3361 _ 8B. 00
        mov     dword [esp+18H], 0                      ; 3363 _ C7. 44 24, 18, 00000000
        mov     dword [esp+14H], edx                    ; 336B _ 89. 54 24, 14
        mov     dword [esp+10H], 0                      ; 336F _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 3377 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 337F _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-0CH]                    ; 3387 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 338A _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 338E _ 89. 04 24
        call    _boxfill8                               ; 3391 _ E8, 00000C76
        mov     eax, dword [ebp-0CH]                    ; 3396 _ 8B. 45, F4
        lea     edx, [eax-2H]                           ; 3399 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 339C _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 339F _ 8B. 00
        mov     dword [esp+18H], 1                      ; 33A1 _ C7. 44 24, 18, 00000001
        mov     dword [esp+14H], edx                    ; 33A9 _ 89. 54 24, 14
        mov     dword [esp+10H], 1                      ; 33AD _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], 1                      ; 33B5 _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 7                       ; 33BD _ C7. 44 24, 08, 00000007
        mov     edx, dword [ebp-0CH]                    ; 33C5 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 33C8 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 33CC _ 89. 04 24
        call    _boxfill8                               ; 33CF _ E8, 00000C38
        mov     eax, dword [ebp-10H]                    ; 33D4 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 33D7 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 33DA _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 33DD _ 8B. 00
        mov     dword [esp+18H], edx                    ; 33DF _ 89. 54 24, 18
        mov     dword [esp+14H], 0                      ; 33E3 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], 0                      ; 33EB _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 33F3 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 33FB _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-0CH]                    ; 3403 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 3406 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 340A _ 89. 04 24
        call    _boxfill8                               ; 340D _ E8, 00000BFA
        mov     eax, dword [ebp-10H]                    ; 3412 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 3415 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 3418 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 341B _ 8B. 00
        mov     dword [esp+18H], edx                    ; 341D _ 89. 54 24, 18
        mov     dword [esp+14H], 1                      ; 3421 _ C7. 44 24, 14, 00000001
        mov     dword [esp+10H], 1                      ; 3429 _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], 1                      ; 3431 _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 7                       ; 3439 _ C7. 44 24, 08, 00000007
        mov     edx, dword [ebp-0CH]                    ; 3441 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 3444 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3448 _ 89. 04 24
        call    _boxfill8                               ; 344B _ E8, 00000BBC
        mov     eax, dword [ebp-10H]                    ; 3450 _ 8B. 45, F0
        lea     ebx, [eax-2H]                           ; 3453 _ 8D. 58, FE
        mov     eax, dword [ebp-0CH]                    ; 3456 _ 8B. 45, F4
        lea     ecx, [eax-2H]                           ; 3459 _ 8D. 48, FE
        mov     eax, dword [ebp-0CH]                    ; 345C _ 8B. 45, F4
        lea     edx, [eax-2H]                           ; 345F _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 3462 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 3465 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 3467 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 346B _ 89. 4C 24, 14
        mov     dword [esp+10H], 1                      ; 346F _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], edx                    ; 3477 _ 89. 54 24, 0C
        mov     dword [esp+8H], 15                      ; 347B _ C7. 44 24, 08, 0000000F
        mov     edx, dword [ebp-0CH]                    ; 3483 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 3486 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 348A _ 89. 04 24
        call    _boxfill8                               ; 348D _ E8, 00000B7A
        mov     eax, dword [ebp-10H]                    ; 3492 _ 8B. 45, F0
        lea     ebx, [eax-1H]                           ; 3495 _ 8D. 58, FF
        mov     eax, dword [ebp-0CH]                    ; 3498 _ 8B. 45, F4
        lea     ecx, [eax-1H]                           ; 349B _ 8D. 48, FF
        mov     eax, dword [ebp-0CH]                    ; 349E _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 34A1 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 34A4 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 34A7 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 34A9 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 34AD _ 89. 4C 24, 14
        mov     dword [esp+10H], 0                      ; 34B1 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], edx                    ; 34B9 _ 89. 54 24, 0C
        mov     dword [esp+8H], 0                       ; 34BD _ C7. 44 24, 08, 00000000
        mov     edx, dword [ebp-0CH]                    ; 34C5 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 34C8 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 34CC _ 89. 04 24
        call    _boxfill8                               ; 34CF _ E8, 00000B38
        mov     eax, dword [ebp-10H]                    ; 34D4 _ 8B. 45, F0
        lea     ecx, [eax-3H]                           ; 34D7 _ 8D. 48, FD
        mov     eax, dword [ebp-0CH]                    ; 34DA _ 8B. 45, F4
        lea     edx, [eax-3H]                           ; 34DD _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 34E0 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 34E3 _ 8B. 00
        mov     dword [esp+18H], ecx                    ; 34E5 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 34E9 _ 89. 54 24, 14
        mov     dword [esp+10H], 2                      ; 34ED _ C7. 44 24, 10, 00000002
        mov     dword [esp+0CH], 2                      ; 34F5 _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 8                       ; 34FD _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-0CH]                    ; 3505 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 3508 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 350C _ 89. 04 24
        call    _boxfill8                               ; 350F _ E8, 00000AF8
        mov     eax, dword [ebp-0CH]                    ; 3514 _ 8B. 45, F4
        lea     edx, [eax-4H]                           ; 3517 _ 8D. 50, FC
        mov     eax, dword [ebp+0CH]                    ; 351A _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 351D _ 8B. 00
        mov     dword [esp+18H], 20                     ; 351F _ C7. 44 24, 18, 00000014
        mov     dword [esp+14H], edx                    ; 3527 _ 89. 54 24, 14
        mov     dword [esp+10H], 3                      ; 352B _ C7. 44 24, 10, 00000003
        mov     dword [esp+0CH], 3                      ; 3533 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 12                      ; 353B _ C7. 44 24, 08, 0000000C
        mov     edx, dword [ebp-0CH]                    ; 3543 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 3546 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 354A _ 89. 04 24
        call    _boxfill8                               ; 354D _ E8, 00000ABA
        mov     eax, dword [ebp-10H]                    ; 3552 _ 8B. 45, F0
        lea     ebx, [eax-2H]                           ; 3555 _ 8D. 58, FE
        mov     eax, dword [ebp-0CH]                    ; 3558 _ 8B. 45, F4
        lea     ecx, [eax-2H]                           ; 355B _ 8D. 48, FE
        mov     eax, dword [ebp-10H]                    ; 355E _ 8B. 45, F0
        lea     edx, [eax-2H]                           ; 3561 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 3564 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 3567 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 3569 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 356D _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 3571 _ 89. 54 24, 10
        mov     dword [esp+0CH], 1                      ; 3575 _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 15                      ; 357D _ C7. 44 24, 08, 0000000F
        mov     edx, dword [ebp-0CH]                    ; 3585 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 3588 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 358C _ 89. 04 24
        call    _boxfill8                               ; 358F _ E8, 00000A78
        mov     eax, dword [ebp-10H]                    ; 3594 _ 8B. 45, F0
        lea     ebx, [eax-1H]                           ; 3597 _ 8D. 58, FF
        mov     eax, dword [ebp-0CH]                    ; 359A _ 8B. 45, F4
        lea     ecx, [eax-1H]                           ; 359D _ 8D. 48, FF
        mov     eax, dword [ebp-10H]                    ; 35A0 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 35A3 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 35A6 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 35A9 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 35AB _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 35AF _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 35B3 _ 89. 54 24, 10
        mov     dword [esp+0CH], 0                      ; 35B7 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 35BF _ C7. 44 24, 08, 00000000
        mov     edx, dword [ebp-0CH]                    ; 35C7 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 35CA _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 35CE _ 89. 04 24
        call    _boxfill8                               ; 35D1 _ E8, 00000A36
        movsx   eax, byte [ebp-1CH]                     ; 35D6 _ 0F BE. 45, E4
        mov     dword [esp+0CH], eax                    ; 35DA _ 89. 44 24, 0C
        mov     eax, dword [ebp+10H]                    ; 35DE _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 35E1 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 35E5 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 35E8 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 35EC _ 8B. 45, 08
        mov     dword [esp], eax                        ; 35EF _ 89. 04 24
        call    _make_wtitle8                           ; 35F2 _ E8, 00000007
        nop                                             ; 35F7 _ 90
        add     esp, 68                                 ; 35F8 _ 83. C4, 44
        pop     ebx                                     ; 35FB _ 5B
        pop     ebp                                     ; 35FC _ 5D
        ret                                             ; 35FD _ C3
; _make_window8 End of function

_make_wtitle8:; Function begin
        push    ebp                                     ; 35FE _ 55
        mov     ebp, esp                                ; 35FF _ 89. E5
        push    ebx                                     ; 3601 _ 53
        sub     esp, 68                                 ; 3602 _ 83. EC, 44
        mov     eax, dword [ebp+14H]                    ; 3605 _ 8B. 45, 14
        mov     byte [ebp-1CH], al                      ; 3608 _ 88. 45, E4
        cmp     byte [ebp-1CH], 0                       ; 360B _ 80. 7D, E4, 00
        jz      ?_176                                   ; 360F _ 74, 0A
        mov     byte [ebp-12H], 7                       ; 3611 _ C6. 45, EE, 07
        mov     byte [ebp-13H], 12                      ; 3615 _ C6. 45, ED, 0C
        jmp     ?_177                                   ; 3619 _ EB, 08

?_176:  mov     byte [ebp-12H], 8                       ; 361B _ C6. 45, EE, 08
        mov     byte [ebp-13H], 15                      ; 361F _ C6. 45, ED, 0F
?_177:  mov     eax, dword [ebp+0CH]                    ; 3623 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 3626 _ 8B. 40, 04
        lea     ebx, [eax-4H]                           ; 3629 _ 8D. 58, FC
        movzx   eax, byte [ebp-13H]                     ; 362C _ 0F B6. 45, ED
        movzx   eax, al                                 ; 3630 _ 0F B6. C0
        mov     edx, dword [ebp+0CH]                    ; 3633 _ 8B. 55, 0C
        mov     ecx, dword [edx+4H]                     ; 3636 _ 8B. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 3639 _ 8B. 55, 0C
        mov     edx, dword [edx]                        ; 363C _ 8B. 12
        mov     dword [esp+18H], 20                     ; 363E _ C7. 44 24, 18, 00000014
        mov     dword [esp+14H], ebx                    ; 3646 _ 89. 5C 24, 14
        mov     dword [esp+10H], 3                      ; 364A _ C7. 44 24, 10, 00000003
        mov     dword [esp+0CH], 3                      ; 3652 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], eax                     ; 365A _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 365E _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 3662 _ 89. 14 24
        call    _boxfill8                               ; 3665 _ E8, 000009A2
        movsx   eax, byte [ebp-12H]                     ; 366A _ 0F BE. 45, EE
        mov     edx, dword [ebp+10H]                    ; 366E _ 8B. 55, 10
        mov     dword [esp+14H], edx                    ; 3671 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 3675 _ 89. 44 24, 10
        mov     dword [esp+0CH], 4                      ; 3679 _ C7. 44 24, 0C, 00000004
        mov     dword [esp+8H], 24                      ; 3681 _ C7. 44 24, 08, 00000018
        mov     eax, dword [ebp+0CH]                    ; 3689 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 368C _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3690 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3693 _ 89. 04 24
        call    _showString                             ; 3696 _ E8, FFFFF7F7
        mov     dword [ebp-10H], 0                      ; 369B _ C7. 45, F0, 00000000
        jmp     ?_185                                   ; 36A2 _ E9, 00000084

?_178:  mov     dword [ebp-0CH], 0                      ; 36A7 _ C7. 45, F4, 00000000
        jmp     ?_184                                   ; 36AE _ EB, 71

?_179:  mov     eax, dword [ebp-10H]                    ; 36B0 _ 8B. 45, F0
        shl     eax, 4                                  ; 36B3 _ C1. E0, 04
        mov     edx, eax                                ; 36B6 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 36B8 _ 8B. 45, F4
        add     eax, edx                                ; 36BB _ 01. D0
        add     eax, _closebtn.2321                     ; 36BD _ 05, 00000100(d)
        movzx   eax, byte [eax]                         ; 36C2 _ 0F B6. 00
        mov     byte [ebp-11H], al                      ; 36C5 _ 88. 45, EF
        cmp     byte [ebp-11H], 64                      ; 36C8 _ 80. 7D, EF, 40
        jnz     ?_180                                   ; 36CC _ 75, 06
        mov     byte [ebp-11H], 0                       ; 36CE _ C6. 45, EF, 00
        jmp     ?_183                                   ; 36D2 _ EB, 1C

?_180:  cmp     byte [ebp-11H], 36                      ; 36D4 _ 80. 7D, EF, 24
        jnz     ?_181                                   ; 36D8 _ 75, 06
        mov     byte [ebp-11H], 15                      ; 36DA _ C6. 45, EF, 0F
        jmp     ?_183                                   ; 36DE _ EB, 10

?_181:  cmp     byte [ebp-11H], 81                      ; 36E0 _ 80. 7D, EF, 51
        jnz     ?_182                                   ; 36E4 _ 75, 06
        mov     byte [ebp-11H], 8                       ; 36E6 _ C6. 45, EF, 08
        jmp     ?_183                                   ; 36EA _ EB, 04

?_182:  mov     byte [ebp-11H], 7                       ; 36EC _ C6. 45, EF, 07
?_183:  mov     eax, dword [ebp+0CH]                    ; 36F0 _ 8B. 45, 0C
        mov     ecx, dword [eax]                        ; 36F3 _ 8B. 08
        mov     eax, dword [ebp-10H]                    ; 36F5 _ 8B. 45, F0
        lea     edx, [eax+5H]                           ; 36F8 _ 8D. 50, 05
        mov     eax, dword [ebp+0CH]                    ; 36FB _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 36FE _ 8B. 40, 04
        imul    eax, edx                                ; 3701 _ 0F AF. C2
        mov     edx, dword [ebp+0CH]                    ; 3704 _ 8B. 55, 0C
        mov     edx, dword [edx+4H]                     ; 3707 _ 8B. 52, 04
        lea     ebx, [edx-15H]                          ; 370A _ 8D. 5A, EB
        mov     edx, dword [ebp-0CH]                    ; 370D _ 8B. 55, F4
        add     edx, ebx                                ; 3710 _ 01. DA
        add     eax, edx                                ; 3712 _ 01. D0
        lea     edx, [ecx+eax]                          ; 3714 _ 8D. 14 01
        movzx   eax, byte [ebp-11H]                     ; 3717 _ 0F B6. 45, EF
        mov     byte [edx], al                          ; 371B _ 88. 02
        add     dword [ebp-0CH], 1                      ; 371D _ 83. 45, F4, 01
?_184:  cmp     dword [ebp-0CH], 15                     ; 3721 _ 83. 7D, F4, 0F
        jle     ?_179                                   ; 3725 _ 7E, 89
        add     dword [ebp-10H], 1                      ; 3727 _ 83. 45, F0, 01
?_185:  cmp     dword [ebp-10H], 13                     ; 372B _ 83. 7D, F0, 0D
        jle     ?_178                                   ; 372F _ 0F 8E, FFFFFF72
        nop                                             ; 3735 _ 90
        add     esp, 68                                 ; 3736 _ 83. C4, 44
        pop     ebx                                     ; 3739 _ 5B
        pop     ebp                                     ; 373A _ 5D
        ret                                             ; 373B _ C3
; _make_wtitle8 End of function

_make_textbox8:; Function begin
        push    ebp                                     ; 373C _ 55
        mov     ebp, esp                                ; 373D _ 89. E5
        push    edi                                     ; 373F _ 57
        push    esi                                     ; 3740 _ 56
        push    ebx                                     ; 3741 _ 53
        sub     esp, 60                                 ; 3742 _ 83. EC, 3C
        mov     edx, dword [ebp+0CH]                    ; 3745 _ 8B. 55, 0C
        mov     eax, dword [ebp+14H]                    ; 3748 _ 8B. 45, 14
        add     eax, edx                                ; 374B _ 01. D0
        mov     dword [ebp-1CH], eax                    ; 374D _ 89. 45, E4
        mov     edx, dword [ebp+10H]                    ; 3750 _ 8B. 55, 10
        mov     eax, dword [ebp+18H]                    ; 3753 _ 8B. 45, 18
        add     eax, edx                                ; 3756 _ 01. D0
        mov     dword [ebp-20H], eax                    ; 3758 _ 89. 45, E0
        mov     eax, dword [ebp+10H]                    ; 375B _ 8B. 45, 10
        lea     edi, [eax-3H]                           ; 375E _ 8D. 78, FD
        mov     eax, dword [ebp-1CH]                    ; 3761 _ 8B. 45, E4
        lea     esi, [eax+1H]                           ; 3764 _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 3767 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 376A _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 376D _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 3770 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 3773 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 3776 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 3779 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 377C _ 8B. 00
        mov     dword [esp+18H], edi                    ; 377E _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 3782 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 3786 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 378A _ 89. 4C 24, 0C
        mov     dword [esp+8H], 15                      ; 378E _ C7. 44 24, 08, 0000000F
        mov     dword [esp+4H], edx                     ; 3796 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 379A _ 89. 04 24
        call    _boxfill8                               ; 379D _ E8, 0000086A
        mov     eax, dword [ebp-20H]                    ; 37A2 _ 8B. 45, E0
        lea     edi, [eax+1H]                           ; 37A5 _ 8D. 78, 01
        mov     eax, dword [ebp+0CH]                    ; 37A8 _ 8B. 45, 0C
        lea     esi, [eax-3H]                           ; 37AB _ 8D. 70, FD
        mov     eax, dword [ebp+10H]                    ; 37AE _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 37B1 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 37B4 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 37B7 _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 37BA _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 37BD _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 37C0 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 37C3 _ 8B. 00
        mov     dword [esp+18H], edi                    ; 37C5 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 37C9 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 37CD _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 37D1 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 15                      ; 37D5 _ C7. 44 24, 08, 0000000F
        mov     dword [esp+4H], edx                     ; 37DD _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 37E1 _ 89. 04 24
        call    _boxfill8                               ; 37E4 _ E8, 00000823
        mov     eax, dword [ebp-20H]                    ; 37E9 _ 8B. 45, E0
        lea     edi, [eax+2H]                           ; 37EC _ 8D. 78, 02
        mov     eax, dword [ebp-1CH]                    ; 37EF _ 8B. 45, E4
        lea     esi, [eax+1H]                           ; 37F2 _ 8D. 70, 01
        mov     eax, dword [ebp-20H]                    ; 37F5 _ 8B. 45, E0
        lea     ebx, [eax+2H]                           ; 37F8 _ 8D. 58, 02
        mov     eax, dword [ebp+0CH]                    ; 37FB _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 37FE _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 3801 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 3804 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 3807 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 380A _ 8B. 00
        mov     dword [esp+18H], edi                    ; 380C _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 3810 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 3814 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 3818 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 7                       ; 381C _ C7. 44 24, 08, 00000007
        mov     dword [esp+4H], edx                     ; 3824 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3828 _ 89. 04 24
        call    _boxfill8                               ; 382B _ E8, 000007DC
        mov     eax, dword [ebp-20H]                    ; 3830 _ 8B. 45, E0
        lea     edi, [eax+2H]                           ; 3833 _ 8D. 78, 02
        mov     eax, dword [ebp-1CH]                    ; 3836 _ 8B. 45, E4
        lea     esi, [eax+2H]                           ; 3839 _ 8D. 70, 02
        mov     eax, dword [ebp+10H]                    ; 383C _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 383F _ 8D. 58, FD
        mov     eax, dword [ebp-1CH]                    ; 3842 _ 8B. 45, E4
        lea     ecx, [eax+2H]                           ; 3845 _ 8D. 48, 02
        mov     eax, dword [ebp+8H]                     ; 3848 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 384B _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 384E _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3851 _ 8B. 00
        mov     dword [esp+18H], edi                    ; 3853 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 3857 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 385B _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 385F _ 89. 4C 24, 0C
        mov     dword [esp+8H], 7                       ; 3863 _ C7. 44 24, 08, 00000007
        mov     dword [esp+4H], edx                     ; 386B _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 386F _ 89. 04 24
        call    _boxfill8                               ; 3872 _ E8, 00000795
        mov     eax, dword [ebp+10H]                    ; 3877 _ 8B. 45, 10
        lea     esi, [eax-2H]                           ; 387A _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 387D _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 3880 _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 3883 _ 8B. 45, 0C
        lea     ecx, [eax-1H]                           ; 3886 _ 8D. 48, FF
        mov     eax, dword [ebp+8H]                     ; 3889 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 388C _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 388F _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3892 _ 8B. 00
        mov     dword [esp+18H], esi                    ; 3894 _ 89. 74 24, 18
        mov     esi, dword [ebp-1CH]                    ; 3898 _ 8B. 75, E4
        mov     dword [esp+14H], esi                    ; 389B _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 389F _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 38A3 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 0                       ; 38A7 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 38AF _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 38B3 _ 89. 04 24
        call    _boxfill8                               ; 38B6 _ E8, 00000751
        mov     eax, dword [ebp+0CH]                    ; 38BB _ 8B. 45, 0C
        lea     esi, [eax-2H]                           ; 38BE _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 38C1 _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 38C4 _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 38C7 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 38CA _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 38CD _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 38D0 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 38D3 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 38D6 _ 8B. 00
        mov     edi, dword [ebp-20H]                    ; 38D8 _ 8B. 7D, E0
        mov     dword [esp+18H], edi                    ; 38DB _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 38DF _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 38E3 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 38E7 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 0                       ; 38EB _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 38F3 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 38F7 _ 89. 04 24
        call    _boxfill8                               ; 38FA _ E8, 0000070D
        mov     eax, dword [ebp-20H]                    ; 38FF _ 8B. 45, E0
        lea     esi, [eax+1H]                           ; 3902 _ 8D. 70, 01
        mov     eax, dword [ebp-20H]                    ; 3905 _ 8B. 45, E0
        lea     ebx, [eax+1H]                           ; 3908 _ 8D. 58, 01
        mov     eax, dword [ebp+0CH]                    ; 390B _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 390E _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 3911 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 3914 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 3917 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 391A _ 8B. 00
        mov     dword [esp+18H], esi                    ; 391C _ 89. 74 24, 18
        mov     esi, dword [ebp-1CH]                    ; 3920 _ 8B. 75, E4
        mov     dword [esp+14H], esi                    ; 3923 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 3927 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 392B _ 89. 4C 24, 0C
        mov     dword [esp+8H], 8                       ; 392F _ C7. 44 24, 08, 00000008
        mov     dword [esp+4H], edx                     ; 3937 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 393B _ 89. 04 24
        call    _boxfill8                               ; 393E _ E8, 000006C9
        mov     eax, dword [ebp-20H]                    ; 3943 _ 8B. 45, E0
        lea     edi, [eax+1H]                           ; 3946 _ 8D. 78, 01
        mov     eax, dword [ebp-1CH]                    ; 3949 _ 8B. 45, E4
        lea     esi, [eax+1H]                           ; 394C _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 394F _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 3952 _ 8D. 58, FE
        mov     eax, dword [ebp-1CH]                    ; 3955 _ 8B. 45, E4
        lea     ecx, [eax+1H]                           ; 3958 _ 8D. 48, 01
        mov     eax, dword [ebp+8H]                     ; 395B _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 395E _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 3961 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3964 _ 8B. 00
        mov     dword [esp+18H], edi                    ; 3966 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 396A _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 396E _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 3972 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 8                       ; 3976 _ C7. 44 24, 08, 00000008
        mov     dword [esp+4H], edx                     ; 397E _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3982 _ 89. 04 24
        call    _boxfill8                               ; 3985 _ E8, 00000682
        mov     eax, dword [ebp+10H]                    ; 398A _ 8B. 45, 10
        lea     esi, [eax-1H]                           ; 398D _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 3990 _ 8B. 45, 0C
        lea     ebx, [eax-1H]                           ; 3993 _ 8D. 58, FF
        mov     eax, dword [ebp+1CH]                    ; 3996 _ 8B. 45, 1C
        movzx   eax, al                                 ; 3999 _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 399C _ 8B. 55, 08
        mov     ecx, dword [edx+4H]                     ; 399F _ 8B. 4A, 04
        mov     edx, dword [ebp+8H]                     ; 39A2 _ 8B. 55, 08
        mov     edx, dword [edx]                        ; 39A5 _ 8B. 12
        mov     edi, dword [ebp-20H]                    ; 39A7 _ 8B. 7D, E0
        mov     dword [esp+18H], edi                    ; 39AA _ 89. 7C 24, 18
        mov     edi, dword [ebp-1CH]                    ; 39AE _ 8B. 7D, E4
        mov     dword [esp+14H], edi                    ; 39B1 _ 89. 7C 24, 14
        mov     dword [esp+10H], esi                    ; 39B5 _ 89. 74 24, 10
        mov     dword [esp+0CH], ebx                    ; 39B9 _ 89. 5C 24, 0C
        mov     dword [esp+8H], eax                     ; 39BD _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 39C1 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 39C5 _ 89. 14 24
        call    _boxfill8                               ; 39C8 _ E8, 0000063F
        nop                                             ; 39CD _ 90
        add     esp, 60                                 ; 39CE _ 83. C4, 3C
        pop     ebx                                     ; 39D1 _ 5B
        pop     esi                                     ; 39D2 _ 5E
        pop     edi                                     ; 39D3 _ 5F
        pop     ebp                                     ; 39D4 _ 5D
        ret                                             ; 39D5 _ C3
; _make_textbox8 End of function

_init_screen8:; Function begin
        push    ebp                                     ; 39D6 _ 55
        mov     ebp, esp                                ; 39D7 _ 89. E5
        push    ebx                                     ; 39D9 _ 53
        sub     esp, 36                                 ; 39DA _ 83. EC, 24
        mov     eax, dword [ebp+10H]                    ; 39DD _ 8B. 45, 10
        lea     edx, [eax-1DH]                          ; 39E0 _ 8D. 50, E3
        mov     eax, dword [ebp+0CH]                    ; 39E3 _ 8B. 45, 0C
        sub     eax, 1                                  ; 39E6 _ 83. E8, 01
        mov     dword [esp+18H], edx                    ; 39E9 _ 89. 54 24, 18
        mov     dword [esp+14H], eax                    ; 39ED _ 89. 44 24, 14
        mov     dword [esp+10H], 0                      ; 39F1 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 39F9 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 14                      ; 3A01 _ C7. 44 24, 08, 0000000E
        mov     eax, dword [ebp+0CH]                    ; 3A09 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 3A0C _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3A10 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3A13 _ 89. 04 24
        call    _boxfill8                               ; 3A16 _ E8, 000005F1
        mov     eax, dword [ebp+10H]                    ; 3A1B _ 8B. 45, 10
        lea     ecx, [eax-1CH]                          ; 3A1E _ 8D. 48, E4
        mov     eax, dword [ebp+0CH]                    ; 3A21 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 3A24 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 3A27 _ 8B. 45, 10
        sub     eax, 28                                 ; 3A2A _ 83. E8, 1C
        mov     dword [esp+18H], ecx                    ; 3A2D _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 3A31 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 3A35 _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 3A39 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 3A41 _ C7. 44 24, 08, 00000008
        mov     eax, dword [ebp+0CH]                    ; 3A49 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 3A4C _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3A50 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3A53 _ 89. 04 24
        call    _boxfill8                               ; 3A56 _ E8, 000005B1
        mov     eax, dword [ebp+10H]                    ; 3A5B _ 8B. 45, 10
        lea     ecx, [eax-1BH]                          ; 3A5E _ 8D. 48, E5
        mov     eax, dword [ebp+0CH]                    ; 3A61 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 3A64 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 3A67 _ 8B. 45, 10
        sub     eax, 27                                 ; 3A6A _ 83. E8, 1B
        mov     dword [esp+18H], ecx                    ; 3A6D _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 3A71 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 3A75 _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 3A79 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 7                       ; 3A81 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 3A89 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 3A8C _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3A90 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3A93 _ 89. 04 24
        call    _boxfill8                               ; 3A96 _ E8, 00000571
        mov     eax, dword [ebp+10H]                    ; 3A9B _ 8B. 45, 10
        lea     ecx, [eax-1H]                           ; 3A9E _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 3AA1 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 3AA4 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 3AA7 _ 8B. 45, 10
        sub     eax, 26                                 ; 3AAA _ 83. E8, 1A
        mov     dword [esp+18H], ecx                    ; 3AAD _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 3AB1 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 3AB5 _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 3AB9 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 3AC1 _ C7. 44 24, 08, 00000008
        mov     eax, dword [ebp+0CH]                    ; 3AC9 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 3ACC _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3AD0 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3AD3 _ 89. 04 24
        call    _boxfill8                               ; 3AD6 _ E8, 00000531
        mov     eax, dword [ebp+10H]                    ; 3ADB _ 8B. 45, 10
        lea     edx, [eax-18H]                          ; 3ADE _ 8D. 50, E8
        mov     eax, dword [ebp+10H]                    ; 3AE1 _ 8B. 45, 10
        sub     eax, 24                                 ; 3AE4 _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 3AE7 _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 3AEB _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 3AF3 _ 89. 44 24, 10
        mov     dword [esp+0CH], 3                      ; 3AF7 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 7                       ; 3AFF _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 3B07 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 3B0A _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3B0E _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3B11 _ 89. 04 24
        call    _boxfill8                               ; 3B14 _ E8, 000004F3
        mov     eax, dword [ebp+10H]                    ; 3B19 _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 3B1C _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 3B1F _ 8B. 45, 10
        sub     eax, 24                                 ; 3B22 _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 3B25 _ 89. 54 24, 18
        mov     dword [esp+14H], 2                      ; 3B29 _ C7. 44 24, 14, 00000002
        mov     dword [esp+10H], eax                    ; 3B31 _ 89. 44 24, 10
        mov     dword [esp+0CH], 2                      ; 3B35 _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 7                       ; 3B3D _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 3B45 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 3B48 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3B4C _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3B4F _ 89. 04 24
        call    _boxfill8                               ; 3B52 _ E8, 000004B5
        mov     eax, dword [ebp+10H]                    ; 3B57 _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 3B5A _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 3B5D _ 8B. 45, 10
        sub     eax, 4                                  ; 3B60 _ 83. E8, 04
        mov     dword [esp+18H], edx                    ; 3B63 _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 3B67 _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 3B6F _ 89. 44 24, 10
        mov     dword [esp+0CH], 3                      ; 3B73 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 15                      ; 3B7B _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 3B83 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 3B86 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3B8A _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3B8D _ 89. 04 24
        call    _boxfill8                               ; 3B90 _ E8, 00000477
        mov     eax, dword [ebp+10H]                    ; 3B95 _ 8B. 45, 10
        lea     edx, [eax-5H]                           ; 3B98 _ 8D. 50, FB
        mov     eax, dword [ebp+10H]                    ; 3B9B _ 8B. 45, 10
        sub     eax, 23                                 ; 3B9E _ 83. E8, 17
        mov     dword [esp+18H], edx                    ; 3BA1 _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 3BA5 _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 3BAD _ 89. 44 24, 10
        mov     dword [esp+0CH], 59                     ; 3BB1 _ C7. 44 24, 0C, 0000003B
        mov     dword [esp+8H], 15                      ; 3BB9 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 3BC1 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 3BC4 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3BC8 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3BCB _ 89. 04 24
        call    _boxfill8                               ; 3BCE _ E8, 00000439
        mov     eax, dword [ebp+10H]                    ; 3BD3 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 3BD6 _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 3BD9 _ 8B. 45, 10
        sub     eax, 3                                  ; 3BDC _ 83. E8, 03
        mov     dword [esp+18H], edx                    ; 3BDF _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 3BE3 _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 3BEB _ 89. 44 24, 10
        mov     dword [esp+0CH], 2                      ; 3BEF _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 0                       ; 3BF7 _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp+0CH]                    ; 3BFF _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 3C02 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3C06 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3C09 _ 89. 04 24
        call    _boxfill8                               ; 3C0C _ E8, 000003FB
        mov     eax, dword [ebp+10H]                    ; 3C11 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 3C14 _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 3C17 _ 8B. 45, 10
        sub     eax, 24                                 ; 3C1A _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 3C1D _ 89. 54 24, 18
        mov     dword [esp+14H], 60                     ; 3C21 _ C7. 44 24, 14, 0000003C
        mov     dword [esp+10H], eax                    ; 3C29 _ 89. 44 24, 10
        mov     dword [esp+0CH], 60                     ; 3C2D _ C7. 44 24, 0C, 0000003C
        mov     dword [esp+8H], 0                       ; 3C35 _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp+0CH]                    ; 3C3D _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 3C40 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3C44 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3C47 _ 89. 04 24
        call    _boxfill8                               ; 3C4A _ E8, 000003BD
        mov     eax, dword [ebp+10H]                    ; 3C4F _ 8B. 45, 10
        lea     ebx, [eax-18H]                          ; 3C52 _ 8D. 58, E8
        mov     eax, dword [ebp+0CH]                    ; 3C55 _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 3C58 _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 3C5B _ 8B. 45, 10
        lea     edx, [eax-18H]                          ; 3C5E _ 8D. 50, E8
        mov     eax, dword [ebp+0CH]                    ; 3C61 _ 8B. 45, 0C
        sub     eax, 47                                 ; 3C64 _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 3C67 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 3C6B _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 3C6F _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 3C73 _ 89. 44 24, 0C
        mov     dword [esp+8H], 15                      ; 3C77 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 3C7F _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 3C82 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3C86 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3C89 _ 89. 04 24
        call    _boxfill8                               ; 3C8C _ E8, 0000037B
        mov     eax, dword [ebp+10H]                    ; 3C91 _ 8B. 45, 10
        lea     ebx, [eax-4H]                           ; 3C94 _ 8D. 58, FC
        mov     eax, dword [ebp+0CH]                    ; 3C97 _ 8B. 45, 0C
        lea     ecx, [eax-2FH]                          ; 3C9A _ 8D. 48, D1
        mov     eax, dword [ebp+10H]                    ; 3C9D _ 8B. 45, 10
        lea     edx, [eax-17H]                          ; 3CA0 _ 8D. 50, E9
        mov     eax, dword [ebp+0CH]                    ; 3CA3 _ 8B. 45, 0C
        sub     eax, 47                                 ; 3CA6 _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 3CA9 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 3CAD _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 3CB1 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 3CB5 _ 89. 44 24, 0C
        mov     dword [esp+8H], 15                      ; 3CB9 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 3CC1 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 3CC4 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3CC8 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3CCB _ 89. 04 24
        call    _boxfill8                               ; 3CCE _ E8, 00000339
        mov     eax, dword [ebp+10H]                    ; 3CD3 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 3CD6 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 3CD9 _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 3CDC _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 3CDF _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 3CE2 _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 3CE5 _ 8B. 45, 0C
        sub     eax, 47                                 ; 3CE8 _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 3CEB _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 3CEF _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 3CF3 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 3CF7 _ 89. 44 24, 0C
        mov     dword [esp+8H], 7                       ; 3CFB _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 3D03 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 3D06 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3D0A _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3D0D _ 89. 04 24
        call    _boxfill8                               ; 3D10 _ E8, 000002F7
        mov     eax, dword [ebp+10H]                    ; 3D15 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 3D18 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 3D1B _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 3D1E _ 8D. 48, FD
        mov     eax, dword [ebp+10H]                    ; 3D21 _ 8B. 45, 10
        lea     edx, [eax-18H]                          ; 3D24 _ 8D. 50, E8
        mov     eax, dword [ebp+0CH]                    ; 3D27 _ 8B. 45, 0C
        sub     eax, 3                                  ; 3D2A _ 83. E8, 03
        mov     dword [esp+18H], ebx                    ; 3D2D _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 3D31 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 3D35 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 3D39 _ 89. 44 24, 0C
        mov     dword [esp+8H], 7                       ; 3D3D _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 3D45 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 3D48 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3D4C _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3D4F _ 89. 04 24
        call    _boxfill8                               ; 3D52 _ E8, 000002B5
        nop                                             ; 3D57 _ 90
        add     esp, 36                                 ; 3D58 _ 83. C4, 24
        pop     ebx                                     ; 3D5B _ 5B
        pop     ebp                                     ; 3D5C _ 5D
        ret                                             ; 3D5D _ C3
; _init_screen8 End of function

_computeMousePosition:; Function begin
        push    ebp                                     ; 3D5E _ 55
        mov     ebp, esp                                ; 3D5F _ 89. E5
        mov     eax, dword [ebp+10H]                    ; 3D61 _ 8B. 45, 10
        mov     edx, dword [eax+4H]                     ; 3D64 _ 8B. 50, 04
        mov     eax, dword [_mx]                        ; 3D67 _ A1, 00000000(d)
        add     eax, edx                                ; 3D6C _ 01. D0
        mov     dword [_mx], eax                        ; 3D6E _ A3, 00000000(d)
        mov     eax, dword [ebp+10H]                    ; 3D73 _ 8B. 45, 10
        mov     edx, dword [eax+8H]                     ; 3D76 _ 8B. 50, 08
        mov     eax, dword [_my]                        ; 3D79 _ A1, 00000000(d)
        add     eax, edx                                ; 3D7E _ 01. D0
        mov     dword [_my], eax                        ; 3D80 _ A3, 00000000(d)
        mov     eax, dword [_mx]                        ; 3D85 _ A1, 00000000(d)
        test    eax, eax                                ; 3D8A _ 85. C0
        jns     ?_186                                   ; 3D8C _ 79, 0A
        mov     dword [_mx], 0                          ; 3D8E _ C7. 05, 00000000(d), 00000000
?_186:  mov     eax, dword [_my]                        ; 3D98 _ A1, 00000000(d)
        test    eax, eax                                ; 3D9D _ 85. C0
        jns     ?_187                                   ; 3D9F _ 79, 0A
        mov     dword [_my], 0                          ; 3DA1 _ C7. 05, 00000000(d), 00000000
?_187:  mov     edx, dword [_xsize]                     ; 3DAB _ 8B. 15, 00000000(d)
        mov     eax, dword [_mx]                        ; 3DB1 _ A1, 00000000(d)
        cmp     edx, eax                                ; 3DB6 _ 39. C2
        jg      ?_188                                   ; 3DB8 _ 7F, 0D
        mov     eax, dword [_xsize]                     ; 3DBA _ A1, 00000000(d)
        sub     eax, 1                                  ; 3DBF _ 83. E8, 01
        mov     dword [_mx], eax                        ; 3DC2 _ A3, 00000000(d)
?_188:  mov     edx, dword [_ysize]                     ; 3DC7 _ 8B. 15, 00000000(d)
        mov     eax, dword [_my]                        ; 3DCD _ A1, 00000000(d)
        cmp     edx, eax                                ; 3DD2 _ 39. C2
        jg      ?_189                                   ; 3DD4 _ 7F, 0D
        mov     eax, dword [_ysize]                     ; 3DD6 _ A1, 00000000(d)
        sub     eax, 1                                  ; 3DDB _ 83. E8, 01
        mov     dword [_my], eax                        ; 3DDE _ A3, 00000000(d)
?_189:  nop                                             ; 3DE3 _ 90
        pop     ebp                                     ; 3DE4 _ 5D
        ret                                             ; 3DE5 _ C3
; _computeMousePosition End of function

_initBootInfo:; Function begin
        push    ebp                                     ; 3DE6 _ 55
        mov     ebp, esp                                ; 3DE7 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 3DE9 _ 8B. 45, 08
        mov     dword [eax], -536870912                 ; 3DEC _ C7. 00, E0000000
        mov     eax, dword [ebp+8H]                     ; 3DF2 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 640                      ; 3DF5 _ 66: C7. 40, 04, 0280
        mov     eax, dword [ebp+8H]                     ; 3DFB _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 480                      ; 3DFE _ 66: C7. 40, 06, 01E0
        nop                                             ; 3E04 _ 90
        pop     ebp                                     ; 3E05 _ 5D
        ret                                             ; 3E06 _ C3
; _initBootInfo End of function

_init_palette:; Function begin
        push    ebp                                     ; 3E07 _ 55
        mov     ebp, esp                                ; 3E08 _ 89. E5
        push    ebx                                     ; 3E0A _ 53
        sub     esp, 692                                ; 3E0B _ 81. EC, 000002B4
        mov     dword [esp+4H], 15                      ; 3E19 _ C7. 44 24, 04, 0000000F
        mov     dword [esp], 0                          ; 3E21 _ C7. 04 24, 00000000
mov     dword [esp+8H], _table_rgb.2359
        call    _set_palette                            ; 3E28 _ E8, 00000139
        mov     dword [ebp-14H], 0                      ; 3E2D _ C7. 45, EC, 00000000
        jmp     ?_195                                   ; 3E34 _ E9, 000000FB

?_190:  mov     dword [ebp-10H], 0                      ; 3E39 _ C7. 45, F0, 00000000
        jmp     ?_194                                   ; 3E40 _ E9, 000000E1

?_191:  mov     dword [ebp-0CH], 0                      ; 3E45 _ C7. 45, F4, 00000000
        jmp     ?_193                                   ; 3E4C _ E9, 000000C7

?_192:  mov     eax, dword [ebp-0CH]                    ; 3E51 _ 8B. 45, F4
        mov     ebx, eax                                ; 3E54 _ 89. C3
        mov     edx, dword [ebp-10H]                    ; 3E56 _ 8B. 55, F0
        mov     eax, edx                                ; 3E59 _ 89. D0
        add     eax, eax                                ; 3E5B _ 01. C0
        add     eax, edx                                ; 3E5D _ 01. D0
        add     eax, eax                                ; 3E5F _ 01. C0
        mov     edx, eax                                ; 3E61 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 3E63 _ 8B. 45, F4
        lea     ecx, [edx+eax]                          ; 3E66 _ 8D. 0C 02
        mov     edx, dword [ebp-14H]                    ; 3E69 _ 8B. 55, EC
        mov     eax, edx                                ; 3E6C _ 89. D0
        shl     eax, 3                                  ; 3E6E _ C1. E0, 03
        add     eax, edx                                ; 3E71 _ 01. D0
        shl     eax, 2                                  ; 3E73 _ C1. E0, 02
        lea     edx, [ecx+eax]                          ; 3E76 _ 8D. 14 01
        mov     eax, edx                                ; 3E79 _ 89. D0
        add     eax, eax                                ; 3E7B _ 01. C0
        add     edx, eax                                ; 3E7D _ 01. C2
        mov     ecx, 51                                 ; 3E7F _ B9, 00000033
        mov     eax, ebx                                ; 3E84 _ 89. D8
        imul    eax, ecx                                ; 3E86 _ 0F AF. C1
        mov     byte [ebp+edx-29CH], al                 ; 3E89 _ 88. 84 15, FFFFFD64
        mov     eax, dword [ebp-10H]                    ; 3E90 _ 8B. 45, F0
        mov     ebx, eax                                ; 3E93 _ 89. C3
        mov     edx, dword [ebp-10H]                    ; 3E95 _ 8B. 55, F0
        mov     eax, edx                                ; 3E98 _ 89. D0
        add     eax, eax                                ; 3E9A _ 01. C0
        add     eax, edx                                ; 3E9C _ 01. D0
        add     eax, eax                                ; 3E9E _ 01. C0
        mov     edx, eax                                ; 3EA0 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 3EA2 _ 8B. 45, F4
        lea     ecx, [edx+eax]                          ; 3EA5 _ 8D. 0C 02
        mov     edx, dword [ebp-14H]                    ; 3EA8 _ 8B. 55, EC
        mov     eax, edx                                ; 3EAB _ 89. D0
        shl     eax, 3                                  ; 3EAD _ C1. E0, 03
        add     eax, edx                                ; 3EB0 _ 01. D0
        shl     eax, 2                                  ; 3EB2 _ C1. E0, 02
        lea     edx, [ecx+eax]                          ; 3EB5 _ 8D. 14 01
        mov     eax, edx                                ; 3EB8 _ 89. D0
        add     eax, eax                                ; 3EBA _ 01. C0
        add     eax, edx                                ; 3EBC _ 01. D0
        lea     edx, [eax+1H]                           ; 3EBE _ 8D. 50, 01
        mov     ecx, 51                                 ; 3EC1 _ B9, 00000033
        mov     eax, ebx                                ; 3EC6 _ 89. D8
        imul    eax, ecx                                ; 3EC8 _ 0F AF. C1
        mov     byte [ebp+edx-29CH], al                 ; 3ECB _ 88. 84 15, FFFFFD64
        mov     eax, dword [ebp-14H]                    ; 3ED2 _ 8B. 45, EC
        mov     ebx, eax                                ; 3ED5 _ 89. C3
        mov     edx, dword [ebp-10H]                    ; 3ED7 _ 8B. 55, F0
        mov     eax, edx                                ; 3EDA _ 89. D0
        add     eax, eax                                ; 3EDC _ 01. C0
        add     eax, edx                                ; 3EDE _ 01. D0
        add     eax, eax                                ; 3EE0 _ 01. C0
        mov     edx, eax                                ; 3EE2 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 3EE4 _ 8B. 45, F4
        lea     ecx, [edx+eax]                          ; 3EE7 _ 8D. 0C 02
        mov     edx, dword [ebp-14H]                    ; 3EEA _ 8B. 55, EC
        mov     eax, edx                                ; 3EED _ 89. D0
        shl     eax, 3                                  ; 3EEF _ C1. E0, 03
        add     eax, edx                                ; 3EF2 _ 01. D0
        shl     eax, 2                                  ; 3EF4 _ C1. E0, 02
        lea     edx, [ecx+eax]                          ; 3EF7 _ 8D. 14 01
        mov     eax, edx                                ; 3EFA _ 89. D0
        add     eax, eax                                ; 3EFC _ 01. C0
        add     eax, edx                                ; 3EFE _ 01. D0
        lea     edx, [eax+2H]                           ; 3F00 _ 8D. 50, 02
        mov     ecx, 51                                 ; 3F03 _ B9, 00000033
        mov     eax, ebx                                ; 3F08 _ 89. D8
        imul    eax, ecx                                ; 3F0A _ 0F AF. C1
        mov     byte [ebp+edx-29CH], al                 ; 3F0D _ 88. 84 15, FFFFFD64
        add     dword [ebp-0CH], 1                      ; 3F14 _ 83. 45, F4, 01
?_193:  cmp     dword [ebp-0CH], 5                      ; 3F18 _ 83. 7D, F4, 05
        jle     ?_192                                   ; 3F1C _ 0F 8E, FFFFFF2F
        add     dword [ebp-10H], 1                      ; 3F22 _ 83. 45, F0, 01
?_194:  cmp     dword [ebp-10H], 5                      ; 3F26 _ 83. 7D, F0, 05
        jle     ?_191                                   ; 3F2A _ 0F 8E, FFFFFF15
        add     dword [ebp-14H], 1                      ; 3F30 _ 83. 45, EC, 01
?_195:  cmp     dword [ebp-14H], 5                      ; 3F34 _ 83. 7D, EC, 05
        jle     ?_190                                   ; 3F38 _ 0F 8E, FFFFFEFB
        lea     eax, [ebp-29CH]                         ; 3F3E _ 8D. 85, FFFFFD64
        mov     dword [esp+8H], eax                     ; 3F44 _ 89. 44 24, 08
        mov     dword [esp+4H], 231                     ; 3F48 _ C7. 44 24, 04, 000000E7
        mov     dword [esp], 16                         ; 3F50 _ C7. 04 24, 00000010
        call    _set_palette                            ; 3F57 _ E8, 0000000A
        nop                                             ; 3F5C _ 90
        add     esp, 692                                ; 3F5D _ 81. C4, 000002B4
        pop     ebx                                     ; 3F63 _ 5B
        pop     ebp                                     ; 3F64 _ 5D
        ret                                             ; 3F65 _ C3
; _init_palette End of function

_set_palette:; Function begin
        push    ebp                                     ; 3F66 _ 55
        mov     ebp, esp                                ; 3F67 _ 89. E5
        sub     esp, 40                                 ; 3F69 _ 83. EC, 28
        call    _io_load_eflags                         ; 3F6C _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 3F71 _ 89. 45, F0
        call    _io_cli                                 ; 3F74 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 3F79 _ 8B. 45, 08
        mov     dword [esp+4H], eax                     ; 3F7C _ 89. 44 24, 04
        mov     dword [esp], 968                        ; 3F80 _ C7. 04 24, 000003C8
        call    _io_out8                                ; 3F87 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 3F8C _ 8B. 45, 08
        mov     dword [ebp-0CH], eax                    ; 3F8F _ 89. 45, F4
        jmp     ?_197                                   ; 3F92 _ EB, 62

?_196:  mov     eax, dword [ebp+10H]                    ; 3F94 _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 3F97 _ 0F B6. 00
        shr     al, 2                                   ; 3F9A _ C0. E8, 02
        movzx   eax, al                                 ; 3F9D _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 3FA0 _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 3FA4 _ C7. 04 24, 000003C9
        call    _io_out8                                ; 3FAB _ E8, 00000000(rel)
        mov     eax, dword [ebp+10H]                    ; 3FB0 _ 8B. 45, 10
        add     eax, 1                                  ; 3FB3 _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 3FB6 _ 0F B6. 00
        shr     al, 2                                   ; 3FB9 _ C0. E8, 02
        movzx   eax, al                                 ; 3FBC _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 3FBF _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 3FC3 _ C7. 04 24, 000003C9
        call    _io_out8                                ; 3FCA _ E8, 00000000(rel)
        mov     eax, dword [ebp+10H]                    ; 3FCF _ 8B. 45, 10
        add     eax, 2                                  ; 3FD2 _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 3FD5 _ 0F B6. 00
        shr     al, 2                                   ; 3FD8 _ C0. E8, 02
        movzx   eax, al                                 ; 3FDB _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 3FDE _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 3FE2 _ C7. 04 24, 000003C9
        call    _io_out8                                ; 3FE9 _ E8, 00000000(rel)
        add     dword [ebp+10H], 3                      ; 3FEE _ 83. 45, 10, 03
        add     dword [ebp-0CH], 1                      ; 3FF2 _ 83. 45, F4, 01
?_197:  mov     eax, dword [ebp-0CH]                    ; 3FF6 _ 8B. 45, F4
        cmp     eax, dword [ebp+0CH]                    ; 3FF9 _ 3B. 45, 0C
        jle     ?_196                                   ; 3FFC _ 7E, 96
        mov     eax, dword [ebp-10H]                    ; 3FFE _ 8B. 45, F0
        mov     dword [esp], eax                        ; 4001 _ 89. 04 24
        call    _io_store_eflags                        ; 4004 _ E8, 00000000(rel)
        nop                                             ; 4009 _ 90
        leave                                           ; 400A _ C9
        ret                                             ; 400B _ C3
; _set_palette End of function

_boxfill8:; Function begin
        push    ebp                                     ; 400C _ 55
        mov     ebp, esp                                ; 400D _ 89. E5
        sub     esp, 20                                 ; 400F _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 4012 _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 4015 _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 4018 _ 8B. 45, 18
        mov     dword [ebp-8H], eax                     ; 401B _ 89. 45, F8
        jmp     ?_201                                   ; 401E _ EB, 31

?_198:  mov     eax, dword [ebp+14H]                    ; 4020 _ 8B. 45, 14
        mov     dword [ebp-4H], eax                     ; 4023 _ 89. 45, FC
        jmp     ?_200                                   ; 4026 _ EB, 1D

?_199:  mov     eax, dword [ebp-8H]                     ; 4028 _ 8B. 45, F8
        imul    eax, dword [ebp+0CH]                    ; 402B _ 0F AF. 45, 0C
        mov     edx, dword [ebp-4H]                     ; 402F _ 8B. 55, FC
        add     eax, edx                                ; 4032 _ 01. D0
        mov     edx, eax                                ; 4034 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 4036 _ 8B. 45, 08
        add     edx, eax                                ; 4039 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 403B _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 403F _ 88. 02
        add     dword [ebp-4H], 1                       ; 4041 _ 83. 45, FC, 01
?_200:  mov     eax, dword [ebp-4H]                     ; 4045 _ 8B. 45, FC
        cmp     eax, dword [ebp+1CH]                    ; 4048 _ 3B. 45, 1C
        jle     ?_199                                   ; 404B _ 7E, DB
        add     dword [ebp-8H], 1                       ; 404D _ 83. 45, F8, 01
?_201:  mov     eax, dword [ebp-8H]                     ; 4051 _ 8B. 45, F8
        cmp     eax, dword [ebp+20H]                    ; 4054 _ 3B. 45, 20
        jle     ?_198                                   ; 4057 _ 7E, C7
        nop                                             ; 4059 _ 90
        leave                                           ; 405A _ C9
        ret                                             ; 405B _ C3
; _boxfill8 End of function

_showFont8:; Function begin
        push    ebp                                     ; 405C _ 55
        mov     ebp, esp                                ; 405D _ 89. E5
        sub     esp, 20                                 ; 405F _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 4062 _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 4065 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 4068 _ C7. 45, FC, 00000000
        jmp     ?_211                                   ; 406F _ E9, 0000015C

?_202:  mov     edx, dword [ebp-4H]                     ; 4074 _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 4077 _ 8B. 45, 1C
        add     eax, edx                                ; 407A _ 01. D0
        movzx   eax, byte [eax]                         ; 407C _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 407F _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 4082 _ 80. 7D, FB, 00
        jns     ?_203                                   ; 4086 _ 79, 1E
        mov     edx, dword [ebp+14H]                    ; 4088 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 408B _ 8B. 45, FC
        add     eax, edx                                ; 408E _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 4090 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 4094 _ 8B. 55, 10
        add     eax, edx                                ; 4097 _ 01. D0
        mov     edx, eax                                ; 4099 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 409B _ 8B. 45, 08
        add     edx, eax                                ; 409E _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 40A0 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 40A4 _ 88. 02
?_203:  movsx   eax, byte [ebp-5H]                      ; 40A6 _ 0F BE. 45, FB
        and     eax, 40H                                ; 40AA _ 83. E0, 40
        test    eax, eax                                ; 40AD _ 85. C0
        jz      ?_204                                   ; 40AF _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 40B1 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 40B4 _ 8B. 45, FC
        add     eax, edx                                ; 40B7 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 40B9 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 40BD _ 8B. 55, 10
        add     eax, edx                                ; 40C0 _ 01. D0
        lea     edx, [eax+1H]                           ; 40C2 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 40C5 _ 8B. 45, 08
        add     edx, eax                                ; 40C8 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 40CA _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 40CE _ 88. 02
?_204:  movsx   eax, byte [ebp-5H]                      ; 40D0 _ 0F BE. 45, FB
        and     eax, 20H                                ; 40D4 _ 83. E0, 20
        test    eax, eax                                ; 40D7 _ 85. C0
        jz      ?_205                                   ; 40D9 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 40DB _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 40DE _ 8B. 45, FC
        add     eax, edx                                ; 40E1 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 40E3 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 40E7 _ 8B. 55, 10
        add     eax, edx                                ; 40EA _ 01. D0
        lea     edx, [eax+2H]                           ; 40EC _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 40EF _ 8B. 45, 08
        add     edx, eax                                ; 40F2 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 40F4 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 40F8 _ 88. 02
?_205:  movsx   eax, byte [ebp-5H]                      ; 40FA _ 0F BE. 45, FB
        and     eax, 10H                                ; 40FE _ 83. E0, 10
        test    eax, eax                                ; 4101 _ 85. C0
        jz      ?_206                                   ; 4103 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 4105 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 4108 _ 8B. 45, FC
        add     eax, edx                                ; 410B _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 410D _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 4111 _ 8B. 55, 10
        add     eax, edx                                ; 4114 _ 01. D0
        lea     edx, [eax+3H]                           ; 4116 _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 4119 _ 8B. 45, 08
        add     edx, eax                                ; 411C _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 411E _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 4122 _ 88. 02
?_206:  movsx   eax, byte [ebp-5H]                      ; 4124 _ 0F BE. 45, FB
        and     eax, 08H                                ; 4128 _ 83. E0, 08
        test    eax, eax                                ; 412B _ 85. C0
        jz      ?_207                                   ; 412D _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 412F _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 4132 _ 8B. 45, FC
        add     eax, edx                                ; 4135 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 4137 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 413B _ 8B. 55, 10
        add     eax, edx                                ; 413E _ 01. D0
        lea     edx, [eax+4H]                           ; 4140 _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 4143 _ 8B. 45, 08
        add     edx, eax                                ; 4146 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 4148 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 414C _ 88. 02
?_207:  movsx   eax, byte [ebp-5H]                      ; 414E _ 0F BE. 45, FB
        and     eax, 04H                                ; 4152 _ 83. E0, 04
        test    eax, eax                                ; 4155 _ 85. C0
        jz      ?_208                                   ; 4157 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 4159 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 415C _ 8B. 45, FC
        add     eax, edx                                ; 415F _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 4161 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 4165 _ 8B. 55, 10
        add     eax, edx                                ; 4168 _ 01. D0
        lea     edx, [eax+5H]                           ; 416A _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 416D _ 8B. 45, 08
        add     edx, eax                                ; 4170 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 4172 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 4176 _ 88. 02
?_208:  movsx   eax, byte [ebp-5H]                      ; 4178 _ 0F BE. 45, FB
        and     eax, 02H                                ; 417C _ 83. E0, 02
        test    eax, eax                                ; 417F _ 85. C0
        jz      ?_209                                   ; 4181 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 4183 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 4186 _ 8B. 45, FC
        add     eax, edx                                ; 4189 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 418B _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 418F _ 8B. 55, 10
        add     eax, edx                                ; 4192 _ 01. D0
        lea     edx, [eax+6H]                           ; 4194 _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 4197 _ 8B. 45, 08
        add     edx, eax                                ; 419A _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 419C _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 41A0 _ 88. 02
?_209:  movsx   eax, byte [ebp-5H]                      ; 41A2 _ 0F BE. 45, FB
        and     eax, 01H                                ; 41A6 _ 83. E0, 01
        test    eax, eax                                ; 41A9 _ 85. C0
        jz      ?_210                                   ; 41AB _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 41AD _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 41B0 _ 8B. 45, FC
        add     eax, edx                                ; 41B3 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 41B5 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 41B9 _ 8B. 55, 10
        add     eax, edx                                ; 41BC _ 01. D0
        lea     edx, [eax+7H]                           ; 41BE _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 41C1 _ 8B. 45, 08
        add     edx, eax                                ; 41C4 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 41C6 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 41CA _ 88. 02
?_210:  add     dword [ebp-4H], 1                       ; 41CC _ 83. 45, FC, 01
?_211:  cmp     dword [ebp-4H], 15                      ; 41D0 _ 83. 7D, FC, 0F
        jle     ?_202                                   ; 41D4 _ 0F 8E, FFFFFE9A
        nop                                             ; 41DA _ 90
        leave                                           ; 41DB _ C9
        ret                                             ; 41DC _ C3
; _showFont8 End of function

_init_mouse_cursor:; Function begin
        push    ebp                                     ; 41DD _ 55
        mov     ebp, esp                                ; 41DE _ 89. E5
        sub     esp, 20                                 ; 41E0 _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 41E3 _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 41E6 _ 88. 45, EC
        mov     dword [ebp-8H], 0                       ; 41E9 _ C7. 45, F8, 00000000
        jmp     ?_218                                   ; 41F0 _ E9, 000000B1

?_212:  mov     dword [ebp-4H], 0                       ; 41F5 _ C7. 45, FC, 00000000
        jmp     ?_217                                   ; 41FC _ E9, 00000097

?_213:  mov     eax, dword [ebp-8H]                     ; 4201 _ 8B. 45, F8
        shl     eax, 4                                  ; 4204 _ C1. E0, 04
        mov     edx, eax                                ; 4207 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 4209 _ 8B. 45, FC
        add     eax, edx                                ; 420C _ 01. D0
        add     eax, _cursor.2424                       ; 420E _ 05, 00000220(d)
        movzx   eax, byte [eax]                         ; 4213 _ 0F B6. 00
        cmp     al, 42                                  ; 4216 _ 3C, 2A
        jnz     ?_214                                   ; 4218 _ 75, 17
        mov     eax, dword [ebp-8H]                     ; 421A _ 8B. 45, F8
        shl     eax, 4                                  ; 421D _ C1. E0, 04
        mov     edx, eax                                ; 4220 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 4222 _ 8B. 45, FC
        add     eax, edx                                ; 4225 _ 01. D0
        mov     edx, eax                                ; 4227 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 4229 _ 8B. 45, 08
        add     eax, edx                                ; 422C _ 01. D0
        mov     byte [eax], 0                           ; 422E _ C6. 00, 00
?_214:  mov     eax, dword [ebp-8H]                     ; 4231 _ 8B. 45, F8
        shl     eax, 4                                  ; 4234 _ C1. E0, 04
        mov     edx, eax                                ; 4237 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 4239 _ 8B. 45, FC
        add     eax, edx                                ; 423C _ 01. D0
        add     eax, _cursor.2424                       ; 423E _ 05, 00000220(d)
        movzx   eax, byte [eax]                         ; 4243 _ 0F B6. 00
        cmp     al, 79                                  ; 4246 _ 3C, 4F
        jnz     ?_215                                   ; 4248 _ 75, 17
        mov     eax, dword [ebp-8H]                     ; 424A _ 8B. 45, F8
        shl     eax, 4                                  ; 424D _ C1. E0, 04
        mov     edx, eax                                ; 4250 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 4252 _ 8B. 45, FC
        add     eax, edx                                ; 4255 _ 01. D0
        mov     edx, eax                                ; 4257 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 4259 _ 8B. 45, 08
        add     eax, edx                                ; 425C _ 01. D0
        mov     byte [eax], 7                           ; 425E _ C6. 00, 07
?_215:  mov     eax, dword [ebp-8H]                     ; 4261 _ 8B. 45, F8
        shl     eax, 4                                  ; 4264 _ C1. E0, 04
        mov     edx, eax                                ; 4267 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 4269 _ 8B. 45, FC
        add     eax, edx                                ; 426C _ 01. D0
        add     eax, _cursor.2424                       ; 426E _ 05, 00000220(d)
        movzx   eax, byte [eax]                         ; 4273 _ 0F B6. 00
        cmp     al, 46                                  ; 4276 _ 3C, 2E
        jnz     ?_216                                   ; 4278 _ 75, 1A
        mov     eax, dword [ebp-8H]                     ; 427A _ 8B. 45, F8
        shl     eax, 4                                  ; 427D _ C1. E0, 04
        mov     edx, eax                                ; 4280 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 4282 _ 8B. 45, FC
        add     eax, edx                                ; 4285 _ 01. D0
        mov     edx, eax                                ; 4287 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 4289 _ 8B. 45, 08
        add     edx, eax                                ; 428C _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 428E _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 4292 _ 88. 02
?_216:  add     dword [ebp-4H], 1                       ; 4294 _ 83. 45, FC, 01
?_217:  cmp     dword [ebp-4H], 15                      ; 4298 _ 83. 7D, FC, 0F
        jle     ?_213                                   ; 429C _ 0F 8E, FFFFFF5F
        add     dword [ebp-8H], 1                       ; 42A2 _ 83. 45, F8, 01
?_218:  cmp     dword [ebp-8H], 15                      ; 42A6 _ 83. 7D, F8, 0F
        jle     ?_212                                   ; 42AA _ 0F 8E, FFFFFF45
        nop                                             ; 42B0 _ 90
        leave                                           ; 42B1 _ C9
        ret                                             ; 42B2 _ C3
; _init_mouse_cursor End of function

_putblock:; Function begin
        push    ebp                                     ; 42B3 _ 55
        mov     ebp, esp                                ; 42B4 _ 89. E5
        push    ebx                                     ; 42B6 _ 53
        sub     esp, 16                                 ; 42B7 _ 83. EC, 10
        mov     dword [ebp-0CH], 0                      ; 42BA _ C7. 45, F4, 00000000
        jmp     ?_222                                   ; 42C1 _ EB, 4E

?_219:  mov     dword [ebp-8H], 0                       ; 42C3 _ C7. 45, F8, 00000000
        jmp     ?_221                                   ; 42CA _ EB, 39

?_220:  mov     eax, dword [ebp-0CH]                    ; 42CC _ 8B. 45, F4
        imul    eax, dword [ebp+24H]                    ; 42CF _ 0F AF. 45, 24
        mov     edx, dword [ebp-8H]                     ; 42D3 _ 8B. 55, F8
        add     eax, edx                                ; 42D6 _ 01. D0
        mov     edx, eax                                ; 42D8 _ 89. C2
        mov     eax, dword [ebp+20H]                    ; 42DA _ 8B. 45, 20
        add     eax, edx                                ; 42DD _ 01. D0
        mov     ecx, dword [ebp+1CH]                    ; 42DF _ 8B. 4D, 1C
        mov     edx, dword [ebp-0CH]                    ; 42E2 _ 8B. 55, F4
        add     edx, ecx                                ; 42E5 _ 01. CA
        imul    edx, dword [ebp+0CH]                    ; 42E7 _ 0F AF. 55, 0C
        mov     ebx, dword [ebp+18H]                    ; 42EB _ 8B. 5D, 18
        mov     ecx, dword [ebp-8H]                     ; 42EE _ 8B. 4D, F8
        add     ecx, ebx                                ; 42F1 _ 01. D9
        add     edx, ecx                                ; 42F3 _ 01. CA
        mov     ecx, edx                                ; 42F5 _ 89. D1
        mov     edx, dword [ebp+8H]                     ; 42F7 _ 8B. 55, 08
        add     edx, ecx                                ; 42FA _ 01. CA
        movzx   eax, byte [eax]                         ; 42FC _ 0F B6. 00
        mov     byte [edx], al                          ; 42FF _ 88. 02
        add     dword [ebp-8H], 1                       ; 4301 _ 83. 45, F8, 01
?_221:  mov     eax, dword [ebp-8H]                     ; 4305 _ 8B. 45, F8
        cmp     eax, dword [ebp+10H]                    ; 4308 _ 3B. 45, 10
        jl      ?_220                                   ; 430B _ 7C, BF
        add     dword [ebp-0CH], 1                      ; 430D _ 83. 45, F4, 01
?_222:  mov     eax, dword [ebp-0CH]                    ; 4311 _ 8B. 45, F4
        cmp     eax, dword [ebp+14H]                    ; 4314 _ 3B. 45, 14
        jl      ?_219                                   ; 4317 _ 7C, AA
        nop                                             ; 4319 _ 90
        add     esp, 16                                 ; 431A _ 83. C4, 10
        pop     ebx                                     ; 431D _ 5B
        pop     ebp                                     ; 431E _ 5D
        ret                                             ; 431F _ C3
; _putblock End of function

_charToHexVal:; Function begin
        push    ebp                                     ; 4320 _ 55
        mov     ebp, esp                                ; 4321 _ 89. E5
        sub     esp, 4                                  ; 4323 _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 4326 _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 4329 _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 432C _ 80. 7D, FC, 09
        jle     ?_223                                   ; 4330 _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 4332 _ 0F B6. 45, FC
        add     eax, 55                                 ; 4336 _ 83. C0, 37
        jmp     ?_224                                   ; 4339 _ EB, 07

?_223:  movzx   eax, byte [ebp-4H]                      ; 433B _ 0F B6. 45, FC
        add     eax, 48                                 ; 433F _ 83. C0, 30
?_224:  leave                                           ; 4342 _ C9
        ret                                             ; 4343 _ C3
; _charToHexVal End of function

_charToHexStr:; Function begin
        push    ebp                                     ; 4344 _ 55
        mov     ebp, esp                                ; 4345 _ 89. E5
        sub     esp, 24                                 ; 4347 _ 83. EC, 18
        mov     eax, dword [ebp+8H]                     ; 434A _ 8B. 45, 08
        mov     byte [ebp-14H], al                      ; 434D _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 4350 _ C7. 45, FC, 00000000
        movzx   eax, byte [ebp-14H]                     ; 4357 _ 0F B6. 45, EC
        and     eax, 0FH                                ; 435B _ 83. E0, 0F
        mov     byte [ebp-5H], al                       ; 435E _ 88. 45, FB
        movsx   eax, byte [ebp-5H]                      ; 4361 _ 0F BE. 45, FB
        mov     dword [esp], eax                        ; 4365 _ 89. 04 24
        call    _charToHexVal                           ; 4368 _ E8, FFFFFFB3
        movzx   eax, byte [ebp-14H]                     ; 4372 _ 0F B6. 45, EC
        shr     al, 4                                   ; 4376 _ C0. E8, 04
        mov     byte [ebp-14H], al                      ; 4379 _ 88. 45, EC
        movzx   eax, byte [ebp-14H]                     ; 437C _ 0F B6. 45, EC
        movsx   eax, al                                 ; 4380 _ 0F BE. C0
        mov     dword [esp], eax                        ; 4383 _ 89. 04 24
        call    _charToHexVal                           ; 4386 _ E8, FFFFFF95
        mov     eax, _keyval                            ; 4390 _ B8, 000000F0(d)
        leave                                           ; 4395 _ C9
        ret                                             ; 4396 _ C3
; _charToHexStr End of function

_intToHexStr:; Function begin
        push    ebp                                     ; 4397 _ 55
        mov     ebp, esp                                ; 4398 _ 89. E5
        sub     esp, 32                                 ; 439A _ 83. EC, 20
        mov     byte [ebp-17H], 48                      ; 439D _ C6. 45, E9, 30
        mov     byte [ebp-16H], 88                      ; 43A1 _ C6. 45, EA, 58
        mov     byte [ebp-0DH], 0                       ; 43A5 _ C6. 45, F3, 00
        mov     dword [ebp-4H], 2                       ; 43A9 _ C7. 45, FC, 00000002
        jmp     ?_226                                   ; 43B0 _ EB, 0F

?_225:  lea     eax, [ebp-17H]                          ; 43B2 _ 8D. 45, E9
        mov     edx, dword [ebp-4H]                     ; 43B5 _ 8B. 55, FC
        add     eax, edx                                ; 43B8 _ 01. D0
        mov     byte [eax], 48                          ; 43BA _ C6. 00, 30
        add     dword [ebp-4H], 1                       ; 43BD _ 83. 45, FC, 01
?_226:  cmp     dword [ebp-4H], 9                       ; 43C1 _ 83. 7D, FC, 09
        jle     ?_225                                   ; 43C5 _ 7E, EB
        mov     dword [ebp-8H], 9                       ; 43C7 _ C7. 45, F8, 00000009
        jmp     ?_230                                   ; 43CE _ EB, 42

?_227:  mov     eax, dword [ebp+8H]                     ; 43D0 _ 8B. 45, 08
        and     eax, 0FH                                ; 43D3 _ 83. E0, 0F
        mov     dword [ebp-0CH], eax                    ; 43D6 _ 89. 45, F4
        mov     eax, dword [ebp+8H]                     ; 43D9 _ 8B. 45, 08
        shr     eax, 4                                  ; 43DC _ C1. E8, 04
        mov     dword [ebp+8H], eax                     ; 43DF _ 89. 45, 08
        cmp     dword [ebp-0CH], 9                      ; 43E2 _ 83. 7D, F4, 09
        jle     ?_228                                   ; 43E6 _ 7E, 14
        mov     eax, dword [ebp-0CH]                    ; 43E8 _ 8B. 45, F4
        add     eax, 55                                 ; 43EB _ 83. C0, 37
        mov     ecx, eax                                ; 43EE _ 89. C1
        lea     eax, [ebp-17H]                          ; 43F0 _ 8D. 45, E9
        mov     edx, dword [ebp-8H]                     ; 43F3 _ 8B. 55, F8
        add     eax, edx                                ; 43F6 _ 01. D0
        mov     byte [eax], cl                          ; 43F8 _ 88. 08
        jmp     ?_229                                   ; 43FA _ EB, 12

?_228:  mov     eax, dword [ebp-0CH]                    ; 43FC _ 8B. 45, F4
        add     eax, 48                                 ; 43FF _ 83. C0, 30
        mov     ecx, eax                                ; 4402 _ 89. C1
        lea     eax, [ebp-17H]                          ; 4404 _ 8D. 45, E9
        mov     edx, dword [ebp-8H]                     ; 4407 _ 8B. 55, F8
        add     eax, edx                                ; 440A _ 01. D0
        mov     byte [eax], cl                          ; 440C _ 88. 08
?_229:  sub     dword [ebp-8H], 1                       ; 440E _ 83. 6D, F8, 01
?_230:  cmp     dword [ebp-8H], 1                       ; 4412 _ 83. 7D, F8, 01
        jle     ?_231                                   ; 4416 _ 7E, 06
        cmp     dword [ebp+8H], 0                       ; 4418 _ 83. 7D, 08, 00
        jnz     ?_227                                   ; 441C _ 75, B2
?_231:  mov     eax, 0                                  ; 441E _ B8, 00000000
        leave                                           ; 4423 _ C9
        ret                                             ; 4424 _ C3
; _intToHexStr End of function

_set_cursor:; Function begin
        push    ebp                                     ; 4425 _ 55
        mov     ebp, esp                                ; 4426 _ 89. E5
        push    esi                                     ; 4428 _ 56
        push    ebx                                     ; 4429 _ 53
        sub     esp, 32                                 ; 442A _ 83. EC, 20
        cmp     dword [ebp+0CH], 0                      ; 442D _ 83. 7D, 0C, 00
        jz      ?_232                                   ; 4431 _ 74, 79
        mov     eax, dword [ebp+14H]                    ; 4433 _ 8B. 45, 14
        lea     esi, [eax+0FH]                          ; 4436 _ 8D. 70, 0F
        mov     eax, dword [ebp+10H]                    ; 4439 _ 8B. 45, 10
        lea     ebx, [eax+7H]                           ; 443C _ 8D. 58, 07
        mov     eax, dword [ebp+18H]                    ; 443F _ 8B. 45, 18
        movzx   eax, al                                 ; 4442 _ 0F B6. C0
        mov     edx, dword [ebp+0CH]                    ; 4445 _ 8B. 55, 0C
        mov     ecx, dword [edx+4H]                     ; 4448 _ 8B. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 444B _ 8B. 55, 0C
        mov     edx, dword [edx]                        ; 444E _ 8B. 12
        mov     dword [esp+18H], esi                    ; 4450 _ 89. 74 24, 18
        mov     dword [esp+14H], ebx                    ; 4454 _ 89. 5C 24, 14
        mov     ebx, dword [ebp+14H]                    ; 4458 _ 8B. 5D, 14
        mov     dword [esp+10H], ebx                    ; 445B _ 89. 5C 24, 10
        mov     ebx, dword [ebp+10H]                    ; 445F _ 8B. 5D, 10
        mov     dword [esp+0CH], ebx                    ; 4462 _ 89. 5C 24, 0C
        mov     dword [esp+8H], eax                     ; 4466 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 446A _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 446E _ 89. 14 24
        call    _boxfill8                               ; 4471 _ E8, FFFFFB96
        mov     eax, dword [ebp+14H]                    ; 4476 _ 8B. 45, 14
        lea     edx, [eax+10H]                          ; 4479 _ 8D. 50, 10
        mov     eax, dword [ebp+10H]                    ; 447C _ 8B. 45, 10
        add     eax, 8                                  ; 447F _ 83. C0, 08
        mov     dword [esp+14H], edx                    ; 4482 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 4486 _ 89. 44 24, 10
        mov     eax, dword [ebp+14H]                    ; 448A _ 8B. 45, 14
        mov     dword [esp+0CH], eax                    ; 448D _ 89. 44 24, 0C
        mov     eax, dword [ebp+10H]                    ; 4491 _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 4494 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 4498 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 449B _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 449F _ 8B. 45, 08
        mov     dword [esp], eax                        ; 44A2 _ 89. 04 24
        call    _sheet_refresh                          ; 44A5 _ E8, 00000000(rel)
        jmp     ?_233                                   ; 44AA _ EB, 01

?_232:  nop                                             ; 44AC _ 90
?_233:  add     esp, 32                                 ; 44AD _ 83. C4, 20
        pop     ebx                                     ; 44B0 _ 5B
        pop     esi                                     ; 44B1 _ 5E
        pop     ebp                                     ; 44B2 _ 5D
        ret                                             ; 44B3 _ C3
; _set_cursor End of function


_intHandlerFromC:
        push    ebp                                     ; 44B4 _ 55
        mov     ebp, esp                                ; 44B5 _ 89. E5
        sub     esp, 40                                 ; 44B7 _ 83. EC, 28
        mov     eax, dword [_bootInfo]                  ; 44BA _ A1, 00000000(d)
        mov     dword [ebp-0CH], eax                    ; 44BF _ 89. 45, F4
        movzx   eax, word [_bootInfo+4H]                ; 44C2 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 44C9 _ 98
        mov     dword [ebp-10H], eax                    ; 44CA _ 89. 45, F0
        movzx   eax, word [_bootInfo+6H]                ; 44CD _ 0F B7. 05, 00000006(d)
        cwde                                            ; 44D4 _ 98
        mov     dword [ebp-14H], eax                    ; 44D5 _ 89. 45, EC
        mov     dword [esp+4H], 32                      ; 44D8 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 44E0 _ C7. 04 24, 00000020
        call    _io_out8                                ; 44E7 _ E8, 00000000(rel)
        mov     byte [ebp-15H], 0                       ; 44EC _ C6. 45, EB, 00
        mov     dword [esp], 96                         ; 44F0 _ C7. 04 24, 00000060
        call    _io_in8                                 ; 44F7 _ E8, 00000000(rel)
        mov     byte [ebp-15H], al                      ; 44FC _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 44FF _ 0F B6. 45, EB
        mov     dword [esp+4H], eax                     ; 4503 _ 89. 44 24, 04
        mov     dword [esp], _keyinfo                   ; 4507 _ C7. 04 24, 00000000(d)
        call    _fifo8_put                              ; 450E _ E8, 00000000(rel)
        nop                                             ; 4513 _ 90
        leave                                           ; 4514 _ C9
        ret                                             ; 4515 _ C3

_intHandlerForMouse:; Function begin
        push    ebp                                     ; 4516 _ 55
        mov     ebp, esp                                ; 4517 _ 89. E5
        sub     esp, 40                                 ; 4519 _ 83. EC, 28
        mov     dword [esp+4H], 32                      ; 451C _ C7. 44 24, 04, 00000020
        mov     dword [esp], 160                        ; 4524 _ C7. 04 24, 000000A0
        call    _io_out8                                ; 452B _ E8, 00000000(rel)
        mov     dword [esp+4H], 32                      ; 4530 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 4538 _ C7. 04 24, 00000020
        call    _io_out8                                ; 453F _ E8, 00000000(rel)
        mov     dword [esp], 96                         ; 4544 _ C7. 04 24, 00000060
        call    _io_in8                                 ; 454B _ E8, 00000000(rel)
        mov     byte [ebp-9H], al                       ; 4550 _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 4553 _ 0F B6. 45, F7
        mov     dword [esp+4H], eax                     ; 4557 _ 89. 44 24, 04
        mov     dword [esp], _mouseinfo                 ; 455B _ C7. 04 24, 00000000(d)
        call    _fifo8_put                              ; 4562 _ E8, 00000000(rel)
        nop                                             ; 4567 _ 90
        leave                                           ; 4568 _ C9
        ret                                             ; 4569 _ C3
; _intHandlerForMouse End of function

_intHandlerForStackOverFlow:; Function begin
        push    ebp                                     ; 456A _ 55
        mov     ebp, esp                                ; 456B _ 89. E5
        sub     esp, 40                                 ; 456D _ 83. EC, 28
        call    _task_now                               ; 4570 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 4575 _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 4578 _ 8B. 45, F4
        mov     dword [eax+98H], 8                      ; 457B _ C7. 80, 00000098, 00000008
_intHandlerForException:
        push    ebp                                     ; 4635 _ 55
        mov     ebp, esp                                ; 4636 _ 89. E5
        sub     esp, 40                                 ; 4638 _ 83. EC, 28
        call    _task_now                               ; 463B _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 4640 _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 4643 _ 8B. 45, F4
        mov     dword [eax+98H], 8                      ; 4646 _ C7. 80, 00000098, 00000008
_wait_KBC_sendready:
        push    ebp                                     ; 46B4 _ 55
        mov     ebp, esp                                ; 46B5 _ 89. E5
        sub     esp, 24                                 ; 46B7 _ 83. EC, 18
?_234:  mov     dword [esp], 100                        ; 46BA _ C7. 04 24, 00000064
        call    _io_in8                                 ; 46C1 _ E8, 00000000(rel)
        and     eax, 02H                                ; 46C6 _ 83. E0, 02
        test    eax, eax                                ; 46C9 _ 85. C0
        jz      ?_235                                   ; 46CB _ 74, 02
        jmp     ?_234                                   ; 46CD _ EB, EB
; _wait_KBC_sendready End of function

?_235:  ; Local function
        nop                                             ; 46CF _ 90
        nop                                             ; 46D0 _ 90
        leave                                           ; 46D1 _ C9
        ret                                             ; 46D2 _ C3

_init_keyboard:; Function begin
        push    ebp                                     ; 46D3 _ 55
        mov     ebp, esp                                ; 46D4 _ 89. E5
        sub     esp, 24                                 ; 46D6 _ 83. EC, 18
        call    _wait_KBC_sendready                     ; 46D9 _ E8, FFFFFFD6
        mov     dword [esp+4H], 96                      ; 46DE _ C7. 44 24, 04, 00000060
        mov     dword [esp], 100                        ; 46E6 _ C7. 04 24, 00000064
        call    _io_out8                                ; 46ED _ E8, 00000000(rel)
        call    _wait_KBC_sendready                     ; 46F2 _ E8, FFFFFFBD
        mov     dword [esp+4H], 71                      ; 46F7 _ C7. 44 24, 04, 00000047
        mov     dword [esp], 96                         ; 46FF _ C7. 04 24, 00000060
        call    _io_out8                                ; 4706 _ E8, 00000000(rel)
        nop                                             ; 470B _ 90
        leave                                           ; 470C _ C9
        ret                                             ; 470D _ C3
; _init_keyboard End of function

_enable_mouse:; Function begin
        push    ebp                                     ; 470E _ 55
        mov     ebp, esp                                ; 470F _ 89. E5
        sub     esp, 24                                 ; 4711 _ 83. EC, 18
        call    _wait_KBC_sendready                     ; 4714 _ E8, FFFFFF9B
        mov     dword [esp+4H], 212                     ; 4719 _ C7. 44 24, 04, 000000D4
        mov     dword [esp], 100                        ; 4721 _ C7. 04 24, 00000064
        call    _io_out8                                ; 4728 _ E8, 00000000(rel)
        call    _wait_KBC_sendready                     ; 472D _ E8, FFFFFF82
        mov     dword [esp+4H], 244                     ; 4732 _ C7. 44 24, 04, 000000F4
        mov     dword [esp], 96                         ; 473A _ C7. 04 24, 00000060
        call    _io_out8                                ; 4741 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 4746 _ 8B. 45, 08
        mov     byte [eax+3H], 0                        ; 4749 _ C6. 40, 03, 00
        nop                                             ; 474D _ 90
        leave                                           ; 474E _ C9
        ret                                             ; 474F _ C3
; _enable_mouse End of function

_mouse_decode:; Function begin
        push    ebp                                     ; 4750 _ 55
        mov     ebp, esp                                ; 4751 _ 89. E5
        sub     esp, 4                                  ; 4753 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 4756 _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 4759 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 475C _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 475F _ 0F B6. 40, 03
        test    al, al                                  ; 4763 _ 84. C0
        jnz     ?_237                                   ; 4765 _ 75, 17
        cmp     byte [ebp-4H], -6                       ; 4767 _ 80. 7D, FC, FA
        jnz     ?_236                                   ; 476B _ 75, 07
        mov     eax, dword [ebp+8H]                     ; 476D _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 4770 _ C6. 40, 03, 01
?_236:  mov     eax, 0                                  ; 4774 _ B8, 00000000
        jmp     ?_244                                   ; 4779 _ E9, 0000010F

?_237:  mov     eax, dword [ebp+8H]                     ; 477E _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 4781 _ 0F B6. 40, 03
        cmp     al, 1                                   ; 4785 _ 3C, 01
        jnz     ?_239                                   ; 4787 _ 75, 28
        movzx   eax, byte [ebp-4H]                      ; 4789 _ 0F B6. 45, FC
        and     eax, 0C8H                               ; 478D _ 25, 000000C8
        cmp     eax, 8                                  ; 4792 _ 83. F8, 08
        jnz     ?_238                                   ; 4795 _ 75, 10
        mov     edx, dword [ebp+8H]                     ; 4797 _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 479A _ 0F B6. 45, FC
        mov     byte [edx], al                          ; 479E _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 47A0 _ 8B. 45, 08
        mov     byte [eax+3H], 2                        ; 47A3 _ C6. 40, 03, 02
?_238:  mov     eax, 0                                  ; 47A7 _ B8, 00000000
        jmp     ?_244                                   ; 47AC _ E9, 000000DC

?_239:  mov     eax, dword [ebp+8H]                     ; 47B1 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 47B4 _ 0F B6. 40, 03
        cmp     al, 2                                   ; 47B8 _ 3C, 02
        jnz     ?_240                                   ; 47BA _ 75, 1B
        mov     edx, dword [ebp+8H]                     ; 47BC _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 47BF _ 0F B6. 45, FC
        mov     byte [edx+1H], al                       ; 47C3 _ 88. 42, 01
        mov     eax, dword [ebp+8H]                     ; 47C6 _ 8B. 45, 08
        mov     byte [eax+3H], 3                        ; 47C9 _ C6. 40, 03, 03
        mov     eax, 0                                  ; 47CD _ B8, 00000000
        jmp     ?_244                                   ; 47D2 _ E9, 000000B6

?_240:  mov     eax, dword [ebp+8H]                     ; 47D7 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 47DA _ 0F B6. 40, 03
        cmp     al, 3                                   ; 47DE _ 3C, 03
        jne     ?_243                                   ; 47E0 _ 0F 85, 000000A2
        mov     edx, dword [ebp+8H]                     ; 47E6 _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 47E9 _ 0F B6. 45, FC
        mov     byte [edx+2H], al                       ; 47ED _ 88. 42, 02
        mov     eax, dword [ebp+8H]                     ; 47F0 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 47F3 _ C6. 40, 03, 01
        mov     eax, dword [ebp+8H]                     ; 47F7 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 47FA _ 0F B6. 00
        movzx   eax, al                                 ; 47FD _ 0F B6. C0
        and     eax, 07H                                ; 4800 _ 83. E0, 07
        mov     edx, eax                                ; 4803 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 4805 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 4808 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 480B _ 8B. 45, 08
        movzx   eax, byte [eax+1H]                      ; 480E _ 0F B6. 40, 01
        movzx   eax, al                                 ; 4812 _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 4815 _ 8B. 55, 08
        mov     dword [edx+4H], eax                     ; 4818 _ 89. 42, 04
        mov     eax, dword [ebp+8H]                     ; 481B _ 8B. 45, 08
        movzx   eax, byte [eax+2H]                      ; 481E _ 0F B6. 40, 02
        movzx   eax, al                                 ; 4822 _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 4825 _ 8B. 55, 08
        mov     dword [edx+8H], eax                     ; 4828 _ 89. 42, 08
        mov     eax, dword [ebp+8H]                     ; 482B _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 482E _ 0F B6. 00
        movzx   eax, al                                 ; 4831 _ 0F B6. C0
        and     eax, 10H                                ; 4834 _ 83. E0, 10
        test    eax, eax                                ; 4837 _ 85. C0
        jz      ?_241                                   ; 4839 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 483B _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 483E _ 8B. 40, 04
        or      eax, 0FFFFFF00H                         ; 4841 _ 0D, FFFFFF00
        mov     edx, eax                                ; 4846 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 4848 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 484B _ 89. 50, 04
?_241:  mov     eax, dword [ebp+8H]                     ; 484E _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 4851 _ 0F B6. 00
        movzx   eax, al                                 ; 4854 _ 0F B6. C0
        and     eax, 20H                                ; 4857 _ 83. E0, 20
        test    eax, eax                                ; 485A _ 85. C0
        jz      ?_242                                   ; 485C _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 485E _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 4861 _ 8B. 40, 08
        or      eax, 0FFFFFF00H                         ; 4864 _ 0D, FFFFFF00
        mov     edx, eax                                ; 4869 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 486B _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 486E _ 89. 50, 08
?_242:  mov     eax, dword [ebp+8H]                     ; 4871 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 4874 _ 8B. 40, 08
        neg     eax                                     ; 4877 _ F7. D8
        mov     edx, eax                                ; 4879 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 487B _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 487E _ 89. 50, 08
        mov     eax, 1                                  ; 4881 _ B8, 00000001
        jmp     ?_244                                   ; 4886 _ EB, 05

?_243:  mov     eax, 4294967295                         ; 4888 _ B8, FFFFFFFF
?_244:  leave                                           ; 488D _ C9
        ret                                             ; 488E _ C3
; _mouse_decode End of function

_isSpecialKey:; Function begin
        push    ebp                                     ; 488F _ 55
        mov     ebp, esp                                ; 4890 _ 89. E5
        sub     esp, 24                                 ; 4892 _ 83. EC, 18
        mov     eax, dword [ebp+8H]                     ; 4895 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4898 _ 89. 04 24
        call    _transferScanCode                       ; 489B _ E8, 00000041
        cmp     dword [ebp+8H], 58                      ; 48A0 _ 83. 7D, 08, 3A
        jz      ?_245                                   ; 48A4 _ 74, 2D
        cmp     dword [ebp+8H], 29                      ; 48A6 _ 83. 7D, 08, 1D
        jz      ?_245                                   ; 48AA _ 74, 27
        cmp     dword [ebp+8H], 186                     ; 48AC _ 81. 7D, 08, 000000BA
        jz      ?_245                                   ; 48B3 _ 74, 1E
        cmp     dword [ebp+8H], 42                      ; 48B5 _ 83. 7D, 08, 2A
        jz      ?_245                                   ; 48B9 _ 74, 18
        cmp     dword [ebp+8H], 54                      ; 48BB _ 83. 7D, 08, 36
        jz      ?_245                                   ; 48BF _ 74, 12
        cmp     dword [ebp+8H], 170                     ; 48C1 _ 81. 7D, 08, 000000AA
        jz      ?_245                                   ; 48C8 _ 74, 09
        cmp     dword [ebp+8H], 182                     ; 48CA _ 81. 7D, 08, 000000B6
        jnz     ?_246                                   ; 48D1 _ 75, 07
?_245:  mov     eax, 1                                  ; 48D3 _ B8, 00000001
        jmp     ?_247                                   ; 48D8 _ EB, 05

?_246:  mov     eax, 0                                  ; 48DA _ B8, 00000000
?_247:  leave                                           ; 48DF _ C9
        ret                                             ; 48E0 _ C3
; _isSpecialKey End of function

_transferScanCode:; Function begin
        push    ebp                                     ; 48E1 _ 55
        mov     ebp, esp                                ; 48E2 _ 89. E5
        sub     esp, 16                                 ; 48E4 _ 83. EC, 10
        cmp     dword [ebp+8H], 42                      ; 48E7 _ 83. 7D, 08, 2A
        jnz     ?_248                                   ; 48EB _ 75, 0D
        mov     eax, dword [_key_shift]                 ; 48ED _ A1, 00000000(d)
        or      eax, 01H                                ; 48F2 _ 83. C8, 01
        mov     dword [_key_shift], eax                 ; 48F5 _ A3, 00000000(d)
?_248:  cmp     dword [ebp+8H], 54                      ; 48FA _ 83. 7D, 08, 36
        jnz     ?_249                                   ; 48FE _ 75, 0D
        mov     eax, dword [_key_shift]                 ; 4900 _ A1, 00000000(d)
        or      eax, 02H                                ; 4905 _ 83. C8, 02
        mov     dword [_key_shift], eax                 ; 4908 _ A3, 00000000(d)
?_249:  cmp     dword [ebp+8H], 170                     ; 490D _ 81. 7D, 08, 000000AA
        jnz     ?_250                                   ; 4914 _ 75, 0D
        mov     eax, dword [_key_shift]                 ; 4916 _ A1, 00000000(d)
        and     eax, 0FFFFFFFEH                         ; 491B _ 83. E0, FE
        mov     dword [_key_shift], eax                 ; 491E _ A3, 00000000(d)
?_250:  cmp     dword [ebp+8H], 182                     ; 4923 _ 81. 7D, 08, 000000B6
        jnz     ?_251                                   ; 492A _ 75, 0D
        mov     eax, dword [_key_shift]                 ; 492C _ A1, 00000000(d)
        and     eax, 0FFFFFFFDH                         ; 4931 _ 83. E0, FD
        mov     dword [_key_shift], eax                 ; 4934 _ A3, 00000000(d)
?_251:  cmp     dword [ebp+8H], 58                      ; 4939 _ 83. 7D, 08, 3A
        jnz     ?_253                                   ; 493D _ 75, 1F
        mov     eax, dword [_caps_lock]                 ; 493F _ A1, 00000000(d)
        test    eax, eax                                ; 4944 _ 85. C0
        jnz     ?_252                                   ; 4946 _ 75, 0C
        mov     dword [_caps_lock], 1                   ; 4948 _ C7. 05, 00000000(d), 00000001
        jmp     ?_253                                   ; 4952 _ EB, 0A

?_252:  mov     dword [_caps_lock], 0                   ; 4954 _ C7. 05, 00000000(d), 00000000
?_253:  cmp     dword [ebp+8H], 42                      ; 495E _ 83. 7D, 08, 2A
        jz      ?_254                                   ; 4962 _ 74, 24
        cmp     dword [ebp+8H], 54                      ; 4964 _ 83. 7D, 08, 36
        jz      ?_254                                   ; 4968 _ 74, 1E
        cmp     dword [ebp+8H], 170                     ; 496A _ 81. 7D, 08, 000000AA
        jz      ?_254                                   ; 4971 _ 74, 15
        cmp     dword [ebp+8H], 182                     ; 4973 _ 81. 7D, 08, 000000B6
        jz      ?_254                                   ; 497A _ 74, 0C
        cmp     dword [ebp+8H], 83                      ; 497C _ 83. 7D, 08, 53
        jg      ?_254                                   ; 4980 _ 7F, 06
        cmp     dword [ebp+8H], 58                      ; 4982 _ 83. 7D, 08, 3A
        jnz     ?_255                                   ; 4986 _ 75, 0A
?_254:  mov     eax, 0                                  ; 4988 _ B8, 00000000
        jmp     ?_260                                   ; 498D _ E9, 0000008A

?_255:  mov     byte [ebp-1H], 0                        ; 4992 _ C6. 45, FF, 00
        mov     eax, dword [_key_shift]                 ; 4996 _ A1, 00000000(d)
        test    eax, eax                                ; 499B _ 85. C0
        jnz     ?_256                                   ; 499D _ 75, 44
        cmp     dword [ebp+8H], 83                      ; 499F _ 83. 7D, 08, 53
        jg      ?_256                                   ; 49A3 _ 7F, 3E
        mov     eax, dword [ebp+8H]                     ; 49A5 _ 8B. 45, 08
        add     eax, _keytable                          ; 49A8 _ 05, 00000000(d)
        movzx   eax, byte [eax]                         ; 49AD _ 0F B6. 00
        test    al, al                                  ; 49B0 _ 84. C0
        jz      ?_256                                   ; 49B2 _ 74, 2F
        mov     eax, dword [ebp+8H]                     ; 49B4 _ 8B. 45, 08
        add     eax, _keytable                          ; 49B7 _ 05, 00000000(d)
        movzx   eax, byte [eax]                         ; 49BC _ 0F B6. 00
        mov     byte [ebp-1H], al                       ; 49BF _ 88. 45, FF
        cmp     byte [ebp-1H], 64                       ; 49C2 _ 80. 7D, FF, 40
        jle     ?_258                                   ; 49C6 _ 7E, 4F
        cmp     byte [ebp-1H], 90                       ; 49C8 _ 80. 7D, FF, 5A
        jg      ?_258                                   ; 49CC _ 7F, 49
        mov     eax, dword [_caps_lock]                 ; 49CE _ A1, 00000000(d)
        test    eax, eax                                ; 49D3 _ 85. C0
        jnz     ?_258                                   ; 49D5 _ 75, 40
        movzx   eax, byte [ebp-1H]                      ; 49D7 _ 0F B6. 45, FF
        add     eax, 32                                 ; 49DB _ 83. C0, 20
        mov     byte [ebp-1H], al                       ; 49DE _ 88. 45, FF
        jmp     ?_258                                   ; 49E1 _ EB, 34

?_256:  mov     eax, dword [_key_shift]                 ; 49E3 _ A1, 00000000(d)
        test    eax, eax                                ; 49E8 _ 85. C0
        jz      ?_257                                   ; 49EA _ 74, 25
        cmp     dword [ebp+8H], 127                     ; 49EC _ 83. 7D, 08, 7F
        jg      ?_257                                   ; 49F0 _ 7F, 1F
        mov     eax, dword [ebp+8H]                     ; 49F2 _ 8B. 45, 08
        add     eax, _keytable1                         ; 49F5 _ 05, 00000000(d)
        movzx   eax, byte [eax]                         ; 49FA _ 0F B6. 00
        test    al, al                                  ; 49FD _ 84. C0
        jz      ?_257                                   ; 49FF _ 74, 10
        mov     eax, dword [ebp+8H]                     ; 4A01 _ 8B. 45, 08
        add     eax, _keytable1                         ; 4A04 _ 05, 00000000(d)
        movzx   eax, byte [eax]                         ; 4A09 _ 0F B6. 00
        mov     byte [ebp-1H], al                       ; 4A0C _ 88. 45, FF
        jmp     ?_259                                   ; 4A0F _ EB, 07

?_257:  mov     byte [ebp-1H], 0                        ; 4A11 _ C6. 45, FF, 00
        jmp     ?_259                                   ; 4A15 _ EB, 01

?_258:  nop                                             ; 4A17 _ 90
?_259:  movzx   eax, byte [ebp-1H]                      ; 4A18 _ 0F B6. 45, FF
?_260:  leave                                           ; 4A1C _ C9
        ret                                             ; 4A1D _ C3
; _transferScanCode End of function

        nop                                             ; 4A1E _ 90
        nop                                             ; 4A1F _ 90


_file_loadfile:
        push    ebp                                     ; 4A20 _ 55
        mov     ebp, esp                                ; 4A21 _ 89. E5
        sub     esp, 56                                 ; 4A23 _ 83. EC, 38
        mov     dword [ebp-0CH], 88064                  ; 4A26 _ C7. 45, F4, 00015800
        mov     eax, dword [_memman]                    ; 4A2D _ A1, 00000000(d)
        mov     dword [esp+4H], 13                      ; 4A32 _ C7. 44 24, 04, 0000000D
        mov     dword [esp], eax                        ; 4A3A _ 89. 04 24
        call    _memman_alloc                           ; 4A3D _ E8, 00000000(rel)
        mov     dword [ebp-1CH], eax                    ; 4A42 _ 89. 45, E4
        jmp     ?_273                                   ; 4A45 _ E9, 00000143

?_261:  mov     dword [ebp-10H], 0                      ; 4A4A _ C7. 45, F0, 00000000
        jmp     ?_263                                   ; 4A51 _ EB, 0F

?_262:  mov     edx, dword [ebp-10H]                    ; 4A53 _ 8B. 55, F0
        mov     eax, dword [ebp-1CH]                    ; 4A56 _ 8B. 45, E4
        add     eax, edx                                ; 4A59 _ 01. D0
        mov     byte [eax], 0                           ; 4A5B _ C6. 00, 00
        add     dword [ebp-10H], 1                      ; 4A5E _ 83. 45, F0, 01
?_263:  cmp     dword [ebp-10H], 11                     ; 4A62 _ 83. 7D, F0, 0B
        jle     ?_262                                   ; 4A66 _ 7E, EB
        mov     dword [ebp-10H], 0                      ; 4A68 _ C7. 45, F0, 00000000
        jmp     ?_265                                   ; 4A6F _ EB, 2A

?_264:  mov     edx, dword [ebp-0CH]                    ; 4A71 _ 8B. 55, F4
        mov     eax, dword [ebp-10H]                    ; 4A74 _ 8B. 45, F0
        add     eax, edx                                ; 4A77 _ 01. D0
        movzx   eax, byte [eax]                         ; 4A79 _ 0F B6. 00
        test    al, al                                  ; 4A7C _ 84. C0
        jz      ?_266                                   ; 4A7E _ 74, 23
        mov     edx, dword [ebp-0CH]                    ; 4A80 _ 8B. 55, F4
        mov     eax, dword [ebp-10H]                    ; 4A83 _ 8B. 45, F0
        add     eax, edx                                ; 4A86 _ 01. D0
        movzx   ecx, byte [eax]                         ; 4A88 _ 0F B6. 08
        mov     edx, dword [ebp-10H]                    ; 4A8B _ 8B. 55, F0
        mov     eax, dword [ebp-1CH]                    ; 4A8E _ 8B. 45, E4
        add     eax, edx                                ; 4A91 _ 01. D0
        mov     edx, ecx                                ; 4A93 _ 89. CA
        mov     byte [eax], dl                          ; 4A95 _ 88. 10
        add     dword [ebp-10H], 1                      ; 4A97 _ 83. 45, F0, 01
?_265:  cmp     dword [ebp-10H], 7                      ; 4A9B _ 83. 7D, F0, 07
        jle     ?_264                                   ; 4A9F _ 7E, D0
        jmp     ?_267                                   ; 4AA1 _ EB, 01

?_266:  nop                                             ; 4AA3 _ 90
?_267:  mov     dword [ebp-14H], 0                      ; 4AA4 _ C7. 45, EC, 00000000
        mov     edx, dword [ebp-10H]                    ; 4AAB _ 8B. 55, F0
        mov     eax, dword [ebp-1CH]                    ; 4AAE _ 8B. 45, E4
        add     eax, edx                                ; 4AB1 _ 01. D0
        mov     byte [eax], 46                          ; 4AB3 _ C6. 00, 2E
        add     dword [ebp-10H], 1                      ; 4AB6 _ 83. 45, F0, 01
        mov     dword [ebp-14H], 0                      ; 4ABA _ C7. 45, EC, 00000000
        jmp     ?_269                                   ; 4AC1 _ EB, 22

?_268:  mov     edx, dword [ebp-0CH]                    ; 4AC3 _ 8B. 55, F4
        mov     eax, dword [ebp-14H]                    ; 4AC6 _ 8B. 45, EC
        add     eax, edx                                ; 4AC9 _ 01. D0
        add     eax, 8                                  ; 4ACB _ 83. C0, 08
        movzx   ecx, byte [eax]                         ; 4ACE _ 0F B6. 08
        mov     edx, dword [ebp-10H]                    ; 4AD1 _ 8B. 55, F0
        mov     eax, dword [ebp-1CH]                    ; 4AD4 _ 8B. 45, E4
        add     eax, edx                                ; 4AD7 _ 01. D0
        mov     edx, ecx                                ; 4AD9 _ 89. CA
        mov     byte [eax], dl                          ; 4ADB _ 88. 10
        add     dword [ebp-10H], 1                      ; 4ADD _ 83. 45, F0, 01
        add     dword [ebp-14H], 1                      ; 4AE1 _ 83. 45, EC, 01
?_269:  cmp     dword [ebp-14H], 2                      ; 4AE5 _ 83. 7D, EC, 02
        jle     ?_268                                   ; 4AE9 _ 7E, D8
        mov     eax, dword [ebp-1CH]                    ; 4AEB _ 8B. 45, E4
        mov     dword [esp+4H], eax                     ; 4AEE _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4AF2 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4AF5 _ 89. 04 24
        call    _strcmp                                 ; 4AF8 _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 4AFD _ 83. F8, 01
        jne     ?_272                                   ; 4B00 _ 0F 85, 00000083
        mov     eax, dword [ebp-0CH]                    ; 4B06 _ 8B. 45, F4
        mov     edx, dword [eax+1CH]                    ; 4B09 _ 8B. 50, 1C
        mov     eax, dword [_memman]                    ; 4B0C _ A1, 00000000(d)
        mov     dword [esp+4H], edx                     ; 4B11 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 4B15 _ 89. 04 24
        call    _memman_alloc_4k                        ; 4B18 _ E8, 00000000(rel)
        mov     edx, eax                                ; 4B1D _ 89. C2
        mov     eax, dword [ebp+0CH]                    ; 4B1F _ 8B. 45, 0C
        mov     dword [eax], edx                        ; 4B22 _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 4B24 _ 8B. 45, F4
        mov     eax, dword [eax+1CH]                    ; 4B27 _ 8B. 40, 1C
        mov     edx, eax                                ; 4B2A _ 89. C2
        mov     eax, dword [ebp+0CH]                    ; 4B2C _ 8B. 45, 0C
        mov     dword [eax+8H], edx                     ; 4B2F _ 89. 50, 08
        mov     dword [ebp-20H], 97280                  ; 4B32 _ C7. 45, E0, 00017C00
        mov     eax, dword [ebp-0CH]                    ; 4B39 _ 8B. 45, F4
        movzx   eax, word [eax+1AH]                     ; 4B3C _ 0F B7. 40, 1A
        movzx   eax, ax                                 ; 4B40 _ 0F B7. C0
        shl     eax, 9                                  ; 4B43 _ C1. E0, 09
        add     dword [ebp-20H], eax                    ; 4B46 _ 01. 45, E0
        mov     eax, dword [ebp-0CH]                    ; 4B49 _ 8B. 45, F4
        mov     eax, dword [eax+1CH]                    ; 4B4C _ 8B. 40, 1C
        mov     dword [ebp-24H], eax                    ; 4B4F _ 89. 45, DC
        mov     dword [ebp-18H], 0                      ; 4B52 _ C7. 45, E8, 00000000
        mov     dword [ebp-18H], 0                      ; 4B59 _ C7. 45, E8, 00000000
        jmp     ?_271                                   ; 4B60 _ EB, 1D

?_270:  mov     edx, dword [ebp-18H]                    ; 4B62 _ 8B. 55, E8
        mov     eax, dword [ebp-20H]                    ; 4B65 _ 8B. 45, E0
        add     eax, edx                                ; 4B68 _ 01. D0
        movzx   ecx, byte [eax]                         ; 4B6A _ 0F B6. 08
        mov     eax, dword [ebp+0CH]                    ; 4B6D _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 4B70 _ 8B. 10
        mov     eax, dword [ebp-18H]                    ; 4B72 _ 8B. 45, E8
        add     eax, edx                                ; 4B75 _ 01. D0
        mov     edx, ecx                                ; 4B77 _ 89. CA
        mov     byte [eax], dl                          ; 4B79 _ 88. 10
        add     dword [ebp-18H], 1                      ; 4B7B _ 83. 45, E8, 01
?_271:  mov     eax, dword [ebp-18H]                    ; 4B7F _ 8B. 45, E8
        cmp     eax, dword [ebp-24H]                    ; 4B82 _ 3B. 45, DC
        jl      ?_270                                   ; 4B85 _ 7C, DB
        jmp     ?_274                                   ; 4B87 _ EB, 12

?_272:  add     dword [ebp-0CH], 32                     ; 4B89 _ 83. 45, F4, 20
?_273:  mov     eax, dword [ebp-0CH]                    ; 4B8D _ 8B. 45, F4
        movzx   eax, byte [eax]                         ; 4B90 _ 0F B6. 00
        test    al, al                                  ; 4B93 _ 84. C0
        jne     ?_261                                   ; 4B95 _ 0F 85, FFFFFEAF
?_274:  mov     edx, dword [ebp-1CH]                    ; 4B9B _ 8B. 55, E4
        mov     eax, dword [_memman]                    ; 4B9E _ A1, 00000000(d)
        mov     dword [esp+8H], 13                      ; 4BA3 _ C7. 44 24, 08, 0000000D
        mov     dword [esp+4H], edx                     ; 4BAB _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 4BAF _ 89. 04 24
        call    _memman_free                            ; 4BB2 _ E8, 00000000(rel)
        nop                                             ; 4BB7 _ 90
        leave                                           ; 4BB8 _ C9
        ret                                             ; 4BB9 _ C3

        nop                                             ; 4BBA _ 90
        nop                                             ; 4BBB _ 90


_shtctl_init:
        push    ebp                                     ; 4BBC _ 55
        mov     ebp, esp                                ; 4BBD _ 89. E5
        sub     esp, 40                                 ; 4BBF _ 83. EC, 28
        mov     dword [esp+4H], 9232                    ; 4BC2 _ C7. 44 24, 04, 00002410
        mov     eax, dword [ebp+8H]                     ; 4BCA _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4BCD _ 89. 04 24
        call    _memman_alloc_4k                        ; 4BD0 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 4BD5 _ 89. 45, F0
        cmp     dword [ebp-10H], 0                      ; 4BD8 _ 83. 7D, F0, 00
        jnz     ?_275                                   ; 4BDC _ 75, 0A
        mov     eax, 0                                  ; 4BDE _ B8, 00000000
        jmp     ?_279                                   ; 4BE3 _ E9, 000000A3

?_275:  mov     eax, dword [ebp+10H]                    ; 4BE8 _ 8B. 45, 10
        imul    eax, dword [ebp+14H]                    ; 4BEB _ 0F AF. 45, 14
        mov     dword [esp+4H], eax                     ; 4BEF _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4BF3 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4BF6 _ 89. 04 24
        call    _memman_alloc_4k                        ; 4BF9 _ E8, 00000000(rel)
        mov     edx, eax                                ; 4BFE _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 4C00 _ 8B. 45, F0
        mov     dword [eax+4H], edx                     ; 4C03 _ 89. 50, 04
        mov     eax, dword [ebp-10H]                    ; 4C06 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 4C09 _ 8B. 40, 04
        test    eax, eax                                ; 4C0C _ 85. C0
        jnz     ?_276                                   ; 4C0E _ 75, 21
        mov     eax, dword [ebp-10H]                    ; 4C10 _ 8B. 45, F0
        mov     dword [esp+8H], 9232                    ; 4C13 _ C7. 44 24, 08, 00002410
        mov     dword [esp+4H], eax                     ; 4C1B _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4C1F _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4C22 _ 89. 04 24
        call    _memman_free_4k                         ; 4C25 _ E8, 00000000(rel)
        mov     eax, 0                                  ; 4C2A _ B8, 00000000
        jmp     ?_279                                   ; 4C2F _ EB, 5A

?_276:  mov     eax, dword [ebp-10H]                    ; 4C31 _ 8B. 45, F0
        mov     edx, dword [ebp+0CH]                    ; 4C34 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 4C37 _ 89. 10
        mov     eax, dword [ebp-10H]                    ; 4C39 _ 8B. 45, F0
        mov     edx, dword [ebp+10H]                    ; 4C3C _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 4C3F _ 89. 50, 08
        mov     eax, dword [ebp-10H]                    ; 4C42 _ 8B. 45, F0
        mov     edx, dword [ebp+14H]                    ; 4C45 _ 8B. 55, 14
        mov     dword [eax+0CH], edx                    ; 4C48 _ 89. 50, 0C
        mov     eax, dword [ebp-10H]                    ; 4C4B _ 8B. 45, F0
        mov     dword [eax+10H], -1                     ; 4C4E _ C7. 40, 10, FFFFFFFF
        mov     dword [ebp-0CH], 0                      ; 4C55 _ C7. 45, F4, 00000000
        jmp     ?_278                                   ; 4C5C _ EB, 21

?_277:  mov     ecx, dword [ebp-10H]                    ; 4C5E _ 8B. 4D, F0
        mov     edx, dword [ebp-0CH]                    ; 4C61 _ 8B. 55, F4
        mov     eax, edx                                ; 4C64 _ 89. D0
        shl     eax, 3                                  ; 4C66 _ C1. E0, 03
        add     eax, edx                                ; 4C69 _ 01. D0
        shl     eax, 2                                  ; 4C6B _ C1. E0, 02
        add     eax, ecx                                ; 4C6E _ 01. C8
        add     eax, 1072                               ; 4C70 _ 05, 00000430
        mov     dword [eax], 0                          ; 4C75 _ C7. 00, 00000000
        add     dword [ebp-0CH], 1                      ; 4C7B _ 83. 45, F4, 01
?_278:  cmp     dword [ebp-0CH], 255                    ; 4C7F _ 81. 7D, F4, 000000FF
        jle     ?_277                                   ; 4C86 _ 7E, D6
        mov     eax, dword [ebp-10H]                    ; 4C88 _ 8B. 45, F0
?_279:  leave                                           ; 4C8B _ C9
        ret                                             ; 4C8C _ C3

_sheet_alloc:; Function begin
        push    ebp                                     ; 4C8D _ 55
        mov     ebp, esp                                ; 4C8E _ 89. E5
        sub     esp, 24                                 ; 4C90 _ 83. EC, 18
        mov     dword [ebp-0CH], 0                      ; 4C93 _ C7. 45, F4, 00000000
        jmp     ?_282                                   ; 4C9A _ EB, 75

?_280:  mov     ecx, dword [ebp+8H]                     ; 4C9C _ 8B. 4D, 08
        mov     edx, dword [ebp-0CH]                    ; 4C9F _ 8B. 55, F4
        mov     eax, edx                                ; 4CA2 _ 89. D0
        shl     eax, 3                                  ; 4CA4 _ C1. E0, 03
        add     eax, edx                                ; 4CA7 _ 01. D0
        shl     eax, 2                                  ; 4CA9 _ C1. E0, 02
        add     eax, ecx                                ; 4CAC _ 01. C8
        add     eax, 1072                               ; 4CAE _ 05, 00000430
        mov     eax, dword [eax]                        ; 4CB3 _ 8B. 00
        test    eax, eax                                ; 4CB5 _ 85. C0
        jnz     ?_281                                   ; 4CB7 _ 75, 54
        mov     edx, dword [ebp-0CH]                    ; 4CB9 _ 8B. 55, F4
        mov     eax, edx                                ; 4CBC _ 89. D0
        shl     eax, 3                                  ; 4CBE _ C1. E0, 03
        add     eax, edx                                ; 4CC1 _ 01. D0
        shl     eax, 2                                  ; 4CC3 _ C1. E0, 02
        lea     edx, [eax+410H]                         ; 4CC6 _ 8D. 90, 00000410
        mov     eax, dword [ebp+8H]                     ; 4CCC _ 8B. 45, 08
        add     eax, edx                                ; 4CCF _ 01. D0
        add     eax, 4                                  ; 4CD1 _ 83. C0, 04
        mov     dword [ebp-10H], eax                    ; 4CD4 _ 89. 45, F0
        mov     eax, dword [ebp+8H]                     ; 4CD7 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 4CDA _ 8B. 55, F4
        add     edx, 4                                  ; 4CDD _ 83. C2, 04
        mov     ecx, dword [ebp-10H]                    ; 4CE0 _ 8B. 4D, F0
        mov     dword [eax+edx*4+4H], ecx               ; 4CE3 _ 89. 4C 90, 04
        mov     eax, dword [ebp-10H]                    ; 4CE7 _ 8B. 45, F0
        mov     dword [eax+1CH], 1                      ; 4CEA _ C7. 40, 1C, 00000001
        mov     eax, dword [ebp-10H]                    ; 4CF1 _ 8B. 45, F0
        mov     dword [eax+18H], -1                     ; 4CF4 _ C7. 40, 18, FFFFFFFF
        call    _task_now                               ; 4CFB _ E8, 00000000(rel)
        mov     edx, eax                                ; 4D00 _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 4D02 _ 8B. 45, F0
        mov     dword [eax+20H], edx                    ; 4D05 _ 89. 50, 20
        mov     eax, dword [ebp-10H]                    ; 4D08 _ 8B. 45, F0
        jmp     ?_283                                   ; 4D0B _ EB, 12

?_281:  add     dword [ebp-0CH], 1                      ; 4D0D _ 83. 45, F4, 01
?_282:  cmp     dword [ebp-0CH], 255                    ; 4D11 _ 81. 7D, F4, 000000FF
        jle     ?_280                                   ; 4D18 _ 7E, 82
        mov     eax, 0                                  ; 4D1A _ B8, 00000000
?_283:  leave                                           ; 4D1F _ C9
        ret                                             ; 4D20 _ C3
; _sheet_alloc End of function

_sheet_setbuf:; Function begin
        push    ebp                                     ; 4D21 _ 55
        mov     ebp, esp                                ; 4D22 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 4D24 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 4D27 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 4D2A _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 4D2C _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 4D2F _ 8B. 55, 10
        mov     dword [eax+4H], edx                     ; 4D32 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 4D35 _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 4D38 _ 8B. 55, 14
        mov     dword [eax+8H], edx                     ; 4D3B _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 4D3E _ 8B. 45, 08
        mov     edx, dword [ebp+18H]                    ; 4D41 _ 8B. 55, 18
        mov     dword [eax+14H], edx                    ; 4D44 _ 89. 50, 14
        nop                                             ; 4D47 _ 90
        pop     ebp                                     ; 4D48 _ 5D
        ret                                             ; 4D49 _ C3
; _sheet_setbuf End of function

_sheet_updown:; Function begin
        push    ebp                                     ; 4D4A _ 55
        mov     ebp, esp                                ; 4D4B _ 89. E5
        push    edi                                     ; 4D4D _ 57
        push    esi                                     ; 4D4E _ 56
        push    ebx                                     ; 4D4F _ 53
        sub     esp, 60                                 ; 4D50 _ 83. EC, 3C
        mov     eax, dword [ebp+0CH]                    ; 4D53 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 4D56 _ 8B. 40, 18
        mov     dword [ebp-20H], eax                    ; 4D59 _ 89. 45, E0
        mov     eax, dword [ebp+8H]                     ; 4D5C _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 4D5F _ 8B. 40, 10
        add     eax, 1                                  ; 4D62 _ 83. C0, 01
        cmp     dword [ebp+10H], eax                    ; 4D65 _ 39. 45, 10
        jle     ?_284                                   ; 4D68 _ 7E, 0C
        mov     eax, dword [ebp+8H]                     ; 4D6A _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 4D6D _ 8B. 40, 10
        add     eax, 1                                  ; 4D70 _ 83. C0, 01
        mov     dword [ebp+10H], eax                    ; 4D73 _ 89. 45, 10
?_284:  cmp     dword [ebp+10H], -1                     ; 4D76 _ 83. 7D, 10, FF
        jge     ?_285                                   ; 4D7A _ 7D, 07
        mov     dword [ebp+10H], -1                     ; 4D7C _ C7. 45, 10, FFFFFFFF
?_285:  mov     eax, dword [ebp+0CH]                    ; 4D83 _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 4D86 _ 8B. 55, 10
        mov     dword [eax+18H], edx                    ; 4D89 _ 89. 50, 18
        mov     eax, dword [ebp-20H]                    ; 4D8C _ 8B. 45, E0
        cmp     eax, dword [ebp+10H]                    ; 4D8F _ 3B. 45, 10
        jle     ?_292                                   ; 4D92 _ 0F 8E, 00000212
        cmp     dword [ebp+10H], 0                      ; 4D98 _ 83. 7D, 10, 00
        js      ?_288                                   ; 4D9C _ 0F 88, 000000FE
        mov     eax, dword [ebp-20H]                    ; 4DA2 _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 4DA5 _ 89. 45, E4
        jmp     ?_287                                   ; 4DA8 _ EB, 34

?_286:  mov     eax, dword [ebp-1CH]                    ; 4DAA _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 4DAD _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 4DB0 _ 8B. 45, 08
        add     edx, 4                                  ; 4DB3 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 4DB6 _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 4DBA _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 4DBD _ 8B. 55, E4
        add     edx, 4                                  ; 4DC0 _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 4DC3 _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 4DC7 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 4DCA _ 8B. 55, E4
        add     edx, 4                                  ; 4DCD _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 4DD0 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 4DD4 _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 4DD7 _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 4DDA _ 83. 6D, E4, 01
?_287:  mov     eax, dword [ebp-1CH]                    ; 4DDE _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 4DE1 _ 3B. 45, 10
        jg      ?_286                                   ; 4DE4 _ 7F, C4
        mov     eax, dword [ebp+8H]                     ; 4DE6 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 4DE9 _ 8B. 55, 10
        add     edx, 4                                  ; 4DEC _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 4DEF _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 4DF2 _ 89. 4C 90, 04
        mov     eax, dword [ebp+10H]                    ; 4DF6 _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 4DF9 _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 4DFC _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 4DFF _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 4E02 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 4E05 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 4E08 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 4E0B _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 4E0E _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 4E11 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 4E14 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 4E17 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 4E1A _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 4E1D _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 4E20 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 4E23 _ 8B. 40, 0C
        mov     dword [esp+14H], esi                    ; 4E26 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 4E2A _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 4E2E _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 4E32 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 4E36 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4E3A _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4E3D _ 89. 04 24
        call    _sheet_refreshmap                       ; 4E40 _ E8, 00000643
        mov     eax, dword [ebp+10H]                    ; 4E45 _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 4E48 _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 4E4B _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 4E4E _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 4E51 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 4E54 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 4E57 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 4E5A _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 4E5D _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 4E60 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 4E63 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 4E66 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 4E69 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 4E6C _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 4E6F _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 4E72 _ 8B. 40, 0C
        mov     edi, dword [ebp-20H]                    ; 4E75 _ 8B. 7D, E0
        mov     dword [esp+18H], edi                    ; 4E78 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 4E7C _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 4E80 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 4E84 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 4E88 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 4E8C _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4E90 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4E93 _ 89. 04 24
        call    _sheet_refreshsub                       ; 4E96 _ E8, 00000465
        jmp     ?_299                                   ; 4E9B _ E9, 0000027D

?_288:  mov     eax, dword [ebp+8H]                     ; 4EA0 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 4EA3 _ 8B. 40, 10
        cmp     dword [ebp-20H], eax                    ; 4EA6 _ 39. 45, E0
        jge     ?_291                                   ; 4EA9 _ 7D, 47
        mov     eax, dword [ebp-20H]                    ; 4EAB _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 4EAE _ 89. 45, E4
        jmp     ?_290                                   ; 4EB1 _ EB, 34

?_289:  mov     eax, dword [ebp-1CH]                    ; 4EB3 _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 4EB6 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 4EB9 _ 8B. 45, 08
        add     edx, 4                                  ; 4EBC _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 4EBF _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 4EC3 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 4EC6 _ 8B. 55, E4
        add     edx, 4                                  ; 4EC9 _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 4ECC _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 4ED0 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 4ED3 _ 8B. 55, E4
        add     edx, 4                                  ; 4ED6 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 4ED9 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 4EDD _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 4EE0 _ 89. 50, 18
        add     dword [ebp-1CH], 1                      ; 4EE3 _ 83. 45, E4, 01
?_290:  mov     eax, dword [ebp+8H]                     ; 4EE7 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 4EEA _ 8B. 40, 10
        cmp     dword [ebp-1CH], eax                    ; 4EED _ 39. 45, E4
        jl      ?_289                                   ; 4EF0 _ 7C, C1
?_291:  mov     eax, dword [ebp+8H]                     ; 4EF2 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 4EF5 _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 4EF8 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 4EFB _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 4EFE _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 4F01 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 4F04 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 4F07 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 4F0A _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 4F0D _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 4F10 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 4F13 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 4F16 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 4F19 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 4F1C _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 4F1F _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 4F22 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 4F25 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 4F28 _ 8B. 40, 0C
        mov     dword [esp+14H], 0                      ; 4F2B _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], ebx                    ; 4F33 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 4F37 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 4F3B _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 4F3F _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4F43 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4F46 _ 89. 04 24
        call    _sheet_refreshmap                       ; 4F49 _ E8, 0000053A
        mov     eax, dword [ebp-20H]                    ; 4F4E _ 8B. 45, E0
        lea     esi, [eax-1H]                           ; 4F51 _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 4F54 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 4F57 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 4F5A _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 4F5D _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 4F60 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 4F63 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 4F66 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 4F69 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 4F6C _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 4F6F _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 4F72 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 4F75 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 4F78 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 4F7B _ 8B. 40, 0C
        mov     dword [esp+18H], esi                    ; 4F7E _ 89. 74 24, 18
        mov     dword [esp+14H], 0                      ; 4F82 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], ebx                    ; 4F8A _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 4F8E _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 4F92 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 4F96 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4F9A _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4F9D _ 89. 04 24
        call    _sheet_refreshsub                       ; 4FA0 _ E8, 0000035B
        jmp     ?_299                                   ; 4FA5 _ E9, 00000173

?_292:  mov     eax, dword [ebp-20H]                    ; 4FAA _ 8B. 45, E0
        cmp     eax, dword [ebp+10H]                    ; 4FAD _ 3B. 45, 10
        jge     ?_299                                   ; 4FB0 _ 0F 8D, 00000167
        cmp     dword [ebp-20H], 0                      ; 4FB6 _ 83. 7D, E0, 00
        js      ?_295                                   ; 4FBA _ 78, 56
        mov     eax, dword [ebp-20H]                    ; 4FBC _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 4FBF _ 89. 45, E4
        jmp     ?_294                                   ; 4FC2 _ EB, 34

?_293:  mov     eax, dword [ebp-1CH]                    ; 4FC4 _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 4FC7 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 4FCA _ 8B. 45, 08
        add     edx, 4                                  ; 4FCD _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 4FD0 _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 4FD4 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 4FD7 _ 8B. 55, E4
        add     edx, 4                                  ; 4FDA _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 4FDD _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 4FE1 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 4FE4 _ 8B. 55, E4
        add     edx, 4                                  ; 4FE7 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 4FEA _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 4FEE _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 4FF1 _ 89. 50, 18
        add     dword [ebp-1CH], 1                      ; 4FF4 _ 83. 45, E4, 01
?_294:  mov     eax, dword [ebp-1CH]                    ; 4FF8 _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 4FFB _ 3B. 45, 10
        jl      ?_293                                   ; 4FFE _ 7C, C4
        mov     eax, dword [ebp+8H]                     ; 5000 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 5003 _ 8B. 55, 10
        add     edx, 4                                  ; 5006 _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 5009 _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 500C _ 89. 4C 90, 04
        jmp     ?_298                                   ; 5010 _ EB, 6C

?_295:  mov     eax, dword [ebp+8H]                     ; 5012 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 5015 _ 8B. 40, 10
        mov     dword [ebp-1CH], eax                    ; 5018 _ 89. 45, E4
        jmp     ?_297                                   ; 501B _ EB, 3A

?_296:  mov     eax, dword [ebp-1CH]                    ; 501D _ 8B. 45, E4
        lea     ebx, [eax+1H]                           ; 5020 _ 8D. 58, 01
        mov     eax, dword [ebp+8H]                     ; 5023 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 5026 _ 8B. 55, E4
        add     edx, 4                                  ; 5029 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 502C _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 5030 _ 8B. 45, 08
        lea     edx, [ebx+4H]                           ; 5033 _ 8D. 53, 04
        mov     dword [eax+edx*4+4H], ecx               ; 5036 _ 89. 4C 90, 04
        mov     eax, dword [ebp-1CH]                    ; 503A _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 503D _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 5040 _ 8B. 45, 08
        add     edx, 4                                  ; 5043 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 5046 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 504A _ 8B. 55, E4
        add     edx, 1                                  ; 504D _ 83. C2, 01
        mov     dword [eax+18H], edx                    ; 5050 _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 5053 _ 83. 6D, E4, 01
?_297:  mov     eax, dword [ebp-1CH]                    ; 5057 _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 505A _ 3B. 45, 10
        jge     ?_296                                   ; 505D _ 7D, BE
        mov     eax, dword [ebp+8H]                     ; 505F _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 5062 _ 8B. 55, 10
        add     edx, 4                                  ; 5065 _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 5068 _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 506B _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 506F _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 5072 _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 5075 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 5078 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 507B _ 89. 50, 10
?_298:  mov     eax, dword [ebp+0CH]                    ; 507E _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 5081 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 5084 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 5087 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 508A _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 508D _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 5090 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 5093 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 5096 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 5099 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 509C _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 509F _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 50A2 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 50A5 _ 8B. 40, 0C
        mov     esi, dword [ebp+10H]                    ; 50A8 _ 8B. 75, 10
        mov     dword [esp+14H], esi                    ; 50AB _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 50AF _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 50B3 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 50B7 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 50BB _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 50BF _ 8B. 45, 08
        mov     dword [esp], eax                        ; 50C2 _ 89. 04 24
        call    _sheet_refreshmap                       ; 50C5 _ E8, 000003BE
        mov     eax, dword [ebp+0CH]                    ; 50CA _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 50CD _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 50D0 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 50D3 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 50D6 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 50D9 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 50DC _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 50DF _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 50E2 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 50E5 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 50E8 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 50EB _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 50EE _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 50F1 _ 8B. 40, 0C
        mov     esi, dword [ebp+10H]                    ; 50F4 _ 8B. 75, 10
        mov     dword [esp+18H], esi                    ; 50F7 _ 89. 74 24, 18
        mov     esi, dword [ebp+10H]                    ; 50FB _ 8B. 75, 10
        mov     dword [esp+14H], esi                    ; 50FE _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 5102 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 5106 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 510A _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 510E _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 5112 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 5115 _ 89. 04 24
        call    _sheet_refreshsub                       ; 5118 _ E8, 000001E3
?_299:  nop                                             ; 511D _ 90
        add     esp, 60                                 ; 511E _ 83. C4, 3C
        pop     ebx                                     ; 5121 _ 5B
        pop     esi                                     ; 5122 _ 5E
        pop     edi                                     ; 5123 _ 5F
        pop     ebp                                     ; 5124 _ 5D
        ret                                             ; 5125 _ C3
; _sheet_updown End of function

_sheet_refresh:; Function begin
        push    ebp                                     ; 5126 _ 55
        mov     ebp, esp                                ; 5127 _ 89. E5
        push    edi                                     ; 5129 _ 57
        push    esi                                     ; 512A _ 56
        push    ebx                                     ; 512B _ 53
        sub     esp, 60                                 ; 512C _ 83. EC, 3C
        mov     eax, dword [ebp+0CH]                    ; 512F _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 5132 _ 8B. 40, 18
        test    eax, eax                                ; 5135 _ 85. C0
        js      ?_300                                   ; 5137 _ 78, 61
        mov     eax, dword [ebp+0CH]                    ; 5139 _ 8B. 45, 0C
        mov     edi, dword [eax+18H]                    ; 513C _ 8B. 78, 18
        mov     eax, dword [ebp+0CH]                    ; 513F _ 8B. 45, 0C
        mov     esi, dword [eax+18H]                    ; 5142 _ 8B. 70, 18
        mov     eax, dword [ebp+0CH]                    ; 5145 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 5148 _ 8B. 50, 10
        mov     eax, dword [ebp+1CH]                    ; 514B _ 8B. 45, 1C
        lea     ebx, [edx+eax]                          ; 514E _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 5151 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 5154 _ 8B. 50, 0C
        mov     eax, dword [ebp+18H]                    ; 5157 _ 8B. 45, 18
        lea     ecx, [edx+eax]                          ; 515A _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 515D _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 5160 _ 8B. 50, 10
        mov     eax, dword [ebp+14H]                    ; 5163 _ 8B. 45, 14
        add     edx, eax                                ; 5166 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 5168 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 516B _ 8B. 40, 0C
        mov     dword [ebp-1CH], eax                    ; 516E _ 89. 45, E4
        mov     eax, dword [ebp+10H]                    ; 5171 _ 8B. 45, 10
        add     eax, dword [ebp-1CH]                    ; 5174 _ 03. 45, E4
        mov     dword [esp+18H], edi                    ; 5177 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 517B _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 517F _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 5183 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 5187 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 518B _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 518F _ 8B. 45, 08
        mov     dword [esp], eax                        ; 5192 _ 89. 04 24
        call    _sheet_refreshsub                       ; 5195 _ E8, 00000166
?_300:  mov     eax, 0                                  ; 519A _ B8, 00000000
        add     esp, 60                                 ; 519F _ 83. C4, 3C
        pop     ebx                                     ; 51A2 _ 5B
        pop     esi                                     ; 51A3 _ 5E
        pop     edi                                     ; 51A4 _ 5F
        pop     ebp                                     ; 51A5 _ 5D
        ret                                             ; 51A6 _ C3
; _sheet_refresh End of function

_sheet_slide:; Function begin
        push    ebp                                     ; 51A7 _ 55
        mov     ebp, esp                                ; 51A8 _ 89. E5
        push    esi                                     ; 51AA _ 56
        push    ebx                                     ; 51AB _ 53
        sub     esp, 48                                 ; 51AC _ 83. EC, 30
        mov     eax, dword [ebp+0CH]                    ; 51AF _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 51B2 _ 8B. 40, 0C
        mov     dword [ebp-0CH], eax                    ; 51B5 _ 89. 45, F4
        mov     eax, dword [ebp+0CH]                    ; 51B8 _ 8B. 45, 0C
        mov     eax, dword [eax+10H]                    ; 51BB _ 8B. 40, 10
        mov     dword [ebp-10H], eax                    ; 51BE _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 51C1 _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 51C4 _ 8B. 55, 10
        mov     dword [eax+0CH], edx                    ; 51C7 _ 89. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 51CA _ 8B. 45, 0C
        mov     edx, dword [ebp+14H]                    ; 51CD _ 8B. 55, 14
        mov     dword [eax+10H], edx                    ; 51D0 _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 51D3 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 51D6 _ 8B. 40, 18
        test    eax, eax                                ; 51D9 _ 85. C0
        js      ?_301                                   ; 51DB _ 0F 88, 00000117
        mov     eax, dword [ebp+0CH]                    ; 51E1 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 51E4 _ 8B. 50, 08
        mov     eax, dword [ebp-10H]                    ; 51E7 _ 8B. 45, F0
        add     edx, eax                                ; 51EA _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 51EC _ 8B. 45, 0C
        mov     ecx, dword [eax+4H]                     ; 51EF _ 8B. 48, 04
        mov     eax, dword [ebp-0CH]                    ; 51F2 _ 8B. 45, F4
        add     eax, ecx                                ; 51F5 _ 01. C8
        mov     dword [esp+14H], 0                      ; 51F7 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], edx                    ; 51FF _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 5203 _ 89. 44 24, 0C
        mov     eax, dword [ebp-10H]                    ; 5207 _ 8B. 45, F0
        mov     dword [esp+8H], eax                     ; 520A _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 520E _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 5211 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 5215 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 5218 _ 89. 04 24
        call    _sheet_refreshmap                       ; 521B _ E8, 00000268
        mov     eax, dword [ebp+0CH]                    ; 5220 _ 8B. 45, 0C
        mov     ecx, dword [eax+18H]                    ; 5223 _ 8B. 48, 18
        mov     eax, dword [ebp+0CH]                    ; 5226 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 5229 _ 8B. 50, 08
        mov     eax, dword [ebp+14H]                    ; 522C _ 8B. 45, 14
        add     edx, eax                                ; 522F _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 5231 _ 8B. 45, 0C
        mov     ebx, dword [eax+4H]                     ; 5234 _ 8B. 58, 04
        mov     eax, dword [ebp+10H]                    ; 5237 _ 8B. 45, 10
        add     eax, ebx                                ; 523A _ 01. D8
        mov     dword [esp+14H], ecx                    ; 523C _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 5240 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 5244 _ 89. 44 24, 0C
        mov     eax, dword [ebp+14H]                    ; 5248 _ 8B. 45, 14
        mov     dword [esp+8H], eax                     ; 524B _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 524F _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 5252 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 5256 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 5259 _ 89. 04 24
        call    _sheet_refreshmap                       ; 525C _ E8, 00000227
        mov     eax, dword [ebp+0CH]                    ; 5261 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 5264 _ 8B. 40, 18
        lea     ecx, [eax-1H]                           ; 5267 _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 526A _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 526D _ 8B. 50, 08
        mov     eax, dword [ebp-10H]                    ; 5270 _ 8B. 45, F0
        add     edx, eax                                ; 5273 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 5275 _ 8B. 45, 0C
        mov     ebx, dword [eax+4H]                     ; 5278 _ 8B. 58, 04
        mov     eax, dword [ebp-0CH]                    ; 527B _ 8B. 45, F4
        add     eax, ebx                                ; 527E _ 01. D8
        mov     dword [esp+18H], ecx                    ; 5280 _ 89. 4C 24, 18
        mov     dword [esp+14H], 0                      ; 5284 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], edx                    ; 528C _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 5290 _ 89. 44 24, 0C
        mov     eax, dword [ebp-10H]                    ; 5294 _ 8B. 45, F0
        mov     dword [esp+8H], eax                     ; 5297 _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 529B _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 529E _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 52A2 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 52A5 _ 89. 04 24
        call    _sheet_refreshsub                       ; 52A8 _ E8, 00000053
        mov     eax, dword [ebp+0CH]                    ; 52AD _ 8B. 45, 0C
        mov     ebx, dword [eax+18H]                    ; 52B0 _ 8B. 58, 18
        mov     eax, dword [ebp+0CH]                    ; 52B3 _ 8B. 45, 0C
        mov     ecx, dword [eax+18H]                    ; 52B6 _ 8B. 48, 18
        mov     eax, dword [ebp+0CH]                    ; 52B9 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 52BC _ 8B. 50, 08
        mov     eax, dword [ebp+14H]                    ; 52BF _ 8B. 45, 14
        add     edx, eax                                ; 52C2 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 52C4 _ 8B. 45, 0C
        mov     esi, dword [eax+4H]                     ; 52C7 _ 8B. 70, 04
        mov     eax, dword [ebp+10H]                    ; 52CA _ 8B. 45, 10
        add     eax, esi                                ; 52CD _ 01. F0
        mov     dword [esp+18H], ebx                    ; 52CF _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 52D3 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 52D7 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 52DB _ 89. 44 24, 0C
        mov     eax, dword [ebp+14H]                    ; 52DF _ 8B. 45, 14
        mov     dword [esp+8H], eax                     ; 52E2 _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 52E6 _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 52E9 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 52ED _ 8B. 45, 08
        mov     dword [esp], eax                        ; 52F0 _ 89. 04 24
        call    _sheet_refreshsub                       ; 52F3 _ E8, 00000008
?_301:  nop                                             ; 52F8 _ 90
        add     esp, 48                                 ; 52F9 _ 83. C4, 30
        pop     ebx                                     ; 52FC _ 5B
        pop     esi                                     ; 52FD _ 5E
        pop     ebp                                     ; 52FE _ 5D
        ret                                             ; 52FF _ C3
; _sheet_slide End of function

_sheet_refreshsub:; Function begin
        push    ebp                                     ; 5300 _ 55
        mov     ebp, esp                                ; 5301 _ 89. E5
        sub     esp, 48                                 ; 5303 _ 83. EC, 30
        mov     eax, dword [ebp+8H]                     ; 5306 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 5309 _ 8B. 00
        mov     dword [ebp-10H], eax                    ; 530B _ 89. 45, F0
        mov     eax, dword [ebp+8H]                     ; 530E _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 5311 _ 8B. 40, 04
        mov     dword [ebp-14H], eax                    ; 5314 _ 89. 45, EC
        cmp     dword [ebp+0CH], 0                      ; 5317 _ 83. 7D, 0C, 00
        jns     ?_302                                   ; 531B _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 531D _ C7. 45, 0C, 00000000
?_302:  cmp     dword [ebp+10H], 8                      ; 5324 _ 83. 7D, 10, 08
        jg      ?_303                                   ; 5328 _ 7F, 07
        mov     dword [ebp+10H], 0                      ; 532A _ C7. 45, 10, 00000000
?_303:  mov     eax, dword [ebp+8H]                     ; 5331 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 5334 _ 8B. 40, 08
        cmp     dword [ebp+14H], eax                    ; 5337 _ 39. 45, 14
        jle     ?_304                                   ; 533A _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 533C _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 533F _ 8B. 40, 08
        mov     dword [ebp+14H], eax                    ; 5342 _ 89. 45, 14
?_304:  mov     eax, dword [ebp+8H]                     ; 5345 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 5348 _ 8B. 40, 0C
        cmp     dword [ebp+18H], eax                    ; 534B _ 39. 45, 18
        jle     ?_305                                   ; 534E _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 5350 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 5353 _ 8B. 40, 0C
        mov     dword [ebp+18H], eax                    ; 5356 _ 89. 45, 18
?_305:  mov     eax, dword [ebp+1CH]                    ; 5359 _ 8B. 45, 1C
        mov     dword [ebp-4H], eax                     ; 535C _ 89. 45, FC
        jmp     ?_312                                   ; 535F _ E9, 00000115

?_306:  mov     eax, dword [ebp+8H]                     ; 5364 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 5367 _ 8B. 55, FC
        add     edx, 4                                  ; 536A _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 536D _ 8B. 44 90, 04
        mov     dword [ebp-18H], eax                    ; 5371 _ 89. 45, E8
        mov     eax, dword [ebp-18H]                    ; 5374 _ 8B. 45, E8
        mov     eax, dword [eax]                        ; 5377 _ 8B. 00
        mov     dword [ebp-1CH], eax                    ; 5379 _ 89. 45, E4
        mov     eax, dword [ebp+8H]                     ; 537C _ 8B. 45, 08
        add     eax, 1044                               ; 537F _ 05, 00000414
        mov     edx, dword [ebp-18H]                    ; 5384 _ 8B. 55, E8
        sub     edx, eax                                ; 5387 _ 29. C2
        mov     eax, edx                                ; 5389 _ 89. D0
        sar     eax, 2                                  ; 538B _ C1. F8, 02
        imul    eax, eax, 954437177                     ; 538E _ 69. C0, 38E38E39
        mov     byte [ebp-1DH], al                      ; 5394 _ 88. 45, E3
        mov     dword [ebp-0CH], 0                      ; 5397 _ C7. 45, F4, 00000000
        jmp     ?_311                                   ; 539E _ E9, 000000C3

?_307:  mov     eax, dword [ebp-18H]                    ; 53A3 _ 8B. 45, E8
        mov     edx, dword [eax+10H]                    ; 53A6 _ 8B. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 53A9 _ 8B. 45, F4
        add     eax, edx                                ; 53AC _ 01. D0
        mov     dword [ebp-24H], eax                    ; 53AE _ 89. 45, DC
        mov     dword [ebp-8H], 0                       ; 53B1 _ C7. 45, F8, 00000000
        jmp     ?_310                                   ; 53B8 _ E9, 00000096

?_308:  mov     eax, dword [ebp-18H]                    ; 53BD _ 8B. 45, E8
        mov     edx, dword [eax+0CH]                    ; 53C0 _ 8B. 50, 0C
        mov     eax, dword [ebp-8H]                     ; 53C3 _ 8B. 45, F8
        add     eax, edx                                ; 53C6 _ 01. D0
        mov     dword [ebp-28H], eax                    ; 53C8 _ 89. 45, D8
        mov     eax, dword [ebp+0CH]                    ; 53CB _ 8B. 45, 0C
        cmp     eax, dword [ebp-28H]                    ; 53CE _ 3B. 45, D8
        jg      ?_309                                   ; 53D1 _ 7F, 7C
        mov     eax, dword [ebp-28H]                    ; 53D3 _ 8B. 45, D8
        cmp     eax, dword [ebp+14H]                    ; 53D6 _ 3B. 45, 14
        jge     ?_309                                   ; 53D9 _ 7D, 74
        mov     eax, dword [ebp+10H]                    ; 53DB _ 8B. 45, 10
        cmp     eax, dword [ebp-24H]                    ; 53DE _ 3B. 45, DC
        jg      ?_309                                   ; 53E1 _ 7F, 6C
        mov     eax, dword [ebp-24H]                    ; 53E3 _ 8B. 45, DC
        cmp     eax, dword [ebp+18H]                    ; 53E6 _ 3B. 45, 18
        jge     ?_309                                   ; 53E9 _ 7D, 64
        mov     eax, dword [ebp-18H]                    ; 53EB _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 53EE _ 8B. 40, 04
        imul    eax, dword [ebp-0CH]                    ; 53F1 _ 0F AF. 45, F4
        mov     edx, dword [ebp-8H]                     ; 53F5 _ 8B. 55, F8
        add     eax, edx                                ; 53F8 _ 01. D0
        mov     edx, eax                                ; 53FA _ 89. C2
        mov     eax, dword [ebp-1CH]                    ; 53FC _ 8B. 45, E4
        add     eax, edx                                ; 53FF _ 01. D0
        movzx   eax, byte [eax]                         ; 5401 _ 0F B6. 00
        mov     byte [ebp-29H], al                      ; 5404 _ 88. 45, D7
        mov     eax, dword [ebp+8H]                     ; 5407 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 540A _ 8B. 40, 08
        imul    eax, dword [ebp-24H]                    ; 540D _ 0F AF. 45, DC
        mov     edx, dword [ebp-28H]                    ; 5411 _ 8B. 55, D8
        add     eax, edx                                ; 5414 _ 01. D0
        mov     edx, eax                                ; 5416 _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 5418 _ 8B. 45, EC
        add     eax, edx                                ; 541B _ 01. D0
        movzx   eax, byte [eax]                         ; 541D _ 0F B6. 00
        cmp     byte [ebp-1DH], al                      ; 5420 _ 38. 45, E3
        jnz     ?_309                                   ; 5423 _ 75, 2A
        movzx   eax, byte [ebp-29H]                     ; 5425 _ 0F B6. 45, D7
        mov     edx, dword [ebp-18H]                    ; 5429 _ 8B. 55, E8
        mov     edx, dword [edx+14H]                    ; 542C _ 8B. 52, 14
        cmp     eax, edx                                ; 542F _ 39. D0
        jz      ?_309                                   ; 5431 _ 74, 1C
        mov     eax, dword [ebp+8H]                     ; 5433 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 5436 _ 8B. 40, 08
        imul    eax, dword [ebp-24H]                    ; 5439 _ 0F AF. 45, DC
        mov     edx, dword [ebp-28H]                    ; 543D _ 8B. 55, D8
        add     eax, edx                                ; 5440 _ 01. D0
        mov     edx, eax                                ; 5442 _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 5444 _ 8B. 45, F0
        add     edx, eax                                ; 5447 _ 01. C2
        movzx   eax, byte [ebp-29H]                     ; 5449 _ 0F B6. 45, D7
        mov     byte [edx], al                          ; 544D _ 88. 02
?_309:  add     dword [ebp-8H], 1                       ; 544F _ 83. 45, F8, 01
?_310:  mov     eax, dword [ebp-18H]                    ; 5453 _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 5456 _ 8B. 40, 04
        cmp     dword [ebp-8H], eax                     ; 5459 _ 39. 45, F8
        jl      ?_308                                   ; 545C _ 0F 8C, FFFFFF5B
        add     dword [ebp-0CH], 1                      ; 5462 _ 83. 45, F4, 01
?_311:  mov     eax, dword [ebp-18H]                    ; 5466 _ 8B. 45, E8
        mov     eax, dword [eax+8H]                     ; 5469 _ 8B. 40, 08
        cmp     dword [ebp-0CH], eax                    ; 546C _ 39. 45, F4
        jl      ?_307                                   ; 546F _ 0F 8C, FFFFFF2E
        add     dword [ebp-4H], 1                       ; 5475 _ 83. 45, FC, 01
?_312:  mov     eax, dword [ebp-4H]                     ; 5479 _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 547C _ 3B. 45, 20
        jle     ?_306                                   ; 547F _ 0F 8E, FFFFFEDF
        nop                                             ; 5485 _ 90
        leave                                           ; 5486 _ C9
        ret                                             ; 5487 _ C3
; _sheet_refreshsub End of function

_sheet_refreshmap:; Function begin
        push    ebp                                     ; 5488 _ 55
        mov     ebp, esp                                ; 5489 _ 89. E5
        sub     esp, 64                                 ; 548B _ 83. EC, 40
        mov     eax, dword [ebp+8H]                     ; 548E _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 5491 _ 8B. 40, 04
        mov     dword [ebp-20H], eax                    ; 5494 _ 89. 45, E0
        cmp     dword [ebp+0CH], 0                      ; 5497 _ 83. 7D, 0C, 00
        jns     ?_313                                   ; 549B _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 549D _ C7. 45, 0C, 00000000
?_313:  cmp     dword [ebp+10H], 0                      ; 54A4 _ 83. 7D, 10, 00
        jns     ?_314                                   ; 54A8 _ 79, 07
        mov     dword [ebp+10H], 0                      ; 54AA _ C7. 45, 10, 00000000
?_314:  mov     eax, dword [ebp+8H]                     ; 54B1 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 54B4 _ 8B. 40, 08
        cmp     dword [ebp+14H], eax                    ; 54B7 _ 39. 45, 14
        jle     ?_315                                   ; 54BA _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 54BC _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 54BF _ 8B. 40, 08
        mov     dword [ebp+14H], eax                    ; 54C2 _ 89. 45, 14
?_315:  mov     eax, dword [ebp+8H]                     ; 54C5 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 54C8 _ 8B. 40, 0C
        cmp     dword [ebp+18H], eax                    ; 54CB _ 39. 45, 18
        jle     ?_316                                   ; 54CE _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 54D0 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 54D3 _ 8B. 40, 0C
        mov     dword [ebp+18H], eax                    ; 54D6 _ 89. 45, 18
?_316:  mov     eax, dword [ebp+1CH]                    ; 54D9 _ 8B. 45, 1C
        mov     dword [ebp-4H], eax                     ; 54DC _ 89. 45, FC
        jmp     ?_327                                   ; 54DF _ E9, 0000013F

?_317:  mov     eax, dword [ebp+8H]                     ; 54E4 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 54E7 _ 8B. 55, FC
        add     edx, 4                                  ; 54EA _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 54ED _ 8B. 44 90, 04
        mov     dword [ebp-24H], eax                    ; 54F1 _ 89. 45, DC
        mov     eax, dword [ebp+8H]                     ; 54F4 _ 8B. 45, 08
        add     eax, 1044                               ; 54F7 _ 05, 00000414
        mov     edx, dword [ebp-24H]                    ; 54FC _ 8B. 55, DC
        sub     edx, eax                                ; 54FF _ 29. C2
        mov     eax, edx                                ; 5501 _ 89. D0
        sar     eax, 2                                  ; 5503 _ C1. F8, 02
        imul    eax, eax, 954437177                     ; 5506 _ 69. C0, 38E38E39
        mov     byte [ebp-25H], al                      ; 550C _ 88. 45, DB
        mov     eax, dword [ebp-24H]                    ; 550F _ 8B. 45, DC
        mov     eax, dword [eax]                        ; 5512 _ 8B. 00
        mov     dword [ebp-2CH], eax                    ; 5514 _ 89. 45, D4
        mov     eax, dword [ebp-24H]                    ; 5517 _ 8B. 45, DC
        mov     eax, dword [eax+0CH]                    ; 551A _ 8B. 40, 0C
        mov     edx, dword [ebp+0CH]                    ; 551D _ 8B. 55, 0C
        sub     edx, eax                                ; 5520 _ 29. C2
        mov     eax, edx                                ; 5522 _ 89. D0
        mov     dword [ebp-10H], eax                    ; 5524 _ 89. 45, F0
        mov     eax, dword [ebp-24H]                    ; 5527 _ 8B. 45, DC
        mov     eax, dword [eax+10H]                    ; 552A _ 8B. 40, 10
        mov     edx, dword [ebp+10H]                    ; 552D _ 8B. 55, 10
        sub     edx, eax                                ; 5530 _ 29. C2
        mov     eax, edx                                ; 5532 _ 89. D0
        mov     dword [ebp-14H], eax                    ; 5534 _ 89. 45, EC
        mov     eax, dword [ebp-24H]                    ; 5537 _ 8B. 45, DC
        mov     eax, dword [eax+0CH]                    ; 553A _ 8B. 40, 0C
        mov     edx, dword [ebp+14H]                    ; 553D _ 8B. 55, 14
        sub     edx, eax                                ; 5540 _ 29. C2
        mov     eax, edx                                ; 5542 _ 89. D0
        mov     dword [ebp-18H], eax                    ; 5544 _ 89. 45, E8
        mov     eax, dword [ebp-24H]                    ; 5547 _ 8B. 45, DC
        mov     eax, dword [eax+10H]                    ; 554A _ 8B. 40, 10
        mov     edx, dword [ebp+18H]                    ; 554D _ 8B. 55, 18
        sub     edx, eax                                ; 5550 _ 29. C2
        mov     eax, edx                                ; 5552 _ 89. D0
        mov     dword [ebp-1CH], eax                    ; 5554 _ 89. 45, E4
        cmp     dword [ebp-10H], 0                      ; 5557 _ 83. 7D, F0, 00
        jns     ?_318                                   ; 555B _ 79, 07
        mov     dword [ebp-10H], 0                      ; 555D _ C7. 45, F0, 00000000
?_318:  cmp     dword [ebp-14H], 0                      ; 5564 _ 83. 7D, EC, 00
        jns     ?_319                                   ; 5568 _ 79, 07
        mov     dword [ebp-14H], 0                      ; 556A _ C7. 45, EC, 00000000
?_319:  mov     eax, dword [ebp-24H]                    ; 5571 _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 5574 _ 8B. 40, 04
        cmp     dword [ebp-18H], eax                    ; 5577 _ 39. 45, E8
        jle     ?_320                                   ; 557A _ 7E, 09
        mov     eax, dword [ebp-24H]                    ; 557C _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 557F _ 8B. 40, 04
        mov     dword [ebp-18H], eax                    ; 5582 _ 89. 45, E8
?_320:  mov     eax, dword [ebp-24H]                    ; 5585 _ 8B. 45, DC
        mov     eax, dword [eax+8H]                     ; 5588 _ 8B. 40, 08
        cmp     dword [ebp-1CH], eax                    ; 558B _ 39. 45, E4
        jle     ?_321                                   ; 558E _ 7E, 09
        mov     eax, dword [ebp-24H]                    ; 5590 _ 8B. 45, DC
        mov     eax, dword [eax+8H]                     ; 5593 _ 8B. 40, 08
        mov     dword [ebp-1CH], eax                    ; 5596 _ 89. 45, E4
?_321:  mov     eax, dword [ebp-14H]                    ; 5599 _ 8B. 45, EC
        mov     dword [ebp-0CH], eax                    ; 559C _ 89. 45, F4
        jmp     ?_326                                   ; 559F _ EB, 76

?_322:  mov     eax, dword [ebp-24H]                    ; 55A1 _ 8B. 45, DC
        mov     edx, dword [eax+10H]                    ; 55A4 _ 8B. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 55A7 _ 8B. 45, F4
        add     eax, edx                                ; 55AA _ 01. D0
        mov     dword [ebp-30H], eax                    ; 55AC _ 89. 45, D0
        mov     eax, dword [ebp-10H]                    ; 55AF _ 8B. 45, F0
        mov     dword [ebp-8H], eax                     ; 55B2 _ 89. 45, F8
        jmp     ?_325                                   ; 55B5 _ EB, 54

?_323:  mov     eax, dword [ebp-24H]                    ; 55B7 _ 8B. 45, DC
        mov     edx, dword [eax+0CH]                    ; 55BA _ 8B. 50, 0C
        mov     eax, dword [ebp-8H]                     ; 55BD _ 8B. 45, F8
        add     eax, edx                                ; 55C0 _ 01. D0
        mov     dword [ebp-34H], eax                    ; 55C2 _ 89. 45, CC
        mov     eax, dword [ebp-24H]                    ; 55C5 _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 55C8 _ 8B. 40, 04
        imul    eax, dword [ebp-0CH]                    ; 55CB _ 0F AF. 45, F4
        mov     edx, dword [ebp-8H]                     ; 55CF _ 8B. 55, F8
        add     eax, edx                                ; 55D2 _ 01. D0
        mov     edx, eax                                ; 55D4 _ 89. C2
        mov     eax, dword [ebp-2CH]                    ; 55D6 _ 8B. 45, D4
        add     eax, edx                                ; 55D9 _ 01. D0
        movzx   eax, byte [eax]                         ; 55DB _ 0F B6. 00
        movzx   eax, al                                 ; 55DE _ 0F B6. C0
        mov     edx, dword [ebp-24H]                    ; 55E1 _ 8B. 55, DC
        mov     edx, dword [edx+14H]                    ; 55E4 _ 8B. 52, 14
        cmp     eax, edx                                ; 55E7 _ 39. D0
        jz      ?_324                                   ; 55E9 _ 74, 1C
        mov     eax, dword [ebp+8H]                     ; 55EB _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 55EE _ 8B. 40, 08
        imul    eax, dword [ebp-30H]                    ; 55F1 _ 0F AF. 45, D0
        mov     edx, dword [ebp-34H]                    ; 55F5 _ 8B. 55, CC
        add     eax, edx                                ; 55F8 _ 01. D0
        mov     edx, eax                                ; 55FA _ 89. C2
        mov     eax, dword [ebp-20H]                    ; 55FC _ 8B. 45, E0
        add     edx, eax                                ; 55FF _ 01. C2
        movzx   eax, byte [ebp-25H]                     ; 5601 _ 0F B6. 45, DB
        mov     byte [edx], al                          ; 5605 _ 88. 02
?_324:  add     dword [ebp-8H], 1                       ; 5607 _ 83. 45, F8, 01
?_325:  mov     eax, dword [ebp-8H]                     ; 560B _ 8B. 45, F8
        cmp     eax, dword [ebp-18H]                    ; 560E _ 3B. 45, E8
        jl      ?_323                                   ; 5611 _ 7C, A4
        add     dword [ebp-0CH], 1                      ; 5613 _ 83. 45, F4, 01
?_326:  mov     eax, dword [ebp-0CH]                    ; 5617 _ 8B. 45, F4
        cmp     eax, dword [ebp-1CH]                    ; 561A _ 3B. 45, E4
        jl      ?_322                                   ; 561D _ 7C, 82
        add     dword [ebp-4H], 1                       ; 561F _ 83. 45, FC, 01
?_327:  mov     eax, dword [ebp+8H]                     ; 5623 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 5626 _ 8B. 40, 10
        cmp     dword [ebp-4H], eax                     ; 5629 _ 39. 45, FC
        jle     ?_317                                   ; 562C _ 0F 8E, FFFFFEB2
        nop                                             ; 5632 _ 90
        leave                                           ; 5633 _ C9
        ret                                             ; 5634 _ C3
; _sheet_refreshmap End of function

_sheet_free:; Function begin
        push    ebp                                     ; 5635 _ 55
        mov     ebp, esp                                ; 5636 _ 89. E5
        sub     esp, 24                                 ; 5638 _ 83. EC, 18
        mov     eax, dword [ebp+0CH]                    ; 563B _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 563E _ 8B. 40, 18
        test    eax, eax                                ; 5641 _ 85. C0
        js      ?_328                                   ; 5643 _ 78, 1A
        mov     dword [esp+8H], -1                      ; 5645 _ C7. 44 24, 08, FFFFFFFF
        mov     eax, dword [ebp+0CH]                    ; 564D _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 5650 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 5654 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 5657 _ 89. 04 24
        call    _sheet_updown                           ; 565A _ E8, FFFFF6EB
?_328:  mov     eax, dword [ebp+0CH]                    ; 565F _ 8B. 45, 0C
        mov     dword [eax+1CH], 0                      ; 5662 _ C7. 40, 1C, 00000000
        nop                                             ; 5669 _ 90
        leave                                           ; 566A _ C9
        ret                                             ; 566B _ C3
; _sheet_free End of function


_memman_init:
        push    ebp                                     ; 566C _ 55
        mov     ebp, esp                                ; 566D _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 566F _ 8B. 45, 08
        mov     dword [eax], 0                          ; 5672 _ C7. 00, 00000000
        mov     eax, dword [ebp+8H]                     ; 5678 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 567B _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 5682 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 5685 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 568C _ 8B. 45, 08
        mov     dword [eax+0CH], 0                      ; 568F _ C7. 40, 0C, 00000000
        nop                                             ; 5696 _ 90
        pop     ebp                                     ; 5697 _ 5D
        ret                                             ; 5698 _ C3

_memman_total:; Function begin
        push    ebp                                     ; 5699 _ 55
        mov     ebp, esp                                ; 569A _ 89. E5
        sub     esp, 16                                 ; 569C _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 569F _ C7. 45, F8, 00000000
        mov     dword [ebp-4H], 0                       ; 56A6 _ C7. 45, FC, 00000000
        jmp     ?_330                                   ; 56AD _ EB, 14

?_329:  mov     eax, dword [ebp+8H]                     ; 56AF _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 56B2 _ 8B. 55, FC
        add     edx, 2                                  ; 56B5 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 56B8 _ 8B. 44 D0, 04
        add     dword [ebp-8H], eax                     ; 56BC _ 01. 45, F8
        add     dword [ebp-4H], 1                       ; 56BF _ 83. 45, FC, 01
?_330:  mov     eax, dword [ebp+8H]                     ; 56C3 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 56C6 _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 56C8 _ 39. 45, FC
        jc      ?_329                                   ; 56CB _ 72, E2
        mov     eax, dword [ebp-8H]                     ; 56CD _ 8B. 45, F8
        leave                                           ; 56D0 _ C9
        ret                                             ; 56D1 _ C3
; _memman_total End of function

_memman_alloc:; Function begin
        push    ebp                                     ; 56D2 _ 55
        mov     ebp, esp                                ; 56D3 _ 89. E5
        push    ebx                                     ; 56D5 _ 53
        sub     esp, 16                                 ; 56D6 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 56D9 _ C7. 45, F8, 00000000
        jmp     ?_336                                   ; 56E0 _ E9, 000000BB

?_331:  mov     eax, dword [ebp+8H]                     ; 56E5 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 56E8 _ 8B. 55, F8
        add     edx, 2                                  ; 56EB _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 56EE _ 8B. 44 D0, 04
        cmp     dword [ebp+0CH], eax                    ; 56F2 _ 39. 45, 0C
        ja      ?_335                                   ; 56F5 _ 0F 87, 000000A1
        mov     eax, dword [ebp+8H]                     ; 56FB _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 56FE _ 8B. 55, F8
        add     edx, 2                                  ; 5701 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 5704 _ 8B. 04 D0
        mov     dword [ebp-0CH], eax                    ; 5707 _ 89. 45, F4
        mov     eax, dword [ebp+8H]                     ; 570A _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 570D _ 8B. 55, F8
        add     edx, 2                                  ; 5710 _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 5713 _ 8B. 14 D0
        mov     eax, dword [ebp+0CH]                    ; 5716 _ 8B. 45, 0C
        lea     ecx, [edx+eax]                          ; 5719 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 571C _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 571F _ 8B. 55, F8
        add     edx, 2                                  ; 5722 _ 83. C2, 02
        mov     dword [eax+edx*8], ecx                  ; 5725 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 5728 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 572B _ 8B. 55, F8
        add     edx, 2                                  ; 572E _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 5731 _ 8B. 44 D0, 04
        sub     eax, dword [ebp+0CH]                    ; 5735 _ 2B. 45, 0C
        mov     edx, dword [ebp+8H]                     ; 5738 _ 8B. 55, 08
        mov     ecx, dword [ebp-8H]                     ; 573B _ 8B. 4D, F8
        add     ecx, 2                                  ; 573E _ 83. C1, 02
        mov     dword [edx+ecx*8+4H], eax               ; 5741 _ 89. 44 CA, 04
        mov     eax, dword [ebp+8H]                     ; 5745 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 5748 _ 8B. 55, F8
        add     edx, 2                                  ; 574B _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 574E _ 8B. 44 D0, 04
        test    eax, eax                                ; 5752 _ 85. C0
        jnz     ?_334                                   ; 5754 _ 75, 41
        mov     eax, dword [ebp+8H]                     ; 5756 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 5759 _ 8B. 00
        lea     edx, [eax-1H]                           ; 575B _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 575E _ 8B. 45, 08
        mov     dword [eax], edx                        ; 5761 _ 89. 10
        jmp     ?_333                                   ; 5763 _ EB, 28

?_332:  mov     eax, dword [ebp-8H]                     ; 5765 _ 8B. 45, F8
        lea     edx, [eax+1H]                           ; 5768 _ 8D. 50, 01
        mov     ecx, dword [ebp+8H]                     ; 576B _ 8B. 4D, 08
        mov     eax, dword [ebp-8H]                     ; 576E _ 8B. 45, F8
        lea     ebx, [eax+2H]                           ; 5771 _ 8D. 58, 02
        mov     eax, dword [ebp+8H]                     ; 5774 _ 8B. 45, 08
        add     edx, 2                                  ; 5777 _ 83. C2, 02
        lea     edx, [eax+edx*8]                        ; 577A _ 8D. 14 D0
        mov     eax, dword [edx]                        ; 577D _ 8B. 02
        mov     edx, dword [edx+4H]                     ; 577F _ 8B. 52, 04
        mov     dword [ecx+ebx*8], eax                  ; 5782 _ 89. 04 D9
        mov     dword [ecx+ebx*8+4H], edx               ; 5785 _ 89. 54 D9, 04
        add     dword [ebp-8H], 1                       ; 5789 _ 83. 45, F8, 01
?_333:  mov     eax, dword [ebp+8H]                     ; 578D _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 5790 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 5792 _ 39. 45, F8
        jc      ?_332                                   ; 5795 _ 72, CE
?_334:  mov     eax, dword [ebp-0CH]                    ; 5797 _ 8B. 45, F4
        jmp     ?_337                                   ; 579A _ EB, 17

?_335:  add     dword [ebp-8H], 1                       ; 579C _ 83. 45, F8, 01
?_336:  mov     eax, dword [ebp+8H]                     ; 57A0 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 57A3 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 57A5 _ 39. 45, F8
        jc      ?_331                                   ; 57A8 _ 0F 82, FFFFFF37
        mov     eax, 0                                  ; 57AE _ B8, 00000000
?_337:  add     esp, 16                                 ; 57B3 _ 83. C4, 10
        pop     ebx                                     ; 57B6 _ 5B
        pop     ebp                                     ; 57B7 _ 5D
        ret                                             ; 57B8 _ C3
; _memman_alloc End of function

_memman_free:; Function begin
        push    ebp                                     ; 57B9 _ 55
        mov     ebp, esp                                ; 57BA _ 89. E5
        push    ebx                                     ; 57BC _ 53
        sub     esp, 16                                 ; 57BD _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 57C0 _ C7. 45, F8, 00000000
        jmp     ?_339                                   ; 57C7 _ EB, 15

?_338:  mov     eax, dword [ebp+8H]                     ; 57C9 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 57CC _ 8B. 55, F8
        add     edx, 2                                  ; 57CF _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 57D2 _ 8B. 04 D0
        cmp     dword [ebp+0CH], eax                    ; 57D5 _ 39. 45, 0C
        jc      ?_340                                   ; 57D8 _ 72, 10
        add     dword [ebp-8H], 1                       ; 57DA _ 83. 45, F8, 01
?_339:  mov     eax, dword [ebp+8H]                     ; 57DE _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 57E1 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 57E3 _ 39. 45, F8
        jl      ?_338                                   ; 57E6 _ 7C, E1
        jmp     ?_341                                   ; 57E8 _ EB, 01

?_340:  nop                                             ; 57EA _ 90
?_341:  cmp     dword [ebp-8H], 0                       ; 57EB _ 83. 7D, F8, 00
        jle     ?_345                                   ; 57EF _ 0F 8E, 000000F0
        mov     eax, dword [ebp-8H]                     ; 57F5 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 57F8 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 57FB _ 8B. 45, 08
        add     edx, 2                                  ; 57FE _ 83. C2, 02
        mov     ecx, dword [eax+edx*8]                  ; 5801 _ 8B. 0C D0
        mov     eax, dword [ebp-8H]                     ; 5804 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 5807 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 580A _ 8B. 45, 08
        add     edx, 2                                  ; 580D _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 5810 _ 8B. 44 D0, 04
        add     eax, ecx                                ; 5814 _ 01. C8
        cmp     dword [ebp+0CH], eax                    ; 5816 _ 39. 45, 0C
        jne     ?_345                                   ; 5819 _ 0F 85, 000000C6
        mov     eax, dword [ebp-8H]                     ; 581F _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 5822 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 5825 _ 8B. 45, 08
        add     edx, 2                                  ; 5828 _ 83. C2, 02
        mov     ecx, dword [eax+edx*8+4H]               ; 582B _ 8B. 4C D0, 04
        mov     eax, dword [ebp-8H]                     ; 582F _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 5832 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 5835 _ 8B. 45, 10
        add     ecx, eax                                ; 5838 _ 01. C1
        mov     eax, dword [ebp+8H]                     ; 583A _ 8B. 45, 08
        add     edx, 2                                  ; 583D _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 5840 _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 5844 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 5847 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 5849 _ 39. 45, F8
        jge     ?_344                                   ; 584C _ 0F 8D, 00000089
        mov     edx, dword [ebp+0CH]                    ; 5852 _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 5855 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 5858 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 585B _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 585E _ 8B. 55, F8
        add     edx, 2                                  ; 5861 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 5864 _ 8B. 04 D0
        cmp     ecx, eax                                ; 5867 _ 39. C1
        jnz     ?_344                                   ; 5869 _ 75, 70
        mov     eax, dword [ebp-8H]                     ; 586B _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 586E _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 5871 _ 8B. 45, 08
        add     edx, 2                                  ; 5874 _ 83. C2, 02
        mov     ecx, dword [eax+edx*8+4H]               ; 5877 _ 8B. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 587B _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 587E _ 8B. 55, F8
        add     edx, 2                                  ; 5881 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 5884 _ 8B. 44 D0, 04
        mov     edx, dword [ebp-8H]                     ; 5888 _ 8B. 55, F8
        sub     edx, 1                                  ; 588B _ 83. EA, 01
        add     ecx, eax                                ; 588E _ 01. C1
        mov     eax, dword [ebp+8H]                     ; 5890 _ 8B. 45, 08
        add     edx, 2                                  ; 5893 _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 5896 _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 589A _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 589D _ 8B. 00
        lea     edx, [eax-1H]                           ; 589F _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 58A2 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 58A5 _ 89. 10
        jmp     ?_343                                   ; 58A7 _ EB, 28

?_342:  mov     eax, dword [ebp-8H]                     ; 58A9 _ 8B. 45, F8
        lea     edx, [eax+1H]                           ; 58AC _ 8D. 50, 01
        mov     ecx, dword [ebp+8H]                     ; 58AF _ 8B. 4D, 08
        mov     eax, dword [ebp-8H]                     ; 58B2 _ 8B. 45, F8
        lea     ebx, [eax+2H]                           ; 58B5 _ 8D. 58, 02
        mov     eax, dword [ebp+8H]                     ; 58B8 _ 8B. 45, 08
        add     edx, 2                                  ; 58BB _ 83. C2, 02
        lea     edx, [eax+edx*8]                        ; 58BE _ 8D. 14 D0
        mov     eax, dword [edx]                        ; 58C1 _ 8B. 02
        mov     edx, dword [edx+4H]                     ; 58C3 _ 8B. 52, 04
        mov     dword [ecx+ebx*8], eax                  ; 58C6 _ 89. 04 D9
        mov     dword [ecx+ebx*8+4H], edx               ; 58C9 _ 89. 54 D9, 04
        add     dword [ebp-8H], 1                       ; 58CD _ 83. 45, F8, 01
?_343:  mov     eax, dword [ebp+8H]                     ; 58D1 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 58D4 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 58D6 _ 39. 45, F8
        jl      ?_342                                   ; 58D9 _ 7C, CE
?_344:  mov     eax, 0                                  ; 58DB _ B8, 00000000
        jmp     ?_351                                   ; 58E0 _ E9, 0000011C

?_345:  mov     eax, dword [ebp+8H]                     ; 58E5 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 58E8 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 58EA _ 39. 45, F8
        jge     ?_346                                   ; 58ED _ 7D, 52
        mov     edx, dword [ebp+0CH]                    ; 58EF _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 58F2 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 58F5 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 58F8 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 58FB _ 8B. 55, F8
        add     edx, 2                                  ; 58FE _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 5901 _ 8B. 04 D0
        cmp     ecx, eax                                ; 5904 _ 39. C1
        jnz     ?_346                                   ; 5906 _ 75, 39
        mov     eax, dword [ebp+8H]                     ; 5908 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 590B _ 8B. 55, F8
        add     edx, 2                                  ; 590E _ 83. C2, 02
        mov     ecx, dword [ebp+0CH]                    ; 5911 _ 8B. 4D, 0C
        mov     dword [eax+edx*8], ecx                  ; 5914 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 5917 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 591A _ 8B. 55, F8
        add     edx, 2                                  ; 591D _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 5920 _ 8B. 54 D0, 04
        mov     eax, dword [ebp+10H]                    ; 5924 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 5927 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 592A _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 592D _ 8B. 55, F8
        add     edx, 2                                  ; 5930 _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 5933 _ 89. 4C D0, 04
        mov     eax, 0                                  ; 5937 _ B8, 00000000
        jmp     ?_351                                   ; 593C _ E9, 000000C0

?_346:  mov     eax, dword [ebp+8H]                     ; 5941 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 5944 _ 8B. 00
        cmp     eax, 4095                               ; 5946 _ 3D, 00000FFF
        jg      ?_350                                   ; 594B _ 0F 8F, 00000087
        mov     eax, dword [ebp+8H]                     ; 5951 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 5954 _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 5956 _ 89. 45, F4
        jmp     ?_348                                   ; 5959 _ EB, 28

?_347:  mov     eax, dword [ebp-0CH]                    ; 595B _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 595E _ 8D. 50, FF
        mov     ecx, dword [ebp+8H]                     ; 5961 _ 8B. 4D, 08
        mov     eax, dword [ebp-0CH]                    ; 5964 _ 8B. 45, F4
        lea     ebx, [eax+2H]                           ; 5967 _ 8D. 58, 02
        mov     eax, dword [ebp+8H]                     ; 596A _ 8B. 45, 08
        add     edx, 2                                  ; 596D _ 83. C2, 02
        lea     edx, [eax+edx*8]                        ; 5970 _ 8D. 14 D0
        mov     eax, dword [edx]                        ; 5973 _ 8B. 02
        mov     edx, dword [edx+4H]                     ; 5975 _ 8B. 52, 04
        mov     dword [ecx+ebx*8], eax                  ; 5978 _ 89. 04 D9
        mov     dword [ecx+ebx*8+4H], edx               ; 597B _ 89. 54 D9, 04
        sub     dword [ebp-0CH], 1                      ; 597F _ 83. 6D, F4, 01
?_348:  mov     eax, dword [ebp-0CH]                    ; 5983 _ 8B. 45, F4
        cmp     eax, dword [ebp-8H]                     ; 5986 _ 3B. 45, F8
        jg      ?_347                                   ; 5989 _ 7F, D0
        mov     eax, dword [ebp+8H]                     ; 598B _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 598E _ 8B. 00
        lea     edx, [eax+1H]                           ; 5990 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 5993 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 5996 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 5998 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 599B _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 599E _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 59A1 _ 8B. 00
        cmp     edx, eax                                ; 59A3 _ 39. C2
        jge     ?_349                                   ; 59A5 _ 7D, 0B
        mov     eax, dword [ebp+8H]                     ; 59A7 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 59AA _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 59AC _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 59AF _ 89. 50, 04
?_349:  mov     eax, dword [ebp+8H]                     ; 59B2 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 59B5 _ 8B. 55, F8
        add     edx, 2                                  ; 59B8 _ 83. C2, 02
        mov     ecx, dword [ebp+0CH]                    ; 59BB _ 8B. 4D, 0C
        mov     dword [eax+edx*8], ecx                  ; 59BE _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 59C1 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 59C4 _ 8B. 55, F8
        add     edx, 2                                  ; 59C7 _ 83. C2, 02
        mov     ecx, dword [ebp+10H]                    ; 59CA _ 8B. 4D, 10
        mov     dword [eax+edx*8+4H], ecx               ; 59CD _ 89. 4C D0, 04
        mov     eax, 0                                  ; 59D1 _ B8, 00000000
        jmp     ?_351                                   ; 59D6 _ EB, 29

?_350:  mov     eax, dword [ebp+8H]                     ; 59D8 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 59DB _ 8B. 40, 0C
        lea     edx, [eax+1H]                           ; 59DE _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 59E1 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 59E4 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 59E7 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 59EA _ 8B. 40, 08
        mov     edx, eax                                ; 59ED _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 59EF _ 8B. 45, 10
        add     eax, edx                                ; 59F2 _ 01. D0
        mov     edx, eax                                ; 59F4 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 59F6 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 59F9 _ 89. 50, 08
        mov     eax, 4294967295                         ; 59FC _ B8, FFFFFFFF
?_351:  add     esp, 16                                 ; 5A01 _ 83. C4, 10
        pop     ebx                                     ; 5A04 _ 5B
        pop     ebp                                     ; 5A05 _ 5D
        ret                                             ; 5A06 _ C3
; _memman_free End of function

_memman_alloc_4k:; Function begin
        push    ebp                                     ; 5A07 _ 55
        mov     ebp, esp                                ; 5A08 _ 89. E5
        sub     esp, 24                                 ; 5A0A _ 83. EC, 18
        mov     eax, dword [ebp+0CH]                    ; 5A0D _ 8B. 45, 0C
        add     eax, 4095                               ; 5A10 _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 5A15 _ 25, FFFFF000
        mov     dword [ebp+0CH], eax                    ; 5A1A _ 89. 45, 0C
        mov     eax, dword [ebp+0CH]                    ; 5A1D _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 5A20 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 5A24 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 5A27 _ 89. 04 24
        call    _memman_alloc                           ; 5A2A _ E8, FFFFFCA3
        mov     dword [ebp-4H], eax                     ; 5A2F _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 5A32 _ 8B. 45, FC
        leave                                           ; 5A35 _ C9
        ret                                             ; 5A36 _ C3
; _memman_alloc_4k End of function

_memman_free_4k:; Function begin
        push    ebp                                     ; 5A37 _ 55
        mov     ebp, esp                                ; 5A38 _ 89. E5
        sub     esp, 28                                 ; 5A3A _ 83. EC, 1C
        mov     eax, dword [ebp+10H]                    ; 5A3D _ 8B. 45, 10
        add     eax, 4095                               ; 5A40 _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 5A45 _ 25, FFFFF000
        mov     dword [ebp+10H], eax                    ; 5A4A _ 89. 45, 10
        mov     eax, dword [ebp+10H]                    ; 5A4D _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 5A50 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 5A54 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 5A57 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 5A5B _ 8B. 45, 08
        mov     dword [esp], eax                        ; 5A5E _ 89. 04 24
        call    _memman_free                            ; 5A61 _ E8, FFFFFD53
        mov     dword [ebp-4H], eax                     ; 5A66 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 5A69 _ 8B. 45, FC
        leave                                           ; 5A6C _ C9
        ret                                             ; 5A6D _ C3
; _memman_free_4k End of function

        nop                                             ; 5A6E _ 90
        nop                                             ; 5A6F _ 90


_set_segmdesc:
        push    ebp                                     ; 5A70 _ 55
        mov     ebp, esp                                ; 5A71 _ 89. E5
        cmp     dword [ebp+0CH], 1048575                ; 5A73 _ 81. 7D, 0C, 000FFFFF
        jbe     ?_352                                   ; 5A7A _ 76, 10
        or      dword [ebp+14H], 8000H                  ; 5A7C _ 81. 4D, 14, 00008000
        mov     eax, dword [ebp+0CH]                    ; 5A83 _ 8B. 45, 0C
        shr     eax, 12                                 ; 5A86 _ C1. E8, 0C
        mov     dword [ebp+0CH], eax                    ; 5A89 _ 89. 45, 0C
?_352:  mov     eax, dword [ebp+0CH]                    ; 5A8C _ 8B. 45, 0C
        mov     edx, eax                                ; 5A8F _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 5A91 _ 8B. 45, 08
        mov     word [eax], dx                          ; 5A94 _ 66: 89. 10
        mov     eax, dword [ebp+10H]                    ; 5A97 _ 8B. 45, 10
        mov     edx, eax                                ; 5A9A _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 5A9C _ 8B. 45, 08
        mov     word [eax+2H], dx                       ; 5A9F _ 66: 89. 50, 02
        mov     eax, dword [ebp+10H]                    ; 5AA3 _ 8B. 45, 10
        sar     eax, 16                                 ; 5AA6 _ C1. F8, 10
        mov     edx, eax                                ; 5AA9 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 5AAB _ 8B. 45, 08
        mov     byte [eax+4H], dl                       ; 5AAE _ 88. 50, 04
        mov     eax, dword [ebp+14H]                    ; 5AB1 _ 8B. 45, 14
        mov     edx, eax                                ; 5AB4 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 5AB6 _ 8B. 45, 08
        mov     byte [eax+5H], dl                       ; 5AB9 _ 88. 50, 05
        mov     eax, dword [ebp+0CH]                    ; 5ABC _ 8B. 45, 0C
        shr     eax, 16                                 ; 5ABF _ C1. E8, 10
        and     eax, 0FH                                ; 5AC2 _ 83. E0, 0F
        mov     edx, eax                                ; 5AC5 _ 89. C2
        mov     eax, dword [ebp+14H]                    ; 5AC7 _ 8B. 45, 14
        sar     eax, 8                                  ; 5ACA _ C1. F8, 08
        and     eax, 0FFFFFFF0H                         ; 5ACD _ 83. E0, F0
        or      eax, edx                                ; 5AD0 _ 09. D0
        mov     edx, eax                                ; 5AD2 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 5AD4 _ 8B. 45, 08
        mov     byte [eax+6H], dl                       ; 5AD7 _ 88. 50, 06
        mov     eax, dword [ebp+10H]                    ; 5ADA _ 8B. 45, 10
        shr     eax, 24                                 ; 5ADD _ C1. E8, 18
        mov     edx, eax                                ; 5AE0 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 5AE2 _ 8B. 45, 08
        mov     byte [eax+7H], dl                       ; 5AE5 _ 88. 50, 07
        nop                                             ; 5AE8 _ 90
        pop     ebp                                     ; 5AE9 _ 5D
        ret                                             ; 5AEA _ C3

_get_taskctl:; Function begin
        mov     eax, dword [_taskctl]                   ; 5AEB _ A1, 00000004(d)
        ret                                             ; 5AF0 _ C3
; _get_taskctl End of function

_init_task_level:; Function begin
        push    ebp                                     ; 5AF1 _ 55
        mov     ebp, esp                                ; 5AF2 _ 89. E5
        sub     esp, 16                                 ; 5AF4 _ 83. EC, 10
        mov     ecx, dword [_taskctl]                   ; 5AF7 _ 8B. 0D, 00000004(d)
        mov     edx, dword [ebp+8H]                     ; 5AFD _ 8B. 55, 08
        mov     eax, edx                                ; 5B00 _ 89. D0
        add     eax, eax                                ; 5B02 _ 01. C0
        add     eax, edx                                ; 5B04 _ 01. D0
        shl     eax, 4                                  ; 5B06 _ C1. E0, 04
        add     eax, ecx                                ; 5B09 _ 01. C8
        add     eax, 8                                  ; 5B0B _ 83. C0, 08
        mov     dword [eax], 0                          ; 5B0E _ C7. 00, 00000000
        mov     ecx, dword [_taskctl]                   ; 5B14 _ 8B. 0D, 00000004(d)
        mov     edx, dword [ebp+8H]                     ; 5B1A _ 8B. 55, 08
        mov     eax, edx                                ; 5B1D _ 89. D0
        add     eax, eax                                ; 5B1F _ 01. C0
        add     eax, edx                                ; 5B21 _ 01. D0
        shl     eax, 4                                  ; 5B23 _ C1. E0, 04
        add     eax, ecx                                ; 5B26 _ 01. C8
        add     eax, 12                                 ; 5B28 _ 83. C0, 0C
        mov     dword [eax], 0                          ; 5B2B _ C7. 00, 00000000
        mov     dword [ebp-4H], 0                       ; 5B31 _ C7. 45, FC, 00000000
        jmp     ?_354                                   ; 5B38 _ EB, 1B

?_353:  mov     edx, dword [_taskctl]                   ; 5B3A _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-4H]                     ; 5B40 _ 8B. 45, FC
        imul    eax, eax, 52                            ; 5B43 _ 6B. C0, 34
        add     eax, edx                                ; 5B46 _ 01. D0
        add     eax, 16                                 ; 5B48 _ 83. C0, 10
        mov     dword [eax], 0                          ; 5B4B _ C7. 00, 00000000
        add     dword [ebp-4H], 1                       ; 5B51 _ 83. 45, FC, 01
?_354:  cmp     dword [ebp-4H], 9                       ; 5B55 _ 83. 7D, FC, 09
        jle     ?_353                                   ; 5B59 _ 7E, DF
        nop                                             ; 5B5B _ 90
        leave                                           ; 5B5C _ C9
        ret                                             ; 5B5D _ C3
; _init_task_level End of function

_task_init:; Function begin
        push    ebp                                     ; 5B5E _ 55
        mov     ebp, esp                                ; 5B5F _ 89. E5
        sub     esp, 40                                 ; 5B61 _ 83. EC, 28
        call    _get_addr_gdt                           ; 5B64 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 5B69 _ 89. 45, F0
        mov     dword [esp+4H], 3128                    ; 5B6C _ C7. 44 24, 04, 00000C38
        mov     eax, dword [ebp+8H]                     ; 5B74 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 5B77 _ 89. 04 24
        call    _memman_alloc_4k                        ; 5B7A _ E8, 00000000(rel)
        mov     dword [_taskctl], eax                   ; 5B7F _ A3, 00000004(d)
        mov     dword [ebp-0CH], 0                      ; 5B84 _ C7. 45, F4, 00000000
        jmp     ?_356                                   ; 5B8B _ E9, 000000FC

?_355:  mov     edx, dword [_taskctl]                   ; 5B90 _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-0CH]                    ; 5B96 _ 8B. 45, F4
        imul    eax, eax, 208                           ; 5B99 _ 69. C0, 000000D0
        add     eax, edx                                ; 5B9F _ 01. D0
        add     eax, 492                                ; 5BA1 _ 05, 000001EC
        mov     dword [eax], 0                          ; 5BA6 _ C7. 00, 00000000
        mov     eax, dword [ebp-0CH]                    ; 5BAC _ 8B. 45, F4
        add     eax, 7                                  ; 5BAF _ 83. C0, 07
        mov     ecx, dword [_taskctl]                   ; 5BB2 _ 8B. 0D, 00000004(d)
        lea     edx, [eax*8]                            ; 5BB8 _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-0CH]                    ; 5BBF _ 8B. 45, F4
        imul    eax, eax, 208                           ; 5BC2 _ 69. C0, 000000D0
        add     eax, ecx                                ; 5BC8 _ 01. C8
        add     eax, 488                                ; 5BCA _ 05, 000001E8
        mov     dword [eax], edx                        ; 5BCF _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 5BD1 _ 8B. 45, F4
        add     eax, 17                                 ; 5BD4 _ 83. C0, 11
        mov     ecx, dword [_taskctl]                   ; 5BD7 _ 8B. 0D, 00000004(d)
        lea     edx, [eax*8]                            ; 5BDD _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-0CH]                    ; 5BE4 _ 8B. 45, F4
        imul    eax, eax, 208                           ; 5BE7 _ 69. C0, 000000D0
        add     eax, ecx                                ; 5BED _ 01. C8
        add     eax, 628                                ; 5BEF _ 05, 00000274
        mov     dword [eax], edx                        ; 5BF4 _ 89. 10
        mov     edx, dword [_taskctl]                   ; 5BF6 _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-0CH]                    ; 5BFC _ 8B. 45, F4
        imul    eax, eax, 208                           ; 5BFF _ 69. C0, 000000D0
        add     eax, 512                                ; 5C05 _ 05, 00000200
        add     eax, edx                                ; 5C0A _ 01. D0
        add     eax, 20                                 ; 5C0C _ 83. C0, 14
        mov     ecx, eax                                ; 5C0F _ 89. C1
        mov     eax, dword [ebp-0CH]                    ; 5C11 _ 8B. 45, F4
        add     eax, 7                                  ; 5C14 _ 83. C0, 07
        lea     edx, [eax*8]                            ; 5C17 _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-10H]                    ; 5C1E _ 8B. 45, F0
        add     eax, edx                                ; 5C21 _ 01. D0
        mov     dword [esp+0CH], 137                    ; 5C23 _ C7. 44 24, 0C, 00000089
        mov     dword [esp+8H], ecx                     ; 5C2B _ 89. 4C 24, 08
        mov     dword [esp+4H], 103                     ; 5C2F _ C7. 44 24, 04, 00000067
        mov     dword [esp], eax                        ; 5C37 _ 89. 04 24
        call    _set_segmdesc                           ; 5C3A _ E8, FFFFFE31
        mov     edx, dword [_taskctl]                   ; 5C3F _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-0CH]                    ; 5C45 _ 8B. 45, F4
        imul    eax, eax, 208                           ; 5C48 _ 69. C0, 000000D0
        add     eax, 656                                ; 5C4E _ 05, 00000290
        add     eax, edx                                ; 5C53 _ 01. D0
        add     eax, 20                                 ; 5C55 _ 83. C0, 14
        mov     ecx, eax                                ; 5C58 _ 89. C1
        mov     eax, dword [ebp-0CH]                    ; 5C5A _ 8B. 45, F4
        add     eax, 17                                 ; 5C5D _ 83. C0, 11
        lea     edx, [eax*8]                            ; 5C60 _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-10H]                    ; 5C67 _ 8B. 45, F0
        add     eax, edx                                ; 5C6A _ 01. D0
        mov     dword [esp+0CH], 130                    ; 5C6C _ C7. 44 24, 0C, 00000082
        mov     dword [esp+8H], ecx                     ; 5C74 _ 89. 4C 24, 08
        mov     dword [esp+4H], 15                      ; 5C78 _ C7. 44 24, 04, 0000000F
        mov     dword [esp], eax                        ; 5C80 _ 89. 04 24
        call    _set_segmdesc                           ; 5C83 _ E8, FFFFFDE8
        add     dword [ebp-0CH], 1                      ; 5C88 _ 83. 45, F4, 01
?_356:  cmp     dword [ebp-0CH], 9                      ; 5C8C _ 83. 7D, F4, 09
        jle     ?_355                                   ; 5C90 _ 0F 8E, FFFFFEFA
        mov     dword [ebp-0CH], 0                      ; 5C96 _ C7. 45, F4, 00000000
        jmp     ?_358                                   ; 5C9D _ EB, 0F

?_357:  mov     eax, dword [ebp-0CH]                    ; 5C9F _ 8B. 45, F4
        mov     dword [esp], eax                        ; 5CA2 _ 89. 04 24
        call    _init_task_level                        ; 5CA5 _ E8, FFFFFE47
        add     dword [ebp-0CH], 1                      ; 5CAA _ 83. 45, F4, 01
?_358:  cmp     dword [ebp-0CH], 9                      ; 5CAE _ 83. 7D, F4, 09
        jle     ?_357                                   ; 5CB2 _ 7E, EB
        call    _task_alloc                             ; 5CB4 _ E8, 00000066
        mov     dword [ebp-14H], eax                    ; 5CB9 _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 5CBC _ 8B. 45, EC
        mov     dword [eax+4H], 2                       ; 5CBF _ C7. 40, 04, 00000002
        mov     eax, dword [ebp-14H]                    ; 5CC6 _ 8B. 45, EC
        mov     dword [eax+8H], 100                     ; 5CC9 _ C7. 40, 08, 00000064
        mov     eax, dword [ebp-14H]                    ; 5CD0 _ 8B. 45, EC
        mov     dword [eax+0CH], 0                      ; 5CD3 _ C7. 40, 0C, 00000000
        mov     eax, dword [ebp-14H]                    ; 5CDA _ 8B. 45, EC
        mov     dword [esp], eax                        ; 5CDD _ 89. 04 24
        call    _task_add                               ; 5CE0 _ E8, 0000034B
        call    _task_switchsub                         ; 5CE5 _ E8, 0000045F
        mov     eax, dword [ebp-14H]                    ; 5CEA _ 8B. 45, EC
        mov     eax, dword [eax]                        ; 5CED _ 8B. 00
        mov     dword [esp], eax                        ; 5CEF _ 89. 04 24
        call    _load_tr                                ; 5CF2 _ E8, 00000000(rel)
        call    _timer_alloc                            ; 5CF7 _ E8, 00000000(rel)
        mov     dword [_task_timer], eax                       ; 5CFC _ A3, 00000000(d)
        mov     eax, dword [ebp-14H]                    ; 5D01 _ 8B. 45, EC
        mov     eax, dword [eax+8H]                     ; 5D04 _ 8B. 40, 08
        mov     edx, eax                                ; 5D07 _ 89. C2
        mov     eax, dword [_task_timer]                       ; 5D09 _ A1, 00000000(d)
        mov     dword [esp+4H], edx                     ; 5D0E _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 5D12 _ 89. 04 24
        call    _timer_settime                          ; 5D15 _ E8, 00000000(rel)
        mov     eax, dword [ebp-14H]                    ; 5D1A _ 8B. 45, EC
        leave                                           ; 5D1D _ C9
        ret                                             ; 5D1E _ C3
; _task_init End of function

_task_alloc:; Function begin
        push    ebp                                     ; 5D1F _ 55
        mov     ebp, esp                                ; 5D20 _ 89. E5
        sub     esp, 16                                 ; 5D22 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 5D25 _ C7. 45, FC, 00000000
        jmp     ?_361                                   ; 5D2C _ E9, 000000F8

?_359:  mov     edx, dword [_taskctl]                   ; 5D31 _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-4H]                     ; 5D37 _ 8B. 45, FC
        imul    eax, eax, 208                           ; 5D3A _ 69. C0, 000000D0
        add     eax, edx                                ; 5D40 _ 01. D0
        add     eax, 492                                ; 5D42 _ 05, 000001EC
        mov     eax, dword [eax]                        ; 5D47 _ 8B. 00
        test    eax, eax                                ; 5D49 _ 85. C0
        jne     ?_360                                   ; 5D4B _ 0F 85, 000000D4
        mov     edx, dword [_taskctl]                   ; 5D51 _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-4H]                     ; 5D57 _ 8B. 45, FC
        imul    eax, eax, 208                           ; 5D5A _ 69. C0, 000000D0
        add     eax, 480                                ; 5D60 _ 05, 000001E0
        add     eax, edx                                ; 5D65 _ 01. D0
        add     eax, 8                                  ; 5D67 _ 83. C0, 08
        mov     dword [ebp-8H], eax                     ; 5D6A _ 89. 45, F8
        mov     eax, dword [ebp-8H]                     ; 5D6D _ 8B. 45, F8
        mov     dword [eax+4H], 1                       ; 5D70 _ C7. 40, 04, 00000001
        mov     eax, dword [ebp-8H]                     ; 5D77 _ 8B. 45, F8
        mov     dword [eax+50H], 514                    ; 5D7A _ C7. 40, 50, 00000202
        mov     eax, dword [ebp-8H]                     ; 5D81 _ 8B. 45, F8
        mov     dword [eax+54H], 0                      ; 5D84 _ C7. 40, 54, 00000000
        mov     eax, dword [ebp-8H]                     ; 5D8B _ 8B. 45, F8
        mov     dword [eax+58H], 0                      ; 5D8E _ C7. 40, 58, 00000000
        mov     eax, dword [ebp-8H]                     ; 5D95 _ 8B. 45, F8
        mov     dword [eax+5CH], 0                      ; 5D98 _ C7. 40, 5C, 00000000
        mov     eax, dword [ebp-8H]                     ; 5D9F _ 8B. 45, F8
        mov     dword [eax+60H], 0                      ; 5DA2 _ C7. 40, 60, 00000000
        mov     eax, dword [ebp-8H]                     ; 5DA9 _ 8B. 45, F8
        mov     dword [eax+68H], 0                      ; 5DAC _ C7. 40, 68, 00000000
        mov     eax, dword [ebp-4H]                     ; 5DB3 _ 8B. 45, FC
        add     eax, 1                                  ; 5DB6 _ 83. C0, 01
        shl     eax, 9                                  ; 5DB9 _ C1. E0, 09
        mov     edx, eax                                ; 5DBC _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 5DBE _ 8B. 45, F8
        mov     dword [eax+64H], edx                    ; 5DC1 _ 89. 50, 64
        mov     eax, dword [ebp-8H]                     ; 5DC4 _ 8B. 45, F8
        mov     dword [eax+6CH], 0                      ; 5DC7 _ C7. 40, 6C, 00000000
        mov     eax, dword [ebp-8H]                     ; 5DCE _ 8B. 45, F8
        mov     dword [eax+70H], 0                      ; 5DD1 _ C7. 40, 70, 00000000
        mov     eax, dword [ebp-8H]                     ; 5DD8 _ 8B. 45, F8
        mov     dword [eax+74H], 0                      ; 5DDB _ C7. 40, 74, 00000000
        mov     eax, dword [ebp-8H]                     ; 5DE2 _ 8B. 45, F8
        mov     dword [eax+80H], 0                      ; 5DE5 _ C7. 80, 00000080, 00000000
        mov     eax, dword [ebp-8H]                     ; 5DEF _ 8B. 45, F8
        mov     dword [eax+84H], 0                      ; 5DF2 _ C7. 80, 00000084, 00000000
        mov     eax, dword [ebp-8H]                     ; 5DFC _ 8B. 45, F8
        mov     dword [eax+88H], 0                      ; 5DFF _ C7. 80, 00000088, 00000000
        mov     eax, dword [ebp-8H]                     ; 5E09 _ 8B. 45, F8
        mov     dword [eax+34H], 0                      ; 5E0C _ C7. 40, 34, 00000000
        mov     eax, dword [ebp-8H]                     ; 5E13 _ 8B. 45, F8
        mov     dword [eax+90H], 1073741824             ; 5E16 _ C7. 80, 00000090, 40000000
        mov     eax, dword [ebp-8H]                     ; 5E20 _ 8B. 45, F8
        jmp     ?_362                                   ; 5E23 _ EB, 13

?_360:  add     dword [ebp-4H], 1                       ; 5E25 _ 83. 45, FC, 01
?_361:  cmp     dword [ebp-4H], 9                       ; 5E29 _ 83. 7D, FC, 09
        jle     ?_359                                   ; 5E2D _ 0F 8E, FFFFFEFE
        mov     eax, 0                                  ; 5E33 _ B8, 00000000
?_362:  leave                                           ; 5E38 _ C9
        ret                                             ; 5E39 _ C3
; _task_alloc End of function

_task_run:; Function begin
        push    ebp                                     ; 5E3A _ 55
        mov     ebp, esp                                ; 5E3B _ 89. E5
        sub     esp, 24                                 ; 5E3D _ 83. EC, 18
        cmp     dword [ebp+0CH], 0                      ; 5E40 _ 83. 7D, 0C, 00
        jns     ?_363                                   ; 5E44 _ 79, 09
        mov     eax, dword [ebp+8H]                     ; 5E46 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 5E49 _ 8B. 40, 0C
        mov     dword [ebp+0CH], eax                    ; 5E4C _ 89. 45, 0C
?_363:  cmp     dword [ebp+10H], 0                      ; 5E4F _ 83. 7D, 10, 00
        jle     ?_364                                   ; 5E53 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 5E55 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 5E58 _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 5E5B _ 89. 50, 08
?_364:  mov     eax, dword [ebp+8H]                     ; 5E5E _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 5E61 _ 8B. 40, 04
        cmp     eax, 2                                  ; 5E64 _ 83. F8, 02
        jnz     ?_365                                   ; 5E67 _ 75, 16
        mov     eax, dword [ebp+8H]                     ; 5E69 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 5E6C _ 8B. 40, 0C
        cmp     dword [ebp+0CH], eax                    ; 5E6F _ 39. 45, 0C
        jz      ?_365                                   ; 5E72 _ 74, 0B
        mov     eax, dword [ebp+8H]                     ; 5E74 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 5E77 _ 89. 04 24
        call    _task_remove                            ; 5E7A _ E8, 000001FD
?_365:  mov     eax, dword [ebp+8H]                     ; 5E7F _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 5E82 _ 8B. 40, 04
        cmp     eax, 2                                  ; 5E85 _ 83. F8, 02
        jz      ?_366                                   ; 5E88 _ 74, 14
        mov     eax, dword [ebp+8H]                     ; 5E8A _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 5E8D _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 5E90 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 5E93 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 5E96 _ 89. 04 24
        call    _task_add                               ; 5E99 _ E8, 00000192
?_366:  mov     eax, dword [_taskctl]                   ; 5E9E _ A1, 00000004(d)
        mov     dword [eax+4H], 1                       ; 5EA3 _ C7. 40, 04, 00000001
        nop                                             ; 5EAA _ 90
        leave                                           ; 5EAB _ C9
        ret                                             ; 5EAC _ C3
; _task_run End of function

_task_switch:; Function begin
        push    ebp                                     ; 5EAD _ 55
        mov     ebp, esp                                ; 5EAE _ 89. E5
        sub     esp, 40                                 ; 5EB0 _ 83. EC, 28
        mov     ecx, dword [_taskctl]                   ; 5EB3 _ 8B. 0D, 00000004(d)
        mov     eax, dword [_taskctl]                   ; 5EB9 _ A1, 00000004(d)
        mov     edx, dword [eax]                        ; 5EBE _ 8B. 10
        mov     eax, edx                                ; 5EC0 _ 89. D0
        add     eax, eax                                ; 5EC2 _ 01. C0
        add     eax, edx                                ; 5EC4 _ 01. D0
        shl     eax, 4                                  ; 5EC6 _ C1. E0, 04
        add     eax, ecx                                ; 5EC9 _ 01. C8
        add     eax, 8                                  ; 5ECB _ 83. C0, 08
        mov     dword [ebp-0CH], eax                    ; 5ECE _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 5ED1 _ 8B. 45, F4
        mov     edx, dword [eax+4H]                     ; 5ED4 _ 8B. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 5ED7 _ 8B. 45, F4
        mov     eax, dword [eax+edx*4+8H]               ; 5EDA _ 8B. 44 90, 08
        mov     dword [ebp-10H], eax                    ; 5EDE _ 89. 45, F0
        mov     eax, dword [ebp-0CH]                    ; 5EE1 _ 8B. 45, F4
        mov     eax, dword [eax+4H]                     ; 5EE4 _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 5EE7 _ 8D. 50, 01
        mov     eax, dword [ebp-0CH]                    ; 5EEA _ 8B. 45, F4
        mov     dword [eax+4H], edx                     ; 5EED _ 89. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 5EF0 _ 8B. 45, F4
        mov     edx, dword [eax+4H]                     ; 5EF3 _ 8B. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 5EF6 _ 8B. 45, F4
        mov     eax, dword [eax]                        ; 5EF9 _ 8B. 00
        cmp     edx, eax                                ; 5EFB _ 39. C2
        jnz     ?_367                                   ; 5EFD _ 75, 0A
        mov     eax, dword [ebp-0CH]                    ; 5EFF _ 8B. 45, F4
        mov     dword [eax+4H], 0                       ; 5F02 _ C7. 40, 04, 00000000
?_367:  mov     eax, dword [_taskctl]                   ; 5F09 _ A1, 00000004(d)
        mov     eax, dword [eax+4H]                     ; 5F0E _ 8B. 40, 04
        test    eax, eax                                ; 5F11 _ 85. C0
        jz      ?_368                                   ; 5F13 _ 74, 23
        call    _task_switchsub                         ; 5F15 _ E8, 0000022F
        mov     ecx, dword [_taskctl]                   ; 5F1A _ 8B. 0D, 00000004(d)
        mov     eax, dword [_taskctl]                   ; 5F20 _ A1, 00000004(d)
        mov     edx, dword [eax]                        ; 5F25 _ 8B. 10
        mov     eax, edx                                ; 5F27 _ 89. D0
        add     eax, eax                                ; 5F29 _ 01. C0
        add     eax, edx                                ; 5F2B _ 01. D0
        shl     eax, 4                                  ; 5F2D _ C1. E0, 04
        add     eax, ecx                                ; 5F30 _ 01. C8
        add     eax, 8                                  ; 5F32 _ 83. C0, 08
        mov     dword [ebp-0CH], eax                    ; 5F35 _ 89. 45, F4
?_368:  mov     eax, dword [ebp-0CH]                    ; 5F38 _ 8B. 45, F4
        mov     edx, dword [eax+4H]                     ; 5F3B _ 8B. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 5F3E _ 8B. 45, F4
        mov     eax, dword [eax+edx*4+8H]               ; 5F41 _ 8B. 44 90, 08
        mov     dword [ebp-14H], eax                    ; 5F45 _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 5F48 _ 8B. 45, EC
        mov     eax, dword [eax+8H]                     ; 5F4B _ 8B. 40, 08
        mov     edx, eax                                ; 5F4E _ 89. C2
        mov     eax, dword [_task_timer]                       ; 5F50 _ A1, 00000000(d)
        mov     dword [esp+4H], edx                     ; 5F55 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 5F59 _ 89. 04 24
        call    _timer_settime                          ; 5F5C _ E8, 00000000(rel)
        mov     eax, dword [ebp-14H]                    ; 5F61 _ 8B. 45, EC
        cmp     eax, dword [ebp-10H]                    ; 5F64 _ 3B. 45, F0
        jz      ?_369                                   ; 5F67 _ 74, 1C
        cmp     dword [ebp-14H], 0                      ; 5F69 _ 83. 7D, EC, 00
        jz      ?_369                                   ; 5F6D _ 74, 16
        mov     eax, dword [ebp-14H]                    ; 5F6F _ 8B. 45, EC
        mov     eax, dword [eax]                        ; 5F72 _ 8B. 00
        mov     dword [esp+4H], eax                     ; 5F74 _ 89. 44 24, 04
        mov     dword [esp], 0                          ; 5F78 _ C7. 04 24, 00000000
        call    _farjmp                                 ; 5F7F _ E8, 00000000(rel)
        nop                                             ; 5F84 _ 90
?_369:  nop                                             ; 5F85 _ 90
        leave                                           ; 5F86 _ C9
        ret                                             ; 5F87 _ C3
; _task_switch End of function

_task_sleep:; Function begin
        push    ebp                                     ; 5F88 _ 55
        mov     ebp, esp                                ; 5F89 _ 89. E5
        sub     esp, 40                                 ; 5F8B _ 83. EC, 28
        mov     dword [ebp-10H], 0                      ; 5F8E _ C7. 45, F0, 00000000
        mov     dword [ebp-0CH], 0                      ; 5F95 _ C7. 45, F4, 00000000
        mov     eax, dword [ebp+8H]                     ; 5F9C _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 5F9F _ 8B. 40, 04
        cmp     eax, 2                                  ; 5FA2 _ 83. F8, 02
        jnz     ?_370                                   ; 5FA5 _ 75, 51
        call    _task_now                               ; 5FA7 _ E8, 00000051
        mov     dword [ebp-10H], eax                    ; 5FAC _ 89. 45, F0
        mov     eax, dword [ebp+8H]                     ; 5FAF _ 8B. 45, 08
        mov     dword [esp], eax                        ; 5FB2 _ 89. 04 24
        call    _task_remove                            ; 5FB5 _ E8, 000000C2
        mov     dword [ebp-0CH], 1                      ; 5FBA _ C7. 45, F4, 00000001
        mov     eax, dword [ebp+8H]                     ; 5FC1 _ 8B. 45, 08
        cmp     eax, dword [ebp-10H]                    ; 5FC4 _ 3B. 45, F0
        jnz     ?_370                                   ; 5FC7 _ 75, 2F
        call    _task_switchsub                         ; 5FC9 _ E8, 0000017B
        call    _task_now                               ; 5FCE _ E8, 0000002A
        mov     dword [ebp-10H], eax                    ; 5FD3 _ 89. 45, F0
        mov     dword [ebp-0CH], 2                      ; 5FD6 _ C7. 45, F4, 00000002
        cmp     dword [ebp-10H], 0                      ; 5FDD _ 83. 7D, F0, 00
        jz      ?_370                                   ; 5FE1 _ 74, 15
        mov     eax, dword [ebp-10H]                    ; 5FE3 _ 8B. 45, F0
        mov     eax, dword [eax]                        ; 5FE6 _ 8B. 00
        mov     dword [esp+4H], eax                     ; 5FE8 _ 89. 44 24, 04
        mov     dword [esp], 0                          ; 5FEC _ C7. 04 24, 00000000
        call    _farjmp                                 ; 5FF3 _ E8, 00000000(rel)
?_370:  mov     eax, dword [ebp-0CH]                    ; 5FF8 _ 8B. 45, F4
        leave                                           ; 5FFB _ C9
        ret                                             ; 5FFC _ C3
; _task_sleep End of function

_task_now:; Function begin
        push    ebp                                     ; 5FFD _ 55
        mov     ebp, esp                                ; 5FFE _ 89. E5
        sub     esp, 16                                 ; 6000 _ 83. EC, 10
        mov     ecx, dword [_taskctl]                   ; 6003 _ 8B. 0D, 00000004(d)
        mov     eax, dword [_taskctl]                   ; 6009 _ A1, 00000004(d)
        mov     edx, dword [eax]                        ; 600E _ 8B. 10
        mov     eax, edx                                ; 6010 _ 89. D0
        add     eax, eax                                ; 6012 _ 01. C0
        add     eax, edx                                ; 6014 _ 01. D0
        shl     eax, 4                                  ; 6016 _ C1. E0, 04
        add     eax, ecx                                ; 6019 _ 01. C8
        add     eax, 8                                  ; 601B _ 83. C0, 08
        mov     dword [ebp-4H], eax                     ; 601E _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 6021 _ 8B. 45, FC
        mov     edx, dword [eax+4H]                     ; 6024 _ 8B. 50, 04
        mov     eax, dword [ebp-4H]                     ; 6027 _ 8B. 45, FC
        mov     eax, dword [eax+edx*4+8H]               ; 602A _ 8B. 44 90, 08
        leave                                           ; 602E _ C9
        ret                                             ; 602F _ C3
; _task_now End of function

_task_add:; Function begin
        push    ebp                                     ; 6030 _ 55
        mov     ebp, esp                                ; 6031 _ 89. E5
        sub     esp, 16                                 ; 6033 _ 83. EC, 10
        mov     ecx, dword [_taskctl]                   ; 6036 _ 8B. 0D, 00000004(d)
        mov     eax, dword [ebp+8H]                     ; 603C _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 603F _ 8B. 50, 0C
        mov     eax, edx                                ; 6042 _ 89. D0
        add     eax, eax                                ; 6044 _ 01. C0
        add     eax, edx                                ; 6046 _ 01. D0
        shl     eax, 4                                  ; 6048 _ C1. E0, 04
        add     eax, ecx                                ; 604B _ 01. C8
        add     eax, 8                                  ; 604D _ 83. C0, 08
        mov     dword [ebp-4H], eax                     ; 6050 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 6053 _ 8B. 45, FC
        mov     edx, dword [eax]                        ; 6056 _ 8B. 10
        mov     eax, dword [ebp-4H]                     ; 6058 _ 8B. 45, FC
        mov     ecx, dword [ebp+8H]                     ; 605B _ 8B. 4D, 08
        mov     dword [eax+edx*4+8H], ecx               ; 605E _ 89. 4C 90, 08
        mov     eax, dword [ebp-4H]                     ; 6062 _ 8B. 45, FC
        mov     eax, dword [eax]                        ; 6065 _ 8B. 00
        lea     edx, [eax+1H]                           ; 6067 _ 8D. 50, 01
        mov     eax, dword [ebp-4H]                     ; 606A _ 8B. 45, FC
        mov     dword [eax], edx                        ; 606D _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 606F _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 6072 _ C7. 40, 04, 00000002
        nop                                             ; 6079 _ 90
        leave                                           ; 607A _ C9
        ret                                             ; 607B _ C3
; _task_add End of function

_task_remove:; Function begin
        push    ebp                                     ; 607C _ 55
        mov     ebp, esp                                ; 607D _ 89. E5
        sub     esp, 16                                 ; 607F _ 83. EC, 10
        mov     ecx, dword [_taskctl]                   ; 6082 _ 8B. 0D, 00000004(d)
        mov     eax, dword [ebp+8H]                     ; 6088 _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 608B _ 8B. 50, 0C
        mov     eax, edx                                ; 608E _ 89. D0
        add     eax, eax                                ; 6090 _ 01. C0
        add     eax, edx                                ; 6092 _ 01. D0
        shl     eax, 4                                  ; 6094 _ C1. E0, 04
        add     eax, ecx                                ; 6097 _ 01. C8
        add     eax, 8                                  ; 6099 _ 83. C0, 08
        mov     dword [ebp-8H], eax                     ; 609C _ 89. 45, F8
        mov     dword [ebp-4H], 0                       ; 609F _ C7. 45, FC, 00000000
        jmp     ?_373                                   ; 60A6 _ EB, 23

?_371:  mov     eax, dword [ebp-8H]                     ; 60A8 _ 8B. 45, F8
        mov     edx, dword [ebp-4H]                     ; 60AB _ 8B. 55, FC
        mov     eax, dword [eax+edx*4+8H]               ; 60AE _ 8B. 44 90, 08
        cmp     dword [ebp+8H], eax                     ; 60B2 _ 39. 45, 08
        jnz     ?_372                                   ; 60B5 _ 75, 10
        mov     eax, dword [ebp-8H]                     ; 60B7 _ 8B. 45, F8
        mov     edx, dword [ebp-4H]                     ; 60BA _ 8B. 55, FC
        mov     dword [eax+edx*4+8H], 0                 ; 60BD _ C7. 44 90, 08, 00000000
        jmp     ?_374                                   ; 60C5 _ EB, 0E

?_372:  add     dword [ebp-4H], 1                       ; 60C7 _ 83. 45, FC, 01
?_373:  mov     eax, dword [ebp-8H]                     ; 60CB _ 8B. 45, F8
        mov     eax, dword [eax]                        ; 60CE _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 60D0 _ 39. 45, FC
        jl      ?_371                                   ; 60D3 _ 7C, D3
?_374:  mov     eax, dword [ebp-8H]                     ; 60D5 _ 8B. 45, F8
        mov     eax, dword [eax]                        ; 60D8 _ 8B. 00
        lea     edx, [eax-1H]                           ; 60DA _ 8D. 50, FF
        mov     eax, dword [ebp-8H]                     ; 60DD _ 8B. 45, F8
        mov     dword [eax], edx                        ; 60E0 _ 89. 10
        mov     eax, dword [ebp-8H]                     ; 60E2 _ 8B. 45, F8
        mov     eax, dword [eax+4H]                     ; 60E5 _ 8B. 40, 04
        cmp     dword [ebp-4H], eax                     ; 60E8 _ 39. 45, FC
        jge     ?_375                                   ; 60EB _ 7D, 0F
        mov     eax, dword [ebp-8H]                     ; 60ED _ 8B. 45, F8
        mov     eax, dword [eax+4H]                     ; 60F0 _ 8B. 40, 04
        lea     edx, [eax-1H]                           ; 60F3 _ 8D. 50, FF
        mov     eax, dword [ebp-8H]                     ; 60F6 _ 8B. 45, F8
        mov     dword [eax+4H], edx                     ; 60F9 _ 89. 50, 04
?_375:  mov     eax, dword [ebp-8H]                     ; 60FC _ 8B. 45, F8
        mov     edx, dword [eax+4H]                     ; 60FF _ 8B. 50, 04
        mov     eax, dword [ebp-8H]                     ; 6102 _ 8B. 45, F8
        mov     eax, dword [eax]                        ; 6105 _ 8B. 00
        cmp     edx, eax                                ; 6107 _ 39. C2
        jl      ?_376                                   ; 6109 _ 7C, 0A
        mov     eax, dword [ebp-8H]                     ; 610B _ 8B. 45, F8
        mov     dword [eax+4H], 0                       ; 610E _ C7. 40, 04, 00000000
?_376:  mov     eax, dword [ebp+8H]                     ; 6115 _ 8B. 45, 08
        mov     dword [eax+4H], 1                       ; 6118 _ C7. 40, 04, 00000001
        jmp     ?_378                                   ; 611F _ EB, 1B

?_377:  mov     eax, dword [ebp-4H]                     ; 6121 _ 8B. 45, FC
        lea     edx, [eax+1H]                           ; 6124 _ 8D. 50, 01
        mov     eax, dword [ebp-8H]                     ; 6127 _ 8B. 45, F8
        mov     ecx, dword [eax+edx*4+8H]               ; 612A _ 8B. 4C 90, 08
        mov     eax, dword [ebp-8H]                     ; 612E _ 8B. 45, F8
        mov     edx, dword [ebp-4H]                     ; 6131 _ 8B. 55, FC
        mov     dword [eax+edx*4+8H], ecx               ; 6134 _ 89. 4C 90, 08
        add     dword [ebp-4H], 1                       ; 6138 _ 83. 45, FC, 01
?_378:  mov     eax, dword [ebp-8H]                     ; 613C _ 8B. 45, F8
        mov     eax, dword [eax]                        ; 613F _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 6141 _ 39. 45, FC
        jl      ?_377                                   ; 6144 _ 7C, DB
        nop                                             ; 6146 _ 90
        leave                                           ; 6147 _ C9
        ret                                             ; 6148 _ C3
; _task_remove End of function

_task_switchsub:; Function begin
        push    ebp                                     ; 6149 _ 55
        mov     ebp, esp                                ; 614A _ 89. E5
        sub     esp, 16                                 ; 614C _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 614F _ C7. 45, FC, 00000000
        jmp     ?_380                                   ; 6156 _ EB, 21

?_379:  mov     ecx, dword [_taskctl]                   ; 6158 _ 8B. 0D, 00000004(d)
        mov     edx, dword [ebp-4H]                     ; 615E _ 8B. 55, FC
        mov     eax, edx                                ; 6161 _ 89. D0
        add     eax, eax                                ; 6163 _ 01. C0
        add     eax, edx                                ; 6165 _ 01. D0
        shl     eax, 4                                  ; 6167 _ C1. E0, 04
        add     eax, ecx                                ; 616A _ 01. C8
        add     eax, 8                                  ; 616C _ 83. C0, 08
        mov     eax, dword [eax]                        ; 616F _ 8B. 00
        test    eax, eax                                ; 6171 _ 85. C0
        jg      ?_381                                   ; 6173 _ 7F, 0C
        add     dword [ebp-4H], 1                       ; 6175 _ 83. 45, FC, 01
?_380:  cmp     dword [ebp-4H], 9                       ; 6179 _ 83. 7D, FC, 09
        jle     ?_379                                   ; 617D _ 7E, D9
        jmp     ?_382                                   ; 617F _ EB, 01

?_381:  nop                                             ; 6181 _ 90
?_382:  mov     eax, dword [_taskctl]                   ; 6182 _ A1, 00000004(d)
        mov     edx, dword [ebp-4H]                     ; 6187 _ 8B. 55, FC
        mov     dword [eax], edx                        ; 618A _ 89. 10
        mov     eax, dword [_taskctl]                   ; 618C _ A1, 00000004(d)
        mov     dword [eax+4H], 0                       ; 6191 _ C7. 40, 04, 00000000
        nop                                             ; 6198 _ 90
        leave                                           ; 6199 _ C9
        ret                                             ; 619A _ C3
; _task_switchsub End of function

_send_message:; Function begin
        push    ebp                                     ; 619B _ 55
        mov     ebp, esp                                ; 619C _ 89. E5
        sub     esp, 24                                 ; 619E _ 83. EC, 18
        mov     eax, dword [ebp+10H]                    ; 61A1 _ 8B. 45, 10
        movzx   eax, al                                 ; 61A4 _ 0F B6. C0
        mov     edx, dword [ebp+0CH]                    ; 61A7 _ 8B. 55, 0C
        add     edx, 16                                 ; 61AA _ 83. C2, 10
        mov     dword [esp+4H], eax                     ; 61AD _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 61B1 _ 89. 14 24
        call    _fifo8_put                              ; 61B4 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 61B9 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 61BC _ 89. 04 24
        call    _task_sleep                             ; 61BF _ E8, FFFFFDC4
        nop                                             ; 61C4 _ 90
        leave                                           ; 61C5 _ C9
        ret                                             ; 61C6 _ C3
; _send_message End of function

        nop                                             ; 61C7 _ 90


_fifo8_init:
        push    ebp                                     ; 61C8 _ 55
        mov     ebp, esp                                ; 61C9 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 61CB _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 61CE _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 61D1 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 61D4 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 61D7 _ 8B. 55, 10
        mov     dword [eax], edx                        ; 61DA _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 61DC _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 61DF _ 8B. 55, 0C
        mov     dword [eax+10H], edx                    ; 61E2 _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 61E5 _ 8B. 45, 08
        mov     dword [eax+14H], 0                      ; 61E8 _ C7. 40, 14, 00000000
        mov     eax, dword [ebp+8H]                     ; 61EF _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 61F2 _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 61F9 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 61FC _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 6203 _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 6206 _ 8B. 55, 14
        mov     dword [eax+18H], edx                    ; 6209 _ 89. 50, 18
        nop                                             ; 620C _ 90
        pop     ebp                                     ; 620D _ 5D
        ret                                             ; 620E _ C3

_fifo8_put:; Function begin
        push    ebp                                     ; 620F _ 55
        mov     ebp, esp                                ; 6210 _ 89. E5
        sub     esp, 40                                 ; 6212 _ 83. EC, 28
        mov     eax, dword [ebp+0CH]                    ; 6215 _ 8B. 45, 0C
        mov     byte [ebp-0CH], al                      ; 6218 _ 88. 45, F4
        cmp     dword [ebp+8H], 0                       ; 621B _ 83. 7D, 08, 00
        jnz     ?_383                                   ; 621F _ 75, 0A
        mov     eax, 4294967295                         ; 6221 _ B8, FFFFFFFF
        jmp     ?_387                                   ; 6226 _ E9, 000000AB

?_383:  mov     eax, dword [ebp+8H]                     ; 622B _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 622E _ 8B. 40, 10
        test    eax, eax                                ; 6231 _ 85. C0
        jnz     ?_384                                   ; 6233 _ 75, 1B
        mov     eax, dword [ebp+8H]                     ; 6235 _ 8B. 45, 08
        mov     eax, dword [eax+14H]                    ; 6238 _ 8B. 40, 14
        or      eax, 01H                                ; 623B _ 83. C8, 01
        mov     edx, eax                                ; 623E _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 6240 _ 8B. 45, 08
        mov     dword [eax+14H], edx                    ; 6243 _ 89. 50, 14
        mov     eax, 4294967295                         ; 6246 _ B8, FFFFFFFF
        jmp     ?_387                                   ; 624B _ E9, 00000086

?_384:  mov     eax, dword [ebp+8H]                     ; 6250 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 6253 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 6255 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 6258 _ 8B. 40, 04
        add     edx, eax                                ; 625B _ 01. C2
        movzx   eax, byte [ebp-0CH]                     ; 625D _ 0F B6. 45, F4
        mov     byte [edx], al                          ; 6261 _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 6263 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 6266 _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 6269 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 626C _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 626F _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 6272 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 6275 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 6278 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 627B _ 8B. 40, 0C
        cmp     edx, eax                                ; 627E _ 39. C2
        jnz     ?_385                                   ; 6280 _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 6282 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 6285 _ C7. 40, 04, 00000000
?_385:  mov     eax, dword [ebp+8H]                     ; 628C _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 628F _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 6292 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 6295 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 6298 _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 629B _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 629E _ 8B. 40, 18
        test    eax, eax                                ; 62A1 _ 85. C0
        jz      ?_386                                   ; 62A3 _ 74, 2C
        mov     eax, dword [ebp+8H]                     ; 62A5 _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 62A8 _ 8B. 40, 18
        mov     eax, dword [eax+4H]                     ; 62AB _ 8B. 40, 04
        cmp     eax, 2                                  ; 62AE _ 83. F8, 02
        jz      ?_386                                   ; 62B1 _ 74, 1E
        mov     eax, dword [ebp+8H]                     ; 62B3 _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 62B6 _ 8B. 40, 18
        mov     dword [esp+8H], 0                       ; 62B9 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], -1                      ; 62C1 _ C7. 44 24, 04, FFFFFFFF
        mov     dword [esp], eax                        ; 62C9 _ 89. 04 24
        call    _task_run                               ; 62CC _ E8, 00000000(rel)
?_386:  mov     eax, 0                                  ; 62D1 _ B8, 00000000
?_387:  leave                                           ; 62D6 _ C9
        ret                                             ; 62D7 _ C3
; _fifo8_put End of function

_fifo8_get:; Function begin
        push    ebp                                     ; 62D8 _ 55
        mov     ebp, esp                                ; 62D9 _ 89. E5
        sub     esp, 16                                 ; 62DB _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 62DE _ 8B. 45, 08
        mov     edx, dword [eax+10H]                    ; 62E1 _ 8B. 50, 10
        mov     eax, dword [ebp+8H]                     ; 62E4 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 62E7 _ 8B. 40, 0C
        cmp     edx, eax                                ; 62EA _ 39. C2
        jnz     ?_388                                   ; 62EC _ 75, 07
        mov     eax, 4294967295                         ; 62EE _ B8, FFFFFFFF
        jmp     ?_390                                   ; 62F3 _ EB, 51

?_388:  mov     eax, dword [ebp+8H]                     ; 62F5 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 62F8 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 62FA _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 62FD _ 8B. 40, 08
        add     eax, edx                                ; 6300 _ 01. D0
        movzx   eax, byte [eax]                         ; 6302 _ 0F B6. 00
        movzx   eax, al                                 ; 6305 _ 0F B6. C0
        mov     dword [ebp-4H], eax                     ; 6308 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 630B _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 630E _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 6311 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 6314 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 6317 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 631A _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 631D _ 8B. 50, 08
        mov     eax, dword [ebp+8H]                     ; 6320 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 6323 _ 8B. 40, 0C
        cmp     edx, eax                                ; 6326 _ 39. C2
        jnz     ?_389                                   ; 6328 _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 632A _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 632D _ C7. 40, 08, 00000000
?_389:  mov     eax, dword [ebp+8H]                     ; 6334 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 6337 _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 633A _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 633D _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 6340 _ 89. 50, 10
        mov     eax, dword [ebp-4H]                     ; 6343 _ 8B. 45, FC
?_390:  leave                                           ; 6346 _ C9
        ret                                             ; 6347 _ C3
; _fifo8_get End of function

_fifo8_status:; Function begin
        push    ebp                                     ; 6348 _ 55
        mov     ebp, esp                                ; 6349 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 634B _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 634E _ 8B. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 6351 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 6354 _ 8B. 40, 10
        sub     edx, eax                                ; 6357 _ 29. C2
        mov     eax, edx                                ; 6359 _ 89. D0
        pop     ebp                                     ; 635B _ 5D
        ret                                             ; 635C _ C3
; _fifo8_status End of function

        nop                                             ; 635D _ 90
        nop                                             ; 635E _ 90
        nop                                             ; 635F _ 90


_init_pit:
        push    ebp                                     ; 6360 _ 55
        mov     ebp, esp                                ; 6361 _ 89. E5
        sub     esp, 40                                 ; 6363 _ 83. EC, 28
        mov     dword [esp+4H], 52                      ; 6366 _ C7. 44 24, 04, 00000034
        mov     dword [esp], 67                         ; 636E _ C7. 04 24, 00000043
        call    _io_out8                                ; 6375 _ E8, 00000000(rel)
        mov     dword [esp+4H], 156                     ; 637A _ C7. 44 24, 04, 0000009C
        mov     dword [esp], 64                         ; 6382 _ C7. 04 24, 00000040
        call    _io_out8                                ; 6389 _ E8, 00000000(rel)
        mov     dword [esp+4H], 46                      ; 638E _ C7. 44 24, 04, 0000002E
        mov     dword [esp], 64                         ; 6396 _ C7. 04 24, 00000040
        call    _io_out8                                ; 639D _ E8, 00000000(rel)
        mov     dword [_timerctl], 0                         ; 63A2 _ C7. 05, 00000000(d), 00000000
        mov     dword [ebp-0CH], 0                      ; 63AC _ C7. 45, F4, 00000000
        jmp     ?_392                                   ; 63B3 _ EB, 26

?_391:  mov     eax, dword [ebp-0CH]                    ; 63B5 _ 8B. 45, F4
        shl     eax, 4                                  ; 63B8 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 63BB _ 05, 00000008(d)
        mov     dword [eax], 0                          ; 63C0 _ C7. 00, 00000000
        mov     eax, dword [ebp-0CH]                    ; 63C6 _ 8B. 45, F4
        shl     eax, 4                                  ; 63C9 _ C1. E0, 04
        add     eax, _timerctl+0CH                           ; 63CC _ 05, 0000000C(d)
        mov     dword [eax], 0                          ; 63D1 _ C7. 00, 00000000
        add     dword [ebp-0CH], 1                      ; 63D7 _ 83. 45, F4, 01
?_392:  cmp     dword [ebp-0CH], 499                    ; 63DB _ 81. 7D, F4, 000001F3
        jle     ?_391                                   ; 63E2 _ 7E, D1
        nop                                             ; 63E4 _ 90
        leave                                           ; 63E5 _ C9
        ret                                             ; 63E6 _ C3

_timer_alloc:; Function begin
        push    ebp                                     ; 63E7 _ 55
        mov     ebp, esp                                ; 63E8 _ 89. E5
        sub     esp, 16                                 ; 63EA _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 63ED _ C7. 45, FC, 00000000
        jmp     ?_395                                   ; 63F4 _ EB, 36

?_393:  mov     eax, dword [ebp-4H]                     ; 63F6 _ 8B. 45, FC
        shl     eax, 4                                  ; 63F9 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 63FC _ 05, 00000008(d)
        mov     eax, dword [eax]                        ; 6401 _ 8B. 00
        test    eax, eax                                ; 6403 _ 85. C0
        jnz     ?_394                                   ; 6405 _ 75, 21
        mov     eax, dword [ebp-4H]                     ; 6407 _ 8B. 45, FC
        shl     eax, 4                                  ; 640A _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 640D _ 05, 00000008(d)
        mov     dword [eax], 1                          ; 6412 _ C7. 00, 00000001
        mov     eax, dword [ebp-4H]                     ; 6418 _ 8B. 45, FC
        shl     eax, 4                                  ; 641B _ C1. E0, 04
        add     eax, _timerctl                               ; 641E _ 05, 00000000(d)
        add     eax, 4                                  ; 6423 _ 83. C0, 04
        jmp     ?_396                                   ; 6426 _ EB, 12

?_394:  add     dword [ebp-4H], 1                       ; 6428 _ 83. 45, FC, 01
?_395:  cmp     dword [ebp-4H], 499                     ; 642C _ 81. 7D, FC, 000001F3
        jle     ?_393                                   ; 6433 _ 7E, C1
        mov     eax, 0                                  ; 6435 _ B8, 00000000
?_396:  leave                                           ; 643A _ C9
        ret                                             ; 643B _ C3
; _timer_alloc End of function

_timer_free:; Function begin
        push    ebp                                     ; 643C _ 55
        mov     ebp, esp                                ; 643D _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 643F _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 6442 _ C7. 40, 04, 00000000
        nop                                             ; 6449 _ 90
        pop     ebp                                     ; 644A _ 5D
        ret                                             ; 644B _ C3
; _timer_free End of function

_timer_init:; Function begin
        push    ebp                                     ; 644C _ 55
        mov     ebp, esp                                ; 644D _ 89. E5
        sub     esp, 4                                  ; 644F _ 83. EC, 04
        mov     eax, dword [ebp+10H]                    ; 6452 _ 8B. 45, 10
        mov     byte [ebp-4H], al                       ; 6455 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 6458 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 645B _ 8B. 55, 0C
        mov     dword [eax+8H], edx                     ; 645E _ 89. 50, 08
        mov     edx, dword [ebp+8H]                     ; 6461 _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 6464 _ 0F B6. 45, FC
        mov     byte [edx+0CH], al                      ; 6468 _ 88. 42, 0C
        nop                                             ; 646B _ 90
        leave                                           ; 646C _ C9
        ret                                             ; 646D _ C3
; _timer_init End of function

_timer_settime:; Function begin
        push    ebp                                     ; 646E _ 55
        mov     ebp, esp                                ; 646F _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 6471 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 6474 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 6477 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 6479 _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 647C _ C7. 40, 04, 00000002
        nop                                             ; 6483 _ 90
        pop     ebp                                     ; 6484 _ 5D
        ret                                             ; 6485 _ C3
; _timer_settime End of function

_intHandlerForTimer:; Function begin
        push    ebp                                     ; 6486 _ 55
        mov     ebp, esp                                ; 6487 _ 89. E5
        sub     esp, 40                                 ; 6489 _ 83. EC, 28
        mov     dword [esp+4H], 32                      ; 648C _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 6494 _ C7. 04 24, 00000020
        call    _io_out8                                ; 649B _ E8, 00000000(rel)
        mov     eax, dword [_timerctl]                       ; 64A0 _ A1, 00000000(d)
        add     eax, 1                                  ; 64A5 _ 83. C0, 01
        mov     dword [_timerctl], eax                       ; 64A8 _ A3, 00000000(d)
        mov     byte [ebp-0DH], 0                       ; 64AD _ C6. 45, F3, 00
        mov     dword [ebp-0CH], 0                      ; 64B1 _ C7. 45, F4, 00000000
        jmp     ?_400                                   ; 64B8 _ E9, 000000AA

?_397:  mov     eax, dword [ebp-0CH]                    ; 64BD _ 8B. 45, F4
        shl     eax, 4                                  ; 64C0 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 64C3 _ 05, 00000008(d)
        mov     eax, dword [eax]                        ; 64C8 _ 8B. 00
        cmp     eax, 2                                  ; 64CA _ 83. F8, 02
        jne     ?_398                                   ; 64CD _ 0F 85, 00000085
        mov     eax, dword [ebp-0CH]                    ; 64D3 _ 8B. 45, F4
        shl     eax, 4                                  ; 64D6 _ C1. E0, 04
        add     eax, _timerctl+4H                            ; 64D9 _ 05, 00000004(d)
        mov     eax, dword [eax]                        ; 64DE _ 8B. 00
        lea     edx, [eax-1H]                           ; 64E0 _ 8D. 50, FF
        mov     eax, dword [ebp-0CH]                    ; 64E3 _ 8B. 45, F4
        shl     eax, 4                                  ; 64E6 _ C1. E0, 04
        add     eax, _timerctl+4H                            ; 64E9 _ 05, 00000004(d)
        mov     dword [eax], edx                        ; 64EE _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 64F0 _ 8B. 45, F4
        shl     eax, 4                                  ; 64F3 _ C1. E0, 04
        add     eax, _timerctl+4H                            ; 64F6 _ 05, 00000004(d)
        mov     eax, dword [eax]                        ; 64FB _ 8B. 00
        test    eax, eax                                ; 64FD _ 85. C0
        jnz     ?_398                                   ; 64FF _ 75, 57
        mov     eax, dword [ebp-0CH]                    ; 6501 _ 8B. 45, F4
        shl     eax, 4                                  ; 6504 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 6507 _ 05, 00000008(d)
        mov     dword [eax], 1                          ; 650C _ C7. 00, 00000001
        mov     eax, dword [ebp-0CH]                    ; 6512 _ 8B. 45, F4
        shl     eax, 4                                  ; 6515 _ C1. E0, 04
        add     eax, _timerctl+10H                           ; 6518 _ 05, 00000010(d)
        movzx   eax, byte [eax]                         ; 651D _ 0F B6. 00
        movzx   eax, al                                 ; 6520 _ 0F B6. C0
        mov     edx, dword [ebp-0CH]                    ; 6523 _ 8B. 55, F4
        shl     edx, 4                                  ; 6526 _ C1. E2, 04
        add     edx, _timerctl+0CH                           ; 6529 _ 81. C2, 0000000C(d)
        mov     edx, dword [edx]                        ; 652F _ 8B. 12
        mov     dword [esp+4H], eax                     ; 6531 _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 6535 _ 89. 14 24
        call    _fifo8_put                              ; 6538 _ E8, 00000000(rel)
        mov     eax, dword [ebp-0CH]                    ; 653D _ 8B. 45, F4
        shl     eax, 4                                  ; 6540 _ C1. E0, 04
        add     eax, _timerctl                               ; 6543 _ 05, 00000000(d)
        lea     edx, [eax+4H]                           ; 6548 _ 8D. 50, 04
        mov     eax, dword [_task_timer]                ; 654B _ A1, 00000000(d)
        cmp     edx, eax                                ; 6550 _ 39. C2
        jnz     ?_398                                   ; 6552 _ 75, 04
        mov     byte [ebp-0DH], 1                       ; 6554 _ C6. 45, F3, 01
?_398:  cmp     byte [ebp-0DH], 0                       ; 6558 _ 80. 7D, F3, 00
        jz      ?_399                                   ; 655C _ 74, 05
        call    _task_switch                            ; 655E _ E8, 00000000(rel)
?_399:  add     dword [ebp-0CH], 1                      ; 6563 _ 83. 45, F4, 01
?_400:  cmp     dword [ebp-0CH], 499                    ; 6567 _ 81. 7D, F4, 000001F3
        jle     ?_397                                   ; 656E _ 0F 8E, FFFFFF49
        nop                                             ; 6574 _ 90
        leave                                           ; 6575 _ C9
        ret                                             ; 6576 _ C3
; _intHandlerForTimer End of function

_getTimerController:; Function begin
        mov     eax, _timerctl                               ; 6577 _ B8, 00000000(d)
        ret                                             ; 657C _ C3
; _getTimerController End of function

        nop                                             ; 657D _ 90
        nop                                             ; 657E _ 90
        nop                                             ; 657F _ 90


_strcmp:
        push    ebp                                     ; 6580 _ 55
        mov     ebp, esp                                ; 6581 _ 89. E5
        sub     esp, 16                                 ; 6583 _ 83. EC, 10
        cmp     dword [ebp+8H], 0                       ; 6586 _ 83. 7D, 08, 00
        jz      ?_401                                   ; 658A _ 74, 06
        cmp     dword [ebp+0CH], 0                      ; 658C _ 83. 7D, 0C, 00
        jnz     ?_402                                   ; 6590 _ 75, 0A
?_401:  mov     eax, 0                                  ; 6592 _ B8, 00000000
        jmp     ?_409                                   ; 6597 _ E9, 0000009B

?_402:  mov     dword [ebp-4H], 0                       ; 659C _ C7. 45, FC, 00000000
        jmp     ?_405                                   ; 65A3 _ EB, 25

?_403:  mov     edx, dword [ebp-4H]                     ; 65A5 _ 8B. 55, FC
        mov     eax, dword [ebp+8H]                     ; 65A8 _ 8B. 45, 08
        add     eax, edx                                ; 65AB _ 01. D0
        movzx   edx, byte [eax]                         ; 65AD _ 0F B6. 10
        mov     ecx, dword [ebp-4H]                     ; 65B0 _ 8B. 4D, FC
        mov     eax, dword [ebp+0CH]                    ; 65B3 _ 8B. 45, 0C
        add     eax, ecx                                ; 65B6 _ 01. C8
        movzx   eax, byte [eax]                         ; 65B8 _ 0F B6. 00
        cmp     dl, al                                  ; 65BB _ 38. C2
        jz      ?_404                                   ; 65BD _ 74, 07
        mov     eax, 0                                  ; 65BF _ B8, 00000000
        jmp     ?_409                                   ; 65C4 _ EB, 71

?_404:  add     dword [ebp-4H], 1                       ; 65C6 _ 83. 45, FC, 01
?_405:  mov     edx, dword [ebp-4H]                     ; 65CA _ 8B. 55, FC
        mov     eax, dword [ebp+8H]                     ; 65CD _ 8B. 45, 08
        add     eax, edx                                ; 65D0 _ 01. D0
        movzx   eax, byte [eax]                         ; 65D2 _ 0F B6. 00
        test    al, al                                  ; 65D5 _ 84. C0
        jz      ?_406                                   ; 65D7 _ 74, 0F
        mov     edx, dword [ebp-4H]                     ; 65D9 _ 8B. 55, FC
        mov     eax, dword [ebp+0CH]                    ; 65DC _ 8B. 45, 0C
        add     eax, edx                                ; 65DF _ 01. D0
        movzx   eax, byte [eax]                         ; 65E1 _ 0F B6. 00
        test    al, al                                  ; 65E4 _ 84. C0
        jnz     ?_403                                   ; 65E6 _ 75, BD
?_406:  mov     edx, dword [ebp-4H]                     ; 65E8 _ 8B. 55, FC
        mov     eax, dword [ebp+8H]                     ; 65EB _ 8B. 45, 08
        add     eax, edx                                ; 65EE _ 01. D0
        movzx   eax, byte [eax]                         ; 65F0 _ 0F B6. 00
        test    al, al                                  ; 65F3 _ 84. C0
        jnz     ?_407                                   ; 65F5 _ 75, 16
        mov     edx, dword [ebp-4H]                     ; 65F7 _ 8B. 55, FC
        mov     eax, dword [ebp+0CH]                    ; 65FA _ 8B. 45, 0C
        add     eax, edx                                ; 65FD _ 01. D0
        movzx   eax, byte [eax]                         ; 65FF _ 0F B6. 00
        test    al, al                                  ; 6602 _ 84. C0
        jz      ?_407                                   ; 6604 _ 74, 07
        mov     eax, 0                                  ; 6606 _ B8, 00000000
        jmp     ?_409                                   ; 660B _ EB, 2A

?_407:  mov     edx, dword [ebp-4H]                     ; 660D _ 8B. 55, FC
        mov     eax, dword [ebp+8H]                     ; 6610 _ 8B. 45, 08
        add     eax, edx                                ; 6613 _ 01. D0
        movzx   eax, byte [eax]                         ; 6615 _ 0F B6. 00
        test    al, al                                  ; 6618 _ 84. C0
        jz      ?_408                                   ; 661A _ 74, 16
        mov     edx, dword [ebp-4H]                     ; 661C _ 8B. 55, FC
        mov     eax, dword [ebp+0CH]                    ; 661F _ 8B. 45, 0C
        add     eax, edx                                ; 6622 _ 01. D0
        movzx   eax, byte [eax]                         ; 6624 _ 0F B6. 00
        test    al, al                                  ; 6627 _ 84. C0
        jz      ?_408                                   ; 6629 _ 74, 07
        mov     eax, 0                                  ; 662B _ B8, 00000000
        jmp     ?_409                                   ; 6630 _ EB, 05

?_408:  mov     eax, 1                                  ; 6632 _ B8, 00000001
?_409:  leave                                           ; 6637 _ C9
        ret                                             ; 6638 _ C3

        nop                                             ; 6639 _ 90
        nop                                             ; 663A _ 90
        nop                                             ; 663B _ 90



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

_closebtn.2321:                                         ; byte
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

_table_rgb.2359:                                        ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0200 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0208 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0210 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0218 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 0220 _ ........
        db 00H, 84H, 00H, 84H, 84H, 84H, 84H, 84H       ; 0228 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0230 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0238 _ ........

_cursor.2424:                                           ; byte
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

_task_a.2388:                                           ; dword
        resd    7                                       ; 0284

_tss_a.2387:                                            ; byte
        resb    128                                     ; 02A0

_tss_b.2386:                                            ; byte
        resb    104                                     ; 0320

_task_b.2376:                                           ; byte
        resb    24                                      ; 0388

_task_timer:                                            ; byte
        resb    4                                       ; 03A0

_taskctl:                                               ; byte
        resb    4                                       ; 03A4

        resb    24                                      ; 03A8

_timerctl:                                              ; byte
        resb    8032                                    ; 03C0


