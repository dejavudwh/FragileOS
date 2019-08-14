; Disassembly of file: ckernel.o
; Wed Aug 14 23:04:14 2019
; Mode: 32 bits
; Syntax: YASM/NASM
; Instruction set: Pentium Pro







_launch:
        push    ebp                                     ; 0000 _ 55
        mov     ebp, esp                                ; 0001 _ 89. E5
        push    ebx                                     ; 0003 _ 53
        sub     esp, 132                                ; 0004 _ 81. EC, 00000084
        mov     dword [esp], _bootInfo                  ; 000A _ C7. 04 24, 00000014(d)
        call    _initBootInfo                           ; 0011 _ E8, 00003621
        mov     eax, dword [_bootInfo]                  ; 0016 _ A1, 00000014(d)
        mov     dword [ebp-18H], eax                    ; 001B _ 89. 45, E8
        movzx   eax, word [?_441]                       ; 001E _ 0F B7. 05, 00000018(d)
        cwde                                            ; 0025 _ 98
        mov     dword [_xsize], eax                     ; 0026 _ A3, 0000013C(d)
        movzx   eax, word [?_442]                       ; 002B _ 0F B7. 05, 0000001A(d)
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
        call    _init_palette                           ; 014B _ E8, 00003508
        call    _init_keyboard                          ; 0150 _ E8, 00003BAB
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
        call    _init_screen8                           ; 0281 _ E8, 00002AFA
        mov     dword [esp+4H], 99                      ; 0286 _ C7. 44 24, 04, 00000063
        mov     dword [esp], _buf_mouse                 ; 028E _ C7. 04 24, 00000160(d)
        call    _init_mouse_cursor                      ; 0295 _ E8, 00003794
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
        mov     dword [esp+4H], ?_411                   ; 032B _ C7. 44 24, 04, 00000000(d)
        mov     dword [esp], eax                        ; 0333 _ 89. 04 24
        call    _message_box                            ; 0336 _ E8, 00003DF0
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
        call    _enable_mouse                           ; 038A _ E8, 000039AC
        mov     eax, dword [_memman]                    ; 038F _ A1, 00000000(d)
        mov     dword [esp], eax                        ; 0394 _ 89. 04 24
        call    _task_init                              ; 0397 _ E8, 00000000(rel)
        mov     dword [_task_a.2376], eax               ; 039C _ A3, 0000027C(d)
        mov     eax, dword [_task_a.2376]               ; 03A1 _ A1, 0000027C(d)
        mov     dword [?_443], eax                      ; 03A6 _ A3, 00000034(d)
        mov     eax, dword [_task_a.2376]               ; 03AB _ A1, 0000027C(d)
        mov     dword [_task_main], eax                 ; 03B0 _ A3, 00000274(d)
        mov     eax, dword [_task_a.2376]               ; 03B5 _ A1, 0000027C(d)
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
        call    _close_console                          ; 054C _ E8, 00001ECA
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
        mov     dword [esp+8H], ?_412                   ; 05E4 _ C7. 44 24, 08, 00000008(d)
        mov     dword [esp+4H], edx                     ; 05EC _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 05F0 _ 89. 04 24
        call    _make_wtitle8                           ; 05F3 _ E8, 00003EE3
        mov     eax, dword [_current_console_task]      ; 05F8 _ A1, 00000278(d)
        test    eax, eax                                ; 05FD _ 85. C0
        jz      ?_008                                   ; 05FF _ 74, 2C
        mov     eax, dword [_current_console_task]      ; 0601 _ A1, 00000278(d)
        mov     edx, dword [eax+0B4H]                   ; 0606 _ 8B. 90, 000000B4
        mov     eax, dword [_shtctl]                    ; 060C _ A1, 00000264(d)
        mov     dword [esp+0CH], 1                      ; 0611 _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], ?_413                   ; 0619 _ C7. 44 24, 08, 0000000F(d)
        mov     dword [esp+4H], edx                     ; 0621 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0625 _ 89. 04 24
        call    _make_wtitle8                           ; 0628 _ E8, 00003EAE
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
        mov     dword [esp+8H], ?_412                   ; 0677 _ C7. 44 24, 08, 00000008(d)
        mov     dword [esp+4H], edx                     ; 067F _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0683 _ 89. 04 24
        call    _make_wtitle8                           ; 0686 _ E8, 00003E50
        mov     eax, dword [_current_console_task]      ; 068B _ A1, 00000278(d)
        test    eax, eax                                ; 0690 _ 85. C0
        jz      ?_010                                   ; 0692 _ 74, 2C
        mov     eax, dword [_current_console_task]      ; 0694 _ A1, 00000278(d)
        mov     edx, dword [eax+0B4H]                   ; 0699 _ 8B. 90, 000000B4
        mov     eax, dword [_shtctl]                    ; 069F _ A1, 00000264(d)
        mov     dword [esp+0CH], 0                      ; 06A4 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], ?_413                   ; 06AC _ C7. 44 24, 08, 0000000F(d)
        mov     dword [esp+4H], edx                     ; 06B4 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 06B8 _ 89. 04 24
        call    _make_wtitle8                           ; 06BB _ E8, 00003E1B
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
        call    _showString                             ; 07EC _ E8, 0000299F
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
        mov     eax, dword [_task_a.2376]               ; 0871 _ A1, 0000027C(d)
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
        call    _show_mouse_info                        ; 08AC _ E8, 0000299E
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
        call    _boxfill8                               ; 09EF _ E8, 00002E69
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
        mov     dword [esp+8H], ?_413                   ; 0C37 _ C7. 44 24, 08, 0000000F(d)
        mov     edx, dword [ebp-0CH]                    ; 0C3F _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 0C42 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0C46 _ 89. 04 24
        call    _make_window8                           ; 0C49 _ E8, 000035C8
        jmp     ?_038                                   ; 0C4E _ EB, 24

?_037:  mov     eax, dword [_shtctl]                    ; 0C50 _ A1, 00000264(d)
        mov     dword [esp+0CH], 0                      ; 0C55 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], ?_413                   ; 0C5D _ C7. 44 24, 08, 0000000F(d)
        mov     edx, dword [ebp-0CH]                    ; 0C65 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 0C68 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0C6C _ 89. 04 24
        call    _make_window8                           ; 0C6F _ E8, 000035A2
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
        call    _make_textbox8                          ; 0CDA _ E8, 0000393A
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
        mov     dword [esp+8H], ?_413                   ; 0D1D _ C7. 44 24, 08, 0000000F(d)
        mov     dword [esp+4H], edx                     ; 0D25 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0D29 _ 89. 04 24
        call    _make_wtitle8                           ; 0D2C _ E8, 000037AA
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
        add     eax, _console_task                      ; 0D96 _ 05, 00001AAA(d)
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
        call    _cons_newline                           ; 0F1A _ E8, 00001D23
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
        jmp     ?_050                                   ; 0F7C _ E9, 00000143

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
        mov     eax, dword [ebp-18H]                    ; 1004 _ 8B. 45, E8
        mov     ecx, dword [eax+9CH]                    ; 1007 _ 8B. 88, 0000009C
        mov     eax, dword [ebp-18H]                    ; 100D _ 8B. 45, E8
        mov     edx, dword [eax+94H]                    ; 1010 _ 8B. 90, 00000094
        mov     eax, dword [_shtctl]                    ; 1016 _ A1, 00000264(d)
        mov     ebx, dword [ebp-1CH]                    ; 101B _ 8B. 5D, E4
        mov     dword [esp+14H], ebx                    ; 101E _ 89. 5C 24, 14
        mov     dword [esp+10H], 7                      ; 1022 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ecx                    ; 102A _ 89. 4C 24, 0C
        mov     dword [esp+8H], 16                      ; 102E _ C7. 44 24, 08, 00000010
        mov     dword [esp+4H], edx                     ; 1036 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 103A _ 89. 04 24
        call    _showString                             ; 103D _ E8, 0000214E
        mov     dword [ebp-20H], 136                    ; 1042 _ C7. 45, E0, 00000088
        mov     eax, dword [ebp-0CH]                    ; 1049 _ 8B. 45, F4
        mov     eax, dword [eax+1CH]                    ; 104C _ 8B. 40, 1C
        mov     dword [esp], eax                        ; 104F _ 89. 04 24
        call    _intToHexStr                            ; 1052 _ E8, 00002BF3
        mov     dword [ebp-24H], eax                    ; 1057 _ 89. 45, DC
        mov     eax, dword [ebp-18H]                    ; 105A _ 8B. 45, E8
        mov     ecx, dword [eax+9CH]                    ; 105D _ 8B. 88, 0000009C
        mov     eax, dword [ebp-18H]                    ; 1063 _ 8B. 45, E8
        mov     edx, dword [eax+94H]                    ; 1066 _ 8B. 90, 00000094
        mov     eax, dword [_shtctl]                    ; 106C _ A1, 00000264(d)
        mov     ebx, dword [ebp-24H]                    ; 1071 _ 8B. 5D, DC
        mov     dword [esp+14H], ebx                    ; 1074 _ 89. 5C 24, 14
        mov     dword [esp+10H], 7                      ; 1078 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ecx                    ; 1080 _ 89. 4C 24, 0C
        mov     ecx, dword [ebp-20H]                    ; 1084 _ 8B. 4D, E0
        mov     dword [esp+8H], ecx                     ; 1087 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 108B _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 108F _ 89. 04 24
        call    _showString                             ; 1092 _ E8, 000020F9
        mov     eax, dword [ebp-18H]                    ; 1097 _ 8B. 45, E8
        mov     edx, dword [eax+94H]                    ; 109A _ 8B. 90, 00000094
        mov     eax, dword [ebp-18H]                    ; 10A0 _ 8B. 45, E8
        mov     eax, dword [eax+9CH]                    ; 10A3 _ 8B. 80, 0000009C
        mov     dword [esp+4H], edx                     ; 10A9 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 10AD _ 89. 04 24
        call    _cons_newline                           ; 10B0 _ E8, 00001B8D
        mov     edx, eax                                ; 10B5 _ 89. C2
        mov     eax, dword [ebp-18H]                    ; 10B7 _ 8B. 45, E8
        mov     dword [eax+9CH], edx                    ; 10BA _ 89. 90, 0000009C
        add     dword [ebp-0CH], 32                     ; 10C0 _ 83. 45, F4, 20
?_050:  mov     eax, dword [ebp-0CH]                    ; 10C4 _ 8B. 45, F4
        movzx   eax, byte [eax]                         ; 10C7 _ 0F B6. 00
        test    al, al                                  ; 10CA _ 84. C0
        jne     ?_043                                   ; 10CC _ 0F 85, FFFFFEAF
        mov     edx, dword [ebp-1CH]                    ; 10D2 _ 8B. 55, E4
        mov     eax, dword [_memman]                    ; 10D5 _ A1, 00000000(d)
        mov     dword [esp+8H], 13                      ; 10DA _ C7. 44 24, 08, 0000000D
        mov     dword [esp+4H], edx                     ; 10E2 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 10E6 _ 89. 04 24
        call    _memman_free                            ; 10E9 _ E8, 00000000(rel)
        nop                                             ; 10EE _ 90
        add     esp, 68                                 ; 10EF _ 83. C4, 44
        pop     ebx                                     ; 10F2 _ 5B
        pop     ebp                                     ; 10F3 _ 5D
        ret                                             ; 10F4 _ C3
; _cmd_dir End of function

_cmd_type:; Function begin
        push    ebp                                     ; 10F5 _ 55
        mov     ebp, esp                                ; 10F6 _ 89. E5
        push    esi                                     ; 10F8 _ 56
        push    ebx                                     ; 10F9 _ 53
        sub     esp, 96                                 ; 10FA _ 83. EC, 60
        call    _task_now                               ; 10FD _ E8, 00000000(rel)
        mov     dword [ebp-24H], eax                    ; 1102 _ 89. 45, DC
        mov     eax, dword [ebp-24H]                    ; 1105 _ 8B. 45, DC
        mov     eax, dword [eax+94H]                    ; 1108 _ 8B. 80, 00000094
        test    eax, eax                                ; 110E _ 85. C0
        je      ?_071                                   ; 1110 _ 0F 84, 0000038F
        mov     eax, dword [_memman]                    ; 1116 _ A1, 00000000(d)
        mov     dword [esp+4H], 13                      ; 111B _ C7. 44 24, 04, 0000000D
        mov     dword [esp], eax                        ; 1123 _ 89. 04 24
        call    _memman_alloc                           ; 1126 _ E8, 00000000(rel)
        mov     dword [ebp-28H], eax                    ; 112B _ 89. 45, D8
        mov     eax, dword [ebp-28H]                    ; 112E _ 8B. 45, D8
        add     eax, 12                                 ; 1131 _ 83. C0, 0C
        mov     byte [eax], 0                           ; 1134 _ C6. 00, 00
        mov     dword [ebp-0CH], 0                      ; 1137 _ C7. 45, F4, 00000000
        mov     dword [ebp-10H], 5                      ; 113E _ C7. 45, F0, 00000005
        mov     dword [ebp-10H], 5                      ; 1145 _ C7. 45, F0, 00000005
        jmp     ?_052                                   ; 114C _ EB, 2C

?_051:  mov     edx, dword [ebp-10H]                    ; 114E _ 8B. 55, F0
        mov     eax, dword [ebp+8H]                     ; 1151 _ 8B. 45, 08
        add     eax, edx                                ; 1154 _ 01. D0
        movzx   eax, byte [eax]                         ; 1156 _ 0F B6. 00
        test    al, al                                  ; 1159 _ 84. C0
        jz      ?_053                                   ; 115B _ 74, 25
        mov     edx, dword [ebp-10H]                    ; 115D _ 8B. 55, F0
        mov     eax, dword [ebp+8H]                     ; 1160 _ 8B. 45, 08
        add     eax, edx                                ; 1163 _ 01. D0
        mov     ecx, dword [ebp-0CH]                    ; 1165 _ 8B. 4D, F4
        mov     edx, dword [ebp-28H]                    ; 1168 _ 8B. 55, D8
        add     edx, ecx                                ; 116B _ 01. CA
        movzx   eax, byte [eax]                         ; 116D _ 0F B6. 00
        mov     byte [edx], al                          ; 1170 _ 88. 02
        add     dword [ebp-0CH], 1                      ; 1172 _ 83. 45, F4, 01
        add     dword [ebp-10H], 1                      ; 1176 _ 83. 45, F0, 01
?_052:  cmp     dword [ebp-10H], 16                     ; 117A _ 83. 7D, F0, 10
        jle     ?_051                                   ; 117E _ 7E, CE
        jmp     ?_054                                   ; 1180 _ EB, 01

?_053:  nop                                             ; 1182 _ 90
?_054:  mov     edx, dword [ebp-0CH]                    ; 1183 _ 8B. 55, F4
        mov     eax, dword [ebp-28H]                    ; 1186 _ 8B. 45, D8
        add     eax, edx                                ; 1189 _ 01. D0
        mov     byte [eax], 0                           ; 118B _ C6. 00, 00
        mov     dword [ebp-14H], 88064                  ; 118E _ C7. 45, EC, 00015800
        jmp     ?_069                                   ; 1195 _ E9, 000002A9

?_055:  mov     byte [ebp-31H], 0                       ; 119A _ C6. 45, CF, 00
        mov     dword [ebp-18H], 0                      ; 119E _ C7. 45, E8, 00000000
        jmp     ?_057                                   ; 11A5 _ EB, 2A

?_056:  mov     edx, dword [ebp-14H]                    ; 11A7 _ 8B. 55, EC
        mov     eax, dword [ebp-18H]                    ; 11AA _ 8B. 45, E8
        add     eax, edx                                ; 11AD _ 01. D0
        movzx   eax, byte [eax]                         ; 11AF _ 0F B6. 00
        test    al, al                                  ; 11B2 _ 84. C0
        jz      ?_058                                   ; 11B4 _ 74, 23
        mov     edx, dword [ebp-14H]                    ; 11B6 _ 8B. 55, EC
        mov     eax, dword [ebp-18H]                    ; 11B9 _ 8B. 45, E8
        add     eax, edx                                ; 11BC _ 01. D0
        movzx   eax, byte [eax]                         ; 11BE _ 0F B6. 00
        mov     ecx, eax                                ; 11C1 _ 89. C1
        lea     eax, [ebp-3DH]                          ; 11C3 _ 8D. 45, C3
        mov     edx, dword [ebp-18H]                    ; 11C6 _ 8B. 55, E8
        add     eax, edx                                ; 11C9 _ 01. D0
        mov     byte [eax], cl                          ; 11CB _ 88. 08
        add     dword [ebp-18H], 1                      ; 11CD _ 83. 45, E8, 01
?_057:  cmp     dword [ebp-18H], 7                      ; 11D1 _ 83. 7D, E8, 07
        jle     ?_056                                   ; 11D5 _ 7E, D0
        jmp     ?_059                                   ; 11D7 _ EB, 01

?_058:  nop                                             ; 11D9 _ 90
?_059:  mov     dword [ebp-1CH], 0                      ; 11DA _ C7. 45, E4, 00000000
        lea     eax, [ebp-3DH]                          ; 11E1 _ 8D. 45, C3
        mov     edx, dword [ebp-18H]                    ; 11E4 _ 8B. 55, E8
        add     eax, edx                                ; 11E7 _ 01. D0
        mov     byte [eax], 46                          ; 11E9 _ C6. 00, 2E
        add     dword [ebp-18H], 1                      ; 11EC _ 83. 45, E8, 01
        mov     dword [ebp-1CH], 0                      ; 11F0 _ C7. 45, E4, 00000000
        jmp     ?_061                                   ; 11F7 _ EB, 22

?_060:  mov     edx, dword [ebp-14H]                    ; 11F9 _ 8B. 55, EC
        mov     eax, dword [ebp-1CH]                    ; 11FC _ 8B. 45, E4
        add     eax, edx                                ; 11FF _ 01. D0
        add     eax, 8                                  ; 1201 _ 83. C0, 08
        movzx   eax, byte [eax]                         ; 1204 _ 0F B6. 00
        mov     ecx, eax                                ; 1207 _ 89. C1
        lea     eax, [ebp-3DH]                          ; 1209 _ 8D. 45, C3
        mov     edx, dword [ebp-18H]                    ; 120C _ 8B. 55, E8
        add     eax, edx                                ; 120F _ 01. D0
        mov     byte [eax], cl                          ; 1211 _ 88. 08
        add     dword [ebp-18H], 1                      ; 1213 _ 83. 45, E8, 01
        add     dword [ebp-1CH], 1                      ; 1217 _ 83. 45, E4, 01
?_061:  cmp     dword [ebp-1CH], 2                      ; 121B _ 83. 7D, E4, 02
        jle     ?_060                                   ; 121F _ 7E, D8
        lea     eax, [ebp-3DH]                          ; 1221 _ 8D. 45, C3
        mov     dword [esp+4H], eax                     ; 1224 _ 89. 44 24, 04
        mov     eax, dword [ebp-28H]                    ; 1228 _ 8B. 45, D8
        mov     dword [esp], eax                        ; 122B _ 89. 04 24
        call    _strcmp                                 ; 122E _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 1233 _ 83. F8, 01
        jne     ?_068                                   ; 1236 _ 0F 85, 00000203
        mov     dword [ebp-2CH], 97280                  ; 123C _ C7. 45, D4, 00017C00
        mov     eax, dword [ebp-14H]                    ; 1243 _ 8B. 45, EC
        movzx   eax, word [eax+1AH]                     ; 1246 _ 0F B7. 40, 1A
        movzx   eax, ax                                 ; 124A _ 0F B7. C0
        shl     eax, 9                                  ; 124D _ C1. E0, 09
        add     dword [ebp-2CH], eax                    ; 1250 _ 01. 45, D4
        mov     eax, dword [ebp-14H]                    ; 1253 _ 8B. 45, EC
        mov     eax, dword [eax+1CH]                    ; 1256 _ 8B. 40, 1C
        mov     dword [ebp-30H], eax                    ; 1259 _ 89. 45, D0
        mov     dword [ebp-20H], 0                      ; 125C _ C7. 45, E0, 00000000
        mov     eax, dword [ebp-24H]                    ; 1263 _ 8B. 45, DC
        mov     dword [eax+98H], 16                     ; 1266 _ C7. 80, 00000098, 00000010
        mov     dword [ebp-20H], 0                      ; 1270 _ C7. 45, E0, 00000000
        jmp     ?_067                                   ; 1277 _ E9, 000001B4

?_062:  mov     edx, dword [ebp-20H]                    ; 127C _ 8B. 55, E0
        mov     eax, dword [ebp-2CH]                    ; 127F _ 8B. 45, D4
        add     eax, edx                                ; 1282 _ 01. D0
        movzx   eax, byte [eax]                         ; 1284 _ 0F B6. 00
        mov     byte [ebp-3FH], al                      ; 1287 _ 88. 45, C1
        mov     byte [ebp-3EH], 0                       ; 128A _ C6. 45, C2, 00
        movzx   eax, byte [ebp-3FH]                     ; 128E _ 0F B6. 45, C1
        cmp     al, 9                                   ; 1292 _ 3C, 09
        jne     ?_064                                   ; 1294 _ 0F 85, 000000A4
?_063:  mov     eax, dword [ebp-24H]                    ; 129A _ 8B. 45, DC
        mov     ebx, dword [eax+9CH]                    ; 129D _ 8B. 98, 0000009C
        mov     eax, dword [ebp-24H]                    ; 12A3 _ 8B. 45, DC
        mov     ecx, dword [eax+98H]                    ; 12A6 _ 8B. 88, 00000098
        mov     eax, dword [ebp-24H]                    ; 12AC _ 8B. 45, DC
        mov     edx, dword [eax+94H]                    ; 12AF _ 8B. 90, 00000094
        mov     eax, dword [_shtctl]                    ; 12B5 _ A1, 00000264(d)
        mov     dword [esp+14H], ?_414                  ; 12BA _ C7. 44 24, 14, 00000017(d)
        mov     dword [esp+10H], 7                      ; 12C2 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ebx                    ; 12CA _ 89. 5C 24, 0C
        mov     dword [esp+8H], ecx                     ; 12CE _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 12D2 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 12D6 _ 89. 04 24
        call    _showString                             ; 12D9 _ E8, 00001EB2
        mov     eax, dword [ebp-24H]                    ; 12DE _ 8B. 45, DC
        mov     eax, dword [eax+98H]                    ; 12E1 _ 8B. 80, 00000098
        lea     edx, [eax+8H]                           ; 12E7 _ 8D. 50, 08
        mov     eax, dword [ebp-24H]                    ; 12EA _ 8B. 45, DC
        mov     dword [eax+98H], edx                    ; 12ED _ 89. 90, 00000098
        mov     eax, dword [ebp-24H]                    ; 12F3 _ 8B. 45, DC
        mov     eax, dword [eax+98H]                    ; 12F6 _ 8B. 80, 00000098
        cmp     eax, 248                                ; 12FC _ 3D, 000000F8
        jnz     ?_063                                   ; 1301 _ 75, 97
        mov     eax, dword [ebp-24H]                    ; 1303 _ 8B. 45, DC
        mov     dword [eax+98H], 8                      ; 1306 _ C7. 80, 00000098, 00000008
        mov     eax, dword [ebp-24H]                    ; 1310 _ 8B. 45, DC
        mov     edx, dword [eax+94H]                    ; 1313 _ 8B. 90, 00000094
        mov     eax, dword [ebp-24H]                    ; 1319 _ 8B. 45, DC
        mov     eax, dword [eax+9CH]                    ; 131C _ 8B. 80, 0000009C
        mov     dword [esp+4H], edx                     ; 1322 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1326 _ 89. 04 24
        call    _cons_newline                           ; 1329 _ E8, 00001914
        mov     edx, eax                                ; 132E _ 89. C2
        mov     eax, dword [ebp-24H]                    ; 1330 _ 8B. 45, DC
        mov     dword [eax+9CH], edx                    ; 1333 _ 89. 90, 0000009C
        jmp     ?_063                                   ; 1339 _ E9, FFFFFF5C

?_064:  movzx   eax, byte [ebp-3FH]                     ; 133E _ 0F B6. 45, C1
        cmp     al, 10                                  ; 1342 _ 3C, 0A
        jnz     ?_065                                   ; 1344 _ 75, 3B
        mov     eax, dword [ebp-24H]                    ; 1346 _ 8B. 45, DC
        mov     dword [eax+98H], 8                      ; 1349 _ C7. 80, 00000098, 00000008
        mov     eax, dword [ebp-24H]                    ; 1353 _ 8B. 45, DC
        mov     edx, dword [eax+94H]                    ; 1356 _ 8B. 90, 00000094
        mov     eax, dword [ebp-24H]                    ; 135C _ 8B. 45, DC
        mov     eax, dword [eax+9CH]                    ; 135F _ 8B. 80, 0000009C
        mov     dword [esp+4H], edx                     ; 1365 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1369 _ 89. 04 24
        call    _cons_newline                           ; 136C _ E8, 000018D1
        mov     edx, eax                                ; 1371 _ 89. C2
        mov     eax, dword [ebp-24H]                    ; 1373 _ 8B. 45, DC
        mov     dword [eax+9CH], edx                    ; 1376 _ 89. 90, 0000009C
        jmp     ?_066                                   ; 137C _ E9, 000000AB

?_065:  movzx   eax, byte [ebp-3FH]                     ; 1381 _ 0F B6. 45, C1
        cmp     al, 13                                  ; 1385 _ 3C, 0D
        je      ?_066                                   ; 1387 _ 0F 84, 0000009F
        mov     eax, dword [ebp-24H]                    ; 138D _ 8B. 45, DC
        mov     esi, dword [eax+9CH]                    ; 1390 _ 8B. B0, 0000009C
        mov     eax, dword [ebp-24H]                    ; 1396 _ 8B. 45, DC
        mov     ebx, dword [eax+98H]                    ; 1399 _ 8B. 98, 00000098
        mov     eax, dword [ebp-24H]                    ; 139F _ 8B. 45, DC
        mov     ecx, dword [eax+94H]                    ; 13A2 _ 8B. 88, 00000094
        mov     edx, dword [_shtctl]                    ; 13A8 _ 8B. 15, 00000264(d)
        lea     eax, [ebp-3FH]                          ; 13AE _ 8D. 45, C1
        mov     dword [esp+14H], eax                    ; 13B1 _ 89. 44 24, 14
        mov     dword [esp+10H], 7                      ; 13B5 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], esi                    ; 13BD _ 89. 74 24, 0C
        mov     dword [esp+8H], ebx                     ; 13C1 _ 89. 5C 24, 08
        mov     dword [esp+4H], ecx                     ; 13C5 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 13C9 _ 89. 14 24
        call    _showString                             ; 13CC _ E8, 00001DBF
        mov     eax, dword [ebp-24H]                    ; 13D1 _ 8B. 45, DC
        mov     eax, dword [eax+98H]                    ; 13D4 _ 8B. 80, 00000098
        lea     edx, [eax+8H]                           ; 13DA _ 8D. 50, 08
        mov     eax, dword [ebp-24H]                    ; 13DD _ 8B. 45, DC
        mov     dword [eax+98H], edx                    ; 13E0 _ 89. 90, 00000098
        mov     eax, dword [ebp-24H]                    ; 13E6 _ 8B. 45, DC
        mov     eax, dword [eax+98H]                    ; 13E9 _ 8B. 80, 00000098
        cmp     eax, 248                                ; 13EF _ 3D, 000000F8
        jnz     ?_066                                   ; 13F4 _ 75, 36
        mov     eax, dword [ebp-24H]                    ; 13F6 _ 8B. 45, DC
        mov     dword [eax+98H], 16                     ; 13F9 _ C7. 80, 00000098, 00000010
        mov     eax, dword [ebp-24H]                    ; 1403 _ 8B. 45, DC
        mov     edx, dword [eax+94H]                    ; 1406 _ 8B. 90, 00000094
        mov     eax, dword [ebp-24H]                    ; 140C _ 8B. 45, DC
        mov     eax, dword [eax+9CH]                    ; 140F _ 8B. 80, 0000009C
        mov     dword [esp+4H], edx                     ; 1415 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1419 _ 89. 04 24
        call    _cons_newline                           ; 141C _ E8, 00001821
        mov     edx, eax                                ; 1421 _ 89. C2
        mov     eax, dword [ebp-24H]                    ; 1423 _ 8B. 45, DC
        mov     dword [eax+9CH], edx                    ; 1426 _ 89. 90, 0000009C
?_066:  add     dword [ebp-20H], 1                      ; 142C _ 83. 45, E0, 01
?_067:  mov     eax, dword [ebp-20H]                    ; 1430 _ 8B. 45, E0
        cmp     eax, dword [ebp-30H]                    ; 1433 _ 3B. 45, D0
        jl      ?_062                                   ; 1436 _ 0F 8C, FFFFFE40
        nop                                             ; 143C _ 90
        jmp     ?_070                                   ; 143D _ EB, 12

?_068:  add     dword [ebp-14H], 32                     ; 143F _ 83. 45, EC, 20
?_069:  mov     eax, dword [ebp-14H]                    ; 1443 _ 8B. 45, EC
        movzx   eax, byte [eax]                         ; 1446 _ 0F B6. 00
        test    al, al                                  ; 1449 _ 84. C0
        jne     ?_055                                   ; 144B _ 0F 85, FFFFFD49
?_070:  mov     eax, dword [ebp-24H]                    ; 1451 _ 8B. 45, DC
        mov     edx, dword [eax+94H]                    ; 1454 _ 8B. 90, 00000094
        mov     eax, dword [ebp-24H]                    ; 145A _ 8B. 45, DC
        mov     eax, dword [eax+9CH]                    ; 145D _ 8B. 80, 0000009C
        mov     dword [esp+4H], edx                     ; 1463 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1467 _ 89. 04 24
        call    _cons_newline                           ; 146A _ E8, 000017D3
        mov     edx, eax                                ; 146F _ 89. C2
        mov     eax, dword [ebp-24H]                    ; 1471 _ 8B. 45, DC
        mov     dword [eax+9CH], edx                    ; 1474 _ 89. 90, 0000009C
        mov     edx, dword [ebp-28H]                    ; 147A _ 8B. 55, D8
        mov     eax, dword [_memman]                    ; 147D _ A1, 00000000(d)
        mov     dword [esp+8H], 13                      ; 1482 _ C7. 44 24, 08, 0000000D
        mov     dword [esp+4H], edx                     ; 148A _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 148E _ 89. 04 24
        call    _memman_free                            ; 1491 _ E8, 00000000(rel)
        mov     eax, dword [ebp-24H]                    ; 1496 _ 8B. 45, DC
        mov     dword [eax+98H], 16                     ; 1499 _ C7. 80, 00000098, 00000010
        jmp     ?_072                                   ; 14A3 _ EB, 01

?_071:  nop                                             ; 14A5 _ 90
?_072:  add     esp, 96                                 ; 14A6 _ 83. C4, 60
        pop     ebx                                     ; 14A9 _ 5B
        pop     esi                                     ; 14AA _ 5E
        pop     ebp                                     ; 14AB _ 5D
        ret                                             ; 14AC _ C3
; _cmd_type End of function

_cmd_mem:; Function begin
        push    ebp                                     ; 14AD _ 55
        mov     ebp, esp                                ; 14AE _ 89. E5
        push    ebx                                     ; 14B0 _ 53
        sub     esp, 52                                 ; 14B1 _ 83. EC, 34
        call    _task_now                               ; 14B4 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 14B9 _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 14BC _ 8B. 45, F4
        mov     eax, dword [eax+94H]                    ; 14BF _ 8B. 80, 00000094
        test    eax, eax                                ; 14C5 _ 85. C0
        je      ?_073                                   ; 14C7 _ 0F 84, 00000103
        mov     eax, dword [ebp+8H]                     ; 14CD _ 8B. 45, 08
        lea     edx, [eax+3FFH]                         ; 14D0 _ 8D. 90, 000003FF
        test    eax, eax                                ; 14D6 _ 85. C0
        cmovs   eax, edx                                ; 14D8 _ 0F 48. C2
        sar     eax, 10                                 ; 14DB _ C1. F8, 0A
        mov     dword [esp], eax                        ; 14DE _ 89. 04 24
        call    _intToHexStr                            ; 14E1 _ E8, 00002764
        mov     dword [ebp-10H], eax                    ; 14E6 _ 89. 45, F0
        mov     eax, dword [ebp-0CH]                    ; 14E9 _ 8B. 45, F4
        mov     ecx, dword [eax+9CH]                    ; 14EC _ 8B. 88, 0000009C
        mov     eax, dword [ebp-0CH]                    ; 14F2 _ 8B. 45, F4
        mov     edx, dword [eax+94H]                    ; 14F5 _ 8B. 90, 00000094
        mov     eax, dword [_shtctl]                    ; 14FB _ A1, 00000264(d)
        mov     dword [esp+14H], ?_415                  ; 1500 _ C7. 44 24, 14, 00000019(d)
        mov     dword [esp+10H], 7                      ; 1508 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ecx                    ; 1510 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 16                      ; 1514 _ C7. 44 24, 08, 00000010
        mov     dword [esp+4H], edx                     ; 151C _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1520 _ 89. 04 24
        call    _showString                             ; 1523 _ E8, 00001C68
        mov     eax, dword [ebp-0CH]                    ; 1528 _ 8B. 45, F4
        mov     ecx, dword [eax+9CH]                    ; 152B _ 8B. 88, 0000009C
        mov     eax, dword [ebp-0CH]                    ; 1531 _ 8B. 45, F4
        mov     edx, dword [eax+94H]                    ; 1534 _ 8B. 90, 00000094
        mov     eax, dword [_shtctl]                    ; 153A _ A1, 00000264(d)
        mov     ebx, dword [ebp-10H]                    ; 153F _ 8B. 5D, F0
        mov     dword [esp+14H], ebx                    ; 1542 _ 89. 5C 24, 14
        mov     dword [esp+10H], 7                      ; 1546 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ecx                    ; 154E _ 89. 4C 24, 0C
        mov     dword [esp+8H], 52                      ; 1552 _ C7. 44 24, 08, 00000034
        mov     dword [esp+4H], edx                     ; 155A _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 155E _ 89. 04 24
        call    _showString                             ; 1561 _ E8, 00001C2A
        mov     eax, dword [ebp-0CH]                    ; 1566 _ 8B. 45, F4
        mov     ecx, dword [eax+9CH]                    ; 1569 _ 8B. 88, 0000009C
        mov     eax, dword [ebp-0CH]                    ; 156F _ 8B. 45, F4
        mov     edx, dword [eax+94H]                    ; 1572 _ 8B. 90, 00000094
        mov     eax, dword [_shtctl]                    ; 1578 _ A1, 00000264(d)
        mov     dword [esp+14H], ?_416                  ; 157D _ C7. 44 24, 14, 0000001F(d)
        mov     dword [esp+10H], 7                      ; 1585 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ecx                    ; 158D _ 89. 4C 24, 0C
        mov     dword [esp+8H], 126                     ; 1591 _ C7. 44 24, 08, 0000007E
        mov     dword [esp+4H], edx                     ; 1599 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 159D _ 89. 04 24
        call    _showString                             ; 15A0 _ E8, 00001BEB
        mov     eax, dword [ebp-0CH]                    ; 15A5 _ 8B. 45, F4
        mov     edx, dword [eax+94H]                    ; 15A8 _ 8B. 90, 00000094
        mov     eax, dword [ebp-0CH]                    ; 15AE _ 8B. 45, F4
        mov     eax, dword [eax+9CH]                    ; 15B1 _ 8B. 80, 0000009C
        mov     dword [esp+4H], edx                     ; 15B7 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 15BB _ 89. 04 24
        call    _cons_newline                           ; 15BE _ E8, 0000167F
        mov     edx, eax                                ; 15C3 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 15C5 _ 8B. 45, F4
        mov     dword [eax+9CH], edx                    ; 15C8 _ 89. 90, 0000009C
        jmp     ?_074                                   ; 15CE _ EB, 01

?_073:  nop                                             ; 15D0 _ 90
?_074:  add     esp, 52                                 ; 15D1 _ 83. C4, 34
        pop     ebx                                     ; 15D4 _ 5B
        pop     ebp                                     ; 15D5 _ 5D
        ret                                             ; 15D6 _ C3
; _cmd_mem End of function

_cmd_cls:; Function begin
        push    ebp                                     ; 15D7 _ 55
        mov     ebp, esp                                ; 15D8 _ 89. E5
        sub     esp, 56                                 ; 15DA _ 83. EC, 38
        call    _task_now                               ; 15DD _ E8, 00000000(rel)
        mov     dword [ebp-14H], eax                    ; 15E2 _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 15E5 _ 8B. 45, EC
        mov     eax, dword [eax+94H]                    ; 15E8 _ 8B. 80, 00000094
        test    eax, eax                                ; 15EE _ 85. C0
        je      ?_079                                   ; 15F0 _ 0F 84, 000000E2
        mov     dword [ebp-0CH], 8                      ; 15F6 _ C7. 45, F4, 00000008
        mov     dword [ebp-10H], 28                     ; 15FD _ C7. 45, F0, 0000001C
        mov     dword [ebp-10H], 28                     ; 1604 _ C7. 45, F0, 0000001C
        jmp     ?_078                                   ; 160B _ EB, 3F

?_075:  mov     dword [ebp-0CH], 8                      ; 160D _ C7. 45, F4, 00000008
        jmp     ?_077                                   ; 1614 _ EB, 29

?_076:  mov     eax, dword [ebp-14H]                    ; 1616 _ 8B. 45, EC
        mov     eax, dword [eax+94H]                    ; 1619 _ 8B. 80, 00000094
        mov     edx, dword [eax]                        ; 161F _ 8B. 10
        mov     eax, dword [ebp-14H]                    ; 1621 _ 8B. 45, EC
        mov     eax, dword [eax+94H]                    ; 1624 _ 8B. 80, 00000094
        mov     eax, dword [eax+4H]                     ; 162A _ 8B. 40, 04
        imul    eax, dword [ebp-10H]                    ; 162D _ 0F AF. 45, F0
        mov     ecx, dword [ebp-0CH]                    ; 1631 _ 8B. 4D, F4
        add     eax, ecx                                ; 1634 _ 01. C8
        add     eax, edx                                ; 1636 _ 01. D0
        mov     byte [eax], 0                           ; 1638 _ C6. 00, 00
        add     dword [ebp-0CH], 1                      ; 163B _ 83. 45, F4, 01
?_077:  cmp     dword [ebp-0CH], 247                    ; 163F _ 81. 7D, F4, 000000F7
        jle     ?_076                                   ; 1646 _ 7E, CE
        add     dword [ebp-10H], 1                      ; 1648 _ 83. 45, F0, 01
?_078:  cmp     dword [ebp-10H], 155                    ; 164C _ 81. 7D, F0, 0000009B
        jle     ?_075                                   ; 1653 _ 7E, B8
        mov     eax, dword [ebp-14H]                    ; 1655 _ 8B. 45, EC
        mov     edx, dword [eax+94H]                    ; 1658 _ 8B. 90, 00000094
        mov     eax, dword [_shtctl]                    ; 165E _ A1, 00000264(d)
        mov     dword [esp+14H], 156                    ; 1663 _ C7. 44 24, 14, 0000009C
        mov     dword [esp+10H], 248                    ; 166B _ C7. 44 24, 10, 000000F8
        mov     dword [esp+0CH], 28                     ; 1673 _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 8                       ; 167B _ C7. 44 24, 08, 00000008
        mov     dword [esp+4H], edx                     ; 1683 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1687 _ 89. 04 24
        call    _sheet_refresh                          ; 168A _ E8, 00000000(rel)
        mov     eax, dword [ebp-14H]                    ; 168F _ 8B. 45, EC
        mov     dword [eax+9CH], 28                     ; 1692 _ C7. 80, 0000009C, 0000001C
        mov     eax, dword [ebp-14H]                    ; 169C _ 8B. 45, EC
        mov     edx, dword [eax+94H]                    ; 169F _ 8B. 90, 00000094
        mov     eax, dword [_shtctl]                    ; 16A5 _ A1, 00000264(d)
        mov     dword [esp+14H], ?_417                  ; 16AA _ C7. 44 24, 14, 00000023(d)
        mov     dword [esp+10H], 7                      ; 16B2 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 28                     ; 16BA _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 8                       ; 16C2 _ C7. 44 24, 08, 00000008
        mov     dword [esp+4H], edx                     ; 16CA _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 16CE _ 89. 04 24
        call    _showString                             ; 16D1 _ E8, 00001ABA
        jmp     ?_080                                   ; 16D6 _ EB, 01

?_079:  nop                                             ; 16D8 _ 90
?_080:  leave                                           ; 16D9 _ C9
        ret                                             ; 16DA _ C3
; _cmd_cls End of function

_cmd_execute_program:; Function begin
        push    ebp                                     ; 16DB _ 55
        mov     ebp, esp                                ; 16DC _ 89. E5
        push    ebx                                     ; 16DE _ 53
        sub     esp, 68                                 ; 16DF _ 83. EC, 44
        call    _io_cli                                 ; 16E2 _ E8, 00000000(rel)
        mov     eax, dword [_memman]                    ; 16E7 _ A1, 00000000(d)
        mov     dword [esp+4H], 16                      ; 16EC _ C7. 44 24, 04, 00000010
        mov     dword [esp], eax                        ; 16F4 _ 89. 04 24
        call    _memman_alloc                           ; 16F7 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 16FC _ 89. 45, F0
        call    _task_now                               ; 16FF _ E8, 00000000(rel)
        mov     dword [ebp-14H], eax                    ; 1704 _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 1707 _ 8B. 45, EC
        mov     edx, dword [ebp-10H]                    ; 170A _ 8B. 55, F0
        mov     dword [eax+0B0H], edx                   ; 170D _ 89. 90, 000000B0
        mov     eax, dword [ebp-10H]                    ; 1713 _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 1716 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 171A _ 8B. 45, 08
        mov     dword [esp], eax                        ; 171D _ 89. 04 24
        call    _file_loadfile                          ; 1720 _ E8, 0000318E
        call    _get_addr_gdt                           ; 1725 _ E8, 00000000(rel)
        mov     dword [ebp-18H], eax                    ; 172A _ 89. 45, E8
        mov     eax, dword [ebp-14H]                    ; 172D _ 8B. 45, EC
        mov     edx, dword [eax]                        ; 1730 _ 8B. 10
        mov     eax, dword [_first_task_cons_selector]  ; 1732 _ A1, 00000008(d)
        sub     edx, eax                                ; 1737 _ 29. C2
        mov     eax, edx                                ; 1739 _ 89. D0
        lea     edx, [eax+7H]                           ; 173B _ 8D. 50, 07
        test    eax, eax                                ; 173E _ 85. C0
        cmovs   eax, edx                                ; 1740 _ 0F 48. C2
        sar     eax, 3                                  ; 1743 _ C1. F8, 03
        add     eax, 21                                 ; 1746 _ 83. C0, 15
        mov     dword [ebp-1CH], eax                    ; 1749 _ 89. 45, E4
        mov     eax, dword [ebp-14H]                    ; 174C _ 8B. 45, EC
        mov     edx, dword [eax]                        ; 174F _ 8B. 10
        mov     eax, dword [_first_task_cons_selector]  ; 1751 _ A1, 00000008(d)
        sub     edx, eax                                ; 1756 _ 29. C2
        mov     eax, edx                                ; 1758 _ 89. D0
        lea     edx, [eax+7H]                           ; 175A _ 8D. 50, 07
        test    eax, eax                                ; 175D _ 85. C0
        cmovs   eax, edx                                ; 175F _ 0F 48. C2
        sar     eax, 3                                  ; 1762 _ C1. F8, 03
        add     eax, 30                                 ; 1765 _ 83. C0, 1E
        mov     dword [ebp-20H], eax                    ; 1768 _ 89. 45, E0
        mov     eax, dword [ebp-10H]                    ; 176B _ 8B. 45, F0
        mov     eax, dword [eax]                        ; 176E _ 8B. 00
        mov     edx, eax                                ; 1770 _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 1772 _ 8B. 45, EC
        add     eax, 188                                ; 1775 _ 05, 000000BC
        mov     dword [esp+0CH], 16634                  ; 177A _ C7. 44 24, 0C, 000040FA
        mov     dword [esp+8H], edx                     ; 1782 _ 89. 54 24, 08
        mov     dword [esp+4H], 1048575                 ; 1786 _ C7. 44 24, 04, 000FFFFF
        mov     dword [esp], eax                        ; 178E _ 89. 04 24
        call    _set_segmdesc                           ; 1791 _ E8, 00000000(rel)
        mov     eax, dword [_memman]                    ; 1796 _ A1, 00000000(d)
        mov     dword [esp+4H], 65536                   ; 179B _ C7. 44 24, 04, 00010000
        mov     dword [esp], eax                        ; 17A3 _ 89. 04 24
        call    _memman_alloc_4k                        ; 17A6 _ E8, 00000000(rel)
        mov     dword [ebp-24H], eax                    ; 17AB _ 89. 45, DC
        mov     eax, dword [ebp-10H]                    ; 17AE _ 8B. 45, F0
        mov     edx, dword [ebp-24H]                    ; 17B1 _ 8B. 55, DC
        mov     dword [eax+4H], edx                     ; 17B4 _ 89. 50, 04
        mov     edx, dword [ebp-24H]                    ; 17B7 _ 8B. 55, DC
        mov     eax, dword [ebp-14H]                    ; 17BA _ 8B. 45, EC
        add     eax, 188                                ; 17BD _ 05, 000000BC
        add     eax, 8                                  ; 17C2 _ 83. C0, 08
        mov     dword [esp+0CH], 16626                  ; 17C5 _ C7. 44 24, 0C, 000040F2
        mov     dword [esp+8H], edx                     ; 17CD _ 89. 54 24, 08
        mov     dword [esp+4H], 77055                   ; 17D1 _ C7. 44 24, 04, 00012CFF
        mov     dword [esp], eax                        ; 17D9 _ 89. 04 24
        call    _set_segmdesc                           ; 17DC _ E8, 00000000(rel)
        mov     eax, dword [ebp-14H]                    ; 17E1 _ 8B. 45, EC
        mov     dword [eax+30H], 0                      ; 17E4 _ C7. 40, 30, 00000000
        call    _io_sti                                 ; 17EB _ E8, 00000000(rel)
        mov     eax, dword [ebp-14H]                    ; 17F0 _ 8B. 45, EC
        add     eax, 48                                 ; 17F3 _ 83. C0, 30
        mov     dword [esp+10H], eax                    ; 17F6 _ 89. 44 24, 10
        mov     dword [esp+0CH], 12                     ; 17FA _ C7. 44 24, 0C, 0000000C
        mov     dword [esp+8H], 65536                   ; 1802 _ C7. 44 24, 08, 00010000
        mov     dword [esp+4H], 4                       ; 180A _ C7. 44 24, 04, 00000004
        mov     dword [esp], 0                          ; 1812 _ C7. 04 24, 00000000
        call    _start_app                              ; 1819 _ E8, 00000000(rel)
        call    _io_cli                                 ; 181E _ E8, 00000000(rel)
        mov     dword [ebp-0CH], 0                      ; 1823 _ C7. 45, F4, 00000000
        mov     dword [ebp-0CH], 0                      ; 182A _ C7. 45, F4, 00000000
        jmp     ?_083                                   ; 1831 _ E9, 0000008A

?_081:  mov     eax, dword [ebp-14H]                    ; 1836 _ 8B. 45, EC
        mov     ecx, dword [eax+0CCH]                   ; 1839 _ 8B. 88, 000000CC
        mov     edx, dword [ebp-0CH]                    ; 183F _ 8B. 55, F4
        mov     eax, edx                                ; 1842 _ 89. D0
        add     eax, eax                                ; 1844 _ 01. C0
        add     eax, edx                                ; 1846 _ 01. D0
        shl     eax, 2                                  ; 1848 _ C1. E0, 02
        add     eax, ecx                                ; 184B _ 01. C8
        mov     eax, dword [eax]                        ; 184D _ 8B. 00
        test    eax, eax                                ; 184F _ 85. C0
        jz      ?_082                                   ; 1851 _ 74, 69
        mov     eax, dword [ebp-14H]                    ; 1853 _ 8B. 45, EC
        mov     ecx, dword [eax+0CCH]                   ; 1856 _ 8B. 88, 000000CC
        mov     edx, dword [ebp-0CH]                    ; 185C _ 8B. 55, F4
        mov     eax, edx                                ; 185F _ 89. D0
        add     eax, eax                                ; 1861 _ 01. C0
        add     eax, edx                                ; 1863 _ 01. D0
        shl     eax, 2                                  ; 1865 _ C1. E0, 02
        add     eax, ecx                                ; 1868 _ 01. C8
        mov     eax, dword [eax+4H]                     ; 186A _ 8B. 40, 04
        mov     ebx, eax                                ; 186D _ 89. C3
        mov     eax, dword [ebp-14H]                    ; 186F _ 8B. 45, EC
        mov     ecx, dword [eax+0CCH]                   ; 1872 _ 8B. 88, 000000CC
        mov     edx, dword [ebp-0CH]                    ; 1878 _ 8B. 55, F4
        mov     eax, edx                                ; 187B _ 89. D0
        add     eax, eax                                ; 187D _ 01. C0
        add     eax, edx                                ; 187F _ 01. D0
        shl     eax, 2                                  ; 1881 _ C1. E0, 02
        add     eax, ecx                                ; 1884 _ 01. C8
        mov     eax, dword [eax]                        ; 1886 _ 8B. 00
        mov     edx, eax                                ; 1888 _ 89. C2
        mov     eax, dword [_memman]                    ; 188A _ A1, 00000000(d)
        mov     dword [esp+8H], ebx                     ; 188F _ 89. 5C 24, 08
        mov     dword [esp+4H], edx                     ; 1893 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1897 _ 89. 04 24
        call    _memman_free_4k                         ; 189A _ E8, 00000000(rel)
        mov     eax, dword [ebp-14H]                    ; 189F _ 8B. 45, EC
        mov     ecx, dword [eax+0CCH]                   ; 18A2 _ 8B. 88, 000000CC
        mov     edx, dword [ebp-0CH]                    ; 18A8 _ 8B. 55, F4
        mov     eax, edx                                ; 18AB _ 89. D0
        add     eax, eax                                ; 18AD _ 01. C0
        add     eax, edx                                ; 18AF _ 01. D0
        shl     eax, 2                                  ; 18B1 _ C1. E0, 02
        add     eax, ecx                                ; 18B4 _ 01. C8
        mov     dword [eax], 0                          ; 18B6 _ C7. 00, 00000000
?_082:  add     dword [ebp-0CH], 1                      ; 18BC _ 83. 45, F4, 01
?_083:  cmp     dword [ebp-0CH], 7                      ; 18C0 _ 83. 7D, F4, 07
        jle     ?_081                                   ; 18C4 _ 0F 8E, FFFFFF6C
        mov     eax, dword [ebp-10H]                    ; 18CA _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 18CD _ 8B. 40, 08
        mov     ecx, eax                                ; 18D0 _ 89. C1
        mov     eax, dword [ebp-10H]                    ; 18D2 _ 8B. 45, F0
        mov     eax, dword [eax]                        ; 18D5 _ 8B. 00
        mov     edx, eax                                ; 18D7 _ 89. C2
        mov     eax, dword [_memman]                    ; 18D9 _ A1, 00000000(d)
        mov     dword [esp+8H], ecx                     ; 18DE _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 18E2 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 18E6 _ 89. 04 24
        call    _memman_free_4k                         ; 18E9 _ E8, 00000000(rel)
        mov     edx, dword [ebp-24H]                    ; 18EE _ 8B. 55, DC
        mov     eax, dword [_memman]                    ; 18F1 _ A1, 00000000(d)
        mov     dword [esp+8H], 65536                   ; 18F6 _ C7. 44 24, 08, 00010000
        mov     dword [esp+4H], edx                     ; 18FE _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1902 _ 89. 04 24
        call    _memman_free_4k                         ; 1905 _ E8, 00000000(rel)
        mov     edx, dword [ebp-10H]                    ; 190A _ 8B. 55, F0
        mov     eax, dword [_memman]                    ; 190D _ A1, 00000000(d)
        mov     dword [esp+8H], 16                      ; 1912 _ C7. 44 24, 08, 00000010
        mov     dword [esp+4H], edx                     ; 191A _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 191E _ 89. 04 24
        call    _memman_free                            ; 1921 _ E8, 00000000(rel)
        mov     eax, dword [ebp-14H]                    ; 1926 _ 8B. 45, EC
        mov     dword [eax+0B0H], 0                     ; 1929 _ C7. 80, 000000B0, 00000000
        call    _io_sti                                 ; 1933 _ E8, 00000000(rel)
        nop                                             ; 1938 _ 90
        add     esp, 68                                 ; 1939 _ 83. C4, 44
        pop     ebx                                     ; 193C _ 5B
        pop     ebp                                     ; 193D _ 5D
        ret                                             ; 193E _ C3
; _cmd_execute_program End of function

_cmd_start:; Function begin
        push    ebp                                     ; 193F _ 55
        mov     ebp, esp                                ; 1940 _ 89. E5
        sub     esp, 40                                 ; 1942 _ 83. EC, 28
        mov     eax, dword [_console_count]             ; 1945 _ A1, 00000010(d)
        mov     dword [esp], eax                        ; 194A _ 89. 04 24
        call    _launch_console                         ; 194D _ E8, FFFFF26F
        mov     dword [ebp-10H], eax                    ; 1952 _ 89. 45, F0
        mov     eax, dword [_shtctl]                    ; 1955 _ A1, 00000264(d)
        mov     dword [esp+0CH], 176                    ; 195A _ C7. 44 24, 0C, 000000B0
        mov     dword [esp+8H], 156                     ; 1962 _ C7. 44 24, 08, 0000009C
        mov     edx, dword [ebp-10H]                    ; 196A _ 8B. 55, F0
        mov     dword [esp+4H], edx                     ; 196D _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1971 _ 89. 04 24
        call    _sheet_slide                            ; 1974 _ E8, 00000000(rel)
        mov     eax, dword [_shtctl]                    ; 1979 _ A1, 00000264(d)
        mov     dword [esp+8H], 1                       ; 197E _ C7. 44 24, 08, 00000001
        mov     edx, dword [ebp-10H]                    ; 1986 _ 8B. 55, F0
        mov     dword [esp+4H], edx                     ; 1989 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 198D _ 89. 04 24
        call    _sheet_updown                           ; 1990 _ E8, 00000000(rel)
        mov     eax, dword [_console_count]             ; 1995 _ A1, 00000010(d)
        add     eax, 1                                  ; 199A _ 83. C0, 01
        mov     dword [_console_count], eax             ; 199D _ A3, 00000010(d)
        mov     eax, dword [ebp-10H]                    ; 19A2 _ 8B. 45, F0
        mov     eax, dword [eax+20H]                    ; 19A5 _ 8B. 40, 20
        mov     dword [ebp-14H], eax                    ; 19A8 _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 19AB _ 8B. 45, EC
        mov     dword [eax+28H], 0                      ; 19AE _ C7. 40, 28, 00000000
        mov     dword [ebp-0CH], 6                      ; 19B5 _ C7. 45, F4, 00000006
        jmp     ?_085                                   ; 19BC _ EB, 24

?_084:  mov     edx, dword [ebp-0CH]                    ; 19BE _ 8B. 55, F4
        mov     eax, dword [ebp+8H]                     ; 19C1 _ 8B. 45, 08
        add     eax, edx                                ; 19C4 _ 01. D0
        movzx   eax, byte [eax]                         ; 19C6 _ 0F B6. 00
        movzx   eax, al                                 ; 19C9 _ 0F B6. C0
        mov     edx, dword [ebp-14H]                    ; 19CC _ 8B. 55, EC
        add     edx, 16                                 ; 19CF _ 83. C2, 10
        mov     dword [esp+4H], eax                     ; 19D2 _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 19D6 _ 89. 14 24
        call    _fifo8_put                              ; 19D9 _ E8, 00000000(rel)
        add     dword [ebp-0CH], 1                      ; 19DE _ 83. 45, F4, 01
?_085:  mov     edx, dword [ebp-0CH]                    ; 19E2 _ 8B. 55, F4
        mov     eax, dword [ebp+8H]                     ; 19E5 _ 8B. 45, 08
        add     eax, edx                                ; 19E8 _ 01. D0
        movzx   eax, byte [eax]                         ; 19EA _ 0F B6. 00
        test    al, al                                  ; 19ED _ 84. C0
        jnz     ?_084                                   ; 19EF _ 75, CD
        mov     eax, dword [ebp-14H]                    ; 19F1 _ 8B. 45, EC
        mov     edx, dword [ebp-14H]                    ; 19F4 _ 8B. 55, EC
        mov     dword [eax+28H], edx                    ; 19F7 _ 89. 50, 28
        mov     eax, dword [ebp-14H]                    ; 19FA _ 8B. 45, EC
        add     eax, 16                                 ; 19FD _ 83. C0, 10
        mov     dword [esp+4H], 28                      ; 1A00 _ C7. 44 24, 04, 0000001C
        mov     dword [esp], eax                        ; 1A08 _ 89. 04 24
        call    _fifo8_put                              ; 1A0B _ E8, 00000000(rel)
        nop                                             ; 1A10 _ 90
        leave                                           ; 1A11 _ C9
        ret                                             ; 1A12 _ C3
; _cmd_start End of function

_cmd_ncst:; Function begin
        push    ebp                                     ; 1A13 _ 55
        mov     ebp, esp                                ; 1A14 _ 89. E5
        sub     esp, 40                                 ; 1A16 _ 83. EC, 28
        mov     eax, dword [_console_count]             ; 1A19 _ A1, 00000010(d)
        mov     dword [esp], eax                        ; 1A1E _ 89. 04 24
        call    _launch_console                         ; 1A21 _ E8, FFFFF19B
        mov     eax, dword [_console_count]             ; 1A26 _ A1, 00000010(d)
        add     eax, 1                                  ; 1A2B _ 83. C0, 01
        mov     dword [_console_count], eax             ; 1A2E _ A3, 00000010(d)
        mov     eax, dword [_current_console_task]      ; 1A33 _ A1, 00000278(d)
        mov     dword [ebp-10H], eax                    ; 1A38 _ 89. 45, F0
        mov     eax, dword [ebp-10H]                    ; 1A3B _ 8B. 45, F0
        mov     dword [eax+28H], 0                      ; 1A3E _ C7. 40, 28, 00000000
        mov     dword [ebp-0CH], 5                      ; 1A45 _ C7. 45, F4, 00000005
        mov     dword [ebp-14H], 0                      ; 1A4C _ C7. 45, EC, 00000000
        jmp     ?_087                                   ; 1A53 _ EB, 24

?_086:  mov     edx, dword [ebp-0CH]                    ; 1A55 _ 8B. 55, F4
        mov     eax, dword [ebp+8H]                     ; 1A58 _ 8B. 45, 08
        add     eax, edx                                ; 1A5B _ 01. D0
        movzx   eax, byte [eax]                         ; 1A5D _ 0F B6. 00
        movzx   eax, al                                 ; 1A60 _ 0F B6. C0
        mov     edx, dword [ebp-10H]                    ; 1A63 _ 8B. 55, F0
        add     edx, 16                                 ; 1A66 _ 83. C2, 10
        mov     dword [esp+4H], eax                     ; 1A69 _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 1A6D _ 89. 14 24
        call    _fifo8_put                              ; 1A70 _ E8, 00000000(rel)
        add     dword [ebp-0CH], 1                      ; 1A75 _ 83. 45, F4, 01
?_087:  mov     edx, dword [ebp-0CH]                    ; 1A79 _ 8B. 55, F4
        mov     eax, dword [ebp+8H]                     ; 1A7C _ 8B. 45, 08
        add     eax, edx                                ; 1A7F _ 01. D0
        movzx   eax, byte [eax]                         ; 1A81 _ 0F B6. 00
        test    al, al                                  ; 1A84 _ 84. C0
        jnz     ?_086                                   ; 1A86 _ 75, CD
        mov     eax, dword [ebp-10H]                    ; 1A88 _ 8B. 45, F0
        mov     edx, dword [ebp-10H]                    ; 1A8B _ 8B. 55, F0
        mov     dword [eax+28H], edx                    ; 1A8E _ 89. 50, 28
        mov     eax, dword [ebp-10H]                    ; 1A91 _ 8B. 45, F0
        add     eax, 16                                 ; 1A94 _ 83. C0, 10
        mov     dword [esp+4H], 28                      ; 1A97 _ C7. 44 24, 04, 0000001C
        mov     dword [esp], eax                        ; 1A9F _ 89. 04 24
        call    _fifo8_put                              ; 1AA2 _ E8, 00000000(rel)
        nop                                             ; 1AA7 _ 90
        leave                                           ; 1AA8 _ C9
        ret                                             ; 1AA9 _ C3
; _cmd_ncst End of function

_console_task:; Function begin
        push    ebp                                     ; 1AAA _ 55
        mov     ebp, esp                                ; 1AAB _ 89. E5
        push    esi                                     ; 1AAD _ 56
        push    ebx                                     ; 1AAE _ 53
        sub     esp, 112                                ; 1AAF _ 83. EC, 70
        call    _task_now                               ; 1AB2 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 1AB7 _ 89. 45, F0
        mov     dword [ebp-0CH], 0                      ; 1ABA _ C7. 45, F4, 00000000
        mov     dword [ebp-14H], 0                      ; 1AC1 _ C7. 45, EC, 00000000
        mov     dword [ebp-18H], 0                      ; 1AC8 _ C7. 45, E8, 00000000
        mov     eax, dword [_memman]                    ; 1ACF _ A1, 00000000(d)
        mov     dword [esp+4H], 30                      ; 1AD4 _ C7. 44 24, 04, 0000001E
        mov     dword [esp], eax                        ; 1ADC _ 89. 04 24
        call    _memman_alloc                           ; 1ADF _ E8, 00000000(rel)
        mov     dword [ebp-1CH], eax                    ; 1AE4 _ 89. 45, E4
        mov     dword [ebp-20H], 96                     ; 1AE7 _ C7. 45, E0, 00000060
        mov     dword [ebp-24H], 176                    ; 1AEE _ C7. 45, DC, 000000B0
        mov     eax, dword [ebp-10H]                    ; 1AF5 _ 8B. 45, F0
        mov     edx, dword [ebp+8H]                     ; 1AF8 _ 8B. 55, 08
        mov     dword [eax+94H], edx                    ; 1AFB _ 89. 90, 00000094
        mov     eax, dword [ebp-10H]                    ; 1B01 _ 8B. 45, F0
        mov     dword [eax+98H], 16                     ; 1B04 _ C7. 80, 00000098, 00000010
        mov     eax, dword [ebp-10H]                    ; 1B0E _ 8B. 45, F0
        mov     dword [eax+9CH], 28                     ; 1B11 _ C7. 80, 0000009C, 0000001C
        mov     eax, dword [ebp-10H]                    ; 1B1B _ 8B. 45, F0
        mov     dword [eax+0A0H], -1                    ; 1B1E _ C7. 80, 000000A0, FFFFFFFF
        call    _timer_alloc                            ; 1B28 _ E8, 00000000(rel)
        mov     dword [ebp-28H], eax                    ; 1B2D _ 89. 45, D8
        mov     eax, dword [ebp-10H]                    ; 1B30 _ 8B. 45, F0
        add     eax, 16                                 ; 1B33 _ 83. C0, 10
        mov     dword [esp+8H], 1                       ; 1B36 _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], eax                     ; 1B3E _ 89. 44 24, 04
        mov     eax, dword [ebp-28H]                    ; 1B42 _ 8B. 45, D8
        mov     dword [esp], eax                        ; 1B45 _ 89. 04 24
        call    _timer_init                             ; 1B48 _ E8, 00000000(rel)
        mov     dword [esp+4H], 50                      ; 1B4D _ C7. 44 24, 04, 00000032
        mov     eax, dword [ebp-28H]                    ; 1B55 _ 8B. 45, D8
        mov     dword [esp], eax                        ; 1B58 _ 89. 04 24
        call    _timer_settime                          ; 1B5B _ E8, 00000000(rel)
        mov     eax, dword [ebp-10H]                    ; 1B60 _ 8B. 45, F0
        mov     edx, dword [ebp-28H]                    ; 1B63 _ 8B. 55, D8
        mov     dword [eax+0A8H], edx                   ; 1B66 _ 89. 90, 000000A8
        mov     eax, dword [ebp-10H]                    ; 1B6C _ 8B. 45, F0
        mov     edx, dword [ebp-1CH]                    ; 1B6F _ 8B. 55, E4
        mov     dword [eax+0ACH], edx                   ; 1B72 _ 89. 90, 000000AC
        mov     eax, dword [_shtctl]                    ; 1B78 _ A1, 00000264(d)
        mov     dword [esp+14H], ?_417                  ; 1B7D _ C7. 44 24, 14, 00000023(d)
        mov     dword [esp+10H], 7                      ; 1B85 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 28                     ; 1B8D _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 8                       ; 1B95 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp+8H]                     ; 1B9D _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 1BA0 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1BA4 _ 89. 04 24
        call    _showString                             ; 1BA7 _ E8, 000015E4
        mov     dword [ebp-2CH], 88064                  ; 1BAC _ C7. 45, D4, 00015800
        mov     dword [ebp-30H], 0                      ; 1BB3 _ C7. 45, D0, 00000000
?_088:  call    _io_cli                                 ; 1BBA _ E8, 00000000(rel)
        call    _task_now                               ; 1BBF _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 1BC4 _ 89. 45, F0
        mov     eax, dword [ebp-10H]                    ; 1BC7 _ 8B. 45, F0
        add     eax, 16                                 ; 1BCA _ 83. C0, 10
        mov     dword [esp], eax                        ; 1BCD _ 89. 04 24
        call    _fifo8_status                           ; 1BD0 _ E8, 00000000(rel)
        test    eax, eax                                ; 1BD5 _ 85. C0
        jnz     ?_089                                   ; 1BD7 _ 75, 0A
        call    _io_sti                                 ; 1BD9 _ E8, 00000000(rel)
        jmp     ?_108                                   ; 1BDE _ E9, 00000524

?_089:  mov     eax, dword [ebp-10H]                    ; 1BE3 _ 8B. 45, F0
        add     eax, 16                                 ; 1BE6 _ 83. C0, 10
        mov     dword [esp], eax                        ; 1BE9 _ 89. 04 24
        call    _fifo8_get                              ; 1BEC _ E8, 00000000(rel)
        mov     dword [ebp-34H], eax                    ; 1BF1 _ 89. 45, CC
        cmp     dword [ebp-34H], 1                      ; 1BF4 _ 83. 7D, CC, 01
        jg      ?_092                                   ; 1BF8 _ 7F, 6E
        cmp     dword [ebp-0CH], 0                      ; 1BFA _ 83. 7D, F4, 00
        js      ?_092                                   ; 1BFE _ 78, 68
        cmp     dword [ebp-34H], 0                      ; 1C00 _ 83. 7D, CC, 00
        jz      ?_090                                   ; 1C04 _ 74, 26
        mov     eax, dword [ebp-10H]                    ; 1C06 _ 8B. 45, F0
        add     eax, 16                                 ; 1C09 _ 83. C0, 10
        mov     dword [esp+8H], 0                       ; 1C0C _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], eax                     ; 1C14 _ 89. 44 24, 04
        mov     eax, dword [ebp-28H]                    ; 1C18 _ 8B. 45, D8
        mov     dword [esp], eax                        ; 1C1B _ 89. 04 24
        call    _timer_init                             ; 1C1E _ E8, 00000000(rel)
        mov     dword [ebp-0CH], 7                      ; 1C23 _ C7. 45, F4, 00000007
        jmp     ?_091                                   ; 1C2A _ EB, 24

?_090:  mov     eax, dword [ebp-10H]                    ; 1C2C _ 8B. 45, F0
        add     eax, 16                                 ; 1C2F _ 83. C0, 10
        mov     dword [esp+8H], 1                       ; 1C32 _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], eax                     ; 1C3A _ 89. 44 24, 04
        mov     eax, dword [ebp-28H]                    ; 1C3E _ 8B. 45, D8
        mov     dword [esp], eax                        ; 1C41 _ 89. 04 24
        call    _timer_init                             ; 1C44 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], 0                      ; 1C49 _ C7. 45, F4, 00000000
?_091:  mov     dword [esp+4H], 50                      ; 1C50 _ C7. 44 24, 04, 00000032
        mov     eax, dword [ebp-28H]                    ; 1C58 _ 8B. 45, D8
        mov     dword [esp], eax                        ; 1C5B _ 89. 04 24
        call    _timer_settime                          ; 1C5E _ E8, 00000000(rel)
        jmp     ?_107                                   ; 1C63 _ E9, 00000451

?_092:  cmp     dword [ebp-34H], 87                     ; 1C68 _ 83. 7D, CC, 57
        jnz     ?_093                                   ; 1C6C _ 75, 3C
        mov     dword [ebp-0CH], 7                      ; 1C6E _ C7. 45, F4, 00000007
        mov     eax, dword [ebp-10H]                    ; 1C75 _ 8B. 45, F0
        add     eax, 16                                 ; 1C78 _ 83. C0, 10
        mov     dword [esp+8H], 0                       ; 1C7B _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], eax                     ; 1C83 _ 89. 44 24, 04
        mov     eax, dword [ebp-28H]                    ; 1C87 _ 8B. 45, D8
        mov     dword [esp], eax                        ; 1C8A _ 89. 04 24
        call    _timer_init                             ; 1C8D _ E8, 00000000(rel)
        mov     dword [esp+4H], 50                      ; 1C92 _ C7. 44 24, 04, 00000032
        mov     eax, dword [ebp-28H]                    ; 1C9A _ 8B. 45, D8
        mov     dword [esp], eax                        ; 1C9D _ 89. 04 24
        call    _timer_settime                          ; 1CA0 _ E8, 00000000(rel)
        jmp     ?_107                                   ; 1CA5 _ E9, 0000040F

?_093:  cmp     dword [ebp-34H], 88                     ; 1CAA _ 83. 7D, CC, 58
        jnz     ?_094                                   ; 1CAE _ 75, 6A
        mov     eax, dword [ebp-10H]                    ; 1CB0 _ 8B. 45, F0
        mov     ecx, dword [eax+9CH]                    ; 1CB3 _ 8B. 88, 0000009C
        mov     eax, dword [ebp-10H]                    ; 1CB9 _ 8B. 45, F0
        mov     edx, dword [eax+98H]                    ; 1CBC _ 8B. 90, 00000098
        mov     eax, dword [_shtctl]                    ; 1CC2 _ A1, 00000264(d)
        mov     dword [esp+10H], 0                      ; 1CC7 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], ecx                    ; 1CCF _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 1CD3 _ 89. 54 24, 08
        mov     edx, dword [ebp+8H]                     ; 1CD7 _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 1CDA _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1CDE _ 89. 04 24
        call    _set_cursor                             ; 1CE1 _ E8, FFFFECBD
        mov     dword [ebp-0CH], -1                     ; 1CE6 _ C7. 45, F4, FFFFFFFF
        mov     eax, dword [_task_main]                 ; 1CED _ A1, 00000274(d)
        mov     dword [esp+8H], 0                       ; 1CF2 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], -1                      ; 1CFA _ C7. 44 24, 04, FFFFFFFF
        mov     dword [esp], eax                        ; 1D02 _ 89. 04 24
        call    _task_run                               ; 1D05 _ E8, 00000000(rel)
        mov     eax, dword [ebp-10H]                    ; 1D0A _ 8B. 45, F0
        mov     dword [esp], eax                        ; 1D0D _ 89. 04 24
        call    _task_sleep                             ; 1D10 _ E8, 00000000(rel)
        jmp     ?_107                                   ; 1D15 _ E9, 0000039F

?_094:  cmp     dword [ebp-34H], 28                     ; 1D1A _ 83. 7D, CC, 1C
        jne     ?_105                                   ; 1D1E _ 0F 85, 00000238
        mov     eax, dword [ebp-10H]                    ; 1D24 _ 8B. 45, F0
        mov     ecx, dword [eax+9CH]                    ; 1D27 _ 8B. 88, 0000009C
        mov     eax, dword [ebp-10H]                    ; 1D2D _ 8B. 45, F0
        mov     edx, dword [eax+98H]                    ; 1D30 _ 8B. 90, 00000098
        mov     eax, dword [_shtctl]                    ; 1D36 _ A1, 00000264(d)
        mov     dword [esp+10H], 0                      ; 1D3B _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], ecx                    ; 1D43 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 1D47 _ 89. 54 24, 08
        mov     edx, dword [ebp+8H]                     ; 1D4B _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 1D4E _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1D52 _ 89. 04 24
        call    _set_cursor                             ; 1D55 _ E8, FFFFEC49
        mov     eax, dword [ebp-10H]                    ; 1D5A _ 8B. 45, F0
        mov     eax, dword [eax+98H]                    ; 1D5D _ 8B. 80, 00000098
        lea     edx, [eax+7H]                           ; 1D63 _ 8D. 50, 07
        test    eax, eax                                ; 1D66 _ 85. C0
        cmovs   eax, edx                                ; 1D68 _ 0F 48. C2
        sar     eax, 3                                  ; 1D6B _ C1. F8, 03
        lea     edx, [eax-2H]                           ; 1D6E _ 8D. 50, FE
        mov     eax, dword [ebp-1CH]                    ; 1D71 _ 8B. 45, E4
        add     eax, edx                                ; 1D74 _ 01. D0
        mov     byte [eax], 0                           ; 1D76 _ C6. 00, 00
        mov     eax, dword [ebp-10H]                    ; 1D79 _ 8B. 45, F0
        mov     eax, dword [eax+98H]                    ; 1D7C _ 8B. 80, 00000098
        lea     edx, [eax+7H]                           ; 1D82 _ 8D. 50, 07
        test    eax, eax                                ; 1D85 _ 85. C0
        cmovs   eax, edx                                ; 1D87 _ 0F 48. C2
        sar     eax, 3                                  ; 1D8A _ C1. F8, 03
        sub     eax, 2                                  ; 1D8D _ 83. E8, 02
        mov     byte [ebp+eax-55H], 0                   ; 1D90 _ C6. 44 05, AB, 00
        mov     eax, dword [ebp-10H]                    ; 1D95 _ 8B. 45, F0
        mov     eax, dword [eax+9CH]                    ; 1D98 _ 8B. 80, 0000009C
        mov     edx, dword [ebp+8H]                     ; 1D9E _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 1DA1 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1DA5 _ 89. 04 24
        call    _cons_newline                           ; 1DA8 _ E8, 00000E95
        mov     edx, eax                                ; 1DAD _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 1DAF _ 8B. 45, F0
        mov     dword [eax+9CH], edx                    ; 1DB2 _ 89. 90, 0000009C
        mov     dword [esp+4H], ?_418                   ; 1DB8 _ C7. 44 24, 04, 00000025(d)
        mov     eax, dword [ebp-1CH]                    ; 1DC0 _ 8B. 45, E4
        mov     dword [esp], eax                        ; 1DC3 _ 89. 04 24
        call    _strcmp                                 ; 1DC6 _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 1DCB _ 83. F8, 01
        jnz     ?_095                                   ; 1DCE _ 75, 10
        mov     eax, dword [ebp+0CH]                    ; 1DD0 _ 8B. 45, 0C
        mov     dword [esp], eax                        ; 1DD3 _ 89. 04 24
        call    _cmd_mem                                ; 1DD6 _ E8, FFFFF6D2
        jmp     ?_104                                   ; 1DDB _ E9, 0000016A

?_095:  mov     dword [esp+4H], ?_419                   ; 1DE0 _ C7. 44 24, 04, 00000029(d)
        mov     eax, dword [ebp-1CH]                    ; 1DE8 _ 8B. 45, E4
        mov     dword [esp], eax                        ; 1DEB _ 89. 04 24
        call    _strcmp                                 ; 1DEE _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 1DF3 _ 83. F8, 01
        jnz     ?_096                                   ; 1DF6 _ 75, 0A
        call    _cmd_cls                                ; 1DF8 _ E8, FFFFF7DA
        jmp     ?_104                                   ; 1DFD _ E9, 00000148

?_096:  mov     dword [esp+4H], ?_420                   ; 1E02 _ C7. 44 24, 04, 0000002D(d)
        mov     eax, dword [ebp-1CH]                    ; 1E0A _ 8B. 45, E4
        mov     dword [esp], eax                        ; 1E0D _ 89. 04 24
        call    _strcmp                                 ; 1E10 _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 1E15 _ 83. F8, 01
        jnz     ?_097                                   ; 1E18 _ 75, 11
        mov     dword [esp], ?_421                      ; 1E1A _ C7. 04 24, 00000036(d)
        call    _cmd_execute_program                    ; 1E21 _ E8, FFFFF8B5
        jmp     ?_104                                   ; 1E26 _ E9, 0000011F

?_097:  mov     dword [esp+4H], ?_422                   ; 1E2B _ C7. 44 24, 04, 00000043(d)
        mov     eax, dword [ebp-1CH]                    ; 1E33 _ 8B. 45, E4
        mov     dword [esp], eax                        ; 1E36 _ 89. 04 24
        call    _strcmp                                 ; 1E39 _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 1E3E _ 83. F8, 01
        jnz     ?_098                                   ; 1E41 _ 75, 11
        mov     dword [esp], ?_423                      ; 1E43 _ C7. 04 24, 0000004A(d)
        call    _cmd_execute_program                    ; 1E4A _ E8, FFFFF88C
        jmp     ?_104                                   ; 1E4F _ E9, 000000F6

?_098:  mov     dword [esp+4H], ?_424                   ; 1E54 _ C7. 44 24, 04, 00000055(d)
        mov     eax, dword [ebp-1CH]                    ; 1E5C _ 8B. 45, E4
        mov     dword [esp], eax                        ; 1E5F _ 89. 04 24
        call    _strcmp                                 ; 1E62 _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 1E67 _ 83. F8, 01
        jnz     ?_099                                   ; 1E6A _ 75, 0A
        call    _cmd_dir                                ; 1E6C _ E8, FFFFF0D4
        jmp     ?_104                                   ; 1E71 _ E9, 000000D4

?_099:  mov     dword [esp+4H], ?_425                   ; 1E76 _ C7. 44 24, 04, 00000059(d)
        mov     eax, dword [ebp-1CH]                    ; 1E7E _ 8B. 45, E4
        mov     dword [esp], eax                        ; 1E81 _ 89. 04 24
        call    _strcmp                                 ; 1E84 _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 1E89 _ 83. F8, 01
        jnz     ?_100                                   ; 1E8C _ 75, 10
        mov     eax, dword [ebp-10H]                    ; 1E8E _ 8B. 45, F0
        mov     dword [esp], eax                        ; 1E91 _ 89. 04 24
        call    _cmd_exit                               ; 1E94 _ E8, 000005F4
        jmp     ?_104                                   ; 1E99 _ E9, 000000AC

?_100:  mov     eax, dword [ebp-1CH]                    ; 1E9E _ 8B. 45, E4
        movzx   eax, byte [eax]                         ; 1EA1 _ 0F B6. 00
        cmp     al, 116                                 ; 1EA4 _ 3C, 74
        jnz     ?_101                                   ; 1EA6 _ 75, 34
        mov     eax, dword [ebp-1CH]                    ; 1EA8 _ 8B. 45, E4
        add     eax, 1                                  ; 1EAB _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 1EAE _ 0F B6. 00
        cmp     al, 121                                 ; 1EB1 _ 3C, 79
        jnz     ?_101                                   ; 1EB3 _ 75, 27
        mov     eax, dword [ebp-1CH]                    ; 1EB5 _ 8B. 45, E4
        add     eax, 2                                  ; 1EB8 _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 1EBB _ 0F B6. 00
        cmp     al, 112                                 ; 1EBE _ 3C, 70
        jnz     ?_101                                   ; 1EC0 _ 75, 1A
        mov     eax, dword [ebp-1CH]                    ; 1EC2 _ 8B. 45, E4
        add     eax, 3                                  ; 1EC5 _ 83. C0, 03
        movzx   eax, byte [eax]                         ; 1EC8 _ 0F B6. 00
        cmp     al, 101                                 ; 1ECB _ 3C, 65
        jnz     ?_101                                   ; 1ECD _ 75, 0D
        mov     eax, dword [ebp-1CH]                    ; 1ECF _ 8B. 45, E4
        mov     dword [esp], eax                        ; 1ED2 _ 89. 04 24
        call    _cmd_type                               ; 1ED5 _ E8, FFFFF21B
        jmp     ?_104                                   ; 1EDA _ EB, 6E

?_101:  mov     dword [esp+4H], ?_426                   ; 1EDC _ C7. 44 24, 04, 0000005E(d)
        mov     eax, dword [ebp-1CH]                    ; 1EE4 _ 8B. 45, E4
        mov     dword [esp], eax                        ; 1EE7 _ 89. 04 24
        call    _strcmp                                 ; 1EEA _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 1EEF _ 83. F8, 01
        jnz     ?_102                                   ; 1EF2 _ 75, 0D
        lea     eax, [ebp-55H]                          ; 1EF4 _ 8D. 45, AB
        mov     dword [esp], eax                        ; 1EF7 _ 89. 04 24
        call    _cmd_start                              ; 1EFA _ E8, FFFFFA40
        jmp     ?_104                                   ; 1EFF _ EB, 49

?_102:  mov     dword [esp+4H], ?_427                   ; 1F01 _ C7. 44 24, 04, 00000064(d)
        mov     eax, dword [ebp-1CH]                    ; 1F09 _ 8B. 45, E4
        mov     dword [esp], eax                        ; 1F0C _ 89. 04 24
        call    _strcmp                                 ; 1F0F _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 1F14 _ 83. F8, 01
        jnz     ?_103                                   ; 1F17 _ 75, 0D
        lea     eax, [ebp-55H]                          ; 1F19 _ 8D. 45, AB
        mov     dword [esp], eax                        ; 1F1C _ 89. 04 24
        call    _cmd_ncst                               ; 1F1F _ E8, FFFFFAEF
        jmp     ?_104                                   ; 1F24 _ EB, 24

?_103:  mov     dword [esp+4H], ?_428                   ; 1F26 _ C7. 44 24, 04, 00000069(d)
        mov     eax, dword [ebp-1CH]                    ; 1F2E _ 8B. 45, E4
        mov     dword [esp], eax                        ; 1F31 _ 89. 04 24
        call    _strcmp                                 ; 1F34 _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 1F39 _ 83. F8, 01
        jnz     ?_104                                   ; 1F3C _ 75, 0C
        mov     dword [esp], ?_429                      ; 1F3E _ C7. 04 24, 0000006F(d)
        call    _cmd_execute_program                    ; 1F45 _ E8, FFFFF791
?_104:  mov     eax, dword [ebp-10H]                    ; 1F4A _ 8B. 45, F0
        mov     dword [eax+98H], 16                     ; 1F4D _ C7. 80, 00000098, 00000010
        jmp     ?_107                                   ; 1F57 _ E9, 0000015D

?_105:  cmp     dword [ebp-34H], 14                     ; 1F5C _ 83. 7D, CC, 0E
        jne     ?_106                                   ; 1F60 _ 0F 85, 00000098
        mov     eax, dword [ebp-10H]                    ; 1F66 _ 8B. 45, F0
        mov     eax, dword [eax+98H]                    ; 1F69 _ 8B. 80, 00000098
        cmp     eax, 8                                  ; 1F6F _ 83. F8, 08
        jle     ?_106                                   ; 1F72 _ 0F 8E, 00000086
        mov     eax, dword [ebp-10H]                    ; 1F78 _ 8B. 45, F0
        mov     ecx, dword [eax+9CH]                    ; 1F7B _ 8B. 88, 0000009C
        mov     eax, dword [ebp-10H]                    ; 1F81 _ 8B. 45, F0
        mov     edx, dword [eax+98H]                    ; 1F84 _ 8B. 90, 00000098
        mov     eax, dword [_shtctl]                    ; 1F8A _ A1, 00000264(d)
        mov     dword [esp+10H], 0                      ; 1F8F _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], ecx                    ; 1F97 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 1F9B _ 89. 54 24, 08
        mov     edx, dword [ebp+8H]                     ; 1F9F _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 1FA2 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1FA6 _ 89. 04 24
        call    _set_cursor                             ; 1FA9 _ E8, FFFFE9F5
        mov     eax, dword [ebp-10H]                    ; 1FAE _ 8B. 45, F0
        mov     eax, dword [eax+98H]                    ; 1FB1 _ 8B. 80, 00000098
        lea     edx, [eax-8H]                           ; 1FB7 _ 8D. 50, F8
        mov     eax, dword [ebp-10H]                    ; 1FBA _ 8B. 45, F0
        mov     dword [eax+98H], edx                    ; 1FBD _ 89. 90, 00000098
        mov     eax, dword [ebp-10H]                    ; 1FC3 _ 8B. 45, F0
        mov     ecx, dword [eax+9CH]                    ; 1FC6 _ 8B. 88, 0000009C
        mov     eax, dword [ebp-10H]                    ; 1FCC _ 8B. 45, F0
        mov     edx, dword [eax+98H]                    ; 1FCF _ 8B. 90, 00000098
        mov     eax, dword [_shtctl]                    ; 1FD5 _ A1, 00000264(d)
        mov     dword [esp+10H], 0                      ; 1FDA _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], ecx                    ; 1FE2 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 1FE6 _ 89. 54 24, 08
        mov     edx, dword [ebp+8H]                     ; 1FEA _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 1FED _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1FF1 _ 89. 04 24
        call    _set_cursor                             ; 1FF4 _ E8, FFFFE9AA
        jmp     ?_107                                   ; 1FF9 _ E9, 000000BB

?_106:  mov     eax, dword [ebp-34H]                    ; 1FFE _ 8B. 45, CC
        mov     dword [esp], eax                        ; 2001 _ 89. 04 24
        call    _transferScanCode                       ; 2004 _ E8, FFFFEA7B
        mov     byte [ebp-35H], al                      ; 2009 _ 88. 45, CB
        mov     eax, dword [ebp-10H]                    ; 200C _ 8B. 45, F0
        mov     eax, dword [eax+98H]                    ; 200F _ 8B. 80, 00000098
        cmp     eax, 239                                ; 2015 _ 3D, 000000EF
        jg      ?_107                                   ; 201A _ 0F 8F, 00000099
        cmp     byte [ebp-35H], 0                       ; 2020 _ 80. 7D, CB, 00
        je      ?_107                                   ; 2024 _ 0F 84, 0000008F
        mov     eax, dword [ebp-10H]                    ; 202A _ 8B. 45, F0
        mov     eax, dword [eax+98H]                    ; 202D _ 8B. 80, 00000098
        lea     edx, [eax+7H]                           ; 2033 _ 8D. 50, 07
        test    eax, eax                                ; 2036 _ 85. C0
        cmovs   eax, edx                                ; 2038 _ 0F 48. C2
        sar     eax, 3                                  ; 203B _ C1. F8, 03
        lea     edx, [eax-2H]                           ; 203E _ 8D. 50, FE
        mov     eax, dword [ebp-1CH]                    ; 2041 _ 8B. 45, E4
        add     edx, eax                                ; 2044 _ 01. C2
        movzx   eax, byte [ebp-35H]                     ; 2046 _ 0F B6. 45, CB
        mov     byte [edx], al                          ; 204A _ 88. 02
        mov     eax, dword [ebp-10H]                    ; 204C _ 8B. 45, F0
        mov     eax, dword [eax+98H]                    ; 204F _ 8B. 80, 00000098
        lea     edx, [eax+7H]                           ; 2055 _ 8D. 50, 07
        test    eax, eax                                ; 2058 _ 85. C0
        cmovs   eax, edx                                ; 205A _ 0F 48. C2
        sar     eax, 3                                  ; 205D _ C1. F8, 03
        lea     edx, [eax-1H]                           ; 2060 _ 8D. 50, FF
        mov     eax, dword [ebp-1CH]                    ; 2063 _ 8B. 45, E4
        add     eax, edx                                ; 2066 _ 01. D0
        mov     byte [eax], 0                           ; 2068 _ C6. 00, 00
        mov     eax, dword [ebp-10H]                    ; 206B _ 8B. 45, F0
        mov     eax, dword [eax+98H]                    ; 206E _ 8B. 80, 00000098
        lea     edx, [eax+7H]                           ; 2074 _ 8D. 50, 07
        test    eax, eax                                ; 2077 _ 85. C0
        cmovs   eax, edx                                ; 2079 _ 0F 48. C2
        sar     eax, 3                                  ; 207C _ C1. F8, 03
        sub     eax, 2                                  ; 207F _ 83. E8, 02
        mov     edx, dword [ebp-34H]                    ; 2082 _ 8B. 55, CC
        mov     byte [ebp+eax-55H], dl                  ; 2085 _ 88. 54 05, AB
        mov     eax, dword [ebp-10H]                    ; 2089 _ 8B. 45, F0
        mov     eax, dword [eax+98H]                    ; 208C _ 8B. 80, 00000098
        lea     edx, [eax+7H]                           ; 2092 _ 8D. 50, 07
        test    eax, eax                                ; 2095 _ 85. C0
        cmovs   eax, edx                                ; 2097 _ 0F 48. C2
        sar     eax, 3                                  ; 209A _ C1. F8, 03
        sub     eax, 1                                  ; 209D _ 83. E8, 01
        mov     byte [ebp+eax-55H], 0                   ; 20A0 _ C6. 44 05, AB, 00
        movsx   eax, byte [ebp-35H]                     ; 20A5 _ 0F BE. 45, CB
        mov     dword [esp+4H], 1                       ; 20A9 _ C7. 44 24, 04, 00000001
        mov     dword [esp], eax                        ; 20B1 _ 89. 04 24
        call    _cons_putchar                           ; 20B4 _ E8, 00000AB2
?_107:  cmp     dword [ebp-0CH], 0                      ; 20B9 _ 83. 7D, F4, 00
        js      ?_108                                   ; 20BD _ 78, 48
        mov     eax, dword [ebp-10H]                    ; 20BF _ 8B. 45, F0
        mov     eax, dword [eax+94H]                    ; 20C2 _ 8B. 80, 00000094
        test    eax, eax                                ; 20C8 _ 85. C0
        jz      ?_108                                   ; 20CA _ 74, 3B
        mov     eax, dword [ebp-10H]                    ; 20CC _ 8B. 45, F0
        mov     ebx, dword [eax+9CH]                    ; 20CF _ 8B. 98, 0000009C
        mov     eax, dword [ebp-10H]                    ; 20D5 _ 8B. 45, F0
        mov     ecx, dword [eax+98H]                    ; 20D8 _ 8B. 88, 00000098
        mov     eax, dword [ebp-10H]                    ; 20DE _ 8B. 45, F0
        mov     edx, dword [eax+94H]                    ; 20E1 _ 8B. 90, 00000094
        mov     eax, dword [_shtctl]                    ; 20E7 _ A1, 00000264(d)
        mov     esi, dword [ebp-0CH]                    ; 20EC _ 8B. 75, F4
        mov     dword [esp+10H], esi                    ; 20EF _ 89. 74 24, 10
        mov     dword [esp+0CH], ebx                    ; 20F3 _ 89. 5C 24, 0C
        mov     dword [esp+8H], ecx                     ; 20F7 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 20FB _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 20FF _ 89. 04 24
        call    _set_cursor                             ; 2102 _ E8, FFFFE89C
?_108:  call    _io_sti                                 ; 2107 _ E8, 00000000(rel)
        jmp     ?_088                                   ; 210C _ E9, FFFFFAA9
; _console_task End of function

_cons_putstr:; Function begin
        push    ebp                                     ; 2111 _ 55
        mov     ebp, esp                                ; 2112 _ 89. E5
        sub     esp, 24                                 ; 2114 _ 83. EC, 18
        jmp     ?_110                                   ; 2117 _ EB, 1D

?_109:  mov     eax, dword [ebp+8H]                     ; 2119 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 211C _ 0F B6. 00
        movsx   eax, al                                 ; 211F _ 0F BE. C0
        mov     dword [esp+4H], 1                       ; 2122 _ C7. 44 24, 04, 00000001
        mov     dword [esp], eax                        ; 212A _ 89. 04 24
        call    _cons_putchar                           ; 212D _ E8, 00000A39
        add     dword [ebp+8H], 1                       ; 2132 _ 83. 45, 08, 01
?_110:  mov     eax, dword [ebp+8H]                     ; 2136 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 2139 _ 0F B6. 00
        test    al, al                                  ; 213C _ 84. C0
        jnz     ?_109                                   ; 213E _ 75, D9
        nop                                             ; 2140 _ 90
        leave                                           ; 2141 _ C9
        ret                                             ; 2142 _ C3
; _cons_putstr End of function

_api_linewin:; Function begin
        push    ebp                                     ; 2143 _ 55
        mov     ebp, esp                                ; 2144 _ 89. E5
        sub     esp, 32                                 ; 2146 _ 83. EC, 20
        mov     eax, dword [ebp+14H]                    ; 2149 _ 8B. 45, 14
        sub     eax, dword [ebp+0CH]                    ; 214C _ 2B. 45, 0C
        mov     dword [ebp-14H], eax                    ; 214F _ 89. 45, EC
        mov     eax, dword [ebp+18H]                    ; 2152 _ 8B. 45, 18
        sub     eax, dword [ebp+10H]                    ; 2155 _ 2B. 45, 10
        mov     dword [ebp-18H], eax                    ; 2158 _ 89. 45, E8
        mov     eax, dword [ebp+0CH]                    ; 215B _ 8B. 45, 0C
        shl     eax, 10                                 ; 215E _ C1. E0, 0A
        mov     dword [ebp-8H], eax                     ; 2161 _ 89. 45, F8
        mov     eax, dword [ebp+10H]                    ; 2164 _ 8B. 45, 10
        shl     eax, 10                                 ; 2167 _ C1. E0, 0A
        mov     dword [ebp-0CH], eax                    ; 216A _ 89. 45, F4
        cmp     dword [ebp-14H], 0                      ; 216D _ 83. 7D, EC, 00
        jns     ?_111                                   ; 2171 _ 79, 03
        neg     dword [ebp-14H]                         ; 2173 _ F7. 5D, EC
?_111:  cmp     dword [ebp-18H], 0                      ; 2176 _ 83. 7D, E8, 00
        jns     ?_112                                   ; 217A _ 79, 03
        neg     dword [ebp-18H]                         ; 217C _ F7. 5D, E8
?_112:  mov     eax, dword [ebp-14H]                    ; 217F _ 8B. 45, EC
        cmp     eax, dword [ebp-18H]                    ; 2182 _ 3B. 45, E8
        jl      ?_116                                   ; 2185 _ 7C, 53
        mov     eax, dword [ebp-14H]                    ; 2187 _ 8B. 45, EC
        add     eax, 1                                  ; 218A _ 83. C0, 01
        mov     dword [ebp-10H], eax                    ; 218D _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 2190 _ 8B. 45, 0C
        cmp     eax, dword [ebp+14H]                    ; 2193 _ 3B. 45, 14
        jle     ?_113                                   ; 2196 _ 7E, 09
        mov     dword [ebp-14H], -1024                  ; 2198 _ C7. 45, EC, FFFFFC00
        jmp     ?_114                                   ; 219F _ EB, 07

?_113:  mov     dword [ebp-14H], 1024                   ; 21A1 _ C7. 45, EC, 00000400
?_114:  mov     eax, dword [ebp+10H]                    ; 21A8 _ 8B. 45, 10
        cmp     eax, dword [ebp+18H]                    ; 21AB _ 3B. 45, 18
        jg      ?_115                                   ; 21AE _ 7F, 15
        mov     eax, dword [ebp+18H]                    ; 21B0 _ 8B. 45, 18
        sub     eax, dword [ebp+10H]                    ; 21B3 _ 2B. 45, 10
        add     eax, 1                                  ; 21B6 _ 83. C0, 01
        shl     eax, 10                                 ; 21B9 _ C1. E0, 0A
        cdq                                             ; 21BC _ 99
        idiv    dword [ebp-10H]                         ; 21BD _ F7. 7D, F0
        mov     dword [ebp-18H], eax                    ; 21C0 _ 89. 45, E8
        jmp     ?_120                                   ; 21C3 _ EB, 66

?_115:  mov     eax, dword [ebp+18H]                    ; 21C5 _ 8B. 45, 18
        sub     eax, dword [ebp+10H]                    ; 21C8 _ 2B. 45, 10
        sub     eax, 1                                  ; 21CB _ 83. E8, 01
        shl     eax, 10                                 ; 21CE _ C1. E0, 0A
        cdq                                             ; 21D1 _ 99
        idiv    dword [ebp-10H]                         ; 21D2 _ F7. 7D, F0
        mov     dword [ebp-18H], eax                    ; 21D5 _ 89. 45, E8
        jmp     ?_120                                   ; 21D8 _ EB, 51

?_116:  mov     eax, dword [ebp-18H]                    ; 21DA _ 8B. 45, E8
        add     eax, 1                                  ; 21DD _ 83. C0, 01
        mov     dword [ebp-10H], eax                    ; 21E0 _ 89. 45, F0
        mov     eax, dword [ebp+10H]                    ; 21E3 _ 8B. 45, 10
        cmp     eax, dword [ebp+18H]                    ; 21E6 _ 3B. 45, 18
        jle     ?_117                                   ; 21E9 _ 7E, 09
        mov     dword [ebp-18H], -1024                  ; 21EB _ C7. 45, E8, FFFFFC00
        jmp     ?_118                                   ; 21F2 _ EB, 07

?_117:  mov     dword [ebp-18H], 1024                   ; 21F4 _ C7. 45, E8, 00000400
?_118:  mov     eax, dword [ebp+0CH]                    ; 21FB _ 8B. 45, 0C
        cmp     eax, dword [ebp+14H]                    ; 21FE _ 3B. 45, 14
        jg      ?_119                                   ; 2201 _ 7F, 15
        mov     eax, dword [ebp+14H]                    ; 2203 _ 8B. 45, 14
        sub     eax, dword [ebp+0CH]                    ; 2206 _ 2B. 45, 0C
        add     eax, 1                                  ; 2209 _ 83. C0, 01
        shl     eax, 10                                 ; 220C _ C1. E0, 0A
        cdq                                             ; 220F _ 99
        idiv    dword [ebp-10H]                         ; 2210 _ F7. 7D, F0
        mov     dword [ebp-14H], eax                    ; 2213 _ 89. 45, EC
        jmp     ?_120                                   ; 2216 _ EB, 13

?_119:  mov     eax, dword [ebp+14H]                    ; 2218 _ 8B. 45, 14
        sub     eax, dword [ebp+0CH]                    ; 221B _ 2B. 45, 0C
        sub     eax, 1                                  ; 221E _ 83. E8, 01
        shl     eax, 10                                 ; 2221 _ C1. E0, 0A
        cdq                                             ; 2224 _ 99
        idiv    dword [ebp-10H]                         ; 2225 _ F7. 7D, F0
        mov     dword [ebp-14H], eax                    ; 2228 _ 89. 45, EC
?_120:  mov     dword [ebp-4H], 0                       ; 222B _ C7. 45, FC, 00000000
        jmp     ?_122                                   ; 2232 _ EB, 35

?_121:  mov     eax, dword [ebp+8H]                     ; 2234 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 2237 _ 8B. 10
        mov     eax, dword [ebp-0CH]                    ; 2239 _ 8B. 45, F4
        sar     eax, 10                                 ; 223C _ C1. F8, 0A
        mov     ecx, eax                                ; 223F _ 89. C1
        mov     eax, dword [ebp+8H]                     ; 2241 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 2244 _ 8B. 40, 04
        imul    eax, ecx                                ; 2247 _ 0F AF. C1
        mov     ecx, dword [ebp-8H]                     ; 224A _ 8B. 4D, F8
        sar     ecx, 10                                 ; 224D _ C1. F9, 0A
        add     eax, ecx                                ; 2250 _ 01. C8
        add     eax, edx                                ; 2252 _ 01. D0
        mov     edx, dword [ebp+1CH]                    ; 2254 _ 8B. 55, 1C
        mov     byte [eax], dl                          ; 2257 _ 88. 10
        mov     eax, dword [ebp-14H]                    ; 2259 _ 8B. 45, EC
        add     dword [ebp-8H], eax                     ; 225C _ 01. 45, F8
        mov     eax, dword [ebp-18H]                    ; 225F _ 8B. 45, E8
        add     dword [ebp-0CH], eax                    ; 2262 _ 01. 45, F4
        add     dword [ebp-4H], 1                       ; 2265 _ 83. 45, FC, 01
?_122:  mov     eax, dword [ebp-4H]                     ; 2269 _ 8B. 45, FC
        cmp     eax, dword [ebp-10H]                    ; 226C _ 3B. 45, F0
        jl      ?_121                                   ; 226F _ 7C, C3
        nop                                             ; 2271 _ 90
        leave                                           ; 2272 _ C9
        ret                                             ; 2273 _ C3
; _api_linewin End of function

_handle_keyboard:; Function begin
        push    ebp                                     ; 2274 _ 55
        mov     ebp, esp                                ; 2275 _ 89. E5
        sub     esp, 56                                 ; 2277 _ 83. EC, 38
?_123:  call    _io_cli                                 ; 227A _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 227F _ 8B. 45, 08
        add     eax, 16                                 ; 2282 _ 83. C0, 10
        mov     dword [esp], eax                        ; 2285 _ 89. 04 24
        call    _fifo8_status                           ; 2288 _ E8, 00000000(rel)
        test    eax, eax                                ; 228D _ 85. C0
        jnz     ?_124                                   ; 228F _ 75, 2A
        call    _io_sti                                 ; 2291 _ E8, 00000000(rel)
        cmp     dword [ebp+0CH], 0                      ; 2296 _ 83. 7D, 0C, 00
        jne     ?_128                                   ; 229A _ 0F 85, 000000E2
        call    _io_sti                                 ; 22A0 _ E8, 00000000(rel)
        mov     eax, dword [ebp+10H]                    ; 22A5 _ 8B. 45, 10
        add     eax, 28                                 ; 22A8 _ 83. C0, 1C
        mov     dword [eax], -1                         ; 22AB _ C7. 00, FFFFFFFF
        mov     eax, 0                                  ; 22B1 _ B8, 00000000
        jmp     ?_129                                   ; 22B6 _ E9, 000000CD

?_124:  mov     eax, dword [ebp+8H]                     ; 22BB _ 8B. 45, 08
        add     eax, 16                                 ; 22BE _ 83. C0, 10
        mov     dword [esp], eax                        ; 22C1 _ 89. 04 24
        call    _fifo8_get                              ; 22C4 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 22C9 _ 89. 45, F4
        call    _io_sti                                 ; 22CC _ E8, 00000000(rel)
        cmp     dword [ebp-0CH], 255                    ; 22D1 _ 81. 7D, F4, 000000FF
        jle     ?_125                                   ; 22D8 _ 7E, 37
        mov     edx, dword [_sht_back]                  ; 22DA _ 8B. 15, 00000268(d)
        mov     eax, dword [_shtctl]                    ; 22E0 _ A1, 00000264(d)
        mov     dword [esp+14H], ?_430                  ; 22E5 _ C7. 44 24, 14, 00000079(d)
        mov     dword [esp+10H], 7                      ; 22ED _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 176                    ; 22F5 _ C7. 44 24, 0C, 000000B0
        mov     dword [esp+8H], 0                       ; 22FD _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 2305 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2309 _ 89. 04 24
        call    _showString                             ; 230C _ E8, 00000E7F
?_125:  cmp     dword [ebp-0CH], 1                      ; 2311 _ 83. 7D, F4, 01
        jg      ?_126                                   ; 2315 _ 7F, 41
        mov     eax, dword [ebp+8H]                     ; 2317 _ 8B. 45, 08
        lea     edx, [eax+10H]                          ; 231A _ 8D. 50, 10
        mov     eax, dword [ebp+8H]                     ; 231D _ 8B. 45, 08
        mov     eax, dword [eax+0A8H]                   ; 2320 _ 8B. 80, 000000A8
        mov     dword [esp+8H], 1                       ; 2326 _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], edx                     ; 232E _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2332 _ 89. 04 24
        call    _timer_init                             ; 2335 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 233A _ 8B. 45, 08
        mov     eax, dword [eax+0A8H]                   ; 233D _ 8B. 80, 000000A8
        mov     dword [esp+4H], 50                      ; 2343 _ C7. 44 24, 04, 00000032
        mov     dword [esp], eax                        ; 234B _ 89. 04 24
        call    _timer_settime                          ; 234E _ E8, 00000000(rel)
        jmp     ?_123                                   ; 2353 _ E9, FFFFFF22

?_126:  cmp     dword [ebp-0CH], 2                      ; 2358 _ 83. 7D, F4, 02
        jnz     ?_127                                   ; 235C _ 75, 12
        mov     eax, dword [ebp+8H]                     ; 235E _ 8B. 45, 08
        mov     dword [eax+0A0H], 7                     ; 2361 _ C7. 80, 000000A0, 00000007
        jmp     ?_123                                   ; 236B _ E9, FFFFFF0A

?_127:  mov     eax, dword [ebp+10H]                    ; 2370 _ 8B. 45, 10
        add     eax, 28                                 ; 2373 _ 83. C0, 1C
        mov     edx, dword [ebp-0CH]                    ; 2376 _ 8B. 55, F4
        mov     dword [eax], edx                        ; 2379 _ 89. 10
        mov     eax, 0                                  ; 237B _ B8, 00000000
        jmp     ?_129                                   ; 2380 _ EB, 06

?_128:  nop                                             ; 2382 _ 90
        jmp     ?_123                                   ; 2383 _ E9, FFFFFEF2
; _handle_keyboard End of function

?_129:  ; Local function
        leave                                           ; 2388 _ C9
        ret                                             ; 2389 _ C3

_close_constask:; Function begin
        push    ebp                                     ; 238A _ 55
        mov     ebp, esp                                ; 238B _ 89. E5
        sub     esp, 24                                 ; 238D _ 83. EC, 18
        mov     eax, dword [ebp+8H]                     ; 2390 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2393 _ 89. 04 24
        call    _task_sleep                             ; 2396 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 239B _ 8B. 45, 08
        mov     eax, dword [eax+0B8H]                   ; 239E _ 8B. 80, 000000B8
        mov     edx, eax                                ; 23A4 _ 89. C2
        mov     eax, dword [_memman]                    ; 23A6 _ A1, 00000000(d)
        mov     dword [esp+8H], 65536                   ; 23AB _ C7. 44 24, 08, 00010000
        mov     dword [esp+4H], edx                     ; 23B3 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 23B7 _ 89. 04 24
        call    _memman_free_4k                         ; 23BA _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 23BF _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 23C2 _ 8B. 40, 10
        mov     edx, eax                                ; 23C5 _ 89. C2
        mov     eax, dword [_memman]                    ; 23C7 _ A1, 00000000(d)
        mov     dword [esp+8H], 128                     ; 23CC _ C7. 44 24, 08, 00000080
        mov     dword [esp+4H], edx                     ; 23D4 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 23D8 _ 89. 04 24
        call    _memman_free                            ; 23DB _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 23E0 _ 8B. 45, 08
        mov     eax, dword [eax+0ACH]                   ; 23E3 _ 8B. 80, 000000AC
        mov     edx, eax                                ; 23E9 _ 89. C2
        mov     eax, dword [_memman]                    ; 23EB _ A1, 00000000(d)
        mov     dword [esp+8H], 30                      ; 23F0 _ C7. 44 24, 08, 0000001E
        mov     dword [esp+4H], edx                     ; 23F8 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 23FC _ 89. 04 24
        call    _memman_free                            ; 23FF _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 2404 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 2407 _ C7. 40, 04, 00000000
        mov     dword [_current_console_task], 0        ; 240E _ C7. 05, 00000278(d), 00000000
        nop                                             ; 2418 _ 90
        leave                                           ; 2419 _ C9
        ret                                             ; 241A _ C3
; _close_constask End of function

_close_console:; Function begin
        push    ebp                                     ; 241B _ 55
        mov     ebp, esp                                ; 241C _ 89. E5
        sub     esp, 40                                 ; 241E _ 83. EC, 28
        mov     eax, dword [ebp+8H]                     ; 2421 _ 8B. 45, 08
        mov     eax, dword [eax+0A8H]                   ; 2424 _ 8B. 80, 000000A8
        mov     dword [esp], eax                        ; 242A _ 89. 04 24
        call    _timer_free                             ; 242D _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 2432 _ 8B. 45, 08
        mov     eax, dword [eax+0B4H]                   ; 2435 _ 8B. 80, 000000B4
        test    eax, eax                                ; 243B _ 85. C0
        jz      ?_130                                   ; 243D _ 74, 40
        mov     eax, dword [ebp+8H]                     ; 243F _ 8B. 45, 08
        mov     eax, dword [eax+0B4H]                   ; 2442 _ 8B. 80, 000000B4
        mov     dword [ebp-0CH], eax                    ; 2448 _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 244B _ 8B. 45, F4
        mov     eax, dword [eax]                        ; 244E _ 8B. 00
        mov     edx, eax                                ; 2450 _ 89. C2
        mov     eax, dword [_memman]                    ; 2452 _ A1, 00000000(d)
        mov     dword [esp+8H], 42240                   ; 2457 _ C7. 44 24, 08, 0000A500
        mov     dword [esp+4H], edx                     ; 245F _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2463 _ 89. 04 24
        call    _memman_free_4k                         ; 2466 _ E8, 00000000(rel)
        mov     eax, dword [_shtctl]                    ; 246B _ A1, 00000264(d)
        mov     edx, dword [ebp-0CH]                    ; 2470 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 2473 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2477 _ 89. 04 24
        call    _sheet_free                             ; 247A _ E8, 00000000(rel)
?_130:  mov     eax, dword [ebp+8H]                     ; 247F _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2482 _ 89. 04 24
        call    _close_constask                         ; 2485 _ E8, FFFFFF00
        nop                                             ; 248A _ 90
        leave                                           ; 248B _ C9
        ret                                             ; 248C _ C3
; _close_console End of function

_cmd_exit:; Function begin
        push    ebp                                     ; 248D _ 55
        mov     ebp, esp                                ; 248E _ 89. E5
        sub     esp, 24                                 ; 2490 _ 83. EC, 18
        call    _io_cli                                 ; 2493 _ E8, 00000000(rel)
        mov     dword [esp+4H], 255                     ; 2498 _ C7. 44 24, 04, 000000FF
        mov     dword [esp], _keyinfo                   ; 24A0 _ C7. 04 24, 0000001C(d)
        call    _fifo8_put                              ; 24A7 _ E8, 00000000(rel)
        call    _io_sti                                 ; 24AC _ E8, 00000000(rel)
        nop                                             ; 24B1 _ 90
        leave                                           ; 24B2 _ C9
        ret                                             ; 24B3 _ C3
; _cmd_exit End of function

_kernel_api:; Function begin
        push    ebp                                     ; 24B4 _ 55
        mov     ebp, esp                                ; 24B5 _ 89. E5
        push    esi                                     ; 24B7 _ 56
        push    ebx                                     ; 24B8 _ 53
        sub     esp, 80                                 ; 24B9 _ 83. EC, 50
        call    _task_now                               ; 24BC _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 24C1 _ 89. 45, F0
        mov     dword [ebp-14H], 0                      ; 24C4 _ C7. 45, EC, 00000000
        lea     eax, [ebp+24H]                          ; 24CB _ 8D. 45, 24
        add     eax, 4                                  ; 24CE _ 83. C0, 04
        mov     dword [ebp-18H], eax                    ; 24D1 _ 89. 45, E8
        mov     dword [ebp-0CH], 0                      ; 24D4 _ C7. 45, F4, 00000000
        mov     dword [ebp-1CH], 0                      ; 24DB _ C7. 45, E4, 00000000
        cmp     dword [ebp+1CH], 1                      ; 24E2 _ 83. 7D, 1C, 01
        jnz     ?_131                                   ; 24E6 _ 75, 1B
        mov     eax, dword [ebp+24H]                    ; 24E8 _ 8B. 45, 24
        movsx   eax, al                                 ; 24EB _ 0F BE. C0
        mov     dword [esp+4H], 1                       ; 24EE _ C7. 44 24, 04, 00000001
        mov     dword [esp], eax                        ; 24F6 _ 89. 04 24
        call    _cons_putchar                           ; 24F9 _ E8, 0000066D
        jmp     ?_164                                   ; 24FE _ E9, 0000065C

?_131:  cmp     dword [ebp+1CH], 2                      ; 2503 _ 83. 7D, 1C, 02
        jnz     ?_132                                   ; 2507 _ 75, 1D
        mov     eax, dword [ebp-10H]                    ; 2509 _ 8B. 45, F0
        mov     eax, dword [eax+0B0H]                   ; 250C _ 8B. 80, 000000B0
        mov     edx, dword [eax]                        ; 2512 _ 8B. 10
        mov     eax, dword [ebp+18H]                    ; 2514 _ 8B. 45, 18
        add     eax, edx                                ; 2517 _ 01. D0
        mov     dword [esp], eax                        ; 2519 _ 89. 04 24
        call    _cons_putstr                            ; 251C _ E8, FFFFFBF0
        jmp     ?_164                                   ; 2521 _ E9, 00000639

?_132:  cmp     dword [ebp+1CH], 4                      ; 2526 _ 83. 7D, 1C, 04
        jnz     ?_133                                   ; 252A _ 75, 15
        mov     eax, dword [ebp-10H]                    ; 252C _ 8B. 45, F0
        mov     dword [eax+34H], 0                      ; 252F _ C7. 40, 34, 00000000
        mov     eax, dword [ebp-10H]                    ; 2536 _ 8B. 45, F0
        add     eax, 48                                 ; 2539 _ 83. C0, 30
        jmp     ?_165                                   ; 253C _ E9, 00000623

?_133:  cmp     dword [ebp+1CH], 5                      ; 2541 _ 83. 7D, 1C, 05
        jne     ?_134                                   ; 2545 _ 0F 85, 00000107
        mov     eax, dword [_shtctl]                    ; 254B _ A1, 00000264(d)
        mov     dword [esp], eax                        ; 2550 _ 89. 04 24
        call    _sheet_alloc                            ; 2553 _ E8, 00000000(rel)
        mov     dword [ebp-14H], eax                    ; 2558 _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 255B _ 8B. 45, EC
        mov     edx, dword [ebp-10H]                    ; 255E _ 8B. 55, F0
        mov     dword [eax+20H], edx                    ; 2561 _ 89. 50, 20
        mov     eax, dword [ebp-14H]                    ; 2564 _ 8B. 45, EC
        mov     eax, dword [eax+1CH]                    ; 2567 _ 8B. 40, 1C
        or      eax, 10H                                ; 256A _ 83. C8, 10
        mov     edx, eax                                ; 256D _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 256F _ 8B. 45, EC
        mov     dword [eax+1CH], edx                    ; 2572 _ 89. 50, 1C
        mov     edx, dword [ebp+24H]                    ; 2575 _ 8B. 55, 24
        mov     eax, dword [ebp-10H]                    ; 2578 _ 8B. 45, F0
        mov     eax, dword [eax+0B0H]                   ; 257B _ 8B. 80, 000000B0
        mov     ecx, dword [eax+4H]                     ; 2581 _ 8B. 48, 04
        mov     eax, dword [ebp+18H]                    ; 2584 _ 8B. 45, 18
        add     eax, ecx                                ; 2587 _ 01. C8
        mov     dword [esp+10H], edx                    ; 2589 _ 89. 54 24, 10
        mov     edx, dword [ebp+8H]                     ; 258D _ 8B. 55, 08
        mov     dword [esp+0CH], edx                    ; 2590 _ 89. 54 24, 0C
        mov     edx, dword [ebp+0CH]                    ; 2594 _ 8B. 55, 0C
        mov     dword [esp+8H], edx                     ; 2597 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 259B _ 89. 44 24, 04
        mov     eax, dword [ebp-14H]                    ; 259F _ 8B. 45, EC
        mov     dword [esp], eax                        ; 25A2 _ 89. 04 24
        call    _sheet_setbuf                           ; 25A5 _ E8, 00000000(rel)
        mov     eax, dword [ebp-10H]                    ; 25AA _ 8B. 45, F0
        mov     eax, dword [eax+0B0H]                   ; 25AD _ 8B. 80, 000000B0
        mov     edx, dword [eax]                        ; 25B3 _ 8B. 10
        mov     eax, dword [ebp+20H]                    ; 25B5 _ 8B. 45, 20
        add     edx, eax                                ; 25B8 _ 01. C2
        mov     eax, dword [_shtctl]                    ; 25BA _ A1, 00000264(d)
        mov     dword [esp+0CH], 0                      ; 25BF _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], edx                     ; 25C7 _ 89. 54 24, 08
        mov     edx, dword [ebp-14H]                    ; 25CB _ 8B. 55, EC
        mov     dword [esp+4H], edx                     ; 25CE _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 25D2 _ 89. 04 24
        call    _make_window8                           ; 25D5 _ E8, 00001C3C
        mov     eax, dword [_shtctl]                    ; 25DA _ A1, 00000264(d)
        mov     eax, dword [eax+0CH]                    ; 25DF _ 8B. 40, 0C
        sub     eax, dword [ebp+8H]                     ; 25E2 _ 2B. 45, 08
        mov     edx, eax                                ; 25E5 _ 89. C2
        shr     edx, 31                                 ; 25E7 _ C1. EA, 1F
        add     eax, edx                                ; 25EA _ 01. D0
        sar     eax, 1                                  ; 25EC _ D1. F8
        mov     ecx, eax                                ; 25EE _ 89. C1
        mov     eax, dword [_shtctl]                    ; 25F0 _ A1, 00000264(d)
        mov     eax, dword [eax+8H]                     ; 25F5 _ 8B. 40, 08
        sub     eax, dword [ebp+0CH]                    ; 25F8 _ 2B. 45, 0C
        mov     edx, eax                                ; 25FB _ 89. C2
        shr     edx, 31                                 ; 25FD _ C1. EA, 1F
        add     eax, edx                                ; 2600 _ 01. D0
        sar     eax, 1                                  ; 2602 _ D1. F8
        mov     edx, eax                                ; 2604 _ 89. C2
        mov     eax, dword [_shtctl]                    ; 2606 _ A1, 00000264(d)
        mov     dword [esp+0CH], ecx                    ; 260B _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 260F _ 89. 54 24, 08
        mov     edx, dword [ebp-14H]                    ; 2613 _ 8B. 55, EC
        mov     dword [esp+4H], edx                     ; 2616 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 261A _ 89. 04 24
        call    _sheet_slide                            ; 261D _ E8, 00000000(rel)
        mov     eax, dword [_shtctl]                    ; 2622 _ A1, 00000264(d)
        mov     edx, dword [eax+10H]                    ; 2627 _ 8B. 50, 10
        mov     eax, dword [_shtctl]                    ; 262A _ A1, 00000264(d)
        mov     dword [esp+8H], edx                     ; 262F _ 89. 54 24, 08
        mov     edx, dword [ebp-14H]                    ; 2633 _ 8B. 55, EC
        mov     dword [esp+4H], edx                     ; 2636 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 263A _ 89. 04 24
        call    _sheet_updown                           ; 263D _ E8, 00000000(rel)
        mov     eax, dword [ebp-18H]                    ; 2642 _ 8B. 45, E8
        add     eax, 28                                 ; 2645 _ 83. C0, 1C
        mov     edx, dword [ebp-14H]                    ; 2648 _ 8B. 55, EC
        mov     dword [eax], edx                        ; 264B _ 89. 10
        jmp     ?_164                                   ; 264D _ E9, 0000050D

?_134:  cmp     dword [ebp+1CH], 6                      ; 2652 _ 83. 7D, 1C, 06
        jne     ?_135                                   ; 2656 _ 0F 85, 0000008D
        mov     eax, dword [ebp+18H]                    ; 265C _ 8B. 45, 18
        mov     dword [ebp-14H], eax                    ; 265F _ 89. 45, EC
        mov     eax, dword [ebp-10H]                    ; 2662 _ 8B. 45, F0
        mov     eax, dword [eax+0B0H]                   ; 2665 _ 8B. 80, 000000B0
        mov     edx, dword [eax+4H]                     ; 266B _ 8B. 50, 04
        mov     eax, dword [ebp+10H]                    ; 266E _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 2671 _ 8D. 0C 02
        mov     eax, dword [ebp+24H]                    ; 2674 _ 8B. 45, 24
        movsx   eax, al                                 ; 2677 _ 0F BE. C0
        mov     edx, dword [_shtctl]                    ; 267A _ 8B. 15, 00000264(d)
        mov     dword [esp+14H], ecx                    ; 2680 _ 89. 4C 24, 14
        mov     dword [esp+10H], eax                    ; 2684 _ 89. 44 24, 10
        mov     eax, dword [ebp+8H]                     ; 2688 _ 8B. 45, 08
        mov     dword [esp+0CH], eax                    ; 268B _ 89. 44 24, 0C
        mov     eax, dword [ebp+0CH]                    ; 268F _ 8B. 45, 0C
        mov     dword [esp+8H], eax                     ; 2692 _ 89. 44 24, 08
        mov     eax, dword [ebp-14H]                    ; 2696 _ 8B. 45, EC
        mov     dword [esp+4H], eax                     ; 2699 _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 269D _ 89. 14 24
        call    _showString                             ; 26A0 _ E8, 00000AEB
        mov     eax, dword [ebp+8H]                     ; 26A5 _ 8B. 45, 08
        lea     ecx, [eax+10H]                          ; 26A8 _ 8D. 48, 10
        mov     eax, dword [ebp+20H]                    ; 26AB _ 8B. 45, 20
        lea     edx, [eax*8]                            ; 26AE _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp+0CH]                    ; 26B5 _ 8B. 45, 0C
        add     edx, eax                                ; 26B8 _ 01. C2
        mov     eax, dword [_shtctl]                    ; 26BA _ A1, 00000264(d)
        mov     dword [esp+14H], ecx                    ; 26BF _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 26C3 _ 89. 54 24, 10
        mov     edx, dword [ebp+8H]                     ; 26C7 _ 8B. 55, 08
        mov     dword [esp+0CH], edx                    ; 26CA _ 89. 54 24, 0C
        mov     edx, dword [ebp+0CH]                    ; 26CE _ 8B. 55, 0C
        mov     dword [esp+8H], edx                     ; 26D1 _ 89. 54 24, 08
        mov     edx, dword [ebp-14H]                    ; 26D5 _ 8B. 55, EC
        mov     dword [esp+4H], edx                     ; 26D8 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 26DC _ 89. 04 24
        call    _sheet_refresh                          ; 26DF _ E8, 00000000(rel)
        jmp     ?_164                                   ; 26E4 _ E9, 00000476

?_135:  cmp     dword [ebp+1CH], 7                      ; 26E9 _ 83. 7D, 1C, 07
        jnz     ?_136                                   ; 26ED _ 75, 7E
        mov     eax, dword [ebp+18H]                    ; 26EF _ 8B. 45, 18
        mov     dword [ebp-14H], eax                    ; 26F2 _ 89. 45, EC
        mov     ebx, dword [ebp+24H]                    ; 26F5 _ 8B. 5D, 24
        mov     eax, dword [ebp+10H]                    ; 26F8 _ 8B. 45, 10
        movzx   eax, al                                 ; 26FB _ 0F B6. C0
        mov     edx, dword [ebp-14H]                    ; 26FE _ 8B. 55, EC
        mov     ecx, dword [edx+4H]                     ; 2701 _ 8B. 4A, 04
        mov     edx, dword [ebp-14H]                    ; 2704 _ 8B. 55, EC
        mov     edx, dword [edx]                        ; 2707 _ 8B. 12
        mov     esi, dword [ebp+8H]                     ; 2709 _ 8B. 75, 08
        mov     dword [esp+18H], esi                    ; 270C _ 89. 74 24, 18
        mov     esi, dword [ebp+0CH]                    ; 2710 _ 8B. 75, 0C
        mov     dword [esp+14H], esi                    ; 2713 _ 89. 74 24, 14
        mov     esi, dword [ebp+20H]                    ; 2717 _ 8B. 75, 20
        mov     dword [esp+10H], esi                    ; 271A _ 89. 74 24, 10
        mov     dword [esp+0CH], ebx                    ; 271E _ 89. 5C 24, 0C
        mov     dword [esp+8H], eax                     ; 2722 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 2726 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 272A _ 89. 14 24
        call    _boxfill8                               ; 272D _ E8, 0000112B
        mov     eax, dword [ebp+8H]                     ; 2732 _ 8B. 45, 08
        lea     ebx, [eax+1H]                           ; 2735 _ 8D. 58, 01
        mov     eax, dword [ebp+0CH]                    ; 2738 _ 8B. 45, 0C
        lea     ecx, [eax+1H]                           ; 273B _ 8D. 48, 01
        mov     edx, dword [ebp+24H]                    ; 273E _ 8B. 55, 24
        mov     eax, dword [_shtctl]                    ; 2741 _ A1, 00000264(d)
        mov     dword [esp+14H], ebx                    ; 2746 _ 89. 5C 24, 14
        mov     dword [esp+10H], ecx                    ; 274A _ 89. 4C 24, 10
        mov     ecx, dword [ebp+20H]                    ; 274E _ 8B. 4D, 20
        mov     dword [esp+0CH], ecx                    ; 2751 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 2755 _ 89. 54 24, 08
        mov     edx, dword [ebp-14H]                    ; 2759 _ 8B. 55, EC
        mov     dword [esp+4H], edx                     ; 275C _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2760 _ 89. 04 24
        call    _sheet_refresh                          ; 2763 _ E8, 00000000(rel)
        jmp     ?_164                                   ; 2768 _ E9, 000003F2

?_136:  cmp     dword [ebp+1CH], 11                     ; 276D _ 83. 7D, 1C, 0B
        jnz     ?_137                                   ; 2771 _ 75, 28
        mov     eax, dword [ebp+18H]                    ; 2773 _ 8B. 45, 18
        mov     dword [ebp-14H], eax                    ; 2776 _ 89. 45, EC
        mov     ebx, dword [ebp+24H]                    ; 2779 _ 8B. 5D, 24
        mov     eax, dword [ebp-14H]                    ; 277C _ 8B. 45, EC
        mov     edx, dword [eax]                        ; 277F _ 8B. 10
        mov     eax, dword [ebp-14H]                    ; 2781 _ 8B. 45, EC
        mov     eax, dword [eax+4H]                     ; 2784 _ 8B. 40, 04
        imul    eax, dword [ebp+8H]                     ; 2787 _ 0F AF. 45, 08
        mov     ecx, dword [ebp+0CH]                    ; 278B _ 8B. 4D, 0C
        add     eax, ecx                                ; 278E _ 01. C8
        add     eax, edx                                ; 2790 _ 01. D0
        mov     edx, ebx                                ; 2792 _ 89. DA
        mov     byte [eax], dl                          ; 2794 _ 88. 10
        jmp     ?_164                                   ; 2796 _ E9, 000003C4

?_137:  cmp     dword [ebp+1CH], 12                     ; 279B _ 83. 7D, 1C, 0C
        jnz     ?_138                                   ; 279F _ 75, 3B
        mov     eax, dword [ebp+18H]                    ; 27A1 _ 8B. 45, 18
        mov     dword [ebp-14H], eax                    ; 27A4 _ 89. 45, EC
        mov     edx, dword [ebp+24H]                    ; 27A7 _ 8B. 55, 24
        mov     eax, dword [_shtctl]                    ; 27AA _ A1, 00000264(d)
        mov     ecx, dword [ebp+8H]                     ; 27AF _ 8B. 4D, 08
        mov     dword [esp+14H], ecx                    ; 27B2 _ 89. 4C 24, 14
        mov     ecx, dword [ebp+0CH]                    ; 27B6 _ 8B. 4D, 0C
        mov     dword [esp+10H], ecx                    ; 27B9 _ 89. 4C 24, 10
        mov     ecx, dword [ebp+20H]                    ; 27BD _ 8B. 4D, 20
        mov     dword [esp+0CH], ecx                    ; 27C0 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 27C4 _ 89. 54 24, 08
        mov     edx, dword [ebp-14H]                    ; 27C8 _ 8B. 55, EC
        mov     dword [esp+4H], edx                     ; 27CB _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 27CF _ 89. 04 24
        call    _sheet_refresh                          ; 27D2 _ E8, 00000000(rel)
        jmp     ?_164                                   ; 27D7 _ E9, 00000383

?_138:  cmp     dword [ebp+1CH], 13                     ; 27DC _ 83. 7D, 1C, 0D
        jnz     ?_139                                   ; 27E0 _ 75, 39
        mov     eax, dword [ebp+18H]                    ; 27E2 _ 8B. 45, 18
        mov     dword [ebp-14H], eax                    ; 27E5 _ 89. 45, EC
        mov     eax, dword [ebp+24H]                    ; 27E8 _ 8B. 45, 24
        mov     edx, dword [ebp+10H]                    ; 27EB _ 8B. 55, 10
        mov     dword [esp+14H], edx                    ; 27EE _ 89. 54 24, 14
        mov     edx, dword [ebp+8H]                     ; 27F2 _ 8B. 55, 08
        mov     dword [esp+10H], edx                    ; 27F5 _ 89. 54 24, 10
        mov     edx, dword [ebp+0CH]                    ; 27F9 _ 8B. 55, 0C
        mov     dword [esp+0CH], edx                    ; 27FC _ 89. 54 24, 0C
        mov     edx, dword [ebp+20H]                    ; 2800 _ 8B. 55, 20
        mov     dword [esp+8H], edx                     ; 2803 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 2807 _ 89. 44 24, 04
        mov     eax, dword [ebp-14H]                    ; 280B _ 8B. 45, EC
        mov     dword [esp], eax                        ; 280E _ 89. 04 24
        call    _api_linewin                            ; 2811 _ E8, FFFFF92D
        jmp     ?_164                                   ; 2816 _ E9, 00000344

?_139:  cmp     dword [ebp+1CH], 14                     ; 281B _ 83. 7D, 1C, 0E
        jnz     ?_140                                   ; 281F _ 75, 32
        mov     edx, dword [ebp+18H]                    ; 2821 _ 8B. 55, 18
        mov     eax, dword [_shtctl]                    ; 2824 _ A1, 00000264(d)
        mov     dword [esp+4H], edx                     ; 2829 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 282D _ 89. 04 24
        call    _sheet_free                             ; 2830 _ E8, 00000000(rel)
        mov     eax, dword [ebp-10H]                    ; 2835 _ 8B. 45, F0
        mov     eax, dword [eax+0B0H]                   ; 2838 _ 8B. 80, 000000B0
        mov     eax, dword [eax+4H]                     ; 283E _ 8B. 40, 04
        add     eax, 291                                ; 2841 _ 05, 00000123
        mov     dword [esp], eax                        ; 2846 _ 89. 04 24
        call    _cons_putstr                            ; 2849 _ E8, FFFFF8C3
        jmp     ?_164                                   ; 284E _ E9, 0000030C

?_140:  cmp     dword [ebp+1CH], 15                     ; 2853 _ 83. 7D, 1C, 0F
        jnz     ?_141                                   ; 2857 _ 75, 1E
        mov     eax, dword [ebp+24H]                    ; 2859 _ 8B. 45, 24
        mov     edx, dword [ebp-18H]                    ; 285C _ 8B. 55, E8
        mov     dword [esp+8H], edx                     ; 285F _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 2863 _ 89. 44 24, 04
        mov     eax, dword [ebp-10H]                    ; 2867 _ 8B. 45, F0
        mov     dword [esp], eax                        ; 286A _ 89. 04 24
        call    _handle_keyboard                        ; 286D _ E8, FFFFFA02
        jmp     ?_164                                   ; 2872 _ E9, 000002E8

?_141:  cmp     dword [ebp+1CH], 16                     ; 2877 _ 83. 7D, 1C, 10
        jnz     ?_142                                   ; 287B _ 75, 14
        call    _timer_alloc                            ; 287D _ E8, 00000000(rel)
        mov     edx, eax                                ; 2882 _ 89. C2
        mov     eax, dword [ebp-18H]                    ; 2884 _ 8B. 45, E8
        add     eax, 28                                 ; 2887 _ 83. C0, 1C
        mov     dword [eax], edx                        ; 288A _ 89. 10
        jmp     ?_164                                   ; 288C _ E9, 000002CE

?_142:  cmp     dword [ebp+1CH], 17                     ; 2891 _ 83. 7D, 1C, 11
        jnz     ?_143                                   ; 2895 _ 75, 24
        mov     eax, dword [ebp+24H]                    ; 2897 _ 8B. 45, 24
        movzx   eax, al                                 ; 289A _ 0F B6. C0
        mov     edx, dword [ebp-10H]                    ; 289D _ 8B. 55, F0
        lea     ecx, [edx+10H]                          ; 28A0 _ 8D. 4A, 10
        mov     edx, dword [ebp+18H]                    ; 28A3 _ 8B. 55, 18
        mov     dword [esp+8H], eax                     ; 28A6 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 28AA _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 28AE _ 89. 14 24
        call    _timer_init                             ; 28B1 _ E8, 00000000(rel)
        jmp     ?_164                                   ; 28B6 _ E9, 000002A4

?_143:  cmp     dword [ebp+1CH], 18                     ; 28BB _ 83. 7D, 1C, 12
        jnz     ?_144                                   ; 28BF _ 75, 19
        mov     eax, dword [ebp+24H]                    ; 28C1 _ 8B. 45, 24
        mov     edx, eax                                ; 28C4 _ 89. C2
        mov     eax, dword [ebp+18H]                    ; 28C6 _ 8B. 45, 18
        mov     dword [esp+4H], edx                     ; 28C9 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 28CD _ 89. 04 24
        call    _timer_settime                          ; 28D0 _ E8, 00000000(rel)
        jmp     ?_164                                   ; 28D5 _ E9, 00000285

?_144:  cmp     dword [ebp+1CH], 19                     ; 28DA _ 83. 7D, 1C, 13
        jnz     ?_145                                   ; 28DE _ 75, 10
        mov     eax, dword [ebp+18H]                    ; 28E0 _ 8B. 45, 18
        mov     dword [esp], eax                        ; 28E3 _ 89. 04 24
        call    _timer_free                             ; 28E6 _ E8, 00000000(rel)
        jmp     ?_164                                   ; 28EB _ E9, 0000026F

?_145:  cmp     dword [ebp+1CH], 21                     ; 28F0 _ 83. 7D, 1C, 15
        jne     ?_150                                   ; 28F4 _ 0F 85, 000000C5
        mov     dword [ebp-0CH], 0                      ; 28FA _ C7. 45, F4, 00000000
        jmp     ?_147                                   ; 2901 _ EB, 21

?_146:  mov     eax, dword [ebp-10H]                    ; 2903 _ 8B. 45, F0
        mov     ecx, dword [eax+0CCH]                   ; 2906 _ 8B. 88, 000000CC
        mov     edx, dword [ebp-0CH]                    ; 290C _ 8B. 55, F4
        mov     eax, edx                                ; 290F _ 89. D0
        add     eax, eax                                ; 2911 _ 01. C0
        add     eax, edx                                ; 2913 _ 01. D0
        shl     eax, 2                                  ; 2915 _ C1. E0, 02
        add     eax, ecx                                ; 2918 _ 01. C8
        mov     eax, dword [eax]                        ; 291A _ 8B. 00
        test    eax, eax                                ; 291C _ 85. C0
        jz      ?_148                                   ; 291E _ 74, 0C
        add     dword [ebp-0CH], 1                      ; 2920 _ 83. 45, F4, 01
?_147:  cmp     dword [ebp-0CH], 7                      ; 2924 _ 83. 7D, F4, 07
        jle     ?_146                                   ; 2928 _ 7E, D9
        jmp     ?_149                                   ; 292A _ EB, 01

?_148:  nop                                             ; 292C _ 90
?_149:  mov     eax, dword [ebp-10H]                    ; 292D _ 8B. 45, F0
        mov     ecx, dword [eax+0CCH]                   ; 2930 _ 8B. 88, 000000CC
        mov     edx, dword [ebp-0CH]                    ; 2936 _ 8B. 55, F4
        mov     eax, edx                                ; 2939 _ 89. D0
        add     eax, eax                                ; 293B _ 01. C0
        add     eax, edx                                ; 293D _ 01. D0
        shl     eax, 2                                  ; 293F _ C1. E0, 02
        add     eax, ecx                                ; 2942 _ 01. C8
        mov     dword [ebp-1CH], eax                    ; 2944 _ 89. 45, E4
        mov     eax, dword [ebp-18H]                    ; 2947 _ 8B. 45, E8
        add     eax, 28                                 ; 294A _ 83. C0, 1C
        mov     dword [eax], 0                          ; 294D _ C7. 00, 00000000
        cmp     dword [ebp-0CH], 7                      ; 2953 _ 83. 7D, F4, 07
        jg      ?_164                                   ; 2957 _ 0F 8F, 00000202
        mov     dword [ebp-2CH], 0                      ; 295D _ C7. 45, D4, 00000000
        mov     eax, dword [ebp-10H]                    ; 2964 _ 8B. 45, F0
        mov     eax, dword [eax+0B0H]                   ; 2967 _ 8B. 80, 000000B0
        mov     edx, dword [eax]                        ; 296D _ 8B. 10
        mov     eax, dword [ebp+18H]                    ; 296F _ 8B. 45, 18
        add     eax, edx                                ; 2972 _ 01. D0
        mov     dword [ebp-20H], eax                    ; 2974 _ 89. 45, E0
        lea     eax, [ebp-2CH]                          ; 2977 _ 8D. 45, D4
        mov     dword [esp+4H], eax                     ; 297A _ 89. 44 24, 04
        mov     eax, dword [ebp-20H]                    ; 297E _ 8B. 45, E0
        mov     dword [esp], eax                        ; 2981 _ 89. 04 24
        call    _file_loadfile                          ; 2984 _ E8, 00001F2A
        mov     eax, dword [ebp-2CH]                    ; 2989 _ 8B. 45, D4
        test    eax, eax                                ; 298C _ 85. C0
        je      ?_164                                   ; 298E _ 0F 84, 000001CB
        mov     eax, dword [ebp-18H]                    ; 2994 _ 8B. 45, E8
        add     eax, 28                                 ; 2997 _ 83. C0, 1C
        mov     edx, dword [ebp-1CH]                    ; 299A _ 8B. 55, E4
        mov     dword [eax], edx                        ; 299D _ 89. 10
        mov     edx, dword [ebp-2CH]                    ; 299F _ 8B. 55, D4
        mov     eax, dword [ebp-1CH]                    ; 29A2 _ 8B. 45, E4
        mov     dword [eax], edx                        ; 29A5 _ 89. 10
        mov     edx, dword [ebp-24H]                    ; 29A7 _ 8B. 55, DC
        mov     eax, dword [ebp-1CH]                    ; 29AA _ 8B. 45, E4
        mov     dword [eax+4H], edx                     ; 29AD _ 89. 50, 04
        mov     eax, dword [ebp-1CH]                    ; 29B0 _ 8B. 45, E4
        mov     dword [eax+8H], 0                       ; 29B3 _ C7. 40, 08, 00000000
        jmp     ?_164                                   ; 29BA _ E9, 000001A0

?_150:  cmp     dword [ebp+1CH], 22                     ; 29BF _ 83. 7D, 1C, 16
        jnz     ?_151                                   ; 29C3 _ 75, 38
        mov     eax, dword [ebp+24H]                    ; 29C5 _ 8B. 45, 24
        mov     dword [ebp-1CH], eax                    ; 29C8 _ 89. 45, E4
        mov     eax, dword [ebp-1CH]                    ; 29CB _ 8B. 45, E4
        mov     eax, dword [eax+4H]                     ; 29CE _ 8B. 40, 04
        mov     ecx, eax                                ; 29D1 _ 89. C1
        mov     eax, dword [ebp-1CH]                    ; 29D3 _ 8B. 45, E4
        mov     eax, dword [eax]                        ; 29D6 _ 8B. 00
        mov     edx, eax                                ; 29D8 _ 89. C2
        mov     eax, dword [_memman]                    ; 29DA _ A1, 00000000(d)
        mov     dword [esp+8H], ecx                     ; 29DF _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 29E3 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 29E7 _ 89. 04 24
        call    _memman_free_4k                         ; 29EA _ E8, 00000000(rel)
        mov     eax, dword [ebp-1CH]                    ; 29EF _ 8B. 45, E4
        mov     dword [eax], 0                          ; 29F2 _ C7. 00, 00000000
        jmp     ?_164                                   ; 29F8 _ E9, 00000162

?_151:  cmp     dword [ebp+1CH], 23                     ; 29FD _ 83. 7D, 1C, 17
        jne     ?_156                                   ; 2A01 _ 0F 85, 00000080
        mov     eax, dword [ebp+24H]                    ; 2A07 _ 8B. 45, 24
        mov     dword [ebp-1CH], eax                    ; 2A0A _ 89. 45, E4
        cmp     dword [ebp+20H], 0                      ; 2A0D _ 83. 7D, 20, 00
        jnz     ?_152                                   ; 2A11 _ 75, 0B
        mov     eax, dword [ebp-1CH]                    ; 2A13 _ 8B. 45, E4
        mov     edx, dword [ebp+18H]                    ; 2A16 _ 8B. 55, 18
        mov     dword [eax+8H], edx                     ; 2A19 _ 89. 50, 08
        jmp     ?_154                                   ; 2A1C _ EB, 30

?_152:  cmp     dword [ebp+20H], 1                      ; 2A1E _ 83. 7D, 20, 01
        jnz     ?_153                                   ; 2A22 _ 75, 13
        mov     eax, dword [ebp-1CH]                    ; 2A24 _ 8B. 45, E4
        mov     edx, dword [eax+8H]                     ; 2A27 _ 8B. 50, 08
        mov     eax, dword [ebp+18H]                    ; 2A2A _ 8B. 45, 18
        add     edx, eax                                ; 2A2D _ 01. C2
        mov     eax, dword [ebp-1CH]                    ; 2A2F _ 8B. 45, E4
        mov     dword [eax+8H], edx                     ; 2A32 _ 89. 50, 08
        jmp     ?_154                                   ; 2A35 _ EB, 17

?_153:  cmp     dword [ebp+20H], 2                      ; 2A37 _ 83. 7D, 20, 02
        jnz     ?_154                                   ; 2A3B _ 75, 11
        mov     eax, dword [ebp-1CH]                    ; 2A3D _ 8B. 45, E4
        mov     edx, dword [eax+4H]                     ; 2A40 _ 8B. 50, 04
        mov     eax, dword [ebp+18H]                    ; 2A43 _ 8B. 45, 18
        add     edx, eax                                ; 2A46 _ 01. C2
        mov     eax, dword [ebp-1CH]                    ; 2A48 _ 8B. 45, E4
        mov     dword [eax+8H], edx                     ; 2A4B _ 89. 50, 08
?_154:  mov     eax, dword [ebp-1CH]                    ; 2A4E _ 8B. 45, E4
        mov     eax, dword [eax+8H]                     ; 2A51 _ 8B. 40, 08
        test    eax, eax                                ; 2A54 _ 85. C0
        jns     ?_155                                   ; 2A56 _ 79, 0A
        mov     eax, dword [ebp-1CH]                    ; 2A58 _ 8B. 45, E4
        mov     dword [eax+8H], 0                       ; 2A5B _ C7. 40, 08, 00000000
?_155:  mov     eax, dword [ebp-1CH]                    ; 2A62 _ 8B. 45, E4
        mov     edx, dword [eax+8H]                     ; 2A65 _ 8B. 50, 08
        mov     eax, dword [ebp-1CH]                    ; 2A68 _ 8B. 45, E4
        mov     eax, dword [eax+4H]                     ; 2A6B _ 8B. 40, 04
        cmp     edx, eax                                ; 2A6E _ 39. C2
        jle     ?_164                                   ; 2A70 _ 0F 8E, 000000E9
        mov     eax, dword [ebp-1CH]                    ; 2A76 _ 8B. 45, E4
        mov     edx, dword [eax+4H]                     ; 2A79 _ 8B. 50, 04
        mov     eax, dword [ebp-1CH]                    ; 2A7C _ 8B. 45, E4
        mov     dword [eax+8H], edx                     ; 2A7F _ 89. 50, 08
        jmp     ?_164                                   ; 2A82 _ E9, 000000D8

?_156:  cmp     dword [ebp+1CH], 24                     ; 2A87 _ 83. 7D, 1C, 18
        jnz     ?_159                                   ; 2A8B _ 75, 5C
        mov     eax, dword [ebp+24H]                    ; 2A8D _ 8B. 45, 24
        mov     dword [ebp-1CH], eax                    ; 2A90 _ 89. 45, E4
        cmp     dword [ebp+20H], 0                      ; 2A93 _ 83. 7D, 20, 00
        jnz     ?_157                                   ; 2A97 _ 75, 13
        mov     eax, dword [ebp-18H]                    ; 2A99 _ 8B. 45, E8
        add     eax, 28                                 ; 2A9C _ 83. C0, 1C
        mov     edx, dword [ebp-1CH]                    ; 2A9F _ 8B. 55, E4
        mov     edx, dword [edx+4H]                     ; 2AA2 _ 8B. 52, 04
        mov     dword [eax], edx                        ; 2AA5 _ 89. 10
        jmp     ?_164                                   ; 2AA7 _ E9, 000000B3

?_157:  cmp     dword [ebp+20H], 1                      ; 2AAC _ 83. 7D, 20, 01
        jnz     ?_158                                   ; 2AB0 _ 75, 13
        mov     eax, dword [ebp-18H]                    ; 2AB2 _ 8B. 45, E8
        add     eax, 28                                 ; 2AB5 _ 83. C0, 1C
        mov     edx, dword [ebp-1CH]                    ; 2AB8 _ 8B. 55, E4
        mov     edx, dword [edx+8H]                     ; 2ABB _ 8B. 52, 08
        mov     dword [eax], edx                        ; 2ABE _ 89. 10
        jmp     ?_164                                   ; 2AC0 _ E9, 0000009A

?_158:  cmp     dword [ebp+20H], 2                      ; 2AC5 _ 83. 7D, 20, 02
        jne     ?_164                                   ; 2AC9 _ 0F 85, 00000090
        mov     eax, dword [ebp-1CH]                    ; 2ACF _ 8B. 45, E4
        mov     ecx, dword [eax+8H]                     ; 2AD2 _ 8B. 48, 08
        mov     eax, dword [ebp-1CH]                    ; 2AD5 _ 8B. 45, E4
        mov     edx, dword [eax+4H]                     ; 2AD8 _ 8B. 50, 04
        mov     eax, dword [ebp-18H]                    ; 2ADB _ 8B. 45, E8
        add     eax, 28                                 ; 2ADE _ 83. C0, 1C
        sub     ecx, edx                                ; 2AE1 _ 29. D1
        mov     edx, ecx                                ; 2AE3 _ 89. CA
        mov     dword [eax], edx                        ; 2AE5 _ 89. 10
        jmp     ?_164                                   ; 2AE7 _ EB, 76

?_159:  cmp     dword [ebp+1CH], 25                     ; 2AE9 _ 83. 7D, 1C, 19
        jnz     ?_164                                   ; 2AED _ 75, 70
        mov     eax, dword [ebp+24H]                    ; 2AEF _ 8B. 45, 24
        mov     dword [ebp-1CH], eax                    ; 2AF2 _ 89. 45, E4
        mov     dword [ebp-0CH], 0                      ; 2AF5 _ C7. 45, F4, 00000000
        jmp     ?_161                                   ; 2AFC _ EB, 4B

?_160:  mov     eax, dword [ebp-1CH]                    ; 2AFE _ 8B. 45, E4
        mov     edx, dword [eax+8H]                     ; 2B01 _ 8B. 50, 08
        mov     eax, dword [ebp-1CH]                    ; 2B04 _ 8B. 45, E4
        mov     eax, dword [eax+4H]                     ; 2B07 _ 8B. 40, 04
        cmp     edx, eax                                ; 2B0A _ 39. C2
        jz      ?_162                                   ; 2B0C _ 74, 45
        mov     eax, dword [ebp-1CH]                    ; 2B0E _ 8B. 45, E4
        mov     edx, dword [eax]                        ; 2B11 _ 8B. 10
        mov     eax, dword [ebp-1CH]                    ; 2B13 _ 8B. 45, E4
        mov     eax, dword [eax+8H]                     ; 2B16 _ 8B. 40, 08
        add     eax, edx                                ; 2B19 _ 01. D0
        mov     edx, dword [ebp-10H]                    ; 2B1B _ 8B. 55, F0
        mov     edx, dword [edx+0B0H]                   ; 2B1E _ 8B. 92, 000000B0
        mov     ecx, dword [edx+4H]                     ; 2B24 _ 8B. 4A, 04
        mov     ebx, dword [ebp+18H]                    ; 2B27 _ 8B. 5D, 18
        mov     edx, dword [ebp-0CH]                    ; 2B2A _ 8B. 55, F4
        add     edx, ebx                                ; 2B2D _ 01. DA
        add     edx, ecx                                ; 2B2F _ 01. CA
        movzx   eax, byte [eax]                         ; 2B31 _ 0F B6. 00
        mov     byte [edx], al                          ; 2B34 _ 88. 02
        mov     eax, dword [ebp-1CH]                    ; 2B36 _ 8B. 45, E4
        mov     eax, dword [eax+8H]                     ; 2B39 _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 2B3C _ 8D. 50, 01
        mov     eax, dword [ebp-1CH]                    ; 2B3F _ 8B. 45, E4
        mov     dword [eax+8H], edx                     ; 2B42 _ 89. 50, 08
        add     dword [ebp-0CH], 1                      ; 2B45 _ 83. 45, F4, 01
?_161:  mov     eax, dword [ebp-0CH]                    ; 2B49 _ 8B. 45, F4
        cmp     eax, dword [ebp+20H]                    ; 2B4C _ 3B. 45, 20
        jl      ?_160                                   ; 2B4F _ 7C, AD
        jmp     ?_163                                   ; 2B51 _ EB, 01

?_162:  nop                                             ; 2B53 _ 90
?_163:  mov     eax, dword [ebp-18H]                    ; 2B54 _ 8B. 45, E8
        add     eax, 28                                 ; 2B57 _ 83. C0, 1C
        mov     edx, dword [ebp-0CH]                    ; 2B5A _ 8B. 55, F4
        mov     dword [eax], edx                        ; 2B5D _ 89. 10
?_164:  mov     eax, 0                                  ; 2B5F _ B8, 00000000
?_165:  add     esp, 80                                 ; 2B64 _ 83. C4, 50
        pop     ebx                                     ; 2B67 _ 5B
        pop     esi                                     ; 2B68 _ 5E
        pop     ebp                                     ; 2B69 _ 5D
        ret                                             ; 2B6A _ C3
; _kernel_api End of function

_cons_putchar:; Function begin
        push    ebp                                     ; 2B6B _ 55
        mov     ebp, esp                                ; 2B6C _ 89. E5
        push    esi                                     ; 2B6E _ 56
        push    ebx                                     ; 2B6F _ 53
        sub     esp, 64                                 ; 2B70 _ 83. EC, 40
        mov     eax, dword [ebp+8H]                     ; 2B73 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 2B76 _ 8B. 55, 0C
        mov     byte [ebp-1CH], al                      ; 2B79 _ 88. 45, E4
        mov     eax, edx                                ; 2B7C _ 89. D0
        mov     byte [ebp-20H], al                      ; 2B7E _ 88. 45, E0
        call    _task_now                               ; 2B81 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 2B86 _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 2B89 _ 8B. 45, F4
        mov     ebx, dword [eax+9CH]                    ; 2B8C _ 8B. 98, 0000009C
        mov     eax, dword [ebp-0CH]                    ; 2B92 _ 8B. 45, F4
        mov     ecx, dword [eax+98H]                    ; 2B95 _ 8B. 88, 00000098
        mov     eax, dword [ebp-0CH]                    ; 2B9B _ 8B. 45, F4
        mov     edx, dword [eax+94H]                    ; 2B9E _ 8B. 90, 00000094
        mov     eax, dword [_shtctl]                    ; 2BA4 _ A1, 00000264(d)
        mov     dword [esp+10H], 0                      ; 2BA9 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], ebx                    ; 2BB1 _ 89. 5C 24, 0C
        mov     dword [esp+8H], ecx                     ; 2BB5 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 2BB9 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2BBD _ 89. 04 24
        call    _set_cursor                             ; 2BC0 _ E8, FFFFDDDE
        mov     edx, dword [ebp-0CH]                    ; 2BC5 _ 8B. 55, F4
        movzx   eax, byte [ebp-1CH]                     ; 2BC8 _ 0F B6. 45, E4
        mov     byte [edx+0A4H], al                     ; 2BCC _ 88. 82, 000000A4
        mov     eax, dword [ebp-0CH]                    ; 2BD2 _ 8B. 45, F4
        mov     byte [eax+0A5H], 0                      ; 2BD5 _ C6. 80, 000000A5, 00
        mov     eax, dword [ebp-0CH]                    ; 2BDC _ 8B. 45, F4
        lea     esi, [eax+0A4H]                         ; 2BDF _ 8D. B0, 000000A4
        mov     eax, dword [ebp-0CH]                    ; 2BE5 _ 8B. 45, F4
        mov     ebx, dword [eax+9CH]                    ; 2BE8 _ 8B. 98, 0000009C
        mov     eax, dword [ebp-0CH]                    ; 2BEE _ 8B. 45, F4
        mov     ecx, dword [eax+98H]                    ; 2BF1 _ 8B. 88, 00000098
        mov     eax, dword [ebp-0CH]                    ; 2BF7 _ 8B. 45, F4
        mov     edx, dword [eax+94H]                    ; 2BFA _ 8B. 90, 00000094
        mov     eax, dword [_shtctl]                    ; 2C00 _ A1, 00000264(d)
        mov     dword [esp+14H], esi                    ; 2C05 _ 89. 74 24, 14
        mov     dword [esp+10H], 7                      ; 2C09 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ebx                    ; 2C11 _ 89. 5C 24, 0C
        mov     dword [esp+8H], ecx                     ; 2C15 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 2C19 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2C1D _ 89. 04 24
        call    _showString                             ; 2C20 _ E8, 0000056B
        mov     eax, dword [ebp-0CH]                    ; 2C25 _ 8B. 45, F4
        mov     eax, dword [eax+98H]                    ; 2C28 _ 8B. 80, 00000098
        lea     edx, [eax+8H]                           ; 2C2E _ 8D. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 2C31 _ 8B. 45, F4
        mov     dword [eax+98H], edx                    ; 2C34 _ 89. 90, 00000098
        nop                                             ; 2C3A _ 90
        add     esp, 64                                 ; 2C3B _ 83. C4, 40
        pop     ebx                                     ; 2C3E _ 5B
        pop     esi                                     ; 2C3F _ 5E
        pop     ebp                                     ; 2C40 _ 5D
        ret                                             ; 2C41 _ C3
; _cons_putchar End of function

_cons_newline:; Function begin
        push    ebp                                     ; 2C42 _ 55
        mov     ebp, esp                                ; 2C43 _ 89. E5
        push    ebx                                     ; 2C45 _ 53
        sub     esp, 52                                 ; 2C46 _ 83. EC, 34
        cmp     dword [ebp+0CH], 0                      ; 2C49 _ 83. 7D, 0C, 00
        je      ?_176                                   ; 2C4D _ 0F 84, 00000125
        cmp     dword [ebp+8H], 139                     ; 2C53 _ 81. 7D, 08, 0000008B
        jg      ?_166                                   ; 2C5A _ 7F, 09
        add     dword [ebp+8H], 16                      ; 2C5C _ 83. 45, 08, 10
        jmp     ?_175                                   ; 2C60 _ E9, 000000DB

?_166:  mov     dword [ebp-10H], 28                     ; 2C65 _ C7. 45, F0, 0000001C
        jmp     ?_170                                   ; 2C6C _ EB, 50

?_167:  mov     dword [ebp-0CH], 8                      ; 2C6E _ C7. 45, F4, 00000008
        jmp     ?_169                                   ; 2C75 _ EB, 3A

?_168:  mov     eax, dword [ebp+0CH]                    ; 2C77 _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 2C7A _ 8B. 10
        mov     eax, dword [ebp-10H]                    ; 2C7C _ 8B. 45, F0
        lea     ecx, [eax+10H]                          ; 2C7F _ 8D. 48, 10
        mov     eax, dword [ebp+0CH]                    ; 2C82 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2C85 _ 8B. 40, 04
        imul    eax, ecx                                ; 2C88 _ 0F AF. C1
        mov     ecx, dword [ebp-0CH]                    ; 2C8B _ 8B. 4D, F4
        add     eax, ecx                                ; 2C8E _ 01. C8
        add     eax, edx                                ; 2C90 _ 01. D0
        mov     edx, dword [ebp+0CH]                    ; 2C92 _ 8B. 55, 0C
        mov     ecx, dword [edx]                        ; 2C95 _ 8B. 0A
        mov     edx, dword [ebp+0CH]                    ; 2C97 _ 8B. 55, 0C
        mov     edx, dword [edx+4H]                     ; 2C9A _ 8B. 52, 04
        imul    edx, dword [ebp-10H]                    ; 2C9D _ 0F AF. 55, F0
        mov     ebx, dword [ebp-0CH]                    ; 2CA1 _ 8B. 5D, F4
        add     edx, ebx                                ; 2CA4 _ 01. DA
        add     edx, ecx                                ; 2CA6 _ 01. CA
        movzx   eax, byte [eax]                         ; 2CA8 _ 0F B6. 00
        mov     byte [edx], al                          ; 2CAB _ 88. 02
        add     dword [ebp-0CH], 1                      ; 2CAD _ 83. 45, F4, 01
?_169:  cmp     dword [ebp-0CH], 247                    ; 2CB1 _ 81. 7D, F4, 000000F7
        jle     ?_168                                   ; 2CB8 _ 7E, BD
        add     dword [ebp-10H], 1                      ; 2CBA _ 83. 45, F0, 01
?_170:  cmp     dword [ebp-10H], 139                    ; 2CBE _ 81. 7D, F0, 0000008B
        jle     ?_167                                   ; 2CC5 _ 7E, A7
        mov     dword [ebp-10H], 140                    ; 2CC7 _ C7. 45, F0, 0000008C
        jmp     ?_174                                   ; 2CCE _ EB, 33

?_171:  mov     dword [ebp-0CH], 8                      ; 2CD0 _ C7. 45, F4, 00000008
        jmp     ?_173                                   ; 2CD7 _ EB, 1D

?_172:  mov     eax, dword [ebp+0CH]                    ; 2CD9 _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 2CDC _ 8B. 10
        mov     eax, dword [ebp+0CH]                    ; 2CDE _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2CE1 _ 8B. 40, 04
        imul    eax, dword [ebp-10H]                    ; 2CE4 _ 0F AF. 45, F0
        mov     ecx, dword [ebp-0CH]                    ; 2CE8 _ 8B. 4D, F4
        add     eax, ecx                                ; 2CEB _ 01. C8
        add     eax, edx                                ; 2CED _ 01. D0
        mov     byte [eax], 0                           ; 2CEF _ C6. 00, 00
        add     dword [ebp-0CH], 1                      ; 2CF2 _ 83. 45, F4, 01
?_173:  cmp     dword [ebp-0CH], 247                    ; 2CF6 _ 81. 7D, F4, 000000F7
        jle     ?_172                                   ; 2CFD _ 7E, DA
        add     dword [ebp-10H], 1                      ; 2CFF _ 83. 45, F0, 01
?_174:  cmp     dword [ebp-10H], 155                    ; 2D03 _ 81. 7D, F0, 0000009B
        jle     ?_171                                   ; 2D0A _ 7E, C4
        mov     eax, dword [_shtctl]                    ; 2D0C _ A1, 00000264(d)
        mov     dword [esp+14H], 156                    ; 2D11 _ C7. 44 24, 14, 0000009C
        mov     dword [esp+10H], 248                    ; 2D19 _ C7. 44 24, 10, 000000F8
        mov     dword [esp+0CH], 28                     ; 2D21 _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 8                       ; 2D29 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp+0CH]                    ; 2D31 _ 8B. 55, 0C
        mov     dword [esp+4H], edx                     ; 2D34 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2D38 _ 89. 04 24
        call    _sheet_refresh                          ; 2D3B _ E8, 00000000(rel)
?_175:  mov     eax, dword [_shtctl]                    ; 2D40 _ A1, 00000264(d)
        mov     dword [esp+14H], ?_417                  ; 2D45 _ C7. 44 24, 14, 00000023(d)
        mov     dword [esp+10H], 7                      ; 2D4D _ C7. 44 24, 10, 00000007
        mov     edx, dword [ebp+8H]                     ; 2D55 _ 8B. 55, 08
        mov     dword [esp+0CH], edx                    ; 2D58 _ 89. 54 24, 0C
        mov     dword [esp+8H], 8                       ; 2D5C _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp+0CH]                    ; 2D64 _ 8B. 55, 0C
        mov     dword [esp+4H], edx                     ; 2D67 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2D6B _ 89. 04 24
        call    _showString                             ; 2D6E _ E8, 0000041D
        mov     eax, dword [ebp+8H]                     ; 2D73 _ 8B. 45, 08
        jmp     ?_177                                   ; 2D76 _ EB, 02

?_176:  nop                                             ; 2D78 _ 90
        nop                                             ; 2D79 _ 90
?_177:  add     esp, 52                                 ; 2D7A _ 83. C4, 34
        pop     ebx                                     ; 2D7D _ 5B
        pop     ebp                                     ; 2D7E _ 5D
        ret                                             ; 2D7F _ C3
; _cons_newline End of function

_init_screen8:; Function begin
        push    ebp                                     ; 2D80 _ 55
        mov     ebp, esp                                ; 2D81 _ 89. E5
        push    ebx                                     ; 2D83 _ 53
        sub     esp, 36                                 ; 2D84 _ 83. EC, 24
        mov     eax, dword [ebp+10H]                    ; 2D87 _ 8B. 45, 10
        lea     edx, [eax-1DH]                          ; 2D8A _ 8D. 50, E3
        mov     eax, dword [ebp+0CH]                    ; 2D8D _ 8B. 45, 0C
        sub     eax, 1                                  ; 2D90 _ 83. E8, 01
        mov     dword [esp+18H], edx                    ; 2D93 _ 89. 54 24, 18
        mov     dword [esp+14H], eax                    ; 2D97 _ 89. 44 24, 14
        mov     dword [esp+10H], 0                      ; 2D9B _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 2DA3 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 14                      ; 2DAB _ C7. 44 24, 08, 0000000E
        mov     eax, dword [ebp+0CH]                    ; 2DB3 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2DB6 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2DBA _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2DBD _ 89. 04 24
        call    _boxfill8                               ; 2DC0 _ E8, 00000A98
        mov     eax, dword [ebp+10H]                    ; 2DC5 _ 8B. 45, 10
        lea     ecx, [eax-1CH]                          ; 2DC8 _ 8D. 48, E4
        mov     eax, dword [ebp+0CH]                    ; 2DCB _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 2DCE _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 2DD1 _ 8B. 45, 10
        sub     eax, 28                                 ; 2DD4 _ 83. E8, 1C
        mov     dword [esp+18H], ecx                    ; 2DD7 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 2DDB _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 2DDF _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 2DE3 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 2DEB _ C7. 44 24, 08, 00000008
        mov     eax, dword [ebp+0CH]                    ; 2DF3 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2DF6 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2DFA _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2DFD _ 89. 04 24
        call    _boxfill8                               ; 2E00 _ E8, 00000A58
        mov     eax, dword [ebp+10H]                    ; 2E05 _ 8B. 45, 10
        lea     ecx, [eax-1BH]                          ; 2E08 _ 8D. 48, E5
        mov     eax, dword [ebp+0CH]                    ; 2E0B _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 2E0E _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 2E11 _ 8B. 45, 10
        sub     eax, 27                                 ; 2E14 _ 83. E8, 1B
        mov     dword [esp+18H], ecx                    ; 2E17 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 2E1B _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 2E1F _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 2E23 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 7                       ; 2E2B _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 2E33 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2E36 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2E3A _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2E3D _ 89. 04 24
        call    _boxfill8                               ; 2E40 _ E8, 00000A18
        mov     eax, dword [ebp+10H]                    ; 2E45 _ 8B. 45, 10
        lea     ecx, [eax-1H]                           ; 2E48 _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 2E4B _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 2E4E _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 2E51 _ 8B. 45, 10
        sub     eax, 26                                 ; 2E54 _ 83. E8, 1A
        mov     dword [esp+18H], ecx                    ; 2E57 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 2E5B _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 2E5F _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 2E63 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 2E6B _ C7. 44 24, 08, 00000008
        mov     eax, dword [ebp+0CH]                    ; 2E73 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2E76 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2E7A _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2E7D _ 89. 04 24
        call    _boxfill8                               ; 2E80 _ E8, 000009D8
        mov     eax, dword [ebp+10H]                    ; 2E85 _ 8B. 45, 10
        lea     edx, [eax-18H]                          ; 2E88 _ 8D. 50, E8
        mov     eax, dword [ebp+10H]                    ; 2E8B _ 8B. 45, 10
        sub     eax, 24                                 ; 2E8E _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 2E91 _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 2E95 _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 2E9D _ 89. 44 24, 10
        mov     dword [esp+0CH], 3                      ; 2EA1 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 7                       ; 2EA9 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 2EB1 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2EB4 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2EB8 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2EBB _ 89. 04 24
        call    _boxfill8                               ; 2EBE _ E8, 0000099A
        mov     eax, dword [ebp+10H]                    ; 2EC3 _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 2EC6 _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 2EC9 _ 8B. 45, 10
        sub     eax, 24                                 ; 2ECC _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 2ECF _ 89. 54 24, 18
        mov     dword [esp+14H], 2                      ; 2ED3 _ C7. 44 24, 14, 00000002
        mov     dword [esp+10H], eax                    ; 2EDB _ 89. 44 24, 10
        mov     dword [esp+0CH], 2                      ; 2EDF _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 7                       ; 2EE7 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 2EEF _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2EF2 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2EF6 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2EF9 _ 89. 04 24
        call    _boxfill8                               ; 2EFC _ E8, 0000095C
        mov     eax, dword [ebp+10H]                    ; 2F01 _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 2F04 _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 2F07 _ 8B. 45, 10
        sub     eax, 4                                  ; 2F0A _ 83. E8, 04
        mov     dword [esp+18H], edx                    ; 2F0D _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 2F11 _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 2F19 _ 89. 44 24, 10
        mov     dword [esp+0CH], 3                      ; 2F1D _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 15                      ; 2F25 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 2F2D _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2F30 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2F34 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2F37 _ 89. 04 24
        call    _boxfill8                               ; 2F3A _ E8, 0000091E
        mov     eax, dword [ebp+10H]                    ; 2F3F _ 8B. 45, 10
        lea     edx, [eax-5H]                           ; 2F42 _ 8D. 50, FB
        mov     eax, dword [ebp+10H]                    ; 2F45 _ 8B. 45, 10
        sub     eax, 23                                 ; 2F48 _ 83. E8, 17
        mov     dword [esp+18H], edx                    ; 2F4B _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 2F4F _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 2F57 _ 89. 44 24, 10
        mov     dword [esp+0CH], 59                     ; 2F5B _ C7. 44 24, 0C, 0000003B
        mov     dword [esp+8H], 15                      ; 2F63 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 2F6B _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2F6E _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2F72 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2F75 _ 89. 04 24
        call    _boxfill8                               ; 2F78 _ E8, 000008E0
        mov     eax, dword [ebp+10H]                    ; 2F7D _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 2F80 _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 2F83 _ 8B. 45, 10
        sub     eax, 3                                  ; 2F86 _ 83. E8, 03
        mov     dword [esp+18H], edx                    ; 2F89 _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 2F8D _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 2F95 _ 89. 44 24, 10
        mov     dword [esp+0CH], 2                      ; 2F99 _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 0                       ; 2FA1 _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp+0CH]                    ; 2FA9 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2FAC _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2FB0 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2FB3 _ 89. 04 24
        call    _boxfill8                               ; 2FB6 _ E8, 000008A2
        mov     eax, dword [ebp+10H]                    ; 2FBB _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 2FBE _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 2FC1 _ 8B. 45, 10
        sub     eax, 24                                 ; 2FC4 _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 2FC7 _ 89. 54 24, 18
        mov     dword [esp+14H], 60                     ; 2FCB _ C7. 44 24, 14, 0000003C
        mov     dword [esp+10H], eax                    ; 2FD3 _ 89. 44 24, 10
        mov     dword [esp+0CH], 60                     ; 2FD7 _ C7. 44 24, 0C, 0000003C
        mov     dword [esp+8H], 0                       ; 2FDF _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp+0CH]                    ; 2FE7 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2FEA _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2FEE _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2FF1 _ 89. 04 24
        call    _boxfill8                               ; 2FF4 _ E8, 00000864
        mov     eax, dword [ebp+10H]                    ; 2FF9 _ 8B. 45, 10
        lea     ebx, [eax-18H]                          ; 2FFC _ 8D. 58, E8
        mov     eax, dword [ebp+0CH]                    ; 2FFF _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 3002 _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 3005 _ 8B. 45, 10
        lea     edx, [eax-18H]                          ; 3008 _ 8D. 50, E8
        mov     eax, dword [ebp+0CH]                    ; 300B _ 8B. 45, 0C
        sub     eax, 47                                 ; 300E _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 3011 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 3015 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 3019 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 301D _ 89. 44 24, 0C
        mov     dword [esp+8H], 15                      ; 3021 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 3029 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 302C _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3030 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3033 _ 89. 04 24
        call    _boxfill8                               ; 3036 _ E8, 00000822
        mov     eax, dword [ebp+10H]                    ; 303B _ 8B. 45, 10
        lea     ebx, [eax-4H]                           ; 303E _ 8D. 58, FC
        mov     eax, dword [ebp+0CH]                    ; 3041 _ 8B. 45, 0C
        lea     ecx, [eax-2FH]                          ; 3044 _ 8D. 48, D1
        mov     eax, dword [ebp+10H]                    ; 3047 _ 8B. 45, 10
        lea     edx, [eax-17H]                          ; 304A _ 8D. 50, E9
        mov     eax, dword [ebp+0CH]                    ; 304D _ 8B. 45, 0C
        sub     eax, 47                                 ; 3050 _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 3053 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 3057 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 305B _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 305F _ 89. 44 24, 0C
        mov     dword [esp+8H], 15                      ; 3063 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 306B _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 306E _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3072 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3075 _ 89. 04 24
        call    _boxfill8                               ; 3078 _ E8, 000007E0
        mov     eax, dword [ebp+10H]                    ; 307D _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 3080 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 3083 _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 3086 _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 3089 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 308C _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 308F _ 8B. 45, 0C
        sub     eax, 47                                 ; 3092 _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 3095 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 3099 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 309D _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 30A1 _ 89. 44 24, 0C
        mov     dword [esp+8H], 7                       ; 30A5 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 30AD _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 30B0 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 30B4 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 30B7 _ 89. 04 24
        call    _boxfill8                               ; 30BA _ E8, 0000079E
        mov     eax, dword [ebp+10H]                    ; 30BF _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 30C2 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 30C5 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 30C8 _ 8D. 48, FD
        mov     eax, dword [ebp+10H]                    ; 30CB _ 8B. 45, 10
        lea     edx, [eax-18H]                          ; 30CE _ 8D. 50, E8
        mov     eax, dword [ebp+0CH]                    ; 30D1 _ 8B. 45, 0C
        sub     eax, 3                                  ; 30D4 _ 83. E8, 03
        mov     dword [esp+18H], ebx                    ; 30D7 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 30DB _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 30DF _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 30E3 _ 89. 44 24, 0C
        mov     dword [esp+8H], 7                       ; 30E7 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 30EF _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 30F2 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 30F6 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 30F9 _ 89. 04 24
        call    _boxfill8                               ; 30FC _ E8, 0000075C
        nop                                             ; 3101 _ 90
        add     esp, 36                                 ; 3102 _ 83. C4, 24
        pop     ebx                                     ; 3105 _ 5B
        pop     ebp                                     ; 3106 _ 5D
        ret                                             ; 3107 _ C3
; _init_screen8 End of function

_computeMousePosition:; Function begin
        push    ebp                                     ; 3108 _ 55
        mov     ebp, esp                                ; 3109 _ 89. E5
        mov     eax, dword [ebp+10H]                    ; 310B _ 8B. 45, 10
        mov     edx, dword [eax+4H]                     ; 310E _ 8B. 50, 04
        mov     eax, dword [_mx]                        ; 3111 _ A1, 00000134(d)
        add     eax, edx                                ; 3116 _ 01. D0
        mov     dword [_mx], eax                        ; 3118 _ A3, 00000134(d)
        mov     eax, dword [ebp+10H]                    ; 311D _ 8B. 45, 10
        mov     edx, dword [eax+8H]                     ; 3120 _ 8B. 50, 08
        mov     eax, dword [_my]                        ; 3123 _ A1, 00000138(d)
        add     eax, edx                                ; 3128 _ 01. D0
        mov     dword [_my], eax                        ; 312A _ A3, 00000138(d)
        mov     eax, dword [_mx]                        ; 312F _ A1, 00000134(d)
        test    eax, eax                                ; 3134 _ 85. C0
        jns     ?_178                                   ; 3136 _ 79, 0A
        mov     dword [_mx], 0                          ; 3138 _ C7. 05, 00000134(d), 00000000
?_178:  mov     eax, dword [_my]                        ; 3142 _ A1, 00000138(d)
        test    eax, eax                                ; 3147 _ 85. C0
        jns     ?_179                                   ; 3149 _ 79, 0A
        mov     dword [_my], 0                          ; 314B _ C7. 05, 00000138(d), 00000000
?_179:  mov     edx, dword [_xsize]                     ; 3155 _ 8B. 15, 0000013C(d)
        mov     eax, dword [_mx]                        ; 315B _ A1, 00000134(d)
        cmp     edx, eax                                ; 3160 _ 39. C2
        jg      ?_180                                   ; 3162 _ 7F, 0D
        mov     eax, dword [_xsize]                     ; 3164 _ A1, 0000013C(d)
        sub     eax, 1                                  ; 3169 _ 83. E8, 01
        mov     dword [_mx], eax                        ; 316C _ A3, 00000134(d)
?_180:  mov     edx, dword [_ysize]                     ; 3171 _ 8B. 15, 00000140(d)
        mov     eax, dword [_my]                        ; 3177 _ A1, 00000138(d)
        cmp     edx, eax                                ; 317C _ 39. C2
        jg      ?_181                                   ; 317E _ 7F, 0D
        mov     eax, dword [_ysize]                     ; 3180 _ A1, 00000140(d)
        sub     eax, 1                                  ; 3185 _ 83. E8, 01
        mov     dword [_my], eax                        ; 3188 _ A3, 00000138(d)
?_181:  nop                                             ; 318D _ 90
        pop     ebp                                     ; 318E _ 5D
        ret                                             ; 318F _ C3
; _computeMousePosition End of function

_showString:; Function begin
        push    ebp                                     ; 3190 _ 55
        mov     ebp, esp                                ; 3191 _ 89. E5
        push    ebx                                     ; 3193 _ 53
        sub     esp, 68                                 ; 3194 _ 83. EC, 44
        mov     eax, dword [ebp+18H]                    ; 3197 _ 8B. 45, 18
        mov     byte [ebp-1CH], al                      ; 319A _ 88. 45, E4
        cmp     dword [ebp+8H], 0                       ; 319D _ 83. 7D, 08, 00
        je      ?_184                                   ; 31A1 _ 0F 84, 000000A1
        cmp     dword [ebp+0CH], 0                      ; 31A7 _ 83. 7D, 0C, 00
        je      ?_184                                   ; 31AB _ 0F 84, 00000097
        mov     eax, dword [ebp+10H]                    ; 31B1 _ 8B. 45, 10
        mov     dword [ebp-0CH], eax                    ; 31B4 _ 89. 45, F4
        mov     dword [ebp-10H], 0                      ; 31B7 _ C7. 45, F0, 00000000
        jmp     ?_183                                   ; 31BE _ EB, 4B

?_182:  mov     eax, dword [ebp+1CH]                    ; 31C0 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 31C3 _ 0F B6. 00
        movzx   eax, al                                 ; 31C6 _ 0F B6. C0
        shl     eax, 4                                  ; 31C9 _ C1. E0, 04
        lea     ebx, [_systemFont+eax]                  ; 31CC _ 8D. 98, 00000000(d)
        movsx   eax, byte [ebp-1CH]                     ; 31D2 _ 0F BE. 45, E4
        mov     edx, dword [ebp+0CH]                    ; 31D6 _ 8B. 55, 0C
        mov     ecx, dword [edx+4H]                     ; 31D9 _ 8B. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 31DC _ 8B. 55, 0C
        mov     edx, dword [edx]                        ; 31DF _ 8B. 12
        mov     dword [esp+14H], ebx                    ; 31E1 _ 89. 5C 24, 14
        mov     dword [esp+10H], eax                    ; 31E5 _ 89. 44 24, 10
        mov     eax, dword [ebp+14H]                    ; 31E9 _ 8B. 45, 14
        mov     dword [esp+0CH], eax                    ; 31EC _ 89. 44 24, 0C
        mov     eax, dword [ebp+10H]                    ; 31F0 _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 31F3 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 31F7 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 31FB _ 89. 14 24
        call    _showFont8                              ; 31FE _ E8, 000006AA
        add     dword [ebp+10H], 8                      ; 3203 _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 3207 _ 83. 45, 1C, 01
?_183:  mov     eax, dword [ebp+1CH]                    ; 320B _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 320E _ 0F B6. 00
        test    al, al                                  ; 3211 _ 84. C0
        jnz     ?_182                                   ; 3213 _ 75, AB
        mov     eax, dword [ebp+14H]                    ; 3215 _ 8B. 45, 14
        add     eax, 16                                 ; 3218 _ 83. C0, 10
        mov     dword [esp+14H], eax                    ; 321B _ 89. 44 24, 14
        mov     eax, dword [ebp+10H]                    ; 321F _ 8B. 45, 10
        mov     dword [esp+10H], eax                    ; 3222 _ 89. 44 24, 10
        mov     eax, dword [ebp+14H]                    ; 3226 _ 8B. 45, 14
        mov     dword [esp+0CH], eax                    ; 3229 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 322D _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 3230 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 3234 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 3237 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 323B _ 8B. 45, 08
        mov     dword [esp], eax                        ; 323E _ 89. 04 24
        call    _sheet_refresh                          ; 3241 _ E8, 00000000(rel)
        jmp     ?_185                                   ; 3246 _ EB, 01

?_184:  nop                                             ; 3248 _ 90
?_185:  add     esp, 68                                 ; 3249 _ 83. C4, 44
        pop     ebx                                     ; 324C _ 5B
        pop     ebp                                     ; 324D _ 5D
        ret                                             ; 324E _ C3
; _showString End of function

_show_mouse_info:; Function begin
        push    ebp                                     ; 324F _ 55
        mov     ebp, esp                                ; 3250 _ 89. E5
        sub     esp, 72                                 ; 3252 _ 83. EC, 48
        mov     eax, dword [_buf_back]                  ; 3255 _ A1, 00000144(d)
        mov     dword [ebp-10H], eax                    ; 325A _ 89. 45, F0
        mov     byte [ebp-11H], 0                       ; 325D _ C6. 45, EF, 00
        mov     dword [ebp-18H], 0                      ; 3261 _ C7. 45, E8, 00000000
        call    _io_sti                                 ; 3268 _ E8, 00000000(rel)
        mov     dword [esp], _mouseinfo                 ; 326D _ C7. 04 24, 00000038(d)
        call    _fifo8_get                              ; 3274 _ E8, 00000000(rel)
        mov     byte [ebp-11H], al                      ; 3279 _ 88. 45, EF
        movzx   eax, byte [ebp-11H]                     ; 327C _ 0F B6. 45, EF
        mov     dword [esp+4H], eax                     ; 3280 _ 89. 44 24, 04
        mov     dword [esp], _mdec                      ; 3284 _ C7. 04 24, 00000100(d)
        call    _mouse_decode                           ; 328B _ E8, 00000B41
        test    eax, eax                                ; 3290 _ 85. C0
        je      ?_196                                   ; 3292 _ 0F 84, 0000039C
        mov     dword [esp+8H], _mdec                   ; 3298 _ C7. 44 24, 08, 00000100(d)
        mov     eax, dword [ebp+0CH]                    ; 32A0 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 32A3 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 32A7 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 32AA _ 89. 04 24
        call    _computeMousePosition                   ; 32AD _ E8, FFFFFE56
        mov     edx, dword [_my]                        ; 32B2 _ 8B. 15, 00000138(d)
        mov     eax, dword [_mx]                        ; 32B8 _ A1, 00000134(d)
        mov     dword [esp+0CH], edx                    ; 32BD _ 89. 54 24, 0C
        mov     dword [esp+8H], eax                     ; 32C1 _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 32C5 _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 32C8 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 32CC _ 8B. 45, 08
        mov     dword [esp], eax                        ; 32CF _ 89. 04 24
        call    _sheet_slide                            ; 32D2 _ E8, 00000000(rel)
        mov     eax, dword [?_444]                      ; 32D7 _ A1, 0000010C(d)
        and     eax, 01H                                ; 32DC _ 83. E0, 01
        test    eax, eax                                ; 32DF _ 85. C0
        je      ?_194                                   ; 32E1 _ 0F 84, 00000340
        mov     eax, dword [_mmx]                       ; 32E7 _ A1, 00000118(d)
        test    eax, eax                                ; 32EC _ 85. C0
        jns     ?_193                                   ; 32EE _ 0F 89, 000002C2
        mov     eax, dword [ebp+8H]                     ; 32F4 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 32F7 _ 8B. 40, 10
        sub     eax, 1                                  ; 32FA _ 83. E8, 01
        mov     dword [ebp-0CH], eax                    ; 32FD _ 89. 45, F4
        jmp     ?_192                                   ; 3300 _ E9, 000002A5

?_186:  mov     eax, dword [ebp+8H]                     ; 3305 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 3308 _ 8B. 55, F4
        add     edx, 4                                  ; 330B _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 330E _ 8B. 44 90, 04
        mov     dword [ebp-18H], eax                    ; 3312 _ 89. 45, E8
        mov     edx, dword [_mx]                        ; 3315 _ 8B. 15, 00000134(d)
        mov     eax, dword [ebp-18H]                    ; 331B _ 8B. 45, E8
        mov     eax, dword [eax+0CH]                    ; 331E _ 8B. 40, 0C
        sub     edx, eax                                ; 3321 _ 29. C2
        mov     eax, edx                                ; 3323 _ 89. D0
        mov     dword [ebp-1CH], eax                    ; 3325 _ 89. 45, E4
        mov     edx, dword [_my]                        ; 3328 _ 8B. 15, 00000138(d)
        mov     eax, dword [ebp-18H]                    ; 332E _ 8B. 45, E8
        mov     eax, dword [eax+10H]                    ; 3331 _ 8B. 40, 10
        sub     edx, eax                                ; 3334 _ 29. C2
        mov     eax, edx                                ; 3336 _ 89. D0
        mov     dword [ebp-20H], eax                    ; 3338 _ 89. 45, E0
        cmp     dword [ebp-1CH], 0                      ; 333B _ 83. 7D, E4, 00
        js      ?_191                                   ; 333F _ 0F 88, 00000261
        mov     eax, dword [ebp-18H]                    ; 3345 _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 3348 _ 8B. 40, 04
        cmp     dword [ebp-1CH], eax                    ; 334B _ 39. 45, E4
        jge     ?_191                                   ; 334E _ 0F 8D, 00000252
        cmp     dword [ebp-20H], 0                      ; 3354 _ 83. 7D, E0, 00
        js      ?_191                                   ; 3358 _ 0F 88, 00000248
        mov     eax, dword [ebp-18H]                    ; 335E _ 8B. 45, E8
        mov     eax, dword [eax+8H]                     ; 3361 _ 8B. 40, 08
        cmp     dword [ebp-20H], eax                    ; 3364 _ 39. 45, E0
        jge     ?_191                                   ; 3367 _ 0F 8D, 00000239
        mov     eax, dword [ebp-18H]                    ; 336D _ 8B. 45, E8
        mov     edx, dword [eax]                        ; 3370 _ 8B. 10
        mov     eax, dword [ebp-18H]                    ; 3372 _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 3375 _ 8B. 40, 04
        imul    eax, dword [ebp-20H]                    ; 3378 _ 0F AF. 45, E0
        mov     ecx, dword [ebp-1CH]                    ; 337C _ 8B. 4D, E4
        add     eax, ecx                                ; 337F _ 01. C8
        add     eax, edx                                ; 3381 _ 01. D0
        movzx   eax, byte [eax]                         ; 3383 _ 0F B6. 00
        movzx   eax, al                                 ; 3386 _ 0F B6. C0
        mov     edx, dword [ebp-18H]                    ; 3389 _ 8B. 55, E8
        mov     edx, dword [edx+14H]                    ; 338C _ 8B. 52, 14
        cmp     eax, edx                                ; 338F _ 39. D0
        je      ?_191                                   ; 3391 _ 0F 84, 0000020F
        mov     eax, dword [_current_console_task]      ; 3397 _ A1, 00000278(d)
        mov     eax, dword [eax+0B4H]                   ; 339C _ 8B. 80, 000000B4
        test    eax, eax                                ; 33A2 _ 85. C0
        jz      ?_187                                   ; 33A4 _ 74, 68
        mov     eax, dword [_current_console_task]      ; 33A6 _ A1, 00000278(d)
        mov     eax, dword [eax+0B4H]                   ; 33AB _ 8B. 80, 000000B4
        mov     dword [esp+0CH], 0                      ; 33B1 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], ?_413                   ; 33B9 _ C7. 44 24, 08, 0000000F(d)
        mov     dword [esp+4H], eax                     ; 33C1 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 33C5 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 33C8 _ 89. 04 24
        call    _make_wtitle8                           ; 33CB _ E8, 0000110B
        mov     eax, dword [ebp-18H]                    ; 33D0 _ 8B. 45, E8
        mov     ecx, dword [eax+8H]                     ; 33D3 _ 8B. 48, 08
        mov     eax, dword [ebp-18H]                    ; 33D6 _ 8B. 45, E8
        mov     edx, dword [eax+4H]                     ; 33D9 _ 8B. 50, 04
        mov     eax, dword [_current_console_task]      ; 33DC _ A1, 00000278(d)
        mov     eax, dword [eax+0B4H]                   ; 33E1 _ 8B. 80, 000000B4
        mov     dword [esp+14H], ecx                    ; 33E7 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 33EB _ 89. 54 24, 10
        mov     dword [esp+0CH], 0                      ; 33EF _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 33F7 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], eax                     ; 33FF _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3403 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3406 _ 89. 04 24
        call    _sheet_refresh                          ; 3409 _ E8, 00000000(rel)
?_187:  mov     eax, dword [ebp-18H]                    ; 340E _ 8B. 45, E8
        mov     eax, dword [eax+20H]                    ; 3411 _ 8B. 40, 20
        mov     dword [_current_console_task], eax      ; 3414 _ A3, 00000278(d)
        mov     eax, dword [_current_console_task]      ; 3419 _ A1, 00000278(d)
        mov     eax, dword [eax+0B4H]                   ; 341E _ 8B. 80, 000000B4
        test    eax, eax                                ; 3424 _ 85. C0
        jnz     ?_188                                   ; 3426 _ 75, 32
        mov     dword [esp+14H], ?_431                  ; 3428 _ C7. 44 24, 14, 00000082(d)
        mov     dword [esp+10H], 7                      ; 3430 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 96                     ; 3438 _ C7. 44 24, 0C, 00000060
        mov     dword [esp+8H], 0                       ; 3440 _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp+0CH]                    ; 3448 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 344B _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 344F _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3452 _ 89. 04 24
        call    _showString                             ; 3455 _ E8, FFFFFD36
?_188:  mov     eax, dword [_current_console_task]      ; 345A _ A1, 00000278(d)
        mov     eax, dword [eax+0B4H]                   ; 345F _ 8B. 80, 000000B4
        test    eax, eax                                ; 3465 _ 85. C0
        jz      ?_189                                   ; 3467 _ 74, 60
        mov     eax, dword [_current_console_task]      ; 3469 _ A1, 00000278(d)
        mov     eax, dword [eax+0B4H]                   ; 346E _ 8B. 80, 000000B4
        mov     dword [esp+0CH], 1                      ; 3474 _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], ?_413                   ; 347C _ C7. 44 24, 08, 0000000F(d)
        mov     dword [esp+4H], eax                     ; 3484 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3488 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 348B _ 89. 04 24
        call    _make_wtitle8                           ; 348E _ E8, 00001048
        mov     eax, dword [ebp-18H]                    ; 3493 _ 8B. 45, E8
        mov     edx, dword [eax+8H]                     ; 3496 _ 8B. 50, 08
        mov     eax, dword [ebp-18H]                    ; 3499 _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 349C _ 8B. 40, 04
        mov     dword [esp+14H], edx                    ; 349F _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 34A3 _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 34A7 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 34AF _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp-18H]                    ; 34B7 _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 34BA _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 34BE _ 8B. 45, 08
        mov     dword [esp], eax                        ; 34C1 _ 89. 04 24
        call    _sheet_refresh                          ; 34C4 _ E8, 00000000(rel)
?_189:  mov     eax, dword [ebp+8H]                     ; 34C9 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 34CC _ 8B. 40, 10
        sub     eax, 1                                  ; 34CF _ 83. E8, 01
        mov     dword [esp+8H], eax                     ; 34D2 _ 89. 44 24, 08
        mov     eax, dword [ebp-18H]                    ; 34D6 _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 34D9 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 34DD _ 8B. 45, 08
        mov     dword [esp], eax                        ; 34E0 _ 89. 04 24
        call    _sheet_updown                           ; 34E3 _ E8, 00000000(rel)
        cmp     dword [ebp-1CH], 2                      ; 34E8 _ 83. 7D, E4, 02
        jle     ?_190                                   ; 34EC _ 7E, 36
        mov     eax, dword [ebp-18H]                    ; 34EE _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 34F1 _ 8B. 40, 04
        sub     eax, 3                                  ; 34F4 _ 83. E8, 03
        cmp     dword [ebp-1CH], eax                    ; 34F7 _ 39. 45, E4
        jge     ?_190                                   ; 34FA _ 7D, 28
        cmp     dword [ebp-20H], 2                      ; 34FC _ 83. 7D, E0, 02
        jle     ?_190                                   ; 3500 _ 7E, 22
        cmp     dword [ebp-20H], 20                     ; 3502 _ 83. 7D, E0, 14
        jg      ?_190                                   ; 3506 _ 7F, 1C
        mov     eax, dword [_mx]                        ; 3508 _ A1, 00000134(d)
        mov     dword [_mmx], eax                       ; 350D _ A3, 00000118(d)
        mov     eax, dword [_my]                        ; 3512 _ A1, 00000138(d)
        mov     dword [_mmy], eax                       ; 3517 _ A3, 0000011C(d)
        mov     eax, dword [ebp-18H]                    ; 351C _ 8B. 45, E8
        mov     dword [_mouse_clicked_sht], eax         ; 351F _ A3, 00000270(d)
?_190:  mov     eax, dword [ebp-18H]                    ; 3524 _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 3527 _ 8B. 40, 04
        sub     eax, 21                                 ; 352A _ 83. E8, 15
        cmp     dword [ebp-1CH], eax                    ; 352D _ 39. 45, E4
        jl      ?_195                                   ; 3530 _ 0F 8C, 000000FD
        mov     eax, dword [ebp-18H]                    ; 3536 _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 3539 _ 8B. 40, 04
        sub     eax, 5                                  ; 353C _ 83. E8, 05
        cmp     dword [ebp-1CH], eax                    ; 353F _ 39. 45, E4
        jge     ?_195                                   ; 3542 _ 0F 8D, 000000EB
        cmp     dword [ebp-20H], 4                      ; 3548 _ 83. 7D, E0, 04
        jle     ?_195                                   ; 354C _ 0F 8E, 000000E1
        cmp     dword [ebp-20H], 18                     ; 3552 _ 83. 7D, E0, 12
        jg      ?_195                                   ; 3556 _ 0F 8F, 000000D7
        mov     eax, dword [ebp-18H]                    ; 355C _ 8B. 45, E8
        mov     eax, dword [eax+20H]                    ; 355F _ 8B. 40, 20
        test    eax, eax                                ; 3562 _ 85. C0
        je      ?_195                                   ; 3564 _ 0F 84, 000000C9
        call    _io_cli                                 ; 356A _ E8, 00000000(rel)
        mov     eax, dword [ebp-18H]                    ; 356F _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 3572 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3576 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3579 _ 89. 04 24
        call    _sheet_free                             ; 357C _ E8, 00000000(rel)
        call    _get_addr_code32                        ; 3581 _ E8, 00000000(rel)
        mov     dword [ebp-24H], eax                    ; 3586 _ 89. 45, DC
        mov     ecx, _kill_process                      ; 3589 _ B9, 00000EF3(d)
        mov     eax, dword [ebp-18H]                    ; 358E _ 8B. 45, E8
        mov     edx, dword [eax+20H]                    ; 3591 _ 8B. 50, 20
        mov     eax, ecx                                ; 3594 _ 89. C8
        sub     eax, dword [ebp-24H]                    ; 3596 _ 2B. 45, DC
        mov     dword [edx+4CH], eax                    ; 3599 _ 89. 42, 4C
        call    _io_sti                                 ; 359C _ E8, 00000000(rel)
        jmp     ?_195                                   ; 35A1 _ E9, 0000008D

?_191:  sub     dword [ebp-0CH], 1                      ; 35A6 _ 83. 6D, F4, 01
?_192:  cmp     dword [ebp-0CH], 0                      ; 35AA _ 83. 7D, F4, 00
        jg      ?_186                                   ; 35AE _ 0F 8F, FFFFFD51
        jmp     ?_196                                   ; 35B4 _ EB, 7E

?_193:  mov     edx, dword [_mx]                        ; 35B6 _ 8B. 15, 00000134(d)
        mov     eax, dword [_mmx]                       ; 35BC _ A1, 00000118(d)
        sub     edx, eax                                ; 35C1 _ 29. C2
        mov     eax, edx                                ; 35C3 _ 89. D0
        mov     dword [ebp-1CH], eax                    ; 35C5 _ 89. 45, E4
        mov     edx, dword [_my]                        ; 35C8 _ 8B. 15, 00000138(d)
        mov     eax, dword [_mmy]                       ; 35CE _ A1, 0000011C(d)
        sub     edx, eax                                ; 35D3 _ 29. C2
        mov     eax, edx                                ; 35D5 _ 89. D0
        mov     dword [ebp-20H], eax                    ; 35D7 _ 89. 45, E0
        mov     eax, dword [_mouse_clicked_sht]         ; 35DA _ A1, 00000270(d)
        mov     edx, dword [eax+10H]                    ; 35DF _ 8B. 50, 10
        mov     eax, dword [ebp-20H]                    ; 35E2 _ 8B. 45, E0
        lea     ecx, [edx+eax]                          ; 35E5 _ 8D. 0C 02
        mov     eax, dword [_mouse_clicked_sht]         ; 35E8 _ A1, 00000270(d)
        mov     edx, dword [eax+0CH]                    ; 35ED _ 8B. 50, 0C
        mov     eax, dword [ebp-1CH]                    ; 35F0 _ 8B. 45, E4
        add     edx, eax                                ; 35F3 _ 01. C2
        mov     eax, dword [_mouse_clicked_sht]         ; 35F5 _ A1, 00000270(d)
        mov     dword [esp+0CH], ecx                    ; 35FA _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 35FE _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 3602 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3606 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3609 _ 89. 04 24
        call    _sheet_slide                            ; 360C _ E8, 00000000(rel)
        mov     eax, dword [_mx]                        ; 3611 _ A1, 00000134(d)
        mov     dword [_mmx], eax                       ; 3616 _ A3, 00000118(d)
        mov     eax, dword [_my]                        ; 361B _ A1, 00000138(d)
        mov     dword [_mmy], eax                       ; 3620 _ A3, 0000011C(d)
        jmp     ?_196                                   ; 3625 _ EB, 0D

?_194:  mov     dword [_mmx], -1                        ; 3627 _ C7. 05, 00000118(d), FFFFFFFF
        jmp     ?_196                                   ; 3631 _ EB, 01

?_195:  nop                                             ; 3633 _ 90
?_196:  nop                                             ; 3634 _ 90
        leave                                           ; 3635 _ C9
        ret                                             ; 3636 _ C3
; _show_mouse_info End of function

_initBootInfo:; Function begin
        push    ebp                                     ; 3637 _ 55
        mov     ebp, esp                                ; 3638 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 363A _ 8B. 45, 08
        mov     dword [eax], -536870912                 ; 363D _ C7. 00, E0000000
        mov     eax, dword [ebp+8H]                     ; 3643 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 640                      ; 3646 _ 66: C7. 40, 04, 0280
        mov     eax, dword [ebp+8H]                     ; 364C _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 480                      ; 364F _ 66: C7. 40, 06, 01E0
        nop                                             ; 3655 _ 90
        pop     ebp                                     ; 3656 _ 5D
        ret                                             ; 3657 _ C3
; _initBootInfo End of function

_init_palette:; Function begin
        push    ebp                                     ; 3658 _ 55
        mov     ebp, esp                                ; 3659 _ 89. E5
        push    ebx                                     ; 365B _ 53
        sub     esp, 692                                ; 365C _ 81. EC, 000002B4
        mov     dword [esp+8H], _table_rgb.2676         ; 3662 _ C7. 44 24, 08, 00000140(d)
        mov     dword [esp+4H], 15                      ; 366A _ C7. 44 24, 04, 0000000F
        mov     dword [esp], 0                          ; 3672 _ C7. 04 24, 00000000
        call    _set_palette                            ; 3679 _ E8, 00000139
        mov     dword [ebp-14H], 0                      ; 367E _ C7. 45, EC, 00000000
        jmp     ?_202                                   ; 3685 _ E9, 000000FB

?_197:  mov     dword [ebp-10H], 0                      ; 368A _ C7. 45, F0, 00000000
        jmp     ?_201                                   ; 3691 _ E9, 000000E1

?_198:  mov     dword [ebp-0CH], 0                      ; 3696 _ C7. 45, F4, 00000000
        jmp     ?_200                                   ; 369D _ E9, 000000C7

?_199:  mov     eax, dword [ebp-0CH]                    ; 36A2 _ 8B. 45, F4
        mov     ebx, eax                                ; 36A5 _ 89. C3
        mov     edx, dword [ebp-10H]                    ; 36A7 _ 8B. 55, F0
        mov     eax, edx                                ; 36AA _ 89. D0
        add     eax, eax                                ; 36AC _ 01. C0
        add     eax, edx                                ; 36AE _ 01. D0
        add     eax, eax                                ; 36B0 _ 01. C0
        mov     edx, eax                                ; 36B2 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 36B4 _ 8B. 45, F4
        lea     ecx, [edx+eax]                          ; 36B7 _ 8D. 0C 02
        mov     edx, dword [ebp-14H]                    ; 36BA _ 8B. 55, EC
        mov     eax, edx                                ; 36BD _ 89. D0
        shl     eax, 3                                  ; 36BF _ C1. E0, 03
        add     eax, edx                                ; 36C2 _ 01. D0
        shl     eax, 2                                  ; 36C4 _ C1. E0, 02
        lea     edx, [ecx+eax]                          ; 36C7 _ 8D. 14 01
        mov     eax, edx                                ; 36CA _ 89. D0
        add     eax, eax                                ; 36CC _ 01. C0
        add     edx, eax                                ; 36CE _ 01. C2
        mov     ecx, 51                                 ; 36D0 _ B9, 00000033
        mov     eax, ebx                                ; 36D5 _ 89. D8
        imul    eax, ecx                                ; 36D7 _ 0F AF. C1
        mov     byte [ebp+edx-29CH], al                 ; 36DA _ 88. 84 15, FFFFFD64
        mov     eax, dword [ebp-10H]                    ; 36E1 _ 8B. 45, F0
        mov     ebx, eax                                ; 36E4 _ 89. C3
        mov     edx, dword [ebp-10H]                    ; 36E6 _ 8B. 55, F0
        mov     eax, edx                                ; 36E9 _ 89. D0
        add     eax, eax                                ; 36EB _ 01. C0
        add     eax, edx                                ; 36ED _ 01. D0
        add     eax, eax                                ; 36EF _ 01. C0
        mov     edx, eax                                ; 36F1 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 36F3 _ 8B. 45, F4
        lea     ecx, [edx+eax]                          ; 36F6 _ 8D. 0C 02
        mov     edx, dword [ebp-14H]                    ; 36F9 _ 8B. 55, EC
        mov     eax, edx                                ; 36FC _ 89. D0
        shl     eax, 3                                  ; 36FE _ C1. E0, 03
        add     eax, edx                                ; 3701 _ 01. D0
        shl     eax, 2                                  ; 3703 _ C1. E0, 02
        lea     edx, [ecx+eax]                          ; 3706 _ 8D. 14 01
        mov     eax, edx                                ; 3709 _ 89. D0
        add     eax, eax                                ; 370B _ 01. C0
        add     eax, edx                                ; 370D _ 01. D0
        lea     edx, [eax+1H]                           ; 370F _ 8D. 50, 01
        mov     ecx, 51                                 ; 3712 _ B9, 00000033
        mov     eax, ebx                                ; 3717 _ 89. D8
        imul    eax, ecx                                ; 3719 _ 0F AF. C1
        mov     byte [ebp+edx-29CH], al                 ; 371C _ 88. 84 15, FFFFFD64
        mov     eax, dword [ebp-14H]                    ; 3723 _ 8B. 45, EC
        mov     ebx, eax                                ; 3726 _ 89. C3
        mov     edx, dword [ebp-10H]                    ; 3728 _ 8B. 55, F0
        mov     eax, edx                                ; 372B _ 89. D0
        add     eax, eax                                ; 372D _ 01. C0
        add     eax, edx                                ; 372F _ 01. D0
        add     eax, eax                                ; 3731 _ 01. C0
        mov     edx, eax                                ; 3733 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 3735 _ 8B. 45, F4
        lea     ecx, [edx+eax]                          ; 3738 _ 8D. 0C 02
        mov     edx, dword [ebp-14H]                    ; 373B _ 8B. 55, EC
        mov     eax, edx                                ; 373E _ 89. D0
        shl     eax, 3                                  ; 3740 _ C1. E0, 03
        add     eax, edx                                ; 3743 _ 01. D0
        shl     eax, 2                                  ; 3745 _ C1. E0, 02
        lea     edx, [ecx+eax]                          ; 3748 _ 8D. 14 01
        mov     eax, edx                                ; 374B _ 89. D0
        add     eax, eax                                ; 374D _ 01. C0
        add     eax, edx                                ; 374F _ 01. D0
        lea     edx, [eax+2H]                           ; 3751 _ 8D. 50, 02
        mov     ecx, 51                                 ; 3754 _ B9, 00000033
        mov     eax, ebx                                ; 3759 _ 89. D8
        imul    eax, ecx                                ; 375B _ 0F AF. C1
        mov     byte [ebp+edx-29CH], al                 ; 375E _ 88. 84 15, FFFFFD64
        add     dword [ebp-0CH], 1                      ; 3765 _ 83. 45, F4, 01
?_200:  cmp     dword [ebp-0CH], 5                      ; 3769 _ 83. 7D, F4, 05
        jle     ?_199                                   ; 376D _ 0F 8E, FFFFFF2F
        add     dword [ebp-10H], 1                      ; 3773 _ 83. 45, F0, 01
?_201:  cmp     dword [ebp-10H], 5                      ; 3777 _ 83. 7D, F0, 05
        jle     ?_198                                   ; 377B _ 0F 8E, FFFFFF15
        add     dword [ebp-14H], 1                      ; 3781 _ 83. 45, EC, 01
?_202:  cmp     dword [ebp-14H], 5                      ; 3785 _ 83. 7D, EC, 05
        jle     ?_197                                   ; 3789 _ 0F 8E, FFFFFEFB
        lea     eax, [ebp-29CH]                         ; 378F _ 8D. 85, FFFFFD64
        mov     dword [esp+8H], eax                     ; 3795 _ 89. 44 24, 08
        mov     dword [esp+4H], 231                     ; 3799 _ C7. 44 24, 04, 000000E7
        mov     dword [esp], 16                         ; 37A1 _ C7. 04 24, 00000010
        call    _set_palette                            ; 37A8 _ E8, 0000000A
        nop                                             ; 37AD _ 90
        add     esp, 692                                ; 37AE _ 81. C4, 000002B4
        pop     ebx                                     ; 37B4 _ 5B
        pop     ebp                                     ; 37B5 _ 5D
        ret                                             ; 37B6 _ C3
; _init_palette End of function

_set_palette:; Function begin
        push    ebp                                     ; 37B7 _ 55
        mov     ebp, esp                                ; 37B8 _ 89. E5
        sub     esp, 40                                 ; 37BA _ 83. EC, 28
        call    _io_load_eflags                         ; 37BD _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 37C2 _ 89. 45, F0
        call    _io_cli                                 ; 37C5 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 37CA _ 8B. 45, 08
        mov     dword [esp+4H], eax                     ; 37CD _ 89. 44 24, 04
        mov     dword [esp], 968                        ; 37D1 _ C7. 04 24, 000003C8
        call    _io_out8                                ; 37D8 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 37DD _ 8B. 45, 08
        mov     dword [ebp-0CH], eax                    ; 37E0 _ 89. 45, F4
        jmp     ?_204                                   ; 37E3 _ EB, 62

?_203:  mov     eax, dword [ebp+10H]                    ; 37E5 _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 37E8 _ 0F B6. 00
        shr     al, 2                                   ; 37EB _ C0. E8, 02
        movzx   eax, al                                 ; 37EE _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 37F1 _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 37F5 _ C7. 04 24, 000003C9
        call    _io_out8                                ; 37FC _ E8, 00000000(rel)
        mov     eax, dword [ebp+10H]                    ; 3801 _ 8B. 45, 10
        add     eax, 1                                  ; 3804 _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 3807 _ 0F B6. 00
        shr     al, 2                                   ; 380A _ C0. E8, 02
        movzx   eax, al                                 ; 380D _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 3810 _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 3814 _ C7. 04 24, 000003C9
        call    _io_out8                                ; 381B _ E8, 00000000(rel)
        mov     eax, dword [ebp+10H]                    ; 3820 _ 8B. 45, 10
        add     eax, 2                                  ; 3823 _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 3826 _ 0F B6. 00
        shr     al, 2                                   ; 3829 _ C0. E8, 02
        movzx   eax, al                                 ; 382C _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 382F _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 3833 _ C7. 04 24, 000003C9
        call    _io_out8                                ; 383A _ E8, 00000000(rel)
        add     dword [ebp+10H], 3                      ; 383F _ 83. 45, 10, 03
        add     dword [ebp-0CH], 1                      ; 3843 _ 83. 45, F4, 01
?_204:  mov     eax, dword [ebp-0CH]                    ; 3847 _ 8B. 45, F4
        cmp     eax, dword [ebp+0CH]                    ; 384A _ 3B. 45, 0C
        jle     ?_203                                   ; 384D _ 7E, 96
        mov     eax, dword [ebp-10H]                    ; 384F _ 8B. 45, F0
        mov     dword [esp], eax                        ; 3852 _ 89. 04 24
        call    _io_store_eflags                        ; 3855 _ E8, 00000000(rel)
        nop                                             ; 385A _ 90
        leave                                           ; 385B _ C9
        ret                                             ; 385C _ C3
; _set_palette End of function

_boxfill8:; Function begin
        push    ebp                                     ; 385D _ 55
        mov     ebp, esp                                ; 385E _ 89. E5
        sub     esp, 20                                 ; 3860 _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 3863 _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 3866 _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 3869 _ 8B. 45, 18
        mov     dword [ebp-8H], eax                     ; 386C _ 89. 45, F8
        jmp     ?_208                                   ; 386F _ EB, 31

?_205:  mov     eax, dword [ebp+14H]                    ; 3871 _ 8B. 45, 14
        mov     dword [ebp-4H], eax                     ; 3874 _ 89. 45, FC
        jmp     ?_207                                   ; 3877 _ EB, 1D

?_206:  mov     eax, dword [ebp-8H]                     ; 3879 _ 8B. 45, F8
        imul    eax, dword [ebp+0CH]                    ; 387C _ 0F AF. 45, 0C
        mov     edx, dword [ebp-4H]                     ; 3880 _ 8B. 55, FC
        add     eax, edx                                ; 3883 _ 01. D0
        mov     edx, eax                                ; 3885 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3887 _ 8B. 45, 08
        add     edx, eax                                ; 388A _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 388C _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 3890 _ 88. 02
        add     dword [ebp-4H], 1                       ; 3892 _ 83. 45, FC, 01
?_207:  mov     eax, dword [ebp-4H]                     ; 3896 _ 8B. 45, FC
        cmp     eax, dword [ebp+1CH]                    ; 3899 _ 3B. 45, 1C
        jle     ?_206                                   ; 389C _ 7E, DB
        add     dword [ebp-8H], 1                       ; 389E _ 83. 45, F8, 01
?_208:  mov     eax, dword [ebp-8H]                     ; 38A2 _ 8B. 45, F8
        cmp     eax, dword [ebp+20H]                    ; 38A5 _ 3B. 45, 20
        jle     ?_205                                   ; 38A8 _ 7E, C7
        nop                                             ; 38AA _ 90
        leave                                           ; 38AB _ C9
        ret                                             ; 38AC _ C3
; _boxfill8 End of function

_showFont8:; Function begin
        push    ebp                                     ; 38AD _ 55
        mov     ebp, esp                                ; 38AE _ 89. E5
        sub     esp, 20                                 ; 38B0 _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 38B3 _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 38B6 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 38B9 _ C7. 45, FC, 00000000
        jmp     ?_218                                   ; 38C0 _ E9, 0000015C

?_209:  mov     edx, dword [ebp-4H]                     ; 38C5 _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 38C8 _ 8B. 45, 1C
        add     eax, edx                                ; 38CB _ 01. D0
        movzx   eax, byte [eax]                         ; 38CD _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 38D0 _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 38D3 _ 80. 7D, FB, 00
        jns     ?_210                                   ; 38D7 _ 79, 1E
        mov     edx, dword [ebp+14H]                    ; 38D9 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 38DC _ 8B. 45, FC
        add     eax, edx                                ; 38DF _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 38E1 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 38E5 _ 8B. 55, 10
        add     eax, edx                                ; 38E8 _ 01. D0
        mov     edx, eax                                ; 38EA _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 38EC _ 8B. 45, 08
        add     edx, eax                                ; 38EF _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 38F1 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 38F5 _ 88. 02
?_210:  movsx   eax, byte [ebp-5H]                      ; 38F7 _ 0F BE. 45, FB
        and     eax, 40H                                ; 38FB _ 83. E0, 40
        test    eax, eax                                ; 38FE _ 85. C0
        jz      ?_211                                   ; 3900 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 3902 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 3905 _ 8B. 45, FC
        add     eax, edx                                ; 3908 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 390A _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 390E _ 8B. 55, 10
        add     eax, edx                                ; 3911 _ 01. D0
        lea     edx, [eax+1H]                           ; 3913 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 3916 _ 8B. 45, 08
        add     edx, eax                                ; 3919 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 391B _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 391F _ 88. 02
?_211:  movsx   eax, byte [ebp-5H]                      ; 3921 _ 0F BE. 45, FB
        and     eax, 20H                                ; 3925 _ 83. E0, 20
        test    eax, eax                                ; 3928 _ 85. C0
        jz      ?_212                                   ; 392A _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 392C _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 392F _ 8B. 45, FC
        add     eax, edx                                ; 3932 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 3934 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 3938 _ 8B. 55, 10
        add     eax, edx                                ; 393B _ 01. D0
        lea     edx, [eax+2H]                           ; 393D _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 3940 _ 8B. 45, 08
        add     edx, eax                                ; 3943 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 3945 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 3949 _ 88. 02
?_212:  movsx   eax, byte [ebp-5H]                      ; 394B _ 0F BE. 45, FB
        and     eax, 10H                                ; 394F _ 83. E0, 10
        test    eax, eax                                ; 3952 _ 85. C0
        jz      ?_213                                   ; 3954 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 3956 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 3959 _ 8B. 45, FC
        add     eax, edx                                ; 395C _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 395E _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 3962 _ 8B. 55, 10
        add     eax, edx                                ; 3965 _ 01. D0
        lea     edx, [eax+3H]                           ; 3967 _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 396A _ 8B. 45, 08
        add     edx, eax                                ; 396D _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 396F _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 3973 _ 88. 02
?_213:  movsx   eax, byte [ebp-5H]                      ; 3975 _ 0F BE. 45, FB
        and     eax, 08H                                ; 3979 _ 83. E0, 08
        test    eax, eax                                ; 397C _ 85. C0
        jz      ?_214                                   ; 397E _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 3980 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 3983 _ 8B. 45, FC
        add     eax, edx                                ; 3986 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 3988 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 398C _ 8B. 55, 10
        add     eax, edx                                ; 398F _ 01. D0
        lea     edx, [eax+4H]                           ; 3991 _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 3994 _ 8B. 45, 08
        add     edx, eax                                ; 3997 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 3999 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 399D _ 88. 02
?_214:  movsx   eax, byte [ebp-5H]                      ; 399F _ 0F BE. 45, FB
        and     eax, 04H                                ; 39A3 _ 83. E0, 04
        test    eax, eax                                ; 39A6 _ 85. C0
        jz      ?_215                                   ; 39A8 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 39AA _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 39AD _ 8B. 45, FC
        add     eax, edx                                ; 39B0 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 39B2 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 39B6 _ 8B. 55, 10
        add     eax, edx                                ; 39B9 _ 01. D0
        lea     edx, [eax+5H]                           ; 39BB _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 39BE _ 8B. 45, 08
        add     edx, eax                                ; 39C1 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 39C3 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 39C7 _ 88. 02
?_215:  movsx   eax, byte [ebp-5H]                      ; 39C9 _ 0F BE. 45, FB
        and     eax, 02H                                ; 39CD _ 83. E0, 02
        test    eax, eax                                ; 39D0 _ 85. C0
        jz      ?_216                                   ; 39D2 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 39D4 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 39D7 _ 8B. 45, FC
        add     eax, edx                                ; 39DA _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 39DC _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 39E0 _ 8B. 55, 10
        add     eax, edx                                ; 39E3 _ 01. D0
        lea     edx, [eax+6H]                           ; 39E5 _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 39E8 _ 8B. 45, 08
        add     edx, eax                                ; 39EB _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 39ED _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 39F1 _ 88. 02
?_216:  movsx   eax, byte [ebp-5H]                      ; 39F3 _ 0F BE. 45, FB
        and     eax, 01H                                ; 39F7 _ 83. E0, 01
        test    eax, eax                                ; 39FA _ 85. C0
        jz      ?_217                                   ; 39FC _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 39FE _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 3A01 _ 8B. 45, FC
        add     eax, edx                                ; 3A04 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 3A06 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 3A0A _ 8B. 55, 10
        add     eax, edx                                ; 3A0D _ 01. D0
        lea     edx, [eax+7H]                           ; 3A0F _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 3A12 _ 8B. 45, 08
        add     edx, eax                                ; 3A15 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 3A17 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 3A1B _ 88. 02
?_217:  add     dword [ebp-4H], 1                       ; 3A1D _ 83. 45, FC, 01
?_218:  cmp     dword [ebp-4H], 15                      ; 3A21 _ 83. 7D, FC, 0F
        jle     ?_209                                   ; 3A25 _ 0F 8E, FFFFFE9A
        nop                                             ; 3A2B _ 90
        leave                                           ; 3A2C _ C9
        ret                                             ; 3A2D _ C3
; _showFont8 End of function

_init_mouse_cursor:; Function begin
        push    ebp                                     ; 3A2E _ 55
        mov     ebp, esp                                ; 3A2F _ 89. E5
        sub     esp, 20                                 ; 3A31 _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 3A34 _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 3A37 _ 88. 45, EC
        mov     dword [ebp-8H], 0                       ; 3A3A _ C7. 45, F8, 00000000
        jmp     ?_225                                   ; 3A41 _ E9, 000000B1

?_219:  mov     dword [ebp-4H], 0                       ; 3A46 _ C7. 45, FC, 00000000
        jmp     ?_224                                   ; 3A4D _ E9, 00000097

?_220:  mov     eax, dword [ebp-8H]                     ; 3A52 _ 8B. 45, F8
        shl     eax, 4                                  ; 3A55 _ C1. E0, 04
        mov     edx, eax                                ; 3A58 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 3A5A _ 8B. 45, FC
        add     eax, edx                                ; 3A5D _ 01. D0
        add     eax, _cursor.2736                       ; 3A5F _ 05, 00000180(d)
        movzx   eax, byte [eax]                         ; 3A64 _ 0F B6. 00
        cmp     al, 42                                  ; 3A67 _ 3C, 2A
        jnz     ?_221                                   ; 3A69 _ 75, 17
        mov     eax, dword [ebp-8H]                     ; 3A6B _ 8B. 45, F8
        shl     eax, 4                                  ; 3A6E _ C1. E0, 04
        mov     edx, eax                                ; 3A71 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 3A73 _ 8B. 45, FC
        add     eax, edx                                ; 3A76 _ 01. D0
        mov     edx, eax                                ; 3A78 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3A7A _ 8B. 45, 08
        add     eax, edx                                ; 3A7D _ 01. D0
        mov     byte [eax], 0                           ; 3A7F _ C6. 00, 00
?_221:  mov     eax, dword [ebp-8H]                     ; 3A82 _ 8B. 45, F8
        shl     eax, 4                                  ; 3A85 _ C1. E0, 04
        mov     edx, eax                                ; 3A88 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 3A8A _ 8B. 45, FC
        add     eax, edx                                ; 3A8D _ 01. D0
        add     eax, _cursor.2736                       ; 3A8F _ 05, 00000180(d)
        movzx   eax, byte [eax]                         ; 3A94 _ 0F B6. 00
        cmp     al, 79                                  ; 3A97 _ 3C, 4F
        jnz     ?_222                                   ; 3A99 _ 75, 17
        mov     eax, dword [ebp-8H]                     ; 3A9B _ 8B. 45, F8
        shl     eax, 4                                  ; 3A9E _ C1. E0, 04
        mov     edx, eax                                ; 3AA1 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 3AA3 _ 8B. 45, FC
        add     eax, edx                                ; 3AA6 _ 01. D0
        mov     edx, eax                                ; 3AA8 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3AAA _ 8B. 45, 08
        add     eax, edx                                ; 3AAD _ 01. D0
        mov     byte [eax], 7                           ; 3AAF _ C6. 00, 07
?_222:  mov     eax, dword [ebp-8H]                     ; 3AB2 _ 8B. 45, F8
        shl     eax, 4                                  ; 3AB5 _ C1. E0, 04
        mov     edx, eax                                ; 3AB8 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 3ABA _ 8B. 45, FC
        add     eax, edx                                ; 3ABD _ 01. D0
        add     eax, _cursor.2736                       ; 3ABF _ 05, 00000180(d)
        movzx   eax, byte [eax]                         ; 3AC4 _ 0F B6. 00
        cmp     al, 46                                  ; 3AC7 _ 3C, 2E
        jnz     ?_223                                   ; 3AC9 _ 75, 1A
        mov     eax, dword [ebp-8H]                     ; 3ACB _ 8B. 45, F8
        shl     eax, 4                                  ; 3ACE _ C1. E0, 04
        mov     edx, eax                                ; 3AD1 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 3AD3 _ 8B. 45, FC
        add     eax, edx                                ; 3AD6 _ 01. D0
        mov     edx, eax                                ; 3AD8 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3ADA _ 8B. 45, 08
        add     edx, eax                                ; 3ADD _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 3ADF _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 3AE3 _ 88. 02
?_223:  add     dword [ebp-4H], 1                       ; 3AE5 _ 83. 45, FC, 01
?_224:  cmp     dword [ebp-4H], 15                      ; 3AE9 _ 83. 7D, FC, 0F
        jle     ?_220                                   ; 3AED _ 0F 8E, FFFFFF5F
        add     dword [ebp-8H], 1                       ; 3AF3 _ 83. 45, F8, 01
?_225:  cmp     dword [ebp-8H], 15                      ; 3AF7 _ 83. 7D, F8, 0F
        jle     ?_219                                   ; 3AFB _ 0F 8E, FFFFFF45
        nop                                             ; 3B01 _ 90
        leave                                           ; 3B02 _ C9
        ret                                             ; 3B03 _ C3
; _init_mouse_cursor End of function

_putblock:; Function begin
        push    ebp                                     ; 3B04 _ 55
        mov     ebp, esp                                ; 3B05 _ 89. E5
        push    ebx                                     ; 3B07 _ 53
        sub     esp, 16                                 ; 3B08 _ 83. EC, 10
        mov     dword [ebp-0CH], 0                      ; 3B0B _ C7. 45, F4, 00000000
        jmp     ?_229                                   ; 3B12 _ EB, 4E

?_226:  mov     dword [ebp-8H], 0                       ; 3B14 _ C7. 45, F8, 00000000
        jmp     ?_228                                   ; 3B1B _ EB, 39

?_227:  mov     eax, dword [ebp-0CH]                    ; 3B1D _ 8B. 45, F4
        imul    eax, dword [ebp+24H]                    ; 3B20 _ 0F AF. 45, 24
        mov     edx, dword [ebp-8H]                     ; 3B24 _ 8B. 55, F8
        add     eax, edx                                ; 3B27 _ 01. D0
        mov     edx, eax                                ; 3B29 _ 89. C2
        mov     eax, dword [ebp+20H]                    ; 3B2B _ 8B. 45, 20
        add     eax, edx                                ; 3B2E _ 01. D0
        mov     ecx, dword [ebp+1CH]                    ; 3B30 _ 8B. 4D, 1C
        mov     edx, dword [ebp-0CH]                    ; 3B33 _ 8B. 55, F4
        add     edx, ecx                                ; 3B36 _ 01. CA
        imul    edx, dword [ebp+0CH]                    ; 3B38 _ 0F AF. 55, 0C
        mov     ebx, dword [ebp+18H]                    ; 3B3C _ 8B. 5D, 18
        mov     ecx, dword [ebp-8H]                     ; 3B3F _ 8B. 4D, F8
        add     ecx, ebx                                ; 3B42 _ 01. D9
        add     edx, ecx                                ; 3B44 _ 01. CA
        mov     ecx, edx                                ; 3B46 _ 89. D1
        mov     edx, dword [ebp+8H]                     ; 3B48 _ 8B. 55, 08
        add     edx, ecx                                ; 3B4B _ 01. CA
        movzx   eax, byte [eax]                         ; 3B4D _ 0F B6. 00
        mov     byte [edx], al                          ; 3B50 _ 88. 02
        add     dword [ebp-8H], 1                       ; 3B52 _ 83. 45, F8, 01
?_228:  mov     eax, dword [ebp-8H]                     ; 3B56 _ 8B. 45, F8
        cmp     eax, dword [ebp+10H]                    ; 3B59 _ 3B. 45, 10
        jl      ?_227                                   ; 3B5C _ 7C, BF
        add     dword [ebp-0CH], 1                      ; 3B5E _ 83. 45, F4, 01
?_229:  mov     eax, dword [ebp-0CH]                    ; 3B62 _ 8B. 45, F4
        cmp     eax, dword [ebp+14H]                    ; 3B65 _ 3B. 45, 14
        jl      ?_226                                   ; 3B68 _ 7C, AA
        nop                                             ; 3B6A _ 90
        add     esp, 16                                 ; 3B6B _ 83. C4, 10
        pop     ebx                                     ; 3B6E _ 5B
        pop     ebp                                     ; 3B6F _ 5D
        ret                                             ; 3B70 _ C3
; _putblock End of function

_intHandlerFromC:; Function begin
        push    ebp                                     ; 3B71 _ 55
        mov     ebp, esp                                ; 3B72 _ 89. E5
        sub     esp, 40                                 ; 3B74 _ 83. EC, 28
        mov     eax, dword [_bootInfo]                  ; 3B77 _ A1, 00000014(d)
        mov     dword [ebp-0CH], eax                    ; 3B7C _ 89. 45, F4
        movzx   eax, word [?_441]                       ; 3B7F _ 0F B7. 05, 00000018(d)
        cwde                                            ; 3B86 _ 98
        mov     dword [ebp-10H], eax                    ; 3B87 _ 89. 45, F0
        movzx   eax, word [?_442]                       ; 3B8A _ 0F B7. 05, 0000001A(d)
        cwde                                            ; 3B91 _ 98
        mov     dword [ebp-14H], eax                    ; 3B92 _ 89. 45, EC
        mov     dword [esp+4H], 32                      ; 3B95 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 3B9D _ C7. 04 24, 00000020
        call    _io_out8                                ; 3BA4 _ E8, 00000000(rel)
        mov     byte [ebp-15H], 0                       ; 3BA9 _ C6. 45, EB, 00
        mov     dword [esp], 96                         ; 3BAD _ C7. 04 24, 00000060
        call    _io_in8                                 ; 3BB4 _ E8, 00000000(rel)
        mov     byte [ebp-15H], al                      ; 3BB9 _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 3BBC _ 0F B6. 45, EB
        mov     dword [esp+4H], eax                     ; 3BC0 _ 89. 44 24, 04
        mov     dword [esp], _keyinfo                   ; 3BC4 _ C7. 04 24, 0000001C(d)
        call    _fifo8_put                              ; 3BCB _ E8, 00000000(rel)
        nop                                             ; 3BD0 _ 90
        leave                                           ; 3BD1 _ C9
        ret                                             ; 3BD2 _ C3
; _intHandlerFromC End of function

_charToHexVal:; Function begin
        push    ebp                                     ; 3BD3 _ 55
        mov     ebp, esp                                ; 3BD4 _ 89. E5
        sub     esp, 4                                  ; 3BD6 _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 3BD9 _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 3BDC _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 3BDF _ 80. 7D, FC, 09
        jle     ?_230                                   ; 3BE3 _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 3BE5 _ 0F B6. 45, FC
        add     eax, 55                                 ; 3BE9 _ 83. C0, 37
        jmp     ?_231                                   ; 3BEC _ EB, 07

?_230:  movzx   eax, byte [ebp-4H]                      ; 3BEE _ 0F B6. 45, FC
        add     eax, 48                                 ; 3BF2 _ 83. C0, 30
?_231:  leave                                           ; 3BF5 _ C9
        ret                                             ; 3BF6 _ C3
; _charToHexVal End of function

_charToHexStr:; Function begin
        push    ebp                                     ; 3BF7 _ 55
        mov     ebp, esp                                ; 3BF8 _ 89. E5
        sub     esp, 24                                 ; 3BFA _ 83. EC, 18
        mov     eax, dword [ebp+8H]                     ; 3BFD _ 8B. 45, 08
        mov     byte [ebp-14H], al                      ; 3C00 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 3C03 _ C7. 45, FC, 00000000
        movzx   eax, byte [ebp-14H]                     ; 3C0A _ 0F B6. 45, EC
        and     eax, 0FH                                ; 3C0E _ 83. E0, 0F
        mov     byte [ebp-5H], al                       ; 3C11 _ 88. 45, FB
        movsx   eax, byte [ebp-5H]                      ; 3C14 _ 0F BE. 45, FB
        mov     dword [esp], eax                        ; 3C18 _ 89. 04 24
        call    _charToHexVal                           ; 3C1B _ E8, FFFFFFB3
        mov     byte [?_410], al                        ; 3C20 _ A2, 00000113(d)
        movzx   eax, byte [ebp-14H]                     ; 3C25 _ 0F B6. 45, EC
        shr     al, 4                                   ; 3C29 _ C0. E8, 04
        mov     byte [ebp-14H], al                      ; 3C2C _ 88. 45, EC
        movzx   eax, byte [ebp-14H]                     ; 3C2F _ 0F B6. 45, EC
        movsx   eax, al                                 ; 3C33 _ 0F BE. C0
        mov     dword [esp], eax                        ; 3C36 _ 89. 04 24
        call    _charToHexVal                           ; 3C39 _ E8, FFFFFF95
        mov     byte [?_409], al                        ; 3C3E _ A2, 00000112(d)
        mov     eax, _keyval                            ; 3C43 _ B8, 00000110(d)
        leave                                           ; 3C48 _ C9
        ret                                             ; 3C49 _ C3
; _charToHexStr End of function

_intToHexStr:; Function begin
        push    ebp                                     ; 3C4A _ 55
        mov     ebp, esp                                ; 3C4B _ 89. E5
        sub     esp, 16                                 ; 3C4D _ 83. EC, 10
        mov     byte [_str.2784], 48                    ; 3C50 _ C6. 05, 00000374(d), 30
        mov     byte [?_445], 88                        ; 3C57 _ C6. 05, 00000375(d), 58
        mov     byte [?_446], 0                         ; 3C5E _ C6. 05, 0000037E(d), 00
        mov     dword [ebp-4H], 2                       ; 3C65 _ C7. 45, FC, 00000002
        jmp     ?_233                                   ; 3C6C _ EB, 0F

?_232:  mov     eax, dword [ebp-4H]                     ; 3C6E _ 8B. 45, FC
        add     eax, _str.2784                          ; 3C71 _ 05, 00000374(d)
        mov     byte [eax], 48                          ; 3C76 _ C6. 00, 30
        add     dword [ebp-4H], 1                       ; 3C79 _ 83. 45, FC, 01
?_233:  cmp     dword [ebp-4H], 9                       ; 3C7D _ 83. 7D, FC, 09
        jle     ?_232                                   ; 3C81 _ 7E, EB
        mov     dword [ebp-8H], 9                       ; 3C83 _ C7. 45, F8, 00000009
        jmp     ?_237                                   ; 3C8A _ EB, 42

?_234:  mov     eax, dword [ebp+8H]                     ; 3C8C _ 8B. 45, 08
        and     eax, 0FH                                ; 3C8F _ 83. E0, 0F
        mov     dword [ebp-0CH], eax                    ; 3C92 _ 89. 45, F4
        mov     eax, dword [ebp+8H]                     ; 3C95 _ 8B. 45, 08
        shr     eax, 4                                  ; 3C98 _ C1. E8, 04
        mov     dword [ebp+8H], eax                     ; 3C9B _ 89. 45, 08
        cmp     dword [ebp-0CH], 9                      ; 3C9E _ 83. 7D, F4, 09
        jle     ?_235                                   ; 3CA2 _ 7E, 14
        mov     eax, dword [ebp-0CH]                    ; 3CA4 _ 8B. 45, F4
        add     eax, 55                                 ; 3CA7 _ 83. C0, 37
        mov     edx, eax                                ; 3CAA _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 3CAC _ 8B. 45, F8
        add     eax, _str.2784                          ; 3CAF _ 05, 00000374(d)
        mov     byte [eax], dl                          ; 3CB4 _ 88. 10
        jmp     ?_236                                   ; 3CB6 _ EB, 12

?_235:  mov     eax, dword [ebp-0CH]                    ; 3CB8 _ 8B. 45, F4
        add     eax, 48                                 ; 3CBB _ 83. C0, 30
        mov     edx, eax                                ; 3CBE _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 3CC0 _ 8B. 45, F8
        add     eax, _str.2784                          ; 3CC3 _ 05, 00000374(d)
        mov     byte [eax], dl                          ; 3CC8 _ 88. 10
?_236:  sub     dword [ebp-8H], 1                       ; 3CCA _ 83. 6D, F8, 01
?_237:  cmp     dword [ebp-8H], 1                       ; 3CCE _ 83. 7D, F8, 01
        jle     ?_238                                   ; 3CD2 _ 7E, 06
        cmp     dword [ebp+8H], 0                       ; 3CD4 _ 83. 7D, 08, 00
        jnz     ?_234                                   ; 3CD8 _ 75, B2
?_238:  mov     eax, _str.2784                          ; 3CDA _ B8, 00000374(d)
        leave                                           ; 3CDF _ C9
        ret                                             ; 3CE0 _ C3
; _intToHexStr End of function

_wait_KBC_sendready:; Function begin
        push    ebp                                     ; 3CE1 _ 55
        mov     ebp, esp                                ; 3CE2 _ 89. E5
        sub     esp, 24                                 ; 3CE4 _ 83. EC, 18
?_239:  mov     dword [esp], 100                        ; 3CE7 _ C7. 04 24, 00000064
        call    _io_in8                                 ; 3CEE _ E8, 00000000(rel)
        and     eax, 02H                                ; 3CF3 _ 83. E0, 02
        test    eax, eax                                ; 3CF6 _ 85. C0
        jz      ?_240                                   ; 3CF8 _ 74, 02
        jmp     ?_239                                   ; 3CFA _ EB, EB
; _wait_KBC_sendready End of function

?_240:  ; Local function
        nop                                             ; 3CFC _ 90
        nop                                             ; 3CFD _ 90
        leave                                           ; 3CFE _ C9
        ret                                             ; 3CFF _ C3

_init_keyboard:; Function begin
        push    ebp                                     ; 3D00 _ 55
        mov     ebp, esp                                ; 3D01 _ 89. E5
        sub     esp, 24                                 ; 3D03 _ 83. EC, 18
        call    _wait_KBC_sendready                     ; 3D06 _ E8, FFFFFFD6
        mov     dword [esp+4H], 96                      ; 3D0B _ C7. 44 24, 04, 00000060
        mov     dword [esp], 100                        ; 3D13 _ C7. 04 24, 00000064
        call    _io_out8                                ; 3D1A _ E8, 00000000(rel)
        call    _wait_KBC_sendready                     ; 3D1F _ E8, FFFFFFBD
        mov     dword [esp+4H], 71                      ; 3D24 _ C7. 44 24, 04, 00000047
        mov     dword [esp], 96                         ; 3D2C _ C7. 04 24, 00000060
        call    _io_out8                                ; 3D33 _ E8, 00000000(rel)
        nop                                             ; 3D38 _ 90
        leave                                           ; 3D39 _ C9
        ret                                             ; 3D3A _ C3
; _init_keyboard End of function

_enable_mouse:; Function begin
        push    ebp                                     ; 3D3B _ 55
        mov     ebp, esp                                ; 3D3C _ 89. E5
        sub     esp, 24                                 ; 3D3E _ 83. EC, 18
        call    _wait_KBC_sendready                     ; 3D41 _ E8, FFFFFF9B
        mov     dword [esp+4H], 212                     ; 3D46 _ C7. 44 24, 04, 000000D4
        mov     dword [esp], 100                        ; 3D4E _ C7. 04 24, 00000064
        call    _io_out8                                ; 3D55 _ E8, 00000000(rel)
        call    _wait_KBC_sendready                     ; 3D5A _ E8, FFFFFF82
        mov     dword [esp+4H], 244                     ; 3D5F _ C7. 44 24, 04, 000000F4
        mov     dword [esp], 96                         ; 3D67 _ C7. 04 24, 00000060
        call    _io_out8                                ; 3D6E _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 3D73 _ 8B. 45, 08
        mov     byte [eax+3H], 0                        ; 3D76 _ C6. 40, 03, 00
        nop                                             ; 3D7A _ 90
        leave                                           ; 3D7B _ C9
        ret                                             ; 3D7C _ C3
; _enable_mouse End of function

_intHandlerForMouse:; Function begin
        push    ebp                                     ; 3D7D _ 55
        mov     ebp, esp                                ; 3D7E _ 89. E5
        sub     esp, 40                                 ; 3D80 _ 83. EC, 28
        mov     dword [esp+4H], 32                      ; 3D83 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 160                        ; 3D8B _ C7. 04 24, 000000A0
        call    _io_out8                                ; 3D92 _ E8, 00000000(rel)
        mov     dword [esp+4H], 32                      ; 3D97 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 3D9F _ C7. 04 24, 00000020
        call    _io_out8                                ; 3DA6 _ E8, 00000000(rel)
        mov     dword [esp], 96                         ; 3DAB _ C7. 04 24, 00000060
        call    _io_in8                                 ; 3DB2 _ E8, 00000000(rel)
        mov     byte [ebp-9H], al                       ; 3DB7 _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 3DBA _ 0F B6. 45, F7
        mov     dword [esp+4H], eax                     ; 3DBE _ 89. 44 24, 04
        mov     dword [esp], _mouseinfo                 ; 3DC2 _ C7. 04 24, 00000038(d)
        call    _fifo8_put                              ; 3DC9 _ E8, 00000000(rel)
        nop                                             ; 3DCE _ 90
        leave                                           ; 3DCF _ C9
        ret                                             ; 3DD0 _ C3
; _intHandlerForMouse End of function

_mouse_decode:; Function begin
        push    ebp                                     ; 3DD1 _ 55
        mov     ebp, esp                                ; 3DD2 _ 89. E5
        sub     esp, 4                                  ; 3DD4 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 3DD7 _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 3DDA _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 3DDD _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 3DE0 _ 0F B6. 40, 03
        test    al, al                                  ; 3DE4 _ 84. C0
        jnz     ?_242                                   ; 3DE6 _ 75, 17
        cmp     byte [ebp-4H], -6                       ; 3DE8 _ 80. 7D, FC, FA
        jnz     ?_241                                   ; 3DEC _ 75, 07
        mov     eax, dword [ebp+8H]                     ; 3DEE _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 3DF1 _ C6. 40, 03, 01
?_241:  mov     eax, 0                                  ; 3DF5 _ B8, 00000000
        jmp     ?_249                                   ; 3DFA _ E9, 0000010F

?_242:  mov     eax, dword [ebp+8H]                     ; 3DFF _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 3E02 _ 0F B6. 40, 03
        cmp     al, 1                                   ; 3E06 _ 3C, 01
        jnz     ?_244                                   ; 3E08 _ 75, 28
        movzx   eax, byte [ebp-4H]                      ; 3E0A _ 0F B6. 45, FC
        and     eax, 0C8H                               ; 3E0E _ 25, 000000C8
        cmp     eax, 8                                  ; 3E13 _ 83. F8, 08
        jnz     ?_243                                   ; 3E16 _ 75, 10
        mov     edx, dword [ebp+8H]                     ; 3E18 _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 3E1B _ 0F B6. 45, FC
        mov     byte [edx], al                          ; 3E1F _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 3E21 _ 8B. 45, 08
        mov     byte [eax+3H], 2                        ; 3E24 _ C6. 40, 03, 02
?_243:  mov     eax, 0                                  ; 3E28 _ B8, 00000000
        jmp     ?_249                                   ; 3E2D _ E9, 000000DC

?_244:  mov     eax, dword [ebp+8H]                     ; 3E32 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 3E35 _ 0F B6. 40, 03
        cmp     al, 2                                   ; 3E39 _ 3C, 02
        jnz     ?_245                                   ; 3E3B _ 75, 1B
        mov     edx, dword [ebp+8H]                     ; 3E3D _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 3E40 _ 0F B6. 45, FC
        mov     byte [edx+1H], al                       ; 3E44 _ 88. 42, 01
        mov     eax, dword [ebp+8H]                     ; 3E47 _ 8B. 45, 08
        mov     byte [eax+3H], 3                        ; 3E4A _ C6. 40, 03, 03
        mov     eax, 0                                  ; 3E4E _ B8, 00000000
        jmp     ?_249                                   ; 3E53 _ E9, 000000B6

?_245:  mov     eax, dword [ebp+8H]                     ; 3E58 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 3E5B _ 0F B6. 40, 03
        cmp     al, 3                                   ; 3E5F _ 3C, 03
        jne     ?_248                                   ; 3E61 _ 0F 85, 000000A2
        mov     edx, dword [ebp+8H]                     ; 3E67 _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 3E6A _ 0F B6. 45, FC
        mov     byte [edx+2H], al                       ; 3E6E _ 88. 42, 02
        mov     eax, dword [ebp+8H]                     ; 3E71 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 3E74 _ C6. 40, 03, 01
        mov     eax, dword [ebp+8H]                     ; 3E78 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 3E7B _ 0F B6. 00
        movzx   eax, al                                 ; 3E7E _ 0F B6. C0
        and     eax, 07H                                ; 3E81 _ 83. E0, 07
        mov     edx, eax                                ; 3E84 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3E86 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 3E89 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 3E8C _ 8B. 45, 08
        movzx   eax, byte [eax+1H]                      ; 3E8F _ 0F B6. 40, 01
        movzx   eax, al                                 ; 3E93 _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 3E96 _ 8B. 55, 08
        mov     dword [edx+4H], eax                     ; 3E99 _ 89. 42, 04
        mov     eax, dword [ebp+8H]                     ; 3E9C _ 8B. 45, 08
        movzx   eax, byte [eax+2H]                      ; 3E9F _ 0F B6. 40, 02
        movzx   eax, al                                 ; 3EA3 _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 3EA6 _ 8B. 55, 08
        mov     dword [edx+8H], eax                     ; 3EA9 _ 89. 42, 08
        mov     eax, dword [ebp+8H]                     ; 3EAC _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 3EAF _ 0F B6. 00
        movzx   eax, al                                 ; 3EB2 _ 0F B6. C0
        and     eax, 10H                                ; 3EB5 _ 83. E0, 10
        test    eax, eax                                ; 3EB8 _ 85. C0
        jz      ?_246                                   ; 3EBA _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 3EBC _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 3EBF _ 8B. 40, 04
        or      eax, 0FFFFFF00H                         ; 3EC2 _ 0D, FFFFFF00
        mov     edx, eax                                ; 3EC7 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3EC9 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 3ECC _ 89. 50, 04
?_246:  mov     eax, dword [ebp+8H]                     ; 3ECF _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 3ED2 _ 0F B6. 00
        movzx   eax, al                                 ; 3ED5 _ 0F B6. C0
        and     eax, 20H                                ; 3ED8 _ 83. E0, 20
        test    eax, eax                                ; 3EDB _ 85. C0
        jz      ?_247                                   ; 3EDD _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 3EDF _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3EE2 _ 8B. 40, 08
        or      eax, 0FFFFFF00H                         ; 3EE5 _ 0D, FFFFFF00
        mov     edx, eax                                ; 3EEA _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3EEC _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 3EEF _ 89. 50, 08
?_247:  mov     eax, dword [ebp+8H]                     ; 3EF2 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3EF5 _ 8B. 40, 08
        neg     eax                                     ; 3EF8 _ F7. D8
        mov     edx, eax                                ; 3EFA _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3EFC _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 3EFF _ 89. 50, 08
        mov     eax, 1                                  ; 3F02 _ B8, 00000001
        jmp     ?_249                                   ; 3F07 _ EB, 05

?_248:  mov     eax, 4294967295                         ; 3F09 _ B8, FFFFFFFF
?_249:  leave                                           ; 3F0E _ C9
        ret                                             ; 3F0F _ C3
; _mouse_decode End of function

_showMemoryInfo:; Function begin
        push    ebp                                     ; 3F10 _ 55
        mov     ebp, esp                                ; 3F11 _ 89. E5
        sub     esp, 72                                 ; 3F13 _ 83. EC, 48
        mov     dword [ebp-0CH], 0                      ; 3F16 _ C7. 45, F4, 00000000
        mov     dword [ebp-10H], 0                      ; 3F1D _ C7. 45, F0, 00000000
        mov     dword [ebp-14H], 104                    ; 3F24 _ C7. 45, EC, 00000068
        mov     dword [ebp-18H], 80                     ; 3F2B _ C7. 45, E8, 00000050
        mov     edx, dword [_ysize]                     ; 3F32 _ 8B. 15, 00000140(d)
        mov     eax, dword [ebp+0CH]                    ; 3F38 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 3F3B _ 8B. 00
        mov     dword [esp+8H], edx                     ; 3F3D _ 89. 54 24, 08
        mov     edx, dword [ebp+1CH]                    ; 3F41 _ 8B. 55, 1C
        mov     dword [esp+4H], edx                     ; 3F44 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3F48 _ 89. 04 24
        call    _init_screen8                           ; 3F4B _ E8, FFFFEE30
        mov     eax, dword [ebp+20H]                    ; 3F50 _ 8B. 45, 20
        movsx   eax, al                                 ; 3F53 _ 0F BE. C0
        mov     dword [esp+14H], ?_432                  ; 3F56 _ C7. 44 24, 14, 0000008C(d)
        mov     dword [esp+10H], eax                    ; 3F5E _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 3F62 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 3F65 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 3F69 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 3F6C _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 3F70 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 3F73 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3F77 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3F7A _ 89. 04 24
        call    _showString                             ; 3F7D _ E8, FFFFF20E
        mov     eax, dword [ebp+18H]                    ; 3F82 _ 8B. 45, 18
        mov     dword [esp], eax                        ; 3F85 _ 89. 04 24
        call    _intToHexStr                            ; 3F88 _ E8, FFFFFCBD
        mov     dword [ebp-1CH], eax                    ; 3F8D _ 89. 45, E4
        mov     eax, dword [ebp+20H]                    ; 3F90 _ 8B. 45, 20
        movsx   eax, al                                 ; 3F93 _ 0F BE. C0
        mov     edx, dword [ebp-1CH]                    ; 3F96 _ 8B. 55, E4
        mov     dword [esp+14H], edx                    ; 3F99 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 3F9D _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 3FA1 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 3FA4 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 3FA8 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 3FAB _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 3FAF _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 3FB2 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3FB6 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3FB9 _ 89. 04 24
        call    _showString                             ; 3FBC _ E8, FFFFF1CF
        add     dword [ebp-10H], 16                     ; 3FC1 _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 3FC5 _ 8B. 45, 20
        movsx   eax, al                                 ; 3FC8 _ 0F BE. C0
        mov     dword [esp+14H], ?_433                  ; 3FCB _ C7. 44 24, 14, 00000096(d)
        mov     dword [esp+10H], eax                    ; 3FD3 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 3FD7 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 3FDA _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 3FDE _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 3FE1 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 3FE5 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 3FE8 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3FEC _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3FEF _ 89. 04 24
        call    _showString                             ; 3FF2 _ E8, FFFFF199
        mov     eax, dword [ebp+10H]                    ; 3FF7 _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 3FFA _ 8B. 00
        mov     dword [esp], eax                        ; 3FFC _ 89. 04 24
        call    _intToHexStr                            ; 3FFF _ E8, FFFFFC46
        mov     dword [ebp-20H], eax                    ; 4004 _ 89. 45, E0
        mov     eax, dword [ebp+20H]                    ; 4007 _ 8B. 45, 20
        movsx   eax, al                                 ; 400A _ 0F BE. C0
        mov     edx, dword [ebp-20H]                    ; 400D _ 8B. 55, E0
        mov     dword [esp+14H], edx                    ; 4010 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 4014 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 4018 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 401B _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 401F _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 4022 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 4026 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 4029 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 402D _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4030 _ 89. 04 24
        call    _showString                             ; 4033 _ E8, FFFFF158
        add     dword [ebp-10H], 16                     ; 4038 _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 403C _ 8B. 45, 20
        movsx   eax, al                                 ; 403F _ 0F BE. C0
        mov     dword [esp+14H], ?_434                  ; 4042 _ C7. 44 24, 14, 000000A2(d)
        mov     dword [esp+10H], eax                    ; 404A _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 404E _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 4051 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 4055 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 4058 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 405C _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 405F _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4063 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4066 _ 89. 04 24
        call    _showString                             ; 4069 _ E8, FFFFF122
        mov     eax, dword [ebp+10H]                    ; 406E _ 8B. 45, 10
        mov     eax, dword [eax+4H]                     ; 4071 _ 8B. 40, 04
        mov     dword [esp], eax                        ; 4074 _ 89. 04 24
        call    _intToHexStr                            ; 4077 _ E8, FFFFFBCE
        mov     dword [ebp-24H], eax                    ; 407C _ 89. 45, DC
        mov     eax, dword [ebp+20H]                    ; 407F _ 8B. 45, 20
        movsx   eax, al                                 ; 4082 _ 0F BE. C0
        mov     edx, dword [ebp-24H]                    ; 4085 _ 8B. 55, DC
        mov     dword [esp+14H], edx                    ; 4088 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 408C _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 4090 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 4093 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 4097 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 409A _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 409E _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 40A1 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 40A5 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 40A8 _ 89. 04 24
        call    _showString                             ; 40AB _ E8, FFFFF0E0
        add     dword [ebp-10H], 16                     ; 40B0 _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 40B4 _ 8B. 45, 20
        movsx   eax, al                                 ; 40B7 _ 0F BE. C0
        mov     dword [esp+14H], ?_435                  ; 40BA _ C7. 44 24, 14, 000000AE(d)
        mov     dword [esp+10H], eax                    ; 40C2 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 40C6 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 40C9 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 40CD _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 40D0 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 40D4 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 40D7 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 40DB _ 8B. 45, 08
        mov     dword [esp], eax                        ; 40DE _ 89. 04 24
        call    _showString                             ; 40E1 _ E8, FFFFF0AA
        mov     eax, dword [ebp+10H]                    ; 40E6 _ 8B. 45, 10
        mov     eax, dword [eax+8H]                     ; 40E9 _ 8B. 40, 08
        mov     dword [esp], eax                        ; 40EC _ 89. 04 24
        call    _intToHexStr                            ; 40EF _ E8, FFFFFB56
        mov     dword [ebp-28H], eax                    ; 40F4 _ 89. 45, D8
        mov     eax, dword [ebp+20H]                    ; 40F7 _ 8B. 45, 20
        movsx   eax, al                                 ; 40FA _ 0F BE. C0
        mov     edx, dword [ebp-28H]                    ; 40FD _ 8B. 55, D8
        mov     dword [esp+14H], edx                    ; 4100 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 4104 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 4108 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 410B _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 410F _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 4112 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 4116 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 4119 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 411D _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4120 _ 89. 04 24
        call    _showString                             ; 4123 _ E8, FFFFF068
        nop                                             ; 4128 _ 90
        leave                                           ; 4129 _ C9
        ret                                             ; 412A _ C3
; _showMemoryInfo End of function

_message_box:; Function begin
        push    ebp                                     ; 412B _ 55
        mov     ebp, esp                                ; 412C _ 89. E5
        sub     esp, 56                                 ; 412E _ 83. EC, 38
        mov     eax, dword [ebp+8H]                     ; 4131 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4134 _ 89. 04 24
        call    _sheet_alloc                            ; 4137 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 413C _ 89. 45, F4
        mov     eax, dword [_memman]                    ; 413F _ A1, 00000000(d)
        mov     dword [esp+4H], 10880                   ; 4144 _ C7. 44 24, 04, 00002A80
        mov     dword [esp], eax                        ; 414C _ 89. 04 24
        call    _memman_alloc_4k                        ; 414F _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 4154 _ 89. 45, F0
        mov     dword [esp+10H], -1                     ; 4157 _ C7. 44 24, 10, FFFFFFFF
        mov     dword [esp+0CH], 68                     ; 415F _ C7. 44 24, 0C, 00000044
        mov     dword [esp+8H], 160                     ; 4167 _ C7. 44 24, 08, 000000A0
        mov     eax, dword [ebp-10H]                    ; 416F _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 4172 _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 4176 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 4179 _ 89. 04 24
        call    _sheet_setbuf                           ; 417C _ E8, 00000000(rel)
        mov     dword [esp+0CH], 1                      ; 4181 _ C7. 44 24, 0C, 00000001
        mov     eax, dword [ebp+0CH]                    ; 4189 _ 8B. 45, 0C
        mov     dword [esp+8H], eax                     ; 418C _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 4190 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 4193 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4197 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 419A _ 89. 04 24
        call    _make_window8                           ; 419D _ E8, 00000074
        mov     dword [esp+14H], 7                      ; 41A2 _ C7. 44 24, 14, 00000007
        mov     dword [esp+10H], 16                     ; 41AA _ C7. 44 24, 10, 00000010
        mov     dword [esp+0CH], 144                    ; 41B2 _ C7. 44 24, 0C, 00000090
        mov     dword [esp+8H], 28                      ; 41BA _ C7. 44 24, 08, 0000001C
        mov     dword [esp+4H], 8                       ; 41C2 _ C7. 44 24, 04, 00000008
        mov     eax, dword [ebp-0CH]                    ; 41CA _ 8B. 45, F4
        mov     dword [esp], eax                        ; 41CD _ 89. 04 24
        call    _make_textbox8                          ; 41D0 _ E8, 00000444
        mov     dword [esp+0CH], 172                    ; 41D5 _ C7. 44 24, 0C, 000000AC
        mov     dword [esp+8H], 260                     ; 41DD _ C7. 44 24, 08, 00000104
        mov     eax, dword [ebp-0CH]                    ; 41E5 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 41E8 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 41EC _ 8B. 45, 08
        mov     dword [esp], eax                        ; 41EF _ 89. 04 24
        call    _sheet_slide                            ; 41F2 _ E8, 00000000(rel)
        mov     dword [esp+8H], 2                       ; 41F7 _ C7. 44 24, 08, 00000002
        mov     eax, dword [ebp-0CH]                    ; 41FF _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 4202 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4206 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4209 _ 89. 04 24
        call    _sheet_updown                           ; 420C _ E8, 00000000(rel)
        mov     eax, dword [ebp-0CH]                    ; 4211 _ 8B. 45, F4
        leave                                           ; 4214 _ C9
        ret                                             ; 4215 _ C3
; _message_box End of function

_make_window8:; Function begin
        push    ebp                                     ; 4216 _ 55
        mov     ebp, esp                                ; 4217 _ 89. E5
        push    ebx                                     ; 4219 _ 53
        sub     esp, 68                                 ; 421A _ 83. EC, 44
        mov     eax, dword [ebp+14H]                    ; 421D _ 8B. 45, 14
        mov     byte [ebp-1CH], al                      ; 4220 _ 88. 45, E4
        mov     eax, dword [ebp+0CH]                    ; 4223 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 4226 _ 8B. 40, 04
        mov     dword [ebp-0CH], eax                    ; 4229 _ 89. 45, F4
        mov     eax, dword [ebp+0CH]                    ; 422C _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 422F _ 8B. 40, 08
        mov     dword [ebp-10H], eax                    ; 4232 _ 89. 45, F0
        mov     eax, dword [ebp-0CH]                    ; 4235 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 4238 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 423B _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 423E _ 8B. 00
        mov     dword [esp+18H], 0                      ; 4240 _ C7. 44 24, 18, 00000000
        mov     dword [esp+14H], edx                    ; 4248 _ 89. 54 24, 14
        mov     dword [esp+10H], 0                      ; 424C _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 4254 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 425C _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-0CH]                    ; 4264 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 4267 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 426B _ 89. 04 24
        call    _boxfill8                               ; 426E _ E8, FFFFF5EA
        mov     eax, dword [ebp-0CH]                    ; 4273 _ 8B. 45, F4
        lea     edx, [eax-2H]                           ; 4276 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 4279 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 427C _ 8B. 00
        mov     dword [esp+18H], 1                      ; 427E _ C7. 44 24, 18, 00000001
        mov     dword [esp+14H], edx                    ; 4286 _ 89. 54 24, 14
        mov     dword [esp+10H], 1                      ; 428A _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], 1                      ; 4292 _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 7                       ; 429A _ C7. 44 24, 08, 00000007
        mov     edx, dword [ebp-0CH]                    ; 42A2 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 42A5 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 42A9 _ 89. 04 24
        call    _boxfill8                               ; 42AC _ E8, FFFFF5AC
        mov     eax, dword [ebp-10H]                    ; 42B1 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 42B4 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 42B7 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 42BA _ 8B. 00
        mov     dword [esp+18H], edx                    ; 42BC _ 89. 54 24, 18
        mov     dword [esp+14H], 0                      ; 42C0 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], 0                      ; 42C8 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 42D0 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 42D8 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-0CH]                    ; 42E0 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 42E3 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 42E7 _ 89. 04 24
        call    _boxfill8                               ; 42EA _ E8, FFFFF56E
        mov     eax, dword [ebp-10H]                    ; 42EF _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 42F2 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 42F5 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 42F8 _ 8B. 00
        mov     dword [esp+18H], edx                    ; 42FA _ 89. 54 24, 18
        mov     dword [esp+14H], 1                      ; 42FE _ C7. 44 24, 14, 00000001
        mov     dword [esp+10H], 1                      ; 4306 _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], 1                      ; 430E _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 7                       ; 4316 _ C7. 44 24, 08, 00000007
        mov     edx, dword [ebp-0CH]                    ; 431E _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 4321 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 4325 _ 89. 04 24
        call    _boxfill8                               ; 4328 _ E8, FFFFF530
        mov     eax, dword [ebp-10H]                    ; 432D _ 8B. 45, F0
        lea     ebx, [eax-2H]                           ; 4330 _ 8D. 58, FE
        mov     eax, dword [ebp-0CH]                    ; 4333 _ 8B. 45, F4
        lea     ecx, [eax-2H]                           ; 4336 _ 8D. 48, FE
        mov     eax, dword [ebp-0CH]                    ; 4339 _ 8B. 45, F4
        lea     edx, [eax-2H]                           ; 433C _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 433F _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 4342 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 4344 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 4348 _ 89. 4C 24, 14
        mov     dword [esp+10H], 1                      ; 434C _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], edx                    ; 4354 _ 89. 54 24, 0C
        mov     dword [esp+8H], 15                      ; 4358 _ C7. 44 24, 08, 0000000F
        mov     edx, dword [ebp-0CH]                    ; 4360 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 4363 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 4367 _ 89. 04 24
        call    _boxfill8                               ; 436A _ E8, FFFFF4EE
        mov     eax, dword [ebp-10H]                    ; 436F _ 8B. 45, F0
        lea     ebx, [eax-1H]                           ; 4372 _ 8D. 58, FF
        mov     eax, dword [ebp-0CH]                    ; 4375 _ 8B. 45, F4
        lea     ecx, [eax-1H]                           ; 4378 _ 8D. 48, FF
        mov     eax, dword [ebp-0CH]                    ; 437B _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 437E _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 4381 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 4384 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 4386 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 438A _ 89. 4C 24, 14
        mov     dword [esp+10H], 0                      ; 438E _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], edx                    ; 4396 _ 89. 54 24, 0C
        mov     dword [esp+8H], 0                       ; 439A _ C7. 44 24, 08, 00000000
        mov     edx, dword [ebp-0CH]                    ; 43A2 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 43A5 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 43A9 _ 89. 04 24
        call    _boxfill8                               ; 43AC _ E8, FFFFF4AC
        mov     eax, dword [ebp-10H]                    ; 43B1 _ 8B. 45, F0
        lea     ecx, [eax-3H]                           ; 43B4 _ 8D. 48, FD
        mov     eax, dword [ebp-0CH]                    ; 43B7 _ 8B. 45, F4
        lea     edx, [eax-3H]                           ; 43BA _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 43BD _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 43C0 _ 8B. 00
        mov     dword [esp+18H], ecx                    ; 43C2 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 43C6 _ 89. 54 24, 14
        mov     dword [esp+10H], 2                      ; 43CA _ C7. 44 24, 10, 00000002
        mov     dword [esp+0CH], 2                      ; 43D2 _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 8                       ; 43DA _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-0CH]                    ; 43E2 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 43E5 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 43E9 _ 89. 04 24
        call    _boxfill8                               ; 43EC _ E8, FFFFF46C
        mov     eax, dword [ebp-0CH]                    ; 43F1 _ 8B. 45, F4
        lea     edx, [eax-4H]                           ; 43F4 _ 8D. 50, FC
        mov     eax, dword [ebp+0CH]                    ; 43F7 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 43FA _ 8B. 00
        mov     dword [esp+18H], 20                     ; 43FC _ C7. 44 24, 18, 00000014
        mov     dword [esp+14H], edx                    ; 4404 _ 89. 54 24, 14
        mov     dword [esp+10H], 3                      ; 4408 _ C7. 44 24, 10, 00000003
        mov     dword [esp+0CH], 3                      ; 4410 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 12                      ; 4418 _ C7. 44 24, 08, 0000000C
        mov     edx, dword [ebp-0CH]                    ; 4420 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 4423 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 4427 _ 89. 04 24
        call    _boxfill8                               ; 442A _ E8, FFFFF42E
        mov     eax, dword [ebp-10H]                    ; 442F _ 8B. 45, F0
        lea     ebx, [eax-2H]                           ; 4432 _ 8D. 58, FE
        mov     eax, dword [ebp-0CH]                    ; 4435 _ 8B. 45, F4
        lea     ecx, [eax-2H]                           ; 4438 _ 8D. 48, FE
        mov     eax, dword [ebp-10H]                    ; 443B _ 8B. 45, F0
        lea     edx, [eax-2H]                           ; 443E _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 4441 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 4444 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 4446 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 444A _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 444E _ 89. 54 24, 10
        mov     dword [esp+0CH], 1                      ; 4452 _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 15                      ; 445A _ C7. 44 24, 08, 0000000F
        mov     edx, dword [ebp-0CH]                    ; 4462 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 4465 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 4469 _ 89. 04 24
        call    _boxfill8                               ; 446C _ E8, FFFFF3EC
        mov     eax, dword [ebp-10H]                    ; 4471 _ 8B. 45, F0
        lea     ebx, [eax-1H]                           ; 4474 _ 8D. 58, FF
        mov     eax, dword [ebp-0CH]                    ; 4477 _ 8B. 45, F4
        lea     ecx, [eax-1H]                           ; 447A _ 8D. 48, FF
        mov     eax, dword [ebp-10H]                    ; 447D _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 4480 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 4483 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 4486 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 4488 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 448C _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 4490 _ 89. 54 24, 10
        mov     dword [esp+0CH], 0                      ; 4494 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 449C _ C7. 44 24, 08, 00000000
        mov     edx, dword [ebp-0CH]                    ; 44A4 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 44A7 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 44AB _ 89. 04 24
        call    _boxfill8                               ; 44AE _ E8, FFFFF3AA
        movsx   eax, byte [ebp-1CH]                     ; 44B3 _ 0F BE. 45, E4
        mov     dword [esp+0CH], eax                    ; 44B7 _ 89. 44 24, 0C
        mov     eax, dword [ebp+10H]                    ; 44BB _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 44BE _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 44C2 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 44C5 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 44C9 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 44CC _ 89. 04 24
        call    _make_wtitle8                           ; 44CF _ E8, 00000007
        nop                                             ; 44D4 _ 90
        add     esp, 68                                 ; 44D5 _ 83. C4, 44
        pop     ebx                                     ; 44D8 _ 5B
        pop     ebp                                     ; 44D9 _ 5D
        ret                                             ; 44DA _ C3
; _make_window8 End of function

_make_wtitle8:; Function begin
        push    ebp                                     ; 44DB _ 55
        mov     ebp, esp                                ; 44DC _ 89. E5
        push    ebx                                     ; 44DE _ 53
        sub     esp, 68                                 ; 44DF _ 83. EC, 44
        mov     eax, dword [ebp+14H]                    ; 44E2 _ 8B. 45, 14
        mov     byte [ebp-1CH], al                      ; 44E5 _ 88. 45, E4
        cmp     byte [ebp-1CH], 0                       ; 44E8 _ 80. 7D, E4, 00
        jz      ?_250                                   ; 44EC _ 74, 0A
        mov     byte [ebp-12H], 7                       ; 44EE _ C6. 45, EE, 07
        mov     byte [ebp-13H], 12                      ; 44F2 _ C6. 45, ED, 0C
        jmp     ?_251                                   ; 44F6 _ EB, 08

?_250:  mov     byte [ebp-12H], 8                       ; 44F8 _ C6. 45, EE, 08
        mov     byte [ebp-13H], 15                      ; 44FC _ C6. 45, ED, 0F
?_251:  mov     eax, dword [ebp+0CH]                    ; 4500 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 4503 _ 8B. 40, 04
        lea     ebx, [eax-4H]                           ; 4506 _ 8D. 58, FC
        movzx   eax, byte [ebp-13H]                     ; 4509 _ 0F B6. 45, ED
        movzx   eax, al                                 ; 450D _ 0F B6. C0
        mov     edx, dword [ebp+0CH]                    ; 4510 _ 8B. 55, 0C
        mov     ecx, dword [edx+4H]                     ; 4513 _ 8B. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 4516 _ 8B. 55, 0C
        mov     edx, dword [edx]                        ; 4519 _ 8B. 12
        mov     dword [esp+18H], 20                     ; 451B _ C7. 44 24, 18, 00000014
        mov     dword [esp+14H], ebx                    ; 4523 _ 89. 5C 24, 14
        mov     dword [esp+10H], 3                      ; 4527 _ C7. 44 24, 10, 00000003
        mov     dword [esp+0CH], 3                      ; 452F _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], eax                     ; 4537 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 453B _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 453F _ 89. 14 24
        call    _boxfill8                               ; 4542 _ E8, FFFFF316
        movsx   eax, byte [ebp-12H]                     ; 4547 _ 0F BE. 45, EE
        mov     edx, dword [ebp+10H]                    ; 454B _ 8B. 55, 10
        mov     dword [esp+14H], edx                    ; 454E _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 4552 _ 89. 44 24, 10
        mov     dword [esp+0CH], 4                      ; 4556 _ C7. 44 24, 0C, 00000004
        mov     dword [esp+8H], 24                      ; 455E _ C7. 44 24, 08, 00000018
        mov     eax, dword [ebp+0CH]                    ; 4566 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 4569 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 456D _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4570 _ 89. 04 24
        call    _showString                             ; 4573 _ E8, FFFFEC18
        mov     dword [ebp-10H], 0                      ; 4578 _ C7. 45, F0, 00000000
        jmp     ?_259                                   ; 457F _ E9, 00000084

?_252:  mov     dword [ebp-0CH], 0                      ; 4584 _ C7. 45, F4, 00000000
        jmp     ?_258                                   ; 458B _ EB, 71

?_253:  mov     eax, dword [ebp-10H]                    ; 458D _ 8B. 45, F0
        shl     eax, 4                                  ; 4590 _ C1. E0, 04
        mov     edx, eax                                ; 4593 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 4595 _ 8B. 45, F4
        add     eax, edx                                ; 4598 _ 01. D0
        add     eax, _closebtn.2855                     ; 459A _ 05, 00000280(d)
        movzx   eax, byte [eax]                         ; 459F _ 0F B6. 00
        mov     byte [ebp-11H], al                      ; 45A2 _ 88. 45, EF
        cmp     byte [ebp-11H], 64                      ; 45A5 _ 80. 7D, EF, 40
        jnz     ?_254                                   ; 45A9 _ 75, 06
        mov     byte [ebp-11H], 0                       ; 45AB _ C6. 45, EF, 00
        jmp     ?_257                                   ; 45AF _ EB, 1C

?_254:  cmp     byte [ebp-11H], 36                      ; 45B1 _ 80. 7D, EF, 24
        jnz     ?_255                                   ; 45B5 _ 75, 06
        mov     byte [ebp-11H], 15                      ; 45B7 _ C6. 45, EF, 0F
        jmp     ?_257                                   ; 45BB _ EB, 10

?_255:  cmp     byte [ebp-11H], 81                      ; 45BD _ 80. 7D, EF, 51
        jnz     ?_256                                   ; 45C1 _ 75, 06
        mov     byte [ebp-11H], 8                       ; 45C3 _ C6. 45, EF, 08
        jmp     ?_257                                   ; 45C7 _ EB, 04

?_256:  mov     byte [ebp-11H], 7                       ; 45C9 _ C6. 45, EF, 07
?_257:  mov     eax, dword [ebp+0CH]                    ; 45CD _ 8B. 45, 0C
        mov     ecx, dword [eax]                        ; 45D0 _ 8B. 08
        mov     eax, dword [ebp-10H]                    ; 45D2 _ 8B. 45, F0
        lea     edx, [eax+5H]                           ; 45D5 _ 8D. 50, 05
        mov     eax, dword [ebp+0CH]                    ; 45D8 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 45DB _ 8B. 40, 04
        imul    eax, edx                                ; 45DE _ 0F AF. C2
        mov     edx, dword [ebp+0CH]                    ; 45E1 _ 8B. 55, 0C
        mov     edx, dword [edx+4H]                     ; 45E4 _ 8B. 52, 04
        lea     ebx, [edx-15H]                          ; 45E7 _ 8D. 5A, EB
        mov     edx, dword [ebp-0CH]                    ; 45EA _ 8B. 55, F4
        add     edx, ebx                                ; 45ED _ 01. DA
        add     eax, edx                                ; 45EF _ 01. D0
        lea     edx, [ecx+eax]                          ; 45F1 _ 8D. 14 01
        movzx   eax, byte [ebp-11H]                     ; 45F4 _ 0F B6. 45, EF
        mov     byte [edx], al                          ; 45F8 _ 88. 02
        add     dword [ebp-0CH], 1                      ; 45FA _ 83. 45, F4, 01
?_258:  cmp     dword [ebp-0CH], 15                     ; 45FE _ 83. 7D, F4, 0F
        jle     ?_253                                   ; 4602 _ 7E, 89
        add     dword [ebp-10H], 1                      ; 4604 _ 83. 45, F0, 01
?_259:  cmp     dword [ebp-10H], 13                     ; 4608 _ 83. 7D, F0, 0D
        jle     ?_252                                   ; 460C _ 0F 8E, FFFFFF72
        nop                                             ; 4612 _ 90
        add     esp, 68                                 ; 4613 _ 83. C4, 44
        pop     ebx                                     ; 4616 _ 5B
        pop     ebp                                     ; 4617 _ 5D
        ret                                             ; 4618 _ C3
; _make_wtitle8 End of function

_make_textbox8:; Function begin
        push    ebp                                     ; 4619 _ 55
        mov     ebp, esp                                ; 461A _ 89. E5
        push    edi                                     ; 461C _ 57
        push    esi                                     ; 461D _ 56
        push    ebx                                     ; 461E _ 53
        sub     esp, 44                                 ; 461F _ 83. EC, 2C
        mov     edx, dword [ebp+0CH]                    ; 4622 _ 8B. 55, 0C
        mov     eax, dword [ebp+14H]                    ; 4625 _ 8B. 45, 14
        add     eax, edx                                ; 4628 _ 01. D0
        mov     dword [ebp-10H], eax                    ; 462A _ 89. 45, F0
        mov     edx, dword [ebp+10H]                    ; 462D _ 8B. 55, 10
        mov     eax, dword [ebp+18H]                    ; 4630 _ 8B. 45, 18
        add     eax, edx                                ; 4633 _ 01. D0
        mov     dword [ebp-14H], eax                    ; 4635 _ 89. 45, EC
        mov     eax, dword [ebp+10H]                    ; 4638 _ 8B. 45, 10
        lea     edi, [eax-3H]                           ; 463B _ 8D. 78, FD
        mov     eax, dword [ebp-10H]                    ; 463E _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 4641 _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 4644 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 4647 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 464A _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 464D _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 4650 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 4653 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 4656 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 4659 _ 8B. 00
        mov     dword [esp+18H], edi                    ; 465B _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 465F _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 4663 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 4667 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 15                      ; 466B _ C7. 44 24, 08, 0000000F
        mov     dword [esp+4H], edx                     ; 4673 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 4677 _ 89. 04 24
        call    _boxfill8                               ; 467A _ E8, FFFFF1DE
        mov     eax, dword [ebp-14H]                    ; 467F _ 8B. 45, EC
        lea     edi, [eax+1H]                           ; 4682 _ 8D. 78, 01
        mov     eax, dword [ebp+0CH]                    ; 4685 _ 8B. 45, 0C
        lea     esi, [eax-3H]                           ; 4688 _ 8D. 70, FD
        mov     eax, dword [ebp+10H]                    ; 468B _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 468E _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 4691 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 4694 _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 4697 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 469A _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 469D _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 46A0 _ 8B. 00
        mov     dword [esp+18H], edi                    ; 46A2 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 46A6 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 46AA _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 46AE _ 89. 4C 24, 0C
        mov     dword [esp+8H], 15                      ; 46B2 _ C7. 44 24, 08, 0000000F
        mov     dword [esp+4H], edx                     ; 46BA _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 46BE _ 89. 04 24
        call    _boxfill8                               ; 46C1 _ E8, FFFFF197
        mov     eax, dword [ebp-14H]                    ; 46C6 _ 8B. 45, EC
        lea     edi, [eax+2H]                           ; 46C9 _ 8D. 78, 02
        mov     eax, dword [ebp-10H]                    ; 46CC _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 46CF _ 8D. 70, 01
        mov     eax, dword [ebp-14H]                    ; 46D2 _ 8B. 45, EC
        lea     ebx, [eax+2H]                           ; 46D5 _ 8D. 58, 02
        mov     eax, dword [ebp+0CH]                    ; 46D8 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 46DB _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 46DE _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 46E1 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 46E4 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 46E7 _ 8B. 00
        mov     dword [esp+18H], edi                    ; 46E9 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 46ED _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 46F1 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 46F5 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 7                       ; 46F9 _ C7. 44 24, 08, 00000007
        mov     dword [esp+4H], edx                     ; 4701 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 4705 _ 89. 04 24
        call    _boxfill8                               ; 4708 _ E8, FFFFF150
        mov     eax, dword [ebp-14H]                    ; 470D _ 8B. 45, EC
        lea     edi, [eax+2H]                           ; 4710 _ 8D. 78, 02
        mov     eax, dword [ebp-10H]                    ; 4713 _ 8B. 45, F0
        lea     esi, [eax+2H]                           ; 4716 _ 8D. 70, 02
        mov     eax, dword [ebp+10H]                    ; 4719 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 471C _ 8D. 58, FD
        mov     eax, dword [ebp-10H]                    ; 471F _ 8B. 45, F0
        lea     ecx, [eax+2H]                           ; 4722 _ 8D. 48, 02
        mov     eax, dword [ebp+8H]                     ; 4725 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 4728 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 472B _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 472E _ 8B. 00
        mov     dword [esp+18H], edi                    ; 4730 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 4734 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 4738 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 473C _ 89. 4C 24, 0C
        mov     dword [esp+8H], 7                       ; 4740 _ C7. 44 24, 08, 00000007
        mov     dword [esp+4H], edx                     ; 4748 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 474C _ 89. 04 24
        call    _boxfill8                               ; 474F _ E8, FFFFF109
        mov     eax, dword [ebp+10H]                    ; 4754 _ 8B. 45, 10
        lea     esi, [eax-2H]                           ; 4757 _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 475A _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 475D _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 4760 _ 8B. 45, 0C
        lea     ecx, [eax-1H]                           ; 4763 _ 8D. 48, FF
        mov     eax, dword [ebp+8H]                     ; 4766 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 4769 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 476C _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 476F _ 8B. 00
        mov     dword [esp+18H], esi                    ; 4771 _ 89. 74 24, 18
        mov     esi, dword [ebp-10H]                    ; 4775 _ 8B. 75, F0
        mov     dword [esp+14H], esi                    ; 4778 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 477C _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 4780 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 0                       ; 4784 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 478C _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 4790 _ 89. 04 24
        call    _boxfill8                               ; 4793 _ E8, FFFFF0C5
        mov     eax, dword [ebp+0CH]                    ; 4798 _ 8B. 45, 0C
        lea     esi, [eax-2H]                           ; 479B _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 479E _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 47A1 _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 47A4 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 47A7 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 47AA _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 47AD _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 47B0 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 47B3 _ 8B. 00
        mov     edi, dword [ebp-14H]                    ; 47B5 _ 8B. 7D, EC
        mov     dword [esp+18H], edi                    ; 47B8 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 47BC _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 47C0 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 47C4 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 0                       ; 47C8 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 47D0 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 47D4 _ 89. 04 24
        call    _boxfill8                               ; 47D7 _ E8, FFFFF081
        mov     eax, dword [ebp-14H]                    ; 47DC _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 47DF _ 8D. 70, 01
        mov     eax, dword [ebp-14H]                    ; 47E2 _ 8B. 45, EC
        lea     ebx, [eax+1H]                           ; 47E5 _ 8D. 58, 01
        mov     eax, dword [ebp+0CH]                    ; 47E8 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 47EB _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 47EE _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 47F1 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 47F4 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 47F7 _ 8B. 00
        mov     dword [esp+18H], esi                    ; 47F9 _ 89. 74 24, 18
        mov     esi, dword [ebp-10H]                    ; 47FD _ 8B. 75, F0
        mov     dword [esp+14H], esi                    ; 4800 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 4804 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 4808 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 8                       ; 480C _ C7. 44 24, 08, 00000008
        mov     dword [esp+4H], edx                     ; 4814 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 4818 _ 89. 04 24
        call    _boxfill8                               ; 481B _ E8, FFFFF03D
        mov     eax, dword [ebp-14H]                    ; 4820 _ 8B. 45, EC
        lea     edi, [eax+1H]                           ; 4823 _ 8D. 78, 01
        mov     eax, dword [ebp-10H]                    ; 4826 _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 4829 _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 482C _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 482F _ 8D. 58, FE
        mov     eax, dword [ebp-10H]                    ; 4832 _ 8B. 45, F0
        lea     ecx, [eax+1H]                           ; 4835 _ 8D. 48, 01
        mov     eax, dword [ebp+8H]                     ; 4838 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 483B _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 483E _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 4841 _ 8B. 00
        mov     dword [esp+18H], edi                    ; 4843 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 4847 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 484B _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 484F _ 89. 4C 24, 0C
        mov     dword [esp+8H], 8                       ; 4853 _ C7. 44 24, 08, 00000008
        mov     dword [esp+4H], edx                     ; 485B _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 485F _ 89. 04 24
        call    _boxfill8                               ; 4862 _ E8, FFFFEFF6
        mov     eax, dword [ebp+10H]                    ; 4867 _ 8B. 45, 10
        lea     esi, [eax-1H]                           ; 486A _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 486D _ 8B. 45, 0C
        lea     ebx, [eax-1H]                           ; 4870 _ 8D. 58, FF
        mov     eax, dword [ebp+1CH]                    ; 4873 _ 8B. 45, 1C
        movzx   eax, al                                 ; 4876 _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 4879 _ 8B. 55, 08
        mov     ecx, dword [edx+4H]                     ; 487C _ 8B. 4A, 04
        mov     edx, dword [ebp+8H]                     ; 487F _ 8B. 55, 08
        mov     edx, dword [edx]                        ; 4882 _ 8B. 12
        mov     edi, dword [ebp-14H]                    ; 4884 _ 8B. 7D, EC
        mov     dword [esp+18H], edi                    ; 4887 _ 89. 7C 24, 18
        mov     edi, dword [ebp-10H]                    ; 488B _ 8B. 7D, F0
        mov     dword [esp+14H], edi                    ; 488E _ 89. 7C 24, 14
        mov     dword [esp+10H], esi                    ; 4892 _ 89. 74 24, 10
        mov     dword [esp+0CH], ebx                    ; 4896 _ 89. 5C 24, 0C
        mov     dword [esp+8H], eax                     ; 489A _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 489E _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 48A2 _ 89. 14 24
        call    _boxfill8                               ; 48A5 _ E8, FFFFEFB3
        nop                                             ; 48AA _ 90
        add     esp, 44                                 ; 48AB _ 83. C4, 2C
        pop     ebx                                     ; 48AE _ 5B
        pop     esi                                     ; 48AF _ 5E
        pop     edi                                     ; 48B0 _ 5F
        pop     ebp                                     ; 48B1 _ 5D
        ret                                             ; 48B2 _ C3
; _make_textbox8 End of function

_file_loadfile:; Function begin
        push    ebp                                     ; 48B3 _ 55
        mov     ebp, esp                                ; 48B4 _ 89. E5
        sub     esp, 56                                 ; 48B6 _ 83. EC, 38
        mov     dword [ebp-0CH], 88064                  ; 48B9 _ C7. 45, F4, 00015800
        mov     eax, dword [_memman]                    ; 48C0 _ A1, 00000000(d)
        mov     dword [esp+4H], 13                      ; 48C5 _ C7. 44 24, 04, 0000000D
        mov     dword [esp], eax                        ; 48CD _ 89. 04 24
        call    _memman_alloc                           ; 48D0 _ E8, 00000000(rel)
        mov     dword [ebp-1CH], eax                    ; 48D5 _ 89. 45, E4
        jmp     ?_272                                   ; 48D8 _ E9, 00000143

?_260:  mov     dword [ebp-10H], 0                      ; 48DD _ C7. 45, F0, 00000000
        jmp     ?_262                                   ; 48E4 _ EB, 0F

?_261:  mov     edx, dword [ebp-10H]                    ; 48E6 _ 8B. 55, F0
        mov     eax, dword [ebp-1CH]                    ; 48E9 _ 8B. 45, E4
        add     eax, edx                                ; 48EC _ 01. D0
        mov     byte [eax], 0                           ; 48EE _ C6. 00, 00
        add     dword [ebp-10H], 1                      ; 48F1 _ 83. 45, F0, 01
?_262:  cmp     dword [ebp-10H], 11                     ; 48F5 _ 83. 7D, F0, 0B
        jle     ?_261                                   ; 48F9 _ 7E, EB
        mov     dword [ebp-10H], 0                      ; 48FB _ C7. 45, F0, 00000000
        jmp     ?_264                                   ; 4902 _ EB, 2A

?_263:  mov     edx, dword [ebp-0CH]                    ; 4904 _ 8B. 55, F4
        mov     eax, dword [ebp-10H]                    ; 4907 _ 8B. 45, F0
        add     eax, edx                                ; 490A _ 01. D0
        movzx   eax, byte [eax]                         ; 490C _ 0F B6. 00
        test    al, al                                  ; 490F _ 84. C0
        jz      ?_265                                   ; 4911 _ 74, 23
        mov     edx, dword [ebp-0CH]                    ; 4913 _ 8B. 55, F4
        mov     eax, dword [ebp-10H]                    ; 4916 _ 8B. 45, F0
        add     eax, edx                                ; 4919 _ 01. D0
        movzx   ecx, byte [eax]                         ; 491B _ 0F B6. 08
        mov     edx, dword [ebp-10H]                    ; 491E _ 8B. 55, F0
        mov     eax, dword [ebp-1CH]                    ; 4921 _ 8B. 45, E4
        add     eax, edx                                ; 4924 _ 01. D0
        mov     edx, ecx                                ; 4926 _ 89. CA
        mov     byte [eax], dl                          ; 4928 _ 88. 10
        add     dword [ebp-10H], 1                      ; 492A _ 83. 45, F0, 01
?_264:  cmp     dword [ebp-10H], 7                      ; 492E _ 83. 7D, F0, 07
        jle     ?_263                                   ; 4932 _ 7E, D0
        jmp     ?_266                                   ; 4934 _ EB, 01

?_265:  nop                                             ; 4936 _ 90
?_266:  mov     dword [ebp-14H], 0                      ; 4937 _ C7. 45, EC, 00000000
        mov     edx, dword [ebp-10H]                    ; 493E _ 8B. 55, F0
        mov     eax, dword [ebp-1CH]                    ; 4941 _ 8B. 45, E4
        add     eax, edx                                ; 4944 _ 01. D0
        mov     byte [eax], 46                          ; 4946 _ C6. 00, 2E
        add     dword [ebp-10H], 1                      ; 4949 _ 83. 45, F0, 01
        mov     dword [ebp-14H], 0                      ; 494D _ C7. 45, EC, 00000000
        jmp     ?_268                                   ; 4954 _ EB, 22

?_267:  mov     edx, dword [ebp-0CH]                    ; 4956 _ 8B. 55, F4
        mov     eax, dword [ebp-14H]                    ; 4959 _ 8B. 45, EC
        add     eax, edx                                ; 495C _ 01. D0
        add     eax, 8                                  ; 495E _ 83. C0, 08
        movzx   ecx, byte [eax]                         ; 4961 _ 0F B6. 08
        mov     edx, dword [ebp-10H]                    ; 4964 _ 8B. 55, F0
        mov     eax, dword [ebp-1CH]                    ; 4967 _ 8B. 45, E4
        add     eax, edx                                ; 496A _ 01. D0
        mov     edx, ecx                                ; 496C _ 89. CA
        mov     byte [eax], dl                          ; 496E _ 88. 10
        add     dword [ebp-10H], 1                      ; 4970 _ 83. 45, F0, 01
        add     dword [ebp-14H], 1                      ; 4974 _ 83. 45, EC, 01
?_268:  cmp     dword [ebp-14H], 2                      ; 4978 _ 83. 7D, EC, 02
        jle     ?_267                                   ; 497C _ 7E, D8
        mov     eax, dword [ebp-1CH]                    ; 497E _ 8B. 45, E4
        mov     dword [esp+4H], eax                     ; 4981 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4985 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4988 _ 89. 04 24
        call    _strcmp                                 ; 498B _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 4990 _ 83. F8, 01
        jne     ?_271                                   ; 4993 _ 0F 85, 00000083
        mov     eax, dword [ebp-0CH]                    ; 4999 _ 8B. 45, F4
        mov     edx, dword [eax+1CH]                    ; 499C _ 8B. 50, 1C
        mov     eax, dword [_memman]                    ; 499F _ A1, 00000000(d)
        mov     dword [esp+4H], edx                     ; 49A4 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 49A8 _ 89. 04 24
        call    _memman_alloc_4k                        ; 49AB _ E8, 00000000(rel)
        mov     edx, eax                                ; 49B0 _ 89. C2
        mov     eax, dword [ebp+0CH]                    ; 49B2 _ 8B. 45, 0C
        mov     dword [eax], edx                        ; 49B5 _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 49B7 _ 8B. 45, F4
        mov     eax, dword [eax+1CH]                    ; 49BA _ 8B. 40, 1C
        mov     edx, eax                                ; 49BD _ 89. C2
        mov     eax, dword [ebp+0CH]                    ; 49BF _ 8B. 45, 0C
        mov     dword [eax+8H], edx                     ; 49C2 _ 89. 50, 08
        mov     dword [ebp-20H], 97280                  ; 49C5 _ C7. 45, E0, 00017C00
        mov     eax, dword [ebp-0CH]                    ; 49CC _ 8B. 45, F4
        movzx   eax, word [eax+1AH]                     ; 49CF _ 0F B7. 40, 1A
        movzx   eax, ax                                 ; 49D3 _ 0F B7. C0
        shl     eax, 9                                  ; 49D6 _ C1. E0, 09
        add     dword [ebp-20H], eax                    ; 49D9 _ 01. 45, E0
        mov     eax, dword [ebp-0CH]                    ; 49DC _ 8B. 45, F4
        mov     eax, dword [eax+1CH]                    ; 49DF _ 8B. 40, 1C
        mov     dword [ebp-24H], eax                    ; 49E2 _ 89. 45, DC
        mov     dword [ebp-18H], 0                      ; 49E5 _ C7. 45, E8, 00000000
        mov     dword [ebp-18H], 0                      ; 49EC _ C7. 45, E8, 00000000
        jmp     ?_270                                   ; 49F3 _ EB, 1D

?_269:  mov     edx, dword [ebp-18H]                    ; 49F5 _ 8B. 55, E8
        mov     eax, dword [ebp-20H]                    ; 49F8 _ 8B. 45, E0
        add     eax, edx                                ; 49FB _ 01. D0
        movzx   ecx, byte [eax]                         ; 49FD _ 0F B6. 08
        mov     eax, dword [ebp+0CH]                    ; 4A00 _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 4A03 _ 8B. 10
        mov     eax, dword [ebp-18H]                    ; 4A05 _ 8B. 45, E8
        add     eax, edx                                ; 4A08 _ 01. D0
        mov     edx, ecx                                ; 4A0A _ 89. CA
        mov     byte [eax], dl                          ; 4A0C _ 88. 10
        add     dword [ebp-18H], 1                      ; 4A0E _ 83. 45, E8, 01
?_270:  mov     eax, dword [ebp-18H]                    ; 4A12 _ 8B. 45, E8
        cmp     eax, dword [ebp-24H]                    ; 4A15 _ 3B. 45, DC
        jl      ?_269                                   ; 4A18 _ 7C, DB
        jmp     ?_273                                   ; 4A1A _ EB, 12

?_271:  add     dword [ebp-0CH], 32                     ; 4A1C _ 83. 45, F4, 20
?_272:  mov     eax, dword [ebp-0CH]                    ; 4A20 _ 8B. 45, F4
        movzx   eax, byte [eax]                         ; 4A23 _ 0F B6. 00
        test    al, al                                  ; 4A26 _ 84. C0
        jne     ?_260                                   ; 4A28 _ 0F 85, FFFFFEAF
?_273:  mov     edx, dword [ebp-1CH]                    ; 4A2E _ 8B. 55, E4
        mov     eax, dword [_memman]                    ; 4A31 _ A1, 00000000(d)
        mov     dword [esp+8H], 13                      ; 4A36 _ C7. 44 24, 08, 0000000D
        mov     dword [esp+4H], edx                     ; 4A3E _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 4A42 _ 89. 04 24
        call    _memman_free                            ; 4A45 _ E8, 00000000(rel)
        nop                                             ; 4A4A _ 90
        leave                                           ; 4A4B _ C9
        ret                                             ; 4A4C _ C3
; _file_loadfile End of function

_intHandlerForStackOverFlow:; Function begin
        push    ebp                                     ; 4A4D _ 55
        mov     ebp, esp                                ; 4A4E _ 89. E5
        sub     esp, 40                                 ; 4A50 _ 83. EC, 28
        call    _task_now                               ; 4A53 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 4A58 _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 4A5B _ 8B. 45, F4
        mov     dword [eax+98H], 8                      ; 4A5E _ C7. 80, 00000098, 00000008
        mov     dword [esp], ?_436                      ; 4A68 _ C7. 04 24, 000000BA(d)
        call    _cons_putstr                            ; 4A6F _ E8, FFFFD69D
        mov     eax, dword [ebp-0CH]                    ; 4A74 _ 8B. 45, F4
        mov     dword [eax+98H], 8                      ; 4A77 _ C7. 80, 00000098, 00000008
        mov     eax, dword [ebp-0CH]                    ; 4A81 _ 8B. 45, F4
        mov     eax, dword [eax+9CH]                    ; 4A84 _ 8B. 80, 0000009C
        lea     edx, [eax+10H]                          ; 4A8A _ 8D. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 4A8D _ 8B. 45, F4
        mov     dword [eax+9CH], edx                    ; 4A90 _ 89. 90, 0000009C
        mov     dword [esp], ?_437                      ; 4A96 _ C7. 04 24, 000000C1(d)
        call    _cons_putstr                            ; 4A9D _ E8, FFFFD66F
        mov     eax, dword [ebp-0CH]                    ; 4AA2 _ 8B. 45, F4
        mov     dword [eax+98H], 8                      ; 4AA5 _ C7. 80, 00000098, 00000008
        mov     eax, dword [ebp-0CH]                    ; 4AAF _ 8B. 45, F4
        mov     eax, dword [eax+9CH]                    ; 4AB2 _ 8B. 80, 0000009C
        lea     edx, [eax+10H]                          ; 4AB8 _ 8D. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 4ABB _ 8B. 45, F4
        mov     dword [eax+9CH], edx                    ; 4ABE _ 89. 90, 0000009C
        mov     eax, dword [ebp+8H]                     ; 4AC4 _ 8B. 45, 08
        add     eax, 44                                 ; 4AC7 _ 83. C0, 2C
        mov     eax, dword [eax]                        ; 4ACA _ 8B. 00
        mov     dword [esp], eax                        ; 4ACC _ 89. 04 24
        call    _intToHexStr                            ; 4ACF _ E8, FFFFF176
        mov     dword [ebp-10H], eax                    ; 4AD4 _ 89. 45, F0
        mov     dword [esp], ?_438                      ; 4AD7 _ C7. 04 24, 000000D1(d)
        call    _cons_putstr                            ; 4ADE _ E8, FFFFD62E
        mov     eax, dword [ebp-10H]                    ; 4AE3 _ 8B. 45, F0
        mov     dword [esp], eax                        ; 4AE6 _ 89. 04 24
        call    _cons_putstr                            ; 4AE9 _ E8, FFFFD623
        mov     eax, dword [ebp-0CH]                    ; 4AEE _ 8B. 45, F4
        mov     dword [eax+98H], 8                      ; 4AF1 _ C7. 80, 00000098, 00000008
        mov     eax, dword [ebp-0CH]                    ; 4AFB _ 8B. 45, F4
        mov     eax, dword [eax+9CH]                    ; 4AFE _ 8B. 80, 0000009C
        lea     edx, [eax+10H]                          ; 4B04 _ 8D. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 4B07 _ 8B. 45, F4
        mov     dword [eax+9CH], edx                    ; 4B0A _ 89. 90, 0000009C
        mov     eax, dword [ebp-0CH]                    ; 4B10 _ 8B. 45, F4
        add     eax, 48                                 ; 4B13 _ 83. C0, 30
        leave                                           ; 4B16 _ C9
        ret                                             ; 4B17 _ C3
; _intHandlerForStackOverFlow End of function

_intHandlerForException:; Function begin
        push    ebp                                     ; 4B18 _ 55
        mov     ebp, esp                                ; 4B19 _ 89. E5
        sub     esp, 40                                 ; 4B1B _ 83. EC, 28
        call    _task_now                               ; 4B1E _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 4B23 _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 4B26 _ 8B. 45, F4
        mov     dword [eax+98H], 8                      ; 4B29 _ C7. 80, 00000098, 00000008
        mov     dword [esp], ?_439                      ; 4B33 _ C7. 04 24, 000000D8(d)
        call    _cons_putstr                            ; 4B3A _ E8, FFFFD5D2
        mov     eax, dword [ebp-0CH]                    ; 4B3F _ 8B. 45, F4
        mov     dword [eax+98H], 8                      ; 4B42 _ C7. 80, 00000098, 00000008
        mov     eax, dword [ebp-0CH]                    ; 4B4C _ 8B. 45, F4
        mov     eax, dword [eax+9CH]                    ; 4B4F _ 8B. 80, 0000009C
        lea     edx, [eax+10H]                          ; 4B55 _ 8D. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 4B58 _ 8B. 45, F4
        mov     dword [eax+9CH], edx                    ; 4B5B _ 89. 90, 0000009C
        mov     dword [esp], ?_440                      ; 4B61 _ C7. 04 24, 000000E0(d)
        call    _cons_putstr                            ; 4B68 _ E8, FFFFD5A4
        mov     eax, dword [ebp-0CH]                    ; 4B6D _ 8B. 45, F4
        mov     eax, dword [eax+9CH]                    ; 4B70 _ 8B. 80, 0000009C
        lea     edx, [eax+10H]                          ; 4B76 _ 8D. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 4B79 _ 8B. 45, F4
        mov     dword [eax+9CH], edx                    ; 4B7C _ 89. 90, 0000009C
        mov     eax, dword [ebp-0CH]                    ; 4B82 _ 8B. 45, F4
        mov     dword [eax+98H], 8                      ; 4B85 _ C7. 80, 00000098, 00000008
        mov     eax, dword [ebp-0CH]                    ; 4B8F _ 8B. 45, F4
        add     eax, 48                                 ; 4B92 _ 83. C0, 30
        leave                                           ; 4B95 _ C9
        ret                                             ; 4B96 _ C3
; _intHandlerForException End of function

        nop                                             ; 4B97 _ 90


_shtctl_init:
        push    ebp                                     ; 4B98 _ 55
        mov     ebp, esp                                ; 4B99 _ 89. E5
        sub     esp, 40                                 ; 4B9B _ 83. EC, 28
        mov     dword [esp+4H], 9232                    ; 4B9E _ C7. 44 24, 04, 00002410
        mov     eax, dword [ebp+8H]                     ; 4BA6 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4BA9 _ 89. 04 24
        call    _memman_alloc_4k                        ; 4BAC _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 4BB1 _ 89. 45, F0
        cmp     dword [ebp-10H], 0                      ; 4BB4 _ 83. 7D, F0, 00
        jnz     ?_274                                   ; 4BB8 _ 75, 0A
        mov     eax, 0                                  ; 4BBA _ B8, 00000000
        jmp     ?_278                                   ; 4BBF _ E9, 000000A3

?_274:  mov     eax, dword [ebp+10H]                    ; 4BC4 _ 8B. 45, 10
        imul    eax, dword [ebp+14H]                    ; 4BC7 _ 0F AF. 45, 14
        mov     dword [esp+4H], eax                     ; 4BCB _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4BCF _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4BD2 _ 89. 04 24
        call    _memman_alloc_4k                        ; 4BD5 _ E8, 00000000(rel)
        mov     edx, eax                                ; 4BDA _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 4BDC _ 8B. 45, F0
        mov     dword [eax+4H], edx                     ; 4BDF _ 89. 50, 04
        mov     eax, dword [ebp-10H]                    ; 4BE2 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 4BE5 _ 8B. 40, 04
        test    eax, eax                                ; 4BE8 _ 85. C0
        jnz     ?_275                                   ; 4BEA _ 75, 21
        mov     eax, dword [ebp-10H]                    ; 4BEC _ 8B. 45, F0
        mov     dword [esp+8H], 9232                    ; 4BEF _ C7. 44 24, 08, 00002410
        mov     dword [esp+4H], eax                     ; 4BF7 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4BFB _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4BFE _ 89. 04 24
        call    _memman_free_4k                         ; 4C01 _ E8, 00000000(rel)
        mov     eax, 0                                  ; 4C06 _ B8, 00000000
        jmp     ?_278                                   ; 4C0B _ EB, 5A

?_275:  mov     eax, dword [ebp-10H]                    ; 4C0D _ 8B. 45, F0
        mov     edx, dword [ebp+0CH]                    ; 4C10 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 4C13 _ 89. 10
        mov     eax, dword [ebp-10H]                    ; 4C15 _ 8B. 45, F0
        mov     edx, dword [ebp+10H]                    ; 4C18 _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 4C1B _ 89. 50, 08
        mov     eax, dword [ebp-10H]                    ; 4C1E _ 8B. 45, F0
        mov     edx, dword [ebp+14H]                    ; 4C21 _ 8B. 55, 14
        mov     dword [eax+0CH], edx                    ; 4C24 _ 89. 50, 0C
        mov     eax, dword [ebp-10H]                    ; 4C27 _ 8B. 45, F0
        mov     dword [eax+10H], -1                     ; 4C2A _ C7. 40, 10, FFFFFFFF
        mov     dword [ebp-0CH], 0                      ; 4C31 _ C7. 45, F4, 00000000
        jmp     ?_277                                   ; 4C38 _ EB, 21

?_276:  mov     ecx, dword [ebp-10H]                    ; 4C3A _ 8B. 4D, F0
        mov     edx, dword [ebp-0CH]                    ; 4C3D _ 8B. 55, F4
        mov     eax, edx                                ; 4C40 _ 89. D0
        shl     eax, 3                                  ; 4C42 _ C1. E0, 03
        add     eax, edx                                ; 4C45 _ 01. D0
        shl     eax, 2                                  ; 4C47 _ C1. E0, 02
        add     eax, ecx                                ; 4C4A _ 01. C8
        add     eax, 1072                               ; 4C4C _ 05, 00000430
        mov     dword [eax], 0                          ; 4C51 _ C7. 00, 00000000
        add     dword [ebp-0CH], 1                      ; 4C57 _ 83. 45, F4, 01
?_277:  cmp     dword [ebp-0CH], 255                    ; 4C5B _ 81. 7D, F4, 000000FF
        jle     ?_276                                   ; 4C62 _ 7E, D6
        mov     eax, dword [ebp-10H]                    ; 4C64 _ 8B. 45, F0
?_278:  leave                                           ; 4C67 _ C9
        ret                                             ; 4C68 _ C3

_sheet_alloc:; Function begin
        push    ebp                                     ; 4C69 _ 55
        mov     ebp, esp                                ; 4C6A _ 89. E5
        sub     esp, 24                                 ; 4C6C _ 83. EC, 18
        mov     dword [ebp-0CH], 0                      ; 4C6F _ C7. 45, F4, 00000000
        jmp     ?_281                                   ; 4C76 _ EB, 75

?_279:  mov     ecx, dword [ebp+8H]                     ; 4C78 _ 8B. 4D, 08
        mov     edx, dword [ebp-0CH]                    ; 4C7B _ 8B. 55, F4
        mov     eax, edx                                ; 4C7E _ 89. D0
        shl     eax, 3                                  ; 4C80 _ C1. E0, 03
        add     eax, edx                                ; 4C83 _ 01. D0
        shl     eax, 2                                  ; 4C85 _ C1. E0, 02
        add     eax, ecx                                ; 4C88 _ 01. C8
        add     eax, 1072                               ; 4C8A _ 05, 00000430
        mov     eax, dword [eax]                        ; 4C8F _ 8B. 00
        test    eax, eax                                ; 4C91 _ 85. C0
        jnz     ?_280                                   ; 4C93 _ 75, 54
        mov     edx, dword [ebp-0CH]                    ; 4C95 _ 8B. 55, F4
        mov     eax, edx                                ; 4C98 _ 89. D0
        shl     eax, 3                                  ; 4C9A _ C1. E0, 03
        add     eax, edx                                ; 4C9D _ 01. D0
        shl     eax, 2                                  ; 4C9F _ C1. E0, 02
        lea     edx, [eax+410H]                         ; 4CA2 _ 8D. 90, 00000410
        mov     eax, dword [ebp+8H]                     ; 4CA8 _ 8B. 45, 08
        add     eax, edx                                ; 4CAB _ 01. D0
        add     eax, 4                                  ; 4CAD _ 83. C0, 04
        mov     dword [ebp-10H], eax                    ; 4CB0 _ 89. 45, F0
        mov     eax, dword [ebp+8H]                     ; 4CB3 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 4CB6 _ 8B. 55, F4
        add     edx, 4                                  ; 4CB9 _ 83. C2, 04
        mov     ecx, dword [ebp-10H]                    ; 4CBC _ 8B. 4D, F0
        mov     dword [eax+edx*4+4H], ecx               ; 4CBF _ 89. 4C 90, 04
        mov     eax, dword [ebp-10H]                    ; 4CC3 _ 8B. 45, F0
        mov     dword [eax+1CH], 1                      ; 4CC6 _ C7. 40, 1C, 00000001
        mov     eax, dword [ebp-10H]                    ; 4CCD _ 8B. 45, F0
        mov     dword [eax+18H], -1                     ; 4CD0 _ C7. 40, 18, FFFFFFFF
        call    _task_now                               ; 4CD7 _ E8, 00000000(rel)
        mov     edx, eax                                ; 4CDC _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 4CDE _ 8B. 45, F0
        mov     dword [eax+20H], edx                    ; 4CE1 _ 89. 50, 20
        mov     eax, dword [ebp-10H]                    ; 4CE4 _ 8B. 45, F0
        jmp     ?_282                                   ; 4CE7 _ EB, 12

?_280:  add     dword [ebp-0CH], 1                      ; 4CE9 _ 83. 45, F4, 01
?_281:  cmp     dword [ebp-0CH], 255                    ; 4CED _ 81. 7D, F4, 000000FF
        jle     ?_279                                   ; 4CF4 _ 7E, 82
        mov     eax, 0                                  ; 4CF6 _ B8, 00000000
?_282:  leave                                           ; 4CFB _ C9
        ret                                             ; 4CFC _ C3
; _sheet_alloc End of function

_sheet_setbuf:; Function begin
        push    ebp                                     ; 4CFD _ 55
        mov     ebp, esp                                ; 4CFE _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 4D00 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 4D03 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 4D06 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 4D08 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 4D0B _ 8B. 55, 10
        mov     dword [eax+4H], edx                     ; 4D0E _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 4D11 _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 4D14 _ 8B. 55, 14
        mov     dword [eax+8H], edx                     ; 4D17 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 4D1A _ 8B. 45, 08
        mov     edx, dword [ebp+18H]                    ; 4D1D _ 8B. 55, 18
        mov     dword [eax+14H], edx                    ; 4D20 _ 89. 50, 14
        nop                                             ; 4D23 _ 90
        pop     ebp                                     ; 4D24 _ 5D
        ret                                             ; 4D25 _ C3
; _sheet_setbuf End of function

_sheet_updown:; Function begin
        push    ebp                                     ; 4D26 _ 55
        mov     ebp, esp                                ; 4D27 _ 89. E5
        push    edi                                     ; 4D29 _ 57
        push    esi                                     ; 4D2A _ 56
        push    ebx                                     ; 4D2B _ 53
        sub     esp, 60                                 ; 4D2C _ 83. EC, 3C
        mov     eax, dword [ebp+0CH]                    ; 4D2F _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 4D32 _ 8B. 40, 18
        mov     dword [ebp-20H], eax                    ; 4D35 _ 89. 45, E0
        mov     eax, dword [ebp+8H]                     ; 4D38 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 4D3B _ 8B. 40, 10
        add     eax, 1                                  ; 4D3E _ 83. C0, 01
        cmp     dword [ebp+10H], eax                    ; 4D41 _ 39. 45, 10
        jle     ?_283                                   ; 4D44 _ 7E, 0C
        mov     eax, dword [ebp+8H]                     ; 4D46 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 4D49 _ 8B. 40, 10
        add     eax, 1                                  ; 4D4C _ 83. C0, 01
        mov     dword [ebp+10H], eax                    ; 4D4F _ 89. 45, 10
?_283:  cmp     dword [ebp+10H], -1                     ; 4D52 _ 83. 7D, 10, FF
        jge     ?_284                                   ; 4D56 _ 7D, 07
        mov     dword [ebp+10H], -1                     ; 4D58 _ C7. 45, 10, FFFFFFFF
?_284:  mov     eax, dword [ebp+0CH]                    ; 4D5F _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 4D62 _ 8B. 55, 10
        mov     dword [eax+18H], edx                    ; 4D65 _ 89. 50, 18
        mov     eax, dword [ebp-20H]                    ; 4D68 _ 8B. 45, E0
        cmp     eax, dword [ebp+10H]                    ; 4D6B _ 3B. 45, 10
        jle     ?_291                                   ; 4D6E _ 0F 8E, 00000212
        cmp     dword [ebp+10H], 0                      ; 4D74 _ 83. 7D, 10, 00
        js      ?_287                                   ; 4D78 _ 0F 88, 000000FE
        mov     eax, dword [ebp-20H]                    ; 4D7E _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 4D81 _ 89. 45, E4
        jmp     ?_286                                   ; 4D84 _ EB, 34

?_285:  mov     eax, dword [ebp-1CH]                    ; 4D86 _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 4D89 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 4D8C _ 8B. 45, 08
        add     edx, 4                                  ; 4D8F _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 4D92 _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 4D96 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 4D99 _ 8B. 55, E4
        add     edx, 4                                  ; 4D9C _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 4D9F _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 4DA3 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 4DA6 _ 8B. 55, E4
        add     edx, 4                                  ; 4DA9 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 4DAC _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 4DB0 _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 4DB3 _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 4DB6 _ 83. 6D, E4, 01
?_286:  mov     eax, dword [ebp-1CH]                    ; 4DBA _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 4DBD _ 3B. 45, 10
        jg      ?_285                                   ; 4DC0 _ 7F, C4
        mov     eax, dword [ebp+8H]                     ; 4DC2 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 4DC5 _ 8B. 55, 10
        add     edx, 4                                  ; 4DC8 _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 4DCB _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 4DCE _ 89. 4C 90, 04
        mov     eax, dword [ebp+10H]                    ; 4DD2 _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 4DD5 _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 4DD8 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 4DDB _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 4DDE _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 4DE1 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 4DE4 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 4DE7 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 4DEA _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 4DED _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 4DF0 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 4DF3 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 4DF6 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 4DF9 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 4DFC _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 4DFF _ 8B. 40, 0C
        mov     dword [esp+14H], esi                    ; 4E02 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 4E06 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 4E0A _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 4E0E _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 4E12 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4E16 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4E19 _ 89. 04 24
        call    _sheet_refreshmap                       ; 4E1C _ E8, 00000643
        mov     eax, dword [ebp+10H]                    ; 4E21 _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 4E24 _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 4E27 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 4E2A _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 4E2D _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 4E30 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 4E33 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 4E36 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 4E39 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 4E3C _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 4E3F _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 4E42 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 4E45 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 4E48 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 4E4B _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 4E4E _ 8B. 40, 0C
        mov     edi, dword [ebp-20H]                    ; 4E51 _ 8B. 7D, E0
        mov     dword [esp+18H], edi                    ; 4E54 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 4E58 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 4E5C _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 4E60 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 4E64 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 4E68 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4E6C _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4E6F _ 89. 04 24
        call    _sheet_refreshsub                       ; 4E72 _ E8, 00000465
        jmp     ?_298                                   ; 4E77 _ E9, 0000027D

?_287:  mov     eax, dword [ebp+8H]                     ; 4E7C _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 4E7F _ 8B. 40, 10
        cmp     dword [ebp-20H], eax                    ; 4E82 _ 39. 45, E0
        jge     ?_290                                   ; 4E85 _ 7D, 47
        mov     eax, dword [ebp-20H]                    ; 4E87 _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 4E8A _ 89. 45, E4
        jmp     ?_289                                   ; 4E8D _ EB, 34

?_288:  mov     eax, dword [ebp-1CH]                    ; 4E8F _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 4E92 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 4E95 _ 8B. 45, 08
        add     edx, 4                                  ; 4E98 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 4E9B _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 4E9F _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 4EA2 _ 8B. 55, E4
        add     edx, 4                                  ; 4EA5 _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 4EA8 _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 4EAC _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 4EAF _ 8B. 55, E4
        add     edx, 4                                  ; 4EB2 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 4EB5 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 4EB9 _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 4EBC _ 89. 50, 18
        add     dword [ebp-1CH], 1                      ; 4EBF _ 83. 45, E4, 01
?_289:  mov     eax, dword [ebp+8H]                     ; 4EC3 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 4EC6 _ 8B. 40, 10
        cmp     dword [ebp-1CH], eax                    ; 4EC9 _ 39. 45, E4
        jl      ?_288                                   ; 4ECC _ 7C, C1
?_290:  mov     eax, dword [ebp+8H]                     ; 4ECE _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 4ED1 _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 4ED4 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 4ED7 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 4EDA _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 4EDD _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 4EE0 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 4EE3 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 4EE6 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 4EE9 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 4EEC _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 4EEF _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 4EF2 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 4EF5 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 4EF8 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 4EFB _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 4EFE _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 4F01 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 4F04 _ 8B. 40, 0C
        mov     dword [esp+14H], 0                      ; 4F07 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], ebx                    ; 4F0F _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 4F13 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 4F17 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 4F1B _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4F1F _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4F22 _ 89. 04 24
        call    _sheet_refreshmap                       ; 4F25 _ E8, 0000053A
        mov     eax, dword [ebp-20H]                    ; 4F2A _ 8B. 45, E0
        lea     esi, [eax-1H]                           ; 4F2D _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 4F30 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 4F33 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 4F36 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 4F39 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 4F3C _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 4F3F _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 4F42 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 4F45 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 4F48 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 4F4B _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 4F4E _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 4F51 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 4F54 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 4F57 _ 8B. 40, 0C
        mov     dword [esp+18H], esi                    ; 4F5A _ 89. 74 24, 18
        mov     dword [esp+14H], 0                      ; 4F5E _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], ebx                    ; 4F66 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 4F6A _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 4F6E _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 4F72 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4F76 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4F79 _ 89. 04 24
        call    _sheet_refreshsub                       ; 4F7C _ E8, 0000035B
        jmp     ?_298                                   ; 4F81 _ E9, 00000173

?_291:  mov     eax, dword [ebp-20H]                    ; 4F86 _ 8B. 45, E0
        cmp     eax, dword [ebp+10H]                    ; 4F89 _ 3B. 45, 10
        jge     ?_298                                   ; 4F8C _ 0F 8D, 00000167
        cmp     dword [ebp-20H], 0                      ; 4F92 _ 83. 7D, E0, 00
        js      ?_294                                   ; 4F96 _ 78, 56
        mov     eax, dword [ebp-20H]                    ; 4F98 _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 4F9B _ 89. 45, E4
        jmp     ?_293                                   ; 4F9E _ EB, 34

?_292:  mov     eax, dword [ebp-1CH]                    ; 4FA0 _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 4FA3 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 4FA6 _ 8B. 45, 08
        add     edx, 4                                  ; 4FA9 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 4FAC _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 4FB0 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 4FB3 _ 8B. 55, E4
        add     edx, 4                                  ; 4FB6 _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 4FB9 _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 4FBD _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 4FC0 _ 8B. 55, E4
        add     edx, 4                                  ; 4FC3 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 4FC6 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 4FCA _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 4FCD _ 89. 50, 18
        add     dword [ebp-1CH], 1                      ; 4FD0 _ 83. 45, E4, 01
?_293:  mov     eax, dword [ebp-1CH]                    ; 4FD4 _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 4FD7 _ 3B. 45, 10
        jl      ?_292                                   ; 4FDA _ 7C, C4
        mov     eax, dword [ebp+8H]                     ; 4FDC _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 4FDF _ 8B. 55, 10
        add     edx, 4                                  ; 4FE2 _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 4FE5 _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 4FE8 _ 89. 4C 90, 04
        jmp     ?_297                                   ; 4FEC _ EB, 6C

?_294:  mov     eax, dword [ebp+8H]                     ; 4FEE _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 4FF1 _ 8B. 40, 10
        mov     dword [ebp-1CH], eax                    ; 4FF4 _ 89. 45, E4
        jmp     ?_296                                   ; 4FF7 _ EB, 3A

?_295:  mov     eax, dword [ebp-1CH]                    ; 4FF9 _ 8B. 45, E4
        lea     ebx, [eax+1H]                           ; 4FFC _ 8D. 58, 01
        mov     eax, dword [ebp+8H]                     ; 4FFF _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 5002 _ 8B. 55, E4
        add     edx, 4                                  ; 5005 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 5008 _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 500C _ 8B. 45, 08
        lea     edx, [ebx+4H]                           ; 500F _ 8D. 53, 04
        mov     dword [eax+edx*4+4H], ecx               ; 5012 _ 89. 4C 90, 04
        mov     eax, dword [ebp-1CH]                    ; 5016 _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 5019 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 501C _ 8B. 45, 08
        add     edx, 4                                  ; 501F _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 5022 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 5026 _ 8B. 55, E4
        add     edx, 1                                  ; 5029 _ 83. C2, 01
        mov     dword [eax+18H], edx                    ; 502C _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 502F _ 83. 6D, E4, 01
?_296:  mov     eax, dword [ebp-1CH]                    ; 5033 _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 5036 _ 3B. 45, 10
        jge     ?_295                                   ; 5039 _ 7D, BE
        mov     eax, dword [ebp+8H]                     ; 503B _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 503E _ 8B. 55, 10
        add     edx, 4                                  ; 5041 _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 5044 _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 5047 _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 504B _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 504E _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 5051 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 5054 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 5057 _ 89. 50, 10
?_297:  mov     eax, dword [ebp+0CH]                    ; 505A _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 505D _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 5060 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 5063 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 5066 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 5069 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 506C _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 506F _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 5072 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 5075 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 5078 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 507B _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 507E _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 5081 _ 8B. 40, 0C
        mov     esi, dword [ebp+10H]                    ; 5084 _ 8B. 75, 10
        mov     dword [esp+14H], esi                    ; 5087 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 508B _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 508F _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 5093 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 5097 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 509B _ 8B. 45, 08
        mov     dword [esp], eax                        ; 509E _ 89. 04 24
        call    _sheet_refreshmap                       ; 50A1 _ E8, 000003BE
        mov     eax, dword [ebp+0CH]                    ; 50A6 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 50A9 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 50AC _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 50AF _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 50B2 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 50B5 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 50B8 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 50BB _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 50BE _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 50C1 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 50C4 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 50C7 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 50CA _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 50CD _ 8B. 40, 0C
        mov     esi, dword [ebp+10H]                    ; 50D0 _ 8B. 75, 10
        mov     dword [esp+18H], esi                    ; 50D3 _ 89. 74 24, 18
        mov     esi, dword [ebp+10H]                    ; 50D7 _ 8B. 75, 10
        mov     dword [esp+14H], esi                    ; 50DA _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 50DE _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 50E2 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 50E6 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 50EA _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 50EE _ 8B. 45, 08
        mov     dword [esp], eax                        ; 50F1 _ 89. 04 24
        call    _sheet_refreshsub                       ; 50F4 _ E8, 000001E3
?_298:  nop                                             ; 50F9 _ 90
        add     esp, 60                                 ; 50FA _ 83. C4, 3C
        pop     ebx                                     ; 50FD _ 5B
        pop     esi                                     ; 50FE _ 5E
        pop     edi                                     ; 50FF _ 5F
        pop     ebp                                     ; 5100 _ 5D
        ret                                             ; 5101 _ C3
; _sheet_updown End of function

_sheet_refresh:; Function begin
        push    ebp                                     ; 5102 _ 55
        mov     ebp, esp                                ; 5103 _ 89. E5
        push    edi                                     ; 5105 _ 57
        push    esi                                     ; 5106 _ 56
        push    ebx                                     ; 5107 _ 53
        sub     esp, 60                                 ; 5108 _ 83. EC, 3C
        mov     eax, dword [ebp+0CH]                    ; 510B _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 510E _ 8B. 40, 18
        test    eax, eax                                ; 5111 _ 85. C0
        js      ?_299                                   ; 5113 _ 78, 61
        mov     eax, dword [ebp+0CH]                    ; 5115 _ 8B. 45, 0C
        mov     edi, dword [eax+18H]                    ; 5118 _ 8B. 78, 18
        mov     eax, dword [ebp+0CH]                    ; 511B _ 8B. 45, 0C
        mov     esi, dword [eax+18H]                    ; 511E _ 8B. 70, 18
        mov     eax, dword [ebp+0CH]                    ; 5121 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 5124 _ 8B. 50, 10
        mov     eax, dword [ebp+1CH]                    ; 5127 _ 8B. 45, 1C
        lea     ebx, [edx+eax]                          ; 512A _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 512D _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 5130 _ 8B. 50, 0C
        mov     eax, dword [ebp+18H]                    ; 5133 _ 8B. 45, 18
        lea     ecx, [edx+eax]                          ; 5136 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 5139 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 513C _ 8B. 50, 10
        mov     eax, dword [ebp+14H]                    ; 513F _ 8B. 45, 14
        add     edx, eax                                ; 5142 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 5144 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 5147 _ 8B. 40, 0C
        mov     dword [ebp-1CH], eax                    ; 514A _ 89. 45, E4
        mov     eax, dword [ebp+10H]                    ; 514D _ 8B. 45, 10
        add     eax, dword [ebp-1CH]                    ; 5150 _ 03. 45, E4
        mov     dword [esp+18H], edi                    ; 5153 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 5157 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 515B _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 515F _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 5163 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 5167 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 516B _ 8B. 45, 08
        mov     dword [esp], eax                        ; 516E _ 89. 04 24
        call    _sheet_refreshsub                       ; 5171 _ E8, 00000166
?_299:  mov     eax, 0                                  ; 5176 _ B8, 00000000
        add     esp, 60                                 ; 517B _ 83. C4, 3C
        pop     ebx                                     ; 517E _ 5B
        pop     esi                                     ; 517F _ 5E
        pop     edi                                     ; 5180 _ 5F
        pop     ebp                                     ; 5181 _ 5D
        ret                                             ; 5182 _ C3
; _sheet_refresh End of function

_sheet_slide:; Function begin
        push    ebp                                     ; 5183 _ 55
        mov     ebp, esp                                ; 5184 _ 89. E5
        push    esi                                     ; 5186 _ 56
        push    ebx                                     ; 5187 _ 53
        sub     esp, 48                                 ; 5188 _ 83. EC, 30
        mov     eax, dword [ebp+0CH]                    ; 518B _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 518E _ 8B. 40, 0C
        mov     dword [ebp-0CH], eax                    ; 5191 _ 89. 45, F4
        mov     eax, dword [ebp+0CH]                    ; 5194 _ 8B. 45, 0C
        mov     eax, dword [eax+10H]                    ; 5197 _ 8B. 40, 10
        mov     dword [ebp-10H], eax                    ; 519A _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 519D _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 51A0 _ 8B. 55, 10
        mov     dword [eax+0CH], edx                    ; 51A3 _ 89. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 51A6 _ 8B. 45, 0C
        mov     edx, dword [ebp+14H]                    ; 51A9 _ 8B. 55, 14
        mov     dword [eax+10H], edx                    ; 51AC _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 51AF _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 51B2 _ 8B. 40, 18
        test    eax, eax                                ; 51B5 _ 85. C0
        js      ?_300                                   ; 51B7 _ 0F 88, 00000117
        mov     eax, dword [ebp+0CH]                    ; 51BD _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 51C0 _ 8B. 50, 08
        mov     eax, dword [ebp-10H]                    ; 51C3 _ 8B. 45, F0
        add     edx, eax                                ; 51C6 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 51C8 _ 8B. 45, 0C
        mov     ecx, dword [eax+4H]                     ; 51CB _ 8B. 48, 04
        mov     eax, dword [ebp-0CH]                    ; 51CE _ 8B. 45, F4
        add     eax, ecx                                ; 51D1 _ 01. C8
        mov     dword [esp+14H], 0                      ; 51D3 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], edx                    ; 51DB _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 51DF _ 89. 44 24, 0C
        mov     eax, dword [ebp-10H]                    ; 51E3 _ 8B. 45, F0
        mov     dword [esp+8H], eax                     ; 51E6 _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 51EA _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 51ED _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 51F1 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 51F4 _ 89. 04 24
        call    _sheet_refreshmap                       ; 51F7 _ E8, 00000268
        mov     eax, dword [ebp+0CH]                    ; 51FC _ 8B. 45, 0C
        mov     ecx, dword [eax+18H]                    ; 51FF _ 8B. 48, 18
        mov     eax, dword [ebp+0CH]                    ; 5202 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 5205 _ 8B. 50, 08
        mov     eax, dword [ebp+14H]                    ; 5208 _ 8B. 45, 14
        add     edx, eax                                ; 520B _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 520D _ 8B. 45, 0C
        mov     ebx, dword [eax+4H]                     ; 5210 _ 8B. 58, 04
        mov     eax, dword [ebp+10H]                    ; 5213 _ 8B. 45, 10
        add     eax, ebx                                ; 5216 _ 01. D8
        mov     dword [esp+14H], ecx                    ; 5218 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 521C _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 5220 _ 89. 44 24, 0C
        mov     eax, dword [ebp+14H]                    ; 5224 _ 8B. 45, 14
        mov     dword [esp+8H], eax                     ; 5227 _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 522B _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 522E _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 5232 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 5235 _ 89. 04 24
        call    _sheet_refreshmap                       ; 5238 _ E8, 00000227
        mov     eax, dword [ebp+0CH]                    ; 523D _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 5240 _ 8B. 40, 18
        lea     ecx, [eax-1H]                           ; 5243 _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 5246 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 5249 _ 8B. 50, 08
        mov     eax, dword [ebp-10H]                    ; 524C _ 8B. 45, F0
        add     edx, eax                                ; 524F _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 5251 _ 8B. 45, 0C
        mov     ebx, dword [eax+4H]                     ; 5254 _ 8B. 58, 04
        mov     eax, dword [ebp-0CH]                    ; 5257 _ 8B. 45, F4
        add     eax, ebx                                ; 525A _ 01. D8
        mov     dword [esp+18H], ecx                    ; 525C _ 89. 4C 24, 18
        mov     dword [esp+14H], 0                      ; 5260 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], edx                    ; 5268 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 526C _ 89. 44 24, 0C
        mov     eax, dword [ebp-10H]                    ; 5270 _ 8B. 45, F0
        mov     dword [esp+8H], eax                     ; 5273 _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 5277 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 527A _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 527E _ 8B. 45, 08
        mov     dword [esp], eax                        ; 5281 _ 89. 04 24
        call    _sheet_refreshsub                       ; 5284 _ E8, 00000053
        mov     eax, dword [ebp+0CH]                    ; 5289 _ 8B. 45, 0C
        mov     ebx, dword [eax+18H]                    ; 528C _ 8B. 58, 18
        mov     eax, dword [ebp+0CH]                    ; 528F _ 8B. 45, 0C
        mov     ecx, dword [eax+18H]                    ; 5292 _ 8B. 48, 18
        mov     eax, dword [ebp+0CH]                    ; 5295 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 5298 _ 8B. 50, 08
        mov     eax, dword [ebp+14H]                    ; 529B _ 8B. 45, 14
        add     edx, eax                                ; 529E _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 52A0 _ 8B. 45, 0C
        mov     esi, dword [eax+4H]                     ; 52A3 _ 8B. 70, 04
        mov     eax, dword [ebp+10H]                    ; 52A6 _ 8B. 45, 10
        add     eax, esi                                ; 52A9 _ 01. F0
        mov     dword [esp+18H], ebx                    ; 52AB _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 52AF _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 52B3 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 52B7 _ 89. 44 24, 0C
        mov     eax, dword [ebp+14H]                    ; 52BB _ 8B. 45, 14
        mov     dword [esp+8H], eax                     ; 52BE _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 52C2 _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 52C5 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 52C9 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 52CC _ 89. 04 24
        call    _sheet_refreshsub                       ; 52CF _ E8, 00000008
?_300:  nop                                             ; 52D4 _ 90
        add     esp, 48                                 ; 52D5 _ 83. C4, 30
        pop     ebx                                     ; 52D8 _ 5B
        pop     esi                                     ; 52D9 _ 5E
        pop     ebp                                     ; 52DA _ 5D
        ret                                             ; 52DB _ C3
; _sheet_slide End of function

_sheet_refreshsub:; Function begin
        push    ebp                                     ; 52DC _ 55
        mov     ebp, esp                                ; 52DD _ 89. E5
        sub     esp, 48                                 ; 52DF _ 83. EC, 30
        mov     eax, dword [ebp+8H]                     ; 52E2 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 52E5 _ 8B. 00
        mov     dword [ebp-10H], eax                    ; 52E7 _ 89. 45, F0
        mov     eax, dword [ebp+8H]                     ; 52EA _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 52ED _ 8B. 40, 04
        mov     dword [ebp-14H], eax                    ; 52F0 _ 89. 45, EC
        cmp     dword [ebp+0CH], 0                      ; 52F3 _ 83. 7D, 0C, 00
        jns     ?_301                                   ; 52F7 _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 52F9 _ C7. 45, 0C, 00000000
?_301:  cmp     dword [ebp+10H], 8                      ; 5300 _ 83. 7D, 10, 08
        jg      ?_302                                   ; 5304 _ 7F, 07
        mov     dword [ebp+10H], 0                      ; 5306 _ C7. 45, 10, 00000000
?_302:  mov     eax, dword [ebp+8H]                     ; 530D _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 5310 _ 8B. 40, 08
        cmp     dword [ebp+14H], eax                    ; 5313 _ 39. 45, 14
        jle     ?_303                                   ; 5316 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 5318 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 531B _ 8B. 40, 08
        mov     dword [ebp+14H], eax                    ; 531E _ 89. 45, 14
?_303:  mov     eax, dword [ebp+8H]                     ; 5321 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 5324 _ 8B. 40, 0C
        cmp     dword [ebp+18H], eax                    ; 5327 _ 39. 45, 18
        jle     ?_304                                   ; 532A _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 532C _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 532F _ 8B. 40, 0C
        mov     dword [ebp+18H], eax                    ; 5332 _ 89. 45, 18
?_304:  mov     eax, dword [ebp+1CH]                    ; 5335 _ 8B. 45, 1C
        mov     dword [ebp-4H], eax                     ; 5338 _ 89. 45, FC
        jmp     ?_311                                   ; 533B _ E9, 00000115

?_305:  mov     eax, dword [ebp+8H]                     ; 5340 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 5343 _ 8B. 55, FC
        add     edx, 4                                  ; 5346 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 5349 _ 8B. 44 90, 04
        mov     dword [ebp-18H], eax                    ; 534D _ 89. 45, E8
        mov     eax, dword [ebp-18H]                    ; 5350 _ 8B. 45, E8
        mov     eax, dword [eax]                        ; 5353 _ 8B. 00
        mov     dword [ebp-1CH], eax                    ; 5355 _ 89. 45, E4
        mov     eax, dword [ebp+8H]                     ; 5358 _ 8B. 45, 08
        add     eax, 1044                               ; 535B _ 05, 00000414
        mov     edx, dword [ebp-18H]                    ; 5360 _ 8B. 55, E8
        sub     edx, eax                                ; 5363 _ 29. C2
        mov     eax, edx                                ; 5365 _ 89. D0
        sar     eax, 2                                  ; 5367 _ C1. F8, 02
        imul    eax, eax, 954437177                     ; 536A _ 69. C0, 38E38E39
        mov     byte [ebp-1DH], al                      ; 5370 _ 88. 45, E3
        mov     dword [ebp-0CH], 0                      ; 5373 _ C7. 45, F4, 00000000
        jmp     ?_310                                   ; 537A _ E9, 000000C3

?_306:  mov     eax, dword [ebp-18H]                    ; 537F _ 8B. 45, E8
        mov     edx, dword [eax+10H]                    ; 5382 _ 8B. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 5385 _ 8B. 45, F4
        add     eax, edx                                ; 5388 _ 01. D0
        mov     dword [ebp-24H], eax                    ; 538A _ 89. 45, DC
        mov     dword [ebp-8H], 0                       ; 538D _ C7. 45, F8, 00000000
        jmp     ?_309                                   ; 5394 _ E9, 00000096

?_307:  mov     eax, dword [ebp-18H]                    ; 5399 _ 8B. 45, E8
        mov     edx, dword [eax+0CH]                    ; 539C _ 8B. 50, 0C
        mov     eax, dword [ebp-8H]                     ; 539F _ 8B. 45, F8
        add     eax, edx                                ; 53A2 _ 01. D0
        mov     dword [ebp-28H], eax                    ; 53A4 _ 89. 45, D8
        mov     eax, dword [ebp+0CH]                    ; 53A7 _ 8B. 45, 0C
        cmp     eax, dword [ebp-28H]                    ; 53AA _ 3B. 45, D8
        jg      ?_308                                   ; 53AD _ 7F, 7C
        mov     eax, dword [ebp-28H]                    ; 53AF _ 8B. 45, D8
        cmp     eax, dword [ebp+14H]                    ; 53B2 _ 3B. 45, 14
        jge     ?_308                                   ; 53B5 _ 7D, 74
        mov     eax, dword [ebp+10H]                    ; 53B7 _ 8B. 45, 10
        cmp     eax, dword [ebp-24H]                    ; 53BA _ 3B. 45, DC
        jg      ?_308                                   ; 53BD _ 7F, 6C
        mov     eax, dword [ebp-24H]                    ; 53BF _ 8B. 45, DC
        cmp     eax, dword [ebp+18H]                    ; 53C2 _ 3B. 45, 18
        jge     ?_308                                   ; 53C5 _ 7D, 64
        mov     eax, dword [ebp-18H]                    ; 53C7 _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 53CA _ 8B. 40, 04
        imul    eax, dword [ebp-0CH]                    ; 53CD _ 0F AF. 45, F4
        mov     edx, dword [ebp-8H]                     ; 53D1 _ 8B. 55, F8
        add     eax, edx                                ; 53D4 _ 01. D0
        mov     edx, eax                                ; 53D6 _ 89. C2
        mov     eax, dword [ebp-1CH]                    ; 53D8 _ 8B. 45, E4
        add     eax, edx                                ; 53DB _ 01. D0
        movzx   eax, byte [eax]                         ; 53DD _ 0F B6. 00
        mov     byte [ebp-29H], al                      ; 53E0 _ 88. 45, D7
        mov     eax, dword [ebp+8H]                     ; 53E3 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 53E6 _ 8B. 40, 08
        imul    eax, dword [ebp-24H]                    ; 53E9 _ 0F AF. 45, DC
        mov     edx, dword [ebp-28H]                    ; 53ED _ 8B. 55, D8
        add     eax, edx                                ; 53F0 _ 01. D0
        mov     edx, eax                                ; 53F2 _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 53F4 _ 8B. 45, EC
        add     eax, edx                                ; 53F7 _ 01. D0
        movzx   eax, byte [eax]                         ; 53F9 _ 0F B6. 00
        cmp     byte [ebp-1DH], al                      ; 53FC _ 38. 45, E3
        jnz     ?_308                                   ; 53FF _ 75, 2A
        movzx   eax, byte [ebp-29H]                     ; 5401 _ 0F B6. 45, D7
        mov     edx, dword [ebp-18H]                    ; 5405 _ 8B. 55, E8
        mov     edx, dword [edx+14H]                    ; 5408 _ 8B. 52, 14
        cmp     eax, edx                                ; 540B _ 39. D0
        jz      ?_308                                   ; 540D _ 74, 1C
        mov     eax, dword [ebp+8H]                     ; 540F _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 5412 _ 8B. 40, 08
        imul    eax, dword [ebp-24H]                    ; 5415 _ 0F AF. 45, DC
        mov     edx, dword [ebp-28H]                    ; 5419 _ 8B. 55, D8
        add     eax, edx                                ; 541C _ 01. D0
        mov     edx, eax                                ; 541E _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 5420 _ 8B. 45, F0
        add     edx, eax                                ; 5423 _ 01. C2
        movzx   eax, byte [ebp-29H]                     ; 5425 _ 0F B6. 45, D7
        mov     byte [edx], al                          ; 5429 _ 88. 02
?_308:  add     dword [ebp-8H], 1                       ; 542B _ 83. 45, F8, 01
?_309:  mov     eax, dword [ebp-18H]                    ; 542F _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 5432 _ 8B. 40, 04
        cmp     dword [ebp-8H], eax                     ; 5435 _ 39. 45, F8
        jl      ?_307                                   ; 5438 _ 0F 8C, FFFFFF5B
        add     dword [ebp-0CH], 1                      ; 543E _ 83. 45, F4, 01
?_310:  mov     eax, dword [ebp-18H]                    ; 5442 _ 8B. 45, E8
        mov     eax, dword [eax+8H]                     ; 5445 _ 8B. 40, 08
        cmp     dword [ebp-0CH], eax                    ; 5448 _ 39. 45, F4
        jl      ?_306                                   ; 544B _ 0F 8C, FFFFFF2E
        add     dword [ebp-4H], 1                       ; 5451 _ 83. 45, FC, 01
?_311:  mov     eax, dword [ebp-4H]                     ; 5455 _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 5458 _ 3B. 45, 20
        jle     ?_305                                   ; 545B _ 0F 8E, FFFFFEDF
        nop                                             ; 5461 _ 90
        leave                                           ; 5462 _ C9
        ret                                             ; 5463 _ C3
; _sheet_refreshsub End of function

_sheet_refreshmap:; Function begin
        push    ebp                                     ; 5464 _ 55
        mov     ebp, esp                                ; 5465 _ 89. E5
        sub     esp, 64                                 ; 5467 _ 83. EC, 40
        mov     eax, dword [ebp+8H]                     ; 546A _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 546D _ 8B. 40, 04
        mov     dword [ebp-20H], eax                    ; 5470 _ 89. 45, E0
        cmp     dword [ebp+0CH], 0                      ; 5473 _ 83. 7D, 0C, 00
        jns     ?_312                                   ; 5477 _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 5479 _ C7. 45, 0C, 00000000
?_312:  cmp     dword [ebp+10H], 0                      ; 5480 _ 83. 7D, 10, 00
        jns     ?_313                                   ; 5484 _ 79, 07
        mov     dword [ebp+10H], 0                      ; 5486 _ C7. 45, 10, 00000000
?_313:  mov     eax, dword [ebp+8H]                     ; 548D _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 5490 _ 8B. 40, 08
        cmp     dword [ebp+14H], eax                    ; 5493 _ 39. 45, 14
        jle     ?_314                                   ; 5496 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 5498 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 549B _ 8B. 40, 08
        mov     dword [ebp+14H], eax                    ; 549E _ 89. 45, 14
?_314:  mov     eax, dword [ebp+8H]                     ; 54A1 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 54A4 _ 8B. 40, 0C
        cmp     dword [ebp+18H], eax                    ; 54A7 _ 39. 45, 18
        jle     ?_315                                   ; 54AA _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 54AC _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 54AF _ 8B. 40, 0C
        mov     dword [ebp+18H], eax                    ; 54B2 _ 89. 45, 18
?_315:  mov     eax, dword [ebp+1CH]                    ; 54B5 _ 8B. 45, 1C
        mov     dword [ebp-4H], eax                     ; 54B8 _ 89. 45, FC
        jmp     ?_326                                   ; 54BB _ E9, 0000013F

?_316:  mov     eax, dword [ebp+8H]                     ; 54C0 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 54C3 _ 8B. 55, FC
        add     edx, 4                                  ; 54C6 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 54C9 _ 8B. 44 90, 04
        mov     dword [ebp-24H], eax                    ; 54CD _ 89. 45, DC
        mov     eax, dword [ebp+8H]                     ; 54D0 _ 8B. 45, 08
        add     eax, 1044                               ; 54D3 _ 05, 00000414
        mov     edx, dword [ebp-24H]                    ; 54D8 _ 8B. 55, DC
        sub     edx, eax                                ; 54DB _ 29. C2
        mov     eax, edx                                ; 54DD _ 89. D0
        sar     eax, 2                                  ; 54DF _ C1. F8, 02
        imul    eax, eax, 954437177                     ; 54E2 _ 69. C0, 38E38E39
        mov     byte [ebp-25H], al                      ; 54E8 _ 88. 45, DB
        mov     eax, dword [ebp-24H]                    ; 54EB _ 8B. 45, DC
        mov     eax, dword [eax]                        ; 54EE _ 8B. 00
        mov     dword [ebp-2CH], eax                    ; 54F0 _ 89. 45, D4
        mov     eax, dword [ebp-24H]                    ; 54F3 _ 8B. 45, DC
        mov     eax, dword [eax+0CH]                    ; 54F6 _ 8B. 40, 0C
        mov     edx, dword [ebp+0CH]                    ; 54F9 _ 8B. 55, 0C
        sub     edx, eax                                ; 54FC _ 29. C2
        mov     eax, edx                                ; 54FE _ 89. D0
        mov     dword [ebp-10H], eax                    ; 5500 _ 89. 45, F0
        mov     eax, dword [ebp-24H]                    ; 5503 _ 8B. 45, DC
        mov     eax, dword [eax+10H]                    ; 5506 _ 8B. 40, 10
        mov     edx, dword [ebp+10H]                    ; 5509 _ 8B. 55, 10
        sub     edx, eax                                ; 550C _ 29. C2
        mov     eax, edx                                ; 550E _ 89. D0
        mov     dword [ebp-14H], eax                    ; 5510 _ 89. 45, EC
        mov     eax, dword [ebp-24H]                    ; 5513 _ 8B. 45, DC
        mov     eax, dword [eax+0CH]                    ; 5516 _ 8B. 40, 0C
        mov     edx, dword [ebp+14H]                    ; 5519 _ 8B. 55, 14
        sub     edx, eax                                ; 551C _ 29. C2
        mov     eax, edx                                ; 551E _ 89. D0
        mov     dword [ebp-18H], eax                    ; 5520 _ 89. 45, E8
        mov     eax, dword [ebp-24H]                    ; 5523 _ 8B. 45, DC
        mov     eax, dword [eax+10H]                    ; 5526 _ 8B. 40, 10
        mov     edx, dword [ebp+18H]                    ; 5529 _ 8B. 55, 18
        sub     edx, eax                                ; 552C _ 29. C2
        mov     eax, edx                                ; 552E _ 89. D0
        mov     dword [ebp-1CH], eax                    ; 5530 _ 89. 45, E4
        cmp     dword [ebp-10H], 0                      ; 5533 _ 83. 7D, F0, 00
        jns     ?_317                                   ; 5537 _ 79, 07
        mov     dword [ebp-10H], 0                      ; 5539 _ C7. 45, F0, 00000000
?_317:  cmp     dword [ebp-14H], 0                      ; 5540 _ 83. 7D, EC, 00
        jns     ?_318                                   ; 5544 _ 79, 07
        mov     dword [ebp-14H], 0                      ; 5546 _ C7. 45, EC, 00000000
?_318:  mov     eax, dword [ebp-24H]                    ; 554D _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 5550 _ 8B. 40, 04
        cmp     dword [ebp-18H], eax                    ; 5553 _ 39. 45, E8
        jle     ?_319                                   ; 5556 _ 7E, 09
        mov     eax, dword [ebp-24H]                    ; 5558 _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 555B _ 8B. 40, 04
        mov     dword [ebp-18H], eax                    ; 555E _ 89. 45, E8
?_319:  mov     eax, dword [ebp-24H]                    ; 5561 _ 8B. 45, DC
        mov     eax, dword [eax+8H]                     ; 5564 _ 8B. 40, 08
        cmp     dword [ebp-1CH], eax                    ; 5567 _ 39. 45, E4
        jle     ?_320                                   ; 556A _ 7E, 09
        mov     eax, dword [ebp-24H]                    ; 556C _ 8B. 45, DC
        mov     eax, dword [eax+8H]                     ; 556F _ 8B. 40, 08
        mov     dword [ebp-1CH], eax                    ; 5572 _ 89. 45, E4
?_320:  mov     eax, dword [ebp-14H]                    ; 5575 _ 8B. 45, EC
        mov     dword [ebp-0CH], eax                    ; 5578 _ 89. 45, F4
        jmp     ?_325                                   ; 557B _ EB, 76

?_321:  mov     eax, dword [ebp-24H]                    ; 557D _ 8B. 45, DC
        mov     edx, dword [eax+10H]                    ; 5580 _ 8B. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 5583 _ 8B. 45, F4
        add     eax, edx                                ; 5586 _ 01. D0
        mov     dword [ebp-30H], eax                    ; 5588 _ 89. 45, D0
        mov     eax, dword [ebp-10H]                    ; 558B _ 8B. 45, F0
        mov     dword [ebp-8H], eax                     ; 558E _ 89. 45, F8
        jmp     ?_324                                   ; 5591 _ EB, 54

?_322:  mov     eax, dword [ebp-24H]                    ; 5593 _ 8B. 45, DC
        mov     edx, dword [eax+0CH]                    ; 5596 _ 8B. 50, 0C
        mov     eax, dword [ebp-8H]                     ; 5599 _ 8B. 45, F8
        add     eax, edx                                ; 559C _ 01. D0
        mov     dword [ebp-34H], eax                    ; 559E _ 89. 45, CC
        mov     eax, dword [ebp-24H]                    ; 55A1 _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 55A4 _ 8B. 40, 04
        imul    eax, dword [ebp-0CH]                    ; 55A7 _ 0F AF. 45, F4
        mov     edx, dword [ebp-8H]                     ; 55AB _ 8B. 55, F8
        add     eax, edx                                ; 55AE _ 01. D0
        mov     edx, eax                                ; 55B0 _ 89. C2
        mov     eax, dword [ebp-2CH]                    ; 55B2 _ 8B. 45, D4
        add     eax, edx                                ; 55B5 _ 01. D0
        movzx   eax, byte [eax]                         ; 55B7 _ 0F B6. 00
        movzx   eax, al                                 ; 55BA _ 0F B6. C0
        mov     edx, dword [ebp-24H]                    ; 55BD _ 8B. 55, DC
        mov     edx, dword [edx+14H]                    ; 55C0 _ 8B. 52, 14
        cmp     eax, edx                                ; 55C3 _ 39. D0
        jz      ?_323                                   ; 55C5 _ 74, 1C
        mov     eax, dword [ebp+8H]                     ; 55C7 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 55CA _ 8B. 40, 08
        imul    eax, dword [ebp-30H]                    ; 55CD _ 0F AF. 45, D0
        mov     edx, dword [ebp-34H]                    ; 55D1 _ 8B. 55, CC
        add     eax, edx                                ; 55D4 _ 01. D0
        mov     edx, eax                                ; 55D6 _ 89. C2
        mov     eax, dword [ebp-20H]                    ; 55D8 _ 8B. 45, E0
        add     edx, eax                                ; 55DB _ 01. C2
        movzx   eax, byte [ebp-25H]                     ; 55DD _ 0F B6. 45, DB
        mov     byte [edx], al                          ; 55E1 _ 88. 02
?_323:  add     dword [ebp-8H], 1                       ; 55E3 _ 83. 45, F8, 01
?_324:  mov     eax, dword [ebp-8H]                     ; 55E7 _ 8B. 45, F8
        cmp     eax, dword [ebp-18H]                    ; 55EA _ 3B. 45, E8
        jl      ?_322                                   ; 55ED _ 7C, A4
        add     dword [ebp-0CH], 1                      ; 55EF _ 83. 45, F4, 01
?_325:  mov     eax, dword [ebp-0CH]                    ; 55F3 _ 8B. 45, F4
        cmp     eax, dword [ebp-1CH]                    ; 55F6 _ 3B. 45, E4
        jl      ?_321                                   ; 55F9 _ 7C, 82
        add     dword [ebp-4H], 1                       ; 55FB _ 83. 45, FC, 01
?_326:  mov     eax, dword [ebp+8H]                     ; 55FF _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 5602 _ 8B. 40, 10
        cmp     dword [ebp-4H], eax                     ; 5605 _ 39. 45, FC
        jle     ?_316                                   ; 5608 _ 0F 8E, FFFFFEB2
        nop                                             ; 560E _ 90
        leave                                           ; 560F _ C9
        ret                                             ; 5610 _ C3
; _sheet_refreshmap End of function

_sheet_free:; Function begin
        push    ebp                                     ; 5611 _ 55
        mov     ebp, esp                                ; 5612 _ 89. E5
        sub     esp, 24                                 ; 5614 _ 83. EC, 18
        mov     eax, dword [ebp+0CH]                    ; 5617 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 561A _ 8B. 40, 18
        test    eax, eax                                ; 561D _ 85. C0
        js      ?_327                                   ; 561F _ 78, 1A
        mov     dword [esp+8H], -1                      ; 5621 _ C7. 44 24, 08, FFFFFFFF
        mov     eax, dword [ebp+0CH]                    ; 5629 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 562C _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 5630 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 5633 _ 89. 04 24
        call    _sheet_updown                           ; 5636 _ E8, FFFFF6EB
?_327:  mov     eax, dword [ebp+0CH]                    ; 563B _ 8B. 45, 0C
        mov     dword [eax+1CH], 0                      ; 563E _ C7. 40, 1C, 00000000
        nop                                             ; 5645 _ 90
        leave                                           ; 5646 _ C9
        ret                                             ; 5647 _ C3
; _sheet_free End of function


_memman_init:
        push    ebp                                     ; 5648 _ 55
        mov     ebp, esp                                ; 5649 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 564B _ 8B. 45, 08
        mov     dword [eax], 0                          ; 564E _ C7. 00, 00000000
        mov     eax, dword [ebp+8H]                     ; 5654 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 5657 _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 565E _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 5661 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 5668 _ 8B. 45, 08
        mov     dword [eax+0CH], 0                      ; 566B _ C7. 40, 0C, 00000000
        nop                                             ; 5672 _ 90
        pop     ebp                                     ; 5673 _ 5D
        ret                                             ; 5674 _ C3

_memman_total:; Function begin
        push    ebp                                     ; 5675 _ 55
        mov     ebp, esp                                ; 5676 _ 89. E5
        sub     esp, 16                                 ; 5678 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 567B _ C7. 45, F8, 00000000
        mov     dword [ebp-4H], 0                       ; 5682 _ C7. 45, FC, 00000000
        jmp     ?_329                                   ; 5689 _ EB, 14

?_328:  mov     eax, dword [ebp+8H]                     ; 568B _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 568E _ 8B. 55, FC
        add     edx, 2                                  ; 5691 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 5694 _ 8B. 44 D0, 04
        add     dword [ebp-8H], eax                     ; 5698 _ 01. 45, F8
        add     dword [ebp-4H], 1                       ; 569B _ 83. 45, FC, 01
?_329:  mov     eax, dword [ebp+8H]                     ; 569F _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 56A2 _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 56A4 _ 39. 45, FC
        jc      ?_328                                   ; 56A7 _ 72, E2
        mov     eax, dword [ebp-8H]                     ; 56A9 _ 8B. 45, F8
        leave                                           ; 56AC _ C9
        ret                                             ; 56AD _ C3
; _memman_total End of function

_memman_alloc:; Function begin
        push    ebp                                     ; 56AE _ 55
        mov     ebp, esp                                ; 56AF _ 89. E5
        push    ebx                                     ; 56B1 _ 53
        sub     esp, 16                                 ; 56B2 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 56B5 _ C7. 45, F8, 00000000
        jmp     ?_335                                   ; 56BC _ E9, 000000BB

?_330:  mov     eax, dword [ebp+8H]                     ; 56C1 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 56C4 _ 8B. 55, F8
        add     edx, 2                                  ; 56C7 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 56CA _ 8B. 44 D0, 04
        cmp     dword [ebp+0CH], eax                    ; 56CE _ 39. 45, 0C
        ja      ?_334                                   ; 56D1 _ 0F 87, 000000A1
        mov     eax, dword [ebp+8H]                     ; 56D7 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 56DA _ 8B. 55, F8
        add     edx, 2                                  ; 56DD _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 56E0 _ 8B. 04 D0
        mov     dword [ebp-0CH], eax                    ; 56E3 _ 89. 45, F4
        mov     eax, dword [ebp+8H]                     ; 56E6 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 56E9 _ 8B. 55, F8
        add     edx, 2                                  ; 56EC _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 56EF _ 8B. 14 D0
        mov     eax, dword [ebp+0CH]                    ; 56F2 _ 8B. 45, 0C
        lea     ecx, [edx+eax]                          ; 56F5 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 56F8 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 56FB _ 8B. 55, F8
        add     edx, 2                                  ; 56FE _ 83. C2, 02
        mov     dword [eax+edx*8], ecx                  ; 5701 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 5704 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 5707 _ 8B. 55, F8
        add     edx, 2                                  ; 570A _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 570D _ 8B. 44 D0, 04
        sub     eax, dword [ebp+0CH]                    ; 5711 _ 2B. 45, 0C
        mov     edx, dword [ebp+8H]                     ; 5714 _ 8B. 55, 08
        mov     ecx, dword [ebp-8H]                     ; 5717 _ 8B. 4D, F8
        add     ecx, 2                                  ; 571A _ 83. C1, 02
        mov     dword [edx+ecx*8+4H], eax               ; 571D _ 89. 44 CA, 04
        mov     eax, dword [ebp+8H]                     ; 5721 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 5724 _ 8B. 55, F8
        add     edx, 2                                  ; 5727 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 572A _ 8B. 44 D0, 04
        test    eax, eax                                ; 572E _ 85. C0
        jnz     ?_333                                   ; 5730 _ 75, 41
        mov     eax, dword [ebp+8H]                     ; 5732 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 5735 _ 8B. 00
        lea     edx, [eax-1H]                           ; 5737 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 573A _ 8B. 45, 08
        mov     dword [eax], edx                        ; 573D _ 89. 10
        jmp     ?_332                                   ; 573F _ EB, 28

?_331:  mov     eax, dword [ebp-8H]                     ; 5741 _ 8B. 45, F8
        lea     edx, [eax+1H]                           ; 5744 _ 8D. 50, 01
        mov     ecx, dword [ebp+8H]                     ; 5747 _ 8B. 4D, 08
        mov     eax, dword [ebp-8H]                     ; 574A _ 8B. 45, F8
        lea     ebx, [eax+2H]                           ; 574D _ 8D. 58, 02
        mov     eax, dword [ebp+8H]                     ; 5750 _ 8B. 45, 08
        add     edx, 2                                  ; 5753 _ 83. C2, 02
        lea     edx, [eax+edx*8]                        ; 5756 _ 8D. 14 D0
        mov     eax, dword [edx]                        ; 5759 _ 8B. 02
        mov     edx, dword [edx+4H]                     ; 575B _ 8B. 52, 04
        mov     dword [ecx+ebx*8], eax                  ; 575E _ 89. 04 D9
        mov     dword [ecx+ebx*8+4H], edx               ; 5761 _ 89. 54 D9, 04
        add     dword [ebp-8H], 1                       ; 5765 _ 83. 45, F8, 01
?_332:  mov     eax, dword [ebp+8H]                     ; 5769 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 576C _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 576E _ 39. 45, F8
        jc      ?_331                                   ; 5771 _ 72, CE
?_333:  mov     eax, dword [ebp-0CH]                    ; 5773 _ 8B. 45, F4
        jmp     ?_336                                   ; 5776 _ EB, 17

?_334:  add     dword [ebp-8H], 1                       ; 5778 _ 83. 45, F8, 01
?_335:  mov     eax, dword [ebp+8H]                     ; 577C _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 577F _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 5781 _ 39. 45, F8
        jc      ?_330                                   ; 5784 _ 0F 82, FFFFFF37
        mov     eax, 0                                  ; 578A _ B8, 00000000
?_336:  add     esp, 16                                 ; 578F _ 83. C4, 10
        pop     ebx                                     ; 5792 _ 5B
        pop     ebp                                     ; 5793 _ 5D
        ret                                             ; 5794 _ C3
; _memman_alloc End of function

_memman_free:; Function begin
        push    ebp                                     ; 5795 _ 55
        mov     ebp, esp                                ; 5796 _ 89. E5
        push    ebx                                     ; 5798 _ 53
        sub     esp, 16                                 ; 5799 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 579C _ C7. 45, F8, 00000000
        jmp     ?_338                                   ; 57A3 _ EB, 15

?_337:  mov     eax, dword [ebp+8H]                     ; 57A5 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 57A8 _ 8B. 55, F8
        add     edx, 2                                  ; 57AB _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 57AE _ 8B. 04 D0
        cmp     dword [ebp+0CH], eax                    ; 57B1 _ 39. 45, 0C
        jc      ?_339                                   ; 57B4 _ 72, 10
        add     dword [ebp-8H], 1                       ; 57B6 _ 83. 45, F8, 01
?_338:  mov     eax, dword [ebp+8H]                     ; 57BA _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 57BD _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 57BF _ 39. 45, F8
        jl      ?_337                                   ; 57C2 _ 7C, E1
        jmp     ?_340                                   ; 57C4 _ EB, 01

?_339:  nop                                             ; 57C6 _ 90
?_340:  cmp     dword [ebp-8H], 0                       ; 57C7 _ 83. 7D, F8, 00
        jle     ?_344                                   ; 57CB _ 0F 8E, 000000F0
        mov     eax, dword [ebp-8H]                     ; 57D1 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 57D4 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 57D7 _ 8B. 45, 08
        add     edx, 2                                  ; 57DA _ 83. C2, 02
        mov     ecx, dword [eax+edx*8]                  ; 57DD _ 8B. 0C D0
        mov     eax, dword [ebp-8H]                     ; 57E0 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 57E3 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 57E6 _ 8B. 45, 08
        add     edx, 2                                  ; 57E9 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 57EC _ 8B. 44 D0, 04
        add     eax, ecx                                ; 57F0 _ 01. C8
        cmp     dword [ebp+0CH], eax                    ; 57F2 _ 39. 45, 0C
        jne     ?_344                                   ; 57F5 _ 0F 85, 000000C6
        mov     eax, dword [ebp-8H]                     ; 57FB _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 57FE _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 5801 _ 8B. 45, 08
        add     edx, 2                                  ; 5804 _ 83. C2, 02
        mov     ecx, dword [eax+edx*8+4H]               ; 5807 _ 8B. 4C D0, 04
        mov     eax, dword [ebp-8H]                     ; 580B _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 580E _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 5811 _ 8B. 45, 10
        add     ecx, eax                                ; 5814 _ 01. C1
        mov     eax, dword [ebp+8H]                     ; 5816 _ 8B. 45, 08
        add     edx, 2                                  ; 5819 _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 581C _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 5820 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 5823 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 5825 _ 39. 45, F8
        jge     ?_343                                   ; 5828 _ 0F 8D, 00000089
        mov     edx, dword [ebp+0CH]                    ; 582E _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 5831 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 5834 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 5837 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 583A _ 8B. 55, F8
        add     edx, 2                                  ; 583D _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 5840 _ 8B. 04 D0
        cmp     ecx, eax                                ; 5843 _ 39. C1
        jnz     ?_343                                   ; 5845 _ 75, 70
        mov     eax, dword [ebp-8H]                     ; 5847 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 584A _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 584D _ 8B. 45, 08
        add     edx, 2                                  ; 5850 _ 83. C2, 02
        mov     ecx, dword [eax+edx*8+4H]               ; 5853 _ 8B. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 5857 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 585A _ 8B. 55, F8
        add     edx, 2                                  ; 585D _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 5860 _ 8B. 44 D0, 04
        mov     edx, dword [ebp-8H]                     ; 5864 _ 8B. 55, F8
        sub     edx, 1                                  ; 5867 _ 83. EA, 01
        add     ecx, eax                                ; 586A _ 01. C1
        mov     eax, dword [ebp+8H]                     ; 586C _ 8B. 45, 08
        add     edx, 2                                  ; 586F _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 5872 _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 5876 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 5879 _ 8B. 00
        lea     edx, [eax-1H]                           ; 587B _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 587E _ 8B. 45, 08
        mov     dword [eax], edx                        ; 5881 _ 89. 10
        jmp     ?_342                                   ; 5883 _ EB, 28

?_341:  mov     eax, dword [ebp-8H]                     ; 5885 _ 8B. 45, F8
        lea     edx, [eax+1H]                           ; 5888 _ 8D. 50, 01
        mov     ecx, dword [ebp+8H]                     ; 588B _ 8B. 4D, 08
        mov     eax, dword [ebp-8H]                     ; 588E _ 8B. 45, F8
        lea     ebx, [eax+2H]                           ; 5891 _ 8D. 58, 02
        mov     eax, dword [ebp+8H]                     ; 5894 _ 8B. 45, 08
        add     edx, 2                                  ; 5897 _ 83. C2, 02
        lea     edx, [eax+edx*8]                        ; 589A _ 8D. 14 D0
        mov     eax, dword [edx]                        ; 589D _ 8B. 02
        mov     edx, dword [edx+4H]                     ; 589F _ 8B. 52, 04
        mov     dword [ecx+ebx*8], eax                  ; 58A2 _ 89. 04 D9
        mov     dword [ecx+ebx*8+4H], edx               ; 58A5 _ 89. 54 D9, 04
        add     dword [ebp-8H], 1                       ; 58A9 _ 83. 45, F8, 01
?_342:  mov     eax, dword [ebp+8H]                     ; 58AD _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 58B0 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 58B2 _ 39. 45, F8
        jl      ?_341                                   ; 58B5 _ 7C, CE
?_343:  mov     eax, 0                                  ; 58B7 _ B8, 00000000
        jmp     ?_350                                   ; 58BC _ E9, 0000011C

?_344:  mov     eax, dword [ebp+8H]                     ; 58C1 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 58C4 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 58C6 _ 39. 45, F8
        jge     ?_345                                   ; 58C9 _ 7D, 52
        mov     edx, dword [ebp+0CH]                    ; 58CB _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 58CE _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 58D1 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 58D4 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 58D7 _ 8B. 55, F8
        add     edx, 2                                  ; 58DA _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 58DD _ 8B. 04 D0
        cmp     ecx, eax                                ; 58E0 _ 39. C1
        jnz     ?_345                                   ; 58E2 _ 75, 39
        mov     eax, dword [ebp+8H]                     ; 58E4 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 58E7 _ 8B. 55, F8
        add     edx, 2                                  ; 58EA _ 83. C2, 02
        mov     ecx, dword [ebp+0CH]                    ; 58ED _ 8B. 4D, 0C
        mov     dword [eax+edx*8], ecx                  ; 58F0 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 58F3 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 58F6 _ 8B. 55, F8
        add     edx, 2                                  ; 58F9 _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 58FC _ 8B. 54 D0, 04
        mov     eax, dword [ebp+10H]                    ; 5900 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 5903 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 5906 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 5909 _ 8B. 55, F8
        add     edx, 2                                  ; 590C _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 590F _ 89. 4C D0, 04
        mov     eax, 0                                  ; 5913 _ B8, 00000000
        jmp     ?_350                                   ; 5918 _ E9, 000000C0

?_345:  mov     eax, dword [ebp+8H]                     ; 591D _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 5920 _ 8B. 00
        cmp     eax, 4095                               ; 5922 _ 3D, 00000FFF
        jg      ?_349                                   ; 5927 _ 0F 8F, 00000087
        mov     eax, dword [ebp+8H]                     ; 592D _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 5930 _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 5932 _ 89. 45, F4
        jmp     ?_347                                   ; 5935 _ EB, 28

?_346:  mov     eax, dword [ebp-0CH]                    ; 5937 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 593A _ 8D. 50, FF
        mov     ecx, dword [ebp+8H]                     ; 593D _ 8B. 4D, 08
        mov     eax, dword [ebp-0CH]                    ; 5940 _ 8B. 45, F4
        lea     ebx, [eax+2H]                           ; 5943 _ 8D. 58, 02
        mov     eax, dword [ebp+8H]                     ; 5946 _ 8B. 45, 08
        add     edx, 2                                  ; 5949 _ 83. C2, 02
        lea     edx, [eax+edx*8]                        ; 594C _ 8D. 14 D0
        mov     eax, dword [edx]                        ; 594F _ 8B. 02
        mov     edx, dword [edx+4H]                     ; 5951 _ 8B. 52, 04
        mov     dword [ecx+ebx*8], eax                  ; 5954 _ 89. 04 D9
        mov     dword [ecx+ebx*8+4H], edx               ; 5957 _ 89. 54 D9, 04
        sub     dword [ebp-0CH], 1                      ; 595B _ 83. 6D, F4, 01
?_347:  mov     eax, dword [ebp-0CH]                    ; 595F _ 8B. 45, F4
        cmp     eax, dword [ebp-8H]                     ; 5962 _ 3B. 45, F8
        jg      ?_346                                   ; 5965 _ 7F, D0
        mov     eax, dword [ebp+8H]                     ; 5967 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 596A _ 8B. 00
        lea     edx, [eax+1H]                           ; 596C _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 596F _ 8B. 45, 08
        mov     dword [eax], edx                        ; 5972 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 5974 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 5977 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 597A _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 597D _ 8B. 00
        cmp     edx, eax                                ; 597F _ 39. C2
        jge     ?_348                                   ; 5981 _ 7D, 0B
        mov     eax, dword [ebp+8H]                     ; 5983 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 5986 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 5988 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 598B _ 89. 50, 04
?_348:  mov     eax, dword [ebp+8H]                     ; 598E _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 5991 _ 8B. 55, F8
        add     edx, 2                                  ; 5994 _ 83. C2, 02
        mov     ecx, dword [ebp+0CH]                    ; 5997 _ 8B. 4D, 0C
        mov     dword [eax+edx*8], ecx                  ; 599A _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 599D _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 59A0 _ 8B. 55, F8
        add     edx, 2                                  ; 59A3 _ 83. C2, 02
        mov     ecx, dword [ebp+10H]                    ; 59A6 _ 8B. 4D, 10
        mov     dword [eax+edx*8+4H], ecx               ; 59A9 _ 89. 4C D0, 04
        mov     eax, 0                                  ; 59AD _ B8, 00000000
        jmp     ?_350                                   ; 59B2 _ EB, 29

?_349:  mov     eax, dword [ebp+8H]                     ; 59B4 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 59B7 _ 8B. 40, 0C
        lea     edx, [eax+1H]                           ; 59BA _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 59BD _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 59C0 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 59C3 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 59C6 _ 8B. 40, 08
        mov     edx, eax                                ; 59C9 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 59CB _ 8B. 45, 10
        add     eax, edx                                ; 59CE _ 01. D0
        mov     edx, eax                                ; 59D0 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 59D2 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 59D5 _ 89. 50, 08
        mov     eax, 4294967295                         ; 59D8 _ B8, FFFFFFFF
?_350:  add     esp, 16                                 ; 59DD _ 83. C4, 10
        pop     ebx                                     ; 59E0 _ 5B
        pop     ebp                                     ; 59E1 _ 5D
        ret                                             ; 59E2 _ C3
; _memman_free End of function

_memman_alloc_4k:; Function begin
        push    ebp                                     ; 59E3 _ 55
        mov     ebp, esp                                ; 59E4 _ 89. E5
        sub     esp, 24                                 ; 59E6 _ 83. EC, 18
        mov     eax, dword [ebp+0CH]                    ; 59E9 _ 8B. 45, 0C
        add     eax, 4095                               ; 59EC _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 59F1 _ 25, FFFFF000
        mov     dword [ebp+0CH], eax                    ; 59F6 _ 89. 45, 0C
        mov     eax, dword [ebp+0CH]                    ; 59F9 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 59FC _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 5A00 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 5A03 _ 89. 04 24
        call    _memman_alloc                           ; 5A06 _ E8, FFFFFCA3
        mov     dword [ebp-4H], eax                     ; 5A0B _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 5A0E _ 8B. 45, FC
        leave                                           ; 5A11 _ C9
        ret                                             ; 5A12 _ C3
; _memman_alloc_4k End of function

_memman_free_4k:; Function begin
        push    ebp                                     ; 5A13 _ 55
        mov     ebp, esp                                ; 5A14 _ 89. E5
        sub     esp, 28                                 ; 5A16 _ 83. EC, 1C
        mov     eax, dword [ebp+10H]                    ; 5A19 _ 8B. 45, 10
        add     eax, 4095                               ; 5A1C _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 5A21 _ 25, FFFFF000
        mov     dword [ebp+10H], eax                    ; 5A26 _ 89. 45, 10
        mov     eax, dword [ebp+10H]                    ; 5A29 _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 5A2C _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 5A30 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 5A33 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 5A37 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 5A3A _ 89. 04 24
        call    _memman_free                            ; 5A3D _ E8, FFFFFD53
        mov     dword [ebp-4H], eax                     ; 5A42 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 5A45 _ 8B. 45, FC
        leave                                           ; 5A48 _ C9
        ret                                             ; 5A49 _ C3
; _memman_free_4k End of function

        nop                                             ; 5A4A _ 90
        nop                                             ; 5A4B _ 90


_fifo8_init:
        push    ebp                                     ; 5A4C _ 55
        mov     ebp, esp                                ; 5A4D _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 5A4F _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 5A52 _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 5A55 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 5A58 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 5A5B _ 8B. 55, 10
        mov     dword [eax], edx                        ; 5A5E _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 5A60 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 5A63 _ 8B. 55, 0C
        mov     dword [eax+10H], edx                    ; 5A66 _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 5A69 _ 8B. 45, 08
        mov     dword [eax+14H], 0                      ; 5A6C _ C7. 40, 14, 00000000
        mov     eax, dword [ebp+8H]                     ; 5A73 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 5A76 _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 5A7D _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 5A80 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 5A87 _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 5A8A _ 8B. 55, 14
        mov     dword [eax+18H], edx                    ; 5A8D _ 89. 50, 18
        nop                                             ; 5A90 _ 90
        pop     ebp                                     ; 5A91 _ 5D
        ret                                             ; 5A92 _ C3

_fifo8_put:; Function begin
        push    ebp                                     ; 5A93 _ 55
        mov     ebp, esp                                ; 5A94 _ 89. E5
        sub     esp, 40                                 ; 5A96 _ 83. EC, 28
        mov     eax, dword [ebp+0CH]                    ; 5A99 _ 8B. 45, 0C
        mov     byte [ebp-0CH], al                      ; 5A9C _ 88. 45, F4
        cmp     dword [ebp+8H], 0                       ; 5A9F _ 83. 7D, 08, 00
        jnz     ?_351                                   ; 5AA3 _ 75, 0A
        mov     eax, 4294967295                         ; 5AA5 _ B8, FFFFFFFF
        jmp     ?_355                                   ; 5AAA _ E9, 000000AB

?_351:  mov     eax, dword [ebp+8H]                     ; 5AAF _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 5AB2 _ 8B. 40, 10
        test    eax, eax                                ; 5AB5 _ 85. C0
        jnz     ?_352                                   ; 5AB7 _ 75, 1B
        mov     eax, dword [ebp+8H]                     ; 5AB9 _ 8B. 45, 08
        mov     eax, dword [eax+14H]                    ; 5ABC _ 8B. 40, 14
        or      eax, 01H                                ; 5ABF _ 83. C8, 01
        mov     edx, eax                                ; 5AC2 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 5AC4 _ 8B. 45, 08
        mov     dword [eax+14H], edx                    ; 5AC7 _ 89. 50, 14
        mov     eax, 4294967295                         ; 5ACA _ B8, FFFFFFFF
        jmp     ?_355                                   ; 5ACF _ E9, 00000086

?_352:  mov     eax, dword [ebp+8H]                     ; 5AD4 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 5AD7 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 5AD9 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 5ADC _ 8B. 40, 04
        add     edx, eax                                ; 5ADF _ 01. C2
        movzx   eax, byte [ebp-0CH]                     ; 5AE1 _ 0F B6. 45, F4
        mov     byte [edx], al                          ; 5AE5 _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 5AE7 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 5AEA _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 5AED _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 5AF0 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 5AF3 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 5AF6 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 5AF9 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 5AFC _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 5AFF _ 8B. 40, 0C
        cmp     edx, eax                                ; 5B02 _ 39. C2
        jnz     ?_353                                   ; 5B04 _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 5B06 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 5B09 _ C7. 40, 04, 00000000
?_353:  mov     eax, dword [ebp+8H]                     ; 5B10 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 5B13 _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 5B16 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 5B19 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 5B1C _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 5B1F _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 5B22 _ 8B. 40, 18
        test    eax, eax                                ; 5B25 _ 85. C0
        jz      ?_354                                   ; 5B27 _ 74, 2C
        mov     eax, dword [ebp+8H]                     ; 5B29 _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 5B2C _ 8B. 40, 18
        mov     eax, dword [eax+4H]                     ; 5B2F _ 8B. 40, 04
        cmp     eax, 2                                  ; 5B32 _ 83. F8, 02
        jz      ?_354                                   ; 5B35 _ 74, 1E
        mov     eax, dword [ebp+8H]                     ; 5B37 _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 5B3A _ 8B. 40, 18
        mov     dword [esp+8H], 0                       ; 5B3D _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], -1                      ; 5B45 _ C7. 44 24, 04, FFFFFFFF
        mov     dword [esp], eax                        ; 5B4D _ 89. 04 24
        call    _task_run                               ; 5B50 _ E8, 00000000(rel)
?_354:  mov     eax, 0                                  ; 5B55 _ B8, 00000000
?_355:  leave                                           ; 5B5A _ C9
        ret                                             ; 5B5B _ C3
; _fifo8_put End of function

_fifo8_get:; Function begin
        push    ebp                                     ; 5B5C _ 55
        mov     ebp, esp                                ; 5B5D _ 89. E5
        sub     esp, 16                                 ; 5B5F _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 5B62 _ 8B. 45, 08
        mov     edx, dword [eax+10H]                    ; 5B65 _ 8B. 50, 10
        mov     eax, dword [ebp+8H]                     ; 5B68 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 5B6B _ 8B. 40, 0C
        cmp     edx, eax                                ; 5B6E _ 39. C2
        jnz     ?_356                                   ; 5B70 _ 75, 07
        mov     eax, 4294967295                         ; 5B72 _ B8, FFFFFFFF
        jmp     ?_358                                   ; 5B77 _ EB, 51

?_356:  mov     eax, dword [ebp+8H]                     ; 5B79 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 5B7C _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 5B7E _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 5B81 _ 8B. 40, 08
        add     eax, edx                                ; 5B84 _ 01. D0
        movzx   eax, byte [eax]                         ; 5B86 _ 0F B6. 00
        movzx   eax, al                                 ; 5B89 _ 0F B6. C0
        mov     dword [ebp-4H], eax                     ; 5B8C _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 5B8F _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 5B92 _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 5B95 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 5B98 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 5B9B _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 5B9E _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 5BA1 _ 8B. 50, 08
        mov     eax, dword [ebp+8H]                     ; 5BA4 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 5BA7 _ 8B. 40, 0C
        cmp     edx, eax                                ; 5BAA _ 39. C2
        jnz     ?_357                                   ; 5BAC _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 5BAE _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 5BB1 _ C7. 40, 08, 00000000
?_357:  mov     eax, dword [ebp+8H]                     ; 5BB8 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 5BBB _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 5BBE _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 5BC1 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 5BC4 _ 89. 50, 10
        mov     eax, dword [ebp-4H]                     ; 5BC7 _ 8B. 45, FC
?_358:  leave                                           ; 5BCA _ C9
        ret                                             ; 5BCB _ C3
; _fifo8_get End of function

_fifo8_status:; Function begin
        push    ebp                                     ; 5BCC _ 55
        mov     ebp, esp                                ; 5BCD _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 5BCF _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 5BD2 _ 8B. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 5BD5 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 5BD8 _ 8B. 40, 10
        sub     edx, eax                                ; 5BDB _ 29. C2
        mov     eax, edx                                ; 5BDD _ 89. D0
        pop     ebp                                     ; 5BDF _ 5D
        ret                                             ; 5BE0 _ C3
; _fifo8_status End of function

        nop                                             ; 5BE1 _ 90
        nop                                             ; 5BE2 _ 90
        nop                                             ; 5BE3 _ 90


_init_pit:
        push    ebp                                     ; 5BE4 _ 55
        mov     ebp, esp                                ; 5BE5 _ 89. E5
        sub     esp, 40                                 ; 5BE7 _ 83. EC, 28
        mov     dword [esp+4H], 52                      ; 5BEA _ C7. 44 24, 04, 00000034
        mov     dword [esp], 67                         ; 5BF2 _ C7. 04 24, 00000043
        call    _io_out8                                ; 5BF9 _ E8, 00000000(rel)
        mov     dword [esp+4H], 156                     ; 5BFE _ C7. 44 24, 04, 0000009C
        mov     dword [esp], 64                         ; 5C06 _ C7. 04 24, 00000040
        call    _io_out8                                ; 5C0D _ E8, 00000000(rel)
        mov     dword [esp+4H], 46                      ; 5C12 _ C7. 44 24, 04, 0000002E
        mov     dword [esp], 64                         ; 5C1A _ C7. 04 24, 00000040
        call    _io_out8                                ; 5C21 _ E8, 00000000(rel)
        mov     dword [_timerctl], 0                         ; 5C26 _ C7. 05, 00000000(d), 00000000
        mov     dword [ebp-0CH], 0                      ; 5C30 _ C7. 45, F4, 00000000
        jmp     ?_360                                   ; 5C37 _ EB, 26

?_359:  mov     eax, dword [ebp-0CH]                    ; 5C39 _ 8B. 45, F4
        shl     eax, 4                                  ; 5C3C _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 5C3F _ 05, 00000008(d)
        mov     dword [eax], 0                          ; 5C44 _ C7. 00, 00000000
        mov     eax, dword [ebp-0CH]                    ; 5C4A _ 8B. 45, F4
        shl     eax, 4                                  ; 5C4D _ C1. E0, 04
        add     eax, _timerctl+0CH                           ; 5C50 _ 05, 0000000C(d)
        mov     dword [eax], 0                          ; 5C55 _ C7. 00, 00000000
        add     dword [ebp-0CH], 1                      ; 5C5B _ 83. 45, F4, 01
?_360:  cmp     dword [ebp-0CH], 499                    ; 5C5F _ 81. 7D, F4, 000001F3
        jle     ?_359                                   ; 5C66 _ 7E, D1
        nop                                             ; 5C68 _ 90
        leave                                           ; 5C69 _ C9
        ret                                             ; 5C6A _ C3

_timer_alloc:; Function begin
        push    ebp                                     ; 5C6B _ 55
        mov     ebp, esp                                ; 5C6C _ 89. E5
        sub     esp, 16                                 ; 5C6E _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 5C71 _ C7. 45, FC, 00000000
        jmp     ?_363                                   ; 5C78 _ EB, 36

?_361:  mov     eax, dword [ebp-4H]                     ; 5C7A _ 8B. 45, FC
        shl     eax, 4                                  ; 5C7D _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 5C80 _ 05, 00000008(d)
        mov     eax, dword [eax]                        ; 5C85 _ 8B. 00
        test    eax, eax                                ; 5C87 _ 85. C0
        jnz     ?_362                                   ; 5C89 _ 75, 21
        mov     eax, dword [ebp-4H]                     ; 5C8B _ 8B. 45, FC
        shl     eax, 4                                  ; 5C8E _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 5C91 _ 05, 00000008(d)
        mov     dword [eax], 1                          ; 5C96 _ C7. 00, 00000001
        mov     eax, dword [ebp-4H]                     ; 5C9C _ 8B. 45, FC
        shl     eax, 4                                  ; 5C9F _ C1. E0, 04
        add     eax, _timerctl                               ; 5CA2 _ 05, 00000000(d)
        add     eax, 4                                  ; 5CA7 _ 83. C0, 04
        jmp     ?_364                                   ; 5CAA _ EB, 12

?_362:  add     dword [ebp-4H], 1                       ; 5CAC _ 83. 45, FC, 01
?_363:  cmp     dword [ebp-4H], 499                     ; 5CB0 _ 81. 7D, FC, 000001F3
        jle     ?_361                                   ; 5CB7 _ 7E, C1
        mov     eax, 0                                  ; 5CB9 _ B8, 00000000
?_364:  leave                                           ; 5CBE _ C9
        ret                                             ; 5CBF _ C3
; _timer_alloc End of function

_timer_free:; Function begin
        push    ebp                                     ; 5CC0 _ 55
        mov     ebp, esp                                ; 5CC1 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 5CC3 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 5CC6 _ C7. 40, 04, 00000000
        nop                                             ; 5CCD _ 90
        pop     ebp                                     ; 5CCE _ 5D
        ret                                             ; 5CCF _ C3
; _timer_free End of function

_timer_init:; Function begin
        push    ebp                                     ; 5CD0 _ 55
        mov     ebp, esp                                ; 5CD1 _ 89. E5
        sub     esp, 4                                  ; 5CD3 _ 83. EC, 04
        mov     eax, dword [ebp+10H]                    ; 5CD6 _ 8B. 45, 10
        mov     byte [ebp-4H], al                       ; 5CD9 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 5CDC _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 5CDF _ 8B. 55, 0C
        mov     dword [eax+8H], edx                     ; 5CE2 _ 89. 50, 08
        mov     edx, dword [ebp+8H]                     ; 5CE5 _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 5CE8 _ 0F B6. 45, FC
        mov     byte [edx+0CH], al                      ; 5CEC _ 88. 42, 0C
        nop                                             ; 5CEF _ 90
        leave                                           ; 5CF0 _ C9
        ret                                             ; 5CF1 _ C3
; _timer_init End of function

_timer_settime:; Function begin
        push    ebp                                     ; 5CF2 _ 55
        mov     ebp, esp                                ; 5CF3 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 5CF5 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 5CF8 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 5CFB _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 5CFD _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 5D00 _ C7. 40, 04, 00000002
        nop                                             ; 5D07 _ 90
        pop     ebp                                     ; 5D08 _ 5D
        ret                                             ; 5D09 _ C3
; _timer_settime End of function

_intHandlerForTimer:; Function begin
        push    ebp                                     ; 5D0A _ 55
        mov     ebp, esp                                ; 5D0B _ 89. E5
        sub     esp, 40                                 ; 5D0D _ 83. EC, 28
        mov     dword [esp+4H], 32                      ; 5D10 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 5D18 _ C7. 04 24, 00000020
        call    _io_out8                                ; 5D1F _ E8, 00000000(rel)
        mov     eax, dword [_timerctl]                       ; 5D24 _ A1, 00000000(d)
        add     eax, 1                                  ; 5D29 _ 83. C0, 01
        mov     dword [_timerctl], eax                       ; 5D2C _ A3, 00000000(d)
        mov     byte [ebp-0DH], 0                       ; 5D31 _ C6. 45, F3, 00
        mov     dword [ebp-0CH], 0                      ; 5D35 _ C7. 45, F4, 00000000
        jmp     ?_368                                   ; 5D3C _ E9, 000000AA

?_365:  mov     eax, dword [ebp-0CH]                    ; 5D41 _ 8B. 45, F4
        shl     eax, 4                                  ; 5D44 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 5D47 _ 05, 00000008(d)
        mov     eax, dword [eax]                        ; 5D4C _ 8B. 00
        cmp     eax, 2                                  ; 5D4E _ 83. F8, 02
        jne     ?_366                                   ; 5D51 _ 0F 85, 00000085
        mov     eax, dword [ebp-0CH]                    ; 5D57 _ 8B. 45, F4
        shl     eax, 4                                  ; 5D5A _ C1. E0, 04
        add     eax, _timerctl+4H                            ; 5D5D _ 05, 00000004(d)
        mov     eax, dword [eax]                        ; 5D62 _ 8B. 00
        lea     edx, [eax-1H]                           ; 5D64 _ 8D. 50, FF
        mov     eax, dword [ebp-0CH]                    ; 5D67 _ 8B. 45, F4
        shl     eax, 4                                  ; 5D6A _ C1. E0, 04
        add     eax, _timerctl+4H                            ; 5D6D _ 05, 00000004(d)
        mov     dword [eax], edx                        ; 5D72 _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 5D74 _ 8B. 45, F4
        shl     eax, 4                                  ; 5D77 _ C1. E0, 04
        add     eax, _timerctl+4H                            ; 5D7A _ 05, 00000004(d)
        mov     eax, dword [eax]                        ; 5D7F _ 8B. 00
        test    eax, eax                                ; 5D81 _ 85. C0
        jnz     ?_366                                   ; 5D83 _ 75, 57
        mov     eax, dword [ebp-0CH]                    ; 5D85 _ 8B. 45, F4
        shl     eax, 4                                  ; 5D88 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 5D8B _ 05, 00000008(d)
        mov     dword [eax], 1                          ; 5D90 _ C7. 00, 00000001
        mov     eax, dword [ebp-0CH]                    ; 5D96 _ 8B. 45, F4
        shl     eax, 4                                  ; 5D99 _ C1. E0, 04
        add     eax, _timerctl+10H                           ; 5D9C _ 05, 00000010(d)
        movzx   eax, byte [eax]                         ; 5DA1 _ 0F B6. 00
        movzx   eax, al                                 ; 5DA4 _ 0F B6. C0
        mov     edx, dword [ebp-0CH]                    ; 5DA7 _ 8B. 55, F4
        shl     edx, 4                                  ; 5DAA _ C1. E2, 04
        add     edx, _timerctl+0CH                           ; 5DAD _ 81. C2, 0000000C(d)
        mov     edx, dword [edx]                        ; 5DB3 _ 8B. 12
        mov     dword [esp+4H], eax                     ; 5DB5 _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 5DB9 _ 89. 14 24
        call    _fifo8_put                              ; 5DBC _ E8, 00000000(rel)
        mov     eax, dword [ebp-0CH]                    ; 5DC1 _ 8B. 45, F4
        shl     eax, 4                                  ; 5DC4 _ C1. E0, 04
        add     eax, _timerctl                               ; 5DC7 _ 05, 00000000(d)
        lea     edx, [eax+4H]                           ; 5DCC _ 8D. 50, 04
        mov     eax, dword [_task_timer]                ; 5DCF _ A1, 00000000(d)
        cmp     edx, eax                                ; 5DD4 _ 39. C2
        jnz     ?_366                                   ; 5DD6 _ 75, 04
        mov     byte [ebp-0DH], 1                       ; 5DD8 _ C6. 45, F3, 01
?_366:  cmp     byte [ebp-0DH], 0                       ; 5DDC _ 80. 7D, F3, 00
        jz      ?_367                                   ; 5DE0 _ 74, 05
        call    _task_switch                            ; 5DE2 _ E8, 00000000(rel)
?_367:  add     dword [ebp-0CH], 1                      ; 5DE7 _ 83. 45, F4, 01
?_368:  cmp     dword [ebp-0CH], 499                    ; 5DEB _ 81. 7D, F4, 000001F3
        jle     ?_365                                   ; 5DF2 _ 0F 8E, FFFFFF49
        nop                                             ; 5DF8 _ 90
        leave                                           ; 5DF9 _ C9
        ret                                             ; 5DFA _ C3
; _intHandlerForTimer End of function

_getTimerController:; Function begin
        mov     eax, _timerctl                               ; 5DFB _ B8, 00000000(d)
        ret                                             ; 5E00 _ C3
; _getTimerController End of function

        nop                                             ; 5E01 _ 90
        nop                                             ; 5E02 _ 90
        nop                                             ; 5E03 _ 90


_set_segmdesc:
        push    ebp                                     ; 5E04 _ 55
        mov     ebp, esp                                ; 5E05 _ 89. E5
        cmp     dword [ebp+0CH], 1048575                ; 5E07 _ 81. 7D, 0C, 000FFFFF
        jbe     ?_369                                   ; 5E0E _ 76, 10
        or      dword [ebp+14H], 8000H                  ; 5E10 _ 81. 4D, 14, 00008000
        mov     eax, dword [ebp+0CH]                    ; 5E17 _ 8B. 45, 0C
        shr     eax, 12                                 ; 5E1A _ C1. E8, 0C
        mov     dword [ebp+0CH], eax                    ; 5E1D _ 89. 45, 0C
?_369:  mov     eax, dword [ebp+0CH]                    ; 5E20 _ 8B. 45, 0C
        mov     edx, eax                                ; 5E23 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 5E25 _ 8B. 45, 08
        mov     word [eax], dx                          ; 5E28 _ 66: 89. 10
        mov     eax, dword [ebp+10H]                    ; 5E2B _ 8B. 45, 10
        mov     edx, eax                                ; 5E2E _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 5E30 _ 8B. 45, 08
        mov     word [eax+2H], dx                       ; 5E33 _ 66: 89. 50, 02
        mov     eax, dword [ebp+10H]                    ; 5E37 _ 8B. 45, 10
        sar     eax, 16                                 ; 5E3A _ C1. F8, 10
        mov     edx, eax                                ; 5E3D _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 5E3F _ 8B. 45, 08
        mov     byte [eax+4H], dl                       ; 5E42 _ 88. 50, 04
        mov     eax, dword [ebp+14H]                    ; 5E45 _ 8B. 45, 14
        mov     edx, eax                                ; 5E48 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 5E4A _ 8B. 45, 08
        mov     byte [eax+5H], dl                       ; 5E4D _ 88. 50, 05
        mov     eax, dword [ebp+0CH]                    ; 5E50 _ 8B. 45, 0C
        shr     eax, 16                                 ; 5E53 _ C1. E8, 10
        and     eax, 0FH                                ; 5E56 _ 83. E0, 0F
        mov     edx, eax                                ; 5E59 _ 89. C2
        mov     eax, dword [ebp+14H]                    ; 5E5B _ 8B. 45, 14
        sar     eax, 8                                  ; 5E5E _ C1. F8, 08
        and     eax, 0FFFFFFF0H                         ; 5E61 _ 83. E0, F0
        or      eax, edx                                ; 5E64 _ 09. D0
        mov     edx, eax                                ; 5E66 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 5E68 _ 8B. 45, 08
        mov     byte [eax+6H], dl                       ; 5E6B _ 88. 50, 06
        mov     eax, dword [ebp+10H]                    ; 5E6E _ 8B. 45, 10
        shr     eax, 24                                 ; 5E71 _ C1. E8, 18
        mov     edx, eax                                ; 5E74 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 5E76 _ 8B. 45, 08
        mov     byte [eax+7H], dl                       ; 5E79 _ 88. 50, 07
        nop                                             ; 5E7C _ 90
        pop     ebp                                     ; 5E7D _ 5D
        ret                                             ; 5E7E _ C3

_get_taskctl:; Function begin
        mov     eax, dword [_taskctl]                   ; 5E7F _ A1, 00000004(d)
        ret                                             ; 5E84 _ C3
; _get_taskctl End of function

_init_task_level:; Function begin
        push    ebp                                     ; 5E85 _ 55
        mov     ebp, esp                                ; 5E86 _ 89. E5
        sub     esp, 16                                 ; 5E88 _ 83. EC, 10
        mov     ecx, dword [_taskctl]                   ; 5E8B _ 8B. 0D, 00000004(d)
        mov     edx, dword [ebp+8H]                     ; 5E91 _ 8B. 55, 08
        mov     eax, edx                                ; 5E94 _ 89. D0
        add     eax, eax                                ; 5E96 _ 01. C0
        add     eax, edx                                ; 5E98 _ 01. D0
        shl     eax, 4                                  ; 5E9A _ C1. E0, 04
        add     eax, ecx                                ; 5E9D _ 01. C8
        add     eax, 8                                  ; 5E9F _ 83. C0, 08
        mov     dword [eax], 0                          ; 5EA2 _ C7. 00, 00000000
        mov     ecx, dword [_taskctl]                   ; 5EA8 _ 8B. 0D, 00000004(d)
        mov     edx, dword [ebp+8H]                     ; 5EAE _ 8B. 55, 08
        mov     eax, edx                                ; 5EB1 _ 89. D0
        add     eax, eax                                ; 5EB3 _ 01. C0
        add     eax, edx                                ; 5EB5 _ 01. D0
        shl     eax, 4                                  ; 5EB7 _ C1. E0, 04
        add     eax, ecx                                ; 5EBA _ 01. C8
        add     eax, 12                                 ; 5EBC _ 83. C0, 0C
        mov     dword [eax], 0                          ; 5EBF _ C7. 00, 00000000
        mov     dword [ebp-4H], 0                       ; 5EC5 _ C7. 45, FC, 00000000
        jmp     ?_371                                   ; 5ECC _ EB, 1B

?_370:  mov     edx, dword [_taskctl]                   ; 5ECE _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-4H]                     ; 5ED4 _ 8B. 45, FC
        imul    eax, eax, 52                            ; 5ED7 _ 6B. C0, 34
        add     eax, edx                                ; 5EDA _ 01. D0
        add     eax, 16                                 ; 5EDC _ 83. C0, 10
        mov     dword [eax], 0                          ; 5EDF _ C7. 00, 00000000
        add     dword [ebp-4H], 1                       ; 5EE5 _ 83. 45, FC, 01
?_371:  cmp     dword [ebp-4H], 9                       ; 5EE9 _ 83. 7D, FC, 09
        jle     ?_370                                   ; 5EED _ 7E, DF
        nop                                             ; 5EEF _ 90
        leave                                           ; 5EF0 _ C9
        ret                                             ; 5EF1 _ C3
; _init_task_level End of function

_task_init:; Function begin
        push    ebp                                     ; 5EF2 _ 55
        mov     ebp, esp                                ; 5EF3 _ 89. E5
        sub     esp, 40                                 ; 5EF5 _ 83. EC, 28
        call    _get_addr_gdt                           ; 5EF8 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 5EFD _ 89. 45, F0
        mov     dword [esp+4H], 3128                    ; 5F00 _ C7. 44 24, 04, 00000C38
        mov     eax, dword [ebp+8H]                     ; 5F08 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 5F0B _ 89. 04 24
        call    _memman_alloc_4k                        ; 5F0E _ E8, 00000000(rel)
        mov     dword [_taskctl], eax                   ; 5F13 _ A3, 00000004(d)
        mov     dword [ebp-0CH], 0                      ; 5F18 _ C7. 45, F4, 00000000
        jmp     ?_373                                   ; 5F1F _ E9, 000000FC

?_372:  mov     edx, dword [_taskctl]                   ; 5F24 _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-0CH]                    ; 5F2A _ 8B. 45, F4
        imul    eax, eax, 208                           ; 5F2D _ 69. C0, 000000D0
        add     eax, edx                                ; 5F33 _ 01. D0
        add     eax, 492                                ; 5F35 _ 05, 000001EC
        mov     dword [eax], 0                          ; 5F3A _ C7. 00, 00000000
        mov     eax, dword [ebp-0CH]                    ; 5F40 _ 8B. 45, F4
        add     eax, 7                                  ; 5F43 _ 83. C0, 07
        mov     ecx, dword [_taskctl]                   ; 5F46 _ 8B. 0D, 00000004(d)
        lea     edx, [eax*8]                            ; 5F4C _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-0CH]                    ; 5F53 _ 8B. 45, F4
        imul    eax, eax, 208                           ; 5F56 _ 69. C0, 000000D0
        add     eax, ecx                                ; 5F5C _ 01. C8
        add     eax, 488                                ; 5F5E _ 05, 000001E8
        mov     dword [eax], edx                        ; 5F63 _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 5F65 _ 8B. 45, F4
        add     eax, 17                                 ; 5F68 _ 83. C0, 11
        mov     ecx, dword [_taskctl]                   ; 5F6B _ 8B. 0D, 00000004(d)
        lea     edx, [eax*8]                            ; 5F71 _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-0CH]                    ; 5F78 _ 8B. 45, F4
        imul    eax, eax, 208                           ; 5F7B _ 69. C0, 000000D0
        add     eax, ecx                                ; 5F81 _ 01. C8
        add     eax, 628                                ; 5F83 _ 05, 00000274
        mov     dword [eax], edx                        ; 5F88 _ 89. 10
        mov     edx, dword [_taskctl]                   ; 5F8A _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-0CH]                    ; 5F90 _ 8B. 45, F4
        imul    eax, eax, 208                           ; 5F93 _ 69. C0, 000000D0
        add     eax, 512                                ; 5F99 _ 05, 00000200
        add     eax, edx                                ; 5F9E _ 01. D0
        add     eax, 20                                 ; 5FA0 _ 83. C0, 14
        mov     ecx, eax                                ; 5FA3 _ 89. C1
        mov     eax, dword [ebp-0CH]                    ; 5FA5 _ 8B. 45, F4
        add     eax, 7                                  ; 5FA8 _ 83. C0, 07
        lea     edx, [eax*8]                            ; 5FAB _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-10H]                    ; 5FB2 _ 8B. 45, F0
        add     eax, edx                                ; 5FB5 _ 01. D0
        mov     dword [esp+0CH], 137                    ; 5FB7 _ C7. 44 24, 0C, 00000089
        mov     dword [esp+8H], ecx                     ; 5FBF _ 89. 4C 24, 08
        mov     dword [esp+4H], 103                     ; 5FC3 _ C7. 44 24, 04, 00000067
        mov     dword [esp], eax                        ; 5FCB _ 89. 04 24
        call    _set_segmdesc                           ; 5FCE _ E8, FFFFFE31
        mov     edx, dword [_taskctl]                   ; 5FD3 _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-0CH]                    ; 5FD9 _ 8B. 45, F4
        imul    eax, eax, 208                           ; 5FDC _ 69. C0, 000000D0
        add     eax, 656                                ; 5FE2 _ 05, 00000290
        add     eax, edx                                ; 5FE7 _ 01. D0
        add     eax, 20                                 ; 5FE9 _ 83. C0, 14
        mov     ecx, eax                                ; 5FEC _ 89. C1
        mov     eax, dword [ebp-0CH]                    ; 5FEE _ 8B. 45, F4
        add     eax, 17                                 ; 5FF1 _ 83. C0, 11
        lea     edx, [eax*8]                            ; 5FF4 _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-10H]                    ; 5FFB _ 8B. 45, F0
        add     eax, edx                                ; 5FFE _ 01. D0
        mov     dword [esp+0CH], 130                    ; 6000 _ C7. 44 24, 0C, 00000082
        mov     dword [esp+8H], ecx                     ; 6008 _ 89. 4C 24, 08
        mov     dword [esp+4H], 15                      ; 600C _ C7. 44 24, 04, 0000000F
        mov     dword [esp], eax                        ; 6014 _ 89. 04 24
        call    _set_segmdesc                           ; 6017 _ E8, FFFFFDE8
        add     dword [ebp-0CH], 1                      ; 601C _ 83. 45, F4, 01
?_373:  cmp     dword [ebp-0CH], 9                      ; 6020 _ 83. 7D, F4, 09
        jle     ?_372                                   ; 6024 _ 0F 8E, FFFFFEFA
        mov     dword [ebp-0CH], 0                      ; 602A _ C7. 45, F4, 00000000
        jmp     ?_375                                   ; 6031 _ EB, 0F

?_374:  mov     eax, dword [ebp-0CH]                    ; 6033 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 6036 _ 89. 04 24
        call    _init_task_level                        ; 6039 _ E8, FFFFFE47
        add     dword [ebp-0CH], 1                      ; 603E _ 83. 45, F4, 01
?_375:  cmp     dword [ebp-0CH], 9                      ; 6042 _ 83. 7D, F4, 09
        jle     ?_374                                   ; 6046 _ 7E, EB
        call    _task_alloc                             ; 6048 _ E8, 00000066
        mov     dword [ebp-14H], eax                    ; 604D _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 6050 _ 8B. 45, EC
        mov     dword [eax+4H], 2                       ; 6053 _ C7. 40, 04, 00000002
        mov     eax, dword [ebp-14H]                    ; 605A _ 8B. 45, EC
        mov     dword [eax+8H], 100                     ; 605D _ C7. 40, 08, 00000064
        mov     eax, dword [ebp-14H]                    ; 6064 _ 8B. 45, EC
        mov     dword [eax+0CH], 0                      ; 6067 _ C7. 40, 0C, 00000000
        mov     eax, dword [ebp-14H]                    ; 606E _ 8B. 45, EC
        mov     dword [esp], eax                        ; 6071 _ 89. 04 24
        call    _task_add                               ; 6074 _ E8, 0000034B
        call    _task_switchsub                         ; 6079 _ E8, 0000045F
        mov     eax, dword [ebp-14H]                    ; 607E _ 8B. 45, EC
        mov     eax, dword [eax]                        ; 6081 _ 8B. 00
        mov     dword [esp], eax                        ; 6083 _ 89. 04 24
        call    _load_tr                                ; 6086 _ E8, 00000000(rel)
        call    _timer_alloc                            ; 608B _ E8, 00000000(rel)
        mov     dword [_task_timer], eax                       ; 6090 _ A3, 00000000(d)
        mov     eax, dword [ebp-14H]                    ; 6095 _ 8B. 45, EC
        mov     eax, dword [eax+8H]                     ; 6098 _ 8B. 40, 08
        mov     edx, eax                                ; 609B _ 89. C2
        mov     eax, dword [_task_timer]                       ; 609D _ A1, 00000000(d)
        mov     dword [esp+4H], edx                     ; 60A2 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 60A6 _ 89. 04 24
        call    _timer_settime                          ; 60A9 _ E8, 00000000(rel)
        mov     eax, dword [ebp-14H]                    ; 60AE _ 8B. 45, EC
        leave                                           ; 60B1 _ C9
        ret                                             ; 60B2 _ C3
; _task_init End of function

_task_alloc:; Function begin
        push    ebp                                     ; 60B3 _ 55
        mov     ebp, esp                                ; 60B4 _ 89. E5
        sub     esp, 16                                 ; 60B6 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 60B9 _ C7. 45, FC, 00000000
        jmp     ?_378                                   ; 60C0 _ E9, 000000F8

?_376:  mov     edx, dword [_taskctl]                   ; 60C5 _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-4H]                     ; 60CB _ 8B. 45, FC
        imul    eax, eax, 208                           ; 60CE _ 69. C0, 000000D0
        add     eax, edx                                ; 60D4 _ 01. D0
        add     eax, 492                                ; 60D6 _ 05, 000001EC
        mov     eax, dword [eax]                        ; 60DB _ 8B. 00
        test    eax, eax                                ; 60DD _ 85. C0
        jne     ?_377                                   ; 60DF _ 0F 85, 000000D4
        mov     edx, dword [_taskctl]                   ; 60E5 _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-4H]                     ; 60EB _ 8B. 45, FC
        imul    eax, eax, 208                           ; 60EE _ 69. C0, 000000D0
        add     eax, 480                                ; 60F4 _ 05, 000001E0
        add     eax, edx                                ; 60F9 _ 01. D0
        add     eax, 8                                  ; 60FB _ 83. C0, 08
        mov     dword [ebp-8H], eax                     ; 60FE _ 89. 45, F8
        mov     eax, dword [ebp-8H]                     ; 6101 _ 8B. 45, F8
        mov     dword [eax+4H], 1                       ; 6104 _ C7. 40, 04, 00000001
        mov     eax, dword [ebp-8H]                     ; 610B _ 8B. 45, F8
        mov     dword [eax+50H], 514                    ; 610E _ C7. 40, 50, 00000202
        mov     eax, dword [ebp-8H]                     ; 6115 _ 8B. 45, F8
        mov     dword [eax+54H], 0                      ; 6118 _ C7. 40, 54, 00000000
        mov     eax, dword [ebp-8H]                     ; 611F _ 8B. 45, F8
        mov     dword [eax+58H], 0                      ; 6122 _ C7. 40, 58, 00000000
        mov     eax, dword [ebp-8H]                     ; 6129 _ 8B. 45, F8
        mov     dword [eax+5CH], 0                      ; 612C _ C7. 40, 5C, 00000000
        mov     eax, dword [ebp-8H]                     ; 6133 _ 8B. 45, F8
        mov     dword [eax+60H], 0                      ; 6136 _ C7. 40, 60, 00000000
        mov     eax, dword [ebp-8H]                     ; 613D _ 8B. 45, F8
        mov     dword [eax+68H], 0                      ; 6140 _ C7. 40, 68, 00000000
        mov     eax, dword [ebp-4H]                     ; 6147 _ 8B. 45, FC
        add     eax, 1                                  ; 614A _ 83. C0, 01
        shl     eax, 9                                  ; 614D _ C1. E0, 09
        mov     edx, eax                                ; 6150 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 6152 _ 8B. 45, F8
        mov     dword [eax+64H], edx                    ; 6155 _ 89. 50, 64
        mov     eax, dword [ebp-8H]                     ; 6158 _ 8B. 45, F8
        mov     dword [eax+6CH], 0                      ; 615B _ C7. 40, 6C, 00000000
        mov     eax, dword [ebp-8H]                     ; 6162 _ 8B. 45, F8
        mov     dword [eax+70H], 0                      ; 6165 _ C7. 40, 70, 00000000
        mov     eax, dword [ebp-8H]                     ; 616C _ 8B. 45, F8
        mov     dword [eax+74H], 0                      ; 616F _ C7. 40, 74, 00000000
        mov     eax, dword [ebp-8H]                     ; 6176 _ 8B. 45, F8
        mov     dword [eax+80H], 0                      ; 6179 _ C7. 80, 00000080, 00000000
        mov     eax, dword [ebp-8H]                     ; 6183 _ 8B. 45, F8
        mov     dword [eax+84H], 0                      ; 6186 _ C7. 80, 00000084, 00000000
        mov     eax, dword [ebp-8H]                     ; 6190 _ 8B. 45, F8
        mov     dword [eax+88H], 0                      ; 6193 _ C7. 80, 00000088, 00000000
        mov     eax, dword [ebp-8H]                     ; 619D _ 8B. 45, F8
        mov     dword [eax+34H], 0                      ; 61A0 _ C7. 40, 34, 00000000
        mov     eax, dword [ebp-8H]                     ; 61A7 _ 8B. 45, F8
        mov     dword [eax+90H], 1073741824             ; 61AA _ C7. 80, 00000090, 40000000
        mov     eax, dword [ebp-8H]                     ; 61B4 _ 8B. 45, F8
        jmp     ?_379                                   ; 61B7 _ EB, 13

?_377:  add     dword [ebp-4H], 1                       ; 61B9 _ 83. 45, FC, 01
?_378:  cmp     dword [ebp-4H], 9                       ; 61BD _ 83. 7D, FC, 09
        jle     ?_376                                   ; 61C1 _ 0F 8E, FFFFFEFE
        mov     eax, 0                                  ; 61C7 _ B8, 00000000
?_379:  leave                                           ; 61CC _ C9
        ret                                             ; 61CD _ C3
; _task_alloc End of function

_task_run:; Function begin
        push    ebp                                     ; 61CE _ 55
        mov     ebp, esp                                ; 61CF _ 89. E5
        sub     esp, 24                                 ; 61D1 _ 83. EC, 18
        cmp     dword [ebp+0CH], 0                      ; 61D4 _ 83. 7D, 0C, 00
        jns     ?_380                                   ; 61D8 _ 79, 09
        mov     eax, dword [ebp+8H]                     ; 61DA _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 61DD _ 8B. 40, 0C
        mov     dword [ebp+0CH], eax                    ; 61E0 _ 89. 45, 0C
?_380:  cmp     dword [ebp+10H], 0                      ; 61E3 _ 83. 7D, 10, 00
        jle     ?_381                                   ; 61E7 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 61E9 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 61EC _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 61EF _ 89. 50, 08
?_381:  mov     eax, dword [ebp+8H]                     ; 61F2 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 61F5 _ 8B. 40, 04
        cmp     eax, 2                                  ; 61F8 _ 83. F8, 02
        jnz     ?_382                                   ; 61FB _ 75, 16
        mov     eax, dword [ebp+8H]                     ; 61FD _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 6200 _ 8B. 40, 0C
        cmp     dword [ebp+0CH], eax                    ; 6203 _ 39. 45, 0C
        jz      ?_382                                   ; 6206 _ 74, 0B
        mov     eax, dword [ebp+8H]                     ; 6208 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 620B _ 89. 04 24
        call    _task_remove                            ; 620E _ E8, 000001FD
?_382:  mov     eax, dword [ebp+8H]                     ; 6213 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 6216 _ 8B. 40, 04
        cmp     eax, 2                                  ; 6219 _ 83. F8, 02
        jz      ?_383                                   ; 621C _ 74, 14
        mov     eax, dword [ebp+8H]                     ; 621E _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 6221 _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 6224 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 6227 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 622A _ 89. 04 24
        call    _task_add                               ; 622D _ E8, 00000192
?_383:  mov     eax, dword [_taskctl]                   ; 6232 _ A1, 00000004(d)
        mov     dword [eax+4H], 1                       ; 6237 _ C7. 40, 04, 00000001
        nop                                             ; 623E _ 90
        leave                                           ; 623F _ C9
        ret                                             ; 6240 _ C3
; _task_run End of function

_task_switch:; Function begin
        push    ebp                                     ; 6241 _ 55
        mov     ebp, esp                                ; 6242 _ 89. E5
        sub     esp, 40                                 ; 6244 _ 83. EC, 28
        mov     ecx, dword [_taskctl]                   ; 6247 _ 8B. 0D, 00000004(d)
        mov     eax, dword [_taskctl]                   ; 624D _ A1, 00000004(d)
        mov     edx, dword [eax]                        ; 6252 _ 8B. 10
        mov     eax, edx                                ; 6254 _ 89. D0
        add     eax, eax                                ; 6256 _ 01. C0
        add     eax, edx                                ; 6258 _ 01. D0
        shl     eax, 4                                  ; 625A _ C1. E0, 04
        add     eax, ecx                                ; 625D _ 01. C8
        add     eax, 8                                  ; 625F _ 83. C0, 08
        mov     dword [ebp-0CH], eax                    ; 6262 _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 6265 _ 8B. 45, F4
        mov     edx, dword [eax+4H]                     ; 6268 _ 8B. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 626B _ 8B. 45, F4
        mov     eax, dword [eax+edx*4+8H]               ; 626E _ 8B. 44 90, 08
        mov     dword [ebp-10H], eax                    ; 6272 _ 89. 45, F0
        mov     eax, dword [ebp-0CH]                    ; 6275 _ 8B. 45, F4
        mov     eax, dword [eax+4H]                     ; 6278 _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 627B _ 8D. 50, 01
        mov     eax, dword [ebp-0CH]                    ; 627E _ 8B. 45, F4
        mov     dword [eax+4H], edx                     ; 6281 _ 89. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 6284 _ 8B. 45, F4
        mov     edx, dword [eax+4H]                     ; 6287 _ 8B. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 628A _ 8B. 45, F4
        mov     eax, dword [eax]                        ; 628D _ 8B. 00
        cmp     edx, eax                                ; 628F _ 39. C2
        jnz     ?_384                                   ; 6291 _ 75, 0A
        mov     eax, dword [ebp-0CH]                    ; 6293 _ 8B. 45, F4
        mov     dword [eax+4H], 0                       ; 6296 _ C7. 40, 04, 00000000
?_384:  mov     eax, dword [_taskctl]                   ; 629D _ A1, 00000004(d)
        mov     eax, dword [eax+4H]                     ; 62A2 _ 8B. 40, 04
        test    eax, eax                                ; 62A5 _ 85. C0
        jz      ?_385                                   ; 62A7 _ 74, 23
        call    _task_switchsub                         ; 62A9 _ E8, 0000022F
        mov     ecx, dword [_taskctl]                   ; 62AE _ 8B. 0D, 00000004(d)
        mov     eax, dword [_taskctl]                   ; 62B4 _ A1, 00000004(d)
        mov     edx, dword [eax]                        ; 62B9 _ 8B. 10
        mov     eax, edx                                ; 62BB _ 89. D0
        add     eax, eax                                ; 62BD _ 01. C0
        add     eax, edx                                ; 62BF _ 01. D0
        shl     eax, 4                                  ; 62C1 _ C1. E0, 04
        add     eax, ecx                                ; 62C4 _ 01. C8
        add     eax, 8                                  ; 62C6 _ 83. C0, 08
        mov     dword [ebp-0CH], eax                    ; 62C9 _ 89. 45, F4
?_385:  mov     eax, dword [ebp-0CH]                    ; 62CC _ 8B. 45, F4
        mov     edx, dword [eax+4H]                     ; 62CF _ 8B. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 62D2 _ 8B. 45, F4
        mov     eax, dword [eax+edx*4+8H]               ; 62D5 _ 8B. 44 90, 08
        mov     dword [ebp-14H], eax                    ; 62D9 _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 62DC _ 8B. 45, EC
        mov     eax, dword [eax+8H]                     ; 62DF _ 8B. 40, 08
        mov     edx, eax                                ; 62E2 _ 89. C2
        mov     eax, dword [_task_timer]                       ; 62E4 _ A1, 00000000(d)
        mov     dword [esp+4H], edx                     ; 62E9 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 62ED _ 89. 04 24
        call    _timer_settime                          ; 62F0 _ E8, 00000000(rel)
        mov     eax, dword [ebp-14H]                    ; 62F5 _ 8B. 45, EC
        cmp     eax, dword [ebp-10H]                    ; 62F8 _ 3B. 45, F0
        jz      ?_386                                   ; 62FB _ 74, 1C
        cmp     dword [ebp-14H], 0                      ; 62FD _ 83. 7D, EC, 00
        jz      ?_386                                   ; 6301 _ 74, 16
        mov     eax, dword [ebp-14H]                    ; 6303 _ 8B. 45, EC
        mov     eax, dword [eax]                        ; 6306 _ 8B. 00
        mov     dword [esp+4H], eax                     ; 6308 _ 89. 44 24, 04
        mov     dword [esp], 0                          ; 630C _ C7. 04 24, 00000000
        call    _farjmp                                 ; 6313 _ E8, 00000000(rel)
        nop                                             ; 6318 _ 90
?_386:  nop                                             ; 6319 _ 90
        leave                                           ; 631A _ C9
        ret                                             ; 631B _ C3
; _task_switch End of function

_task_sleep:; Function begin
        push    ebp                                     ; 631C _ 55
        mov     ebp, esp                                ; 631D _ 89. E5
        sub     esp, 40                                 ; 631F _ 83. EC, 28
        mov     dword [ebp-10H], 0                      ; 6322 _ C7. 45, F0, 00000000
        mov     dword [ebp-0CH], 0                      ; 6329 _ C7. 45, F4, 00000000
        mov     eax, dword [ebp+8H]                     ; 6330 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 6333 _ 8B. 40, 04
        cmp     eax, 2                                  ; 6336 _ 83. F8, 02
        jnz     ?_387                                   ; 6339 _ 75, 51
        call    _task_now                               ; 633B _ E8, 00000051
        mov     dword [ebp-10H], eax                    ; 6340 _ 89. 45, F0
        mov     eax, dword [ebp+8H]                     ; 6343 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 6346 _ 89. 04 24
        call    _task_remove                            ; 6349 _ E8, 000000C2
        mov     dword [ebp-0CH], 1                      ; 634E _ C7. 45, F4, 00000001
        mov     eax, dword [ebp+8H]                     ; 6355 _ 8B. 45, 08
        cmp     eax, dword [ebp-10H]                    ; 6358 _ 3B. 45, F0
        jnz     ?_387                                   ; 635B _ 75, 2F
        call    _task_switchsub                         ; 635D _ E8, 0000017B
        call    _task_now                               ; 6362 _ E8, 0000002A
        mov     dword [ebp-10H], eax                    ; 6367 _ 89. 45, F0
        mov     dword [ebp-0CH], 2                      ; 636A _ C7. 45, F4, 00000002
        cmp     dword [ebp-10H], 0                      ; 6371 _ 83. 7D, F0, 00
        jz      ?_387                                   ; 6375 _ 74, 15
        mov     eax, dword [ebp-10H]                    ; 6377 _ 8B. 45, F0
        mov     eax, dword [eax]                        ; 637A _ 8B. 00
        mov     dword [esp+4H], eax                     ; 637C _ 89. 44 24, 04
        mov     dword [esp], 0                          ; 6380 _ C7. 04 24, 00000000
        call    _farjmp                                 ; 6387 _ E8, 00000000(rel)
?_387:  mov     eax, dword [ebp-0CH]                    ; 638C _ 8B. 45, F4
        leave                                           ; 638F _ C9
        ret                                             ; 6390 _ C3
; _task_sleep End of function

_task_now:; Function begin
        push    ebp                                     ; 6391 _ 55
        mov     ebp, esp                                ; 6392 _ 89. E5
        sub     esp, 16                                 ; 6394 _ 83. EC, 10
        mov     ecx, dword [_taskctl]                   ; 6397 _ 8B. 0D, 00000004(d)
        mov     eax, dword [_taskctl]                   ; 639D _ A1, 00000004(d)
        mov     edx, dword [eax]                        ; 63A2 _ 8B. 10
        mov     eax, edx                                ; 63A4 _ 89. D0
        add     eax, eax                                ; 63A6 _ 01. C0
        add     eax, edx                                ; 63A8 _ 01. D0
        shl     eax, 4                                  ; 63AA _ C1. E0, 04
        add     eax, ecx                                ; 63AD _ 01. C8
        add     eax, 8                                  ; 63AF _ 83. C0, 08
        mov     dword [ebp-4H], eax                     ; 63B2 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 63B5 _ 8B. 45, FC
        mov     edx, dword [eax+4H]                     ; 63B8 _ 8B. 50, 04
        mov     eax, dword [ebp-4H]                     ; 63BB _ 8B. 45, FC
        mov     eax, dword [eax+edx*4+8H]               ; 63BE _ 8B. 44 90, 08
        leave                                           ; 63C2 _ C9
        ret                                             ; 63C3 _ C3
; _task_now End of function

_task_add:; Function begin
        push    ebp                                     ; 63C4 _ 55
        mov     ebp, esp                                ; 63C5 _ 89. E5
        sub     esp, 16                                 ; 63C7 _ 83. EC, 10
        mov     ecx, dword [_taskctl]                   ; 63CA _ 8B. 0D, 00000004(d)
        mov     eax, dword [ebp+8H]                     ; 63D0 _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 63D3 _ 8B. 50, 0C
        mov     eax, edx                                ; 63D6 _ 89. D0
        add     eax, eax                                ; 63D8 _ 01. C0
        add     eax, edx                                ; 63DA _ 01. D0
        shl     eax, 4                                  ; 63DC _ C1. E0, 04
        add     eax, ecx                                ; 63DF _ 01. C8
        add     eax, 8                                  ; 63E1 _ 83. C0, 08
        mov     dword [ebp-4H], eax                     ; 63E4 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 63E7 _ 8B. 45, FC
        mov     edx, dword [eax]                        ; 63EA _ 8B. 10
        mov     eax, dword [ebp-4H]                     ; 63EC _ 8B. 45, FC
        mov     ecx, dword [ebp+8H]                     ; 63EF _ 8B. 4D, 08
        mov     dword [eax+edx*4+8H], ecx               ; 63F2 _ 89. 4C 90, 08
        mov     eax, dword [ebp-4H]                     ; 63F6 _ 8B. 45, FC
        mov     eax, dword [eax]                        ; 63F9 _ 8B. 00
        lea     edx, [eax+1H]                           ; 63FB _ 8D. 50, 01
        mov     eax, dword [ebp-4H]                     ; 63FE _ 8B. 45, FC
        mov     dword [eax], edx                        ; 6401 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 6403 _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 6406 _ C7. 40, 04, 00000002
        nop                                             ; 640D _ 90
        leave                                           ; 640E _ C9
        ret                                             ; 640F _ C3
; _task_add End of function

_task_remove:; Function begin
        push    ebp                                     ; 6410 _ 55
        mov     ebp, esp                                ; 6411 _ 89. E5
        sub     esp, 16                                 ; 6413 _ 83. EC, 10
        mov     ecx, dword [_taskctl]                   ; 6416 _ 8B. 0D, 00000004(d)
        mov     eax, dword [ebp+8H]                     ; 641C _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 641F _ 8B. 50, 0C
        mov     eax, edx                                ; 6422 _ 89. D0
        add     eax, eax                                ; 6424 _ 01. C0
        add     eax, edx                                ; 6426 _ 01. D0
        shl     eax, 4                                  ; 6428 _ C1. E0, 04
        add     eax, ecx                                ; 642B _ 01. C8
        add     eax, 8                                  ; 642D _ 83. C0, 08
        mov     dword [ebp-8H], eax                     ; 6430 _ 89. 45, F8
        mov     dword [ebp-4H], 0                       ; 6433 _ C7. 45, FC, 00000000
        jmp     ?_390                                   ; 643A _ EB, 23

?_388:  mov     eax, dword [ebp-8H]                     ; 643C _ 8B. 45, F8
        mov     edx, dword [ebp-4H]                     ; 643F _ 8B. 55, FC
        mov     eax, dword [eax+edx*4+8H]               ; 6442 _ 8B. 44 90, 08
        cmp     dword [ebp+8H], eax                     ; 6446 _ 39. 45, 08
        jnz     ?_389                                   ; 6449 _ 75, 10
        mov     eax, dword [ebp-8H]                     ; 644B _ 8B. 45, F8
        mov     edx, dword [ebp-4H]                     ; 644E _ 8B. 55, FC
        mov     dword [eax+edx*4+8H], 0                 ; 6451 _ C7. 44 90, 08, 00000000
        jmp     ?_391                                   ; 6459 _ EB, 0E

?_389:  add     dword [ebp-4H], 1                       ; 645B _ 83. 45, FC, 01
?_390:  mov     eax, dword [ebp-8H]                     ; 645F _ 8B. 45, F8
        mov     eax, dword [eax]                        ; 6462 _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 6464 _ 39. 45, FC
        jl      ?_388                                   ; 6467 _ 7C, D3
?_391:  mov     eax, dword [ebp-8H]                     ; 6469 _ 8B. 45, F8
        mov     eax, dword [eax]                        ; 646C _ 8B. 00
        lea     edx, [eax-1H]                           ; 646E _ 8D. 50, FF
        mov     eax, dword [ebp-8H]                     ; 6471 _ 8B. 45, F8
        mov     dword [eax], edx                        ; 6474 _ 89. 10
        mov     eax, dword [ebp-8H]                     ; 6476 _ 8B. 45, F8
        mov     eax, dword [eax+4H]                     ; 6479 _ 8B. 40, 04
        cmp     dword [ebp-4H], eax                     ; 647C _ 39. 45, FC
        jge     ?_392                                   ; 647F _ 7D, 0F
        mov     eax, dword [ebp-8H]                     ; 6481 _ 8B. 45, F8
        mov     eax, dword [eax+4H]                     ; 6484 _ 8B. 40, 04
        lea     edx, [eax-1H]                           ; 6487 _ 8D. 50, FF
        mov     eax, dword [ebp-8H]                     ; 648A _ 8B. 45, F8
        mov     dword [eax+4H], edx                     ; 648D _ 89. 50, 04
?_392:  mov     eax, dword [ebp-8H]                     ; 6490 _ 8B. 45, F8
        mov     edx, dword [eax+4H]                     ; 6493 _ 8B. 50, 04
        mov     eax, dword [ebp-8H]                     ; 6496 _ 8B. 45, F8
        mov     eax, dword [eax]                        ; 6499 _ 8B. 00
        cmp     edx, eax                                ; 649B _ 39. C2
        jl      ?_393                                   ; 649D _ 7C, 0A
        mov     eax, dword [ebp-8H]                     ; 649F _ 8B. 45, F8
        mov     dword [eax+4H], 0                       ; 64A2 _ C7. 40, 04, 00000000
?_393:  mov     eax, dword [ebp+8H]                     ; 64A9 _ 8B. 45, 08
        mov     dword [eax+4H], 1                       ; 64AC _ C7. 40, 04, 00000001
        jmp     ?_395                                   ; 64B3 _ EB, 1B

?_394:  mov     eax, dword [ebp-4H]                     ; 64B5 _ 8B. 45, FC
        lea     edx, [eax+1H]                           ; 64B8 _ 8D. 50, 01
        mov     eax, dword [ebp-8H]                     ; 64BB _ 8B. 45, F8
        mov     ecx, dword [eax+edx*4+8H]               ; 64BE _ 8B. 4C 90, 08
        mov     eax, dword [ebp-8H]                     ; 64C2 _ 8B. 45, F8
        mov     edx, dword [ebp-4H]                     ; 64C5 _ 8B. 55, FC
        mov     dword [eax+edx*4+8H], ecx               ; 64C8 _ 89. 4C 90, 08
        add     dword [ebp-4H], 1                       ; 64CC _ 83. 45, FC, 01
?_395:  mov     eax, dword [ebp-8H]                     ; 64D0 _ 8B. 45, F8
        mov     eax, dword [eax]                        ; 64D3 _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 64D5 _ 39. 45, FC
        jl      ?_394                                   ; 64D8 _ 7C, DB
        nop                                             ; 64DA _ 90
        leave                                           ; 64DB _ C9
        ret                                             ; 64DC _ C3
; _task_remove End of function

_task_switchsub:; Function begin
        push    ebp                                     ; 64DD _ 55
        mov     ebp, esp                                ; 64DE _ 89. E5
        sub     esp, 16                                 ; 64E0 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 64E3 _ C7. 45, FC, 00000000
        jmp     ?_397                                   ; 64EA _ EB, 21

?_396:  mov     ecx, dword [_taskctl]                   ; 64EC _ 8B. 0D, 00000004(d)
        mov     edx, dword [ebp-4H]                     ; 64F2 _ 8B. 55, FC
        mov     eax, edx                                ; 64F5 _ 89. D0
        add     eax, eax                                ; 64F7 _ 01. C0
        add     eax, edx                                ; 64F9 _ 01. D0
        shl     eax, 4                                  ; 64FB _ C1. E0, 04
        add     eax, ecx                                ; 64FE _ 01. C8
        add     eax, 8                                  ; 6500 _ 83. C0, 08
        mov     eax, dword [eax]                        ; 6503 _ 8B. 00
        test    eax, eax                                ; 6505 _ 85. C0
        jg      ?_398                                   ; 6507 _ 7F, 0C
        add     dword [ebp-4H], 1                       ; 6509 _ 83. 45, FC, 01
?_397:  cmp     dword [ebp-4H], 9                       ; 650D _ 83. 7D, FC, 09
        jle     ?_396                                   ; 6511 _ 7E, D9
        jmp     ?_399                                   ; 6513 _ EB, 01

?_398:  nop                                             ; 6515 _ 90
?_399:  mov     eax, dword [_taskctl]                   ; 6516 _ A1, 00000004(d)
        mov     edx, dword [ebp-4H]                     ; 651B _ 8B. 55, FC
        mov     dword [eax], edx                        ; 651E _ 89. 10
        mov     eax, dword [_taskctl]                   ; 6520 _ A1, 00000004(d)
        mov     dword [eax+4H], 0                       ; 6525 _ C7. 40, 04, 00000000
        nop                                             ; 652C _ 90
        leave                                           ; 652D _ C9
        ret                                             ; 652E _ C3
; _task_switchsub End of function

_send_message:; Function begin
        push    ebp                                     ; 652F _ 55
        mov     ebp, esp                                ; 6530 _ 89. E5
        sub     esp, 24                                 ; 6532 _ 83. EC, 18
        mov     eax, dword [ebp+10H]                    ; 6535 _ 8B. 45, 10
        movzx   eax, al                                 ; 6538 _ 0F B6. C0
        mov     edx, dword [ebp+0CH]                    ; 653B _ 8B. 55, 0C
        add     edx, 16                                 ; 653E _ 83. C2, 10
        mov     dword [esp+4H], eax                     ; 6541 _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 6545 _ 89. 14 24
        call    _fifo8_put                              ; 6548 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 654D _ 8B. 45, 08
        mov     dword [esp], eax                        ; 6550 _ 89. 04 24
        call    _task_sleep                             ; 6553 _ E8, FFFFFDC4
        nop                                             ; 6558 _ 90
        leave                                           ; 6559 _ C9
        ret                                             ; 655A _ C3
; _send_message End of function

        nop                                             ; 655B _ 90


_strcmp:
        push    ebp                                     ; 655C _ 55
        mov     ebp, esp                                ; 655D _ 89. E5
        sub     esp, 16                                 ; 655F _ 83. EC, 10
        cmp     dword [ebp+8H], 0                       ; 6562 _ 83. 7D, 08, 00
        jz      ?_400                                   ; 6566 _ 74, 06
        cmp     dword [ebp+0CH], 0                      ; 6568 _ 83. 7D, 0C, 00
        jnz     ?_401                                   ; 656C _ 75, 0A
?_400:  mov     eax, 0                                  ; 656E _ B8, 00000000
        jmp     ?_408                                   ; 6573 _ E9, 0000009B

?_401:  mov     dword [ebp-4H], 0                       ; 6578 _ C7. 45, FC, 00000000
        jmp     ?_404                                   ; 657F _ EB, 25

?_402:  mov     edx, dword [ebp-4H]                     ; 6581 _ 8B. 55, FC
        mov     eax, dword [ebp+8H]                     ; 6584 _ 8B. 45, 08
        add     eax, edx                                ; 6587 _ 01. D0
        movzx   edx, byte [eax]                         ; 6589 _ 0F B6. 10
        mov     ecx, dword [ebp-4H]                     ; 658C _ 8B. 4D, FC
        mov     eax, dword [ebp+0CH]                    ; 658F _ 8B. 45, 0C
        add     eax, ecx                                ; 6592 _ 01. C8
        movzx   eax, byte [eax]                         ; 6594 _ 0F B6. 00
        cmp     dl, al                                  ; 6597 _ 38. C2
        jz      ?_403                                   ; 6599 _ 74, 07
        mov     eax, 0                                  ; 659B _ B8, 00000000
        jmp     ?_408                                   ; 65A0 _ EB, 71

?_403:  add     dword [ebp-4H], 1                       ; 65A2 _ 83. 45, FC, 01
?_404:  mov     edx, dword [ebp-4H]                     ; 65A6 _ 8B. 55, FC
        mov     eax, dword [ebp+8H]                     ; 65A9 _ 8B. 45, 08
        add     eax, edx                                ; 65AC _ 01. D0
        movzx   eax, byte [eax]                         ; 65AE _ 0F B6. 00
        test    al, al                                  ; 65B1 _ 84. C0
        jz      ?_405                                   ; 65B3 _ 74, 0F
        mov     edx, dword [ebp-4H]                     ; 65B5 _ 8B. 55, FC
        mov     eax, dword [ebp+0CH]                    ; 65B8 _ 8B. 45, 0C
        add     eax, edx                                ; 65BB _ 01. D0
        movzx   eax, byte [eax]                         ; 65BD _ 0F B6. 00
        test    al, al                                  ; 65C0 _ 84. C0
        jnz     ?_402                                   ; 65C2 _ 75, BD
?_405:  mov     edx, dword [ebp-4H]                     ; 65C4 _ 8B. 55, FC
        mov     eax, dword [ebp+8H]                     ; 65C7 _ 8B. 45, 08
        add     eax, edx                                ; 65CA _ 01. D0
        movzx   eax, byte [eax]                         ; 65CC _ 0F B6. 00
        test    al, al                                  ; 65CF _ 84. C0
        jnz     ?_406                                   ; 65D1 _ 75, 16
        mov     edx, dword [ebp-4H]                     ; 65D3 _ 8B. 55, FC
        mov     eax, dword [ebp+0CH]                    ; 65D6 _ 8B. 45, 0C
        add     eax, edx                                ; 65D9 _ 01. D0
        movzx   eax, byte [eax]                         ; 65DB _ 0F B6. 00
        test    al, al                                  ; 65DE _ 84. C0
        jz      ?_406                                   ; 65E0 _ 74, 07
        mov     eax, 0                                  ; 65E2 _ B8, 00000000
        jmp     ?_408                                   ; 65E7 _ EB, 2A

?_406:  mov     edx, dword [ebp-4H]                     ; 65E9 _ 8B. 55, FC
        mov     eax, dword [ebp+8H]                     ; 65EC _ 8B. 45, 08
        add     eax, edx                                ; 65EF _ 01. D0
        movzx   eax, byte [eax]                         ; 65F1 _ 0F B6. 00
        test    al, al                                  ; 65F4 _ 84. C0
        jz      ?_407                                   ; 65F6 _ 74, 16
        mov     edx, dword [ebp-4H]                     ; 65F8 _ 8B. 55, FC
        mov     eax, dword [ebp+0CH]                    ; 65FB _ 8B. 45, 0C
        add     eax, edx                                ; 65FE _ 01. D0
        movzx   eax, byte [eax]                         ; 6600 _ 0F B6. 00
        test    al, al                                  ; 6603 _ 84. C0
        jz      ?_407                                   ; 6605 _ 74, 07
        mov     eax, 0                                  ; 6607 _ B8, 00000000
        jmp     ?_408                                   ; 660C _ EB, 05

?_407:  mov     eax, 1                                  ; 660E _ B8, 00000001
?_408:  leave                                           ; 6613 _ C9
        ret                                             ; 6614 _ C3

        nop                                             ; 6615 _ 90
        nop                                             ; 6616 _ 90
        nop                                             ; 6617 _ 90



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

?_409:  db 00H                                          ; 0112 _ .

?_410:  db 00H, 00H, 00H, 00H, 00H                      ; 0113 _ .....

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

_table_rgb.2676:                                        ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0140 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0148 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0150 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0158 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 0160 _ ........
        db 00H, 84H, 00H, 84H, 84H, 84H, 84H, 84H       ; 0168 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0170 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0178 _ ........

_cursor.2736:                                           ; byte
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

_closebtn.2855:                                         ; byte
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


?_411:                                                  
        db 63H, 6FH, 75H, 6EH, 74H, 65H, 72H, 00H       ; 0000 _ counter.

?_412:                                                  ; byte
        db 74H, 61H, 73H, 6BH, 5FH, 61H, 00H            ; 0008 _ task_a.

?_413:                                                  ; byte
        db 63H, 6FH, 6EH, 73H, 6FH, 6CH, 65H, 00H       ; 000F _ console.

?_414:                                                  ; byte
        db 20H, 00H                                     ; 0017 _  .

?_415:                                                  ; byte
        db 66H, 72H, 65H, 65H, 20H, 00H                 ; 0019 _ free .

?_416:                                                  ; byte
        db 20H, 4BH, 42H, 00H                           ; 001F _  KB.

?_417:                                                  ; byte
        db 3EH, 00H                                     ; 0023 _ >.

?_418:                                                  ; byte
        db 6DH, 65H, 6DH, 00H                           ; 0025 _ mem.

?_419:                                                  ; byte
        db 63H, 6CH, 73H, 00H                           ; 0029 _ cls.

?_420:                                                  ; byte
        db 61H, 6CH, 69H, 65H, 6EH, 77H, 61H, 72H       ; 002D _ alienwar
        db 00H                                          ; 0035 _ .

?_421:                                                  ; byte
        db 61H, 6CH, 69H, 65H, 6EH, 77H, 61H, 72H       ; 0036 _ alienwar
        db 2EH, 65H, 78H, 65H, 00H                      ; 003E _ .exe.

?_422:                                                  ; byte
        db 63H, 69H, 72H, 63H, 6CH, 65H, 00H            ; 0043 _ circle.

?_423:                                                  ; byte
        db 63H, 69H, 72H, 63H, 6CH, 65H, 2EH, 65H       ; 004A _ circle.e
        db 78H, 65H, 00H                                ; 0052 _ xe.

?_424:                                                  ; byte
        db 64H, 69H, 72H, 00H                           ; 0055 _ dir.

?_425:                                                  ; byte
        db 65H, 78H, 69H, 74H, 00H                      ; 0059 _ exit.

?_426:                                                  ; byte
        db 73H, 74H, 61H, 72H, 74H, 00H                 ; 005E _ start.

?_427:                                                  ; byte
        db 6EH, 63H, 73H, 74H, 00H                      ; 0064 _ ncst.

?_428:                                                  ; byte
        db 63H, 72H, 61H, 63H, 6BH, 00H                 ; 0069 _ crack.

?_429:                                                  ; byte
        db 63H, 72H, 61H, 63H, 6BH, 2EH, 65H, 78H       ; 006F _ crack.ex
        db 65H, 00H                                     ; 0077 _ e.

?_430:                                                  ; byte
        db 6BH, 65H, 79H, 62H, 6FH, 61H, 72H, 64H       ; 0079 _ keyboard
        db 00H                                          ; 0081 _ .

?_431:                                                  ; byte
        db 75H, 73H, 65H, 72H, 20H, 70H, 72H, 6FH       ; 0082 _ user pro
        db 63H, 00H                                     ; 008A _ c.

?_432:                                                  ; byte
        db 70H, 61H, 67H, 65H, 20H, 69H, 73H, 3AH       ; 008C _ page is:
        db 20H, 00H                                     ; 0094 _  .

?_433:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0096 _ BaseAddr
        db 4CH, 3AH, 20H, 00H                           ; 009E _ L: .

?_434:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 00A2 _ BaseAddr
        db 48H, 3AH, 20H, 00H                           ; 00AA _ H: .

?_435:                                                  ; byte
        db 6CH, 65H, 6EH, 67H, 74H, 68H, 4CH, 6FH       ; 00AE _ lengthLo
        db 77H, 3AH, 20H, 00H                           ; 00B6 _ w: .

?_436:                                                  ; byte
        db 49H, 4EH, 54H, 20H, 4FH, 43H, 00H            ; 00BA _ INT OC.

?_437:                                                  ; byte
        db 53H, 74H, 61H, 63H, 6BH, 20H, 45H, 78H       ; 00C1 _ Stack Ex
        db 63H, 65H, 70H, 74H, 69H, 6FH, 6EH, 00H       ; 00C9 _ ception.

?_438:                                                  ; byte
        db 45H, 49H, 50H, 20H, 3DH, 20H, 00H            ; 00D1 _ EIP = .

?_439:                                                  ; byte
        db 49H, 4EH, 54H, 20H, 30H, 44H, 20H, 00H       ; 00D8 _ INT 0D .

?_440:                                                  ; byte
        db 47H, 65H, 6EH, 65H, 72H, 61H, 6CH, 20H       ; 00E0 _ General 
        db 50H, 72H, 6FH, 74H, 65H, 63H, 74H, 65H       ; 00E8 _ Protecte
        db 64H, 20H, 45H, 78H, 63H, 65H, 70H, 74H       ; 00F0 _ d Except
        db 69H, 6FH, 6EH, 00H                           ; 00F8 _ ion.


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

?_441:  resw    1                                       ; 0018

?_442:  resw    1                                       ; 001A

_keyinfo:                                               ; byte
        resb    24                                      ; 001C

?_443:  resd    1                                       ; 0034

_mouseinfo:                                             ; byte
        resb    40                                      ; 0038

_keybuf:                                                ; byte
        resb    32                                      ; 0060

_mousebuf:                                              ; byte
        resb    128                                     ; 0080

_mdec:                                                  ; byte
        resb    12                                      ; 0100

?_444:  resd    1                                       ; 010C

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

_task_a.2376:                                           ; dword
        resd    1                                       ; 027C

_tss_a.2375:                                            ; byte
        resb    128                                     ; 0280

_tss_b.2374:                                            ; byte
        resb    104                                     ; 0300

_task_b.2364:                                           ; byte
        resb    12                                      ; 0368

_str.2784:                                              ; byte
        resb    1                                       ; 0374

?_445:  resb    9                                       ; 0375

?_446:  resb    2                                       ; 037E

_timerctl:                                              ; byte
        resb    8032                                    ; 0380

_task_timer:                                            ; byte
        resb    4                                       ; 22E0

_taskctl:                                               ; byte
        resb    4                                       ; 22E4


