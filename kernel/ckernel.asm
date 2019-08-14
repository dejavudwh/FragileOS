; Disassembly of file: ckernel.o
; Wed Aug 14 11:16:19 2019
; Mode: 32 bits
; Syntax: YASM/NASM
; Instruction set: Pentium Pro







_CMain:
        push    ebp                                     ; 0000 _ 55
        mov     ebp, esp                                ; 0001 _ 89. E5
        push    ebx                                     ; 0003 _ 53
        sub     esp, 148                                ; 0004 _ 81. EC, 00000094
        mov     dword [esp], _bootInfo                  ; 000A _ C7. 04 24, 00000010(d)
        call    _initBootInfo                           ; 0011 _ E8, 00002C41
        mov     eax, dword [_bootInfo]                  ; 0016 _ A1, 00000010(d)
        mov     dword [ebp-1CH], eax                    ; 001B _ 89. 45, E4
        movzx   eax, word [?_380]                       ; 001E _ 0F B7. 05, 00000014(d)
        cwde                                            ; 0025 _ 98
        mov     dword [_xsize], eax                     ; 0026 _ A3, 0000013C(d)
        movzx   eax, word [?_381]                       ; 002B _ 0F B7. 05, 00000016(d)
        cwde                                            ; 0032 _ 98
        mov     dword [_ysize], eax                     ; 0033 _ A3, 00000140(d)
        call    _init_pit                               ; 0038 _ E8, 00000000(rel)
        mov     dword [esp+0CH], 0                      ; 003D _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], _timerbuf               ; 0045 _ C7. 44 24, 08, 0000012C(d)
        mov     dword [esp+4H], 8                       ; 004D _ C7. 44 24, 04, 00000008
        mov     dword [esp], _timerinfo                 ; 0055 _ C7. 04 24, 00000110(d)
        call    _fifo8_init                             ; 005C _ E8, 00000000(rel)
        call    _timer_alloc                            ; 0061 _ E8, 00000000(rel)
        mov     dword [ebp-20H], eax                    ; 0066 _ 89. 45, E0
        mov     dword [esp+8H], 10                      ; 0069 _ C7. 44 24, 08, 0000000A
        mov     dword [esp+4H], _timerinfo              ; 0071 _ C7. 44 24, 04, 00000110(d)
        mov     eax, dword [ebp-20H]                    ; 0079 _ 8B. 45, E0
        mov     dword [esp], eax                        ; 007C _ 89. 04 24
        call    _timer_init                             ; 007F _ E8, 00000000(rel)
        mov     dword [esp+4H], 100                     ; 0084 _ C7. 44 24, 04, 00000064
        mov     eax, dword [ebp-20H]                    ; 008C _ 8B. 45, E0
        mov     dword [esp], eax                        ; 008F _ 89. 04 24
        call    _timer_settime                          ; 0092 _ E8, 00000000(rel)
        call    _timer_alloc                            ; 0097 _ E8, 00000000(rel)
        mov     dword [ebp-24H], eax                    ; 009C _ 89. 45, DC
        mov     dword [esp+8H], 2                       ; 009F _ C7. 44 24, 08, 00000002
        mov     dword [esp+4H], _timerinfo              ; 00A7 _ C7. 44 24, 04, 00000110(d)
        mov     eax, dword [ebp-24H]                    ; 00AF _ 8B. 45, DC
        mov     dword [esp], eax                        ; 00B2 _ 89. 04 24
        call    _timer_init                             ; 00B5 _ E8, 00000000(rel)
        mov     dword [esp+4H], 300                     ; 00BA _ C7. 44 24, 04, 0000012C
        mov     eax, dword [ebp-24H]                    ; 00C2 _ 8B. 45, DC
        mov     dword [esp], eax                        ; 00C5 _ 89. 04 24
        call    _timer_settime                          ; 00C8 _ E8, 00000000(rel)
        call    _timer_alloc                            ; 00CD _ E8, 00000000(rel)
        mov     dword [ebp-28H], eax                    ; 00D2 _ 89. 45, D8
        mov     dword [esp+8H], 1                       ; 00D5 _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], _timerinfo              ; 00DD _ C7. 44 24, 04, 00000110(d)
        mov     eax, dword [ebp-28H]                    ; 00E5 _ 8B. 45, D8
        mov     dword [esp], eax                        ; 00E8 _ 89. 04 24
        call    _timer_init                             ; 00EB _ E8, 00000000(rel)
        mov     dword [esp+4H], 50                      ; 00F0 _ C7. 44 24, 04, 00000032
        mov     eax, dword [ebp-28H]                    ; 00F8 _ 8B. 45, D8
        mov     dword [esp], eax                        ; 00FB _ 89. 04 24
        call    _timer_settime                          ; 00FE _ E8, 00000000(rel)
        mov     dword [esp+0CH], 0                      ; 0103 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], _keybuf                 ; 010B _ C7. 44 24, 08, 00000060(d)
        mov     dword [esp+4H], 32                      ; 0113 _ C7. 44 24, 04, 00000020
        mov     dword [esp], _keyinfo                   ; 011B _ C7. 04 24, 00000018(d)
        call    _fifo8_init                             ; 0122 _ E8, 00000000(rel)
        mov     dword [esp+0CH], 0                      ; 0127 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], _mousebuf               ; 012F _ C7. 44 24, 08, 00000080(d)
        mov     dword [esp+4H], 128                     ; 0137 _ C7. 44 24, 04, 00000080
        mov     dword [esp], _mouseinfo                 ; 013F _ C7. 04 24, 00000034(d)
        call    _fifo8_init                             ; 0146 _ E8, 00000000(rel)
        call    _init_palette                           ; 014B _ E8, 00002B28
        call    _init_keyboard                          ; 0150 _ E8, 000031CB
        call    _get_memory_block_count                 ; 0155 _ E8, 00000000(rel)
        mov     dword [ebp-2CH], eax                    ; 015A _ 89. 45, D4
        call    _get_addr_buffer                        ; 015D _ E8, 00000000(rel)
        mov     dword [ebp-30H], eax                    ; 0162 _ 89. 45, D0
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
        mov     edx, dword [ebp-1CH]                    ; 01A8 _ 8B. 55, E4
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
        call    _init_screen8                           ; 0281 _ E8, 00002262
        mov     dword [esp+4H], 99                      ; 0286 _ C7. 44 24, 04, 00000063
        mov     dword [esp], _buf_mouse                 ; 028E _ C7. 04 24, 00000160(d)
        call    _init_mouse_cursor                      ; 0295 _ E8, 00002DB4
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
        mov     dword [esp+4H], ?_356                   ; 032B _ C7. 44 24, 04, 00000000(d)
        mov     dword [esp], eax                        ; 0333 _ 89. 04 24
        call    _message_box                            ; 0336 _ E8, 00003410
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
        call    _enable_mouse                           ; 038A _ E8, 00002FCC
        mov     eax, dword [_memman]                    ; 038F _ A1, 00000000(d)
        mov     dword [esp], eax                        ; 0394 _ 89. 04 24
        call    _task_init                              ; 0397 _ E8, 00000000(rel)
        mov     dword [_task_a.2358], eax               ; 039C _ A3, 00000280(d)
        mov     eax, dword [_task_a.2358]               ; 03A1 _ A1, 00000280(d)
        mov     dword [?_382], eax                      ; 03A6 _ A3, 00000030(d)
        mov     eax, dword [_task_a.2358]               ; 03AB _ A1, 00000280(d)
        mov     dword [_task_main], eax                 ; 03B0 _ A3, 0000027C(d)
        mov     eax, dword [_task_a.2358]               ; 03B5 _ A1, 00000280(d)
        mov     dword [esp+8H], 0                       ; 03BA _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], 0                       ; 03C2 _ C7. 44 24, 04, 00000000
        mov     dword [esp], eax                        ; 03CA _ 89. 04 24
        call    _task_run                               ; 03CD _ E8, 00000000(rel)
        mov     dword [ebp-14H], 0                      ; 03D2 _ C7. 45, EC, 00000000
        mov     dword [ebp-14H], 0                      ; 03D9 _ C7. 45, EC, 00000000
        jmp     ?_002                                   ; 03E0 _ EB, 18

?_001:  mov     eax, dword [ebp-14H]                    ; 03E2 _ 8B. 45, EC
        mov     dword [esp], eax                        ; 03E5 _ 89. 04 24
        call    _launch_console                         ; 03E8 _ E8, 000007D4
        mov     edx, eax                                ; 03ED _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 03EF _ 8B. 45, EC
        mov     dword [ebp+eax*4-70H], edx              ; 03F2 _ 89. 54 85, 90
        add     dword [ebp-14H], 1                      ; 03F6 _ 83. 45, EC, 01
?_002:  cmp     dword [ebp-14H], 1                      ; 03FA _ 83. 7D, EC, 01
        jle     ?_001                                   ; 03FE _ 7E, E2
        mov     edx, dword [ebp-6CH]                    ; 0400 _ 8B. 55, 94
        mov     eax, dword [_shtctl]                    ; 0403 _ A1, 00000264(d)
        mov     dword [esp+0CH], 176                    ; 0408 _ C7. 44 24, 0C, 000000B0
        mov     dword [esp+8H], 156                     ; 0410 _ C7. 44 24, 08, 0000009C
        mov     dword [esp+4H], edx                     ; 0418 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 041C _ 89. 04 24
        call    _sheet_slide                            ; 041F _ E8, 00000000(rel)
        mov     edx, dword [ebp-70H]                    ; 0424 _ 8B. 55, 90
        mov     eax, dword [_shtctl]                    ; 0427 _ A1, 00000264(d)
        mov     dword [esp+0CH], 2                      ; 042C _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 8                       ; 0434 _ C7. 44 24, 08, 00000008
        mov     dword [esp+4H], edx                     ; 043C _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0440 _ 89. 04 24
        call    _sheet_slide                            ; 0443 _ E8, 00000000(rel)
        mov     edx, dword [ebp-6CH]                    ; 0448 _ 8B. 55, 94
        mov     eax, dword [_shtctl]                    ; 044B _ A1, 00000264(d)
        mov     dword [esp+8H], 1                       ; 0450 _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], edx                     ; 0458 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 045C _ 89. 04 24
        call    _sheet_updown                           ; 045F _ E8, 00000000(rel)
        mov     edx, dword [ebp-70H]                    ; 0464 _ 8B. 55, 90
        mov     eax, dword [_shtctl]                    ; 0467 _ A1, 00000264(d)
        mov     dword [esp+8H], 2                       ; 046C _ C7. 44 24, 08, 00000002
        mov     dword [esp+4H], edx                     ; 0474 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0478 _ 89. 04 24
        call    _sheet_updown                           ; 047B _ E8, 00000000(rel)
        mov     dword [ebp-34H], 0                      ; 0480 _ C7. 45, CC, 00000000
        mov     dword [ebp-38H], 0                      ; 0487 _ C7. 45, C8, 00000000
        mov     dword [ebp-3CH], 0                      ; 048E _ C7. 45, C4, 00000000
        mov     dword [ebp-40H], 0                      ; 0495 _ C7. 45, C0, 00000000
        mov     dword [ebp-44H], 0                      ; 049C _ C7. 45, BC, 00000000
        mov     dword [ebp-18H], 0                      ; 04A3 _ C7. 45, E8, 00000000
        mov     dword [ebp-48H], 0                      ; 04AA _ C7. 45, B8, 00000000
        mov     dword [ebp-4CH], 0                      ; 04B1 _ C7. 45, B4, 00000000
?_003:  mov     dword [esp], _keyinfo                   ; 04B8 _ C7. 04 24, 00000018(d)
        call    _fifo8_status                           ; 04BF _ E8, 00000000(rel)
        mov     ebx, eax                                ; 04C4 _ 89. C3
        mov     dword [esp], _mouseinfo                 ; 04C6 _ C7. 04 24, 00000034(d)
        call    _fifo8_status                           ; 04CD _ E8, 00000000(rel)
        add     ebx, eax                                ; 04D2 _ 01. C3
        mov     dword [esp], _timerinfo                 ; 04D4 _ C7. 04 24, 00000110(d)
        call    _fifo8_status                           ; 04DB _ E8, 00000000(rel)
        add     eax, ebx                                ; 04E0 _ 01. D8
        test    eax, eax                                ; 04E2 _ 85. C0
        jnz     ?_004                                   ; 04E4 _ 75, 0A
        call    _io_sti                                 ; 04E6 _ E8, 00000000(rel)
        jmp     ?_014                                   ; 04EB _ E9, 000003C9

?_004:  mov     dword [esp], _keyinfo                   ; 04F0 _ C7. 04 24, 00000018(d)
        call    _fifo8_status                           ; 04F7 _ E8, 00000000(rel)
        test    eax, eax                                ; 04FC _ 85. C0
        je      ?_013                                   ; 04FE _ 0F 84, 00000384
        call    _io_sti                                 ; 0504 _ E8, 00000000(rel)
        mov     dword [esp], _keyinfo                   ; 0509 _ C7. 04 24, 00000018(d)
        call    _fifo8_get                              ; 0510 _ E8, 00000000(rel)
        mov     dword [ebp-34H], eax                    ; 0515 _ 89. 45, CC
        mov     eax, dword [ebp-34H]                    ; 0518 _ 8B. 45, CC
        mov     dword [esp], eax                        ; 051B _ 89. 04 24
        call    _transferScanCode                       ; 051E _ E8, 00000561
        mov     eax, dword [_KEY_CONTROL]               ; 0523 _ A1, 00000120(d)
        cmp     dword [ebp-34H], eax                    ; 0528 _ 39. 45, CC
        jnz     ?_005                                   ; 052B _ 75, 53
        mov     eax, dword [_key_shift]                 ; 052D _ A1, 00000004(d)
        test    eax, eax                                ; 0532 _ 85. C0
        jz      ?_005                                   ; 0534 _ 74, 4A
        mov     eax, dword [_current_console]           ; 0536 _ A1, 0000000C(d)
        mov     eax, dword [_task_cons+eax*4]           ; 053B _ 8B. 04 85, 00000274(d)
        mov     eax, dword [eax+34H]                    ; 0542 _ 8B. 40, 34
        test    eax, eax                                ; 0545 _ 85. C0
        jz      ?_005                                   ; 0547 _ 74, 37
        mov     dword [esp], ?_357                      ; 0549 _ C7. 04 24, 00000008(d)
        call    _cons_putstr                            ; 0550 _ E8, 00001703
        call    _io_cli                                 ; 0555 _ E8, 00000000(rel)
        call    _get_addr_code32                        ; 055A _ E8, 00000000(rel)
        mov     dword [ebp-50H], eax                    ; 055F _ 89. 45, B0
        mov     ecx, _kill_process                      ; 0562 _ B9, 00000D69(d)
        mov     eax, dword [_current_console]           ; 0567 _ A1, 0000000C(d)
        mov     edx, dword [_task_cons+eax*4]           ; 056C _ 8B. 14 85, 00000274(d)
        mov     eax, ecx                                ; 0573 _ 89. C8
        sub     eax, dword [ebp-50H]                    ; 0575 _ 2B. 45, B0
        mov     dword [edx+4CH], eax                    ; 0578 _ 89. 42, 4C
        call    _io_sti                                 ; 057B _ E8, 00000000(rel)
?_005:  cmp     dword [ebp-34H], 16                     ; 0580 _ 83. 7D, CC, 10
        jnz     ?_006                                   ; 0584 _ 75, 28
        mov     eax, dword [_shtctl]                    ; 0586 _ A1, 00000264(d)
        mov     eax, dword [eax+10H]                    ; 058B _ 8B. 40, 10
        lea     ecx, [eax-1H]                           ; 058E _ 8D. 48, FF
        mov     eax, dword [_shtctl]                    ; 0591 _ A1, 00000264(d)
        mov     edx, dword [eax+18H]                    ; 0596 _ 8B. 50, 18
        mov     eax, dword [_shtctl]                    ; 0599 _ A1, 00000264(d)
        mov     dword [esp+8H], ecx                     ; 059E _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 05A2 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 05A6 _ 89. 04 24
        call    _sheet_updown                           ; 05A9 _ E8, 00000000(rel)
?_006:  cmp     dword [ebp-34H], 15                     ; 05AE _ 83. 7D, CC, 0F
        jne     ?_011                                   ; 05B2 _ 0F 85, 0000019C
        mov     dword [ebp-54H], -1                     ; 05B8 _ C7. 45, AC, FFFFFFFF
        cmp     dword [ebp-18H], 0                      ; 05BF _ 83. 7D, E8, 00
        jne     ?_009                                   ; 05C3 _ 0F 85, 000000AF
        mov     dword [ebp-18H], 1                      ; 05C9 _ C7. 45, E8, 00000001
        mov     eax, dword [_current_console]           ; 05D0 _ A1, 0000000C(d)
        cmp     eax, 1                                  ; 05D5 _ 83. F8, 01
        jnz     ?_007                                   ; 05D8 _ 75, 0C
        mov     dword [_current_console], 0             ; 05DA _ C7. 05, 0000000C(d), 00000000
        jmp     ?_008                                   ; 05E4 _ EB, 0A

?_007:  mov     dword [_current_console], 1             ; 05E6 _ C7. 05, 0000000C(d), 00000001
?_008:  mov     edx, dword [_shtMsgBox]                 ; 05F0 _ 8B. 15, 00000260(d)
        mov     eax, dword [_shtctl]                    ; 05F6 _ A1, 00000264(d)
        mov     dword [esp+0CH], 0                      ; 05FB _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], ?_358                   ; 0603 _ C7. 44 24, 08, 00000015(d)
        mov     dword [esp+4H], edx                     ; 060B _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 060F _ 89. 04 24
        call    _make_wtitle8                           ; 0612 _ E8, 000034E4
        mov     eax, dword [_current_console]           ; 0617 _ A1, 0000000C(d)
        mov     edx, dword [ebp+eax*4-70H]              ; 061C _ 8B. 54 85, 90
        mov     eax, dword [_shtctl]                    ; 0620 _ A1, 00000264(d)
        mov     dword [esp+0CH], 1                      ; 0625 _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], ?_359                   ; 062D _ C7. 44 24, 08, 0000001C(d)
        mov     dword [esp+4H], edx                     ; 0635 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0639 _ 89. 04 24
        call    _make_wtitle8                           ; 063C _ E8, 000034BA
        mov     edx, dword [_shtMsgBox]                 ; 0641 _ 8B. 15, 00000260(d)
        mov     eax, dword [_shtctl]                    ; 0647 _ A1, 00000264(d)
        mov     dword [esp+10H], 7                      ; 064C _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 28                     ; 0654 _ C7. 44 24, 0C, 0000001C
        mov     ecx, dword [ebp-0CH]                    ; 065C _ 8B. 4D, F4
        mov     dword [esp+8H], ecx                     ; 065F _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 0663 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0667 _ 89. 04 24
        call    _set_cursor                             ; 066A _ E8, 0000033C
        mov     dword [ebp-54H], 87                     ; 066F _ C7. 45, AC, 00000057
        jmp     ?_010                                   ; 0676 _ EB, 5F

?_009:  mov     dword [ebp-18H], 0                      ; 0678 _ C7. 45, E8, 00000000
        mov     edx, dword [_shtMsgBox]                 ; 067F _ 8B. 15, 00000260(d)
        mov     eax, dword [_shtctl]                    ; 0685 _ A1, 00000264(d)
        mov     dword [esp+0CH], 1                      ; 068A _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], ?_358                   ; 0692 _ C7. 44 24, 08, 00000015(d)
        mov     dword [esp+4H], edx                     ; 069A _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 069E _ 89. 04 24
        call    _make_wtitle8                           ; 06A1 _ E8, 00003455
        mov     eax, dword [_current_console]           ; 06A6 _ A1, 0000000C(d)
        mov     edx, dword [ebp+eax*4-70H]              ; 06AB _ 8B. 54 85, 90
        mov     eax, dword [_shtctl]                    ; 06AF _ A1, 00000264(d)
        mov     dword [esp+0CH], 0                      ; 06B4 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], ?_359                   ; 06BC _ C7. 44 24, 08, 0000001C(d)
        mov     dword [esp+4H], edx                     ; 06C4 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 06C8 _ 89. 04 24
        call    _make_wtitle8                           ; 06CB _ E8, 0000342B
        mov     dword [ebp-54H], 88                     ; 06D0 _ C7. 45, AC, 00000058
?_010:  mov     eax, dword [_shtMsgBox]                 ; 06D7 _ A1, 00000260(d)
        mov     ecx, dword [eax+4H]                     ; 06DC _ 8B. 48, 04
        mov     edx, dword [_shtMsgBox]                 ; 06DF _ 8B. 15, 00000260(d)
        mov     eax, dword [_shtctl]                    ; 06E5 _ A1, 00000264(d)
        mov     dword [esp+14H], 21                     ; 06EA _ C7. 44 24, 14, 00000015
        mov     dword [esp+10H], ecx                    ; 06F2 _ 89. 4C 24, 10
        mov     dword [esp+0CH], 0                      ; 06F6 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 06FE _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 0706 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 070A _ 89. 04 24
        call    _sheet_refresh                          ; 070D _ E8, 00000000(rel)
        mov     eax, dword [_current_console]           ; 0712 _ A1, 0000000C(d)
        mov     eax, dword [ebp+eax*4-70H]              ; 0717 _ 8B. 44 85, 90
        mov     ecx, dword [eax+4H]                     ; 071B _ 8B. 48, 04
        mov     eax, dword [_current_console]           ; 071E _ A1, 0000000C(d)
        mov     edx, dword [ebp+eax*4-70H]              ; 0723 _ 8B. 54 85, 90
        mov     eax, dword [_shtctl]                    ; 0727 _ A1, 00000264(d)
        mov     dword [esp+14H], 21                     ; 072C _ C7. 44 24, 14, 00000015
        mov     dword [esp+10H], ecx                    ; 0734 _ 89. 4C 24, 10
        mov     dword [esp+0CH], 0                      ; 0738 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 0740 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 0748 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 074C _ 89. 04 24
        call    _sheet_refresh                          ; 074F _ E8, 00000000(rel)
?_011:  cmp     dword [ebp-18H], 0                      ; 0754 _ 83. 7D, E8, 00
        jne     ?_012                                   ; 0758 _ 0F 85, 000000DA
        mov     eax, dword [ebp-34H]                    ; 075E _ 8B. 45, CC
        mov     dword [esp], eax                        ; 0761 _ 89. 04 24
        call    _transferScanCode                       ; 0764 _ E8, 0000031B
        test    al, al                                  ; 0769 _ 84. C0
        je      ?_014                                   ; 076B _ 0F 84, 00000148
        cmp     dword [ebp-0CH], 143                    ; 0771 _ 81. 7D, F4, 0000008F
        jg      ?_014                                   ; 0778 _ 0F 8F, 0000013B
        mov     edx, dword [_shtMsgBox]                 ; 077E _ 8B. 15, 00000260(d)
        mov     eax, dword [_shtctl]                    ; 0784 _ A1, 00000264(d)
        mov     dword [esp+10H], 7                      ; 0789 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 28                     ; 0791 _ C7. 44 24, 0C, 0000001C
        mov     ecx, dword [ebp-0CH]                    ; 0799 _ 8B. 4D, F4
        mov     dword [esp+8H], ecx                     ; 079C _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 07A0 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 07A4 _ 89. 04 24
        call    _set_cursor                             ; 07A7 _ E8, 000001FF
        mov     eax, dword [ebp-34H]                    ; 07AC _ 8B. 45, CC
        mov     dword [esp], eax                        ; 07AF _ 89. 04 24
        call    _transferScanCode                       ; 07B2 _ E8, 000002CD
        mov     byte [ebp-55H], al                      ; 07B7 _ 88. 45, AB
        movzx   eax, byte [ebp-55H]                     ; 07BA _ 0F B6. 45, AB
        mov     byte [ebp-72H], al                      ; 07BE _ 88. 45, 8E
        mov     byte [ebp-71H], 0                       ; 07C1 _ C6. 45, 8F, 00
        mov     ecx, dword [_shtMsgBox]                 ; 07C5 _ 8B. 0D, 00000260(d)
        mov     edx, dword [_shtctl]                    ; 07CB _ 8B. 15, 00000264(d)
        lea     eax, [ebp-72H]                          ; 07D1 _ 8D. 45, 8E
        mov     dword [esp+14H], eax                    ; 07D4 _ 89. 44 24, 14
        mov     dword [esp+10H], 0                      ; 07D8 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 28                     ; 07E0 _ C7. 44 24, 0C, 0000001C
        mov     eax, dword [ebp-0CH]                    ; 07E8 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 07EB _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 07EF _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 07F3 _ 89. 14 24
        call    _showString                             ; 07F6 _ E8, 000020FD
        add     dword [ebp-0CH], 8                      ; 07FB _ 83. 45, F4, 08
        mov     dword [ebp-44H], 1                      ; 07FF _ C7. 45, BC, 00000001
        mov     edx, dword [_shtMsgBox]                 ; 0806 _ 8B. 15, 00000260(d)
        mov     eax, dword [_shtctl]                    ; 080C _ A1, 00000264(d)
        mov     ecx, dword [ebp-10H]                    ; 0811 _ 8B. 4D, F0
        mov     dword [esp+10H], ecx                    ; 0814 _ 89. 4C 24, 10
        mov     dword [esp+0CH], 28                     ; 0818 _ C7. 44 24, 0C, 0000001C
        mov     ecx, dword [ebp-0CH]                    ; 0820 _ 8B. 4D, F4
        mov     dword [esp+8H], ecx                     ; 0823 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 0827 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 082B _ 89. 04 24
        call    _set_cursor                             ; 082E _ E8, 00000178
        jmp     ?_014                                   ; 0833 _ E9, 00000081

?_012:  mov     eax, dword [ebp-34H]                    ; 0838 _ 8B. 45, CC
        mov     dword [esp], eax                        ; 083B _ 89. 04 24
        call    _isSpecialKey                           ; 083E _ E8, 000001EF
        test    eax, eax                                ; 0843 _ 85. C0
        jnz     ?_014                                   ; 0845 _ 75, 72
        mov     eax, dword [ebp-34H]                    ; 0847 _ 8B. 45, CC
        movzx   eax, al                                 ; 084A _ 0F B6. C0
        mov     edx, dword [_current_console]           ; 084D _ 8B. 15, 0000000C(d)
        mov     edx, dword [_task_cons+edx*4]           ; 0853 _ 8B. 14 95, 00000274(d)
        add     edx, 16                                 ; 085A _ 83. C2, 10
        mov     dword [esp+4H], eax                     ; 085D _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 0861 _ 89. 14 24
        call    _fifo8_put                              ; 0864 _ E8, 00000000(rel)
        mov     dword [esp], _keyinfo                   ; 0869 _ C7. 04 24, 00000018(d)
        call    _fifo8_status                           ; 0870 _ E8, 00000000(rel)
        test    eax, eax                                ; 0875 _ 85. C0
        jnz     ?_014                                   ; 0877 _ 75, 40
        mov     eax, dword [_task_a.2358]               ; 0879 _ A1, 00000280(d)
        mov     dword [esp], eax                        ; 087E _ 89. 04 24
        call    _task_sleep                             ; 0881 _ E8, 00000000(rel)
        jmp     ?_014                                   ; 0886 _ EB, 31

?_013:  mov     dword [esp], _mouseinfo                 ; 0888 _ C7. 04 24, 00000034(d)
        call    _fifo8_status                           ; 088F _ E8, 00000000(rel)
        test    eax, eax                                ; 0894 _ 85. C0
        jz      ?_014                                   ; 0896 _ 74, 21
        mov     ecx, dword [_sht_mouse]                 ; 0898 _ 8B. 0D, 0000026C(d)
        mov     edx, dword [_sht_back]                  ; 089E _ 8B. 15, 00000268(d)
        mov     eax, dword [_shtctl]                    ; 08A4 _ A1, 00000264(d)
        mov     dword [esp+8H], ecx                     ; 08A9 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 08AD _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 08B1 _ 89. 04 24
        call    _show_mouse_info                        ; 08B4 _ E8, 000020E8
?_014:  mov     dword [esp], _timerinfo                 ; 08B9 _ C7. 04 24, 00000110(d)
        call    _fifo8_status                           ; 08C0 _ E8, 00000000(rel)
        test    eax, eax                                ; 08C5 _ 85. C0
        je      ?_003                                   ; 08C7 _ 0F 84, FFFFFBEB
        call    _io_sti                                 ; 08CD _ E8, 00000000(rel)
        mov     dword [esp], _timerinfo                 ; 08D2 _ C7. 04 24, 00000110(d)
        call    _fifo8_get                              ; 08D9 _ E8, 00000000(rel)
        mov     dword [ebp-5CH], eax                    ; 08DE _ 89. 45, A4
        cmp     dword [ebp-5CH], 0                      ; 08E1 _ 83. 7D, A4, 00
        jz      ?_015                                   ; 08E5 _ 74, 24
        mov     dword [esp+8H], 0                       ; 08E7 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], _timerinfo              ; 08EF _ C7. 44 24, 04, 00000110(d)
        mov     eax, dword [ebp-28H]                    ; 08F7 _ 8B. 45, D8
        mov     dword [esp], eax                        ; 08FA _ 89. 04 24
        call    _timer_init                             ; 08FD _ E8, 00000000(rel)
        mov     dword [ebp-10H], 0                      ; 0902 _ C7. 45, F0, 00000000
        jmp     ?_016                                   ; 0909 _ EB, 22

?_015:  mov     dword [esp+8H], 1                       ; 090B _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], _timerinfo              ; 0913 _ C7. 44 24, 04, 00000110(d)
        mov     eax, dword [ebp-28H]                    ; 091B _ 8B. 45, D8
        mov     dword [esp], eax                        ; 091E _ 89. 04 24
        call    _timer_init                             ; 0921 _ E8, 00000000(rel)
        mov     dword [ebp-10H], 7                      ; 0926 _ C7. 45, F0, 00000007
?_016:  mov     dword [esp+4H], 50                      ; 092D _ C7. 44 24, 04, 00000032
        mov     eax, dword [ebp-28H]                    ; 0935 _ 8B. 45, D8
        mov     dword [esp], eax                        ; 0938 _ 89. 04 24
        call    _timer_settime                          ; 093B _ E8, 00000000(rel)
        cmp     dword [ebp-18H], 0                      ; 0940 _ 83. 7D, E8, 00
        jnz     ?_017                                   ; 0944 _ 75, 32
        mov     edx, dword [_shtMsgBox]                 ; 0946 _ 8B. 15, 00000260(d)
        mov     eax, dword [_shtctl]                    ; 094C _ A1, 00000264(d)
        mov     ecx, dword [ebp-10H]                    ; 0951 _ 8B. 4D, F0
        mov     dword [esp+10H], ecx                    ; 0954 _ 89. 4C 24, 10
        mov     dword [esp+0CH], 28                     ; 0958 _ C7. 44 24, 0C, 0000001C
        mov     ecx, dword [ebp-0CH]                    ; 0960 _ 8B. 4D, F4
        mov     dword [esp+8H], ecx                     ; 0963 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 0967 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 096B _ 89. 04 24
        call    _set_cursor                             ; 096E _ E8, 00000038
        jmp     ?_003                                   ; 0973 _ E9, FFFFFB40

?_017:  ; Local function
        mov     edx, dword [_shtMsgBox]                 ; 0978 _ 8B. 15, 00000260(d)
        mov     eax, dword [_shtctl]                    ; 097E _ A1, 00000264(d)
        mov     dword [esp+10H], 7                      ; 0983 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 28                     ; 098B _ C7. 44 24, 0C, 0000001C
        mov     ecx, dword [ebp-0CH]                    ; 0993 _ 8B. 4D, F4
        mov     dword [esp+8H], ecx                     ; 0996 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 099A _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 099E _ 89. 04 24
        call    _set_cursor                             ; 09A1 _ E8, 00000005
        jmp     ?_003                                   ; 09A6 _ E9, FFFFFB0D

_set_cursor:; Function begin
        push    ebp                                     ; 09AB _ 55
        mov     ebp, esp                                ; 09AC _ 89. E5
        push    esi                                     ; 09AE _ 56
        push    ebx                                     ; 09AF _ 53
        sub     esp, 32                                 ; 09B0 _ 83. EC, 20
        mov     eax, dword [ebp+14H]                    ; 09B3 _ 8B. 45, 14
        lea     esi, [eax+0FH]                          ; 09B6 _ 8D. 70, 0F
        mov     eax, dword [ebp+10H]                    ; 09B9 _ 8B. 45, 10
        lea     ebx, [eax+7H]                           ; 09BC _ 8D. 58, 07
        mov     eax, dword [ebp+18H]                    ; 09BF _ 8B. 45, 18
        movzx   eax, al                                 ; 09C2 _ 0F B6. C0
        mov     edx, dword [ebp+0CH]                    ; 09C5 _ 8B. 55, 0C
        mov     ecx, dword [edx+4H]                     ; 09C8 _ 8B. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 09CB _ 8B. 55, 0C
        mov     edx, dword [edx]                        ; 09CE _ 8B. 12
        mov     dword [esp+18H], esi                    ; 09D0 _ 89. 74 24, 18
        mov     dword [esp+14H], ebx                    ; 09D4 _ 89. 5C 24, 14
        mov     ebx, dword [ebp+14H]                    ; 09D8 _ 8B. 5D, 14
        mov     dword [esp+10H], ebx                    ; 09DB _ 89. 5C 24, 10
        mov     ebx, dword [ebp+10H]                    ; 09DF _ 8B. 5D, 10
        mov     dword [esp+0CH], ebx                    ; 09E2 _ 89. 5C 24, 0C
        mov     dword [esp+8H], eax                     ; 09E6 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 09EA _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 09EE _ 89. 14 24
        call    _boxfill8                               ; 09F1 _ E8, 00002487
        mov     eax, dword [ebp+14H]                    ; 09F6 _ 8B. 45, 14
        lea     edx, [eax+10H]                          ; 09F9 _ 8D. 50, 10
        mov     eax, dword [ebp+10H]                    ; 09FC _ 8B. 45, 10
        add     eax, 8                                  ; 09FF _ 83. C0, 08
        mov     dword [esp+14H], edx                    ; 0A02 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 0A06 _ 89. 44 24, 10
        mov     eax, dword [ebp+14H]                    ; 0A0A _ 8B. 45, 14
        mov     dword [esp+0CH], eax                    ; 0A0D _ 89. 44 24, 0C
        mov     eax, dword [ebp+10H]                    ; 0A11 _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 0A14 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 0A18 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0A1B _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0A1F _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0A22 _ 89. 04 24
        call    _sheet_refresh                          ; 0A25 _ E8, 00000000(rel)
        nop                                             ; 0A2A _ 90
        add     esp, 32                                 ; 0A2B _ 83. C4, 20
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
        jz      ?_018                                   ; 0A47 _ 74, 2D
        cmp     dword [ebp+8H], 29                      ; 0A49 _ 83. 7D, 08, 1D
        jz      ?_018                                   ; 0A4D _ 74, 27
        cmp     dword [ebp+8H], 186                     ; 0A4F _ 81. 7D, 08, 000000BA
        jz      ?_018                                   ; 0A56 _ 74, 1E
        cmp     dword [ebp+8H], 42                      ; 0A58 _ 83. 7D, 08, 2A
        jz      ?_018                                   ; 0A5C _ 74, 18
        cmp     dword [ebp+8H], 54                      ; 0A5E _ 83. 7D, 08, 36
        jz      ?_018                                   ; 0A62 _ 74, 12
        cmp     dword [ebp+8H], 170                     ; 0A64 _ 81. 7D, 08, 000000AA
        jz      ?_018                                   ; 0A6B _ 74, 09
        cmp     dword [ebp+8H], 182                     ; 0A6D _ 81. 7D, 08, 000000B6
        jnz     ?_019                                   ; 0A74 _ 75, 07
?_018:  mov     eax, 1                                  ; 0A76 _ B8, 00000001
        jmp     ?_020                                   ; 0A7B _ EB, 05

?_019:  mov     eax, 0                                  ; 0A7D _ B8, 00000000
?_020:  leave                                           ; 0A82 _ C9
        ret                                             ; 0A83 _ C3
; _isSpecialKey End of function

_transferScanCode:; Function begin
        push    ebp                                     ; 0A84 _ 55
        mov     ebp, esp                                ; 0A85 _ 89. E5
        sub     esp, 16                                 ; 0A87 _ 83. EC, 10
        cmp     dword [ebp+8H], 42                      ; 0A8A _ 83. 7D, 08, 2A
        jnz     ?_021                                   ; 0A8E _ 75, 0D
        mov     eax, dword [_key_shift]                 ; 0A90 _ A1, 00000004(d)
        or      eax, 01H                                ; 0A95 _ 83. C8, 01
        mov     dword [_key_shift], eax                 ; 0A98 _ A3, 00000004(d)
?_021:  cmp     dword [ebp+8H], 54                      ; 0A9D _ 83. 7D, 08, 36
        jnz     ?_022                                   ; 0AA1 _ 75, 0D
        mov     eax, dword [_key_shift]                 ; 0AA3 _ A1, 00000004(d)
        or      eax, 02H                                ; 0AA8 _ 83. C8, 02
        mov     dword [_key_shift], eax                 ; 0AAB _ A3, 00000004(d)
?_022:  cmp     dword [ebp+8H], 170                     ; 0AB0 _ 81. 7D, 08, 000000AA
        jnz     ?_023                                   ; 0AB7 _ 75, 0D
        mov     eax, dword [_key_shift]                 ; 0AB9 _ A1, 00000004(d)
        and     eax, 0FFFFFFFEH                         ; 0ABE _ 83. E0, FE
        mov     dword [_key_shift], eax                 ; 0AC1 _ A3, 00000004(d)
?_023:  cmp     dword [ebp+8H], 182                     ; 0AC6 _ 81. 7D, 08, 000000B6
        jnz     ?_024                                   ; 0ACD _ 75, 0D
        mov     eax, dword [_key_shift]                 ; 0ACF _ A1, 00000004(d)
        and     eax, 0FFFFFFFDH                         ; 0AD4 _ 83. E0, FD
        mov     dword [_key_shift], eax                 ; 0AD7 _ A3, 00000004(d)
?_024:  cmp     dword [ebp+8H], 58                      ; 0ADC _ 83. 7D, 08, 3A
        jnz     ?_026                                   ; 0AE0 _ 75, 1F
        mov     eax, dword [_caps_lock]                 ; 0AE2 _ A1, 00000008(d)
        test    eax, eax                                ; 0AE7 _ 85. C0
        jnz     ?_025                                   ; 0AE9 _ 75, 0C
        mov     dword [_caps_lock], 1                   ; 0AEB _ C7. 05, 00000008(d), 00000001
        jmp     ?_026                                   ; 0AF5 _ EB, 0A

?_025:  mov     dword [_caps_lock], 0                   ; 0AF7 _ C7. 05, 00000008(d), 00000000
?_026:  cmp     dword [ebp+8H], 42                      ; 0B01 _ 83. 7D, 08, 2A
        jz      ?_027                                   ; 0B05 _ 74, 24
        cmp     dword [ebp+8H], 54                      ; 0B07 _ 83. 7D, 08, 36
        jz      ?_027                                   ; 0B0B _ 74, 1E
        cmp     dword [ebp+8H], 170                     ; 0B0D _ 81. 7D, 08, 000000AA
        jz      ?_027                                   ; 0B14 _ 74, 15
        cmp     dword [ebp+8H], 182                     ; 0B16 _ 81. 7D, 08, 000000B6
        jz      ?_027                                   ; 0B1D _ 74, 0C
        cmp     dword [ebp+8H], 83                      ; 0B1F _ 83. 7D, 08, 53
        jg      ?_027                                   ; 0B23 _ 7F, 06
        cmp     dword [ebp+8H], 58                      ; 0B25 _ 83. 7D, 08, 3A
        jnz     ?_028                                   ; 0B29 _ 75, 0A
?_027:  mov     eax, 0                                  ; 0B2B _ B8, 00000000
        jmp     ?_033                                   ; 0B30 _ E9, 0000008A

?_028:  mov     byte [ebp-1H], 0                        ; 0B35 _ C6. 45, FF, 00
        mov     eax, dword [_key_shift]                 ; 0B39 _ A1, 00000004(d)
        test    eax, eax                                ; 0B3E _ 85. C0
        jnz     ?_029                                   ; 0B40 _ 75, 44
        cmp     dword [ebp+8H], 83                      ; 0B42 _ 83. 7D, 08, 53
        jg      ?_029                                   ; 0B46 _ 7F, 3E
        mov     eax, dword [ebp+8H]                     ; 0B48 _ 8B. 45, 08
        add     eax, _keytable                          ; 0B4B _ 05, 00000020(d)
        movzx   eax, byte [eax]                         ; 0B50 _ 0F B6. 00
        test    al, al                                  ; 0B53 _ 84. C0
        jz      ?_029                                   ; 0B55 _ 74, 2F
        mov     eax, dword [ebp+8H]                     ; 0B57 _ 8B. 45, 08
        add     eax, _keytable                          ; 0B5A _ 05, 00000020(d)
        movzx   eax, byte [eax]                         ; 0B5F _ 0F B6. 00
        mov     byte [ebp-1H], al                       ; 0B62 _ 88. 45, FF
        cmp     byte [ebp-1H], 64                       ; 0B65 _ 80. 7D, FF, 40
        jle     ?_031                                   ; 0B69 _ 7E, 4F
        cmp     byte [ebp-1H], 90                       ; 0B6B _ 80. 7D, FF, 5A
        jg      ?_031                                   ; 0B6F _ 7F, 49
        mov     eax, dword [_caps_lock]                 ; 0B71 _ A1, 00000008(d)
        test    eax, eax                                ; 0B76 _ 85. C0
        jnz     ?_031                                   ; 0B78 _ 75, 40
        movzx   eax, byte [ebp-1H]                      ; 0B7A _ 0F B6. 45, FF
        add     eax, 32                                 ; 0B7E _ 83. C0, 20
        mov     byte [ebp-1H], al                       ; 0B81 _ 88. 45, FF
        jmp     ?_031                                   ; 0B84 _ EB, 34

?_029:  mov     eax, dword [_key_shift]                 ; 0B86 _ A1, 00000004(d)
        test    eax, eax                                ; 0B8B _ 85. C0
        jz      ?_030                                   ; 0B8D _ 74, 25
        cmp     dword [ebp+8H], 127                     ; 0B8F _ 83. 7D, 08, 7F
        jg      ?_030                                   ; 0B93 _ 7F, 1F
        mov     eax, dword [ebp+8H]                     ; 0B95 _ 8B. 45, 08
        add     eax, _keytable1                         ; 0B98 _ 05, 00000080(d)
        movzx   eax, byte [eax]                         ; 0B9D _ 0F B6. 00
        test    al, al                                  ; 0BA0 _ 84. C0
        jz      ?_030                                   ; 0BA2 _ 74, 10
        mov     eax, dword [ebp+8H]                     ; 0BA4 _ 8B. 45, 08
        add     eax, _keytable1                         ; 0BA7 _ 05, 00000080(d)
        movzx   eax, byte [eax]                         ; 0BAC _ 0F B6. 00
        mov     byte [ebp-1H], al                       ; 0BAF _ 88. 45, FF
        jmp     ?_032                                   ; 0BB2 _ EB, 07

?_030:  mov     byte [ebp-1H], 0                        ; 0BB4 _ C6. 45, FF, 00
        jmp     ?_032                                   ; 0BB8 _ EB, 01

?_031:  nop                                             ; 0BBA _ 90
?_032:  movzx   eax, byte [ebp-1H]                      ; 0BBB _ 0F B6. 45, FF
?_033:  leave                                           ; 0BBF _ C9
        ret                                             ; 0BC0 _ C3
; _transferScanCode End of function

_launch_console:; Function begin
        push    ebp                                     ; 0BC1 _ 55
        mov     ebp, esp                                ; 0BC2 _ 89. E5
        sub     esp, 56                                 ; 0BC4 _ 83. EC, 38
        mov     eax, dword [_shtctl]                    ; 0BC7 _ A1, 00000264(d)
        mov     dword [esp], eax                        ; 0BCC _ 89. 04 24
        call    _sheet_alloc                            ; 0BCF _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 0BD4 _ 89. 45, F4
        mov     eax, dword [_memman]                    ; 0BD7 _ A1, 00000000(d)
        mov     dword [esp+4H], 42240                   ; 0BDC _ C7. 44 24, 04, 0000A500
        mov     dword [esp], eax                        ; 0BE4 _ 89. 04 24
        call    _memman_alloc_4k                        ; 0BE7 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 0BEC _ 89. 45, F0
        mov     dword [esp+10H], 99                     ; 0BEF _ C7. 44 24, 10, 00000063
        mov     dword [esp+0CH], 165                    ; 0BF7 _ C7. 44 24, 0C, 000000A5
        mov     dword [esp+8H], 256                     ; 0BFF _ C7. 44 24, 08, 00000100
        mov     eax, dword [ebp-10H]                    ; 0C07 _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 0C0A _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 0C0E _ 8B. 45, F4
        mov     dword [esp], eax                        ; 0C11 _ 89. 04 24
        call    _sheet_setbuf                           ; 0C14 _ E8, 00000000(rel)
        mov     eax, dword [_shtctl]                    ; 0C19 _ A1, 00000264(d)
        mov     dword [esp+0CH], 0                      ; 0C1E _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], ?_359                   ; 0C26 _ C7. 44 24, 08, 0000001C(d)
        mov     edx, dword [ebp-0CH]                    ; 0C2E _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 0C31 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0C35 _ 89. 04 24
        call    _make_window8                           ; 0C38 _ E8, 00002BF9
        mov     dword [esp+14H], 0                      ; 0C3D _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], 128                    ; 0C45 _ C7. 44 24, 10, 00000080
        mov     dword [esp+0CH], 240                    ; 0C4D _ C7. 44 24, 0C, 000000F0
        mov     dword [esp+8H], 28                      ; 0C55 _ C7. 44 24, 08, 0000001C
        mov     dword [esp+4H], 8                       ; 0C5D _ C7. 44 24, 04, 00000008
        mov     eax, dword [ebp-0CH]                    ; 0C65 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 0C68 _ 89. 04 24
        call    _make_textbox8                          ; 0C6B _ E8, 00002FC9
        call    _task_alloc                             ; 0C70 _ E8, 00000000(rel)
        mov     dword [ebp-14H], eax                    ; 0C75 _ 89. 45, EC
        call    _get_addr_code32                        ; 0C78 _ E8, 00000000(rel)
        mov     dword [ebp-18H], eax                    ; 0C7D _ 89. 45, E8
        mov     eax, dword [ebp-14H]                    ; 0C80 _ 8B. 45, EC
        mov     dword [eax+8CH], 0                      ; 0C83 _ C7. 80, 0000008C, 00000000
        mov     eax, dword [ebp-14H]                    ; 0C8D _ 8B. 45, EC
        mov     dword [eax+90H], 1073741824             ; 0C90 _ C7. 80, 00000090, 40000000
        mov     eax, dword [ebp-18H]                    ; 0C9A _ 8B. 45, E8
        neg     eax                                     ; 0C9D _ F7. D8
        add     eax, _console_task                      ; 0C9F _ 05, 000016CC(d)
        mov     edx, eax                                ; 0CA4 _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 0CA6 _ 8B. 45, EC
        mov     dword [eax+4CH], edx                    ; 0CA9 _ 89. 50, 4C
        mov     eax, dword [ebp-14H]                    ; 0CAC _ 8B. 45, EC
        mov     dword [eax+74H], 0                      ; 0CAF _ C7. 40, 74, 00000000
        mov     eax, dword [ebp-14H]                    ; 0CB6 _ 8B. 45, EC
        mov     dword [eax+78H], 8                      ; 0CB9 _ C7. 40, 78, 00000008
        mov     eax, dword [ebp-14H]                    ; 0CC0 _ 8B. 45, EC
        mov     dword [eax+7CH], 32                     ; 0CC3 _ C7. 40, 7C, 00000020
        mov     eax, dword [ebp-14H]                    ; 0CCA _ 8B. 45, EC
        mov     dword [eax+80H], 24                     ; 0CCD _ C7. 80, 00000080, 00000018
        mov     eax, dword [ebp-14H]                    ; 0CD7 _ 8B. 45, EC
        mov     dword [eax+84H], 0                      ; 0CDA _ C7. 80, 00000084, 00000000
        mov     eax, dword [ebp-14H]                    ; 0CE4 _ 8B. 45, EC
        mov     dword [eax+88H], 16                     ; 0CE7 _ C7. 80, 00000088, 00000010
        mov     eax, dword [_memman]                    ; 0CF1 _ A1, 00000000(d)
        mov     dword [esp+4H], 65536                   ; 0CF6 _ C7. 44 24, 04, 00010000
        mov     dword [esp], eax                        ; 0CFE _ 89. 04 24
        call    _memman_alloc_4k                        ; 0D01 _ E8, 00000000(rel)
        lea     edx, [eax+0FFF4H]                       ; 0D06 _ 8D. 90, 0000FFF4
        mov     eax, dword [ebp-14H]                    ; 0D0C _ 8B. 45, EC
        mov     dword [eax+64H], edx                    ; 0D0F _ 89. 50, 64
        mov     eax, dword [ebp-14H]                    ; 0D12 _ 8B. 45, EC
        mov     eax, dword [eax+64H]                    ; 0D15 _ 8B. 40, 64
        add     eax, 4                                  ; 0D18 _ 83. C0, 04
        mov     edx, eax                                ; 0D1B _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 0D1D _ 8B. 45, F4
        mov     dword [edx], eax                        ; 0D20 _ 89. 02
        mov     eax, dword [_memman]                    ; 0D22 _ A1, 00000000(d)
        mov     dword [esp], eax                        ; 0D27 _ 89. 04 24
        call    _memman_total                           ; 0D2A _ E8, 00000000(rel)
        mov     edx, eax                                ; 0D2F _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 0D31 _ 8B. 45, EC
        mov     eax, dword [eax+64H]                    ; 0D34 _ 8B. 40, 64
        add     eax, 8                                  ; 0D37 _ 83. C0, 08
        mov     dword [eax], edx                        ; 0D3A _ 89. 10
        mov     dword [esp+8H], 5                       ; 0D3C _ C7. 44 24, 08, 00000005
        mov     dword [esp+4H], 1                       ; 0D44 _ C7. 44 24, 04, 00000001
        mov     eax, dword [ebp-14H]                    ; 0D4C _ 8B. 45, EC
        mov     dword [esp], eax                        ; 0D4F _ 89. 04 24
        call    _task_run                               ; 0D52 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 0D57 _ 8B. 45, 08
        mov     edx, dword [ebp-14H]                    ; 0D5A _ 8B. 55, EC
        mov     dword [_task_cons+eax*4], edx           ; 0D5D _ 89. 14 85, 00000274(d)
        mov     eax, dword [ebp-0CH]                    ; 0D64 _ 8B. 45, F4
        leave                                           ; 0D67 _ C9
        ret                                             ; 0D68 _ C3
; _launch_console End of function

_kill_process:; Function begin
        push    ebp                                     ; 0D69 _ 55
        mov     ebp, esp                                ; 0D6A _ 89. E5
        sub     esp, 40                                 ; 0D6C _ 83. EC, 28
        call    _task_now                               ; 0D6F _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 0D74 _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 0D77 _ 8B. 45, F4
        mov     edx, dword [eax+94H]                    ; 0D7A _ 8B. 90, 00000094
        mov     eax, dword [ebp-0CH]                    ; 0D80 _ 8B. 45, F4
        mov     eax, dword [eax+9CH]                    ; 0D83 _ 8B. 80, 0000009C
        mov     dword [esp+4H], edx                     ; 0D89 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0D8D _ 89. 04 24
        call    _cons_newline                           ; 0D90 _ E8, 00001623
        mov     eax, dword [ebp-0CH]                    ; 0D95 _ 8B. 45, F4
        mov     eax, dword [eax+9CH]                    ; 0D98 _ 8B. 80, 0000009C
        lea     edx, [eax+10H]                          ; 0D9E _ 8D. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 0DA1 _ 8B. 45, F4
        mov     dword [eax+9CH], edx                    ; 0DA4 _ 89. 90, 0000009C
        mov     eax, dword [ebp-0CH]                    ; 0DAA _ 8B. 45, F4
        add     eax, 48                                 ; 0DAD _ 83. C0, 30
        mov     dword [esp], eax                        ; 0DB0 _ 89. 04 24
        call    _asm_end_app                            ; 0DB3 _ E8, 00000000(rel)
        nop                                             ; 0DB8 _ 90
        leave                                           ; 0DB9 _ C9
        ret                                             ; 0DBA _ C3
; _kill_process End of function

_cmd_dir:; Function begin
        push    ebp                                     ; 0DBB _ 55
        mov     ebp, esp                                ; 0DBC _ 89. E5
        push    ebx                                     ; 0DBE _ 53
        sub     esp, 68                                 ; 0DBF _ 83. EC, 44
        call    _task_now                               ; 0DC2 _ E8, 00000000(rel)
        mov     dword [ebp-18H], eax                    ; 0DC7 _ 89. 45, E8
        mov     dword [ebp-0CH], 78848                  ; 0DCA _ C7. 45, F4, 00013400
        mov     eax, dword [_memman]                    ; 0DD1 _ A1, 00000000(d)
        mov     dword [esp+4H], 13                      ; 0DD6 _ C7. 44 24, 04, 0000000D
        mov     dword [esp], eax                        ; 0DDE _ 89. 04 24
        call    _memman_alloc                           ; 0DE1 _ E8, 00000000(rel)
        mov     dword [ebp-1CH], eax                    ; 0DE6 _ 89. 45, E4
        mov     eax, dword [ebp-1CH]                    ; 0DE9 _ 8B. 45, E4
        add     eax, 12                                 ; 0DEC _ 83. C0, 0C
        mov     byte [eax], 0                           ; 0DEF _ C6. 00, 00
        jmp     ?_041                                   ; 0DF2 _ E9, 00000143

?_034:  mov     dword [ebp-10H], 0                      ; 0DF7 _ C7. 45, F0, 00000000
        jmp     ?_036                                   ; 0DFE _ EB, 2A

?_035:  mov     edx, dword [ebp-0CH]                    ; 0E00 _ 8B. 55, F4
        mov     eax, dword [ebp-10H]                    ; 0E03 _ 8B. 45, F0
        add     eax, edx                                ; 0E06 _ 01. D0
        movzx   eax, byte [eax]                         ; 0E08 _ 0F B6. 00
        test    al, al                                  ; 0E0B _ 84. C0
        jz      ?_037                                   ; 0E0D _ 74, 23
        mov     edx, dword [ebp-0CH]                    ; 0E0F _ 8B. 55, F4
        mov     eax, dword [ebp-10H]                    ; 0E12 _ 8B. 45, F0
        add     eax, edx                                ; 0E15 _ 01. D0
        movzx   ecx, byte [eax]                         ; 0E17 _ 0F B6. 08
        mov     edx, dword [ebp-10H]                    ; 0E1A _ 8B. 55, F0
        mov     eax, dword [ebp-1CH]                    ; 0E1D _ 8B. 45, E4
        add     eax, edx                                ; 0E20 _ 01. D0
        mov     edx, ecx                                ; 0E22 _ 89. CA
        mov     byte [eax], dl                          ; 0E24 _ 88. 10
        add     dword [ebp-10H], 1                      ; 0E26 _ 83. 45, F0, 01
?_036:  cmp     dword [ebp-10H], 7                      ; 0E2A _ 83. 7D, F0, 07
        jle     ?_035                                   ; 0E2E _ 7E, D0
        jmp     ?_038                                   ; 0E30 _ EB, 01

?_037:  nop                                             ; 0E32 _ 90
?_038:  mov     dword [ebp-14H], 0                      ; 0E33 _ C7. 45, EC, 00000000
        mov     edx, dword [ebp-10H]                    ; 0E3A _ 8B. 55, F0
        mov     eax, dword [ebp-1CH]                    ; 0E3D _ 8B. 45, E4
        add     eax, edx                                ; 0E40 _ 01. D0
        mov     byte [eax], 46                          ; 0E42 _ C6. 00, 2E
        add     dword [ebp-10H], 1                      ; 0E45 _ 83. 45, F0, 01
        mov     dword [ebp-14H], 0                      ; 0E49 _ C7. 45, EC, 00000000
        jmp     ?_040                                   ; 0E50 _ EB, 22

?_039:  mov     edx, dword [ebp-0CH]                    ; 0E52 _ 8B. 55, F4
        mov     eax, dword [ebp-14H]                    ; 0E55 _ 8B. 45, EC
        add     eax, edx                                ; 0E58 _ 01. D0
        add     eax, 8                                  ; 0E5A _ 83. C0, 08
        movzx   ecx, byte [eax]                         ; 0E5D _ 0F B6. 08
        mov     edx, dword [ebp-10H]                    ; 0E60 _ 8B. 55, F0
        mov     eax, dword [ebp-1CH]                    ; 0E63 _ 8B. 45, E4
        add     eax, edx                                ; 0E66 _ 01. D0
        mov     edx, ecx                                ; 0E68 _ 89. CA
        mov     byte [eax], dl                          ; 0E6A _ 88. 10
        add     dword [ebp-10H], 1                      ; 0E6C _ 83. 45, F0, 01
        add     dword [ebp-14H], 1                      ; 0E70 _ 83. 45, EC, 01
?_040:  cmp     dword [ebp-14H], 2                      ; 0E74 _ 83. 7D, EC, 02
        jle     ?_039                                   ; 0E78 _ 7E, D8
        mov     eax, dword [ebp-18H]                    ; 0E7A _ 8B. 45, E8
        mov     ecx, dword [eax+9CH]                    ; 0E7D _ 8B. 88, 0000009C
        mov     eax, dword [ebp-18H]                    ; 0E83 _ 8B. 45, E8
        mov     edx, dword [eax+94H]                    ; 0E86 _ 8B. 90, 00000094
        mov     eax, dword [_shtctl]                    ; 0E8C _ A1, 00000264(d)
        mov     ebx, dword [ebp-1CH]                    ; 0E91 _ 8B. 5D, E4
        mov     dword [esp+14H], ebx                    ; 0E94 _ 89. 5C 24, 14
        mov     dword [esp+10H], 7                      ; 0E98 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ecx                    ; 0EA0 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 16                      ; 0EA4 _ C7. 44 24, 08, 00000010
        mov     dword [esp+4H], edx                     ; 0EAC _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0EB0 _ 89. 04 24
        call    _showString                             ; 0EB3 _ E8, 00001A40
        mov     dword [ebp-20H], 136                    ; 0EB8 _ C7. 45, E0, 00000088
        mov     eax, dword [ebp-0CH]                    ; 0EBF _ 8B. 45, F4
        mov     eax, dword [eax+1CH]                    ; 0EC2 _ 8B. 40, 1C
        mov     dword [esp], eax                        ; 0EC5 _ 89. 04 24
        call    _intToHexStr                            ; 0EC8 _ E8, 0000239D
        mov     dword [ebp-24H], eax                    ; 0ECD _ 89. 45, DC
        mov     eax, dword [ebp-18H]                    ; 0ED0 _ 8B. 45, E8
        mov     ecx, dword [eax+9CH]                    ; 0ED3 _ 8B. 88, 0000009C
        mov     eax, dword [ebp-18H]                    ; 0ED9 _ 8B. 45, E8
        mov     edx, dword [eax+94H]                    ; 0EDC _ 8B. 90, 00000094
        mov     eax, dword [_shtctl]                    ; 0EE2 _ A1, 00000264(d)
        mov     ebx, dword [ebp-24H]                    ; 0EE7 _ 8B. 5D, DC
        mov     dword [esp+14H], ebx                    ; 0EEA _ 89. 5C 24, 14
        mov     dword [esp+10H], 7                      ; 0EEE _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ecx                    ; 0EF6 _ 89. 4C 24, 0C
        mov     ecx, dword [ebp-20H]                    ; 0EFA _ 8B. 4D, E0
        mov     dword [esp+8H], ecx                     ; 0EFD _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 0F01 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0F05 _ 89. 04 24
        call    _showString                             ; 0F08 _ E8, 000019EB
        mov     eax, dword [ebp-18H]                    ; 0F0D _ 8B. 45, E8
        mov     edx, dword [eax+94H]                    ; 0F10 _ 8B. 90, 00000094
        mov     eax, dword [ebp-18H]                    ; 0F16 _ 8B. 45, E8
        mov     eax, dword [eax+9CH]                    ; 0F19 _ 8B. 80, 0000009C
        mov     dword [esp+4H], edx                     ; 0F1F _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0F23 _ 89. 04 24
        call    _cons_newline                           ; 0F26 _ E8, 0000148D
        mov     edx, eax                                ; 0F2B _ 89. C2
        mov     eax, dword [ebp-18H]                    ; 0F2D _ 8B. 45, E8
        mov     dword [eax+9CH], edx                    ; 0F30 _ 89. 90, 0000009C
        add     dword [ebp-0CH], 32                     ; 0F36 _ 83. 45, F4, 20
?_041:  mov     eax, dword [ebp-0CH]                    ; 0F3A _ 8B. 45, F4
        movzx   eax, byte [eax]                         ; 0F3D _ 0F B6. 00
        test    al, al                                  ; 0F40 _ 84. C0
        jne     ?_034                                   ; 0F42 _ 0F 85, FFFFFEAF
        mov     edx, dword [ebp-1CH]                    ; 0F48 _ 8B. 55, E4
        mov     eax, dword [_memman]                    ; 0F4B _ A1, 00000000(d)
        mov     dword [esp+8H], 13                      ; 0F50 _ C7. 44 24, 08, 0000000D
        mov     dword [esp+4H], edx                     ; 0F58 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0F5C _ 89. 04 24
        call    _memman_free                            ; 0F5F _ E8, 00000000(rel)
        nop                                             ; 0F64 _ 90
        add     esp, 68                                 ; 0F65 _ 83. C4, 44
        pop     ebx                                     ; 0F68 _ 5B
        pop     ebp                                     ; 0F69 _ 5D
        ret                                             ; 0F6A _ C3
; _cmd_dir End of function

_cmd_type:; Function begin
        push    ebp                                     ; 0F6B _ 55
        mov     ebp, esp                                ; 0F6C _ 89. E5
        push    esi                                     ; 0F6E _ 56
        push    ebx                                     ; 0F6F _ 53
        sub     esp, 96                                 ; 0F70 _ 83. EC, 60
        call    _task_now                               ; 0F73 _ E8, 00000000(rel)
        mov     dword [ebp-24H], eax                    ; 0F78 _ 89. 45, DC
        mov     eax, dword [_memman]                    ; 0F7B _ A1, 00000000(d)
        mov     dword [esp+4H], 13                      ; 0F80 _ C7. 44 24, 04, 0000000D
        mov     dword [esp], eax                        ; 0F88 _ 89. 04 24
        call    _memman_alloc                           ; 0F8B _ E8, 00000000(rel)
        mov     dword [ebp-28H], eax                    ; 0F90 _ 89. 45, D8
        mov     eax, dword [ebp-28H]                    ; 0F93 _ 8B. 45, D8
        add     eax, 12                                 ; 0F96 _ 83. C0, 0C
        mov     byte [eax], 0                           ; 0F99 _ C6. 00, 00
        mov     dword [ebp-0CH], 0                      ; 0F9C _ C7. 45, F4, 00000000
        mov     dword [ebp-10H], 5                      ; 0FA3 _ C7. 45, F0, 00000005
        mov     dword [ebp-10H], 5                      ; 0FAA _ C7. 45, F0, 00000005
        jmp     ?_043                                   ; 0FB1 _ EB, 2C

?_042:  mov     edx, dword [ebp-10H]                    ; 0FB3 _ 8B. 55, F0
        mov     eax, dword [ebp+8H]                     ; 0FB6 _ 8B. 45, 08
        add     eax, edx                                ; 0FB9 _ 01. D0
        movzx   eax, byte [eax]                         ; 0FBB _ 0F B6. 00
        test    al, al                                  ; 0FBE _ 84. C0
        jz      ?_044                                   ; 0FC0 _ 74, 25
        mov     edx, dword [ebp-10H]                    ; 0FC2 _ 8B. 55, F0
        mov     eax, dword [ebp+8H]                     ; 0FC5 _ 8B. 45, 08
        add     eax, edx                                ; 0FC8 _ 01. D0
        mov     ecx, dword [ebp-0CH]                    ; 0FCA _ 8B. 4D, F4
        mov     edx, dword [ebp-28H]                    ; 0FCD _ 8B. 55, D8
        add     edx, ecx                                ; 0FD0 _ 01. CA
        movzx   eax, byte [eax]                         ; 0FD2 _ 0F B6. 00
        mov     byte [edx], al                          ; 0FD5 _ 88. 02
        add     dword [ebp-0CH], 1                      ; 0FD7 _ 83. 45, F4, 01
        add     dword [ebp-10H], 1                      ; 0FDB _ 83. 45, F0, 01
?_043:  cmp     dword [ebp-10H], 16                     ; 0FDF _ 83. 7D, F0, 10
        jle     ?_042                                   ; 0FE3 _ 7E, CE
        jmp     ?_045                                   ; 0FE5 _ EB, 01

?_044:  nop                                             ; 0FE7 _ 90
?_045:  mov     edx, dword [ebp-0CH]                    ; 0FE8 _ 8B. 55, F4
        mov     eax, dword [ebp-28H]                    ; 0FEB _ 8B. 45, D8
        add     eax, edx                                ; 0FEE _ 01. D0
        mov     byte [eax], 0                           ; 0FF0 _ C6. 00, 00
        mov     dword [ebp-14H], 78848                  ; 0FF3 _ C7. 45, EC, 00013400
        jmp     ?_060                                   ; 0FFA _ E9, 000002A9

?_046:  mov     byte [ebp-31H], 0                       ; 0FFF _ C6. 45, CF, 00
        mov     dword [ebp-18H], 0                      ; 1003 _ C7. 45, E8, 00000000
        jmp     ?_048                                   ; 100A _ EB, 2A

?_047:  mov     edx, dword [ebp-14H]                    ; 100C _ 8B. 55, EC
        mov     eax, dword [ebp-18H]                    ; 100F _ 8B. 45, E8
        add     eax, edx                                ; 1012 _ 01. D0
        movzx   eax, byte [eax]                         ; 1014 _ 0F B6. 00
        test    al, al                                  ; 1017 _ 84. C0
        jz      ?_049                                   ; 1019 _ 74, 23
        mov     edx, dword [ebp-14H]                    ; 101B _ 8B. 55, EC
        mov     eax, dword [ebp-18H]                    ; 101E _ 8B. 45, E8
        add     eax, edx                                ; 1021 _ 01. D0
        movzx   eax, byte [eax]                         ; 1023 _ 0F B6. 00
        mov     ecx, eax                                ; 1026 _ 89. C1
        lea     eax, [ebp-3DH]                          ; 1028 _ 8D. 45, C3
        mov     edx, dword [ebp-18H]                    ; 102B _ 8B. 55, E8
        add     eax, edx                                ; 102E _ 01. D0
        mov     byte [eax], cl                          ; 1030 _ 88. 08
        add     dword [ebp-18H], 1                      ; 1032 _ 83. 45, E8, 01
?_048:  cmp     dword [ebp-18H], 7                      ; 1036 _ 83. 7D, E8, 07
        jle     ?_047                                   ; 103A _ 7E, D0
        jmp     ?_050                                   ; 103C _ EB, 01

?_049:  nop                                             ; 103E _ 90
?_050:  mov     dword [ebp-1CH], 0                      ; 103F _ C7. 45, E4, 00000000
        lea     eax, [ebp-3DH]                          ; 1046 _ 8D. 45, C3
        mov     edx, dword [ebp-18H]                    ; 1049 _ 8B. 55, E8
        add     eax, edx                                ; 104C _ 01. D0
        mov     byte [eax], 46                          ; 104E _ C6. 00, 2E
        add     dword [ebp-18H], 1                      ; 1051 _ 83. 45, E8, 01
        mov     dword [ebp-1CH], 0                      ; 1055 _ C7. 45, E4, 00000000
        jmp     ?_052                                   ; 105C _ EB, 22

?_051:  mov     edx, dword [ebp-14H]                    ; 105E _ 8B. 55, EC
        mov     eax, dword [ebp-1CH]                    ; 1061 _ 8B. 45, E4
        add     eax, edx                                ; 1064 _ 01. D0
        add     eax, 8                                  ; 1066 _ 83. C0, 08
        movzx   eax, byte [eax]                         ; 1069 _ 0F B6. 00
        mov     ecx, eax                                ; 106C _ 89. C1
        lea     eax, [ebp-3DH]                          ; 106E _ 8D. 45, C3
        mov     edx, dword [ebp-18H]                    ; 1071 _ 8B. 55, E8
        add     eax, edx                                ; 1074 _ 01. D0
        mov     byte [eax], cl                          ; 1076 _ 88. 08
        add     dword [ebp-18H], 1                      ; 1078 _ 83. 45, E8, 01
        add     dword [ebp-1CH], 1                      ; 107C _ 83. 45, E4, 01
?_052:  cmp     dword [ebp-1CH], 2                      ; 1080 _ 83. 7D, E4, 02
        jle     ?_051                                   ; 1084 _ 7E, D8
        lea     eax, [ebp-3DH]                          ; 1086 _ 8D. 45, C3
        mov     dword [esp+4H], eax                     ; 1089 _ 89. 44 24, 04
        mov     eax, dword [ebp-28H]                    ; 108D _ 8B. 45, D8
        mov     dword [esp], eax                        ; 1090 _ 89. 04 24
        call    _strcmp                                 ; 1093 _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 1098 _ 83. F8, 01
        jne     ?_059                                   ; 109B _ 0F 85, 00000203
        mov     dword [ebp-2CH], 88064                  ; 10A1 _ C7. 45, D4, 00015800
        mov     eax, dword [ebp-14H]                    ; 10A8 _ 8B. 45, EC
        movzx   eax, word [eax+1AH]                     ; 10AB _ 0F B7. 40, 1A
        movzx   eax, ax                                 ; 10AF _ 0F B7. C0
        shl     eax, 9                                  ; 10B2 _ C1. E0, 09
        add     dword [ebp-2CH], eax                    ; 10B5 _ 01. 45, D4
        mov     eax, dword [ebp-14H]                    ; 10B8 _ 8B. 45, EC
        mov     eax, dword [eax+1CH]                    ; 10BB _ 8B. 40, 1C
        mov     dword [ebp-30H], eax                    ; 10BE _ 89. 45, D0
        mov     dword [ebp-20H], 0                      ; 10C1 _ C7. 45, E0, 00000000
        mov     eax, dword [ebp-24H]                    ; 10C8 _ 8B. 45, DC
        mov     dword [eax+98H], 16                     ; 10CB _ C7. 80, 00000098, 00000010
        mov     dword [ebp-20H], 0                      ; 10D5 _ C7. 45, E0, 00000000
        jmp     ?_058                                   ; 10DC _ E9, 000001B4

?_053:  mov     edx, dword [ebp-20H]                    ; 10E1 _ 8B. 55, E0
        mov     eax, dword [ebp-2CH]                    ; 10E4 _ 8B. 45, D4
        add     eax, edx                                ; 10E7 _ 01. D0
        movzx   eax, byte [eax]                         ; 10E9 _ 0F B6. 00
        mov     byte [ebp-3FH], al                      ; 10EC _ 88. 45, C1
        mov     byte [ebp-3EH], 0                       ; 10EF _ C6. 45, C2, 00
        movzx   eax, byte [ebp-3FH]                     ; 10F3 _ 0F B6. 45, C1
        cmp     al, 9                                   ; 10F7 _ 3C, 09
        jne     ?_055                                   ; 10F9 _ 0F 85, 000000A4
?_054:  mov     eax, dword [ebp-24H]                    ; 10FF _ 8B. 45, DC
        mov     ebx, dword [eax+9CH]                    ; 1102 _ 8B. 98, 0000009C
        mov     eax, dword [ebp-24H]                    ; 1108 _ 8B. 45, DC
        mov     ecx, dword [eax+98H]                    ; 110B _ 8B. 88, 00000098
        mov     eax, dword [ebp-24H]                    ; 1111 _ 8B. 45, DC
        mov     edx, dword [eax+94H]                    ; 1114 _ 8B. 90, 00000094
        mov     eax, dword [_shtctl]                    ; 111A _ A1, 00000264(d)
        mov     dword [esp+14H], ?_360                  ; 111F _ C7. 44 24, 14, 00000024(d)
        mov     dword [esp+10H], 7                      ; 1127 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ebx                    ; 112F _ 89. 5C 24, 0C
        mov     dword [esp+8H], ecx                     ; 1133 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 1137 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 113B _ 89. 04 24
        call    _showString                             ; 113E _ E8, 000017B5
        mov     eax, dword [ebp-24H]                    ; 1143 _ 8B. 45, DC
        mov     eax, dword [eax+98H]                    ; 1146 _ 8B. 80, 00000098
        lea     edx, [eax+8H]                           ; 114C _ 8D. 50, 08
        mov     eax, dword [ebp-24H]                    ; 114F _ 8B. 45, DC
        mov     dword [eax+98H], edx                    ; 1152 _ 89. 90, 00000098
        mov     eax, dword [ebp-24H]                    ; 1158 _ 8B. 45, DC
        mov     eax, dword [eax+98H]                    ; 115B _ 8B. 80, 00000098
        cmp     eax, 248                                ; 1161 _ 3D, 000000F8
        jnz     ?_054                                   ; 1166 _ 75, 97
        mov     eax, dword [ebp-24H]                    ; 1168 _ 8B. 45, DC
        mov     dword [eax+98H], 8                      ; 116B _ C7. 80, 00000098, 00000008
        mov     eax, dword [ebp-24H]                    ; 1175 _ 8B. 45, DC
        mov     edx, dword [eax+94H]                    ; 1178 _ 8B. 90, 00000094
        mov     eax, dword [ebp-24H]                    ; 117E _ 8B. 45, DC
        mov     eax, dword [eax+9CH]                    ; 1181 _ 8B. 80, 0000009C
        mov     dword [esp+4H], edx                     ; 1187 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 118B _ 89. 04 24
        call    _cons_newline                           ; 118E _ E8, 00001225
        mov     edx, eax                                ; 1193 _ 89. C2
        mov     eax, dword [ebp-24H]                    ; 1195 _ 8B. 45, DC
        mov     dword [eax+9CH], edx                    ; 1198 _ 89. 90, 0000009C
        jmp     ?_054                                   ; 119E _ E9, FFFFFF5C

?_055:  movzx   eax, byte [ebp-3FH]                     ; 11A3 _ 0F B6. 45, C1
        cmp     al, 10                                  ; 11A7 _ 3C, 0A
        jnz     ?_056                                   ; 11A9 _ 75, 3B
        mov     eax, dword [ebp-24H]                    ; 11AB _ 8B. 45, DC
        mov     dword [eax+98H], 8                      ; 11AE _ C7. 80, 00000098, 00000008
        mov     eax, dword [ebp-24H]                    ; 11B8 _ 8B. 45, DC
        mov     edx, dword [eax+94H]                    ; 11BB _ 8B. 90, 00000094
        mov     eax, dword [ebp-24H]                    ; 11C1 _ 8B. 45, DC
        mov     eax, dword [eax+9CH]                    ; 11C4 _ 8B. 80, 0000009C
        mov     dword [esp+4H], edx                     ; 11CA _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 11CE _ 89. 04 24
        call    _cons_newline                           ; 11D1 _ E8, 000011E2
        mov     edx, eax                                ; 11D6 _ 89. C2
        mov     eax, dword [ebp-24H]                    ; 11D8 _ 8B. 45, DC
        mov     dword [eax+9CH], edx                    ; 11DB _ 89. 90, 0000009C
        jmp     ?_057                                   ; 11E1 _ E9, 000000AB

?_056:  movzx   eax, byte [ebp-3FH]                     ; 11E6 _ 0F B6. 45, C1
        cmp     al, 13                                  ; 11EA _ 3C, 0D
        je      ?_057                                   ; 11EC _ 0F 84, 0000009F
        mov     eax, dword [ebp-24H]                    ; 11F2 _ 8B. 45, DC
        mov     esi, dword [eax+9CH]                    ; 11F5 _ 8B. B0, 0000009C
        mov     eax, dword [ebp-24H]                    ; 11FB _ 8B. 45, DC
        mov     ebx, dword [eax+98H]                    ; 11FE _ 8B. 98, 00000098
        mov     eax, dword [ebp-24H]                    ; 1204 _ 8B. 45, DC
        mov     ecx, dword [eax+94H]                    ; 1207 _ 8B. 88, 00000094
        mov     edx, dword [_shtctl]                    ; 120D _ 8B. 15, 00000264(d)
        lea     eax, [ebp-3FH]                          ; 1213 _ 8D. 45, C1
        mov     dword [esp+14H], eax                    ; 1216 _ 89. 44 24, 14
        mov     dword [esp+10H], 7                      ; 121A _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], esi                    ; 1222 _ 89. 74 24, 0C
        mov     dword [esp+8H], ebx                     ; 1226 _ 89. 5C 24, 08
        mov     dword [esp+4H], ecx                     ; 122A _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 122E _ 89. 14 24
        call    _showString                             ; 1231 _ E8, 000016C2
        mov     eax, dword [ebp-24H]                    ; 1236 _ 8B. 45, DC
        mov     eax, dword [eax+98H]                    ; 1239 _ 8B. 80, 00000098
        lea     edx, [eax+8H]                           ; 123F _ 8D. 50, 08
        mov     eax, dword [ebp-24H]                    ; 1242 _ 8B. 45, DC
        mov     dword [eax+98H], edx                    ; 1245 _ 89. 90, 00000098
        mov     eax, dword [ebp-24H]                    ; 124B _ 8B. 45, DC
        mov     eax, dword [eax+98H]                    ; 124E _ 8B. 80, 00000098
        cmp     eax, 248                                ; 1254 _ 3D, 000000F8
        jnz     ?_057                                   ; 1259 _ 75, 36
        mov     eax, dword [ebp-24H]                    ; 125B _ 8B. 45, DC
        mov     dword [eax+98H], 16                     ; 125E _ C7. 80, 00000098, 00000010
        mov     eax, dword [ebp-24H]                    ; 1268 _ 8B. 45, DC
        mov     edx, dword [eax+94H]                    ; 126B _ 8B. 90, 00000094
        mov     eax, dword [ebp-24H]                    ; 1271 _ 8B. 45, DC
        mov     eax, dword [eax+9CH]                    ; 1274 _ 8B. 80, 0000009C
        mov     dword [esp+4H], edx                     ; 127A _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 127E _ 89. 04 24
        call    _cons_newline                           ; 1281 _ E8, 00001132
        mov     edx, eax                                ; 1286 _ 89. C2
        mov     eax, dword [ebp-24H]                    ; 1288 _ 8B. 45, DC
        mov     dword [eax+9CH], edx                    ; 128B _ 89. 90, 0000009C
?_057:  add     dword [ebp-20H], 1                      ; 1291 _ 83. 45, E0, 01
?_058:  mov     eax, dword [ebp-20H]                    ; 1295 _ 8B. 45, E0
        cmp     eax, dword [ebp-30H]                    ; 1298 _ 3B. 45, D0
        jl      ?_053                                   ; 129B _ 0F 8C, FFFFFE40
        nop                                             ; 12A1 _ 90
        jmp     ?_061                                   ; 12A2 _ EB, 12

?_059:  add     dword [ebp-14H], 32                     ; 12A4 _ 83. 45, EC, 20
?_060:  mov     eax, dword [ebp-14H]                    ; 12A8 _ 8B. 45, EC
        movzx   eax, byte [eax]                         ; 12AB _ 0F B6. 00
        test    al, al                                  ; 12AE _ 84. C0
        jne     ?_046                                   ; 12B0 _ 0F 85, FFFFFD49
?_061:  mov     eax, dword [ebp-24H]                    ; 12B6 _ 8B. 45, DC
        mov     edx, dword [eax+94H]                    ; 12B9 _ 8B. 90, 00000094
        mov     eax, dword [ebp-24H]                    ; 12BF _ 8B. 45, DC
        mov     eax, dword [eax+9CH]                    ; 12C2 _ 8B. 80, 0000009C
        mov     dword [esp+4H], edx                     ; 12C8 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 12CC _ 89. 04 24
        call    _cons_newline                           ; 12CF _ E8, 000010E4
        mov     edx, eax                                ; 12D4 _ 89. C2
        mov     eax, dword [ebp-24H]                    ; 12D6 _ 8B. 45, DC
        mov     dword [eax+9CH], edx                    ; 12D9 _ 89. 90, 0000009C
        mov     edx, dword [ebp-28H]                    ; 12DF _ 8B. 55, D8
        mov     eax, dword [_memman]                    ; 12E2 _ A1, 00000000(d)
        mov     dword [esp+8H], 13                      ; 12E7 _ C7. 44 24, 08, 0000000D
        mov     dword [esp+4H], edx                     ; 12EF _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 12F3 _ 89. 04 24
        call    _memman_free                            ; 12F6 _ E8, 00000000(rel)
        mov     eax, dword [ebp-24H]                    ; 12FB _ 8B. 45, DC
        mov     dword [eax+98H], 16                     ; 12FE _ C7. 80, 00000098, 00000010
        nop                                             ; 1308 _ 90
        add     esp, 96                                 ; 1309 _ 83. C4, 60
        pop     ebx                                     ; 130C _ 5B
        pop     esi                                     ; 130D _ 5E
        pop     ebp                                     ; 130E _ 5D
        ret                                             ; 130F _ C3
; _cmd_type End of function

_cmd_mem:; Function begin
        push    ebp                                     ; 1310 _ 55
        mov     ebp, esp                                ; 1311 _ 89. E5
        push    ebx                                     ; 1313 _ 53
        sub     esp, 52                                 ; 1314 _ 83. EC, 34
        call    _task_now                               ; 1317 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 131C _ 89. 45, F4
        mov     eax, dword [ebp+8H]                     ; 131F _ 8B. 45, 08
        lea     edx, [eax+3FFH]                         ; 1322 _ 8D. 90, 000003FF
        test    eax, eax                                ; 1328 _ 85. C0
        cmovs   eax, edx                                ; 132A _ 0F 48. C2
        sar     eax, 10                                 ; 132D _ C1. F8, 0A
        mov     dword [esp], eax                        ; 1330 _ 89. 04 24
        call    _intToHexStr                            ; 1333 _ E8, 00001F32
        mov     dword [ebp-10H], eax                    ; 1338 _ 89. 45, F0
        mov     eax, dword [ebp-0CH]                    ; 133B _ 8B. 45, F4
        mov     ecx, dword [eax+9CH]                    ; 133E _ 8B. 88, 0000009C
        mov     eax, dword [ebp-0CH]                    ; 1344 _ 8B. 45, F4
        mov     edx, dword [eax+94H]                    ; 1347 _ 8B. 90, 00000094
        mov     eax, dword [_shtctl]                    ; 134D _ A1, 00000264(d)
        mov     dword [esp+14H], ?_361                  ; 1352 _ C7. 44 24, 14, 00000026(d)
        mov     dword [esp+10H], 7                      ; 135A _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ecx                    ; 1362 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 16                      ; 1366 _ C7. 44 24, 08, 00000010
        mov     dword [esp+4H], edx                     ; 136E _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1372 _ 89. 04 24
        call    _showString                             ; 1375 _ E8, 0000157E
        mov     eax, dword [ebp-0CH]                    ; 137A _ 8B. 45, F4
        mov     ecx, dword [eax+9CH]                    ; 137D _ 8B. 88, 0000009C
        mov     eax, dword [ebp-0CH]                    ; 1383 _ 8B. 45, F4
        mov     edx, dword [eax+94H]                    ; 1386 _ 8B. 90, 00000094
        mov     eax, dword [_shtctl]                    ; 138C _ A1, 00000264(d)
        mov     ebx, dword [ebp-10H]                    ; 1391 _ 8B. 5D, F0
        mov     dword [esp+14H], ebx                    ; 1394 _ 89. 5C 24, 14
        mov     dword [esp+10H], 7                      ; 1398 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ecx                    ; 13A0 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 52                      ; 13A4 _ C7. 44 24, 08, 00000034
        mov     dword [esp+4H], edx                     ; 13AC _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 13B0 _ 89. 04 24
        call    _showString                             ; 13B3 _ E8, 00001540
        mov     eax, dword [ebp-0CH]                    ; 13B8 _ 8B. 45, F4
        mov     ecx, dword [eax+9CH]                    ; 13BB _ 8B. 88, 0000009C
        mov     eax, dword [ebp-0CH]                    ; 13C1 _ 8B. 45, F4
        mov     edx, dword [eax+94H]                    ; 13C4 _ 8B. 90, 00000094
        mov     eax, dword [_shtctl]                    ; 13CA _ A1, 00000264(d)
        mov     dword [esp+14H], ?_362                  ; 13CF _ C7. 44 24, 14, 0000002C(d)
        mov     dword [esp+10H], 7                      ; 13D7 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ecx                    ; 13DF _ 89. 4C 24, 0C
        mov     dword [esp+8H], 126                     ; 13E3 _ C7. 44 24, 08, 0000007E
        mov     dword [esp+4H], edx                     ; 13EB _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 13EF _ 89. 04 24
        call    _showString                             ; 13F2 _ E8, 00001501
        mov     eax, dword [ebp-0CH]                    ; 13F7 _ 8B. 45, F4
        mov     edx, dword [eax+94H]                    ; 13FA _ 8B. 90, 00000094
        mov     eax, dword [ebp-0CH]                    ; 1400 _ 8B. 45, F4
        mov     eax, dword [eax+9CH]                    ; 1403 _ 8B. 80, 0000009C
        mov     dword [esp+4H], edx                     ; 1409 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 140D _ 89. 04 24
        call    _cons_newline                           ; 1410 _ E8, 00000FA3
        mov     edx, eax                                ; 1415 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 1417 _ 8B. 45, F4
        mov     dword [eax+9CH], edx                    ; 141A _ 89. 90, 0000009C
        nop                                             ; 1420 _ 90
        add     esp, 52                                 ; 1421 _ 83. C4, 34
        pop     ebx                                     ; 1424 _ 5B
        pop     ebp                                     ; 1425 _ 5D
        ret                                             ; 1426 _ C3
; _cmd_mem End of function

_cmd_cls:; Function begin
        push    ebp                                     ; 1427 _ 55
        mov     ebp, esp                                ; 1428 _ 89. E5
        sub     esp, 56                                 ; 142A _ 83. EC, 38
        call    _task_now                               ; 142D _ E8, 00000000(rel)
        mov     dword [ebp-14H], eax                    ; 1432 _ 89. 45, EC
        mov     dword [ebp-0CH], 8                      ; 1435 _ C7. 45, F4, 00000008
        mov     dword [ebp-10H], 28                     ; 143C _ C7. 45, F0, 0000001C
        mov     dword [ebp-10H], 28                     ; 1443 _ C7. 45, F0, 0000001C
        jmp     ?_065                                   ; 144A _ EB, 3F

?_062:  mov     dword [ebp-0CH], 8                      ; 144C _ C7. 45, F4, 00000008
        jmp     ?_064                                   ; 1453 _ EB, 29

?_063:  mov     eax, dword [ebp-14H]                    ; 1455 _ 8B. 45, EC
        mov     eax, dword [eax+94H]                    ; 1458 _ 8B. 80, 00000094
        mov     edx, dword [eax]                        ; 145E _ 8B. 10
        mov     eax, dword [ebp-14H]                    ; 1460 _ 8B. 45, EC
        mov     eax, dword [eax+94H]                    ; 1463 _ 8B. 80, 00000094
        mov     eax, dword [eax+4H]                     ; 1469 _ 8B. 40, 04
        imul    eax, dword [ebp-10H]                    ; 146C _ 0F AF. 45, F0
        mov     ecx, dword [ebp-0CH]                    ; 1470 _ 8B. 4D, F4
        add     eax, ecx                                ; 1473 _ 01. C8
        add     eax, edx                                ; 1475 _ 01. D0
        mov     byte [eax], 0                           ; 1477 _ C6. 00, 00
        add     dword [ebp-0CH], 1                      ; 147A _ 83. 45, F4, 01
?_064:  cmp     dword [ebp-0CH], 247                    ; 147E _ 81. 7D, F4, 000000F7
        jle     ?_063                                   ; 1485 _ 7E, CE
        add     dword [ebp-10H], 1                      ; 1487 _ 83. 45, F0, 01
?_065:  cmp     dword [ebp-10H], 155                    ; 148B _ 81. 7D, F0, 0000009B
        jle     ?_062                                   ; 1492 _ 7E, B8
        mov     eax, dword [ebp-14H]                    ; 1494 _ 8B. 45, EC
        mov     edx, dword [eax+94H]                    ; 1497 _ 8B. 90, 00000094
        mov     eax, dword [_shtctl]                    ; 149D _ A1, 00000264(d)
        mov     dword [esp+14H], 156                    ; 14A2 _ C7. 44 24, 14, 0000009C
        mov     dword [esp+10H], 248                    ; 14AA _ C7. 44 24, 10, 000000F8
        mov     dword [esp+0CH], 28                     ; 14B2 _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 8                       ; 14BA _ C7. 44 24, 08, 00000008
        mov     dword [esp+4H], edx                     ; 14C2 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 14C6 _ 89. 04 24
        call    _sheet_refresh                          ; 14C9 _ E8, 00000000(rel)
        mov     eax, dword [ebp-14H]                    ; 14CE _ 8B. 45, EC
        mov     dword [eax+9CH], 28                     ; 14D1 _ C7. 80, 0000009C, 0000001C
        mov     eax, dword [ebp-14H]                    ; 14DB _ 8B. 45, EC
        mov     edx, dword [eax+94H]                    ; 14DE _ 8B. 90, 00000094
        mov     eax, dword [_shtctl]                    ; 14E4 _ A1, 00000264(d)
        mov     dword [esp+14H], ?_363                  ; 14E9 _ C7. 44 24, 14, 00000030(d)
        mov     dword [esp+10H], 7                      ; 14F1 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 28                     ; 14F9 _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 8                       ; 1501 _ C7. 44 24, 08, 00000008
        mov     dword [esp+4H], edx                     ; 1509 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 150D _ 89. 04 24
        call    _showString                             ; 1510 _ E8, 000013E3
        nop                                             ; 1515 _ 90
        leave                                           ; 1516 _ C9
        ret                                             ; 1517 _ C3
; _cmd_cls End of function

_cmd_hlt:; Function begin
        push    ebp                                     ; 1518 _ 55
        mov     ebp, esp                                ; 1519 _ 89. E5
        sub     esp, 72                                 ; 151B _ 83. EC, 48
        call    _io_cli                                 ; 151E _ E8, 00000000(rel)
        mov     eax, dword [_memman]                    ; 1523 _ A1, 00000000(d)
        mov     dword [esp+4H], 16                      ; 1528 _ C7. 44 24, 04, 00000010
        mov     dword [esp], eax                        ; 1530 _ 89. 04 24
        call    _memman_alloc                           ; 1533 _ E8, 00000000(rel)
        mov     dword [ebp-14H], eax                    ; 1538 _ 89. 45, EC
        call    _task_now                               ; 153B _ E8, 00000000(rel)
        mov     dword [ebp-18H], eax                    ; 1540 _ 89. 45, E8
        mov     eax, dword [ebp-18H]                    ; 1543 _ 8B. 45, E8
        mov     edx, dword [ebp-14H]                    ; 1546 _ 8B. 55, EC
        mov     dword [eax+0ACH], edx                   ; 1549 _ 89. 90, 000000AC
        mov     eax, dword [ebp-14H]                    ; 154F _ 8B. 45, EC
        mov     dword [esp+4H], eax                     ; 1552 _ 89. 44 24, 04
        mov     dword [esp], ?_364                      ; 1556 _ C7. 04 24, 00000032(d)
        call    _file_loadfile                          ; 155D _ E8, 00002971
        call    _get_addr_gdt                           ; 1562 _ E8, 00000000(rel)
        mov     dword [ebp-1CH], eax                    ; 1567 _ 89. 45, E4
        mov     dword [ebp-0CH], 21                     ; 156A _ C7. 45, F4, 00000015
        mov     dword [ebp-10H], 22                     ; 1571 _ C7. 45, F0, 00000016
        mov     eax, dword [_task_cons]                 ; 1578 _ A1, 00000274(d)
        cmp     dword [ebp-18H], eax                    ; 157D _ 39. 45, E8
        jnz     ?_066                                   ; 1580 _ 75, 0E
        mov     dword [ebp-0CH], 23                     ; 1582 _ C7. 45, F4, 00000017
        mov     dword [ebp-10H], 24                     ; 1589 _ C7. 45, F0, 00000018
?_066:  mov     eax, dword [ebp-14H]                    ; 1590 _ 8B. 45, EC
        mov     eax, dword [eax]                        ; 1593 _ 8B. 00
        mov     ecx, eax                                ; 1595 _ 89. C1
        mov     eax, dword [ebp-0CH]                    ; 1597 _ 8B. 45, F4
        lea     edx, [eax*8]                            ; 159A _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-1CH]                    ; 15A1 _ 8B. 45, E4
        add     eax, edx                                ; 15A4 _ 01. D0
        mov     dword [esp+0CH], 16634                  ; 15A6 _ C7. 44 24, 0C, 000040FA
        mov     dword [esp+8H], ecx                     ; 15AE _ 89. 4C 24, 08
        mov     dword [esp+4H], 1048575                 ; 15B2 _ C7. 44 24, 04, 000FFFFF
        mov     dword [esp], eax                        ; 15BA _ 89. 04 24
        call    _set_segmdesc                           ; 15BD _ E8, 00000000(rel)
        mov     eax, dword [_memman]                    ; 15C2 _ A1, 00000000(d)
        mov     dword [esp+4H], 65536                   ; 15C7 _ C7. 44 24, 04, 00010000
        mov     dword [esp], eax                        ; 15CF _ 89. 04 24
        call    _memman_alloc_4k                        ; 15D2 _ E8, 00000000(rel)
        mov     dword [ebp-20H], eax                    ; 15D7 _ 89. 45, E0
        mov     eax, dword [ebp-14H]                    ; 15DA _ 8B. 45, EC
        mov     edx, dword [ebp-20H]                    ; 15DD _ 8B. 55, E0
        mov     dword [eax+4H], edx                     ; 15E0 _ 89. 50, 04
        mov     edx, dword [ebp-20H]                    ; 15E3 _ 8B. 55, E0
        mov     eax, dword [ebp-10H]                    ; 15E6 _ 8B. 45, F0
        lea     ecx, [eax*8]                            ; 15E9 _ 8D. 0C C5, 00000000
        mov     eax, dword [ebp-1CH]                    ; 15F0 _ 8B. 45, E4
        add     eax, ecx                                ; 15F3 _ 01. C8
        mov     dword [esp+0CH], 16626                  ; 15F5 _ C7. 44 24, 0C, 000040F2
        mov     dword [esp+8H], edx                     ; 15FD _ 89. 54 24, 08
        mov     dword [esp+4H], 65535                   ; 1601 _ C7. 44 24, 04, 0000FFFF
        mov     dword [esp], eax                        ; 1609 _ 89. 04 24
        call    _set_segmdesc                           ; 160C _ E8, 00000000(rel)
        mov     eax, dword [ebp-18H]                    ; 1611 _ 8B. 45, E8
        mov     dword [eax+30H], 0                      ; 1614 _ C7. 40, 30, 00000000
        call    _io_sti                                 ; 161B _ E8, 00000000(rel)
        mov     eax, dword [ebp-18H]                    ; 1620 _ 8B. 45, E8
        lea     ecx, [eax+30H]                          ; 1623 _ 8D. 48, 30
        mov     eax, dword [ebp-10H]                    ; 1626 _ 8B. 45, F0
        lea     edx, [eax*8]                            ; 1629 _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-0CH]                    ; 1630 _ 8B. 45, F4
        shl     eax, 3                                  ; 1633 _ C1. E0, 03
        mov     dword [esp+10H], ecx                    ; 1636 _ 89. 4C 24, 10
        mov     dword [esp+0CH], edx                    ; 163A _ 89. 54 24, 0C
        mov     dword [esp+8H], 65536                   ; 163E _ C7. 44 24, 08, 00010000
        mov     dword [esp+4H], eax                     ; 1646 _ 89. 44 24, 04
        mov     dword [esp], 0                          ; 164A _ C7. 04 24, 00000000
        call    _start_app                              ; 1651 _ E8, 00000000(rel)
        call    _io_cli                                 ; 1656 _ E8, 00000000(rel)
        mov     eax, dword [ebp-14H]                    ; 165B _ 8B. 45, EC
        mov     eax, dword [eax+8H]                     ; 165E _ 8B. 40, 08
        mov     ecx, eax                                ; 1661 _ 89. C1
        mov     eax, dword [ebp-14H]                    ; 1663 _ 8B. 45, EC
        mov     eax, dword [eax]                        ; 1666 _ 8B. 00
        mov     edx, eax                                ; 1668 _ 89. C2
        mov     eax, dword [_memman]                    ; 166A _ A1, 00000000(d)
        mov     dword [esp+8H], ecx                     ; 166F _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 1673 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1677 _ 89. 04 24
        call    _memman_free_4k                         ; 167A _ E8, 00000000(rel)
        mov     edx, dword [ebp-20H]                    ; 167F _ 8B. 55, E0
        mov     eax, dword [_memman]                    ; 1682 _ A1, 00000000(d)
        mov     dword [esp+8H], 65536                   ; 1687 _ C7. 44 24, 08, 00010000
        mov     dword [esp+4H], edx                     ; 168F _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1693 _ 89. 04 24
        call    _memman_free_4k                         ; 1696 _ E8, 00000000(rel)
        mov     edx, dword [ebp-14H]                    ; 169B _ 8B. 55, EC
        mov     eax, dword [_memman]                    ; 169E _ A1, 00000000(d)
        mov     dword [esp+8H], 16                      ; 16A3 _ C7. 44 24, 08, 00000010
        mov     dword [esp+4H], edx                     ; 16AB _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 16AF _ 89. 04 24
        call    _memman_free                            ; 16B2 _ E8, 00000000(rel)
        mov     eax, dword [ebp-18H]                    ; 16B7 _ 8B. 45, E8
        mov     dword [eax+0ACH], 0                     ; 16BA _ C7. 80, 000000AC, 00000000
        call    _io_sti                                 ; 16C4 _ E8, 00000000(rel)
        nop                                             ; 16C9 _ 90
        leave                                           ; 16CA _ C9
        ret                                             ; 16CB _ C3
; _cmd_hlt End of function

_console_task:; Function begin
        push    ebp                                     ; 16CC _ 55
        mov     ebp, esp                                ; 16CD _ 89. E5
        push    esi                                     ; 16CF _ 56
        push    ebx                                     ; 16D0 _ 53
        sub     esp, 80                                 ; 16D1 _ 83. EC, 50
        call    _task_now                               ; 16D4 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 16D9 _ 89. 45, F0
        mov     dword [ebp-0CH], 0                      ; 16DC _ C7. 45, F4, 00000000
        mov     dword [ebp-14H], 0                      ; 16E3 _ C7. 45, EC, 00000000
        mov     dword [ebp-18H], 0                      ; 16EA _ C7. 45, E8, 00000000
        mov     eax, dword [_memman]                    ; 16F1 _ A1, 00000000(d)
        mov     dword [esp+4H], 128                     ; 16F6 _ C7. 44 24, 04, 00000080
        mov     dword [esp], eax                        ; 16FE _ 89. 04 24
        call    _memman_alloc                           ; 1701 _ E8, 00000000(rel)
        mov     dword [ebp-1CH], eax                    ; 1706 _ 89. 45, E4
        mov     eax, dword [_memman]                    ; 1709 _ A1, 00000000(d)
        mov     dword [esp+4H], 30                      ; 170E _ C7. 44 24, 04, 0000001E
        mov     dword [esp], eax                        ; 1716 _ 89. 04 24
        call    _memman_alloc                           ; 1719 _ E8, 00000000(rel)
        mov     dword [ebp-20H], eax                    ; 171E _ 89. 45, E0
        mov     eax, dword [ebp-10H]                    ; 1721 _ 8B. 45, F0
        mov     edx, dword [ebp+8H]                     ; 1724 _ 8B. 55, 08
        mov     dword [eax+94H], edx                    ; 1727 _ 89. 90, 00000094
        mov     eax, dword [ebp-10H]                    ; 172D _ 8B. 45, F0
        mov     dword [eax+98H], 16                     ; 1730 _ C7. 80, 00000098, 00000010
        mov     eax, dword [ebp-10H]                    ; 173A _ 8B. 45, F0
        mov     dword [eax+9CH], 28                     ; 173D _ C7. 80, 0000009C, 0000001C
        mov     eax, dword [ebp-10H]                    ; 1747 _ 8B. 45, F0
        mov     dword [eax+0A0H], -1                    ; 174A _ C7. 80, 000000A0, FFFFFFFF
        mov     eax, dword [ebp-10H]                    ; 1754 _ 8B. 45, F0
        add     eax, 16                                 ; 1757 _ 83. C0, 10
        mov     edx, dword [ebp-10H]                    ; 175A _ 8B. 55, F0
        mov     dword [esp+0CH], edx                    ; 175D _ 89. 54 24, 0C
        mov     edx, dword [ebp-1CH]                    ; 1761 _ 8B. 55, E4
        mov     dword [esp+8H], edx                     ; 1764 _ 89. 54 24, 08
        mov     dword [esp+4H], 128                     ; 1768 _ C7. 44 24, 04, 00000080
        mov     dword [esp], eax                        ; 1770 _ 89. 04 24
        call    _fifo8_init                             ; 1773 _ E8, 00000000(rel)
        call    _timer_alloc                            ; 1778 _ E8, 00000000(rel)
        mov     dword [ebp-24H], eax                    ; 177D _ 89. 45, DC
        mov     eax, dword [ebp-10H]                    ; 1780 _ 8B. 45, F0
        add     eax, 16                                 ; 1783 _ 83. C0, 10
        mov     dword [esp+8H], 1                       ; 1786 _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], eax                     ; 178E _ 89. 44 24, 04
        mov     eax, dword [ebp-24H]                    ; 1792 _ 8B. 45, DC
        mov     dword [esp], eax                        ; 1795 _ 89. 04 24
        call    _timer_init                             ; 1798 _ E8, 00000000(rel)
        mov     dword [esp+4H], 50                      ; 179D _ C7. 44 24, 04, 00000032
        mov     eax, dword [ebp-24H]                    ; 17A5 _ 8B. 45, DC
        mov     dword [esp], eax                        ; 17A8 _ 89. 04 24
        call    _timer_settime                          ; 17AB _ E8, 00000000(rel)
        mov     eax, dword [ebp-10H]                    ; 17B0 _ 8B. 45, F0
        mov     edx, dword [ebp-24H]                    ; 17B3 _ 8B. 55, DC
        mov     dword [eax+0A8H], edx                   ; 17B6 _ 89. 90, 000000A8
        mov     eax, dword [_shtctl]                    ; 17BC _ A1, 00000264(d)
        mov     dword [esp+14H], ?_363                  ; 17C1 _ C7. 44 24, 14, 00000030(d)
        mov     dword [esp+10H], 7                      ; 17C9 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 28                     ; 17D1 _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 8                       ; 17D9 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp+8H]                     ; 17E1 _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 17E4 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 17E8 _ 89. 04 24
        call    _showString                             ; 17EB _ E8, 00001108
        mov     dword [ebp-28H], 0                      ; 17F0 _ C7. 45, D8, 00000000
        mov     dword [ebp-2CH], 78848                  ; 17F7 _ C7. 45, D4, 00013400
        mov     dword [ebp-30H], 0                      ; 17FE _ C7. 45, D0, 00000000
?_067:  call    _io_cli                                 ; 1805 _ E8, 00000000(rel)
        call    _task_now                               ; 180A _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 180F _ 89. 45, F0
        mov     eax, dword [ebp-10H]                    ; 1812 _ 8B. 45, F0
        add     eax, 16                                 ; 1815 _ 83. C0, 10
        mov     dword [esp], eax                        ; 1818 _ 89. 04 24
        call    _fifo8_status                           ; 181B _ E8, 00000000(rel)
        test    eax, eax                                ; 1820 _ 85. C0
        jnz     ?_068                                   ; 1822 _ 75, 0A
        call    _io_sti                                 ; 1824 _ E8, 00000000(rel)
        jmp     ?_082                                   ; 1829 _ E9, 00000420

?_068:  mov     eax, dword [ebp-10H]                    ; 182E _ 8B. 45, F0
        add     eax, 16                                 ; 1831 _ 83. C0, 10
        mov     dword [esp], eax                        ; 1834 _ 89. 04 24
        call    _fifo8_get                              ; 1837 _ E8, 00000000(rel)
        mov     dword [ebp-34H], eax                    ; 183C _ 89. 45, CC
        cmp     dword [ebp-34H], 1                      ; 183F _ 83. 7D, CC, 01
        jg      ?_071                                   ; 1843 _ 7F, 6E
        cmp     dword [ebp-0CH], 0                      ; 1845 _ 83. 7D, F4, 00
        js      ?_071                                   ; 1849 _ 78, 68
        cmp     dword [ebp-34H], 0                      ; 184B _ 83. 7D, CC, 00
        jz      ?_069                                   ; 184F _ 74, 26
        mov     eax, dword [ebp-10H]                    ; 1851 _ 8B. 45, F0
        add     eax, 16                                 ; 1854 _ 83. C0, 10
        mov     dword [esp+8H], 0                       ; 1857 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], eax                     ; 185F _ 89. 44 24, 04
        mov     eax, dword [ebp-24H]                    ; 1863 _ 8B. 45, DC
        mov     dword [esp], eax                        ; 1866 _ 89. 04 24
        call    _timer_init                             ; 1869 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], 7                      ; 186E _ C7. 45, F4, 00000007
        jmp     ?_070                                   ; 1875 _ EB, 24

?_069:  mov     eax, dword [ebp-10H]                    ; 1877 _ 8B. 45, F0
        add     eax, 16                                 ; 187A _ 83. C0, 10
        mov     dword [esp+8H], 1                       ; 187D _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], eax                     ; 1885 _ 89. 44 24, 04
        mov     eax, dword [ebp-24H]                    ; 1889 _ 8B. 45, DC
        mov     dword [esp], eax                        ; 188C _ 89. 04 24
        call    _timer_init                             ; 188F _ E8, 00000000(rel)
        mov     dword [ebp-0CH], 0                      ; 1894 _ C7. 45, F4, 00000000
?_070:  mov     dword [esp+4H], 50                      ; 189B _ C7. 44 24, 04, 00000032
        mov     eax, dword [ebp-24H]                    ; 18A3 _ 8B. 45, DC
        mov     dword [esp], eax                        ; 18A6 _ 89. 04 24
        call    _timer_settime                          ; 18A9 _ E8, 00000000(rel)
        jmp     ?_081                                   ; 18AE _ E9, 0000035A

?_071:  cmp     dword [ebp-34H], 87                     ; 18B3 _ 83. 7D, CC, 57
        jnz     ?_072                                   ; 18B7 _ 75, 3C
        mov     dword [ebp-0CH], 7                      ; 18B9 _ C7. 45, F4, 00000007
        mov     eax, dword [ebp-10H]                    ; 18C0 _ 8B. 45, F0
        add     eax, 16                                 ; 18C3 _ 83. C0, 10
        mov     dword [esp+8H], 0                       ; 18C6 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], eax                     ; 18CE _ 89. 44 24, 04
        mov     eax, dword [ebp-24H]                    ; 18D2 _ 8B. 45, DC
        mov     dword [esp], eax                        ; 18D5 _ 89. 04 24
        call    _timer_init                             ; 18D8 _ E8, 00000000(rel)
        mov     dword [esp+4H], 50                      ; 18DD _ C7. 44 24, 04, 00000032
        mov     eax, dword [ebp-24H]                    ; 18E5 _ 8B. 45, DC
        mov     dword [esp], eax                        ; 18E8 _ 89. 04 24
        call    _timer_settime                          ; 18EB _ E8, 00000000(rel)
        jmp     ?_081                                   ; 18F0 _ E9, 00000318

?_072:  cmp     dword [ebp-34H], 88                     ; 18F5 _ 83. 7D, CC, 58
        jne     ?_073                                   ; 18F9 _ 0F 85, 000000A1
        mov     edx, dword [_sht_back]                  ; 18FF _ 8B. 15, 00000268(d)
        mov     eax, dword [_shtctl]                    ; 1905 _ A1, 00000264(d)
        mov     dword [esp+14H], ?_365                  ; 190A _ C7. 44 24, 14, 0000003A(d)
        mov     dword [esp+10H], 7                      ; 1912 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 176                    ; 191A _ C7. 44 24, 0C, 000000B0
        mov     dword [esp+8H], 0                       ; 1922 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 192A _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 192E _ 89. 04 24
        call    _showString                             ; 1931 _ E8, 00000FC2
        mov     eax, dword [ebp-10H]                    ; 1936 _ 8B. 45, F0
        mov     ecx, dword [eax+9CH]                    ; 1939 _ 8B. 88, 0000009C
        mov     eax, dword [ebp-10H]                    ; 193F _ 8B. 45, F0
        mov     edx, dword [eax+98H]                    ; 1942 _ 8B. 90, 00000098
        mov     eax, dword [_shtctl]                    ; 1948 _ A1, 00000264(d)
        mov     dword [esp+10H], 0                      ; 194D _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], ecx                    ; 1955 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 1959 _ 89. 54 24, 08
        mov     edx, dword [ebp+8H]                     ; 195D _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 1960 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1964 _ 89. 04 24
        call    _set_cursor                             ; 1967 _ E8, FFFFF03F
        mov     dword [ebp-0CH], -1                     ; 196C _ C7. 45, F4, FFFFFFFF
        mov     eax, dword [_task_main]                 ; 1973 _ A1, 0000027C(d)
        mov     dword [esp+8H], 0                       ; 1978 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], -1                      ; 1980 _ C7. 44 24, 04, FFFFFFFF
        mov     dword [esp], eax                        ; 1988 _ 89. 04 24
        call    _task_run                               ; 198B _ E8, 00000000(rel)
        mov     eax, dword [ebp-10H]                    ; 1990 _ 8B. 45, F0
        mov     dword [esp], eax                        ; 1993 _ 89. 04 24
        call    _task_sleep                             ; 1996 _ E8, 00000000(rel)
        jmp     ?_081                                   ; 199B _ E9, 0000026D

?_073:  cmp     dword [ebp-34H], 28                     ; 19A0 _ 83. 7D, CC, 1C
        jne     ?_079                                   ; 19A4 _ 0F 85, 0000014B
        mov     eax, dword [ebp-10H]                    ; 19AA _ 8B. 45, F0
        mov     ecx, dword [eax+9CH]                    ; 19AD _ 8B. 88, 0000009C
        mov     eax, dword [ebp-10H]                    ; 19B3 _ 8B. 45, F0
        mov     edx, dword [eax+98H]                    ; 19B6 _ 8B. 90, 00000098
        mov     eax, dword [_shtctl]                    ; 19BC _ A1, 00000264(d)
        mov     dword [esp+10H], 0                      ; 19C1 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], ecx                    ; 19C9 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 19CD _ 89. 54 24, 08
        mov     edx, dword [ebp+8H]                     ; 19D1 _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 19D4 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 19D8 _ 89. 04 24
        call    _set_cursor                             ; 19DB _ E8, FFFFEFCB
        mov     eax, dword [ebp-10H]                    ; 19E0 _ 8B. 45, F0
        mov     eax, dword [eax+98H]                    ; 19E3 _ 8B. 80, 00000098
        lea     edx, [eax+7H]                           ; 19E9 _ 8D. 50, 07
        test    eax, eax                                ; 19EC _ 85. C0
        cmovs   eax, edx                                ; 19EE _ 0F 48. C2
        sar     eax, 3                                  ; 19F1 _ C1. F8, 03
        lea     edx, [eax-2H]                           ; 19F4 _ 8D. 50, FE
        mov     eax, dword [ebp-20H]                    ; 19F7 _ 8B. 45, E0
        add     eax, edx                                ; 19FA _ 01. D0
        mov     byte [eax], 0                           ; 19FC _ C6. 00, 00
        mov     eax, dword [ebp-10H]                    ; 19FF _ 8B. 45, F0
        mov     eax, dword [eax+9CH]                    ; 1A02 _ 8B. 80, 0000009C
        mov     edx, dword [ebp+8H]                     ; 1A08 _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 1A0B _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1A0F _ 89. 04 24
        call    _cons_newline                           ; 1A12 _ E8, 000009A1
        mov     edx, eax                                ; 1A17 _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 1A19 _ 8B. 45, F0
        mov     dword [eax+9CH], edx                    ; 1A1C _ 89. 90, 0000009C
        mov     dword [esp+4H], ?_366                   ; 1A22 _ C7. 44 24, 04, 00000040(d)
        mov     eax, dword [ebp-20H]                    ; 1A2A _ 8B. 45, E0
        mov     dword [esp], eax                        ; 1A2D _ 89. 04 24
        call    _strcmp                                 ; 1A30 _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 1A35 _ 83. F8, 01
        jnz     ?_074                                   ; 1A38 _ 75, 10
        mov     eax, dword [ebp+0CH]                    ; 1A3A _ 8B. 45, 0C
        mov     dword [esp], eax                        ; 1A3D _ 89. 04 24
        call    _cmd_mem                                ; 1A40 _ E8, FFFFF8CB
        jmp     ?_078                                   ; 1A45 _ E9, 00000099

?_074:  mov     dword [esp+4H], ?_367                   ; 1A4A _ C7. 44 24, 04, 00000044(d)
        mov     eax, dword [ebp-20H]                    ; 1A52 _ 8B. 45, E0
        mov     dword [esp], eax                        ; 1A55 _ 89. 04 24
        call    _strcmp                                 ; 1A58 _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 1A5D _ 83. F8, 01
        jnz     ?_075                                   ; 1A60 _ 75, 07
        call    _cmd_cls                                ; 1A62 _ E8, FFFFF9C0
        jmp     ?_078                                   ; 1A67 _ EB, 7A

?_075:  mov     dword [esp+4H], ?_368                   ; 1A69 _ C7. 44 24, 04, 00000048(d)
        mov     eax, dword [ebp-20H]                    ; 1A71 _ 8B. 45, E0
        mov     dword [esp], eax                        ; 1A74 _ 89. 04 24
        call    _strcmp                                 ; 1A77 _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 1A7C _ 83. F8, 01
        jnz     ?_076                                   ; 1A7F _ 75, 07
        call    _cmd_hlt                                ; 1A81 _ E8, FFFFFA92
        jmp     ?_078                                   ; 1A86 _ EB, 5B

?_076:  mov     dword [esp+4H], ?_369                   ; 1A88 _ C7. 44 24, 04, 0000004C(d)
        mov     eax, dword [ebp-20H]                    ; 1A90 _ 8B. 45, E0
        mov     dword [esp], eax                        ; 1A93 _ 89. 04 24
        call    _strcmp                                 ; 1A96 _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 1A9B _ 83. F8, 01
        jnz     ?_077                                   ; 1A9E _ 75, 07
        call    _cmd_dir                                ; 1AA0 _ E8, FFFFF316
        jmp     ?_078                                   ; 1AA5 _ EB, 3C

?_077:  mov     eax, dword [ebp-20H]                    ; 1AA7 _ 8B. 45, E0
        movzx   eax, byte [eax]                         ; 1AAA _ 0F B6. 00
        cmp     al, 116                                 ; 1AAD _ 3C, 74
        jnz     ?_078                                   ; 1AAF _ 75, 32
        mov     eax, dword [ebp-20H]                    ; 1AB1 _ 8B. 45, E0
        add     eax, 1                                  ; 1AB4 _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 1AB7 _ 0F B6. 00
        cmp     al, 121                                 ; 1ABA _ 3C, 79
        jnz     ?_078                                   ; 1ABC _ 75, 25
        mov     eax, dword [ebp-20H]                    ; 1ABE _ 8B. 45, E0
        add     eax, 2                                  ; 1AC1 _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 1AC4 _ 0F B6. 00
        cmp     al, 112                                 ; 1AC7 _ 3C, 70
        jnz     ?_078                                   ; 1AC9 _ 75, 18
        mov     eax, dword [ebp-20H]                    ; 1ACB _ 8B. 45, E0
        add     eax, 3                                  ; 1ACE _ 83. C0, 03
        movzx   eax, byte [eax]                         ; 1AD1 _ 0F B6. 00
        cmp     al, 101                                 ; 1AD4 _ 3C, 65
        jnz     ?_078                                   ; 1AD6 _ 75, 0B
        mov     eax, dword [ebp-20H]                    ; 1AD8 _ 8B. 45, E0
        mov     dword [esp], eax                        ; 1ADB _ 89. 04 24
        call    _cmd_type                               ; 1ADE _ E8, FFFFF488
?_078:  mov     eax, dword [ebp-10H]                    ; 1AE3 _ 8B. 45, F0
        mov     dword [eax+98H], 16                     ; 1AE6 _ C7. 80, 00000098, 00000010
        jmp     ?_081                                   ; 1AF0 _ E9, 00000118

?_079:  cmp     dword [ebp-34H], 14                     ; 1AF5 _ 83. 7D, CC, 0E
        jne     ?_080                                   ; 1AF9 _ 0F 85, 00000095
        mov     eax, dword [ebp-10H]                    ; 1AFF _ 8B. 45, F0
        mov     eax, dword [eax+98H]                    ; 1B02 _ 8B. 80, 00000098
        cmp     eax, 8                                  ; 1B08 _ 83. F8, 08
        jle     ?_080                                   ; 1B0B _ 0F 8E, 00000083
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
        call    _set_cursor                             ; 1B42 _ E8, FFFFEE64
        mov     eax, dword [ebp-10H]                    ; 1B47 _ 8B. 45, F0
        mov     eax, dword [eax+98H]                    ; 1B4A _ 8B. 80, 00000098
        lea     edx, [eax-8H]                           ; 1B50 _ 8D. 50, F8
        mov     eax, dword [ebp-10H]                    ; 1B53 _ 8B. 45, F0
        mov     dword [eax+98H], edx                    ; 1B56 _ 89. 90, 00000098
        mov     eax, dword [ebp-10H]                    ; 1B5C _ 8B. 45, F0
        mov     ecx, dword [eax+9CH]                    ; 1B5F _ 8B. 88, 0000009C
        mov     eax, dword [ebp-10H]                    ; 1B65 _ 8B. 45, F0
        mov     edx, dword [eax+98H]                    ; 1B68 _ 8B. 90, 00000098
        mov     eax, dword [_shtctl]                    ; 1B6E _ A1, 00000264(d)
        mov     dword [esp+10H], 0                      ; 1B73 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], ecx                    ; 1B7B _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 1B7F _ 89. 54 24, 08
        mov     edx, dword [ebp+8H]                     ; 1B83 _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 1B86 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1B8A _ 89. 04 24
        call    _set_cursor                             ; 1B8D _ E8, FFFFEE19
        jmp     ?_081                                   ; 1B92 _ EB, 79

?_080:  mov     eax, dword [ebp-34H]                    ; 1B94 _ 8B. 45, CC
        mov     dword [esp], eax                        ; 1B97 _ 89. 04 24
        call    _transferScanCode                       ; 1B9A _ E8, FFFFEEE5
        mov     byte [ebp-35H], al                      ; 1B9F _ 88. 45, CB
        mov     eax, dword [ebp-10H]                    ; 1BA2 _ 8B. 45, F0
        mov     eax, dword [eax+98H]                    ; 1BA5 _ 8B. 80, 00000098
        cmp     eax, 239                                ; 1BAB _ 3D, 000000EF
        jg      ?_081                                   ; 1BB0 _ 7F, 5B
        cmp     byte [ebp-35H], 0                       ; 1BB2 _ 80. 7D, CB, 00
        jz      ?_081                                   ; 1BB6 _ 74, 55
        mov     eax, dword [ebp-10H]                    ; 1BB8 _ 8B. 45, F0
        mov     eax, dword [eax+98H]                    ; 1BBB _ 8B. 80, 00000098
        lea     edx, [eax+7H]                           ; 1BC1 _ 8D. 50, 07
        test    eax, eax                                ; 1BC4 _ 85. C0
        cmovs   eax, edx                                ; 1BC6 _ 0F 48. C2
        sar     eax, 3                                  ; 1BC9 _ C1. F8, 03
        lea     edx, [eax-2H]                           ; 1BCC _ 8D. 50, FE
        mov     eax, dword [ebp-20H]                    ; 1BCF _ 8B. 45, E0
        add     edx, eax                                ; 1BD2 _ 01. C2
        movzx   eax, byte [ebp-35H]                     ; 1BD4 _ 0F B6. 45, CB
        mov     byte [edx], al                          ; 1BD8 _ 88. 02
        mov     eax, dword [ebp-10H]                    ; 1BDA _ 8B. 45, F0
        mov     eax, dword [eax+98H]                    ; 1BDD _ 8B. 80, 00000098
        lea     edx, [eax+7H]                           ; 1BE3 _ 8D. 50, 07
        test    eax, eax                                ; 1BE6 _ 85. C0
        cmovs   eax, edx                                ; 1BE8 _ 0F 48. C2
        sar     eax, 3                                  ; 1BEB _ C1. F8, 03
        lea     edx, [eax-1H]                           ; 1BEE _ 8D. 50, FF
        mov     eax, dword [ebp-20H]                    ; 1BF1 _ 8B. 45, E0
        add     eax, edx                                ; 1BF4 _ 01. D0
        mov     byte [eax], 0                           ; 1BF6 _ C6. 00, 00
        movsx   eax, byte [ebp-35H]                     ; 1BF9 _ 0F BE. 45, CB
        mov     dword [esp+4H], 1                       ; 1BFD _ C7. 44 24, 04, 00000001
        mov     dword [esp], eax                        ; 1C05 _ 89. 04 24
        call    _cons_putchar                           ; 1C08 _ E8, 000006D4
?_081:  cmp     dword [ebp-0CH], 0                      ; 1C0D _ 83. 7D, F4, 00
        js      ?_082                                   ; 1C11 _ 78, 3B
        mov     eax, dword [ebp-10H]                    ; 1C13 _ 8B. 45, F0
        mov     ebx, dword [eax+9CH]                    ; 1C16 _ 8B. 98, 0000009C
        mov     eax, dword [ebp-10H]                    ; 1C1C _ 8B. 45, F0
        mov     ecx, dword [eax+98H]                    ; 1C1F _ 8B. 88, 00000098
        mov     eax, dword [ebp-10H]                    ; 1C25 _ 8B. 45, F0
        mov     edx, dword [eax+94H]                    ; 1C28 _ 8B. 90, 00000094
        mov     eax, dword [_shtctl]                    ; 1C2E _ A1, 00000264(d)
        mov     esi, dword [ebp-0CH]                    ; 1C33 _ 8B. 75, F4
        mov     dword [esp+10H], esi                    ; 1C36 _ 89. 74 24, 10
        mov     dword [esp+0CH], ebx                    ; 1C3A _ 89. 5C 24, 0C
        mov     dword [esp+8H], ecx                     ; 1C3E _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 1C42 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1C46 _ 89. 04 24
        call    _set_cursor                             ; 1C49 _ E8, FFFFED5D
?_082:  call    _io_sti                                 ; 1C4E _ E8, 00000000(rel)
        jmp     ?_067                                   ; 1C53 _ E9, FFFFFBAD
; _console_task End of function

_cons_putstr:; Function begin
        push    ebp                                     ; 1C58 _ 55
        mov     ebp, esp                                ; 1C59 _ 89. E5
        sub     esp, 24                                 ; 1C5B _ 83. EC, 18
        jmp     ?_084                                   ; 1C5E _ EB, 1D

?_083:  mov     eax, dword [ebp+8H]                     ; 1C60 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1C63 _ 0F B6. 00
        movsx   eax, al                                 ; 1C66 _ 0F BE. C0
        mov     dword [esp+4H], 1                       ; 1C69 _ C7. 44 24, 04, 00000001
        mov     dword [esp], eax                        ; 1C71 _ 89. 04 24
        call    _cons_putchar                           ; 1C74 _ E8, 00000668
        add     dword [ebp+8H], 1                       ; 1C79 _ 83. 45, 08, 01
?_084:  mov     eax, dword [ebp+8H]                     ; 1C7D _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1C80 _ 0F B6. 00
        test    al, al                                  ; 1C83 _ 84. C0
        jnz     ?_083                                   ; 1C85 _ 75, D9
        nop                                             ; 1C87 _ 90
        leave                                           ; 1C88 _ C9
        ret                                             ; 1C89 _ C3
; _cons_putstr End of function

_api_linewin:; Function begin
        push    ebp                                     ; 1C8A _ 55
        mov     ebp, esp                                ; 1C8B _ 89. E5
        sub     esp, 32                                 ; 1C8D _ 83. EC, 20
        mov     eax, dword [ebp+14H]                    ; 1C90 _ 8B. 45, 14
        sub     eax, dword [ebp+0CH]                    ; 1C93 _ 2B. 45, 0C
        mov     dword [ebp-14H], eax                    ; 1C96 _ 89. 45, EC
        mov     eax, dword [ebp+18H]                    ; 1C99 _ 8B. 45, 18
        sub     eax, dword [ebp+10H]                    ; 1C9C _ 2B. 45, 10
        mov     dword [ebp-18H], eax                    ; 1C9F _ 89. 45, E8
        mov     eax, dword [ebp+0CH]                    ; 1CA2 _ 8B. 45, 0C
        shl     eax, 10                                 ; 1CA5 _ C1. E0, 0A
        mov     dword [ebp-8H], eax                     ; 1CA8 _ 89. 45, F8
        mov     eax, dword [ebp+10H]                    ; 1CAB _ 8B. 45, 10
        shl     eax, 10                                 ; 1CAE _ C1. E0, 0A
        mov     dword [ebp-0CH], eax                    ; 1CB1 _ 89. 45, F4
        cmp     dword [ebp-14H], 0                      ; 1CB4 _ 83. 7D, EC, 00
        jns     ?_085                                   ; 1CB8 _ 79, 03
        neg     dword [ebp-14H]                         ; 1CBA _ F7. 5D, EC
?_085:  cmp     dword [ebp-18H], 0                      ; 1CBD _ 83. 7D, E8, 00
        jns     ?_086                                   ; 1CC1 _ 79, 03
        neg     dword [ebp-18H]                         ; 1CC3 _ F7. 5D, E8
?_086:  mov     eax, dword [ebp-14H]                    ; 1CC6 _ 8B. 45, EC
        cmp     eax, dword [ebp-18H]                    ; 1CC9 _ 3B. 45, E8
        jl      ?_090                                   ; 1CCC _ 7C, 53
        mov     eax, dword [ebp-14H]                    ; 1CCE _ 8B. 45, EC
        add     eax, 1                                  ; 1CD1 _ 83. C0, 01
        mov     dword [ebp-10H], eax                    ; 1CD4 _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 1CD7 _ 8B. 45, 0C
        cmp     eax, dword [ebp+14H]                    ; 1CDA _ 3B. 45, 14
        jle     ?_087                                   ; 1CDD _ 7E, 09
        mov     dword [ebp-14H], -1024                  ; 1CDF _ C7. 45, EC, FFFFFC00
        jmp     ?_088                                   ; 1CE6 _ EB, 07

?_087:  mov     dword [ebp-14H], 1024                   ; 1CE8 _ C7. 45, EC, 00000400
?_088:  mov     eax, dword [ebp+10H]                    ; 1CEF _ 8B. 45, 10
        cmp     eax, dword [ebp+18H]                    ; 1CF2 _ 3B. 45, 18
        jg      ?_089                                   ; 1CF5 _ 7F, 15
        mov     eax, dword [ebp+18H]                    ; 1CF7 _ 8B. 45, 18
        sub     eax, dword [ebp+10H]                    ; 1CFA _ 2B. 45, 10
        add     eax, 1                                  ; 1CFD _ 83. C0, 01
        shl     eax, 10                                 ; 1D00 _ C1. E0, 0A
        cdq                                             ; 1D03 _ 99
        idiv    dword [ebp-10H]                         ; 1D04 _ F7. 7D, F0
        mov     dword [ebp-18H], eax                    ; 1D07 _ 89. 45, E8
        jmp     ?_094                                   ; 1D0A _ EB, 66

?_089:  mov     eax, dword [ebp+18H]                    ; 1D0C _ 8B. 45, 18
        sub     eax, dword [ebp+10H]                    ; 1D0F _ 2B. 45, 10
        sub     eax, 1                                  ; 1D12 _ 83. E8, 01
        shl     eax, 10                                 ; 1D15 _ C1. E0, 0A
        cdq                                             ; 1D18 _ 99
        idiv    dword [ebp-10H]                         ; 1D19 _ F7. 7D, F0
        mov     dword [ebp-18H], eax                    ; 1D1C _ 89. 45, E8
        jmp     ?_094                                   ; 1D1F _ EB, 51

?_090:  mov     eax, dword [ebp-18H]                    ; 1D21 _ 8B. 45, E8
        add     eax, 1                                  ; 1D24 _ 83. C0, 01
        mov     dword [ebp-10H], eax                    ; 1D27 _ 89. 45, F0
        mov     eax, dword [ebp+10H]                    ; 1D2A _ 8B. 45, 10
        cmp     eax, dword [ebp+18H]                    ; 1D2D _ 3B. 45, 18
        jle     ?_091                                   ; 1D30 _ 7E, 09
        mov     dword [ebp-18H], -1024                  ; 1D32 _ C7. 45, E8, FFFFFC00
        jmp     ?_092                                   ; 1D39 _ EB, 07

?_091:  mov     dword [ebp-18H], 1024                   ; 1D3B _ C7. 45, E8, 00000400
?_092:  mov     eax, dword [ebp+0CH]                    ; 1D42 _ 8B. 45, 0C
        cmp     eax, dword [ebp+14H]                    ; 1D45 _ 3B. 45, 14
        jg      ?_093                                   ; 1D48 _ 7F, 15
        mov     eax, dword [ebp+14H]                    ; 1D4A _ 8B. 45, 14
        sub     eax, dword [ebp+0CH]                    ; 1D4D _ 2B. 45, 0C
        add     eax, 1                                  ; 1D50 _ 83. C0, 01
        shl     eax, 10                                 ; 1D53 _ C1. E0, 0A
        cdq                                             ; 1D56 _ 99
        idiv    dword [ebp-10H]                         ; 1D57 _ F7. 7D, F0
        mov     dword [ebp-14H], eax                    ; 1D5A _ 89. 45, EC
        jmp     ?_094                                   ; 1D5D _ EB, 13

?_093:  mov     eax, dword [ebp+14H]                    ; 1D5F _ 8B. 45, 14
        sub     eax, dword [ebp+0CH]                    ; 1D62 _ 2B. 45, 0C
        sub     eax, 1                                  ; 1D65 _ 83. E8, 01
        shl     eax, 10                                 ; 1D68 _ C1. E0, 0A
        cdq                                             ; 1D6B _ 99
        idiv    dword [ebp-10H]                         ; 1D6C _ F7. 7D, F0
        mov     dword [ebp-14H], eax                    ; 1D6F _ 89. 45, EC
?_094:  mov     dword [ebp-4H], 0                       ; 1D72 _ C7. 45, FC, 00000000
        jmp     ?_096                                   ; 1D79 _ EB, 35

?_095:  mov     eax, dword [ebp+8H]                     ; 1D7B _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 1D7E _ 8B. 10
        mov     eax, dword [ebp-0CH]                    ; 1D80 _ 8B. 45, F4
        sar     eax, 10                                 ; 1D83 _ C1. F8, 0A
        mov     ecx, eax                                ; 1D86 _ 89. C1
        mov     eax, dword [ebp+8H]                     ; 1D88 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 1D8B _ 8B. 40, 04
        imul    eax, ecx                                ; 1D8E _ 0F AF. C1
        mov     ecx, dword [ebp-8H]                     ; 1D91 _ 8B. 4D, F8
        sar     ecx, 10                                 ; 1D94 _ C1. F9, 0A
        add     eax, ecx                                ; 1D97 _ 01. C8
        add     eax, edx                                ; 1D99 _ 01. D0
        mov     edx, dword [ebp+1CH]                    ; 1D9B _ 8B. 55, 1C
        mov     byte [eax], dl                          ; 1D9E _ 88. 10
        mov     eax, dword [ebp-14H]                    ; 1DA0 _ 8B. 45, EC
        add     dword [ebp-8H], eax                     ; 1DA3 _ 01. 45, F8
        mov     eax, dword [ebp-18H]                    ; 1DA6 _ 8B. 45, E8
        add     dword [ebp-0CH], eax                    ; 1DA9 _ 01. 45, F4
        add     dword [ebp-4H], 1                       ; 1DAC _ 83. 45, FC, 01
?_096:  mov     eax, dword [ebp-4H]                     ; 1DB0 _ 8B. 45, FC
        cmp     eax, dword [ebp-10H]                    ; 1DB3 _ 3B. 45, F0
        jl      ?_095                                   ; 1DB6 _ 7C, C3
        nop                                             ; 1DB8 _ 90
        leave                                           ; 1DB9 _ C9
        ret                                             ; 1DBA _ C3
; _api_linewin End of function

_handle_keyboard:; Function begin
        push    ebp                                     ; 1DBB _ 55
        mov     ebp, esp                                ; 1DBC _ 89. E5
        sub     esp, 56                                 ; 1DBE _ 83. EC, 38
?_097:  call    _io_cli                                 ; 1DC1 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 1DC6 _ 8B. 45, 08
        add     eax, 16                                 ; 1DC9 _ 83. C0, 10
        mov     dword [esp], eax                        ; 1DCC _ 89. 04 24
        call    _fifo8_status                           ; 1DCF _ E8, 00000000(rel)
        test    eax, eax                                ; 1DD4 _ 85. C0
        jnz     ?_098                                   ; 1DD6 _ 75, 2A
        call    _io_sti                                 ; 1DD8 _ E8, 00000000(rel)
        cmp     dword [ebp+0CH], 0                      ; 1DDD _ 83. 7D, 0C, 00
        jne     ?_102                                   ; 1DE1 _ 0F 85, 000000E2
        call    _io_sti                                 ; 1DE7 _ E8, 00000000(rel)
        mov     eax, dword [ebp+10H]                    ; 1DEC _ 8B. 45, 10
        add     eax, 28                                 ; 1DEF _ 83. C0, 1C
        mov     dword [eax], -1                         ; 1DF2 _ C7. 00, FFFFFFFF
        mov     eax, 0                                  ; 1DF8 _ B8, 00000000
        jmp     ?_103                                   ; 1DFD _ E9, 000000CD

?_098:  mov     eax, dword [ebp+8H]                     ; 1E02 _ 8B. 45, 08
        add     eax, 16                                 ; 1E05 _ 83. C0, 10
        mov     dword [esp], eax                        ; 1E08 _ 89. 04 24
        call    _fifo8_get                              ; 1E0B _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 1E10 _ 89. 45, F4
        call    _io_sti                                 ; 1E13 _ E8, 00000000(rel)
        cmp     dword [ebp-0CH], 255                    ; 1E18 _ 81. 7D, F4, 000000FF
        jle     ?_099                                   ; 1E1F _ 7E, 37
        mov     edx, dword [_sht_back]                  ; 1E21 _ 8B. 15, 00000268(d)
        mov     eax, dword [_shtctl]                    ; 1E27 _ A1, 00000264(d)
        mov     dword [esp+14H], ?_370                  ; 1E2C _ C7. 44 24, 14, 00000050(d)
        mov     dword [esp+10H], 7                      ; 1E34 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 176                    ; 1E3C _ C7. 44 24, 0C, 000000B0
        mov     dword [esp+8H], 0                       ; 1E44 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 1E4C _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1E50 _ 89. 04 24
        call    _showString                             ; 1E53 _ E8, 00000AA0
?_099:  cmp     dword [ebp-0CH], 1                      ; 1E58 _ 83. 7D, F4, 01
        jg      ?_100                                   ; 1E5C _ 7F, 41
        mov     eax, dword [ebp+8H]                     ; 1E5E _ 8B. 45, 08
        lea     edx, [eax+10H]                          ; 1E61 _ 8D. 50, 10
        mov     eax, dword [ebp+8H]                     ; 1E64 _ 8B. 45, 08
        mov     eax, dword [eax+0A8H]                   ; 1E67 _ 8B. 80, 000000A8
        mov     dword [esp+8H], 1                       ; 1E6D _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], edx                     ; 1E75 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1E79 _ 89. 04 24
        call    _timer_init                             ; 1E7C _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 1E81 _ 8B. 45, 08
        mov     eax, dword [eax+0A8H]                   ; 1E84 _ 8B. 80, 000000A8
        mov     dword [esp+4H], 50                      ; 1E8A _ C7. 44 24, 04, 00000032
        mov     dword [esp], eax                        ; 1E92 _ 89. 04 24
        call    _timer_settime                          ; 1E95 _ E8, 00000000(rel)
        jmp     ?_097                                   ; 1E9A _ E9, FFFFFF22

?_100:  cmp     dword [ebp-0CH], 2                      ; 1E9F _ 83. 7D, F4, 02
        jnz     ?_101                                   ; 1EA3 _ 75, 12
        mov     eax, dword [ebp+8H]                     ; 1EA5 _ 8B. 45, 08
        mov     dword [eax+0A0H], 7                     ; 1EA8 _ C7. 80, 000000A0, 00000007
        jmp     ?_097                                   ; 1EB2 _ E9, FFFFFF0A

?_101:  mov     eax, dword [ebp+10H]                    ; 1EB7 _ 8B. 45, 10
        add     eax, 28                                 ; 1EBA _ 83. C0, 1C
        mov     edx, dword [ebp-0CH]                    ; 1EBD _ 8B. 55, F4
        mov     dword [eax], edx                        ; 1EC0 _ 89. 10
        mov     eax, 0                                  ; 1EC2 _ B8, 00000000
        jmp     ?_103                                   ; 1EC7 _ EB, 06

?_102:  nop                                             ; 1EC9 _ 90
        jmp     ?_097                                   ; 1ECA _ E9, FFFFFEF2
; _handle_keyboard End of function

?_103:  ; Local function
        leave                                           ; 1ECF _ C9
        ret                                             ; 1ED0 _ C3

_kernel_api:; Function begin
        push    ebp                                     ; 1ED1 _ 55
        mov     ebp, esp                                ; 1ED2 _ 89. E5
        push    esi                                     ; 1ED4 _ 56
        push    ebx                                     ; 1ED5 _ 53
        sub     esp, 48                                 ; 1ED6 _ 83. EC, 30
        call    _task_now                               ; 1ED9 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 1EDE _ 89. 45, F4
        lea     eax, [ebp+24H]                          ; 1EE1 _ 8D. 45, 24
        add     eax, 4                                  ; 1EE4 _ 83. C0, 04
        mov     dword [ebp-10H], eax                    ; 1EE7 _ 89. 45, F0
        mov     dword [ebp-14H], 0                      ; 1EEA _ C7. 45, EC, 00000000
        cmp     dword [ebp+1CH], 1                      ; 1EF1 _ 83. 7D, 1C, 01
        jnz     ?_104                                   ; 1EF5 _ 75, 1B
        mov     eax, dword [ebp+24H]                    ; 1EF7 _ 8B. 45, 24
        movsx   eax, al                                 ; 1EFA _ 0F BE. C0
        mov     dword [esp+4H], 1                       ; 1EFD _ C7. 44 24, 04, 00000001
        mov     dword [esp], eax                        ; 1F05 _ 89. 04 24
        call    _cons_putchar                           ; 1F08 _ E8, 000003D4
        jmp     ?_118                                   ; 1F0D _ E9, 000003C3

?_104:  cmp     dword [ebp+1CH], 2                      ; 1F12 _ 83. 7D, 1C, 02
        jnz     ?_105                                   ; 1F16 _ 75, 1D
        mov     eax, dword [ebp-0CH]                    ; 1F18 _ 8B. 45, F4
        mov     eax, dword [eax+0ACH]                   ; 1F1B _ 8B. 80, 000000AC
        mov     edx, dword [eax]                        ; 1F21 _ 8B. 10
        mov     eax, dword [ebp+18H]                    ; 1F23 _ 8B. 45, 18
        add     eax, edx                                ; 1F26 _ 01. D0
        mov     dword [esp], eax                        ; 1F28 _ 89. 04 24
        call    _cons_putstr                            ; 1F2B _ E8, FFFFFD28
        jmp     ?_118                                   ; 1F30 _ E9, 000003A0

?_105:  cmp     dword [ebp+1CH], 4                      ; 1F35 _ 83. 7D, 1C, 04
        jnz     ?_106                                   ; 1F39 _ 75, 15
        mov     eax, dword [ebp-0CH]                    ; 1F3B _ 8B. 45, F4
        mov     dword [eax+34H], 0                      ; 1F3E _ C7. 40, 34, 00000000
        mov     eax, dword [ebp-0CH]                    ; 1F45 _ 8B. 45, F4
        add     eax, 48                                 ; 1F48 _ 83. C0, 30
        jmp     ?_119                                   ; 1F4B _ E9, 0000038A

?_106:  cmp     dword [ebp+1CH], 5                      ; 1F50 _ 83. 7D, 1C, 05
        jne     ?_107                                   ; 1F54 _ 0F 85, 00000107
        mov     eax, dword [_shtctl]                    ; 1F5A _ A1, 00000264(d)
        mov     dword [esp], eax                        ; 1F5F _ 89. 04 24
        call    _sheet_alloc                            ; 1F62 _ E8, 00000000(rel)
        mov     dword [ebp-18H], eax                    ; 1F67 _ 89. 45, E8
        mov     eax, dword [ebp-18H]                    ; 1F6A _ 8B. 45, E8
        mov     edx, dword [ebp-0CH]                    ; 1F6D _ 8B. 55, F4
        mov     dword [eax+20H], edx                    ; 1F70 _ 89. 50, 20
        mov     eax, dword [ebp-18H]                    ; 1F73 _ 8B. 45, E8
        mov     eax, dword [eax+1CH]                    ; 1F76 _ 8B. 40, 1C
        or      eax, 10H                                ; 1F79 _ 83. C8, 10
        mov     edx, eax                                ; 1F7C _ 89. C2
        mov     eax, dword [ebp-18H]                    ; 1F7E _ 8B. 45, E8
        mov     dword [eax+1CH], edx                    ; 1F81 _ 89. 50, 1C
        mov     edx, dword [ebp+24H]                    ; 1F84 _ 8B. 55, 24
        mov     eax, dword [ebp-0CH]                    ; 1F87 _ 8B. 45, F4
        mov     eax, dword [eax+0ACH]                   ; 1F8A _ 8B. 80, 000000AC
        mov     ecx, dword [eax+4H]                     ; 1F90 _ 8B. 48, 04
        mov     eax, dword [ebp+18H]                    ; 1F93 _ 8B. 45, 18
        add     eax, ecx                                ; 1F96 _ 01. C8
        mov     dword [esp+10H], edx                    ; 1F98 _ 89. 54 24, 10
        mov     edx, dword [ebp+8H]                     ; 1F9C _ 8B. 55, 08
        mov     dword [esp+0CH], edx                    ; 1F9F _ 89. 54 24, 0C
        mov     edx, dword [ebp+0CH]                    ; 1FA3 _ 8B. 55, 0C
        mov     dword [esp+8H], edx                     ; 1FA6 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 1FAA _ 89. 44 24, 04
        mov     eax, dword [ebp-18H]                    ; 1FAE _ 8B. 45, E8
        mov     dword [esp], eax                        ; 1FB1 _ 89. 04 24
        call    _sheet_setbuf                           ; 1FB4 _ E8, 00000000(rel)
        mov     eax, dword [ebp-0CH]                    ; 1FB9 _ 8B. 45, F4
        mov     eax, dword [eax+0ACH]                   ; 1FBC _ 8B. 80, 000000AC
        mov     edx, dword [eax]                        ; 1FC2 _ 8B. 10
        mov     eax, dword [ebp+20H]                    ; 1FC4 _ 8B. 45, 20
        add     edx, eax                                ; 1FC7 _ 01. C2
        mov     eax, dword [_shtctl]                    ; 1FC9 _ A1, 00000264(d)
        mov     dword [esp+0CH], 0                      ; 1FCE _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], edx                     ; 1FD6 _ 89. 54 24, 08
        mov     edx, dword [ebp-18H]                    ; 1FDA _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 1FDD _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1FE1 _ 89. 04 24
        call    _make_window8                           ; 1FE4 _ E8, 0000184D
        mov     eax, dword [_shtctl]                    ; 1FE9 _ A1, 00000264(d)
        mov     eax, dword [eax+0CH]                    ; 1FEE _ 8B. 40, 0C
        sub     eax, dword [ebp+8H]                     ; 1FF1 _ 2B. 45, 08
        mov     edx, eax                                ; 1FF4 _ 89. C2
        shr     edx, 31                                 ; 1FF6 _ C1. EA, 1F
        add     eax, edx                                ; 1FF9 _ 01. D0
        sar     eax, 1                                  ; 1FFB _ D1. F8
        mov     ecx, eax                                ; 1FFD _ 89. C1
        mov     eax, dword [_shtctl]                    ; 1FFF _ A1, 00000264(d)
        mov     eax, dword [eax+8H]                     ; 2004 _ 8B. 40, 08
        sub     eax, dword [ebp+0CH]                    ; 2007 _ 2B. 45, 0C
        mov     edx, eax                                ; 200A _ 89. C2
        shr     edx, 31                                 ; 200C _ C1. EA, 1F
        add     eax, edx                                ; 200F _ 01. D0
        sar     eax, 1                                  ; 2011 _ D1. F8
        mov     edx, eax                                ; 2013 _ 89. C2
        mov     eax, dword [_shtctl]                    ; 2015 _ A1, 00000264(d)
        mov     dword [esp+0CH], ecx                    ; 201A _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 201E _ 89. 54 24, 08
        mov     edx, dword [ebp-18H]                    ; 2022 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 2025 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2029 _ 89. 04 24
        call    _sheet_slide                            ; 202C _ E8, 00000000(rel)
        mov     eax, dword [_shtctl]                    ; 2031 _ A1, 00000264(d)
        mov     edx, dword [eax+10H]                    ; 2036 _ 8B. 50, 10
        mov     eax, dword [_shtctl]                    ; 2039 _ A1, 00000264(d)
        mov     dword [esp+8H], edx                     ; 203E _ 89. 54 24, 08
        mov     edx, dword [ebp-18H]                    ; 2042 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 2045 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2049 _ 89. 04 24
        call    _sheet_updown                           ; 204C _ E8, 00000000(rel)
        mov     eax, dword [ebp-10H]                    ; 2051 _ 8B. 45, F0
        add     eax, 28                                 ; 2054 _ 83. C0, 1C
        mov     edx, dword [ebp-18H]                    ; 2057 _ 8B. 55, E8
        mov     dword [eax], edx                        ; 205A _ 89. 10
        jmp     ?_118                                   ; 205C _ E9, 00000274

?_107:  cmp     dword [ebp+1CH], 6                      ; 2061 _ 83. 7D, 1C, 06
        jne     ?_108                                   ; 2065 _ 0F 85, 0000008D
        mov     eax, dword [ebp+18H]                    ; 206B _ 8B. 45, 18
        mov     dword [ebp-18H], eax                    ; 206E _ 89. 45, E8
        mov     eax, dword [ebp-0CH]                    ; 2071 _ 8B. 45, F4
        mov     eax, dword [eax+0ACH]                   ; 2074 _ 8B. 80, 000000AC
        mov     edx, dword [eax+4H]                     ; 207A _ 8B. 50, 04
        mov     eax, dword [ebp+10H]                    ; 207D _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 2080 _ 8D. 0C 02
        mov     eax, dword [ebp+24H]                    ; 2083 _ 8B. 45, 24
        movsx   eax, al                                 ; 2086 _ 0F BE. C0
        mov     edx, dword [_shtctl]                    ; 2089 _ 8B. 15, 00000264(d)
        mov     dword [esp+14H], ecx                    ; 208F _ 89. 4C 24, 14
        mov     dword [esp+10H], eax                    ; 2093 _ 89. 44 24, 10
        mov     eax, dword [ebp+8H]                     ; 2097 _ 8B. 45, 08
        mov     dword [esp+0CH], eax                    ; 209A _ 89. 44 24, 0C
        mov     eax, dword [ebp+0CH]                    ; 209E _ 8B. 45, 0C
        mov     dword [esp+8H], eax                     ; 20A1 _ 89. 44 24, 08
        mov     eax, dword [ebp-18H]                    ; 20A5 _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 20A8 _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 20AC _ 89. 14 24
        call    _showString                             ; 20AF _ E8, 00000844
        mov     eax, dword [ebp+8H]                     ; 20B4 _ 8B. 45, 08
        lea     ecx, [eax+10H]                          ; 20B7 _ 8D. 48, 10
        mov     eax, dword [ebp+20H]                    ; 20BA _ 8B. 45, 20
        lea     edx, [eax*8]                            ; 20BD _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp+0CH]                    ; 20C4 _ 8B. 45, 0C
        add     edx, eax                                ; 20C7 _ 01. C2
        mov     eax, dword [_shtctl]                    ; 20C9 _ A1, 00000264(d)
        mov     dword [esp+14H], ecx                    ; 20CE _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 20D2 _ 89. 54 24, 10
        mov     edx, dword [ebp+8H]                     ; 20D6 _ 8B. 55, 08
        mov     dword [esp+0CH], edx                    ; 20D9 _ 89. 54 24, 0C
        mov     edx, dword [ebp+0CH]                    ; 20DD _ 8B. 55, 0C
        mov     dword [esp+8H], edx                     ; 20E0 _ 89. 54 24, 08
        mov     edx, dword [ebp-18H]                    ; 20E4 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 20E7 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 20EB _ 89. 04 24
        call    _sheet_refresh                          ; 20EE _ E8, 00000000(rel)
        jmp     ?_118                                   ; 20F3 _ E9, 000001DD

?_108:  cmp     dword [ebp+1CH], 7                      ; 20F8 _ 83. 7D, 1C, 07
        jnz     ?_109                                   ; 20FC _ 75, 7E
        mov     eax, dword [ebp+18H]                    ; 20FE _ 8B. 45, 18
        mov     dword [ebp-18H], eax                    ; 2101 _ 89. 45, E8
        mov     ebx, dword [ebp+24H]                    ; 2104 _ 8B. 5D, 24
        mov     eax, dword [ebp+10H]                    ; 2107 _ 8B. 45, 10
        movzx   eax, al                                 ; 210A _ 0F B6. C0
        mov     edx, dword [ebp-18H]                    ; 210D _ 8B. 55, E8
        mov     ecx, dword [edx+4H]                     ; 2110 _ 8B. 4A, 04
        mov     edx, dword [ebp-18H]                    ; 2113 _ 8B. 55, E8
        mov     edx, dword [edx]                        ; 2116 _ 8B. 12
        mov     esi, dword [ebp+8H]                     ; 2118 _ 8B. 75, 08
        mov     dword [esp+18H], esi                    ; 211B _ 89. 74 24, 18
        mov     esi, dword [ebp+0CH]                    ; 211F _ 8B. 75, 0C
        mov     dword [esp+14H], esi                    ; 2122 _ 89. 74 24, 14
        mov     esi, dword [ebp+20H]                    ; 2126 _ 8B. 75, 20
        mov     dword [esp+10H], esi                    ; 2129 _ 89. 74 24, 10
        mov     dword [esp+0CH], ebx                    ; 212D _ 89. 5C 24, 0C
        mov     dword [esp+8H], eax                     ; 2131 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 2135 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 2139 _ 89. 14 24
        call    _boxfill8                               ; 213C _ E8, 00000D3C
        mov     eax, dword [ebp+8H]                     ; 2141 _ 8B. 45, 08
        lea     ebx, [eax+1H]                           ; 2144 _ 8D. 58, 01
        mov     eax, dword [ebp+0CH]                    ; 2147 _ 8B. 45, 0C
        lea     ecx, [eax+1H]                           ; 214A _ 8D. 48, 01
        mov     edx, dword [ebp+24H]                    ; 214D _ 8B. 55, 24
        mov     eax, dword [_shtctl]                    ; 2150 _ A1, 00000264(d)
        mov     dword [esp+14H], ebx                    ; 2155 _ 89. 5C 24, 14
        mov     dword [esp+10H], ecx                    ; 2159 _ 89. 4C 24, 10
        mov     ecx, dword [ebp+20H]                    ; 215D _ 8B. 4D, 20
        mov     dword [esp+0CH], ecx                    ; 2160 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 2164 _ 89. 54 24, 08
        mov     edx, dword [ebp-18H]                    ; 2168 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 216B _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 216F _ 89. 04 24
        call    _sheet_refresh                          ; 2172 _ E8, 00000000(rel)
        jmp     ?_118                                   ; 2177 _ E9, 00000159

?_109:  cmp     dword [ebp+1CH], 11                     ; 217C _ 83. 7D, 1C, 0B
        jnz     ?_110                                   ; 2180 _ 75, 28
        mov     eax, dword [ebp+18H]                    ; 2182 _ 8B. 45, 18
        mov     dword [ebp-18H], eax                    ; 2185 _ 89. 45, E8
        mov     ebx, dword [ebp+24H]                    ; 2188 _ 8B. 5D, 24
        mov     eax, dword [ebp-18H]                    ; 218B _ 8B. 45, E8
        mov     edx, dword [eax]                        ; 218E _ 8B. 10
        mov     eax, dword [ebp-18H]                    ; 2190 _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 2193 _ 8B. 40, 04
        imul    eax, dword [ebp+8H]                     ; 2196 _ 0F AF. 45, 08
        mov     ecx, dword [ebp+0CH]                    ; 219A _ 8B. 4D, 0C
        add     eax, ecx                                ; 219D _ 01. C8
        add     eax, edx                                ; 219F _ 01. D0
        mov     edx, ebx                                ; 21A1 _ 89. DA
        mov     byte [eax], dl                          ; 21A3 _ 88. 10
        jmp     ?_118                                   ; 21A5 _ E9, 0000012B

?_110:  cmp     dword [ebp+1CH], 12                     ; 21AA _ 83. 7D, 1C, 0C
        jnz     ?_111                                   ; 21AE _ 75, 3B
        mov     eax, dword [ebp+18H]                    ; 21B0 _ 8B. 45, 18
        mov     dword [ebp-18H], eax                    ; 21B3 _ 89. 45, E8
        mov     edx, dword [ebp+24H]                    ; 21B6 _ 8B. 55, 24
        mov     eax, dword [_shtctl]                    ; 21B9 _ A1, 00000264(d)
        mov     ecx, dword [ebp+8H]                     ; 21BE _ 8B. 4D, 08
        mov     dword [esp+14H], ecx                    ; 21C1 _ 89. 4C 24, 14
        mov     ecx, dword [ebp+0CH]                    ; 21C5 _ 8B. 4D, 0C
        mov     dword [esp+10H], ecx                    ; 21C8 _ 89. 4C 24, 10
        mov     ecx, dword [ebp+20H]                    ; 21CC _ 8B. 4D, 20
        mov     dword [esp+0CH], ecx                    ; 21CF _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 21D3 _ 89. 54 24, 08
        mov     edx, dword [ebp-18H]                    ; 21D7 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 21DA _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 21DE _ 89. 04 24
        call    _sheet_refresh                          ; 21E1 _ E8, 00000000(rel)
        jmp     ?_118                                   ; 21E6 _ E9, 000000EA

?_111:  cmp     dword [ebp+1CH], 13                     ; 21EB _ 83. 7D, 1C, 0D
        jnz     ?_112                                   ; 21EF _ 75, 39
        mov     eax, dword [ebp+18H]                    ; 21F1 _ 8B. 45, 18
        mov     dword [ebp-18H], eax                    ; 21F4 _ 89. 45, E8
        mov     eax, dword [ebp+24H]                    ; 21F7 _ 8B. 45, 24
        mov     edx, dword [ebp+10H]                    ; 21FA _ 8B. 55, 10
        mov     dword [esp+14H], edx                    ; 21FD _ 89. 54 24, 14
        mov     edx, dword [ebp+8H]                     ; 2201 _ 8B. 55, 08
        mov     dword [esp+10H], edx                    ; 2204 _ 89. 54 24, 10
        mov     edx, dword [ebp+0CH]                    ; 2208 _ 8B. 55, 0C
        mov     dword [esp+0CH], edx                    ; 220B _ 89. 54 24, 0C
        mov     edx, dword [ebp+20H]                    ; 220F _ 8B. 55, 20
        mov     dword [esp+8H], edx                     ; 2212 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 2216 _ 89. 44 24, 04
        mov     eax, dword [ebp-18H]                    ; 221A _ 8B. 45, E8
        mov     dword [esp], eax                        ; 221D _ 89. 04 24
        call    _api_linewin                            ; 2220 _ E8, FFFFFA65
        jmp     ?_118                                   ; 2225 _ E9, 000000AB

?_112:  cmp     dword [ebp+1CH], 14                     ; 222A _ 83. 7D, 1C, 0E
        jnz     ?_113                                   ; 222E _ 75, 19
        mov     edx, dword [ebp+18H]                    ; 2230 _ 8B. 55, 18
        mov     eax, dword [_shtctl]                    ; 2233 _ A1, 00000264(d)
        mov     dword [esp+4H], edx                     ; 2238 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 223C _ 89. 04 24
        call    _sheet_free                             ; 223F _ E8, 00000000(rel)
        jmp     ?_118                                   ; 2244 _ E9, 0000008C

?_113:  cmp     dword [ebp+1CH], 15                     ; 2249 _ 83. 7D, 1C, 0F
        jnz     ?_114                                   ; 224D _ 75, 1B
        mov     eax, dword [ebp+24H]                    ; 224F _ 8B. 45, 24
        mov     edx, dword [ebp-10H]                    ; 2252 _ 8B. 55, F0
        mov     dword [esp+8H], edx                     ; 2255 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 2259 _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 225D _ 8B. 45, F4
        mov     dword [esp], eax                        ; 2260 _ 89. 04 24
        call    _handle_keyboard                        ; 2263 _ E8, FFFFFB53
        jmp     ?_118                                   ; 2268 _ EB, 6B

?_114:  cmp     dword [ebp+1CH], 16                     ; 226A _ 83. 7D, 1C, 10
        jnz     ?_115                                   ; 226E _ 75, 11
        call    _timer_alloc                            ; 2270 _ E8, 00000000(rel)
        mov     edx, eax                                ; 2275 _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 2277 _ 8B. 45, F0
        add     eax, 28                                 ; 227A _ 83. C0, 1C
        mov     dword [eax], edx                        ; 227D _ 89. 10
        jmp     ?_118                                   ; 227F _ EB, 54

?_115:  cmp     dword [ebp+1CH], 17                     ; 2281 _ 83. 7D, 1C, 11
        jnz     ?_116                                   ; 2285 _ 75, 21
        mov     eax, dword [ebp+24H]                    ; 2287 _ 8B. 45, 24
        movzx   eax, al                                 ; 228A _ 0F B6. C0
        mov     edx, dword [ebp-0CH]                    ; 228D _ 8B. 55, F4
        lea     ecx, [edx+10H]                          ; 2290 _ 8D. 4A, 10
        mov     edx, dword [ebp+18H]                    ; 2293 _ 8B. 55, 18
        mov     dword [esp+8H], eax                     ; 2296 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 229A _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 229E _ 89. 14 24
        call    _timer_init                             ; 22A1 _ E8, 00000000(rel)
        jmp     ?_118                                   ; 22A6 _ EB, 2D

?_116:  cmp     dword [ebp+1CH], 18                     ; 22A8 _ 83. 7D, 1C, 12
        jnz     ?_117                                   ; 22AC _ 75, 16
        mov     eax, dword [ebp+24H]                    ; 22AE _ 8B. 45, 24
        mov     edx, eax                                ; 22B1 _ 89. C2
        mov     eax, dword [ebp+18H]                    ; 22B3 _ 8B. 45, 18
        mov     dword [esp+4H], edx                     ; 22B6 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 22BA _ 89. 04 24
        call    _timer_settime                          ; 22BD _ E8, 00000000(rel)
        jmp     ?_118                                   ; 22C2 _ EB, 11

?_117:  cmp     dword [ebp+1CH], 19                     ; 22C4 _ 83. 7D, 1C, 13
        jnz     ?_118                                   ; 22C8 _ 75, 0B
        mov     eax, dword [ebp+18H]                    ; 22CA _ 8B. 45, 18
        mov     dword [esp], eax                        ; 22CD _ 89. 04 24
        call    _timer_free                             ; 22D0 _ E8, 00000000(rel)
?_118:  mov     eax, 0                                  ; 22D5 _ B8, 00000000
?_119:  add     esp, 48                                 ; 22DA _ 83. C4, 30
        pop     ebx                                     ; 22DD _ 5B
        pop     esi                                     ; 22DE _ 5E
        pop     ebp                                     ; 22DF _ 5D
        ret                                             ; 22E0 _ C3
; _kernel_api End of function

_cons_putchar:; Function begin
        push    ebp                                     ; 22E1 _ 55
        mov     ebp, esp                                ; 22E2 _ 89. E5
        push    esi                                     ; 22E4 _ 56
        push    ebx                                     ; 22E5 _ 53
        sub     esp, 64                                 ; 22E6 _ 83. EC, 40
        mov     eax, dword [ebp+8H]                     ; 22E9 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 22EC _ 8B. 55, 0C
        mov     byte [ebp-1CH], al                      ; 22EF _ 88. 45, E4
        mov     eax, edx                                ; 22F2 _ 89. D0
        mov     byte [ebp-20H], al                      ; 22F4 _ 88. 45, E0
        call    _task_now                               ; 22F7 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 22FC _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 22FF _ 8B. 45, F4
        mov     ebx, dword [eax+9CH]                    ; 2302 _ 8B. 98, 0000009C
        mov     eax, dword [ebp-0CH]                    ; 2308 _ 8B. 45, F4
        mov     ecx, dword [eax+98H]                    ; 230B _ 8B. 88, 00000098
        mov     eax, dword [ebp-0CH]                    ; 2311 _ 8B. 45, F4
        mov     edx, dword [eax+94H]                    ; 2314 _ 8B. 90, 00000094
        mov     eax, dword [_shtctl]                    ; 231A _ A1, 00000264(d)
        mov     dword [esp+10H], 0                      ; 231F _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], ebx                    ; 2327 _ 89. 5C 24, 0C
        mov     dword [esp+8H], ecx                     ; 232B _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 232F _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2333 _ 89. 04 24
        call    _set_cursor                             ; 2336 _ E8, FFFFE670
        mov     edx, dword [ebp-0CH]                    ; 233B _ 8B. 55, F4
        movzx   eax, byte [ebp-1CH]                     ; 233E _ 0F B6. 45, E4
        mov     byte [edx+0A4H], al                     ; 2342 _ 88. 82, 000000A4
        mov     eax, dword [ebp-0CH]                    ; 2348 _ 8B. 45, F4
        mov     byte [eax+0A5H], 0                      ; 234B _ C6. 80, 000000A5, 00
        mov     eax, dword [ebp-0CH]                    ; 2352 _ 8B. 45, F4
        lea     esi, [eax+0A4H]                         ; 2355 _ 8D. B0, 000000A4
        mov     eax, dword [ebp-0CH]                    ; 235B _ 8B. 45, F4
        mov     ebx, dword [eax+9CH]                    ; 235E _ 8B. 98, 0000009C
        mov     eax, dword [ebp-0CH]                    ; 2364 _ 8B. 45, F4
        mov     ecx, dword [eax+98H]                    ; 2367 _ 8B. 88, 00000098
        mov     eax, dword [ebp-0CH]                    ; 236D _ 8B. 45, F4
        mov     edx, dword [eax+94H]                    ; 2370 _ 8B. 90, 00000094
        mov     eax, dword [_shtctl]                    ; 2376 _ A1, 00000264(d)
        mov     dword [esp+14H], esi                    ; 237B _ 89. 74 24, 14
        mov     dword [esp+10H], 7                      ; 237F _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ebx                    ; 2387 _ 89. 5C 24, 0C
        mov     dword [esp+8H], ecx                     ; 238B _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 238F _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2393 _ 89. 04 24
        call    _showString                             ; 2396 _ E8, 0000055D
        mov     eax, dword [ebp-0CH]                    ; 239B _ 8B. 45, F4
        mov     eax, dword [eax+98H]                    ; 239E _ 8B. 80, 00000098
        lea     edx, [eax+8H]                           ; 23A4 _ 8D. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 23A7 _ 8B. 45, F4
        mov     dword [eax+98H], edx                    ; 23AA _ 89. 90, 00000098
        nop                                             ; 23B0 _ 90
        add     esp, 64                                 ; 23B1 _ 83. C4, 40
        pop     ebx                                     ; 23B4 _ 5B
        pop     esi                                     ; 23B5 _ 5E
        pop     ebp                                     ; 23B6 _ 5D
        ret                                             ; 23B7 _ C3
; _cons_putchar End of function

_cons_newline:; Function begin
        push    ebp                                     ; 23B8 _ 55
        mov     ebp, esp                                ; 23B9 _ 89. E5
        push    ebx                                     ; 23BB _ 53
        sub     esp, 52                                 ; 23BC _ 83. EC, 34
        cmp     dword [ebp+8H], 139                     ; 23BF _ 81. 7D, 08, 0000008B
        jg      ?_120                                   ; 23C6 _ 7F, 09
        add     dword [ebp+8H], 16                      ; 23C8 _ 83. 45, 08, 10
        jmp     ?_129                                   ; 23CC _ E9, 000000DB

?_120:  mov     dword [ebp-10H], 28                     ; 23D1 _ C7. 45, F0, 0000001C
        jmp     ?_124                                   ; 23D8 _ EB, 50

?_121:  mov     dword [ebp-0CH], 8                      ; 23DA _ C7. 45, F4, 00000008
        jmp     ?_123                                   ; 23E1 _ EB, 3A

?_122:  mov     eax, dword [ebp+0CH]                    ; 23E3 _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 23E6 _ 8B. 10
        mov     eax, dword [ebp-10H]                    ; 23E8 _ 8B. 45, F0
        lea     ecx, [eax+10H]                          ; 23EB _ 8D. 48, 10
        mov     eax, dword [ebp+0CH]                    ; 23EE _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 23F1 _ 8B. 40, 04
        imul    eax, ecx                                ; 23F4 _ 0F AF. C1
        mov     ecx, dword [ebp-0CH]                    ; 23F7 _ 8B. 4D, F4
        add     eax, ecx                                ; 23FA _ 01. C8
        add     eax, edx                                ; 23FC _ 01. D0
        mov     edx, dword [ebp+0CH]                    ; 23FE _ 8B. 55, 0C
        mov     ecx, dword [edx]                        ; 2401 _ 8B. 0A
        mov     edx, dword [ebp+0CH]                    ; 2403 _ 8B. 55, 0C
        mov     edx, dword [edx+4H]                     ; 2406 _ 8B. 52, 04
        imul    edx, dword [ebp-10H]                    ; 2409 _ 0F AF. 55, F0
        mov     ebx, dword [ebp-0CH]                    ; 240D _ 8B. 5D, F4
        add     edx, ebx                                ; 2410 _ 01. DA
        add     edx, ecx                                ; 2412 _ 01. CA
        movzx   eax, byte [eax]                         ; 2414 _ 0F B6. 00
        mov     byte [edx], al                          ; 2417 _ 88. 02
        add     dword [ebp-0CH], 1                      ; 2419 _ 83. 45, F4, 01
?_123:  cmp     dword [ebp-0CH], 247                    ; 241D _ 81. 7D, F4, 000000F7
        jle     ?_122                                   ; 2424 _ 7E, BD
        add     dword [ebp-10H], 1                      ; 2426 _ 83. 45, F0, 01
?_124:  cmp     dword [ebp-10H], 139                    ; 242A _ 81. 7D, F0, 0000008B
        jle     ?_121                                   ; 2431 _ 7E, A7
        mov     dword [ebp-10H], 140                    ; 2433 _ C7. 45, F0, 0000008C
        jmp     ?_128                                   ; 243A _ EB, 33

?_125:  mov     dword [ebp-0CH], 8                      ; 243C _ C7. 45, F4, 00000008
        jmp     ?_127                                   ; 2443 _ EB, 1D

?_126:  mov     eax, dword [ebp+0CH]                    ; 2445 _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 2448 _ 8B. 10
        mov     eax, dword [ebp+0CH]                    ; 244A _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 244D _ 8B. 40, 04
        imul    eax, dword [ebp-10H]                    ; 2450 _ 0F AF. 45, F0
        mov     ecx, dword [ebp-0CH]                    ; 2454 _ 8B. 4D, F4
        add     eax, ecx                                ; 2457 _ 01. C8
        add     eax, edx                                ; 2459 _ 01. D0
        mov     byte [eax], 0                           ; 245B _ C6. 00, 00
        add     dword [ebp-0CH], 1                      ; 245E _ 83. 45, F4, 01
?_127:  cmp     dword [ebp-0CH], 247                    ; 2462 _ 81. 7D, F4, 000000F7
        jle     ?_126                                   ; 2469 _ 7E, DA
        add     dword [ebp-10H], 1                      ; 246B _ 83. 45, F0, 01
?_128:  cmp     dword [ebp-10H], 155                    ; 246F _ 81. 7D, F0, 0000009B
        jle     ?_125                                   ; 2476 _ 7E, C4
        mov     eax, dword [_shtctl]                    ; 2478 _ A1, 00000264(d)
        mov     dword [esp+14H], 156                    ; 247D _ C7. 44 24, 14, 0000009C
        mov     dword [esp+10H], 248                    ; 2485 _ C7. 44 24, 10, 000000F8
        mov     dword [esp+0CH], 28                     ; 248D _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 8                       ; 2495 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp+0CH]                    ; 249D _ 8B. 55, 0C
        mov     dword [esp+4H], edx                     ; 24A0 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 24A4 _ 89. 04 24
        call    _sheet_refresh                          ; 24A7 _ E8, 00000000(rel)
?_129:  mov     eax, dword [_shtctl]                    ; 24AC _ A1, 00000264(d)
        mov     dword [esp+14H], ?_363                  ; 24B1 _ C7. 44 24, 14, 00000030(d)
        mov     dword [esp+10H], 7                      ; 24B9 _ C7. 44 24, 10, 00000007
        mov     edx, dword [ebp+8H]                     ; 24C1 _ 8B. 55, 08
        mov     dword [esp+0CH], edx                    ; 24C4 _ 89. 54 24, 0C
        mov     dword [esp+8H], 8                       ; 24C8 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp+0CH]                    ; 24D0 _ 8B. 55, 0C
        mov     dword [esp+4H], edx                     ; 24D3 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 24D7 _ 89. 04 24
        call    _showString                             ; 24DA _ E8, 00000419
        mov     eax, dword [ebp+8H]                     ; 24DF _ 8B. 45, 08
        add     esp, 52                                 ; 24E2 _ 83. C4, 34
        pop     ebx                                     ; 24E5 _ 5B
        pop     ebp                                     ; 24E6 _ 5D
        ret                                             ; 24E7 _ C3
; _cons_newline End of function

_init_screen8:; Function begin
        push    ebp                                     ; 24E8 _ 55
        mov     ebp, esp                                ; 24E9 _ 89. E5
        push    ebx                                     ; 24EB _ 53
        sub     esp, 36                                 ; 24EC _ 83. EC, 24
        mov     eax, dword [ebp+10H]                    ; 24EF _ 8B. 45, 10
        lea     edx, [eax-1DH]                          ; 24F2 _ 8D. 50, E3
        mov     eax, dword [ebp+0CH]                    ; 24F5 _ 8B. 45, 0C
        sub     eax, 1                                  ; 24F8 _ 83. E8, 01
        mov     dword [esp+18H], edx                    ; 24FB _ 89. 54 24, 18
        mov     dword [esp+14H], eax                    ; 24FF _ 89. 44 24, 14
        mov     dword [esp+10H], 0                      ; 2503 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 250B _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 14                      ; 2513 _ C7. 44 24, 08, 0000000E
        mov     eax, dword [ebp+0CH]                    ; 251B _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 251E _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2522 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2525 _ 89. 04 24
        call    _boxfill8                               ; 2528 _ E8, 00000950
        mov     eax, dword [ebp+10H]                    ; 252D _ 8B. 45, 10
        lea     ecx, [eax-1CH]                          ; 2530 _ 8D. 48, E4
        mov     eax, dword [ebp+0CH]                    ; 2533 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 2536 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 2539 _ 8B. 45, 10
        sub     eax, 28                                 ; 253C _ 83. E8, 1C
        mov     dword [esp+18H], ecx                    ; 253F _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 2543 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 2547 _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 254B _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 2553 _ C7. 44 24, 08, 00000008
        mov     eax, dword [ebp+0CH]                    ; 255B _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 255E _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2562 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2565 _ 89. 04 24
        call    _boxfill8                               ; 2568 _ E8, 00000910
        mov     eax, dword [ebp+10H]                    ; 256D _ 8B. 45, 10
        lea     ecx, [eax-1BH]                          ; 2570 _ 8D. 48, E5
        mov     eax, dword [ebp+0CH]                    ; 2573 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 2576 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 2579 _ 8B. 45, 10
        sub     eax, 27                                 ; 257C _ 83. E8, 1B
        mov     dword [esp+18H], ecx                    ; 257F _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 2583 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 2587 _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 258B _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 7                       ; 2593 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 259B _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 259E _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 25A2 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 25A5 _ 89. 04 24
        call    _boxfill8                               ; 25A8 _ E8, 000008D0
        mov     eax, dword [ebp+10H]                    ; 25AD _ 8B. 45, 10
        lea     ecx, [eax-1H]                           ; 25B0 _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 25B3 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 25B6 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 25B9 _ 8B. 45, 10
        sub     eax, 26                                 ; 25BC _ 83. E8, 1A
        mov     dword [esp+18H], ecx                    ; 25BF _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 25C3 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 25C7 _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 25CB _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 25D3 _ C7. 44 24, 08, 00000008
        mov     eax, dword [ebp+0CH]                    ; 25DB _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 25DE _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 25E2 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 25E5 _ 89. 04 24
        call    _boxfill8                               ; 25E8 _ E8, 00000890
        mov     eax, dword [ebp+10H]                    ; 25ED _ 8B. 45, 10
        lea     edx, [eax-18H]                          ; 25F0 _ 8D. 50, E8
        mov     eax, dword [ebp+10H]                    ; 25F3 _ 8B. 45, 10
        sub     eax, 24                                 ; 25F6 _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 25F9 _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 25FD _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 2605 _ 89. 44 24, 10
        mov     dword [esp+0CH], 3                      ; 2609 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 7                       ; 2611 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 2619 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 261C _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2620 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2623 _ 89. 04 24
        call    _boxfill8                               ; 2626 _ E8, 00000852
        mov     eax, dword [ebp+10H]                    ; 262B _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 262E _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 2631 _ 8B. 45, 10
        sub     eax, 24                                 ; 2634 _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 2637 _ 89. 54 24, 18
        mov     dword [esp+14H], 2                      ; 263B _ C7. 44 24, 14, 00000002
        mov     dword [esp+10H], eax                    ; 2643 _ 89. 44 24, 10
        mov     dword [esp+0CH], 2                      ; 2647 _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 7                       ; 264F _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 2657 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 265A _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 265E _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2661 _ 89. 04 24
        call    _boxfill8                               ; 2664 _ E8, 00000814
        mov     eax, dword [ebp+10H]                    ; 2669 _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 266C _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 266F _ 8B. 45, 10
        sub     eax, 4                                  ; 2672 _ 83. E8, 04
        mov     dword [esp+18H], edx                    ; 2675 _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 2679 _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 2681 _ 89. 44 24, 10
        mov     dword [esp+0CH], 3                      ; 2685 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 15                      ; 268D _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 2695 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2698 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 269C _ 8B. 45, 08
        mov     dword [esp], eax                        ; 269F _ 89. 04 24
        call    _boxfill8                               ; 26A2 _ E8, 000007D6
        mov     eax, dword [ebp+10H]                    ; 26A7 _ 8B. 45, 10
        lea     edx, [eax-5H]                           ; 26AA _ 8D. 50, FB
        mov     eax, dword [ebp+10H]                    ; 26AD _ 8B. 45, 10
        sub     eax, 23                                 ; 26B0 _ 83. E8, 17
        mov     dword [esp+18H], edx                    ; 26B3 _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 26B7 _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 26BF _ 89. 44 24, 10
        mov     dword [esp+0CH], 59                     ; 26C3 _ C7. 44 24, 0C, 0000003B
        mov     dword [esp+8H], 15                      ; 26CB _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 26D3 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 26D6 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 26DA _ 8B. 45, 08
        mov     dword [esp], eax                        ; 26DD _ 89. 04 24
        call    _boxfill8                               ; 26E0 _ E8, 00000798
        mov     eax, dword [ebp+10H]                    ; 26E5 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 26E8 _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 26EB _ 8B. 45, 10
        sub     eax, 3                                  ; 26EE _ 83. E8, 03
        mov     dword [esp+18H], edx                    ; 26F1 _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 26F5 _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 26FD _ 89. 44 24, 10
        mov     dword [esp+0CH], 2                      ; 2701 _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 0                       ; 2709 _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp+0CH]                    ; 2711 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2714 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2718 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 271B _ 89. 04 24
        call    _boxfill8                               ; 271E _ E8, 0000075A
        mov     eax, dword [ebp+10H]                    ; 2723 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 2726 _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 2729 _ 8B. 45, 10
        sub     eax, 24                                 ; 272C _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 272F _ 89. 54 24, 18
        mov     dword [esp+14H], 60                     ; 2733 _ C7. 44 24, 14, 0000003C
        mov     dword [esp+10H], eax                    ; 273B _ 89. 44 24, 10
        mov     dword [esp+0CH], 60                     ; 273F _ C7. 44 24, 0C, 0000003C
        mov     dword [esp+8H], 0                       ; 2747 _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp+0CH]                    ; 274F _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2752 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2756 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2759 _ 89. 04 24
        call    _boxfill8                               ; 275C _ E8, 0000071C
        mov     eax, dword [ebp+10H]                    ; 2761 _ 8B. 45, 10
        lea     ebx, [eax-18H]                          ; 2764 _ 8D. 58, E8
        mov     eax, dword [ebp+0CH]                    ; 2767 _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 276A _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 276D _ 8B. 45, 10
        lea     edx, [eax-18H]                          ; 2770 _ 8D. 50, E8
        mov     eax, dword [ebp+0CH]                    ; 2773 _ 8B. 45, 0C
        sub     eax, 47                                 ; 2776 _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 2779 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 277D _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 2781 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 2785 _ 89. 44 24, 0C
        mov     dword [esp+8H], 15                      ; 2789 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 2791 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2794 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2798 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 279B _ 89. 04 24
        call    _boxfill8                               ; 279E _ E8, 000006DA
        mov     eax, dword [ebp+10H]                    ; 27A3 _ 8B. 45, 10
        lea     ebx, [eax-4H]                           ; 27A6 _ 8D. 58, FC
        mov     eax, dword [ebp+0CH]                    ; 27A9 _ 8B. 45, 0C
        lea     ecx, [eax-2FH]                          ; 27AC _ 8D. 48, D1
        mov     eax, dword [ebp+10H]                    ; 27AF _ 8B. 45, 10
        lea     edx, [eax-17H]                          ; 27B2 _ 8D. 50, E9
        mov     eax, dword [ebp+0CH]                    ; 27B5 _ 8B. 45, 0C
        sub     eax, 47                                 ; 27B8 _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 27BB _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 27BF _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 27C3 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 27C7 _ 89. 44 24, 0C
        mov     dword [esp+8H], 15                      ; 27CB _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 27D3 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 27D6 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 27DA _ 8B. 45, 08
        mov     dword [esp], eax                        ; 27DD _ 89. 04 24
        call    _boxfill8                               ; 27E0 _ E8, 00000698
        mov     eax, dword [ebp+10H]                    ; 27E5 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 27E8 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 27EB _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 27EE _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 27F1 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 27F4 _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 27F7 _ 8B. 45, 0C
        sub     eax, 47                                 ; 27FA _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 27FD _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 2801 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 2805 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 2809 _ 89. 44 24, 0C
        mov     dword [esp+8H], 7                       ; 280D _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 2815 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2818 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 281C _ 8B. 45, 08
        mov     dword [esp], eax                        ; 281F _ 89. 04 24
        call    _boxfill8                               ; 2822 _ E8, 00000656
        mov     eax, dword [ebp+10H]                    ; 2827 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 282A _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 282D _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 2830 _ 8D. 48, FD
        mov     eax, dword [ebp+10H]                    ; 2833 _ 8B. 45, 10
        lea     edx, [eax-18H]                          ; 2836 _ 8D. 50, E8
        mov     eax, dword [ebp+0CH]                    ; 2839 _ 8B. 45, 0C
        sub     eax, 3                                  ; 283C _ 83. E8, 03
        mov     dword [esp+18H], ebx                    ; 283F _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 2843 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 2847 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 284B _ 89. 44 24, 0C
        mov     dword [esp+8H], 7                       ; 284F _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 2857 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 285A _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 285E _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2861 _ 89. 04 24
        call    _boxfill8                               ; 2864 _ E8, 00000614
        nop                                             ; 2869 _ 90
        add     esp, 36                                 ; 286A _ 83. C4, 24
        pop     ebx                                     ; 286D _ 5B
        pop     ebp                                     ; 286E _ 5D
        ret                                             ; 286F _ C3
; _init_screen8 End of function

_computeMousePosition:; Function begin
        push    ebp                                     ; 2870 _ 55
        mov     ebp, esp                                ; 2871 _ 89. E5
        mov     eax, dword [ebp+10H]                    ; 2873 _ 8B. 45, 10
        mov     edx, dword [eax+4H]                     ; 2876 _ 8B. 50, 04
        mov     eax, dword [_mx]                        ; 2879 _ A1, 00000134(d)
        add     eax, edx                                ; 287E _ 01. D0
        mov     dword [_mx], eax                        ; 2880 _ A3, 00000134(d)
        mov     eax, dword [ebp+10H]                    ; 2885 _ 8B. 45, 10
        mov     edx, dword [eax+8H]                     ; 2888 _ 8B. 50, 08
        mov     eax, dword [_my]                        ; 288B _ A1, 00000138(d)
        add     eax, edx                                ; 2890 _ 01. D0
        mov     dword [_my], eax                        ; 2892 _ A3, 00000138(d)
        mov     eax, dword [_mx]                        ; 2897 _ A1, 00000134(d)
        test    eax, eax                                ; 289C _ 85. C0
        jns     ?_130                                   ; 289E _ 79, 0A
        mov     dword [_mx], 0                          ; 28A0 _ C7. 05, 00000134(d), 00000000
?_130:  mov     eax, dword [_my]                        ; 28AA _ A1, 00000138(d)
        test    eax, eax                                ; 28AF _ 85. C0
        jns     ?_131                                   ; 28B1 _ 79, 0A
        mov     dword [_my], 0                          ; 28B3 _ C7. 05, 00000138(d), 00000000
?_131:  mov     edx, dword [_xsize]                     ; 28BD _ 8B. 15, 0000013C(d)
        mov     eax, dword [_mx]                        ; 28C3 _ A1, 00000134(d)
        cmp     edx, eax                                ; 28C8 _ 39. C2
        jg      ?_132                                   ; 28CA _ 7F, 0D
        mov     eax, dword [_xsize]                     ; 28CC _ A1, 0000013C(d)
        sub     eax, 1                                  ; 28D1 _ 83. E8, 01
        mov     dword [_mx], eax                        ; 28D4 _ A3, 00000134(d)
?_132:  mov     edx, dword [_ysize]                     ; 28D9 _ 8B. 15, 00000140(d)
        mov     eax, dword [_my]                        ; 28DF _ A1, 00000138(d)
        cmp     edx, eax                                ; 28E4 _ 39. C2
        jg      ?_133                                   ; 28E6 _ 7F, 0D
        mov     eax, dword [_ysize]                     ; 28E8 _ A1, 00000140(d)
        sub     eax, 1                                  ; 28ED _ 83. E8, 01
        mov     dword [_my], eax                        ; 28F0 _ A3, 00000138(d)
?_133:  nop                                             ; 28F5 _ 90
        pop     ebp                                     ; 28F6 _ 5D
        ret                                             ; 28F7 _ C3
; _computeMousePosition End of function

_showString:; Function begin
        push    ebp                                     ; 28F8 _ 55
        mov     ebp, esp                                ; 28F9 _ 89. E5
        push    ebx                                     ; 28FB _ 53
        sub     esp, 68                                 ; 28FC _ 83. EC, 44
        mov     eax, dword [ebp+18H]                    ; 28FF _ 8B. 45, 18
        mov     byte [ebp-1CH], al                      ; 2902 _ 88. 45, E4
        mov     eax, dword [ebp+10H]                    ; 2905 _ 8B. 45, 10
        mov     dword [ebp-0CH], eax                    ; 2908 _ 89. 45, F4
        mov     dword [ebp-10H], 0                      ; 290B _ C7. 45, F0, 00000000
        jmp     ?_135                                   ; 2912 _ EB, 4B

?_134:  mov     eax, dword [ebp+1CH]                    ; 2914 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 2917 _ 0F B6. 00
        movzx   eax, al                                 ; 291A _ 0F B6. C0
        shl     eax, 4                                  ; 291D _ C1. E0, 04
        lea     ebx, [_systemFont+eax]                  ; 2920 _ 8D. 98, 00000000(d)
        movsx   eax, byte [ebp-1CH]                     ; 2926 _ 0F BE. 45, E4
        mov     edx, dword [ebp+0CH]                    ; 292A _ 8B. 55, 0C
        mov     ecx, dword [edx+4H]                     ; 292D _ 8B. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 2930 _ 8B. 55, 0C
        mov     edx, dword [edx]                        ; 2933 _ 8B. 12
        mov     dword [esp+14H], ebx                    ; 2935 _ 89. 5C 24, 14
        mov     dword [esp+10H], eax                    ; 2939 _ 89. 44 24, 10
        mov     eax, dword [ebp+14H]                    ; 293D _ 8B. 45, 14
        mov     dword [esp+0CH], eax                    ; 2940 _ 89. 44 24, 0C
        mov     eax, dword [ebp+10H]                    ; 2944 _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 2947 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 294B _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 294F _ 89. 14 24
        call    _showFont8                              ; 2952 _ E8, 00000576
        add     dword [ebp+10H], 8                      ; 2957 _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 295B _ 83. 45, 1C, 01
?_135:  mov     eax, dword [ebp+1CH]                    ; 295F _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 2962 _ 0F B6. 00
        test    al, al                                  ; 2965 _ 84. C0
        jnz     ?_134                                   ; 2967 _ 75, AB
        mov     eax, dword [ebp+14H]                    ; 2969 _ 8B. 45, 14
        add     eax, 16                                 ; 296C _ 83. C0, 10
        mov     dword [esp+14H], eax                    ; 296F _ 89. 44 24, 14
        mov     eax, dword [ebp+10H]                    ; 2973 _ 8B. 45, 10
        mov     dword [esp+10H], eax                    ; 2976 _ 89. 44 24, 10
        mov     eax, dword [ebp+14H]                    ; 297A _ 8B. 45, 14
        mov     dword [esp+0CH], eax                    ; 297D _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 2981 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 2984 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 2988 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 298B _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 298F _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2992 _ 89. 04 24
        call    _sheet_refresh                          ; 2995 _ E8, 00000000(rel)
        nop                                             ; 299A _ 90
        add     esp, 68                                 ; 299B _ 83. C4, 44
        pop     ebx                                     ; 299E _ 5B
        pop     ebp                                     ; 299F _ 5D
        ret                                             ; 29A0 _ C3
; _showString End of function

_show_mouse_info:; Function begin
        push    ebp                                     ; 29A1 _ 55
        mov     ebp, esp                                ; 29A2 _ 89. E5
        sub     esp, 56                                 ; 29A4 _ 83. EC, 38
        mov     eax, dword [_buf_back]                  ; 29A7 _ A1, 00000144(d)
        mov     dword [ebp-10H], eax                    ; 29AC _ 89. 45, F0
        mov     byte [ebp-11H], 0                       ; 29AF _ C6. 45, EF, 00
        mov     dword [ebp-18H], 0                      ; 29B3 _ C7. 45, E8, 00000000
        call    _io_sti                                 ; 29BA _ E8, 00000000(rel)
        mov     dword [esp], _mouseinfo                 ; 29BF _ C7. 04 24, 00000034(d)
        call    _fifo8_get                              ; 29C6 _ E8, 00000000(rel)
        mov     byte [ebp-11H], al                      ; 29CB _ 88. 45, EF
        movzx   eax, byte [ebp-11H]                     ; 29CE _ 0F B6. 45, EF
        mov     dword [esp+4H], eax                     ; 29D2 _ 89. 44 24, 04
        mov     dword [esp], _mdec                      ; 29D6 _ C7. 04 24, 00000100(d)
        call    _mouse_decode                           ; 29DD _ E8, 00000A0F
        test    eax, eax                                ; 29E2 _ 85. C0
        je      ?_143                                   ; 29E4 _ 0F 84, 0000026A
        mov     dword [esp+8H], _mdec                   ; 29EA _ C7. 44 24, 08, 00000100(d)
        mov     eax, dword [ebp+0CH]                    ; 29F2 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 29F5 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 29F9 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 29FC _ 89. 04 24
        call    _computeMousePosition                   ; 29FF _ E8, FFFFFE6C
        mov     edx, dword [_my]                        ; 2A04 _ 8B. 15, 00000138(d)
        mov     eax, dword [_mx]                        ; 2A0A _ A1, 00000134(d)
        mov     dword [esp+0CH], edx                    ; 2A0F _ 89. 54 24, 0C
        mov     dword [esp+8H], eax                     ; 2A13 _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 2A17 _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 2A1A _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2A1E _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2A21 _ 89. 04 24
        call    _sheet_slide                            ; 2A24 _ E8, 00000000(rel)
        mov     eax, dword [?_383]                      ; 2A29 _ A1, 0000010C(d)
        and     eax, 01H                                ; 2A2E _ 83. E0, 01
        test    eax, eax                                ; 2A31 _ 85. C0
        je      ?_141                                   ; 2A33 _ 0F 84, 0000020E
        mov     eax, dword [_mmx]                       ; 2A39 _ A1, 00000118(d)
        test    eax, eax                                ; 2A3E _ 85. C0
        jns     ?_140                                   ; 2A40 _ 0F 89, 00000190
        mov     eax, dword [ebp+8H]                     ; 2A46 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2A49 _ 8B. 40, 10
        sub     eax, 1                                  ; 2A4C _ 83. E8, 01
        mov     dword [ebp-0CH], eax                    ; 2A4F _ 89. 45, F4
        jmp     ?_139                                   ; 2A52 _ E9, 00000173

?_136:  mov     eax, dword [ebp+8H]                     ; 2A57 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2A5A _ 8B. 55, F4
        add     edx, 4                                  ; 2A5D _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2A60 _ 8B. 44 90, 04
        mov     dword [ebp-18H], eax                    ; 2A64 _ 89. 45, E8
        mov     edx, dword [_mx]                        ; 2A67 _ 8B. 15, 00000134(d)
        mov     eax, dword [ebp-18H]                    ; 2A6D _ 8B. 45, E8
        mov     eax, dword [eax+0CH]                    ; 2A70 _ 8B. 40, 0C
        sub     edx, eax                                ; 2A73 _ 29. C2
        mov     eax, edx                                ; 2A75 _ 89. D0
        mov     dword [ebp-1CH], eax                    ; 2A77 _ 89. 45, E4
        mov     edx, dword [_my]                        ; 2A7A _ 8B. 15, 00000138(d)
        mov     eax, dword [ebp-18H]                    ; 2A80 _ 8B. 45, E8
        mov     eax, dword [eax+10H]                    ; 2A83 _ 8B. 40, 10
        sub     edx, eax                                ; 2A86 _ 29. C2
        mov     eax, edx                                ; 2A88 _ 89. D0
        mov     dword [ebp-20H], eax                    ; 2A8A _ 89. 45, E0
        cmp     dword [ebp-1CH], 0                      ; 2A8D _ 83. 7D, E4, 00
        js      ?_138                                   ; 2A91 _ 0F 88, 0000012F
        mov     eax, dword [ebp-18H]                    ; 2A97 _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 2A9A _ 8B. 40, 04
        cmp     dword [ebp-1CH], eax                    ; 2A9D _ 39. 45, E4
        jge     ?_138                                   ; 2AA0 _ 0F 8D, 00000120
        cmp     dword [ebp-20H], 0                      ; 2AA6 _ 83. 7D, E0, 00
        js      ?_138                                   ; 2AAA _ 0F 88, 00000116
        mov     eax, dword [ebp-18H]                    ; 2AB0 _ 8B. 45, E8
        mov     eax, dword [eax+8H]                     ; 2AB3 _ 8B. 40, 08
        cmp     dword [ebp-20H], eax                    ; 2AB6 _ 39. 45, E0
        jge     ?_138                                   ; 2AB9 _ 0F 8D, 00000107
        mov     eax, dword [ebp-18H]                    ; 2ABF _ 8B. 45, E8
        mov     edx, dword [eax]                        ; 2AC2 _ 8B. 10
        mov     eax, dword [ebp-18H]                    ; 2AC4 _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 2AC7 _ 8B. 40, 04
        imul    eax, dword [ebp-20H]                    ; 2ACA _ 0F AF. 45, E0
        mov     ecx, dword [ebp-1CH]                    ; 2ACE _ 8B. 4D, E4
        add     eax, ecx                                ; 2AD1 _ 01. C8
        add     eax, edx                                ; 2AD3 _ 01. D0
        movzx   eax, byte [eax]                         ; 2AD5 _ 0F B6. 00
        movzx   eax, al                                 ; 2AD8 _ 0F B6. C0
        mov     edx, dword [ebp-18H]                    ; 2ADB _ 8B. 55, E8
        mov     edx, dword [edx+14H]                    ; 2ADE _ 8B. 52, 14
        cmp     eax, edx                                ; 2AE1 _ 39. D0
        je      ?_138                                   ; 2AE3 _ 0F 84, 000000DD
        mov     eax, dword [ebp+8H]                     ; 2AE9 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2AEC _ 8B. 40, 10
        sub     eax, 1                                  ; 2AEF _ 83. E8, 01
        mov     dword [esp+8H], eax                     ; 2AF2 _ 89. 44 24, 08
        mov     eax, dword [ebp-18H]                    ; 2AF6 _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 2AF9 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2AFD _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2B00 _ 89. 04 24
        call    _sheet_updown                           ; 2B03 _ E8, 00000000(rel)
        cmp     dword [ebp-1CH], 2                      ; 2B08 _ 83. 7D, E4, 02
        jle     ?_137                                   ; 2B0C _ 7E, 36
        mov     eax, dword [ebp-18H]                    ; 2B0E _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 2B11 _ 8B. 40, 04
        sub     eax, 3                                  ; 2B14 _ 83. E8, 03
        cmp     dword [ebp-1CH], eax                    ; 2B17 _ 39. 45, E4
        jge     ?_137                                   ; 2B1A _ 7D, 28
        cmp     dword [ebp-20H], 2                      ; 2B1C _ 83. 7D, E0, 02
        jle     ?_137                                   ; 2B20 _ 7E, 22
        cmp     dword [ebp-20H], 20                     ; 2B22 _ 83. 7D, E0, 14
        jg      ?_137                                   ; 2B26 _ 7F, 1C
        mov     eax, dword [_mx]                        ; 2B28 _ A1, 00000134(d)
        mov     dword [_mmx], eax                       ; 2B2D _ A3, 00000118(d)
        mov     eax, dword [_my]                        ; 2B32 _ A1, 00000138(d)
        mov     dword [_mmy], eax                       ; 2B37 _ A3, 0000011C(d)
        mov     eax, dword [ebp-18H]                    ; 2B3C _ 8B. 45, E8
        mov     dword [_mouse_clicked_sht], eax         ; 2B3F _ A3, 00000270(d)
?_137:  mov     eax, dword [ebp-18H]                    ; 2B44 _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 2B47 _ 8B. 40, 04
        sub     eax, 21                                 ; 2B4A _ 83. E8, 15
        cmp     dword [ebp-1CH], eax                    ; 2B4D _ 39. 45, E4
        jl      ?_142                                   ; 2B50 _ 0F 8C, 000000FD
        mov     eax, dword [ebp-18H]                    ; 2B56 _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 2B59 _ 8B. 40, 04
        sub     eax, 5                                  ; 2B5C _ 83. E8, 05
        cmp     dword [ebp-1CH], eax                    ; 2B5F _ 39. 45, E4
        jge     ?_142                                   ; 2B62 _ 0F 8D, 000000EB
        cmp     dword [ebp-20H], 4                      ; 2B68 _ 83. 7D, E0, 04
        jle     ?_142                                   ; 2B6C _ 0F 8E, 000000E1
        cmp     dword [ebp-20H], 18                     ; 2B72 _ 83. 7D, E0, 12
        jg      ?_142                                   ; 2B76 _ 0F 8F, 000000D7
        mov     eax, dword [ebp-18H]                    ; 2B7C _ 8B. 45, E8
        mov     eax, dword [eax+20H]                    ; 2B7F _ 8B. 40, 20
        test    eax, eax                                ; 2B82 _ 85. C0
        je      ?_142                                   ; 2B84 _ 0F 84, 000000C9
        call    _io_cli                                 ; 2B8A _ E8, 00000000(rel)
        mov     eax, dword [ebp-18H]                    ; 2B8F _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 2B92 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2B96 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2B99 _ 89. 04 24
        call    _sheet_free                             ; 2B9C _ E8, 00000000(rel)
        call    _get_addr_code32                        ; 2BA1 _ E8, 00000000(rel)
        mov     dword [ebp-24H], eax                    ; 2BA6 _ 89. 45, DC
        mov     ecx, _kill_process                      ; 2BA9 _ B9, 00000D69(d)
        mov     eax, dword [ebp-18H]                    ; 2BAE _ 8B. 45, E8
        mov     edx, dword [eax+20H]                    ; 2BB1 _ 8B. 50, 20
        mov     eax, ecx                                ; 2BB4 _ 89. C8
        sub     eax, dword [ebp-24H]                    ; 2BB6 _ 2B. 45, DC
        mov     dword [edx+4CH], eax                    ; 2BB9 _ 89. 42, 4C
        call    _io_sti                                 ; 2BBC _ E8, 00000000(rel)
        jmp     ?_142                                   ; 2BC1 _ E9, 0000008D

?_138:  sub     dword [ebp-0CH], 1                      ; 2BC6 _ 83. 6D, F4, 01
?_139:  cmp     dword [ebp-0CH], 0                      ; 2BCA _ 83. 7D, F4, 00
        jg      ?_136                                   ; 2BCE _ 0F 8F, FFFFFE83
        jmp     ?_143                                   ; 2BD4 _ EB, 7E

?_140:  mov     edx, dword [_mx]                        ; 2BD6 _ 8B. 15, 00000134(d)
        mov     eax, dword [_mmx]                       ; 2BDC _ A1, 00000118(d)
        sub     edx, eax                                ; 2BE1 _ 29. C2
        mov     eax, edx                                ; 2BE3 _ 89. D0
        mov     dword [ebp-1CH], eax                    ; 2BE5 _ 89. 45, E4
        mov     edx, dword [_my]                        ; 2BE8 _ 8B. 15, 00000138(d)
        mov     eax, dword [_mmy]                       ; 2BEE _ A1, 0000011C(d)
        sub     edx, eax                                ; 2BF3 _ 29. C2
        mov     eax, edx                                ; 2BF5 _ 89. D0
        mov     dword [ebp-20H], eax                    ; 2BF7 _ 89. 45, E0
        mov     eax, dword [_mouse_clicked_sht]         ; 2BFA _ A1, 00000270(d)
        mov     edx, dword [eax+10H]                    ; 2BFF _ 8B. 50, 10
        mov     eax, dword [ebp-20H]                    ; 2C02 _ 8B. 45, E0
        lea     ecx, [edx+eax]                          ; 2C05 _ 8D. 0C 02
        mov     eax, dword [_mouse_clicked_sht]         ; 2C08 _ A1, 00000270(d)
        mov     edx, dword [eax+0CH]                    ; 2C0D _ 8B. 50, 0C
        mov     eax, dword [ebp-1CH]                    ; 2C10 _ 8B. 45, E4
        add     edx, eax                                ; 2C13 _ 01. C2
        mov     eax, dword [_mouse_clicked_sht]         ; 2C15 _ A1, 00000270(d)
        mov     dword [esp+0CH], ecx                    ; 2C1A _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 2C1E _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 2C22 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2C26 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2C29 _ 89. 04 24
        call    _sheet_slide                            ; 2C2C _ E8, 00000000(rel)
        mov     eax, dword [_mx]                        ; 2C31 _ A1, 00000134(d)
        mov     dword [_mmx], eax                       ; 2C36 _ A3, 00000118(d)
        mov     eax, dword [_my]                        ; 2C3B _ A1, 00000138(d)
        mov     dword [_mmy], eax                       ; 2C40 _ A3, 0000011C(d)
        jmp     ?_143                                   ; 2C45 _ EB, 0D

?_141:  mov     dword [_mmx], -1                        ; 2C47 _ C7. 05, 00000118(d), FFFFFFFF
        jmp     ?_143                                   ; 2C51 _ EB, 01

?_142:  nop                                             ; 2C53 _ 90
?_143:  nop                                             ; 2C54 _ 90
        leave                                           ; 2C55 _ C9
        ret                                             ; 2C56 _ C3
; _show_mouse_info End of function

_initBootInfo:; Function begin
        push    ebp                                     ; 2C57 _ 55
        mov     ebp, esp                                ; 2C58 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 2C5A _ 8B. 45, 08
        mov     dword [eax], -536870912                 ; 2C5D _ C7. 00, E0000000
        mov     eax, dword [ebp+8H]                     ; 2C63 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 640                      ; 2C66 _ 66: C7. 40, 04, 0280
        mov     eax, dword [ebp+8H]                     ; 2C6C _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 480                      ; 2C6F _ 66: C7. 40, 06, 01E0
        nop                                             ; 2C75 _ 90
        pop     ebp                                     ; 2C76 _ 5D
        ret                                             ; 2C77 _ C3
; _initBootInfo End of function

_init_palette:; Function begin
        push    ebp                                     ; 2C78 _ 55
        mov     ebp, esp                                ; 2C79 _ 89. E5
        push    ebx                                     ; 2C7B _ 53
        sub     esp, 692                                ; 2C7C _ 81. EC, 000002B4
        mov     dword [esp+8H], _table_rgb.2614         ; 2C82 _ C7. 44 24, 08, 00000140(d)
        mov     dword [esp+4H], 15                      ; 2C8A _ C7. 44 24, 04, 0000000F
        mov     dword [esp], 0                          ; 2C92 _ C7. 04 24, 00000000
        call    _set_palette                            ; 2C99 _ E8, 00000139
        mov     dword [ebp-14H], 0                      ; 2C9E _ C7. 45, EC, 00000000
        jmp     ?_149                                   ; 2CA5 _ E9, 000000FB

?_144:  mov     dword [ebp-10H], 0                      ; 2CAA _ C7. 45, F0, 00000000
        jmp     ?_148                                   ; 2CB1 _ E9, 000000E1

?_145:  mov     dword [ebp-0CH], 0                      ; 2CB6 _ C7. 45, F4, 00000000
        jmp     ?_147                                   ; 2CBD _ E9, 000000C7

?_146:  mov     eax, dword [ebp-0CH]                    ; 2CC2 _ 8B. 45, F4
        mov     ebx, eax                                ; 2CC5 _ 89. C3
        mov     edx, dword [ebp-10H]                    ; 2CC7 _ 8B. 55, F0
        mov     eax, edx                                ; 2CCA _ 89. D0
        add     eax, eax                                ; 2CCC _ 01. C0
        add     eax, edx                                ; 2CCE _ 01. D0
        add     eax, eax                                ; 2CD0 _ 01. C0
        mov     edx, eax                                ; 2CD2 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 2CD4 _ 8B. 45, F4
        lea     ecx, [edx+eax]                          ; 2CD7 _ 8D. 0C 02
        mov     edx, dword [ebp-14H]                    ; 2CDA _ 8B. 55, EC
        mov     eax, edx                                ; 2CDD _ 89. D0
        shl     eax, 3                                  ; 2CDF _ C1. E0, 03
        add     eax, edx                                ; 2CE2 _ 01. D0
        shl     eax, 2                                  ; 2CE4 _ C1. E0, 02
        lea     edx, [ecx+eax]                          ; 2CE7 _ 8D. 14 01
        mov     eax, edx                                ; 2CEA _ 89. D0
        add     eax, eax                                ; 2CEC _ 01. C0
        add     edx, eax                                ; 2CEE _ 01. C2
        mov     ecx, 51                                 ; 2CF0 _ B9, 00000033
        mov     eax, ebx                                ; 2CF5 _ 89. D8
        imul    eax, ecx                                ; 2CF7 _ 0F AF. C1
        mov     byte [ebp+edx-29CH], al                 ; 2CFA _ 88. 84 15, FFFFFD64
        mov     eax, dword [ebp-10H]                    ; 2D01 _ 8B. 45, F0
        mov     ebx, eax                                ; 2D04 _ 89. C3
        mov     edx, dword [ebp-10H]                    ; 2D06 _ 8B. 55, F0
        mov     eax, edx                                ; 2D09 _ 89. D0
        add     eax, eax                                ; 2D0B _ 01. C0
        add     eax, edx                                ; 2D0D _ 01. D0
        add     eax, eax                                ; 2D0F _ 01. C0
        mov     edx, eax                                ; 2D11 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 2D13 _ 8B. 45, F4
        lea     ecx, [edx+eax]                          ; 2D16 _ 8D. 0C 02
        mov     edx, dword [ebp-14H]                    ; 2D19 _ 8B. 55, EC
        mov     eax, edx                                ; 2D1C _ 89. D0
        shl     eax, 3                                  ; 2D1E _ C1. E0, 03
        add     eax, edx                                ; 2D21 _ 01. D0
        shl     eax, 2                                  ; 2D23 _ C1. E0, 02
        lea     edx, [ecx+eax]                          ; 2D26 _ 8D. 14 01
        mov     eax, edx                                ; 2D29 _ 89. D0
        add     eax, eax                                ; 2D2B _ 01. C0
        add     eax, edx                                ; 2D2D _ 01. D0
        lea     edx, [eax+1H]                           ; 2D2F _ 8D. 50, 01
        mov     ecx, 51                                 ; 2D32 _ B9, 00000033
        mov     eax, ebx                                ; 2D37 _ 89. D8
        imul    eax, ecx                                ; 2D39 _ 0F AF. C1
        mov     byte [ebp+edx-29CH], al                 ; 2D3C _ 88. 84 15, FFFFFD64
        mov     eax, dword [ebp-14H]                    ; 2D43 _ 8B. 45, EC
        mov     ebx, eax                                ; 2D46 _ 89. C3
        mov     edx, dword [ebp-10H]                    ; 2D48 _ 8B. 55, F0
        mov     eax, edx                                ; 2D4B _ 89. D0
        add     eax, eax                                ; 2D4D _ 01. C0
        add     eax, edx                                ; 2D4F _ 01. D0
        add     eax, eax                                ; 2D51 _ 01. C0
        mov     edx, eax                                ; 2D53 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 2D55 _ 8B. 45, F4
        lea     ecx, [edx+eax]                          ; 2D58 _ 8D. 0C 02
        mov     edx, dword [ebp-14H]                    ; 2D5B _ 8B. 55, EC
        mov     eax, edx                                ; 2D5E _ 89. D0
        shl     eax, 3                                  ; 2D60 _ C1. E0, 03
        add     eax, edx                                ; 2D63 _ 01. D0
        shl     eax, 2                                  ; 2D65 _ C1. E0, 02
        lea     edx, [ecx+eax]                          ; 2D68 _ 8D. 14 01
        mov     eax, edx                                ; 2D6B _ 89. D0
        add     eax, eax                                ; 2D6D _ 01. C0
        add     eax, edx                                ; 2D6F _ 01. D0
        lea     edx, [eax+2H]                           ; 2D71 _ 8D. 50, 02
        mov     ecx, 51                                 ; 2D74 _ B9, 00000033
        mov     eax, ebx                                ; 2D79 _ 89. D8
        imul    eax, ecx                                ; 2D7B _ 0F AF. C1
        mov     byte [ebp+edx-29CH], al                 ; 2D7E _ 88. 84 15, FFFFFD64
        add     dword [ebp-0CH], 1                      ; 2D85 _ 83. 45, F4, 01
?_147:  cmp     dword [ebp-0CH], 5                      ; 2D89 _ 83. 7D, F4, 05
        jle     ?_146                                   ; 2D8D _ 0F 8E, FFFFFF2F
        add     dword [ebp-10H], 1                      ; 2D93 _ 83. 45, F0, 01
?_148:  cmp     dword [ebp-10H], 5                      ; 2D97 _ 83. 7D, F0, 05
        jle     ?_145                                   ; 2D9B _ 0F 8E, FFFFFF15
        add     dword [ebp-14H], 1                      ; 2DA1 _ 83. 45, EC, 01
?_149:  cmp     dword [ebp-14H], 5                      ; 2DA5 _ 83. 7D, EC, 05
        jle     ?_144                                   ; 2DA9 _ 0F 8E, FFFFFEFB
        lea     eax, [ebp-29CH]                         ; 2DAF _ 8D. 85, FFFFFD64
        mov     dword [esp+8H], eax                     ; 2DB5 _ 89. 44 24, 08
        mov     dword [esp+4H], 231                     ; 2DB9 _ C7. 44 24, 04, 000000E7
        mov     dword [esp], 16                         ; 2DC1 _ C7. 04 24, 00000010
        call    _set_palette                            ; 2DC8 _ E8, 0000000A
        nop                                             ; 2DCD _ 90
        add     esp, 692                                ; 2DCE _ 81. C4, 000002B4
        pop     ebx                                     ; 2DD4 _ 5B
        pop     ebp                                     ; 2DD5 _ 5D
        ret                                             ; 2DD6 _ C3
; _init_palette End of function

_set_palette:; Function begin
        push    ebp                                     ; 2DD7 _ 55
        mov     ebp, esp                                ; 2DD8 _ 89. E5
        sub     esp, 40                                 ; 2DDA _ 83. EC, 28
        call    _io_load_eflags                         ; 2DDD _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 2DE2 _ 89. 45, F0
        call    _io_cli                                 ; 2DE5 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 2DEA _ 8B. 45, 08
        mov     dword [esp+4H], eax                     ; 2DED _ 89. 44 24, 04
        mov     dword [esp], 968                        ; 2DF1 _ C7. 04 24, 000003C8
        call    _io_out8                                ; 2DF8 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 2DFD _ 8B. 45, 08
        mov     dword [ebp-0CH], eax                    ; 2E00 _ 89. 45, F4
        jmp     ?_151                                   ; 2E03 _ EB, 62

?_150:  mov     eax, dword [ebp+10H]                    ; 2E05 _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 2E08 _ 0F B6. 00
        shr     al, 2                                   ; 2E0B _ C0. E8, 02
        movzx   eax, al                                 ; 2E0E _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 2E11 _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 2E15 _ C7. 04 24, 000003C9
        call    _io_out8                                ; 2E1C _ E8, 00000000(rel)
        mov     eax, dword [ebp+10H]                    ; 2E21 _ 8B. 45, 10
        add     eax, 1                                  ; 2E24 _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 2E27 _ 0F B6. 00
        shr     al, 2                                   ; 2E2A _ C0. E8, 02
        movzx   eax, al                                 ; 2E2D _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 2E30 _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 2E34 _ C7. 04 24, 000003C9
        call    _io_out8                                ; 2E3B _ E8, 00000000(rel)
        mov     eax, dword [ebp+10H]                    ; 2E40 _ 8B. 45, 10
        add     eax, 2                                  ; 2E43 _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 2E46 _ 0F B6. 00
        shr     al, 2                                   ; 2E49 _ C0. E8, 02
        movzx   eax, al                                 ; 2E4C _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 2E4F _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 2E53 _ C7. 04 24, 000003C9
        call    _io_out8                                ; 2E5A _ E8, 00000000(rel)
        add     dword [ebp+10H], 3                      ; 2E5F _ 83. 45, 10, 03
        add     dword [ebp-0CH], 1                      ; 2E63 _ 83. 45, F4, 01
?_151:  mov     eax, dword [ebp-0CH]                    ; 2E67 _ 8B. 45, F4
        cmp     eax, dword [ebp+0CH]                    ; 2E6A _ 3B. 45, 0C
        jle     ?_150                                   ; 2E6D _ 7E, 96
        mov     eax, dword [ebp-10H]                    ; 2E6F _ 8B. 45, F0
        mov     dword [esp], eax                        ; 2E72 _ 89. 04 24
        call    _io_store_eflags                        ; 2E75 _ E8, 00000000(rel)
        nop                                             ; 2E7A _ 90
        leave                                           ; 2E7B _ C9
        ret                                             ; 2E7C _ C3
; _set_palette End of function

_boxfill8:; Function begin
        push    ebp                                     ; 2E7D _ 55
        mov     ebp, esp                                ; 2E7E _ 89. E5
        sub     esp, 20                                 ; 2E80 _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 2E83 _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 2E86 _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 2E89 _ 8B. 45, 18
        mov     dword [ebp-8H], eax                     ; 2E8C _ 89. 45, F8
        jmp     ?_155                                   ; 2E8F _ EB, 31

?_152:  mov     eax, dword [ebp+14H]                    ; 2E91 _ 8B. 45, 14
        mov     dword [ebp-4H], eax                     ; 2E94 _ 89. 45, FC
        jmp     ?_154                                   ; 2E97 _ EB, 1D

?_153:  mov     eax, dword [ebp-8H]                     ; 2E99 _ 8B. 45, F8
        imul    eax, dword [ebp+0CH]                    ; 2E9C _ 0F AF. 45, 0C
        mov     edx, dword [ebp-4H]                     ; 2EA0 _ 8B. 55, FC
        add     eax, edx                                ; 2EA3 _ 01. D0
        mov     edx, eax                                ; 2EA5 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2EA7 _ 8B. 45, 08
        add     edx, eax                                ; 2EAA _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 2EAC _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 2EB0 _ 88. 02
        add     dword [ebp-4H], 1                       ; 2EB2 _ 83. 45, FC, 01
?_154:  mov     eax, dword [ebp-4H]                     ; 2EB6 _ 8B. 45, FC
        cmp     eax, dword [ebp+1CH]                    ; 2EB9 _ 3B. 45, 1C
        jle     ?_153                                   ; 2EBC _ 7E, DB
        add     dword [ebp-8H], 1                       ; 2EBE _ 83. 45, F8, 01
?_155:  mov     eax, dword [ebp-8H]                     ; 2EC2 _ 8B. 45, F8
        cmp     eax, dword [ebp+20H]                    ; 2EC5 _ 3B. 45, 20
        jle     ?_152                                   ; 2EC8 _ 7E, C7
        nop                                             ; 2ECA _ 90
        leave                                           ; 2ECB _ C9
        ret                                             ; 2ECC _ C3
; _boxfill8 End of function

_showFont8:; Function begin
        push    ebp                                     ; 2ECD _ 55
        mov     ebp, esp                                ; 2ECE _ 89. E5
        sub     esp, 20                                 ; 2ED0 _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 2ED3 _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 2ED6 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 2ED9 _ C7. 45, FC, 00000000
        jmp     ?_165                                   ; 2EE0 _ E9, 0000015C

?_156:  mov     edx, dword [ebp-4H]                     ; 2EE5 _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 2EE8 _ 8B. 45, 1C
        add     eax, edx                                ; 2EEB _ 01. D0
        movzx   eax, byte [eax]                         ; 2EED _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 2EF0 _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 2EF3 _ 80. 7D, FB, 00
        jns     ?_157                                   ; 2EF7 _ 79, 1E
        mov     edx, dword [ebp+14H]                    ; 2EF9 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 2EFC _ 8B. 45, FC
        add     eax, edx                                ; 2EFF _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 2F01 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 2F05 _ 8B. 55, 10
        add     eax, edx                                ; 2F08 _ 01. D0
        mov     edx, eax                                ; 2F0A _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2F0C _ 8B. 45, 08
        add     edx, eax                                ; 2F0F _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 2F11 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 2F15 _ 88. 02
?_157:  movsx   eax, byte [ebp-5H]                      ; 2F17 _ 0F BE. 45, FB
        and     eax, 40H                                ; 2F1B _ 83. E0, 40
        test    eax, eax                                ; 2F1E _ 85. C0
        jz      ?_158                                   ; 2F20 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 2F22 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 2F25 _ 8B. 45, FC
        add     eax, edx                                ; 2F28 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 2F2A _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 2F2E _ 8B. 55, 10
        add     eax, edx                                ; 2F31 _ 01. D0
        lea     edx, [eax+1H]                           ; 2F33 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2F36 _ 8B. 45, 08
        add     edx, eax                                ; 2F39 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 2F3B _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 2F3F _ 88. 02
?_158:  movsx   eax, byte [ebp-5H]                      ; 2F41 _ 0F BE. 45, FB
        and     eax, 20H                                ; 2F45 _ 83. E0, 20
        test    eax, eax                                ; 2F48 _ 85. C0
        jz      ?_159                                   ; 2F4A _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 2F4C _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 2F4F _ 8B. 45, FC
        add     eax, edx                                ; 2F52 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 2F54 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 2F58 _ 8B. 55, 10
        add     eax, edx                                ; 2F5B _ 01. D0
        lea     edx, [eax+2H]                           ; 2F5D _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 2F60 _ 8B. 45, 08
        add     edx, eax                                ; 2F63 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 2F65 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 2F69 _ 88. 02
?_159:  movsx   eax, byte [ebp-5H]                      ; 2F6B _ 0F BE. 45, FB
        and     eax, 10H                                ; 2F6F _ 83. E0, 10
        test    eax, eax                                ; 2F72 _ 85. C0
        jz      ?_160                                   ; 2F74 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 2F76 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 2F79 _ 8B. 45, FC
        add     eax, edx                                ; 2F7C _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 2F7E _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 2F82 _ 8B. 55, 10
        add     eax, edx                                ; 2F85 _ 01. D0
        lea     edx, [eax+3H]                           ; 2F87 _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 2F8A _ 8B. 45, 08
        add     edx, eax                                ; 2F8D _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 2F8F _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 2F93 _ 88. 02
?_160:  movsx   eax, byte [ebp-5H]                      ; 2F95 _ 0F BE. 45, FB
        and     eax, 08H                                ; 2F99 _ 83. E0, 08
        test    eax, eax                                ; 2F9C _ 85. C0
        jz      ?_161                                   ; 2F9E _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 2FA0 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 2FA3 _ 8B. 45, FC
        add     eax, edx                                ; 2FA6 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 2FA8 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 2FAC _ 8B. 55, 10
        add     eax, edx                                ; 2FAF _ 01. D0
        lea     edx, [eax+4H]                           ; 2FB1 _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2FB4 _ 8B. 45, 08
        add     edx, eax                                ; 2FB7 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 2FB9 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 2FBD _ 88. 02
?_161:  movsx   eax, byte [ebp-5H]                      ; 2FBF _ 0F BE. 45, FB
        and     eax, 04H                                ; 2FC3 _ 83. E0, 04
        test    eax, eax                                ; 2FC6 _ 85. C0
        jz      ?_162                                   ; 2FC8 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 2FCA _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 2FCD _ 8B. 45, FC
        add     eax, edx                                ; 2FD0 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 2FD2 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 2FD6 _ 8B. 55, 10
        add     eax, edx                                ; 2FD9 _ 01. D0
        lea     edx, [eax+5H]                           ; 2FDB _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 2FDE _ 8B. 45, 08
        add     edx, eax                                ; 2FE1 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 2FE3 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 2FE7 _ 88. 02
?_162:  movsx   eax, byte [ebp-5H]                      ; 2FE9 _ 0F BE. 45, FB
        and     eax, 02H                                ; 2FED _ 83. E0, 02
        test    eax, eax                                ; 2FF0 _ 85. C0
        jz      ?_163                                   ; 2FF2 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 2FF4 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 2FF7 _ 8B. 45, FC
        add     eax, edx                                ; 2FFA _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 2FFC _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 3000 _ 8B. 55, 10
        add     eax, edx                                ; 3003 _ 01. D0
        lea     edx, [eax+6H]                           ; 3005 _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 3008 _ 8B. 45, 08
        add     edx, eax                                ; 300B _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 300D _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 3011 _ 88. 02
?_163:  movsx   eax, byte [ebp-5H]                      ; 3013 _ 0F BE. 45, FB
        and     eax, 01H                                ; 3017 _ 83. E0, 01
        test    eax, eax                                ; 301A _ 85. C0
        jz      ?_164                                   ; 301C _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 301E _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 3021 _ 8B. 45, FC
        add     eax, edx                                ; 3024 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 3026 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 302A _ 8B. 55, 10
        add     eax, edx                                ; 302D _ 01. D0
        lea     edx, [eax+7H]                           ; 302F _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 3032 _ 8B. 45, 08
        add     edx, eax                                ; 3035 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 3037 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 303B _ 88. 02
?_164:  add     dword [ebp-4H], 1                       ; 303D _ 83. 45, FC, 01
?_165:  cmp     dword [ebp-4H], 15                      ; 3041 _ 83. 7D, FC, 0F
        jle     ?_156                                   ; 3045 _ 0F 8E, FFFFFE9A
        nop                                             ; 304B _ 90
        leave                                           ; 304C _ C9
        ret                                             ; 304D _ C3
; _showFont8 End of function

_init_mouse_cursor:; Function begin
        push    ebp                                     ; 304E _ 55
        mov     ebp, esp                                ; 304F _ 89. E5
        sub     esp, 20                                 ; 3051 _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 3054 _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 3057 _ 88. 45, EC
        mov     dword [ebp-8H], 0                       ; 305A _ C7. 45, F8, 00000000
        jmp     ?_172                                   ; 3061 _ E9, 000000B1

?_166:  mov     dword [ebp-4H], 0                       ; 3066 _ C7. 45, FC, 00000000
        jmp     ?_171                                   ; 306D _ E9, 00000097

?_167:  mov     eax, dword [ebp-8H]                     ; 3072 _ 8B. 45, F8
        shl     eax, 4                                  ; 3075 _ C1. E0, 04
        mov     edx, eax                                ; 3078 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 307A _ 8B. 45, FC
        add     eax, edx                                ; 307D _ 01. D0
        add     eax, _cursor.2674                       ; 307F _ 05, 00000180(d)
        movzx   eax, byte [eax]                         ; 3084 _ 0F B6. 00
        cmp     al, 42                                  ; 3087 _ 3C, 2A
        jnz     ?_168                                   ; 3089 _ 75, 17
        mov     eax, dword [ebp-8H]                     ; 308B _ 8B. 45, F8
        shl     eax, 4                                  ; 308E _ C1. E0, 04
        mov     edx, eax                                ; 3091 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 3093 _ 8B. 45, FC
        add     eax, edx                                ; 3096 _ 01. D0
        mov     edx, eax                                ; 3098 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 309A _ 8B. 45, 08
        add     eax, edx                                ; 309D _ 01. D0
        mov     byte [eax], 0                           ; 309F _ C6. 00, 00
?_168:  mov     eax, dword [ebp-8H]                     ; 30A2 _ 8B. 45, F8
        shl     eax, 4                                  ; 30A5 _ C1. E0, 04
        mov     edx, eax                                ; 30A8 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 30AA _ 8B. 45, FC
        add     eax, edx                                ; 30AD _ 01. D0
        add     eax, _cursor.2674                       ; 30AF _ 05, 00000180(d)
        movzx   eax, byte [eax]                         ; 30B4 _ 0F B6. 00
        cmp     al, 79                                  ; 30B7 _ 3C, 4F
        jnz     ?_169                                   ; 30B9 _ 75, 17
        mov     eax, dword [ebp-8H]                     ; 30BB _ 8B. 45, F8
        shl     eax, 4                                  ; 30BE _ C1. E0, 04
        mov     edx, eax                                ; 30C1 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 30C3 _ 8B. 45, FC
        add     eax, edx                                ; 30C6 _ 01. D0
        mov     edx, eax                                ; 30C8 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 30CA _ 8B. 45, 08
        add     eax, edx                                ; 30CD _ 01. D0
        mov     byte [eax], 7                           ; 30CF _ C6. 00, 07
?_169:  mov     eax, dword [ebp-8H]                     ; 30D2 _ 8B. 45, F8
        shl     eax, 4                                  ; 30D5 _ C1. E0, 04
        mov     edx, eax                                ; 30D8 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 30DA _ 8B. 45, FC
        add     eax, edx                                ; 30DD _ 01. D0
        add     eax, _cursor.2674                       ; 30DF _ 05, 00000180(d)
        movzx   eax, byte [eax]                         ; 30E4 _ 0F B6. 00
        cmp     al, 46                                  ; 30E7 _ 3C, 2E
        jnz     ?_170                                   ; 30E9 _ 75, 1A
        mov     eax, dword [ebp-8H]                     ; 30EB _ 8B. 45, F8
        shl     eax, 4                                  ; 30EE _ C1. E0, 04
        mov     edx, eax                                ; 30F1 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 30F3 _ 8B. 45, FC
        add     eax, edx                                ; 30F6 _ 01. D0
        mov     edx, eax                                ; 30F8 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 30FA _ 8B. 45, 08
        add     edx, eax                                ; 30FD _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 30FF _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 3103 _ 88. 02
?_170:  add     dword [ebp-4H], 1                       ; 3105 _ 83. 45, FC, 01
?_171:  cmp     dword [ebp-4H], 15                      ; 3109 _ 83. 7D, FC, 0F
        jle     ?_167                                   ; 310D _ 0F 8E, FFFFFF5F
        add     dword [ebp-8H], 1                       ; 3113 _ 83. 45, F8, 01
?_172:  cmp     dword [ebp-8H], 15                      ; 3117 _ 83. 7D, F8, 0F
        jle     ?_166                                   ; 311B _ 0F 8E, FFFFFF45
        nop                                             ; 3121 _ 90
        leave                                           ; 3122 _ C9
        ret                                             ; 3123 _ C3
; _init_mouse_cursor End of function

_putblock:; Function begin
        push    ebp                                     ; 3124 _ 55
        mov     ebp, esp                                ; 3125 _ 89. E5
        push    ebx                                     ; 3127 _ 53
        sub     esp, 16                                 ; 3128 _ 83. EC, 10
        mov     dword [ebp-0CH], 0                      ; 312B _ C7. 45, F4, 00000000
        jmp     ?_176                                   ; 3132 _ EB, 4E

?_173:  mov     dword [ebp-8H], 0                       ; 3134 _ C7. 45, F8, 00000000
        jmp     ?_175                                   ; 313B _ EB, 39

?_174:  mov     eax, dword [ebp-0CH]                    ; 313D _ 8B. 45, F4
        imul    eax, dword [ebp+24H]                    ; 3140 _ 0F AF. 45, 24
        mov     edx, dword [ebp-8H]                     ; 3144 _ 8B. 55, F8
        add     eax, edx                                ; 3147 _ 01. D0
        mov     edx, eax                                ; 3149 _ 89. C2
        mov     eax, dword [ebp+20H]                    ; 314B _ 8B. 45, 20
        add     eax, edx                                ; 314E _ 01. D0
        mov     ecx, dword [ebp+1CH]                    ; 3150 _ 8B. 4D, 1C
        mov     edx, dword [ebp-0CH]                    ; 3153 _ 8B. 55, F4
        add     edx, ecx                                ; 3156 _ 01. CA
        imul    edx, dword [ebp+0CH]                    ; 3158 _ 0F AF. 55, 0C
        mov     ebx, dword [ebp+18H]                    ; 315C _ 8B. 5D, 18
        mov     ecx, dword [ebp-8H]                     ; 315F _ 8B. 4D, F8
        add     ecx, ebx                                ; 3162 _ 01. D9
        add     edx, ecx                                ; 3164 _ 01. CA
        mov     ecx, edx                                ; 3166 _ 89. D1
        mov     edx, dword [ebp+8H]                     ; 3168 _ 8B. 55, 08
        add     edx, ecx                                ; 316B _ 01. CA
        movzx   eax, byte [eax]                         ; 316D _ 0F B6. 00
        mov     byte [edx], al                          ; 3170 _ 88. 02
        add     dword [ebp-8H], 1                       ; 3172 _ 83. 45, F8, 01
?_175:  mov     eax, dword [ebp-8H]                     ; 3176 _ 8B. 45, F8
        cmp     eax, dword [ebp+10H]                    ; 3179 _ 3B. 45, 10
        jl      ?_174                                   ; 317C _ 7C, BF
        add     dword [ebp-0CH], 1                      ; 317E _ 83. 45, F4, 01
?_176:  mov     eax, dword [ebp-0CH]                    ; 3182 _ 8B. 45, F4
        cmp     eax, dword [ebp+14H]                    ; 3185 _ 3B. 45, 14
        jl      ?_173                                   ; 3188 _ 7C, AA
        nop                                             ; 318A _ 90
        add     esp, 16                                 ; 318B _ 83. C4, 10
        pop     ebx                                     ; 318E _ 5B
        pop     ebp                                     ; 318F _ 5D
        ret                                             ; 3190 _ C3
; _putblock End of function

_intHandlerFromC:; Function begin
        push    ebp                                     ; 3191 _ 55
        mov     ebp, esp                                ; 3192 _ 89. E5
        sub     esp, 40                                 ; 3194 _ 83. EC, 28
        mov     eax, dword [_bootInfo]                  ; 3197 _ A1, 00000010(d)
        mov     dword [ebp-0CH], eax                    ; 319C _ 89. 45, F4
        movzx   eax, word [?_380]                       ; 319F _ 0F B7. 05, 00000014(d)
        cwde                                            ; 31A6 _ 98
        mov     dword [ebp-10H], eax                    ; 31A7 _ 89. 45, F0
        movzx   eax, word [?_381]                       ; 31AA _ 0F B7. 05, 00000016(d)
        cwde                                            ; 31B1 _ 98
        mov     dword [ebp-14H], eax                    ; 31B2 _ 89. 45, EC
        mov     dword [esp+4H], 32                      ; 31B5 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 31BD _ C7. 04 24, 00000020
        call    _io_out8                                ; 31C4 _ E8, 00000000(rel)
        mov     byte [ebp-15H], 0                       ; 31C9 _ C6. 45, EB, 00
        mov     dword [esp], 96                         ; 31CD _ C7. 04 24, 00000060
        call    _io_in8                                 ; 31D4 _ E8, 00000000(rel)
        mov     byte [ebp-15H], al                      ; 31D9 _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 31DC _ 0F B6. 45, EB
        mov     dword [esp+4H], eax                     ; 31E0 _ 89. 44 24, 04
        mov     dword [esp], _keyinfo                   ; 31E4 _ C7. 04 24, 00000018(d)
        call    _fifo8_put                              ; 31EB _ E8, 00000000(rel)
        nop                                             ; 31F0 _ 90
        leave                                           ; 31F1 _ C9
        ret                                             ; 31F2 _ C3
; _intHandlerFromC End of function

_charToHexVal:; Function begin
        push    ebp                                     ; 31F3 _ 55
        mov     ebp, esp                                ; 31F4 _ 89. E5
        sub     esp, 4                                  ; 31F6 _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 31F9 _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 31FC _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 31FF _ 80. 7D, FC, 09
        jle     ?_177                                   ; 3203 _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 3205 _ 0F B6. 45, FC
        add     eax, 55                                 ; 3209 _ 83. C0, 37
        jmp     ?_178                                   ; 320C _ EB, 07

?_177:  movzx   eax, byte [ebp-4H]                      ; 320E _ 0F B6. 45, FC
        add     eax, 48                                 ; 3212 _ 83. C0, 30
?_178:  leave                                           ; 3215 _ C9
        ret                                             ; 3216 _ C3
; _charToHexVal End of function

_charToHexStr:; Function begin
        push    ebp                                     ; 3217 _ 55
        mov     ebp, esp                                ; 3218 _ 89. E5
        sub     esp, 24                                 ; 321A _ 83. EC, 18
        mov     eax, dword [ebp+8H]                     ; 321D _ 8B. 45, 08
        mov     byte [ebp-14H], al                      ; 3220 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 3223 _ C7. 45, FC, 00000000
        movzx   eax, byte [ebp-14H]                     ; 322A _ 0F B6. 45, EC
        and     eax, 0FH                                ; 322E _ 83. E0, 0F
        mov     byte [ebp-5H], al                       ; 3231 _ 88. 45, FB
        movsx   eax, byte [ebp-5H]                      ; 3234 _ 0F BE. 45, FB
        mov     dword [esp], eax                        ; 3238 _ 89. 04 24
        call    _charToHexVal                           ; 323B _ E8, FFFFFFB3
        mov     byte [?_355], al                        ; 3240 _ A2, 00000113(d)
        movzx   eax, byte [ebp-14H]                     ; 3245 _ 0F B6. 45, EC
        shr     al, 4                                   ; 3249 _ C0. E8, 04
        mov     byte [ebp-14H], al                      ; 324C _ 88. 45, EC
        movzx   eax, byte [ebp-14H]                     ; 324F _ 0F B6. 45, EC
        movsx   eax, al                                 ; 3253 _ 0F BE. C0
        mov     dword [esp], eax                        ; 3256 _ 89. 04 24
        call    _charToHexVal                           ; 3259 _ E8, FFFFFF95
        mov     byte [?_354], al                        ; 325E _ A2, 00000112(d)
        mov     eax, _keyval                            ; 3263 _ B8, 00000110(d)
        leave                                           ; 3268 _ C9
        ret                                             ; 3269 _ C3
; _charToHexStr End of function

_intToHexStr:; Function begin
        push    ebp                                     ; 326A _ 55
        mov     ebp, esp                                ; 326B _ 89. E5
        sub     esp, 16                                 ; 326D _ 83. EC, 10
        mov     byte [_str.2722], 48                    ; 3270 _ C6. 05, 00000394(d), 30
        mov     byte [?_384], 88                        ; 3277 _ C6. 05, 00000395(d), 58
        mov     byte [?_385], 0                         ; 327E _ C6. 05, 0000039E(d), 00
        mov     dword [ebp-4H], 2                       ; 3285 _ C7. 45, FC, 00000002
        jmp     ?_180                                   ; 328C _ EB, 0F

?_179:  mov     eax, dword [ebp-4H]                     ; 328E _ 8B. 45, FC
        add     eax, _str.2722                          ; 3291 _ 05, 00000394(d)
        mov     byte [eax], 48                          ; 3296 _ C6. 00, 30
        add     dword [ebp-4H], 1                       ; 3299 _ 83. 45, FC, 01
?_180:  cmp     dword [ebp-4H], 9                       ; 329D _ 83. 7D, FC, 09
        jle     ?_179                                   ; 32A1 _ 7E, EB
        mov     dword [ebp-8H], 9                       ; 32A3 _ C7. 45, F8, 00000009
        jmp     ?_184                                   ; 32AA _ EB, 42

?_181:  mov     eax, dword [ebp+8H]                     ; 32AC _ 8B. 45, 08
        and     eax, 0FH                                ; 32AF _ 83. E0, 0F
        mov     dword [ebp-0CH], eax                    ; 32B2 _ 89. 45, F4
        mov     eax, dword [ebp+8H]                     ; 32B5 _ 8B. 45, 08
        shr     eax, 4                                  ; 32B8 _ C1. E8, 04
        mov     dword [ebp+8H], eax                     ; 32BB _ 89. 45, 08
        cmp     dword [ebp-0CH], 9                      ; 32BE _ 83. 7D, F4, 09
        jle     ?_182                                   ; 32C2 _ 7E, 14
        mov     eax, dword [ebp-0CH]                    ; 32C4 _ 8B. 45, F4
        add     eax, 55                                 ; 32C7 _ 83. C0, 37
        mov     edx, eax                                ; 32CA _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 32CC _ 8B. 45, F8
        add     eax, _str.2722                          ; 32CF _ 05, 00000394(d)
        mov     byte [eax], dl                          ; 32D4 _ 88. 10
        jmp     ?_183                                   ; 32D6 _ EB, 12

?_182:  mov     eax, dword [ebp-0CH]                    ; 32D8 _ 8B. 45, F4
        add     eax, 48                                 ; 32DB _ 83. C0, 30
        mov     edx, eax                                ; 32DE _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 32E0 _ 8B. 45, F8
        add     eax, _str.2722                          ; 32E3 _ 05, 00000394(d)
        mov     byte [eax], dl                          ; 32E8 _ 88. 10
?_183:  sub     dword [ebp-8H], 1                       ; 32EA _ 83. 6D, F8, 01
?_184:  cmp     dword [ebp-8H], 1                       ; 32EE _ 83. 7D, F8, 01
        jle     ?_185                                   ; 32F2 _ 7E, 06
        cmp     dword [ebp+8H], 0                       ; 32F4 _ 83. 7D, 08, 00
        jnz     ?_181                                   ; 32F8 _ 75, B2
?_185:  mov     eax, _str.2722                          ; 32FA _ B8, 00000394(d)
        leave                                           ; 32FF _ C9
        ret                                             ; 3300 _ C3
; _intToHexStr End of function

_wait_KBC_sendready:; Function begin
        push    ebp                                     ; 3301 _ 55
        mov     ebp, esp                                ; 3302 _ 89. E5
        sub     esp, 24                                 ; 3304 _ 83. EC, 18
?_186:  mov     dword [esp], 100                        ; 3307 _ C7. 04 24, 00000064
        call    _io_in8                                 ; 330E _ E8, 00000000(rel)
        and     eax, 02H                                ; 3313 _ 83. E0, 02
        test    eax, eax                                ; 3316 _ 85. C0
        jz      ?_187                                   ; 3318 _ 74, 02
        jmp     ?_186                                   ; 331A _ EB, EB
; _wait_KBC_sendready End of function

?_187:  ; Local function
        nop                                             ; 331C _ 90
        nop                                             ; 331D _ 90
        leave                                           ; 331E _ C9
        ret                                             ; 331F _ C3

_init_keyboard:; Function begin
        push    ebp                                     ; 3320 _ 55
        mov     ebp, esp                                ; 3321 _ 89. E5
        sub     esp, 24                                 ; 3323 _ 83. EC, 18
        call    _wait_KBC_sendready                     ; 3326 _ E8, FFFFFFD6
        mov     dword [esp+4H], 96                      ; 332B _ C7. 44 24, 04, 00000060
        mov     dword [esp], 100                        ; 3333 _ C7. 04 24, 00000064
        call    _io_out8                                ; 333A _ E8, 00000000(rel)
        call    _wait_KBC_sendready                     ; 333F _ E8, FFFFFFBD
        mov     dword [esp+4H], 71                      ; 3344 _ C7. 44 24, 04, 00000047
        mov     dword [esp], 96                         ; 334C _ C7. 04 24, 00000060
        call    _io_out8                                ; 3353 _ E8, 00000000(rel)
        nop                                             ; 3358 _ 90
        leave                                           ; 3359 _ C9
        ret                                             ; 335A _ C3
; _init_keyboard End of function

_enable_mouse:; Function begin
        push    ebp                                     ; 335B _ 55
        mov     ebp, esp                                ; 335C _ 89. E5
        sub     esp, 24                                 ; 335E _ 83. EC, 18
        call    _wait_KBC_sendready                     ; 3361 _ E8, FFFFFF9B
        mov     dword [esp+4H], 212                     ; 3366 _ C7. 44 24, 04, 000000D4
        mov     dword [esp], 100                        ; 336E _ C7. 04 24, 00000064
        call    _io_out8                                ; 3375 _ E8, 00000000(rel)
        call    _wait_KBC_sendready                     ; 337A _ E8, FFFFFF82
        mov     dword [esp+4H], 244                     ; 337F _ C7. 44 24, 04, 000000F4
        mov     dword [esp], 96                         ; 3387 _ C7. 04 24, 00000060
        call    _io_out8                                ; 338E _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 3393 _ 8B. 45, 08
        mov     byte [eax+3H], 0                        ; 3396 _ C6. 40, 03, 00
        nop                                             ; 339A _ 90
        leave                                           ; 339B _ C9
        ret                                             ; 339C _ C3
; _enable_mouse End of function

_intHandlerForMouse:; Function begin
        push    ebp                                     ; 339D _ 55
        mov     ebp, esp                                ; 339E _ 89. E5
        sub     esp, 40                                 ; 33A0 _ 83. EC, 28
        mov     dword [esp+4H], 32                      ; 33A3 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 160                        ; 33AB _ C7. 04 24, 000000A0
        call    _io_out8                                ; 33B2 _ E8, 00000000(rel)
        mov     dword [esp+4H], 32                      ; 33B7 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 33BF _ C7. 04 24, 00000020
        call    _io_out8                                ; 33C6 _ E8, 00000000(rel)
        mov     dword [esp], 96                         ; 33CB _ C7. 04 24, 00000060
        call    _io_in8                                 ; 33D2 _ E8, 00000000(rel)
        mov     byte [ebp-9H], al                       ; 33D7 _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 33DA _ 0F B6. 45, F7
        mov     dword [esp+4H], eax                     ; 33DE _ 89. 44 24, 04
        mov     dword [esp], _mouseinfo                 ; 33E2 _ C7. 04 24, 00000034(d)
        call    _fifo8_put                              ; 33E9 _ E8, 00000000(rel)
        nop                                             ; 33EE _ 90
        leave                                           ; 33EF _ C9
        ret                                             ; 33F0 _ C3
; _intHandlerForMouse End of function

_mouse_decode:; Function begin
        push    ebp                                     ; 33F1 _ 55
        mov     ebp, esp                                ; 33F2 _ 89. E5
        sub     esp, 4                                  ; 33F4 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 33F7 _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 33FA _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 33FD _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 3400 _ 0F B6. 40, 03
        test    al, al                                  ; 3404 _ 84. C0
        jnz     ?_189                                   ; 3406 _ 75, 17
        cmp     byte [ebp-4H], -6                       ; 3408 _ 80. 7D, FC, FA
        jnz     ?_188                                   ; 340C _ 75, 07
        mov     eax, dword [ebp+8H]                     ; 340E _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 3411 _ C6. 40, 03, 01
?_188:  mov     eax, 0                                  ; 3415 _ B8, 00000000
        jmp     ?_196                                   ; 341A _ E9, 0000010F

?_189:  mov     eax, dword [ebp+8H]                     ; 341F _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 3422 _ 0F B6. 40, 03
        cmp     al, 1                                   ; 3426 _ 3C, 01
        jnz     ?_191                                   ; 3428 _ 75, 28
        movzx   eax, byte [ebp-4H]                      ; 342A _ 0F B6. 45, FC
        and     eax, 0C8H                               ; 342E _ 25, 000000C8
        cmp     eax, 8                                  ; 3433 _ 83. F8, 08
        jnz     ?_190                                   ; 3436 _ 75, 10
        mov     edx, dword [ebp+8H]                     ; 3438 _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 343B _ 0F B6. 45, FC
        mov     byte [edx], al                          ; 343F _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 3441 _ 8B. 45, 08
        mov     byte [eax+3H], 2                        ; 3444 _ C6. 40, 03, 02
?_190:  mov     eax, 0                                  ; 3448 _ B8, 00000000
        jmp     ?_196                                   ; 344D _ E9, 000000DC

?_191:  mov     eax, dword [ebp+8H]                     ; 3452 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 3455 _ 0F B6. 40, 03
        cmp     al, 2                                   ; 3459 _ 3C, 02
        jnz     ?_192                                   ; 345B _ 75, 1B
        mov     edx, dword [ebp+8H]                     ; 345D _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 3460 _ 0F B6. 45, FC
        mov     byte [edx+1H], al                       ; 3464 _ 88. 42, 01
        mov     eax, dword [ebp+8H]                     ; 3467 _ 8B. 45, 08
        mov     byte [eax+3H], 3                        ; 346A _ C6. 40, 03, 03
        mov     eax, 0                                  ; 346E _ B8, 00000000
        jmp     ?_196                                   ; 3473 _ E9, 000000B6

?_192:  mov     eax, dword [ebp+8H]                     ; 3478 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 347B _ 0F B6. 40, 03
        cmp     al, 3                                   ; 347F _ 3C, 03
        jne     ?_195                                   ; 3481 _ 0F 85, 000000A2
        mov     edx, dword [ebp+8H]                     ; 3487 _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 348A _ 0F B6. 45, FC
        mov     byte [edx+2H], al                       ; 348E _ 88. 42, 02
        mov     eax, dword [ebp+8H]                     ; 3491 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 3494 _ C6. 40, 03, 01
        mov     eax, dword [ebp+8H]                     ; 3498 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 349B _ 0F B6. 00
        movzx   eax, al                                 ; 349E _ 0F B6. C0
        and     eax, 07H                                ; 34A1 _ 83. E0, 07
        mov     edx, eax                                ; 34A4 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 34A6 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 34A9 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 34AC _ 8B. 45, 08
        movzx   eax, byte [eax+1H]                      ; 34AF _ 0F B6. 40, 01
        movzx   eax, al                                 ; 34B3 _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 34B6 _ 8B. 55, 08
        mov     dword [edx+4H], eax                     ; 34B9 _ 89. 42, 04
        mov     eax, dword [ebp+8H]                     ; 34BC _ 8B. 45, 08
        movzx   eax, byte [eax+2H]                      ; 34BF _ 0F B6. 40, 02
        movzx   eax, al                                 ; 34C3 _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 34C6 _ 8B. 55, 08
        mov     dword [edx+8H], eax                     ; 34C9 _ 89. 42, 08
        mov     eax, dword [ebp+8H]                     ; 34CC _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 34CF _ 0F B6. 00
        movzx   eax, al                                 ; 34D2 _ 0F B6. C0
        and     eax, 10H                                ; 34D5 _ 83. E0, 10
        test    eax, eax                                ; 34D8 _ 85. C0
        jz      ?_193                                   ; 34DA _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 34DC _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 34DF _ 8B. 40, 04
        or      eax, 0FFFFFF00H                         ; 34E2 _ 0D, FFFFFF00
        mov     edx, eax                                ; 34E7 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 34E9 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 34EC _ 89. 50, 04
?_193:  mov     eax, dword [ebp+8H]                     ; 34EF _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 34F2 _ 0F B6. 00
        movzx   eax, al                                 ; 34F5 _ 0F B6. C0
        and     eax, 20H                                ; 34F8 _ 83. E0, 20
        test    eax, eax                                ; 34FB _ 85. C0
        jz      ?_194                                   ; 34FD _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 34FF _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3502 _ 8B. 40, 08
        or      eax, 0FFFFFF00H                         ; 3505 _ 0D, FFFFFF00
        mov     edx, eax                                ; 350A _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 350C _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 350F _ 89. 50, 08
?_194:  mov     eax, dword [ebp+8H]                     ; 3512 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3515 _ 8B. 40, 08
        neg     eax                                     ; 3518 _ F7. D8
        mov     edx, eax                                ; 351A _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 351C _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 351F _ 89. 50, 08
        mov     eax, 1                                  ; 3522 _ B8, 00000001
        jmp     ?_196                                   ; 3527 _ EB, 05

?_195:  mov     eax, 4294967295                         ; 3529 _ B8, FFFFFFFF
?_196:  leave                                           ; 352E _ C9
        ret                                             ; 352F _ C3
; _mouse_decode End of function

_showMemoryInfo:; Function begin
        push    ebp                                     ; 3530 _ 55
        mov     ebp, esp                                ; 3531 _ 89. E5
        sub     esp, 72                                 ; 3533 _ 83. EC, 48
        mov     dword [ebp-0CH], 0                      ; 3536 _ C7. 45, F4, 00000000
        mov     dword [ebp-10H], 0                      ; 353D _ C7. 45, F0, 00000000
        mov     dword [ebp-14H], 104                    ; 3544 _ C7. 45, EC, 00000068
        mov     dword [ebp-18H], 80                     ; 354B _ C7. 45, E8, 00000050
        mov     edx, dword [_ysize]                     ; 3552 _ 8B. 15, 00000140(d)
        mov     eax, dword [ebp+0CH]                    ; 3558 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 355B _ 8B. 00
        mov     dword [esp+8H], edx                     ; 355D _ 89. 54 24, 08
        mov     edx, dword [ebp+1CH]                    ; 3561 _ 8B. 55, 1C
        mov     dword [esp+4H], edx                     ; 3564 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3568 _ 89. 04 24
        call    _init_screen8                           ; 356B _ E8, FFFFEF78
        mov     eax, dword [ebp+20H]                    ; 3570 _ 8B. 45, 20
        movsx   eax, al                                 ; 3573 _ 0F BE. C0
        mov     dword [esp+14H], ?_371                  ; 3576 _ C7. 44 24, 14, 00000059(d)
        mov     dword [esp+10H], eax                    ; 357E _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 3582 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 3585 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 3589 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 358C _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 3590 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 3593 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3597 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 359A _ 89. 04 24
        call    _showString                             ; 359D _ E8, FFFFF356
        mov     eax, dword [ebp+18H]                    ; 35A2 _ 8B. 45, 18
        mov     dword [esp], eax                        ; 35A5 _ 89. 04 24
        call    _intToHexStr                            ; 35A8 _ E8, FFFFFCBD
        mov     dword [ebp-1CH], eax                    ; 35AD _ 89. 45, E4
        mov     eax, dword [ebp+20H]                    ; 35B0 _ 8B. 45, 20
        movsx   eax, al                                 ; 35B3 _ 0F BE. C0
        mov     edx, dword [ebp-1CH]                    ; 35B6 _ 8B. 55, E4
        mov     dword [esp+14H], edx                    ; 35B9 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 35BD _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 35C1 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 35C4 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 35C8 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 35CB _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 35CF _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 35D2 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 35D6 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 35D9 _ 89. 04 24
        call    _showString                             ; 35DC _ E8, FFFFF317
        add     dword [ebp-10H], 16                     ; 35E1 _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 35E5 _ 8B. 45, 20
        movsx   eax, al                                 ; 35E8 _ 0F BE. C0
        mov     dword [esp+14H], ?_372                  ; 35EB _ C7. 44 24, 14, 00000063(d)
        mov     dword [esp+10H], eax                    ; 35F3 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 35F7 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 35FA _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 35FE _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 3601 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 3605 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 3608 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 360C _ 8B. 45, 08
        mov     dword [esp], eax                        ; 360F _ 89. 04 24
        call    _showString                             ; 3612 _ E8, FFFFF2E1
        mov     eax, dword [ebp+10H]                    ; 3617 _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 361A _ 8B. 00
        mov     dword [esp], eax                        ; 361C _ 89. 04 24
        call    _intToHexStr                            ; 361F _ E8, FFFFFC46
        mov     dword [ebp-20H], eax                    ; 3624 _ 89. 45, E0
        mov     eax, dword [ebp+20H]                    ; 3627 _ 8B. 45, 20
        movsx   eax, al                                 ; 362A _ 0F BE. C0
        mov     edx, dword [ebp-20H]                    ; 362D _ 8B. 55, E0
        mov     dword [esp+14H], edx                    ; 3630 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 3634 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 3638 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 363B _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 363F _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 3642 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 3646 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 3649 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 364D _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3650 _ 89. 04 24
        call    _showString                             ; 3653 _ E8, FFFFF2A0
        add     dword [ebp-10H], 16                     ; 3658 _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 365C _ 8B. 45, 20
        movsx   eax, al                                 ; 365F _ 0F BE. C0
        mov     dword [esp+14H], ?_373                  ; 3662 _ C7. 44 24, 14, 0000006F(d)
        mov     dword [esp+10H], eax                    ; 366A _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 366E _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 3671 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 3675 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 3678 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 367C _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 367F _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3683 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3686 _ 89. 04 24
        call    _showString                             ; 3689 _ E8, FFFFF26A
        mov     eax, dword [ebp+10H]                    ; 368E _ 8B. 45, 10
        mov     eax, dword [eax+4H]                     ; 3691 _ 8B. 40, 04
        mov     dword [esp], eax                        ; 3694 _ 89. 04 24
        call    _intToHexStr                            ; 3697 _ E8, FFFFFBCE
        mov     dword [ebp-24H], eax                    ; 369C _ 89. 45, DC
        mov     eax, dword [ebp+20H]                    ; 369F _ 8B. 45, 20
        movsx   eax, al                                 ; 36A2 _ 0F BE. C0
        mov     edx, dword [ebp-24H]                    ; 36A5 _ 8B. 55, DC
        mov     dword [esp+14H], edx                    ; 36A8 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 36AC _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 36B0 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 36B3 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 36B7 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 36BA _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 36BE _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 36C1 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 36C5 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 36C8 _ 89. 04 24
        call    _showString                             ; 36CB _ E8, FFFFF228
        add     dword [ebp-10H], 16                     ; 36D0 _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 36D4 _ 8B. 45, 20
        movsx   eax, al                                 ; 36D7 _ 0F BE. C0
        mov     dword [esp+14H], ?_374                  ; 36DA _ C7. 44 24, 14, 0000007B(d)
        mov     dword [esp+10H], eax                    ; 36E2 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 36E6 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 36E9 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 36ED _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 36F0 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 36F4 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 36F7 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 36FB _ 8B. 45, 08
        mov     dword [esp], eax                        ; 36FE _ 89. 04 24
        call    _showString                             ; 3701 _ E8, FFFFF1F2
        mov     eax, dword [ebp+10H]                    ; 3706 _ 8B. 45, 10
        mov     eax, dword [eax+8H]                     ; 3709 _ 8B. 40, 08
        mov     dword [esp], eax                        ; 370C _ 89. 04 24
        call    _intToHexStr                            ; 370F _ E8, FFFFFB56
        mov     dword [ebp-28H], eax                    ; 3714 _ 89. 45, D8
        mov     eax, dword [ebp+20H]                    ; 3717 _ 8B. 45, 20
        movsx   eax, al                                 ; 371A _ 0F BE. C0
        mov     edx, dword [ebp-28H]                    ; 371D _ 8B. 55, D8
        mov     dword [esp+14H], edx                    ; 3720 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 3724 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 3728 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 372B _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 372F _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 3732 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 3736 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 3739 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 373D _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3740 _ 89. 04 24
        call    _showString                             ; 3743 _ E8, FFFFF1B0
        nop                                             ; 3748 _ 90
        leave                                           ; 3749 _ C9
        ret                                             ; 374A _ C3
; _showMemoryInfo End of function

_message_box:; Function begin
        push    ebp                                     ; 374B _ 55
        mov     ebp, esp                                ; 374C _ 89. E5
        sub     esp, 56                                 ; 374E _ 83. EC, 38
        mov     eax, dword [ebp+8H]                     ; 3751 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3754 _ 89. 04 24
        call    _sheet_alloc                            ; 3757 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 375C _ 89. 45, F4
        mov     eax, dword [_memman]                    ; 375F _ A1, 00000000(d)
        mov     dword [esp+4H], 10880                   ; 3764 _ C7. 44 24, 04, 00002A80
        mov     dword [esp], eax                        ; 376C _ 89. 04 24
        call    _memman_alloc_4k                        ; 376F _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 3774 _ 89. 45, F0
        mov     dword [esp+10H], -1                     ; 3777 _ C7. 44 24, 10, FFFFFFFF
        mov     dword [esp+0CH], 68                     ; 377F _ C7. 44 24, 0C, 00000044
        mov     dword [esp+8H], 160                     ; 3787 _ C7. 44 24, 08, 000000A0
        mov     eax, dword [ebp-10H]                    ; 378F _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 3792 _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 3796 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 3799 _ 89. 04 24
        call    _sheet_setbuf                           ; 379C _ E8, 00000000(rel)
        mov     dword [esp+0CH], 1                      ; 37A1 _ C7. 44 24, 0C, 00000001
        mov     eax, dword [ebp+0CH]                    ; 37A9 _ 8B. 45, 0C
        mov     dword [esp+8H], eax                     ; 37AC _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 37B0 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 37B3 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 37B7 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 37BA _ 89. 04 24
        call    _make_window8                           ; 37BD _ E8, 00000074
        mov     dword [esp+14H], 7                      ; 37C2 _ C7. 44 24, 14, 00000007
        mov     dword [esp+10H], 16                     ; 37CA _ C7. 44 24, 10, 00000010
        mov     dword [esp+0CH], 144                    ; 37D2 _ C7. 44 24, 0C, 00000090
        mov     dword [esp+8H], 28                      ; 37DA _ C7. 44 24, 08, 0000001C
        mov     dword [esp+4H], 8                       ; 37E2 _ C7. 44 24, 04, 00000008
        mov     eax, dword [ebp-0CH]                    ; 37EA _ 8B. 45, F4
        mov     dword [esp], eax                        ; 37ED _ 89. 04 24
        call    _make_textbox8                          ; 37F0 _ E8, 00000444
        mov     dword [esp+0CH], 172                    ; 37F5 _ C7. 44 24, 0C, 000000AC
        mov     dword [esp+8H], 260                     ; 37FD _ C7. 44 24, 08, 00000104
        mov     eax, dword [ebp-0CH]                    ; 3805 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 3808 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 380C _ 8B. 45, 08
        mov     dword [esp], eax                        ; 380F _ 89. 04 24
        call    _sheet_slide                            ; 3812 _ E8, 00000000(rel)
        mov     dword [esp+8H], 2                       ; 3817 _ C7. 44 24, 08, 00000002
        mov     eax, dword [ebp-0CH]                    ; 381F _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 3822 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3826 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3829 _ 89. 04 24
        call    _sheet_updown                           ; 382C _ E8, 00000000(rel)
        mov     eax, dword [ebp-0CH]                    ; 3831 _ 8B. 45, F4
        leave                                           ; 3834 _ C9
        ret                                             ; 3835 _ C3
; _message_box End of function

_make_window8:; Function begin
        push    ebp                                     ; 3836 _ 55
        mov     ebp, esp                                ; 3837 _ 89. E5
        push    ebx                                     ; 3839 _ 53
        sub     esp, 68                                 ; 383A _ 83. EC, 44
        mov     eax, dword [ebp+14H]                    ; 383D _ 8B. 45, 14
        mov     byte [ebp-1CH], al                      ; 3840 _ 88. 45, E4
        mov     eax, dword [ebp+0CH]                    ; 3843 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 3846 _ 8B. 40, 04
        mov     dword [ebp-0CH], eax                    ; 3849 _ 89. 45, F4
        mov     eax, dword [ebp+0CH]                    ; 384C _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 384F _ 8B. 40, 08
        mov     dword [ebp-10H], eax                    ; 3852 _ 89. 45, F0
        mov     eax, dword [ebp-0CH]                    ; 3855 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 3858 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 385B _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 385E _ 8B. 00
        mov     dword [esp+18H], 0                      ; 3860 _ C7. 44 24, 18, 00000000
        mov     dword [esp+14H], edx                    ; 3868 _ 89. 54 24, 14
        mov     dword [esp+10H], 0                      ; 386C _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 3874 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 387C _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-0CH]                    ; 3884 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 3887 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 388B _ 89. 04 24
        call    _boxfill8                               ; 388E _ E8, FFFFF5EA
        mov     eax, dword [ebp-0CH]                    ; 3893 _ 8B. 45, F4
        lea     edx, [eax-2H]                           ; 3896 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 3899 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 389C _ 8B. 00
        mov     dword [esp+18H], 1                      ; 389E _ C7. 44 24, 18, 00000001
        mov     dword [esp+14H], edx                    ; 38A6 _ 89. 54 24, 14
        mov     dword [esp+10H], 1                      ; 38AA _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], 1                      ; 38B2 _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 7                       ; 38BA _ C7. 44 24, 08, 00000007
        mov     edx, dword [ebp-0CH]                    ; 38C2 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 38C5 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 38C9 _ 89. 04 24
        call    _boxfill8                               ; 38CC _ E8, FFFFF5AC
        mov     eax, dword [ebp-10H]                    ; 38D1 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 38D4 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 38D7 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 38DA _ 8B. 00
        mov     dword [esp+18H], edx                    ; 38DC _ 89. 54 24, 18
        mov     dword [esp+14H], 0                      ; 38E0 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], 0                      ; 38E8 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 38F0 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 38F8 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-0CH]                    ; 3900 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 3903 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3907 _ 89. 04 24
        call    _boxfill8                               ; 390A _ E8, FFFFF56E
        mov     eax, dword [ebp-10H]                    ; 390F _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 3912 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 3915 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 3918 _ 8B. 00
        mov     dword [esp+18H], edx                    ; 391A _ 89. 54 24, 18
        mov     dword [esp+14H], 1                      ; 391E _ C7. 44 24, 14, 00000001
        mov     dword [esp+10H], 1                      ; 3926 _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], 1                      ; 392E _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 7                       ; 3936 _ C7. 44 24, 08, 00000007
        mov     edx, dword [ebp-0CH]                    ; 393E _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 3941 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3945 _ 89. 04 24
        call    _boxfill8                               ; 3948 _ E8, FFFFF530
        mov     eax, dword [ebp-10H]                    ; 394D _ 8B. 45, F0
        lea     ebx, [eax-2H]                           ; 3950 _ 8D. 58, FE
        mov     eax, dword [ebp-0CH]                    ; 3953 _ 8B. 45, F4
        lea     ecx, [eax-2H]                           ; 3956 _ 8D. 48, FE
        mov     eax, dword [ebp-0CH]                    ; 3959 _ 8B. 45, F4
        lea     edx, [eax-2H]                           ; 395C _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 395F _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 3962 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 3964 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 3968 _ 89. 4C 24, 14
        mov     dword [esp+10H], 1                      ; 396C _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], edx                    ; 3974 _ 89. 54 24, 0C
        mov     dword [esp+8H], 15                      ; 3978 _ C7. 44 24, 08, 0000000F
        mov     edx, dword [ebp-0CH]                    ; 3980 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 3983 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3987 _ 89. 04 24
        call    _boxfill8                               ; 398A _ E8, FFFFF4EE
        mov     eax, dword [ebp-10H]                    ; 398F _ 8B. 45, F0
        lea     ebx, [eax-1H]                           ; 3992 _ 8D. 58, FF
        mov     eax, dword [ebp-0CH]                    ; 3995 _ 8B. 45, F4
        lea     ecx, [eax-1H]                           ; 3998 _ 8D. 48, FF
        mov     eax, dword [ebp-0CH]                    ; 399B _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 399E _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 39A1 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 39A4 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 39A6 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 39AA _ 89. 4C 24, 14
        mov     dword [esp+10H], 0                      ; 39AE _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], edx                    ; 39B6 _ 89. 54 24, 0C
        mov     dword [esp+8H], 0                       ; 39BA _ C7. 44 24, 08, 00000000
        mov     edx, dword [ebp-0CH]                    ; 39C2 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 39C5 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 39C9 _ 89. 04 24
        call    _boxfill8                               ; 39CC _ E8, FFFFF4AC
        mov     eax, dword [ebp-10H]                    ; 39D1 _ 8B. 45, F0
        lea     ecx, [eax-3H]                           ; 39D4 _ 8D. 48, FD
        mov     eax, dword [ebp-0CH]                    ; 39D7 _ 8B. 45, F4
        lea     edx, [eax-3H]                           ; 39DA _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 39DD _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 39E0 _ 8B. 00
        mov     dword [esp+18H], ecx                    ; 39E2 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 39E6 _ 89. 54 24, 14
        mov     dword [esp+10H], 2                      ; 39EA _ C7. 44 24, 10, 00000002
        mov     dword [esp+0CH], 2                      ; 39F2 _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 8                       ; 39FA _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-0CH]                    ; 3A02 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 3A05 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3A09 _ 89. 04 24
        call    _boxfill8                               ; 3A0C _ E8, FFFFF46C
        mov     eax, dword [ebp-0CH]                    ; 3A11 _ 8B. 45, F4
        lea     edx, [eax-4H]                           ; 3A14 _ 8D. 50, FC
        mov     eax, dword [ebp+0CH]                    ; 3A17 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 3A1A _ 8B. 00
        mov     dword [esp+18H], 20                     ; 3A1C _ C7. 44 24, 18, 00000014
        mov     dword [esp+14H], edx                    ; 3A24 _ 89. 54 24, 14
        mov     dword [esp+10H], 3                      ; 3A28 _ C7. 44 24, 10, 00000003
        mov     dword [esp+0CH], 3                      ; 3A30 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 12                      ; 3A38 _ C7. 44 24, 08, 0000000C
        mov     edx, dword [ebp-0CH]                    ; 3A40 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 3A43 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3A47 _ 89. 04 24
        call    _boxfill8                               ; 3A4A _ E8, FFFFF42E
        mov     eax, dword [ebp-10H]                    ; 3A4F _ 8B. 45, F0
        lea     ebx, [eax-2H]                           ; 3A52 _ 8D. 58, FE
        mov     eax, dword [ebp-0CH]                    ; 3A55 _ 8B. 45, F4
        lea     ecx, [eax-2H]                           ; 3A58 _ 8D. 48, FE
        mov     eax, dword [ebp-10H]                    ; 3A5B _ 8B. 45, F0
        lea     edx, [eax-2H]                           ; 3A5E _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 3A61 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 3A64 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 3A66 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 3A6A _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 3A6E _ 89. 54 24, 10
        mov     dword [esp+0CH], 1                      ; 3A72 _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 15                      ; 3A7A _ C7. 44 24, 08, 0000000F
        mov     edx, dword [ebp-0CH]                    ; 3A82 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 3A85 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3A89 _ 89. 04 24
        call    _boxfill8                               ; 3A8C _ E8, FFFFF3EC
        mov     eax, dword [ebp-10H]                    ; 3A91 _ 8B. 45, F0
        lea     ebx, [eax-1H]                           ; 3A94 _ 8D. 58, FF
        mov     eax, dword [ebp-0CH]                    ; 3A97 _ 8B. 45, F4
        lea     ecx, [eax-1H]                           ; 3A9A _ 8D. 48, FF
        mov     eax, dword [ebp-10H]                    ; 3A9D _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 3AA0 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 3AA3 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 3AA6 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 3AA8 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 3AAC _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 3AB0 _ 89. 54 24, 10
        mov     dword [esp+0CH], 0                      ; 3AB4 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 3ABC _ C7. 44 24, 08, 00000000
        mov     edx, dword [ebp-0CH]                    ; 3AC4 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 3AC7 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3ACB _ 89. 04 24
        call    _boxfill8                               ; 3ACE _ E8, FFFFF3AA
        movsx   eax, byte [ebp-1CH]                     ; 3AD3 _ 0F BE. 45, E4
        mov     dword [esp+0CH], eax                    ; 3AD7 _ 89. 44 24, 0C
        mov     eax, dword [ebp+10H]                    ; 3ADB _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 3ADE _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 3AE2 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 3AE5 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3AE9 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3AEC _ 89. 04 24
        call    _make_wtitle8                           ; 3AEF _ E8, 00000007
        nop                                             ; 3AF4 _ 90
        add     esp, 68                                 ; 3AF5 _ 83. C4, 44
        pop     ebx                                     ; 3AF8 _ 5B
        pop     ebp                                     ; 3AF9 _ 5D
        ret                                             ; 3AFA _ C3
; _make_window8 End of function

_make_wtitle8:; Function begin
        push    ebp                                     ; 3AFB _ 55
        mov     ebp, esp                                ; 3AFC _ 89. E5
        push    ebx                                     ; 3AFE _ 53
        sub     esp, 68                                 ; 3AFF _ 83. EC, 44
        mov     eax, dword [ebp+14H]                    ; 3B02 _ 8B. 45, 14
        mov     byte [ebp-1CH], al                      ; 3B05 _ 88. 45, E4
        cmp     byte [ebp-1CH], 0                       ; 3B08 _ 80. 7D, E4, 00
        jz      ?_197                                   ; 3B0C _ 74, 0A
        mov     byte [ebp-12H], 7                       ; 3B0E _ C6. 45, EE, 07
        mov     byte [ebp-13H], 12                      ; 3B12 _ C6. 45, ED, 0C
        jmp     ?_198                                   ; 3B16 _ EB, 08

?_197:  mov     byte [ebp-12H], 8                       ; 3B18 _ C6. 45, EE, 08
        mov     byte [ebp-13H], 15                      ; 3B1C _ C6. 45, ED, 0F
?_198:  mov     eax, dword [ebp+0CH]                    ; 3B20 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 3B23 _ 8B. 40, 04
        lea     ebx, [eax-4H]                           ; 3B26 _ 8D. 58, FC
        movzx   eax, byte [ebp-13H]                     ; 3B29 _ 0F B6. 45, ED
        movzx   eax, al                                 ; 3B2D _ 0F B6. C0
        mov     edx, dword [ebp+0CH]                    ; 3B30 _ 8B. 55, 0C
        mov     ecx, dword [edx+4H]                     ; 3B33 _ 8B. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 3B36 _ 8B. 55, 0C
        mov     edx, dword [edx]                        ; 3B39 _ 8B. 12
        mov     dword [esp+18H], 20                     ; 3B3B _ C7. 44 24, 18, 00000014
        mov     dword [esp+14H], ebx                    ; 3B43 _ 89. 5C 24, 14
        mov     dword [esp+10H], 3                      ; 3B47 _ C7. 44 24, 10, 00000003
        mov     dword [esp+0CH], 3                      ; 3B4F _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], eax                     ; 3B57 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 3B5B _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 3B5F _ 89. 14 24
        call    _boxfill8                               ; 3B62 _ E8, FFFFF316
        movsx   eax, byte [ebp-12H]                     ; 3B67 _ 0F BE. 45, EE
        mov     edx, dword [ebp+10H]                    ; 3B6B _ 8B. 55, 10
        mov     dword [esp+14H], edx                    ; 3B6E _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 3B72 _ 89. 44 24, 10
        mov     dword [esp+0CH], 4                      ; 3B76 _ C7. 44 24, 0C, 00000004
        mov     dword [esp+8H], 24                      ; 3B7E _ C7. 44 24, 08, 00000018
        mov     eax, dword [ebp+0CH]                    ; 3B86 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 3B89 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3B8D _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3B90 _ 89. 04 24
        call    _showString                             ; 3B93 _ E8, FFFFED60
        mov     dword [ebp-10H], 0                      ; 3B98 _ C7. 45, F0, 00000000
        jmp     ?_206                                   ; 3B9F _ E9, 00000084

?_199:  mov     dword [ebp-0CH], 0                      ; 3BA4 _ C7. 45, F4, 00000000
        jmp     ?_205                                   ; 3BAB _ EB, 71

?_200:  mov     eax, dword [ebp-10H]                    ; 3BAD _ 8B. 45, F0
        shl     eax, 4                                  ; 3BB0 _ C1. E0, 04
        mov     edx, eax                                ; 3BB3 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 3BB5 _ 8B. 45, F4
        add     eax, edx                                ; 3BB8 _ 01. D0
        add     eax, _closebtn.2793                     ; 3BBA _ 05, 00000280(d)
        movzx   eax, byte [eax]                         ; 3BBF _ 0F B6. 00
        mov     byte [ebp-11H], al                      ; 3BC2 _ 88. 45, EF
        cmp     byte [ebp-11H], 64                      ; 3BC5 _ 80. 7D, EF, 40
        jnz     ?_201                                   ; 3BC9 _ 75, 06
        mov     byte [ebp-11H], 0                       ; 3BCB _ C6. 45, EF, 00
        jmp     ?_204                                   ; 3BCF _ EB, 1C

?_201:  cmp     byte [ebp-11H], 36                      ; 3BD1 _ 80. 7D, EF, 24
        jnz     ?_202                                   ; 3BD5 _ 75, 06
        mov     byte [ebp-11H], 15                      ; 3BD7 _ C6. 45, EF, 0F
        jmp     ?_204                                   ; 3BDB _ EB, 10

?_202:  cmp     byte [ebp-11H], 81                      ; 3BDD _ 80. 7D, EF, 51
        jnz     ?_203                                   ; 3BE1 _ 75, 06
        mov     byte [ebp-11H], 8                       ; 3BE3 _ C6. 45, EF, 08
        jmp     ?_204                                   ; 3BE7 _ EB, 04

?_203:  mov     byte [ebp-11H], 7                       ; 3BE9 _ C6. 45, EF, 07
?_204:  mov     eax, dword [ebp+0CH]                    ; 3BED _ 8B. 45, 0C
        mov     ecx, dword [eax]                        ; 3BF0 _ 8B. 08
        mov     eax, dword [ebp-10H]                    ; 3BF2 _ 8B. 45, F0
        lea     edx, [eax+5H]                           ; 3BF5 _ 8D. 50, 05
        mov     eax, dword [ebp+0CH]                    ; 3BF8 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 3BFB _ 8B. 40, 04
        imul    eax, edx                                ; 3BFE _ 0F AF. C2
        mov     edx, dword [ebp+0CH]                    ; 3C01 _ 8B. 55, 0C
        mov     edx, dword [edx+4H]                     ; 3C04 _ 8B. 52, 04
        lea     ebx, [edx-15H]                          ; 3C07 _ 8D. 5A, EB
        mov     edx, dword [ebp-0CH]                    ; 3C0A _ 8B. 55, F4
        add     edx, ebx                                ; 3C0D _ 01. DA
        add     eax, edx                                ; 3C0F _ 01. D0
        lea     edx, [ecx+eax]                          ; 3C11 _ 8D. 14 01
        movzx   eax, byte [ebp-11H]                     ; 3C14 _ 0F B6. 45, EF
        mov     byte [edx], al                          ; 3C18 _ 88. 02
        add     dword [ebp-0CH], 1                      ; 3C1A _ 83. 45, F4, 01
?_205:  cmp     dword [ebp-0CH], 15                     ; 3C1E _ 83. 7D, F4, 0F
        jle     ?_200                                   ; 3C22 _ 7E, 89
        add     dword [ebp-10H], 1                      ; 3C24 _ 83. 45, F0, 01
?_206:  cmp     dword [ebp-10H], 13                     ; 3C28 _ 83. 7D, F0, 0D
        jle     ?_199                                   ; 3C2C _ 0F 8E, FFFFFF72
        nop                                             ; 3C32 _ 90
        add     esp, 68                                 ; 3C33 _ 83. C4, 44
        pop     ebx                                     ; 3C36 _ 5B
        pop     ebp                                     ; 3C37 _ 5D
        ret                                             ; 3C38 _ C3
; _make_wtitle8 End of function

_make_textbox8:; Function begin
        push    ebp                                     ; 3C39 _ 55
        mov     ebp, esp                                ; 3C3A _ 89. E5
        push    edi                                     ; 3C3C _ 57
        push    esi                                     ; 3C3D _ 56
        push    ebx                                     ; 3C3E _ 53
        sub     esp, 44                                 ; 3C3F _ 83. EC, 2C
        mov     edx, dword [ebp+0CH]                    ; 3C42 _ 8B. 55, 0C
        mov     eax, dword [ebp+14H]                    ; 3C45 _ 8B. 45, 14
        add     eax, edx                                ; 3C48 _ 01. D0
        mov     dword [ebp-10H], eax                    ; 3C4A _ 89. 45, F0
        mov     edx, dword [ebp+10H]                    ; 3C4D _ 8B. 55, 10
        mov     eax, dword [ebp+18H]                    ; 3C50 _ 8B. 45, 18
        add     eax, edx                                ; 3C53 _ 01. D0
        mov     dword [ebp-14H], eax                    ; 3C55 _ 89. 45, EC
        mov     eax, dword [ebp+10H]                    ; 3C58 _ 8B. 45, 10
        lea     edi, [eax-3H]                           ; 3C5B _ 8D. 78, FD
        mov     eax, dword [ebp-10H]                    ; 3C5E _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 3C61 _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 3C64 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 3C67 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 3C6A _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 3C6D _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 3C70 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 3C73 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 3C76 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3C79 _ 8B. 00
        mov     dword [esp+18H], edi                    ; 3C7B _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 3C7F _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 3C83 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 3C87 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 15                      ; 3C8B _ C7. 44 24, 08, 0000000F
        mov     dword [esp+4H], edx                     ; 3C93 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3C97 _ 89. 04 24
        call    _boxfill8                               ; 3C9A _ E8, FFFFF1DE
        mov     eax, dword [ebp-14H]                    ; 3C9F _ 8B. 45, EC
        lea     edi, [eax+1H]                           ; 3CA2 _ 8D. 78, 01
        mov     eax, dword [ebp+0CH]                    ; 3CA5 _ 8B. 45, 0C
        lea     esi, [eax-3H]                           ; 3CA8 _ 8D. 70, FD
        mov     eax, dword [ebp+10H]                    ; 3CAB _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 3CAE _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 3CB1 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 3CB4 _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 3CB7 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 3CBA _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 3CBD _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3CC0 _ 8B. 00
        mov     dword [esp+18H], edi                    ; 3CC2 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 3CC6 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 3CCA _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 3CCE _ 89. 4C 24, 0C
        mov     dword [esp+8H], 15                      ; 3CD2 _ C7. 44 24, 08, 0000000F
        mov     dword [esp+4H], edx                     ; 3CDA _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3CDE _ 89. 04 24
        call    _boxfill8                               ; 3CE1 _ E8, FFFFF197
        mov     eax, dword [ebp-14H]                    ; 3CE6 _ 8B. 45, EC
        lea     edi, [eax+2H]                           ; 3CE9 _ 8D. 78, 02
        mov     eax, dword [ebp-10H]                    ; 3CEC _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 3CEF _ 8D. 70, 01
        mov     eax, dword [ebp-14H]                    ; 3CF2 _ 8B. 45, EC
        lea     ebx, [eax+2H]                           ; 3CF5 _ 8D. 58, 02
        mov     eax, dword [ebp+0CH]                    ; 3CF8 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 3CFB _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 3CFE _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 3D01 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 3D04 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3D07 _ 8B. 00
        mov     dword [esp+18H], edi                    ; 3D09 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 3D0D _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 3D11 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 3D15 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 7                       ; 3D19 _ C7. 44 24, 08, 00000007
        mov     dword [esp+4H], edx                     ; 3D21 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3D25 _ 89. 04 24
        call    _boxfill8                               ; 3D28 _ E8, FFFFF150
        mov     eax, dword [ebp-14H]                    ; 3D2D _ 8B. 45, EC
        lea     edi, [eax+2H]                           ; 3D30 _ 8D. 78, 02
        mov     eax, dword [ebp-10H]                    ; 3D33 _ 8B. 45, F0
        lea     esi, [eax+2H]                           ; 3D36 _ 8D. 70, 02
        mov     eax, dword [ebp+10H]                    ; 3D39 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 3D3C _ 8D. 58, FD
        mov     eax, dword [ebp-10H]                    ; 3D3F _ 8B. 45, F0
        lea     ecx, [eax+2H]                           ; 3D42 _ 8D. 48, 02
        mov     eax, dword [ebp+8H]                     ; 3D45 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 3D48 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 3D4B _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3D4E _ 8B. 00
        mov     dword [esp+18H], edi                    ; 3D50 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 3D54 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 3D58 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 3D5C _ 89. 4C 24, 0C
        mov     dword [esp+8H], 7                       ; 3D60 _ C7. 44 24, 08, 00000007
        mov     dword [esp+4H], edx                     ; 3D68 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3D6C _ 89. 04 24
        call    _boxfill8                               ; 3D6F _ E8, FFFFF109
        mov     eax, dword [ebp+10H]                    ; 3D74 _ 8B. 45, 10
        lea     esi, [eax-2H]                           ; 3D77 _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 3D7A _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 3D7D _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 3D80 _ 8B. 45, 0C
        lea     ecx, [eax-1H]                           ; 3D83 _ 8D. 48, FF
        mov     eax, dword [ebp+8H]                     ; 3D86 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 3D89 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 3D8C _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3D8F _ 8B. 00
        mov     dword [esp+18H], esi                    ; 3D91 _ 89. 74 24, 18
        mov     esi, dword [ebp-10H]                    ; 3D95 _ 8B. 75, F0
        mov     dword [esp+14H], esi                    ; 3D98 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 3D9C _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 3DA0 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 0                       ; 3DA4 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 3DAC _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3DB0 _ 89. 04 24
        call    _boxfill8                               ; 3DB3 _ E8, FFFFF0C5
        mov     eax, dword [ebp+0CH]                    ; 3DB8 _ 8B. 45, 0C
        lea     esi, [eax-2H]                           ; 3DBB _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 3DBE _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 3DC1 _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 3DC4 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 3DC7 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 3DCA _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 3DCD _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 3DD0 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3DD3 _ 8B. 00
        mov     edi, dword [ebp-14H]                    ; 3DD5 _ 8B. 7D, EC
        mov     dword [esp+18H], edi                    ; 3DD8 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 3DDC _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 3DE0 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 3DE4 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 0                       ; 3DE8 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 3DF0 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3DF4 _ 89. 04 24
        call    _boxfill8                               ; 3DF7 _ E8, FFFFF081
        mov     eax, dword [ebp-14H]                    ; 3DFC _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 3DFF _ 8D. 70, 01
        mov     eax, dword [ebp-14H]                    ; 3E02 _ 8B. 45, EC
        lea     ebx, [eax+1H]                           ; 3E05 _ 8D. 58, 01
        mov     eax, dword [ebp+0CH]                    ; 3E08 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 3E0B _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 3E0E _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 3E11 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 3E14 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3E17 _ 8B. 00
        mov     dword [esp+18H], esi                    ; 3E19 _ 89. 74 24, 18
        mov     esi, dword [ebp-10H]                    ; 3E1D _ 8B. 75, F0
        mov     dword [esp+14H], esi                    ; 3E20 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 3E24 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 3E28 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 8                       ; 3E2C _ C7. 44 24, 08, 00000008
        mov     dword [esp+4H], edx                     ; 3E34 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3E38 _ 89. 04 24
        call    _boxfill8                               ; 3E3B _ E8, FFFFF03D
        mov     eax, dword [ebp-14H]                    ; 3E40 _ 8B. 45, EC
        lea     edi, [eax+1H]                           ; 3E43 _ 8D. 78, 01
        mov     eax, dword [ebp-10H]                    ; 3E46 _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 3E49 _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 3E4C _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 3E4F _ 8D. 58, FE
        mov     eax, dword [ebp-10H]                    ; 3E52 _ 8B. 45, F0
        lea     ecx, [eax+1H]                           ; 3E55 _ 8D. 48, 01
        mov     eax, dword [ebp+8H]                     ; 3E58 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 3E5B _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 3E5E _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3E61 _ 8B. 00
        mov     dword [esp+18H], edi                    ; 3E63 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 3E67 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 3E6B _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 3E6F _ 89. 4C 24, 0C
        mov     dword [esp+8H], 8                       ; 3E73 _ C7. 44 24, 08, 00000008
        mov     dword [esp+4H], edx                     ; 3E7B _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3E7F _ 89. 04 24
        call    _boxfill8                               ; 3E82 _ E8, FFFFEFF6
        mov     eax, dword [ebp+10H]                    ; 3E87 _ 8B. 45, 10
        lea     esi, [eax-1H]                           ; 3E8A _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 3E8D _ 8B. 45, 0C
        lea     ebx, [eax-1H]                           ; 3E90 _ 8D. 58, FF
        mov     eax, dword [ebp+1CH]                    ; 3E93 _ 8B. 45, 1C
        movzx   eax, al                                 ; 3E96 _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 3E99 _ 8B. 55, 08
        mov     ecx, dword [edx+4H]                     ; 3E9C _ 8B. 4A, 04
        mov     edx, dword [ebp+8H]                     ; 3E9F _ 8B. 55, 08
        mov     edx, dword [edx]                        ; 3EA2 _ 8B. 12
        mov     edi, dword [ebp-14H]                    ; 3EA4 _ 8B. 7D, EC
        mov     dword [esp+18H], edi                    ; 3EA7 _ 89. 7C 24, 18
        mov     edi, dword [ebp-10H]                    ; 3EAB _ 8B. 7D, F0
        mov     dword [esp+14H], edi                    ; 3EAE _ 89. 7C 24, 14
        mov     dword [esp+10H], esi                    ; 3EB2 _ 89. 74 24, 10
        mov     dword [esp+0CH], ebx                    ; 3EB6 _ 89. 5C 24, 0C
        mov     dword [esp+8H], eax                     ; 3EBA _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 3EBE _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 3EC2 _ 89. 14 24
        call    _boxfill8                               ; 3EC5 _ E8, FFFFEFB3
        nop                                             ; 3ECA _ 90
        add     esp, 44                                 ; 3ECB _ 83. C4, 2C
        pop     ebx                                     ; 3ECE _ 5B
        pop     esi                                     ; 3ECF _ 5E
        pop     edi                                     ; 3ED0 _ 5F
        pop     ebp                                     ; 3ED1 _ 5D
        ret                                             ; 3ED2 _ C3
; _make_textbox8 End of function

_file_loadfile:; Function begin
        push    ebp                                     ; 3ED3 _ 55
        mov     ebp, esp                                ; 3ED4 _ 89. E5
        sub     esp, 56                                 ; 3ED6 _ 83. EC, 38
        mov     dword [ebp-0CH], 78848                  ; 3ED9 _ C7. 45, F4, 00013400
        mov     eax, dword [_memman]                    ; 3EE0 _ A1, 00000000(d)
        mov     dword [esp+4H], 13                      ; 3EE5 _ C7. 44 24, 04, 0000000D
        mov     dword [esp], eax                        ; 3EED _ 89. 04 24
        call    _memman_alloc                           ; 3EF0 _ E8, 00000000(rel)
        mov     dword [ebp-1CH], eax                    ; 3EF5 _ 89. 45, E4
        mov     eax, dword [ebp-1CH]                    ; 3EF8 _ 8B. 45, E4
        add     eax, 12                                 ; 3EFB _ 83. C0, 0C
        mov     byte [eax], 0                           ; 3EFE _ C6. 00, 00
        jmp     ?_217                                   ; 3F01 _ E9, 00000125

?_207:  mov     dword [ebp-10H], 0                      ; 3F06 _ C7. 45, F0, 00000000
        jmp     ?_209                                   ; 3F0D _ EB, 2A

?_208:  mov     edx, dword [ebp-0CH]                    ; 3F0F _ 8B. 55, F4
        mov     eax, dword [ebp-10H]                    ; 3F12 _ 8B. 45, F0
        add     eax, edx                                ; 3F15 _ 01. D0
        movzx   eax, byte [eax]                         ; 3F17 _ 0F B6. 00
        test    al, al                                  ; 3F1A _ 84. C0
        jz      ?_210                                   ; 3F1C _ 74, 23
        mov     edx, dword [ebp-0CH]                    ; 3F1E _ 8B. 55, F4
        mov     eax, dword [ebp-10H]                    ; 3F21 _ 8B. 45, F0
        add     eax, edx                                ; 3F24 _ 01. D0
        movzx   ecx, byte [eax]                         ; 3F26 _ 0F B6. 08
        mov     edx, dword [ebp-10H]                    ; 3F29 _ 8B. 55, F0
        mov     eax, dword [ebp-1CH]                    ; 3F2C _ 8B. 45, E4
        add     eax, edx                                ; 3F2F _ 01. D0
        mov     edx, ecx                                ; 3F31 _ 89. CA
        mov     byte [eax], dl                          ; 3F33 _ 88. 10
        add     dword [ebp-10H], 1                      ; 3F35 _ 83. 45, F0, 01
?_209:  cmp     dword [ebp-10H], 7                      ; 3F39 _ 83. 7D, F0, 07
        jle     ?_208                                   ; 3F3D _ 7E, D0
        jmp     ?_211                                   ; 3F3F _ EB, 01

?_210:  nop                                             ; 3F41 _ 90
?_211:  mov     dword [ebp-14H], 0                      ; 3F42 _ C7. 45, EC, 00000000
        mov     edx, dword [ebp-10H]                    ; 3F49 _ 8B. 55, F0
        mov     eax, dword [ebp-1CH]                    ; 3F4C _ 8B. 45, E4
        add     eax, edx                                ; 3F4F _ 01. D0
        mov     byte [eax], 46                          ; 3F51 _ C6. 00, 2E
        add     dword [ebp-10H], 1                      ; 3F54 _ 83. 45, F0, 01
        mov     dword [ebp-14H], 0                      ; 3F58 _ C7. 45, EC, 00000000
        jmp     ?_213                                   ; 3F5F _ EB, 22

?_212:  mov     edx, dword [ebp-0CH]                    ; 3F61 _ 8B. 55, F4
        mov     eax, dword [ebp-14H]                    ; 3F64 _ 8B. 45, EC
        add     eax, edx                                ; 3F67 _ 01. D0
        add     eax, 8                                  ; 3F69 _ 83. C0, 08
        movzx   ecx, byte [eax]                         ; 3F6C _ 0F B6. 08
        mov     edx, dword [ebp-10H]                    ; 3F6F _ 8B. 55, F0
        mov     eax, dword [ebp-1CH]                    ; 3F72 _ 8B. 45, E4
        add     eax, edx                                ; 3F75 _ 01. D0
        mov     edx, ecx                                ; 3F77 _ 89. CA
        mov     byte [eax], dl                          ; 3F79 _ 88. 10
        add     dword [ebp-10H], 1                      ; 3F7B _ 83. 45, F0, 01
        add     dword [ebp-14H], 1                      ; 3F7F _ 83. 45, EC, 01
?_213:  cmp     dword [ebp-14H], 2                      ; 3F83 _ 83. 7D, EC, 02
        jle     ?_212                                   ; 3F87 _ 7E, D8
        mov     eax, dword [ebp-1CH]                    ; 3F89 _ 8B. 45, E4
        mov     dword [esp+4H], eax                     ; 3F8C _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3F90 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3F93 _ 89. 04 24
        call    _strcmp                                 ; 3F96 _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 3F9B _ 83. F8, 01
        jne     ?_216                                   ; 3F9E _ 0F 85, 00000083
        mov     eax, dword [ebp-0CH]                    ; 3FA4 _ 8B. 45, F4
        mov     edx, dword [eax+1CH]                    ; 3FA7 _ 8B. 50, 1C
        mov     eax, dword [_memman]                    ; 3FAA _ A1, 00000000(d)
        mov     dword [esp+4H], edx                     ; 3FAF _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3FB3 _ 89. 04 24
        call    _memman_alloc_4k                        ; 3FB6 _ E8, 00000000(rel)
        mov     edx, eax                                ; 3FBB _ 89. C2
        mov     eax, dword [ebp+0CH]                    ; 3FBD _ 8B. 45, 0C
        mov     dword [eax], edx                        ; 3FC0 _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 3FC2 _ 8B. 45, F4
        mov     eax, dword [eax+1CH]                    ; 3FC5 _ 8B. 40, 1C
        mov     edx, eax                                ; 3FC8 _ 89. C2
        mov     eax, dword [ebp+0CH]                    ; 3FCA _ 8B. 45, 0C
        mov     dword [eax+8H], edx                     ; 3FCD _ 89. 50, 08
        mov     dword [ebp-20H], 88064                  ; 3FD0 _ C7. 45, E0, 00015800
        mov     eax, dword [ebp-0CH]                    ; 3FD7 _ 8B. 45, F4
        movzx   eax, word [eax+1AH]                     ; 3FDA _ 0F B7. 40, 1A
        movzx   eax, ax                                 ; 3FDE _ 0F B7. C0
        shl     eax, 9                                  ; 3FE1 _ C1. E0, 09
        add     dword [ebp-20H], eax                    ; 3FE4 _ 01. 45, E0
        mov     eax, dword [ebp-0CH]                    ; 3FE7 _ 8B. 45, F4
        mov     eax, dword [eax+1CH]                    ; 3FEA _ 8B. 40, 1C
        mov     dword [ebp-24H], eax                    ; 3FED _ 89. 45, DC
        mov     dword [ebp-18H], 0                      ; 3FF0 _ C7. 45, E8, 00000000
        mov     dword [ebp-18H], 0                      ; 3FF7 _ C7. 45, E8, 00000000
        jmp     ?_215                                   ; 3FFE _ EB, 1D

?_214:  mov     edx, dword [ebp-18H]                    ; 4000 _ 8B. 55, E8
        mov     eax, dword [ebp-20H]                    ; 4003 _ 8B. 45, E0
        add     eax, edx                                ; 4006 _ 01. D0
        movzx   ecx, byte [eax]                         ; 4008 _ 0F B6. 08
        mov     eax, dword [ebp+0CH]                    ; 400B _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 400E _ 8B. 10
        mov     eax, dword [ebp-18H]                    ; 4010 _ 8B. 45, E8
        add     eax, edx                                ; 4013 _ 01. D0
        mov     edx, ecx                                ; 4015 _ 89. CA
        mov     byte [eax], dl                          ; 4017 _ 88. 10
        add     dword [ebp-18H], 1                      ; 4019 _ 83. 45, E8, 01
?_215:  mov     eax, dword [ebp-18H]                    ; 401D _ 8B. 45, E8
        cmp     eax, dword [ebp-24H]                    ; 4020 _ 3B. 45, DC
        jl      ?_214                                   ; 4023 _ 7C, DB
        jmp     ?_218                                   ; 4025 _ EB, 12

?_216:  add     dword [ebp-0CH], 32                     ; 4027 _ 83. 45, F4, 20
?_217:  mov     eax, dword [ebp-0CH]                    ; 402B _ 8B. 45, F4
        movzx   eax, byte [eax]                         ; 402E _ 0F B6. 00
        test    al, al                                  ; 4031 _ 84. C0
        jne     ?_207                                   ; 4033 _ 0F 85, FFFFFECD
?_218:  mov     edx, dword [ebp-1CH]                    ; 4039 _ 8B. 55, E4
        mov     eax, dword [_memman]                    ; 403C _ A1, 00000000(d)
        mov     dword [esp+8H], 13                      ; 4041 _ C7. 44 24, 08, 0000000D
        mov     dword [esp+4H], edx                     ; 4049 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 404D _ 89. 04 24
        call    _memman_free                            ; 4050 _ E8, 00000000(rel)
        nop                                             ; 4055 _ 90
        leave                                           ; 4056 _ C9
        ret                                             ; 4057 _ C3
; _file_loadfile End of function

_intHandlerForStackOverFlow:; Function begin
        push    ebp                                     ; 4058 _ 55
        mov     ebp, esp                                ; 4059 _ 89. E5
        sub     esp, 40                                 ; 405B _ 83. EC, 28
        call    _task_now                               ; 405E _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 4063 _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 4066 _ 8B. 45, F4
        mov     dword [eax+98H], 8                      ; 4069 _ C7. 80, 00000098, 00000008
        mov     dword [esp], ?_375                      ; 4073 _ C7. 04 24, 00000087(d)
        call    _cons_putstr                            ; 407A _ E8, FFFFDBD9
        mov     eax, dword [ebp-0CH]                    ; 407F _ 8B. 45, F4
        mov     dword [eax+98H], 8                      ; 4082 _ C7. 80, 00000098, 00000008
        mov     eax, dword [ebp-0CH]                    ; 408C _ 8B. 45, F4
        mov     eax, dword [eax+9CH]                    ; 408F _ 8B. 80, 0000009C
        lea     edx, [eax+10H]                          ; 4095 _ 8D. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 4098 _ 8B. 45, F4
        mov     dword [eax+9CH], edx                    ; 409B _ 89. 90, 0000009C
        mov     dword [esp], ?_376                      ; 40A1 _ C7. 04 24, 0000008E(d)
        call    _cons_putstr                            ; 40A8 _ E8, FFFFDBAB
        mov     eax, dword [ebp-0CH]                    ; 40AD _ 8B. 45, F4
        mov     dword [eax+98H], 8                      ; 40B0 _ C7. 80, 00000098, 00000008
        mov     eax, dword [ebp-0CH]                    ; 40BA _ 8B. 45, F4
        mov     eax, dword [eax+9CH]                    ; 40BD _ 8B. 80, 0000009C
        lea     edx, [eax+10H]                          ; 40C3 _ 8D. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 40C6 _ 8B. 45, F4
        mov     dword [eax+9CH], edx                    ; 40C9 _ 89. 90, 0000009C
        mov     eax, dword [ebp+8H]                     ; 40CF _ 8B. 45, 08
        add     eax, 44                                 ; 40D2 _ 83. C0, 2C
        mov     eax, dword [eax]                        ; 40D5 _ 8B. 00
        mov     dword [esp], eax                        ; 40D7 _ 89. 04 24
        call    _intToHexStr                            ; 40DA _ E8, FFFFF18B
        mov     dword [ebp-10H], eax                    ; 40DF _ 89. 45, F0
        mov     dword [esp], ?_377                      ; 40E2 _ C7. 04 24, 0000009E(d)
        call    _cons_putstr                            ; 40E9 _ E8, FFFFDB6A
        mov     eax, dword [ebp-10H]                    ; 40EE _ 8B. 45, F0
        mov     dword [esp], eax                        ; 40F1 _ 89. 04 24
        call    _cons_putstr                            ; 40F4 _ E8, FFFFDB5F
        mov     eax, dword [ebp-0CH]                    ; 40F9 _ 8B. 45, F4
        mov     dword [eax+98H], 8                      ; 40FC _ C7. 80, 00000098, 00000008
        mov     eax, dword [ebp-0CH]                    ; 4106 _ 8B. 45, F4
        mov     eax, dword [eax+9CH]                    ; 4109 _ 8B. 80, 0000009C
        lea     edx, [eax+10H]                          ; 410F _ 8D. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 4112 _ 8B. 45, F4
        mov     dword [eax+9CH], edx                    ; 4115 _ 89. 90, 0000009C
        mov     eax, dword [ebp-0CH]                    ; 411B _ 8B. 45, F4
        add     eax, 48                                 ; 411E _ 83. C0, 30
        leave                                           ; 4121 _ C9
        ret                                             ; 4122 _ C3
; _intHandlerForStackOverFlow End of function

_intHandlerForException:; Function begin
        push    ebp                                     ; 4123 _ 55
        mov     ebp, esp                                ; 4124 _ 89. E5
        sub     esp, 40                                 ; 4126 _ 83. EC, 28
        call    _task_now                               ; 4129 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 412E _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 4131 _ 8B. 45, F4
        mov     dword [eax+98H], 8                      ; 4134 _ C7. 80, 00000098, 00000008
        mov     dword [esp], ?_378                      ; 413E _ C7. 04 24, 000000A5(d)
        call    _cons_putstr                            ; 4145 _ E8, FFFFDB0E
        mov     eax, dword [ebp-0CH]                    ; 414A _ 8B. 45, F4
        mov     dword [eax+98H], 8                      ; 414D _ C7. 80, 00000098, 00000008
        mov     eax, dword [ebp-0CH]                    ; 4157 _ 8B. 45, F4
        mov     eax, dword [eax+9CH]                    ; 415A _ 8B. 80, 0000009C
        lea     edx, [eax+10H]                          ; 4160 _ 8D. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 4163 _ 8B. 45, F4
        mov     dword [eax+9CH], edx                    ; 4166 _ 89. 90, 0000009C
        mov     dword [esp], ?_379                      ; 416C _ C7. 04 24, 000000AD(d)
        call    _cons_putstr                            ; 4173 _ E8, FFFFDAE0
        mov     eax, dword [ebp-0CH]                    ; 4178 _ 8B. 45, F4
        mov     eax, dword [eax+9CH]                    ; 417B _ 8B. 80, 0000009C
        lea     edx, [eax+10H]                          ; 4181 _ 8D. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 4184 _ 8B. 45, F4
        mov     dword [eax+9CH], edx                    ; 4187 _ 89. 90, 0000009C
        mov     eax, dword [ebp-0CH]                    ; 418D _ 8B. 45, F4
        mov     dword [eax+98H], 8                      ; 4190 _ C7. 80, 00000098, 00000008
        mov     eax, dword [ebp-0CH]                    ; 419A _ 8B. 45, F4
        add     eax, 48                                 ; 419D _ 83. C0, 30
        leave                                           ; 41A0 _ C9
        ret                                             ; 41A1 _ C3
; _intHandlerForException End of function

        nop                                             ; 41A2 _ 90
        nop                                             ; 41A3 _ 90


_shtctl_init:
        push    ebp                                     ; 41A4 _ 55
        mov     ebp, esp                                ; 41A5 _ 89. E5
        sub     esp, 40                                 ; 41A7 _ 83. EC, 28
        mov     dword [esp+4H], 9232                    ; 41AA _ C7. 44 24, 04, 00002410
        mov     eax, dword [ebp+8H]                     ; 41B2 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 41B5 _ 89. 04 24
        call    _memman_alloc_4k                        ; 41B8 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 41BD _ 89. 45, F0
        cmp     dword [ebp-10H], 0                      ; 41C0 _ 83. 7D, F0, 00
        jnz     ?_219                                   ; 41C4 _ 75, 0A
        mov     eax, 0                                  ; 41C6 _ B8, 00000000
        jmp     ?_223                                   ; 41CB _ E9, 000000A3

?_219:  mov     eax, dword [ebp+10H]                    ; 41D0 _ 8B. 45, 10
        imul    eax, dword [ebp+14H]                    ; 41D3 _ 0F AF. 45, 14
        mov     dword [esp+4H], eax                     ; 41D7 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 41DB _ 8B. 45, 08
        mov     dword [esp], eax                        ; 41DE _ 89. 04 24
        call    _memman_alloc_4k                        ; 41E1 _ E8, 00000000(rel)
        mov     edx, eax                                ; 41E6 _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 41E8 _ 8B. 45, F0
        mov     dword [eax+4H], edx                     ; 41EB _ 89. 50, 04
        mov     eax, dword [ebp-10H]                    ; 41EE _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 41F1 _ 8B. 40, 04
        test    eax, eax                                ; 41F4 _ 85. C0
        jnz     ?_220                                   ; 41F6 _ 75, 21
        mov     eax, dword [ebp-10H]                    ; 41F8 _ 8B. 45, F0
        mov     dword [esp+8H], 9232                    ; 41FB _ C7. 44 24, 08, 00002410
        mov     dword [esp+4H], eax                     ; 4203 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4207 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 420A _ 89. 04 24
        call    _memman_free_4k                         ; 420D _ E8, 00000000(rel)
        mov     eax, 0                                  ; 4212 _ B8, 00000000
        jmp     ?_223                                   ; 4217 _ EB, 5A

?_220:  mov     eax, dword [ebp-10H]                    ; 4219 _ 8B. 45, F0
        mov     edx, dword [ebp+0CH]                    ; 421C _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 421F _ 89. 10
        mov     eax, dword [ebp-10H]                    ; 4221 _ 8B. 45, F0
        mov     edx, dword [ebp+10H]                    ; 4224 _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 4227 _ 89. 50, 08
        mov     eax, dword [ebp-10H]                    ; 422A _ 8B. 45, F0
        mov     edx, dword [ebp+14H]                    ; 422D _ 8B. 55, 14
        mov     dword [eax+0CH], edx                    ; 4230 _ 89. 50, 0C
        mov     eax, dword [ebp-10H]                    ; 4233 _ 8B. 45, F0
        mov     dword [eax+10H], -1                     ; 4236 _ C7. 40, 10, FFFFFFFF
        mov     dword [ebp-0CH], 0                      ; 423D _ C7. 45, F4, 00000000
        jmp     ?_222                                   ; 4244 _ EB, 21

?_221:  mov     ecx, dword [ebp-10H]                    ; 4246 _ 8B. 4D, F0
        mov     edx, dword [ebp-0CH]                    ; 4249 _ 8B. 55, F4
        mov     eax, edx                                ; 424C _ 89. D0
        shl     eax, 3                                  ; 424E _ C1. E0, 03
        add     eax, edx                                ; 4251 _ 01. D0
        shl     eax, 2                                  ; 4253 _ C1. E0, 02
        add     eax, ecx                                ; 4256 _ 01. C8
        add     eax, 1072                               ; 4258 _ 05, 00000430
        mov     dword [eax], 0                          ; 425D _ C7. 00, 00000000
        add     dword [ebp-0CH], 1                      ; 4263 _ 83. 45, F4, 01
?_222:  cmp     dword [ebp-0CH], 255                    ; 4267 _ 81. 7D, F4, 000000FF
        jle     ?_221                                   ; 426E _ 7E, D6
        mov     eax, dword [ebp-10H]                    ; 4270 _ 8B. 45, F0
?_223:  leave                                           ; 4273 _ C9
        ret                                             ; 4274 _ C3

_sheet_alloc:; Function begin
        push    ebp                                     ; 4275 _ 55
        mov     ebp, esp                                ; 4276 _ 89. E5
        sub     esp, 24                                 ; 4278 _ 83. EC, 18
        mov     dword [ebp-0CH], 0                      ; 427B _ C7. 45, F4, 00000000
        jmp     ?_226                                   ; 4282 _ EB, 75

?_224:  mov     ecx, dword [ebp+8H]                     ; 4284 _ 8B. 4D, 08
        mov     edx, dword [ebp-0CH]                    ; 4287 _ 8B. 55, F4
        mov     eax, edx                                ; 428A _ 89. D0
        shl     eax, 3                                  ; 428C _ C1. E0, 03
        add     eax, edx                                ; 428F _ 01. D0
        shl     eax, 2                                  ; 4291 _ C1. E0, 02
        add     eax, ecx                                ; 4294 _ 01. C8
        add     eax, 1072                               ; 4296 _ 05, 00000430
        mov     eax, dword [eax]                        ; 429B _ 8B. 00
        test    eax, eax                                ; 429D _ 85. C0
        jnz     ?_225                                   ; 429F _ 75, 54
        mov     edx, dword [ebp-0CH]                    ; 42A1 _ 8B. 55, F4
        mov     eax, edx                                ; 42A4 _ 89. D0
        shl     eax, 3                                  ; 42A6 _ C1. E0, 03
        add     eax, edx                                ; 42A9 _ 01. D0
        shl     eax, 2                                  ; 42AB _ C1. E0, 02
        lea     edx, [eax+410H]                         ; 42AE _ 8D. 90, 00000410
        mov     eax, dword [ebp+8H]                     ; 42B4 _ 8B. 45, 08
        add     eax, edx                                ; 42B7 _ 01. D0
        add     eax, 4                                  ; 42B9 _ 83. C0, 04
        mov     dword [ebp-10H], eax                    ; 42BC _ 89. 45, F0
        mov     eax, dword [ebp+8H]                     ; 42BF _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 42C2 _ 8B. 55, F4
        add     edx, 4                                  ; 42C5 _ 83. C2, 04
        mov     ecx, dword [ebp-10H]                    ; 42C8 _ 8B. 4D, F0
        mov     dword [eax+edx*4+4H], ecx               ; 42CB _ 89. 4C 90, 04
        mov     eax, dword [ebp-10H]                    ; 42CF _ 8B. 45, F0
        mov     dword [eax+1CH], 1                      ; 42D2 _ C7. 40, 1C, 00000001
        mov     eax, dword [ebp-10H]                    ; 42D9 _ 8B. 45, F0
        mov     dword [eax+18H], -1                     ; 42DC _ C7. 40, 18, FFFFFFFF
        call    _task_now                               ; 42E3 _ E8, 00000000(rel)
        mov     edx, eax                                ; 42E8 _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 42EA _ 8B. 45, F0
        mov     dword [eax+20H], edx                    ; 42ED _ 89. 50, 20
        mov     eax, dword [ebp-10H]                    ; 42F0 _ 8B. 45, F0
        jmp     ?_227                                   ; 42F3 _ EB, 12

?_225:  add     dword [ebp-0CH], 1                      ; 42F5 _ 83. 45, F4, 01
?_226:  cmp     dword [ebp-0CH], 255                    ; 42F9 _ 81. 7D, F4, 000000FF
        jle     ?_224                                   ; 4300 _ 7E, 82
        mov     eax, 0                                  ; 4302 _ B8, 00000000
?_227:  leave                                           ; 4307 _ C9
        ret                                             ; 4308 _ C3
; _sheet_alloc End of function

_sheet_setbuf:; Function begin
        push    ebp                                     ; 4309 _ 55
        mov     ebp, esp                                ; 430A _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 430C _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 430F _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 4312 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 4314 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 4317 _ 8B. 55, 10
        mov     dword [eax+4H], edx                     ; 431A _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 431D _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 4320 _ 8B. 55, 14
        mov     dword [eax+8H], edx                     ; 4323 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 4326 _ 8B. 45, 08
        mov     edx, dword [ebp+18H]                    ; 4329 _ 8B. 55, 18
        mov     dword [eax+14H], edx                    ; 432C _ 89. 50, 14
        nop                                             ; 432F _ 90
        pop     ebp                                     ; 4330 _ 5D
        ret                                             ; 4331 _ C3
; _sheet_setbuf End of function

_sheet_updown:; Function begin
        push    ebp                                     ; 4332 _ 55
        mov     ebp, esp                                ; 4333 _ 89. E5
        push    edi                                     ; 4335 _ 57
        push    esi                                     ; 4336 _ 56
        push    ebx                                     ; 4337 _ 53
        sub     esp, 60                                 ; 4338 _ 83. EC, 3C
        mov     eax, dword [ebp+0CH]                    ; 433B _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 433E _ 8B. 40, 18
        mov     dword [ebp-20H], eax                    ; 4341 _ 89. 45, E0
        mov     eax, dword [ebp+8H]                     ; 4344 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 4347 _ 8B. 40, 10
        add     eax, 1                                  ; 434A _ 83. C0, 01
        cmp     dword [ebp+10H], eax                    ; 434D _ 39. 45, 10
        jle     ?_228                                   ; 4350 _ 7E, 0C
        mov     eax, dword [ebp+8H]                     ; 4352 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 4355 _ 8B. 40, 10
        add     eax, 1                                  ; 4358 _ 83. C0, 01
        mov     dword [ebp+10H], eax                    ; 435B _ 89. 45, 10
?_228:  cmp     dword [ebp+10H], -1                     ; 435E _ 83. 7D, 10, FF
        jge     ?_229                                   ; 4362 _ 7D, 07
        mov     dword [ebp+10H], -1                     ; 4364 _ C7. 45, 10, FFFFFFFF
?_229:  mov     eax, dword [ebp+0CH]                    ; 436B _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 436E _ 8B. 55, 10
        mov     dword [eax+18H], edx                    ; 4371 _ 89. 50, 18
        mov     eax, dword [ebp-20H]                    ; 4374 _ 8B. 45, E0
        cmp     eax, dword [ebp+10H]                    ; 4377 _ 3B. 45, 10
        jle     ?_236                                   ; 437A _ 0F 8E, 00000212
        cmp     dword [ebp+10H], 0                      ; 4380 _ 83. 7D, 10, 00
        js      ?_232                                   ; 4384 _ 0F 88, 000000FE
        mov     eax, dword [ebp-20H]                    ; 438A _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 438D _ 89. 45, E4
        jmp     ?_231                                   ; 4390 _ EB, 34

?_230:  mov     eax, dword [ebp-1CH]                    ; 4392 _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 4395 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 4398 _ 8B. 45, 08
        add     edx, 4                                  ; 439B _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 439E _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 43A2 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 43A5 _ 8B. 55, E4
        add     edx, 4                                  ; 43A8 _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 43AB _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 43AF _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 43B2 _ 8B. 55, E4
        add     edx, 4                                  ; 43B5 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 43B8 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 43BC _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 43BF _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 43C2 _ 83. 6D, E4, 01
?_231:  mov     eax, dword [ebp-1CH]                    ; 43C6 _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 43C9 _ 3B. 45, 10
        jg      ?_230                                   ; 43CC _ 7F, C4
        mov     eax, dword [ebp+8H]                     ; 43CE _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 43D1 _ 8B. 55, 10
        add     edx, 4                                  ; 43D4 _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 43D7 _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 43DA _ 89. 4C 90, 04
        mov     eax, dword [ebp+10H]                    ; 43DE _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 43E1 _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 43E4 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 43E7 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 43EA _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 43ED _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 43F0 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 43F3 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 43F6 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 43F9 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 43FC _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 43FF _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 4402 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 4405 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 4408 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 440B _ 8B. 40, 0C
        mov     dword [esp+14H], esi                    ; 440E _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 4412 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 4416 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 441A _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 441E _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4422 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4425 _ 89. 04 24
        call    _sheet_refreshmap                       ; 4428 _ E8, 00000643
        mov     eax, dword [ebp+10H]                    ; 442D _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 4430 _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 4433 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 4436 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 4439 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 443C _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 443F _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 4442 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 4445 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 4448 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 444B _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 444E _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 4451 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 4454 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 4457 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 445A _ 8B. 40, 0C
        mov     edi, dword [ebp-20H]                    ; 445D _ 8B. 7D, E0
        mov     dword [esp+18H], edi                    ; 4460 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 4464 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 4468 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 446C _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 4470 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 4474 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4478 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 447B _ 89. 04 24
        call    _sheet_refreshsub                       ; 447E _ E8, 00000465
        jmp     ?_243                                   ; 4483 _ E9, 0000027D

?_232:  mov     eax, dword [ebp+8H]                     ; 4488 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 448B _ 8B. 40, 10
        cmp     dword [ebp-20H], eax                    ; 448E _ 39. 45, E0
        jge     ?_235                                   ; 4491 _ 7D, 47
        mov     eax, dword [ebp-20H]                    ; 4493 _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 4496 _ 89. 45, E4
        jmp     ?_234                                   ; 4499 _ EB, 34

?_233:  mov     eax, dword [ebp-1CH]                    ; 449B _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 449E _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 44A1 _ 8B. 45, 08
        add     edx, 4                                  ; 44A4 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 44A7 _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 44AB _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 44AE _ 8B. 55, E4
        add     edx, 4                                  ; 44B1 _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 44B4 _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 44B8 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 44BB _ 8B. 55, E4
        add     edx, 4                                  ; 44BE _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 44C1 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 44C5 _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 44C8 _ 89. 50, 18
        add     dword [ebp-1CH], 1                      ; 44CB _ 83. 45, E4, 01
?_234:  mov     eax, dword [ebp+8H]                     ; 44CF _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 44D2 _ 8B. 40, 10
        cmp     dword [ebp-1CH], eax                    ; 44D5 _ 39. 45, E4
        jl      ?_233                                   ; 44D8 _ 7C, C1
?_235:  mov     eax, dword [ebp+8H]                     ; 44DA _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 44DD _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 44E0 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 44E3 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 44E6 _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 44E9 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 44EC _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 44EF _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 44F2 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 44F5 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 44F8 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 44FB _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 44FE _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 4501 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 4504 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 4507 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 450A _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 450D _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 4510 _ 8B. 40, 0C
        mov     dword [esp+14H], 0                      ; 4513 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], ebx                    ; 451B _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 451F _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 4523 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 4527 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 452B _ 8B. 45, 08
        mov     dword [esp], eax                        ; 452E _ 89. 04 24
        call    _sheet_refreshmap                       ; 4531 _ E8, 0000053A
        mov     eax, dword [ebp-20H]                    ; 4536 _ 8B. 45, E0
        lea     esi, [eax-1H]                           ; 4539 _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 453C _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 453F _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 4542 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 4545 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 4548 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 454B _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 454E _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 4551 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 4554 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 4557 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 455A _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 455D _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 4560 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 4563 _ 8B. 40, 0C
        mov     dword [esp+18H], esi                    ; 4566 _ 89. 74 24, 18
        mov     dword [esp+14H], 0                      ; 456A _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], ebx                    ; 4572 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 4576 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 457A _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 457E _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4582 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4585 _ 89. 04 24
        call    _sheet_refreshsub                       ; 4588 _ E8, 0000035B
        jmp     ?_243                                   ; 458D _ E9, 00000173

?_236:  mov     eax, dword [ebp-20H]                    ; 4592 _ 8B. 45, E0
        cmp     eax, dword [ebp+10H]                    ; 4595 _ 3B. 45, 10
        jge     ?_243                                   ; 4598 _ 0F 8D, 00000167
        cmp     dword [ebp-20H], 0                      ; 459E _ 83. 7D, E0, 00
        js      ?_239                                   ; 45A2 _ 78, 56
        mov     eax, dword [ebp-20H]                    ; 45A4 _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 45A7 _ 89. 45, E4
        jmp     ?_238                                   ; 45AA _ EB, 34

?_237:  mov     eax, dword [ebp-1CH]                    ; 45AC _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 45AF _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 45B2 _ 8B. 45, 08
        add     edx, 4                                  ; 45B5 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 45B8 _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 45BC _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 45BF _ 8B. 55, E4
        add     edx, 4                                  ; 45C2 _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 45C5 _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 45C9 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 45CC _ 8B. 55, E4
        add     edx, 4                                  ; 45CF _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 45D2 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 45D6 _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 45D9 _ 89. 50, 18
        add     dword [ebp-1CH], 1                      ; 45DC _ 83. 45, E4, 01
?_238:  mov     eax, dword [ebp-1CH]                    ; 45E0 _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 45E3 _ 3B. 45, 10
        jl      ?_237                                   ; 45E6 _ 7C, C4
        mov     eax, dword [ebp+8H]                     ; 45E8 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 45EB _ 8B. 55, 10
        add     edx, 4                                  ; 45EE _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 45F1 _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 45F4 _ 89. 4C 90, 04
        jmp     ?_242                                   ; 45F8 _ EB, 6C

?_239:  mov     eax, dword [ebp+8H]                     ; 45FA _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 45FD _ 8B. 40, 10
        mov     dword [ebp-1CH], eax                    ; 4600 _ 89. 45, E4
        jmp     ?_241                                   ; 4603 _ EB, 3A

?_240:  mov     eax, dword [ebp-1CH]                    ; 4605 _ 8B. 45, E4
        lea     ebx, [eax+1H]                           ; 4608 _ 8D. 58, 01
        mov     eax, dword [ebp+8H]                     ; 460B _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 460E _ 8B. 55, E4
        add     edx, 4                                  ; 4611 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 4614 _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 4618 _ 8B. 45, 08
        lea     edx, [ebx+4H]                           ; 461B _ 8D. 53, 04
        mov     dword [eax+edx*4+4H], ecx               ; 461E _ 89. 4C 90, 04
        mov     eax, dword [ebp-1CH]                    ; 4622 _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 4625 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 4628 _ 8B. 45, 08
        add     edx, 4                                  ; 462B _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 462E _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 4632 _ 8B. 55, E4
        add     edx, 1                                  ; 4635 _ 83. C2, 01
        mov     dword [eax+18H], edx                    ; 4638 _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 463B _ 83. 6D, E4, 01
?_241:  mov     eax, dword [ebp-1CH]                    ; 463F _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 4642 _ 3B. 45, 10
        jge     ?_240                                   ; 4645 _ 7D, BE
        mov     eax, dword [ebp+8H]                     ; 4647 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 464A _ 8B. 55, 10
        add     edx, 4                                  ; 464D _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 4650 _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 4653 _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 4657 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 465A _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 465D _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 4660 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 4663 _ 89. 50, 10
?_242:  mov     eax, dword [ebp+0CH]                    ; 4666 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 4669 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 466C _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 466F _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 4672 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 4675 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 4678 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 467B _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 467E _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 4681 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 4684 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 4687 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 468A _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 468D _ 8B. 40, 0C
        mov     esi, dword [ebp+10H]                    ; 4690 _ 8B. 75, 10
        mov     dword [esp+14H], esi                    ; 4693 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 4697 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 469B _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 469F _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 46A3 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 46A7 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 46AA _ 89. 04 24
        call    _sheet_refreshmap                       ; 46AD _ E8, 000003BE
        mov     eax, dword [ebp+0CH]                    ; 46B2 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 46B5 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 46B8 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 46BB _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 46BE _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 46C1 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 46C4 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 46C7 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 46CA _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 46CD _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 46D0 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 46D3 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 46D6 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 46D9 _ 8B. 40, 0C
        mov     esi, dword [ebp+10H]                    ; 46DC _ 8B. 75, 10
        mov     dword [esp+18H], esi                    ; 46DF _ 89. 74 24, 18
        mov     esi, dword [ebp+10H]                    ; 46E3 _ 8B. 75, 10
        mov     dword [esp+14H], esi                    ; 46E6 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 46EA _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 46EE _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 46F2 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 46F6 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 46FA _ 8B. 45, 08
        mov     dword [esp], eax                        ; 46FD _ 89. 04 24
        call    _sheet_refreshsub                       ; 4700 _ E8, 000001E3
?_243:  nop                                             ; 4705 _ 90
        add     esp, 60                                 ; 4706 _ 83. C4, 3C
        pop     ebx                                     ; 4709 _ 5B
        pop     esi                                     ; 470A _ 5E
        pop     edi                                     ; 470B _ 5F
        pop     ebp                                     ; 470C _ 5D
        ret                                             ; 470D _ C3
; _sheet_updown End of function

_sheet_refresh:; Function begin
        push    ebp                                     ; 470E _ 55
        mov     ebp, esp                                ; 470F _ 89. E5
        push    edi                                     ; 4711 _ 57
        push    esi                                     ; 4712 _ 56
        push    ebx                                     ; 4713 _ 53
        sub     esp, 60                                 ; 4714 _ 83. EC, 3C
        mov     eax, dword [ebp+0CH]                    ; 4717 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 471A _ 8B. 40, 18
        test    eax, eax                                ; 471D _ 85. C0
        js      ?_244                                   ; 471F _ 78, 61
        mov     eax, dword [ebp+0CH]                    ; 4721 _ 8B. 45, 0C
        mov     edi, dword [eax+18H]                    ; 4724 _ 8B. 78, 18
        mov     eax, dword [ebp+0CH]                    ; 4727 _ 8B. 45, 0C
        mov     esi, dword [eax+18H]                    ; 472A _ 8B. 70, 18
        mov     eax, dword [ebp+0CH]                    ; 472D _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 4730 _ 8B. 50, 10
        mov     eax, dword [ebp+1CH]                    ; 4733 _ 8B. 45, 1C
        lea     ebx, [edx+eax]                          ; 4736 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 4739 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 473C _ 8B. 50, 0C
        mov     eax, dword [ebp+18H]                    ; 473F _ 8B. 45, 18
        lea     ecx, [edx+eax]                          ; 4742 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 4745 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 4748 _ 8B. 50, 10
        mov     eax, dword [ebp+14H]                    ; 474B _ 8B. 45, 14
        add     edx, eax                                ; 474E _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 4750 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 4753 _ 8B. 40, 0C
        mov     dword [ebp-1CH], eax                    ; 4756 _ 89. 45, E4
        mov     eax, dword [ebp+10H]                    ; 4759 _ 8B. 45, 10
        add     eax, dword [ebp-1CH]                    ; 475C _ 03. 45, E4
        mov     dword [esp+18H], edi                    ; 475F _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 4763 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 4767 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 476B _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 476F _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 4773 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4777 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 477A _ 89. 04 24
        call    _sheet_refreshsub                       ; 477D _ E8, 00000166
?_244:  mov     eax, 0                                  ; 4782 _ B8, 00000000
        add     esp, 60                                 ; 4787 _ 83. C4, 3C
        pop     ebx                                     ; 478A _ 5B
        pop     esi                                     ; 478B _ 5E
        pop     edi                                     ; 478C _ 5F
        pop     ebp                                     ; 478D _ 5D
        ret                                             ; 478E _ C3
; _sheet_refresh End of function

_sheet_slide:; Function begin
        push    ebp                                     ; 478F _ 55
        mov     ebp, esp                                ; 4790 _ 89. E5
        push    esi                                     ; 4792 _ 56
        push    ebx                                     ; 4793 _ 53
        sub     esp, 48                                 ; 4794 _ 83. EC, 30
        mov     eax, dword [ebp+0CH]                    ; 4797 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 479A _ 8B. 40, 0C
        mov     dword [ebp-0CH], eax                    ; 479D _ 89. 45, F4
        mov     eax, dword [ebp+0CH]                    ; 47A0 _ 8B. 45, 0C
        mov     eax, dword [eax+10H]                    ; 47A3 _ 8B. 40, 10
        mov     dword [ebp-10H], eax                    ; 47A6 _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 47A9 _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 47AC _ 8B. 55, 10
        mov     dword [eax+0CH], edx                    ; 47AF _ 89. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 47B2 _ 8B. 45, 0C
        mov     edx, dword [ebp+14H]                    ; 47B5 _ 8B. 55, 14
        mov     dword [eax+10H], edx                    ; 47B8 _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 47BB _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 47BE _ 8B. 40, 18
        test    eax, eax                                ; 47C1 _ 85. C0
        js      ?_245                                   ; 47C3 _ 0F 88, 00000117
        mov     eax, dword [ebp+0CH]                    ; 47C9 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 47CC _ 8B. 50, 08
        mov     eax, dword [ebp-10H]                    ; 47CF _ 8B. 45, F0
        add     edx, eax                                ; 47D2 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 47D4 _ 8B. 45, 0C
        mov     ecx, dword [eax+4H]                     ; 47D7 _ 8B. 48, 04
        mov     eax, dword [ebp-0CH]                    ; 47DA _ 8B. 45, F4
        add     eax, ecx                                ; 47DD _ 01. C8
        mov     dword [esp+14H], 0                      ; 47DF _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], edx                    ; 47E7 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 47EB _ 89. 44 24, 0C
        mov     eax, dword [ebp-10H]                    ; 47EF _ 8B. 45, F0
        mov     dword [esp+8H], eax                     ; 47F2 _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 47F6 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 47F9 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 47FD _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4800 _ 89. 04 24
        call    _sheet_refreshmap                       ; 4803 _ E8, 00000268
        mov     eax, dword [ebp+0CH]                    ; 4808 _ 8B. 45, 0C
        mov     ecx, dword [eax+18H]                    ; 480B _ 8B. 48, 18
        mov     eax, dword [ebp+0CH]                    ; 480E _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 4811 _ 8B. 50, 08
        mov     eax, dword [ebp+14H]                    ; 4814 _ 8B. 45, 14
        add     edx, eax                                ; 4817 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 4819 _ 8B. 45, 0C
        mov     ebx, dword [eax+4H]                     ; 481C _ 8B. 58, 04
        mov     eax, dword [ebp+10H]                    ; 481F _ 8B. 45, 10
        add     eax, ebx                                ; 4822 _ 01. D8
        mov     dword [esp+14H], ecx                    ; 4824 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 4828 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 482C _ 89. 44 24, 0C
        mov     eax, dword [ebp+14H]                    ; 4830 _ 8B. 45, 14
        mov     dword [esp+8H], eax                     ; 4833 _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 4837 _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 483A _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 483E _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4841 _ 89. 04 24
        call    _sheet_refreshmap                       ; 4844 _ E8, 00000227
        mov     eax, dword [ebp+0CH]                    ; 4849 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 484C _ 8B. 40, 18
        lea     ecx, [eax-1H]                           ; 484F _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 4852 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 4855 _ 8B. 50, 08
        mov     eax, dword [ebp-10H]                    ; 4858 _ 8B. 45, F0
        add     edx, eax                                ; 485B _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 485D _ 8B. 45, 0C
        mov     ebx, dword [eax+4H]                     ; 4860 _ 8B. 58, 04
        mov     eax, dword [ebp-0CH]                    ; 4863 _ 8B. 45, F4
        add     eax, ebx                                ; 4866 _ 01. D8
        mov     dword [esp+18H], ecx                    ; 4868 _ 89. 4C 24, 18
        mov     dword [esp+14H], 0                      ; 486C _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], edx                    ; 4874 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 4878 _ 89. 44 24, 0C
        mov     eax, dword [ebp-10H]                    ; 487C _ 8B. 45, F0
        mov     dword [esp+8H], eax                     ; 487F _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 4883 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 4886 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 488A _ 8B. 45, 08
        mov     dword [esp], eax                        ; 488D _ 89. 04 24
        call    _sheet_refreshsub                       ; 4890 _ E8, 00000053
        mov     eax, dword [ebp+0CH]                    ; 4895 _ 8B. 45, 0C
        mov     ebx, dword [eax+18H]                    ; 4898 _ 8B. 58, 18
        mov     eax, dword [ebp+0CH]                    ; 489B _ 8B. 45, 0C
        mov     ecx, dword [eax+18H]                    ; 489E _ 8B. 48, 18
        mov     eax, dword [ebp+0CH]                    ; 48A1 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 48A4 _ 8B. 50, 08
        mov     eax, dword [ebp+14H]                    ; 48A7 _ 8B. 45, 14
        add     edx, eax                                ; 48AA _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 48AC _ 8B. 45, 0C
        mov     esi, dword [eax+4H]                     ; 48AF _ 8B. 70, 04
        mov     eax, dword [ebp+10H]                    ; 48B2 _ 8B. 45, 10
        add     eax, esi                                ; 48B5 _ 01. F0
        mov     dword [esp+18H], ebx                    ; 48B7 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 48BB _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 48BF _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 48C3 _ 89. 44 24, 0C
        mov     eax, dword [ebp+14H]                    ; 48C7 _ 8B. 45, 14
        mov     dword [esp+8H], eax                     ; 48CA _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 48CE _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 48D1 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 48D5 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 48D8 _ 89. 04 24
        call    _sheet_refreshsub                       ; 48DB _ E8, 00000008
?_245:  nop                                             ; 48E0 _ 90
        add     esp, 48                                 ; 48E1 _ 83. C4, 30
        pop     ebx                                     ; 48E4 _ 5B
        pop     esi                                     ; 48E5 _ 5E
        pop     ebp                                     ; 48E6 _ 5D
        ret                                             ; 48E7 _ C3
; _sheet_slide End of function

_sheet_refreshsub:; Function begin
        push    ebp                                     ; 48E8 _ 55
        mov     ebp, esp                                ; 48E9 _ 89. E5
        sub     esp, 48                                 ; 48EB _ 83. EC, 30
        mov     eax, dword [ebp+8H]                     ; 48EE _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 48F1 _ 8B. 00
        mov     dword [ebp-10H], eax                    ; 48F3 _ 89. 45, F0
        mov     eax, dword [ebp+8H]                     ; 48F6 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 48F9 _ 8B. 40, 04
        mov     dword [ebp-14H], eax                    ; 48FC _ 89. 45, EC
        cmp     dword [ebp+0CH], 0                      ; 48FF _ 83. 7D, 0C, 00
        jns     ?_246                                   ; 4903 _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 4905 _ C7. 45, 0C, 00000000
?_246:  cmp     dword [ebp+10H], 8                      ; 490C _ 83. 7D, 10, 08
        jg      ?_247                                   ; 4910 _ 7F, 07
        mov     dword [ebp+10H], 0                      ; 4912 _ C7. 45, 10, 00000000
?_247:  mov     eax, dword [ebp+8H]                     ; 4919 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 491C _ 8B. 40, 08
        cmp     dword [ebp+14H], eax                    ; 491F _ 39. 45, 14
        jle     ?_248                                   ; 4922 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 4924 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 4927 _ 8B. 40, 08
        mov     dword [ebp+14H], eax                    ; 492A _ 89. 45, 14
?_248:  mov     eax, dword [ebp+8H]                     ; 492D _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 4930 _ 8B. 40, 0C
        cmp     dword [ebp+18H], eax                    ; 4933 _ 39. 45, 18
        jle     ?_249                                   ; 4936 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 4938 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 493B _ 8B. 40, 0C
        mov     dword [ebp+18H], eax                    ; 493E _ 89. 45, 18
?_249:  mov     eax, dword [ebp+1CH]                    ; 4941 _ 8B. 45, 1C
        mov     dword [ebp-4H], eax                     ; 4944 _ 89. 45, FC
        jmp     ?_256                                   ; 4947 _ E9, 00000115

?_250:  mov     eax, dword [ebp+8H]                     ; 494C _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 494F _ 8B. 55, FC
        add     edx, 4                                  ; 4952 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 4955 _ 8B. 44 90, 04
        mov     dword [ebp-18H], eax                    ; 4959 _ 89. 45, E8
        mov     eax, dword [ebp-18H]                    ; 495C _ 8B. 45, E8
        mov     eax, dword [eax]                        ; 495F _ 8B. 00
        mov     dword [ebp-1CH], eax                    ; 4961 _ 89. 45, E4
        mov     eax, dword [ebp+8H]                     ; 4964 _ 8B. 45, 08
        add     eax, 1044                               ; 4967 _ 05, 00000414
        mov     edx, dword [ebp-18H]                    ; 496C _ 8B. 55, E8
        sub     edx, eax                                ; 496F _ 29. C2
        mov     eax, edx                                ; 4971 _ 89. D0
        sar     eax, 2                                  ; 4973 _ C1. F8, 02
        imul    eax, eax, 954437177                     ; 4976 _ 69. C0, 38E38E39
        mov     byte [ebp-1DH], al                      ; 497C _ 88. 45, E3
        mov     dword [ebp-0CH], 0                      ; 497F _ C7. 45, F4, 00000000
        jmp     ?_255                                   ; 4986 _ E9, 000000C3

?_251:  mov     eax, dword [ebp-18H]                    ; 498B _ 8B. 45, E8
        mov     edx, dword [eax+10H]                    ; 498E _ 8B. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 4991 _ 8B. 45, F4
        add     eax, edx                                ; 4994 _ 01. D0
        mov     dword [ebp-24H], eax                    ; 4996 _ 89. 45, DC
        mov     dword [ebp-8H], 0                       ; 4999 _ C7. 45, F8, 00000000
        jmp     ?_254                                   ; 49A0 _ E9, 00000096

?_252:  mov     eax, dword [ebp-18H]                    ; 49A5 _ 8B. 45, E8
        mov     edx, dword [eax+0CH]                    ; 49A8 _ 8B. 50, 0C
        mov     eax, dword [ebp-8H]                     ; 49AB _ 8B. 45, F8
        add     eax, edx                                ; 49AE _ 01. D0
        mov     dword [ebp-28H], eax                    ; 49B0 _ 89. 45, D8
        mov     eax, dword [ebp+0CH]                    ; 49B3 _ 8B. 45, 0C
        cmp     eax, dword [ebp-28H]                    ; 49B6 _ 3B. 45, D8
        jg      ?_253                                   ; 49B9 _ 7F, 7C
        mov     eax, dword [ebp-28H]                    ; 49BB _ 8B. 45, D8
        cmp     eax, dword [ebp+14H]                    ; 49BE _ 3B. 45, 14
        jge     ?_253                                   ; 49C1 _ 7D, 74
        mov     eax, dword [ebp+10H]                    ; 49C3 _ 8B. 45, 10
        cmp     eax, dword [ebp-24H]                    ; 49C6 _ 3B. 45, DC
        jg      ?_253                                   ; 49C9 _ 7F, 6C
        mov     eax, dword [ebp-24H]                    ; 49CB _ 8B. 45, DC
        cmp     eax, dword [ebp+18H]                    ; 49CE _ 3B. 45, 18
        jge     ?_253                                   ; 49D1 _ 7D, 64
        mov     eax, dword [ebp-18H]                    ; 49D3 _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 49D6 _ 8B. 40, 04
        imul    eax, dword [ebp-0CH]                    ; 49D9 _ 0F AF. 45, F4
        mov     edx, dword [ebp-8H]                     ; 49DD _ 8B. 55, F8
        add     eax, edx                                ; 49E0 _ 01. D0
        mov     edx, eax                                ; 49E2 _ 89. C2
        mov     eax, dword [ebp-1CH]                    ; 49E4 _ 8B. 45, E4
        add     eax, edx                                ; 49E7 _ 01. D0
        movzx   eax, byte [eax]                         ; 49E9 _ 0F B6. 00
        mov     byte [ebp-29H], al                      ; 49EC _ 88. 45, D7
        mov     eax, dword [ebp+8H]                     ; 49EF _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 49F2 _ 8B. 40, 08
        imul    eax, dword [ebp-24H]                    ; 49F5 _ 0F AF. 45, DC
        mov     edx, dword [ebp-28H]                    ; 49F9 _ 8B. 55, D8
        add     eax, edx                                ; 49FC _ 01. D0
        mov     edx, eax                                ; 49FE _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 4A00 _ 8B. 45, EC
        add     eax, edx                                ; 4A03 _ 01. D0
        movzx   eax, byte [eax]                         ; 4A05 _ 0F B6. 00
        cmp     byte [ebp-1DH], al                      ; 4A08 _ 38. 45, E3
        jnz     ?_253                                   ; 4A0B _ 75, 2A
        movzx   eax, byte [ebp-29H]                     ; 4A0D _ 0F B6. 45, D7
        mov     edx, dword [ebp-18H]                    ; 4A11 _ 8B. 55, E8
        mov     edx, dword [edx+14H]                    ; 4A14 _ 8B. 52, 14
        cmp     eax, edx                                ; 4A17 _ 39. D0
        jz      ?_253                                   ; 4A19 _ 74, 1C
        mov     eax, dword [ebp+8H]                     ; 4A1B _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 4A1E _ 8B. 40, 08
        imul    eax, dword [ebp-24H]                    ; 4A21 _ 0F AF. 45, DC
        mov     edx, dword [ebp-28H]                    ; 4A25 _ 8B. 55, D8
        add     eax, edx                                ; 4A28 _ 01. D0
        mov     edx, eax                                ; 4A2A _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 4A2C _ 8B. 45, F0
        add     edx, eax                                ; 4A2F _ 01. C2
        movzx   eax, byte [ebp-29H]                     ; 4A31 _ 0F B6. 45, D7
        mov     byte [edx], al                          ; 4A35 _ 88. 02
?_253:  add     dword [ebp-8H], 1                       ; 4A37 _ 83. 45, F8, 01
?_254:  mov     eax, dword [ebp-18H]                    ; 4A3B _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 4A3E _ 8B. 40, 04
        cmp     dword [ebp-8H], eax                     ; 4A41 _ 39. 45, F8
        jl      ?_252                                   ; 4A44 _ 0F 8C, FFFFFF5B
        add     dword [ebp-0CH], 1                      ; 4A4A _ 83. 45, F4, 01
?_255:  mov     eax, dword [ebp-18H]                    ; 4A4E _ 8B. 45, E8
        mov     eax, dword [eax+8H]                     ; 4A51 _ 8B. 40, 08
        cmp     dword [ebp-0CH], eax                    ; 4A54 _ 39. 45, F4
        jl      ?_251                                   ; 4A57 _ 0F 8C, FFFFFF2E
        add     dword [ebp-4H], 1                       ; 4A5D _ 83. 45, FC, 01
?_256:  mov     eax, dword [ebp-4H]                     ; 4A61 _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 4A64 _ 3B. 45, 20
        jle     ?_250                                   ; 4A67 _ 0F 8E, FFFFFEDF
        nop                                             ; 4A6D _ 90
        leave                                           ; 4A6E _ C9
        ret                                             ; 4A6F _ C3
; _sheet_refreshsub End of function

_sheet_refreshmap:; Function begin
        push    ebp                                     ; 4A70 _ 55
        mov     ebp, esp                                ; 4A71 _ 89. E5
        sub     esp, 64                                 ; 4A73 _ 83. EC, 40
        mov     eax, dword [ebp+8H]                     ; 4A76 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 4A79 _ 8B. 40, 04
        mov     dword [ebp-20H], eax                    ; 4A7C _ 89. 45, E0
        cmp     dword [ebp+0CH], 0                      ; 4A7F _ 83. 7D, 0C, 00
        jns     ?_257                                   ; 4A83 _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 4A85 _ C7. 45, 0C, 00000000
?_257:  cmp     dword [ebp+10H], 0                      ; 4A8C _ 83. 7D, 10, 00
        jns     ?_258                                   ; 4A90 _ 79, 07
        mov     dword [ebp+10H], 0                      ; 4A92 _ C7. 45, 10, 00000000
?_258:  mov     eax, dword [ebp+8H]                     ; 4A99 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 4A9C _ 8B. 40, 08
        cmp     dword [ebp+14H], eax                    ; 4A9F _ 39. 45, 14
        jle     ?_259                                   ; 4AA2 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 4AA4 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 4AA7 _ 8B. 40, 08
        mov     dword [ebp+14H], eax                    ; 4AAA _ 89. 45, 14
?_259:  mov     eax, dword [ebp+8H]                     ; 4AAD _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 4AB0 _ 8B. 40, 0C
        cmp     dword [ebp+18H], eax                    ; 4AB3 _ 39. 45, 18
        jle     ?_260                                   ; 4AB6 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 4AB8 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 4ABB _ 8B. 40, 0C
        mov     dword [ebp+18H], eax                    ; 4ABE _ 89. 45, 18
?_260:  mov     eax, dword [ebp+1CH]                    ; 4AC1 _ 8B. 45, 1C
        mov     dword [ebp-4H], eax                     ; 4AC4 _ 89. 45, FC
        jmp     ?_271                                   ; 4AC7 _ E9, 0000013F

?_261:  mov     eax, dword [ebp+8H]                     ; 4ACC _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 4ACF _ 8B. 55, FC
        add     edx, 4                                  ; 4AD2 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 4AD5 _ 8B. 44 90, 04
        mov     dword [ebp-24H], eax                    ; 4AD9 _ 89. 45, DC
        mov     eax, dword [ebp+8H]                     ; 4ADC _ 8B. 45, 08
        add     eax, 1044                               ; 4ADF _ 05, 00000414
        mov     edx, dword [ebp-24H]                    ; 4AE4 _ 8B. 55, DC
        sub     edx, eax                                ; 4AE7 _ 29. C2
        mov     eax, edx                                ; 4AE9 _ 89. D0
        sar     eax, 2                                  ; 4AEB _ C1. F8, 02
        imul    eax, eax, 954437177                     ; 4AEE _ 69. C0, 38E38E39
        mov     byte [ebp-25H], al                      ; 4AF4 _ 88. 45, DB
        mov     eax, dword [ebp-24H]                    ; 4AF7 _ 8B. 45, DC
        mov     eax, dword [eax]                        ; 4AFA _ 8B. 00
        mov     dword [ebp-2CH], eax                    ; 4AFC _ 89. 45, D4
        mov     eax, dword [ebp-24H]                    ; 4AFF _ 8B. 45, DC
        mov     eax, dword [eax+0CH]                    ; 4B02 _ 8B. 40, 0C
        mov     edx, dword [ebp+0CH]                    ; 4B05 _ 8B. 55, 0C
        sub     edx, eax                                ; 4B08 _ 29. C2
        mov     eax, edx                                ; 4B0A _ 89. D0
        mov     dword [ebp-10H], eax                    ; 4B0C _ 89. 45, F0
        mov     eax, dword [ebp-24H]                    ; 4B0F _ 8B. 45, DC
        mov     eax, dword [eax+10H]                    ; 4B12 _ 8B. 40, 10
        mov     edx, dword [ebp+10H]                    ; 4B15 _ 8B. 55, 10
        sub     edx, eax                                ; 4B18 _ 29. C2
        mov     eax, edx                                ; 4B1A _ 89. D0
        mov     dword [ebp-14H], eax                    ; 4B1C _ 89. 45, EC
        mov     eax, dword [ebp-24H]                    ; 4B1F _ 8B. 45, DC
        mov     eax, dword [eax+0CH]                    ; 4B22 _ 8B. 40, 0C
        mov     edx, dword [ebp+14H]                    ; 4B25 _ 8B. 55, 14
        sub     edx, eax                                ; 4B28 _ 29. C2
        mov     eax, edx                                ; 4B2A _ 89. D0
        mov     dword [ebp-18H], eax                    ; 4B2C _ 89. 45, E8
        mov     eax, dword [ebp-24H]                    ; 4B2F _ 8B. 45, DC
        mov     eax, dword [eax+10H]                    ; 4B32 _ 8B. 40, 10
        mov     edx, dword [ebp+18H]                    ; 4B35 _ 8B. 55, 18
        sub     edx, eax                                ; 4B38 _ 29. C2
        mov     eax, edx                                ; 4B3A _ 89. D0
        mov     dword [ebp-1CH], eax                    ; 4B3C _ 89. 45, E4
        cmp     dword [ebp-10H], 0                      ; 4B3F _ 83. 7D, F0, 00
        jns     ?_262                                   ; 4B43 _ 79, 07
        mov     dword [ebp-10H], 0                      ; 4B45 _ C7. 45, F0, 00000000
?_262:  cmp     dword [ebp-14H], 0                      ; 4B4C _ 83. 7D, EC, 00
        jns     ?_263                                   ; 4B50 _ 79, 07
        mov     dword [ebp-14H], 0                      ; 4B52 _ C7. 45, EC, 00000000
?_263:  mov     eax, dword [ebp-24H]                    ; 4B59 _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 4B5C _ 8B. 40, 04
        cmp     dword [ebp-18H], eax                    ; 4B5F _ 39. 45, E8
        jle     ?_264                                   ; 4B62 _ 7E, 09
        mov     eax, dword [ebp-24H]                    ; 4B64 _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 4B67 _ 8B. 40, 04
        mov     dword [ebp-18H], eax                    ; 4B6A _ 89. 45, E8
?_264:  mov     eax, dword [ebp-24H]                    ; 4B6D _ 8B. 45, DC
        mov     eax, dword [eax+8H]                     ; 4B70 _ 8B. 40, 08
        cmp     dword [ebp-1CH], eax                    ; 4B73 _ 39. 45, E4
        jle     ?_265                                   ; 4B76 _ 7E, 09
        mov     eax, dword [ebp-24H]                    ; 4B78 _ 8B. 45, DC
        mov     eax, dword [eax+8H]                     ; 4B7B _ 8B. 40, 08
        mov     dword [ebp-1CH], eax                    ; 4B7E _ 89. 45, E4
?_265:  mov     eax, dword [ebp-14H]                    ; 4B81 _ 8B. 45, EC
        mov     dword [ebp-0CH], eax                    ; 4B84 _ 89. 45, F4
        jmp     ?_270                                   ; 4B87 _ EB, 76

?_266:  mov     eax, dword [ebp-24H]                    ; 4B89 _ 8B. 45, DC
        mov     edx, dword [eax+10H]                    ; 4B8C _ 8B. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 4B8F _ 8B. 45, F4
        add     eax, edx                                ; 4B92 _ 01. D0
        mov     dword [ebp-30H], eax                    ; 4B94 _ 89. 45, D0
        mov     eax, dword [ebp-10H]                    ; 4B97 _ 8B. 45, F0
        mov     dword [ebp-8H], eax                     ; 4B9A _ 89. 45, F8
        jmp     ?_269                                   ; 4B9D _ EB, 54

?_267:  mov     eax, dword [ebp-24H]                    ; 4B9F _ 8B. 45, DC
        mov     edx, dword [eax+0CH]                    ; 4BA2 _ 8B. 50, 0C
        mov     eax, dword [ebp-8H]                     ; 4BA5 _ 8B. 45, F8
        add     eax, edx                                ; 4BA8 _ 01. D0
        mov     dword [ebp-34H], eax                    ; 4BAA _ 89. 45, CC
        mov     eax, dword [ebp-24H]                    ; 4BAD _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 4BB0 _ 8B. 40, 04
        imul    eax, dword [ebp-0CH]                    ; 4BB3 _ 0F AF. 45, F4
        mov     edx, dword [ebp-8H]                     ; 4BB7 _ 8B. 55, F8
        add     eax, edx                                ; 4BBA _ 01. D0
        mov     edx, eax                                ; 4BBC _ 89. C2
        mov     eax, dword [ebp-2CH]                    ; 4BBE _ 8B. 45, D4
        add     eax, edx                                ; 4BC1 _ 01. D0
        movzx   eax, byte [eax]                         ; 4BC3 _ 0F B6. 00
        movzx   eax, al                                 ; 4BC6 _ 0F B6. C0
        mov     edx, dword [ebp-24H]                    ; 4BC9 _ 8B. 55, DC
        mov     edx, dword [edx+14H]                    ; 4BCC _ 8B. 52, 14
        cmp     eax, edx                                ; 4BCF _ 39. D0
        jz      ?_268                                   ; 4BD1 _ 74, 1C
        mov     eax, dword [ebp+8H]                     ; 4BD3 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 4BD6 _ 8B. 40, 08
        imul    eax, dword [ebp-30H]                    ; 4BD9 _ 0F AF. 45, D0
        mov     edx, dword [ebp-34H]                    ; 4BDD _ 8B. 55, CC
        add     eax, edx                                ; 4BE0 _ 01. D0
        mov     edx, eax                                ; 4BE2 _ 89. C2
        mov     eax, dword [ebp-20H]                    ; 4BE4 _ 8B. 45, E0
        add     edx, eax                                ; 4BE7 _ 01. C2
        movzx   eax, byte [ebp-25H]                     ; 4BE9 _ 0F B6. 45, DB
        mov     byte [edx], al                          ; 4BED _ 88. 02
?_268:  add     dword [ebp-8H], 1                       ; 4BEF _ 83. 45, F8, 01
?_269:  mov     eax, dword [ebp-8H]                     ; 4BF3 _ 8B. 45, F8
        cmp     eax, dword [ebp-18H]                    ; 4BF6 _ 3B. 45, E8
        jl      ?_267                                   ; 4BF9 _ 7C, A4
        add     dword [ebp-0CH], 1                      ; 4BFB _ 83. 45, F4, 01
?_270:  mov     eax, dword [ebp-0CH]                    ; 4BFF _ 8B. 45, F4
        cmp     eax, dword [ebp-1CH]                    ; 4C02 _ 3B. 45, E4
        jl      ?_266                                   ; 4C05 _ 7C, 82
        add     dword [ebp-4H], 1                       ; 4C07 _ 83. 45, FC, 01
?_271:  mov     eax, dword [ebp+8H]                     ; 4C0B _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 4C0E _ 8B. 40, 10
        cmp     dword [ebp-4H], eax                     ; 4C11 _ 39. 45, FC
        jle     ?_261                                   ; 4C14 _ 0F 8E, FFFFFEB2
        nop                                             ; 4C1A _ 90
        leave                                           ; 4C1B _ C9
        ret                                             ; 4C1C _ C3
; _sheet_refreshmap End of function

_sheet_free:; Function begin
        push    ebp                                     ; 4C1D _ 55
        mov     ebp, esp                                ; 4C1E _ 89. E5
        sub     esp, 24                                 ; 4C20 _ 83. EC, 18
        mov     eax, dword [ebp+0CH]                    ; 4C23 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 4C26 _ 8B. 40, 18
        test    eax, eax                                ; 4C29 _ 85. C0
        js      ?_272                                   ; 4C2B _ 78, 1A
        mov     dword [esp+8H], -1                      ; 4C2D _ C7. 44 24, 08, FFFFFFFF
        mov     eax, dword [ebp+0CH]                    ; 4C35 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 4C38 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4C3C _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4C3F _ 89. 04 24
        call    _sheet_updown                           ; 4C42 _ E8, FFFFF6EB
?_272:  mov     eax, dword [ebp+0CH]                    ; 4C47 _ 8B. 45, 0C
        mov     dword [eax+1CH], 0                      ; 4C4A _ C7. 40, 1C, 00000000
        nop                                             ; 4C51 _ 90
        leave                                           ; 4C52 _ C9
        ret                                             ; 4C53 _ C3
; _sheet_free End of function


_memman_init:
        push    ebp                                     ; 4C54 _ 55
        mov     ebp, esp                                ; 4C55 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 4C57 _ 8B. 45, 08
        mov     dword [eax], 0                          ; 4C5A _ C7. 00, 00000000
        mov     eax, dword [ebp+8H]                     ; 4C60 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 4C63 _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 4C6A _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 4C6D _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 4C74 _ 8B. 45, 08
        mov     dword [eax+0CH], 0                      ; 4C77 _ C7. 40, 0C, 00000000
        nop                                             ; 4C7E _ 90
        pop     ebp                                     ; 4C7F _ 5D
        ret                                             ; 4C80 _ C3

_memman_total:; Function begin
        push    ebp                                     ; 4C81 _ 55
        mov     ebp, esp                                ; 4C82 _ 89. E5
        sub     esp, 16                                 ; 4C84 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 4C87 _ C7. 45, F8, 00000000
        mov     dword [ebp-4H], 0                       ; 4C8E _ C7. 45, FC, 00000000
        jmp     ?_274                                   ; 4C95 _ EB, 14

?_273:  mov     eax, dword [ebp+8H]                     ; 4C97 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 4C9A _ 8B. 55, FC
        add     edx, 2                                  ; 4C9D _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 4CA0 _ 8B. 44 D0, 04
        add     dword [ebp-8H], eax                     ; 4CA4 _ 01. 45, F8
        add     dword [ebp-4H], 1                       ; 4CA7 _ 83. 45, FC, 01
?_274:  mov     eax, dword [ebp+8H]                     ; 4CAB _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 4CAE _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 4CB0 _ 39. 45, FC
        jc      ?_273                                   ; 4CB3 _ 72, E2
        mov     eax, dword [ebp-8H]                     ; 4CB5 _ 8B. 45, F8
        leave                                           ; 4CB8 _ C9
        ret                                             ; 4CB9 _ C3
; _memman_total End of function

_memman_alloc:; Function begin
        push    ebp                                     ; 4CBA _ 55
        mov     ebp, esp                                ; 4CBB _ 89. E5
        push    ebx                                     ; 4CBD _ 53
        sub     esp, 16                                 ; 4CBE _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 4CC1 _ C7. 45, F8, 00000000
        jmp     ?_280                                   ; 4CC8 _ E9, 000000BB

?_275:  mov     eax, dword [ebp+8H]                     ; 4CCD _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 4CD0 _ 8B. 55, F8
        add     edx, 2                                  ; 4CD3 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 4CD6 _ 8B. 44 D0, 04
        cmp     dword [ebp+0CH], eax                    ; 4CDA _ 39. 45, 0C
        ja      ?_279                                   ; 4CDD _ 0F 87, 000000A1
        mov     eax, dword [ebp+8H]                     ; 4CE3 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 4CE6 _ 8B. 55, F8
        add     edx, 2                                  ; 4CE9 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 4CEC _ 8B. 04 D0
        mov     dword [ebp-0CH], eax                    ; 4CEF _ 89. 45, F4
        mov     eax, dword [ebp+8H]                     ; 4CF2 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 4CF5 _ 8B. 55, F8
        add     edx, 2                                  ; 4CF8 _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 4CFB _ 8B. 14 D0
        mov     eax, dword [ebp+0CH]                    ; 4CFE _ 8B. 45, 0C
        lea     ecx, [edx+eax]                          ; 4D01 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 4D04 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 4D07 _ 8B. 55, F8
        add     edx, 2                                  ; 4D0A _ 83. C2, 02
        mov     dword [eax+edx*8], ecx                  ; 4D0D _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 4D10 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 4D13 _ 8B. 55, F8
        add     edx, 2                                  ; 4D16 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 4D19 _ 8B. 44 D0, 04
        sub     eax, dword [ebp+0CH]                    ; 4D1D _ 2B. 45, 0C
        mov     edx, dword [ebp+8H]                     ; 4D20 _ 8B. 55, 08
        mov     ecx, dword [ebp-8H]                     ; 4D23 _ 8B. 4D, F8
        add     ecx, 2                                  ; 4D26 _ 83. C1, 02
        mov     dword [edx+ecx*8+4H], eax               ; 4D29 _ 89. 44 CA, 04
        mov     eax, dword [ebp+8H]                     ; 4D2D _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 4D30 _ 8B. 55, F8
        add     edx, 2                                  ; 4D33 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 4D36 _ 8B. 44 D0, 04
        test    eax, eax                                ; 4D3A _ 85. C0
        jnz     ?_278                                   ; 4D3C _ 75, 41
        mov     eax, dword [ebp+8H]                     ; 4D3E _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 4D41 _ 8B. 00
        lea     edx, [eax-1H]                           ; 4D43 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 4D46 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 4D49 _ 89. 10
        jmp     ?_277                                   ; 4D4B _ EB, 28

?_276:  mov     eax, dword [ebp-8H]                     ; 4D4D _ 8B. 45, F8
        lea     edx, [eax+1H]                           ; 4D50 _ 8D. 50, 01
        mov     ecx, dword [ebp+8H]                     ; 4D53 _ 8B. 4D, 08
        mov     eax, dword [ebp-8H]                     ; 4D56 _ 8B. 45, F8
        lea     ebx, [eax+2H]                           ; 4D59 _ 8D. 58, 02
        mov     eax, dword [ebp+8H]                     ; 4D5C _ 8B. 45, 08
        add     edx, 2                                  ; 4D5F _ 83. C2, 02
        lea     edx, [eax+edx*8]                        ; 4D62 _ 8D. 14 D0
        mov     eax, dword [edx]                        ; 4D65 _ 8B. 02
        mov     edx, dword [edx+4H]                     ; 4D67 _ 8B. 52, 04
        mov     dword [ecx+ebx*8], eax                  ; 4D6A _ 89. 04 D9
        mov     dword [ecx+ebx*8+4H], edx               ; 4D6D _ 89. 54 D9, 04
        add     dword [ebp-8H], 1                       ; 4D71 _ 83. 45, F8, 01
?_277:  mov     eax, dword [ebp+8H]                     ; 4D75 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 4D78 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 4D7A _ 39. 45, F8
        jc      ?_276                                   ; 4D7D _ 72, CE
?_278:  mov     eax, dword [ebp-0CH]                    ; 4D7F _ 8B. 45, F4
        jmp     ?_281                                   ; 4D82 _ EB, 17

?_279:  add     dword [ebp-8H], 1                       ; 4D84 _ 83. 45, F8, 01
?_280:  mov     eax, dword [ebp+8H]                     ; 4D88 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 4D8B _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 4D8D _ 39. 45, F8
        jc      ?_275                                   ; 4D90 _ 0F 82, FFFFFF37
        mov     eax, 0                                  ; 4D96 _ B8, 00000000
?_281:  add     esp, 16                                 ; 4D9B _ 83. C4, 10
        pop     ebx                                     ; 4D9E _ 5B
        pop     ebp                                     ; 4D9F _ 5D
        ret                                             ; 4DA0 _ C3
; _memman_alloc End of function

_memman_free:; Function begin
        push    ebp                                     ; 4DA1 _ 55
        mov     ebp, esp                                ; 4DA2 _ 89. E5
        push    ebx                                     ; 4DA4 _ 53
        sub     esp, 16                                 ; 4DA5 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 4DA8 _ C7. 45, F8, 00000000
        jmp     ?_283                                   ; 4DAF _ EB, 15

?_282:  mov     eax, dword [ebp+8H]                     ; 4DB1 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 4DB4 _ 8B. 55, F8
        add     edx, 2                                  ; 4DB7 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 4DBA _ 8B. 04 D0
        cmp     dword [ebp+0CH], eax                    ; 4DBD _ 39. 45, 0C
        jc      ?_284                                   ; 4DC0 _ 72, 10
        add     dword [ebp-8H], 1                       ; 4DC2 _ 83. 45, F8, 01
?_283:  mov     eax, dword [ebp+8H]                     ; 4DC6 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 4DC9 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 4DCB _ 39. 45, F8
        jl      ?_282                                   ; 4DCE _ 7C, E1
        jmp     ?_285                                   ; 4DD0 _ EB, 01

?_284:  nop                                             ; 4DD2 _ 90
?_285:  cmp     dword [ebp-8H], 0                       ; 4DD3 _ 83. 7D, F8, 00
        jle     ?_289                                   ; 4DD7 _ 0F 8E, 000000F0
        mov     eax, dword [ebp-8H]                     ; 4DDD _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 4DE0 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 4DE3 _ 8B. 45, 08
        add     edx, 2                                  ; 4DE6 _ 83. C2, 02
        mov     ecx, dword [eax+edx*8]                  ; 4DE9 _ 8B. 0C D0
        mov     eax, dword [ebp-8H]                     ; 4DEC _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 4DEF _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 4DF2 _ 8B. 45, 08
        add     edx, 2                                  ; 4DF5 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 4DF8 _ 8B. 44 D0, 04
        add     eax, ecx                                ; 4DFC _ 01. C8
        cmp     dword [ebp+0CH], eax                    ; 4DFE _ 39. 45, 0C
        jne     ?_289                                   ; 4E01 _ 0F 85, 000000C6
        mov     eax, dword [ebp-8H]                     ; 4E07 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 4E0A _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 4E0D _ 8B. 45, 08
        add     edx, 2                                  ; 4E10 _ 83. C2, 02
        mov     ecx, dword [eax+edx*8+4H]               ; 4E13 _ 8B. 4C D0, 04
        mov     eax, dword [ebp-8H]                     ; 4E17 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 4E1A _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 4E1D _ 8B. 45, 10
        add     ecx, eax                                ; 4E20 _ 01. C1
        mov     eax, dword [ebp+8H]                     ; 4E22 _ 8B. 45, 08
        add     edx, 2                                  ; 4E25 _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 4E28 _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 4E2C _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 4E2F _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 4E31 _ 39. 45, F8
        jge     ?_288                                   ; 4E34 _ 0F 8D, 00000089
        mov     edx, dword [ebp+0CH]                    ; 4E3A _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 4E3D _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 4E40 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 4E43 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 4E46 _ 8B. 55, F8
        add     edx, 2                                  ; 4E49 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 4E4C _ 8B. 04 D0
        cmp     ecx, eax                                ; 4E4F _ 39. C1
        jnz     ?_288                                   ; 4E51 _ 75, 70
        mov     eax, dword [ebp-8H]                     ; 4E53 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 4E56 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 4E59 _ 8B. 45, 08
        add     edx, 2                                  ; 4E5C _ 83. C2, 02
        mov     ecx, dword [eax+edx*8+4H]               ; 4E5F _ 8B. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 4E63 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 4E66 _ 8B. 55, F8
        add     edx, 2                                  ; 4E69 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 4E6C _ 8B. 44 D0, 04
        mov     edx, dword [ebp-8H]                     ; 4E70 _ 8B. 55, F8
        sub     edx, 1                                  ; 4E73 _ 83. EA, 01
        add     ecx, eax                                ; 4E76 _ 01. C1
        mov     eax, dword [ebp+8H]                     ; 4E78 _ 8B. 45, 08
        add     edx, 2                                  ; 4E7B _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 4E7E _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 4E82 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 4E85 _ 8B. 00
        lea     edx, [eax-1H]                           ; 4E87 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 4E8A _ 8B. 45, 08
        mov     dword [eax], edx                        ; 4E8D _ 89. 10
        jmp     ?_287                                   ; 4E8F _ EB, 28

?_286:  mov     eax, dword [ebp-8H]                     ; 4E91 _ 8B. 45, F8
        lea     edx, [eax+1H]                           ; 4E94 _ 8D. 50, 01
        mov     ecx, dword [ebp+8H]                     ; 4E97 _ 8B. 4D, 08
        mov     eax, dword [ebp-8H]                     ; 4E9A _ 8B. 45, F8
        lea     ebx, [eax+2H]                           ; 4E9D _ 8D. 58, 02
        mov     eax, dword [ebp+8H]                     ; 4EA0 _ 8B. 45, 08
        add     edx, 2                                  ; 4EA3 _ 83. C2, 02
        lea     edx, [eax+edx*8]                        ; 4EA6 _ 8D. 14 D0
        mov     eax, dword [edx]                        ; 4EA9 _ 8B. 02
        mov     edx, dword [edx+4H]                     ; 4EAB _ 8B. 52, 04
        mov     dword [ecx+ebx*8], eax                  ; 4EAE _ 89. 04 D9
        mov     dword [ecx+ebx*8+4H], edx               ; 4EB1 _ 89. 54 D9, 04
        add     dword [ebp-8H], 1                       ; 4EB5 _ 83. 45, F8, 01
?_287:  mov     eax, dword [ebp+8H]                     ; 4EB9 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 4EBC _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 4EBE _ 39. 45, F8
        jl      ?_286                                   ; 4EC1 _ 7C, CE
?_288:  mov     eax, 0                                  ; 4EC3 _ B8, 00000000
        jmp     ?_295                                   ; 4EC8 _ E9, 0000011C

?_289:  mov     eax, dword [ebp+8H]                     ; 4ECD _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 4ED0 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 4ED2 _ 39. 45, F8
        jge     ?_290                                   ; 4ED5 _ 7D, 52
        mov     edx, dword [ebp+0CH]                    ; 4ED7 _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 4EDA _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 4EDD _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 4EE0 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 4EE3 _ 8B. 55, F8
        add     edx, 2                                  ; 4EE6 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 4EE9 _ 8B. 04 D0
        cmp     ecx, eax                                ; 4EEC _ 39. C1
        jnz     ?_290                                   ; 4EEE _ 75, 39
        mov     eax, dword [ebp+8H]                     ; 4EF0 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 4EF3 _ 8B. 55, F8
        add     edx, 2                                  ; 4EF6 _ 83. C2, 02
        mov     ecx, dword [ebp+0CH]                    ; 4EF9 _ 8B. 4D, 0C
        mov     dword [eax+edx*8], ecx                  ; 4EFC _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 4EFF _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 4F02 _ 8B. 55, F8
        add     edx, 2                                  ; 4F05 _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 4F08 _ 8B. 54 D0, 04
        mov     eax, dword [ebp+10H]                    ; 4F0C _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 4F0F _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 4F12 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 4F15 _ 8B. 55, F8
        add     edx, 2                                  ; 4F18 _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 4F1B _ 89. 4C D0, 04
        mov     eax, 0                                  ; 4F1F _ B8, 00000000
        jmp     ?_295                                   ; 4F24 _ E9, 000000C0

?_290:  mov     eax, dword [ebp+8H]                     ; 4F29 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 4F2C _ 8B. 00
        cmp     eax, 4095                               ; 4F2E _ 3D, 00000FFF
        jg      ?_294                                   ; 4F33 _ 0F 8F, 00000087
        mov     eax, dword [ebp+8H]                     ; 4F39 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 4F3C _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 4F3E _ 89. 45, F4
        jmp     ?_292                                   ; 4F41 _ EB, 28

?_291:  mov     eax, dword [ebp-0CH]                    ; 4F43 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 4F46 _ 8D. 50, FF
        mov     ecx, dword [ebp+8H]                     ; 4F49 _ 8B. 4D, 08
        mov     eax, dword [ebp-0CH]                    ; 4F4C _ 8B. 45, F4
        lea     ebx, [eax+2H]                           ; 4F4F _ 8D. 58, 02
        mov     eax, dword [ebp+8H]                     ; 4F52 _ 8B. 45, 08
        add     edx, 2                                  ; 4F55 _ 83. C2, 02
        lea     edx, [eax+edx*8]                        ; 4F58 _ 8D. 14 D0
        mov     eax, dword [edx]                        ; 4F5B _ 8B. 02
        mov     edx, dword [edx+4H]                     ; 4F5D _ 8B. 52, 04
        mov     dword [ecx+ebx*8], eax                  ; 4F60 _ 89. 04 D9
        mov     dword [ecx+ebx*8+4H], edx               ; 4F63 _ 89. 54 D9, 04
        sub     dword [ebp-0CH], 1                      ; 4F67 _ 83. 6D, F4, 01
?_292:  mov     eax, dword [ebp-0CH]                    ; 4F6B _ 8B. 45, F4
        cmp     eax, dword [ebp-8H]                     ; 4F6E _ 3B. 45, F8
        jg      ?_291                                   ; 4F71 _ 7F, D0
        mov     eax, dword [ebp+8H]                     ; 4F73 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 4F76 _ 8B. 00
        lea     edx, [eax+1H]                           ; 4F78 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 4F7B _ 8B. 45, 08
        mov     dword [eax], edx                        ; 4F7E _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 4F80 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 4F83 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 4F86 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 4F89 _ 8B. 00
        cmp     edx, eax                                ; 4F8B _ 39. C2
        jge     ?_293                                   ; 4F8D _ 7D, 0B
        mov     eax, dword [ebp+8H]                     ; 4F8F _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 4F92 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 4F94 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 4F97 _ 89. 50, 04
?_293:  mov     eax, dword [ebp+8H]                     ; 4F9A _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 4F9D _ 8B. 55, F8
        add     edx, 2                                  ; 4FA0 _ 83. C2, 02
        mov     ecx, dword [ebp+0CH]                    ; 4FA3 _ 8B. 4D, 0C
        mov     dword [eax+edx*8], ecx                  ; 4FA6 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 4FA9 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 4FAC _ 8B. 55, F8
        add     edx, 2                                  ; 4FAF _ 83. C2, 02
        mov     ecx, dword [ebp+10H]                    ; 4FB2 _ 8B. 4D, 10
        mov     dword [eax+edx*8+4H], ecx               ; 4FB5 _ 89. 4C D0, 04
        mov     eax, 0                                  ; 4FB9 _ B8, 00000000
        jmp     ?_295                                   ; 4FBE _ EB, 29

?_294:  mov     eax, dword [ebp+8H]                     ; 4FC0 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 4FC3 _ 8B. 40, 0C
        lea     edx, [eax+1H]                           ; 4FC6 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 4FC9 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 4FCC _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 4FCF _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 4FD2 _ 8B. 40, 08
        mov     edx, eax                                ; 4FD5 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 4FD7 _ 8B. 45, 10
        add     eax, edx                                ; 4FDA _ 01. D0
        mov     edx, eax                                ; 4FDC _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 4FDE _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 4FE1 _ 89. 50, 08
        mov     eax, 4294967295                         ; 4FE4 _ B8, FFFFFFFF
?_295:  add     esp, 16                                 ; 4FE9 _ 83. C4, 10
        pop     ebx                                     ; 4FEC _ 5B
        pop     ebp                                     ; 4FED _ 5D
        ret                                             ; 4FEE _ C3
; _memman_free End of function

_memman_alloc_4k:; Function begin
        push    ebp                                     ; 4FEF _ 55
        mov     ebp, esp                                ; 4FF0 _ 89. E5
        sub     esp, 24                                 ; 4FF2 _ 83. EC, 18
        mov     eax, dword [ebp+0CH]                    ; 4FF5 _ 8B. 45, 0C
        add     eax, 4095                               ; 4FF8 _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 4FFD _ 25, FFFFF000
        mov     dword [ebp+0CH], eax                    ; 5002 _ 89. 45, 0C
        mov     eax, dword [ebp+0CH]                    ; 5005 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 5008 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 500C _ 8B. 45, 08
        mov     dword [esp], eax                        ; 500F _ 89. 04 24
        call    _memman_alloc                           ; 5012 _ E8, FFFFFCA3
        mov     dword [ebp-4H], eax                     ; 5017 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 501A _ 8B. 45, FC
        leave                                           ; 501D _ C9
        ret                                             ; 501E _ C3
; _memman_alloc_4k End of function

_memman_free_4k:; Function begin
        push    ebp                                     ; 501F _ 55
        mov     ebp, esp                                ; 5020 _ 89. E5
        sub     esp, 28                                 ; 5022 _ 83. EC, 1C
        mov     eax, dword [ebp+10H]                    ; 5025 _ 8B. 45, 10
        add     eax, 4095                               ; 5028 _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 502D _ 25, FFFFF000
        mov     dword [ebp+10H], eax                    ; 5032 _ 89. 45, 10
        mov     eax, dword [ebp+10H]                    ; 5035 _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 5038 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 503C _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 503F _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 5043 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 5046 _ 89. 04 24
        call    _memman_free                            ; 5049 _ E8, FFFFFD53
        mov     dword [ebp-4H], eax                     ; 504E _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 5051 _ 8B. 45, FC
        leave                                           ; 5054 _ C9
        ret                                             ; 5055 _ C3
; _memman_free_4k End of function

        nop                                             ; 5056 _ 90
        nop                                             ; 5057 _ 90


_fifo8_init:
        push    ebp                                     ; 5058 _ 55
        mov     ebp, esp                                ; 5059 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 505B _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 505E _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 5061 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 5064 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 5067 _ 8B. 55, 10
        mov     dword [eax], edx                        ; 506A _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 506C _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 506F _ 8B. 55, 0C
        mov     dword [eax+10H], edx                    ; 5072 _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 5075 _ 8B. 45, 08
        mov     dword [eax+14H], 0                      ; 5078 _ C7. 40, 14, 00000000
        mov     eax, dword [ebp+8H]                     ; 507F _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 5082 _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 5089 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 508C _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 5093 _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 5096 _ 8B. 55, 14
        mov     dword [eax+18H], edx                    ; 5099 _ 89. 50, 18
        nop                                             ; 509C _ 90
        pop     ebp                                     ; 509D _ 5D
        ret                                             ; 509E _ C3

_fifo8_put:; Function begin
        push    ebp                                     ; 509F _ 55
        mov     ebp, esp                                ; 50A0 _ 89. E5
        sub     esp, 40                                 ; 50A2 _ 83. EC, 28
        mov     eax, dword [ebp+0CH]                    ; 50A5 _ 8B. 45, 0C
        mov     byte [ebp-0CH], al                      ; 50A8 _ 88. 45, F4
        cmp     dword [ebp+8H], 0                       ; 50AB _ 83. 7D, 08, 00
        jnz     ?_296                                   ; 50AF _ 75, 0A
        mov     eax, 4294967295                         ; 50B1 _ B8, FFFFFFFF
        jmp     ?_300                                   ; 50B6 _ E9, 000000AB

?_296:  mov     eax, dword [ebp+8H]                     ; 50BB _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 50BE _ 8B. 40, 10
        test    eax, eax                                ; 50C1 _ 85. C0
        jnz     ?_297                                   ; 50C3 _ 75, 1B
        mov     eax, dword [ebp+8H]                     ; 50C5 _ 8B. 45, 08
        mov     eax, dword [eax+14H]                    ; 50C8 _ 8B. 40, 14
        or      eax, 01H                                ; 50CB _ 83. C8, 01
        mov     edx, eax                                ; 50CE _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 50D0 _ 8B. 45, 08
        mov     dword [eax+14H], edx                    ; 50D3 _ 89. 50, 14
        mov     eax, 4294967295                         ; 50D6 _ B8, FFFFFFFF
        jmp     ?_300                                   ; 50DB _ E9, 00000086

?_297:  mov     eax, dword [ebp+8H]                     ; 50E0 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 50E3 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 50E5 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 50E8 _ 8B. 40, 04
        add     edx, eax                                ; 50EB _ 01. C2
        movzx   eax, byte [ebp-0CH]                     ; 50ED _ 0F B6. 45, F4
        mov     byte [edx], al                          ; 50F1 _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 50F3 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 50F6 _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 50F9 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 50FC _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 50FF _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 5102 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 5105 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 5108 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 510B _ 8B. 40, 0C
        cmp     edx, eax                                ; 510E _ 39. C2
        jnz     ?_298                                   ; 5110 _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 5112 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 5115 _ C7. 40, 04, 00000000
?_298:  mov     eax, dword [ebp+8H]                     ; 511C _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 511F _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 5122 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 5125 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 5128 _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 512B _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 512E _ 8B. 40, 18
        test    eax, eax                                ; 5131 _ 85. C0
        jz      ?_299                                   ; 5133 _ 74, 2C
        mov     eax, dword [ebp+8H]                     ; 5135 _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 5138 _ 8B. 40, 18
        mov     eax, dword [eax+4H]                     ; 513B _ 8B. 40, 04
        cmp     eax, 2                                  ; 513E _ 83. F8, 02
        jz      ?_299                                   ; 5141 _ 74, 1E
        mov     eax, dword [ebp+8H]                     ; 5143 _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 5146 _ 8B. 40, 18
        mov     dword [esp+8H], 0                       ; 5149 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], -1                      ; 5151 _ C7. 44 24, 04, FFFFFFFF
        mov     dword [esp], eax                        ; 5159 _ 89. 04 24
        call    _task_run                               ; 515C _ E8, 00000000(rel)
?_299:  mov     eax, 0                                  ; 5161 _ B8, 00000000
?_300:  leave                                           ; 5166 _ C9
        ret                                             ; 5167 _ C3
; _fifo8_put End of function

_fifo8_get:; Function begin
        push    ebp                                     ; 5168 _ 55
        mov     ebp, esp                                ; 5169 _ 89. E5
        sub     esp, 16                                 ; 516B _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 516E _ 8B. 45, 08
        mov     edx, dword [eax+10H]                    ; 5171 _ 8B. 50, 10
        mov     eax, dword [ebp+8H]                     ; 5174 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 5177 _ 8B. 40, 0C
        cmp     edx, eax                                ; 517A _ 39. C2
        jnz     ?_301                                   ; 517C _ 75, 07
        mov     eax, 4294967295                         ; 517E _ B8, FFFFFFFF
        jmp     ?_303                                   ; 5183 _ EB, 51

?_301:  mov     eax, dword [ebp+8H]                     ; 5185 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 5188 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 518A _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 518D _ 8B. 40, 08
        add     eax, edx                                ; 5190 _ 01. D0
        movzx   eax, byte [eax]                         ; 5192 _ 0F B6. 00
        movzx   eax, al                                 ; 5195 _ 0F B6. C0
        mov     dword [ebp-4H], eax                     ; 5198 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 519B _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 519E _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 51A1 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 51A4 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 51A7 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 51AA _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 51AD _ 8B. 50, 08
        mov     eax, dword [ebp+8H]                     ; 51B0 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 51B3 _ 8B. 40, 0C
        cmp     edx, eax                                ; 51B6 _ 39. C2
        jnz     ?_302                                   ; 51B8 _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 51BA _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 51BD _ C7. 40, 08, 00000000
?_302:  mov     eax, dword [ebp+8H]                     ; 51C4 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 51C7 _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 51CA _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 51CD _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 51D0 _ 89. 50, 10
        mov     eax, dword [ebp-4H]                     ; 51D3 _ 8B. 45, FC
?_303:  leave                                           ; 51D6 _ C9
        ret                                             ; 51D7 _ C3
; _fifo8_get End of function

_fifo8_status:; Function begin
        push    ebp                                     ; 51D8 _ 55
        mov     ebp, esp                                ; 51D9 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 51DB _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 51DE _ 8B. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 51E1 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 51E4 _ 8B. 40, 10
        sub     edx, eax                                ; 51E7 _ 29. C2
        mov     eax, edx                                ; 51E9 _ 89. D0
        pop     ebp                                     ; 51EB _ 5D
        ret                                             ; 51EC _ C3
; _fifo8_status End of function

        nop                                             ; 51ED _ 90
        nop                                             ; 51EE _ 90
        nop                                             ; 51EF _ 90


_init_pit:
        push    ebp                                     ; 51F0 _ 55
        mov     ebp, esp                                ; 51F1 _ 89. E5
        sub     esp, 40                                 ; 51F3 _ 83. EC, 28
        mov     dword [esp+4H], 52                      ; 51F6 _ C7. 44 24, 04, 00000034
        mov     dword [esp], 67                         ; 51FE _ C7. 04 24, 00000043
        call    _io_out8                                ; 5205 _ E8, 00000000(rel)
        mov     dword [esp+4H], 156                     ; 520A _ C7. 44 24, 04, 0000009C
        mov     dword [esp], 64                         ; 5212 _ C7. 04 24, 00000040
        call    _io_out8                                ; 5219 _ E8, 00000000(rel)
        mov     dword [esp+4H], 46                      ; 521E _ C7. 44 24, 04, 0000002E
        mov     dword [esp], 64                         ; 5226 _ C7. 04 24, 00000040
        call    _io_out8                                ; 522D _ E8, 00000000(rel)
        mov     dword [_timerctl], 0                         ; 5232 _ C7. 05, 00000000(d), 00000000
        mov     dword [ebp-0CH], 0                      ; 523C _ C7. 45, F4, 00000000
        jmp     ?_305                                   ; 5243 _ EB, 26

?_304:  mov     eax, dword [ebp-0CH]                    ; 5245 _ 8B. 45, F4
        shl     eax, 4                                  ; 5248 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 524B _ 05, 00000008(d)
        mov     dword [eax], 0                          ; 5250 _ C7. 00, 00000000
        mov     eax, dword [ebp-0CH]                    ; 5256 _ 8B. 45, F4
        shl     eax, 4                                  ; 5259 _ C1. E0, 04
        add     eax, _timerctl+0CH                           ; 525C _ 05, 0000000C(d)
        mov     dword [eax], 0                          ; 5261 _ C7. 00, 00000000
        add     dword [ebp-0CH], 1                      ; 5267 _ 83. 45, F4, 01
?_305:  cmp     dword [ebp-0CH], 499                    ; 526B _ 81. 7D, F4, 000001F3
        jle     ?_304                                   ; 5272 _ 7E, D1
        nop                                             ; 5274 _ 90
        leave                                           ; 5275 _ C9
        ret                                             ; 5276 _ C3

_timer_alloc:; Function begin
        push    ebp                                     ; 5277 _ 55
        mov     ebp, esp                                ; 5278 _ 89. E5
        sub     esp, 16                                 ; 527A _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 527D _ C7. 45, FC, 00000000
        jmp     ?_308                                   ; 5284 _ EB, 36

?_306:  mov     eax, dword [ebp-4H]                     ; 5286 _ 8B. 45, FC
        shl     eax, 4                                  ; 5289 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 528C _ 05, 00000008(d)
        mov     eax, dword [eax]                        ; 5291 _ 8B. 00
        test    eax, eax                                ; 5293 _ 85. C0
        jnz     ?_307                                   ; 5295 _ 75, 21
        mov     eax, dword [ebp-4H]                     ; 5297 _ 8B. 45, FC
        shl     eax, 4                                  ; 529A _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 529D _ 05, 00000008(d)
        mov     dword [eax], 1                          ; 52A2 _ C7. 00, 00000001
        mov     eax, dword [ebp-4H]                     ; 52A8 _ 8B. 45, FC
        shl     eax, 4                                  ; 52AB _ C1. E0, 04
        add     eax, _timerctl                               ; 52AE _ 05, 00000000(d)
        add     eax, 4                                  ; 52B3 _ 83. C0, 04
        jmp     ?_309                                   ; 52B6 _ EB, 12

?_307:  add     dword [ebp-4H], 1                       ; 52B8 _ 83. 45, FC, 01
?_308:  cmp     dword [ebp-4H], 499                     ; 52BC _ 81. 7D, FC, 000001F3
        jle     ?_306                                   ; 52C3 _ 7E, C1
        mov     eax, 0                                  ; 52C5 _ B8, 00000000
?_309:  leave                                           ; 52CA _ C9
        ret                                             ; 52CB _ C3
; _timer_alloc End of function

_timer_free:; Function begin
        push    ebp                                     ; 52CC _ 55
        mov     ebp, esp                                ; 52CD _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 52CF _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 52D2 _ C7. 40, 04, 00000000
        nop                                             ; 52D9 _ 90
        pop     ebp                                     ; 52DA _ 5D
        ret                                             ; 52DB _ C3
; _timer_free End of function

_timer_init:; Function begin
        push    ebp                                     ; 52DC _ 55
        mov     ebp, esp                                ; 52DD _ 89. E5
        sub     esp, 4                                  ; 52DF _ 83. EC, 04
        mov     eax, dword [ebp+10H]                    ; 52E2 _ 8B. 45, 10
        mov     byte [ebp-4H], al                       ; 52E5 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 52E8 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 52EB _ 8B. 55, 0C
        mov     dword [eax+8H], edx                     ; 52EE _ 89. 50, 08
        mov     edx, dword [ebp+8H]                     ; 52F1 _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 52F4 _ 0F B6. 45, FC
        mov     byte [edx+0CH], al                      ; 52F8 _ 88. 42, 0C
        nop                                             ; 52FB _ 90
        leave                                           ; 52FC _ C9
        ret                                             ; 52FD _ C3
; _timer_init End of function

_timer_settime:; Function begin
        push    ebp                                     ; 52FE _ 55
        mov     ebp, esp                                ; 52FF _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 5301 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 5304 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 5307 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 5309 _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 530C _ C7. 40, 04, 00000002
        nop                                             ; 5313 _ 90
        pop     ebp                                     ; 5314 _ 5D
        ret                                             ; 5315 _ C3
; _timer_settime End of function

_intHandlerForTimer:; Function begin
        push    ebp                                     ; 5316 _ 55
        mov     ebp, esp                                ; 5317 _ 89. E5
        sub     esp, 40                                 ; 5319 _ 83. EC, 28
        mov     dword [esp+4H], 32                      ; 531C _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 5324 _ C7. 04 24, 00000020
        call    _io_out8                                ; 532B _ E8, 00000000(rel)
        mov     eax, dword [_timerctl]                       ; 5330 _ A1, 00000000(d)
        add     eax, 1                                  ; 5335 _ 83. C0, 01
        mov     dword [_timerctl], eax                       ; 5338 _ A3, 00000000(d)
        mov     byte [ebp-0DH], 0                       ; 533D _ C6. 45, F3, 00
        mov     dword [ebp-0CH], 0                      ; 5341 _ C7. 45, F4, 00000000
        jmp     ?_313                                   ; 5348 _ E9, 000000AA

?_310:  mov     eax, dword [ebp-0CH]                    ; 534D _ 8B. 45, F4
        shl     eax, 4                                  ; 5350 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 5353 _ 05, 00000008(d)
        mov     eax, dword [eax]                        ; 5358 _ 8B. 00
        cmp     eax, 2                                  ; 535A _ 83. F8, 02
        jne     ?_311                                   ; 535D _ 0F 85, 00000085
        mov     eax, dword [ebp-0CH]                    ; 5363 _ 8B. 45, F4
        shl     eax, 4                                  ; 5366 _ C1. E0, 04
        add     eax, _timerctl+4H                            ; 5369 _ 05, 00000004(d)
        mov     eax, dword [eax]                        ; 536E _ 8B. 00
        lea     edx, [eax-1H]                           ; 5370 _ 8D. 50, FF
        mov     eax, dword [ebp-0CH]                    ; 5373 _ 8B. 45, F4
        shl     eax, 4                                  ; 5376 _ C1. E0, 04
        add     eax, _timerctl+4H                            ; 5379 _ 05, 00000004(d)
        mov     dword [eax], edx                        ; 537E _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 5380 _ 8B. 45, F4
        shl     eax, 4                                  ; 5383 _ C1. E0, 04
        add     eax, _timerctl+4H                            ; 5386 _ 05, 00000004(d)
        mov     eax, dword [eax]                        ; 538B _ 8B. 00
        test    eax, eax                                ; 538D _ 85. C0
        jnz     ?_311                                   ; 538F _ 75, 57
        mov     eax, dword [ebp-0CH]                    ; 5391 _ 8B. 45, F4
        shl     eax, 4                                  ; 5394 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 5397 _ 05, 00000008(d)
        mov     dword [eax], 1                          ; 539C _ C7. 00, 00000001
        mov     eax, dword [ebp-0CH]                    ; 53A2 _ 8B. 45, F4
        shl     eax, 4                                  ; 53A5 _ C1. E0, 04
        add     eax, _timerctl+10H                           ; 53A8 _ 05, 00000010(d)
        movzx   eax, byte [eax]                         ; 53AD _ 0F B6. 00
        movzx   eax, al                                 ; 53B0 _ 0F B6. C0
        mov     edx, dword [ebp-0CH]                    ; 53B3 _ 8B. 55, F4
        shl     edx, 4                                  ; 53B6 _ C1. E2, 04
        add     edx, _timerctl+0CH                           ; 53B9 _ 81. C2, 0000000C(d)
        mov     edx, dword [edx]                        ; 53BF _ 8B. 12
        mov     dword [esp+4H], eax                     ; 53C1 _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 53C5 _ 89. 14 24
        call    _fifo8_put                              ; 53C8 _ E8, 00000000(rel)
        mov     eax, dword [ebp-0CH]                    ; 53CD _ 8B. 45, F4
        shl     eax, 4                                  ; 53D0 _ C1. E0, 04
        add     eax, _timerctl                               ; 53D3 _ 05, 00000000(d)
        lea     edx, [eax+4H]                           ; 53D8 _ 8D. 50, 04
        mov     eax, dword [_task_timer]                ; 53DB _ A1, 00000000(d)
        cmp     edx, eax                                ; 53E0 _ 39. C2
        jnz     ?_311                                   ; 53E2 _ 75, 04
        mov     byte [ebp-0DH], 1                       ; 53E4 _ C6. 45, F3, 01
?_311:  cmp     byte [ebp-0DH], 0                       ; 53E8 _ 80. 7D, F3, 00
        jz      ?_312                                   ; 53EC _ 74, 05
        call    _task_switch                            ; 53EE _ E8, 00000000(rel)
?_312:  add     dword [ebp-0CH], 1                      ; 53F3 _ 83. 45, F4, 01
?_313:  cmp     dword [ebp-0CH], 499                    ; 53F7 _ 81. 7D, F4, 000001F3
        jle     ?_310                                   ; 53FE _ 0F 8E, FFFFFF49
        nop                                             ; 5404 _ 90
        leave                                           ; 5405 _ C9
        ret                                             ; 5406 _ C3
; _intHandlerForTimer End of function

_getTimerController:; Function begin
        mov     eax, _timerctl                               ; 5407 _ B8, 00000000(d)
        ret                                             ; 540C _ C3
; _getTimerController End of function

        nop                                             ; 540D _ 90
        nop                                             ; 540E _ 90
        nop                                             ; 540F _ 90


_set_segmdesc:
        push    ebp                                     ; 5410 _ 55
        mov     ebp, esp                                ; 5411 _ 89. E5
        cmp     dword [ebp+0CH], 1048575                ; 5413 _ 81. 7D, 0C, 000FFFFF
        jbe     ?_314                                   ; 541A _ 76, 10
        or      dword [ebp+14H], 8000H                  ; 541C _ 81. 4D, 14, 00008000
        mov     eax, dword [ebp+0CH]                    ; 5423 _ 8B. 45, 0C
        shr     eax, 12                                 ; 5426 _ C1. E8, 0C
        mov     dword [ebp+0CH], eax                    ; 5429 _ 89. 45, 0C
?_314:  mov     eax, dword [ebp+0CH]                    ; 542C _ 8B. 45, 0C
        mov     edx, eax                                ; 542F _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 5431 _ 8B. 45, 08
        mov     word [eax], dx                          ; 5434 _ 66: 89. 10
        mov     eax, dword [ebp+10H]                    ; 5437 _ 8B. 45, 10
        mov     edx, eax                                ; 543A _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 543C _ 8B. 45, 08
        mov     word [eax+2H], dx                       ; 543F _ 66: 89. 50, 02
        mov     eax, dword [ebp+10H]                    ; 5443 _ 8B. 45, 10
        sar     eax, 16                                 ; 5446 _ C1. F8, 10
        mov     edx, eax                                ; 5449 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 544B _ 8B. 45, 08
        mov     byte [eax+4H], dl                       ; 544E _ 88. 50, 04
        mov     eax, dword [ebp+14H]                    ; 5451 _ 8B. 45, 14
        mov     edx, eax                                ; 5454 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 5456 _ 8B. 45, 08
        mov     byte [eax+5H], dl                       ; 5459 _ 88. 50, 05
        mov     eax, dword [ebp+0CH]                    ; 545C _ 8B. 45, 0C
        shr     eax, 16                                 ; 545F _ C1. E8, 10
        and     eax, 0FH                                ; 5462 _ 83. E0, 0F
        mov     edx, eax                                ; 5465 _ 89. C2
        mov     eax, dword [ebp+14H]                    ; 5467 _ 8B. 45, 14
        sar     eax, 8                                  ; 546A _ C1. F8, 08
        and     eax, 0FFFFFFF0H                         ; 546D _ 83. E0, F0
        or      eax, edx                                ; 5470 _ 09. D0
        mov     edx, eax                                ; 5472 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 5474 _ 8B. 45, 08
        mov     byte [eax+6H], dl                       ; 5477 _ 88. 50, 06
        mov     eax, dword [ebp+10H]                    ; 547A _ 8B. 45, 10
        shr     eax, 24                                 ; 547D _ C1. E8, 18
        mov     edx, eax                                ; 5480 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 5482 _ 8B. 45, 08
        mov     byte [eax+7H], dl                       ; 5485 _ 88. 50, 07
        nop                                             ; 5488 _ 90
        pop     ebp                                     ; 5489 _ 5D
        ret                                             ; 548A _ C3

_get_taskctl:; Function begin
        mov     eax, dword [_taskctl]                   ; 548B _ A1, 00000004(d)
        ret                                             ; 5490 _ C3
; _get_taskctl End of function

_init_task_level:; Function begin
        push    ebp                                     ; 5491 _ 55
        mov     ebp, esp                                ; 5492 _ 89. E5
        sub     esp, 16                                 ; 5494 _ 83. EC, 10
        mov     ecx, dword [_taskctl]                   ; 5497 _ 8B. 0D, 00000004(d)
        mov     edx, dword [ebp+8H]                     ; 549D _ 8B. 55, 08
        mov     eax, edx                                ; 54A0 _ 89. D0
        add     eax, eax                                ; 54A2 _ 01. C0
        add     eax, edx                                ; 54A4 _ 01. D0
        shl     eax, 4                                  ; 54A6 _ C1. E0, 04
        add     eax, ecx                                ; 54A9 _ 01. C8
        add     eax, 8                                  ; 54AB _ 83. C0, 08
        mov     dword [eax], 0                          ; 54AE _ C7. 00, 00000000
        mov     ecx, dword [_taskctl]                   ; 54B4 _ 8B. 0D, 00000004(d)
        mov     edx, dword [ebp+8H]                     ; 54BA _ 8B. 55, 08
        mov     eax, edx                                ; 54BD _ 89. D0
        add     eax, eax                                ; 54BF _ 01. C0
        add     eax, edx                                ; 54C1 _ 01. D0
        shl     eax, 4                                  ; 54C3 _ C1. E0, 04
        add     eax, ecx                                ; 54C6 _ 01. C8
        add     eax, 12                                 ; 54C8 _ 83. C0, 0C
        mov     dword [eax], 0                          ; 54CB _ C7. 00, 00000000
        mov     dword [ebp-4H], 0                       ; 54D1 _ C7. 45, FC, 00000000
        jmp     ?_316                                   ; 54D8 _ EB, 1B

?_315:  mov     edx, dword [_taskctl]                   ; 54DA _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-4H]                     ; 54E0 _ 8B. 45, FC
        imul    eax, eax, 52                            ; 54E3 _ 6B. C0, 34
        add     eax, edx                                ; 54E6 _ 01. D0
        add     eax, 16                                 ; 54E8 _ 83. C0, 10
        mov     dword [eax], 0                          ; 54EB _ C7. 00, 00000000
        add     dword [ebp-4H], 1                       ; 54F1 _ 83. 45, FC, 01
?_316:  cmp     dword [ebp-4H], 9                       ; 54F5 _ 83. 7D, FC, 09
        jle     ?_315                                   ; 54F9 _ 7E, DF
        nop                                             ; 54FB _ 90
        leave                                           ; 54FC _ C9
        ret                                             ; 54FD _ C3
; _init_task_level End of function

_task_init:; Function begin
        push    ebp                                     ; 54FE _ 55
        mov     ebp, esp                                ; 54FF _ 89. E5
        sub     esp, 40                                 ; 5501 _ 83. EC, 28
        call    _get_addr_gdt                           ; 5504 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 5509 _ 89. 45, F0
        mov     dword [esp+4H], 3048                    ; 550C _ C7. 44 24, 04, 00000BE8
        mov     eax, dword [ebp+8H]                     ; 5514 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 5517 _ 89. 04 24
        call    _memman_alloc_4k                        ; 551A _ E8, 00000000(rel)
        mov     dword [_taskctl], eax                   ; 551F _ A3, 00000004(d)
        mov     dword [ebp-0CH], 0                      ; 5524 _ C7. 45, F4, 00000000
        jmp     ?_318                                   ; 552B _ E9, 0000008E

?_317:  mov     edx, dword [_taskctl]                   ; 5530 _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-0CH]                    ; 5536 _ 8B. 45, F4
        imul    eax, eax, 176                           ; 5539 _ 69. C0, 000000B0
        add     eax, edx                                ; 553F _ 01. D0
        add     eax, 492                                ; 5541 _ 05, 000001EC
        mov     dword [eax], 0                          ; 5546 _ C7. 00, 00000000
        mov     eax, dword [ebp-0CH]                    ; 554C _ 8B. 45, F4
        add     eax, 7                                  ; 554F _ 83. C0, 07
        mov     ecx, dword [_taskctl]                   ; 5552 _ 8B. 0D, 00000004(d)
        lea     edx, [eax*8]                            ; 5558 _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-0CH]                    ; 555F _ 8B. 45, F4
        imul    eax, eax, 176                           ; 5562 _ 69. C0, 000000B0
        add     eax, ecx                                ; 5568 _ 01. C8
        add     eax, 488                                ; 556A _ 05, 000001E8
        mov     dword [eax], edx                        ; 556F _ 89. 10
        mov     edx, dword [_taskctl]                   ; 5571 _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-0CH]                    ; 5577 _ 8B. 45, F4
        imul    eax, eax, 176                           ; 557A _ 69. C0, 000000B0
        add     eax, 512                                ; 5580 _ 05, 00000200
        add     eax, edx                                ; 5585 _ 01. D0
        add     eax, 20                                 ; 5587 _ 83. C0, 14
        mov     ecx, eax                                ; 558A _ 89. C1
        mov     eax, dword [ebp-0CH]                    ; 558C _ 8B. 45, F4
        add     eax, 7                                  ; 558F _ 83. C0, 07
        lea     edx, [eax*8]                            ; 5592 _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-10H]                    ; 5599 _ 8B. 45, F0
        add     eax, edx                                ; 559C _ 01. D0
        mov     dword [esp+0CH], 137                    ; 559E _ C7. 44 24, 0C, 00000089
        mov     dword [esp+8H], ecx                     ; 55A6 _ 89. 4C 24, 08
        mov     dword [esp+4H], 103                     ; 55AA _ C7. 44 24, 04, 00000067
        mov     dword [esp], eax                        ; 55B2 _ 89. 04 24
        call    _set_segmdesc                           ; 55B5 _ E8, FFFFFE56
        add     dword [ebp-0CH], 1                      ; 55BA _ 83. 45, F4, 01
?_318:  cmp     dword [ebp-0CH], 9                      ; 55BE _ 83. 7D, F4, 09
        jle     ?_317                                   ; 55C2 _ 0F 8E, FFFFFF68
        mov     dword [ebp-0CH], 0                      ; 55C8 _ C7. 45, F4, 00000000
        jmp     ?_320                                   ; 55CF _ EB, 0F

?_319:  mov     eax, dword [ebp-0CH]                    ; 55D1 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 55D4 _ 89. 04 24
        call    _init_task_level                        ; 55D7 _ E8, FFFFFEB5
        add     dword [ebp-0CH], 1                      ; 55DC _ 83. 45, F4, 01
?_320:  cmp     dword [ebp-0CH], 9                      ; 55E0 _ 83. 7D, F4, 09
        jle     ?_319                                   ; 55E4 _ 7E, EB
        call    _task_alloc                             ; 55E6 _ E8, 00000066
        mov     dword [ebp-14H], eax                    ; 55EB _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 55EE _ 8B. 45, EC
        mov     dword [eax+4H], 2                       ; 55F1 _ C7. 40, 04, 00000002
        mov     eax, dword [ebp-14H]                    ; 55F8 _ 8B. 45, EC
        mov     dword [eax+8H], 100                     ; 55FB _ C7. 40, 08, 00000064
        mov     eax, dword [ebp-14H]                    ; 5602 _ 8B. 45, EC
        mov     dword [eax+0CH], 0                      ; 5605 _ C7. 40, 0C, 00000000
        mov     eax, dword [ebp-14H]                    ; 560C _ 8B. 45, EC
        mov     dword [esp], eax                        ; 560F _ 89. 04 24
        call    _task_add                               ; 5612 _ E8, 00000358
        call    _task_switchsub                         ; 5617 _ E8, 0000046C
        mov     eax, dword [ebp-14H]                    ; 561C _ 8B. 45, EC
        mov     eax, dword [eax]                        ; 561F _ 8B. 00
        mov     dword [esp], eax                        ; 5621 _ 89. 04 24
        call    _load_tr                                ; 5624 _ E8, 00000000(rel)
        call    _timer_alloc                            ; 5629 _ E8, 00000000(rel)
        mov     dword [_task_timer], eax                       ; 562E _ A3, 00000000(d)
        mov     eax, dword [ebp-14H]                    ; 5633 _ 8B. 45, EC
        mov     eax, dword [eax+8H]                     ; 5636 _ 8B. 40, 08
        mov     edx, eax                                ; 5639 _ 89. C2
        mov     eax, dword [_task_timer]                       ; 563B _ A1, 00000000(d)
        mov     dword [esp+4H], edx                     ; 5640 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 5644 _ 89. 04 24
        call    _timer_settime                          ; 5647 _ E8, 00000000(rel)
        mov     eax, dword [ebp-14H]                    ; 564C _ 8B. 45, EC
        leave                                           ; 564F _ C9
        ret                                             ; 5650 _ C3
; _task_init End of function

_task_alloc:; Function begin
        push    ebp                                     ; 5651 _ 55
        mov     ebp, esp                                ; 5652 _ 89. E5
        sub     esp, 16                                 ; 5654 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 5657 _ C7. 45, FC, 00000000
        jmp     ?_323                                   ; 565E _ E9, 00000105

?_321:  mov     edx, dword [_taskctl]                   ; 5663 _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-4H]                     ; 5669 _ 8B. 45, FC
        imul    eax, eax, 176                           ; 566C _ 69. C0, 000000B0
        add     eax, edx                                ; 5672 _ 01. D0
        add     eax, 492                                ; 5674 _ 05, 000001EC
        mov     eax, dword [eax]                        ; 5679 _ 8B. 00
        test    eax, eax                                ; 567B _ 85. C0
        jne     ?_322                                   ; 567D _ 0F 85, 000000E1
        mov     edx, dword [_taskctl]                   ; 5683 _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-4H]                     ; 5689 _ 8B. 45, FC
        imul    eax, eax, 176                           ; 568C _ 69. C0, 000000B0
        add     eax, 480                                ; 5692 _ 05, 000001E0
        add     eax, edx                                ; 5697 _ 01. D0
        add     eax, 8                                  ; 5699 _ 83. C0, 08
        mov     dword [ebp-8H], eax                     ; 569C _ 89. 45, F8
        mov     eax, dword [ebp-8H]                     ; 569F _ 8B. 45, F8
        mov     dword [eax+4H], 1                       ; 56A2 _ C7. 40, 04, 00000001
        mov     eax, dword [ebp-8H]                     ; 56A9 _ 8B. 45, F8
        mov     dword [eax+50H], 514                    ; 56AC _ C7. 40, 50, 00000202
        mov     eax, dword [ebp-8H]                     ; 56B3 _ 8B. 45, F8
        mov     dword [eax+54H], 0                      ; 56B6 _ C7. 40, 54, 00000000
        mov     eax, dword [ebp-8H]                     ; 56BD _ 8B. 45, F8
        mov     dword [eax+58H], 0                      ; 56C0 _ C7. 40, 58, 00000000
        mov     eax, dword [ebp-8H]                     ; 56C7 _ 8B. 45, F8
        mov     dword [eax+5CH], 0                      ; 56CA _ C7. 40, 5C, 00000000
        mov     eax, dword [ebp-8H]                     ; 56D1 _ 8B. 45, F8
        mov     dword [eax+60H], 0                      ; 56D4 _ C7. 40, 60, 00000000
        mov     eax, dword [ebp-8H]                     ; 56DB _ 8B. 45, F8
        mov     dword [eax+68H], 0                      ; 56DE _ C7. 40, 68, 00000000
        mov     eax, dword [ebp-4H]                     ; 56E5 _ 8B. 45, FC
        add     eax, 1                                  ; 56E8 _ 83. C0, 01
        shl     eax, 9                                  ; 56EB _ C1. E0, 09
        mov     edx, eax                                ; 56EE _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 56F0 _ 8B. 45, F8
        mov     dword [eax+64H], edx                    ; 56F3 _ 89. 50, 64
        mov     eax, dword [ebp-8H]                     ; 56F6 _ 8B. 45, F8
        mov     dword [eax+6CH], 0                      ; 56F9 _ C7. 40, 6C, 00000000
        mov     eax, dword [ebp-8H]                     ; 5700 _ 8B. 45, F8
        mov     dword [eax+70H], 0                      ; 5703 _ C7. 40, 70, 00000000
        mov     eax, dword [ebp-8H]                     ; 570A _ 8B. 45, F8
        mov     dword [eax+74H], 0                      ; 570D _ C7. 40, 74, 00000000
        mov     eax, dword [ebp-8H]                     ; 5714 _ 8B. 45, F8
        mov     dword [eax+80H], 0                      ; 5717 _ C7. 80, 00000080, 00000000
        mov     eax, dword [ebp-8H]                     ; 5721 _ 8B. 45, F8
        mov     dword [eax+84H], 0                      ; 5724 _ C7. 80, 00000084, 00000000
        mov     eax, dword [ebp-8H]                     ; 572E _ 8B. 45, F8
        mov     dword [eax+88H], 0                      ; 5731 _ C7. 80, 00000088, 00000000
        mov     eax, dword [ebp-8H]                     ; 573B _ 8B. 45, F8
        mov     dword [eax+34H], 0                      ; 573E _ C7. 40, 34, 00000000
        mov     eax, dword [ebp-8H]                     ; 5745 _ 8B. 45, F8
        mov     dword [eax+8CH], 0                      ; 5748 _ C7. 80, 0000008C, 00000000
        mov     eax, dword [ebp-8H]                     ; 5752 _ 8B. 45, F8
        mov     dword [eax+90H], 1073741824             ; 5755 _ C7. 80, 00000090, 40000000
        mov     eax, dword [ebp-8H]                     ; 575F _ 8B. 45, F8
        jmp     ?_324                                   ; 5762 _ EB, 13

?_322:  add     dword [ebp-4H], 1                       ; 5764 _ 83. 45, FC, 01
?_323:  cmp     dword [ebp-4H], 9                       ; 5768 _ 83. 7D, FC, 09
        jle     ?_321                                   ; 576C _ 0F 8E, FFFFFEF1
        mov     eax, 0                                  ; 5772 _ B8, 00000000
?_324:  leave                                           ; 5777 _ C9
        ret                                             ; 5778 _ C3
; _task_alloc End of function

_task_run:; Function begin
        push    ebp                                     ; 5779 _ 55
        mov     ebp, esp                                ; 577A _ 89. E5
        sub     esp, 24                                 ; 577C _ 83. EC, 18
        cmp     dword [ebp+0CH], 0                      ; 577F _ 83. 7D, 0C, 00
        jns     ?_325                                   ; 5783 _ 79, 09
        mov     eax, dword [ebp+8H]                     ; 5785 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 5788 _ 8B. 40, 0C
        mov     dword [ebp+0CH], eax                    ; 578B _ 89. 45, 0C
?_325:  cmp     dword [ebp+10H], 0                      ; 578E _ 83. 7D, 10, 00
        jle     ?_326                                   ; 5792 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 5794 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 5797 _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 579A _ 89. 50, 08
?_326:  mov     eax, dword [ebp+8H]                     ; 579D _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 57A0 _ 8B. 40, 04
        cmp     eax, 2                                  ; 57A3 _ 83. F8, 02
        jnz     ?_327                                   ; 57A6 _ 75, 16
        mov     eax, dword [ebp+8H]                     ; 57A8 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 57AB _ 8B. 40, 0C
        cmp     dword [ebp+0CH], eax                    ; 57AE _ 39. 45, 0C
        jz      ?_327                                   ; 57B1 _ 74, 0B
        mov     eax, dword [ebp+8H]                     ; 57B3 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 57B6 _ 89. 04 24
        call    _task_remove                            ; 57B9 _ E8, 000001FD
?_327:  mov     eax, dword [ebp+8H]                     ; 57BE _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 57C1 _ 8B. 40, 04
        cmp     eax, 2                                  ; 57C4 _ 83. F8, 02
        jz      ?_328                                   ; 57C7 _ 74, 14
        mov     eax, dword [ebp+8H]                     ; 57C9 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 57CC _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 57CF _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 57D2 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 57D5 _ 89. 04 24
        call    _task_add                               ; 57D8 _ E8, 00000192
?_328:  mov     eax, dword [_taskctl]                   ; 57DD _ A1, 00000004(d)
        mov     dword [eax+4H], 1                       ; 57E2 _ C7. 40, 04, 00000001
        nop                                             ; 57E9 _ 90
        leave                                           ; 57EA _ C9
        ret                                             ; 57EB _ C3
; _task_run End of function

_task_switch:; Function begin
        push    ebp                                     ; 57EC _ 55
        mov     ebp, esp                                ; 57ED _ 89. E5
        sub     esp, 40                                 ; 57EF _ 83. EC, 28
        mov     ecx, dword [_taskctl]                   ; 57F2 _ 8B. 0D, 00000004(d)
        mov     eax, dword [_taskctl]                   ; 57F8 _ A1, 00000004(d)
        mov     edx, dword [eax]                        ; 57FD _ 8B. 10
        mov     eax, edx                                ; 57FF _ 89. D0
        add     eax, eax                                ; 5801 _ 01. C0
        add     eax, edx                                ; 5803 _ 01. D0
        shl     eax, 4                                  ; 5805 _ C1. E0, 04
        add     eax, ecx                                ; 5808 _ 01. C8
        add     eax, 8                                  ; 580A _ 83. C0, 08
        mov     dword [ebp-0CH], eax                    ; 580D _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 5810 _ 8B. 45, F4
        mov     edx, dword [eax+4H]                     ; 5813 _ 8B. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 5816 _ 8B. 45, F4
        mov     eax, dword [eax+edx*4+8H]               ; 5819 _ 8B. 44 90, 08
        mov     dword [ebp-10H], eax                    ; 581D _ 89. 45, F0
        mov     eax, dword [ebp-0CH]                    ; 5820 _ 8B. 45, F4
        mov     eax, dword [eax+4H]                     ; 5823 _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 5826 _ 8D. 50, 01
        mov     eax, dword [ebp-0CH]                    ; 5829 _ 8B. 45, F4
        mov     dword [eax+4H], edx                     ; 582C _ 89. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 582F _ 8B. 45, F4
        mov     edx, dword [eax+4H]                     ; 5832 _ 8B. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 5835 _ 8B. 45, F4
        mov     eax, dword [eax]                        ; 5838 _ 8B. 00
        cmp     edx, eax                                ; 583A _ 39. C2
        jnz     ?_329                                   ; 583C _ 75, 0A
        mov     eax, dword [ebp-0CH]                    ; 583E _ 8B. 45, F4
        mov     dword [eax+4H], 0                       ; 5841 _ C7. 40, 04, 00000000
?_329:  mov     eax, dword [_taskctl]                   ; 5848 _ A1, 00000004(d)
        mov     eax, dword [eax+4H]                     ; 584D _ 8B. 40, 04
        test    eax, eax                                ; 5850 _ 85. C0
        jz      ?_330                                   ; 5852 _ 74, 23
        call    _task_switchsub                         ; 5854 _ E8, 0000022F
        mov     ecx, dword [_taskctl]                   ; 5859 _ 8B. 0D, 00000004(d)
        mov     eax, dword [_taskctl]                   ; 585F _ A1, 00000004(d)
        mov     edx, dword [eax]                        ; 5864 _ 8B. 10
        mov     eax, edx                                ; 5866 _ 89. D0
        add     eax, eax                                ; 5868 _ 01. C0
        add     eax, edx                                ; 586A _ 01. D0
        shl     eax, 4                                  ; 586C _ C1. E0, 04
        add     eax, ecx                                ; 586F _ 01. C8
        add     eax, 8                                  ; 5871 _ 83. C0, 08
        mov     dword [ebp-0CH], eax                    ; 5874 _ 89. 45, F4
?_330:  mov     eax, dword [ebp-0CH]                    ; 5877 _ 8B. 45, F4
        mov     edx, dword [eax+4H]                     ; 587A _ 8B. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 587D _ 8B. 45, F4
        mov     eax, dword [eax+edx*4+8H]               ; 5880 _ 8B. 44 90, 08
        mov     dword [ebp-14H], eax                    ; 5884 _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 5887 _ 8B. 45, EC
        mov     eax, dword [eax+8H]                     ; 588A _ 8B. 40, 08
        mov     edx, eax                                ; 588D _ 89. C2
        mov     eax, dword [_task_timer]                       ; 588F _ A1, 00000000(d)
        mov     dword [esp+4H], edx                     ; 5894 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 5898 _ 89. 04 24
        call    _timer_settime                          ; 589B _ E8, 00000000(rel)
        mov     eax, dword [ebp-14H]                    ; 58A0 _ 8B. 45, EC
        cmp     eax, dword [ebp-10H]                    ; 58A3 _ 3B. 45, F0
        jz      ?_331                                   ; 58A6 _ 74, 1C
        cmp     dword [ebp-14H], 0                      ; 58A8 _ 83. 7D, EC, 00
        jz      ?_331                                   ; 58AC _ 74, 16
        mov     eax, dword [ebp-14H]                    ; 58AE _ 8B. 45, EC
        mov     eax, dword [eax]                        ; 58B1 _ 8B. 00
        mov     dword [esp+4H], eax                     ; 58B3 _ 89. 44 24, 04
        mov     dword [esp], 0                          ; 58B7 _ C7. 04 24, 00000000
        call    _farjmp                                 ; 58BE _ E8, 00000000(rel)
        nop                                             ; 58C3 _ 90
?_331:  nop                                             ; 58C4 _ 90
        leave                                           ; 58C5 _ C9
        ret                                             ; 58C6 _ C3
; _task_switch End of function

_task_sleep:; Function begin
        push    ebp                                     ; 58C7 _ 55
        mov     ebp, esp                                ; 58C8 _ 89. E5
        sub     esp, 40                                 ; 58CA _ 83. EC, 28
        mov     dword [ebp-10H], 0                      ; 58CD _ C7. 45, F0, 00000000
        mov     dword [ebp-0CH], 0                      ; 58D4 _ C7. 45, F4, 00000000
        mov     eax, dword [ebp+8H]                     ; 58DB _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 58DE _ 8B. 40, 04
        cmp     eax, 2                                  ; 58E1 _ 83. F8, 02
        jnz     ?_332                                   ; 58E4 _ 75, 51
        call    _task_now                               ; 58E6 _ E8, 00000051
        mov     dword [ebp-10H], eax                    ; 58EB _ 89. 45, F0
        mov     eax, dword [ebp+8H]                     ; 58EE _ 8B. 45, 08
        mov     dword [esp], eax                        ; 58F1 _ 89. 04 24
        call    _task_remove                            ; 58F4 _ E8, 000000C2
        mov     dword [ebp-0CH], 1                      ; 58F9 _ C7. 45, F4, 00000001
        mov     eax, dword [ebp+8H]                     ; 5900 _ 8B. 45, 08
        cmp     eax, dword [ebp-10H]                    ; 5903 _ 3B. 45, F0
        jnz     ?_332                                   ; 5906 _ 75, 2F
        call    _task_switchsub                         ; 5908 _ E8, 0000017B
        call    _task_now                               ; 590D _ E8, 0000002A
        mov     dword [ebp-10H], eax                    ; 5912 _ 89. 45, F0
        mov     dword [ebp-0CH], 2                      ; 5915 _ C7. 45, F4, 00000002
        cmp     dword [ebp-10H], 0                      ; 591C _ 83. 7D, F0, 00
        jz      ?_332                                   ; 5920 _ 74, 15
        mov     eax, dword [ebp-10H]                    ; 5922 _ 8B. 45, F0
        mov     eax, dword [eax]                        ; 5925 _ 8B. 00
        mov     dword [esp+4H], eax                     ; 5927 _ 89. 44 24, 04
        mov     dword [esp], 0                          ; 592B _ C7. 04 24, 00000000
        call    _farjmp                                 ; 5932 _ E8, 00000000(rel)
?_332:  mov     eax, dword [ebp-0CH]                    ; 5937 _ 8B. 45, F4
        leave                                           ; 593A _ C9
        ret                                             ; 593B _ C3
; _task_sleep End of function

_task_now:; Function begin
        push    ebp                                     ; 593C _ 55
        mov     ebp, esp                                ; 593D _ 89. E5
        sub     esp, 16                                 ; 593F _ 83. EC, 10
        mov     ecx, dword [_taskctl]                   ; 5942 _ 8B. 0D, 00000004(d)
        mov     eax, dword [_taskctl]                   ; 5948 _ A1, 00000004(d)
        mov     edx, dword [eax]                        ; 594D _ 8B. 10
        mov     eax, edx                                ; 594F _ 89. D0
        add     eax, eax                                ; 5951 _ 01. C0
        add     eax, edx                                ; 5953 _ 01. D0
        shl     eax, 4                                  ; 5955 _ C1. E0, 04
        add     eax, ecx                                ; 5958 _ 01. C8
        add     eax, 8                                  ; 595A _ 83. C0, 08
        mov     dword [ebp-4H], eax                     ; 595D _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 5960 _ 8B. 45, FC
        mov     edx, dword [eax+4H]                     ; 5963 _ 8B. 50, 04
        mov     eax, dword [ebp-4H]                     ; 5966 _ 8B. 45, FC
        mov     eax, dword [eax+edx*4+8H]               ; 5969 _ 8B. 44 90, 08
        leave                                           ; 596D _ C9
        ret                                             ; 596E _ C3
; _task_now End of function

_task_add:; Function begin
        push    ebp                                     ; 596F _ 55
        mov     ebp, esp                                ; 5970 _ 89. E5
        sub     esp, 16                                 ; 5972 _ 83. EC, 10
        mov     ecx, dword [_taskctl]                   ; 5975 _ 8B. 0D, 00000004(d)
        mov     eax, dword [ebp+8H]                     ; 597B _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 597E _ 8B. 50, 0C
        mov     eax, edx                                ; 5981 _ 89. D0
        add     eax, eax                                ; 5983 _ 01. C0
        add     eax, edx                                ; 5985 _ 01. D0
        shl     eax, 4                                  ; 5987 _ C1. E0, 04
        add     eax, ecx                                ; 598A _ 01. C8
        add     eax, 8                                  ; 598C _ 83. C0, 08
        mov     dword [ebp-4H], eax                     ; 598F _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 5992 _ 8B. 45, FC
        mov     edx, dword [eax]                        ; 5995 _ 8B. 10
        mov     eax, dword [ebp-4H]                     ; 5997 _ 8B. 45, FC
        mov     ecx, dword [ebp+8H]                     ; 599A _ 8B. 4D, 08
        mov     dword [eax+edx*4+8H], ecx               ; 599D _ 89. 4C 90, 08
        mov     eax, dword [ebp-4H]                     ; 59A1 _ 8B. 45, FC
        mov     eax, dword [eax]                        ; 59A4 _ 8B. 00
        lea     edx, [eax+1H]                           ; 59A6 _ 8D. 50, 01
        mov     eax, dword [ebp-4H]                     ; 59A9 _ 8B. 45, FC
        mov     dword [eax], edx                        ; 59AC _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 59AE _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 59B1 _ C7. 40, 04, 00000002
        nop                                             ; 59B8 _ 90
        leave                                           ; 59B9 _ C9
        ret                                             ; 59BA _ C3
; _task_add End of function

_task_remove:; Function begin
        push    ebp                                     ; 59BB _ 55
        mov     ebp, esp                                ; 59BC _ 89. E5
        sub     esp, 16                                 ; 59BE _ 83. EC, 10
        mov     ecx, dword [_taskctl]                   ; 59C1 _ 8B. 0D, 00000004(d)
        mov     eax, dword [ebp+8H]                     ; 59C7 _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 59CA _ 8B. 50, 0C
        mov     eax, edx                                ; 59CD _ 89. D0
        add     eax, eax                                ; 59CF _ 01. C0
        add     eax, edx                                ; 59D1 _ 01. D0
        shl     eax, 4                                  ; 59D3 _ C1. E0, 04
        add     eax, ecx                                ; 59D6 _ 01. C8
        add     eax, 8                                  ; 59D8 _ 83. C0, 08
        mov     dword [ebp-8H], eax                     ; 59DB _ 89. 45, F8
        mov     dword [ebp-4H], 0                       ; 59DE _ C7. 45, FC, 00000000
        jmp     ?_335                                   ; 59E5 _ EB, 23

?_333:  mov     eax, dword [ebp-8H]                     ; 59E7 _ 8B. 45, F8
        mov     edx, dword [ebp-4H]                     ; 59EA _ 8B. 55, FC
        mov     eax, dword [eax+edx*4+8H]               ; 59ED _ 8B. 44 90, 08
        cmp     dword [ebp+8H], eax                     ; 59F1 _ 39. 45, 08
        jnz     ?_334                                   ; 59F4 _ 75, 10
        mov     eax, dword [ebp-8H]                     ; 59F6 _ 8B. 45, F8
        mov     edx, dword [ebp-4H]                     ; 59F9 _ 8B. 55, FC
        mov     dword [eax+edx*4+8H], 0                 ; 59FC _ C7. 44 90, 08, 00000000
        jmp     ?_336                                   ; 5A04 _ EB, 0E

?_334:  add     dword [ebp-4H], 1                       ; 5A06 _ 83. 45, FC, 01
?_335:  mov     eax, dword [ebp-8H]                     ; 5A0A _ 8B. 45, F8
        mov     eax, dword [eax]                        ; 5A0D _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 5A0F _ 39. 45, FC
        jl      ?_333                                   ; 5A12 _ 7C, D3
?_336:  mov     eax, dword [ebp-8H]                     ; 5A14 _ 8B. 45, F8
        mov     eax, dword [eax]                        ; 5A17 _ 8B. 00
        lea     edx, [eax-1H]                           ; 5A19 _ 8D. 50, FF
        mov     eax, dword [ebp-8H]                     ; 5A1C _ 8B. 45, F8
        mov     dword [eax], edx                        ; 5A1F _ 89. 10
        mov     eax, dword [ebp-8H]                     ; 5A21 _ 8B. 45, F8
        mov     eax, dword [eax+4H]                     ; 5A24 _ 8B. 40, 04
        cmp     dword [ebp-4H], eax                     ; 5A27 _ 39. 45, FC
        jge     ?_337                                   ; 5A2A _ 7D, 0F
        mov     eax, dword [ebp-8H]                     ; 5A2C _ 8B. 45, F8
        mov     eax, dword [eax+4H]                     ; 5A2F _ 8B. 40, 04
        lea     edx, [eax-1H]                           ; 5A32 _ 8D. 50, FF
        mov     eax, dword [ebp-8H]                     ; 5A35 _ 8B. 45, F8
        mov     dword [eax+4H], edx                     ; 5A38 _ 89. 50, 04
?_337:  mov     eax, dword [ebp-8H]                     ; 5A3B _ 8B. 45, F8
        mov     edx, dword [eax+4H]                     ; 5A3E _ 8B. 50, 04
        mov     eax, dword [ebp-8H]                     ; 5A41 _ 8B. 45, F8
        mov     eax, dword [eax]                        ; 5A44 _ 8B. 00
        cmp     edx, eax                                ; 5A46 _ 39. C2
        jl      ?_338                                   ; 5A48 _ 7C, 0A
        mov     eax, dword [ebp-8H]                     ; 5A4A _ 8B. 45, F8
        mov     dword [eax+4H], 0                       ; 5A4D _ C7. 40, 04, 00000000
?_338:  mov     eax, dword [ebp+8H]                     ; 5A54 _ 8B. 45, 08
        mov     dword [eax+4H], 1                       ; 5A57 _ C7. 40, 04, 00000001
        jmp     ?_340                                   ; 5A5E _ EB, 1B

?_339:  mov     eax, dword [ebp-4H]                     ; 5A60 _ 8B. 45, FC
        lea     edx, [eax+1H]                           ; 5A63 _ 8D. 50, 01
        mov     eax, dword [ebp-8H]                     ; 5A66 _ 8B. 45, F8
        mov     ecx, dword [eax+edx*4+8H]               ; 5A69 _ 8B. 4C 90, 08
        mov     eax, dword [ebp-8H]                     ; 5A6D _ 8B. 45, F8
        mov     edx, dword [ebp-4H]                     ; 5A70 _ 8B. 55, FC
        mov     dword [eax+edx*4+8H], ecx               ; 5A73 _ 89. 4C 90, 08
        add     dword [ebp-4H], 1                       ; 5A77 _ 83. 45, FC, 01
?_340:  mov     eax, dword [ebp-8H]                     ; 5A7B _ 8B. 45, F8
        mov     eax, dword [eax]                        ; 5A7E _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 5A80 _ 39. 45, FC
        jl      ?_339                                   ; 5A83 _ 7C, DB
        nop                                             ; 5A85 _ 90
        leave                                           ; 5A86 _ C9
        ret                                             ; 5A87 _ C3
; _task_remove End of function

_task_switchsub:; Function begin
        push    ebp                                     ; 5A88 _ 55
        mov     ebp, esp                                ; 5A89 _ 89. E5
        sub     esp, 16                                 ; 5A8B _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 5A8E _ C7. 45, FC, 00000000
        jmp     ?_342                                   ; 5A95 _ EB, 21

?_341:  mov     ecx, dword [_taskctl]                   ; 5A97 _ 8B. 0D, 00000004(d)
        mov     edx, dword [ebp-4H]                     ; 5A9D _ 8B. 55, FC
        mov     eax, edx                                ; 5AA0 _ 89. D0
        add     eax, eax                                ; 5AA2 _ 01. C0
        add     eax, edx                                ; 5AA4 _ 01. D0
        shl     eax, 4                                  ; 5AA6 _ C1. E0, 04
        add     eax, ecx                                ; 5AA9 _ 01. C8
        add     eax, 8                                  ; 5AAB _ 83. C0, 08
        mov     eax, dword [eax]                        ; 5AAE _ 8B. 00
        test    eax, eax                                ; 5AB0 _ 85. C0
        jg      ?_343                                   ; 5AB2 _ 7F, 0C
        add     dword [ebp-4H], 1                       ; 5AB4 _ 83. 45, FC, 01
?_342:  cmp     dword [ebp-4H], 9                       ; 5AB8 _ 83. 7D, FC, 09
        jle     ?_341                                   ; 5ABC _ 7E, D9
        jmp     ?_344                                   ; 5ABE _ EB, 01

?_343:  nop                                             ; 5AC0 _ 90
?_344:  mov     eax, dword [_taskctl]                   ; 5AC1 _ A1, 00000004(d)
        mov     edx, dword [ebp-4H]                     ; 5AC6 _ 8B. 55, FC
        mov     dword [eax], edx                        ; 5AC9 _ 89. 10
        mov     eax, dword [_taskctl]                   ; 5ACB _ A1, 00000004(d)
        mov     dword [eax+4H], 0                       ; 5AD0 _ C7. 40, 04, 00000000
        nop                                             ; 5AD7 _ 90
        leave                                           ; 5AD8 _ C9
        ret                                             ; 5AD9 _ C3
; _task_switchsub End of function

_send_message:; Function begin
        push    ebp                                     ; 5ADA _ 55
        mov     ebp, esp                                ; 5ADB _ 89. E5
        sub     esp, 24                                 ; 5ADD _ 83. EC, 18
        mov     eax, dword [ebp+10H]                    ; 5AE0 _ 8B. 45, 10
        movzx   eax, al                                 ; 5AE3 _ 0F B6. C0
        mov     edx, dword [ebp+0CH]                    ; 5AE6 _ 8B. 55, 0C
        add     edx, 16                                 ; 5AE9 _ 83. C2, 10
        mov     dword [esp+4H], eax                     ; 5AEC _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 5AF0 _ 89. 14 24
        call    _fifo8_put                              ; 5AF3 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 5AF8 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 5AFB _ 89. 04 24
        call    _task_sleep                             ; 5AFE _ E8, FFFFFDC4
        nop                                             ; 5B03 _ 90
        leave                                           ; 5B04 _ C9
        ret                                             ; 5B05 _ C3
; _send_message End of function

        nop                                             ; 5B06 _ 90
        nop                                             ; 5B07 _ 90


_strcmp:
        push    ebp                                     ; 5B08 _ 55
        mov     ebp, esp                                ; 5B09 _ 89. E5
        sub     esp, 16                                 ; 5B0B _ 83. EC, 10
        cmp     dword [ebp+8H], 0                       ; 5B0E _ 83. 7D, 08, 00
        jz      ?_345                                   ; 5B12 _ 74, 06
        cmp     dword [ebp+0CH], 0                      ; 5B14 _ 83. 7D, 0C, 00
        jnz     ?_346                                   ; 5B18 _ 75, 0A
?_345:  mov     eax, 0                                  ; 5B1A _ B8, 00000000
        jmp     ?_353                                   ; 5B1F _ E9, 0000009B

?_346:  mov     dword [ebp-4H], 0                       ; 5B24 _ C7. 45, FC, 00000000
        jmp     ?_349                                   ; 5B2B _ EB, 25

?_347:  mov     edx, dword [ebp-4H]                     ; 5B2D _ 8B. 55, FC
        mov     eax, dword [ebp+8H]                     ; 5B30 _ 8B. 45, 08
        add     eax, edx                                ; 5B33 _ 01. D0
        movzx   edx, byte [eax]                         ; 5B35 _ 0F B6. 10
        mov     ecx, dword [ebp-4H]                     ; 5B38 _ 8B. 4D, FC
        mov     eax, dword [ebp+0CH]                    ; 5B3B _ 8B. 45, 0C
        add     eax, ecx                                ; 5B3E _ 01. C8
        movzx   eax, byte [eax]                         ; 5B40 _ 0F B6. 00
        cmp     dl, al                                  ; 5B43 _ 38. C2
        jz      ?_348                                   ; 5B45 _ 74, 07
        mov     eax, 0                                  ; 5B47 _ B8, 00000000
        jmp     ?_353                                   ; 5B4C _ EB, 71

?_348:  add     dword [ebp-4H], 1                       ; 5B4E _ 83. 45, FC, 01
?_349:  mov     edx, dword [ebp-4H]                     ; 5B52 _ 8B. 55, FC
        mov     eax, dword [ebp+8H]                     ; 5B55 _ 8B. 45, 08
        add     eax, edx                                ; 5B58 _ 01. D0
        movzx   eax, byte [eax]                         ; 5B5A _ 0F B6. 00
        test    al, al                                  ; 5B5D _ 84. C0
        jz      ?_350                                   ; 5B5F _ 74, 0F
        mov     edx, dword [ebp-4H]                     ; 5B61 _ 8B. 55, FC
        mov     eax, dword [ebp+0CH]                    ; 5B64 _ 8B. 45, 0C
        add     eax, edx                                ; 5B67 _ 01. D0
        movzx   eax, byte [eax]                         ; 5B69 _ 0F B6. 00
        test    al, al                                  ; 5B6C _ 84. C0
        jnz     ?_347                                   ; 5B6E _ 75, BD
?_350:  mov     edx, dword [ebp-4H]                     ; 5B70 _ 8B. 55, FC
        mov     eax, dword [ebp+8H]                     ; 5B73 _ 8B. 45, 08
        add     eax, edx                                ; 5B76 _ 01. D0
        movzx   eax, byte [eax]                         ; 5B78 _ 0F B6. 00
        test    al, al                                  ; 5B7B _ 84. C0
        jnz     ?_351                                   ; 5B7D _ 75, 16
        mov     edx, dword [ebp-4H]                     ; 5B7F _ 8B. 55, FC
        mov     eax, dword [ebp+0CH]                    ; 5B82 _ 8B. 45, 0C
        add     eax, edx                                ; 5B85 _ 01. D0
        movzx   eax, byte [eax]                         ; 5B87 _ 0F B6. 00
        test    al, al                                  ; 5B8A _ 84. C0
        jz      ?_351                                   ; 5B8C _ 74, 07
        mov     eax, 0                                  ; 5B8E _ B8, 00000000
        jmp     ?_353                                   ; 5B93 _ EB, 2A

?_351:  mov     edx, dword [ebp-4H]                     ; 5B95 _ 8B. 55, FC
        mov     eax, dword [ebp+8H]                     ; 5B98 _ 8B. 45, 08
        add     eax, edx                                ; 5B9B _ 01. D0
        movzx   eax, byte [eax]                         ; 5B9D _ 0F B6. 00
        test    al, al                                  ; 5BA0 _ 84. C0
        jz      ?_352                                   ; 5BA2 _ 74, 16
        mov     edx, dword [ebp-4H]                     ; 5BA4 _ 8B. 55, FC
        mov     eax, dword [ebp+0CH]                    ; 5BA7 _ 8B. 45, 0C
        add     eax, edx                                ; 5BAA _ 01. D0
        movzx   eax, byte [eax]                         ; 5BAC _ 0F B6. 00
        test    al, al                                  ; 5BAF _ 84. C0
        jz      ?_352                                   ; 5BB1 _ 74, 07
        mov     eax, 0                                  ; 5BB3 _ B8, 00000000
        jmp     ?_353                                   ; 5BB8 _ EB, 05

?_352:  mov     eax, 1                                  ; 5BBA _ B8, 00000001
?_353:  leave                                           ; 5BBF _ C9
        ret                                             ; 5BC0 _ C3

        nop                                             ; 5BC1 _ 90
        nop                                             ; 5BC2 _ 90
        nop                                             ; 5BC3 _ 90



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

?_354:  db 00H                                          ; 0112 _ .

?_355:  db 00H, 00H, 00H, 00H, 00H                      ; 0113 _ .....

_mmx:   dd 0FFFFFFFFH                                   ; 0118 _ -1 

_mmy:   dd 0FFFFFFFFH                                   ; 011C _ -1 

_KEY_CONTROL:                                           ; dword
        dd 0000001DH, 00000000H                         ; 0120 _ 29 0 
        dd 00000000H, 00000000H                         ; 0128 _ 0 0 
        dd 00000000H, 00000000H                         ; 0130 _ 0 0 
        dd 00000000H, 00000000H                         ; 0138 _ 0 0 

_table_rgb.2614:                                        ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0140 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0148 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0150 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0158 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 0160 _ ........
        db 00H, 84H, 00H, 84H, 84H, 84H, 84H, 84H       ; 0168 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0170 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0178 _ ........

_cursor.2674:                                           ; byte
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

_closebtn.2793:                                         ; byte
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


?_356:                                                  
        db 63H, 6FH, 75H, 6EH, 74H, 65H, 72H, 00H       ; 0000 _ counter.

?_357:                                                  ; byte
        db 6BH, 69H, 6CH, 6CH, 20H, 70H, 72H, 6FH       ; 0008 _ kill pro
        db 63H, 65H, 73H, 73H, 00H                      ; 0010 _ cess.

?_358:                                                  ; byte
        db 74H, 61H, 73H, 6BH, 5FH, 61H, 00H            ; 0015 _ task_a.

?_359:                                                  ; byte
        db 63H, 6FH, 6EH, 73H, 6FH, 6CH, 65H, 00H       ; 001C _ console.

?_360:                                                  ; byte
        db 20H, 00H                                     ; 0024 _  .

?_361:                                                  ; byte
        db 66H, 72H, 65H, 65H, 20H, 00H                 ; 0026 _ free .

?_362:                                                  ; byte
        db 20H, 4BH, 42H, 00H                           ; 002C _  KB.

?_363:                                                  ; byte
        db 3EH, 00H                                     ; 0030 _ >.

?_364:                                                  ; byte
        db 61H, 62H, 63H, 2EH, 65H, 78H, 65H, 00H       ; 0032 _ abc.exe.

?_365:                                                  ; byte
        db 70H, 61H, 75H, 73H, 65H, 00H                 ; 003A _ pause.

?_366:                                                  ; byte
        db 6DH, 65H, 6DH, 00H                           ; 0040 _ mem.

?_367:                                                  ; byte
        db 63H, 6CH, 73H, 00H                           ; 0044 _ cls.

?_368:                                                  ; byte
        db 68H, 6CH, 74H, 00H                           ; 0048 _ hlt.

?_369:                                                  ; byte
        db 64H, 69H, 72H, 00H                           ; 004C _ dir.

?_370:                                                  ; byte
        db 6BH, 65H, 79H, 62H, 6FH, 61H, 72H, 64H       ; 0050 _ keyboard
        db 00H                                          ; 0058 _ .

?_371:                                                  ; byte
        db 70H, 61H, 67H, 65H, 20H, 69H, 73H, 3AH       ; 0059 _ page is:
        db 20H, 00H                                     ; 0061 _  .

?_372:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0063 _ BaseAddr
        db 4CH, 3AH, 20H, 00H                           ; 006B _ L: .

?_373:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 006F _ BaseAddr
        db 48H, 3AH, 20H, 00H                           ; 0077 _ H: .

?_374:                                                  ; byte
        db 6CH, 65H, 6EH, 67H, 74H, 68H, 4CH, 6FH       ; 007B _ lengthLo
        db 77H, 3AH, 20H, 00H                           ; 0083 _ w: .

?_375:                                                  ; byte
        db 49H, 4EH, 54H, 20H, 4FH, 43H, 00H            ; 0087 _ INT OC.

?_376:                                                  ; byte
        db 53H, 74H, 61H, 63H, 6BH, 20H, 45H, 78H       ; 008E _ Stack Ex
        db 63H, 65H, 70H, 74H, 69H, 6FH, 6EH, 00H       ; 0096 _ ception.

?_377:                                                  ; byte
        db 45H, 49H, 50H, 20H, 3DH, 20H, 00H            ; 009E _ EIP = .

?_378:                                                  ; byte
        db 49H, 4EH, 54H, 20H, 30H, 44H, 20H, 00H       ; 00A5 _ INT 0D .

?_379:                                                  ; byte
        db 47H, 65H, 6EH, 65H, 72H, 61H, 6CH, 20H       ; 00AD _ General 
        db 50H, 72H, 6FH, 74H, 65H, 63H, 74H, 65H       ; 00B5 _ Protecte
        db 64H, 20H, 45H, 78H, 63H, 65H, 70H, 74H       ; 00BD _ d Except
        db 69H, 6FH, 6EH, 00H, 00H, 00H, 00H            ; 00C5 _ ion....


_g_hlt:                                                 
        resb    4                                       ; 0000

_key_shift:                                             ; dword
        resd    1                                       ; 0004

_caps_lock:                                             ; dword
        resd    1                                       ; 0008

_current_console:                                       ; dword
        resd    1                                       ; 000C

_bootInfo:                                              ; dword
        resd    1                                       ; 0010

?_380:  resw    1                                       ; 0014

?_381:  resw    1                                       ; 0016

_keyinfo:                                               ; byte
        resb    24                                      ; 0018

?_382:  resd    1                                       ; 0030

_mouseinfo:                                             ; byte
        resb    44                                      ; 0034

_keybuf:                                                ; byte
        resb    32                                      ; 0060

_mousebuf:                                              ; byte
        resb    128                                     ; 0080

_mdec:                                                  ; byte
        resb    12                                      ; 0100

?_383:  resd    1                                       ; 010C

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

_task_cons:                                             ; dword
        resd    2                                       ; 0274

_task_main:                                             ; dword
        resd    1                                       ; 027C

_task_a.2358:                                           ; dword
        resd    8                                       ; 0280

_tss_a.2357:                                            ; byte
        resb    128                                     ; 02A0

_tss_b.2356:                                            ; byte
        resb    104                                     ; 0320

_task_b.2346:                                           ; byte
        resb    12                                      ; 0388

_str.2722:                                              ; byte
        resb    1                                       ; 0394

?_384:  resb    9                                       ; 0395

?_385:  resb    2                                       ; 039E

_timerctl:                                              ; byte
        resb    8032                                    ; 03A0

_task_timer:                                            ; byte
        resb    4                                       ; 2300

_taskctl:                                               ; byte
        resb    4                                       ; 2304


