; Disassembly of file: ckernel.o
; Wed Aug 14 20:33:58 2019
; Mode: 32 bits
; Syntax: YASM/NASM
; Instruction set: Pentium Pro







_launch:
        push    ebp                                     ; 0000 _ 55
        mov     ebp, esp                                ; 0001 _ 89. E5
        push    ebx                                     ; 0003 _ 53
        sub     esp, 132                                ; 0004 _ 81. EC, 00000084
        mov     dword [esp], _bootInfo                  ; 000A _ C7. 04 24, 00000014(d)
        call    _initBootInfo                           ; 0011 _ E8, 000035F8
        mov     eax, dword [_bootInfo]                  ; 0016 _ A1, 00000014(d)
        mov     dword [ebp-18H], eax                    ; 001B _ 89. 45, E8
        movzx   eax, word [?_438]                       ; 001E _ 0F B7. 05, 00000018(d)
        cwde                                            ; 0025 _ 98
        mov     dword [_xsize], eax                     ; 0026 _ A3, 0000013C(d)
        movzx   eax, word [?_439]                       ; 002B _ 0F B7. 05, 0000001A(d)
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
        call    _init_palette                           ; 014B _ E8, 000034DF
        call    _init_keyboard                          ; 0150 _ E8, 00003B82
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
        call    _init_screen8                           ; 0281 _ E8, 00002AD1
        mov     dword [esp+4H], 99                      ; 0286 _ C7. 44 24, 04, 00000063
        mov     dword [esp], _buf_mouse                 ; 028E _ C7. 04 24, 00000160(d)
        call    _init_mouse_cursor                      ; 0295 _ E8, 0000376B
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
        call    _message_box                            ; 0336 _ E8, 00003DC7
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
        call    _enable_mouse                           ; 038A _ E8, 00003983
        mov     eax, dword [_memman]                    ; 038F _ A1, 00000000(d)
        mov     dword [esp], eax                        ; 0394 _ 89. 04 24
        call    _task_init                              ; 0397 _ E8, 00000000(rel)
        mov     dword [_task_a.2376], eax               ; 039C _ A3, 0000027C(d)
        mov     eax, dword [_task_a.2376]               ; 03A1 _ A1, 0000027C(d)
        mov     dword [?_440], eax                      ; 03A6 _ A3, 00000034(d)
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
        call    _close_console                          ; 054C _ E8, 00001EA1
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
        call    _make_wtitle8                           ; 05F3 _ E8, 00003EBA
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
        call    _make_wtitle8                           ; 0628 _ E8, 00003E85
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
        call    _make_wtitle8                           ; 0686 _ E8, 00003E27
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
        call    _make_wtitle8                           ; 06BB _ E8, 00003DF2
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
        call    _showString                             ; 07EC _ E8, 00002976
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
        call    _show_mouse_info                        ; 08AC _ E8, 00002975
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
        call    _boxfill8                               ; 09EF _ E8, 00002E40
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
        mov     dword [esp+8H], ?_412                   ; 0C37 _ C7. 44 24, 08, 0000000F(d)
        mov     edx, dword [ebp-0CH]                    ; 0C3F _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 0C42 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0C46 _ 89. 04 24
        call    _make_window8                           ; 0C49 _ E8, 0000359F
        jmp     ?_038                                   ; 0C4E _ EB, 24

?_037:  mov     eax, dword [_shtctl]                    ; 0C50 _ A1, 00000264(d)
        mov     dword [esp+0CH], 0                      ; 0C55 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], ?_412                   ; 0C5D _ C7. 44 24, 08, 0000000F(d)
        mov     edx, dword [ebp-0CH]                    ; 0C65 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 0C68 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0C6C _ 89. 04 24
        call    _make_window8                           ; 0C6F _ E8, 00003579
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
        call    _make_textbox8                          ; 0CDA _ E8, 00003911
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
        call    _make_wtitle8                           ; 0D2C _ E8, 00003781
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
        lea     edx, [eax+3F4H]                         ; 0E11 _ 8D. 90, 000003F4
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
        call    _cons_newline                           ; 0F1A _ E8, 00001CFA
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
        call    _showString                             ; 103D _ E8, 00002125
        mov     dword [ebp-20H], 136                    ; 1042 _ C7. 45, E0, 00000088
        mov     eax, dword [ebp-0CH]                    ; 1049 _ 8B. 45, F4
        mov     eax, dword [eax+1CH]                    ; 104C _ 8B. 40, 1C
        mov     dword [esp], eax                        ; 104F _ 89. 04 24
        call    _intToHexStr                            ; 1052 _ E8, 00002BCA
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
        call    _showString                             ; 1092 _ E8, 000020D0
        mov     eax, dword [ebp-18H]                    ; 1097 _ 8B. 45, E8
        mov     edx, dword [eax+94H]                    ; 109A _ 8B. 90, 00000094
        mov     eax, dword [ebp-18H]                    ; 10A0 _ 8B. 45, E8
        mov     eax, dword [eax+9CH]                    ; 10A3 _ 8B. 80, 0000009C
        mov     dword [esp+4H], edx                     ; 10A9 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 10AD _ 89. 04 24
        call    _cons_newline                           ; 10B0 _ E8, 00001B64
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
        mov     dword [esp+14H], ?_413                  ; 12BA _ C7. 44 24, 14, 00000017(d)
        mov     dword [esp+10H], 7                      ; 12C2 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ebx                    ; 12CA _ 89. 5C 24, 0C
        mov     dword [esp+8H], ecx                     ; 12CE _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 12D2 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 12D6 _ 89. 04 24
        call    _showString                             ; 12D9 _ E8, 00001E89
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
        call    _cons_newline                           ; 1329 _ E8, 000018EB
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
        call    _cons_newline                           ; 136C _ E8, 000018A8
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
        call    _showString                             ; 13CC _ E8, 00001D96
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
        call    _cons_newline                           ; 141C _ E8, 000017F8
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
        call    _cons_newline                           ; 146A _ E8, 000017AA
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
        call    _intToHexStr                            ; 14E1 _ E8, 0000273B
        mov     dword [ebp-10H], eax                    ; 14E6 _ 89. 45, F0
        mov     eax, dword [ebp-0CH]                    ; 14E9 _ 8B. 45, F4
        mov     ecx, dword [eax+9CH]                    ; 14EC _ 8B. 88, 0000009C
        mov     eax, dword [ebp-0CH]                    ; 14F2 _ 8B. 45, F4
        mov     edx, dword [eax+94H]                    ; 14F5 _ 8B. 90, 00000094
        mov     eax, dword [_shtctl]                    ; 14FB _ A1, 00000264(d)
        mov     dword [esp+14H], ?_414                  ; 1500 _ C7. 44 24, 14, 00000019(d)
        mov     dword [esp+10H], 7                      ; 1508 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ecx                    ; 1510 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 16                      ; 1514 _ C7. 44 24, 08, 00000010
        mov     dword [esp+4H], edx                     ; 151C _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1520 _ 89. 04 24
        call    _showString                             ; 1523 _ E8, 00001C3F
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
        call    _showString                             ; 1561 _ E8, 00001C01
        mov     eax, dword [ebp-0CH]                    ; 1566 _ 8B. 45, F4
        mov     ecx, dword [eax+9CH]                    ; 1569 _ 8B. 88, 0000009C
        mov     eax, dword [ebp-0CH]                    ; 156F _ 8B. 45, F4
        mov     edx, dword [eax+94H]                    ; 1572 _ 8B. 90, 00000094
        mov     eax, dword [_shtctl]                    ; 1578 _ A1, 00000264(d)
        mov     dword [esp+14H], ?_415                  ; 157D _ C7. 44 24, 14, 0000001F(d)
        mov     dword [esp+10H], 7                      ; 1585 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ecx                    ; 158D _ 89. 4C 24, 0C
        mov     dword [esp+8H], 126                     ; 1591 _ C7. 44 24, 08, 0000007E
        mov     dword [esp+4H], edx                     ; 1599 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 159D _ 89. 04 24
        call    _showString                             ; 15A0 _ E8, 00001BC2
        mov     eax, dword [ebp-0CH]                    ; 15A5 _ 8B. 45, F4
        mov     edx, dword [eax+94H]                    ; 15A8 _ 8B. 90, 00000094
        mov     eax, dword [ebp-0CH]                    ; 15AE _ 8B. 45, F4
        mov     eax, dword [eax+9CH]                    ; 15B1 _ 8B. 80, 0000009C
        mov     dword [esp+4H], edx                     ; 15B7 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 15BB _ 89. 04 24
        call    _cons_newline                           ; 15BE _ E8, 00001656
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
        mov     dword [esp+14H], ?_416                  ; 16AA _ C7. 44 24, 14, 00000023(d)
        mov     dword [esp+10H], 7                      ; 16B2 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 28                     ; 16BA _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 8                       ; 16C2 _ C7. 44 24, 08, 00000008
        mov     dword [esp+4H], edx                     ; 16CA _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 16CE _ 89. 04 24
        call    _showString                             ; 16D1 _ E8, 00001A91
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
        call    _file_loadfile                          ; 1720 _ E8, 00003165
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
        mov     dword [esp+14H], ?_416                  ; 1B7D _ C7. 44 24, 14, 00000023(d)
        mov     dword [esp+10H], 7                      ; 1B85 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 28                     ; 1B8D _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 8                       ; 1B95 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp+8H]                     ; 1B9D _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 1BA0 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1BA4 _ 89. 04 24
        call    _showString                             ; 1BA7 _ E8, 000015BB
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
        jmp     ?_107                                   ; 1BDE _ E9, 000004FB

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
        jmp     ?_106                                   ; 1C63 _ E9, 00000428

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
        jmp     ?_106                                   ; 1CA5 _ E9, 000003E6

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
        jmp     ?_106                                   ; 1D15 _ E9, 00000376

?_094:  cmp     dword [ebp-34H], 28                     ; 1D1A _ 83. 7D, CC, 1C
        jne     ?_104                                   ; 1D1E _ 0F 85, 0000020F
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
        call    _cons_newline                           ; 1DA8 _ E8, 00000E6C
        mov     edx, eax                                ; 1DAD _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 1DAF _ 8B. 45, F0
        mov     dword [eax+9CH], edx                    ; 1DB2 _ 89. 90, 0000009C
        mov     dword [esp+4H], ?_417                   ; 1DB8 _ C7. 44 24, 04, 00000025(d)
        mov     eax, dword [ebp-1CH]                    ; 1DC0 _ 8B. 45, E4
        mov     dword [esp], eax                        ; 1DC3 _ 89. 04 24
        call    _strcmp                                 ; 1DC6 _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 1DCB _ 83. F8, 01
        jnz     ?_095                                   ; 1DCE _ 75, 10
        mov     eax, dword [ebp+0CH]                    ; 1DD0 _ 8B. 45, 0C
        mov     dword [esp], eax                        ; 1DD3 _ 89. 04 24
        call    _cmd_mem                                ; 1DD6 _ E8, FFFFF6D2
        jmp     ?_103                                   ; 1DDB _ E9, 00000141

?_095:  mov     dword [esp+4H], ?_418                   ; 1DE0 _ C7. 44 24, 04, 00000029(d)
        mov     eax, dword [ebp-1CH]                    ; 1DE8 _ 8B. 45, E4
        mov     dword [esp], eax                        ; 1DEB _ 89. 04 24
        call    _strcmp                                 ; 1DEE _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 1DF3 _ 83. F8, 01
        jnz     ?_096                                   ; 1DF6 _ 75, 0A
        call    _cmd_cls                                ; 1DF8 _ E8, FFFFF7DA
        jmp     ?_103                                   ; 1DFD _ E9, 0000011F

?_096:  mov     dword [esp+4H], ?_419                   ; 1E02 _ C7. 44 24, 04, 0000002D(d)
        mov     eax, dword [ebp-1CH]                    ; 1E0A _ 8B. 45, E4
        mov     dword [esp], eax                        ; 1E0D _ 89. 04 24
        call    _strcmp                                 ; 1E10 _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 1E15 _ 83. F8, 01
        jnz     ?_097                                   ; 1E18 _ 75, 11
        mov     dword [esp], ?_420                      ; 1E1A _ C7. 04 24, 00000031(d)
        call    _cmd_execute_program                    ; 1E21 _ E8, FFFFF8B5
        jmp     ?_103                                   ; 1E26 _ E9, 000000F6

?_097:  mov     dword [esp+4H], ?_421                   ; 1E2B _ C7. 44 24, 04, 00000039(d)
        mov     eax, dword [ebp-1CH]                    ; 1E33 _ 8B. 45, E4
        mov     dword [esp], eax                        ; 1E36 _ 89. 04 24
        call    _strcmp                                 ; 1E39 _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 1E3E _ 83. F8, 01
        jnz     ?_098                                   ; 1E41 _ 75, 0A
        call    _cmd_dir                                ; 1E43 _ E8, FFFFF0FD
        jmp     ?_103                                   ; 1E48 _ E9, 000000D4

?_098:  mov     dword [esp+4H], ?_422                   ; 1E4D _ C7. 44 24, 04, 0000003D(d)
        mov     eax, dword [ebp-1CH]                    ; 1E55 _ 8B. 45, E4
        mov     dword [esp], eax                        ; 1E58 _ 89. 04 24
        call    _strcmp                                 ; 1E5B _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 1E60 _ 83. F8, 01
        jnz     ?_099                                   ; 1E63 _ 75, 10
        mov     eax, dword [ebp-10H]                    ; 1E65 _ 8B. 45, F0
        mov     dword [esp], eax                        ; 1E68 _ 89. 04 24
        call    _cmd_exit                               ; 1E6B _ E8, 000005F4
        jmp     ?_103                                   ; 1E70 _ E9, 000000AC

?_099:  mov     eax, dword [ebp-1CH]                    ; 1E75 _ 8B. 45, E4
        movzx   eax, byte [eax]                         ; 1E78 _ 0F B6. 00
        cmp     al, 116                                 ; 1E7B _ 3C, 74
        jnz     ?_100                                   ; 1E7D _ 75, 34
        mov     eax, dword [ebp-1CH]                    ; 1E7F _ 8B. 45, E4
        add     eax, 1                                  ; 1E82 _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 1E85 _ 0F B6. 00
        cmp     al, 121                                 ; 1E88 _ 3C, 79
        jnz     ?_100                                   ; 1E8A _ 75, 27
        mov     eax, dword [ebp-1CH]                    ; 1E8C _ 8B. 45, E4
        add     eax, 2                                  ; 1E8F _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 1E92 _ 0F B6. 00
        cmp     al, 112                                 ; 1E95 _ 3C, 70
        jnz     ?_100                                   ; 1E97 _ 75, 1A
        mov     eax, dword [ebp-1CH]                    ; 1E99 _ 8B. 45, E4
        add     eax, 3                                  ; 1E9C _ 83. C0, 03
        movzx   eax, byte [eax]                         ; 1E9F _ 0F B6. 00
        cmp     al, 101                                 ; 1EA2 _ 3C, 65
        jnz     ?_100                                   ; 1EA4 _ 75, 0D
        mov     eax, dword [ebp-1CH]                    ; 1EA6 _ 8B. 45, E4
        mov     dword [esp], eax                        ; 1EA9 _ 89. 04 24
        call    _cmd_type                               ; 1EAC _ E8, FFFFF244
        jmp     ?_103                                   ; 1EB1 _ EB, 6E

?_100:  mov     dword [esp+4H], ?_423                   ; 1EB3 _ C7. 44 24, 04, 00000042(d)
        mov     eax, dword [ebp-1CH]                    ; 1EBB _ 8B. 45, E4
        mov     dword [esp], eax                        ; 1EBE _ 89. 04 24
        call    _strcmp                                 ; 1EC1 _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 1EC6 _ 83. F8, 01
        jnz     ?_101                                   ; 1EC9 _ 75, 0D
        lea     eax, [ebp-55H]                          ; 1ECB _ 8D. 45, AB
        mov     dword [esp], eax                        ; 1ECE _ 89. 04 24
        call    _cmd_start                              ; 1ED1 _ E8, FFFFFA69
        jmp     ?_103                                   ; 1ED6 _ EB, 49

?_101:  mov     dword [esp+4H], ?_424                   ; 1ED8 _ C7. 44 24, 04, 00000048(d)
        mov     eax, dword [ebp-1CH]                    ; 1EE0 _ 8B. 45, E4
        mov     dword [esp], eax                        ; 1EE3 _ 89. 04 24
        call    _strcmp                                 ; 1EE6 _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 1EEB _ 83. F8, 01
        jnz     ?_102                                   ; 1EEE _ 75, 0D
        lea     eax, [ebp-55H]                          ; 1EF0 _ 8D. 45, AB
        mov     dword [esp], eax                        ; 1EF3 _ 89. 04 24
        call    _cmd_ncst                               ; 1EF6 _ E8, FFFFFB18
        jmp     ?_103                                   ; 1EFB _ EB, 24

?_102:  mov     dword [esp+4H], ?_425                   ; 1EFD _ C7. 44 24, 04, 0000004D(d)
        mov     eax, dword [ebp-1CH]                    ; 1F05 _ 8B. 45, E4
        mov     dword [esp], eax                        ; 1F08 _ 89. 04 24
        call    _strcmp                                 ; 1F0B _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 1F10 _ 83. F8, 01
        jnz     ?_103                                   ; 1F13 _ 75, 0C
        mov     dword [esp], ?_426                      ; 1F15 _ C7. 04 24, 00000053(d)
        call    _cmd_execute_program                    ; 1F1C _ E8, FFFFF7BA
?_103:  mov     eax, dword [ebp-10H]                    ; 1F21 _ 8B. 45, F0
        mov     dword [eax+98H], 16                     ; 1F24 _ C7. 80, 00000098, 00000010
        jmp     ?_106                                   ; 1F2E _ E9, 0000015D

?_104:  cmp     dword [ebp-34H], 14                     ; 1F33 _ 83. 7D, CC, 0E
        jne     ?_105                                   ; 1F37 _ 0F 85, 00000098
        mov     eax, dword [ebp-10H]                    ; 1F3D _ 8B. 45, F0
        mov     eax, dword [eax+98H]                    ; 1F40 _ 8B. 80, 00000098
        cmp     eax, 8                                  ; 1F46 _ 83. F8, 08
        jle     ?_105                                   ; 1F49 _ 0F 8E, 00000086
        mov     eax, dword [ebp-10H]                    ; 1F4F _ 8B. 45, F0
        mov     ecx, dword [eax+9CH]                    ; 1F52 _ 8B. 88, 0000009C
        mov     eax, dword [ebp-10H]                    ; 1F58 _ 8B. 45, F0
        mov     edx, dword [eax+98H]                    ; 1F5B _ 8B. 90, 00000098
        mov     eax, dword [_shtctl]                    ; 1F61 _ A1, 00000264(d)
        mov     dword [esp+10H], 0                      ; 1F66 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], ecx                    ; 1F6E _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 1F72 _ 89. 54 24, 08
        mov     edx, dword [ebp+8H]                     ; 1F76 _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 1F79 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1F7D _ 89. 04 24
        call    _set_cursor                             ; 1F80 _ E8, FFFFEA1E
        mov     eax, dword [ebp-10H]                    ; 1F85 _ 8B. 45, F0
        mov     eax, dword [eax+98H]                    ; 1F88 _ 8B. 80, 00000098
        lea     edx, [eax-8H]                           ; 1F8E _ 8D. 50, F8
        mov     eax, dword [ebp-10H]                    ; 1F91 _ 8B. 45, F0
        mov     dword [eax+98H], edx                    ; 1F94 _ 89. 90, 00000098
        mov     eax, dword [ebp-10H]                    ; 1F9A _ 8B. 45, F0
        mov     ecx, dword [eax+9CH]                    ; 1F9D _ 8B. 88, 0000009C
        mov     eax, dword [ebp-10H]                    ; 1FA3 _ 8B. 45, F0
        mov     edx, dword [eax+98H]                    ; 1FA6 _ 8B. 90, 00000098
        mov     eax, dword [_shtctl]                    ; 1FAC _ A1, 00000264(d)
        mov     dword [esp+10H], 0                      ; 1FB1 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], ecx                    ; 1FB9 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 1FBD _ 89. 54 24, 08
        mov     edx, dword [ebp+8H]                     ; 1FC1 _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 1FC4 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1FC8 _ 89. 04 24
        call    _set_cursor                             ; 1FCB _ E8, FFFFE9D3
        jmp     ?_106                                   ; 1FD0 _ E9, 000000BB

?_105:  mov     eax, dword [ebp-34H]                    ; 1FD5 _ 8B. 45, CC
        mov     dword [esp], eax                        ; 1FD8 _ 89. 04 24
        call    _transferScanCode                       ; 1FDB _ E8, FFFFEAA4
        mov     byte [ebp-35H], al                      ; 1FE0 _ 88. 45, CB
        mov     eax, dword [ebp-10H]                    ; 1FE3 _ 8B. 45, F0
        mov     eax, dword [eax+98H]                    ; 1FE6 _ 8B. 80, 00000098
        cmp     eax, 239                                ; 1FEC _ 3D, 000000EF
        jg      ?_106                                   ; 1FF1 _ 0F 8F, 00000099
        cmp     byte [ebp-35H], 0                       ; 1FF7 _ 80. 7D, CB, 00
        je      ?_106                                   ; 1FFB _ 0F 84, 0000008F
        mov     eax, dword [ebp-10H]                    ; 2001 _ 8B. 45, F0
        mov     eax, dword [eax+98H]                    ; 2004 _ 8B. 80, 00000098
        lea     edx, [eax+7H]                           ; 200A _ 8D. 50, 07
        test    eax, eax                                ; 200D _ 85. C0
        cmovs   eax, edx                                ; 200F _ 0F 48. C2
        sar     eax, 3                                  ; 2012 _ C1. F8, 03
        lea     edx, [eax-2H]                           ; 2015 _ 8D. 50, FE
        mov     eax, dword [ebp-1CH]                    ; 2018 _ 8B. 45, E4
        add     edx, eax                                ; 201B _ 01. C2
        movzx   eax, byte [ebp-35H]                     ; 201D _ 0F B6. 45, CB
        mov     byte [edx], al                          ; 2021 _ 88. 02
        mov     eax, dword [ebp-10H]                    ; 2023 _ 8B. 45, F0
        mov     eax, dword [eax+98H]                    ; 2026 _ 8B. 80, 00000098
        lea     edx, [eax+7H]                           ; 202C _ 8D. 50, 07
        test    eax, eax                                ; 202F _ 85. C0
        cmovs   eax, edx                                ; 2031 _ 0F 48. C2
        sar     eax, 3                                  ; 2034 _ C1. F8, 03
        lea     edx, [eax-1H]                           ; 2037 _ 8D. 50, FF
        mov     eax, dword [ebp-1CH]                    ; 203A _ 8B. 45, E4
        add     eax, edx                                ; 203D _ 01. D0
        mov     byte [eax], 0                           ; 203F _ C6. 00, 00
        mov     eax, dword [ebp-10H]                    ; 2042 _ 8B. 45, F0
        mov     eax, dword [eax+98H]                    ; 2045 _ 8B. 80, 00000098
        lea     edx, [eax+7H]                           ; 204B _ 8D. 50, 07
        test    eax, eax                                ; 204E _ 85. C0
        cmovs   eax, edx                                ; 2050 _ 0F 48. C2
        sar     eax, 3                                  ; 2053 _ C1. F8, 03
        sub     eax, 2                                  ; 2056 _ 83. E8, 02
        mov     edx, dword [ebp-34H]                    ; 2059 _ 8B. 55, CC
        mov     byte [ebp+eax-55H], dl                  ; 205C _ 88. 54 05, AB
        mov     eax, dword [ebp-10H]                    ; 2060 _ 8B. 45, F0
        mov     eax, dword [eax+98H]                    ; 2063 _ 8B. 80, 00000098
        lea     edx, [eax+7H]                           ; 2069 _ 8D. 50, 07
        test    eax, eax                                ; 206C _ 85. C0
        cmovs   eax, edx                                ; 206E _ 0F 48. C2
        sar     eax, 3                                  ; 2071 _ C1. F8, 03
        sub     eax, 1                                  ; 2074 _ 83. E8, 01
        mov     byte [ebp+eax-55H], 0                   ; 2077 _ C6. 44 05, AB, 00
        movsx   eax, byte [ebp-35H]                     ; 207C _ 0F BE. 45, CB
        mov     dword [esp+4H], 1                       ; 2080 _ C7. 44 24, 04, 00000001
        mov     dword [esp], eax                        ; 2088 _ 89. 04 24
        call    _cons_putchar                           ; 208B _ E8, 00000AB2
?_106:  cmp     dword [ebp-0CH], 0                      ; 2090 _ 83. 7D, F4, 00
        js      ?_107                                   ; 2094 _ 78, 48
        mov     eax, dword [ebp-10H]                    ; 2096 _ 8B. 45, F0
        mov     eax, dword [eax+94H]                    ; 2099 _ 8B. 80, 00000094
        test    eax, eax                                ; 209F _ 85. C0
        jz      ?_107                                   ; 20A1 _ 74, 3B
        mov     eax, dword [ebp-10H]                    ; 20A3 _ 8B. 45, F0
        mov     ebx, dword [eax+9CH]                    ; 20A6 _ 8B. 98, 0000009C
        mov     eax, dword [ebp-10H]                    ; 20AC _ 8B. 45, F0
        mov     ecx, dword [eax+98H]                    ; 20AF _ 8B. 88, 00000098
        mov     eax, dword [ebp-10H]                    ; 20B5 _ 8B. 45, F0
        mov     edx, dword [eax+94H]                    ; 20B8 _ 8B. 90, 00000094
        mov     eax, dword [_shtctl]                    ; 20BE _ A1, 00000264(d)
        mov     esi, dword [ebp-0CH]                    ; 20C3 _ 8B. 75, F4
        mov     dword [esp+10H], esi                    ; 20C6 _ 89. 74 24, 10
        mov     dword [esp+0CH], ebx                    ; 20CA _ 89. 5C 24, 0C
        mov     dword [esp+8H], ecx                     ; 20CE _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 20D2 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 20D6 _ 89. 04 24
        call    _set_cursor                             ; 20D9 _ E8, FFFFE8C5
?_107:  call    _io_sti                                 ; 20DE _ E8, 00000000(rel)
        jmp     ?_088                                   ; 20E3 _ E9, FFFFFAD2
; _console_task End of function

_cons_putstr:; Function begin
        push    ebp                                     ; 20E8 _ 55
        mov     ebp, esp                                ; 20E9 _ 89. E5
        sub     esp, 24                                 ; 20EB _ 83. EC, 18
        jmp     ?_109                                   ; 20EE _ EB, 1D

?_108:  mov     eax, dword [ebp+8H]                     ; 20F0 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 20F3 _ 0F B6. 00
        movsx   eax, al                                 ; 20F6 _ 0F BE. C0
        mov     dword [esp+4H], 1                       ; 20F9 _ C7. 44 24, 04, 00000001
        mov     dword [esp], eax                        ; 2101 _ 89. 04 24
        call    _cons_putchar                           ; 2104 _ E8, 00000A39
        add     dword [ebp+8H], 1                       ; 2109 _ 83. 45, 08, 01
?_109:  mov     eax, dword [ebp+8H]                     ; 210D _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 2110 _ 0F B6. 00
        test    al, al                                  ; 2113 _ 84. C0
        jnz     ?_108                                   ; 2115 _ 75, D9
        nop                                             ; 2117 _ 90
        leave                                           ; 2118 _ C9
        ret                                             ; 2119 _ C3
; _cons_putstr End of function

_api_linewin:; Function begin
        push    ebp                                     ; 211A _ 55
        mov     ebp, esp                                ; 211B _ 89. E5
        sub     esp, 32                                 ; 211D _ 83. EC, 20
        mov     eax, dword [ebp+14H]                    ; 2120 _ 8B. 45, 14
        sub     eax, dword [ebp+0CH]                    ; 2123 _ 2B. 45, 0C
        mov     dword [ebp-14H], eax                    ; 2126 _ 89. 45, EC
        mov     eax, dword [ebp+18H]                    ; 2129 _ 8B. 45, 18
        sub     eax, dword [ebp+10H]                    ; 212C _ 2B. 45, 10
        mov     dword [ebp-18H], eax                    ; 212F _ 89. 45, E8
        mov     eax, dword [ebp+0CH]                    ; 2132 _ 8B. 45, 0C
        shl     eax, 10                                 ; 2135 _ C1. E0, 0A
        mov     dword [ebp-8H], eax                     ; 2138 _ 89. 45, F8
        mov     eax, dword [ebp+10H]                    ; 213B _ 8B. 45, 10
        shl     eax, 10                                 ; 213E _ C1. E0, 0A
        mov     dword [ebp-0CH], eax                    ; 2141 _ 89. 45, F4
        cmp     dword [ebp-14H], 0                      ; 2144 _ 83. 7D, EC, 00
        jns     ?_110                                   ; 2148 _ 79, 03
        neg     dword [ebp-14H]                         ; 214A _ F7. 5D, EC
?_110:  cmp     dword [ebp-18H], 0                      ; 214D _ 83. 7D, E8, 00
        jns     ?_111                                   ; 2151 _ 79, 03
        neg     dword [ebp-18H]                         ; 2153 _ F7. 5D, E8
?_111:  mov     eax, dword [ebp-14H]                    ; 2156 _ 8B. 45, EC
        cmp     eax, dword [ebp-18H]                    ; 2159 _ 3B. 45, E8
        jl      ?_115                                   ; 215C _ 7C, 53
        mov     eax, dword [ebp-14H]                    ; 215E _ 8B. 45, EC
        add     eax, 1                                  ; 2161 _ 83. C0, 01
        mov     dword [ebp-10H], eax                    ; 2164 _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 2167 _ 8B. 45, 0C
        cmp     eax, dword [ebp+14H]                    ; 216A _ 3B. 45, 14
        jle     ?_112                                   ; 216D _ 7E, 09
        mov     dword [ebp-14H], -1024                  ; 216F _ C7. 45, EC, FFFFFC00
        jmp     ?_113                                   ; 2176 _ EB, 07

?_112:  mov     dword [ebp-14H], 1024                   ; 2178 _ C7. 45, EC, 00000400
?_113:  mov     eax, dword [ebp+10H]                    ; 217F _ 8B. 45, 10
        cmp     eax, dword [ebp+18H]                    ; 2182 _ 3B. 45, 18
        jg      ?_114                                   ; 2185 _ 7F, 15
        mov     eax, dword [ebp+18H]                    ; 2187 _ 8B. 45, 18
        sub     eax, dword [ebp+10H]                    ; 218A _ 2B. 45, 10
        add     eax, 1                                  ; 218D _ 83. C0, 01
        shl     eax, 10                                 ; 2190 _ C1. E0, 0A
        cdq                                             ; 2193 _ 99
        idiv    dword [ebp-10H]                         ; 2194 _ F7. 7D, F0
        mov     dword [ebp-18H], eax                    ; 2197 _ 89. 45, E8
        jmp     ?_119                                   ; 219A _ EB, 66

?_114:  mov     eax, dword [ebp+18H]                    ; 219C _ 8B. 45, 18
        sub     eax, dword [ebp+10H]                    ; 219F _ 2B. 45, 10
        sub     eax, 1                                  ; 21A2 _ 83. E8, 01
        shl     eax, 10                                 ; 21A5 _ C1. E0, 0A
        cdq                                             ; 21A8 _ 99
        idiv    dword [ebp-10H]                         ; 21A9 _ F7. 7D, F0
        mov     dword [ebp-18H], eax                    ; 21AC _ 89. 45, E8
        jmp     ?_119                                   ; 21AF _ EB, 51

?_115:  mov     eax, dword [ebp-18H]                    ; 21B1 _ 8B. 45, E8
        add     eax, 1                                  ; 21B4 _ 83. C0, 01
        mov     dword [ebp-10H], eax                    ; 21B7 _ 89. 45, F0
        mov     eax, dword [ebp+10H]                    ; 21BA _ 8B. 45, 10
        cmp     eax, dword [ebp+18H]                    ; 21BD _ 3B. 45, 18
        jle     ?_116                                   ; 21C0 _ 7E, 09
        mov     dword [ebp-18H], -1024                  ; 21C2 _ C7. 45, E8, FFFFFC00
        jmp     ?_117                                   ; 21C9 _ EB, 07

?_116:  mov     dword [ebp-18H], 1024                   ; 21CB _ C7. 45, E8, 00000400
?_117:  mov     eax, dword [ebp+0CH]                    ; 21D2 _ 8B. 45, 0C
        cmp     eax, dword [ebp+14H]                    ; 21D5 _ 3B. 45, 14
        jg      ?_118                                   ; 21D8 _ 7F, 15
        mov     eax, dword [ebp+14H]                    ; 21DA _ 8B. 45, 14
        sub     eax, dword [ebp+0CH]                    ; 21DD _ 2B. 45, 0C
        add     eax, 1                                  ; 21E0 _ 83. C0, 01
        shl     eax, 10                                 ; 21E3 _ C1. E0, 0A
        cdq                                             ; 21E6 _ 99
        idiv    dword [ebp-10H]                         ; 21E7 _ F7. 7D, F0
        mov     dword [ebp-14H], eax                    ; 21EA _ 89. 45, EC
        jmp     ?_119                                   ; 21ED _ EB, 13

?_118:  mov     eax, dword [ebp+14H]                    ; 21EF _ 8B. 45, 14
        sub     eax, dword [ebp+0CH]                    ; 21F2 _ 2B. 45, 0C
        sub     eax, 1                                  ; 21F5 _ 83. E8, 01
        shl     eax, 10                                 ; 21F8 _ C1. E0, 0A
        cdq                                             ; 21FB _ 99
        idiv    dword [ebp-10H]                         ; 21FC _ F7. 7D, F0
        mov     dword [ebp-14H], eax                    ; 21FF _ 89. 45, EC
?_119:  mov     dword [ebp-4H], 0                       ; 2202 _ C7. 45, FC, 00000000
        jmp     ?_121                                   ; 2209 _ EB, 35

?_120:  mov     eax, dword [ebp+8H]                     ; 220B _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 220E _ 8B. 10
        mov     eax, dword [ebp-0CH]                    ; 2210 _ 8B. 45, F4
        sar     eax, 10                                 ; 2213 _ C1. F8, 0A
        mov     ecx, eax                                ; 2216 _ 89. C1
        mov     eax, dword [ebp+8H]                     ; 2218 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 221B _ 8B. 40, 04
        imul    eax, ecx                                ; 221E _ 0F AF. C1
        mov     ecx, dword [ebp-8H]                     ; 2221 _ 8B. 4D, F8
        sar     ecx, 10                                 ; 2224 _ C1. F9, 0A
        add     eax, ecx                                ; 2227 _ 01. C8
        add     eax, edx                                ; 2229 _ 01. D0
        mov     edx, dword [ebp+1CH]                    ; 222B _ 8B. 55, 1C
        mov     byte [eax], dl                          ; 222E _ 88. 10
        mov     eax, dword [ebp-14H]                    ; 2230 _ 8B. 45, EC
        add     dword [ebp-8H], eax                     ; 2233 _ 01. 45, F8
        mov     eax, dword [ebp-18H]                    ; 2236 _ 8B. 45, E8
        add     dword [ebp-0CH], eax                    ; 2239 _ 01. 45, F4
        add     dword [ebp-4H], 1                       ; 223C _ 83. 45, FC, 01
?_121:  mov     eax, dword [ebp-4H]                     ; 2240 _ 8B. 45, FC
        cmp     eax, dword [ebp-10H]                    ; 2243 _ 3B. 45, F0
        jl      ?_120                                   ; 2246 _ 7C, C3
        nop                                             ; 2248 _ 90
        leave                                           ; 2249 _ C9
        ret                                             ; 224A _ C3
; _api_linewin End of function

_handle_keyboard:; Function begin
        push    ebp                                     ; 224B _ 55
        mov     ebp, esp                                ; 224C _ 89. E5
        sub     esp, 56                                 ; 224E _ 83. EC, 38
?_122:  call    _io_cli                                 ; 2251 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 2256 _ 8B. 45, 08
        add     eax, 16                                 ; 2259 _ 83. C0, 10
        mov     dword [esp], eax                        ; 225C _ 89. 04 24
        call    _fifo8_status                           ; 225F _ E8, 00000000(rel)
        test    eax, eax                                ; 2264 _ 85. C0
        jnz     ?_123                                   ; 2266 _ 75, 2A
        call    _io_sti                                 ; 2268 _ E8, 00000000(rel)
        cmp     dword [ebp+0CH], 0                      ; 226D _ 83. 7D, 0C, 00
        jne     ?_127                                   ; 2271 _ 0F 85, 000000E2
        call    _io_sti                                 ; 2277 _ E8, 00000000(rel)
        mov     eax, dword [ebp+10H]                    ; 227C _ 8B. 45, 10
        add     eax, 28                                 ; 227F _ 83. C0, 1C
        mov     dword [eax], -1                         ; 2282 _ C7. 00, FFFFFFFF
        mov     eax, 0                                  ; 2288 _ B8, 00000000
        jmp     ?_128                                   ; 228D _ E9, 000000CD

?_123:  mov     eax, dword [ebp+8H]                     ; 2292 _ 8B. 45, 08
        add     eax, 16                                 ; 2295 _ 83. C0, 10
        mov     dword [esp], eax                        ; 2298 _ 89. 04 24
        call    _fifo8_get                              ; 229B _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 22A0 _ 89. 45, F4
        call    _io_sti                                 ; 22A3 _ E8, 00000000(rel)
        cmp     dword [ebp-0CH], 255                    ; 22A8 _ 81. 7D, F4, 000000FF
        jle     ?_124                                   ; 22AF _ 7E, 37
        mov     edx, dword [_sht_back]                  ; 22B1 _ 8B. 15, 00000268(d)
        mov     eax, dword [_shtctl]                    ; 22B7 _ A1, 00000264(d)
        mov     dword [esp+14H], ?_427                  ; 22BC _ C7. 44 24, 14, 0000005D(d)
        mov     dword [esp+10H], 7                      ; 22C4 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 176                    ; 22CC _ C7. 44 24, 0C, 000000B0
        mov     dword [esp+8H], 0                       ; 22D4 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 22DC _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 22E0 _ 89. 04 24
        call    _showString                             ; 22E3 _ E8, 00000E7F
?_124:  cmp     dword [ebp-0CH], 1                      ; 22E8 _ 83. 7D, F4, 01
        jg      ?_125                                   ; 22EC _ 7F, 41
        mov     eax, dword [ebp+8H]                     ; 22EE _ 8B. 45, 08
        lea     edx, [eax+10H]                          ; 22F1 _ 8D. 50, 10
        mov     eax, dword [ebp+8H]                     ; 22F4 _ 8B. 45, 08
        mov     eax, dword [eax+0A8H]                   ; 22F7 _ 8B. 80, 000000A8
        mov     dword [esp+8H], 1                       ; 22FD _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], edx                     ; 2305 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2309 _ 89. 04 24
        call    _timer_init                             ; 230C _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 2311 _ 8B. 45, 08
        mov     eax, dword [eax+0A8H]                   ; 2314 _ 8B. 80, 000000A8
        mov     dword [esp+4H], 50                      ; 231A _ C7. 44 24, 04, 00000032
        mov     dword [esp], eax                        ; 2322 _ 89. 04 24
        call    _timer_settime                          ; 2325 _ E8, 00000000(rel)
        jmp     ?_122                                   ; 232A _ E9, FFFFFF22

?_125:  cmp     dword [ebp-0CH], 2                      ; 232F _ 83. 7D, F4, 02
        jnz     ?_126                                   ; 2333 _ 75, 12
        mov     eax, dword [ebp+8H]                     ; 2335 _ 8B. 45, 08
        mov     dword [eax+0A0H], 7                     ; 2338 _ C7. 80, 000000A0, 00000007
        jmp     ?_122                                   ; 2342 _ E9, FFFFFF0A

?_126:  mov     eax, dword [ebp+10H]                    ; 2347 _ 8B. 45, 10
        add     eax, 28                                 ; 234A _ 83. C0, 1C
        mov     edx, dword [ebp-0CH]                    ; 234D _ 8B. 55, F4
        mov     dword [eax], edx                        ; 2350 _ 89. 10
        mov     eax, 0                                  ; 2352 _ B8, 00000000
        jmp     ?_128                                   ; 2357 _ EB, 06

?_127:  nop                                             ; 2359 _ 90
        jmp     ?_122                                   ; 235A _ E9, FFFFFEF2
; _handle_keyboard End of function

?_128:  ; Local function
        leave                                           ; 235F _ C9
        ret                                             ; 2360 _ C3

_close_constask:; Function begin
        push    ebp                                     ; 2361 _ 55
        mov     ebp, esp                                ; 2362 _ 89. E5
        sub     esp, 24                                 ; 2364 _ 83. EC, 18
        mov     eax, dword [ebp+8H]                     ; 2367 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 236A _ 89. 04 24
        call    _task_sleep                             ; 236D _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 2372 _ 8B. 45, 08
        mov     eax, dword [eax+0B8H]                   ; 2375 _ 8B. 80, 000000B8
        mov     edx, eax                                ; 237B _ 89. C2
        mov     eax, dword [_memman]                    ; 237D _ A1, 00000000(d)
        mov     dword [esp+8H], 65536                   ; 2382 _ C7. 44 24, 08, 00010000
        mov     dword [esp+4H], edx                     ; 238A _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 238E _ 89. 04 24
        call    _memman_free_4k                         ; 2391 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 2396 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2399 _ 8B. 40, 10
        mov     edx, eax                                ; 239C _ 89. C2
        mov     eax, dword [_memman]                    ; 239E _ A1, 00000000(d)
        mov     dword [esp+8H], 128                     ; 23A3 _ C7. 44 24, 08, 00000080
        mov     dword [esp+4H], edx                     ; 23AB _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 23AF _ 89. 04 24
        call    _memman_free                            ; 23B2 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 23B7 _ 8B. 45, 08
        mov     eax, dword [eax+0ACH]                   ; 23BA _ 8B. 80, 000000AC
        mov     edx, eax                                ; 23C0 _ 89. C2
        mov     eax, dword [_memman]                    ; 23C2 _ A1, 00000000(d)
        mov     dword [esp+8H], 30                      ; 23C7 _ C7. 44 24, 08, 0000001E
        mov     dword [esp+4H], edx                     ; 23CF _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 23D3 _ 89. 04 24
        call    _memman_free                            ; 23D6 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 23DB _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 23DE _ C7. 40, 04, 00000000
        mov     dword [_current_console_task], 0        ; 23E5 _ C7. 05, 00000278(d), 00000000
        nop                                             ; 23EF _ 90
        leave                                           ; 23F0 _ C9
        ret                                             ; 23F1 _ C3
; _close_constask End of function

_close_console:; Function begin
        push    ebp                                     ; 23F2 _ 55
        mov     ebp, esp                                ; 23F3 _ 89. E5
        sub     esp, 40                                 ; 23F5 _ 83. EC, 28
        mov     eax, dword [ebp+8H]                     ; 23F8 _ 8B. 45, 08
        mov     eax, dword [eax+0A8H]                   ; 23FB _ 8B. 80, 000000A8
        mov     dword [esp], eax                        ; 2401 _ 89. 04 24
        call    _timer_free                             ; 2404 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 2409 _ 8B. 45, 08
        mov     eax, dword [eax+0B4H]                   ; 240C _ 8B. 80, 000000B4
        test    eax, eax                                ; 2412 _ 85. C0
        jz      ?_129                                   ; 2414 _ 74, 40
        mov     eax, dword [ebp+8H]                     ; 2416 _ 8B. 45, 08
        mov     eax, dword [eax+0B4H]                   ; 2419 _ 8B. 80, 000000B4
        mov     dword [ebp-0CH], eax                    ; 241F _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 2422 _ 8B. 45, F4
        mov     eax, dword [eax]                        ; 2425 _ 8B. 00
        mov     edx, eax                                ; 2427 _ 89. C2
        mov     eax, dword [_memman]                    ; 2429 _ A1, 00000000(d)
        mov     dword [esp+8H], 42240                   ; 242E _ C7. 44 24, 08, 0000A500
        mov     dword [esp+4H], edx                     ; 2436 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 243A _ 89. 04 24
        call    _memman_free_4k                         ; 243D _ E8, 00000000(rel)
        mov     eax, dword [_shtctl]                    ; 2442 _ A1, 00000264(d)
        mov     edx, dword [ebp-0CH]                    ; 2447 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 244A _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 244E _ 89. 04 24
        call    _sheet_free                             ; 2451 _ E8, 00000000(rel)
?_129:  mov     eax, dword [ebp+8H]                     ; 2456 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2459 _ 89. 04 24
        call    _close_constask                         ; 245C _ E8, FFFFFF00
        nop                                             ; 2461 _ 90
        leave                                           ; 2462 _ C9
        ret                                             ; 2463 _ C3
; _close_console End of function

_cmd_exit:; Function begin
        push    ebp                                     ; 2464 _ 55
        mov     ebp, esp                                ; 2465 _ 89. E5
        sub     esp, 24                                 ; 2467 _ 83. EC, 18
        call    _io_cli                                 ; 246A _ E8, 00000000(rel)
        mov     dword [esp+4H], 255                     ; 246F _ C7. 44 24, 04, 000000FF
        mov     dword [esp], _keyinfo                   ; 2477 _ C7. 04 24, 0000001C(d)
        call    _fifo8_put                              ; 247E _ E8, 00000000(rel)
        call    _io_sti                                 ; 2483 _ E8, 00000000(rel)
        nop                                             ; 2488 _ 90
        leave                                           ; 2489 _ C9
        ret                                             ; 248A _ C3
; _cmd_exit End of function

_kernel_api:; Function begin
        push    ebp                                     ; 248B _ 55
        mov     ebp, esp                                ; 248C _ 89. E5
        push    esi                                     ; 248E _ 56
        push    ebx                                     ; 248F _ 53
        sub     esp, 80                                 ; 2490 _ 83. EC, 50
        call    _task_now                               ; 2493 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 2498 _ 89. 45, F0
        mov     dword [ebp-14H], 0                      ; 249B _ C7. 45, EC, 00000000
        lea     eax, [ebp+24H]                          ; 24A2 _ 8D. 45, 24
        add     eax, 4                                  ; 24A5 _ 83. C0, 04
        mov     dword [ebp-18H], eax                    ; 24A8 _ 89. 45, E8
        mov     dword [ebp-0CH], 0                      ; 24AB _ C7. 45, F4, 00000000
        mov     dword [ebp-1CH], 0                      ; 24B2 _ C7. 45, E4, 00000000
        cmp     dword [ebp+1CH], 1                      ; 24B9 _ 83. 7D, 1C, 01
        jnz     ?_130                                   ; 24BD _ 75, 1B
        mov     eax, dword [ebp+24H]                    ; 24BF _ 8B. 45, 24
        movsx   eax, al                                 ; 24C2 _ 0F BE. C0
        mov     dword [esp+4H], 1                       ; 24C5 _ C7. 44 24, 04, 00000001
        mov     dword [esp], eax                        ; 24CD _ 89. 04 24
        call    _cons_putchar                           ; 24D0 _ E8, 0000066D
        jmp     ?_163                                   ; 24D5 _ E9, 0000065C

?_130:  cmp     dword [ebp+1CH], 2                      ; 24DA _ 83. 7D, 1C, 02
        jnz     ?_131                                   ; 24DE _ 75, 1D
        mov     eax, dword [ebp-10H]                    ; 24E0 _ 8B. 45, F0
        mov     eax, dword [eax+0B0H]                   ; 24E3 _ 8B. 80, 000000B0
        mov     edx, dword [eax]                        ; 24E9 _ 8B. 10
        mov     eax, dword [ebp+18H]                    ; 24EB _ 8B. 45, 18
        add     eax, edx                                ; 24EE _ 01. D0
        mov     dword [esp], eax                        ; 24F0 _ 89. 04 24
        call    _cons_putstr                            ; 24F3 _ E8, FFFFFBF0
        jmp     ?_163                                   ; 24F8 _ E9, 00000639

?_131:  cmp     dword [ebp+1CH], 4                      ; 24FD _ 83. 7D, 1C, 04
        jnz     ?_132                                   ; 2501 _ 75, 15
        mov     eax, dword [ebp-10H]                    ; 2503 _ 8B. 45, F0
        mov     dword [eax+34H], 0                      ; 2506 _ C7. 40, 34, 00000000
        mov     eax, dword [ebp-10H]                    ; 250D _ 8B. 45, F0
        add     eax, 48                                 ; 2510 _ 83. C0, 30
        jmp     ?_164                                   ; 2513 _ E9, 00000623

?_132:  cmp     dword [ebp+1CH], 5                      ; 2518 _ 83. 7D, 1C, 05
        jne     ?_133                                   ; 251C _ 0F 85, 00000107
        mov     eax, dword [_shtctl]                    ; 2522 _ A1, 00000264(d)
        mov     dword [esp], eax                        ; 2527 _ 89. 04 24
        call    _sheet_alloc                            ; 252A _ E8, 00000000(rel)
        mov     dword [ebp-14H], eax                    ; 252F _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 2532 _ 8B. 45, EC
        mov     edx, dword [ebp-10H]                    ; 2535 _ 8B. 55, F0
        mov     dword [eax+20H], edx                    ; 2538 _ 89. 50, 20
        mov     eax, dword [ebp-14H]                    ; 253B _ 8B. 45, EC
        mov     eax, dword [eax+1CH]                    ; 253E _ 8B. 40, 1C
        or      eax, 10H                                ; 2541 _ 83. C8, 10
        mov     edx, eax                                ; 2544 _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 2546 _ 8B. 45, EC
        mov     dword [eax+1CH], edx                    ; 2549 _ 89. 50, 1C
        mov     edx, dword [ebp+24H]                    ; 254C _ 8B. 55, 24
        mov     eax, dword [ebp-10H]                    ; 254F _ 8B. 45, F0
        mov     eax, dword [eax+0B0H]                   ; 2552 _ 8B. 80, 000000B0
        mov     ecx, dword [eax+4H]                     ; 2558 _ 8B. 48, 04
        mov     eax, dword [ebp+18H]                    ; 255B _ 8B. 45, 18
        add     eax, ecx                                ; 255E _ 01. C8
        mov     dword [esp+10H], edx                    ; 2560 _ 89. 54 24, 10
        mov     edx, dword [ebp+8H]                     ; 2564 _ 8B. 55, 08
        mov     dword [esp+0CH], edx                    ; 2567 _ 89. 54 24, 0C
        mov     edx, dword [ebp+0CH]                    ; 256B _ 8B. 55, 0C
        mov     dword [esp+8H], edx                     ; 256E _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 2572 _ 89. 44 24, 04
        mov     eax, dword [ebp-14H]                    ; 2576 _ 8B. 45, EC
        mov     dword [esp], eax                        ; 2579 _ 89. 04 24
        call    _sheet_setbuf                           ; 257C _ E8, 00000000(rel)
        mov     eax, dword [ebp-10H]                    ; 2581 _ 8B. 45, F0
        mov     eax, dword [eax+0B0H]                   ; 2584 _ 8B. 80, 000000B0
        mov     edx, dword [eax]                        ; 258A _ 8B. 10
        mov     eax, dword [ebp+20H]                    ; 258C _ 8B. 45, 20
        add     edx, eax                                ; 258F _ 01. C2
        mov     eax, dword [_shtctl]                    ; 2591 _ A1, 00000264(d)
        mov     dword [esp+0CH], 0                      ; 2596 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], edx                     ; 259E _ 89. 54 24, 08
        mov     edx, dword [ebp-14H]                    ; 25A2 _ 8B. 55, EC
        mov     dword [esp+4H], edx                     ; 25A5 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 25A9 _ 89. 04 24
        call    _make_window8                           ; 25AC _ E8, 00001C3C
        mov     eax, dword [_shtctl]                    ; 25B1 _ A1, 00000264(d)
        mov     eax, dword [eax+0CH]                    ; 25B6 _ 8B. 40, 0C
        sub     eax, dword [ebp+8H]                     ; 25B9 _ 2B. 45, 08
        mov     edx, eax                                ; 25BC _ 89. C2
        shr     edx, 31                                 ; 25BE _ C1. EA, 1F
        add     eax, edx                                ; 25C1 _ 01. D0
        sar     eax, 1                                  ; 25C3 _ D1. F8
        mov     ecx, eax                                ; 25C5 _ 89. C1
        mov     eax, dword [_shtctl]                    ; 25C7 _ A1, 00000264(d)
        mov     eax, dword [eax+8H]                     ; 25CC _ 8B. 40, 08
        sub     eax, dword [ebp+0CH]                    ; 25CF _ 2B. 45, 0C
        mov     edx, eax                                ; 25D2 _ 89. C2
        shr     edx, 31                                 ; 25D4 _ C1. EA, 1F
        add     eax, edx                                ; 25D7 _ 01. D0
        sar     eax, 1                                  ; 25D9 _ D1. F8
        mov     edx, eax                                ; 25DB _ 89. C2
        mov     eax, dword [_shtctl]                    ; 25DD _ A1, 00000264(d)
        mov     dword [esp+0CH], ecx                    ; 25E2 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 25E6 _ 89. 54 24, 08
        mov     edx, dword [ebp-14H]                    ; 25EA _ 8B. 55, EC
        mov     dword [esp+4H], edx                     ; 25ED _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 25F1 _ 89. 04 24
        call    _sheet_slide                            ; 25F4 _ E8, 00000000(rel)
        mov     eax, dword [_shtctl]                    ; 25F9 _ A1, 00000264(d)
        mov     edx, dword [eax+10H]                    ; 25FE _ 8B. 50, 10
        mov     eax, dword [_shtctl]                    ; 2601 _ A1, 00000264(d)
        mov     dword [esp+8H], edx                     ; 2606 _ 89. 54 24, 08
        mov     edx, dword [ebp-14H]                    ; 260A _ 8B. 55, EC
        mov     dword [esp+4H], edx                     ; 260D _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2611 _ 89. 04 24
        call    _sheet_updown                           ; 2614 _ E8, 00000000(rel)
        mov     eax, dword [ebp-18H]                    ; 2619 _ 8B. 45, E8
        add     eax, 28                                 ; 261C _ 83. C0, 1C
        mov     edx, dword [ebp-14H]                    ; 261F _ 8B. 55, EC
        mov     dword [eax], edx                        ; 2622 _ 89. 10
        jmp     ?_163                                   ; 2624 _ E9, 0000050D

?_133:  cmp     dword [ebp+1CH], 6                      ; 2629 _ 83. 7D, 1C, 06
        jne     ?_134                                   ; 262D _ 0F 85, 0000008D
        mov     eax, dword [ebp+18H]                    ; 2633 _ 8B. 45, 18
        mov     dword [ebp-14H], eax                    ; 2636 _ 89. 45, EC
        mov     eax, dword [ebp-10H]                    ; 2639 _ 8B. 45, F0
        mov     eax, dword [eax+0B0H]                   ; 263C _ 8B. 80, 000000B0
        mov     edx, dword [eax+4H]                     ; 2642 _ 8B. 50, 04
        mov     eax, dword [ebp+10H]                    ; 2645 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 2648 _ 8D. 0C 02
        mov     eax, dword [ebp+24H]                    ; 264B _ 8B. 45, 24
        movsx   eax, al                                 ; 264E _ 0F BE. C0
        mov     edx, dword [_shtctl]                    ; 2651 _ 8B. 15, 00000264(d)
        mov     dword [esp+14H], ecx                    ; 2657 _ 89. 4C 24, 14
        mov     dword [esp+10H], eax                    ; 265B _ 89. 44 24, 10
        mov     eax, dword [ebp+8H]                     ; 265F _ 8B. 45, 08
        mov     dword [esp+0CH], eax                    ; 2662 _ 89. 44 24, 0C
        mov     eax, dword [ebp+0CH]                    ; 2666 _ 8B. 45, 0C
        mov     dword [esp+8H], eax                     ; 2669 _ 89. 44 24, 08
        mov     eax, dword [ebp-14H]                    ; 266D _ 8B. 45, EC
        mov     dword [esp+4H], eax                     ; 2670 _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 2674 _ 89. 14 24
        call    _showString                             ; 2677 _ E8, 00000AEB
        mov     eax, dword [ebp+8H]                     ; 267C _ 8B. 45, 08
        lea     ecx, [eax+10H]                          ; 267F _ 8D. 48, 10
        mov     eax, dword [ebp+20H]                    ; 2682 _ 8B. 45, 20
        lea     edx, [eax*8]                            ; 2685 _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp+0CH]                    ; 268C _ 8B. 45, 0C
        add     edx, eax                                ; 268F _ 01. C2
        mov     eax, dword [_shtctl]                    ; 2691 _ A1, 00000264(d)
        mov     dword [esp+14H], ecx                    ; 2696 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 269A _ 89. 54 24, 10
        mov     edx, dword [ebp+8H]                     ; 269E _ 8B. 55, 08
        mov     dword [esp+0CH], edx                    ; 26A1 _ 89. 54 24, 0C
        mov     edx, dword [ebp+0CH]                    ; 26A5 _ 8B. 55, 0C
        mov     dword [esp+8H], edx                     ; 26A8 _ 89. 54 24, 08
        mov     edx, dword [ebp-14H]                    ; 26AC _ 8B. 55, EC
        mov     dword [esp+4H], edx                     ; 26AF _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 26B3 _ 89. 04 24
        call    _sheet_refresh                          ; 26B6 _ E8, 00000000(rel)
        jmp     ?_163                                   ; 26BB _ E9, 00000476

?_134:  cmp     dword [ebp+1CH], 7                      ; 26C0 _ 83. 7D, 1C, 07
        jnz     ?_135                                   ; 26C4 _ 75, 7E
        mov     eax, dword [ebp+18H]                    ; 26C6 _ 8B. 45, 18
        mov     dword [ebp-14H], eax                    ; 26C9 _ 89. 45, EC
        mov     ebx, dword [ebp+24H]                    ; 26CC _ 8B. 5D, 24
        mov     eax, dword [ebp+10H]                    ; 26CF _ 8B. 45, 10
        movzx   eax, al                                 ; 26D2 _ 0F B6. C0
        mov     edx, dword [ebp-14H]                    ; 26D5 _ 8B. 55, EC
        mov     ecx, dword [edx+4H]                     ; 26D8 _ 8B. 4A, 04
        mov     edx, dword [ebp-14H]                    ; 26DB _ 8B. 55, EC
        mov     edx, dword [edx]                        ; 26DE _ 8B. 12
        mov     esi, dword [ebp+8H]                     ; 26E0 _ 8B. 75, 08
        mov     dword [esp+18H], esi                    ; 26E3 _ 89. 74 24, 18
        mov     esi, dword [ebp+0CH]                    ; 26E7 _ 8B. 75, 0C
        mov     dword [esp+14H], esi                    ; 26EA _ 89. 74 24, 14
        mov     esi, dword [ebp+20H]                    ; 26EE _ 8B. 75, 20
        mov     dword [esp+10H], esi                    ; 26F1 _ 89. 74 24, 10
        mov     dword [esp+0CH], ebx                    ; 26F5 _ 89. 5C 24, 0C
        mov     dword [esp+8H], eax                     ; 26F9 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 26FD _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 2701 _ 89. 14 24
        call    _boxfill8                               ; 2704 _ E8, 0000112B
        mov     eax, dword [ebp+8H]                     ; 2709 _ 8B. 45, 08
        lea     ebx, [eax+1H]                           ; 270C _ 8D. 58, 01
        mov     eax, dword [ebp+0CH]                    ; 270F _ 8B. 45, 0C
        lea     ecx, [eax+1H]                           ; 2712 _ 8D. 48, 01
        mov     edx, dword [ebp+24H]                    ; 2715 _ 8B. 55, 24
        mov     eax, dword [_shtctl]                    ; 2718 _ A1, 00000264(d)
        mov     dword [esp+14H], ebx                    ; 271D _ 89. 5C 24, 14
        mov     dword [esp+10H], ecx                    ; 2721 _ 89. 4C 24, 10
        mov     ecx, dword [ebp+20H]                    ; 2725 _ 8B. 4D, 20
        mov     dword [esp+0CH], ecx                    ; 2728 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 272C _ 89. 54 24, 08
        mov     edx, dword [ebp-14H]                    ; 2730 _ 8B. 55, EC
        mov     dword [esp+4H], edx                     ; 2733 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2737 _ 89. 04 24
        call    _sheet_refresh                          ; 273A _ E8, 00000000(rel)
        jmp     ?_163                                   ; 273F _ E9, 000003F2

?_135:  cmp     dword [ebp+1CH], 11                     ; 2744 _ 83. 7D, 1C, 0B
        jnz     ?_136                                   ; 2748 _ 75, 28
        mov     eax, dword [ebp+18H]                    ; 274A _ 8B. 45, 18
        mov     dword [ebp-14H], eax                    ; 274D _ 89. 45, EC
        mov     ebx, dword [ebp+24H]                    ; 2750 _ 8B. 5D, 24
        mov     eax, dword [ebp-14H]                    ; 2753 _ 8B. 45, EC
        mov     edx, dword [eax]                        ; 2756 _ 8B. 10
        mov     eax, dword [ebp-14H]                    ; 2758 _ 8B. 45, EC
        mov     eax, dword [eax+4H]                     ; 275B _ 8B. 40, 04
        imul    eax, dword [ebp+8H]                     ; 275E _ 0F AF. 45, 08
        mov     ecx, dword [ebp+0CH]                    ; 2762 _ 8B. 4D, 0C
        add     eax, ecx                                ; 2765 _ 01. C8
        add     eax, edx                                ; 2767 _ 01. D0
        mov     edx, ebx                                ; 2769 _ 89. DA
        mov     byte [eax], dl                          ; 276B _ 88. 10
        jmp     ?_163                                   ; 276D _ E9, 000003C4

?_136:  cmp     dword [ebp+1CH], 12                     ; 2772 _ 83. 7D, 1C, 0C
        jnz     ?_137                                   ; 2776 _ 75, 3B
        mov     eax, dword [ebp+18H]                    ; 2778 _ 8B. 45, 18
        mov     dword [ebp-14H], eax                    ; 277B _ 89. 45, EC
        mov     edx, dword [ebp+24H]                    ; 277E _ 8B. 55, 24
        mov     eax, dword [_shtctl]                    ; 2781 _ A1, 00000264(d)
        mov     ecx, dword [ebp+8H]                     ; 2786 _ 8B. 4D, 08
        mov     dword [esp+14H], ecx                    ; 2789 _ 89. 4C 24, 14
        mov     ecx, dword [ebp+0CH]                    ; 278D _ 8B. 4D, 0C
        mov     dword [esp+10H], ecx                    ; 2790 _ 89. 4C 24, 10
        mov     ecx, dword [ebp+20H]                    ; 2794 _ 8B. 4D, 20
        mov     dword [esp+0CH], ecx                    ; 2797 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 279B _ 89. 54 24, 08
        mov     edx, dword [ebp-14H]                    ; 279F _ 8B. 55, EC
        mov     dword [esp+4H], edx                     ; 27A2 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 27A6 _ 89. 04 24
        call    _sheet_refresh                          ; 27A9 _ E8, 00000000(rel)
        jmp     ?_163                                   ; 27AE _ E9, 00000383

?_137:  cmp     dword [ebp+1CH], 13                     ; 27B3 _ 83. 7D, 1C, 0D
        jnz     ?_138                                   ; 27B7 _ 75, 39
        mov     eax, dword [ebp+18H]                    ; 27B9 _ 8B. 45, 18
        mov     dword [ebp-14H], eax                    ; 27BC _ 89. 45, EC
        mov     eax, dword [ebp+24H]                    ; 27BF _ 8B. 45, 24
        mov     edx, dword [ebp+10H]                    ; 27C2 _ 8B. 55, 10
        mov     dword [esp+14H], edx                    ; 27C5 _ 89. 54 24, 14
        mov     edx, dword [ebp+8H]                     ; 27C9 _ 8B. 55, 08
        mov     dword [esp+10H], edx                    ; 27CC _ 89. 54 24, 10
        mov     edx, dword [ebp+0CH]                    ; 27D0 _ 8B. 55, 0C
        mov     dword [esp+0CH], edx                    ; 27D3 _ 89. 54 24, 0C
        mov     edx, dword [ebp+20H]                    ; 27D7 _ 8B. 55, 20
        mov     dword [esp+8H], edx                     ; 27DA _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 27DE _ 89. 44 24, 04
        mov     eax, dword [ebp-14H]                    ; 27E2 _ 8B. 45, EC
        mov     dword [esp], eax                        ; 27E5 _ 89. 04 24
        call    _api_linewin                            ; 27E8 _ E8, FFFFF92D
        jmp     ?_163                                   ; 27ED _ E9, 00000344

?_138:  cmp     dword [ebp+1CH], 14                     ; 27F2 _ 83. 7D, 1C, 0E
        jnz     ?_139                                   ; 27F6 _ 75, 32
        mov     edx, dword [ebp+18H]                    ; 27F8 _ 8B. 55, 18
        mov     eax, dword [_shtctl]                    ; 27FB _ A1, 00000264(d)
        mov     dword [esp+4H], edx                     ; 2800 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2804 _ 89. 04 24
        call    _sheet_free                             ; 2807 _ E8, 00000000(rel)
        mov     eax, dword [ebp-10H]                    ; 280C _ 8B. 45, F0
        mov     eax, dword [eax+0B0H]                   ; 280F _ 8B. 80, 000000B0
        mov     eax, dword [eax+4H]                     ; 2815 _ 8B. 40, 04
        add     eax, 291                                ; 2818 _ 05, 00000123
        mov     dword [esp], eax                        ; 281D _ 89. 04 24
        call    _cons_putstr                            ; 2820 _ E8, FFFFF8C3
        jmp     ?_163                                   ; 2825 _ E9, 0000030C

?_139:  cmp     dword [ebp+1CH], 15                     ; 282A _ 83. 7D, 1C, 0F
        jnz     ?_140                                   ; 282E _ 75, 1E
        mov     eax, dword [ebp+24H]                    ; 2830 _ 8B. 45, 24
        mov     edx, dword [ebp-18H]                    ; 2833 _ 8B. 55, E8
        mov     dword [esp+8H], edx                     ; 2836 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 283A _ 89. 44 24, 04
        mov     eax, dword [ebp-10H]                    ; 283E _ 8B. 45, F0
        mov     dword [esp], eax                        ; 2841 _ 89. 04 24
        call    _handle_keyboard                        ; 2844 _ E8, FFFFFA02
        jmp     ?_163                                   ; 2849 _ E9, 000002E8

?_140:  cmp     dword [ebp+1CH], 16                     ; 284E _ 83. 7D, 1C, 10
        jnz     ?_141                                   ; 2852 _ 75, 14
        call    _timer_alloc                            ; 2854 _ E8, 00000000(rel)
        mov     edx, eax                                ; 2859 _ 89. C2
        mov     eax, dword [ebp-18H]                    ; 285B _ 8B. 45, E8
        add     eax, 28                                 ; 285E _ 83. C0, 1C
        mov     dword [eax], edx                        ; 2861 _ 89. 10
        jmp     ?_163                                   ; 2863 _ E9, 000002CE

?_141:  cmp     dword [ebp+1CH], 17                     ; 2868 _ 83. 7D, 1C, 11
        jnz     ?_142                                   ; 286C _ 75, 24
        mov     eax, dword [ebp+24H]                    ; 286E _ 8B. 45, 24
        movzx   eax, al                                 ; 2871 _ 0F B6. C0
        mov     edx, dword [ebp-10H]                    ; 2874 _ 8B. 55, F0
        lea     ecx, [edx+10H]                          ; 2877 _ 8D. 4A, 10
        mov     edx, dword [ebp+18H]                    ; 287A _ 8B. 55, 18
        mov     dword [esp+8H], eax                     ; 287D _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 2881 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 2885 _ 89. 14 24
        call    _timer_init                             ; 2888 _ E8, 00000000(rel)
        jmp     ?_163                                   ; 288D _ E9, 000002A4

?_142:  cmp     dword [ebp+1CH], 18                     ; 2892 _ 83. 7D, 1C, 12
        jnz     ?_143                                   ; 2896 _ 75, 19
        mov     eax, dword [ebp+24H]                    ; 2898 _ 8B. 45, 24
        mov     edx, eax                                ; 289B _ 89. C2
        mov     eax, dword [ebp+18H]                    ; 289D _ 8B. 45, 18
        mov     dword [esp+4H], edx                     ; 28A0 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 28A4 _ 89. 04 24
        call    _timer_settime                          ; 28A7 _ E8, 00000000(rel)
        jmp     ?_163                                   ; 28AC _ E9, 00000285

?_143:  cmp     dword [ebp+1CH], 19                     ; 28B1 _ 83. 7D, 1C, 13
        jnz     ?_144                                   ; 28B5 _ 75, 10
        mov     eax, dword [ebp+18H]                    ; 28B7 _ 8B. 45, 18
        mov     dword [esp], eax                        ; 28BA _ 89. 04 24
        call    _timer_free                             ; 28BD _ E8, 00000000(rel)
        jmp     ?_163                                   ; 28C2 _ E9, 0000026F

?_144:  cmp     dword [ebp+1CH], 21                     ; 28C7 _ 83. 7D, 1C, 15
        jne     ?_149                                   ; 28CB _ 0F 85, 000000C5
        mov     dword [ebp-0CH], 0                      ; 28D1 _ C7. 45, F4, 00000000
        jmp     ?_146                                   ; 28D8 _ EB, 21

?_145:  mov     eax, dword [ebp-10H]                    ; 28DA _ 8B. 45, F0
        mov     ecx, dword [eax+0CCH]                   ; 28DD _ 8B. 88, 000000CC
        mov     edx, dword [ebp-0CH]                    ; 28E3 _ 8B. 55, F4
        mov     eax, edx                                ; 28E6 _ 89. D0
        add     eax, eax                                ; 28E8 _ 01. C0
        add     eax, edx                                ; 28EA _ 01. D0
        shl     eax, 2                                  ; 28EC _ C1. E0, 02
        add     eax, ecx                                ; 28EF _ 01. C8
        mov     eax, dword [eax]                        ; 28F1 _ 8B. 00
        test    eax, eax                                ; 28F3 _ 85. C0
        jz      ?_147                                   ; 28F5 _ 74, 0C
        add     dword [ebp-0CH], 1                      ; 28F7 _ 83. 45, F4, 01
?_146:  cmp     dword [ebp-0CH], 7                      ; 28FB _ 83. 7D, F4, 07
        jle     ?_145                                   ; 28FF _ 7E, D9
        jmp     ?_148                                   ; 2901 _ EB, 01

?_147:  nop                                             ; 2903 _ 90
?_148:  mov     eax, dword [ebp-10H]                    ; 2904 _ 8B. 45, F0
        mov     ecx, dword [eax+0CCH]                   ; 2907 _ 8B. 88, 000000CC
        mov     edx, dword [ebp-0CH]                    ; 290D _ 8B. 55, F4
        mov     eax, edx                                ; 2910 _ 89. D0
        add     eax, eax                                ; 2912 _ 01. C0
        add     eax, edx                                ; 2914 _ 01. D0
        shl     eax, 2                                  ; 2916 _ C1. E0, 02
        add     eax, ecx                                ; 2919 _ 01. C8
        mov     dword [ebp-1CH], eax                    ; 291B _ 89. 45, E4
        mov     eax, dword [ebp-18H]                    ; 291E _ 8B. 45, E8
        add     eax, 28                                 ; 2921 _ 83. C0, 1C
        mov     dword [eax], 0                          ; 2924 _ C7. 00, 00000000
        cmp     dword [ebp-0CH], 7                      ; 292A _ 83. 7D, F4, 07
        jg      ?_163                                   ; 292E _ 0F 8F, 00000202
        mov     dword [ebp-2CH], 0                      ; 2934 _ C7. 45, D4, 00000000
        mov     eax, dword [ebp-10H]                    ; 293B _ 8B. 45, F0
        mov     eax, dword [eax+0B0H]                   ; 293E _ 8B. 80, 000000B0
        mov     edx, dword [eax]                        ; 2944 _ 8B. 10
        mov     eax, dword [ebp+18H]                    ; 2946 _ 8B. 45, 18
        add     eax, edx                                ; 2949 _ 01. D0
        mov     dword [ebp-20H], eax                    ; 294B _ 89. 45, E0
        lea     eax, [ebp-2CH]                          ; 294E _ 8D. 45, D4
        mov     dword [esp+4H], eax                     ; 2951 _ 89. 44 24, 04
        mov     eax, dword [ebp-20H]                    ; 2955 _ 8B. 45, E0
        mov     dword [esp], eax                        ; 2958 _ 89. 04 24
        call    _file_loadfile                          ; 295B _ E8, 00001F2A
        mov     eax, dword [ebp-2CH]                    ; 2960 _ 8B. 45, D4
        test    eax, eax                                ; 2963 _ 85. C0
        je      ?_163                                   ; 2965 _ 0F 84, 000001CB
        mov     eax, dword [ebp-18H]                    ; 296B _ 8B. 45, E8
        add     eax, 28                                 ; 296E _ 83. C0, 1C
        mov     edx, dword [ebp-1CH]                    ; 2971 _ 8B. 55, E4
        mov     dword [eax], edx                        ; 2974 _ 89. 10
        mov     edx, dword [ebp-2CH]                    ; 2976 _ 8B. 55, D4
        mov     eax, dword [ebp-1CH]                    ; 2979 _ 8B. 45, E4
        mov     dword [eax], edx                        ; 297C _ 89. 10
        mov     edx, dword [ebp-24H]                    ; 297E _ 8B. 55, DC
        mov     eax, dword [ebp-1CH]                    ; 2981 _ 8B. 45, E4
        mov     dword [eax+4H], edx                     ; 2984 _ 89. 50, 04
        mov     eax, dword [ebp-1CH]                    ; 2987 _ 8B. 45, E4
        mov     dword [eax+8H], 0                       ; 298A _ C7. 40, 08, 00000000
        jmp     ?_163                                   ; 2991 _ E9, 000001A0

?_149:  cmp     dword [ebp+1CH], 22                     ; 2996 _ 83. 7D, 1C, 16
        jnz     ?_150                                   ; 299A _ 75, 38
        mov     eax, dword [ebp+24H]                    ; 299C _ 8B. 45, 24
        mov     dword [ebp-1CH], eax                    ; 299F _ 89. 45, E4
        mov     eax, dword [ebp-1CH]                    ; 29A2 _ 8B. 45, E4
        mov     eax, dword [eax+4H]                     ; 29A5 _ 8B. 40, 04
        mov     ecx, eax                                ; 29A8 _ 89. C1
        mov     eax, dword [ebp-1CH]                    ; 29AA _ 8B. 45, E4
        mov     eax, dword [eax]                        ; 29AD _ 8B. 00
        mov     edx, eax                                ; 29AF _ 89. C2
        mov     eax, dword [_memman]                    ; 29B1 _ A1, 00000000(d)
        mov     dword [esp+8H], ecx                     ; 29B6 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 29BA _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 29BE _ 89. 04 24
        call    _memman_free_4k                         ; 29C1 _ E8, 00000000(rel)
        mov     eax, dword [ebp-1CH]                    ; 29C6 _ 8B. 45, E4
        mov     dword [eax], 0                          ; 29C9 _ C7. 00, 00000000
        jmp     ?_163                                   ; 29CF _ E9, 00000162

?_150:  cmp     dword [ebp+1CH], 23                     ; 29D4 _ 83. 7D, 1C, 17
        jne     ?_155                                   ; 29D8 _ 0F 85, 00000080
        mov     eax, dword [ebp+24H]                    ; 29DE _ 8B. 45, 24
        mov     dword [ebp-1CH], eax                    ; 29E1 _ 89. 45, E4
        cmp     dword [ebp+20H], 0                      ; 29E4 _ 83. 7D, 20, 00
        jnz     ?_151                                   ; 29E8 _ 75, 0B
        mov     eax, dword [ebp-1CH]                    ; 29EA _ 8B. 45, E4
        mov     edx, dword [ebp+18H]                    ; 29ED _ 8B. 55, 18
        mov     dword [eax+8H], edx                     ; 29F0 _ 89. 50, 08
        jmp     ?_153                                   ; 29F3 _ EB, 30

?_151:  cmp     dword [ebp+20H], 1                      ; 29F5 _ 83. 7D, 20, 01
        jnz     ?_152                                   ; 29F9 _ 75, 13
        mov     eax, dword [ebp-1CH]                    ; 29FB _ 8B. 45, E4
        mov     edx, dword [eax+8H]                     ; 29FE _ 8B. 50, 08
        mov     eax, dword [ebp+18H]                    ; 2A01 _ 8B. 45, 18
        add     edx, eax                                ; 2A04 _ 01. C2
        mov     eax, dword [ebp-1CH]                    ; 2A06 _ 8B. 45, E4
        mov     dword [eax+8H], edx                     ; 2A09 _ 89. 50, 08
        jmp     ?_153                                   ; 2A0C _ EB, 17

?_152:  cmp     dword [ebp+20H], 2                      ; 2A0E _ 83. 7D, 20, 02
        jnz     ?_153                                   ; 2A12 _ 75, 11
        mov     eax, dword [ebp-1CH]                    ; 2A14 _ 8B. 45, E4
        mov     edx, dword [eax+4H]                     ; 2A17 _ 8B. 50, 04
        mov     eax, dword [ebp+18H]                    ; 2A1A _ 8B. 45, 18
        add     edx, eax                                ; 2A1D _ 01. C2
        mov     eax, dword [ebp-1CH]                    ; 2A1F _ 8B. 45, E4
        mov     dword [eax+8H], edx                     ; 2A22 _ 89. 50, 08
?_153:  mov     eax, dword [ebp-1CH]                    ; 2A25 _ 8B. 45, E4
        mov     eax, dword [eax+8H]                     ; 2A28 _ 8B. 40, 08
        test    eax, eax                                ; 2A2B _ 85. C0
        jns     ?_154                                   ; 2A2D _ 79, 0A
        mov     eax, dword [ebp-1CH]                    ; 2A2F _ 8B. 45, E4
        mov     dword [eax+8H], 0                       ; 2A32 _ C7. 40, 08, 00000000
?_154:  mov     eax, dword [ebp-1CH]                    ; 2A39 _ 8B. 45, E4
        mov     edx, dword [eax+8H]                     ; 2A3C _ 8B. 50, 08
        mov     eax, dword [ebp-1CH]                    ; 2A3F _ 8B. 45, E4
        mov     eax, dword [eax+4H]                     ; 2A42 _ 8B. 40, 04
        cmp     edx, eax                                ; 2A45 _ 39. C2
        jle     ?_163                                   ; 2A47 _ 0F 8E, 000000E9
        mov     eax, dword [ebp-1CH]                    ; 2A4D _ 8B. 45, E4
        mov     edx, dword [eax+4H]                     ; 2A50 _ 8B. 50, 04
        mov     eax, dword [ebp-1CH]                    ; 2A53 _ 8B. 45, E4
        mov     dword [eax+8H], edx                     ; 2A56 _ 89. 50, 08
        jmp     ?_163                                   ; 2A59 _ E9, 000000D8

?_155:  cmp     dword [ebp+1CH], 24                     ; 2A5E _ 83. 7D, 1C, 18
        jnz     ?_158                                   ; 2A62 _ 75, 5C
        mov     eax, dword [ebp+24H]                    ; 2A64 _ 8B. 45, 24
        mov     dword [ebp-1CH], eax                    ; 2A67 _ 89. 45, E4
        cmp     dword [ebp+20H], 0                      ; 2A6A _ 83. 7D, 20, 00
        jnz     ?_156                                   ; 2A6E _ 75, 13
        mov     eax, dword [ebp-18H]                    ; 2A70 _ 8B. 45, E8
        add     eax, 28                                 ; 2A73 _ 83. C0, 1C
        mov     edx, dword [ebp-1CH]                    ; 2A76 _ 8B. 55, E4
        mov     edx, dword [edx+4H]                     ; 2A79 _ 8B. 52, 04
        mov     dword [eax], edx                        ; 2A7C _ 89. 10
        jmp     ?_163                                   ; 2A7E _ E9, 000000B3

?_156:  cmp     dword [ebp+20H], 1                      ; 2A83 _ 83. 7D, 20, 01
        jnz     ?_157                                   ; 2A87 _ 75, 13
        mov     eax, dword [ebp-18H]                    ; 2A89 _ 8B. 45, E8
        add     eax, 28                                 ; 2A8C _ 83. C0, 1C
        mov     edx, dword [ebp-1CH]                    ; 2A8F _ 8B. 55, E4
        mov     edx, dword [edx+8H]                     ; 2A92 _ 8B. 52, 08
        mov     dword [eax], edx                        ; 2A95 _ 89. 10
        jmp     ?_163                                   ; 2A97 _ E9, 0000009A

?_157:  cmp     dword [ebp+20H], 2                      ; 2A9C _ 83. 7D, 20, 02
        jne     ?_163                                   ; 2AA0 _ 0F 85, 00000090
        mov     eax, dword [ebp-1CH]                    ; 2AA6 _ 8B. 45, E4
        mov     ecx, dword [eax+8H]                     ; 2AA9 _ 8B. 48, 08
        mov     eax, dword [ebp-1CH]                    ; 2AAC _ 8B. 45, E4
        mov     edx, dword [eax+4H]                     ; 2AAF _ 8B. 50, 04
        mov     eax, dword [ebp-18H]                    ; 2AB2 _ 8B. 45, E8
        add     eax, 28                                 ; 2AB5 _ 83. C0, 1C
        sub     ecx, edx                                ; 2AB8 _ 29. D1
        mov     edx, ecx                                ; 2ABA _ 89. CA
        mov     dword [eax], edx                        ; 2ABC _ 89. 10
        jmp     ?_163                                   ; 2ABE _ EB, 76

?_158:  cmp     dword [ebp+1CH], 25                     ; 2AC0 _ 83. 7D, 1C, 19
        jnz     ?_163                                   ; 2AC4 _ 75, 70
        mov     eax, dword [ebp+24H]                    ; 2AC6 _ 8B. 45, 24
        mov     dword [ebp-1CH], eax                    ; 2AC9 _ 89. 45, E4
        mov     dword [ebp-0CH], 0                      ; 2ACC _ C7. 45, F4, 00000000
        jmp     ?_160                                   ; 2AD3 _ EB, 4B

?_159:  mov     eax, dword [ebp-1CH]                    ; 2AD5 _ 8B. 45, E4
        mov     edx, dword [eax+8H]                     ; 2AD8 _ 8B. 50, 08
        mov     eax, dword [ebp-1CH]                    ; 2ADB _ 8B. 45, E4
        mov     eax, dword [eax+4H]                     ; 2ADE _ 8B. 40, 04
        cmp     edx, eax                                ; 2AE1 _ 39. C2
        jz      ?_161                                   ; 2AE3 _ 74, 45
        mov     eax, dword [ebp-1CH]                    ; 2AE5 _ 8B. 45, E4
        mov     edx, dword [eax]                        ; 2AE8 _ 8B. 10
        mov     eax, dword [ebp-1CH]                    ; 2AEA _ 8B. 45, E4
        mov     eax, dword [eax+8H]                     ; 2AED _ 8B. 40, 08
        add     eax, edx                                ; 2AF0 _ 01. D0
        mov     edx, dword [ebp-10H]                    ; 2AF2 _ 8B. 55, F0
        mov     edx, dword [edx+0B0H]                   ; 2AF5 _ 8B. 92, 000000B0
        mov     ecx, dword [edx+4H]                     ; 2AFB _ 8B. 4A, 04
        mov     ebx, dword [ebp+18H]                    ; 2AFE _ 8B. 5D, 18
        mov     edx, dword [ebp-0CH]                    ; 2B01 _ 8B. 55, F4
        add     edx, ebx                                ; 2B04 _ 01. DA
        add     edx, ecx                                ; 2B06 _ 01. CA
        movzx   eax, byte [eax]                         ; 2B08 _ 0F B6. 00
        mov     byte [edx], al                          ; 2B0B _ 88. 02
        mov     eax, dword [ebp-1CH]                    ; 2B0D _ 8B. 45, E4
        mov     eax, dword [eax+8H]                     ; 2B10 _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 2B13 _ 8D. 50, 01
        mov     eax, dword [ebp-1CH]                    ; 2B16 _ 8B. 45, E4
        mov     dword [eax+8H], edx                     ; 2B19 _ 89. 50, 08
        add     dword [ebp-0CH], 1                      ; 2B1C _ 83. 45, F4, 01
?_160:  mov     eax, dword [ebp-0CH]                    ; 2B20 _ 8B. 45, F4
        cmp     eax, dword [ebp+20H]                    ; 2B23 _ 3B. 45, 20
        jl      ?_159                                   ; 2B26 _ 7C, AD
        jmp     ?_162                                   ; 2B28 _ EB, 01

?_161:  nop                                             ; 2B2A _ 90
?_162:  mov     eax, dword [ebp-18H]                    ; 2B2B _ 8B. 45, E8
        add     eax, 28                                 ; 2B2E _ 83. C0, 1C
        mov     edx, dword [ebp-0CH]                    ; 2B31 _ 8B. 55, F4
        mov     dword [eax], edx                        ; 2B34 _ 89. 10
?_163:  mov     eax, 0                                  ; 2B36 _ B8, 00000000
?_164:  add     esp, 80                                 ; 2B3B _ 83. C4, 50
        pop     ebx                                     ; 2B3E _ 5B
        pop     esi                                     ; 2B3F _ 5E
        pop     ebp                                     ; 2B40 _ 5D
        ret                                             ; 2B41 _ C3
; _kernel_api End of function

_cons_putchar:; Function begin
        push    ebp                                     ; 2B42 _ 55
        mov     ebp, esp                                ; 2B43 _ 89. E5
        push    esi                                     ; 2B45 _ 56
        push    ebx                                     ; 2B46 _ 53
        sub     esp, 64                                 ; 2B47 _ 83. EC, 40
        mov     eax, dword [ebp+8H]                     ; 2B4A _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 2B4D _ 8B. 55, 0C
        mov     byte [ebp-1CH], al                      ; 2B50 _ 88. 45, E4
        mov     eax, edx                                ; 2B53 _ 89. D0
        mov     byte [ebp-20H], al                      ; 2B55 _ 88. 45, E0
        call    _task_now                               ; 2B58 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 2B5D _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 2B60 _ 8B. 45, F4
        mov     ebx, dword [eax+9CH]                    ; 2B63 _ 8B. 98, 0000009C
        mov     eax, dword [ebp-0CH]                    ; 2B69 _ 8B. 45, F4
        mov     ecx, dword [eax+98H]                    ; 2B6C _ 8B. 88, 00000098
        mov     eax, dword [ebp-0CH]                    ; 2B72 _ 8B. 45, F4
        mov     edx, dword [eax+94H]                    ; 2B75 _ 8B. 90, 00000094
        mov     eax, dword [_shtctl]                    ; 2B7B _ A1, 00000264(d)
        mov     dword [esp+10H], 0                      ; 2B80 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], ebx                    ; 2B88 _ 89. 5C 24, 0C
        mov     dword [esp+8H], ecx                     ; 2B8C _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 2B90 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2B94 _ 89. 04 24
        call    _set_cursor                             ; 2B97 _ E8, FFFFDE07
        mov     edx, dword [ebp-0CH]                    ; 2B9C _ 8B. 55, F4
        movzx   eax, byte [ebp-1CH]                     ; 2B9F _ 0F B6. 45, E4
        mov     byte [edx+0A4H], al                     ; 2BA3 _ 88. 82, 000000A4
        mov     eax, dword [ebp-0CH]                    ; 2BA9 _ 8B. 45, F4
        mov     byte [eax+0A5H], 0                      ; 2BAC _ C6. 80, 000000A5, 00
        mov     eax, dword [ebp-0CH]                    ; 2BB3 _ 8B. 45, F4
        lea     esi, [eax+0A4H]                         ; 2BB6 _ 8D. B0, 000000A4
        mov     eax, dword [ebp-0CH]                    ; 2BBC _ 8B. 45, F4
        mov     ebx, dword [eax+9CH]                    ; 2BBF _ 8B. 98, 0000009C
        mov     eax, dword [ebp-0CH]                    ; 2BC5 _ 8B. 45, F4
        mov     ecx, dword [eax+98H]                    ; 2BC8 _ 8B. 88, 00000098
        mov     eax, dword [ebp-0CH]                    ; 2BCE _ 8B. 45, F4
        mov     edx, dword [eax+94H]                    ; 2BD1 _ 8B. 90, 00000094
        mov     eax, dword [_shtctl]                    ; 2BD7 _ A1, 00000264(d)
        mov     dword [esp+14H], esi                    ; 2BDC _ 89. 74 24, 14
        mov     dword [esp+10H], 7                      ; 2BE0 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ebx                    ; 2BE8 _ 89. 5C 24, 0C
        mov     dword [esp+8H], ecx                     ; 2BEC _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 2BF0 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2BF4 _ 89. 04 24
        call    _showString                             ; 2BF7 _ E8, 0000056B
        mov     eax, dword [ebp-0CH]                    ; 2BFC _ 8B. 45, F4
        mov     eax, dword [eax+98H]                    ; 2BFF _ 8B. 80, 00000098
        lea     edx, [eax+8H]                           ; 2C05 _ 8D. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 2C08 _ 8B. 45, F4
        mov     dword [eax+98H], edx                    ; 2C0B _ 89. 90, 00000098
        nop                                             ; 2C11 _ 90
        add     esp, 64                                 ; 2C12 _ 83. C4, 40
        pop     ebx                                     ; 2C15 _ 5B
        pop     esi                                     ; 2C16 _ 5E
        pop     ebp                                     ; 2C17 _ 5D
        ret                                             ; 2C18 _ C3
; _cons_putchar End of function

_cons_newline:; Function begin
        push    ebp                                     ; 2C19 _ 55
        mov     ebp, esp                                ; 2C1A _ 89. E5
        push    ebx                                     ; 2C1C _ 53
        sub     esp, 52                                 ; 2C1D _ 83. EC, 34
        cmp     dword [ebp+0CH], 0                      ; 2C20 _ 83. 7D, 0C, 00
        je      ?_175                                   ; 2C24 _ 0F 84, 00000125
        cmp     dword [ebp+8H], 139                     ; 2C2A _ 81. 7D, 08, 0000008B
        jg      ?_165                                   ; 2C31 _ 7F, 09
        add     dword [ebp+8H], 16                      ; 2C33 _ 83. 45, 08, 10
        jmp     ?_174                                   ; 2C37 _ E9, 000000DB

?_165:  mov     dword [ebp-10H], 28                     ; 2C3C _ C7. 45, F0, 0000001C
        jmp     ?_169                                   ; 2C43 _ EB, 50

?_166:  mov     dword [ebp-0CH], 8                      ; 2C45 _ C7. 45, F4, 00000008
        jmp     ?_168                                   ; 2C4C _ EB, 3A

?_167:  mov     eax, dword [ebp+0CH]                    ; 2C4E _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 2C51 _ 8B. 10
        mov     eax, dword [ebp-10H]                    ; 2C53 _ 8B. 45, F0
        lea     ecx, [eax+10H]                          ; 2C56 _ 8D. 48, 10
        mov     eax, dword [ebp+0CH]                    ; 2C59 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2C5C _ 8B. 40, 04
        imul    eax, ecx                                ; 2C5F _ 0F AF. C1
        mov     ecx, dword [ebp-0CH]                    ; 2C62 _ 8B. 4D, F4
        add     eax, ecx                                ; 2C65 _ 01. C8
        add     eax, edx                                ; 2C67 _ 01. D0
        mov     edx, dword [ebp+0CH]                    ; 2C69 _ 8B. 55, 0C
        mov     ecx, dword [edx]                        ; 2C6C _ 8B. 0A
        mov     edx, dword [ebp+0CH]                    ; 2C6E _ 8B. 55, 0C
        mov     edx, dword [edx+4H]                     ; 2C71 _ 8B. 52, 04
        imul    edx, dword [ebp-10H]                    ; 2C74 _ 0F AF. 55, F0
        mov     ebx, dword [ebp-0CH]                    ; 2C78 _ 8B. 5D, F4
        add     edx, ebx                                ; 2C7B _ 01. DA
        add     edx, ecx                                ; 2C7D _ 01. CA
        movzx   eax, byte [eax]                         ; 2C7F _ 0F B6. 00
        mov     byte [edx], al                          ; 2C82 _ 88. 02
        add     dword [ebp-0CH], 1                      ; 2C84 _ 83. 45, F4, 01
?_168:  cmp     dword [ebp-0CH], 247                    ; 2C88 _ 81. 7D, F4, 000000F7
        jle     ?_167                                   ; 2C8F _ 7E, BD
        add     dword [ebp-10H], 1                      ; 2C91 _ 83. 45, F0, 01
?_169:  cmp     dword [ebp-10H], 139                    ; 2C95 _ 81. 7D, F0, 0000008B
        jle     ?_166                                   ; 2C9C _ 7E, A7
        mov     dword [ebp-10H], 140                    ; 2C9E _ C7. 45, F0, 0000008C
        jmp     ?_173                                   ; 2CA5 _ EB, 33

?_170:  mov     dword [ebp-0CH], 8                      ; 2CA7 _ C7. 45, F4, 00000008
        jmp     ?_172                                   ; 2CAE _ EB, 1D

?_171:  mov     eax, dword [ebp+0CH]                    ; 2CB0 _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 2CB3 _ 8B. 10
        mov     eax, dword [ebp+0CH]                    ; 2CB5 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2CB8 _ 8B. 40, 04
        imul    eax, dword [ebp-10H]                    ; 2CBB _ 0F AF. 45, F0
        mov     ecx, dword [ebp-0CH]                    ; 2CBF _ 8B. 4D, F4
        add     eax, ecx                                ; 2CC2 _ 01. C8
        add     eax, edx                                ; 2CC4 _ 01. D0
        mov     byte [eax], 0                           ; 2CC6 _ C6. 00, 00
        add     dword [ebp-0CH], 1                      ; 2CC9 _ 83. 45, F4, 01
?_172:  cmp     dword [ebp-0CH], 247                    ; 2CCD _ 81. 7D, F4, 000000F7
        jle     ?_171                                   ; 2CD4 _ 7E, DA
        add     dword [ebp-10H], 1                      ; 2CD6 _ 83. 45, F0, 01
?_173:  cmp     dword [ebp-10H], 155                    ; 2CDA _ 81. 7D, F0, 0000009B
        jle     ?_170                                   ; 2CE1 _ 7E, C4
        mov     eax, dword [_shtctl]                    ; 2CE3 _ A1, 00000264(d)
        mov     dword [esp+14H], 156                    ; 2CE8 _ C7. 44 24, 14, 0000009C
        mov     dword [esp+10H], 248                    ; 2CF0 _ C7. 44 24, 10, 000000F8
        mov     dword [esp+0CH], 28                     ; 2CF8 _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 8                       ; 2D00 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp+0CH]                    ; 2D08 _ 8B. 55, 0C
        mov     dword [esp+4H], edx                     ; 2D0B _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2D0F _ 89. 04 24
        call    _sheet_refresh                          ; 2D12 _ E8, 00000000(rel)
?_174:  mov     eax, dword [_shtctl]                    ; 2D17 _ A1, 00000264(d)
        mov     dword [esp+14H], ?_416                  ; 2D1C _ C7. 44 24, 14, 00000023(d)
        mov     dword [esp+10H], 7                      ; 2D24 _ C7. 44 24, 10, 00000007
        mov     edx, dword [ebp+8H]                     ; 2D2C _ 8B. 55, 08
        mov     dword [esp+0CH], edx                    ; 2D2F _ 89. 54 24, 0C
        mov     dword [esp+8H], 8                       ; 2D33 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp+0CH]                    ; 2D3B _ 8B. 55, 0C
        mov     dword [esp+4H], edx                     ; 2D3E _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2D42 _ 89. 04 24
        call    _showString                             ; 2D45 _ E8, 0000041D
        mov     eax, dword [ebp+8H]                     ; 2D4A _ 8B. 45, 08
        jmp     ?_176                                   ; 2D4D _ EB, 02

?_175:  nop                                             ; 2D4F _ 90
        nop                                             ; 2D50 _ 90
?_176:  add     esp, 52                                 ; 2D51 _ 83. C4, 34
        pop     ebx                                     ; 2D54 _ 5B
        pop     ebp                                     ; 2D55 _ 5D
        ret                                             ; 2D56 _ C3
; _cons_newline End of function

_init_screen8:; Function begin
        push    ebp                                     ; 2D57 _ 55
        mov     ebp, esp                                ; 2D58 _ 89. E5
        push    ebx                                     ; 2D5A _ 53
        sub     esp, 36                                 ; 2D5B _ 83. EC, 24
        mov     eax, dword [ebp+10H]                    ; 2D5E _ 8B. 45, 10
        lea     edx, [eax-1DH]                          ; 2D61 _ 8D. 50, E3
        mov     eax, dword [ebp+0CH]                    ; 2D64 _ 8B. 45, 0C
        sub     eax, 1                                  ; 2D67 _ 83. E8, 01
        mov     dword [esp+18H], edx                    ; 2D6A _ 89. 54 24, 18
        mov     dword [esp+14H], eax                    ; 2D6E _ 89. 44 24, 14
        mov     dword [esp+10H], 0                      ; 2D72 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 2D7A _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 14                      ; 2D82 _ C7. 44 24, 08, 0000000E
        mov     eax, dword [ebp+0CH]                    ; 2D8A _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2D8D _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2D91 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2D94 _ 89. 04 24
        call    _boxfill8                               ; 2D97 _ E8, 00000A98
        mov     eax, dword [ebp+10H]                    ; 2D9C _ 8B. 45, 10
        lea     ecx, [eax-1CH]                          ; 2D9F _ 8D. 48, E4
        mov     eax, dword [ebp+0CH]                    ; 2DA2 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 2DA5 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 2DA8 _ 8B. 45, 10
        sub     eax, 28                                 ; 2DAB _ 83. E8, 1C
        mov     dword [esp+18H], ecx                    ; 2DAE _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 2DB2 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 2DB6 _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 2DBA _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 2DC2 _ C7. 44 24, 08, 00000008
        mov     eax, dword [ebp+0CH]                    ; 2DCA _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2DCD _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2DD1 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2DD4 _ 89. 04 24
        call    _boxfill8                               ; 2DD7 _ E8, 00000A58
        mov     eax, dword [ebp+10H]                    ; 2DDC _ 8B. 45, 10
        lea     ecx, [eax-1BH]                          ; 2DDF _ 8D. 48, E5
        mov     eax, dword [ebp+0CH]                    ; 2DE2 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 2DE5 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 2DE8 _ 8B. 45, 10
        sub     eax, 27                                 ; 2DEB _ 83. E8, 1B
        mov     dword [esp+18H], ecx                    ; 2DEE _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 2DF2 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 2DF6 _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 2DFA _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 7                       ; 2E02 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 2E0A _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2E0D _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2E11 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2E14 _ 89. 04 24
        call    _boxfill8                               ; 2E17 _ E8, 00000A18
        mov     eax, dword [ebp+10H]                    ; 2E1C _ 8B. 45, 10
        lea     ecx, [eax-1H]                           ; 2E1F _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 2E22 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 2E25 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 2E28 _ 8B. 45, 10
        sub     eax, 26                                 ; 2E2B _ 83. E8, 1A
        mov     dword [esp+18H], ecx                    ; 2E2E _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 2E32 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 2E36 _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 2E3A _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 2E42 _ C7. 44 24, 08, 00000008
        mov     eax, dword [ebp+0CH]                    ; 2E4A _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2E4D _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2E51 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2E54 _ 89. 04 24
        call    _boxfill8                               ; 2E57 _ E8, 000009D8
        mov     eax, dword [ebp+10H]                    ; 2E5C _ 8B. 45, 10
        lea     edx, [eax-18H]                          ; 2E5F _ 8D. 50, E8
        mov     eax, dword [ebp+10H]                    ; 2E62 _ 8B. 45, 10
        sub     eax, 24                                 ; 2E65 _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 2E68 _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 2E6C _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 2E74 _ 89. 44 24, 10
        mov     dword [esp+0CH], 3                      ; 2E78 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 7                       ; 2E80 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 2E88 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2E8B _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2E8F _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2E92 _ 89. 04 24
        call    _boxfill8                               ; 2E95 _ E8, 0000099A
        mov     eax, dword [ebp+10H]                    ; 2E9A _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 2E9D _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 2EA0 _ 8B. 45, 10
        sub     eax, 24                                 ; 2EA3 _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 2EA6 _ 89. 54 24, 18
        mov     dword [esp+14H], 2                      ; 2EAA _ C7. 44 24, 14, 00000002
        mov     dword [esp+10H], eax                    ; 2EB2 _ 89. 44 24, 10
        mov     dword [esp+0CH], 2                      ; 2EB6 _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 7                       ; 2EBE _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 2EC6 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2EC9 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2ECD _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2ED0 _ 89. 04 24
        call    _boxfill8                               ; 2ED3 _ E8, 0000095C
        mov     eax, dword [ebp+10H]                    ; 2ED8 _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 2EDB _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 2EDE _ 8B. 45, 10
        sub     eax, 4                                  ; 2EE1 _ 83. E8, 04
        mov     dword [esp+18H], edx                    ; 2EE4 _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 2EE8 _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 2EF0 _ 89. 44 24, 10
        mov     dword [esp+0CH], 3                      ; 2EF4 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 15                      ; 2EFC _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 2F04 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2F07 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2F0B _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2F0E _ 89. 04 24
        call    _boxfill8                               ; 2F11 _ E8, 0000091E
        mov     eax, dword [ebp+10H]                    ; 2F16 _ 8B. 45, 10
        lea     edx, [eax-5H]                           ; 2F19 _ 8D. 50, FB
        mov     eax, dword [ebp+10H]                    ; 2F1C _ 8B. 45, 10
        sub     eax, 23                                 ; 2F1F _ 83. E8, 17
        mov     dword [esp+18H], edx                    ; 2F22 _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 2F26 _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 2F2E _ 89. 44 24, 10
        mov     dword [esp+0CH], 59                     ; 2F32 _ C7. 44 24, 0C, 0000003B
        mov     dword [esp+8H], 15                      ; 2F3A _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 2F42 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2F45 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2F49 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2F4C _ 89. 04 24
        call    _boxfill8                               ; 2F4F _ E8, 000008E0
        mov     eax, dword [ebp+10H]                    ; 2F54 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 2F57 _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 2F5A _ 8B. 45, 10
        sub     eax, 3                                  ; 2F5D _ 83. E8, 03
        mov     dword [esp+18H], edx                    ; 2F60 _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 2F64 _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 2F6C _ 89. 44 24, 10
        mov     dword [esp+0CH], 2                      ; 2F70 _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 0                       ; 2F78 _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp+0CH]                    ; 2F80 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2F83 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2F87 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2F8A _ 89. 04 24
        call    _boxfill8                               ; 2F8D _ E8, 000008A2
        mov     eax, dword [ebp+10H]                    ; 2F92 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 2F95 _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 2F98 _ 8B. 45, 10
        sub     eax, 24                                 ; 2F9B _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 2F9E _ 89. 54 24, 18
        mov     dword [esp+14H], 60                     ; 2FA2 _ C7. 44 24, 14, 0000003C
        mov     dword [esp+10H], eax                    ; 2FAA _ 89. 44 24, 10
        mov     dword [esp+0CH], 60                     ; 2FAE _ C7. 44 24, 0C, 0000003C
        mov     dword [esp+8H], 0                       ; 2FB6 _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp+0CH]                    ; 2FBE _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2FC1 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2FC5 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2FC8 _ 89. 04 24
        call    _boxfill8                               ; 2FCB _ E8, 00000864
        mov     eax, dword [ebp+10H]                    ; 2FD0 _ 8B. 45, 10
        lea     ebx, [eax-18H]                          ; 2FD3 _ 8D. 58, E8
        mov     eax, dword [ebp+0CH]                    ; 2FD6 _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 2FD9 _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 2FDC _ 8B. 45, 10
        lea     edx, [eax-18H]                          ; 2FDF _ 8D. 50, E8
        mov     eax, dword [ebp+0CH]                    ; 2FE2 _ 8B. 45, 0C
        sub     eax, 47                                 ; 2FE5 _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 2FE8 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 2FEC _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 2FF0 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 2FF4 _ 89. 44 24, 0C
        mov     dword [esp+8H], 15                      ; 2FF8 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 3000 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 3003 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3007 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 300A _ 89. 04 24
        call    _boxfill8                               ; 300D _ E8, 00000822
        mov     eax, dword [ebp+10H]                    ; 3012 _ 8B. 45, 10
        lea     ebx, [eax-4H]                           ; 3015 _ 8D. 58, FC
        mov     eax, dword [ebp+0CH]                    ; 3018 _ 8B. 45, 0C
        lea     ecx, [eax-2FH]                          ; 301B _ 8D. 48, D1
        mov     eax, dword [ebp+10H]                    ; 301E _ 8B. 45, 10
        lea     edx, [eax-17H]                          ; 3021 _ 8D. 50, E9
        mov     eax, dword [ebp+0CH]                    ; 3024 _ 8B. 45, 0C
        sub     eax, 47                                 ; 3027 _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 302A _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 302E _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 3032 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 3036 _ 89. 44 24, 0C
        mov     dword [esp+8H], 15                      ; 303A _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 3042 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 3045 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3049 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 304C _ 89. 04 24
        call    _boxfill8                               ; 304F _ E8, 000007E0
        mov     eax, dword [ebp+10H]                    ; 3054 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 3057 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 305A _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 305D _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 3060 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 3063 _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 3066 _ 8B. 45, 0C
        sub     eax, 47                                 ; 3069 _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 306C _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 3070 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 3074 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 3078 _ 89. 44 24, 0C
        mov     dword [esp+8H], 7                       ; 307C _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 3084 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 3087 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 308B _ 8B. 45, 08
        mov     dword [esp], eax                        ; 308E _ 89. 04 24
        call    _boxfill8                               ; 3091 _ E8, 0000079E
        mov     eax, dword [ebp+10H]                    ; 3096 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 3099 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 309C _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 309F _ 8D. 48, FD
        mov     eax, dword [ebp+10H]                    ; 30A2 _ 8B. 45, 10
        lea     edx, [eax-18H]                          ; 30A5 _ 8D. 50, E8
        mov     eax, dword [ebp+0CH]                    ; 30A8 _ 8B. 45, 0C
        sub     eax, 3                                  ; 30AB _ 83. E8, 03
        mov     dword [esp+18H], ebx                    ; 30AE _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 30B2 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 30B6 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 30BA _ 89. 44 24, 0C
        mov     dword [esp+8H], 7                       ; 30BE _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 30C6 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 30C9 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 30CD _ 8B. 45, 08
        mov     dword [esp], eax                        ; 30D0 _ 89. 04 24
        call    _boxfill8                               ; 30D3 _ E8, 0000075C
        nop                                             ; 30D8 _ 90
        add     esp, 36                                 ; 30D9 _ 83. C4, 24
        pop     ebx                                     ; 30DC _ 5B
        pop     ebp                                     ; 30DD _ 5D
        ret                                             ; 30DE _ C3
; _init_screen8 End of function

_computeMousePosition:; Function begin
        push    ebp                                     ; 30DF _ 55
        mov     ebp, esp                                ; 30E0 _ 89. E5
        mov     eax, dword [ebp+10H]                    ; 30E2 _ 8B. 45, 10
        mov     edx, dword [eax+4H]                     ; 30E5 _ 8B. 50, 04
        mov     eax, dword [_mx]                        ; 30E8 _ A1, 00000134(d)
        add     eax, edx                                ; 30ED _ 01. D0
        mov     dword [_mx], eax                        ; 30EF _ A3, 00000134(d)
        mov     eax, dword [ebp+10H]                    ; 30F4 _ 8B. 45, 10
        mov     edx, dword [eax+8H]                     ; 30F7 _ 8B. 50, 08
        mov     eax, dword [_my]                        ; 30FA _ A1, 00000138(d)
        add     eax, edx                                ; 30FF _ 01. D0
        mov     dword [_my], eax                        ; 3101 _ A3, 00000138(d)
        mov     eax, dword [_mx]                        ; 3106 _ A1, 00000134(d)
        test    eax, eax                                ; 310B _ 85. C0
        jns     ?_177                                   ; 310D _ 79, 0A
        mov     dword [_mx], 0                          ; 310F _ C7. 05, 00000134(d), 00000000
?_177:  mov     eax, dword [_my]                        ; 3119 _ A1, 00000138(d)
        test    eax, eax                                ; 311E _ 85. C0
        jns     ?_178                                   ; 3120 _ 79, 0A
        mov     dword [_my], 0                          ; 3122 _ C7. 05, 00000138(d), 00000000
?_178:  mov     edx, dword [_xsize]                     ; 312C _ 8B. 15, 0000013C(d)
        mov     eax, dword [_mx]                        ; 3132 _ A1, 00000134(d)
        cmp     edx, eax                                ; 3137 _ 39. C2
        jg      ?_179                                   ; 3139 _ 7F, 0D
        mov     eax, dword [_xsize]                     ; 313B _ A1, 0000013C(d)
        sub     eax, 1                                  ; 3140 _ 83. E8, 01
        mov     dword [_mx], eax                        ; 3143 _ A3, 00000134(d)
?_179:  mov     edx, dword [_ysize]                     ; 3148 _ 8B. 15, 00000140(d)
        mov     eax, dword [_my]                        ; 314E _ A1, 00000138(d)
        cmp     edx, eax                                ; 3153 _ 39. C2
        jg      ?_180                                   ; 3155 _ 7F, 0D
        mov     eax, dword [_ysize]                     ; 3157 _ A1, 00000140(d)
        sub     eax, 1                                  ; 315C _ 83. E8, 01
        mov     dword [_my], eax                        ; 315F _ A3, 00000138(d)
?_180:  nop                                             ; 3164 _ 90
        pop     ebp                                     ; 3165 _ 5D
        ret                                             ; 3166 _ C3
; _computeMousePosition End of function

_showString:; Function begin
        push    ebp                                     ; 3167 _ 55
        mov     ebp, esp                                ; 3168 _ 89. E5
        push    ebx                                     ; 316A _ 53
        sub     esp, 68                                 ; 316B _ 83. EC, 44
        mov     eax, dword [ebp+18H]                    ; 316E _ 8B. 45, 18
        mov     byte [ebp-1CH], al                      ; 3171 _ 88. 45, E4
        cmp     dword [ebp+8H], 0                       ; 3174 _ 83. 7D, 08, 00
        je      ?_183                                   ; 3178 _ 0F 84, 000000A1
        cmp     dword [ebp+0CH], 0                      ; 317E _ 83. 7D, 0C, 00
        je      ?_183                                   ; 3182 _ 0F 84, 00000097
        mov     eax, dword [ebp+10H]                    ; 3188 _ 8B. 45, 10
        mov     dword [ebp-0CH], eax                    ; 318B _ 89. 45, F4
        mov     dword [ebp-10H], 0                      ; 318E _ C7. 45, F0, 00000000
        jmp     ?_182                                   ; 3195 _ EB, 4B

?_181:  mov     eax, dword [ebp+1CH]                    ; 3197 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 319A _ 0F B6. 00
        movzx   eax, al                                 ; 319D _ 0F B6. C0
        shl     eax, 4                                  ; 31A0 _ C1. E0, 04
        lea     ebx, [_systemFont+eax]                  ; 31A3 _ 8D. 98, 00000000(d)
        movsx   eax, byte [ebp-1CH]                     ; 31A9 _ 0F BE. 45, E4
        mov     edx, dword [ebp+0CH]                    ; 31AD _ 8B. 55, 0C
        mov     ecx, dword [edx+4H]                     ; 31B0 _ 8B. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 31B3 _ 8B. 55, 0C
        mov     edx, dword [edx]                        ; 31B6 _ 8B. 12
        mov     dword [esp+14H], ebx                    ; 31B8 _ 89. 5C 24, 14
        mov     dword [esp+10H], eax                    ; 31BC _ 89. 44 24, 10
        mov     eax, dword [ebp+14H]                    ; 31C0 _ 8B. 45, 14
        mov     dword [esp+0CH], eax                    ; 31C3 _ 89. 44 24, 0C
        mov     eax, dword [ebp+10H]                    ; 31C7 _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 31CA _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 31CE _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 31D2 _ 89. 14 24
        call    _showFont8                              ; 31D5 _ E8, 000006AA
        add     dword [ebp+10H], 8                      ; 31DA _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 31DE _ 83. 45, 1C, 01
?_182:  mov     eax, dword [ebp+1CH]                    ; 31E2 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 31E5 _ 0F B6. 00
        test    al, al                                  ; 31E8 _ 84. C0
        jnz     ?_181                                   ; 31EA _ 75, AB
        mov     eax, dword [ebp+14H]                    ; 31EC _ 8B. 45, 14
        add     eax, 16                                 ; 31EF _ 83. C0, 10
        mov     dword [esp+14H], eax                    ; 31F2 _ 89. 44 24, 14
        mov     eax, dword [ebp+10H]                    ; 31F6 _ 8B. 45, 10
        mov     dword [esp+10H], eax                    ; 31F9 _ 89. 44 24, 10
        mov     eax, dword [ebp+14H]                    ; 31FD _ 8B. 45, 14
        mov     dword [esp+0CH], eax                    ; 3200 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 3204 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 3207 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 320B _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 320E _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3212 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3215 _ 89. 04 24
        call    _sheet_refresh                          ; 3218 _ E8, 00000000(rel)
        jmp     ?_184                                   ; 321D _ EB, 01

?_183:  nop                                             ; 321F _ 90
?_184:  add     esp, 68                                 ; 3220 _ 83. C4, 44
        pop     ebx                                     ; 3223 _ 5B
        pop     ebp                                     ; 3224 _ 5D
        ret                                             ; 3225 _ C3
; _showString End of function

_show_mouse_info:; Function begin
        push    ebp                                     ; 3226 _ 55
        mov     ebp, esp                                ; 3227 _ 89. E5
        sub     esp, 72                                 ; 3229 _ 83. EC, 48
        mov     eax, dword [_buf_back]                  ; 322C _ A1, 00000144(d)
        mov     dword [ebp-10H], eax                    ; 3231 _ 89. 45, F0
        mov     byte [ebp-11H], 0                       ; 3234 _ C6. 45, EF, 00
        mov     dword [ebp-18H], 0                      ; 3238 _ C7. 45, E8, 00000000
        call    _io_sti                                 ; 323F _ E8, 00000000(rel)
        mov     dword [esp], _mouseinfo                 ; 3244 _ C7. 04 24, 00000038(d)
        call    _fifo8_get                              ; 324B _ E8, 00000000(rel)
        mov     byte [ebp-11H], al                      ; 3250 _ 88. 45, EF
        movzx   eax, byte [ebp-11H]                     ; 3253 _ 0F B6. 45, EF
        mov     dword [esp+4H], eax                     ; 3257 _ 89. 44 24, 04
        mov     dword [esp], _mdec                      ; 325B _ C7. 04 24, 00000100(d)
        call    _mouse_decode                           ; 3262 _ E8, 00000B41
        test    eax, eax                                ; 3267 _ 85. C0
        je      ?_195                                   ; 3269 _ 0F 84, 0000039C
        mov     dword [esp+8H], _mdec                   ; 326F _ C7. 44 24, 08, 00000100(d)
        mov     eax, dword [ebp+0CH]                    ; 3277 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 327A _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 327E _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3281 _ 89. 04 24
        call    _computeMousePosition                   ; 3284 _ E8, FFFFFE56
        mov     edx, dword [_my]                        ; 3289 _ 8B. 15, 00000138(d)
        mov     eax, dword [_mx]                        ; 328F _ A1, 00000134(d)
        mov     dword [esp+0CH], edx                    ; 3294 _ 89. 54 24, 0C
        mov     dword [esp+8H], eax                     ; 3298 _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 329C _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 329F _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 32A3 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 32A6 _ 89. 04 24
        call    _sheet_slide                            ; 32A9 _ E8, 00000000(rel)
        mov     eax, dword [?_441]                      ; 32AE _ A1, 0000010C(d)
        and     eax, 01H                                ; 32B3 _ 83. E0, 01
        test    eax, eax                                ; 32B6 _ 85. C0
        je      ?_193                                   ; 32B8 _ 0F 84, 00000340
        mov     eax, dword [_mmx]                       ; 32BE _ A1, 00000118(d)
        test    eax, eax                                ; 32C3 _ 85. C0
        jns     ?_192                                   ; 32C5 _ 0F 89, 000002C2
        mov     eax, dword [ebp+8H]                     ; 32CB _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 32CE _ 8B. 40, 10
        sub     eax, 1                                  ; 32D1 _ 83. E8, 01
        mov     dword [ebp-0CH], eax                    ; 32D4 _ 89. 45, F4
        jmp     ?_191                                   ; 32D7 _ E9, 000002A5

?_185:  mov     eax, dword [ebp+8H]                     ; 32DC _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 32DF _ 8B. 55, F4
        add     edx, 4                                  ; 32E2 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 32E5 _ 8B. 44 90, 04
        mov     dword [ebp-18H], eax                    ; 32E9 _ 89. 45, E8
        mov     edx, dword [_mx]                        ; 32EC _ 8B. 15, 00000134(d)
        mov     eax, dword [ebp-18H]                    ; 32F2 _ 8B. 45, E8
        mov     eax, dword [eax+0CH]                    ; 32F5 _ 8B. 40, 0C
        sub     edx, eax                                ; 32F8 _ 29. C2
        mov     eax, edx                                ; 32FA _ 89. D0
        mov     dword [ebp-1CH], eax                    ; 32FC _ 89. 45, E4
        mov     edx, dword [_my]                        ; 32FF _ 8B. 15, 00000138(d)
        mov     eax, dword [ebp-18H]                    ; 3305 _ 8B. 45, E8
        mov     eax, dword [eax+10H]                    ; 3308 _ 8B. 40, 10
        sub     edx, eax                                ; 330B _ 29. C2
        mov     eax, edx                                ; 330D _ 89. D0
        mov     dword [ebp-20H], eax                    ; 330F _ 89. 45, E0
        cmp     dword [ebp-1CH], 0                      ; 3312 _ 83. 7D, E4, 00
        js      ?_190                                   ; 3316 _ 0F 88, 00000261
        mov     eax, dword [ebp-18H]                    ; 331C _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 331F _ 8B. 40, 04
        cmp     dword [ebp-1CH], eax                    ; 3322 _ 39. 45, E4
        jge     ?_190                                   ; 3325 _ 0F 8D, 00000252
        cmp     dword [ebp-20H], 0                      ; 332B _ 83. 7D, E0, 00
        js      ?_190                                   ; 332F _ 0F 88, 00000248
        mov     eax, dword [ebp-18H]                    ; 3335 _ 8B. 45, E8
        mov     eax, dword [eax+8H]                     ; 3338 _ 8B. 40, 08
        cmp     dword [ebp-20H], eax                    ; 333B _ 39. 45, E0
        jge     ?_190                                   ; 333E _ 0F 8D, 00000239
        mov     eax, dword [ebp-18H]                    ; 3344 _ 8B. 45, E8
        mov     edx, dword [eax]                        ; 3347 _ 8B. 10
        mov     eax, dword [ebp-18H]                    ; 3349 _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 334C _ 8B. 40, 04
        imul    eax, dword [ebp-20H]                    ; 334F _ 0F AF. 45, E0
        mov     ecx, dword [ebp-1CH]                    ; 3353 _ 8B. 4D, E4
        add     eax, ecx                                ; 3356 _ 01. C8
        add     eax, edx                                ; 3358 _ 01. D0
        movzx   eax, byte [eax]                         ; 335A _ 0F B6. 00
        movzx   eax, al                                 ; 335D _ 0F B6. C0
        mov     edx, dword [ebp-18H]                    ; 3360 _ 8B. 55, E8
        mov     edx, dword [edx+14H]                    ; 3363 _ 8B. 52, 14
        cmp     eax, edx                                ; 3366 _ 39. D0
        je      ?_190                                   ; 3368 _ 0F 84, 0000020F
        mov     eax, dword [_current_console_task]      ; 336E _ A1, 00000278(d)
        mov     eax, dword [eax+0B4H]                   ; 3373 _ 8B. 80, 000000B4
        test    eax, eax                                ; 3379 _ 85. C0
        jz      ?_186                                   ; 337B _ 74, 68
        mov     eax, dword [_current_console_task]      ; 337D _ A1, 00000278(d)
        mov     eax, dword [eax+0B4H]                   ; 3382 _ 8B. 80, 000000B4
        mov     dword [esp+0CH], 0                      ; 3388 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], ?_412                   ; 3390 _ C7. 44 24, 08, 0000000F(d)
        mov     dword [esp+4H], eax                     ; 3398 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 339C _ 8B. 45, 08
        mov     dword [esp], eax                        ; 339F _ 89. 04 24
        call    _make_wtitle8                           ; 33A2 _ E8, 0000110B
        mov     eax, dword [ebp-18H]                    ; 33A7 _ 8B. 45, E8
        mov     ecx, dword [eax+8H]                     ; 33AA _ 8B. 48, 08
        mov     eax, dword [ebp-18H]                    ; 33AD _ 8B. 45, E8
        mov     edx, dword [eax+4H]                     ; 33B0 _ 8B. 50, 04
        mov     eax, dword [_current_console_task]      ; 33B3 _ A1, 00000278(d)
        mov     eax, dword [eax+0B4H]                   ; 33B8 _ 8B. 80, 000000B4
        mov     dword [esp+14H], ecx                    ; 33BE _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 33C2 _ 89. 54 24, 10
        mov     dword [esp+0CH], 0                      ; 33C6 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 33CE _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], eax                     ; 33D6 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 33DA _ 8B. 45, 08
        mov     dword [esp], eax                        ; 33DD _ 89. 04 24
        call    _sheet_refresh                          ; 33E0 _ E8, 00000000(rel)
?_186:  mov     eax, dword [ebp-18H]                    ; 33E5 _ 8B. 45, E8
        mov     eax, dword [eax+20H]                    ; 33E8 _ 8B. 40, 20
        mov     dword [_current_console_task], eax      ; 33EB _ A3, 00000278(d)
        mov     eax, dword [_current_console_task]      ; 33F0 _ A1, 00000278(d)
        mov     eax, dword [eax+0B4H]                   ; 33F5 _ 8B. 80, 000000B4
        test    eax, eax                                ; 33FB _ 85. C0
        jnz     ?_187                                   ; 33FD _ 75, 32
        mov     dword [esp+14H], ?_428                  ; 33FF _ C7. 44 24, 14, 00000066(d)
        mov     dword [esp+10H], 7                      ; 3407 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 96                     ; 340F _ C7. 44 24, 0C, 00000060
        mov     dword [esp+8H], 0                       ; 3417 _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp+0CH]                    ; 341F _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 3422 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3426 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3429 _ 89. 04 24
        call    _showString                             ; 342C _ E8, FFFFFD36
?_187:  mov     eax, dword [_current_console_task]      ; 3431 _ A1, 00000278(d)
        mov     eax, dword [eax+0B4H]                   ; 3436 _ 8B. 80, 000000B4
        test    eax, eax                                ; 343C _ 85. C0
        jz      ?_188                                   ; 343E _ 74, 60
        mov     eax, dword [_current_console_task]      ; 3440 _ A1, 00000278(d)
        mov     eax, dword [eax+0B4H]                   ; 3445 _ 8B. 80, 000000B4
        mov     dword [esp+0CH], 1                      ; 344B _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], ?_412                   ; 3453 _ C7. 44 24, 08, 0000000F(d)
        mov     dword [esp+4H], eax                     ; 345B _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 345F _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3462 _ 89. 04 24
        call    _make_wtitle8                           ; 3465 _ E8, 00001048
        mov     eax, dword [ebp-18H]                    ; 346A _ 8B. 45, E8
        mov     edx, dword [eax+8H]                     ; 346D _ 8B. 50, 08
        mov     eax, dword [ebp-18H]                    ; 3470 _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 3473 _ 8B. 40, 04
        mov     dword [esp+14H], edx                    ; 3476 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 347A _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 347E _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 3486 _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp-18H]                    ; 348E _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 3491 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3495 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3498 _ 89. 04 24
        call    _sheet_refresh                          ; 349B _ E8, 00000000(rel)
?_188:  mov     eax, dword [ebp+8H]                     ; 34A0 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 34A3 _ 8B. 40, 10
        sub     eax, 1                                  ; 34A6 _ 83. E8, 01
        mov     dword [esp+8H], eax                     ; 34A9 _ 89. 44 24, 08
        mov     eax, dword [ebp-18H]                    ; 34AD _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 34B0 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 34B4 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 34B7 _ 89. 04 24
        call    _sheet_updown                           ; 34BA _ E8, 00000000(rel)
        cmp     dword [ebp-1CH], 2                      ; 34BF _ 83. 7D, E4, 02
        jle     ?_189                                   ; 34C3 _ 7E, 36
        mov     eax, dword [ebp-18H]                    ; 34C5 _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 34C8 _ 8B. 40, 04
        sub     eax, 3                                  ; 34CB _ 83. E8, 03
        cmp     dword [ebp-1CH], eax                    ; 34CE _ 39. 45, E4
        jge     ?_189                                   ; 34D1 _ 7D, 28
        cmp     dword [ebp-20H], 2                      ; 34D3 _ 83. 7D, E0, 02
        jle     ?_189                                   ; 34D7 _ 7E, 22
        cmp     dword [ebp-20H], 20                     ; 34D9 _ 83. 7D, E0, 14
        jg      ?_189                                   ; 34DD _ 7F, 1C
        mov     eax, dword [_mx]                        ; 34DF _ A1, 00000134(d)
        mov     dword [_mmx], eax                       ; 34E4 _ A3, 00000118(d)
        mov     eax, dword [_my]                        ; 34E9 _ A1, 00000138(d)
        mov     dword [_mmy], eax                       ; 34EE _ A3, 0000011C(d)
        mov     eax, dword [ebp-18H]                    ; 34F3 _ 8B. 45, E8
        mov     dword [_mouse_clicked_sht], eax         ; 34F6 _ A3, 00000270(d)
?_189:  mov     eax, dword [ebp-18H]                    ; 34FB _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 34FE _ 8B. 40, 04
        sub     eax, 21                                 ; 3501 _ 83. E8, 15
        cmp     dword [ebp-1CH], eax                    ; 3504 _ 39. 45, E4
        jl      ?_194                                   ; 3507 _ 0F 8C, 000000FD
        mov     eax, dword [ebp-18H]                    ; 350D _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 3510 _ 8B. 40, 04
        sub     eax, 5                                  ; 3513 _ 83. E8, 05
        cmp     dword [ebp-1CH], eax                    ; 3516 _ 39. 45, E4
        jge     ?_194                                   ; 3519 _ 0F 8D, 000000EB
        cmp     dword [ebp-20H], 4                      ; 351F _ 83. 7D, E0, 04
        jle     ?_194                                   ; 3523 _ 0F 8E, 000000E1
        cmp     dword [ebp-20H], 18                     ; 3529 _ 83. 7D, E0, 12
        jg      ?_194                                   ; 352D _ 0F 8F, 000000D7
        mov     eax, dword [ebp-18H]                    ; 3533 _ 8B. 45, E8
        mov     eax, dword [eax+20H]                    ; 3536 _ 8B. 40, 20
        test    eax, eax                                ; 3539 _ 85. C0
        je      ?_194                                   ; 353B _ 0F 84, 000000C9
        call    _io_cli                                 ; 3541 _ E8, 00000000(rel)
        mov     eax, dword [ebp-18H]                    ; 3546 _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 3549 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 354D _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3550 _ 89. 04 24
        call    _sheet_free                             ; 3553 _ E8, 00000000(rel)
        call    _get_addr_code32                        ; 3558 _ E8, 00000000(rel)
        mov     dword [ebp-24H], eax                    ; 355D _ 89. 45, DC
        mov     ecx, _kill_process                      ; 3560 _ B9, 00000EF3(d)
        mov     eax, dword [ebp-18H]                    ; 3565 _ 8B. 45, E8
        mov     edx, dword [eax+20H]                    ; 3568 _ 8B. 50, 20
        mov     eax, ecx                                ; 356B _ 89. C8
        sub     eax, dword [ebp-24H]                    ; 356D _ 2B. 45, DC
        mov     dword [edx+4CH], eax                    ; 3570 _ 89. 42, 4C
        call    _io_sti                                 ; 3573 _ E8, 00000000(rel)
        jmp     ?_194                                   ; 3578 _ E9, 0000008D

?_190:  sub     dword [ebp-0CH], 1                      ; 357D _ 83. 6D, F4, 01
?_191:  cmp     dword [ebp-0CH], 0                      ; 3581 _ 83. 7D, F4, 00
        jg      ?_185                                   ; 3585 _ 0F 8F, FFFFFD51
        jmp     ?_195                                   ; 358B _ EB, 7E

?_192:  mov     edx, dword [_mx]                        ; 358D _ 8B. 15, 00000134(d)
        mov     eax, dword [_mmx]                       ; 3593 _ A1, 00000118(d)
        sub     edx, eax                                ; 3598 _ 29. C2
        mov     eax, edx                                ; 359A _ 89. D0
        mov     dword [ebp-1CH], eax                    ; 359C _ 89. 45, E4
        mov     edx, dword [_my]                        ; 359F _ 8B. 15, 00000138(d)
        mov     eax, dword [_mmy]                       ; 35A5 _ A1, 0000011C(d)
        sub     edx, eax                                ; 35AA _ 29. C2
        mov     eax, edx                                ; 35AC _ 89. D0
        mov     dword [ebp-20H], eax                    ; 35AE _ 89. 45, E0
        mov     eax, dword [_mouse_clicked_sht]         ; 35B1 _ A1, 00000270(d)
        mov     edx, dword [eax+10H]                    ; 35B6 _ 8B. 50, 10
        mov     eax, dword [ebp-20H]                    ; 35B9 _ 8B. 45, E0
        lea     ecx, [edx+eax]                          ; 35BC _ 8D. 0C 02
        mov     eax, dword [_mouse_clicked_sht]         ; 35BF _ A1, 00000270(d)
        mov     edx, dword [eax+0CH]                    ; 35C4 _ 8B. 50, 0C
        mov     eax, dword [ebp-1CH]                    ; 35C7 _ 8B. 45, E4
        add     edx, eax                                ; 35CA _ 01. C2
        mov     eax, dword [_mouse_clicked_sht]         ; 35CC _ A1, 00000270(d)
        mov     dword [esp+0CH], ecx                    ; 35D1 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 35D5 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 35D9 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 35DD _ 8B. 45, 08
        mov     dword [esp], eax                        ; 35E0 _ 89. 04 24
        call    _sheet_slide                            ; 35E3 _ E8, 00000000(rel)
        mov     eax, dword [_mx]                        ; 35E8 _ A1, 00000134(d)
        mov     dword [_mmx], eax                       ; 35ED _ A3, 00000118(d)
        mov     eax, dword [_my]                        ; 35F2 _ A1, 00000138(d)
        mov     dword [_mmy], eax                       ; 35F7 _ A3, 0000011C(d)
        jmp     ?_195                                   ; 35FC _ EB, 0D

?_193:  mov     dword [_mmx], -1                        ; 35FE _ C7. 05, 00000118(d), FFFFFFFF
        jmp     ?_195                                   ; 3608 _ EB, 01

?_194:  nop                                             ; 360A _ 90
?_195:  nop                                             ; 360B _ 90
        leave                                           ; 360C _ C9
        ret                                             ; 360D _ C3
; _show_mouse_info End of function

_initBootInfo:; Function begin
        push    ebp                                     ; 360E _ 55
        mov     ebp, esp                                ; 360F _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 3611 _ 8B. 45, 08
        mov     dword [eax], -536870912                 ; 3614 _ C7. 00, E0000000
        mov     eax, dword [ebp+8H]                     ; 361A _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 640                      ; 361D _ 66: C7. 40, 04, 0280
        mov     eax, dword [ebp+8H]                     ; 3623 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 480                      ; 3626 _ 66: C7. 40, 06, 01E0
        nop                                             ; 362C _ 90
        pop     ebp                                     ; 362D _ 5D
        ret                                             ; 362E _ C3
; _initBootInfo End of function

_init_palette:; Function begin
        push    ebp                                     ; 362F _ 55
        mov     ebp, esp                                ; 3630 _ 89. E5
        push    ebx                                     ; 3632 _ 53
        sub     esp, 692                                ; 3633 _ 81. EC, 000002B4
        mov     dword [esp+8H], _table_rgb.2676         ; 3639 _ C7. 44 24, 08, 00000140(d)
        mov     dword [esp+4H], 15                      ; 3641 _ C7. 44 24, 04, 0000000F
        mov     dword [esp], 0                          ; 3649 _ C7. 04 24, 00000000
        call    _set_palette                            ; 3650 _ E8, 00000139
        mov     dword [ebp-14H], 0                      ; 3655 _ C7. 45, EC, 00000000
        jmp     ?_201                                   ; 365C _ E9, 000000FB

?_196:  mov     dword [ebp-10H], 0                      ; 3661 _ C7. 45, F0, 00000000
        jmp     ?_200                                   ; 3668 _ E9, 000000E1

?_197:  mov     dword [ebp-0CH], 0                      ; 366D _ C7. 45, F4, 00000000
        jmp     ?_199                                   ; 3674 _ E9, 000000C7

?_198:  mov     eax, dword [ebp-0CH]                    ; 3679 _ 8B. 45, F4
        mov     ebx, eax                                ; 367C _ 89. C3
        mov     edx, dword [ebp-10H]                    ; 367E _ 8B. 55, F0
        mov     eax, edx                                ; 3681 _ 89. D0
        add     eax, eax                                ; 3683 _ 01. C0
        add     eax, edx                                ; 3685 _ 01. D0
        add     eax, eax                                ; 3687 _ 01. C0
        mov     edx, eax                                ; 3689 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 368B _ 8B. 45, F4
        lea     ecx, [edx+eax]                          ; 368E _ 8D. 0C 02
        mov     edx, dword [ebp-14H]                    ; 3691 _ 8B. 55, EC
        mov     eax, edx                                ; 3694 _ 89. D0
        shl     eax, 3                                  ; 3696 _ C1. E0, 03
        add     eax, edx                                ; 3699 _ 01. D0
        shl     eax, 2                                  ; 369B _ C1. E0, 02
        lea     edx, [ecx+eax]                          ; 369E _ 8D. 14 01
        mov     eax, edx                                ; 36A1 _ 89. D0
        add     eax, eax                                ; 36A3 _ 01. C0
        add     edx, eax                                ; 36A5 _ 01. C2
        mov     ecx, 51                                 ; 36A7 _ B9, 00000033
        mov     eax, ebx                                ; 36AC _ 89. D8
        imul    eax, ecx                                ; 36AE _ 0F AF. C1
        mov     byte [ebp+edx-29CH], al                 ; 36B1 _ 88. 84 15, FFFFFD64
        mov     eax, dword [ebp-10H]                    ; 36B8 _ 8B. 45, F0
        mov     ebx, eax                                ; 36BB _ 89. C3
        mov     edx, dword [ebp-10H]                    ; 36BD _ 8B. 55, F0
        mov     eax, edx                                ; 36C0 _ 89. D0
        add     eax, eax                                ; 36C2 _ 01. C0
        add     eax, edx                                ; 36C4 _ 01. D0
        add     eax, eax                                ; 36C6 _ 01. C0
        mov     edx, eax                                ; 36C8 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 36CA _ 8B. 45, F4
        lea     ecx, [edx+eax]                          ; 36CD _ 8D. 0C 02
        mov     edx, dword [ebp-14H]                    ; 36D0 _ 8B. 55, EC
        mov     eax, edx                                ; 36D3 _ 89. D0
        shl     eax, 3                                  ; 36D5 _ C1. E0, 03
        add     eax, edx                                ; 36D8 _ 01. D0
        shl     eax, 2                                  ; 36DA _ C1. E0, 02
        lea     edx, [ecx+eax]                          ; 36DD _ 8D. 14 01
        mov     eax, edx                                ; 36E0 _ 89. D0
        add     eax, eax                                ; 36E2 _ 01. C0
        add     eax, edx                                ; 36E4 _ 01. D0
        lea     edx, [eax+1H]                           ; 36E6 _ 8D. 50, 01
        mov     ecx, 51                                 ; 36E9 _ B9, 00000033
        mov     eax, ebx                                ; 36EE _ 89. D8
        imul    eax, ecx                                ; 36F0 _ 0F AF. C1
        mov     byte [ebp+edx-29CH], al                 ; 36F3 _ 88. 84 15, FFFFFD64
        mov     eax, dword [ebp-14H]                    ; 36FA _ 8B. 45, EC
        mov     ebx, eax                                ; 36FD _ 89. C3
        mov     edx, dword [ebp-10H]                    ; 36FF _ 8B. 55, F0
        mov     eax, edx                                ; 3702 _ 89. D0
        add     eax, eax                                ; 3704 _ 01. C0
        add     eax, edx                                ; 3706 _ 01. D0
        add     eax, eax                                ; 3708 _ 01. C0
        mov     edx, eax                                ; 370A _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 370C _ 8B. 45, F4
        lea     ecx, [edx+eax]                          ; 370F _ 8D. 0C 02
        mov     edx, dword [ebp-14H]                    ; 3712 _ 8B. 55, EC
        mov     eax, edx                                ; 3715 _ 89. D0
        shl     eax, 3                                  ; 3717 _ C1. E0, 03
        add     eax, edx                                ; 371A _ 01. D0
        shl     eax, 2                                  ; 371C _ C1. E0, 02
        lea     edx, [ecx+eax]                          ; 371F _ 8D. 14 01
        mov     eax, edx                                ; 3722 _ 89. D0
        add     eax, eax                                ; 3724 _ 01. C0
        add     eax, edx                                ; 3726 _ 01. D0
        lea     edx, [eax+2H]                           ; 3728 _ 8D. 50, 02
        mov     ecx, 51                                 ; 372B _ B9, 00000033
        mov     eax, ebx                                ; 3730 _ 89. D8
        imul    eax, ecx                                ; 3732 _ 0F AF. C1
        mov     byte [ebp+edx-29CH], al                 ; 3735 _ 88. 84 15, FFFFFD64
        add     dword [ebp-0CH], 1                      ; 373C _ 83. 45, F4, 01
?_199:  cmp     dword [ebp-0CH], 5                      ; 3740 _ 83. 7D, F4, 05
        jle     ?_198                                   ; 3744 _ 0F 8E, FFFFFF2F
        add     dword [ebp-10H], 1                      ; 374A _ 83. 45, F0, 01
?_200:  cmp     dword [ebp-10H], 5                      ; 374E _ 83. 7D, F0, 05
        jle     ?_197                                   ; 3752 _ 0F 8E, FFFFFF15
        add     dword [ebp-14H], 1                      ; 3758 _ 83. 45, EC, 01
?_201:  cmp     dword [ebp-14H], 5                      ; 375C _ 83. 7D, EC, 05
        jle     ?_196                                   ; 3760 _ 0F 8E, FFFFFEFB
        lea     eax, [ebp-29CH]                         ; 3766 _ 8D. 85, FFFFFD64
        mov     dword [esp+8H], eax                     ; 376C _ 89. 44 24, 08
        mov     dword [esp+4H], 231                     ; 3770 _ C7. 44 24, 04, 000000E7
        mov     dword [esp], 16                         ; 3778 _ C7. 04 24, 00000010
        call    _set_palette                            ; 377F _ E8, 0000000A
        nop                                             ; 3784 _ 90
        add     esp, 692                                ; 3785 _ 81. C4, 000002B4
        pop     ebx                                     ; 378B _ 5B
        pop     ebp                                     ; 378C _ 5D
        ret                                             ; 378D _ C3
; _init_palette End of function

_set_palette:; Function begin
        push    ebp                                     ; 378E _ 55
        mov     ebp, esp                                ; 378F _ 89. E5
        sub     esp, 40                                 ; 3791 _ 83. EC, 28
        call    _io_load_eflags                         ; 3794 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 3799 _ 89. 45, F0
        call    _io_cli                                 ; 379C _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 37A1 _ 8B. 45, 08
        mov     dword [esp+4H], eax                     ; 37A4 _ 89. 44 24, 04
        mov     dword [esp], 968                        ; 37A8 _ C7. 04 24, 000003C8
        call    _io_out8                                ; 37AF _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 37B4 _ 8B. 45, 08
        mov     dword [ebp-0CH], eax                    ; 37B7 _ 89. 45, F4
        jmp     ?_203                                   ; 37BA _ EB, 62

?_202:  mov     eax, dword [ebp+10H]                    ; 37BC _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 37BF _ 0F B6. 00
        shr     al, 2                                   ; 37C2 _ C0. E8, 02
        movzx   eax, al                                 ; 37C5 _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 37C8 _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 37CC _ C7. 04 24, 000003C9
        call    _io_out8                                ; 37D3 _ E8, 00000000(rel)
        mov     eax, dword [ebp+10H]                    ; 37D8 _ 8B. 45, 10
        add     eax, 1                                  ; 37DB _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 37DE _ 0F B6. 00
        shr     al, 2                                   ; 37E1 _ C0. E8, 02
        movzx   eax, al                                 ; 37E4 _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 37E7 _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 37EB _ C7. 04 24, 000003C9
        call    _io_out8                                ; 37F2 _ E8, 00000000(rel)
        mov     eax, dword [ebp+10H]                    ; 37F7 _ 8B. 45, 10
        add     eax, 2                                  ; 37FA _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 37FD _ 0F B6. 00
        shr     al, 2                                   ; 3800 _ C0. E8, 02
        movzx   eax, al                                 ; 3803 _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 3806 _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 380A _ C7. 04 24, 000003C9
        call    _io_out8                                ; 3811 _ E8, 00000000(rel)
        add     dword [ebp+10H], 3                      ; 3816 _ 83. 45, 10, 03
        add     dword [ebp-0CH], 1                      ; 381A _ 83. 45, F4, 01
?_203:  mov     eax, dword [ebp-0CH]                    ; 381E _ 8B. 45, F4
        cmp     eax, dword [ebp+0CH]                    ; 3821 _ 3B. 45, 0C
        jle     ?_202                                   ; 3824 _ 7E, 96
        mov     eax, dword [ebp-10H]                    ; 3826 _ 8B. 45, F0
        mov     dword [esp], eax                        ; 3829 _ 89. 04 24
        call    _io_store_eflags                        ; 382C _ E8, 00000000(rel)
        nop                                             ; 3831 _ 90
        leave                                           ; 3832 _ C9
        ret                                             ; 3833 _ C3
; _set_palette End of function

_boxfill8:; Function begin
        push    ebp                                     ; 3834 _ 55
        mov     ebp, esp                                ; 3835 _ 89. E5
        sub     esp, 20                                 ; 3837 _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 383A _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 383D _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 3840 _ 8B. 45, 18
        mov     dword [ebp-8H], eax                     ; 3843 _ 89. 45, F8
        jmp     ?_207                                   ; 3846 _ EB, 31

?_204:  mov     eax, dword [ebp+14H]                    ; 3848 _ 8B. 45, 14
        mov     dword [ebp-4H], eax                     ; 384B _ 89. 45, FC
        jmp     ?_206                                   ; 384E _ EB, 1D

?_205:  mov     eax, dword [ebp-8H]                     ; 3850 _ 8B. 45, F8
        imul    eax, dword [ebp+0CH]                    ; 3853 _ 0F AF. 45, 0C
        mov     edx, dword [ebp-4H]                     ; 3857 _ 8B. 55, FC
        add     eax, edx                                ; 385A _ 01. D0
        mov     edx, eax                                ; 385C _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 385E _ 8B. 45, 08
        add     edx, eax                                ; 3861 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 3863 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 3867 _ 88. 02
        add     dword [ebp-4H], 1                       ; 3869 _ 83. 45, FC, 01
?_206:  mov     eax, dword [ebp-4H]                     ; 386D _ 8B. 45, FC
        cmp     eax, dword [ebp+1CH]                    ; 3870 _ 3B. 45, 1C
        jle     ?_205                                   ; 3873 _ 7E, DB
        add     dword [ebp-8H], 1                       ; 3875 _ 83. 45, F8, 01
?_207:  mov     eax, dword [ebp-8H]                     ; 3879 _ 8B. 45, F8
        cmp     eax, dword [ebp+20H]                    ; 387C _ 3B. 45, 20
        jle     ?_204                                   ; 387F _ 7E, C7
        nop                                             ; 3881 _ 90
        leave                                           ; 3882 _ C9
        ret                                             ; 3883 _ C3
; _boxfill8 End of function

_showFont8:; Function begin
        push    ebp                                     ; 3884 _ 55
        mov     ebp, esp                                ; 3885 _ 89. E5
        sub     esp, 20                                 ; 3887 _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 388A _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 388D _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 3890 _ C7. 45, FC, 00000000
        jmp     ?_217                                   ; 3897 _ E9, 0000015C

?_208:  mov     edx, dword [ebp-4H]                     ; 389C _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 389F _ 8B. 45, 1C
        add     eax, edx                                ; 38A2 _ 01. D0
        movzx   eax, byte [eax]                         ; 38A4 _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 38A7 _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 38AA _ 80. 7D, FB, 00
        jns     ?_209                                   ; 38AE _ 79, 1E
        mov     edx, dword [ebp+14H]                    ; 38B0 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 38B3 _ 8B. 45, FC
        add     eax, edx                                ; 38B6 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 38B8 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 38BC _ 8B. 55, 10
        add     eax, edx                                ; 38BF _ 01. D0
        mov     edx, eax                                ; 38C1 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 38C3 _ 8B. 45, 08
        add     edx, eax                                ; 38C6 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 38C8 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 38CC _ 88. 02
?_209:  movsx   eax, byte [ebp-5H]                      ; 38CE _ 0F BE. 45, FB
        and     eax, 40H                                ; 38D2 _ 83. E0, 40
        test    eax, eax                                ; 38D5 _ 85. C0
        jz      ?_210                                   ; 38D7 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 38D9 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 38DC _ 8B. 45, FC
        add     eax, edx                                ; 38DF _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 38E1 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 38E5 _ 8B. 55, 10
        add     eax, edx                                ; 38E8 _ 01. D0
        lea     edx, [eax+1H]                           ; 38EA _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 38ED _ 8B. 45, 08
        add     edx, eax                                ; 38F0 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 38F2 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 38F6 _ 88. 02
?_210:  movsx   eax, byte [ebp-5H]                      ; 38F8 _ 0F BE. 45, FB
        and     eax, 20H                                ; 38FC _ 83. E0, 20
        test    eax, eax                                ; 38FF _ 85. C0
        jz      ?_211                                   ; 3901 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 3903 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 3906 _ 8B. 45, FC
        add     eax, edx                                ; 3909 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 390B _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 390F _ 8B. 55, 10
        add     eax, edx                                ; 3912 _ 01. D0
        lea     edx, [eax+2H]                           ; 3914 _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 3917 _ 8B. 45, 08
        add     edx, eax                                ; 391A _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 391C _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 3920 _ 88. 02
?_211:  movsx   eax, byte [ebp-5H]                      ; 3922 _ 0F BE. 45, FB
        and     eax, 10H                                ; 3926 _ 83. E0, 10
        test    eax, eax                                ; 3929 _ 85. C0
        jz      ?_212                                   ; 392B _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 392D _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 3930 _ 8B. 45, FC
        add     eax, edx                                ; 3933 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 3935 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 3939 _ 8B. 55, 10
        add     eax, edx                                ; 393C _ 01. D0
        lea     edx, [eax+3H]                           ; 393E _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 3941 _ 8B. 45, 08
        add     edx, eax                                ; 3944 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 3946 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 394A _ 88. 02
?_212:  movsx   eax, byte [ebp-5H]                      ; 394C _ 0F BE. 45, FB
        and     eax, 08H                                ; 3950 _ 83. E0, 08
        test    eax, eax                                ; 3953 _ 85. C0
        jz      ?_213                                   ; 3955 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 3957 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 395A _ 8B. 45, FC
        add     eax, edx                                ; 395D _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 395F _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 3963 _ 8B. 55, 10
        add     eax, edx                                ; 3966 _ 01. D0
        lea     edx, [eax+4H]                           ; 3968 _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 396B _ 8B. 45, 08
        add     edx, eax                                ; 396E _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 3970 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 3974 _ 88. 02
?_213:  movsx   eax, byte [ebp-5H]                      ; 3976 _ 0F BE. 45, FB
        and     eax, 04H                                ; 397A _ 83. E0, 04
        test    eax, eax                                ; 397D _ 85. C0
        jz      ?_214                                   ; 397F _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 3981 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 3984 _ 8B. 45, FC
        add     eax, edx                                ; 3987 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 3989 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 398D _ 8B. 55, 10
        add     eax, edx                                ; 3990 _ 01. D0
        lea     edx, [eax+5H]                           ; 3992 _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 3995 _ 8B. 45, 08
        add     edx, eax                                ; 3998 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 399A _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 399E _ 88. 02
?_214:  movsx   eax, byte [ebp-5H]                      ; 39A0 _ 0F BE. 45, FB
        and     eax, 02H                                ; 39A4 _ 83. E0, 02
        test    eax, eax                                ; 39A7 _ 85. C0
        jz      ?_215                                   ; 39A9 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 39AB _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 39AE _ 8B. 45, FC
        add     eax, edx                                ; 39B1 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 39B3 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 39B7 _ 8B. 55, 10
        add     eax, edx                                ; 39BA _ 01. D0
        lea     edx, [eax+6H]                           ; 39BC _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 39BF _ 8B. 45, 08
        add     edx, eax                                ; 39C2 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 39C4 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 39C8 _ 88. 02
?_215:  movsx   eax, byte [ebp-5H]                      ; 39CA _ 0F BE. 45, FB
        and     eax, 01H                                ; 39CE _ 83. E0, 01
        test    eax, eax                                ; 39D1 _ 85. C0
        jz      ?_216                                   ; 39D3 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 39D5 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 39D8 _ 8B. 45, FC
        add     eax, edx                                ; 39DB _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 39DD _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 39E1 _ 8B. 55, 10
        add     eax, edx                                ; 39E4 _ 01. D0
        lea     edx, [eax+7H]                           ; 39E6 _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 39E9 _ 8B. 45, 08
        add     edx, eax                                ; 39EC _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 39EE _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 39F2 _ 88. 02
?_216:  add     dword [ebp-4H], 1                       ; 39F4 _ 83. 45, FC, 01
?_217:  cmp     dword [ebp-4H], 15                      ; 39F8 _ 83. 7D, FC, 0F
        jle     ?_208                                   ; 39FC _ 0F 8E, FFFFFE9A
        nop                                             ; 3A02 _ 90
        leave                                           ; 3A03 _ C9
        ret                                             ; 3A04 _ C3
; _showFont8 End of function

_init_mouse_cursor:; Function begin
        push    ebp                                     ; 3A05 _ 55
        mov     ebp, esp                                ; 3A06 _ 89. E5
        sub     esp, 20                                 ; 3A08 _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 3A0B _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 3A0E _ 88. 45, EC
        mov     dword [ebp-8H], 0                       ; 3A11 _ C7. 45, F8, 00000000
        jmp     ?_224                                   ; 3A18 _ E9, 000000B1

?_218:  mov     dword [ebp-4H], 0                       ; 3A1D _ C7. 45, FC, 00000000
        jmp     ?_223                                   ; 3A24 _ E9, 00000097

?_219:  mov     eax, dword [ebp-8H]                     ; 3A29 _ 8B. 45, F8
        shl     eax, 4                                  ; 3A2C _ C1. E0, 04
        mov     edx, eax                                ; 3A2F _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 3A31 _ 8B. 45, FC
        add     eax, edx                                ; 3A34 _ 01. D0
        add     eax, _cursor.2736                       ; 3A36 _ 05, 00000180(d)
        movzx   eax, byte [eax]                         ; 3A3B _ 0F B6. 00
        cmp     al, 42                                  ; 3A3E _ 3C, 2A
        jnz     ?_220                                   ; 3A40 _ 75, 17
        mov     eax, dword [ebp-8H]                     ; 3A42 _ 8B. 45, F8
        shl     eax, 4                                  ; 3A45 _ C1. E0, 04
        mov     edx, eax                                ; 3A48 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 3A4A _ 8B. 45, FC
        add     eax, edx                                ; 3A4D _ 01. D0
        mov     edx, eax                                ; 3A4F _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3A51 _ 8B. 45, 08
        add     eax, edx                                ; 3A54 _ 01. D0
        mov     byte [eax], 0                           ; 3A56 _ C6. 00, 00
?_220:  mov     eax, dword [ebp-8H]                     ; 3A59 _ 8B. 45, F8
        shl     eax, 4                                  ; 3A5C _ C1. E0, 04
        mov     edx, eax                                ; 3A5F _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 3A61 _ 8B. 45, FC
        add     eax, edx                                ; 3A64 _ 01. D0
        add     eax, _cursor.2736                       ; 3A66 _ 05, 00000180(d)
        movzx   eax, byte [eax]                         ; 3A6B _ 0F B6. 00
        cmp     al, 79                                  ; 3A6E _ 3C, 4F
        jnz     ?_221                                   ; 3A70 _ 75, 17
        mov     eax, dword [ebp-8H]                     ; 3A72 _ 8B. 45, F8
        shl     eax, 4                                  ; 3A75 _ C1. E0, 04
        mov     edx, eax                                ; 3A78 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 3A7A _ 8B. 45, FC
        add     eax, edx                                ; 3A7D _ 01. D0
        mov     edx, eax                                ; 3A7F _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3A81 _ 8B. 45, 08
        add     eax, edx                                ; 3A84 _ 01. D0
        mov     byte [eax], 7                           ; 3A86 _ C6. 00, 07
?_221:  mov     eax, dword [ebp-8H]                     ; 3A89 _ 8B. 45, F8
        shl     eax, 4                                  ; 3A8C _ C1. E0, 04
        mov     edx, eax                                ; 3A8F _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 3A91 _ 8B. 45, FC
        add     eax, edx                                ; 3A94 _ 01. D0
        add     eax, _cursor.2736                       ; 3A96 _ 05, 00000180(d)
        movzx   eax, byte [eax]                         ; 3A9B _ 0F B6. 00
        cmp     al, 46                                  ; 3A9E _ 3C, 2E
        jnz     ?_222                                   ; 3AA0 _ 75, 1A
        mov     eax, dword [ebp-8H]                     ; 3AA2 _ 8B. 45, F8
        shl     eax, 4                                  ; 3AA5 _ C1. E0, 04
        mov     edx, eax                                ; 3AA8 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 3AAA _ 8B. 45, FC
        add     eax, edx                                ; 3AAD _ 01. D0
        mov     edx, eax                                ; 3AAF _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3AB1 _ 8B. 45, 08
        add     edx, eax                                ; 3AB4 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 3AB6 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 3ABA _ 88. 02
?_222:  add     dword [ebp-4H], 1                       ; 3ABC _ 83. 45, FC, 01
?_223:  cmp     dword [ebp-4H], 15                      ; 3AC0 _ 83. 7D, FC, 0F
        jle     ?_219                                   ; 3AC4 _ 0F 8E, FFFFFF5F
        add     dword [ebp-8H], 1                       ; 3ACA _ 83. 45, F8, 01
?_224:  cmp     dword [ebp-8H], 15                      ; 3ACE _ 83. 7D, F8, 0F
        jle     ?_218                                   ; 3AD2 _ 0F 8E, FFFFFF45
        nop                                             ; 3AD8 _ 90
        leave                                           ; 3AD9 _ C9
        ret                                             ; 3ADA _ C3
; _init_mouse_cursor End of function

_putblock:; Function begin
        push    ebp                                     ; 3ADB _ 55
        mov     ebp, esp                                ; 3ADC _ 89. E5
        push    ebx                                     ; 3ADE _ 53
        sub     esp, 16                                 ; 3ADF _ 83. EC, 10
        mov     dword [ebp-0CH], 0                      ; 3AE2 _ C7. 45, F4, 00000000
        jmp     ?_228                                   ; 3AE9 _ EB, 4E

?_225:  mov     dword [ebp-8H], 0                       ; 3AEB _ C7. 45, F8, 00000000
        jmp     ?_227                                   ; 3AF2 _ EB, 39

?_226:  mov     eax, dword [ebp-0CH]                    ; 3AF4 _ 8B. 45, F4
        imul    eax, dword [ebp+24H]                    ; 3AF7 _ 0F AF. 45, 24
        mov     edx, dword [ebp-8H]                     ; 3AFB _ 8B. 55, F8
        add     eax, edx                                ; 3AFE _ 01. D0
        mov     edx, eax                                ; 3B00 _ 89. C2
        mov     eax, dword [ebp+20H]                    ; 3B02 _ 8B. 45, 20
        add     eax, edx                                ; 3B05 _ 01. D0
        mov     ecx, dword [ebp+1CH]                    ; 3B07 _ 8B. 4D, 1C
        mov     edx, dword [ebp-0CH]                    ; 3B0A _ 8B. 55, F4
        add     edx, ecx                                ; 3B0D _ 01. CA
        imul    edx, dword [ebp+0CH]                    ; 3B0F _ 0F AF. 55, 0C
        mov     ebx, dword [ebp+18H]                    ; 3B13 _ 8B. 5D, 18
        mov     ecx, dword [ebp-8H]                     ; 3B16 _ 8B. 4D, F8
        add     ecx, ebx                                ; 3B19 _ 01. D9
        add     edx, ecx                                ; 3B1B _ 01. CA
        mov     ecx, edx                                ; 3B1D _ 89. D1
        mov     edx, dword [ebp+8H]                     ; 3B1F _ 8B. 55, 08
        add     edx, ecx                                ; 3B22 _ 01. CA
        movzx   eax, byte [eax]                         ; 3B24 _ 0F B6. 00
        mov     byte [edx], al                          ; 3B27 _ 88. 02
        add     dword [ebp-8H], 1                       ; 3B29 _ 83. 45, F8, 01
?_227:  mov     eax, dword [ebp-8H]                     ; 3B2D _ 8B. 45, F8
        cmp     eax, dword [ebp+10H]                    ; 3B30 _ 3B. 45, 10
        jl      ?_226                                   ; 3B33 _ 7C, BF
        add     dword [ebp-0CH], 1                      ; 3B35 _ 83. 45, F4, 01
?_228:  mov     eax, dword [ebp-0CH]                    ; 3B39 _ 8B. 45, F4
        cmp     eax, dword [ebp+14H]                    ; 3B3C _ 3B. 45, 14
        jl      ?_225                                   ; 3B3F _ 7C, AA
        nop                                             ; 3B41 _ 90
        add     esp, 16                                 ; 3B42 _ 83. C4, 10
        pop     ebx                                     ; 3B45 _ 5B
        pop     ebp                                     ; 3B46 _ 5D
        ret                                             ; 3B47 _ C3
; _putblock End of function

_intHandlerFromC:; Function begin
        push    ebp                                     ; 3B48 _ 55
        mov     ebp, esp                                ; 3B49 _ 89. E5
        sub     esp, 40                                 ; 3B4B _ 83. EC, 28
        mov     eax, dword [_bootInfo]                  ; 3B4E _ A1, 00000014(d)
        mov     dword [ebp-0CH], eax                    ; 3B53 _ 89. 45, F4
        movzx   eax, word [?_438]                       ; 3B56 _ 0F B7. 05, 00000018(d)
        cwde                                            ; 3B5D _ 98
        mov     dword [ebp-10H], eax                    ; 3B5E _ 89. 45, F0
        movzx   eax, word [?_439]                       ; 3B61 _ 0F B7. 05, 0000001A(d)
        cwde                                            ; 3B68 _ 98
        mov     dword [ebp-14H], eax                    ; 3B69 _ 89. 45, EC
        mov     dword [esp+4H], 32                      ; 3B6C _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 3B74 _ C7. 04 24, 00000020
        call    _io_out8                                ; 3B7B _ E8, 00000000(rel)
        mov     byte [ebp-15H], 0                       ; 3B80 _ C6. 45, EB, 00
        mov     dword [esp], 96                         ; 3B84 _ C7. 04 24, 00000060
        call    _io_in8                                 ; 3B8B _ E8, 00000000(rel)
        mov     byte [ebp-15H], al                      ; 3B90 _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 3B93 _ 0F B6. 45, EB
        mov     dword [esp+4H], eax                     ; 3B97 _ 89. 44 24, 04
        mov     dword [esp], _keyinfo                   ; 3B9B _ C7. 04 24, 0000001C(d)
        call    _fifo8_put                              ; 3BA2 _ E8, 00000000(rel)
        nop                                             ; 3BA7 _ 90
        leave                                           ; 3BA8 _ C9
        ret                                             ; 3BA9 _ C3
; _intHandlerFromC End of function

_charToHexVal:; Function begin
        push    ebp                                     ; 3BAA _ 55
        mov     ebp, esp                                ; 3BAB _ 89. E5
        sub     esp, 4                                  ; 3BAD _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 3BB0 _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 3BB3 _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 3BB6 _ 80. 7D, FC, 09
        jle     ?_229                                   ; 3BBA _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 3BBC _ 0F B6. 45, FC
        add     eax, 55                                 ; 3BC0 _ 83. C0, 37
        jmp     ?_230                                   ; 3BC3 _ EB, 07

?_229:  movzx   eax, byte [ebp-4H]                      ; 3BC5 _ 0F B6. 45, FC
        add     eax, 48                                 ; 3BC9 _ 83. C0, 30
?_230:  leave                                           ; 3BCC _ C9
        ret                                             ; 3BCD _ C3
; _charToHexVal End of function

_charToHexStr:; Function begin
        push    ebp                                     ; 3BCE _ 55
        mov     ebp, esp                                ; 3BCF _ 89. E5
        sub     esp, 24                                 ; 3BD1 _ 83. EC, 18
        mov     eax, dword [ebp+8H]                     ; 3BD4 _ 8B. 45, 08
        mov     byte [ebp-14H], al                      ; 3BD7 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 3BDA _ C7. 45, FC, 00000000
        movzx   eax, byte [ebp-14H]                     ; 3BE1 _ 0F B6. 45, EC
        and     eax, 0FH                                ; 3BE5 _ 83. E0, 0F
        mov     byte [ebp-5H], al                       ; 3BE8 _ 88. 45, FB
        movsx   eax, byte [ebp-5H]                      ; 3BEB _ 0F BE. 45, FB
        mov     dword [esp], eax                        ; 3BEF _ 89. 04 24
        call    _charToHexVal                           ; 3BF2 _ E8, FFFFFFB3
        mov     byte [?_409], al                        ; 3BF7 _ A2, 00000113(d)
        movzx   eax, byte [ebp-14H]                     ; 3BFC _ 0F B6. 45, EC
        shr     al, 4                                   ; 3C00 _ C0. E8, 04
        mov     byte [ebp-14H], al                      ; 3C03 _ 88. 45, EC
        movzx   eax, byte [ebp-14H]                     ; 3C06 _ 0F B6. 45, EC
        movsx   eax, al                                 ; 3C0A _ 0F BE. C0
        mov     dword [esp], eax                        ; 3C0D _ 89. 04 24
        call    _charToHexVal                           ; 3C10 _ E8, FFFFFF95
        mov     byte [?_408], al                        ; 3C15 _ A2, 00000112(d)
        mov     eax, _keyval                            ; 3C1A _ B8, 00000110(d)
        leave                                           ; 3C1F _ C9
        ret                                             ; 3C20 _ C3
; _charToHexStr End of function

_intToHexStr:; Function begin
        push    ebp                                     ; 3C21 _ 55
        mov     ebp, esp                                ; 3C22 _ 89. E5
        sub     esp, 16                                 ; 3C24 _ 83. EC, 10
        mov     byte [_str.2784], 48                    ; 3C27 _ C6. 05, 00000374(d), 30
        mov     byte [?_442], 88                        ; 3C2E _ C6. 05, 00000375(d), 58
        mov     byte [?_443], 0                         ; 3C35 _ C6. 05, 0000037E(d), 00
        mov     dword [ebp-4H], 2                       ; 3C3C _ C7. 45, FC, 00000002
        jmp     ?_232                                   ; 3C43 _ EB, 0F

?_231:  mov     eax, dword [ebp-4H]                     ; 3C45 _ 8B. 45, FC
        add     eax, _str.2784                          ; 3C48 _ 05, 00000374(d)
        mov     byte [eax], 48                          ; 3C4D _ C6. 00, 30
        add     dword [ebp-4H], 1                       ; 3C50 _ 83. 45, FC, 01
?_232:  cmp     dword [ebp-4H], 9                       ; 3C54 _ 83. 7D, FC, 09
        jle     ?_231                                   ; 3C58 _ 7E, EB
        mov     dword [ebp-8H], 9                       ; 3C5A _ C7. 45, F8, 00000009
        jmp     ?_236                                   ; 3C61 _ EB, 42

?_233:  mov     eax, dword [ebp+8H]                     ; 3C63 _ 8B. 45, 08
        and     eax, 0FH                                ; 3C66 _ 83. E0, 0F
        mov     dword [ebp-0CH], eax                    ; 3C69 _ 89. 45, F4
        mov     eax, dword [ebp+8H]                     ; 3C6C _ 8B. 45, 08
        shr     eax, 4                                  ; 3C6F _ C1. E8, 04
        mov     dword [ebp+8H], eax                     ; 3C72 _ 89. 45, 08
        cmp     dword [ebp-0CH], 9                      ; 3C75 _ 83. 7D, F4, 09
        jle     ?_234                                   ; 3C79 _ 7E, 14
        mov     eax, dword [ebp-0CH]                    ; 3C7B _ 8B. 45, F4
        add     eax, 55                                 ; 3C7E _ 83. C0, 37
        mov     edx, eax                                ; 3C81 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 3C83 _ 8B. 45, F8
        add     eax, _str.2784                          ; 3C86 _ 05, 00000374(d)
        mov     byte [eax], dl                          ; 3C8B _ 88. 10
        jmp     ?_235                                   ; 3C8D _ EB, 12

?_234:  mov     eax, dword [ebp-0CH]                    ; 3C8F _ 8B. 45, F4
        add     eax, 48                                 ; 3C92 _ 83. C0, 30
        mov     edx, eax                                ; 3C95 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 3C97 _ 8B. 45, F8
        add     eax, _str.2784                          ; 3C9A _ 05, 00000374(d)
        mov     byte [eax], dl                          ; 3C9F _ 88. 10
?_235:  sub     dword [ebp-8H], 1                       ; 3CA1 _ 83. 6D, F8, 01
?_236:  cmp     dword [ebp-8H], 1                       ; 3CA5 _ 83. 7D, F8, 01
        jle     ?_237                                   ; 3CA9 _ 7E, 06
        cmp     dword [ebp+8H], 0                       ; 3CAB _ 83. 7D, 08, 00
        jnz     ?_233                                   ; 3CAF _ 75, B2
?_237:  mov     eax, _str.2784                          ; 3CB1 _ B8, 00000374(d)
        leave                                           ; 3CB6 _ C9
        ret                                             ; 3CB7 _ C3
; _intToHexStr End of function

_wait_KBC_sendready:; Function begin
        push    ebp                                     ; 3CB8 _ 55
        mov     ebp, esp                                ; 3CB9 _ 89. E5
        sub     esp, 24                                 ; 3CBB _ 83. EC, 18
?_238:  mov     dword [esp], 100                        ; 3CBE _ C7. 04 24, 00000064
        call    _io_in8                                 ; 3CC5 _ E8, 00000000(rel)
        and     eax, 02H                                ; 3CCA _ 83. E0, 02
        test    eax, eax                                ; 3CCD _ 85. C0
        jz      ?_239                                   ; 3CCF _ 74, 02
        jmp     ?_238                                   ; 3CD1 _ EB, EB
; _wait_KBC_sendready End of function

?_239:  ; Local function
        nop                                             ; 3CD3 _ 90
        nop                                             ; 3CD4 _ 90
        leave                                           ; 3CD5 _ C9
        ret                                             ; 3CD6 _ C3

_init_keyboard:; Function begin
        push    ebp                                     ; 3CD7 _ 55
        mov     ebp, esp                                ; 3CD8 _ 89. E5
        sub     esp, 24                                 ; 3CDA _ 83. EC, 18
        call    _wait_KBC_sendready                     ; 3CDD _ E8, FFFFFFD6
        mov     dword [esp+4H], 96                      ; 3CE2 _ C7. 44 24, 04, 00000060
        mov     dword [esp], 100                        ; 3CEA _ C7. 04 24, 00000064
        call    _io_out8                                ; 3CF1 _ E8, 00000000(rel)
        call    _wait_KBC_sendready                     ; 3CF6 _ E8, FFFFFFBD
        mov     dword [esp+4H], 71                      ; 3CFB _ C7. 44 24, 04, 00000047
        mov     dword [esp], 96                         ; 3D03 _ C7. 04 24, 00000060
        call    _io_out8                                ; 3D0A _ E8, 00000000(rel)
        nop                                             ; 3D0F _ 90
        leave                                           ; 3D10 _ C9
        ret                                             ; 3D11 _ C3
; _init_keyboard End of function

_enable_mouse:; Function begin
        push    ebp                                     ; 3D12 _ 55
        mov     ebp, esp                                ; 3D13 _ 89. E5
        sub     esp, 24                                 ; 3D15 _ 83. EC, 18
        call    _wait_KBC_sendready                     ; 3D18 _ E8, FFFFFF9B
        mov     dword [esp+4H], 212                     ; 3D1D _ C7. 44 24, 04, 000000D4
        mov     dword [esp], 100                        ; 3D25 _ C7. 04 24, 00000064
        call    _io_out8                                ; 3D2C _ E8, 00000000(rel)
        call    _wait_KBC_sendready                     ; 3D31 _ E8, FFFFFF82
        mov     dword [esp+4H], 244                     ; 3D36 _ C7. 44 24, 04, 000000F4
        mov     dword [esp], 96                         ; 3D3E _ C7. 04 24, 00000060
        call    _io_out8                                ; 3D45 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 3D4A _ 8B. 45, 08
        mov     byte [eax+3H], 0                        ; 3D4D _ C6. 40, 03, 00
        nop                                             ; 3D51 _ 90
        leave                                           ; 3D52 _ C9
        ret                                             ; 3D53 _ C3
; _enable_mouse End of function

_intHandlerForMouse:; Function begin
        push    ebp                                     ; 3D54 _ 55
        mov     ebp, esp                                ; 3D55 _ 89. E5
        sub     esp, 40                                 ; 3D57 _ 83. EC, 28
        mov     dword [esp+4H], 32                      ; 3D5A _ C7. 44 24, 04, 00000020
        mov     dword [esp], 160                        ; 3D62 _ C7. 04 24, 000000A0
        call    _io_out8                                ; 3D69 _ E8, 00000000(rel)
        mov     dword [esp+4H], 32                      ; 3D6E _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 3D76 _ C7. 04 24, 00000020
        call    _io_out8                                ; 3D7D _ E8, 00000000(rel)
        mov     dword [esp], 96                         ; 3D82 _ C7. 04 24, 00000060
        call    _io_in8                                 ; 3D89 _ E8, 00000000(rel)
        mov     byte [ebp-9H], al                       ; 3D8E _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 3D91 _ 0F B6. 45, F7
        mov     dword [esp+4H], eax                     ; 3D95 _ 89. 44 24, 04
        mov     dword [esp], _mouseinfo                 ; 3D99 _ C7. 04 24, 00000038(d)
        call    _fifo8_put                              ; 3DA0 _ E8, 00000000(rel)
        nop                                             ; 3DA5 _ 90
        leave                                           ; 3DA6 _ C9
        ret                                             ; 3DA7 _ C3
; _intHandlerForMouse End of function

_mouse_decode:; Function begin
        push    ebp                                     ; 3DA8 _ 55
        mov     ebp, esp                                ; 3DA9 _ 89. E5
        sub     esp, 4                                  ; 3DAB _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 3DAE _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 3DB1 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 3DB4 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 3DB7 _ 0F B6. 40, 03
        test    al, al                                  ; 3DBB _ 84. C0
        jnz     ?_241                                   ; 3DBD _ 75, 17
        cmp     byte [ebp-4H], -6                       ; 3DBF _ 80. 7D, FC, FA
        jnz     ?_240                                   ; 3DC3 _ 75, 07
        mov     eax, dword [ebp+8H]                     ; 3DC5 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 3DC8 _ C6. 40, 03, 01
?_240:  mov     eax, 0                                  ; 3DCC _ B8, 00000000
        jmp     ?_248                                   ; 3DD1 _ E9, 0000010F

?_241:  mov     eax, dword [ebp+8H]                     ; 3DD6 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 3DD9 _ 0F B6. 40, 03
        cmp     al, 1                                   ; 3DDD _ 3C, 01
        jnz     ?_243                                   ; 3DDF _ 75, 28
        movzx   eax, byte [ebp-4H]                      ; 3DE1 _ 0F B6. 45, FC
        and     eax, 0C8H                               ; 3DE5 _ 25, 000000C8
        cmp     eax, 8                                  ; 3DEA _ 83. F8, 08
        jnz     ?_242                                   ; 3DED _ 75, 10
        mov     edx, dword [ebp+8H]                     ; 3DEF _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 3DF2 _ 0F B6. 45, FC
        mov     byte [edx], al                          ; 3DF6 _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 3DF8 _ 8B. 45, 08
        mov     byte [eax+3H], 2                        ; 3DFB _ C6. 40, 03, 02
?_242:  mov     eax, 0                                  ; 3DFF _ B8, 00000000
        jmp     ?_248                                   ; 3E04 _ E9, 000000DC

?_243:  mov     eax, dword [ebp+8H]                     ; 3E09 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 3E0C _ 0F B6. 40, 03
        cmp     al, 2                                   ; 3E10 _ 3C, 02
        jnz     ?_244                                   ; 3E12 _ 75, 1B
        mov     edx, dword [ebp+8H]                     ; 3E14 _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 3E17 _ 0F B6. 45, FC
        mov     byte [edx+1H], al                       ; 3E1B _ 88. 42, 01
        mov     eax, dword [ebp+8H]                     ; 3E1E _ 8B. 45, 08
        mov     byte [eax+3H], 3                        ; 3E21 _ C6. 40, 03, 03
        mov     eax, 0                                  ; 3E25 _ B8, 00000000
        jmp     ?_248                                   ; 3E2A _ E9, 000000B6

?_244:  mov     eax, dword [ebp+8H]                     ; 3E2F _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 3E32 _ 0F B6. 40, 03
        cmp     al, 3                                   ; 3E36 _ 3C, 03
        jne     ?_247                                   ; 3E38 _ 0F 85, 000000A2
        mov     edx, dword [ebp+8H]                     ; 3E3E _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 3E41 _ 0F B6. 45, FC
        mov     byte [edx+2H], al                       ; 3E45 _ 88. 42, 02
        mov     eax, dword [ebp+8H]                     ; 3E48 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 3E4B _ C6. 40, 03, 01
        mov     eax, dword [ebp+8H]                     ; 3E4F _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 3E52 _ 0F B6. 00
        movzx   eax, al                                 ; 3E55 _ 0F B6. C0
        and     eax, 07H                                ; 3E58 _ 83. E0, 07
        mov     edx, eax                                ; 3E5B _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3E5D _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 3E60 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 3E63 _ 8B. 45, 08
        movzx   eax, byte [eax+1H]                      ; 3E66 _ 0F B6. 40, 01
        movzx   eax, al                                 ; 3E6A _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 3E6D _ 8B. 55, 08
        mov     dword [edx+4H], eax                     ; 3E70 _ 89. 42, 04
        mov     eax, dword [ebp+8H]                     ; 3E73 _ 8B. 45, 08
        movzx   eax, byte [eax+2H]                      ; 3E76 _ 0F B6. 40, 02
        movzx   eax, al                                 ; 3E7A _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 3E7D _ 8B. 55, 08
        mov     dword [edx+8H], eax                     ; 3E80 _ 89. 42, 08
        mov     eax, dword [ebp+8H]                     ; 3E83 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 3E86 _ 0F B6. 00
        movzx   eax, al                                 ; 3E89 _ 0F B6. C0
        and     eax, 10H                                ; 3E8C _ 83. E0, 10
        test    eax, eax                                ; 3E8F _ 85. C0
        jz      ?_245                                   ; 3E91 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 3E93 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 3E96 _ 8B. 40, 04
        or      eax, 0FFFFFF00H                         ; 3E99 _ 0D, FFFFFF00
        mov     edx, eax                                ; 3E9E _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3EA0 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 3EA3 _ 89. 50, 04
?_245:  mov     eax, dword [ebp+8H]                     ; 3EA6 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 3EA9 _ 0F B6. 00
        movzx   eax, al                                 ; 3EAC _ 0F B6. C0
        and     eax, 20H                                ; 3EAF _ 83. E0, 20
        test    eax, eax                                ; 3EB2 _ 85. C0
        jz      ?_246                                   ; 3EB4 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 3EB6 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3EB9 _ 8B. 40, 08
        or      eax, 0FFFFFF00H                         ; 3EBC _ 0D, FFFFFF00
        mov     edx, eax                                ; 3EC1 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3EC3 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 3EC6 _ 89. 50, 08
?_246:  mov     eax, dword [ebp+8H]                     ; 3EC9 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3ECC _ 8B. 40, 08
        neg     eax                                     ; 3ECF _ F7. D8
        mov     edx, eax                                ; 3ED1 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3ED3 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 3ED6 _ 89. 50, 08
        mov     eax, 1                                  ; 3ED9 _ B8, 00000001
        jmp     ?_248                                   ; 3EDE _ EB, 05

?_247:  mov     eax, 4294967295                         ; 3EE0 _ B8, FFFFFFFF
?_248:  leave                                           ; 3EE5 _ C9
        ret                                             ; 3EE6 _ C3
; _mouse_decode End of function

_showMemoryInfo:; Function begin
        push    ebp                                     ; 3EE7 _ 55
        mov     ebp, esp                                ; 3EE8 _ 89. E5
        sub     esp, 72                                 ; 3EEA _ 83. EC, 48
        mov     dword [ebp-0CH], 0                      ; 3EED _ C7. 45, F4, 00000000
        mov     dword [ebp-10H], 0                      ; 3EF4 _ C7. 45, F0, 00000000
        mov     dword [ebp-14H], 104                    ; 3EFB _ C7. 45, EC, 00000068
        mov     dword [ebp-18H], 80                     ; 3F02 _ C7. 45, E8, 00000050
        mov     edx, dword [_ysize]                     ; 3F09 _ 8B. 15, 00000140(d)
        mov     eax, dword [ebp+0CH]                    ; 3F0F _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 3F12 _ 8B. 00
        mov     dword [esp+8H], edx                     ; 3F14 _ 89. 54 24, 08
        mov     edx, dword [ebp+1CH]                    ; 3F18 _ 8B. 55, 1C
        mov     dword [esp+4H], edx                     ; 3F1B _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3F1F _ 89. 04 24
        call    _init_screen8                           ; 3F22 _ E8, FFFFEE30
        mov     eax, dword [ebp+20H]                    ; 3F27 _ 8B. 45, 20
        movsx   eax, al                                 ; 3F2A _ 0F BE. C0
        mov     dword [esp+14H], ?_429                  ; 3F2D _ C7. 44 24, 14, 00000070(d)
        mov     dword [esp+10H], eax                    ; 3F35 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 3F39 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 3F3C _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 3F40 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 3F43 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 3F47 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 3F4A _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3F4E _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3F51 _ 89. 04 24
        call    _showString                             ; 3F54 _ E8, FFFFF20E
        mov     eax, dword [ebp+18H]                    ; 3F59 _ 8B. 45, 18
        mov     dword [esp], eax                        ; 3F5C _ 89. 04 24
        call    _intToHexStr                            ; 3F5F _ E8, FFFFFCBD
        mov     dword [ebp-1CH], eax                    ; 3F64 _ 89. 45, E4
        mov     eax, dword [ebp+20H]                    ; 3F67 _ 8B. 45, 20
        movsx   eax, al                                 ; 3F6A _ 0F BE. C0
        mov     edx, dword [ebp-1CH]                    ; 3F6D _ 8B. 55, E4
        mov     dword [esp+14H], edx                    ; 3F70 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 3F74 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 3F78 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 3F7B _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 3F7F _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 3F82 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 3F86 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 3F89 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3F8D _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3F90 _ 89. 04 24
        call    _showString                             ; 3F93 _ E8, FFFFF1CF
        add     dword [ebp-10H], 16                     ; 3F98 _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 3F9C _ 8B. 45, 20
        movsx   eax, al                                 ; 3F9F _ 0F BE. C0
        mov     dword [esp+14H], ?_430                  ; 3FA2 _ C7. 44 24, 14, 0000007A(d)
        mov     dword [esp+10H], eax                    ; 3FAA _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 3FAE _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 3FB1 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 3FB5 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 3FB8 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 3FBC _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 3FBF _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3FC3 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3FC6 _ 89. 04 24
        call    _showString                             ; 3FC9 _ E8, FFFFF199
        mov     eax, dword [ebp+10H]                    ; 3FCE _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 3FD1 _ 8B. 00
        mov     dword [esp], eax                        ; 3FD3 _ 89. 04 24
        call    _intToHexStr                            ; 3FD6 _ E8, FFFFFC46
        mov     dword [ebp-20H], eax                    ; 3FDB _ 89. 45, E0
        mov     eax, dword [ebp+20H]                    ; 3FDE _ 8B. 45, 20
        movsx   eax, al                                 ; 3FE1 _ 0F BE. C0
        mov     edx, dword [ebp-20H]                    ; 3FE4 _ 8B. 55, E0
        mov     dword [esp+14H], edx                    ; 3FE7 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 3FEB _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 3FEF _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 3FF2 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 3FF6 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 3FF9 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 3FFD _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 4000 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4004 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4007 _ 89. 04 24
        call    _showString                             ; 400A _ E8, FFFFF158
        add     dword [ebp-10H], 16                     ; 400F _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 4013 _ 8B. 45, 20
        movsx   eax, al                                 ; 4016 _ 0F BE. C0
        mov     dword [esp+14H], ?_431                  ; 4019 _ C7. 44 24, 14, 00000086(d)
        mov     dword [esp+10H], eax                    ; 4021 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 4025 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 4028 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 402C _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 402F _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 4033 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 4036 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 403A _ 8B. 45, 08
        mov     dword [esp], eax                        ; 403D _ 89. 04 24
        call    _showString                             ; 4040 _ E8, FFFFF122
        mov     eax, dword [ebp+10H]                    ; 4045 _ 8B. 45, 10
        mov     eax, dword [eax+4H]                     ; 4048 _ 8B. 40, 04
        mov     dword [esp], eax                        ; 404B _ 89. 04 24
        call    _intToHexStr                            ; 404E _ E8, FFFFFBCE
        mov     dword [ebp-24H], eax                    ; 4053 _ 89. 45, DC
        mov     eax, dword [ebp+20H]                    ; 4056 _ 8B. 45, 20
        movsx   eax, al                                 ; 4059 _ 0F BE. C0
        mov     edx, dword [ebp-24H]                    ; 405C _ 8B. 55, DC
        mov     dword [esp+14H], edx                    ; 405F _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 4063 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 4067 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 406A _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 406E _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 4071 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 4075 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 4078 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 407C _ 8B. 45, 08
        mov     dword [esp], eax                        ; 407F _ 89. 04 24
        call    _showString                             ; 4082 _ E8, FFFFF0E0
        add     dword [ebp-10H], 16                     ; 4087 _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 408B _ 8B. 45, 20
        movsx   eax, al                                 ; 408E _ 0F BE. C0
        mov     dword [esp+14H], ?_432                  ; 4091 _ C7. 44 24, 14, 00000092(d)
        mov     dword [esp+10H], eax                    ; 4099 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 409D _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 40A0 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 40A4 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 40A7 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 40AB _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 40AE _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 40B2 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 40B5 _ 89. 04 24
        call    _showString                             ; 40B8 _ E8, FFFFF0AA
        mov     eax, dword [ebp+10H]                    ; 40BD _ 8B. 45, 10
        mov     eax, dword [eax+8H]                     ; 40C0 _ 8B. 40, 08
        mov     dword [esp], eax                        ; 40C3 _ 89. 04 24
        call    _intToHexStr                            ; 40C6 _ E8, FFFFFB56
        mov     dword [ebp-28H], eax                    ; 40CB _ 89. 45, D8
        mov     eax, dword [ebp+20H]                    ; 40CE _ 8B. 45, 20
        movsx   eax, al                                 ; 40D1 _ 0F BE. C0
        mov     edx, dword [ebp-28H]                    ; 40D4 _ 8B. 55, D8
        mov     dword [esp+14H], edx                    ; 40D7 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 40DB _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 40DF _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 40E2 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 40E6 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 40E9 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 40ED _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 40F0 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 40F4 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 40F7 _ 89. 04 24
        call    _showString                             ; 40FA _ E8, FFFFF068
        nop                                             ; 40FF _ 90
        leave                                           ; 4100 _ C9
        ret                                             ; 4101 _ C3
; _showMemoryInfo End of function

_message_box:; Function begin
        push    ebp                                     ; 4102 _ 55
        mov     ebp, esp                                ; 4103 _ 89. E5
        sub     esp, 56                                 ; 4105 _ 83. EC, 38
        mov     eax, dword [ebp+8H]                     ; 4108 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 410B _ 89. 04 24
        call    _sheet_alloc                            ; 410E _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 4113 _ 89. 45, F4
        mov     eax, dword [_memman]                    ; 4116 _ A1, 00000000(d)
        mov     dword [esp+4H], 10880                   ; 411B _ C7. 44 24, 04, 00002A80
        mov     dword [esp], eax                        ; 4123 _ 89. 04 24
        call    _memman_alloc_4k                        ; 4126 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 412B _ 89. 45, F0
        mov     dword [esp+10H], -1                     ; 412E _ C7. 44 24, 10, FFFFFFFF
        mov     dword [esp+0CH], 68                     ; 4136 _ C7. 44 24, 0C, 00000044
        mov     dword [esp+8H], 160                     ; 413E _ C7. 44 24, 08, 000000A0
        mov     eax, dword [ebp-10H]                    ; 4146 _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 4149 _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 414D _ 8B. 45, F4
        mov     dword [esp], eax                        ; 4150 _ 89. 04 24
        call    _sheet_setbuf                           ; 4153 _ E8, 00000000(rel)
        mov     dword [esp+0CH], 1                      ; 4158 _ C7. 44 24, 0C, 00000001
        mov     eax, dword [ebp+0CH]                    ; 4160 _ 8B. 45, 0C
        mov     dword [esp+8H], eax                     ; 4163 _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 4167 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 416A _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 416E _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4171 _ 89. 04 24
        call    _make_window8                           ; 4174 _ E8, 00000074
        mov     dword [esp+14H], 7                      ; 4179 _ C7. 44 24, 14, 00000007
        mov     dword [esp+10H], 16                     ; 4181 _ C7. 44 24, 10, 00000010
        mov     dword [esp+0CH], 144                    ; 4189 _ C7. 44 24, 0C, 00000090
        mov     dword [esp+8H], 28                      ; 4191 _ C7. 44 24, 08, 0000001C
        mov     dword [esp+4H], 8                       ; 4199 _ C7. 44 24, 04, 00000008
        mov     eax, dword [ebp-0CH]                    ; 41A1 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 41A4 _ 89. 04 24
        call    _make_textbox8                          ; 41A7 _ E8, 00000444
        mov     dword [esp+0CH], 172                    ; 41AC _ C7. 44 24, 0C, 000000AC
        mov     dword [esp+8H], 260                     ; 41B4 _ C7. 44 24, 08, 00000104
        mov     eax, dword [ebp-0CH]                    ; 41BC _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 41BF _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 41C3 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 41C6 _ 89. 04 24
        call    _sheet_slide                            ; 41C9 _ E8, 00000000(rel)
        mov     dword [esp+8H], 2                       ; 41CE _ C7. 44 24, 08, 00000002
        mov     eax, dword [ebp-0CH]                    ; 41D6 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 41D9 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 41DD _ 8B. 45, 08
        mov     dword [esp], eax                        ; 41E0 _ 89. 04 24
        call    _sheet_updown                           ; 41E3 _ E8, 00000000(rel)
        mov     eax, dword [ebp-0CH]                    ; 41E8 _ 8B. 45, F4
        leave                                           ; 41EB _ C9
        ret                                             ; 41EC _ C3
; _message_box End of function

_make_window8:; Function begin
        push    ebp                                     ; 41ED _ 55
        mov     ebp, esp                                ; 41EE _ 89. E5
        push    ebx                                     ; 41F0 _ 53
        sub     esp, 68                                 ; 41F1 _ 83. EC, 44
        mov     eax, dword [ebp+14H]                    ; 41F4 _ 8B. 45, 14
        mov     byte [ebp-1CH], al                      ; 41F7 _ 88. 45, E4
        mov     eax, dword [ebp+0CH]                    ; 41FA _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 41FD _ 8B. 40, 04
        mov     dword [ebp-0CH], eax                    ; 4200 _ 89. 45, F4
        mov     eax, dword [ebp+0CH]                    ; 4203 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 4206 _ 8B. 40, 08
        mov     dword [ebp-10H], eax                    ; 4209 _ 89. 45, F0
        mov     eax, dword [ebp-0CH]                    ; 420C _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 420F _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 4212 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 4215 _ 8B. 00
        mov     dword [esp+18H], 0                      ; 4217 _ C7. 44 24, 18, 00000000
        mov     dword [esp+14H], edx                    ; 421F _ 89. 54 24, 14
        mov     dword [esp+10H], 0                      ; 4223 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 422B _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 4233 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-0CH]                    ; 423B _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 423E _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 4242 _ 89. 04 24
        call    _boxfill8                               ; 4245 _ E8, FFFFF5EA
        mov     eax, dword [ebp-0CH]                    ; 424A _ 8B. 45, F4
        lea     edx, [eax-2H]                           ; 424D _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 4250 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 4253 _ 8B. 00
        mov     dword [esp+18H], 1                      ; 4255 _ C7. 44 24, 18, 00000001
        mov     dword [esp+14H], edx                    ; 425D _ 89. 54 24, 14
        mov     dword [esp+10H], 1                      ; 4261 _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], 1                      ; 4269 _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 7                       ; 4271 _ C7. 44 24, 08, 00000007
        mov     edx, dword [ebp-0CH]                    ; 4279 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 427C _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 4280 _ 89. 04 24
        call    _boxfill8                               ; 4283 _ E8, FFFFF5AC
        mov     eax, dword [ebp-10H]                    ; 4288 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 428B _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 428E _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 4291 _ 8B. 00
        mov     dword [esp+18H], edx                    ; 4293 _ 89. 54 24, 18
        mov     dword [esp+14H], 0                      ; 4297 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], 0                      ; 429F _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 42A7 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 42AF _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-0CH]                    ; 42B7 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 42BA _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 42BE _ 89. 04 24
        call    _boxfill8                               ; 42C1 _ E8, FFFFF56E
        mov     eax, dword [ebp-10H]                    ; 42C6 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 42C9 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 42CC _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 42CF _ 8B. 00
        mov     dword [esp+18H], edx                    ; 42D1 _ 89. 54 24, 18
        mov     dword [esp+14H], 1                      ; 42D5 _ C7. 44 24, 14, 00000001
        mov     dword [esp+10H], 1                      ; 42DD _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], 1                      ; 42E5 _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 7                       ; 42ED _ C7. 44 24, 08, 00000007
        mov     edx, dword [ebp-0CH]                    ; 42F5 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 42F8 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 42FC _ 89. 04 24
        call    _boxfill8                               ; 42FF _ E8, FFFFF530
        mov     eax, dword [ebp-10H]                    ; 4304 _ 8B. 45, F0
        lea     ebx, [eax-2H]                           ; 4307 _ 8D. 58, FE
        mov     eax, dword [ebp-0CH]                    ; 430A _ 8B. 45, F4
        lea     ecx, [eax-2H]                           ; 430D _ 8D. 48, FE
        mov     eax, dword [ebp-0CH]                    ; 4310 _ 8B. 45, F4
        lea     edx, [eax-2H]                           ; 4313 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 4316 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 4319 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 431B _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 431F _ 89. 4C 24, 14
        mov     dword [esp+10H], 1                      ; 4323 _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], edx                    ; 432B _ 89. 54 24, 0C
        mov     dword [esp+8H], 15                      ; 432F _ C7. 44 24, 08, 0000000F
        mov     edx, dword [ebp-0CH]                    ; 4337 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 433A _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 433E _ 89. 04 24
        call    _boxfill8                               ; 4341 _ E8, FFFFF4EE
        mov     eax, dword [ebp-10H]                    ; 4346 _ 8B. 45, F0
        lea     ebx, [eax-1H]                           ; 4349 _ 8D. 58, FF
        mov     eax, dword [ebp-0CH]                    ; 434C _ 8B. 45, F4
        lea     ecx, [eax-1H]                           ; 434F _ 8D. 48, FF
        mov     eax, dword [ebp-0CH]                    ; 4352 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 4355 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 4358 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 435B _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 435D _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 4361 _ 89. 4C 24, 14
        mov     dword [esp+10H], 0                      ; 4365 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], edx                    ; 436D _ 89. 54 24, 0C
        mov     dword [esp+8H], 0                       ; 4371 _ C7. 44 24, 08, 00000000
        mov     edx, dword [ebp-0CH]                    ; 4379 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 437C _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 4380 _ 89. 04 24
        call    _boxfill8                               ; 4383 _ E8, FFFFF4AC
        mov     eax, dword [ebp-10H]                    ; 4388 _ 8B. 45, F0
        lea     ecx, [eax-3H]                           ; 438B _ 8D. 48, FD
        mov     eax, dword [ebp-0CH]                    ; 438E _ 8B. 45, F4
        lea     edx, [eax-3H]                           ; 4391 _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 4394 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 4397 _ 8B. 00
        mov     dword [esp+18H], ecx                    ; 4399 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 439D _ 89. 54 24, 14
        mov     dword [esp+10H], 2                      ; 43A1 _ C7. 44 24, 10, 00000002
        mov     dword [esp+0CH], 2                      ; 43A9 _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 8                       ; 43B1 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-0CH]                    ; 43B9 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 43BC _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 43C0 _ 89. 04 24
        call    _boxfill8                               ; 43C3 _ E8, FFFFF46C
        mov     eax, dword [ebp-0CH]                    ; 43C8 _ 8B. 45, F4
        lea     edx, [eax-4H]                           ; 43CB _ 8D. 50, FC
        mov     eax, dword [ebp+0CH]                    ; 43CE _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 43D1 _ 8B. 00
        mov     dword [esp+18H], 20                     ; 43D3 _ C7. 44 24, 18, 00000014
        mov     dword [esp+14H], edx                    ; 43DB _ 89. 54 24, 14
        mov     dword [esp+10H], 3                      ; 43DF _ C7. 44 24, 10, 00000003
        mov     dword [esp+0CH], 3                      ; 43E7 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 12                      ; 43EF _ C7. 44 24, 08, 0000000C
        mov     edx, dword [ebp-0CH]                    ; 43F7 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 43FA _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 43FE _ 89. 04 24
        call    _boxfill8                               ; 4401 _ E8, FFFFF42E
        mov     eax, dword [ebp-10H]                    ; 4406 _ 8B. 45, F0
        lea     ebx, [eax-2H]                           ; 4409 _ 8D. 58, FE
        mov     eax, dword [ebp-0CH]                    ; 440C _ 8B. 45, F4
        lea     ecx, [eax-2H]                           ; 440F _ 8D. 48, FE
        mov     eax, dword [ebp-10H]                    ; 4412 _ 8B. 45, F0
        lea     edx, [eax-2H]                           ; 4415 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 4418 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 441B _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 441D _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 4421 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 4425 _ 89. 54 24, 10
        mov     dword [esp+0CH], 1                      ; 4429 _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 15                      ; 4431 _ C7. 44 24, 08, 0000000F
        mov     edx, dword [ebp-0CH]                    ; 4439 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 443C _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 4440 _ 89. 04 24
        call    _boxfill8                               ; 4443 _ E8, FFFFF3EC
        mov     eax, dword [ebp-10H]                    ; 4448 _ 8B. 45, F0
        lea     ebx, [eax-1H]                           ; 444B _ 8D. 58, FF
        mov     eax, dword [ebp-0CH]                    ; 444E _ 8B. 45, F4
        lea     ecx, [eax-1H]                           ; 4451 _ 8D. 48, FF
        mov     eax, dword [ebp-10H]                    ; 4454 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 4457 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 445A _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 445D _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 445F _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 4463 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 4467 _ 89. 54 24, 10
        mov     dword [esp+0CH], 0                      ; 446B _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 4473 _ C7. 44 24, 08, 00000000
        mov     edx, dword [ebp-0CH]                    ; 447B _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 447E _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 4482 _ 89. 04 24
        call    _boxfill8                               ; 4485 _ E8, FFFFF3AA
        movsx   eax, byte [ebp-1CH]                     ; 448A _ 0F BE. 45, E4
        mov     dword [esp+0CH], eax                    ; 448E _ 89. 44 24, 0C
        mov     eax, dword [ebp+10H]                    ; 4492 _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 4495 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 4499 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 449C _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 44A0 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 44A3 _ 89. 04 24
        call    _make_wtitle8                           ; 44A6 _ E8, 00000007
        nop                                             ; 44AB _ 90
        add     esp, 68                                 ; 44AC _ 83. C4, 44
        pop     ebx                                     ; 44AF _ 5B
        pop     ebp                                     ; 44B0 _ 5D
        ret                                             ; 44B1 _ C3
; _make_window8 End of function

_make_wtitle8:; Function begin
        push    ebp                                     ; 44B2 _ 55
        mov     ebp, esp                                ; 44B3 _ 89. E5
        push    ebx                                     ; 44B5 _ 53
        sub     esp, 68                                 ; 44B6 _ 83. EC, 44
        mov     eax, dword [ebp+14H]                    ; 44B9 _ 8B. 45, 14
        mov     byte [ebp-1CH], al                      ; 44BC _ 88. 45, E4
        cmp     byte [ebp-1CH], 0                       ; 44BF _ 80. 7D, E4, 00
        jz      ?_249                                   ; 44C3 _ 74, 0A
        mov     byte [ebp-12H], 7                       ; 44C5 _ C6. 45, EE, 07
        mov     byte [ebp-13H], 12                      ; 44C9 _ C6. 45, ED, 0C
        jmp     ?_250                                   ; 44CD _ EB, 08

?_249:  mov     byte [ebp-12H], 8                       ; 44CF _ C6. 45, EE, 08
        mov     byte [ebp-13H], 15                      ; 44D3 _ C6. 45, ED, 0F
?_250:  mov     eax, dword [ebp+0CH]                    ; 44D7 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 44DA _ 8B. 40, 04
        lea     ebx, [eax-4H]                           ; 44DD _ 8D. 58, FC
        movzx   eax, byte [ebp-13H]                     ; 44E0 _ 0F B6. 45, ED
        movzx   eax, al                                 ; 44E4 _ 0F B6. C0
        mov     edx, dword [ebp+0CH]                    ; 44E7 _ 8B. 55, 0C
        mov     ecx, dword [edx+4H]                     ; 44EA _ 8B. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 44ED _ 8B. 55, 0C
        mov     edx, dword [edx]                        ; 44F0 _ 8B. 12
        mov     dword [esp+18H], 20                     ; 44F2 _ C7. 44 24, 18, 00000014
        mov     dword [esp+14H], ebx                    ; 44FA _ 89. 5C 24, 14
        mov     dword [esp+10H], 3                      ; 44FE _ C7. 44 24, 10, 00000003
        mov     dword [esp+0CH], 3                      ; 4506 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], eax                     ; 450E _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 4512 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 4516 _ 89. 14 24
        call    _boxfill8                               ; 4519 _ E8, FFFFF316
        movsx   eax, byte [ebp-12H]                     ; 451E _ 0F BE. 45, EE
        mov     edx, dword [ebp+10H]                    ; 4522 _ 8B. 55, 10
        mov     dword [esp+14H], edx                    ; 4525 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 4529 _ 89. 44 24, 10
        mov     dword [esp+0CH], 4                      ; 452D _ C7. 44 24, 0C, 00000004
        mov     dword [esp+8H], 24                      ; 4535 _ C7. 44 24, 08, 00000018
        mov     eax, dword [ebp+0CH]                    ; 453D _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 4540 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4544 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4547 _ 89. 04 24
        call    _showString                             ; 454A _ E8, FFFFEC18
        mov     dword [ebp-10H], 0                      ; 454F _ C7. 45, F0, 00000000
        jmp     ?_258                                   ; 4556 _ E9, 00000084

?_251:  mov     dword [ebp-0CH], 0                      ; 455B _ C7. 45, F4, 00000000
        jmp     ?_257                                   ; 4562 _ EB, 71

?_252:  mov     eax, dword [ebp-10H]                    ; 4564 _ 8B. 45, F0
        shl     eax, 4                                  ; 4567 _ C1. E0, 04
        mov     edx, eax                                ; 456A _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 456C _ 8B. 45, F4
        add     eax, edx                                ; 456F _ 01. D0
        add     eax, _closebtn.2855                     ; 4571 _ 05, 00000280(d)
        movzx   eax, byte [eax]                         ; 4576 _ 0F B6. 00
        mov     byte [ebp-11H], al                      ; 4579 _ 88. 45, EF
        cmp     byte [ebp-11H], 64                      ; 457C _ 80. 7D, EF, 40
        jnz     ?_253                                   ; 4580 _ 75, 06
        mov     byte [ebp-11H], 0                       ; 4582 _ C6. 45, EF, 00
        jmp     ?_256                                   ; 4586 _ EB, 1C

?_253:  cmp     byte [ebp-11H], 36                      ; 4588 _ 80. 7D, EF, 24
        jnz     ?_254                                   ; 458C _ 75, 06
        mov     byte [ebp-11H], 15                      ; 458E _ C6. 45, EF, 0F
        jmp     ?_256                                   ; 4592 _ EB, 10

?_254:  cmp     byte [ebp-11H], 81                      ; 4594 _ 80. 7D, EF, 51
        jnz     ?_255                                   ; 4598 _ 75, 06
        mov     byte [ebp-11H], 8                       ; 459A _ C6. 45, EF, 08
        jmp     ?_256                                   ; 459E _ EB, 04

?_255:  mov     byte [ebp-11H], 7                       ; 45A0 _ C6. 45, EF, 07
?_256:  mov     eax, dword [ebp+0CH]                    ; 45A4 _ 8B. 45, 0C
        mov     ecx, dword [eax]                        ; 45A7 _ 8B. 08
        mov     eax, dword [ebp-10H]                    ; 45A9 _ 8B. 45, F0
        lea     edx, [eax+5H]                           ; 45AC _ 8D. 50, 05
        mov     eax, dword [ebp+0CH]                    ; 45AF _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 45B2 _ 8B. 40, 04
        imul    eax, edx                                ; 45B5 _ 0F AF. C2
        mov     edx, dword [ebp+0CH]                    ; 45B8 _ 8B. 55, 0C
        mov     edx, dword [edx+4H]                     ; 45BB _ 8B. 52, 04
        lea     ebx, [edx-15H]                          ; 45BE _ 8D. 5A, EB
        mov     edx, dword [ebp-0CH]                    ; 45C1 _ 8B. 55, F4
        add     edx, ebx                                ; 45C4 _ 01. DA
        add     eax, edx                                ; 45C6 _ 01. D0
        lea     edx, [ecx+eax]                          ; 45C8 _ 8D. 14 01
        movzx   eax, byte [ebp-11H]                     ; 45CB _ 0F B6. 45, EF
        mov     byte [edx], al                          ; 45CF _ 88. 02
        add     dword [ebp-0CH], 1                      ; 45D1 _ 83. 45, F4, 01
?_257:  cmp     dword [ebp-0CH], 15                     ; 45D5 _ 83. 7D, F4, 0F
        jle     ?_252                                   ; 45D9 _ 7E, 89
        add     dword [ebp-10H], 1                      ; 45DB _ 83. 45, F0, 01
?_258:  cmp     dword [ebp-10H], 13                     ; 45DF _ 83. 7D, F0, 0D
        jle     ?_251                                   ; 45E3 _ 0F 8E, FFFFFF72
        nop                                             ; 45E9 _ 90
        add     esp, 68                                 ; 45EA _ 83. C4, 44
        pop     ebx                                     ; 45ED _ 5B
        pop     ebp                                     ; 45EE _ 5D
        ret                                             ; 45EF _ C3
; _make_wtitle8 End of function

_make_textbox8:; Function begin
        push    ebp                                     ; 45F0 _ 55
        mov     ebp, esp                                ; 45F1 _ 89. E5
        push    edi                                     ; 45F3 _ 57
        push    esi                                     ; 45F4 _ 56
        push    ebx                                     ; 45F5 _ 53
        sub     esp, 44                                 ; 45F6 _ 83. EC, 2C
        mov     edx, dword [ebp+0CH]                    ; 45F9 _ 8B. 55, 0C
        mov     eax, dword [ebp+14H]                    ; 45FC _ 8B. 45, 14
        add     eax, edx                                ; 45FF _ 01. D0
        mov     dword [ebp-10H], eax                    ; 4601 _ 89. 45, F0
        mov     edx, dword [ebp+10H]                    ; 4604 _ 8B. 55, 10
        mov     eax, dword [ebp+18H]                    ; 4607 _ 8B. 45, 18
        add     eax, edx                                ; 460A _ 01. D0
        mov     dword [ebp-14H], eax                    ; 460C _ 89. 45, EC
        mov     eax, dword [ebp+10H]                    ; 460F _ 8B. 45, 10
        lea     edi, [eax-3H]                           ; 4612 _ 8D. 78, FD
        mov     eax, dword [ebp-10H]                    ; 4615 _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 4618 _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 461B _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 461E _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 4621 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 4624 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 4627 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 462A _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 462D _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 4630 _ 8B. 00
        mov     dword [esp+18H], edi                    ; 4632 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 4636 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 463A _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 463E _ 89. 4C 24, 0C
        mov     dword [esp+8H], 15                      ; 4642 _ C7. 44 24, 08, 0000000F
        mov     dword [esp+4H], edx                     ; 464A _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 464E _ 89. 04 24
        call    _boxfill8                               ; 4651 _ E8, FFFFF1DE
        mov     eax, dword [ebp-14H]                    ; 4656 _ 8B. 45, EC
        lea     edi, [eax+1H]                           ; 4659 _ 8D. 78, 01
        mov     eax, dword [ebp+0CH]                    ; 465C _ 8B. 45, 0C
        lea     esi, [eax-3H]                           ; 465F _ 8D. 70, FD
        mov     eax, dword [ebp+10H]                    ; 4662 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 4665 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 4668 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 466B _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 466E _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 4671 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 4674 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 4677 _ 8B. 00
        mov     dword [esp+18H], edi                    ; 4679 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 467D _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 4681 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 4685 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 15                      ; 4689 _ C7. 44 24, 08, 0000000F
        mov     dword [esp+4H], edx                     ; 4691 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 4695 _ 89. 04 24
        call    _boxfill8                               ; 4698 _ E8, FFFFF197
        mov     eax, dword [ebp-14H]                    ; 469D _ 8B. 45, EC
        lea     edi, [eax+2H]                           ; 46A0 _ 8D. 78, 02
        mov     eax, dword [ebp-10H]                    ; 46A3 _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 46A6 _ 8D. 70, 01
        mov     eax, dword [ebp-14H]                    ; 46A9 _ 8B. 45, EC
        lea     ebx, [eax+2H]                           ; 46AC _ 8D. 58, 02
        mov     eax, dword [ebp+0CH]                    ; 46AF _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 46B2 _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 46B5 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 46B8 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 46BB _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 46BE _ 8B. 00
        mov     dword [esp+18H], edi                    ; 46C0 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 46C4 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 46C8 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 46CC _ 89. 4C 24, 0C
        mov     dword [esp+8H], 7                       ; 46D0 _ C7. 44 24, 08, 00000007
        mov     dword [esp+4H], edx                     ; 46D8 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 46DC _ 89. 04 24
        call    _boxfill8                               ; 46DF _ E8, FFFFF150
        mov     eax, dword [ebp-14H]                    ; 46E4 _ 8B. 45, EC
        lea     edi, [eax+2H]                           ; 46E7 _ 8D. 78, 02
        mov     eax, dword [ebp-10H]                    ; 46EA _ 8B. 45, F0
        lea     esi, [eax+2H]                           ; 46ED _ 8D. 70, 02
        mov     eax, dword [ebp+10H]                    ; 46F0 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 46F3 _ 8D. 58, FD
        mov     eax, dword [ebp-10H]                    ; 46F6 _ 8B. 45, F0
        lea     ecx, [eax+2H]                           ; 46F9 _ 8D. 48, 02
        mov     eax, dword [ebp+8H]                     ; 46FC _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 46FF _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 4702 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 4705 _ 8B. 00
        mov     dword [esp+18H], edi                    ; 4707 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 470B _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 470F _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 4713 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 7                       ; 4717 _ C7. 44 24, 08, 00000007
        mov     dword [esp+4H], edx                     ; 471F _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 4723 _ 89. 04 24
        call    _boxfill8                               ; 4726 _ E8, FFFFF109
        mov     eax, dword [ebp+10H]                    ; 472B _ 8B. 45, 10
        lea     esi, [eax-2H]                           ; 472E _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 4731 _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 4734 _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 4737 _ 8B. 45, 0C
        lea     ecx, [eax-1H]                           ; 473A _ 8D. 48, FF
        mov     eax, dword [ebp+8H]                     ; 473D _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 4740 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 4743 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 4746 _ 8B. 00
        mov     dword [esp+18H], esi                    ; 4748 _ 89. 74 24, 18
        mov     esi, dword [ebp-10H]                    ; 474C _ 8B. 75, F0
        mov     dword [esp+14H], esi                    ; 474F _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 4753 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 4757 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 0                       ; 475B _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 4763 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 4767 _ 89. 04 24
        call    _boxfill8                               ; 476A _ E8, FFFFF0C5
        mov     eax, dword [ebp+0CH]                    ; 476F _ 8B. 45, 0C
        lea     esi, [eax-2H]                           ; 4772 _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 4775 _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 4778 _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 477B _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 477E _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 4781 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 4784 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 4787 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 478A _ 8B. 00
        mov     edi, dword [ebp-14H]                    ; 478C _ 8B. 7D, EC
        mov     dword [esp+18H], edi                    ; 478F _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 4793 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 4797 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 479B _ 89. 4C 24, 0C
        mov     dword [esp+8H], 0                       ; 479F _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 47A7 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 47AB _ 89. 04 24
        call    _boxfill8                               ; 47AE _ E8, FFFFF081
        mov     eax, dword [ebp-14H]                    ; 47B3 _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 47B6 _ 8D. 70, 01
        mov     eax, dword [ebp-14H]                    ; 47B9 _ 8B. 45, EC
        lea     ebx, [eax+1H]                           ; 47BC _ 8D. 58, 01
        mov     eax, dword [ebp+0CH]                    ; 47BF _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 47C2 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 47C5 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 47C8 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 47CB _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 47CE _ 8B. 00
        mov     dword [esp+18H], esi                    ; 47D0 _ 89. 74 24, 18
        mov     esi, dword [ebp-10H]                    ; 47D4 _ 8B. 75, F0
        mov     dword [esp+14H], esi                    ; 47D7 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 47DB _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 47DF _ 89. 4C 24, 0C
        mov     dword [esp+8H], 8                       ; 47E3 _ C7. 44 24, 08, 00000008
        mov     dword [esp+4H], edx                     ; 47EB _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 47EF _ 89. 04 24
        call    _boxfill8                               ; 47F2 _ E8, FFFFF03D
        mov     eax, dword [ebp-14H]                    ; 47F7 _ 8B. 45, EC
        lea     edi, [eax+1H]                           ; 47FA _ 8D. 78, 01
        mov     eax, dword [ebp-10H]                    ; 47FD _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 4800 _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 4803 _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 4806 _ 8D. 58, FE
        mov     eax, dword [ebp-10H]                    ; 4809 _ 8B. 45, F0
        lea     ecx, [eax+1H]                           ; 480C _ 8D. 48, 01
        mov     eax, dword [ebp+8H]                     ; 480F _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 4812 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 4815 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 4818 _ 8B. 00
        mov     dword [esp+18H], edi                    ; 481A _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 481E _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 4822 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 4826 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 8                       ; 482A _ C7. 44 24, 08, 00000008
        mov     dword [esp+4H], edx                     ; 4832 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 4836 _ 89. 04 24
        call    _boxfill8                               ; 4839 _ E8, FFFFEFF6
        mov     eax, dword [ebp+10H]                    ; 483E _ 8B. 45, 10
        lea     esi, [eax-1H]                           ; 4841 _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 4844 _ 8B. 45, 0C
        lea     ebx, [eax-1H]                           ; 4847 _ 8D. 58, FF
        mov     eax, dword [ebp+1CH]                    ; 484A _ 8B. 45, 1C
        movzx   eax, al                                 ; 484D _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 4850 _ 8B. 55, 08
        mov     ecx, dword [edx+4H]                     ; 4853 _ 8B. 4A, 04
        mov     edx, dword [ebp+8H]                     ; 4856 _ 8B. 55, 08
        mov     edx, dword [edx]                        ; 4859 _ 8B. 12
        mov     edi, dword [ebp-14H]                    ; 485B _ 8B. 7D, EC
        mov     dword [esp+18H], edi                    ; 485E _ 89. 7C 24, 18
        mov     edi, dword [ebp-10H]                    ; 4862 _ 8B. 7D, F0
        mov     dword [esp+14H], edi                    ; 4865 _ 89. 7C 24, 14
        mov     dword [esp+10H], esi                    ; 4869 _ 89. 74 24, 10
        mov     dword [esp+0CH], ebx                    ; 486D _ 89. 5C 24, 0C
        mov     dword [esp+8H], eax                     ; 4871 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 4875 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 4879 _ 89. 14 24
        call    _boxfill8                               ; 487C _ E8, FFFFEFB3
        nop                                             ; 4881 _ 90
        add     esp, 44                                 ; 4882 _ 83. C4, 2C
        pop     ebx                                     ; 4885 _ 5B
        pop     esi                                     ; 4886 _ 5E
        pop     edi                                     ; 4887 _ 5F
        pop     ebp                                     ; 4888 _ 5D
        ret                                             ; 4889 _ C3
; _make_textbox8 End of function

_file_loadfile:; Function begin
        push    ebp                                     ; 488A _ 55
        mov     ebp, esp                                ; 488B _ 89. E5
        sub     esp, 56                                 ; 488D _ 83. EC, 38
        mov     dword [ebp-0CH], 88064                  ; 4890 _ C7. 45, F4, 00015800
        mov     eax, dword [_memman]                    ; 4897 _ A1, 00000000(d)
        mov     dword [esp+4H], 13                      ; 489C _ C7. 44 24, 04, 0000000D
        mov     dword [esp], eax                        ; 48A4 _ 89. 04 24
        call    _memman_alloc                           ; 48A7 _ E8, 00000000(rel)
        mov     dword [ebp-1CH], eax                    ; 48AC _ 89. 45, E4
        jmp     ?_271                                   ; 48AF _ E9, 00000143

?_259:  mov     dword [ebp-10H], 0                      ; 48B4 _ C7. 45, F0, 00000000
        jmp     ?_261                                   ; 48BB _ EB, 0F

?_260:  mov     edx, dword [ebp-10H]                    ; 48BD _ 8B. 55, F0
        mov     eax, dword [ebp-1CH]                    ; 48C0 _ 8B. 45, E4
        add     eax, edx                                ; 48C3 _ 01. D0
        mov     byte [eax], 0                           ; 48C5 _ C6. 00, 00
        add     dword [ebp-10H], 1                      ; 48C8 _ 83. 45, F0, 01
?_261:  cmp     dword [ebp-10H], 11                     ; 48CC _ 83. 7D, F0, 0B
        jle     ?_260                                   ; 48D0 _ 7E, EB
        mov     dword [ebp-10H], 0                      ; 48D2 _ C7. 45, F0, 00000000
        jmp     ?_263                                   ; 48D9 _ EB, 2A

?_262:  mov     edx, dword [ebp-0CH]                    ; 48DB _ 8B. 55, F4
        mov     eax, dword [ebp-10H]                    ; 48DE _ 8B. 45, F0
        add     eax, edx                                ; 48E1 _ 01. D0
        movzx   eax, byte [eax]                         ; 48E3 _ 0F B6. 00
        test    al, al                                  ; 48E6 _ 84. C0
        jz      ?_264                                   ; 48E8 _ 74, 23
        mov     edx, dword [ebp-0CH]                    ; 48EA _ 8B. 55, F4
        mov     eax, dword [ebp-10H]                    ; 48ED _ 8B. 45, F0
        add     eax, edx                                ; 48F0 _ 01. D0
        movzx   ecx, byte [eax]                         ; 48F2 _ 0F B6. 08
        mov     edx, dword [ebp-10H]                    ; 48F5 _ 8B. 55, F0
        mov     eax, dword [ebp-1CH]                    ; 48F8 _ 8B. 45, E4
        add     eax, edx                                ; 48FB _ 01. D0
        mov     edx, ecx                                ; 48FD _ 89. CA
        mov     byte [eax], dl                          ; 48FF _ 88. 10
        add     dword [ebp-10H], 1                      ; 4901 _ 83. 45, F0, 01
?_263:  cmp     dword [ebp-10H], 7                      ; 4905 _ 83. 7D, F0, 07
        jle     ?_262                                   ; 4909 _ 7E, D0
        jmp     ?_265                                   ; 490B _ EB, 01

?_264:  nop                                             ; 490D _ 90
?_265:  mov     dword [ebp-14H], 0                      ; 490E _ C7. 45, EC, 00000000
        mov     edx, dword [ebp-10H]                    ; 4915 _ 8B. 55, F0
        mov     eax, dword [ebp-1CH]                    ; 4918 _ 8B. 45, E4
        add     eax, edx                                ; 491B _ 01. D0
        mov     byte [eax], 46                          ; 491D _ C6. 00, 2E
        add     dword [ebp-10H], 1                      ; 4920 _ 83. 45, F0, 01
        mov     dword [ebp-14H], 0                      ; 4924 _ C7. 45, EC, 00000000
        jmp     ?_267                                   ; 492B _ EB, 22

?_266:  mov     edx, dword [ebp-0CH]                    ; 492D _ 8B. 55, F4
        mov     eax, dword [ebp-14H]                    ; 4930 _ 8B. 45, EC
        add     eax, edx                                ; 4933 _ 01. D0
        add     eax, 8                                  ; 4935 _ 83. C0, 08
        movzx   ecx, byte [eax]                         ; 4938 _ 0F B6. 08
        mov     edx, dword [ebp-10H]                    ; 493B _ 8B. 55, F0
        mov     eax, dword [ebp-1CH]                    ; 493E _ 8B. 45, E4
        add     eax, edx                                ; 4941 _ 01. D0
        mov     edx, ecx                                ; 4943 _ 89. CA
        mov     byte [eax], dl                          ; 4945 _ 88. 10
        add     dword [ebp-10H], 1                      ; 4947 _ 83. 45, F0, 01
        add     dword [ebp-14H], 1                      ; 494B _ 83. 45, EC, 01
?_267:  cmp     dword [ebp-14H], 2                      ; 494F _ 83. 7D, EC, 02
        jle     ?_266                                   ; 4953 _ 7E, D8
        mov     eax, dword [ebp-1CH]                    ; 4955 _ 8B. 45, E4
        mov     dword [esp+4H], eax                     ; 4958 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 495C _ 8B. 45, 08
        mov     dword [esp], eax                        ; 495F _ 89. 04 24
        call    _strcmp                                 ; 4962 _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 4967 _ 83. F8, 01
        jne     ?_270                                   ; 496A _ 0F 85, 00000083
        mov     eax, dword [ebp-0CH]                    ; 4970 _ 8B. 45, F4
        mov     edx, dword [eax+1CH]                    ; 4973 _ 8B. 50, 1C
        mov     eax, dword [_memman]                    ; 4976 _ A1, 00000000(d)
        mov     dword [esp+4H], edx                     ; 497B _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 497F _ 89. 04 24
        call    _memman_alloc_4k                        ; 4982 _ E8, 00000000(rel)
        mov     edx, eax                                ; 4987 _ 89. C2
        mov     eax, dword [ebp+0CH]                    ; 4989 _ 8B. 45, 0C
        mov     dword [eax], edx                        ; 498C _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 498E _ 8B. 45, F4
        mov     eax, dword [eax+1CH]                    ; 4991 _ 8B. 40, 1C
        mov     edx, eax                                ; 4994 _ 89. C2
        mov     eax, dword [ebp+0CH]                    ; 4996 _ 8B. 45, 0C
        mov     dword [eax+8H], edx                     ; 4999 _ 89. 50, 08
        mov     dword [ebp-20H], 97280                  ; 499C _ C7. 45, E0, 00017C00
        mov     eax, dword [ebp-0CH]                    ; 49A3 _ 8B. 45, F4
        movzx   eax, word [eax+1AH]                     ; 49A6 _ 0F B7. 40, 1A
        movzx   eax, ax                                 ; 49AA _ 0F B7. C0
        shl     eax, 9                                  ; 49AD _ C1. E0, 09
        add     dword [ebp-20H], eax                    ; 49B0 _ 01. 45, E0
        mov     eax, dword [ebp-0CH]                    ; 49B3 _ 8B. 45, F4
        mov     eax, dword [eax+1CH]                    ; 49B6 _ 8B. 40, 1C
        mov     dword [ebp-24H], eax                    ; 49B9 _ 89. 45, DC
        mov     dword [ebp-18H], 0                      ; 49BC _ C7. 45, E8, 00000000
        mov     dword [ebp-18H], 0                      ; 49C3 _ C7. 45, E8, 00000000
        jmp     ?_269                                   ; 49CA _ EB, 1D

?_268:  mov     edx, dword [ebp-18H]                    ; 49CC _ 8B. 55, E8
        mov     eax, dword [ebp-20H]                    ; 49CF _ 8B. 45, E0
        add     eax, edx                                ; 49D2 _ 01. D0
        movzx   ecx, byte [eax]                         ; 49D4 _ 0F B6. 08
        mov     eax, dword [ebp+0CH]                    ; 49D7 _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 49DA _ 8B. 10
        mov     eax, dword [ebp-18H]                    ; 49DC _ 8B. 45, E8
        add     eax, edx                                ; 49DF _ 01. D0
        mov     edx, ecx                                ; 49E1 _ 89. CA
        mov     byte [eax], dl                          ; 49E3 _ 88. 10
        add     dword [ebp-18H], 1                      ; 49E5 _ 83. 45, E8, 01
?_269:  mov     eax, dword [ebp-18H]                    ; 49E9 _ 8B. 45, E8
        cmp     eax, dword [ebp-24H]                    ; 49EC _ 3B. 45, DC
        jl      ?_268                                   ; 49EF _ 7C, DB
        jmp     ?_272                                   ; 49F1 _ EB, 12

?_270:  add     dword [ebp-0CH], 32                     ; 49F3 _ 83. 45, F4, 20
?_271:  mov     eax, dword [ebp-0CH]                    ; 49F7 _ 8B. 45, F4
        movzx   eax, byte [eax]                         ; 49FA _ 0F B6. 00
        test    al, al                                  ; 49FD _ 84. C0
        jne     ?_259                                   ; 49FF _ 0F 85, FFFFFEAF
?_272:  mov     edx, dword [ebp-1CH]                    ; 4A05 _ 8B. 55, E4
        mov     eax, dword [_memman]                    ; 4A08 _ A1, 00000000(d)
        mov     dword [esp+8H], 13                      ; 4A0D _ C7. 44 24, 08, 0000000D
        mov     dword [esp+4H], edx                     ; 4A15 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 4A19 _ 89. 04 24
        call    _memman_free                            ; 4A1C _ E8, 00000000(rel)
        nop                                             ; 4A21 _ 90
        leave                                           ; 4A22 _ C9
        ret                                             ; 4A23 _ C3
; _file_loadfile End of function

_intHandlerForStackOverFlow:; Function begin
        push    ebp                                     ; 4A24 _ 55
        mov     ebp, esp                                ; 4A25 _ 89. E5
        sub     esp, 40                                 ; 4A27 _ 83. EC, 28
        call    _task_now                               ; 4A2A _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 4A2F _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 4A32 _ 8B. 45, F4
        mov     dword [eax+98H], 8                      ; 4A35 _ C7. 80, 00000098, 00000008
        mov     dword [esp], ?_433                      ; 4A3F _ C7. 04 24, 0000009E(d)
        call    _cons_putstr                            ; 4A46 _ E8, FFFFD69D
        mov     eax, dword [ebp-0CH]                    ; 4A4B _ 8B. 45, F4
        mov     dword [eax+98H], 8                      ; 4A4E _ C7. 80, 00000098, 00000008
        mov     eax, dword [ebp-0CH]                    ; 4A58 _ 8B. 45, F4
        mov     eax, dword [eax+9CH]                    ; 4A5B _ 8B. 80, 0000009C
        lea     edx, [eax+10H]                          ; 4A61 _ 8D. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 4A64 _ 8B. 45, F4
        mov     dword [eax+9CH], edx                    ; 4A67 _ 89. 90, 0000009C
        mov     dword [esp], ?_434                      ; 4A6D _ C7. 04 24, 000000A5(d)
        call    _cons_putstr                            ; 4A74 _ E8, FFFFD66F
        mov     eax, dword [ebp-0CH]                    ; 4A79 _ 8B. 45, F4
        mov     dword [eax+98H], 8                      ; 4A7C _ C7. 80, 00000098, 00000008
        mov     eax, dword [ebp-0CH]                    ; 4A86 _ 8B. 45, F4
        mov     eax, dword [eax+9CH]                    ; 4A89 _ 8B. 80, 0000009C
        lea     edx, [eax+10H]                          ; 4A8F _ 8D. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 4A92 _ 8B. 45, F4
        mov     dword [eax+9CH], edx                    ; 4A95 _ 89. 90, 0000009C
        mov     eax, dword [ebp+8H]                     ; 4A9B _ 8B. 45, 08
        add     eax, 44                                 ; 4A9E _ 83. C0, 2C
        mov     eax, dword [eax]                        ; 4AA1 _ 8B. 00
        mov     dword [esp], eax                        ; 4AA3 _ 89. 04 24
        call    _intToHexStr                            ; 4AA6 _ E8, FFFFF176
        mov     dword [ebp-10H], eax                    ; 4AAB _ 89. 45, F0
        mov     dword [esp], ?_435                      ; 4AAE _ C7. 04 24, 000000B5(d)
        call    _cons_putstr                            ; 4AB5 _ E8, FFFFD62E
        mov     eax, dword [ebp-10H]                    ; 4ABA _ 8B. 45, F0
        mov     dword [esp], eax                        ; 4ABD _ 89. 04 24
        call    _cons_putstr                            ; 4AC0 _ E8, FFFFD623
        mov     eax, dword [ebp-0CH]                    ; 4AC5 _ 8B. 45, F4
        mov     dword [eax+98H], 8                      ; 4AC8 _ C7. 80, 00000098, 00000008
        mov     eax, dword [ebp-0CH]                    ; 4AD2 _ 8B. 45, F4
        mov     eax, dword [eax+9CH]                    ; 4AD5 _ 8B. 80, 0000009C
        lea     edx, [eax+10H]                          ; 4ADB _ 8D. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 4ADE _ 8B. 45, F4
        mov     dword [eax+9CH], edx                    ; 4AE1 _ 89. 90, 0000009C
        mov     eax, dword [ebp-0CH]                    ; 4AE7 _ 8B. 45, F4
        add     eax, 48                                 ; 4AEA _ 83. C0, 30
        leave                                           ; 4AED _ C9
        ret                                             ; 4AEE _ C3
; _intHandlerForStackOverFlow End of function

_intHandlerForException:; Function begin
        push    ebp                                     ; 4AEF _ 55
        mov     ebp, esp                                ; 4AF0 _ 89. E5
        sub     esp, 40                                 ; 4AF2 _ 83. EC, 28
        call    _task_now                               ; 4AF5 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 4AFA _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 4AFD _ 8B. 45, F4
        mov     dword [eax+98H], 8                      ; 4B00 _ C7. 80, 00000098, 00000008
        mov     dword [esp], ?_436                      ; 4B0A _ C7. 04 24, 000000BC(d)
        call    _cons_putstr                            ; 4B11 _ E8, FFFFD5D2
        mov     eax, dword [ebp-0CH]                    ; 4B16 _ 8B. 45, F4
        mov     dword [eax+98H], 8                      ; 4B19 _ C7. 80, 00000098, 00000008
        mov     eax, dword [ebp-0CH]                    ; 4B23 _ 8B. 45, F4
        mov     eax, dword [eax+9CH]                    ; 4B26 _ 8B. 80, 0000009C
        lea     edx, [eax+10H]                          ; 4B2C _ 8D. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 4B2F _ 8B. 45, F4
        mov     dword [eax+9CH], edx                    ; 4B32 _ 89. 90, 0000009C
        mov     dword [esp], ?_437                      ; 4B38 _ C7. 04 24, 000000C4(d)
        call    _cons_putstr                            ; 4B3F _ E8, FFFFD5A4
        mov     eax, dword [ebp-0CH]                    ; 4B44 _ 8B. 45, F4
        mov     eax, dword [eax+9CH]                    ; 4B47 _ 8B. 80, 0000009C
        lea     edx, [eax+10H]                          ; 4B4D _ 8D. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 4B50 _ 8B. 45, F4
        mov     dword [eax+9CH], edx                    ; 4B53 _ 89. 90, 0000009C
        mov     eax, dword [ebp-0CH]                    ; 4B59 _ 8B. 45, F4
        mov     dword [eax+98H], 8                      ; 4B5C _ C7. 80, 00000098, 00000008
        mov     eax, dword [ebp-0CH]                    ; 4B66 _ 8B. 45, F4
        add     eax, 48                                 ; 4B69 _ 83. C0, 30
        leave                                           ; 4B6C _ C9
        ret                                             ; 4B6D _ C3
; _intHandlerForException End of function

        nop                                             ; 4B6E _ 90
        nop                                             ; 4B6F _ 90


_shtctl_init:
        push    ebp                                     ; 4B70 _ 55
        mov     ebp, esp                                ; 4B71 _ 89. E5
        sub     esp, 40                                 ; 4B73 _ 83. EC, 28
        mov     dword [esp+4H], 9232                    ; 4B76 _ C7. 44 24, 04, 00002410
        mov     eax, dword [ebp+8H]                     ; 4B7E _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4B81 _ 89. 04 24
        call    _memman_alloc_4k                        ; 4B84 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 4B89 _ 89. 45, F0
        cmp     dword [ebp-10H], 0                      ; 4B8C _ 83. 7D, F0, 00
        jnz     ?_273                                   ; 4B90 _ 75, 0A
        mov     eax, 0                                  ; 4B92 _ B8, 00000000
        jmp     ?_277                                   ; 4B97 _ E9, 000000A3

?_273:  mov     eax, dword [ebp+10H]                    ; 4B9C _ 8B. 45, 10
        imul    eax, dword [ebp+14H]                    ; 4B9F _ 0F AF. 45, 14
        mov     dword [esp+4H], eax                     ; 4BA3 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4BA7 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4BAA _ 89. 04 24
        call    _memman_alloc_4k                        ; 4BAD _ E8, 00000000(rel)
        mov     edx, eax                                ; 4BB2 _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 4BB4 _ 8B. 45, F0
        mov     dword [eax+4H], edx                     ; 4BB7 _ 89. 50, 04
        mov     eax, dword [ebp-10H]                    ; 4BBA _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 4BBD _ 8B. 40, 04
        test    eax, eax                                ; 4BC0 _ 85. C0
        jnz     ?_274                                   ; 4BC2 _ 75, 21
        mov     eax, dword [ebp-10H]                    ; 4BC4 _ 8B. 45, F0
        mov     dword [esp+8H], 9232                    ; 4BC7 _ C7. 44 24, 08, 00002410
        mov     dword [esp+4H], eax                     ; 4BCF _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4BD3 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4BD6 _ 89. 04 24
        call    _memman_free_4k                         ; 4BD9 _ E8, 00000000(rel)
        mov     eax, 0                                  ; 4BDE _ B8, 00000000
        jmp     ?_277                                   ; 4BE3 _ EB, 5A

?_274:  mov     eax, dword [ebp-10H]                    ; 4BE5 _ 8B. 45, F0
        mov     edx, dword [ebp+0CH]                    ; 4BE8 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 4BEB _ 89. 10
        mov     eax, dword [ebp-10H]                    ; 4BED _ 8B. 45, F0
        mov     edx, dword [ebp+10H]                    ; 4BF0 _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 4BF3 _ 89. 50, 08
        mov     eax, dword [ebp-10H]                    ; 4BF6 _ 8B. 45, F0
        mov     edx, dword [ebp+14H]                    ; 4BF9 _ 8B. 55, 14
        mov     dword [eax+0CH], edx                    ; 4BFC _ 89. 50, 0C
        mov     eax, dword [ebp-10H]                    ; 4BFF _ 8B. 45, F0
        mov     dword [eax+10H], -1                     ; 4C02 _ C7. 40, 10, FFFFFFFF
        mov     dword [ebp-0CH], 0                      ; 4C09 _ C7. 45, F4, 00000000
        jmp     ?_276                                   ; 4C10 _ EB, 21

?_275:  mov     ecx, dword [ebp-10H]                    ; 4C12 _ 8B. 4D, F0
        mov     edx, dword [ebp-0CH]                    ; 4C15 _ 8B. 55, F4
        mov     eax, edx                                ; 4C18 _ 89. D0
        shl     eax, 3                                  ; 4C1A _ C1. E0, 03
        add     eax, edx                                ; 4C1D _ 01. D0
        shl     eax, 2                                  ; 4C1F _ C1. E0, 02
        add     eax, ecx                                ; 4C22 _ 01. C8
        add     eax, 1072                               ; 4C24 _ 05, 00000430
        mov     dword [eax], 0                          ; 4C29 _ C7. 00, 00000000
        add     dword [ebp-0CH], 1                      ; 4C2F _ 83. 45, F4, 01
?_276:  cmp     dword [ebp-0CH], 255                    ; 4C33 _ 81. 7D, F4, 000000FF
        jle     ?_275                                   ; 4C3A _ 7E, D6
        mov     eax, dword [ebp-10H]                    ; 4C3C _ 8B. 45, F0
?_277:  leave                                           ; 4C3F _ C9
        ret                                             ; 4C40 _ C3

_sheet_alloc:; Function begin
        push    ebp                                     ; 4C41 _ 55
        mov     ebp, esp                                ; 4C42 _ 89. E5
        sub     esp, 24                                 ; 4C44 _ 83. EC, 18
        mov     dword [ebp-0CH], 0                      ; 4C47 _ C7. 45, F4, 00000000
        jmp     ?_280                                   ; 4C4E _ EB, 75

?_278:  mov     ecx, dword [ebp+8H]                     ; 4C50 _ 8B. 4D, 08
        mov     edx, dword [ebp-0CH]                    ; 4C53 _ 8B. 55, F4
        mov     eax, edx                                ; 4C56 _ 89. D0
        shl     eax, 3                                  ; 4C58 _ C1. E0, 03
        add     eax, edx                                ; 4C5B _ 01. D0
        shl     eax, 2                                  ; 4C5D _ C1. E0, 02
        add     eax, ecx                                ; 4C60 _ 01. C8
        add     eax, 1072                               ; 4C62 _ 05, 00000430
        mov     eax, dword [eax]                        ; 4C67 _ 8B. 00
        test    eax, eax                                ; 4C69 _ 85. C0
        jnz     ?_279                                   ; 4C6B _ 75, 54
        mov     edx, dword [ebp-0CH]                    ; 4C6D _ 8B. 55, F4
        mov     eax, edx                                ; 4C70 _ 89. D0
        shl     eax, 3                                  ; 4C72 _ C1. E0, 03
        add     eax, edx                                ; 4C75 _ 01. D0
        shl     eax, 2                                  ; 4C77 _ C1. E0, 02
        lea     edx, [eax+410H]                         ; 4C7A _ 8D. 90, 00000410
        mov     eax, dword [ebp+8H]                     ; 4C80 _ 8B. 45, 08
        add     eax, edx                                ; 4C83 _ 01. D0
        add     eax, 4                                  ; 4C85 _ 83. C0, 04
        mov     dword [ebp-10H], eax                    ; 4C88 _ 89. 45, F0
        mov     eax, dword [ebp+8H]                     ; 4C8B _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 4C8E _ 8B. 55, F4
        add     edx, 4                                  ; 4C91 _ 83. C2, 04
        mov     ecx, dword [ebp-10H]                    ; 4C94 _ 8B. 4D, F0
        mov     dword [eax+edx*4+4H], ecx               ; 4C97 _ 89. 4C 90, 04
        mov     eax, dword [ebp-10H]                    ; 4C9B _ 8B. 45, F0
        mov     dword [eax+1CH], 1                      ; 4C9E _ C7. 40, 1C, 00000001
        mov     eax, dword [ebp-10H]                    ; 4CA5 _ 8B. 45, F0
        mov     dword [eax+18H], -1                     ; 4CA8 _ C7. 40, 18, FFFFFFFF
        call    _task_now                               ; 4CAF _ E8, 00000000(rel)
        mov     edx, eax                                ; 4CB4 _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 4CB6 _ 8B. 45, F0
        mov     dword [eax+20H], edx                    ; 4CB9 _ 89. 50, 20
        mov     eax, dword [ebp-10H]                    ; 4CBC _ 8B. 45, F0
        jmp     ?_281                                   ; 4CBF _ EB, 12

?_279:  add     dword [ebp-0CH], 1                      ; 4CC1 _ 83. 45, F4, 01
?_280:  cmp     dword [ebp-0CH], 255                    ; 4CC5 _ 81. 7D, F4, 000000FF
        jle     ?_278                                   ; 4CCC _ 7E, 82
        mov     eax, 0                                  ; 4CCE _ B8, 00000000
?_281:  leave                                           ; 4CD3 _ C9
        ret                                             ; 4CD4 _ C3
; _sheet_alloc End of function

_sheet_setbuf:; Function begin
        push    ebp                                     ; 4CD5 _ 55
        mov     ebp, esp                                ; 4CD6 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 4CD8 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 4CDB _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 4CDE _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 4CE0 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 4CE3 _ 8B. 55, 10
        mov     dword [eax+4H], edx                     ; 4CE6 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 4CE9 _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 4CEC _ 8B. 55, 14
        mov     dword [eax+8H], edx                     ; 4CEF _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 4CF2 _ 8B. 45, 08
        mov     edx, dword [ebp+18H]                    ; 4CF5 _ 8B. 55, 18
        mov     dword [eax+14H], edx                    ; 4CF8 _ 89. 50, 14
        nop                                             ; 4CFB _ 90
        pop     ebp                                     ; 4CFC _ 5D
        ret                                             ; 4CFD _ C3
; _sheet_setbuf End of function

_sheet_updown:; Function begin
        push    ebp                                     ; 4CFE _ 55
        mov     ebp, esp                                ; 4CFF _ 89. E5
        push    edi                                     ; 4D01 _ 57
        push    esi                                     ; 4D02 _ 56
        push    ebx                                     ; 4D03 _ 53
        sub     esp, 60                                 ; 4D04 _ 83. EC, 3C
        mov     eax, dword [ebp+0CH]                    ; 4D07 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 4D0A _ 8B. 40, 18
        mov     dword [ebp-20H], eax                    ; 4D0D _ 89. 45, E0
        mov     eax, dword [ebp+8H]                     ; 4D10 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 4D13 _ 8B. 40, 10
        add     eax, 1                                  ; 4D16 _ 83. C0, 01
        cmp     dword [ebp+10H], eax                    ; 4D19 _ 39. 45, 10
        jle     ?_282                                   ; 4D1C _ 7E, 0C
        mov     eax, dword [ebp+8H]                     ; 4D1E _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 4D21 _ 8B. 40, 10
        add     eax, 1                                  ; 4D24 _ 83. C0, 01
        mov     dword [ebp+10H], eax                    ; 4D27 _ 89. 45, 10
?_282:  cmp     dword [ebp+10H], -1                     ; 4D2A _ 83. 7D, 10, FF
        jge     ?_283                                   ; 4D2E _ 7D, 07
        mov     dword [ebp+10H], -1                     ; 4D30 _ C7. 45, 10, FFFFFFFF
?_283:  mov     eax, dword [ebp+0CH]                    ; 4D37 _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 4D3A _ 8B. 55, 10
        mov     dword [eax+18H], edx                    ; 4D3D _ 89. 50, 18
        mov     eax, dword [ebp-20H]                    ; 4D40 _ 8B. 45, E0
        cmp     eax, dword [ebp+10H]                    ; 4D43 _ 3B. 45, 10
        jle     ?_290                                   ; 4D46 _ 0F 8E, 00000212
        cmp     dword [ebp+10H], 0                      ; 4D4C _ 83. 7D, 10, 00
        js      ?_286                                   ; 4D50 _ 0F 88, 000000FE
        mov     eax, dword [ebp-20H]                    ; 4D56 _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 4D59 _ 89. 45, E4
        jmp     ?_285                                   ; 4D5C _ EB, 34

?_284:  mov     eax, dword [ebp-1CH]                    ; 4D5E _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 4D61 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 4D64 _ 8B. 45, 08
        add     edx, 4                                  ; 4D67 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 4D6A _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 4D6E _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 4D71 _ 8B. 55, E4
        add     edx, 4                                  ; 4D74 _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 4D77 _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 4D7B _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 4D7E _ 8B. 55, E4
        add     edx, 4                                  ; 4D81 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 4D84 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 4D88 _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 4D8B _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 4D8E _ 83. 6D, E4, 01
?_285:  mov     eax, dword [ebp-1CH]                    ; 4D92 _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 4D95 _ 3B. 45, 10
        jg      ?_284                                   ; 4D98 _ 7F, C4
        mov     eax, dword [ebp+8H]                     ; 4D9A _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 4D9D _ 8B. 55, 10
        add     edx, 4                                  ; 4DA0 _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 4DA3 _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 4DA6 _ 89. 4C 90, 04
        mov     eax, dword [ebp+10H]                    ; 4DAA _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 4DAD _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 4DB0 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 4DB3 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 4DB6 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 4DB9 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 4DBC _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 4DBF _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 4DC2 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 4DC5 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 4DC8 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 4DCB _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 4DCE _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 4DD1 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 4DD4 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 4DD7 _ 8B. 40, 0C
        mov     dword [esp+14H], esi                    ; 4DDA _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 4DDE _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 4DE2 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 4DE6 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 4DEA _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4DEE _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4DF1 _ 89. 04 24
        call    _sheet_refreshmap                       ; 4DF4 _ E8, 00000643
        mov     eax, dword [ebp+10H]                    ; 4DF9 _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 4DFC _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 4DFF _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 4E02 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 4E05 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 4E08 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 4E0B _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 4E0E _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 4E11 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 4E14 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 4E17 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 4E1A _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 4E1D _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 4E20 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 4E23 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 4E26 _ 8B. 40, 0C
        mov     edi, dword [ebp-20H]                    ; 4E29 _ 8B. 7D, E0
        mov     dword [esp+18H], edi                    ; 4E2C _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 4E30 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 4E34 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 4E38 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 4E3C _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 4E40 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4E44 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4E47 _ 89. 04 24
        call    _sheet_refreshsub                       ; 4E4A _ E8, 00000465
        jmp     ?_297                                   ; 4E4F _ E9, 0000027D

?_286:  mov     eax, dword [ebp+8H]                     ; 4E54 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 4E57 _ 8B. 40, 10
        cmp     dword [ebp-20H], eax                    ; 4E5A _ 39. 45, E0
        jge     ?_289                                   ; 4E5D _ 7D, 47
        mov     eax, dword [ebp-20H]                    ; 4E5F _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 4E62 _ 89. 45, E4
        jmp     ?_288                                   ; 4E65 _ EB, 34

?_287:  mov     eax, dword [ebp-1CH]                    ; 4E67 _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 4E6A _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 4E6D _ 8B. 45, 08
        add     edx, 4                                  ; 4E70 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 4E73 _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 4E77 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 4E7A _ 8B. 55, E4
        add     edx, 4                                  ; 4E7D _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 4E80 _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 4E84 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 4E87 _ 8B. 55, E4
        add     edx, 4                                  ; 4E8A _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 4E8D _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 4E91 _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 4E94 _ 89. 50, 18
        add     dword [ebp-1CH], 1                      ; 4E97 _ 83. 45, E4, 01
?_288:  mov     eax, dword [ebp+8H]                     ; 4E9B _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 4E9E _ 8B. 40, 10
        cmp     dword [ebp-1CH], eax                    ; 4EA1 _ 39. 45, E4
        jl      ?_287                                   ; 4EA4 _ 7C, C1
?_289:  mov     eax, dword [ebp+8H]                     ; 4EA6 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 4EA9 _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 4EAC _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 4EAF _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 4EB2 _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 4EB5 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 4EB8 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 4EBB _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 4EBE _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 4EC1 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 4EC4 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 4EC7 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 4ECA _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 4ECD _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 4ED0 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 4ED3 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 4ED6 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 4ED9 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 4EDC _ 8B. 40, 0C
        mov     dword [esp+14H], 0                      ; 4EDF _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], ebx                    ; 4EE7 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 4EEB _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 4EEF _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 4EF3 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4EF7 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4EFA _ 89. 04 24
        call    _sheet_refreshmap                       ; 4EFD _ E8, 0000053A
        mov     eax, dword [ebp-20H]                    ; 4F02 _ 8B. 45, E0
        lea     esi, [eax-1H]                           ; 4F05 _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 4F08 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 4F0B _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 4F0E _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 4F11 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 4F14 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 4F17 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 4F1A _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 4F1D _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 4F20 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 4F23 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 4F26 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 4F29 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 4F2C _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 4F2F _ 8B. 40, 0C
        mov     dword [esp+18H], esi                    ; 4F32 _ 89. 74 24, 18
        mov     dword [esp+14H], 0                      ; 4F36 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], ebx                    ; 4F3E _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 4F42 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 4F46 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 4F4A _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4F4E _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4F51 _ 89. 04 24
        call    _sheet_refreshsub                       ; 4F54 _ E8, 0000035B
        jmp     ?_297                                   ; 4F59 _ E9, 00000173

?_290:  mov     eax, dword [ebp-20H]                    ; 4F5E _ 8B. 45, E0
        cmp     eax, dword [ebp+10H]                    ; 4F61 _ 3B. 45, 10
        jge     ?_297                                   ; 4F64 _ 0F 8D, 00000167
        cmp     dword [ebp-20H], 0                      ; 4F6A _ 83. 7D, E0, 00
        js      ?_293                                   ; 4F6E _ 78, 56
        mov     eax, dword [ebp-20H]                    ; 4F70 _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 4F73 _ 89. 45, E4
        jmp     ?_292                                   ; 4F76 _ EB, 34

?_291:  mov     eax, dword [ebp-1CH]                    ; 4F78 _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 4F7B _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 4F7E _ 8B. 45, 08
        add     edx, 4                                  ; 4F81 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 4F84 _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 4F88 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 4F8B _ 8B. 55, E4
        add     edx, 4                                  ; 4F8E _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 4F91 _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 4F95 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 4F98 _ 8B. 55, E4
        add     edx, 4                                  ; 4F9B _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 4F9E _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 4FA2 _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 4FA5 _ 89. 50, 18
        add     dword [ebp-1CH], 1                      ; 4FA8 _ 83. 45, E4, 01
?_292:  mov     eax, dword [ebp-1CH]                    ; 4FAC _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 4FAF _ 3B. 45, 10
        jl      ?_291                                   ; 4FB2 _ 7C, C4
        mov     eax, dword [ebp+8H]                     ; 4FB4 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 4FB7 _ 8B. 55, 10
        add     edx, 4                                  ; 4FBA _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 4FBD _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 4FC0 _ 89. 4C 90, 04
        jmp     ?_296                                   ; 4FC4 _ EB, 6C

?_293:  mov     eax, dword [ebp+8H]                     ; 4FC6 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 4FC9 _ 8B. 40, 10
        mov     dword [ebp-1CH], eax                    ; 4FCC _ 89. 45, E4
        jmp     ?_295                                   ; 4FCF _ EB, 3A

?_294:  mov     eax, dword [ebp-1CH]                    ; 4FD1 _ 8B. 45, E4
        lea     ebx, [eax+1H]                           ; 4FD4 _ 8D. 58, 01
        mov     eax, dword [ebp+8H]                     ; 4FD7 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 4FDA _ 8B. 55, E4
        add     edx, 4                                  ; 4FDD _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 4FE0 _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 4FE4 _ 8B. 45, 08
        lea     edx, [ebx+4H]                           ; 4FE7 _ 8D. 53, 04
        mov     dword [eax+edx*4+4H], ecx               ; 4FEA _ 89. 4C 90, 04
        mov     eax, dword [ebp-1CH]                    ; 4FEE _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 4FF1 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 4FF4 _ 8B. 45, 08
        add     edx, 4                                  ; 4FF7 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 4FFA _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 4FFE _ 8B. 55, E4
        add     edx, 1                                  ; 5001 _ 83. C2, 01
        mov     dword [eax+18H], edx                    ; 5004 _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 5007 _ 83. 6D, E4, 01
?_295:  mov     eax, dword [ebp-1CH]                    ; 500B _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 500E _ 3B. 45, 10
        jge     ?_294                                   ; 5011 _ 7D, BE
        mov     eax, dword [ebp+8H]                     ; 5013 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 5016 _ 8B. 55, 10
        add     edx, 4                                  ; 5019 _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 501C _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 501F _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 5023 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 5026 _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 5029 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 502C _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 502F _ 89. 50, 10
?_296:  mov     eax, dword [ebp+0CH]                    ; 5032 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 5035 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 5038 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 503B _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 503E _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 5041 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 5044 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 5047 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 504A _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 504D _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 5050 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 5053 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 5056 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 5059 _ 8B. 40, 0C
        mov     esi, dword [ebp+10H]                    ; 505C _ 8B. 75, 10
        mov     dword [esp+14H], esi                    ; 505F _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 5063 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 5067 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 506B _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 506F _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 5073 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 5076 _ 89. 04 24
        call    _sheet_refreshmap                       ; 5079 _ E8, 000003BE
        mov     eax, dword [ebp+0CH]                    ; 507E _ 8B. 45, 0C
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
        mov     dword [esp+18H], esi                    ; 50AB _ 89. 74 24, 18
        mov     esi, dword [ebp+10H]                    ; 50AF _ 8B. 75, 10
        mov     dword [esp+14H], esi                    ; 50B2 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 50B6 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 50BA _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 50BE _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 50C2 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 50C6 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 50C9 _ 89. 04 24
        call    _sheet_refreshsub                       ; 50CC _ E8, 000001E3
?_297:  nop                                             ; 50D1 _ 90
        add     esp, 60                                 ; 50D2 _ 83. C4, 3C
        pop     ebx                                     ; 50D5 _ 5B
        pop     esi                                     ; 50D6 _ 5E
        pop     edi                                     ; 50D7 _ 5F
        pop     ebp                                     ; 50D8 _ 5D
        ret                                             ; 50D9 _ C3
; _sheet_updown End of function

_sheet_refresh:; Function begin
        push    ebp                                     ; 50DA _ 55
        mov     ebp, esp                                ; 50DB _ 89. E5
        push    edi                                     ; 50DD _ 57
        push    esi                                     ; 50DE _ 56
        push    ebx                                     ; 50DF _ 53
        sub     esp, 60                                 ; 50E0 _ 83. EC, 3C
        mov     eax, dword [ebp+0CH]                    ; 50E3 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 50E6 _ 8B. 40, 18
        test    eax, eax                                ; 50E9 _ 85. C0
        js      ?_298                                   ; 50EB _ 78, 61
        mov     eax, dword [ebp+0CH]                    ; 50ED _ 8B. 45, 0C
        mov     edi, dword [eax+18H]                    ; 50F0 _ 8B. 78, 18
        mov     eax, dword [ebp+0CH]                    ; 50F3 _ 8B. 45, 0C
        mov     esi, dword [eax+18H]                    ; 50F6 _ 8B. 70, 18
        mov     eax, dword [ebp+0CH]                    ; 50F9 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 50FC _ 8B. 50, 10
        mov     eax, dword [ebp+1CH]                    ; 50FF _ 8B. 45, 1C
        lea     ebx, [edx+eax]                          ; 5102 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 5105 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 5108 _ 8B. 50, 0C
        mov     eax, dword [ebp+18H]                    ; 510B _ 8B. 45, 18
        lea     ecx, [edx+eax]                          ; 510E _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 5111 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 5114 _ 8B. 50, 10
        mov     eax, dword [ebp+14H]                    ; 5117 _ 8B. 45, 14
        add     edx, eax                                ; 511A _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 511C _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 511F _ 8B. 40, 0C
        mov     dword [ebp-1CH], eax                    ; 5122 _ 89. 45, E4
        mov     eax, dword [ebp+10H]                    ; 5125 _ 8B. 45, 10
        add     eax, dword [ebp-1CH]                    ; 5128 _ 03. 45, E4
        mov     dword [esp+18H], edi                    ; 512B _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 512F _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 5133 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 5137 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 513B _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 513F _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 5143 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 5146 _ 89. 04 24
        call    _sheet_refreshsub                       ; 5149 _ E8, 00000166
?_298:  mov     eax, 0                                  ; 514E _ B8, 00000000
        add     esp, 60                                 ; 5153 _ 83. C4, 3C
        pop     ebx                                     ; 5156 _ 5B
        pop     esi                                     ; 5157 _ 5E
        pop     edi                                     ; 5158 _ 5F
        pop     ebp                                     ; 5159 _ 5D
        ret                                             ; 515A _ C3
; _sheet_refresh End of function

_sheet_slide:; Function begin
        push    ebp                                     ; 515B _ 55
        mov     ebp, esp                                ; 515C _ 89. E5
        push    esi                                     ; 515E _ 56
        push    ebx                                     ; 515F _ 53
        sub     esp, 48                                 ; 5160 _ 83. EC, 30
        mov     eax, dword [ebp+0CH]                    ; 5163 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 5166 _ 8B. 40, 0C
        mov     dword [ebp-0CH], eax                    ; 5169 _ 89. 45, F4
        mov     eax, dword [ebp+0CH]                    ; 516C _ 8B. 45, 0C
        mov     eax, dword [eax+10H]                    ; 516F _ 8B. 40, 10
        mov     dword [ebp-10H], eax                    ; 5172 _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 5175 _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 5178 _ 8B. 55, 10
        mov     dword [eax+0CH], edx                    ; 517B _ 89. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 517E _ 8B. 45, 0C
        mov     edx, dword [ebp+14H]                    ; 5181 _ 8B. 55, 14
        mov     dword [eax+10H], edx                    ; 5184 _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 5187 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 518A _ 8B. 40, 18
        test    eax, eax                                ; 518D _ 85. C0
        js      ?_299                                   ; 518F _ 0F 88, 00000117
        mov     eax, dword [ebp+0CH]                    ; 5195 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 5198 _ 8B. 50, 08
        mov     eax, dword [ebp-10H]                    ; 519B _ 8B. 45, F0
        add     edx, eax                                ; 519E _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 51A0 _ 8B. 45, 0C
        mov     ecx, dword [eax+4H]                     ; 51A3 _ 8B. 48, 04
        mov     eax, dword [ebp-0CH]                    ; 51A6 _ 8B. 45, F4
        add     eax, ecx                                ; 51A9 _ 01. C8
        mov     dword [esp+14H], 0                      ; 51AB _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], edx                    ; 51B3 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 51B7 _ 89. 44 24, 0C
        mov     eax, dword [ebp-10H]                    ; 51BB _ 8B. 45, F0
        mov     dword [esp+8H], eax                     ; 51BE _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 51C2 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 51C5 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 51C9 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 51CC _ 89. 04 24
        call    _sheet_refreshmap                       ; 51CF _ E8, 00000268
        mov     eax, dword [ebp+0CH]                    ; 51D4 _ 8B. 45, 0C
        mov     ecx, dword [eax+18H]                    ; 51D7 _ 8B. 48, 18
        mov     eax, dword [ebp+0CH]                    ; 51DA _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 51DD _ 8B. 50, 08
        mov     eax, dword [ebp+14H]                    ; 51E0 _ 8B. 45, 14
        add     edx, eax                                ; 51E3 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 51E5 _ 8B. 45, 0C
        mov     ebx, dword [eax+4H]                     ; 51E8 _ 8B. 58, 04
        mov     eax, dword [ebp+10H]                    ; 51EB _ 8B. 45, 10
        add     eax, ebx                                ; 51EE _ 01. D8
        mov     dword [esp+14H], ecx                    ; 51F0 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 51F4 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 51F8 _ 89. 44 24, 0C
        mov     eax, dword [ebp+14H]                    ; 51FC _ 8B. 45, 14
        mov     dword [esp+8H], eax                     ; 51FF _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 5203 _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 5206 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 520A _ 8B. 45, 08
        mov     dword [esp], eax                        ; 520D _ 89. 04 24
        call    _sheet_refreshmap                       ; 5210 _ E8, 00000227
        mov     eax, dword [ebp+0CH]                    ; 5215 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 5218 _ 8B. 40, 18
        lea     ecx, [eax-1H]                           ; 521B _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 521E _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 5221 _ 8B. 50, 08
        mov     eax, dword [ebp-10H]                    ; 5224 _ 8B. 45, F0
        add     edx, eax                                ; 5227 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 5229 _ 8B. 45, 0C
        mov     ebx, dword [eax+4H]                     ; 522C _ 8B. 58, 04
        mov     eax, dword [ebp-0CH]                    ; 522F _ 8B. 45, F4
        add     eax, ebx                                ; 5232 _ 01. D8
        mov     dword [esp+18H], ecx                    ; 5234 _ 89. 4C 24, 18
        mov     dword [esp+14H], 0                      ; 5238 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], edx                    ; 5240 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 5244 _ 89. 44 24, 0C
        mov     eax, dword [ebp-10H]                    ; 5248 _ 8B. 45, F0
        mov     dword [esp+8H], eax                     ; 524B _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 524F _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 5252 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 5256 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 5259 _ 89. 04 24
        call    _sheet_refreshsub                       ; 525C _ E8, 00000053
        mov     eax, dword [ebp+0CH]                    ; 5261 _ 8B. 45, 0C
        mov     ebx, dword [eax+18H]                    ; 5264 _ 8B. 58, 18
        mov     eax, dword [ebp+0CH]                    ; 5267 _ 8B. 45, 0C
        mov     ecx, dword [eax+18H]                    ; 526A _ 8B. 48, 18
        mov     eax, dword [ebp+0CH]                    ; 526D _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 5270 _ 8B. 50, 08
        mov     eax, dword [ebp+14H]                    ; 5273 _ 8B. 45, 14
        add     edx, eax                                ; 5276 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 5278 _ 8B. 45, 0C
        mov     esi, dword [eax+4H]                     ; 527B _ 8B. 70, 04
        mov     eax, dword [ebp+10H]                    ; 527E _ 8B. 45, 10
        add     eax, esi                                ; 5281 _ 01. F0
        mov     dword [esp+18H], ebx                    ; 5283 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 5287 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 528B _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 528F _ 89. 44 24, 0C
        mov     eax, dword [ebp+14H]                    ; 5293 _ 8B. 45, 14
        mov     dword [esp+8H], eax                     ; 5296 _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 529A _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 529D _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 52A1 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 52A4 _ 89. 04 24
        call    _sheet_refreshsub                       ; 52A7 _ E8, 00000008
?_299:  nop                                             ; 52AC _ 90
        add     esp, 48                                 ; 52AD _ 83. C4, 30
        pop     ebx                                     ; 52B0 _ 5B
        pop     esi                                     ; 52B1 _ 5E
        pop     ebp                                     ; 52B2 _ 5D
        ret                                             ; 52B3 _ C3
; _sheet_slide End of function

_sheet_refreshsub:; Function begin
        push    ebp                                     ; 52B4 _ 55
        mov     ebp, esp                                ; 52B5 _ 89. E5
        sub     esp, 48                                 ; 52B7 _ 83. EC, 30
        mov     eax, dword [ebp+8H]                     ; 52BA _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 52BD _ 8B. 00
        mov     dword [ebp-10H], eax                    ; 52BF _ 89. 45, F0
        mov     eax, dword [ebp+8H]                     ; 52C2 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 52C5 _ 8B. 40, 04
        mov     dword [ebp-14H], eax                    ; 52C8 _ 89. 45, EC
        cmp     dword [ebp+0CH], 0                      ; 52CB _ 83. 7D, 0C, 00
        jns     ?_300                                   ; 52CF _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 52D1 _ C7. 45, 0C, 00000000
?_300:  cmp     dword [ebp+10H], 8                      ; 52D8 _ 83. 7D, 10, 08
        jg      ?_301                                   ; 52DC _ 7F, 07
        mov     dword [ebp+10H], 0                      ; 52DE _ C7. 45, 10, 00000000
?_301:  mov     eax, dword [ebp+8H]                     ; 52E5 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 52E8 _ 8B. 40, 08
        cmp     dword [ebp+14H], eax                    ; 52EB _ 39. 45, 14
        jle     ?_302                                   ; 52EE _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 52F0 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 52F3 _ 8B. 40, 08
        mov     dword [ebp+14H], eax                    ; 52F6 _ 89. 45, 14
?_302:  mov     eax, dword [ebp+8H]                     ; 52F9 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 52FC _ 8B. 40, 0C
        cmp     dword [ebp+18H], eax                    ; 52FF _ 39. 45, 18
        jle     ?_303                                   ; 5302 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 5304 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 5307 _ 8B. 40, 0C
        mov     dword [ebp+18H], eax                    ; 530A _ 89. 45, 18
?_303:  mov     eax, dword [ebp+1CH]                    ; 530D _ 8B. 45, 1C
        mov     dword [ebp-4H], eax                     ; 5310 _ 89. 45, FC
        jmp     ?_310                                   ; 5313 _ E9, 00000115

?_304:  mov     eax, dword [ebp+8H]                     ; 5318 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 531B _ 8B. 55, FC
        add     edx, 4                                  ; 531E _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 5321 _ 8B. 44 90, 04
        mov     dword [ebp-18H], eax                    ; 5325 _ 89. 45, E8
        mov     eax, dword [ebp-18H]                    ; 5328 _ 8B. 45, E8
        mov     eax, dword [eax]                        ; 532B _ 8B. 00
        mov     dword [ebp-1CH], eax                    ; 532D _ 89. 45, E4
        mov     eax, dword [ebp+8H]                     ; 5330 _ 8B. 45, 08
        add     eax, 1044                               ; 5333 _ 05, 00000414
        mov     edx, dword [ebp-18H]                    ; 5338 _ 8B. 55, E8
        sub     edx, eax                                ; 533B _ 29. C2
        mov     eax, edx                                ; 533D _ 89. D0
        sar     eax, 2                                  ; 533F _ C1. F8, 02
        imul    eax, eax, 954437177                     ; 5342 _ 69. C0, 38E38E39
        mov     byte [ebp-1DH], al                      ; 5348 _ 88. 45, E3
        mov     dword [ebp-0CH], 0                      ; 534B _ C7. 45, F4, 00000000
        jmp     ?_309                                   ; 5352 _ E9, 000000C3

?_305:  mov     eax, dword [ebp-18H]                    ; 5357 _ 8B. 45, E8
        mov     edx, dword [eax+10H]                    ; 535A _ 8B. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 535D _ 8B. 45, F4
        add     eax, edx                                ; 5360 _ 01. D0
        mov     dword [ebp-24H], eax                    ; 5362 _ 89. 45, DC
        mov     dword [ebp-8H], 0                       ; 5365 _ C7. 45, F8, 00000000
        jmp     ?_308                                   ; 536C _ E9, 00000096

?_306:  mov     eax, dword [ebp-18H]                    ; 5371 _ 8B. 45, E8
        mov     edx, dword [eax+0CH]                    ; 5374 _ 8B. 50, 0C
        mov     eax, dword [ebp-8H]                     ; 5377 _ 8B. 45, F8
        add     eax, edx                                ; 537A _ 01. D0
        mov     dword [ebp-28H], eax                    ; 537C _ 89. 45, D8
        mov     eax, dword [ebp+0CH]                    ; 537F _ 8B. 45, 0C
        cmp     eax, dword [ebp-28H]                    ; 5382 _ 3B. 45, D8
        jg      ?_307                                   ; 5385 _ 7F, 7C
        mov     eax, dword [ebp-28H]                    ; 5387 _ 8B. 45, D8
        cmp     eax, dword [ebp+14H]                    ; 538A _ 3B. 45, 14
        jge     ?_307                                   ; 538D _ 7D, 74
        mov     eax, dword [ebp+10H]                    ; 538F _ 8B. 45, 10
        cmp     eax, dword [ebp-24H]                    ; 5392 _ 3B. 45, DC
        jg      ?_307                                   ; 5395 _ 7F, 6C
        mov     eax, dword [ebp-24H]                    ; 5397 _ 8B. 45, DC
        cmp     eax, dword [ebp+18H]                    ; 539A _ 3B. 45, 18
        jge     ?_307                                   ; 539D _ 7D, 64
        mov     eax, dword [ebp-18H]                    ; 539F _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 53A2 _ 8B. 40, 04
        imul    eax, dword [ebp-0CH]                    ; 53A5 _ 0F AF. 45, F4
        mov     edx, dword [ebp-8H]                     ; 53A9 _ 8B. 55, F8
        add     eax, edx                                ; 53AC _ 01. D0
        mov     edx, eax                                ; 53AE _ 89. C2
        mov     eax, dword [ebp-1CH]                    ; 53B0 _ 8B. 45, E4
        add     eax, edx                                ; 53B3 _ 01. D0
        movzx   eax, byte [eax]                         ; 53B5 _ 0F B6. 00
        mov     byte [ebp-29H], al                      ; 53B8 _ 88. 45, D7
        mov     eax, dword [ebp+8H]                     ; 53BB _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 53BE _ 8B. 40, 08
        imul    eax, dword [ebp-24H]                    ; 53C1 _ 0F AF. 45, DC
        mov     edx, dword [ebp-28H]                    ; 53C5 _ 8B. 55, D8
        add     eax, edx                                ; 53C8 _ 01. D0
        mov     edx, eax                                ; 53CA _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 53CC _ 8B. 45, EC
        add     eax, edx                                ; 53CF _ 01. D0
        movzx   eax, byte [eax]                         ; 53D1 _ 0F B6. 00
        cmp     byte [ebp-1DH], al                      ; 53D4 _ 38. 45, E3
        jnz     ?_307                                   ; 53D7 _ 75, 2A
        movzx   eax, byte [ebp-29H]                     ; 53D9 _ 0F B6. 45, D7
        mov     edx, dword [ebp-18H]                    ; 53DD _ 8B. 55, E8
        mov     edx, dword [edx+14H]                    ; 53E0 _ 8B. 52, 14
        cmp     eax, edx                                ; 53E3 _ 39. D0
        jz      ?_307                                   ; 53E5 _ 74, 1C
        mov     eax, dword [ebp+8H]                     ; 53E7 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 53EA _ 8B. 40, 08
        imul    eax, dword [ebp-24H]                    ; 53ED _ 0F AF. 45, DC
        mov     edx, dword [ebp-28H]                    ; 53F1 _ 8B. 55, D8
        add     eax, edx                                ; 53F4 _ 01. D0
        mov     edx, eax                                ; 53F6 _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 53F8 _ 8B. 45, F0
        add     edx, eax                                ; 53FB _ 01. C2
        movzx   eax, byte [ebp-29H]                     ; 53FD _ 0F B6. 45, D7
        mov     byte [edx], al                          ; 5401 _ 88. 02
?_307:  add     dword [ebp-8H], 1                       ; 5403 _ 83. 45, F8, 01
?_308:  mov     eax, dword [ebp-18H]                    ; 5407 _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 540A _ 8B. 40, 04
        cmp     dword [ebp-8H], eax                     ; 540D _ 39. 45, F8
        jl      ?_306                                   ; 5410 _ 0F 8C, FFFFFF5B
        add     dword [ebp-0CH], 1                      ; 5416 _ 83. 45, F4, 01
?_309:  mov     eax, dword [ebp-18H]                    ; 541A _ 8B. 45, E8
        mov     eax, dword [eax+8H]                     ; 541D _ 8B. 40, 08
        cmp     dword [ebp-0CH], eax                    ; 5420 _ 39. 45, F4
        jl      ?_305                                   ; 5423 _ 0F 8C, FFFFFF2E
        add     dword [ebp-4H], 1                       ; 5429 _ 83. 45, FC, 01
?_310:  mov     eax, dword [ebp-4H]                     ; 542D _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 5430 _ 3B. 45, 20
        jle     ?_304                                   ; 5433 _ 0F 8E, FFFFFEDF
        nop                                             ; 5439 _ 90
        leave                                           ; 543A _ C9
        ret                                             ; 543B _ C3
; _sheet_refreshsub End of function

_sheet_refreshmap:; Function begin
        push    ebp                                     ; 543C _ 55
        mov     ebp, esp                                ; 543D _ 89. E5
        sub     esp, 64                                 ; 543F _ 83. EC, 40
        mov     eax, dword [ebp+8H]                     ; 5442 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 5445 _ 8B. 40, 04
        mov     dword [ebp-20H], eax                    ; 5448 _ 89. 45, E0
        cmp     dword [ebp+0CH], 0                      ; 544B _ 83. 7D, 0C, 00
        jns     ?_311                                   ; 544F _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 5451 _ C7. 45, 0C, 00000000
?_311:  cmp     dword [ebp+10H], 0                      ; 5458 _ 83. 7D, 10, 00
        jns     ?_312                                   ; 545C _ 79, 07
        mov     dword [ebp+10H], 0                      ; 545E _ C7. 45, 10, 00000000
?_312:  mov     eax, dword [ebp+8H]                     ; 5465 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 5468 _ 8B. 40, 08
        cmp     dword [ebp+14H], eax                    ; 546B _ 39. 45, 14
        jle     ?_313                                   ; 546E _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 5470 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 5473 _ 8B. 40, 08
        mov     dword [ebp+14H], eax                    ; 5476 _ 89. 45, 14
?_313:  mov     eax, dword [ebp+8H]                     ; 5479 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 547C _ 8B. 40, 0C
        cmp     dword [ebp+18H], eax                    ; 547F _ 39. 45, 18
        jle     ?_314                                   ; 5482 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 5484 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 5487 _ 8B. 40, 0C
        mov     dword [ebp+18H], eax                    ; 548A _ 89. 45, 18
?_314:  mov     eax, dword [ebp+1CH]                    ; 548D _ 8B. 45, 1C
        mov     dword [ebp-4H], eax                     ; 5490 _ 89. 45, FC
        jmp     ?_325                                   ; 5493 _ E9, 0000013F

?_315:  mov     eax, dword [ebp+8H]                     ; 5498 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 549B _ 8B. 55, FC
        add     edx, 4                                  ; 549E _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 54A1 _ 8B. 44 90, 04
        mov     dword [ebp-24H], eax                    ; 54A5 _ 89. 45, DC
        mov     eax, dword [ebp+8H]                     ; 54A8 _ 8B. 45, 08
        add     eax, 1044                               ; 54AB _ 05, 00000414
        mov     edx, dword [ebp-24H]                    ; 54B0 _ 8B. 55, DC
        sub     edx, eax                                ; 54B3 _ 29. C2
        mov     eax, edx                                ; 54B5 _ 89. D0
        sar     eax, 2                                  ; 54B7 _ C1. F8, 02
        imul    eax, eax, 954437177                     ; 54BA _ 69. C0, 38E38E39
        mov     byte [ebp-25H], al                      ; 54C0 _ 88. 45, DB
        mov     eax, dword [ebp-24H]                    ; 54C3 _ 8B. 45, DC
        mov     eax, dword [eax]                        ; 54C6 _ 8B. 00
        mov     dword [ebp-2CH], eax                    ; 54C8 _ 89. 45, D4
        mov     eax, dword [ebp-24H]                    ; 54CB _ 8B. 45, DC
        mov     eax, dword [eax+0CH]                    ; 54CE _ 8B. 40, 0C
        mov     edx, dword [ebp+0CH]                    ; 54D1 _ 8B. 55, 0C
        sub     edx, eax                                ; 54D4 _ 29. C2
        mov     eax, edx                                ; 54D6 _ 89. D0
        mov     dword [ebp-10H], eax                    ; 54D8 _ 89. 45, F0
        mov     eax, dword [ebp-24H]                    ; 54DB _ 8B. 45, DC
        mov     eax, dword [eax+10H]                    ; 54DE _ 8B. 40, 10
        mov     edx, dword [ebp+10H]                    ; 54E1 _ 8B. 55, 10
        sub     edx, eax                                ; 54E4 _ 29. C2
        mov     eax, edx                                ; 54E6 _ 89. D0
        mov     dword [ebp-14H], eax                    ; 54E8 _ 89. 45, EC
        mov     eax, dword [ebp-24H]                    ; 54EB _ 8B. 45, DC
        mov     eax, dword [eax+0CH]                    ; 54EE _ 8B. 40, 0C
        mov     edx, dword [ebp+14H]                    ; 54F1 _ 8B. 55, 14
        sub     edx, eax                                ; 54F4 _ 29. C2
        mov     eax, edx                                ; 54F6 _ 89. D0
        mov     dword [ebp-18H], eax                    ; 54F8 _ 89. 45, E8
        mov     eax, dword [ebp-24H]                    ; 54FB _ 8B. 45, DC
        mov     eax, dword [eax+10H]                    ; 54FE _ 8B. 40, 10
        mov     edx, dword [ebp+18H]                    ; 5501 _ 8B. 55, 18
        sub     edx, eax                                ; 5504 _ 29. C2
        mov     eax, edx                                ; 5506 _ 89. D0
        mov     dword [ebp-1CH], eax                    ; 5508 _ 89. 45, E4
        cmp     dword [ebp-10H], 0                      ; 550B _ 83. 7D, F0, 00
        jns     ?_316                                   ; 550F _ 79, 07
        mov     dword [ebp-10H], 0                      ; 5511 _ C7. 45, F0, 00000000
?_316:  cmp     dword [ebp-14H], 0                      ; 5518 _ 83. 7D, EC, 00
        jns     ?_317                                   ; 551C _ 79, 07
        mov     dword [ebp-14H], 0                      ; 551E _ C7. 45, EC, 00000000
?_317:  mov     eax, dword [ebp-24H]                    ; 5525 _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 5528 _ 8B. 40, 04
        cmp     dword [ebp-18H], eax                    ; 552B _ 39. 45, E8
        jle     ?_318                                   ; 552E _ 7E, 09
        mov     eax, dword [ebp-24H]                    ; 5530 _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 5533 _ 8B. 40, 04
        mov     dword [ebp-18H], eax                    ; 5536 _ 89. 45, E8
?_318:  mov     eax, dword [ebp-24H]                    ; 5539 _ 8B. 45, DC
        mov     eax, dword [eax+8H]                     ; 553C _ 8B. 40, 08
        cmp     dword [ebp-1CH], eax                    ; 553F _ 39. 45, E4
        jle     ?_319                                   ; 5542 _ 7E, 09
        mov     eax, dword [ebp-24H]                    ; 5544 _ 8B. 45, DC
        mov     eax, dword [eax+8H]                     ; 5547 _ 8B. 40, 08
        mov     dword [ebp-1CH], eax                    ; 554A _ 89. 45, E4
?_319:  mov     eax, dword [ebp-14H]                    ; 554D _ 8B. 45, EC
        mov     dword [ebp-0CH], eax                    ; 5550 _ 89. 45, F4
        jmp     ?_324                                   ; 5553 _ EB, 76

?_320:  mov     eax, dword [ebp-24H]                    ; 5555 _ 8B. 45, DC
        mov     edx, dword [eax+10H]                    ; 5558 _ 8B. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 555B _ 8B. 45, F4
        add     eax, edx                                ; 555E _ 01. D0
        mov     dword [ebp-30H], eax                    ; 5560 _ 89. 45, D0
        mov     eax, dword [ebp-10H]                    ; 5563 _ 8B. 45, F0
        mov     dword [ebp-8H], eax                     ; 5566 _ 89. 45, F8
        jmp     ?_323                                   ; 5569 _ EB, 54

?_321:  mov     eax, dword [ebp-24H]                    ; 556B _ 8B. 45, DC
        mov     edx, dword [eax+0CH]                    ; 556E _ 8B. 50, 0C
        mov     eax, dword [ebp-8H]                     ; 5571 _ 8B. 45, F8
        add     eax, edx                                ; 5574 _ 01. D0
        mov     dword [ebp-34H], eax                    ; 5576 _ 89. 45, CC
        mov     eax, dword [ebp-24H]                    ; 5579 _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 557C _ 8B. 40, 04
        imul    eax, dword [ebp-0CH]                    ; 557F _ 0F AF. 45, F4
        mov     edx, dword [ebp-8H]                     ; 5583 _ 8B. 55, F8
        add     eax, edx                                ; 5586 _ 01. D0
        mov     edx, eax                                ; 5588 _ 89. C2
        mov     eax, dword [ebp-2CH]                    ; 558A _ 8B. 45, D4
        add     eax, edx                                ; 558D _ 01. D0
        movzx   eax, byte [eax]                         ; 558F _ 0F B6. 00
        movzx   eax, al                                 ; 5592 _ 0F B6. C0
        mov     edx, dword [ebp-24H]                    ; 5595 _ 8B. 55, DC
        mov     edx, dword [edx+14H]                    ; 5598 _ 8B. 52, 14
        cmp     eax, edx                                ; 559B _ 39. D0
        jz      ?_322                                   ; 559D _ 74, 1C
        mov     eax, dword [ebp+8H]                     ; 559F _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 55A2 _ 8B. 40, 08
        imul    eax, dword [ebp-30H]                    ; 55A5 _ 0F AF. 45, D0
        mov     edx, dword [ebp-34H]                    ; 55A9 _ 8B. 55, CC
        add     eax, edx                                ; 55AC _ 01. D0
        mov     edx, eax                                ; 55AE _ 89. C2
        mov     eax, dword [ebp-20H]                    ; 55B0 _ 8B. 45, E0
        add     edx, eax                                ; 55B3 _ 01. C2
        movzx   eax, byte [ebp-25H]                     ; 55B5 _ 0F B6. 45, DB
        mov     byte [edx], al                          ; 55B9 _ 88. 02
?_322:  add     dword [ebp-8H], 1                       ; 55BB _ 83. 45, F8, 01
?_323:  mov     eax, dword [ebp-8H]                     ; 55BF _ 8B. 45, F8
        cmp     eax, dword [ebp-18H]                    ; 55C2 _ 3B. 45, E8
        jl      ?_321                                   ; 55C5 _ 7C, A4
        add     dword [ebp-0CH], 1                      ; 55C7 _ 83. 45, F4, 01
?_324:  mov     eax, dword [ebp-0CH]                    ; 55CB _ 8B. 45, F4
        cmp     eax, dword [ebp-1CH]                    ; 55CE _ 3B. 45, E4
        jl      ?_320                                   ; 55D1 _ 7C, 82
        add     dword [ebp-4H], 1                       ; 55D3 _ 83. 45, FC, 01
?_325:  mov     eax, dword [ebp+8H]                     ; 55D7 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 55DA _ 8B. 40, 10
        cmp     dword [ebp-4H], eax                     ; 55DD _ 39. 45, FC
        jle     ?_315                                   ; 55E0 _ 0F 8E, FFFFFEB2
        nop                                             ; 55E6 _ 90
        leave                                           ; 55E7 _ C9
        ret                                             ; 55E8 _ C3
; _sheet_refreshmap End of function

_sheet_free:; Function begin
        push    ebp                                     ; 55E9 _ 55
        mov     ebp, esp                                ; 55EA _ 89. E5
        sub     esp, 24                                 ; 55EC _ 83. EC, 18
        mov     eax, dword [ebp+0CH]                    ; 55EF _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 55F2 _ 8B. 40, 18
        test    eax, eax                                ; 55F5 _ 85. C0
        js      ?_326                                   ; 55F7 _ 78, 1A
        mov     dword [esp+8H], -1                      ; 55F9 _ C7. 44 24, 08, FFFFFFFF
        mov     eax, dword [ebp+0CH]                    ; 5601 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 5604 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 5608 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 560B _ 89. 04 24
        call    _sheet_updown                           ; 560E _ E8, FFFFF6EB
?_326:  mov     eax, dword [ebp+0CH]                    ; 5613 _ 8B. 45, 0C
        mov     dword [eax+1CH], 0                      ; 5616 _ C7. 40, 1C, 00000000
        nop                                             ; 561D _ 90
        leave                                           ; 561E _ C9
        ret                                             ; 561F _ C3
; _sheet_free End of function


_memman_init:
        push    ebp                                     ; 5620 _ 55
        mov     ebp, esp                                ; 5621 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 5623 _ 8B. 45, 08
        mov     dword [eax], 0                          ; 5626 _ C7. 00, 00000000
        mov     eax, dword [ebp+8H]                     ; 562C _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 562F _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 5636 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 5639 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 5640 _ 8B. 45, 08
        mov     dword [eax+0CH], 0                      ; 5643 _ C7. 40, 0C, 00000000
        nop                                             ; 564A _ 90
        pop     ebp                                     ; 564B _ 5D
        ret                                             ; 564C _ C3

_memman_total:; Function begin
        push    ebp                                     ; 564D _ 55
        mov     ebp, esp                                ; 564E _ 89. E5
        sub     esp, 16                                 ; 5650 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 5653 _ C7. 45, F8, 00000000
        mov     dword [ebp-4H], 0                       ; 565A _ C7. 45, FC, 00000000
        jmp     ?_328                                   ; 5661 _ EB, 14

?_327:  mov     eax, dword [ebp+8H]                     ; 5663 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 5666 _ 8B. 55, FC
        add     edx, 2                                  ; 5669 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 566C _ 8B. 44 D0, 04
        add     dword [ebp-8H], eax                     ; 5670 _ 01. 45, F8
        add     dword [ebp-4H], 1                       ; 5673 _ 83. 45, FC, 01
?_328:  mov     eax, dword [ebp+8H]                     ; 5677 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 567A _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 567C _ 39. 45, FC
        jc      ?_327                                   ; 567F _ 72, E2
        mov     eax, dword [ebp-8H]                     ; 5681 _ 8B. 45, F8
        leave                                           ; 5684 _ C9
        ret                                             ; 5685 _ C3
; _memman_total End of function

_memman_alloc:; Function begin
        push    ebp                                     ; 5686 _ 55
        mov     ebp, esp                                ; 5687 _ 89. E5
        push    ebx                                     ; 5689 _ 53
        sub     esp, 16                                 ; 568A _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 568D _ C7. 45, F8, 00000000
        jmp     ?_334                                   ; 5694 _ E9, 000000BB

?_329:  mov     eax, dword [ebp+8H]                     ; 5699 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 569C _ 8B. 55, F8
        add     edx, 2                                  ; 569F _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 56A2 _ 8B. 44 D0, 04
        cmp     dword [ebp+0CH], eax                    ; 56A6 _ 39. 45, 0C
        ja      ?_333                                   ; 56A9 _ 0F 87, 000000A1
        mov     eax, dword [ebp+8H]                     ; 56AF _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 56B2 _ 8B. 55, F8
        add     edx, 2                                  ; 56B5 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 56B8 _ 8B. 04 D0
        mov     dword [ebp-0CH], eax                    ; 56BB _ 89. 45, F4
        mov     eax, dword [ebp+8H]                     ; 56BE _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 56C1 _ 8B. 55, F8
        add     edx, 2                                  ; 56C4 _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 56C7 _ 8B. 14 D0
        mov     eax, dword [ebp+0CH]                    ; 56CA _ 8B. 45, 0C
        lea     ecx, [edx+eax]                          ; 56CD _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 56D0 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 56D3 _ 8B. 55, F8
        add     edx, 2                                  ; 56D6 _ 83. C2, 02
        mov     dword [eax+edx*8], ecx                  ; 56D9 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 56DC _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 56DF _ 8B. 55, F8
        add     edx, 2                                  ; 56E2 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 56E5 _ 8B. 44 D0, 04
        sub     eax, dword [ebp+0CH]                    ; 56E9 _ 2B. 45, 0C
        mov     edx, dword [ebp+8H]                     ; 56EC _ 8B. 55, 08
        mov     ecx, dword [ebp-8H]                     ; 56EF _ 8B. 4D, F8
        add     ecx, 2                                  ; 56F2 _ 83. C1, 02
        mov     dword [edx+ecx*8+4H], eax               ; 56F5 _ 89. 44 CA, 04
        mov     eax, dword [ebp+8H]                     ; 56F9 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 56FC _ 8B. 55, F8
        add     edx, 2                                  ; 56FF _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 5702 _ 8B. 44 D0, 04
        test    eax, eax                                ; 5706 _ 85. C0
        jnz     ?_332                                   ; 5708 _ 75, 41
        mov     eax, dword [ebp+8H]                     ; 570A _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 570D _ 8B. 00
        lea     edx, [eax-1H]                           ; 570F _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 5712 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 5715 _ 89. 10
        jmp     ?_331                                   ; 5717 _ EB, 28

?_330:  mov     eax, dword [ebp-8H]                     ; 5719 _ 8B. 45, F8
        lea     edx, [eax+1H]                           ; 571C _ 8D. 50, 01
        mov     ecx, dword [ebp+8H]                     ; 571F _ 8B. 4D, 08
        mov     eax, dword [ebp-8H]                     ; 5722 _ 8B. 45, F8
        lea     ebx, [eax+2H]                           ; 5725 _ 8D. 58, 02
        mov     eax, dword [ebp+8H]                     ; 5728 _ 8B. 45, 08
        add     edx, 2                                  ; 572B _ 83. C2, 02
        lea     edx, [eax+edx*8]                        ; 572E _ 8D. 14 D0
        mov     eax, dword [edx]                        ; 5731 _ 8B. 02
        mov     edx, dword [edx+4H]                     ; 5733 _ 8B. 52, 04
        mov     dword [ecx+ebx*8], eax                  ; 5736 _ 89. 04 D9
        mov     dword [ecx+ebx*8+4H], edx               ; 5739 _ 89. 54 D9, 04
        add     dword [ebp-8H], 1                       ; 573D _ 83. 45, F8, 01
?_331:  mov     eax, dword [ebp+8H]                     ; 5741 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 5744 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 5746 _ 39. 45, F8
        jc      ?_330                                   ; 5749 _ 72, CE
?_332:  mov     eax, dword [ebp-0CH]                    ; 574B _ 8B. 45, F4
        jmp     ?_335                                   ; 574E _ EB, 17

?_333:  add     dword [ebp-8H], 1                       ; 5750 _ 83. 45, F8, 01
?_334:  mov     eax, dword [ebp+8H]                     ; 5754 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 5757 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 5759 _ 39. 45, F8
        jc      ?_329                                   ; 575C _ 0F 82, FFFFFF37
        mov     eax, 0                                  ; 5762 _ B8, 00000000
?_335:  add     esp, 16                                 ; 5767 _ 83. C4, 10
        pop     ebx                                     ; 576A _ 5B
        pop     ebp                                     ; 576B _ 5D
        ret                                             ; 576C _ C3
; _memman_alloc End of function

_memman_free:; Function begin
        push    ebp                                     ; 576D _ 55
        mov     ebp, esp                                ; 576E _ 89. E5
        push    ebx                                     ; 5770 _ 53
        sub     esp, 16                                 ; 5771 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 5774 _ C7. 45, F8, 00000000
        jmp     ?_337                                   ; 577B _ EB, 15

?_336:  mov     eax, dword [ebp+8H]                     ; 577D _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 5780 _ 8B. 55, F8
        add     edx, 2                                  ; 5783 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 5786 _ 8B. 04 D0
        cmp     dword [ebp+0CH], eax                    ; 5789 _ 39. 45, 0C
        jc      ?_338                                   ; 578C _ 72, 10
        add     dword [ebp-8H], 1                       ; 578E _ 83. 45, F8, 01
?_337:  mov     eax, dword [ebp+8H]                     ; 5792 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 5795 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 5797 _ 39. 45, F8
        jl      ?_336                                   ; 579A _ 7C, E1
        jmp     ?_339                                   ; 579C _ EB, 01

?_338:  nop                                             ; 579E _ 90
?_339:  cmp     dword [ebp-8H], 0                       ; 579F _ 83. 7D, F8, 00
        jle     ?_343                                   ; 57A3 _ 0F 8E, 000000F0
        mov     eax, dword [ebp-8H]                     ; 57A9 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 57AC _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 57AF _ 8B. 45, 08
        add     edx, 2                                  ; 57B2 _ 83. C2, 02
        mov     ecx, dword [eax+edx*8]                  ; 57B5 _ 8B. 0C D0
        mov     eax, dword [ebp-8H]                     ; 57B8 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 57BB _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 57BE _ 8B. 45, 08
        add     edx, 2                                  ; 57C1 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 57C4 _ 8B. 44 D0, 04
        add     eax, ecx                                ; 57C8 _ 01. C8
        cmp     dword [ebp+0CH], eax                    ; 57CA _ 39. 45, 0C
        jne     ?_343                                   ; 57CD _ 0F 85, 000000C6
        mov     eax, dword [ebp-8H]                     ; 57D3 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 57D6 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 57D9 _ 8B. 45, 08
        add     edx, 2                                  ; 57DC _ 83. C2, 02
        mov     ecx, dword [eax+edx*8+4H]               ; 57DF _ 8B. 4C D0, 04
        mov     eax, dword [ebp-8H]                     ; 57E3 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 57E6 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 57E9 _ 8B. 45, 10
        add     ecx, eax                                ; 57EC _ 01. C1
        mov     eax, dword [ebp+8H]                     ; 57EE _ 8B. 45, 08
        add     edx, 2                                  ; 57F1 _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 57F4 _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 57F8 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 57FB _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 57FD _ 39. 45, F8
        jge     ?_342                                   ; 5800 _ 0F 8D, 00000089
        mov     edx, dword [ebp+0CH]                    ; 5806 _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 5809 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 580C _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 580F _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 5812 _ 8B. 55, F8
        add     edx, 2                                  ; 5815 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 5818 _ 8B. 04 D0
        cmp     ecx, eax                                ; 581B _ 39. C1
        jnz     ?_342                                   ; 581D _ 75, 70
        mov     eax, dword [ebp-8H]                     ; 581F _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 5822 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 5825 _ 8B. 45, 08
        add     edx, 2                                  ; 5828 _ 83. C2, 02
        mov     ecx, dword [eax+edx*8+4H]               ; 582B _ 8B. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 582F _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 5832 _ 8B. 55, F8
        add     edx, 2                                  ; 5835 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 5838 _ 8B. 44 D0, 04
        mov     edx, dword [ebp-8H]                     ; 583C _ 8B. 55, F8
        sub     edx, 1                                  ; 583F _ 83. EA, 01
        add     ecx, eax                                ; 5842 _ 01. C1
        mov     eax, dword [ebp+8H]                     ; 5844 _ 8B. 45, 08
        add     edx, 2                                  ; 5847 _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 584A _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 584E _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 5851 _ 8B. 00
        lea     edx, [eax-1H]                           ; 5853 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 5856 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 5859 _ 89. 10
        jmp     ?_341                                   ; 585B _ EB, 28

?_340:  mov     eax, dword [ebp-8H]                     ; 585D _ 8B. 45, F8
        lea     edx, [eax+1H]                           ; 5860 _ 8D. 50, 01
        mov     ecx, dword [ebp+8H]                     ; 5863 _ 8B. 4D, 08
        mov     eax, dword [ebp-8H]                     ; 5866 _ 8B. 45, F8
        lea     ebx, [eax+2H]                           ; 5869 _ 8D. 58, 02
        mov     eax, dword [ebp+8H]                     ; 586C _ 8B. 45, 08
        add     edx, 2                                  ; 586F _ 83. C2, 02
        lea     edx, [eax+edx*8]                        ; 5872 _ 8D. 14 D0
        mov     eax, dword [edx]                        ; 5875 _ 8B. 02
        mov     edx, dword [edx+4H]                     ; 5877 _ 8B. 52, 04
        mov     dword [ecx+ebx*8], eax                  ; 587A _ 89. 04 D9
        mov     dword [ecx+ebx*8+4H], edx               ; 587D _ 89. 54 D9, 04
        add     dword [ebp-8H], 1                       ; 5881 _ 83. 45, F8, 01
?_341:  mov     eax, dword [ebp+8H]                     ; 5885 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 5888 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 588A _ 39. 45, F8
        jl      ?_340                                   ; 588D _ 7C, CE
?_342:  mov     eax, 0                                  ; 588F _ B8, 00000000
        jmp     ?_349                                   ; 5894 _ E9, 0000011C

?_343:  mov     eax, dword [ebp+8H]                     ; 5899 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 589C _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 589E _ 39. 45, F8
        jge     ?_344                                   ; 58A1 _ 7D, 52
        mov     edx, dword [ebp+0CH]                    ; 58A3 _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 58A6 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 58A9 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 58AC _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 58AF _ 8B. 55, F8
        add     edx, 2                                  ; 58B2 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 58B5 _ 8B. 04 D0
        cmp     ecx, eax                                ; 58B8 _ 39. C1
        jnz     ?_344                                   ; 58BA _ 75, 39
        mov     eax, dword [ebp+8H]                     ; 58BC _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 58BF _ 8B. 55, F8
        add     edx, 2                                  ; 58C2 _ 83. C2, 02
        mov     ecx, dword [ebp+0CH]                    ; 58C5 _ 8B. 4D, 0C
        mov     dword [eax+edx*8], ecx                  ; 58C8 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 58CB _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 58CE _ 8B. 55, F8
        add     edx, 2                                  ; 58D1 _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 58D4 _ 8B. 54 D0, 04
        mov     eax, dword [ebp+10H]                    ; 58D8 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 58DB _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 58DE _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 58E1 _ 8B. 55, F8
        add     edx, 2                                  ; 58E4 _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 58E7 _ 89. 4C D0, 04
        mov     eax, 0                                  ; 58EB _ B8, 00000000
        jmp     ?_349                                   ; 58F0 _ E9, 000000C0

?_344:  mov     eax, dword [ebp+8H]                     ; 58F5 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 58F8 _ 8B. 00
        cmp     eax, 4095                               ; 58FA _ 3D, 00000FFF
        jg      ?_348                                   ; 58FF _ 0F 8F, 00000087
        mov     eax, dword [ebp+8H]                     ; 5905 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 5908 _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 590A _ 89. 45, F4
        jmp     ?_346                                   ; 590D _ EB, 28

?_345:  mov     eax, dword [ebp-0CH]                    ; 590F _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 5912 _ 8D. 50, FF
        mov     ecx, dword [ebp+8H]                     ; 5915 _ 8B. 4D, 08
        mov     eax, dword [ebp-0CH]                    ; 5918 _ 8B. 45, F4
        lea     ebx, [eax+2H]                           ; 591B _ 8D. 58, 02
        mov     eax, dword [ebp+8H]                     ; 591E _ 8B. 45, 08
        add     edx, 2                                  ; 5921 _ 83. C2, 02
        lea     edx, [eax+edx*8]                        ; 5924 _ 8D. 14 D0
        mov     eax, dword [edx]                        ; 5927 _ 8B. 02
        mov     edx, dword [edx+4H]                     ; 5929 _ 8B. 52, 04
        mov     dword [ecx+ebx*8], eax                  ; 592C _ 89. 04 D9
        mov     dword [ecx+ebx*8+4H], edx               ; 592F _ 89. 54 D9, 04
        sub     dword [ebp-0CH], 1                      ; 5933 _ 83. 6D, F4, 01
?_346:  mov     eax, dword [ebp-0CH]                    ; 5937 _ 8B. 45, F4
        cmp     eax, dword [ebp-8H]                     ; 593A _ 3B. 45, F8
        jg      ?_345                                   ; 593D _ 7F, D0
        mov     eax, dword [ebp+8H]                     ; 593F _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 5942 _ 8B. 00
        lea     edx, [eax+1H]                           ; 5944 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 5947 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 594A _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 594C _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 594F _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 5952 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 5955 _ 8B. 00
        cmp     edx, eax                                ; 5957 _ 39. C2
        jge     ?_347                                   ; 5959 _ 7D, 0B
        mov     eax, dword [ebp+8H]                     ; 595B _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 595E _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 5960 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 5963 _ 89. 50, 04
?_347:  mov     eax, dword [ebp+8H]                     ; 5966 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 5969 _ 8B. 55, F8
        add     edx, 2                                  ; 596C _ 83. C2, 02
        mov     ecx, dword [ebp+0CH]                    ; 596F _ 8B. 4D, 0C
        mov     dword [eax+edx*8], ecx                  ; 5972 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 5975 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 5978 _ 8B. 55, F8
        add     edx, 2                                  ; 597B _ 83. C2, 02
        mov     ecx, dword [ebp+10H]                    ; 597E _ 8B. 4D, 10
        mov     dword [eax+edx*8+4H], ecx               ; 5981 _ 89. 4C D0, 04
        mov     eax, 0                                  ; 5985 _ B8, 00000000
        jmp     ?_349                                   ; 598A _ EB, 29

?_348:  mov     eax, dword [ebp+8H]                     ; 598C _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 598F _ 8B. 40, 0C
        lea     edx, [eax+1H]                           ; 5992 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 5995 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 5998 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 599B _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 599E _ 8B. 40, 08
        mov     edx, eax                                ; 59A1 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 59A3 _ 8B. 45, 10
        add     eax, edx                                ; 59A6 _ 01. D0
        mov     edx, eax                                ; 59A8 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 59AA _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 59AD _ 89. 50, 08
        mov     eax, 4294967295                         ; 59B0 _ B8, FFFFFFFF
?_349:  add     esp, 16                                 ; 59B5 _ 83. C4, 10
        pop     ebx                                     ; 59B8 _ 5B
        pop     ebp                                     ; 59B9 _ 5D
        ret                                             ; 59BA _ C3
; _memman_free End of function

_memman_alloc_4k:; Function begin
        push    ebp                                     ; 59BB _ 55
        mov     ebp, esp                                ; 59BC _ 89. E5
        sub     esp, 24                                 ; 59BE _ 83. EC, 18
        mov     eax, dword [ebp+0CH]                    ; 59C1 _ 8B. 45, 0C
        add     eax, 4095                               ; 59C4 _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 59C9 _ 25, FFFFF000
        mov     dword [ebp+0CH], eax                    ; 59CE _ 89. 45, 0C
        mov     eax, dword [ebp+0CH]                    ; 59D1 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 59D4 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 59D8 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 59DB _ 89. 04 24
        call    _memman_alloc                           ; 59DE _ E8, FFFFFCA3
        mov     dword [ebp-4H], eax                     ; 59E3 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 59E6 _ 8B. 45, FC
        leave                                           ; 59E9 _ C9
        ret                                             ; 59EA _ C3
; _memman_alloc_4k End of function

_memman_free_4k:; Function begin
        push    ebp                                     ; 59EB _ 55
        mov     ebp, esp                                ; 59EC _ 89. E5
        sub     esp, 28                                 ; 59EE _ 83. EC, 1C
        mov     eax, dword [ebp+10H]                    ; 59F1 _ 8B. 45, 10
        add     eax, 4095                               ; 59F4 _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 59F9 _ 25, FFFFF000
        mov     dword [ebp+10H], eax                    ; 59FE _ 89. 45, 10
        mov     eax, dword [ebp+10H]                    ; 5A01 _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 5A04 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 5A08 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 5A0B _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 5A0F _ 8B. 45, 08
        mov     dword [esp], eax                        ; 5A12 _ 89. 04 24
        call    _memman_free                            ; 5A15 _ E8, FFFFFD53
        mov     dword [ebp-4H], eax                     ; 5A1A _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 5A1D _ 8B. 45, FC
        leave                                           ; 5A20 _ C9
        ret                                             ; 5A21 _ C3
; _memman_free_4k End of function

        nop                                             ; 5A22 _ 90
        nop                                             ; 5A23 _ 90


_fifo8_init:
        push    ebp                                     ; 5A24 _ 55
        mov     ebp, esp                                ; 5A25 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 5A27 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 5A2A _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 5A2D _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 5A30 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 5A33 _ 8B. 55, 10
        mov     dword [eax], edx                        ; 5A36 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 5A38 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 5A3B _ 8B. 55, 0C
        mov     dword [eax+10H], edx                    ; 5A3E _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 5A41 _ 8B. 45, 08
        mov     dword [eax+14H], 0                      ; 5A44 _ C7. 40, 14, 00000000
        mov     eax, dword [ebp+8H]                     ; 5A4B _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 5A4E _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 5A55 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 5A58 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 5A5F _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 5A62 _ 8B. 55, 14
        mov     dword [eax+18H], edx                    ; 5A65 _ 89. 50, 18
        nop                                             ; 5A68 _ 90
        pop     ebp                                     ; 5A69 _ 5D
        ret                                             ; 5A6A _ C3

_fifo8_put:; Function begin
        push    ebp                                     ; 5A6B _ 55
        mov     ebp, esp                                ; 5A6C _ 89. E5
        sub     esp, 40                                 ; 5A6E _ 83. EC, 28
        mov     eax, dword [ebp+0CH]                    ; 5A71 _ 8B. 45, 0C
        mov     byte [ebp-0CH], al                      ; 5A74 _ 88. 45, F4
        cmp     dword [ebp+8H], 0                       ; 5A77 _ 83. 7D, 08, 00
        jnz     ?_350                                   ; 5A7B _ 75, 0A
        mov     eax, 4294967295                         ; 5A7D _ B8, FFFFFFFF
        jmp     ?_354                                   ; 5A82 _ E9, 000000AB

?_350:  mov     eax, dword [ebp+8H]                     ; 5A87 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 5A8A _ 8B. 40, 10
        test    eax, eax                                ; 5A8D _ 85. C0
        jnz     ?_351                                   ; 5A8F _ 75, 1B
        mov     eax, dword [ebp+8H]                     ; 5A91 _ 8B. 45, 08
        mov     eax, dword [eax+14H]                    ; 5A94 _ 8B. 40, 14
        or      eax, 01H                                ; 5A97 _ 83. C8, 01
        mov     edx, eax                                ; 5A9A _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 5A9C _ 8B. 45, 08
        mov     dword [eax+14H], edx                    ; 5A9F _ 89. 50, 14
        mov     eax, 4294967295                         ; 5AA2 _ B8, FFFFFFFF
        jmp     ?_354                                   ; 5AA7 _ E9, 00000086

?_351:  mov     eax, dword [ebp+8H]                     ; 5AAC _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 5AAF _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 5AB1 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 5AB4 _ 8B. 40, 04
        add     edx, eax                                ; 5AB7 _ 01. C2
        movzx   eax, byte [ebp-0CH]                     ; 5AB9 _ 0F B6. 45, F4
        mov     byte [edx], al                          ; 5ABD _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 5ABF _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 5AC2 _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 5AC5 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 5AC8 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 5ACB _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 5ACE _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 5AD1 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 5AD4 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 5AD7 _ 8B. 40, 0C
        cmp     edx, eax                                ; 5ADA _ 39. C2
        jnz     ?_352                                   ; 5ADC _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 5ADE _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 5AE1 _ C7. 40, 04, 00000000
?_352:  mov     eax, dword [ebp+8H]                     ; 5AE8 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 5AEB _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 5AEE _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 5AF1 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 5AF4 _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 5AF7 _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 5AFA _ 8B. 40, 18
        test    eax, eax                                ; 5AFD _ 85. C0
        jz      ?_353                                   ; 5AFF _ 74, 2C
        mov     eax, dword [ebp+8H]                     ; 5B01 _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 5B04 _ 8B. 40, 18
        mov     eax, dword [eax+4H]                     ; 5B07 _ 8B. 40, 04
        cmp     eax, 2                                  ; 5B0A _ 83. F8, 02
        jz      ?_353                                   ; 5B0D _ 74, 1E
        mov     eax, dword [ebp+8H]                     ; 5B0F _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 5B12 _ 8B. 40, 18
        mov     dword [esp+8H], 0                       ; 5B15 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], -1                      ; 5B1D _ C7. 44 24, 04, FFFFFFFF
        mov     dword [esp], eax                        ; 5B25 _ 89. 04 24
        call    _task_run                               ; 5B28 _ E8, 00000000(rel)
?_353:  mov     eax, 0                                  ; 5B2D _ B8, 00000000
?_354:  leave                                           ; 5B32 _ C9
        ret                                             ; 5B33 _ C3
; _fifo8_put End of function

_fifo8_get:; Function begin
        push    ebp                                     ; 5B34 _ 55
        mov     ebp, esp                                ; 5B35 _ 89. E5
        sub     esp, 16                                 ; 5B37 _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 5B3A _ 8B. 45, 08
        mov     edx, dword [eax+10H]                    ; 5B3D _ 8B. 50, 10
        mov     eax, dword [ebp+8H]                     ; 5B40 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 5B43 _ 8B. 40, 0C
        cmp     edx, eax                                ; 5B46 _ 39. C2
        jnz     ?_355                                   ; 5B48 _ 75, 07
        mov     eax, 4294967295                         ; 5B4A _ B8, FFFFFFFF
        jmp     ?_357                                   ; 5B4F _ EB, 51

?_355:  mov     eax, dword [ebp+8H]                     ; 5B51 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 5B54 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 5B56 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 5B59 _ 8B. 40, 08
        add     eax, edx                                ; 5B5C _ 01. D0
        movzx   eax, byte [eax]                         ; 5B5E _ 0F B6. 00
        movzx   eax, al                                 ; 5B61 _ 0F B6. C0
        mov     dword [ebp-4H], eax                     ; 5B64 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 5B67 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 5B6A _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 5B6D _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 5B70 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 5B73 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 5B76 _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 5B79 _ 8B. 50, 08
        mov     eax, dword [ebp+8H]                     ; 5B7C _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 5B7F _ 8B. 40, 0C
        cmp     edx, eax                                ; 5B82 _ 39. C2
        jnz     ?_356                                   ; 5B84 _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 5B86 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 5B89 _ C7. 40, 08, 00000000
?_356:  mov     eax, dword [ebp+8H]                     ; 5B90 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 5B93 _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 5B96 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 5B99 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 5B9C _ 89. 50, 10
        mov     eax, dword [ebp-4H]                     ; 5B9F _ 8B. 45, FC
?_357:  leave                                           ; 5BA2 _ C9
        ret                                             ; 5BA3 _ C3
; _fifo8_get End of function

_fifo8_status:; Function begin
        push    ebp                                     ; 5BA4 _ 55
        mov     ebp, esp                                ; 5BA5 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 5BA7 _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 5BAA _ 8B. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 5BAD _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 5BB0 _ 8B. 40, 10
        sub     edx, eax                                ; 5BB3 _ 29. C2
        mov     eax, edx                                ; 5BB5 _ 89. D0
        pop     ebp                                     ; 5BB7 _ 5D
        ret                                             ; 5BB8 _ C3
; _fifo8_status End of function

        nop                                             ; 5BB9 _ 90
        nop                                             ; 5BBA _ 90
        nop                                             ; 5BBB _ 90


_init_pit:
        push    ebp                                     ; 5BBC _ 55
        mov     ebp, esp                                ; 5BBD _ 89. E5
        sub     esp, 40                                 ; 5BBF _ 83. EC, 28
        mov     dword [esp+4H], 52                      ; 5BC2 _ C7. 44 24, 04, 00000034
        mov     dword [esp], 67                         ; 5BCA _ C7. 04 24, 00000043
        call    _io_out8                                ; 5BD1 _ E8, 00000000(rel)
        mov     dword [esp+4H], 156                     ; 5BD6 _ C7. 44 24, 04, 0000009C
        mov     dword [esp], 64                         ; 5BDE _ C7. 04 24, 00000040
        call    _io_out8                                ; 5BE5 _ E8, 00000000(rel)
        mov     dword [esp+4H], 46                      ; 5BEA _ C7. 44 24, 04, 0000002E
        mov     dword [esp], 64                         ; 5BF2 _ C7. 04 24, 00000040
        call    _io_out8                                ; 5BF9 _ E8, 00000000(rel)
        mov     dword [_timerctl], 0                         ; 5BFE _ C7. 05, 00000000(d), 00000000
        mov     dword [ebp-0CH], 0                      ; 5C08 _ C7. 45, F4, 00000000
        jmp     ?_359                                   ; 5C0F _ EB, 26

?_358:  mov     eax, dword [ebp-0CH]                    ; 5C11 _ 8B. 45, F4
        shl     eax, 4                                  ; 5C14 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 5C17 _ 05, 00000008(d)
        mov     dword [eax], 0                          ; 5C1C _ C7. 00, 00000000
        mov     eax, dword [ebp-0CH]                    ; 5C22 _ 8B. 45, F4
        shl     eax, 4                                  ; 5C25 _ C1. E0, 04
        add     eax, _timerctl+0CH                           ; 5C28 _ 05, 0000000C(d)
        mov     dword [eax], 0                          ; 5C2D _ C7. 00, 00000000
        add     dword [ebp-0CH], 1                      ; 5C33 _ 83. 45, F4, 01
?_359:  cmp     dword [ebp-0CH], 499                    ; 5C37 _ 81. 7D, F4, 000001F3
        jle     ?_358                                   ; 5C3E _ 7E, D1
        nop                                             ; 5C40 _ 90
        leave                                           ; 5C41 _ C9
        ret                                             ; 5C42 _ C3

_timer_alloc:; Function begin
        push    ebp                                     ; 5C43 _ 55
        mov     ebp, esp                                ; 5C44 _ 89. E5
        sub     esp, 16                                 ; 5C46 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 5C49 _ C7. 45, FC, 00000000
        jmp     ?_362                                   ; 5C50 _ EB, 36

?_360:  mov     eax, dword [ebp-4H]                     ; 5C52 _ 8B. 45, FC
        shl     eax, 4                                  ; 5C55 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 5C58 _ 05, 00000008(d)
        mov     eax, dword [eax]                        ; 5C5D _ 8B. 00
        test    eax, eax                                ; 5C5F _ 85. C0
        jnz     ?_361                                   ; 5C61 _ 75, 21
        mov     eax, dword [ebp-4H]                     ; 5C63 _ 8B. 45, FC
        shl     eax, 4                                  ; 5C66 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 5C69 _ 05, 00000008(d)
        mov     dword [eax], 1                          ; 5C6E _ C7. 00, 00000001
        mov     eax, dword [ebp-4H]                     ; 5C74 _ 8B. 45, FC
        shl     eax, 4                                  ; 5C77 _ C1. E0, 04
        add     eax, _timerctl                               ; 5C7A _ 05, 00000000(d)
        add     eax, 4                                  ; 5C7F _ 83. C0, 04
        jmp     ?_363                                   ; 5C82 _ EB, 12

?_361:  add     dword [ebp-4H], 1                       ; 5C84 _ 83. 45, FC, 01
?_362:  cmp     dword [ebp-4H], 499                     ; 5C88 _ 81. 7D, FC, 000001F3
        jle     ?_360                                   ; 5C8F _ 7E, C1
        mov     eax, 0                                  ; 5C91 _ B8, 00000000
?_363:  leave                                           ; 5C96 _ C9
        ret                                             ; 5C97 _ C3
; _timer_alloc End of function

_timer_free:; Function begin
        push    ebp                                     ; 5C98 _ 55
        mov     ebp, esp                                ; 5C99 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 5C9B _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 5C9E _ C7. 40, 04, 00000000
        nop                                             ; 5CA5 _ 90
        pop     ebp                                     ; 5CA6 _ 5D
        ret                                             ; 5CA7 _ C3
; _timer_free End of function

_timer_init:; Function begin
        push    ebp                                     ; 5CA8 _ 55
        mov     ebp, esp                                ; 5CA9 _ 89. E5
        sub     esp, 4                                  ; 5CAB _ 83. EC, 04
        mov     eax, dword [ebp+10H]                    ; 5CAE _ 8B. 45, 10
        mov     byte [ebp-4H], al                       ; 5CB1 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 5CB4 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 5CB7 _ 8B. 55, 0C
        mov     dword [eax+8H], edx                     ; 5CBA _ 89. 50, 08
        mov     edx, dword [ebp+8H]                     ; 5CBD _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 5CC0 _ 0F B6. 45, FC
        mov     byte [edx+0CH], al                      ; 5CC4 _ 88. 42, 0C
        nop                                             ; 5CC7 _ 90
        leave                                           ; 5CC8 _ C9
        ret                                             ; 5CC9 _ C3
; _timer_init End of function

_timer_settime:; Function begin
        push    ebp                                     ; 5CCA _ 55
        mov     ebp, esp                                ; 5CCB _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 5CCD _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 5CD0 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 5CD3 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 5CD5 _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 5CD8 _ C7. 40, 04, 00000002
        nop                                             ; 5CDF _ 90
        pop     ebp                                     ; 5CE0 _ 5D
        ret                                             ; 5CE1 _ C3
; _timer_settime End of function

_intHandlerForTimer:; Function begin
        push    ebp                                     ; 5CE2 _ 55
        mov     ebp, esp                                ; 5CE3 _ 89. E5
        sub     esp, 40                                 ; 5CE5 _ 83. EC, 28
        mov     dword [esp+4H], 32                      ; 5CE8 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 5CF0 _ C7. 04 24, 00000020
        call    _io_out8                                ; 5CF7 _ E8, 00000000(rel)
        mov     eax, dword [_timerctl]                       ; 5CFC _ A1, 00000000(d)
        add     eax, 1                                  ; 5D01 _ 83. C0, 01
        mov     dword [_timerctl], eax                       ; 5D04 _ A3, 00000000(d)
        mov     byte [ebp-0DH], 0                       ; 5D09 _ C6. 45, F3, 00
        mov     dword [ebp-0CH], 0                      ; 5D0D _ C7. 45, F4, 00000000
        jmp     ?_367                                   ; 5D14 _ E9, 000000AA

?_364:  mov     eax, dword [ebp-0CH]                    ; 5D19 _ 8B. 45, F4
        shl     eax, 4                                  ; 5D1C _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 5D1F _ 05, 00000008(d)
        mov     eax, dword [eax]                        ; 5D24 _ 8B. 00
        cmp     eax, 2                                  ; 5D26 _ 83. F8, 02
        jne     ?_365                                   ; 5D29 _ 0F 85, 00000085
        mov     eax, dword [ebp-0CH]                    ; 5D2F _ 8B. 45, F4
        shl     eax, 4                                  ; 5D32 _ C1. E0, 04
        add     eax, _timerctl+4H                            ; 5D35 _ 05, 00000004(d)
        mov     eax, dword [eax]                        ; 5D3A _ 8B. 00
        lea     edx, [eax-1H]                           ; 5D3C _ 8D. 50, FF
        mov     eax, dword [ebp-0CH]                    ; 5D3F _ 8B. 45, F4
        shl     eax, 4                                  ; 5D42 _ C1. E0, 04
        add     eax, _timerctl+4H                            ; 5D45 _ 05, 00000004(d)
        mov     dword [eax], edx                        ; 5D4A _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 5D4C _ 8B. 45, F4
        shl     eax, 4                                  ; 5D4F _ C1. E0, 04
        add     eax, _timerctl+4H                            ; 5D52 _ 05, 00000004(d)
        mov     eax, dword [eax]                        ; 5D57 _ 8B. 00
        test    eax, eax                                ; 5D59 _ 85. C0
        jnz     ?_365                                   ; 5D5B _ 75, 57
        mov     eax, dword [ebp-0CH]                    ; 5D5D _ 8B. 45, F4
        shl     eax, 4                                  ; 5D60 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 5D63 _ 05, 00000008(d)
        mov     dword [eax], 1                          ; 5D68 _ C7. 00, 00000001
        mov     eax, dword [ebp-0CH]                    ; 5D6E _ 8B. 45, F4
        shl     eax, 4                                  ; 5D71 _ C1. E0, 04
        add     eax, _timerctl+10H                           ; 5D74 _ 05, 00000010(d)
        movzx   eax, byte [eax]                         ; 5D79 _ 0F B6. 00
        movzx   eax, al                                 ; 5D7C _ 0F B6. C0
        mov     edx, dword [ebp-0CH]                    ; 5D7F _ 8B. 55, F4
        shl     edx, 4                                  ; 5D82 _ C1. E2, 04
        add     edx, _timerctl+0CH                           ; 5D85 _ 81. C2, 0000000C(d)
        mov     edx, dword [edx]                        ; 5D8B _ 8B. 12
        mov     dword [esp+4H], eax                     ; 5D8D _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 5D91 _ 89. 14 24
        call    _fifo8_put                              ; 5D94 _ E8, 00000000(rel)
        mov     eax, dword [ebp-0CH]                    ; 5D99 _ 8B. 45, F4
        shl     eax, 4                                  ; 5D9C _ C1. E0, 04
        add     eax, _timerctl                               ; 5D9F _ 05, 00000000(d)
        lea     edx, [eax+4H]                           ; 5DA4 _ 8D. 50, 04
        mov     eax, dword [_task_timer]                ; 5DA7 _ A1, 00000000(d)
        cmp     edx, eax                                ; 5DAC _ 39. C2
        jnz     ?_365                                   ; 5DAE _ 75, 04
        mov     byte [ebp-0DH], 1                       ; 5DB0 _ C6. 45, F3, 01
?_365:  cmp     byte [ebp-0DH], 0                       ; 5DB4 _ 80. 7D, F3, 00
        jz      ?_366                                   ; 5DB8 _ 74, 05
        call    _task_switch                            ; 5DBA _ E8, 00000000(rel)
?_366:  add     dword [ebp-0CH], 1                      ; 5DBF _ 83. 45, F4, 01
?_367:  cmp     dword [ebp-0CH], 499                    ; 5DC3 _ 81. 7D, F4, 000001F3
        jle     ?_364                                   ; 5DCA _ 0F 8E, FFFFFF49
        nop                                             ; 5DD0 _ 90
        leave                                           ; 5DD1 _ C9
        ret                                             ; 5DD2 _ C3
; _intHandlerForTimer End of function

_getTimerController:; Function begin
        mov     eax, _timerctl                               ; 5DD3 _ B8, 00000000(d)
        ret                                             ; 5DD8 _ C3
; _getTimerController End of function

        nop                                             ; 5DD9 _ 90
        nop                                             ; 5DDA _ 90
        nop                                             ; 5DDB _ 90


_set_segmdesc:
        push    ebp                                     ; 5DDC _ 55
        mov     ebp, esp                                ; 5DDD _ 89. E5
        cmp     dword [ebp+0CH], 1048575                ; 5DDF _ 81. 7D, 0C, 000FFFFF
        jbe     ?_368                                   ; 5DE6 _ 76, 10
        or      dword [ebp+14H], 8000H                  ; 5DE8 _ 81. 4D, 14, 00008000
        mov     eax, dword [ebp+0CH]                    ; 5DEF _ 8B. 45, 0C
        shr     eax, 12                                 ; 5DF2 _ C1. E8, 0C
        mov     dword [ebp+0CH], eax                    ; 5DF5 _ 89. 45, 0C
?_368:  mov     eax, dword [ebp+0CH]                    ; 5DF8 _ 8B. 45, 0C
        mov     edx, eax                                ; 5DFB _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 5DFD _ 8B. 45, 08
        mov     word [eax], dx                          ; 5E00 _ 66: 89. 10
        mov     eax, dword [ebp+10H]                    ; 5E03 _ 8B. 45, 10
        mov     edx, eax                                ; 5E06 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 5E08 _ 8B. 45, 08
        mov     word [eax+2H], dx                       ; 5E0B _ 66: 89. 50, 02
        mov     eax, dword [ebp+10H]                    ; 5E0F _ 8B. 45, 10
        sar     eax, 16                                 ; 5E12 _ C1. F8, 10
        mov     edx, eax                                ; 5E15 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 5E17 _ 8B. 45, 08
        mov     byte [eax+4H], dl                       ; 5E1A _ 88. 50, 04
        mov     eax, dword [ebp+14H]                    ; 5E1D _ 8B. 45, 14
        mov     edx, eax                                ; 5E20 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 5E22 _ 8B. 45, 08
        mov     byte [eax+5H], dl                       ; 5E25 _ 88. 50, 05
        mov     eax, dword [ebp+0CH]                    ; 5E28 _ 8B. 45, 0C
        shr     eax, 16                                 ; 5E2B _ C1. E8, 10
        and     eax, 0FH                                ; 5E2E _ 83. E0, 0F
        mov     edx, eax                                ; 5E31 _ 89. C2
        mov     eax, dword [ebp+14H]                    ; 5E33 _ 8B. 45, 14
        sar     eax, 8                                  ; 5E36 _ C1. F8, 08
        and     eax, 0FFFFFFF0H                         ; 5E39 _ 83. E0, F0
        or      eax, edx                                ; 5E3C _ 09. D0
        mov     edx, eax                                ; 5E3E _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 5E40 _ 8B. 45, 08
        mov     byte [eax+6H], dl                       ; 5E43 _ 88. 50, 06
        mov     eax, dword [ebp+10H]                    ; 5E46 _ 8B. 45, 10
        shr     eax, 24                                 ; 5E49 _ C1. E8, 18
        mov     edx, eax                                ; 5E4C _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 5E4E _ 8B. 45, 08
        mov     byte [eax+7H], dl                       ; 5E51 _ 88. 50, 07
        nop                                             ; 5E54 _ 90
        pop     ebp                                     ; 5E55 _ 5D
        ret                                             ; 5E56 _ C3

_get_taskctl:; Function begin
        mov     eax, dword [_taskctl]                   ; 5E57 _ A1, 00000004(d)
        ret                                             ; 5E5C _ C3
; _get_taskctl End of function

_init_task_level:; Function begin
        push    ebp                                     ; 5E5D _ 55
        mov     ebp, esp                                ; 5E5E _ 89. E5
        sub     esp, 16                                 ; 5E60 _ 83. EC, 10
        mov     ecx, dword [_taskctl]                   ; 5E63 _ 8B. 0D, 00000004(d)
        mov     edx, dword [ebp+8H]                     ; 5E69 _ 8B. 55, 08
        mov     eax, edx                                ; 5E6C _ 89. D0
        add     eax, eax                                ; 5E6E _ 01. C0
        add     eax, edx                                ; 5E70 _ 01. D0
        shl     eax, 4                                  ; 5E72 _ C1. E0, 04
        add     eax, ecx                                ; 5E75 _ 01. C8
        add     eax, 8                                  ; 5E77 _ 83. C0, 08
        mov     dword [eax], 0                          ; 5E7A _ C7. 00, 00000000
        mov     ecx, dword [_taskctl]                   ; 5E80 _ 8B. 0D, 00000004(d)
        mov     edx, dword [ebp+8H]                     ; 5E86 _ 8B. 55, 08
        mov     eax, edx                                ; 5E89 _ 89. D0
        add     eax, eax                                ; 5E8B _ 01. C0
        add     eax, edx                                ; 5E8D _ 01. D0
        shl     eax, 4                                  ; 5E8F _ C1. E0, 04
        add     eax, ecx                                ; 5E92 _ 01. C8
        add     eax, 12                                 ; 5E94 _ 83. C0, 0C
        mov     dword [eax], 0                          ; 5E97 _ C7. 00, 00000000
        mov     dword [ebp-4H], 0                       ; 5E9D _ C7. 45, FC, 00000000
        jmp     ?_370                                   ; 5EA4 _ EB, 1B

?_369:  mov     edx, dword [_taskctl]                   ; 5EA6 _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-4H]                     ; 5EAC _ 8B. 45, FC
        imul    eax, eax, 52                            ; 5EAF _ 6B. C0, 34
        add     eax, edx                                ; 5EB2 _ 01. D0
        add     eax, 16                                 ; 5EB4 _ 83. C0, 10
        mov     dword [eax], 0                          ; 5EB7 _ C7. 00, 00000000
        add     dword [ebp-4H], 1                       ; 5EBD _ 83. 45, FC, 01
?_370:  cmp     dword [ebp-4H], 9                       ; 5EC1 _ 83. 7D, FC, 09
        jle     ?_369                                   ; 5EC5 _ 7E, DF
        nop                                             ; 5EC7 _ 90
        leave                                           ; 5EC8 _ C9
        ret                                             ; 5EC9 _ C3
; _init_task_level End of function

_task_init:; Function begin
        push    ebp                                     ; 5ECA _ 55
        mov     ebp, esp                                ; 5ECB _ 89. E5
        sub     esp, 40                                 ; 5ECD _ 83. EC, 28
        call    _get_addr_gdt                           ; 5ED0 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 5ED5 _ 89. 45, F0
        mov     dword [esp+4H], 3128                    ; 5ED8 _ C7. 44 24, 04, 00000C38
        mov     eax, dword [ebp+8H]                     ; 5EE0 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 5EE3 _ 89. 04 24
        call    _memman_alloc_4k                        ; 5EE6 _ E8, 00000000(rel)
        mov     dword [_taskctl], eax                   ; 5EEB _ A3, 00000004(d)
        mov     dword [ebp-0CH], 0                      ; 5EF0 _ C7. 45, F4, 00000000
        jmp     ?_372                                   ; 5EF7 _ E9, 000000FC

?_371:  mov     edx, dword [_taskctl]                   ; 5EFC _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-0CH]                    ; 5F02 _ 8B. 45, F4
        imul    eax, eax, 208                           ; 5F05 _ 69. C0, 000000D0
        add     eax, edx                                ; 5F0B _ 01. D0
        add     eax, 492                                ; 5F0D _ 05, 000001EC
        mov     dword [eax], 0                          ; 5F12 _ C7. 00, 00000000
        mov     eax, dword [ebp-0CH]                    ; 5F18 _ 8B. 45, F4
        add     eax, 7                                  ; 5F1B _ 83. C0, 07
        mov     ecx, dword [_taskctl]                   ; 5F1E _ 8B. 0D, 00000004(d)
        lea     edx, [eax*8]                            ; 5F24 _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-0CH]                    ; 5F2B _ 8B. 45, F4
        imul    eax, eax, 208                           ; 5F2E _ 69. C0, 000000D0
        add     eax, ecx                                ; 5F34 _ 01. C8
        add     eax, 488                                ; 5F36 _ 05, 000001E8
        mov     dword [eax], edx                        ; 5F3B _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 5F3D _ 8B. 45, F4
        add     eax, 17                                 ; 5F40 _ 83. C0, 11
        mov     ecx, dword [_taskctl]                   ; 5F43 _ 8B. 0D, 00000004(d)
        lea     edx, [eax*8]                            ; 5F49 _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-0CH]                    ; 5F50 _ 8B. 45, F4
        imul    eax, eax, 208                           ; 5F53 _ 69. C0, 000000D0
        add     eax, ecx                                ; 5F59 _ 01. C8
        add     eax, 628                                ; 5F5B _ 05, 00000274
        mov     dword [eax], edx                        ; 5F60 _ 89. 10
        mov     edx, dword [_taskctl]                   ; 5F62 _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-0CH]                    ; 5F68 _ 8B. 45, F4
        imul    eax, eax, 208                           ; 5F6B _ 69. C0, 000000D0
        add     eax, 512                                ; 5F71 _ 05, 00000200
        add     eax, edx                                ; 5F76 _ 01. D0
        add     eax, 20                                 ; 5F78 _ 83. C0, 14
        mov     ecx, eax                                ; 5F7B _ 89. C1
        mov     eax, dword [ebp-0CH]                    ; 5F7D _ 8B. 45, F4
        add     eax, 7                                  ; 5F80 _ 83. C0, 07
        lea     edx, [eax*8]                            ; 5F83 _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-10H]                    ; 5F8A _ 8B. 45, F0
        add     eax, edx                                ; 5F8D _ 01. D0
        mov     dword [esp+0CH], 137                    ; 5F8F _ C7. 44 24, 0C, 00000089
        mov     dword [esp+8H], ecx                     ; 5F97 _ 89. 4C 24, 08
        mov     dword [esp+4H], 103                     ; 5F9B _ C7. 44 24, 04, 00000067
        mov     dword [esp], eax                        ; 5FA3 _ 89. 04 24
        call    _set_segmdesc                           ; 5FA6 _ E8, FFFFFE31
        mov     edx, dword [_taskctl]                   ; 5FAB _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-0CH]                    ; 5FB1 _ 8B. 45, F4
        imul    eax, eax, 208                           ; 5FB4 _ 69. C0, 000000D0
        add     eax, 656                                ; 5FBA _ 05, 00000290
        add     eax, edx                                ; 5FBF _ 01. D0
        add     eax, 20                                 ; 5FC1 _ 83. C0, 14
        mov     ecx, eax                                ; 5FC4 _ 89. C1
        mov     eax, dword [ebp-0CH]                    ; 5FC6 _ 8B. 45, F4
        add     eax, 17                                 ; 5FC9 _ 83. C0, 11
        lea     edx, [eax*8]                            ; 5FCC _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-10H]                    ; 5FD3 _ 8B. 45, F0
        add     eax, edx                                ; 5FD6 _ 01. D0
        mov     dword [esp+0CH], 130                    ; 5FD8 _ C7. 44 24, 0C, 00000082
        mov     dword [esp+8H], ecx                     ; 5FE0 _ 89. 4C 24, 08
        mov     dword [esp+4H], 15                      ; 5FE4 _ C7. 44 24, 04, 0000000F
        mov     dword [esp], eax                        ; 5FEC _ 89. 04 24
        call    _set_segmdesc                           ; 5FEF _ E8, FFFFFDE8
        add     dword [ebp-0CH], 1                      ; 5FF4 _ 83. 45, F4, 01
?_372:  cmp     dword [ebp-0CH], 9                      ; 5FF8 _ 83. 7D, F4, 09
        jle     ?_371                                   ; 5FFC _ 0F 8E, FFFFFEFA
        mov     dword [ebp-0CH], 0                      ; 6002 _ C7. 45, F4, 00000000
        jmp     ?_374                                   ; 6009 _ EB, 0F

?_373:  mov     eax, dword [ebp-0CH]                    ; 600B _ 8B. 45, F4
        mov     dword [esp], eax                        ; 600E _ 89. 04 24
        call    _init_task_level                        ; 6011 _ E8, FFFFFE47
        add     dword [ebp-0CH], 1                      ; 6016 _ 83. 45, F4, 01
?_374:  cmp     dword [ebp-0CH], 9                      ; 601A _ 83. 7D, F4, 09
        jle     ?_373                                   ; 601E _ 7E, EB
        call    _task_alloc                             ; 6020 _ E8, 00000066
        mov     dword [ebp-14H], eax                    ; 6025 _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 6028 _ 8B. 45, EC
        mov     dword [eax+4H], 2                       ; 602B _ C7. 40, 04, 00000002
        mov     eax, dword [ebp-14H]                    ; 6032 _ 8B. 45, EC
        mov     dword [eax+8H], 100                     ; 6035 _ C7. 40, 08, 00000064
        mov     eax, dword [ebp-14H]                    ; 603C _ 8B. 45, EC
        mov     dword [eax+0CH], 0                      ; 603F _ C7. 40, 0C, 00000000
        mov     eax, dword [ebp-14H]                    ; 6046 _ 8B. 45, EC
        mov     dword [esp], eax                        ; 6049 _ 89. 04 24
        call    _task_add                               ; 604C _ E8, 0000034B
        call    _task_switchsub                         ; 6051 _ E8, 0000045F
        mov     eax, dword [ebp-14H]                    ; 6056 _ 8B. 45, EC
        mov     eax, dword [eax]                        ; 6059 _ 8B. 00
        mov     dword [esp], eax                        ; 605B _ 89. 04 24
        call    _load_tr                                ; 605E _ E8, 00000000(rel)
        call    _timer_alloc                            ; 6063 _ E8, 00000000(rel)
        mov     dword [_task_timer], eax                       ; 6068 _ A3, 00000000(d)
        mov     eax, dword [ebp-14H]                    ; 606D _ 8B. 45, EC
        mov     eax, dword [eax+8H]                     ; 6070 _ 8B. 40, 08
        mov     edx, eax                                ; 6073 _ 89. C2
        mov     eax, dword [_task_timer]                       ; 6075 _ A1, 00000000(d)
        mov     dword [esp+4H], edx                     ; 607A _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 607E _ 89. 04 24
        call    _timer_settime                          ; 6081 _ E8, 00000000(rel)
        mov     eax, dword [ebp-14H]                    ; 6086 _ 8B. 45, EC
        leave                                           ; 6089 _ C9
        ret                                             ; 608A _ C3
; _task_init End of function

_task_alloc:; Function begin
        push    ebp                                     ; 608B _ 55
        mov     ebp, esp                                ; 608C _ 89. E5
        sub     esp, 16                                 ; 608E _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 6091 _ C7. 45, FC, 00000000
        jmp     ?_377                                   ; 6098 _ E9, 000000F8

?_375:  mov     edx, dword [_taskctl]                   ; 609D _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-4H]                     ; 60A3 _ 8B. 45, FC
        imul    eax, eax, 208                           ; 60A6 _ 69. C0, 000000D0
        add     eax, edx                                ; 60AC _ 01. D0
        add     eax, 492                                ; 60AE _ 05, 000001EC
        mov     eax, dword [eax]                        ; 60B3 _ 8B. 00
        test    eax, eax                                ; 60B5 _ 85. C0
        jne     ?_376                                   ; 60B7 _ 0F 85, 000000D4
        mov     edx, dword [_taskctl]                   ; 60BD _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-4H]                     ; 60C3 _ 8B. 45, FC
        imul    eax, eax, 208                           ; 60C6 _ 69. C0, 000000D0
        add     eax, 480                                ; 60CC _ 05, 000001E0
        add     eax, edx                                ; 60D1 _ 01. D0
        add     eax, 8                                  ; 60D3 _ 83. C0, 08
        mov     dword [ebp-8H], eax                     ; 60D6 _ 89. 45, F8
        mov     eax, dword [ebp-8H]                     ; 60D9 _ 8B. 45, F8
        mov     dword [eax+4H], 1                       ; 60DC _ C7. 40, 04, 00000001
        mov     eax, dword [ebp-8H]                     ; 60E3 _ 8B. 45, F8
        mov     dword [eax+50H], 514                    ; 60E6 _ C7. 40, 50, 00000202
        mov     eax, dword [ebp-8H]                     ; 60ED _ 8B. 45, F8
        mov     dword [eax+54H], 0                      ; 60F0 _ C7. 40, 54, 00000000
        mov     eax, dword [ebp-8H]                     ; 60F7 _ 8B. 45, F8
        mov     dword [eax+58H], 0                      ; 60FA _ C7. 40, 58, 00000000
        mov     eax, dword [ebp-8H]                     ; 6101 _ 8B. 45, F8
        mov     dword [eax+5CH], 0                      ; 6104 _ C7. 40, 5C, 00000000
        mov     eax, dword [ebp-8H]                     ; 610B _ 8B. 45, F8
        mov     dword [eax+60H], 0                      ; 610E _ C7. 40, 60, 00000000
        mov     eax, dword [ebp-8H]                     ; 6115 _ 8B. 45, F8
        mov     dword [eax+68H], 0                      ; 6118 _ C7. 40, 68, 00000000
        mov     eax, dword [ebp-4H]                     ; 611F _ 8B. 45, FC
        add     eax, 1                                  ; 6122 _ 83. C0, 01
        shl     eax, 9                                  ; 6125 _ C1. E0, 09
        mov     edx, eax                                ; 6128 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 612A _ 8B. 45, F8
        mov     dword [eax+64H], edx                    ; 612D _ 89. 50, 64
        mov     eax, dword [ebp-8H]                     ; 6130 _ 8B. 45, F8
        mov     dword [eax+6CH], 0                      ; 6133 _ C7. 40, 6C, 00000000
        mov     eax, dword [ebp-8H]                     ; 613A _ 8B. 45, F8
        mov     dword [eax+70H], 0                      ; 613D _ C7. 40, 70, 00000000
        mov     eax, dword [ebp-8H]                     ; 6144 _ 8B. 45, F8
        mov     dword [eax+74H], 0                      ; 6147 _ C7. 40, 74, 00000000
        mov     eax, dword [ebp-8H]                     ; 614E _ 8B. 45, F8
        mov     dword [eax+80H], 0                      ; 6151 _ C7. 80, 00000080, 00000000
        mov     eax, dword [ebp-8H]                     ; 615B _ 8B. 45, F8
        mov     dword [eax+84H], 0                      ; 615E _ C7. 80, 00000084, 00000000
        mov     eax, dword [ebp-8H]                     ; 6168 _ 8B. 45, F8
        mov     dword [eax+88H], 0                      ; 616B _ C7. 80, 00000088, 00000000
        mov     eax, dword [ebp-8H]                     ; 6175 _ 8B. 45, F8
        mov     dword [eax+34H], 0                      ; 6178 _ C7. 40, 34, 00000000
        mov     eax, dword [ebp-8H]                     ; 617F _ 8B. 45, F8
        mov     dword [eax+90H], 1073741824             ; 6182 _ C7. 80, 00000090, 40000000
        mov     eax, dword [ebp-8H]                     ; 618C _ 8B. 45, F8
        jmp     ?_378                                   ; 618F _ EB, 13

?_376:  add     dword [ebp-4H], 1                       ; 6191 _ 83. 45, FC, 01
?_377:  cmp     dword [ebp-4H], 9                       ; 6195 _ 83. 7D, FC, 09
        jle     ?_375                                   ; 6199 _ 0F 8E, FFFFFEFE
        mov     eax, 0                                  ; 619F _ B8, 00000000
?_378:  leave                                           ; 61A4 _ C9
        ret                                             ; 61A5 _ C3
; _task_alloc End of function

_task_run:; Function begin
        push    ebp                                     ; 61A6 _ 55
        mov     ebp, esp                                ; 61A7 _ 89. E5
        sub     esp, 24                                 ; 61A9 _ 83. EC, 18
        cmp     dword [ebp+0CH], 0                      ; 61AC _ 83. 7D, 0C, 00
        jns     ?_379                                   ; 61B0 _ 79, 09
        mov     eax, dword [ebp+8H]                     ; 61B2 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 61B5 _ 8B. 40, 0C
        mov     dword [ebp+0CH], eax                    ; 61B8 _ 89. 45, 0C
?_379:  cmp     dword [ebp+10H], 0                      ; 61BB _ 83. 7D, 10, 00
        jle     ?_380                                   ; 61BF _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 61C1 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 61C4 _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 61C7 _ 89. 50, 08
?_380:  mov     eax, dword [ebp+8H]                     ; 61CA _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 61CD _ 8B. 40, 04
        cmp     eax, 2                                  ; 61D0 _ 83. F8, 02
        jnz     ?_381                                   ; 61D3 _ 75, 16
        mov     eax, dword [ebp+8H]                     ; 61D5 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 61D8 _ 8B. 40, 0C
        cmp     dword [ebp+0CH], eax                    ; 61DB _ 39. 45, 0C
        jz      ?_381                                   ; 61DE _ 74, 0B
        mov     eax, dword [ebp+8H]                     ; 61E0 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 61E3 _ 89. 04 24
        call    _task_remove                            ; 61E6 _ E8, 000001FD
?_381:  mov     eax, dword [ebp+8H]                     ; 61EB _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 61EE _ 8B. 40, 04
        cmp     eax, 2                                  ; 61F1 _ 83. F8, 02
        jz      ?_382                                   ; 61F4 _ 74, 14
        mov     eax, dword [ebp+8H]                     ; 61F6 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 61F9 _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 61FC _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 61FF _ 8B. 45, 08
        mov     dword [esp], eax                        ; 6202 _ 89. 04 24
        call    _task_add                               ; 6205 _ E8, 00000192
?_382:  mov     eax, dword [_taskctl]                   ; 620A _ A1, 00000004(d)
        mov     dword [eax+4H], 1                       ; 620F _ C7. 40, 04, 00000001
        nop                                             ; 6216 _ 90
        leave                                           ; 6217 _ C9
        ret                                             ; 6218 _ C3
; _task_run End of function

_task_switch:; Function begin
        push    ebp                                     ; 6219 _ 55
        mov     ebp, esp                                ; 621A _ 89. E5
        sub     esp, 40                                 ; 621C _ 83. EC, 28
        mov     ecx, dword [_taskctl]                   ; 621F _ 8B. 0D, 00000004(d)
        mov     eax, dword [_taskctl]                   ; 6225 _ A1, 00000004(d)
        mov     edx, dword [eax]                        ; 622A _ 8B. 10
        mov     eax, edx                                ; 622C _ 89. D0
        add     eax, eax                                ; 622E _ 01. C0
        add     eax, edx                                ; 6230 _ 01. D0
        shl     eax, 4                                  ; 6232 _ C1. E0, 04
        add     eax, ecx                                ; 6235 _ 01. C8
        add     eax, 8                                  ; 6237 _ 83. C0, 08
        mov     dword [ebp-0CH], eax                    ; 623A _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 623D _ 8B. 45, F4
        mov     edx, dword [eax+4H]                     ; 6240 _ 8B. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 6243 _ 8B. 45, F4
        mov     eax, dword [eax+edx*4+8H]               ; 6246 _ 8B. 44 90, 08
        mov     dword [ebp-10H], eax                    ; 624A _ 89. 45, F0
        mov     eax, dword [ebp-0CH]                    ; 624D _ 8B. 45, F4
        mov     eax, dword [eax+4H]                     ; 6250 _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 6253 _ 8D. 50, 01
        mov     eax, dword [ebp-0CH]                    ; 6256 _ 8B. 45, F4
        mov     dword [eax+4H], edx                     ; 6259 _ 89. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 625C _ 8B. 45, F4
        mov     edx, dword [eax+4H]                     ; 625F _ 8B. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 6262 _ 8B. 45, F4
        mov     eax, dword [eax]                        ; 6265 _ 8B. 00
        cmp     edx, eax                                ; 6267 _ 39. C2
        jnz     ?_383                                   ; 6269 _ 75, 0A
        mov     eax, dword [ebp-0CH]                    ; 626B _ 8B. 45, F4
        mov     dword [eax+4H], 0                       ; 626E _ C7. 40, 04, 00000000
?_383:  mov     eax, dword [_taskctl]                   ; 6275 _ A1, 00000004(d)
        mov     eax, dword [eax+4H]                     ; 627A _ 8B. 40, 04
        test    eax, eax                                ; 627D _ 85. C0
        jz      ?_384                                   ; 627F _ 74, 23
        call    _task_switchsub                         ; 6281 _ E8, 0000022F
        mov     ecx, dword [_taskctl]                   ; 6286 _ 8B. 0D, 00000004(d)
        mov     eax, dword [_taskctl]                   ; 628C _ A1, 00000004(d)
        mov     edx, dword [eax]                        ; 6291 _ 8B. 10
        mov     eax, edx                                ; 6293 _ 89. D0
        add     eax, eax                                ; 6295 _ 01. C0
        add     eax, edx                                ; 6297 _ 01. D0
        shl     eax, 4                                  ; 6299 _ C1. E0, 04
        add     eax, ecx                                ; 629C _ 01. C8
        add     eax, 8                                  ; 629E _ 83. C0, 08
        mov     dword [ebp-0CH], eax                    ; 62A1 _ 89. 45, F4
?_384:  mov     eax, dword [ebp-0CH]                    ; 62A4 _ 8B. 45, F4
        mov     edx, dword [eax+4H]                     ; 62A7 _ 8B. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 62AA _ 8B. 45, F4
        mov     eax, dword [eax+edx*4+8H]               ; 62AD _ 8B. 44 90, 08
        mov     dword [ebp-14H], eax                    ; 62B1 _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 62B4 _ 8B. 45, EC
        mov     eax, dword [eax+8H]                     ; 62B7 _ 8B. 40, 08
        mov     edx, eax                                ; 62BA _ 89. C2
        mov     eax, dword [_task_timer]                       ; 62BC _ A1, 00000000(d)
        mov     dword [esp+4H], edx                     ; 62C1 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 62C5 _ 89. 04 24
        call    _timer_settime                          ; 62C8 _ E8, 00000000(rel)
        mov     eax, dword [ebp-14H]                    ; 62CD _ 8B. 45, EC
        cmp     eax, dword [ebp-10H]                    ; 62D0 _ 3B. 45, F0
        jz      ?_385                                   ; 62D3 _ 74, 1C
        cmp     dword [ebp-14H], 0                      ; 62D5 _ 83. 7D, EC, 00
        jz      ?_385                                   ; 62D9 _ 74, 16
        mov     eax, dword [ebp-14H]                    ; 62DB _ 8B. 45, EC
        mov     eax, dword [eax]                        ; 62DE _ 8B. 00
        mov     dword [esp+4H], eax                     ; 62E0 _ 89. 44 24, 04
        mov     dword [esp], 0                          ; 62E4 _ C7. 04 24, 00000000
        call    _farjmp                                 ; 62EB _ E8, 00000000(rel)
        nop                                             ; 62F0 _ 90
?_385:  nop                                             ; 62F1 _ 90
        leave                                           ; 62F2 _ C9
        ret                                             ; 62F3 _ C3
; _task_switch End of function

_task_sleep:; Function begin
        push    ebp                                     ; 62F4 _ 55
        mov     ebp, esp                                ; 62F5 _ 89. E5
        sub     esp, 40                                 ; 62F7 _ 83. EC, 28
        mov     dword [ebp-10H], 0                      ; 62FA _ C7. 45, F0, 00000000
        mov     dword [ebp-0CH], 0                      ; 6301 _ C7. 45, F4, 00000000
        mov     eax, dword [ebp+8H]                     ; 6308 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 630B _ 8B. 40, 04
        cmp     eax, 2                                  ; 630E _ 83. F8, 02
        jnz     ?_386                                   ; 6311 _ 75, 51
        call    _task_now                               ; 6313 _ E8, 00000051
        mov     dword [ebp-10H], eax                    ; 6318 _ 89. 45, F0
        mov     eax, dword [ebp+8H]                     ; 631B _ 8B. 45, 08
        mov     dword [esp], eax                        ; 631E _ 89. 04 24
        call    _task_remove                            ; 6321 _ E8, 000000C2
        mov     dword [ebp-0CH], 1                      ; 6326 _ C7. 45, F4, 00000001
        mov     eax, dword [ebp+8H]                     ; 632D _ 8B. 45, 08
        cmp     eax, dword [ebp-10H]                    ; 6330 _ 3B. 45, F0
        jnz     ?_386                                   ; 6333 _ 75, 2F
        call    _task_switchsub                         ; 6335 _ E8, 0000017B
        call    _task_now                               ; 633A _ E8, 0000002A
        mov     dword [ebp-10H], eax                    ; 633F _ 89. 45, F0
        mov     dword [ebp-0CH], 2                      ; 6342 _ C7. 45, F4, 00000002
        cmp     dword [ebp-10H], 0                      ; 6349 _ 83. 7D, F0, 00
        jz      ?_386                                   ; 634D _ 74, 15
        mov     eax, dword [ebp-10H]                    ; 634F _ 8B. 45, F0
        mov     eax, dword [eax]                        ; 6352 _ 8B. 00
        mov     dword [esp+4H], eax                     ; 6354 _ 89. 44 24, 04
        mov     dword [esp], 0                          ; 6358 _ C7. 04 24, 00000000
        call    _farjmp                                 ; 635F _ E8, 00000000(rel)
?_386:  mov     eax, dword [ebp-0CH]                    ; 6364 _ 8B. 45, F4
        leave                                           ; 6367 _ C9
        ret                                             ; 6368 _ C3
; _task_sleep End of function

_task_now:; Function begin
        push    ebp                                     ; 6369 _ 55
        mov     ebp, esp                                ; 636A _ 89. E5
        sub     esp, 16                                 ; 636C _ 83. EC, 10
        mov     ecx, dword [_taskctl]                   ; 636F _ 8B. 0D, 00000004(d)
        mov     eax, dword [_taskctl]                   ; 6375 _ A1, 00000004(d)
        mov     edx, dword [eax]                        ; 637A _ 8B. 10
        mov     eax, edx                                ; 637C _ 89. D0
        add     eax, eax                                ; 637E _ 01. C0
        add     eax, edx                                ; 6380 _ 01. D0
        shl     eax, 4                                  ; 6382 _ C1. E0, 04
        add     eax, ecx                                ; 6385 _ 01. C8
        add     eax, 8                                  ; 6387 _ 83. C0, 08
        mov     dword [ebp-4H], eax                     ; 638A _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 638D _ 8B. 45, FC
        mov     edx, dword [eax+4H]                     ; 6390 _ 8B. 50, 04
        mov     eax, dword [ebp-4H]                     ; 6393 _ 8B. 45, FC
        mov     eax, dword [eax+edx*4+8H]               ; 6396 _ 8B. 44 90, 08
        leave                                           ; 639A _ C9
        ret                                             ; 639B _ C3
; _task_now End of function

_task_add:; Function begin
        push    ebp                                     ; 639C _ 55
        mov     ebp, esp                                ; 639D _ 89. E5
        sub     esp, 16                                 ; 639F _ 83. EC, 10
        mov     ecx, dword [_taskctl]                   ; 63A2 _ 8B. 0D, 00000004(d)
        mov     eax, dword [ebp+8H]                     ; 63A8 _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 63AB _ 8B. 50, 0C
        mov     eax, edx                                ; 63AE _ 89. D0
        add     eax, eax                                ; 63B0 _ 01. C0
        add     eax, edx                                ; 63B2 _ 01. D0
        shl     eax, 4                                  ; 63B4 _ C1. E0, 04
        add     eax, ecx                                ; 63B7 _ 01. C8
        add     eax, 8                                  ; 63B9 _ 83. C0, 08
        mov     dword [ebp-4H], eax                     ; 63BC _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 63BF _ 8B. 45, FC
        mov     edx, dword [eax]                        ; 63C2 _ 8B. 10
        mov     eax, dword [ebp-4H]                     ; 63C4 _ 8B. 45, FC
        mov     ecx, dword [ebp+8H]                     ; 63C7 _ 8B. 4D, 08
        mov     dword [eax+edx*4+8H], ecx               ; 63CA _ 89. 4C 90, 08
        mov     eax, dword [ebp-4H]                     ; 63CE _ 8B. 45, FC
        mov     eax, dword [eax]                        ; 63D1 _ 8B. 00
        lea     edx, [eax+1H]                           ; 63D3 _ 8D. 50, 01
        mov     eax, dword [ebp-4H]                     ; 63D6 _ 8B. 45, FC
        mov     dword [eax], edx                        ; 63D9 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 63DB _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 63DE _ C7. 40, 04, 00000002
        nop                                             ; 63E5 _ 90
        leave                                           ; 63E6 _ C9
        ret                                             ; 63E7 _ C3
; _task_add End of function

_task_remove:; Function begin
        push    ebp                                     ; 63E8 _ 55
        mov     ebp, esp                                ; 63E9 _ 89. E5
        sub     esp, 16                                 ; 63EB _ 83. EC, 10
        mov     ecx, dword [_taskctl]                   ; 63EE _ 8B. 0D, 00000004(d)
        mov     eax, dword [ebp+8H]                     ; 63F4 _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 63F7 _ 8B. 50, 0C
        mov     eax, edx                                ; 63FA _ 89. D0
        add     eax, eax                                ; 63FC _ 01. C0
        add     eax, edx                                ; 63FE _ 01. D0
        shl     eax, 4                                  ; 6400 _ C1. E0, 04
        add     eax, ecx                                ; 6403 _ 01. C8
        add     eax, 8                                  ; 6405 _ 83. C0, 08
        mov     dword [ebp-8H], eax                     ; 6408 _ 89. 45, F8
        mov     dword [ebp-4H], 0                       ; 640B _ C7. 45, FC, 00000000
        jmp     ?_389                                   ; 6412 _ EB, 23

?_387:  mov     eax, dword [ebp-8H]                     ; 6414 _ 8B. 45, F8
        mov     edx, dword [ebp-4H]                     ; 6417 _ 8B. 55, FC
        mov     eax, dword [eax+edx*4+8H]               ; 641A _ 8B. 44 90, 08
        cmp     dword [ebp+8H], eax                     ; 641E _ 39. 45, 08
        jnz     ?_388                                   ; 6421 _ 75, 10
        mov     eax, dword [ebp-8H]                     ; 6423 _ 8B. 45, F8
        mov     edx, dword [ebp-4H]                     ; 6426 _ 8B. 55, FC
        mov     dword [eax+edx*4+8H], 0                 ; 6429 _ C7. 44 90, 08, 00000000
        jmp     ?_390                                   ; 6431 _ EB, 0E

?_388:  add     dword [ebp-4H], 1                       ; 6433 _ 83. 45, FC, 01
?_389:  mov     eax, dword [ebp-8H]                     ; 6437 _ 8B. 45, F8
        mov     eax, dword [eax]                        ; 643A _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 643C _ 39. 45, FC
        jl      ?_387                                   ; 643F _ 7C, D3
?_390:  mov     eax, dword [ebp-8H]                     ; 6441 _ 8B. 45, F8
        mov     eax, dword [eax]                        ; 6444 _ 8B. 00
        lea     edx, [eax-1H]                           ; 6446 _ 8D. 50, FF
        mov     eax, dword [ebp-8H]                     ; 6449 _ 8B. 45, F8
        mov     dword [eax], edx                        ; 644C _ 89. 10
        mov     eax, dword [ebp-8H]                     ; 644E _ 8B. 45, F8
        mov     eax, dword [eax+4H]                     ; 6451 _ 8B. 40, 04
        cmp     dword [ebp-4H], eax                     ; 6454 _ 39. 45, FC
        jge     ?_391                                   ; 6457 _ 7D, 0F
        mov     eax, dword [ebp-8H]                     ; 6459 _ 8B. 45, F8
        mov     eax, dword [eax+4H]                     ; 645C _ 8B. 40, 04
        lea     edx, [eax-1H]                           ; 645F _ 8D. 50, FF
        mov     eax, dword [ebp-8H]                     ; 6462 _ 8B. 45, F8
        mov     dword [eax+4H], edx                     ; 6465 _ 89. 50, 04
?_391:  mov     eax, dword [ebp-8H]                     ; 6468 _ 8B. 45, F8
        mov     edx, dword [eax+4H]                     ; 646B _ 8B. 50, 04
        mov     eax, dword [ebp-8H]                     ; 646E _ 8B. 45, F8
        mov     eax, dword [eax]                        ; 6471 _ 8B. 00
        cmp     edx, eax                                ; 6473 _ 39. C2
        jl      ?_392                                   ; 6475 _ 7C, 0A
        mov     eax, dword [ebp-8H]                     ; 6477 _ 8B. 45, F8
        mov     dword [eax+4H], 0                       ; 647A _ C7. 40, 04, 00000000
?_392:  mov     eax, dword [ebp+8H]                     ; 6481 _ 8B. 45, 08
        mov     dword [eax+4H], 1                       ; 6484 _ C7. 40, 04, 00000001
        jmp     ?_394                                   ; 648B _ EB, 1B

?_393:  mov     eax, dword [ebp-4H]                     ; 648D _ 8B. 45, FC
        lea     edx, [eax+1H]                           ; 6490 _ 8D. 50, 01
        mov     eax, dword [ebp-8H]                     ; 6493 _ 8B. 45, F8
        mov     ecx, dword [eax+edx*4+8H]               ; 6496 _ 8B. 4C 90, 08
        mov     eax, dword [ebp-8H]                     ; 649A _ 8B. 45, F8
        mov     edx, dword [ebp-4H]                     ; 649D _ 8B. 55, FC
        mov     dword [eax+edx*4+8H], ecx               ; 64A0 _ 89. 4C 90, 08
        add     dword [ebp-4H], 1                       ; 64A4 _ 83. 45, FC, 01
?_394:  mov     eax, dword [ebp-8H]                     ; 64A8 _ 8B. 45, F8
        mov     eax, dword [eax]                        ; 64AB _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 64AD _ 39. 45, FC
        jl      ?_393                                   ; 64B0 _ 7C, DB
        nop                                             ; 64B2 _ 90
        leave                                           ; 64B3 _ C9
        ret                                             ; 64B4 _ C3
; _task_remove End of function

_task_switchsub:; Function begin
        push    ebp                                     ; 64B5 _ 55
        mov     ebp, esp                                ; 64B6 _ 89. E5
        sub     esp, 16                                 ; 64B8 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 64BB _ C7. 45, FC, 00000000
        jmp     ?_396                                   ; 64C2 _ EB, 21

?_395:  mov     ecx, dword [_taskctl]                   ; 64C4 _ 8B. 0D, 00000004(d)
        mov     edx, dword [ebp-4H]                     ; 64CA _ 8B. 55, FC
        mov     eax, edx                                ; 64CD _ 89. D0
        add     eax, eax                                ; 64CF _ 01. C0
        add     eax, edx                                ; 64D1 _ 01. D0
        shl     eax, 4                                  ; 64D3 _ C1. E0, 04
        add     eax, ecx                                ; 64D6 _ 01. C8
        add     eax, 8                                  ; 64D8 _ 83. C0, 08
        mov     eax, dword [eax]                        ; 64DB _ 8B. 00
        test    eax, eax                                ; 64DD _ 85. C0
        jg      ?_397                                   ; 64DF _ 7F, 0C
        add     dword [ebp-4H], 1                       ; 64E1 _ 83. 45, FC, 01
?_396:  cmp     dword [ebp-4H], 9                       ; 64E5 _ 83. 7D, FC, 09
        jle     ?_395                                   ; 64E9 _ 7E, D9
        jmp     ?_398                                   ; 64EB _ EB, 01

?_397:  nop                                             ; 64ED _ 90
?_398:  mov     eax, dword [_taskctl]                   ; 64EE _ A1, 00000004(d)
        mov     edx, dword [ebp-4H]                     ; 64F3 _ 8B. 55, FC
        mov     dword [eax], edx                        ; 64F6 _ 89. 10
        mov     eax, dword [_taskctl]                   ; 64F8 _ A1, 00000004(d)
        mov     dword [eax+4H], 0                       ; 64FD _ C7. 40, 04, 00000000
        nop                                             ; 6504 _ 90
        leave                                           ; 6505 _ C9
        ret                                             ; 6506 _ C3
; _task_switchsub End of function

_send_message:; Function begin
        push    ebp                                     ; 6507 _ 55
        mov     ebp, esp                                ; 6508 _ 89. E5
        sub     esp, 24                                 ; 650A _ 83. EC, 18
        mov     eax, dword [ebp+10H]                    ; 650D _ 8B. 45, 10
        movzx   eax, al                                 ; 6510 _ 0F B6. C0
        mov     edx, dword [ebp+0CH]                    ; 6513 _ 8B. 55, 0C
        add     edx, 16                                 ; 6516 _ 83. C2, 10
        mov     dword [esp+4H], eax                     ; 6519 _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 651D _ 89. 14 24
        call    _fifo8_put                              ; 6520 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 6525 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 6528 _ 89. 04 24
        call    _task_sleep                             ; 652B _ E8, FFFFFDC4
        nop                                             ; 6530 _ 90
        leave                                           ; 6531 _ C9
        ret                                             ; 6532 _ C3
; _send_message End of function

        nop                                             ; 6533 _ 90


_strcmp:
        push    ebp                                     ; 6534 _ 55
        mov     ebp, esp                                ; 6535 _ 89. E5
        sub     esp, 16                                 ; 6537 _ 83. EC, 10
        cmp     dword [ebp+8H], 0                       ; 653A _ 83. 7D, 08, 00
        jz      ?_399                                   ; 653E _ 74, 06
        cmp     dword [ebp+0CH], 0                      ; 6540 _ 83. 7D, 0C, 00
        jnz     ?_400                                   ; 6544 _ 75, 0A
?_399:  mov     eax, 0                                  ; 6546 _ B8, 00000000
        jmp     ?_407                                   ; 654B _ E9, 0000009B

?_400:  mov     dword [ebp-4H], 0                       ; 6550 _ C7. 45, FC, 00000000
        jmp     ?_403                                   ; 6557 _ EB, 25

?_401:  mov     edx, dword [ebp-4H]                     ; 6559 _ 8B. 55, FC
        mov     eax, dword [ebp+8H]                     ; 655C _ 8B. 45, 08
        add     eax, edx                                ; 655F _ 01. D0
        movzx   edx, byte [eax]                         ; 6561 _ 0F B6. 10
        mov     ecx, dword [ebp-4H]                     ; 6564 _ 8B. 4D, FC
        mov     eax, dword [ebp+0CH]                    ; 6567 _ 8B. 45, 0C
        add     eax, ecx                                ; 656A _ 01. C8
        movzx   eax, byte [eax]                         ; 656C _ 0F B6. 00
        cmp     dl, al                                  ; 656F _ 38. C2
        jz      ?_402                                   ; 6571 _ 74, 07
        mov     eax, 0                                  ; 6573 _ B8, 00000000
        jmp     ?_407                                   ; 6578 _ EB, 71

?_402:  add     dword [ebp-4H], 1                       ; 657A _ 83. 45, FC, 01
?_403:  mov     edx, dword [ebp-4H]                     ; 657E _ 8B. 55, FC
        mov     eax, dword [ebp+8H]                     ; 6581 _ 8B. 45, 08
        add     eax, edx                                ; 6584 _ 01. D0
        movzx   eax, byte [eax]                         ; 6586 _ 0F B6. 00
        test    al, al                                  ; 6589 _ 84. C0
        jz      ?_404                                   ; 658B _ 74, 0F
        mov     edx, dword [ebp-4H]                     ; 658D _ 8B. 55, FC
        mov     eax, dword [ebp+0CH]                    ; 6590 _ 8B. 45, 0C
        add     eax, edx                                ; 6593 _ 01. D0
        movzx   eax, byte [eax]                         ; 6595 _ 0F B6. 00
        test    al, al                                  ; 6598 _ 84. C0
        jnz     ?_401                                   ; 659A _ 75, BD
?_404:  mov     edx, dword [ebp-4H]                     ; 659C _ 8B. 55, FC
        mov     eax, dword [ebp+8H]                     ; 659F _ 8B. 45, 08
        add     eax, edx                                ; 65A2 _ 01. D0
        movzx   eax, byte [eax]                         ; 65A4 _ 0F B6. 00
        test    al, al                                  ; 65A7 _ 84. C0
        jnz     ?_405                                   ; 65A9 _ 75, 16
        mov     edx, dword [ebp-4H]                     ; 65AB _ 8B. 55, FC
        mov     eax, dword [ebp+0CH]                    ; 65AE _ 8B. 45, 0C
        add     eax, edx                                ; 65B1 _ 01. D0
        movzx   eax, byte [eax]                         ; 65B3 _ 0F B6. 00
        test    al, al                                  ; 65B6 _ 84. C0
        jz      ?_405                                   ; 65B8 _ 74, 07
        mov     eax, 0                                  ; 65BA _ B8, 00000000
        jmp     ?_407                                   ; 65BF _ EB, 2A

?_405:  mov     edx, dword [ebp-4H]                     ; 65C1 _ 8B. 55, FC
        mov     eax, dword [ebp+8H]                     ; 65C4 _ 8B. 45, 08
        add     eax, edx                                ; 65C7 _ 01. D0
        movzx   eax, byte [eax]                         ; 65C9 _ 0F B6. 00
        test    al, al                                  ; 65CC _ 84. C0
        jz      ?_406                                   ; 65CE _ 74, 16
        mov     edx, dword [ebp-4H]                     ; 65D0 _ 8B. 55, FC
        mov     eax, dword [ebp+0CH]                    ; 65D3 _ 8B. 45, 0C
        add     eax, edx                                ; 65D6 _ 01. D0
        movzx   eax, byte [eax]                         ; 65D8 _ 0F B6. 00
        test    al, al                                  ; 65DB _ 84. C0
        jz      ?_406                                   ; 65DD _ 74, 07
        mov     eax, 0                                  ; 65DF _ B8, 00000000
        jmp     ?_407                                   ; 65E4 _ EB, 05

?_406:  mov     eax, 1                                  ; 65E6 _ B8, 00000001
?_407:  leave                                           ; 65EB _ C9
        ret                                             ; 65EC _ C3

        nop                                             ; 65ED _ 90
        nop                                             ; 65EE _ 90
        nop                                             ; 65EF _ 90



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

?_408:  db 00H                                          ; 0112 _ .

?_409:  db 00H, 00H, 00H, 00H, 00H                      ; 0113 _ .....

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
        db 68H, 6CH, 74H, 00H                           ; 002D _ hlt.

?_420:                                                  ; byte
        db 61H, 62H, 63H, 2EH, 65H, 78H, 65H, 00H       ; 0031 _ abc.exe.

?_421:                                                  ; byte
        db 64H, 69H, 72H, 00H                           ; 0039 _ dir.

?_422:                                                  ; byte
        db 65H, 78H, 69H, 74H, 00H                      ; 003D _ exit.

?_423:                                                  ; byte
        db 73H, 74H, 61H, 72H, 74H, 00H                 ; 0042 _ start.

?_424:                                                  ; byte
        db 6EH, 63H, 73H, 74H, 00H                      ; 0048 _ ncst.

?_425:                                                  ; byte
        db 63H, 72H, 61H, 63H, 6BH, 00H                 ; 004D _ crack.

?_426:                                                  ; byte
        db 63H, 72H, 61H, 63H, 6BH, 2EH, 65H, 78H       ; 0053 _ crack.ex
        db 65H, 00H                                     ; 005B _ e.

?_427:                                                  ; byte
        db 6BH, 65H, 79H, 62H, 6FH, 61H, 72H, 64H       ; 005D _ keyboard
        db 00H                                          ; 0065 _ .

?_428:                                                  ; byte
        db 75H, 73H, 65H, 72H, 20H, 70H, 72H, 6FH       ; 0066 _ user pro
        db 63H, 00H                                     ; 006E _ c.

?_429:                                                  ; byte
        db 70H, 61H, 67H, 65H, 20H, 69H, 73H, 3AH       ; 0070 _ page is:
        db 20H, 00H                                     ; 0078 _  .

?_430:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 007A _ BaseAddr
        db 4CH, 3AH, 20H, 00H                           ; 0082 _ L: .

?_431:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0086 _ BaseAddr
        db 48H, 3AH, 20H, 00H                           ; 008E _ H: .

?_432:                                                  ; byte
        db 6CH, 65H, 6EH, 67H, 74H, 68H, 4CH, 6FH       ; 0092 _ lengthLo
        db 77H, 3AH, 20H, 00H                           ; 009A _ w: .

?_433:                                                  ; byte
        db 49H, 4EH, 54H, 20H, 4FH, 43H, 00H            ; 009E _ INT OC.

?_434:                                                  ; byte
        db 53H, 74H, 61H, 63H, 6BH, 20H, 45H, 78H       ; 00A5 _ Stack Ex
        db 63H, 65H, 70H, 74H, 69H, 6FH, 6EH, 00H       ; 00AD _ ception.

?_435:                                                  ; byte
        db 45H, 49H, 50H, 20H, 3DH, 20H, 00H            ; 00B5 _ EIP = .

?_436:                                                  ; byte
        db 49H, 4EH, 54H, 20H, 30H, 44H, 20H, 00H       ; 00BC _ INT 0D .

?_437:                                                  ; byte
        db 47H, 65H, 6EH, 65H, 72H, 61H, 6CH, 20H       ; 00C4 _ General 
        db 50H, 72H, 6FH, 74H, 65H, 63H, 74H, 65H       ; 00CC _ Protecte
        db 64H, 20H, 45H, 78H, 63H, 65H, 70H, 74H       ; 00D4 _ d Except
        db 69H, 6FH, 6EH, 00H                           ; 00DC _ ion.


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

?_438:  resw    1                                       ; 0018

?_439:  resw    1                                       ; 001A

_keyinfo:                                               ; byte
        resb    24                                      ; 001C

?_440:  resd    1                                       ; 0034

_mouseinfo:                                             ; byte
        resb    40                                      ; 0038

_keybuf:                                                ; byte
        resb    32                                      ; 0060

_mousebuf:                                              ; byte
        resb    128                                     ; 0080

_mdec:                                                  ; byte
        resb    12                                      ; 0100

?_441:  resd    1                                       ; 010C

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

?_442:  resb    9                                       ; 0375

?_443:  resb    2                                       ; 037E

_timerctl:                                              ; byte
        resb    8032                                    ; 0380

_task_timer:                                            ; byte
        resb    4                                       ; 22E0

_taskctl:                                               ; byte
        resb    4                                       ; 22E4


