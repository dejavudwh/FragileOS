; Disassembly of file: ckernel.o
; Wed Aug 14 11:49:43 2019
; Mode: 32 bits
; Syntax: YASM/NASM
; Instruction set: Pentium Pro







_CMain:
        push    ebp                                     ; 0000 _ 55
        mov     ebp, esp                                ; 0001 _ 89. E5
        push    ebx                                     ; 0003 _ 53
        sub     esp, 148                                ; 0004 _ 81. EC, 00000094
        mov     dword [esp], _bootInfo                  ; 000A _ C7. 04 24, 00000014(d)
        call    _initBootInfo                           ; 0011 _ E8, 00002F67
        mov     eax, dword [_bootInfo]                  ; 0016 _ A1, 00000014(d)
        mov     dword [ebp-1CH], eax                    ; 001B _ 89. 45, E4
        movzx   eax, word [?_385]                       ; 001E _ 0F B7. 05, 00000018(d)
        cwde                                            ; 0025 _ 98
        mov     dword [_xsize], eax                     ; 0026 _ A3, 0000013C(d)
        movzx   eax, word [?_386]                       ; 002B _ 0F B7. 05, 0000001A(d)
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
        mov     dword [esp], _keyinfo                   ; 011B _ C7. 04 24, 0000001C(d)
        call    _fifo8_init                             ; 0122 _ E8, 00000000(rel)
        mov     dword [esp+0CH], 0                      ; 0127 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], _mousebuf               ; 012F _ C7. 44 24, 08, 00000080(d)
        mov     dword [esp+4H], 128                     ; 0137 _ C7. 44 24, 04, 00000080
        mov     dword [esp], _mouseinfo                 ; 013F _ C7. 04 24, 00000038(d)
        call    _fifo8_init                             ; 0146 _ E8, 00000000(rel)
        call    _init_palette                           ; 014B _ E8, 00002E4E
        call    _init_keyboard                          ; 0150 _ E8, 000034F1
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
        call    _init_screen8                           ; 0281 _ E8, 000024DE
        mov     dword [esp+4H], 99                      ; 0286 _ C7. 44 24, 04, 00000063
        mov     dword [esp], _buf_mouse                 ; 028E _ C7. 04 24, 00000160(d)
        call    _init_mouse_cursor                      ; 0295 _ E8, 000030DA
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
        mov     dword [esp+4H], ?_361                   ; 032B _ C7. 44 24, 04, 00000000(d)
        mov     dword [esp], eax                        ; 0333 _ 89. 04 24
        call    _message_box                            ; 0336 _ E8, 00003736
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
        call    _enable_mouse                           ; 038A _ E8, 000032F2
        mov     eax, dword [_memman]                    ; 038F _ A1, 00000000(d)
        mov     dword [esp], eax                        ; 0394 _ 89. 04 24
        call    _task_init                              ; 0397 _ E8, 00000000(rel)
        mov     dword [_task_a.2367], eax               ; 039C _ A3, 0000027C(d)
        mov     eax, dword [_task_a.2367]               ; 03A1 _ A1, 0000027C(d)
        mov     dword [?_387], eax                      ; 03A6 _ A3, 00000034(d)
        mov     eax, dword [_task_a.2367]               ; 03AB _ A1, 0000027C(d)
        mov     dword [_task_main], eax                 ; 03B0 _ A3, 00000274(d)
        mov     eax, dword [_task_a.2367]               ; 03B5 _ A1, 0000027C(d)
        mov     dword [esp+8H], 0                       ; 03BA _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], 0                       ; 03C2 _ C7. 44 24, 04, 00000000
        mov     dword [esp], eax                        ; 03CA _ 89. 04 24
        call    _task_run                               ; 03CD _ E8, 00000000(rel)
        mov     dword [ebp-14H], 0                      ; 03D2 _ C7. 45, EC, 00000000
        mov     dword [esp], 0                          ; 03D9 _ C7. 04 24, 00000000
        call    _launch_console                         ; 03E0 _ E8, 000007CD
        mov     dword [ebp-34H], eax                    ; 03E5 _ 89. 45, CC
        add     dword [ebp-14H], 1                      ; 03E8 _ 83. 45, EC, 01
        mov     eax, dword [_shtctl]                    ; 03EC _ A1, 00000264(d)
        mov     dword [esp+0CH], 2                      ; 03F1 _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 8                       ; 03F9 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-34H]                    ; 0401 _ 8B. 55, CC
        mov     dword [esp+4H], edx                     ; 0404 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0408 _ 89. 04 24
        call    _sheet_slide                            ; 040B _ E8, 00000000(rel)
        mov     eax, dword [_shtctl]                    ; 0410 _ A1, 00000264(d)
        mov     dword [esp+8H], 2                       ; 0415 _ C7. 44 24, 08, 00000002
        mov     edx, dword [ebp-34H]                    ; 041D _ 8B. 55, CC
        mov     dword [esp+4H], edx                     ; 0420 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0424 _ 89. 04 24
        call    _sheet_updown                           ; 0427 _ E8, 00000000(rel)
        mov     dword [ebp-38H], 0                      ; 042C _ C7. 45, C8, 00000000
        mov     dword [ebp-3CH], 0                      ; 0433 _ C7. 45, C4, 00000000
        mov     dword [ebp-40H], 0                      ; 043A _ C7. 45, C0, 00000000
        mov     dword [ebp-44H], 0                      ; 0441 _ C7. 45, BC, 00000000
        mov     dword [ebp-48H], 0                      ; 0448 _ C7. 45, B8, 00000000
        mov     dword [ebp-18H], 0                      ; 044F _ C7. 45, E8, 00000000
        mov     dword [ebp-4CH], 0                      ; 0456 _ C7. 45, B4, 00000000
        mov     dword [ebp-50H], 0                      ; 045D _ C7. 45, B0, 00000000
?_001:  mov     dword [esp], _keyinfo                   ; 0464 _ C7. 04 24, 0000001C(d)
        call    _fifo8_status                           ; 046B _ E8, 00000000(rel)
        mov     ebx, eax                                ; 0470 _ 89. C3
        mov     dword [esp], _mouseinfo                 ; 0472 _ C7. 04 24, 00000038(d)
        call    _fifo8_status                           ; 0479 _ E8, 00000000(rel)
        add     ebx, eax                                ; 047E _ 01. C3
        mov     dword [esp], _timerinfo                 ; 0480 _ C7. 04 24, 00000110(d)
        call    _fifo8_status                           ; 0487 _ E8, 00000000(rel)
        add     eax, ebx                                ; 048C _ 01. D8
        test    eax, eax                                ; 048E _ 85. C0
        jnz     ?_002                                   ; 0490 _ 75, 0A
        call    _io_sti                                 ; 0492 _ E8, 00000000(rel)
        jmp     ?_014                                   ; 0497 _ E9, 0000040E

?_002:  mov     dword [esp], _keyinfo                   ; 049C _ C7. 04 24, 0000001C(d)
        call    _fifo8_status                           ; 04A3 _ E8, 00000000(rel)
        test    eax, eax                                ; 04A8 _ 85. C0
        je      ?_013                                   ; 04AA _ 0F 84, 000003C9
        call    _io_sti                                 ; 04B0 _ E8, 00000000(rel)
        mov     dword [esp], _keyinfo                   ; 04B5 _ C7. 04 24, 0000001C(d)
        call    _fifo8_get                              ; 04BC _ E8, 00000000(rel)
        mov     dword [ebp-38H], eax                    ; 04C1 _ 89. 45, C8
        mov     eax, dword [_key_shift]                 ; 04C4 _ A1, 00000004(d)
        test    eax, eax                                ; 04C9 _ 85. C0
        jz      ?_003                                   ; 04CB _ 74, 58
        cmp     dword [ebp-38H], 17                     ; 04CD _ 83. 7D, C8, 11
        jnz     ?_003                                   ; 04D1 _ 75, 52
        mov     eax, dword [ebp-14H]                    ; 04D3 _ 8B. 45, EC
        mov     dword [esp], eax                        ; 04D6 _ 89. 04 24
        call    _launch_console                         ; 04D9 _ E8, 000006D4
        mov     dword [ebp-34H], eax                    ; 04DE _ 89. 45, CC
        mov     eax, dword [_shtctl]                    ; 04E1 _ A1, 00000264(d)
        mov     dword [esp+0CH], 176                    ; 04E6 _ C7. 44 24, 0C, 000000B0
        mov     dword [esp+8H], 156                     ; 04EE _ C7. 44 24, 08, 0000009C
        mov     edx, dword [ebp-34H]                    ; 04F6 _ 8B. 55, CC
        mov     dword [esp+4H], edx                     ; 04F9 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 04FD _ 89. 04 24
        call    _sheet_slide                            ; 0500 _ E8, 00000000(rel)
        mov     eax, dword [_shtctl]                    ; 0505 _ A1, 00000264(d)
        mov     dword [esp+8H], 1                       ; 050A _ C7. 44 24, 08, 00000001
        mov     edx, dword [ebp-34H]                    ; 0512 _ 8B. 55, CC
        mov     dword [esp+4H], edx                     ; 0515 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0519 _ 89. 04 24
        call    _sheet_updown                           ; 051C _ E8, 00000000(rel)
        add     dword [ebp-14H], 1                      ; 0521 _ 83. 45, EC, 01
?_003:  cmp     dword [ebp-38H], 255                    ; 0525 _ 81. 7D, C8, 000000FF
        jnz     ?_004                                   ; 052C _ 75, 21
        mov     eax, dword [_current_console_task]      ; 052E _ A1, 00000278(d)
        test    eax, eax                                ; 0533 _ 85. C0
        jz      ?_004                                   ; 0535 _ 74, 18
        mov     eax, dword [_current_console_task]      ; 0537 _ A1, 00000278(d)
        mov     eax, dword [eax+0B4H]                   ; 053C _ 8B. 80, 000000B4
        mov     dword [esp], eax                        ; 0542 _ 89. 04 24
        call    _close_console                          ; 0545 _ E8, 00001B7A
        jmp     ?_018                                   ; 054A _ E9, 00000448

?_004:  mov     eax, dword [ebp-38H]                    ; 054F _ 8B. 45, C8
        mov     dword [esp], eax                        ; 0552 _ 89. 04 24
        call    _transferScanCode                       ; 0555 _ E8, 0000051B
        cmp     dword [ebp-38H], 16                     ; 055A _ 83. 7D, C8, 10
        jnz     ?_005                                   ; 055E _ 75, 28
        mov     eax, dword [_shtctl]                    ; 0560 _ A1, 00000264(d)
        mov     eax, dword [eax+10H]                    ; 0565 _ 8B. 40, 10
        lea     ecx, [eax-1H]                           ; 0568 _ 8D. 48, FF
        mov     eax, dword [_shtctl]                    ; 056B _ A1, 00000264(d)
        mov     edx, dword [eax+18H]                    ; 0570 _ 8B. 50, 18
        mov     eax, dword [_shtctl]                    ; 0573 _ A1, 00000264(d)
        mov     dword [esp+8H], ecx                     ; 0578 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 057C _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0580 _ 89. 04 24
        call    _sheet_updown                           ; 0583 _ E8, 00000000(rel)
?_005:  cmp     dword [ebp-38H], 15                     ; 0588 _ 83. 7D, C8, 0F
        jne     ?_011                                   ; 058C _ 0F 85, 000001B1
        mov     dword [ebp-54H], -1                     ; 0592 _ C7. 45, AC, FFFFFFFF
        cmp     dword [ebp-18H], 0                      ; 0599 _ 83. 7D, E8, 00
        jne     ?_009                                   ; 059D _ 0F 85, 000000B3
        mov     dword [ebp-18H], 1                      ; 05A3 _ C7. 45, E8, 00000001
        mov     eax, dword [_current_console]           ; 05AA _ A1, 00000010(d)
        cmp     eax, 1                                  ; 05AF _ 83. F8, 01
        jnz     ?_006                                   ; 05B2 _ 75, 0C
        mov     dword [_current_console], 0             ; 05B4 _ C7. 05, 00000010(d), 00000000
        jmp     ?_007                                   ; 05BE _ EB, 0A

?_006:  mov     dword [_current_console], 1             ; 05C0 _ C7. 05, 00000010(d), 00000001
?_007:  mov     edx, dword [_shtMsgBox]                 ; 05CA _ 8B. 15, 00000260(d)
        mov     eax, dword [_shtctl]                    ; 05D0 _ A1, 00000264(d)
        mov     dword [esp+0CH], 0                      ; 05D5 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], ?_362                   ; 05DD _ C7. 44 24, 08, 00000008(d)
        mov     dword [esp+4H], edx                     ; 05E5 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 05E9 _ 89. 04 24
        call    _make_wtitle8                           ; 05EC _ E8, 00003830
        mov     eax, dword [_current_console_task]      ; 05F1 _ A1, 00000278(d)
        test    eax, eax                                ; 05F6 _ 85. C0
        jz      ?_008                                   ; 05F8 _ 74, 2C
        mov     eax, dword [_current_console_task]      ; 05FA _ A1, 00000278(d)
        mov     edx, dword [eax+0B4H]                   ; 05FF _ 8B. 90, 000000B4
        mov     eax, dword [_shtctl]                    ; 0605 _ A1, 00000264(d)
        mov     dword [esp+0CH], 1                      ; 060A _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], ?_363                   ; 0612 _ C7. 44 24, 08, 0000000F(d)
        mov     dword [esp+4H], edx                     ; 061A _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 061E _ 89. 04 24
        call    _make_wtitle8                           ; 0621 _ E8, 000037FB
?_008:  mov     edx, dword [_shtMsgBox]                 ; 0626 _ 8B. 15, 00000260(d)
        mov     eax, dword [_shtctl]                    ; 062C _ A1, 00000264(d)
        mov     dword [esp+10H], 7                      ; 0631 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 28                     ; 0639 _ C7. 44 24, 0C, 0000001C
        mov     ecx, dword [ebp-0CH]                    ; 0641 _ 8B. 4D, F4
        mov     dword [esp+8H], ecx                     ; 0644 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 0648 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 064C _ 89. 04 24
        call    _set_cursor                             ; 064F _ E8, 00000348
        jmp     ?_010                                   ; 0654 _ EB, 63

?_009:  mov     dword [ebp-18H], 0                      ; 0656 _ C7. 45, E8, 00000000
        mov     edx, dword [_shtMsgBox]                 ; 065D _ 8B. 15, 00000260(d)
        mov     eax, dword [_shtctl]                    ; 0663 _ A1, 00000264(d)
        mov     dword [esp+0CH], 1                      ; 0668 _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], ?_362                   ; 0670 _ C7. 44 24, 08, 00000008(d)
        mov     dword [esp+4H], edx                     ; 0678 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 067C _ 89. 04 24
        call    _make_wtitle8                           ; 067F _ E8, 0000379D
        mov     eax, dword [_current_console_task]      ; 0684 _ A1, 00000278(d)
        test    eax, eax                                ; 0689 _ 85. C0
        jz      ?_010                                   ; 068B _ 74, 2C
        mov     eax, dword [_current_console_task]      ; 068D _ A1, 00000278(d)
        mov     edx, dword [eax+0B4H]                   ; 0692 _ 8B. 90, 000000B4
        mov     eax, dword [_shtctl]                    ; 0698 _ A1, 00000264(d)
        mov     dword [esp+0CH], 0                      ; 069D _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], ?_363                   ; 06A5 _ C7. 44 24, 08, 0000000F(d)
        mov     dword [esp+4H], edx                     ; 06AD _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 06B1 _ 89. 04 24
        call    _make_wtitle8                           ; 06B4 _ E8, 00003768
?_010:  mov     eax, dword [_shtMsgBox]                 ; 06B9 _ A1, 00000260(d)
        mov     ecx, dword [eax+4H]                     ; 06BE _ 8B. 48, 04
        mov     edx, dword [_shtMsgBox]                 ; 06C1 _ 8B. 15, 00000260(d)
        mov     eax, dword [_shtctl]                    ; 06C7 _ A1, 00000264(d)
        mov     dword [esp+14H], 21                     ; 06CC _ C7. 44 24, 14, 00000015
        mov     dword [esp+10H], ecx                    ; 06D4 _ 89. 4C 24, 10
        mov     dword [esp+0CH], 0                      ; 06D8 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 06E0 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 06E8 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 06EC _ 89. 04 24
        call    _sheet_refresh                          ; 06EF _ E8, 00000000(rel)
        mov     eax, dword [_current_console_task]      ; 06F4 _ A1, 00000278(d)
        test    eax, eax                                ; 06F9 _ 85. C0
        jz      ?_011                                   ; 06FB _ 74, 46
        mov     eax, dword [_current_console_task]      ; 06FD _ A1, 00000278(d)
        mov     eax, dword [eax+0B4H]                   ; 0702 _ 8B. 80, 000000B4
        mov     ecx, dword [eax+4H]                     ; 0708 _ 8B. 48, 04
        mov     eax, dword [_current_console_task]      ; 070B _ A1, 00000278(d)
        mov     edx, dword [eax+0B4H]                   ; 0710 _ 8B. 90, 000000B4
        mov     eax, dword [_shtctl]                    ; 0716 _ A1, 00000264(d)
        mov     dword [esp+14H], 21                     ; 071B _ C7. 44 24, 14, 00000015
        mov     dword [esp+10H], ecx                    ; 0723 _ 89. 4C 24, 10
        mov     dword [esp+0CH], 0                      ; 0727 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 072F _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 0737 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 073B _ 89. 04 24
        call    _sheet_refresh                          ; 073E _ E8, 00000000(rel)
?_011:  cmp     dword [ebp-18H], 0                      ; 0743 _ 83. 7D, E8, 00
        jne     ?_012                                   ; 0747 _ 0F 85, 000000DA
        mov     eax, dword [ebp-38H]                    ; 074D _ 8B. 45, C8
        mov     dword [esp], eax                        ; 0750 _ 89. 04 24
        call    _transferScanCode                       ; 0753 _ E8, 0000031D
        test    al, al                                  ; 0758 _ 84. C0
        je      ?_014                                   ; 075A _ 0F 84, 0000014A
        cmp     dword [ebp-0CH], 143                    ; 0760 _ 81. 7D, F4, 0000008F
        jg      ?_014                                   ; 0767 _ 0F 8F, 0000013D
        mov     edx, dword [_shtMsgBox]                 ; 076D _ 8B. 15, 00000260(d)
        mov     eax, dword [_shtctl]                    ; 0773 _ A1, 00000264(d)
        mov     dword [esp+10H], 7                      ; 0778 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 28                     ; 0780 _ C7. 44 24, 0C, 0000001C
        mov     ecx, dword [ebp-0CH]                    ; 0788 _ 8B. 4D, F4
        mov     dword [esp+8H], ecx                     ; 078B _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 078F _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0793 _ 89. 04 24
        call    _set_cursor                             ; 0796 _ E8, 00000201
        mov     eax, dword [ebp-38H]                    ; 079B _ 8B. 45, C8
        mov     dword [esp], eax                        ; 079E _ 89. 04 24
        call    _transferScanCode                       ; 07A1 _ E8, 000002CF
        mov     byte [ebp-55H], al                      ; 07A6 _ 88. 45, AB
        movzx   eax, byte [ebp-55H]                     ; 07A9 _ 0F B6. 45, AB
        mov     byte [ebp-6AH], al                      ; 07AD _ 88. 45, 96
        mov     byte [ebp-69H], 0                       ; 07B0 _ C6. 45, 97, 00
        mov     ecx, dword [_shtMsgBox]                 ; 07B4 _ 8B. 0D, 00000260(d)
        mov     edx, dword [_shtctl]                    ; 07BA _ 8B. 15, 00000264(d)
        lea     eax, [ebp-6AH]                          ; 07C0 _ 8D. 45, 96
        mov     dword [esp+14H], eax                    ; 07C3 _ 89. 44 24, 14
        mov     dword [esp+10H], 0                      ; 07C7 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 28                     ; 07CF _ C7. 44 24, 0C, 0000001C
        mov     eax, dword [ebp-0CH]                    ; 07D7 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 07DA _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 07DE _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 07E2 _ 89. 14 24
        call    _showString                             ; 07E5 _ E8, 0000238A
        add     dword [ebp-0CH], 8                      ; 07EA _ 83. 45, F4, 08
        mov     dword [ebp-48H], 1                      ; 07EE _ C7. 45, B8, 00000001
        mov     edx, dword [_shtMsgBox]                 ; 07F5 _ 8B. 15, 00000260(d)
        mov     eax, dword [_shtctl]                    ; 07FB _ A1, 00000264(d)
        mov     ecx, dword [ebp-10H]                    ; 0800 _ 8B. 4D, F0
        mov     dword [esp+10H], ecx                    ; 0803 _ 89. 4C 24, 10
        mov     dword [esp+0CH], 28                     ; 0807 _ C7. 44 24, 0C, 0000001C
        mov     ecx, dword [ebp-0CH]                    ; 080F _ 8B. 4D, F4
        mov     dword [esp+8H], ecx                     ; 0812 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 0816 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 081A _ 89. 04 24
        call    _set_cursor                             ; 081D _ E8, 0000017A
        jmp     ?_014                                   ; 0822 _ E9, 00000083

?_012:  mov     eax, dword [ebp-38H]                    ; 0827 _ 8B. 45, C8
        mov     dword [esp], eax                        ; 082A _ 89. 04 24
        call    _isSpecialKey                           ; 082D _ E8, 000001F1
        test    eax, eax                                ; 0832 _ 85. C0
        jnz     ?_014                                   ; 0834 _ 75, 74
        mov     eax, dword [_current_console_task]      ; 0836 _ A1, 00000278(d)
        test    eax, eax                                ; 083B _ 85. C0
        jz      ?_014                                   ; 083D _ 74, 6B
        mov     eax, dword [ebp-38H]                    ; 083F _ 8B. 45, C8
        movzx   eax, al                                 ; 0842 _ 0F B6. C0
        mov     edx, dword [_current_console_task]      ; 0845 _ 8B. 15, 00000278(d)
        add     edx, 16                                 ; 084B _ 83. C2, 10
        mov     dword [esp+4H], eax                     ; 084E _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 0852 _ 89. 14 24
        call    _fifo8_put                              ; 0855 _ E8, 00000000(rel)
        mov     dword [esp], _keyinfo                   ; 085A _ C7. 04 24, 0000001C(d)
        call    _fifo8_status                           ; 0861 _ E8, 00000000(rel)
        test    eax, eax                                ; 0866 _ 85. C0
        jnz     ?_014                                   ; 0868 _ 75, 40
        mov     eax, dword [_task_a.2367]               ; 086A _ A1, 0000027C(d)
        mov     dword [esp], eax                        ; 086F _ 89. 04 24
        call    _task_sleep                             ; 0872 _ E8, 00000000(rel)
        jmp     ?_014                                   ; 0877 _ EB, 31

?_013:  mov     dword [esp], _mouseinfo                 ; 0879 _ C7. 04 24, 00000038(d)
        call    _fifo8_status                           ; 0880 _ E8, 00000000(rel)
        test    eax, eax                                ; 0885 _ 85. C0
        jz      ?_014                                   ; 0887 _ 74, 21
        mov     ecx, dword [_sht_mouse]                 ; 0889 _ 8B. 0D, 0000026C(d)
        mov     edx, dword [_sht_back]                  ; 088F _ 8B. 15, 00000268(d)
        mov     eax, dword [_shtctl]                    ; 0895 _ A1, 00000264(d)
        mov     dword [esp+8H], ecx                     ; 089A _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 089E _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 08A2 _ 89. 04 24
        call    _show_mouse_info                        ; 08A5 _ E8, 00002373
?_014:  mov     dword [esp], _timerinfo                 ; 08AA _ C7. 04 24, 00000110(d)
        call    _fifo8_status                           ; 08B1 _ E8, 00000000(rel)
        test    eax, eax                                ; 08B6 _ 85. C0
        je      ?_001                                   ; 08B8 _ 0F 84, FFFFFBA6
        call    _io_sti                                 ; 08BE _ E8, 00000000(rel)
        mov     dword [esp], _timerinfo                 ; 08C3 _ C7. 04 24, 00000110(d)
        call    _fifo8_get                              ; 08CA _ E8, 00000000(rel)
        mov     dword [ebp-5CH], eax                    ; 08CF _ 89. 45, A4
        cmp     dword [ebp-5CH], 0                      ; 08D2 _ 83. 7D, A4, 00
        jz      ?_015                                   ; 08D6 _ 74, 24
        mov     dword [esp+8H], 0                       ; 08D8 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], _timerinfo              ; 08E0 _ C7. 44 24, 04, 00000110(d)
        mov     eax, dword [ebp-28H]                    ; 08E8 _ 8B. 45, D8
        mov     dword [esp], eax                        ; 08EB _ 89. 04 24
        call    _timer_init                             ; 08EE _ E8, 00000000(rel)
        mov     dword [ebp-10H], 0                      ; 08F3 _ C7. 45, F0, 00000000
        jmp     ?_016                                   ; 08FA _ EB, 22

?_015:  mov     dword [esp+8H], 1                       ; 08FC _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], _timerinfo              ; 0904 _ C7. 44 24, 04, 00000110(d)
        mov     eax, dword [ebp-28H]                    ; 090C _ 8B. 45, D8
        mov     dword [esp], eax                        ; 090F _ 89. 04 24
        call    _timer_init                             ; 0912 _ E8, 00000000(rel)
        mov     dword [ebp-10H], 7                      ; 0917 _ C7. 45, F0, 00000007
?_016:  mov     dword [esp+4H], 50                      ; 091E _ C7. 44 24, 04, 00000032
        mov     eax, dword [ebp-28H]                    ; 0926 _ 8B. 45, D8
        mov     dword [esp], eax                        ; 0929 _ 89. 04 24
        call    _timer_settime                          ; 092C _ E8, 00000000(rel)
        cmp     dword [ebp-18H], 0                      ; 0931 _ 83. 7D, E8, 00
        jnz     ?_017                                   ; 0935 _ 75, 32
        mov     edx, dword [_shtMsgBox]                 ; 0937 _ 8B. 15, 00000260(d)
        mov     eax, dword [_shtctl]                    ; 093D _ A1, 00000264(d)
        mov     ecx, dword [ebp-10H]                    ; 0942 _ 8B. 4D, F0
        mov     dword [esp+10H], ecx                    ; 0945 _ 89. 4C 24, 10
        mov     dword [esp+0CH], 28                     ; 0949 _ C7. 44 24, 0C, 0000001C
        mov     ecx, dword [ebp-0CH]                    ; 0951 _ 8B. 4D, F4
        mov     dword [esp+8H], ecx                     ; 0954 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 0958 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 095C _ 89. 04 24
        call    _set_cursor                             ; 095F _ E8, 00000038
        jmp     ?_001                                   ; 0964 _ E9, FFFFFAFB

?_017:  mov     edx, dword [_shtMsgBox]                 ; 0969 _ 8B. 15, 00000260(d)
        mov     eax, dword [_shtctl]                    ; 096F _ A1, 00000264(d)
        mov     dword [esp+10H], 7                      ; 0974 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 28                     ; 097C _ C7. 44 24, 0C, 0000001C
        mov     ecx, dword [ebp-0CH]                    ; 0984 _ 8B. 4D, F4
        mov     dword [esp+8H], ecx                     ; 0987 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 098B _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 098F _ 89. 04 24
        call    _set_cursor                             ; 0992 _ E8, 00000005
?_018:  jmp     ?_001                                   ; 0997 _ E9, FFFFFAC8

_set_cursor:; Function begin
        push    ebp                                     ; 099C _ 55
        mov     ebp, esp                                ; 099D _ 89. E5
        push    esi                                     ; 099F _ 56
        push    ebx                                     ; 09A0 _ 53
        sub     esp, 32                                 ; 09A1 _ 83. EC, 20
        mov     eax, dword [ebp+14H]                    ; 09A4 _ 8B. 45, 14
        lea     esi, [eax+0FH]                          ; 09A7 _ 8D. 70, 0F
        mov     eax, dword [ebp+10H]                    ; 09AA _ 8B. 45, 10
        lea     ebx, [eax+7H]                           ; 09AD _ 8D. 58, 07
        mov     eax, dword [ebp+18H]                    ; 09B0 _ 8B. 45, 18
        movzx   eax, al                                 ; 09B3 _ 0F B6. C0
        mov     edx, dword [ebp+0CH]                    ; 09B6 _ 8B. 55, 0C
        mov     ecx, dword [edx+4H]                     ; 09B9 _ 8B. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 09BC _ 8B. 55, 0C
        mov     edx, dword [edx]                        ; 09BF _ 8B. 12
        mov     dword [esp+18H], esi                    ; 09C1 _ 89. 74 24, 18
        mov     dword [esp+14H], ebx                    ; 09C5 _ 89. 5C 24, 14
        mov     ebx, dword [ebp+14H]                    ; 09C9 _ 8B. 5D, 14
        mov     dword [esp+10H], ebx                    ; 09CC _ 89. 5C 24, 10
        mov     ebx, dword [ebp+10H]                    ; 09D0 _ 8B. 5D, 10
        mov     dword [esp+0CH], ebx                    ; 09D3 _ 89. 5C 24, 0C
        mov     dword [esp+8H], eax                     ; 09D7 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 09DB _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 09DF _ 89. 14 24
        call    _boxfill8                               ; 09E2 _ E8, 000027BC
        mov     eax, dword [ebp+14H]                    ; 09E7 _ 8B. 45, 14
        lea     edx, [eax+10H]                          ; 09EA _ 8D. 50, 10
        mov     eax, dword [ebp+10H]                    ; 09ED _ 8B. 45, 10
        add     eax, 8                                  ; 09F0 _ 83. C0, 08
        mov     dword [esp+14H], edx                    ; 09F3 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 09F7 _ 89. 44 24, 10
        mov     eax, dword [ebp+14H]                    ; 09FB _ 8B. 45, 14
        mov     dword [esp+0CH], eax                    ; 09FE _ 89. 44 24, 0C
        mov     eax, dword [ebp+10H]                    ; 0A02 _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 0A05 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 0A09 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0A0C _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0A10 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0A13 _ 89. 04 24
        call    _sheet_refresh                          ; 0A16 _ E8, 00000000(rel)
        nop                                             ; 0A1B _ 90
        add     esp, 32                                 ; 0A1C _ 83. C4, 20
        pop     ebx                                     ; 0A1F _ 5B
        pop     esi                                     ; 0A20 _ 5E
        pop     ebp                                     ; 0A21 _ 5D
        ret                                             ; 0A22 _ C3
; _set_cursor End of function

_isSpecialKey:; Function begin
        push    ebp                                     ; 0A23 _ 55
        mov     ebp, esp                                ; 0A24 _ 89. E5
        sub     esp, 24                                 ; 0A26 _ 83. EC, 18
        mov     eax, dword [ebp+8H]                     ; 0A29 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0A2C _ 89. 04 24
        call    _transferScanCode                       ; 0A2F _ E8, 00000041
        cmp     dword [ebp+8H], 58                      ; 0A34 _ 83. 7D, 08, 3A
        jz      ?_019                                   ; 0A38 _ 74, 2D
        cmp     dword [ebp+8H], 29                      ; 0A3A _ 83. 7D, 08, 1D
        jz      ?_019                                   ; 0A3E _ 74, 27
        cmp     dword [ebp+8H], 186                     ; 0A40 _ 81. 7D, 08, 000000BA
        jz      ?_019                                   ; 0A47 _ 74, 1E
        cmp     dword [ebp+8H], 42                      ; 0A49 _ 83. 7D, 08, 2A
        jz      ?_019                                   ; 0A4D _ 74, 18
        cmp     dword [ebp+8H], 54                      ; 0A4F _ 83. 7D, 08, 36
        jz      ?_019                                   ; 0A53 _ 74, 12
        cmp     dword [ebp+8H], 170                     ; 0A55 _ 81. 7D, 08, 000000AA
        jz      ?_019                                   ; 0A5C _ 74, 09
        cmp     dword [ebp+8H], 182                     ; 0A5E _ 81. 7D, 08, 000000B6
        jnz     ?_020                                   ; 0A65 _ 75, 07
?_019:  mov     eax, 1                                  ; 0A67 _ B8, 00000001
        jmp     ?_021                                   ; 0A6C _ EB, 05

?_020:  mov     eax, 0                                  ; 0A6E _ B8, 00000000
?_021:  leave                                           ; 0A73 _ C9
        ret                                             ; 0A74 _ C3
; _isSpecialKey End of function

_transferScanCode:; Function begin
        push    ebp                                     ; 0A75 _ 55
        mov     ebp, esp                                ; 0A76 _ 89. E5
        sub     esp, 16                                 ; 0A78 _ 83. EC, 10
        cmp     dword [ebp+8H], 42                      ; 0A7B _ 83. 7D, 08, 2A
        jnz     ?_022                                   ; 0A7F _ 75, 0D
        mov     eax, dword [_key_shift]                 ; 0A81 _ A1, 00000004(d)
        or      eax, 01H                                ; 0A86 _ 83. C8, 01
        mov     dword [_key_shift], eax                 ; 0A89 _ A3, 00000004(d)
?_022:  cmp     dword [ebp+8H], 54                      ; 0A8E _ 83. 7D, 08, 36
        jnz     ?_023                                   ; 0A92 _ 75, 0D
        mov     eax, dword [_key_shift]                 ; 0A94 _ A1, 00000004(d)
        or      eax, 02H                                ; 0A99 _ 83. C8, 02
        mov     dword [_key_shift], eax                 ; 0A9C _ A3, 00000004(d)
?_023:  cmp     dword [ebp+8H], 170                     ; 0AA1 _ 81. 7D, 08, 000000AA
        jnz     ?_024                                   ; 0AA8 _ 75, 0D
        mov     eax, dword [_key_shift]                 ; 0AAA _ A1, 00000004(d)
        and     eax, 0FFFFFFFEH                         ; 0AAF _ 83. E0, FE
        mov     dword [_key_shift], eax                 ; 0AB2 _ A3, 00000004(d)
?_024:  cmp     dword [ebp+8H], 182                     ; 0AB7 _ 81. 7D, 08, 000000B6
        jnz     ?_025                                   ; 0ABE _ 75, 0D
        mov     eax, dword [_key_shift]                 ; 0AC0 _ A1, 00000004(d)
        and     eax, 0FFFFFFFDH                         ; 0AC5 _ 83. E0, FD
        mov     dword [_key_shift], eax                 ; 0AC8 _ A3, 00000004(d)
?_025:  cmp     dword [ebp+8H], 58                      ; 0ACD _ 83. 7D, 08, 3A
        jnz     ?_027                                   ; 0AD1 _ 75, 1F
        mov     eax, dword [_caps_lock]                 ; 0AD3 _ A1, 00000008(d)
        test    eax, eax                                ; 0AD8 _ 85. C0
        jnz     ?_026                                   ; 0ADA _ 75, 0C
        mov     dword [_caps_lock], 1                   ; 0ADC _ C7. 05, 00000008(d), 00000001
        jmp     ?_027                                   ; 0AE6 _ EB, 0A

?_026:  mov     dword [_caps_lock], 0                   ; 0AE8 _ C7. 05, 00000008(d), 00000000
?_027:  cmp     dword [ebp+8H], 42                      ; 0AF2 _ 83. 7D, 08, 2A
        jz      ?_028                                   ; 0AF6 _ 74, 24
        cmp     dword [ebp+8H], 54                      ; 0AF8 _ 83. 7D, 08, 36
        jz      ?_028                                   ; 0AFC _ 74, 1E
        cmp     dword [ebp+8H], 170                     ; 0AFE _ 81. 7D, 08, 000000AA
        jz      ?_028                                   ; 0B05 _ 74, 15
        cmp     dword [ebp+8H], 182                     ; 0B07 _ 81. 7D, 08, 000000B6
        jz      ?_028                                   ; 0B0E _ 74, 0C
        cmp     dword [ebp+8H], 83                      ; 0B10 _ 83. 7D, 08, 53
        jg      ?_028                                   ; 0B14 _ 7F, 06
        cmp     dword [ebp+8H], 58                      ; 0B16 _ 83. 7D, 08, 3A
        jnz     ?_029                                   ; 0B1A _ 75, 0A
?_028:  mov     eax, 0                                  ; 0B1C _ B8, 00000000
        jmp     ?_034                                   ; 0B21 _ E9, 0000008A

?_029:  mov     byte [ebp-1H], 0                        ; 0B26 _ C6. 45, FF, 00
        mov     eax, dword [_key_shift]                 ; 0B2A _ A1, 00000004(d)
        test    eax, eax                                ; 0B2F _ 85. C0
        jnz     ?_030                                   ; 0B31 _ 75, 44
        cmp     dword [ebp+8H], 83                      ; 0B33 _ 83. 7D, 08, 53
        jg      ?_030                                   ; 0B37 _ 7F, 3E
        mov     eax, dword [ebp+8H]                     ; 0B39 _ 8B. 45, 08
        add     eax, _keytable                          ; 0B3C _ 05, 00000020(d)
        movzx   eax, byte [eax]                         ; 0B41 _ 0F B6. 00
        test    al, al                                  ; 0B44 _ 84. C0
        jz      ?_030                                   ; 0B46 _ 74, 2F
        mov     eax, dword [ebp+8H]                     ; 0B48 _ 8B. 45, 08
        add     eax, _keytable                          ; 0B4B _ 05, 00000020(d)
        movzx   eax, byte [eax]                         ; 0B50 _ 0F B6. 00
        mov     byte [ebp-1H], al                       ; 0B53 _ 88. 45, FF
        cmp     byte [ebp-1H], 64                       ; 0B56 _ 80. 7D, FF, 40
        jle     ?_032                                   ; 0B5A _ 7E, 4F
        cmp     byte [ebp-1H], 90                       ; 0B5C _ 80. 7D, FF, 5A
        jg      ?_032                                   ; 0B60 _ 7F, 49
        mov     eax, dword [_caps_lock]                 ; 0B62 _ A1, 00000008(d)
        test    eax, eax                                ; 0B67 _ 85. C0
        jnz     ?_032                                   ; 0B69 _ 75, 40
        movzx   eax, byte [ebp-1H]                      ; 0B6B _ 0F B6. 45, FF
        add     eax, 32                                 ; 0B6F _ 83. C0, 20
        mov     byte [ebp-1H], al                       ; 0B72 _ 88. 45, FF
        jmp     ?_032                                   ; 0B75 _ EB, 34

?_030:  mov     eax, dword [_key_shift]                 ; 0B77 _ A1, 00000004(d)
        test    eax, eax                                ; 0B7C _ 85. C0
        jz      ?_031                                   ; 0B7E _ 74, 25
        cmp     dword [ebp+8H], 127                     ; 0B80 _ 83. 7D, 08, 7F
        jg      ?_031                                   ; 0B84 _ 7F, 1F
        mov     eax, dword [ebp+8H]                     ; 0B86 _ 8B. 45, 08
        add     eax, _keytable1                         ; 0B89 _ 05, 00000080(d)
        movzx   eax, byte [eax]                         ; 0B8E _ 0F B6. 00
        test    al, al                                  ; 0B91 _ 84. C0
        jz      ?_031                                   ; 0B93 _ 74, 10
        mov     eax, dword [ebp+8H]                     ; 0B95 _ 8B. 45, 08
        add     eax, _keytable1                         ; 0B98 _ 05, 00000080(d)
        movzx   eax, byte [eax]                         ; 0B9D _ 0F B6. 00
        mov     byte [ebp-1H], al                       ; 0BA0 _ 88. 45, FF
        jmp     ?_033                                   ; 0BA3 _ EB, 07

?_031:  mov     byte [ebp-1H], 0                        ; 0BA5 _ C6. 45, FF, 00
        jmp     ?_033                                   ; 0BA9 _ EB, 01

?_032:  nop                                             ; 0BAB _ 90
?_033:  movzx   eax, byte [ebp-1H]                      ; 0BAC _ 0F B6. 45, FF
?_034:  leave                                           ; 0BB0 _ C9
        ret                                             ; 0BB1 _ C3
; _transferScanCode End of function

_launch_console:; Function begin
        push    ebp                                     ; 0BB2 _ 55
        mov     ebp, esp                                ; 0BB3 _ 89. E5
        push    ebx                                     ; 0BB5 _ 53
        sub     esp, 52                                 ; 0BB6 _ 83. EC, 34
        mov     eax, dword [_shtctl]                    ; 0BB9 _ A1, 00000264(d)
        mov     dword [esp], eax                        ; 0BBE _ 89. 04 24
        call    _sheet_alloc                            ; 0BC1 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 0BC6 _ 89. 45, F4
        mov     eax, dword [_memman]                    ; 0BC9 _ A1, 00000000(d)
        mov     dword [esp+4H], 42240                   ; 0BCE _ C7. 44 24, 04, 0000A500
        mov     dword [esp], eax                        ; 0BD6 _ 89. 04 24
        call    _memman_alloc_4k                        ; 0BD9 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 0BDE _ 89. 45, F0
        mov     dword [esp+10H], 99                     ; 0BE1 _ C7. 44 24, 10, 00000063
        mov     dword [esp+0CH], 165                    ; 0BE9 _ C7. 44 24, 0C, 000000A5
        mov     dword [esp+8H], 256                     ; 0BF1 _ C7. 44 24, 08, 00000100
        mov     eax, dword [ebp-10H]                    ; 0BF9 _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 0BFC _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 0C00 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 0C03 _ 89. 04 24
        call    _sheet_setbuf                           ; 0C06 _ E8, 00000000(rel)
        cmp     dword [ebp+8H], 0                       ; 0C0B _ 83. 7D, 08, 00
        jle     ?_035                                   ; 0C0F _ 7E, 26
        mov     eax, dword [_shtctl]                    ; 0C11 _ A1, 00000264(d)
        mov     dword [esp+0CH], 1                      ; 0C16 _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], ?_363                   ; 0C1E _ C7. 44 24, 08, 0000000F(d)
        mov     edx, dword [ebp-0CH]                    ; 0C26 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 0C29 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0C2D _ 89. 04 24
        call    _make_window8                           ; 0C30 _ E8, 00002F27
        jmp     ?_036                                   ; 0C35 _ EB, 24

?_035:  mov     eax, dword [_shtctl]                    ; 0C37 _ A1, 00000264(d)
        mov     dword [esp+0CH], 0                      ; 0C3C _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], ?_363                   ; 0C44 _ C7. 44 24, 08, 0000000F(d)
        mov     edx, dword [ebp-0CH]                    ; 0C4C _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 0C4F _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0C53 _ 89. 04 24
        call    _make_window8                           ; 0C56 _ E8, 00002F01
?_036:  mov     eax, dword [ebp-0CH]                    ; 0C5B _ 8B. 45, F4
        mov     ecx, dword [eax+8H]                     ; 0C5E _ 8B. 48, 08
        mov     eax, dword [ebp-0CH]                    ; 0C61 _ 8B. 45, F4
        mov     edx, dword [eax+4H]                     ; 0C64 _ 8B. 50, 04
        mov     eax, dword [_shtctl]                    ; 0C67 _ A1, 00000264(d)
        mov     dword [esp+14H], ecx                    ; 0C6C _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 0C70 _ 89. 54 24, 10
        mov     dword [esp+0CH], 0                      ; 0C74 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 0C7C _ C7. 44 24, 08, 00000000
        mov     edx, dword [ebp-0CH]                    ; 0C84 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 0C87 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0C8B _ 89. 04 24
        call    _sheet_refresh                          ; 0C8E _ E8, 00000000(rel)
        mov     dword [esp+14H], 0                      ; 0C93 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], 128                    ; 0C9B _ C7. 44 24, 10, 00000080
        mov     dword [esp+0CH], 240                    ; 0CA3 _ C7. 44 24, 0C, 000000F0
        mov     dword [esp+8H], 28                      ; 0CAB _ C7. 44 24, 08, 0000001C
        mov     dword [esp+4H], 8                       ; 0CB3 _ C7. 44 24, 04, 00000008
        mov     eax, dword [ebp-0CH]                    ; 0CBB _ 8B. 45, F4
        mov     dword [esp], eax                        ; 0CBE _ 89. 04 24
        call    _make_textbox8                          ; 0CC1 _ E8, 00003299
        call    _task_alloc                             ; 0CC6 _ E8, 00000000(rel)
        mov     dword [ebp-14H], eax                    ; 0CCB _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 0CCE _ 8B. 45, EC
        mov     edx, dword [ebp-0CH]                    ; 0CD1 _ 8B. 55, F4
        mov     dword [eax+0B4H], edx                   ; 0CD4 _ 89. 90, 000000B4
        mov     eax, dword [ebp-0CH]                    ; 0CDA _ 8B. 45, F4
        mov     edx, dword [ebp-14H]                    ; 0CDD _ 8B. 55, EC
        mov     dword [eax+20H], edx                    ; 0CE0 _ 89. 50, 20
        mov     eax, dword [_current_console_task]      ; 0CE3 _ A1, 00000278(d)
        test    eax, eax                                ; 0CE8 _ 85. C0
        jz      ?_037                                   ; 0CEA _ 74, 7C
        mov     eax, dword [_current_console_task]      ; 0CEC _ A1, 00000278(d)
        mov     edx, dword [eax+0B4H]                   ; 0CF1 _ 8B. 90, 000000B4
        mov     eax, dword [_shtctl]                    ; 0CF7 _ A1, 00000264(d)
        mov     dword [esp+0CH], 0                      ; 0CFC _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], ?_363                   ; 0D04 _ C7. 44 24, 08, 0000000F(d)
        mov     dword [esp+4H], edx                     ; 0D0C _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0D10 _ 89. 04 24
        call    _make_wtitle8                           ; 0D13 _ E8, 00003109
        mov     eax, dword [_current_console_task]      ; 0D18 _ A1, 00000278(d)
        mov     eax, dword [eax+0B4H]                   ; 0D1D _ 8B. 80, 000000B4
        mov     ebx, dword [eax+8H]                     ; 0D23 _ 8B. 58, 08
        mov     eax, dword [_current_console_task]      ; 0D26 _ A1, 00000278(d)
        mov     eax, dword [eax+0B4H]                   ; 0D2B _ 8B. 80, 000000B4
        mov     ecx, dword [eax+4H]                     ; 0D31 _ 8B. 48, 04
        mov     eax, dword [_current_console_task]      ; 0D34 _ A1, 00000278(d)
        mov     edx, dword [eax+0B4H]                   ; 0D39 _ 8B. 90, 000000B4
        mov     eax, dword [_shtctl]                    ; 0D3F _ A1, 00000264(d)
        mov     dword [esp+14H], ebx                    ; 0D44 _ 89. 5C 24, 14
        mov     dword [esp+10H], ecx                    ; 0D48 _ 89. 4C 24, 10
        mov     dword [esp+0CH], 0                      ; 0D4C _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 0D54 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 0D5C _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0D60 _ 89. 04 24
        call    _sheet_refresh                          ; 0D63 _ E8, 00000000(rel)
?_037:  mov     eax, dword [ebp-14H]                    ; 0D68 _ 8B. 45, EC
        mov     dword [_current_console_task], eax      ; 0D6B _ A3, 00000278(d)
        call    _get_addr_code32                        ; 0D70 _ E8, 00000000(rel)
        mov     dword [ebp-18H], eax                    ; 0D75 _ 89. 45, E8
        mov     eax, dword [ebp-14H]                    ; 0D78 _ 8B. 45, EC
        mov     dword [eax+8CH], 0                      ; 0D7B _ C7. 80, 0000008C, 00000000
        mov     eax, dword [ebp-14H]                    ; 0D85 _ 8B. 45, EC
        mov     dword [eax+90H], 1073741824             ; 0D88 _ C7. 80, 00000090, 40000000
        mov     eax, dword [ebp-18H]                    ; 0D92 _ 8B. 45, E8
        neg     eax                                     ; 0D95 _ F7. D8
        add     eax, _console_task                      ; 0D97 _ 05, 000017F7(d)
        mov     edx, eax                                ; 0D9C _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 0D9E _ 8B. 45, EC
        mov     dword [eax+4CH], edx                    ; 0DA1 _ 89. 50, 4C
        mov     eax, dword [ebp-14H]                    ; 0DA4 _ 8B. 45, EC
        mov     dword [eax+74H], 0                      ; 0DA7 _ C7. 40, 74, 00000000
        mov     eax, dword [ebp-14H]                    ; 0DAE _ 8B. 45, EC
        mov     dword [eax+78H], 8                      ; 0DB1 _ C7. 40, 78, 00000008
        mov     eax, dword [ebp-14H]                    ; 0DB8 _ 8B. 45, EC
        mov     dword [eax+7CH], 32                     ; 0DBB _ C7. 40, 7C, 00000020
        mov     eax, dword [ebp-14H]                    ; 0DC2 _ 8B. 45, EC
        mov     dword [eax+80H], 24                     ; 0DC5 _ C7. 80, 00000080, 00000018
        mov     eax, dword [ebp-14H]                    ; 0DCF _ 8B. 45, EC
        mov     dword [eax+84H], 0                      ; 0DD2 _ C7. 80, 00000084, 00000000
        mov     eax, dword [ebp-14H]                    ; 0DDC _ 8B. 45, EC
        mov     dword [eax+88H], 16                     ; 0DDF _ C7. 80, 00000088, 00000010
        mov     eax, dword [_memman]                    ; 0DE9 _ A1, 00000000(d)
        mov     dword [esp+4H], 65536                   ; 0DEE _ C7. 44 24, 04, 00010000
        mov     dword [esp], eax                        ; 0DF6 _ 89. 04 24
        call    _memman_alloc_4k                        ; 0DF9 _ E8, 00000000(rel)
        mov     edx, eax                                ; 0DFE _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 0E00 _ 8B. 45, EC
        mov     dword [eax+0B8H], edx                   ; 0E03 _ 89. 90, 000000B8
        mov     eax, dword [ebp-14H]                    ; 0E09 _ 8B. 45, EC
        mov     eax, dword [eax+0B8H]                   ; 0E0C _ 8B. 80, 000000B8
        lea     edx, [eax+3F4H]                         ; 0E12 _ 8D. 90, 000003F4
        mov     eax, dword [ebp-14H]                    ; 0E18 _ 8B. 45, EC
        mov     dword [eax+64H], edx                    ; 0E1B _ 89. 50, 64
        mov     eax, dword [ebp-14H]                    ; 0E1E _ 8B. 45, EC
        mov     eax, dword [eax+64H]                    ; 0E21 _ 8B. 40, 64
        add     eax, 4                                  ; 0E24 _ 83. C0, 04
        mov     edx, eax                                ; 0E27 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 0E29 _ 8B. 45, F4
        mov     dword [edx], eax                        ; 0E2C _ 89. 02
        mov     eax, dword [_memman]                    ; 0E2E _ A1, 00000000(d)
        mov     dword [esp], eax                        ; 0E33 _ 89. 04 24
        call    _memman_total                           ; 0E36 _ E8, 00000000(rel)
        mov     edx, eax                                ; 0E3B _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 0E3D _ 8B. 45, EC
        mov     eax, dword [eax+64H]                    ; 0E40 _ 8B. 40, 64
        add     eax, 8                                  ; 0E43 _ 83. C0, 08
        mov     dword [eax], edx                        ; 0E46 _ 89. 10
        mov     dword [esp+8H], 5                       ; 0E48 _ C7. 44 24, 08, 00000005
        mov     dword [esp+4H], 1                       ; 0E50 _ C7. 44 24, 04, 00000001
        mov     eax, dword [ebp-14H]                    ; 0E58 _ 8B. 45, EC
        mov     dword [esp], eax                        ; 0E5B _ 89. 04 24
        call    _task_run                               ; 0E5E _ E8, 00000000(rel)
        cmp     dword [ebp+8H], 0                       ; 0E63 _ 83. 7D, 08, 00
        jnz     ?_038                                   ; 0E67 _ 75, 0A
        mov     eax, dword [ebp-14H]                    ; 0E69 _ 8B. 45, EC
        mov     eax, dword [eax]                        ; 0E6C _ 8B. 00
        mov     dword [_first_task_cons_selector], eax  ; 0E6E _ A3, 0000000C(d)
?_038:  mov     eax, dword [ebp-0CH]                    ; 0E73 _ 8B. 45, F4
        add     esp, 52                                 ; 0E76 _ 83. C4, 34
        pop     ebx                                     ; 0E79 _ 5B
        pop     ebp                                     ; 0E7A _ 5D
        ret                                             ; 0E7B _ C3
; _launch_console End of function

_kill_process:; Function begin
        push    ebp                                     ; 0E7C _ 55
        mov     ebp, esp                                ; 0E7D _ 89. E5
        sub     esp, 40                                 ; 0E7F _ 83. EC, 28
        call    _task_now                               ; 0E82 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 0E87 _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 0E8A _ 8B. 45, F4
        mov     edx, dword [eax+94H]                    ; 0E8D _ 8B. 90, 00000094
        mov     eax, dword [ebp-0CH]                    ; 0E93 _ 8B. 45, F4
        mov     eax, dword [eax+9CH]                    ; 0E96 _ 8B. 80, 0000009C
        mov     dword [esp+4H], edx                     ; 0E9C _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0EA0 _ 89. 04 24
        call    _cons_newline                           ; 0EA3 _ E8, 0000178C
        mov     eax, dword [ebp-0CH]                    ; 0EA8 _ 8B. 45, F4
        mov     eax, dword [eax+9CH]                    ; 0EAB _ 8B. 80, 0000009C
        lea     edx, [eax+10H]                          ; 0EB1 _ 8D. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 0EB4 _ 8B. 45, F4
        mov     dword [eax+9CH], edx                    ; 0EB7 _ 89. 90, 0000009C
        mov     eax, dword [ebp-0CH]                    ; 0EBD _ 8B. 45, F4
        add     eax, 48                                 ; 0EC0 _ 83. C0, 30
        mov     dword [esp], eax                        ; 0EC3 _ 89. 04 24
        call    _asm_end_app                            ; 0EC6 _ E8, 00000000(rel)
        nop                                             ; 0ECB _ 90
        leave                                           ; 0ECC _ C9
        ret                                             ; 0ECD _ C3
; _kill_process End of function

_cmd_dir:; Function begin
        push    ebp                                     ; 0ECE _ 55
        mov     ebp, esp                                ; 0ECF _ 89. E5
        push    ebx                                     ; 0ED1 _ 53
        sub     esp, 68                                 ; 0ED2 _ 83. EC, 44
        call    _task_now                               ; 0ED5 _ E8, 00000000(rel)
        mov     dword [ebp-18H], eax                    ; 0EDA _ 89. 45, E8
        mov     dword [ebp-0CH], 78848                  ; 0EDD _ C7. 45, F4, 00013400
        mov     eax, dword [_memman]                    ; 0EE4 _ A1, 00000000(d)
        mov     dword [esp+4H], 13                      ; 0EE9 _ C7. 44 24, 04, 0000000D
        mov     dword [esp], eax                        ; 0EF1 _ 89. 04 24
        call    _memman_alloc                           ; 0EF4 _ E8, 00000000(rel)
        mov     dword [ebp-1CH], eax                    ; 0EF9 _ 89. 45, E4
        mov     eax, dword [ebp-1CH]                    ; 0EFC _ 8B. 45, E4
        add     eax, 12                                 ; 0EFF _ 83. C0, 0C
        mov     byte [eax], 0                           ; 0F02 _ C6. 00, 00
        jmp     ?_046                                   ; 0F05 _ E9, 00000143

?_039:  mov     dword [ebp-10H], 0                      ; 0F0A _ C7. 45, F0, 00000000
        jmp     ?_041                                   ; 0F11 _ EB, 2A

?_040:  mov     edx, dword [ebp-0CH]                    ; 0F13 _ 8B. 55, F4
        mov     eax, dword [ebp-10H]                    ; 0F16 _ 8B. 45, F0
        add     eax, edx                                ; 0F19 _ 01. D0
        movzx   eax, byte [eax]                         ; 0F1B _ 0F B6. 00
        test    al, al                                  ; 0F1E _ 84. C0
        jz      ?_042                                   ; 0F20 _ 74, 23
        mov     edx, dword [ebp-0CH]                    ; 0F22 _ 8B. 55, F4
        mov     eax, dword [ebp-10H]                    ; 0F25 _ 8B. 45, F0
        add     eax, edx                                ; 0F28 _ 01. D0
        movzx   ecx, byte [eax]                         ; 0F2A _ 0F B6. 08
        mov     edx, dword [ebp-10H]                    ; 0F2D _ 8B. 55, F0
        mov     eax, dword [ebp-1CH]                    ; 0F30 _ 8B. 45, E4
        add     eax, edx                                ; 0F33 _ 01. D0
        mov     edx, ecx                                ; 0F35 _ 89. CA
        mov     byte [eax], dl                          ; 0F37 _ 88. 10
        add     dword [ebp-10H], 1                      ; 0F39 _ 83. 45, F0, 01
?_041:  cmp     dword [ebp-10H], 7                      ; 0F3D _ 83. 7D, F0, 07
        jle     ?_040                                   ; 0F41 _ 7E, D0
        jmp     ?_043                                   ; 0F43 _ EB, 01

?_042:  nop                                             ; 0F45 _ 90
?_043:  mov     dword [ebp-14H], 0                      ; 0F46 _ C7. 45, EC, 00000000
        mov     edx, dword [ebp-10H]                    ; 0F4D _ 8B. 55, F0
        mov     eax, dword [ebp-1CH]                    ; 0F50 _ 8B. 45, E4
        add     eax, edx                                ; 0F53 _ 01. D0
        mov     byte [eax], 46                          ; 0F55 _ C6. 00, 2E
        add     dword [ebp-10H], 1                      ; 0F58 _ 83. 45, F0, 01
        mov     dword [ebp-14H], 0                      ; 0F5C _ C7. 45, EC, 00000000
        jmp     ?_045                                   ; 0F63 _ EB, 22

?_044:  mov     edx, dword [ebp-0CH]                    ; 0F65 _ 8B. 55, F4
        mov     eax, dword [ebp-14H]                    ; 0F68 _ 8B. 45, EC
        add     eax, edx                                ; 0F6B _ 01. D0
        add     eax, 8                                  ; 0F6D _ 83. C0, 08
        movzx   ecx, byte [eax]                         ; 0F70 _ 0F B6. 08
        mov     edx, dword [ebp-10H]                    ; 0F73 _ 8B. 55, F0
        mov     eax, dword [ebp-1CH]                    ; 0F76 _ 8B. 45, E4
        add     eax, edx                                ; 0F79 _ 01. D0
        mov     edx, ecx                                ; 0F7B _ 89. CA
        mov     byte [eax], dl                          ; 0F7D _ 88. 10
        add     dword [ebp-10H], 1                      ; 0F7F _ 83. 45, F0, 01
        add     dword [ebp-14H], 1                      ; 0F83 _ 83. 45, EC, 01
?_045:  cmp     dword [ebp-14H], 2                      ; 0F87 _ 83. 7D, EC, 02
        jle     ?_044                                   ; 0F8B _ 7E, D8
        mov     eax, dword [ebp-18H]                    ; 0F8D _ 8B. 45, E8
        mov     ecx, dword [eax+9CH]                    ; 0F90 _ 8B. 88, 0000009C
        mov     eax, dword [ebp-18H]                    ; 0F96 _ 8B. 45, E8
        mov     edx, dword [eax+94H]                    ; 0F99 _ 8B. 90, 00000094
        mov     eax, dword [_shtctl]                    ; 0F9F _ A1, 00000264(d)
        mov     ebx, dword [ebp-1CH]                    ; 0FA4 _ 8B. 5D, E4
        mov     dword [esp+14H], ebx                    ; 0FA7 _ 89. 5C 24, 14
        mov     dword [esp+10H], 7                      ; 0FAB _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ecx                    ; 0FB3 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 16                      ; 0FB7 _ C7. 44 24, 08, 00000010
        mov     dword [esp+4H], edx                     ; 0FBF _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0FC3 _ 89. 04 24
        call    _showString                             ; 0FC6 _ E8, 00001BA9
        mov     dword [ebp-20H], 136                    ; 0FCB _ C7. 45, E0, 00000088
        mov     eax, dword [ebp-0CH]                    ; 0FD2 _ 8B. 45, F4
        mov     eax, dword [eax+1CH]                    ; 0FD5 _ 8B. 40, 1C
        mov     dword [esp], eax                        ; 0FD8 _ 89. 04 24
        call    _intToHexStr                            ; 0FDB _ E8, 000025B0
        mov     dword [ebp-24H], eax                    ; 0FE0 _ 89. 45, DC
        mov     eax, dword [ebp-18H]                    ; 0FE3 _ 8B. 45, E8
        mov     ecx, dword [eax+9CH]                    ; 0FE6 _ 8B. 88, 0000009C
        mov     eax, dword [ebp-18H]                    ; 0FEC _ 8B. 45, E8
        mov     edx, dword [eax+94H]                    ; 0FEF _ 8B. 90, 00000094
        mov     eax, dword [_shtctl]                    ; 0FF5 _ A1, 00000264(d)
        mov     ebx, dword [ebp-24H]                    ; 0FFA _ 8B. 5D, DC
        mov     dword [esp+14H], ebx                    ; 0FFD _ 89. 5C 24, 14
        mov     dword [esp+10H], 7                      ; 1001 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ecx                    ; 1009 _ 89. 4C 24, 0C
        mov     ecx, dword [ebp-20H]                    ; 100D _ 8B. 4D, E0
        mov     dword [esp+8H], ecx                     ; 1010 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 1014 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1018 _ 89. 04 24
        call    _showString                             ; 101B _ E8, 00001B54
        mov     eax, dword [ebp-18H]                    ; 1020 _ 8B. 45, E8
        mov     edx, dword [eax+94H]                    ; 1023 _ 8B. 90, 00000094
        mov     eax, dword [ebp-18H]                    ; 1029 _ 8B. 45, E8
        mov     eax, dword [eax+9CH]                    ; 102C _ 8B. 80, 0000009C
        mov     dword [esp+4H], edx                     ; 1032 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1036 _ 89. 04 24
        call    _cons_newline                           ; 1039 _ E8, 000015F6
        mov     edx, eax                                ; 103E _ 89. C2
        mov     eax, dword [ebp-18H]                    ; 1040 _ 8B. 45, E8
        mov     dword [eax+9CH], edx                    ; 1043 _ 89. 90, 0000009C
        add     dword [ebp-0CH], 32                     ; 1049 _ 83. 45, F4, 20
?_046:  mov     eax, dword [ebp-0CH]                    ; 104D _ 8B. 45, F4
        movzx   eax, byte [eax]                         ; 1050 _ 0F B6. 00
        test    al, al                                  ; 1053 _ 84. C0
        jne     ?_039                                   ; 1055 _ 0F 85, FFFFFEAF
        mov     edx, dword [ebp-1CH]                    ; 105B _ 8B. 55, E4
        mov     eax, dword [_memman]                    ; 105E _ A1, 00000000(d)
        mov     dword [esp+8H], 13                      ; 1063 _ C7. 44 24, 08, 0000000D
        mov     dword [esp+4H], edx                     ; 106B _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 106F _ 89. 04 24
        call    _memman_free                            ; 1072 _ E8, 00000000(rel)
        nop                                             ; 1077 _ 90
        add     esp, 68                                 ; 1078 _ 83. C4, 44
        pop     ebx                                     ; 107B _ 5B
        pop     ebp                                     ; 107C _ 5D
        ret                                             ; 107D _ C3
; _cmd_dir End of function

_cmd_type:; Function begin
        push    ebp                                     ; 107E _ 55
        mov     ebp, esp                                ; 107F _ 89. E5
        push    esi                                     ; 1081 _ 56
        push    ebx                                     ; 1082 _ 53
        sub     esp, 96                                 ; 1083 _ 83. EC, 60
        call    _task_now                               ; 1086 _ E8, 00000000(rel)
        mov     dword [ebp-24H], eax                    ; 108B _ 89. 45, DC
        mov     eax, dword [_memman]                    ; 108E _ A1, 00000000(d)
        mov     dword [esp+4H], 13                      ; 1093 _ C7. 44 24, 04, 0000000D
        mov     dword [esp], eax                        ; 109B _ 89. 04 24
        call    _memman_alloc                           ; 109E _ E8, 00000000(rel)
        mov     dword [ebp-28H], eax                    ; 10A3 _ 89. 45, D8
        mov     eax, dword [ebp-28H]                    ; 10A6 _ 8B. 45, D8
        add     eax, 12                                 ; 10A9 _ 83. C0, 0C
        mov     byte [eax], 0                           ; 10AC _ C6. 00, 00
        mov     dword [ebp-0CH], 0                      ; 10AF _ C7. 45, F4, 00000000
        mov     dword [ebp-10H], 5                      ; 10B6 _ C7. 45, F0, 00000005
        mov     dword [ebp-10H], 5                      ; 10BD _ C7. 45, F0, 00000005
        jmp     ?_048                                   ; 10C4 _ EB, 2C

?_047:  mov     edx, dword [ebp-10H]                    ; 10C6 _ 8B. 55, F0
        mov     eax, dword [ebp+8H]                     ; 10C9 _ 8B. 45, 08
        add     eax, edx                                ; 10CC _ 01. D0
        movzx   eax, byte [eax]                         ; 10CE _ 0F B6. 00
        test    al, al                                  ; 10D1 _ 84. C0
        jz      ?_049                                   ; 10D3 _ 74, 25
        mov     edx, dword [ebp-10H]                    ; 10D5 _ 8B. 55, F0
        mov     eax, dword [ebp+8H]                     ; 10D8 _ 8B. 45, 08
        add     eax, edx                                ; 10DB _ 01. D0
        mov     ecx, dword [ebp-0CH]                    ; 10DD _ 8B. 4D, F4
        mov     edx, dword [ebp-28H]                    ; 10E0 _ 8B. 55, D8
        add     edx, ecx                                ; 10E3 _ 01. CA
        movzx   eax, byte [eax]                         ; 10E5 _ 0F B6. 00
        mov     byte [edx], al                          ; 10E8 _ 88. 02
        add     dword [ebp-0CH], 1                      ; 10EA _ 83. 45, F4, 01
        add     dword [ebp-10H], 1                      ; 10EE _ 83. 45, F0, 01
?_048:  cmp     dword [ebp-10H], 16                     ; 10F2 _ 83. 7D, F0, 10
        jle     ?_047                                   ; 10F6 _ 7E, CE
        jmp     ?_050                                   ; 10F8 _ EB, 01

?_049:  nop                                             ; 10FA _ 90
?_050:  mov     edx, dword [ebp-0CH]                    ; 10FB _ 8B. 55, F4
        mov     eax, dword [ebp-28H]                    ; 10FE _ 8B. 45, D8
        add     eax, edx                                ; 1101 _ 01. D0
        mov     byte [eax], 0                           ; 1103 _ C6. 00, 00
        mov     dword [ebp-14H], 78848                  ; 1106 _ C7. 45, EC, 00013400
        jmp     ?_065                                   ; 110D _ E9, 000002A9

?_051:  mov     byte [ebp-31H], 0                       ; 1112 _ C6. 45, CF, 00
        mov     dword [ebp-18H], 0                      ; 1116 _ C7. 45, E8, 00000000
        jmp     ?_053                                   ; 111D _ EB, 2A

?_052:  mov     edx, dword [ebp-14H]                    ; 111F _ 8B. 55, EC
        mov     eax, dword [ebp-18H]                    ; 1122 _ 8B. 45, E8
        add     eax, edx                                ; 1125 _ 01. D0
        movzx   eax, byte [eax]                         ; 1127 _ 0F B6. 00
        test    al, al                                  ; 112A _ 84. C0
        jz      ?_054                                   ; 112C _ 74, 23
        mov     edx, dword [ebp-14H]                    ; 112E _ 8B. 55, EC
        mov     eax, dword [ebp-18H]                    ; 1131 _ 8B. 45, E8
        add     eax, edx                                ; 1134 _ 01. D0
        movzx   eax, byte [eax]                         ; 1136 _ 0F B6. 00
        mov     ecx, eax                                ; 1139 _ 89. C1
        lea     eax, [ebp-3DH]                          ; 113B _ 8D. 45, C3
        mov     edx, dword [ebp-18H]                    ; 113E _ 8B. 55, E8
        add     eax, edx                                ; 1141 _ 01. D0
        mov     byte [eax], cl                          ; 1143 _ 88. 08
        add     dword [ebp-18H], 1                      ; 1145 _ 83. 45, E8, 01
?_053:  cmp     dword [ebp-18H], 7                      ; 1149 _ 83. 7D, E8, 07
        jle     ?_052                                   ; 114D _ 7E, D0
        jmp     ?_055                                   ; 114F _ EB, 01

?_054:  nop                                             ; 1151 _ 90
?_055:  mov     dword [ebp-1CH], 0                      ; 1152 _ C7. 45, E4, 00000000
        lea     eax, [ebp-3DH]                          ; 1159 _ 8D. 45, C3
        mov     edx, dword [ebp-18H]                    ; 115C _ 8B. 55, E8
        add     eax, edx                                ; 115F _ 01. D0
        mov     byte [eax], 46                          ; 1161 _ C6. 00, 2E
        add     dword [ebp-18H], 1                      ; 1164 _ 83. 45, E8, 01
        mov     dword [ebp-1CH], 0                      ; 1168 _ C7. 45, E4, 00000000
        jmp     ?_057                                   ; 116F _ EB, 22

?_056:  mov     edx, dword [ebp-14H]                    ; 1171 _ 8B. 55, EC
        mov     eax, dword [ebp-1CH]                    ; 1174 _ 8B. 45, E4
        add     eax, edx                                ; 1177 _ 01. D0
        add     eax, 8                                  ; 1179 _ 83. C0, 08
        movzx   eax, byte [eax]                         ; 117C _ 0F B6. 00
        mov     ecx, eax                                ; 117F _ 89. C1
        lea     eax, [ebp-3DH]                          ; 1181 _ 8D. 45, C3
        mov     edx, dword [ebp-18H]                    ; 1184 _ 8B. 55, E8
        add     eax, edx                                ; 1187 _ 01. D0
        mov     byte [eax], cl                          ; 1189 _ 88. 08
        add     dword [ebp-18H], 1                      ; 118B _ 83. 45, E8, 01
        add     dword [ebp-1CH], 1                      ; 118F _ 83. 45, E4, 01
?_057:  cmp     dword [ebp-1CH], 2                      ; 1193 _ 83. 7D, E4, 02
        jle     ?_056                                   ; 1197 _ 7E, D8
        lea     eax, [ebp-3DH]                          ; 1199 _ 8D. 45, C3
        mov     dword [esp+4H], eax                     ; 119C _ 89. 44 24, 04
        mov     eax, dword [ebp-28H]                    ; 11A0 _ 8B. 45, D8
        mov     dword [esp], eax                        ; 11A3 _ 89. 04 24
        call    _strcmp                                 ; 11A6 _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 11AB _ 83. F8, 01
        jne     ?_064                                   ; 11AE _ 0F 85, 00000203
        mov     dword [ebp-2CH], 88064                  ; 11B4 _ C7. 45, D4, 00015800
        mov     eax, dword [ebp-14H]                    ; 11BB _ 8B. 45, EC
        movzx   eax, word [eax+1AH]                     ; 11BE _ 0F B7. 40, 1A
        movzx   eax, ax                                 ; 11C2 _ 0F B7. C0
        shl     eax, 9                                  ; 11C5 _ C1. E0, 09
        add     dword [ebp-2CH], eax                    ; 11C8 _ 01. 45, D4
        mov     eax, dword [ebp-14H]                    ; 11CB _ 8B. 45, EC
        mov     eax, dword [eax+1CH]                    ; 11CE _ 8B. 40, 1C
        mov     dword [ebp-30H], eax                    ; 11D1 _ 89. 45, D0
        mov     dword [ebp-20H], 0                      ; 11D4 _ C7. 45, E0, 00000000
        mov     eax, dword [ebp-24H]                    ; 11DB _ 8B. 45, DC
        mov     dword [eax+98H], 16                     ; 11DE _ C7. 80, 00000098, 00000010
        mov     dword [ebp-20H], 0                      ; 11E8 _ C7. 45, E0, 00000000
        jmp     ?_063                                   ; 11EF _ E9, 000001B4

?_058:  mov     edx, dword [ebp-20H]                    ; 11F4 _ 8B. 55, E0
        mov     eax, dword [ebp-2CH]                    ; 11F7 _ 8B. 45, D4
        add     eax, edx                                ; 11FA _ 01. D0
        movzx   eax, byte [eax]                         ; 11FC _ 0F B6. 00
        mov     byte [ebp-3FH], al                      ; 11FF _ 88. 45, C1
        mov     byte [ebp-3EH], 0                       ; 1202 _ C6. 45, C2, 00
        movzx   eax, byte [ebp-3FH]                     ; 1206 _ 0F B6. 45, C1
        cmp     al, 9                                   ; 120A _ 3C, 09
        jne     ?_060                                   ; 120C _ 0F 85, 000000A4
?_059:  mov     eax, dword [ebp-24H]                    ; 1212 _ 8B. 45, DC
        mov     ebx, dword [eax+9CH]                    ; 1215 _ 8B. 98, 0000009C
        mov     eax, dword [ebp-24H]                    ; 121B _ 8B. 45, DC
        mov     ecx, dword [eax+98H]                    ; 121E _ 8B. 88, 00000098
        mov     eax, dword [ebp-24H]                    ; 1224 _ 8B. 45, DC
        mov     edx, dword [eax+94H]                    ; 1227 _ 8B. 90, 00000094
        mov     eax, dword [_shtctl]                    ; 122D _ A1, 00000264(d)
        mov     dword [esp+14H], ?_364                  ; 1232 _ C7. 44 24, 14, 00000017(d)
        mov     dword [esp+10H], 7                      ; 123A _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ebx                    ; 1242 _ 89. 5C 24, 0C
        mov     dword [esp+8H], ecx                     ; 1246 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 124A _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 124E _ 89. 04 24
        call    _showString                             ; 1251 _ E8, 0000191E
        mov     eax, dword [ebp-24H]                    ; 1256 _ 8B. 45, DC
        mov     eax, dword [eax+98H]                    ; 1259 _ 8B. 80, 00000098
        lea     edx, [eax+8H]                           ; 125F _ 8D. 50, 08
        mov     eax, dword [ebp-24H]                    ; 1262 _ 8B. 45, DC
        mov     dword [eax+98H], edx                    ; 1265 _ 89. 90, 00000098
        mov     eax, dword [ebp-24H]                    ; 126B _ 8B. 45, DC
        mov     eax, dword [eax+98H]                    ; 126E _ 8B. 80, 00000098
        cmp     eax, 248                                ; 1274 _ 3D, 000000F8
        jnz     ?_059                                   ; 1279 _ 75, 97
        mov     eax, dword [ebp-24H]                    ; 127B _ 8B. 45, DC
        mov     dword [eax+98H], 8                      ; 127E _ C7. 80, 00000098, 00000008
        mov     eax, dword [ebp-24H]                    ; 1288 _ 8B. 45, DC
        mov     edx, dword [eax+94H]                    ; 128B _ 8B. 90, 00000094
        mov     eax, dword [ebp-24H]                    ; 1291 _ 8B. 45, DC
        mov     eax, dword [eax+9CH]                    ; 1294 _ 8B. 80, 0000009C
        mov     dword [esp+4H], edx                     ; 129A _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 129E _ 89. 04 24
        call    _cons_newline                           ; 12A1 _ E8, 0000138E
        mov     edx, eax                                ; 12A6 _ 89. C2
        mov     eax, dword [ebp-24H]                    ; 12A8 _ 8B. 45, DC
        mov     dword [eax+9CH], edx                    ; 12AB _ 89. 90, 0000009C
        jmp     ?_059                                   ; 12B1 _ E9, FFFFFF5C

?_060:  movzx   eax, byte [ebp-3FH]                     ; 12B6 _ 0F B6. 45, C1
        cmp     al, 10                                  ; 12BA _ 3C, 0A
        jnz     ?_061                                   ; 12BC _ 75, 3B
        mov     eax, dword [ebp-24H]                    ; 12BE _ 8B. 45, DC
        mov     dword [eax+98H], 8                      ; 12C1 _ C7. 80, 00000098, 00000008
        mov     eax, dword [ebp-24H]                    ; 12CB _ 8B. 45, DC
        mov     edx, dword [eax+94H]                    ; 12CE _ 8B. 90, 00000094
        mov     eax, dword [ebp-24H]                    ; 12D4 _ 8B. 45, DC
        mov     eax, dword [eax+9CH]                    ; 12D7 _ 8B. 80, 0000009C
        mov     dword [esp+4H], edx                     ; 12DD _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 12E1 _ 89. 04 24
        call    _cons_newline                           ; 12E4 _ E8, 0000134B
        mov     edx, eax                                ; 12E9 _ 89. C2
        mov     eax, dword [ebp-24H]                    ; 12EB _ 8B. 45, DC
        mov     dword [eax+9CH], edx                    ; 12EE _ 89. 90, 0000009C
        jmp     ?_062                                   ; 12F4 _ E9, 000000AB

?_061:  movzx   eax, byte [ebp-3FH]                     ; 12F9 _ 0F B6. 45, C1
        cmp     al, 13                                  ; 12FD _ 3C, 0D
        je      ?_062                                   ; 12FF _ 0F 84, 0000009F
        mov     eax, dword [ebp-24H]                    ; 1305 _ 8B. 45, DC
        mov     esi, dword [eax+9CH]                    ; 1308 _ 8B. B0, 0000009C
        mov     eax, dword [ebp-24H]                    ; 130E _ 8B. 45, DC
        mov     ebx, dword [eax+98H]                    ; 1311 _ 8B. 98, 00000098
        mov     eax, dword [ebp-24H]                    ; 1317 _ 8B. 45, DC
        mov     ecx, dword [eax+94H]                    ; 131A _ 8B. 88, 00000094
        mov     edx, dword [_shtctl]                    ; 1320 _ 8B. 15, 00000264(d)
        lea     eax, [ebp-3FH]                          ; 1326 _ 8D. 45, C1
        mov     dword [esp+14H], eax                    ; 1329 _ 89. 44 24, 14
        mov     dword [esp+10H], 7                      ; 132D _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], esi                    ; 1335 _ 89. 74 24, 0C
        mov     dword [esp+8H], ebx                     ; 1339 _ 89. 5C 24, 08
        mov     dword [esp+4H], ecx                     ; 133D _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 1341 _ 89. 14 24
        call    _showString                             ; 1344 _ E8, 0000182B
        mov     eax, dword [ebp-24H]                    ; 1349 _ 8B. 45, DC
        mov     eax, dword [eax+98H]                    ; 134C _ 8B. 80, 00000098
        lea     edx, [eax+8H]                           ; 1352 _ 8D. 50, 08
        mov     eax, dword [ebp-24H]                    ; 1355 _ 8B. 45, DC
        mov     dword [eax+98H], edx                    ; 1358 _ 89. 90, 00000098
        mov     eax, dword [ebp-24H]                    ; 135E _ 8B. 45, DC
        mov     eax, dword [eax+98H]                    ; 1361 _ 8B. 80, 00000098
        cmp     eax, 248                                ; 1367 _ 3D, 000000F8
        jnz     ?_062                                   ; 136C _ 75, 36
        mov     eax, dword [ebp-24H]                    ; 136E _ 8B. 45, DC
        mov     dword [eax+98H], 16                     ; 1371 _ C7. 80, 00000098, 00000010
        mov     eax, dword [ebp-24H]                    ; 137B _ 8B. 45, DC
        mov     edx, dword [eax+94H]                    ; 137E _ 8B. 90, 00000094
        mov     eax, dword [ebp-24H]                    ; 1384 _ 8B. 45, DC
        mov     eax, dword [eax+9CH]                    ; 1387 _ 8B. 80, 0000009C
        mov     dword [esp+4H], edx                     ; 138D _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1391 _ 89. 04 24
        call    _cons_newline                           ; 1394 _ E8, 0000129B
        mov     edx, eax                                ; 1399 _ 89. C2
        mov     eax, dword [ebp-24H]                    ; 139B _ 8B. 45, DC
        mov     dword [eax+9CH], edx                    ; 139E _ 89. 90, 0000009C
?_062:  add     dword [ebp-20H], 1                      ; 13A4 _ 83. 45, E0, 01
?_063:  mov     eax, dword [ebp-20H]                    ; 13A8 _ 8B. 45, E0
        cmp     eax, dword [ebp-30H]                    ; 13AB _ 3B. 45, D0
        jl      ?_058                                   ; 13AE _ 0F 8C, FFFFFE40
        nop                                             ; 13B4 _ 90
        jmp     ?_066                                   ; 13B5 _ EB, 12

?_064:  add     dword [ebp-14H], 32                     ; 13B7 _ 83. 45, EC, 20
?_065:  mov     eax, dword [ebp-14H]                    ; 13BB _ 8B. 45, EC
        movzx   eax, byte [eax]                         ; 13BE _ 0F B6. 00
        test    al, al                                  ; 13C1 _ 84. C0
        jne     ?_051                                   ; 13C3 _ 0F 85, FFFFFD49
?_066:  mov     eax, dword [ebp-24H]                    ; 13C9 _ 8B. 45, DC
        mov     edx, dword [eax+94H]                    ; 13CC _ 8B. 90, 00000094
        mov     eax, dword [ebp-24H]                    ; 13D2 _ 8B. 45, DC
        mov     eax, dword [eax+9CH]                    ; 13D5 _ 8B. 80, 0000009C
        mov     dword [esp+4H], edx                     ; 13DB _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 13DF _ 89. 04 24
        call    _cons_newline                           ; 13E2 _ E8, 0000124D
        mov     edx, eax                                ; 13E7 _ 89. C2
        mov     eax, dword [ebp-24H]                    ; 13E9 _ 8B. 45, DC
        mov     dword [eax+9CH], edx                    ; 13EC _ 89. 90, 0000009C
        mov     edx, dword [ebp-28H]                    ; 13F2 _ 8B. 55, D8
        mov     eax, dword [_memman]                    ; 13F5 _ A1, 00000000(d)
        mov     dword [esp+8H], 13                      ; 13FA _ C7. 44 24, 08, 0000000D
        mov     dword [esp+4H], edx                     ; 1402 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1406 _ 89. 04 24
        call    _memman_free                            ; 1409 _ E8, 00000000(rel)
        mov     eax, dword [ebp-24H]                    ; 140E _ 8B. 45, DC
        mov     dword [eax+98H], 16                     ; 1411 _ C7. 80, 00000098, 00000010
        nop                                             ; 141B _ 90
        add     esp, 96                                 ; 141C _ 83. C4, 60
        pop     ebx                                     ; 141F _ 5B
        pop     esi                                     ; 1420 _ 5E
        pop     ebp                                     ; 1421 _ 5D
        ret                                             ; 1422 _ C3
; _cmd_type End of function

_cmd_mem:; Function begin
        push    ebp                                     ; 1423 _ 55
        mov     ebp, esp                                ; 1424 _ 89. E5
        push    ebx                                     ; 1426 _ 53
        sub     esp, 52                                 ; 1427 _ 83. EC, 34
        call    _task_now                               ; 142A _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 142F _ 89. 45, F4
        mov     eax, dword [ebp+8H]                     ; 1432 _ 8B. 45, 08
        lea     edx, [eax+3FFH]                         ; 1435 _ 8D. 90, 000003FF
        test    eax, eax                                ; 143B _ 85. C0
        cmovs   eax, edx                                ; 143D _ 0F 48. C2
        sar     eax, 10                                 ; 1440 _ C1. F8, 0A
        mov     dword [esp], eax                        ; 1443 _ 89. 04 24
        call    _intToHexStr                            ; 1446 _ E8, 00002145
        mov     dword [ebp-10H], eax                    ; 144B _ 89. 45, F0
        mov     eax, dword [ebp-0CH]                    ; 144E _ 8B. 45, F4
        mov     ecx, dword [eax+9CH]                    ; 1451 _ 8B. 88, 0000009C
        mov     eax, dword [ebp-0CH]                    ; 1457 _ 8B. 45, F4
        mov     edx, dword [eax+94H]                    ; 145A _ 8B. 90, 00000094
        mov     eax, dword [_shtctl]                    ; 1460 _ A1, 00000264(d)
        mov     dword [esp+14H], ?_365                  ; 1465 _ C7. 44 24, 14, 00000019(d)
        mov     dword [esp+10H], 7                      ; 146D _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ecx                    ; 1475 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 16                      ; 1479 _ C7. 44 24, 08, 00000010
        mov     dword [esp+4H], edx                     ; 1481 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1485 _ 89. 04 24
        call    _showString                             ; 1488 _ E8, 000016E7
        mov     eax, dword [ebp-0CH]                    ; 148D _ 8B. 45, F4
        mov     ecx, dword [eax+9CH]                    ; 1490 _ 8B. 88, 0000009C
        mov     eax, dword [ebp-0CH]                    ; 1496 _ 8B. 45, F4
        mov     edx, dword [eax+94H]                    ; 1499 _ 8B. 90, 00000094
        mov     eax, dword [_shtctl]                    ; 149F _ A1, 00000264(d)
        mov     ebx, dword [ebp-10H]                    ; 14A4 _ 8B. 5D, F0
        mov     dword [esp+14H], ebx                    ; 14A7 _ 89. 5C 24, 14
        mov     dword [esp+10H], 7                      ; 14AB _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ecx                    ; 14B3 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 52                      ; 14B7 _ C7. 44 24, 08, 00000034
        mov     dword [esp+4H], edx                     ; 14BF _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 14C3 _ 89. 04 24
        call    _showString                             ; 14C6 _ E8, 000016A9
        mov     eax, dword [ebp-0CH]                    ; 14CB _ 8B. 45, F4
        mov     ecx, dword [eax+9CH]                    ; 14CE _ 8B. 88, 0000009C
        mov     eax, dword [ebp-0CH]                    ; 14D4 _ 8B. 45, F4
        mov     edx, dword [eax+94H]                    ; 14D7 _ 8B. 90, 00000094
        mov     eax, dword [_shtctl]                    ; 14DD _ A1, 00000264(d)
        mov     dword [esp+14H], ?_366                  ; 14E2 _ C7. 44 24, 14, 0000001F(d)
        mov     dword [esp+10H], 7                      ; 14EA _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ecx                    ; 14F2 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 126                     ; 14F6 _ C7. 44 24, 08, 0000007E
        mov     dword [esp+4H], edx                     ; 14FE _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1502 _ 89. 04 24
        call    _showString                             ; 1505 _ E8, 0000166A
        mov     eax, dword [ebp-0CH]                    ; 150A _ 8B. 45, F4
        mov     edx, dword [eax+94H]                    ; 150D _ 8B. 90, 00000094
        mov     eax, dword [ebp-0CH]                    ; 1513 _ 8B. 45, F4
        mov     eax, dword [eax+9CH]                    ; 1516 _ 8B. 80, 0000009C
        mov     dword [esp+4H], edx                     ; 151C _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1520 _ 89. 04 24
        call    _cons_newline                           ; 1523 _ E8, 0000110C
        mov     edx, eax                                ; 1528 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 152A _ 8B. 45, F4
        mov     dword [eax+9CH], edx                    ; 152D _ 89. 90, 0000009C
        nop                                             ; 1533 _ 90
        add     esp, 52                                 ; 1534 _ 83. C4, 34
        pop     ebx                                     ; 1537 _ 5B
        pop     ebp                                     ; 1538 _ 5D
        ret                                             ; 1539 _ C3
; _cmd_mem End of function

_cmd_cls:; Function begin
        push    ebp                                     ; 153A _ 55
        mov     ebp, esp                                ; 153B _ 89. E5
        sub     esp, 56                                 ; 153D _ 83. EC, 38
        call    _task_now                               ; 1540 _ E8, 00000000(rel)
        mov     dword [ebp-14H], eax                    ; 1545 _ 89. 45, EC
        mov     dword [ebp-0CH], 8                      ; 1548 _ C7. 45, F4, 00000008
        mov     dword [ebp-10H], 28                     ; 154F _ C7. 45, F0, 0000001C
        mov     dword [ebp-10H], 28                     ; 1556 _ C7. 45, F0, 0000001C
        jmp     ?_070                                   ; 155D _ EB, 3F

?_067:  mov     dword [ebp-0CH], 8                      ; 155F _ C7. 45, F4, 00000008
        jmp     ?_069                                   ; 1566 _ EB, 29

?_068:  mov     eax, dword [ebp-14H]                    ; 1568 _ 8B. 45, EC
        mov     eax, dword [eax+94H]                    ; 156B _ 8B. 80, 00000094
        mov     edx, dword [eax]                        ; 1571 _ 8B. 10
        mov     eax, dword [ebp-14H]                    ; 1573 _ 8B. 45, EC
        mov     eax, dword [eax+94H]                    ; 1576 _ 8B. 80, 00000094
        mov     eax, dword [eax+4H]                     ; 157C _ 8B. 40, 04
        imul    eax, dword [ebp-10H]                    ; 157F _ 0F AF. 45, F0
        mov     ecx, dword [ebp-0CH]                    ; 1583 _ 8B. 4D, F4
        add     eax, ecx                                ; 1586 _ 01. C8
        add     eax, edx                                ; 1588 _ 01. D0
        mov     byte [eax], 0                           ; 158A _ C6. 00, 00
        add     dword [ebp-0CH], 1                      ; 158D _ 83. 45, F4, 01
?_069:  cmp     dword [ebp-0CH], 247                    ; 1591 _ 81. 7D, F4, 000000F7
        jle     ?_068                                   ; 1598 _ 7E, CE
        add     dword [ebp-10H], 1                      ; 159A _ 83. 45, F0, 01
?_070:  cmp     dword [ebp-10H], 155                    ; 159E _ 81. 7D, F0, 0000009B
        jle     ?_067                                   ; 15A5 _ 7E, B8
        mov     eax, dword [ebp-14H]                    ; 15A7 _ 8B. 45, EC
        mov     edx, dword [eax+94H]                    ; 15AA _ 8B. 90, 00000094
        mov     eax, dword [_shtctl]                    ; 15B0 _ A1, 00000264(d)
        mov     dword [esp+14H], 156                    ; 15B5 _ C7. 44 24, 14, 0000009C
        mov     dword [esp+10H], 248                    ; 15BD _ C7. 44 24, 10, 000000F8
        mov     dword [esp+0CH], 28                     ; 15C5 _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 8                       ; 15CD _ C7. 44 24, 08, 00000008
        mov     dword [esp+4H], edx                     ; 15D5 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 15D9 _ 89. 04 24
        call    _sheet_refresh                          ; 15DC _ E8, 00000000(rel)
        mov     eax, dword [ebp-14H]                    ; 15E1 _ 8B. 45, EC
        mov     dword [eax+9CH], 28                     ; 15E4 _ C7. 80, 0000009C, 0000001C
        mov     eax, dword [ebp-14H]                    ; 15EE _ 8B. 45, EC
        mov     edx, dword [eax+94H]                    ; 15F1 _ 8B. 90, 00000094
        mov     eax, dword [_shtctl]                    ; 15F7 _ A1, 00000264(d)
        mov     dword [esp+14H], ?_367                  ; 15FC _ C7. 44 24, 14, 00000023(d)
        mov     dword [esp+10H], 7                      ; 1604 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 28                     ; 160C _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 8                       ; 1614 _ C7. 44 24, 08, 00000008
        mov     dword [esp+4H], edx                     ; 161C _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1620 _ 89. 04 24
        call    _showString                             ; 1623 _ E8, 0000154C
        nop                                             ; 1628 _ 90
        leave                                           ; 1629 _ C9
        ret                                             ; 162A _ C3
; _cmd_cls End of function

_cmd_hlt:; Function begin
        push    ebp                                     ; 162B _ 55
        mov     ebp, esp                                ; 162C _ 89. E5
        sub     esp, 72                                 ; 162E _ 83. EC, 48
        call    _io_cli                                 ; 1631 _ E8, 00000000(rel)
        mov     eax, dword [_memman]                    ; 1636 _ A1, 00000000(d)
        mov     dword [esp+4H], 16                      ; 163B _ C7. 44 24, 04, 00000010
        mov     dword [esp], eax                        ; 1643 _ 89. 04 24
        call    _memman_alloc                           ; 1646 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 164B _ 89. 45, F4
        call    _task_now                               ; 164E _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 1653 _ 89. 45, F0
        mov     eax, dword [ebp-10H]                    ; 1656 _ 8B. 45, F0
        mov     edx, dword [ebp-0CH]                    ; 1659 _ 8B. 55, F4
        mov     dword [eax+0B0H], edx                   ; 165C _ 89. 90, 000000B0
        mov     eax, dword [ebp-0CH]                    ; 1662 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 1665 _ 89. 44 24, 04
        mov     dword [esp], ?_368                      ; 1669 _ C7. 04 24, 00000025(d)
        call    _file_loadfile                          ; 1670 _ E8, 00002B84
        call    _get_addr_gdt                           ; 1675 _ E8, 00000000(rel)
        mov     dword [ebp-14H], eax                    ; 167A _ 89. 45, EC
        mov     eax, dword [ebp-10H]                    ; 167D _ 8B. 45, F0
        mov     edx, dword [eax]                        ; 1680 _ 8B. 10
        mov     eax, dword [_first_task_cons_selector]  ; 1682 _ A1, 0000000C(d)
        sub     edx, eax                                ; 1687 _ 29. C2
        mov     eax, edx                                ; 1689 _ 89. D0
        lea     edx, [eax+7H]                           ; 168B _ 8D. 50, 07
        test    eax, eax                                ; 168E _ 85. C0
        cmovs   eax, edx                                ; 1690 _ 0F 48. C2
        sar     eax, 3                                  ; 1693 _ C1. F8, 03
        add     eax, 21                                 ; 1696 _ 83. C0, 15
        mov     dword [ebp-18H], eax                    ; 1699 _ 89. 45, E8
        mov     eax, dword [ebp-10H]                    ; 169C _ 8B. 45, F0
        mov     edx, dword [eax]                        ; 169F _ 8B. 10
        mov     eax, dword [_first_task_cons_selector]  ; 16A1 _ A1, 0000000C(d)
        sub     edx, eax                                ; 16A6 _ 29. C2
        mov     eax, edx                                ; 16A8 _ 89. D0
        lea     edx, [eax+7H]                           ; 16AA _ 8D. 50, 07
        test    eax, eax                                ; 16AD _ 85. C0
        cmovs   eax, edx                                ; 16AF _ 0F 48. C2
        sar     eax, 3                                  ; 16B2 _ C1. F8, 03
        add     eax, 30                                 ; 16B5 _ 83. C0, 1E
        mov     dword [ebp-1CH], eax                    ; 16B8 _ 89. 45, E4
        mov     eax, dword [ebp-0CH]                    ; 16BB _ 8B. 45, F4
        mov     eax, dword [eax]                        ; 16BE _ 8B. 00
        mov     ecx, eax                                ; 16C0 _ 89. C1
        mov     eax, dword [ebp-18H]                    ; 16C2 _ 8B. 45, E8
        lea     edx, [eax*8]                            ; 16C5 _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-14H]                    ; 16CC _ 8B. 45, EC
        add     eax, edx                                ; 16CF _ 01. D0
        mov     dword [esp+0CH], 16634                  ; 16D1 _ C7. 44 24, 0C, 000040FA
        mov     dword [esp+8H], ecx                     ; 16D9 _ 89. 4C 24, 08
        mov     dword [esp+4H], 1048575                 ; 16DD _ C7. 44 24, 04, 000FFFFF
        mov     dword [esp], eax                        ; 16E5 _ 89. 04 24
        call    _set_segmdesc                           ; 16E8 _ E8, 00000000(rel)
        mov     eax, dword [_memman]                    ; 16ED _ A1, 00000000(d)
        mov     dword [esp+4H], 65536                   ; 16F2 _ C7. 44 24, 04, 00010000
        mov     dword [esp], eax                        ; 16FA _ 89. 04 24
        call    _memman_alloc_4k                        ; 16FD _ E8, 00000000(rel)
        mov     dword [ebp-20H], eax                    ; 1702 _ 89. 45, E0
        mov     eax, dword [ebp-0CH]                    ; 1705 _ 8B. 45, F4
        mov     edx, dword [ebp-20H]                    ; 1708 _ 8B. 55, E0
        mov     dword [eax+4H], edx                     ; 170B _ 89. 50, 04
        mov     edx, dword [ebp-20H]                    ; 170E _ 8B. 55, E0
        mov     eax, dword [ebp-1CH]                    ; 1711 _ 8B. 45, E4
        lea     ecx, [eax*8]                            ; 1714 _ 8D. 0C C5, 00000000
        mov     eax, dword [ebp-14H]                    ; 171B _ 8B. 45, EC
        add     eax, ecx                                ; 171E _ 01. C8
        mov     dword [esp+0CH], 16626                  ; 1720 _ C7. 44 24, 0C, 000040F2
        mov     dword [esp+8H], edx                     ; 1728 _ 89. 54 24, 08
        mov     dword [esp+4H], 65535                   ; 172C _ C7. 44 24, 04, 0000FFFF
        mov     dword [esp], eax                        ; 1734 _ 89. 04 24
        call    _set_segmdesc                           ; 1737 _ E8, 00000000(rel)
        mov     eax, dword [ebp-10H]                    ; 173C _ 8B. 45, F0
        mov     dword [eax+30H], 0                      ; 173F _ C7. 40, 30, 00000000
        call    _io_sti                                 ; 1746 _ E8, 00000000(rel)
        mov     eax, dword [ebp-10H]                    ; 174B _ 8B. 45, F0
        lea     ecx, [eax+30H]                          ; 174E _ 8D. 48, 30
        mov     eax, dword [ebp-1CH]                    ; 1751 _ 8B. 45, E4
        lea     edx, [eax*8]                            ; 1754 _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-18H]                    ; 175B _ 8B. 45, E8
        shl     eax, 3                                  ; 175E _ C1. E0, 03
        mov     dword [esp+10H], ecx                    ; 1761 _ 89. 4C 24, 10
        mov     dword [esp+0CH], edx                    ; 1765 _ 89. 54 24, 0C
        mov     dword [esp+8H], 65536                   ; 1769 _ C7. 44 24, 08, 00010000
        mov     dword [esp+4H], eax                     ; 1771 _ 89. 44 24, 04
        mov     dword [esp], 0                          ; 1775 _ C7. 04 24, 00000000
        call    _start_app                              ; 177C _ E8, 00000000(rel)
        call    _io_cli                                 ; 1781 _ E8, 00000000(rel)
        mov     eax, dword [ebp-0CH]                    ; 1786 _ 8B. 45, F4
        mov     eax, dword [eax+8H]                     ; 1789 _ 8B. 40, 08
        mov     ecx, eax                                ; 178C _ 89. C1
        mov     eax, dword [ebp-0CH]                    ; 178E _ 8B. 45, F4
        mov     eax, dword [eax]                        ; 1791 _ 8B. 00
        mov     edx, eax                                ; 1793 _ 89. C2
        mov     eax, dword [_memman]                    ; 1795 _ A1, 00000000(d)
        mov     dword [esp+8H], ecx                     ; 179A _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 179E _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 17A2 _ 89. 04 24
        call    _memman_free_4k                         ; 17A5 _ E8, 00000000(rel)
        mov     edx, dword [ebp-20H]                    ; 17AA _ 8B. 55, E0
        mov     eax, dword [_memman]                    ; 17AD _ A1, 00000000(d)
        mov     dword [esp+8H], 65536                   ; 17B2 _ C7. 44 24, 08, 00010000
        mov     dword [esp+4H], edx                     ; 17BA _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 17BE _ 89. 04 24
        call    _memman_free_4k                         ; 17C1 _ E8, 00000000(rel)
        mov     edx, dword [ebp-0CH]                    ; 17C6 _ 8B. 55, F4
        mov     eax, dword [_memman]                    ; 17C9 _ A1, 00000000(d)
        mov     dword [esp+8H], 16                      ; 17CE _ C7. 44 24, 08, 00000010
        mov     dword [esp+4H], edx                     ; 17D6 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 17DA _ 89. 04 24
        call    _memman_free                            ; 17DD _ E8, 00000000(rel)
        mov     eax, dword [ebp-10H]                    ; 17E2 _ 8B. 45, F0
        mov     dword [eax+0B0H], 0                     ; 17E5 _ C7. 80, 000000B0, 00000000
        call    _io_sti                                 ; 17EF _ E8, 00000000(rel)
        nop                                             ; 17F4 _ 90
        leave                                           ; 17F5 _ C9
        ret                                             ; 17F6 _ C3
; _cmd_hlt End of function

_console_task:; Function begin
        push    ebp                                     ; 17F7 _ 55
        mov     ebp, esp                                ; 17F8 _ 89. E5
        push    esi                                     ; 17FA _ 56
        push    ebx                                     ; 17FB _ 53
        sub     esp, 80                                 ; 17FC _ 83. EC, 50
        call    _task_now                               ; 17FF _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 1804 _ 89. 45, F0
        mov     dword [ebp-0CH], 0                      ; 1807 _ C7. 45, F4, 00000000
        mov     dword [ebp-14H], 0                      ; 180E _ C7. 45, EC, 00000000
        mov     dword [ebp-18H], 0                      ; 1815 _ C7. 45, E8, 00000000
        mov     eax, dword [_memman]                    ; 181C _ A1, 00000000(d)
        mov     dword [esp+4H], 128                     ; 1821 _ C7. 44 24, 04, 00000080
        mov     dword [esp], eax                        ; 1829 _ 89. 04 24
        call    _memman_alloc                           ; 182C _ E8, 00000000(rel)
        mov     dword [ebp-1CH], eax                    ; 1831 _ 89. 45, E4
        mov     eax, dword [_memman]                    ; 1834 _ A1, 00000000(d)
        mov     dword [esp+4H], 30                      ; 1839 _ C7. 44 24, 04, 0000001E
        mov     dword [esp], eax                        ; 1841 _ 89. 04 24
        call    _memman_alloc                           ; 1844 _ E8, 00000000(rel)
        mov     dword [ebp-20H], eax                    ; 1849 _ 89. 45, E0
        mov     eax, dword [ebp-10H]                    ; 184C _ 8B. 45, F0
        mov     edx, dword [ebp+8H]                     ; 184F _ 8B. 55, 08
        mov     dword [eax+94H], edx                    ; 1852 _ 89. 90, 00000094
        mov     eax, dword [ebp-10H]                    ; 1858 _ 8B. 45, F0
        mov     dword [eax+98H], 16                     ; 185B _ C7. 80, 00000098, 00000010
        mov     eax, dword [ebp-10H]                    ; 1865 _ 8B. 45, F0
        mov     dword [eax+9CH], 28                     ; 1868 _ C7. 80, 0000009C, 0000001C
        mov     eax, dword [ebp-10H]                    ; 1872 _ 8B. 45, F0
        mov     dword [eax+0A0H], -1                    ; 1875 _ C7. 80, 000000A0, FFFFFFFF
        mov     eax, dword [ebp-10H]                    ; 187F _ 8B. 45, F0
        add     eax, 16                                 ; 1882 _ 83. C0, 10
        mov     edx, dword [ebp-10H]                    ; 1885 _ 8B. 55, F0
        mov     dword [esp+0CH], edx                    ; 1888 _ 89. 54 24, 0C
        mov     edx, dword [ebp-1CH]                    ; 188C _ 8B. 55, E4
        mov     dword [esp+8H], edx                     ; 188F _ 89. 54 24, 08
        mov     dword [esp+4H], 128                     ; 1893 _ C7. 44 24, 04, 00000080
        mov     dword [esp], eax                        ; 189B _ 89. 04 24
        call    _fifo8_init                             ; 189E _ E8, 00000000(rel)
        call    _timer_alloc                            ; 18A3 _ E8, 00000000(rel)
        mov     dword [ebp-24H], eax                    ; 18A8 _ 89. 45, DC
        mov     eax, dword [ebp-10H]                    ; 18AB _ 8B. 45, F0
        add     eax, 16                                 ; 18AE _ 83. C0, 10
        mov     dword [esp+8H], 1                       ; 18B1 _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], eax                     ; 18B9 _ 89. 44 24, 04
        mov     eax, dword [ebp-24H]                    ; 18BD _ 8B. 45, DC
        mov     dword [esp], eax                        ; 18C0 _ 89. 04 24
        call    _timer_init                             ; 18C3 _ E8, 00000000(rel)
        mov     dword [esp+4H], 50                      ; 18C8 _ C7. 44 24, 04, 00000032
        mov     eax, dword [ebp-24H]                    ; 18D0 _ 8B. 45, DC
        mov     dword [esp], eax                        ; 18D3 _ 89. 04 24
        call    _timer_settime                          ; 18D6 _ E8, 00000000(rel)
        mov     eax, dword [ebp-10H]                    ; 18DB _ 8B. 45, F0
        mov     edx, dword [ebp-24H]                    ; 18DE _ 8B. 55, DC
        mov     dword [eax+0A8H], edx                   ; 18E1 _ 89. 90, 000000A8
        mov     eax, dword [ebp-10H]                    ; 18E7 _ 8B. 45, F0
        mov     edx, dword [ebp-20H]                    ; 18EA _ 8B. 55, E0
        mov     dword [eax+0ACH], edx                   ; 18ED _ 89. 90, 000000AC
        mov     eax, dword [_shtctl]                    ; 18F3 _ A1, 00000264(d)
        mov     dword [esp+14H], ?_367                  ; 18F8 _ C7. 44 24, 14, 00000023(d)
        mov     dword [esp+10H], 7                      ; 1900 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 28                     ; 1908 _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 8                       ; 1910 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp+8H]                     ; 1918 _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 191B _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 191F _ 89. 04 24
        call    _showString                             ; 1922 _ E8, 0000124D
        mov     dword [ebp-28H], 0                      ; 1927 _ C7. 45, D8, 00000000
        mov     dword [ebp-2CH], 78848                  ; 192E _ C7. 45, D4, 00013400
        mov     dword [ebp-30H], 0                      ; 1935 _ C7. 45, D0, 00000000
?_071:  call    _io_cli                                 ; 193C _ E8, 00000000(rel)
        call    _task_now                               ; 1941 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 1946 _ 89. 45, F0
        mov     eax, dword [ebp-10H]                    ; 1949 _ 8B. 45, F0
        add     eax, 16                                 ; 194C _ 83. C0, 10
        mov     dword [esp], eax                        ; 194F _ 89. 04 24
        call    _fifo8_status                           ; 1952 _ E8, 00000000(rel)
        test    eax, eax                                ; 1957 _ 85. C0
        jnz     ?_072                                   ; 1959 _ 75, 0A
        call    _io_sti                                 ; 195B _ E8, 00000000(rel)
        jmp     ?_087                                   ; 1960 _ E9, 0000044B

?_072:  mov     eax, dword [ebp-10H]                    ; 1965 _ 8B. 45, F0
        add     eax, 16                                 ; 1968 _ 83. C0, 10
        mov     dword [esp], eax                        ; 196B _ 89. 04 24
        call    _fifo8_get                              ; 196E _ E8, 00000000(rel)
        mov     dword [ebp-34H], eax                    ; 1973 _ 89. 45, CC
        cmp     dword [ebp-34H], 1                      ; 1976 _ 83. 7D, CC, 01
        jg      ?_075                                   ; 197A _ 7F, 6E
        cmp     dword [ebp-0CH], 0                      ; 197C _ 83. 7D, F4, 00
        js      ?_075                                   ; 1980 _ 78, 68
        cmp     dword [ebp-34H], 0                      ; 1982 _ 83. 7D, CC, 00
        jz      ?_073                                   ; 1986 _ 74, 26
        mov     eax, dword [ebp-10H]                    ; 1988 _ 8B. 45, F0
        add     eax, 16                                 ; 198B _ 83. C0, 10
        mov     dword [esp+8H], 0                       ; 198E _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], eax                     ; 1996 _ 89. 44 24, 04
        mov     eax, dword [ebp-24H]                    ; 199A _ 8B. 45, DC
        mov     dword [esp], eax                        ; 199D _ 89. 04 24
        call    _timer_init                             ; 19A0 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], 7                      ; 19A5 _ C7. 45, F4, 00000007
        jmp     ?_074                                   ; 19AC _ EB, 24

?_073:  mov     eax, dword [ebp-10H]                    ; 19AE _ 8B. 45, F0
        add     eax, 16                                 ; 19B1 _ 83. C0, 10
        mov     dword [esp+8H], 1                       ; 19B4 _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], eax                     ; 19BC _ 89. 44 24, 04
        mov     eax, dword [ebp-24H]                    ; 19C0 _ 8B. 45, DC
        mov     dword [esp], eax                        ; 19C3 _ 89. 04 24
        call    _timer_init                             ; 19C6 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], 0                      ; 19CB _ C7. 45, F4, 00000000
?_074:  mov     dword [esp+4H], 50                      ; 19D2 _ C7. 44 24, 04, 00000032
        mov     eax, dword [ebp-24H]                    ; 19DA _ 8B. 45, DC
        mov     dword [esp], eax                        ; 19DD _ 89. 04 24
        call    _timer_settime                          ; 19E0 _ E8, 00000000(rel)
        jmp     ?_086                                   ; 19E5 _ E9, 00000385

?_075:  cmp     dword [ebp-34H], 87                     ; 19EA _ 83. 7D, CC, 57
        jnz     ?_076                                   ; 19EE _ 75, 3C
        mov     dword [ebp-0CH], 7                      ; 19F0 _ C7. 45, F4, 00000007
        mov     eax, dword [ebp-10H]                    ; 19F7 _ 8B. 45, F0
        add     eax, 16                                 ; 19FA _ 83. C0, 10
        mov     dword [esp+8H], 0                       ; 19FD _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], eax                     ; 1A05 _ 89. 44 24, 04
        mov     eax, dword [ebp-24H]                    ; 1A09 _ 8B. 45, DC
        mov     dword [esp], eax                        ; 1A0C _ 89. 04 24
        call    _timer_init                             ; 1A0F _ E8, 00000000(rel)
        mov     dword [esp+4H], 50                      ; 1A14 _ C7. 44 24, 04, 00000032
        mov     eax, dword [ebp-24H]                    ; 1A1C _ 8B. 45, DC
        mov     dword [esp], eax                        ; 1A1F _ 89. 04 24
        call    _timer_settime                          ; 1A22 _ E8, 00000000(rel)
        jmp     ?_086                                   ; 1A27 _ E9, 00000343

?_076:  cmp     dword [ebp-34H], 88                     ; 1A2C _ 83. 7D, CC, 58
        jne     ?_077                                   ; 1A30 _ 0F 85, 000000A1
        mov     edx, dword [_sht_back]                  ; 1A36 _ 8B. 15, 00000268(d)
        mov     eax, dword [_shtctl]                    ; 1A3C _ A1, 00000264(d)
        mov     dword [esp+14H], ?_369                  ; 1A41 _ C7. 44 24, 14, 0000002D(d)
        mov     dword [esp+10H], 7                      ; 1A49 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 176                    ; 1A51 _ C7. 44 24, 0C, 000000B0
        mov     dword [esp+8H], 0                       ; 1A59 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 1A61 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1A65 _ 89. 04 24
        call    _showString                             ; 1A68 _ E8, 00001107
        mov     eax, dword [ebp-10H]                    ; 1A6D _ 8B. 45, F0
        mov     ecx, dword [eax+9CH]                    ; 1A70 _ 8B. 88, 0000009C
        mov     eax, dword [ebp-10H]                    ; 1A76 _ 8B. 45, F0
        mov     edx, dword [eax+98H]                    ; 1A79 _ 8B. 90, 00000098
        mov     eax, dword [_shtctl]                    ; 1A7F _ A1, 00000264(d)
        mov     dword [esp+10H], 0                      ; 1A84 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], ecx                    ; 1A8C _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 1A90 _ 89. 54 24, 08
        mov     edx, dword [ebp+8H]                     ; 1A94 _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 1A97 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1A9B _ 89. 04 24
        call    _set_cursor                             ; 1A9E _ E8, FFFFEEF9
        mov     dword [ebp-0CH], -1                     ; 1AA3 _ C7. 45, F4, FFFFFFFF
        mov     eax, dword [_task_main]                 ; 1AAA _ A1, 00000274(d)
        mov     dword [esp+8H], 0                       ; 1AAF _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], -1                      ; 1AB7 _ C7. 44 24, 04, FFFFFFFF
        mov     dword [esp], eax                        ; 1ABF _ 89. 04 24
        call    _task_run                               ; 1AC2 _ E8, 00000000(rel)
        mov     eax, dword [ebp-10H]                    ; 1AC7 _ 8B. 45, F0
        mov     dword [esp], eax                        ; 1ACA _ 89. 04 24
        call    _task_sleep                             ; 1ACD _ E8, 00000000(rel)
        jmp     ?_086                                   ; 1AD2 _ E9, 00000298

?_077:  cmp     dword [ebp-34H], 28                     ; 1AD7 _ 83. 7D, CC, 1C
        jne     ?_084                                   ; 1ADB _ 0F 85, 00000176
        mov     eax, dword [ebp-10H]                    ; 1AE1 _ 8B. 45, F0
        mov     ecx, dword [eax+9CH]                    ; 1AE4 _ 8B. 88, 0000009C
        mov     eax, dword [ebp-10H]                    ; 1AEA _ 8B. 45, F0
        mov     edx, dword [eax+98H]                    ; 1AED _ 8B. 90, 00000098
        mov     eax, dword [_shtctl]                    ; 1AF3 _ A1, 00000264(d)
        mov     dword [esp+10H], 0                      ; 1AF8 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], ecx                    ; 1B00 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 1B04 _ 89. 54 24, 08
        mov     edx, dword [ebp+8H]                     ; 1B08 _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 1B0B _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1B0F _ 89. 04 24
        call    _set_cursor                             ; 1B12 _ E8, FFFFEE85
        mov     eax, dword [ebp-10H]                    ; 1B17 _ 8B. 45, F0
        mov     eax, dword [eax+98H]                    ; 1B1A _ 8B. 80, 00000098
        lea     edx, [eax+7H]                           ; 1B20 _ 8D. 50, 07
        test    eax, eax                                ; 1B23 _ 85. C0
        cmovs   eax, edx                                ; 1B25 _ 0F 48. C2
        sar     eax, 3                                  ; 1B28 _ C1. F8, 03
        lea     edx, [eax-2H]                           ; 1B2B _ 8D. 50, FE
        mov     eax, dword [ebp-20H]                    ; 1B2E _ 8B. 45, E0
        add     eax, edx                                ; 1B31 _ 01. D0
        mov     byte [eax], 0                           ; 1B33 _ C6. 00, 00
        mov     eax, dword [ebp-10H]                    ; 1B36 _ 8B. 45, F0
        mov     eax, dword [eax+9CH]                    ; 1B39 _ 8B. 80, 0000009C
        mov     edx, dword [ebp+8H]                     ; 1B3F _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 1B42 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1B46 _ 89. 04 24
        call    _cons_newline                           ; 1B49 _ E8, 00000AE6
        mov     edx, eax                                ; 1B4E _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 1B50 _ 8B. 45, F0
        mov     dword [eax+9CH], edx                    ; 1B53 _ 89. 90, 0000009C
        mov     dword [esp+4H], ?_370                   ; 1B59 _ C7. 44 24, 04, 00000033(d)
        mov     eax, dword [ebp-20H]                    ; 1B61 _ 8B. 45, E0
        mov     dword [esp], eax                        ; 1B64 _ 89. 04 24
        call    _strcmp                                 ; 1B67 _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 1B6C _ 83. F8, 01
        jnz     ?_078                                   ; 1B6F _ 75, 10
        mov     eax, dword [ebp+0CH]                    ; 1B71 _ 8B. 45, 0C
        mov     dword [esp], eax                        ; 1B74 _ 89. 04 24
        call    _cmd_mem                                ; 1B77 _ E8, FFFFF8A7
        jmp     ?_083                                   ; 1B7C _ E9, 000000C4

?_078:  mov     dword [esp+4H], ?_371                   ; 1B81 _ C7. 44 24, 04, 00000037(d)
        mov     eax, dword [ebp-20H]                    ; 1B89 _ 8B. 45, E0
        mov     dword [esp], eax                        ; 1B8C _ 89. 04 24
        call    _strcmp                                 ; 1B8F _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 1B94 _ 83. F8, 01
        jnz     ?_079                                   ; 1B97 _ 75, 0A
        call    _cmd_cls                                ; 1B99 _ E8, FFFFF99C
        jmp     ?_083                                   ; 1B9E _ E9, 000000A2

?_079:  mov     dword [esp+4H], ?_372                   ; 1BA3 _ C7. 44 24, 04, 0000003B(d)
        mov     eax, dword [ebp-20H]                    ; 1BAB _ 8B. 45, E0
        mov     dword [esp], eax                        ; 1BAE _ 89. 04 24
        call    _strcmp                                 ; 1BB1 _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 1BB6 _ 83. F8, 01
        jnz     ?_080                                   ; 1BB9 _ 75, 0A
        call    _cmd_hlt                                ; 1BBB _ E8, FFFFFA6B
        jmp     ?_083                                   ; 1BC0 _ E9, 00000080

?_080:  mov     dword [esp+4H], ?_373                   ; 1BC5 _ C7. 44 24, 04, 0000003F(d)
        mov     eax, dword [ebp-20H]                    ; 1BCD _ 8B. 45, E0
        mov     dword [esp], eax                        ; 1BD0 _ 89. 04 24
        call    _strcmp                                 ; 1BD3 _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 1BD8 _ 83. F8, 01
        jnz     ?_081                                   ; 1BDB _ 75, 07
        call    _cmd_dir                                ; 1BDD _ E8, FFFFF2EC
        jmp     ?_083                                   ; 1BE2 _ EB, 61

?_081:  mov     dword [esp+4H], ?_374                   ; 1BE4 _ C7. 44 24, 04, 00000043(d)
        mov     eax, dword [ebp-20H]                    ; 1BEC _ 8B. 45, E0
        mov     dword [esp], eax                        ; 1BEF _ 89. 04 24
        call    _strcmp                                 ; 1BF2 _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 1BF7 _ 83. F8, 01
        jnz     ?_082                                   ; 1BFA _ 75, 0D
        mov     eax, dword [ebp-10H]                    ; 1BFC _ 8B. 45, F0
        mov     dword [esp], eax                        ; 1BFF _ 89. 04 24
        call    _cmd_exit                               ; 1C02 _ E8, 0000051F
        jmp     ?_083                                   ; 1C07 _ EB, 3C

?_082:  mov     eax, dword [ebp-20H]                    ; 1C09 _ 8B. 45, E0
        movzx   eax, byte [eax]                         ; 1C0C _ 0F B6. 00
        cmp     al, 116                                 ; 1C0F _ 3C, 74
        jnz     ?_083                                   ; 1C11 _ 75, 32
        mov     eax, dword [ebp-20H]                    ; 1C13 _ 8B. 45, E0
        add     eax, 1                                  ; 1C16 _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 1C19 _ 0F B6. 00
        cmp     al, 121                                 ; 1C1C _ 3C, 79
        jnz     ?_083                                   ; 1C1E _ 75, 25
        mov     eax, dword [ebp-20H]                    ; 1C20 _ 8B. 45, E0
        add     eax, 2                                  ; 1C23 _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 1C26 _ 0F B6. 00
        cmp     al, 112                                 ; 1C29 _ 3C, 70
        jnz     ?_083                                   ; 1C2B _ 75, 18
        mov     eax, dword [ebp-20H]                    ; 1C2D _ 8B. 45, E0
        add     eax, 3                                  ; 1C30 _ 83. C0, 03
        movzx   eax, byte [eax]                         ; 1C33 _ 0F B6. 00
        cmp     al, 101                                 ; 1C36 _ 3C, 65
        jnz     ?_083                                   ; 1C38 _ 75, 0B
        mov     eax, dword [ebp-20H]                    ; 1C3A _ 8B. 45, E0
        mov     dword [esp], eax                        ; 1C3D _ 89. 04 24
        call    _cmd_type                               ; 1C40 _ E8, FFFFF439
?_083:  mov     eax, dword [ebp-10H]                    ; 1C45 _ 8B. 45, F0
        mov     dword [eax+98H], 16                     ; 1C48 _ C7. 80, 00000098, 00000010
        jmp     ?_086                                   ; 1C52 _ E9, 00000118

?_084:  cmp     dword [ebp-34H], 14                     ; 1C57 _ 83. 7D, CC, 0E
        jne     ?_085                                   ; 1C5B _ 0F 85, 00000095
        mov     eax, dword [ebp-10H]                    ; 1C61 _ 8B. 45, F0
        mov     eax, dword [eax+98H]                    ; 1C64 _ 8B. 80, 00000098
        cmp     eax, 8                                  ; 1C6A _ 83. F8, 08
        jle     ?_085                                   ; 1C6D _ 0F 8E, 00000083
        mov     eax, dword [ebp-10H]                    ; 1C73 _ 8B. 45, F0
        mov     ecx, dword [eax+9CH]                    ; 1C76 _ 8B. 88, 0000009C
        mov     eax, dword [ebp-10H]                    ; 1C7C _ 8B. 45, F0
        mov     edx, dword [eax+98H]                    ; 1C7F _ 8B. 90, 00000098
        mov     eax, dword [_shtctl]                    ; 1C85 _ A1, 00000264(d)
        mov     dword [esp+10H], 0                      ; 1C8A _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], ecx                    ; 1C92 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 1C96 _ 89. 54 24, 08
        mov     edx, dword [ebp+8H]                     ; 1C9A _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 1C9D _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1CA1 _ 89. 04 24
        call    _set_cursor                             ; 1CA4 _ E8, FFFFECF3
        mov     eax, dword [ebp-10H]                    ; 1CA9 _ 8B. 45, F0
        mov     eax, dword [eax+98H]                    ; 1CAC _ 8B. 80, 00000098
        lea     edx, [eax-8H]                           ; 1CB2 _ 8D. 50, F8
        mov     eax, dword [ebp-10H]                    ; 1CB5 _ 8B. 45, F0
        mov     dword [eax+98H], edx                    ; 1CB8 _ 89. 90, 00000098
        mov     eax, dword [ebp-10H]                    ; 1CBE _ 8B. 45, F0
        mov     ecx, dword [eax+9CH]                    ; 1CC1 _ 8B. 88, 0000009C
        mov     eax, dword [ebp-10H]                    ; 1CC7 _ 8B. 45, F0
        mov     edx, dword [eax+98H]                    ; 1CCA _ 8B. 90, 00000098
        mov     eax, dword [_shtctl]                    ; 1CD0 _ A1, 00000264(d)
        mov     dword [esp+10H], 0                      ; 1CD5 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], ecx                    ; 1CDD _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 1CE1 _ 89. 54 24, 08
        mov     edx, dword [ebp+8H]                     ; 1CE5 _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 1CE8 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1CEC _ 89. 04 24
        call    _set_cursor                             ; 1CEF _ E8, FFFFECA8
        jmp     ?_086                                   ; 1CF4 _ EB, 79

?_085:  mov     eax, dword [ebp-34H]                    ; 1CF6 _ 8B. 45, CC
        mov     dword [esp], eax                        ; 1CF9 _ 89. 04 24
        call    _transferScanCode                       ; 1CFC _ E8, FFFFED74
        mov     byte [ebp-35H], al                      ; 1D01 _ 88. 45, CB
        mov     eax, dword [ebp-10H]                    ; 1D04 _ 8B. 45, F0
        mov     eax, dword [eax+98H]                    ; 1D07 _ 8B. 80, 00000098
        cmp     eax, 239                                ; 1D0D _ 3D, 000000EF
        jg      ?_086                                   ; 1D12 _ 7F, 5B
        cmp     byte [ebp-35H], 0                       ; 1D14 _ 80. 7D, CB, 00
        jz      ?_086                                   ; 1D18 _ 74, 55
        mov     eax, dword [ebp-10H]                    ; 1D1A _ 8B. 45, F0
        mov     eax, dword [eax+98H]                    ; 1D1D _ 8B. 80, 00000098
        lea     edx, [eax+7H]                           ; 1D23 _ 8D. 50, 07
        test    eax, eax                                ; 1D26 _ 85. C0
        cmovs   eax, edx                                ; 1D28 _ 0F 48. C2
        sar     eax, 3                                  ; 1D2B _ C1. F8, 03
        lea     edx, [eax-2H]                           ; 1D2E _ 8D. 50, FE
        mov     eax, dword [ebp-20H]                    ; 1D31 _ 8B. 45, E0
        add     edx, eax                                ; 1D34 _ 01. C2
        movzx   eax, byte [ebp-35H]                     ; 1D36 _ 0F B6. 45, CB
        mov     byte [edx], al                          ; 1D3A _ 88. 02
        mov     eax, dword [ebp-10H]                    ; 1D3C _ 8B. 45, F0
        mov     eax, dword [eax+98H]                    ; 1D3F _ 8B. 80, 00000098
        lea     edx, [eax+7H]                           ; 1D45 _ 8D. 50, 07
        test    eax, eax                                ; 1D48 _ 85. C0
        cmovs   eax, edx                                ; 1D4A _ 0F 48. C2
        sar     eax, 3                                  ; 1D4D _ C1. F8, 03
        lea     edx, [eax-1H]                           ; 1D50 _ 8D. 50, FF
        mov     eax, dword [ebp-20H]                    ; 1D53 _ 8B. 45, E0
        add     eax, edx                                ; 1D56 _ 01. D0
        mov     byte [eax], 0                           ; 1D58 _ C6. 00, 00
        movsx   eax, byte [ebp-35H]                     ; 1D5B _ 0F BE. 45, CB
        mov     dword [esp+4H], 1                       ; 1D5F _ C7. 44 24, 04, 00000001
        mov     dword [esp], eax                        ; 1D67 _ 89. 04 24
        call    _cons_putchar                           ; 1D6A _ E8, 000007EE
?_086:  cmp     dword [ebp-0CH], 0                      ; 1D6F _ 83. 7D, F4, 00
        js      ?_087                                   ; 1D73 _ 78, 3B
        mov     eax, dword [ebp-10H]                    ; 1D75 _ 8B. 45, F0
        mov     ebx, dword [eax+9CH]                    ; 1D78 _ 8B. 98, 0000009C
        mov     eax, dword [ebp-10H]                    ; 1D7E _ 8B. 45, F0
        mov     ecx, dword [eax+98H]                    ; 1D81 _ 8B. 88, 00000098
        mov     eax, dword [ebp-10H]                    ; 1D87 _ 8B. 45, F0
        mov     edx, dword [eax+94H]                    ; 1D8A _ 8B. 90, 00000094
        mov     eax, dword [_shtctl]                    ; 1D90 _ A1, 00000264(d)
        mov     esi, dword [ebp-0CH]                    ; 1D95 _ 8B. 75, F4
        mov     dword [esp+10H], esi                    ; 1D98 _ 89. 74 24, 10
        mov     dword [esp+0CH], ebx                    ; 1D9C _ 89. 5C 24, 0C
        mov     dword [esp+8H], ecx                     ; 1DA0 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 1DA4 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1DA8 _ 89. 04 24
        call    _set_cursor                             ; 1DAB _ E8, FFFFEBEC
?_087:  call    _io_sti                                 ; 1DB0 _ E8, 00000000(rel)
        jmp     ?_071                                   ; 1DB5 _ E9, FFFFFB82
; _console_task End of function

_cons_putstr:; Function begin
        push    ebp                                     ; 1DBA _ 55
        mov     ebp, esp                                ; 1DBB _ 89. E5
        sub     esp, 24                                 ; 1DBD _ 83. EC, 18
        jmp     ?_089                                   ; 1DC0 _ EB, 1D

?_088:  mov     eax, dword [ebp+8H]                     ; 1DC2 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1DC5 _ 0F B6. 00
        movsx   eax, al                                 ; 1DC8 _ 0F BE. C0
        mov     dword [esp+4H], 1                       ; 1DCB _ C7. 44 24, 04, 00000001
        mov     dword [esp], eax                        ; 1DD3 _ 89. 04 24
        call    _cons_putchar                           ; 1DD6 _ E8, 00000782
        add     dword [ebp+8H], 1                       ; 1DDB _ 83. 45, 08, 01
?_089:  mov     eax, dword [ebp+8H]                     ; 1DDF _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1DE2 _ 0F B6. 00
        test    al, al                                  ; 1DE5 _ 84. C0
        jnz     ?_088                                   ; 1DE7 _ 75, D9
        nop                                             ; 1DE9 _ 90
        leave                                           ; 1DEA _ C9
        ret                                             ; 1DEB _ C3
; _cons_putstr End of function

_api_linewin:; Function begin
        push    ebp                                     ; 1DEC _ 55
        mov     ebp, esp                                ; 1DED _ 89. E5
        sub     esp, 32                                 ; 1DEF _ 83. EC, 20
        mov     eax, dword [ebp+14H]                    ; 1DF2 _ 8B. 45, 14
        sub     eax, dword [ebp+0CH]                    ; 1DF5 _ 2B. 45, 0C
        mov     dword [ebp-14H], eax                    ; 1DF8 _ 89. 45, EC
        mov     eax, dword [ebp+18H]                    ; 1DFB _ 8B. 45, 18
        sub     eax, dword [ebp+10H]                    ; 1DFE _ 2B. 45, 10
        mov     dword [ebp-18H], eax                    ; 1E01 _ 89. 45, E8
        mov     eax, dword [ebp+0CH]                    ; 1E04 _ 8B. 45, 0C
        shl     eax, 10                                 ; 1E07 _ C1. E0, 0A
        mov     dword [ebp-8H], eax                     ; 1E0A _ 89. 45, F8
        mov     eax, dword [ebp+10H]                    ; 1E0D _ 8B. 45, 10
        shl     eax, 10                                 ; 1E10 _ C1. E0, 0A
        mov     dword [ebp-0CH], eax                    ; 1E13 _ 89. 45, F4
        cmp     dword [ebp-14H], 0                      ; 1E16 _ 83. 7D, EC, 00
        jns     ?_090                                   ; 1E1A _ 79, 03
        neg     dword [ebp-14H]                         ; 1E1C _ F7. 5D, EC
?_090:  cmp     dword [ebp-18H], 0                      ; 1E1F _ 83. 7D, E8, 00
        jns     ?_091                                   ; 1E23 _ 79, 03
        neg     dword [ebp-18H]                         ; 1E25 _ F7. 5D, E8
?_091:  mov     eax, dword [ebp-14H]                    ; 1E28 _ 8B. 45, EC
        cmp     eax, dword [ebp-18H]                    ; 1E2B _ 3B. 45, E8
        jl      ?_095                                   ; 1E2E _ 7C, 53
        mov     eax, dword [ebp-14H]                    ; 1E30 _ 8B. 45, EC
        add     eax, 1                                  ; 1E33 _ 83. C0, 01
        mov     dword [ebp-10H], eax                    ; 1E36 _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 1E39 _ 8B. 45, 0C
        cmp     eax, dword [ebp+14H]                    ; 1E3C _ 3B. 45, 14
        jle     ?_092                                   ; 1E3F _ 7E, 09
        mov     dword [ebp-14H], -1024                  ; 1E41 _ C7. 45, EC, FFFFFC00
        jmp     ?_093                                   ; 1E48 _ EB, 07

?_092:  mov     dword [ebp-14H], 1024                   ; 1E4A _ C7. 45, EC, 00000400
?_093:  mov     eax, dword [ebp+10H]                    ; 1E51 _ 8B. 45, 10
        cmp     eax, dword [ebp+18H]                    ; 1E54 _ 3B. 45, 18
        jg      ?_094                                   ; 1E57 _ 7F, 15
        mov     eax, dword [ebp+18H]                    ; 1E59 _ 8B. 45, 18
        sub     eax, dword [ebp+10H]                    ; 1E5C _ 2B. 45, 10
        add     eax, 1                                  ; 1E5F _ 83. C0, 01
        shl     eax, 10                                 ; 1E62 _ C1. E0, 0A
        cdq                                             ; 1E65 _ 99
        idiv    dword [ebp-10H]                         ; 1E66 _ F7. 7D, F0
        mov     dword [ebp-18H], eax                    ; 1E69 _ 89. 45, E8
        jmp     ?_099                                   ; 1E6C _ EB, 66

?_094:  mov     eax, dword [ebp+18H]                    ; 1E6E _ 8B. 45, 18
        sub     eax, dword [ebp+10H]                    ; 1E71 _ 2B. 45, 10
        sub     eax, 1                                  ; 1E74 _ 83. E8, 01
        shl     eax, 10                                 ; 1E77 _ C1. E0, 0A
        cdq                                             ; 1E7A _ 99
        idiv    dword [ebp-10H]                         ; 1E7B _ F7. 7D, F0
        mov     dword [ebp-18H], eax                    ; 1E7E _ 89. 45, E8
        jmp     ?_099                                   ; 1E81 _ EB, 51

?_095:  mov     eax, dword [ebp-18H]                    ; 1E83 _ 8B. 45, E8
        add     eax, 1                                  ; 1E86 _ 83. C0, 01
        mov     dword [ebp-10H], eax                    ; 1E89 _ 89. 45, F0
        mov     eax, dword [ebp+10H]                    ; 1E8C _ 8B. 45, 10
        cmp     eax, dword [ebp+18H]                    ; 1E8F _ 3B. 45, 18
        jle     ?_096                                   ; 1E92 _ 7E, 09
        mov     dword [ebp-18H], -1024                  ; 1E94 _ C7. 45, E8, FFFFFC00
        jmp     ?_097                                   ; 1E9B _ EB, 07

?_096:  mov     dword [ebp-18H], 1024                   ; 1E9D _ C7. 45, E8, 00000400
?_097:  mov     eax, dword [ebp+0CH]                    ; 1EA4 _ 8B. 45, 0C
        cmp     eax, dword [ebp+14H]                    ; 1EA7 _ 3B. 45, 14
        jg      ?_098                                   ; 1EAA _ 7F, 15
        mov     eax, dword [ebp+14H]                    ; 1EAC _ 8B. 45, 14
        sub     eax, dword [ebp+0CH]                    ; 1EAF _ 2B. 45, 0C
        add     eax, 1                                  ; 1EB2 _ 83. C0, 01
        shl     eax, 10                                 ; 1EB5 _ C1. E0, 0A
        cdq                                             ; 1EB8 _ 99
        idiv    dword [ebp-10H]                         ; 1EB9 _ F7. 7D, F0
        mov     dword [ebp-14H], eax                    ; 1EBC _ 89. 45, EC
        jmp     ?_099                                   ; 1EBF _ EB, 13

?_098:  mov     eax, dword [ebp+14H]                    ; 1EC1 _ 8B. 45, 14
        sub     eax, dword [ebp+0CH]                    ; 1EC4 _ 2B. 45, 0C
        sub     eax, 1                                  ; 1EC7 _ 83. E8, 01
        shl     eax, 10                                 ; 1ECA _ C1. E0, 0A
        cdq                                             ; 1ECD _ 99
        idiv    dword [ebp-10H]                         ; 1ECE _ F7. 7D, F0
        mov     dword [ebp-14H], eax                    ; 1ED1 _ 89. 45, EC
?_099:  mov     dword [ebp-4H], 0                       ; 1ED4 _ C7. 45, FC, 00000000
        jmp     ?_101                                   ; 1EDB _ EB, 35

?_100:  mov     eax, dword [ebp+8H]                     ; 1EDD _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 1EE0 _ 8B. 10
        mov     eax, dword [ebp-0CH]                    ; 1EE2 _ 8B. 45, F4
        sar     eax, 10                                 ; 1EE5 _ C1. F8, 0A
        mov     ecx, eax                                ; 1EE8 _ 89. C1
        mov     eax, dword [ebp+8H]                     ; 1EEA _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 1EED _ 8B. 40, 04
        imul    eax, ecx                                ; 1EF0 _ 0F AF. C1
        mov     ecx, dword [ebp-8H]                     ; 1EF3 _ 8B. 4D, F8
        sar     ecx, 10                                 ; 1EF6 _ C1. F9, 0A
        add     eax, ecx                                ; 1EF9 _ 01. C8
        add     eax, edx                                ; 1EFB _ 01. D0
        mov     edx, dword [ebp+1CH]                    ; 1EFD _ 8B. 55, 1C
        mov     byte [eax], dl                          ; 1F00 _ 88. 10
        mov     eax, dword [ebp-14H]                    ; 1F02 _ 8B. 45, EC
        add     dword [ebp-8H], eax                     ; 1F05 _ 01. 45, F8
        mov     eax, dword [ebp-18H]                    ; 1F08 _ 8B. 45, E8
        add     dword [ebp-0CH], eax                    ; 1F0B _ 01. 45, F4
        add     dword [ebp-4H], 1                       ; 1F0E _ 83. 45, FC, 01
?_101:  mov     eax, dword [ebp-4H]                     ; 1F12 _ 8B. 45, FC
        cmp     eax, dword [ebp-10H]                    ; 1F15 _ 3B. 45, F0
        jl      ?_100                                   ; 1F18 _ 7C, C3
        nop                                             ; 1F1A _ 90
        leave                                           ; 1F1B _ C9
        ret                                             ; 1F1C _ C3
; _api_linewin End of function

_handle_keyboard:; Function begin
        push    ebp                                     ; 1F1D _ 55
        mov     ebp, esp                                ; 1F1E _ 89. E5
        sub     esp, 56                                 ; 1F20 _ 83. EC, 38
?_102:  call    _io_cli                                 ; 1F23 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 1F28 _ 8B. 45, 08
        add     eax, 16                                 ; 1F2B _ 83. C0, 10
        mov     dword [esp], eax                        ; 1F2E _ 89. 04 24
        call    _fifo8_status                           ; 1F31 _ E8, 00000000(rel)
        test    eax, eax                                ; 1F36 _ 85. C0
        jnz     ?_103                                   ; 1F38 _ 75, 2A
        call    _io_sti                                 ; 1F3A _ E8, 00000000(rel)
        cmp     dword [ebp+0CH], 0                      ; 1F3F _ 83. 7D, 0C, 00
        jne     ?_107                                   ; 1F43 _ 0F 85, 000000E2
        call    _io_sti                                 ; 1F49 _ E8, 00000000(rel)
        mov     eax, dword [ebp+10H]                    ; 1F4E _ 8B. 45, 10
        add     eax, 28                                 ; 1F51 _ 83. C0, 1C
        mov     dword [eax], -1                         ; 1F54 _ C7. 00, FFFFFFFF
        mov     eax, 0                                  ; 1F5A _ B8, 00000000
        jmp     ?_108                                   ; 1F5F _ E9, 000000CD

?_103:  mov     eax, dword [ebp+8H]                     ; 1F64 _ 8B. 45, 08
        add     eax, 16                                 ; 1F67 _ 83. C0, 10
        mov     dword [esp], eax                        ; 1F6A _ 89. 04 24
        call    _fifo8_get                              ; 1F6D _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 1F72 _ 89. 45, F4
        call    _io_sti                                 ; 1F75 _ E8, 00000000(rel)
        cmp     dword [ebp-0CH], 255                    ; 1F7A _ 81. 7D, F4, 000000FF
        jle     ?_104                                   ; 1F81 _ 7E, 37
        mov     edx, dword [_sht_back]                  ; 1F83 _ 8B. 15, 00000268(d)
        mov     eax, dword [_shtctl]                    ; 1F89 _ A1, 00000264(d)
        mov     dword [esp+14H], ?_375                  ; 1F8E _ C7. 44 24, 14, 00000048(d)
        mov     dword [esp+10H], 7                      ; 1F96 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 176                    ; 1F9E _ C7. 44 24, 0C, 000000B0
        mov     dword [esp+8H], 0                       ; 1FA6 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 1FAE _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1FB2 _ 89. 04 24
        call    _showString                             ; 1FB5 _ E8, 00000BBA
?_104:  cmp     dword [ebp-0CH], 1                      ; 1FBA _ 83. 7D, F4, 01
        jg      ?_105                                   ; 1FBE _ 7F, 41
        mov     eax, dword [ebp+8H]                     ; 1FC0 _ 8B. 45, 08
        lea     edx, [eax+10H]                          ; 1FC3 _ 8D. 50, 10
        mov     eax, dword [ebp+8H]                     ; 1FC6 _ 8B. 45, 08
        mov     eax, dword [eax+0A8H]                   ; 1FC9 _ 8B. 80, 000000A8
        mov     dword [esp+8H], 1                       ; 1FCF _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], edx                     ; 1FD7 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1FDB _ 89. 04 24
        call    _timer_init                             ; 1FDE _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 1FE3 _ 8B. 45, 08
        mov     eax, dword [eax+0A8H]                   ; 1FE6 _ 8B. 80, 000000A8
        mov     dword [esp+4H], 50                      ; 1FEC _ C7. 44 24, 04, 00000032
        mov     dword [esp], eax                        ; 1FF4 _ 89. 04 24
        call    _timer_settime                          ; 1FF7 _ E8, 00000000(rel)
        jmp     ?_102                                   ; 1FFC _ E9, FFFFFF22

?_105:  cmp     dword [ebp-0CH], 2                      ; 2001 _ 83. 7D, F4, 02
        jnz     ?_106                                   ; 2005 _ 75, 12
        mov     eax, dword [ebp+8H]                     ; 2007 _ 8B. 45, 08
        mov     dword [eax+0A0H], 7                     ; 200A _ C7. 80, 000000A0, 00000007
        jmp     ?_102                                   ; 2014 _ E9, FFFFFF0A

?_106:  mov     eax, dword [ebp+10H]                    ; 2019 _ 8B. 45, 10
        add     eax, 28                                 ; 201C _ 83. C0, 1C
        mov     edx, dword [ebp-0CH]                    ; 201F _ 8B. 55, F4
        mov     dword [eax], edx                        ; 2022 _ 89. 10
        mov     eax, 0                                  ; 2024 _ B8, 00000000
        jmp     ?_108                                   ; 2029 _ EB, 06

?_107:  nop                                             ; 202B _ 90
        jmp     ?_102                                   ; 202C _ E9, FFFFFEF2
; _handle_keyboard End of function

?_108:  ; Local function
        leave                                           ; 2031 _ C9
        ret                                             ; 2032 _ C3

_close_constask:; Function begin
        push    ebp                                     ; 2033 _ 55
        mov     ebp, esp                                ; 2034 _ 89. E5
        sub     esp, 24                                 ; 2036 _ 83. EC, 18
        mov     eax, dword [ebp+8H]                     ; 2039 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 203C _ 89. 04 24
        call    _task_sleep                             ; 203F _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 2044 _ 8B. 45, 08
        mov     eax, dword [eax+0B8H]                   ; 2047 _ 8B. 80, 000000B8
        mov     edx, eax                                ; 204D _ 89. C2
        mov     eax, dword [_memman]                    ; 204F _ A1, 00000000(d)
        mov     dword [esp+8H], 65536                   ; 2054 _ C7. 44 24, 08, 00010000
        mov     dword [esp+4H], edx                     ; 205C _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2060 _ 89. 04 24
        call    _memman_free_4k                         ; 2063 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 2068 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 206B _ 8B. 40, 10
        mov     edx, eax                                ; 206E _ 89. C2
        mov     eax, dword [_memman]                    ; 2070 _ A1, 00000000(d)
        mov     dword [esp+8H], 128                     ; 2075 _ C7. 44 24, 08, 00000080
        mov     dword [esp+4H], edx                     ; 207D _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2081 _ 89. 04 24
        call    _memman_free                            ; 2084 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 2089 _ 8B. 45, 08
        mov     eax, dword [eax+0ACH]                   ; 208C _ 8B. 80, 000000AC
        mov     edx, eax                                ; 2092 _ 89. C2
        mov     eax, dword [_memman]                    ; 2094 _ A1, 00000000(d)
        mov     dword [esp+8H], 30                      ; 2099 _ C7. 44 24, 08, 0000001E
        mov     dword [esp+4H], edx                     ; 20A1 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 20A5 _ 89. 04 24
        call    _memman_free                            ; 20A8 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 20AD _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 20B0 _ C7. 40, 04, 00000000
        mov     dword [_current_console_task], 0        ; 20B7 _ C7. 05, 00000278(d), 00000000
        nop                                             ; 20C1 _ 90
        leave                                           ; 20C2 _ C9
        ret                                             ; 20C3 _ C3
; _close_constask End of function

_close_console:; Function begin
        push    ebp                                     ; 20C4 _ 55
        mov     ebp, esp                                ; 20C5 _ 89. E5
        sub     esp, 40                                 ; 20C7 _ 83. EC, 28
        mov     eax, dword [ebp+8H]                     ; 20CA _ 8B. 45, 08
        mov     eax, dword [eax+20H]                    ; 20CD _ 8B. 40, 20
        mov     dword [ebp-0CH], eax                    ; 20D0 _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 20D3 _ 8B. 45, F4
        mov     eax, dword [eax+0A8H]                   ; 20D6 _ 8B. 80, 000000A8
        mov     dword [esp], eax                        ; 20DC _ 89. 04 24
        call    _timer_free                             ; 20DF _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 20E4 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 20E7 _ 8B. 00
        mov     edx, eax                                ; 20E9 _ 89. C2
        mov     eax, dword [_memman]                    ; 20EB _ A1, 00000000(d)
        mov     dword [esp+8H], 42240                   ; 20F0 _ C7. 44 24, 08, 0000A500
        mov     dword [esp+4H], edx                     ; 20F8 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 20FC _ 89. 04 24
        call    _memman_free_4k                         ; 20FF _ E8, 00000000(rel)
        mov     eax, dword [_shtctl]                    ; 2104 _ A1, 00000264(d)
        mov     edx, dword [ebp+8H]                     ; 2109 _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 210C _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2110 _ 89. 04 24
        call    _sheet_free                             ; 2113 _ E8, 00000000(rel)
        mov     eax, dword [ebp-0CH]                    ; 2118 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 211B _ 89. 04 24
        call    _close_constask                         ; 211E _ E8, FFFFFF10
        nop                                             ; 2123 _ 90
        leave                                           ; 2124 _ C9
        ret                                             ; 2125 _ C3
; _close_console End of function

_cmd_exit:; Function begin
        push    ebp                                     ; 2126 _ 55
        mov     ebp, esp                                ; 2127 _ 89. E5
        sub     esp, 24                                 ; 2129 _ 83. EC, 18
        call    _io_cli                                 ; 212C _ E8, 00000000(rel)
        mov     dword [esp+4H], 255                     ; 2131 _ C7. 44 24, 04, 000000FF
        mov     dword [esp], _keyinfo                   ; 2139 _ C7. 04 24, 0000001C(d)
        call    _fifo8_put                              ; 2140 _ E8, 00000000(rel)
        call    _io_sti                                 ; 2145 _ E8, 00000000(rel)
        nop                                             ; 214A _ 90
        leave                                           ; 214B _ C9
        ret                                             ; 214C _ C3
; _cmd_exit End of function

_kernel_api:; Function begin
        push    ebp                                     ; 214D _ 55
        mov     ebp, esp                                ; 214E _ 89. E5
        push    esi                                     ; 2150 _ 56
        push    ebx                                     ; 2151 _ 53
        sub     esp, 48                                 ; 2152 _ 83. EC, 30
        call    _task_now                               ; 2155 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 215A _ 89. 45, F4
        lea     eax, [ebp+24H]                          ; 215D _ 8D. 45, 24
        add     eax, 4                                  ; 2160 _ 83. C0, 04
        mov     dword [ebp-10H], eax                    ; 2163 _ 89. 45, F0
        mov     dword [ebp-14H], 0                      ; 2166 _ C7. 45, EC, 00000000
        cmp     dword [ebp+1CH], 1                      ; 216D _ 83. 7D, 1C, 01
        jnz     ?_109                                   ; 2171 _ 75, 1B
        mov     eax, dword [ebp+24H]                    ; 2173 _ 8B. 45, 24
        movsx   eax, al                                 ; 2176 _ 0F BE. C0
        mov     dword [esp+4H], 1                       ; 2179 _ C7. 44 24, 04, 00000001
        mov     dword [esp], eax                        ; 2181 _ 89. 04 24
        call    _cons_putchar                           ; 2184 _ E8, 000003D4
        jmp     ?_123                                   ; 2189 _ E9, 000003C3

?_109:  cmp     dword [ebp+1CH], 2                      ; 218E _ 83. 7D, 1C, 02
        jnz     ?_110                                   ; 2192 _ 75, 1D
        mov     eax, dword [ebp-0CH]                    ; 2194 _ 8B. 45, F4
        mov     eax, dword [eax+0B0H]                   ; 2197 _ 8B. 80, 000000B0
        mov     edx, dword [eax]                        ; 219D _ 8B. 10
        mov     eax, dword [ebp+18H]                    ; 219F _ 8B. 45, 18
        add     eax, edx                                ; 21A2 _ 01. D0
        mov     dword [esp], eax                        ; 21A4 _ 89. 04 24
        call    _cons_putstr                            ; 21A7 _ E8, FFFFFC0E
        jmp     ?_123                                   ; 21AC _ E9, 000003A0

?_110:  cmp     dword [ebp+1CH], 4                      ; 21B1 _ 83. 7D, 1C, 04
        jnz     ?_111                                   ; 21B5 _ 75, 15
        mov     eax, dword [ebp-0CH]                    ; 21B7 _ 8B. 45, F4
        mov     dword [eax+34H], 0                      ; 21BA _ C7. 40, 34, 00000000
        mov     eax, dword [ebp-0CH]                    ; 21C1 _ 8B. 45, F4
        add     eax, 48                                 ; 21C4 _ 83. C0, 30
        jmp     ?_124                                   ; 21C7 _ E9, 0000038A

?_111:  cmp     dword [ebp+1CH], 5                      ; 21CC _ 83. 7D, 1C, 05
        jne     ?_112                                   ; 21D0 _ 0F 85, 00000107
        mov     eax, dword [_shtctl]                    ; 21D6 _ A1, 00000264(d)
        mov     dword [esp], eax                        ; 21DB _ 89. 04 24
        call    _sheet_alloc                            ; 21DE _ E8, 00000000(rel)
        mov     dword [ebp-18H], eax                    ; 21E3 _ 89. 45, E8
        mov     eax, dword [ebp-18H]                    ; 21E6 _ 8B. 45, E8
        mov     edx, dword [ebp-0CH]                    ; 21E9 _ 8B. 55, F4
        mov     dword [eax+20H], edx                    ; 21EC _ 89. 50, 20
        mov     eax, dword [ebp-18H]                    ; 21EF _ 8B. 45, E8
        mov     eax, dword [eax+1CH]                    ; 21F2 _ 8B. 40, 1C
        or      eax, 10H                                ; 21F5 _ 83. C8, 10
        mov     edx, eax                                ; 21F8 _ 89. C2
        mov     eax, dword [ebp-18H]                    ; 21FA _ 8B. 45, E8
        mov     dword [eax+1CH], edx                    ; 21FD _ 89. 50, 1C
        mov     edx, dword [ebp+24H]                    ; 2200 _ 8B. 55, 24
        mov     eax, dword [ebp-0CH]                    ; 2203 _ 8B. 45, F4
        mov     eax, dword [eax+0B0H]                   ; 2206 _ 8B. 80, 000000B0
        mov     ecx, dword [eax+4H]                     ; 220C _ 8B. 48, 04
        mov     eax, dword [ebp+18H]                    ; 220F _ 8B. 45, 18
        add     eax, ecx                                ; 2212 _ 01. C8
        mov     dword [esp+10H], edx                    ; 2214 _ 89. 54 24, 10
        mov     edx, dword [ebp+8H]                     ; 2218 _ 8B. 55, 08
        mov     dword [esp+0CH], edx                    ; 221B _ 89. 54 24, 0C
        mov     edx, dword [ebp+0CH]                    ; 221F _ 8B. 55, 0C
        mov     dword [esp+8H], edx                     ; 2222 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 2226 _ 89. 44 24, 04
        mov     eax, dword [ebp-18H]                    ; 222A _ 8B. 45, E8
        mov     dword [esp], eax                        ; 222D _ 89. 04 24
        call    _sheet_setbuf                           ; 2230 _ E8, 00000000(rel)
        mov     eax, dword [ebp-0CH]                    ; 2235 _ 8B. 45, F4
        mov     eax, dword [eax+0B0H]                   ; 2238 _ 8B. 80, 000000B0
        mov     edx, dword [eax]                        ; 223E _ 8B. 10
        mov     eax, dword [ebp+20H]                    ; 2240 _ 8B. 45, 20
        add     edx, eax                                ; 2243 _ 01. C2
        mov     eax, dword [_shtctl]                    ; 2245 _ A1, 00000264(d)
        mov     dword [esp+0CH], 0                      ; 224A _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], edx                     ; 2252 _ 89. 54 24, 08
        mov     edx, dword [ebp-18H]                    ; 2256 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 2259 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 225D _ 89. 04 24
        call    _make_window8                           ; 2260 _ E8, 000018F7
        mov     eax, dword [_shtctl]                    ; 2265 _ A1, 00000264(d)
        mov     eax, dword [eax+0CH]                    ; 226A _ 8B. 40, 0C
        sub     eax, dword [ebp+8H]                     ; 226D _ 2B. 45, 08
        mov     edx, eax                                ; 2270 _ 89. C2
        shr     edx, 31                                 ; 2272 _ C1. EA, 1F
        add     eax, edx                                ; 2275 _ 01. D0
        sar     eax, 1                                  ; 2277 _ D1. F8
        mov     ecx, eax                                ; 2279 _ 89. C1
        mov     eax, dword [_shtctl]                    ; 227B _ A1, 00000264(d)
        mov     eax, dword [eax+8H]                     ; 2280 _ 8B. 40, 08
        sub     eax, dword [ebp+0CH]                    ; 2283 _ 2B. 45, 0C
        mov     edx, eax                                ; 2286 _ 89. C2
        shr     edx, 31                                 ; 2288 _ C1. EA, 1F
        add     eax, edx                                ; 228B _ 01. D0
        sar     eax, 1                                  ; 228D _ D1. F8
        mov     edx, eax                                ; 228F _ 89. C2
        mov     eax, dword [_shtctl]                    ; 2291 _ A1, 00000264(d)
        mov     dword [esp+0CH], ecx                    ; 2296 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 229A _ 89. 54 24, 08
        mov     edx, dword [ebp-18H]                    ; 229E _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 22A1 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 22A5 _ 89. 04 24
        call    _sheet_slide                            ; 22A8 _ E8, 00000000(rel)
        mov     eax, dword [_shtctl]                    ; 22AD _ A1, 00000264(d)
        mov     edx, dword [eax+10H]                    ; 22B2 _ 8B. 50, 10
        mov     eax, dword [_shtctl]                    ; 22B5 _ A1, 00000264(d)
        mov     dword [esp+8H], edx                     ; 22BA _ 89. 54 24, 08
        mov     edx, dword [ebp-18H]                    ; 22BE _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 22C1 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 22C5 _ 89. 04 24
        call    _sheet_updown                           ; 22C8 _ E8, 00000000(rel)
        mov     eax, dword [ebp-10H]                    ; 22CD _ 8B. 45, F0
        add     eax, 28                                 ; 22D0 _ 83. C0, 1C
        mov     edx, dword [ebp-18H]                    ; 22D3 _ 8B. 55, E8
        mov     dword [eax], edx                        ; 22D6 _ 89. 10
        jmp     ?_123                                   ; 22D8 _ E9, 00000274

?_112:  cmp     dword [ebp+1CH], 6                      ; 22DD _ 83. 7D, 1C, 06
        jne     ?_113                                   ; 22E1 _ 0F 85, 0000008D
        mov     eax, dword [ebp+18H]                    ; 22E7 _ 8B. 45, 18
        mov     dword [ebp-18H], eax                    ; 22EA _ 89. 45, E8
        mov     eax, dword [ebp-0CH]                    ; 22ED _ 8B. 45, F4
        mov     eax, dword [eax+0B0H]                   ; 22F0 _ 8B. 80, 000000B0
        mov     edx, dword [eax+4H]                     ; 22F6 _ 8B. 50, 04
        mov     eax, dword [ebp+10H]                    ; 22F9 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 22FC _ 8D. 0C 02
        mov     eax, dword [ebp+24H]                    ; 22FF _ 8B. 45, 24
        movsx   eax, al                                 ; 2302 _ 0F BE. C0
        mov     edx, dword [_shtctl]                    ; 2305 _ 8B. 15, 00000264(d)
        mov     dword [esp+14H], ecx                    ; 230B _ 89. 4C 24, 14
        mov     dword [esp+10H], eax                    ; 230F _ 89. 44 24, 10
        mov     eax, dword [ebp+8H]                     ; 2313 _ 8B. 45, 08
        mov     dword [esp+0CH], eax                    ; 2316 _ 89. 44 24, 0C
        mov     eax, dword [ebp+0CH]                    ; 231A _ 8B. 45, 0C
        mov     dword [esp+8H], eax                     ; 231D _ 89. 44 24, 08
        mov     eax, dword [ebp-18H]                    ; 2321 _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 2324 _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 2328 _ 89. 14 24
        call    _showString                             ; 232B _ E8, 00000844
        mov     eax, dword [ebp+8H]                     ; 2330 _ 8B. 45, 08
        lea     ecx, [eax+10H]                          ; 2333 _ 8D. 48, 10
        mov     eax, dword [ebp+20H]                    ; 2336 _ 8B. 45, 20
        lea     edx, [eax*8]                            ; 2339 _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp+0CH]                    ; 2340 _ 8B. 45, 0C
        add     edx, eax                                ; 2343 _ 01. C2
        mov     eax, dword [_shtctl]                    ; 2345 _ A1, 00000264(d)
        mov     dword [esp+14H], ecx                    ; 234A _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 234E _ 89. 54 24, 10
        mov     edx, dword [ebp+8H]                     ; 2352 _ 8B. 55, 08
        mov     dword [esp+0CH], edx                    ; 2355 _ 89. 54 24, 0C
        mov     edx, dword [ebp+0CH]                    ; 2359 _ 8B. 55, 0C
        mov     dword [esp+8H], edx                     ; 235C _ 89. 54 24, 08
        mov     edx, dword [ebp-18H]                    ; 2360 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 2363 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2367 _ 89. 04 24
        call    _sheet_refresh                          ; 236A _ E8, 00000000(rel)
        jmp     ?_123                                   ; 236F _ E9, 000001DD

?_113:  cmp     dword [ebp+1CH], 7                      ; 2374 _ 83. 7D, 1C, 07
        jnz     ?_114                                   ; 2378 _ 75, 7E
        mov     eax, dword [ebp+18H]                    ; 237A _ 8B. 45, 18
        mov     dword [ebp-18H], eax                    ; 237D _ 89. 45, E8
        mov     ebx, dword [ebp+24H]                    ; 2380 _ 8B. 5D, 24
        mov     eax, dword [ebp+10H]                    ; 2383 _ 8B. 45, 10
        movzx   eax, al                                 ; 2386 _ 0F B6. C0
        mov     edx, dword [ebp-18H]                    ; 2389 _ 8B. 55, E8
        mov     ecx, dword [edx+4H]                     ; 238C _ 8B. 4A, 04
        mov     edx, dword [ebp-18H]                    ; 238F _ 8B. 55, E8
        mov     edx, dword [edx]                        ; 2392 _ 8B. 12
        mov     esi, dword [ebp+8H]                     ; 2394 _ 8B. 75, 08
        mov     dword [esp+18H], esi                    ; 2397 _ 89. 74 24, 18
        mov     esi, dword [ebp+0CH]                    ; 239B _ 8B. 75, 0C
        mov     dword [esp+14H], esi                    ; 239E _ 89. 74 24, 14
        mov     esi, dword [ebp+20H]                    ; 23A2 _ 8B. 75, 20
        mov     dword [esp+10H], esi                    ; 23A5 _ 89. 74 24, 10
        mov     dword [esp+0CH], ebx                    ; 23A9 _ 89. 5C 24, 0C
        mov     dword [esp+8H], eax                     ; 23AD _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 23B1 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 23B5 _ 89. 14 24
        call    _boxfill8                               ; 23B8 _ E8, 00000DE6
        mov     eax, dword [ebp+8H]                     ; 23BD _ 8B. 45, 08
        lea     ebx, [eax+1H]                           ; 23C0 _ 8D. 58, 01
        mov     eax, dword [ebp+0CH]                    ; 23C3 _ 8B. 45, 0C
        lea     ecx, [eax+1H]                           ; 23C6 _ 8D. 48, 01
        mov     edx, dword [ebp+24H]                    ; 23C9 _ 8B. 55, 24
        mov     eax, dword [_shtctl]                    ; 23CC _ A1, 00000264(d)
        mov     dword [esp+14H], ebx                    ; 23D1 _ 89. 5C 24, 14
        mov     dword [esp+10H], ecx                    ; 23D5 _ 89. 4C 24, 10
        mov     ecx, dword [ebp+20H]                    ; 23D9 _ 8B. 4D, 20
        mov     dword [esp+0CH], ecx                    ; 23DC _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 23E0 _ 89. 54 24, 08
        mov     edx, dword [ebp-18H]                    ; 23E4 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 23E7 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 23EB _ 89. 04 24
        call    _sheet_refresh                          ; 23EE _ E8, 00000000(rel)
        jmp     ?_123                                   ; 23F3 _ E9, 00000159

?_114:  cmp     dword [ebp+1CH], 11                     ; 23F8 _ 83. 7D, 1C, 0B
        jnz     ?_115                                   ; 23FC _ 75, 28
        mov     eax, dword [ebp+18H]                    ; 23FE _ 8B. 45, 18
        mov     dword [ebp-18H], eax                    ; 2401 _ 89. 45, E8
        mov     ebx, dword [ebp+24H]                    ; 2404 _ 8B. 5D, 24
        mov     eax, dword [ebp-18H]                    ; 2407 _ 8B. 45, E8
        mov     edx, dword [eax]                        ; 240A _ 8B. 10
        mov     eax, dword [ebp-18H]                    ; 240C _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 240F _ 8B. 40, 04
        imul    eax, dword [ebp+8H]                     ; 2412 _ 0F AF. 45, 08
        mov     ecx, dword [ebp+0CH]                    ; 2416 _ 8B. 4D, 0C
        add     eax, ecx                                ; 2419 _ 01. C8
        add     eax, edx                                ; 241B _ 01. D0
        mov     edx, ebx                                ; 241D _ 89. DA
        mov     byte [eax], dl                          ; 241F _ 88. 10
        jmp     ?_123                                   ; 2421 _ E9, 0000012B

?_115:  cmp     dword [ebp+1CH], 12                     ; 2426 _ 83. 7D, 1C, 0C
        jnz     ?_116                                   ; 242A _ 75, 3B
        mov     eax, dword [ebp+18H]                    ; 242C _ 8B. 45, 18
        mov     dword [ebp-18H], eax                    ; 242F _ 89. 45, E8
        mov     edx, dword [ebp+24H]                    ; 2432 _ 8B. 55, 24
        mov     eax, dword [_shtctl]                    ; 2435 _ A1, 00000264(d)
        mov     ecx, dword [ebp+8H]                     ; 243A _ 8B. 4D, 08
        mov     dword [esp+14H], ecx                    ; 243D _ 89. 4C 24, 14
        mov     ecx, dword [ebp+0CH]                    ; 2441 _ 8B. 4D, 0C
        mov     dword [esp+10H], ecx                    ; 2444 _ 89. 4C 24, 10
        mov     ecx, dword [ebp+20H]                    ; 2448 _ 8B. 4D, 20
        mov     dword [esp+0CH], ecx                    ; 244B _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 244F _ 89. 54 24, 08
        mov     edx, dword [ebp-18H]                    ; 2453 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 2456 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 245A _ 89. 04 24
        call    _sheet_refresh                          ; 245D _ E8, 00000000(rel)
        jmp     ?_123                                   ; 2462 _ E9, 000000EA

?_116:  cmp     dword [ebp+1CH], 13                     ; 2467 _ 83. 7D, 1C, 0D
        jnz     ?_117                                   ; 246B _ 75, 39
        mov     eax, dword [ebp+18H]                    ; 246D _ 8B. 45, 18
        mov     dword [ebp-18H], eax                    ; 2470 _ 89. 45, E8
        mov     eax, dword [ebp+24H]                    ; 2473 _ 8B. 45, 24
        mov     edx, dword [ebp+10H]                    ; 2476 _ 8B. 55, 10
        mov     dword [esp+14H], edx                    ; 2479 _ 89. 54 24, 14
        mov     edx, dword [ebp+8H]                     ; 247D _ 8B. 55, 08
        mov     dword [esp+10H], edx                    ; 2480 _ 89. 54 24, 10
        mov     edx, dword [ebp+0CH]                    ; 2484 _ 8B. 55, 0C
        mov     dword [esp+0CH], edx                    ; 2487 _ 89. 54 24, 0C
        mov     edx, dword [ebp+20H]                    ; 248B _ 8B. 55, 20
        mov     dword [esp+8H], edx                     ; 248E _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 2492 _ 89. 44 24, 04
        mov     eax, dword [ebp-18H]                    ; 2496 _ 8B. 45, E8
        mov     dword [esp], eax                        ; 2499 _ 89. 04 24
        call    _api_linewin                            ; 249C _ E8, FFFFF94B
        jmp     ?_123                                   ; 24A1 _ E9, 000000AB

?_117:  cmp     dword [ebp+1CH], 14                     ; 24A6 _ 83. 7D, 1C, 0E
        jnz     ?_118                                   ; 24AA _ 75, 19
        mov     edx, dword [ebp+18H]                    ; 24AC _ 8B. 55, 18
        mov     eax, dword [_shtctl]                    ; 24AF _ A1, 00000264(d)
        mov     dword [esp+4H], edx                     ; 24B4 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 24B8 _ 89. 04 24
        call    _sheet_free                             ; 24BB _ E8, 00000000(rel)
        jmp     ?_123                                   ; 24C0 _ E9, 0000008C

?_118:  cmp     dword [ebp+1CH], 15                     ; 24C5 _ 83. 7D, 1C, 0F
        jnz     ?_119                                   ; 24C9 _ 75, 1B
        mov     eax, dword [ebp+24H]                    ; 24CB _ 8B. 45, 24
        mov     edx, dword [ebp-10H]                    ; 24CE _ 8B. 55, F0
        mov     dword [esp+8H], edx                     ; 24D1 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 24D5 _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 24D9 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 24DC _ 89. 04 24
        call    _handle_keyboard                        ; 24DF _ E8, FFFFFA39
        jmp     ?_123                                   ; 24E4 _ EB, 6B

?_119:  cmp     dword [ebp+1CH], 16                     ; 24E6 _ 83. 7D, 1C, 10
        jnz     ?_120                                   ; 24EA _ 75, 11
        call    _timer_alloc                            ; 24EC _ E8, 00000000(rel)
        mov     edx, eax                                ; 24F1 _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 24F3 _ 8B. 45, F0
        add     eax, 28                                 ; 24F6 _ 83. C0, 1C
        mov     dword [eax], edx                        ; 24F9 _ 89. 10
        jmp     ?_123                                   ; 24FB _ EB, 54

?_120:  cmp     dword [ebp+1CH], 17                     ; 24FD _ 83. 7D, 1C, 11
        jnz     ?_121                                   ; 2501 _ 75, 21
        mov     eax, dword [ebp+24H]                    ; 2503 _ 8B. 45, 24
        movzx   eax, al                                 ; 2506 _ 0F B6. C0
        mov     edx, dword [ebp-0CH]                    ; 2509 _ 8B. 55, F4
        lea     ecx, [edx+10H]                          ; 250C _ 8D. 4A, 10
        mov     edx, dword [ebp+18H]                    ; 250F _ 8B. 55, 18
        mov     dword [esp+8H], eax                     ; 2512 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 2516 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 251A _ 89. 14 24
        call    _timer_init                             ; 251D _ E8, 00000000(rel)
        jmp     ?_123                                   ; 2522 _ EB, 2D

?_121:  cmp     dword [ebp+1CH], 18                     ; 2524 _ 83. 7D, 1C, 12
        jnz     ?_122                                   ; 2528 _ 75, 16
        mov     eax, dword [ebp+24H]                    ; 252A _ 8B. 45, 24
        mov     edx, eax                                ; 252D _ 89. C2
        mov     eax, dword [ebp+18H]                    ; 252F _ 8B. 45, 18
        mov     dword [esp+4H], edx                     ; 2532 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2536 _ 89. 04 24
        call    _timer_settime                          ; 2539 _ E8, 00000000(rel)
        jmp     ?_123                                   ; 253E _ EB, 11

?_122:  cmp     dword [ebp+1CH], 19                     ; 2540 _ 83. 7D, 1C, 13
        jnz     ?_123                                   ; 2544 _ 75, 0B
        mov     eax, dword [ebp+18H]                    ; 2546 _ 8B. 45, 18
        mov     dword [esp], eax                        ; 2549 _ 89. 04 24
        call    _timer_free                             ; 254C _ E8, 00000000(rel)
?_123:  mov     eax, 0                                  ; 2551 _ B8, 00000000
?_124:  add     esp, 48                                 ; 2556 _ 83. C4, 30
        pop     ebx                                     ; 2559 _ 5B
        pop     esi                                     ; 255A _ 5E
        pop     ebp                                     ; 255B _ 5D
        ret                                             ; 255C _ C3
; _kernel_api End of function

_cons_putchar:; Function begin
        push    ebp                                     ; 255D _ 55
        mov     ebp, esp                                ; 255E _ 89. E5
        push    esi                                     ; 2560 _ 56
        push    ebx                                     ; 2561 _ 53
        sub     esp, 64                                 ; 2562 _ 83. EC, 40
        mov     eax, dword [ebp+8H]                     ; 2565 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 2568 _ 8B. 55, 0C
        mov     byte [ebp-1CH], al                      ; 256B _ 88. 45, E4
        mov     eax, edx                                ; 256E _ 89. D0
        mov     byte [ebp-20H], al                      ; 2570 _ 88. 45, E0
        call    _task_now                               ; 2573 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 2578 _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 257B _ 8B. 45, F4
        mov     ebx, dword [eax+9CH]                    ; 257E _ 8B. 98, 0000009C
        mov     eax, dword [ebp-0CH]                    ; 2584 _ 8B. 45, F4
        mov     ecx, dword [eax+98H]                    ; 2587 _ 8B. 88, 00000098
        mov     eax, dword [ebp-0CH]                    ; 258D _ 8B. 45, F4
        mov     edx, dword [eax+94H]                    ; 2590 _ 8B. 90, 00000094
        mov     eax, dword [_shtctl]                    ; 2596 _ A1, 00000264(d)
        mov     dword [esp+10H], 0                      ; 259B _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], ebx                    ; 25A3 _ 89. 5C 24, 0C
        mov     dword [esp+8H], ecx                     ; 25A7 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 25AB _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 25AF _ 89. 04 24
        call    _set_cursor                             ; 25B2 _ E8, FFFFE3E5
        mov     edx, dword [ebp-0CH]                    ; 25B7 _ 8B. 55, F4
        movzx   eax, byte [ebp-1CH]                     ; 25BA _ 0F B6. 45, E4
        mov     byte [edx+0A4H], al                     ; 25BE _ 88. 82, 000000A4
        mov     eax, dword [ebp-0CH]                    ; 25C4 _ 8B. 45, F4
        mov     byte [eax+0A5H], 0                      ; 25C7 _ C6. 80, 000000A5, 00
        mov     eax, dword [ebp-0CH]                    ; 25CE _ 8B. 45, F4
        lea     esi, [eax+0A4H]                         ; 25D1 _ 8D. B0, 000000A4
        mov     eax, dword [ebp-0CH]                    ; 25D7 _ 8B. 45, F4
        mov     ebx, dword [eax+9CH]                    ; 25DA _ 8B. 98, 0000009C
        mov     eax, dword [ebp-0CH]                    ; 25E0 _ 8B. 45, F4
        mov     ecx, dword [eax+98H]                    ; 25E3 _ 8B. 88, 00000098
        mov     eax, dword [ebp-0CH]                    ; 25E9 _ 8B. 45, F4
        mov     edx, dword [eax+94H]                    ; 25EC _ 8B. 90, 00000094
        mov     eax, dword [_shtctl]                    ; 25F2 _ A1, 00000264(d)
        mov     dword [esp+14H], esi                    ; 25F7 _ 89. 74 24, 14
        mov     dword [esp+10H], 7                      ; 25FB _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ebx                    ; 2603 _ 89. 5C 24, 0C
        mov     dword [esp+8H], ecx                     ; 2607 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 260B _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 260F _ 89. 04 24
        call    _showString                             ; 2612 _ E8, 0000055D
        mov     eax, dword [ebp-0CH]                    ; 2617 _ 8B. 45, F4
        mov     eax, dword [eax+98H]                    ; 261A _ 8B. 80, 00000098
        lea     edx, [eax+8H]                           ; 2620 _ 8D. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 2623 _ 8B. 45, F4
        mov     dword [eax+98H], edx                    ; 2626 _ 89. 90, 00000098
        nop                                             ; 262C _ 90
        add     esp, 64                                 ; 262D _ 83. C4, 40
        pop     ebx                                     ; 2630 _ 5B
        pop     esi                                     ; 2631 _ 5E
        pop     ebp                                     ; 2632 _ 5D
        ret                                             ; 2633 _ C3
; _cons_putchar End of function

_cons_newline:; Function begin
        push    ebp                                     ; 2634 _ 55
        mov     ebp, esp                                ; 2635 _ 89. E5
        push    ebx                                     ; 2637 _ 53
        sub     esp, 52                                 ; 2638 _ 83. EC, 34
        cmp     dword [ebp+8H], 139                     ; 263B _ 81. 7D, 08, 0000008B
        jg      ?_125                                   ; 2642 _ 7F, 09
        add     dword [ebp+8H], 16                      ; 2644 _ 83. 45, 08, 10
        jmp     ?_134                                   ; 2648 _ E9, 000000DB

?_125:  mov     dword [ebp-10H], 28                     ; 264D _ C7. 45, F0, 0000001C
        jmp     ?_129                                   ; 2654 _ EB, 50

?_126:  mov     dword [ebp-0CH], 8                      ; 2656 _ C7. 45, F4, 00000008
        jmp     ?_128                                   ; 265D _ EB, 3A

?_127:  mov     eax, dword [ebp+0CH]                    ; 265F _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 2662 _ 8B. 10
        mov     eax, dword [ebp-10H]                    ; 2664 _ 8B. 45, F0
        lea     ecx, [eax+10H]                          ; 2667 _ 8D. 48, 10
        mov     eax, dword [ebp+0CH]                    ; 266A _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 266D _ 8B. 40, 04
        imul    eax, ecx                                ; 2670 _ 0F AF. C1
        mov     ecx, dword [ebp-0CH]                    ; 2673 _ 8B. 4D, F4
        add     eax, ecx                                ; 2676 _ 01. C8
        add     eax, edx                                ; 2678 _ 01. D0
        mov     edx, dword [ebp+0CH]                    ; 267A _ 8B. 55, 0C
        mov     ecx, dword [edx]                        ; 267D _ 8B. 0A
        mov     edx, dword [ebp+0CH]                    ; 267F _ 8B. 55, 0C
        mov     edx, dword [edx+4H]                     ; 2682 _ 8B. 52, 04
        imul    edx, dword [ebp-10H]                    ; 2685 _ 0F AF. 55, F0
        mov     ebx, dword [ebp-0CH]                    ; 2689 _ 8B. 5D, F4
        add     edx, ebx                                ; 268C _ 01. DA
        add     edx, ecx                                ; 268E _ 01. CA
        movzx   eax, byte [eax]                         ; 2690 _ 0F B6. 00
        mov     byte [edx], al                          ; 2693 _ 88. 02
        add     dword [ebp-0CH], 1                      ; 2695 _ 83. 45, F4, 01
?_128:  cmp     dword [ebp-0CH], 247                    ; 2699 _ 81. 7D, F4, 000000F7
        jle     ?_127                                   ; 26A0 _ 7E, BD
        add     dword [ebp-10H], 1                      ; 26A2 _ 83. 45, F0, 01
?_129:  cmp     dword [ebp-10H], 139                    ; 26A6 _ 81. 7D, F0, 0000008B
        jle     ?_126                                   ; 26AD _ 7E, A7
        mov     dword [ebp-10H], 140                    ; 26AF _ C7. 45, F0, 0000008C
        jmp     ?_133                                   ; 26B6 _ EB, 33

?_130:  mov     dword [ebp-0CH], 8                      ; 26B8 _ C7. 45, F4, 00000008
        jmp     ?_132                                   ; 26BF _ EB, 1D

?_131:  mov     eax, dword [ebp+0CH]                    ; 26C1 _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 26C4 _ 8B. 10
        mov     eax, dword [ebp+0CH]                    ; 26C6 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 26C9 _ 8B. 40, 04
        imul    eax, dword [ebp-10H]                    ; 26CC _ 0F AF. 45, F0
        mov     ecx, dword [ebp-0CH]                    ; 26D0 _ 8B. 4D, F4
        add     eax, ecx                                ; 26D3 _ 01. C8
        add     eax, edx                                ; 26D5 _ 01. D0
        mov     byte [eax], 0                           ; 26D7 _ C6. 00, 00
        add     dword [ebp-0CH], 1                      ; 26DA _ 83. 45, F4, 01
?_132:  cmp     dword [ebp-0CH], 247                    ; 26DE _ 81. 7D, F4, 000000F7
        jle     ?_131                                   ; 26E5 _ 7E, DA
        add     dword [ebp-10H], 1                      ; 26E7 _ 83. 45, F0, 01
?_133:  cmp     dword [ebp-10H], 155                    ; 26EB _ 81. 7D, F0, 0000009B
        jle     ?_130                                   ; 26F2 _ 7E, C4
        mov     eax, dword [_shtctl]                    ; 26F4 _ A1, 00000264(d)
        mov     dword [esp+14H], 156                    ; 26F9 _ C7. 44 24, 14, 0000009C
        mov     dword [esp+10H], 248                    ; 2701 _ C7. 44 24, 10, 000000F8
        mov     dword [esp+0CH], 28                     ; 2709 _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 8                       ; 2711 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp+0CH]                    ; 2719 _ 8B. 55, 0C
        mov     dword [esp+4H], edx                     ; 271C _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2720 _ 89. 04 24
        call    _sheet_refresh                          ; 2723 _ E8, 00000000(rel)
?_134:  mov     eax, dword [_shtctl]                    ; 2728 _ A1, 00000264(d)
        mov     dword [esp+14H], ?_367                  ; 272D _ C7. 44 24, 14, 00000023(d)
        mov     dword [esp+10H], 7                      ; 2735 _ C7. 44 24, 10, 00000007
        mov     edx, dword [ebp+8H]                     ; 273D _ 8B. 55, 08
        mov     dword [esp+0CH], edx                    ; 2740 _ 89. 54 24, 0C
        mov     dword [esp+8H], 8                       ; 2744 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp+0CH]                    ; 274C _ 8B. 55, 0C
        mov     dword [esp+4H], edx                     ; 274F _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2753 _ 89. 04 24
        call    _showString                             ; 2756 _ E8, 00000419
        mov     eax, dword [ebp+8H]                     ; 275B _ 8B. 45, 08
        add     esp, 52                                 ; 275E _ 83. C4, 34
        pop     ebx                                     ; 2761 _ 5B
        pop     ebp                                     ; 2762 _ 5D
        ret                                             ; 2763 _ C3
; _cons_newline End of function

_init_screen8:; Function begin
        push    ebp                                     ; 2764 _ 55
        mov     ebp, esp                                ; 2765 _ 89. E5
        push    ebx                                     ; 2767 _ 53
        sub     esp, 36                                 ; 2768 _ 83. EC, 24
        mov     eax, dword [ebp+10H]                    ; 276B _ 8B. 45, 10
        lea     edx, [eax-1DH]                          ; 276E _ 8D. 50, E3
        mov     eax, dword [ebp+0CH]                    ; 2771 _ 8B. 45, 0C
        sub     eax, 1                                  ; 2774 _ 83. E8, 01
        mov     dword [esp+18H], edx                    ; 2777 _ 89. 54 24, 18
        mov     dword [esp+14H], eax                    ; 277B _ 89. 44 24, 14
        mov     dword [esp+10H], 0                      ; 277F _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 2787 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 14                      ; 278F _ C7. 44 24, 08, 0000000E
        mov     eax, dword [ebp+0CH]                    ; 2797 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 279A _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 279E _ 8B. 45, 08
        mov     dword [esp], eax                        ; 27A1 _ 89. 04 24
        call    _boxfill8                               ; 27A4 _ E8, 000009FA
        mov     eax, dword [ebp+10H]                    ; 27A9 _ 8B. 45, 10
        lea     ecx, [eax-1CH]                          ; 27AC _ 8D. 48, E4
        mov     eax, dword [ebp+0CH]                    ; 27AF _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 27B2 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 27B5 _ 8B. 45, 10
        sub     eax, 28                                 ; 27B8 _ 83. E8, 1C
        mov     dword [esp+18H], ecx                    ; 27BB _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 27BF _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 27C3 _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 27C7 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 27CF _ C7. 44 24, 08, 00000008
        mov     eax, dword [ebp+0CH]                    ; 27D7 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 27DA _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 27DE _ 8B. 45, 08
        mov     dword [esp], eax                        ; 27E1 _ 89. 04 24
        call    _boxfill8                               ; 27E4 _ E8, 000009BA
        mov     eax, dword [ebp+10H]                    ; 27E9 _ 8B. 45, 10
        lea     ecx, [eax-1BH]                          ; 27EC _ 8D. 48, E5
        mov     eax, dword [ebp+0CH]                    ; 27EF _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 27F2 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 27F5 _ 8B. 45, 10
        sub     eax, 27                                 ; 27F8 _ 83. E8, 1B
        mov     dword [esp+18H], ecx                    ; 27FB _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 27FF _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 2803 _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 2807 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 7                       ; 280F _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 2817 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 281A _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 281E _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2821 _ 89. 04 24
        call    _boxfill8                               ; 2824 _ E8, 0000097A
        mov     eax, dword [ebp+10H]                    ; 2829 _ 8B. 45, 10
        lea     ecx, [eax-1H]                           ; 282C _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 282F _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 2832 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 2835 _ 8B. 45, 10
        sub     eax, 26                                 ; 2838 _ 83. E8, 1A
        mov     dword [esp+18H], ecx                    ; 283B _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 283F _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 2843 _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 2847 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 284F _ C7. 44 24, 08, 00000008
        mov     eax, dword [ebp+0CH]                    ; 2857 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 285A _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 285E _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2861 _ 89. 04 24
        call    _boxfill8                               ; 2864 _ E8, 0000093A
        mov     eax, dword [ebp+10H]                    ; 2869 _ 8B. 45, 10
        lea     edx, [eax-18H]                          ; 286C _ 8D. 50, E8
        mov     eax, dword [ebp+10H]                    ; 286F _ 8B. 45, 10
        sub     eax, 24                                 ; 2872 _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 2875 _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 2879 _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 2881 _ 89. 44 24, 10
        mov     dword [esp+0CH], 3                      ; 2885 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 7                       ; 288D _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 2895 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2898 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 289C _ 8B. 45, 08
        mov     dword [esp], eax                        ; 289F _ 89. 04 24
        call    _boxfill8                               ; 28A2 _ E8, 000008FC
        mov     eax, dword [ebp+10H]                    ; 28A7 _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 28AA _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 28AD _ 8B. 45, 10
        sub     eax, 24                                 ; 28B0 _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 28B3 _ 89. 54 24, 18
        mov     dword [esp+14H], 2                      ; 28B7 _ C7. 44 24, 14, 00000002
        mov     dword [esp+10H], eax                    ; 28BF _ 89. 44 24, 10
        mov     dword [esp+0CH], 2                      ; 28C3 _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 7                       ; 28CB _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 28D3 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 28D6 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 28DA _ 8B. 45, 08
        mov     dword [esp], eax                        ; 28DD _ 89. 04 24
        call    _boxfill8                               ; 28E0 _ E8, 000008BE
        mov     eax, dword [ebp+10H]                    ; 28E5 _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 28E8 _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 28EB _ 8B. 45, 10
        sub     eax, 4                                  ; 28EE _ 83. E8, 04
        mov     dword [esp+18H], edx                    ; 28F1 _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 28F5 _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 28FD _ 89. 44 24, 10
        mov     dword [esp+0CH], 3                      ; 2901 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 15                      ; 2909 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 2911 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2914 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2918 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 291B _ 89. 04 24
        call    _boxfill8                               ; 291E _ E8, 00000880
        mov     eax, dword [ebp+10H]                    ; 2923 _ 8B. 45, 10
        lea     edx, [eax-5H]                           ; 2926 _ 8D. 50, FB
        mov     eax, dword [ebp+10H]                    ; 2929 _ 8B. 45, 10
        sub     eax, 23                                 ; 292C _ 83. E8, 17
        mov     dword [esp+18H], edx                    ; 292F _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 2933 _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 293B _ 89. 44 24, 10
        mov     dword [esp+0CH], 59                     ; 293F _ C7. 44 24, 0C, 0000003B
        mov     dword [esp+8H], 15                      ; 2947 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 294F _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2952 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2956 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2959 _ 89. 04 24
        call    _boxfill8                               ; 295C _ E8, 00000842
        mov     eax, dword [ebp+10H]                    ; 2961 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 2964 _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 2967 _ 8B. 45, 10
        sub     eax, 3                                  ; 296A _ 83. E8, 03
        mov     dword [esp+18H], edx                    ; 296D _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 2971 _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 2979 _ 89. 44 24, 10
        mov     dword [esp+0CH], 2                      ; 297D _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 0                       ; 2985 _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp+0CH]                    ; 298D _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2990 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2994 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2997 _ 89. 04 24
        call    _boxfill8                               ; 299A _ E8, 00000804
        mov     eax, dword [ebp+10H]                    ; 299F _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 29A2 _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 29A5 _ 8B. 45, 10
        sub     eax, 24                                 ; 29A8 _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 29AB _ 89. 54 24, 18
        mov     dword [esp+14H], 60                     ; 29AF _ C7. 44 24, 14, 0000003C
        mov     dword [esp+10H], eax                    ; 29B7 _ 89. 44 24, 10
        mov     dword [esp+0CH], 60                     ; 29BB _ C7. 44 24, 0C, 0000003C
        mov     dword [esp+8H], 0                       ; 29C3 _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp+0CH]                    ; 29CB _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 29CE _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 29D2 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 29D5 _ 89. 04 24
        call    _boxfill8                               ; 29D8 _ E8, 000007C6
        mov     eax, dword [ebp+10H]                    ; 29DD _ 8B. 45, 10
        lea     ebx, [eax-18H]                          ; 29E0 _ 8D. 58, E8
        mov     eax, dword [ebp+0CH]                    ; 29E3 _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 29E6 _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 29E9 _ 8B. 45, 10
        lea     edx, [eax-18H]                          ; 29EC _ 8D. 50, E8
        mov     eax, dword [ebp+0CH]                    ; 29EF _ 8B. 45, 0C
        sub     eax, 47                                 ; 29F2 _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 29F5 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 29F9 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 29FD _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 2A01 _ 89. 44 24, 0C
        mov     dword [esp+8H], 15                      ; 2A05 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 2A0D _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2A10 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2A14 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2A17 _ 89. 04 24
        call    _boxfill8                               ; 2A1A _ E8, 00000784
        mov     eax, dword [ebp+10H]                    ; 2A1F _ 8B. 45, 10
        lea     ebx, [eax-4H]                           ; 2A22 _ 8D. 58, FC
        mov     eax, dword [ebp+0CH]                    ; 2A25 _ 8B. 45, 0C
        lea     ecx, [eax-2FH]                          ; 2A28 _ 8D. 48, D1
        mov     eax, dword [ebp+10H]                    ; 2A2B _ 8B. 45, 10
        lea     edx, [eax-17H]                          ; 2A2E _ 8D. 50, E9
        mov     eax, dword [ebp+0CH]                    ; 2A31 _ 8B. 45, 0C
        sub     eax, 47                                 ; 2A34 _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 2A37 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 2A3B _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 2A3F _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 2A43 _ 89. 44 24, 0C
        mov     dword [esp+8H], 15                      ; 2A47 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 2A4F _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2A52 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2A56 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2A59 _ 89. 04 24
        call    _boxfill8                               ; 2A5C _ E8, 00000742
        mov     eax, dword [ebp+10H]                    ; 2A61 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 2A64 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 2A67 _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 2A6A _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 2A6D _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 2A70 _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 2A73 _ 8B. 45, 0C
        sub     eax, 47                                 ; 2A76 _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 2A79 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 2A7D _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 2A81 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 2A85 _ 89. 44 24, 0C
        mov     dword [esp+8H], 7                       ; 2A89 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 2A91 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2A94 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2A98 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2A9B _ 89. 04 24
        call    _boxfill8                               ; 2A9E _ E8, 00000700
        mov     eax, dword [ebp+10H]                    ; 2AA3 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 2AA6 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 2AA9 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 2AAC _ 8D. 48, FD
        mov     eax, dword [ebp+10H]                    ; 2AAF _ 8B. 45, 10
        lea     edx, [eax-18H]                          ; 2AB2 _ 8D. 50, E8
        mov     eax, dword [ebp+0CH]                    ; 2AB5 _ 8B. 45, 0C
        sub     eax, 3                                  ; 2AB8 _ 83. E8, 03
        mov     dword [esp+18H], ebx                    ; 2ABB _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 2ABF _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 2AC3 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 2AC7 _ 89. 44 24, 0C
        mov     dword [esp+8H], 7                       ; 2ACB _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 2AD3 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2AD6 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2ADA _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2ADD _ 89. 04 24
        call    _boxfill8                               ; 2AE0 _ E8, 000006BE
        nop                                             ; 2AE5 _ 90
        add     esp, 36                                 ; 2AE6 _ 83. C4, 24
        pop     ebx                                     ; 2AE9 _ 5B
        pop     ebp                                     ; 2AEA _ 5D
        ret                                             ; 2AEB _ C3
; _init_screen8 End of function

_computeMousePosition:; Function begin
        push    ebp                                     ; 2AEC _ 55
        mov     ebp, esp                                ; 2AED _ 89. E5
        mov     eax, dword [ebp+10H]                    ; 2AEF _ 8B. 45, 10
        mov     edx, dword [eax+4H]                     ; 2AF2 _ 8B. 50, 04
        mov     eax, dword [_mx]                        ; 2AF5 _ A1, 00000134(d)
        add     eax, edx                                ; 2AFA _ 01. D0
        mov     dword [_mx], eax                        ; 2AFC _ A3, 00000134(d)
        mov     eax, dword [ebp+10H]                    ; 2B01 _ 8B. 45, 10
        mov     edx, dword [eax+8H]                     ; 2B04 _ 8B. 50, 08
        mov     eax, dword [_my]                        ; 2B07 _ A1, 00000138(d)
        add     eax, edx                                ; 2B0C _ 01. D0
        mov     dword [_my], eax                        ; 2B0E _ A3, 00000138(d)
        mov     eax, dword [_mx]                        ; 2B13 _ A1, 00000134(d)
        test    eax, eax                                ; 2B18 _ 85. C0
        jns     ?_135                                   ; 2B1A _ 79, 0A
        mov     dword [_mx], 0                          ; 2B1C _ C7. 05, 00000134(d), 00000000
?_135:  mov     eax, dword [_my]                        ; 2B26 _ A1, 00000138(d)
        test    eax, eax                                ; 2B2B _ 85. C0
        jns     ?_136                                   ; 2B2D _ 79, 0A
        mov     dword [_my], 0                          ; 2B2F _ C7. 05, 00000138(d), 00000000
?_136:  mov     edx, dword [_xsize]                     ; 2B39 _ 8B. 15, 0000013C(d)
        mov     eax, dword [_mx]                        ; 2B3F _ A1, 00000134(d)
        cmp     edx, eax                                ; 2B44 _ 39. C2
        jg      ?_137                                   ; 2B46 _ 7F, 0D
        mov     eax, dword [_xsize]                     ; 2B48 _ A1, 0000013C(d)
        sub     eax, 1                                  ; 2B4D _ 83. E8, 01
        mov     dword [_mx], eax                        ; 2B50 _ A3, 00000134(d)
?_137:  mov     edx, dword [_ysize]                     ; 2B55 _ 8B. 15, 00000140(d)
        mov     eax, dword [_my]                        ; 2B5B _ A1, 00000138(d)
        cmp     edx, eax                                ; 2B60 _ 39. C2
        jg      ?_138                                   ; 2B62 _ 7F, 0D
        mov     eax, dword [_ysize]                     ; 2B64 _ A1, 00000140(d)
        sub     eax, 1                                  ; 2B69 _ 83. E8, 01
        mov     dword [_my], eax                        ; 2B6C _ A3, 00000138(d)
?_138:  nop                                             ; 2B71 _ 90
        pop     ebp                                     ; 2B72 _ 5D
        ret                                             ; 2B73 _ C3
; _computeMousePosition End of function

_showString:; Function begin
        push    ebp                                     ; 2B74 _ 55
        mov     ebp, esp                                ; 2B75 _ 89. E5
        push    ebx                                     ; 2B77 _ 53
        sub     esp, 68                                 ; 2B78 _ 83. EC, 44
        mov     eax, dword [ebp+18H]                    ; 2B7B _ 8B. 45, 18
        mov     byte [ebp-1CH], al                      ; 2B7E _ 88. 45, E4
        mov     eax, dword [ebp+10H]                    ; 2B81 _ 8B. 45, 10
        mov     dword [ebp-0CH], eax                    ; 2B84 _ 89. 45, F4
        mov     dword [ebp-10H], 0                      ; 2B87 _ C7. 45, F0, 00000000
        jmp     ?_140                                   ; 2B8E _ EB, 4B

?_139:  mov     eax, dword [ebp+1CH]                    ; 2B90 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 2B93 _ 0F B6. 00
        movzx   eax, al                                 ; 2B96 _ 0F B6. C0
        shl     eax, 4                                  ; 2B99 _ C1. E0, 04
        lea     ebx, [_systemFont+eax]                  ; 2B9C _ 8D. 98, 00000000(d)
        movsx   eax, byte [ebp-1CH]                     ; 2BA2 _ 0F BE. 45, E4
        mov     edx, dword [ebp+0CH]                    ; 2BA6 _ 8B. 55, 0C
        mov     ecx, dword [edx+4H]                     ; 2BA9 _ 8B. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 2BAC _ 8B. 55, 0C
        mov     edx, dword [edx]                        ; 2BAF _ 8B. 12
        mov     dword [esp+14H], ebx                    ; 2BB1 _ 89. 5C 24, 14
        mov     dword [esp+10H], eax                    ; 2BB5 _ 89. 44 24, 10
        mov     eax, dword [ebp+14H]                    ; 2BB9 _ 8B. 45, 14
        mov     dword [esp+0CH], eax                    ; 2BBC _ 89. 44 24, 0C
        mov     eax, dword [ebp+10H]                    ; 2BC0 _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 2BC3 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 2BC7 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 2BCB _ 89. 14 24
        call    _showFont8                              ; 2BCE _ E8, 00000620
        add     dword [ebp+10H], 8                      ; 2BD3 _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 2BD7 _ 83. 45, 1C, 01
?_140:  mov     eax, dword [ebp+1CH]                    ; 2BDB _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 2BDE _ 0F B6. 00
        test    al, al                                  ; 2BE1 _ 84. C0
        jnz     ?_139                                   ; 2BE3 _ 75, AB
        mov     eax, dword [ebp+14H]                    ; 2BE5 _ 8B. 45, 14
        add     eax, 16                                 ; 2BE8 _ 83. C0, 10
        mov     dword [esp+14H], eax                    ; 2BEB _ 89. 44 24, 14
        mov     eax, dword [ebp+10H]                    ; 2BEF _ 8B. 45, 10
        mov     dword [esp+10H], eax                    ; 2BF2 _ 89. 44 24, 10
        mov     eax, dword [ebp+14H]                    ; 2BF6 _ 8B. 45, 14
        mov     dword [esp+0CH], eax                    ; 2BF9 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 2BFD _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 2C00 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 2C04 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2C07 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2C0B _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2C0E _ 89. 04 24
        call    _sheet_refresh                          ; 2C11 _ E8, 00000000(rel)
        nop                                             ; 2C16 _ 90
        add     esp, 68                                 ; 2C17 _ 83. C4, 44
        pop     ebx                                     ; 2C1A _ 5B
        pop     ebp                                     ; 2C1B _ 5D
        ret                                             ; 2C1C _ C3
; _showString End of function

_show_mouse_info:; Function begin
        push    ebp                                     ; 2C1D _ 55
        mov     ebp, esp                                ; 2C1E _ 89. E5
        sub     esp, 72                                 ; 2C20 _ 83. EC, 48
        mov     eax, dword [_buf_back]                  ; 2C23 _ A1, 00000144(d)
        mov     dword [ebp-10H], eax                    ; 2C28 _ 89. 45, F0
        mov     byte [ebp-11H], 0                       ; 2C2B _ C6. 45, EF, 00
        mov     dword [ebp-18H], 0                      ; 2C2F _ C7. 45, E8, 00000000
        call    _io_sti                                 ; 2C36 _ E8, 00000000(rel)
        mov     dword [esp], _mouseinfo                 ; 2C3B _ C7. 04 24, 00000038(d)
        call    _fifo8_get                              ; 2C42 _ E8, 00000000(rel)
        mov     byte [ebp-11H], al                      ; 2C47 _ 88. 45, EF
        movzx   eax, byte [ebp-11H]                     ; 2C4A _ 0F B6. 45, EF
        mov     dword [esp+4H], eax                     ; 2C4E _ 89. 44 24, 04
        mov     dword [esp], _mdec                      ; 2C52 _ C7. 04 24, 00000100(d)
        call    _mouse_decode                           ; 2C59 _ E8, 00000AB9
        test    eax, eax                                ; 2C5E _ 85. C0
        je      ?_148                                   ; 2C60 _ 0F 84, 00000314
        mov     dword [esp+8H], _mdec                   ; 2C66 _ C7. 44 24, 08, 00000100(d)
        mov     eax, dword [ebp+0CH]                    ; 2C6E _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2C71 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2C75 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2C78 _ 89. 04 24
        call    _computeMousePosition                   ; 2C7B _ E8, FFFFFE6C
        mov     edx, dword [_my]                        ; 2C80 _ 8B. 15, 00000138(d)
        mov     eax, dword [_mx]                        ; 2C86 _ A1, 00000134(d)
        mov     dword [esp+0CH], edx                    ; 2C8B _ 89. 54 24, 0C
        mov     dword [esp+8H], eax                     ; 2C8F _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 2C93 _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 2C96 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2C9A _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2C9D _ 89. 04 24
        call    _sheet_slide                            ; 2CA0 _ E8, 00000000(rel)
        mov     eax, dword [?_388]                      ; 2CA5 _ A1, 0000010C(d)
        and     eax, 01H                                ; 2CAA _ 83. E0, 01
        test    eax, eax                                ; 2CAD _ 85. C0
        je      ?_146                                   ; 2CAF _ 0F 84, 000002B8
        mov     eax, dword [_mmx]                       ; 2CB5 _ A1, 00000118(d)
        test    eax, eax                                ; 2CBA _ 85. C0
        jns     ?_145                                   ; 2CBC _ 0F 89, 0000023A
        mov     eax, dword [ebp+8H]                     ; 2CC2 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2CC5 _ 8B. 40, 10
        sub     eax, 1                                  ; 2CC8 _ 83. E8, 01
        mov     dword [ebp-0CH], eax                    ; 2CCB _ 89. 45, F4
        jmp     ?_144                                   ; 2CCE _ E9, 0000021D

?_141:  mov     eax, dword [ebp+8H]                     ; 2CD3 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2CD6 _ 8B. 55, F4
        add     edx, 4                                  ; 2CD9 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2CDC _ 8B. 44 90, 04
        mov     dword [ebp-18H], eax                    ; 2CE0 _ 89. 45, E8
        mov     edx, dword [_mx]                        ; 2CE3 _ 8B. 15, 00000134(d)
        mov     eax, dword [ebp-18H]                    ; 2CE9 _ 8B. 45, E8
        mov     eax, dword [eax+0CH]                    ; 2CEC _ 8B. 40, 0C
        sub     edx, eax                                ; 2CEF _ 29. C2
        mov     eax, edx                                ; 2CF1 _ 89. D0
        mov     dword [ebp-1CH], eax                    ; 2CF3 _ 89. 45, E4
        mov     edx, dword [_my]                        ; 2CF6 _ 8B. 15, 00000138(d)
        mov     eax, dword [ebp-18H]                    ; 2CFC _ 8B. 45, E8
        mov     eax, dword [eax+10H]                    ; 2CFF _ 8B. 40, 10
        sub     edx, eax                                ; 2D02 _ 29. C2
        mov     eax, edx                                ; 2D04 _ 89. D0
        mov     dword [ebp-20H], eax                    ; 2D06 _ 89. 45, E0
        cmp     dword [ebp-1CH], 0                      ; 2D09 _ 83. 7D, E4, 00
        js      ?_143                                   ; 2D0D _ 0F 88, 000001D9
        mov     eax, dword [ebp-18H]                    ; 2D13 _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 2D16 _ 8B. 40, 04
        cmp     dword [ebp-1CH], eax                    ; 2D19 _ 39. 45, E4
        jge     ?_143                                   ; 2D1C _ 0F 8D, 000001CA
        cmp     dword [ebp-20H], 0                      ; 2D22 _ 83. 7D, E0, 00
        js      ?_143                                   ; 2D26 _ 0F 88, 000001C0
        mov     eax, dword [ebp-18H]                    ; 2D2C _ 8B. 45, E8
        mov     eax, dword [eax+8H]                     ; 2D2F _ 8B. 40, 08
        cmp     dword [ebp-20H], eax                    ; 2D32 _ 39. 45, E0
        jge     ?_143                                   ; 2D35 _ 0F 8D, 000001B1
        mov     eax, dword [ebp-18H]                    ; 2D3B _ 8B. 45, E8
        mov     edx, dword [eax]                        ; 2D3E _ 8B. 10
        mov     eax, dword [ebp-18H]                    ; 2D40 _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 2D43 _ 8B. 40, 04
        imul    eax, dword [ebp-20H]                    ; 2D46 _ 0F AF. 45, E0
        mov     ecx, dword [ebp-1CH]                    ; 2D4A _ 8B. 4D, E4
        add     eax, ecx                                ; 2D4D _ 01. C8
        add     eax, edx                                ; 2D4F _ 01. D0
        movzx   eax, byte [eax]                         ; 2D51 _ 0F B6. 00
        movzx   eax, al                                 ; 2D54 _ 0F B6. C0
        mov     edx, dword [ebp-18H]                    ; 2D57 _ 8B. 55, E8
        mov     edx, dword [edx+14H]                    ; 2D5A _ 8B. 52, 14
        cmp     eax, edx                                ; 2D5D _ 39. D0
        je      ?_143                                   ; 2D5F _ 0F 84, 00000187
        mov     eax, dword [_current_console_task]      ; 2D65 _ A1, 00000278(d)
        mov     eax, dword [eax+0B4H]                   ; 2D6A _ 8B. 80, 000000B4
        mov     dword [esp+0CH], 0                      ; 2D70 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], ?_363                   ; 2D78 _ C7. 44 24, 08, 0000000F(d)
        mov     dword [esp+4H], eax                     ; 2D80 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2D84 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2D87 _ 89. 04 24
        call    _make_wtitle8                           ; 2D8A _ E8, 00001092
        mov     eax, dword [ebp-18H]                    ; 2D8F _ 8B. 45, E8
        mov     ecx, dword [eax+8H]                     ; 2D92 _ 8B. 48, 08
        mov     eax, dword [ebp-18H]                    ; 2D95 _ 8B. 45, E8
        mov     edx, dword [eax+4H]                     ; 2D98 _ 8B. 50, 04
        mov     eax, dword [_current_console_task]      ; 2D9B _ A1, 00000278(d)
        mov     eax, dword [eax+0B4H]                   ; 2DA0 _ 8B. 80, 000000B4
        mov     dword [esp+14H], ecx                    ; 2DA6 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 2DAA _ 89. 54 24, 10
        mov     dword [esp+0CH], 0                      ; 2DAE _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 2DB6 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], eax                     ; 2DBE _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2DC2 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2DC5 _ 89. 04 24
        call    _sheet_refresh                          ; 2DC8 _ E8, 00000000(rel)
        mov     eax, dword [ebp-18H]                    ; 2DCD _ 8B. 45, E8
        mov     eax, dword [eax+20H]                    ; 2DD0 _ 8B. 40, 20
        mov     dword [_current_console_task], eax      ; 2DD3 _ A3, 00000278(d)
        mov     eax, dword [_current_console_task]      ; 2DD8 _ A1, 00000278(d)
        mov     eax, dword [eax+0B4H]                   ; 2DDD _ 8B. 80, 000000B4
        mov     dword [esp+0CH], 1                      ; 2DE3 _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], ?_363                   ; 2DEB _ C7. 44 24, 08, 0000000F(d)
        mov     dword [esp+4H], eax                     ; 2DF3 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2DF7 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2DFA _ 89. 04 24
        call    _make_wtitle8                           ; 2DFD _ E8, 0000101F
        mov     eax, dword [ebp-18H]                    ; 2E02 _ 8B. 45, E8
        mov     edx, dword [eax+8H]                     ; 2E05 _ 8B. 50, 08
        mov     eax, dword [ebp-18H]                    ; 2E08 _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 2E0B _ 8B. 40, 04
        mov     dword [esp+14H], edx                    ; 2E0E _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 2E12 _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 2E16 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 2E1E _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp-18H]                    ; 2E26 _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 2E29 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2E2D _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2E30 _ 89. 04 24
        call    _sheet_refresh                          ; 2E33 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 2E38 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2E3B _ 8B. 40, 10
        sub     eax, 1                                  ; 2E3E _ 83. E8, 01
        mov     dword [esp+8H], eax                     ; 2E41 _ 89. 44 24, 08
        mov     eax, dword [ebp-18H]                    ; 2E45 _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 2E48 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2E4C _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2E4F _ 89. 04 24
        call    _sheet_updown                           ; 2E52 _ E8, 00000000(rel)
        cmp     dword [ebp-1CH], 2                      ; 2E57 _ 83. 7D, E4, 02
        jle     ?_142                                   ; 2E5B _ 7E, 36
        mov     eax, dword [ebp-18H]                    ; 2E5D _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 2E60 _ 8B. 40, 04
        sub     eax, 3                                  ; 2E63 _ 83. E8, 03
        cmp     dword [ebp-1CH], eax                    ; 2E66 _ 39. 45, E4
        jge     ?_142                                   ; 2E69 _ 7D, 28
        cmp     dword [ebp-20H], 2                      ; 2E6B _ 83. 7D, E0, 02
        jle     ?_142                                   ; 2E6F _ 7E, 22
        cmp     dword [ebp-20H], 20                     ; 2E71 _ 83. 7D, E0, 14
        jg      ?_142                                   ; 2E75 _ 7F, 1C
        mov     eax, dword [_mx]                        ; 2E77 _ A1, 00000134(d)
        mov     dword [_mmx], eax                       ; 2E7C _ A3, 00000118(d)
        mov     eax, dword [_my]                        ; 2E81 _ A1, 00000138(d)
        mov     dword [_mmy], eax                       ; 2E86 _ A3, 0000011C(d)
        mov     eax, dword [ebp-18H]                    ; 2E8B _ 8B. 45, E8
        mov     dword [_mouse_clicked_sht], eax         ; 2E8E _ A3, 00000270(d)
?_142:  mov     eax, dword [ebp-18H]                    ; 2E93 _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 2E96 _ 8B. 40, 04
        sub     eax, 21                                 ; 2E99 _ 83. E8, 15
        cmp     dword [ebp-1CH], eax                    ; 2E9C _ 39. 45, E4
        jl      ?_147                                   ; 2E9F _ 0F 8C, 000000D4
        mov     eax, dword [ebp-18H]                    ; 2EA5 _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 2EA8 _ 8B. 40, 04
        sub     eax, 5                                  ; 2EAB _ 83. E8, 05
        cmp     dword [ebp-1CH], eax                    ; 2EAE _ 39. 45, E4
        jge     ?_147                                   ; 2EB1 _ 0F 8D, 000000C2
        cmp     dword [ebp-20H], 4                      ; 2EB7 _ 83. 7D, E0, 04
        jle     ?_147                                   ; 2EBB _ 0F 8E, 000000B8
        cmp     dword [ebp-20H], 18                     ; 2EC1 _ 83. 7D, E0, 12
        jg      ?_147                                   ; 2EC5 _ 0F 8F, 000000AE
        mov     eax, dword [ebp-18H]                    ; 2ECB _ 8B. 45, E8
        mov     eax, dword [eax+20H]                    ; 2ECE _ 8B. 40, 20
        test    eax, eax                                ; 2ED1 _ 85. C0
        je      ?_147                                   ; 2ED3 _ 0F 84, 000000A0
        mov     eax, dword [ebp-18H]                    ; 2ED9 _ 8B. 45, E8
        mov     eax, dword [eax+20H]                    ; 2EDC _ 8B. 40, 20
        mov     dword [esp], eax                        ; 2EDF _ 89. 04 24
        call    _cmd_exit                               ; 2EE2 _ E8, FFFFF23F
        jmp     ?_147                                   ; 2EE7 _ E9, 0000008D

?_143:  sub     dword [ebp-0CH], 1                      ; 2EEC _ 83. 6D, F4, 01
?_144:  cmp     dword [ebp-0CH], 0                      ; 2EF0 _ 83. 7D, F4, 00
        jg      ?_141                                   ; 2EF4 _ 0F 8F, FFFFFDD9
        jmp     ?_148                                   ; 2EFA _ EB, 7E

?_145:  mov     edx, dword [_mx]                        ; 2EFC _ 8B. 15, 00000134(d)
        mov     eax, dword [_mmx]                       ; 2F02 _ A1, 00000118(d)
        sub     edx, eax                                ; 2F07 _ 29. C2
        mov     eax, edx                                ; 2F09 _ 89. D0
        mov     dword [ebp-1CH], eax                    ; 2F0B _ 89. 45, E4
        mov     edx, dword [_my]                        ; 2F0E _ 8B. 15, 00000138(d)
        mov     eax, dword [_mmy]                       ; 2F14 _ A1, 0000011C(d)
        sub     edx, eax                                ; 2F19 _ 29. C2
        mov     eax, edx                                ; 2F1B _ 89. D0
        mov     dword [ebp-20H], eax                    ; 2F1D _ 89. 45, E0
        mov     eax, dword [_mouse_clicked_sht]         ; 2F20 _ A1, 00000270(d)
        mov     edx, dword [eax+10H]                    ; 2F25 _ 8B. 50, 10
        mov     eax, dword [ebp-20H]                    ; 2F28 _ 8B. 45, E0
        lea     ecx, [edx+eax]                          ; 2F2B _ 8D. 0C 02
        mov     eax, dword [_mouse_clicked_sht]         ; 2F2E _ A1, 00000270(d)
        mov     edx, dword [eax+0CH]                    ; 2F33 _ 8B. 50, 0C
        mov     eax, dword [ebp-1CH]                    ; 2F36 _ 8B. 45, E4
        add     edx, eax                                ; 2F39 _ 01. C2
        mov     eax, dword [_mouse_clicked_sht]         ; 2F3B _ A1, 00000270(d)
        mov     dword [esp+0CH], ecx                    ; 2F40 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 2F44 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 2F48 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2F4C _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2F4F _ 89. 04 24
        call    _sheet_slide                            ; 2F52 _ E8, 00000000(rel)
        mov     eax, dword [_mx]                        ; 2F57 _ A1, 00000134(d)
        mov     dword [_mmx], eax                       ; 2F5C _ A3, 00000118(d)
        mov     eax, dword [_my]                        ; 2F61 _ A1, 00000138(d)
        mov     dword [_mmy], eax                       ; 2F66 _ A3, 0000011C(d)
        jmp     ?_148                                   ; 2F6B _ EB, 0D

?_146:  mov     dword [_mmx], -1                        ; 2F6D _ C7. 05, 00000118(d), FFFFFFFF
        jmp     ?_148                                   ; 2F77 _ EB, 01

?_147:  nop                                             ; 2F79 _ 90
?_148:  nop                                             ; 2F7A _ 90
        leave                                           ; 2F7B _ C9
        ret                                             ; 2F7C _ C3
; _show_mouse_info End of function

_initBootInfo:; Function begin
        push    ebp                                     ; 2F7D _ 55
        mov     ebp, esp                                ; 2F7E _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 2F80 _ 8B. 45, 08
        mov     dword [eax], -536870912                 ; 2F83 _ C7. 00, E0000000
        mov     eax, dword [ebp+8H]                     ; 2F89 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 640                      ; 2F8C _ 66: C7. 40, 04, 0280
        mov     eax, dword [ebp+8H]                     ; 2F92 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 480                      ; 2F95 _ 66: C7. 40, 06, 01E0
        nop                                             ; 2F9B _ 90
        pop     ebp                                     ; 2F9C _ 5D
        ret                                             ; 2F9D _ C3
; _initBootInfo End of function

_init_palette:; Function begin
        push    ebp                                     ; 2F9E _ 55
        mov     ebp, esp                                ; 2F9F _ 89. E5
        push    ebx                                     ; 2FA1 _ 53
        sub     esp, 692                                ; 2FA2 _ 81. EC, 000002B4
        mov     dword [esp+8H], _table_rgb.2627         ; 2FA8 _ C7. 44 24, 08, 00000140(d)
        mov     dword [esp+4H], 15                      ; 2FB0 _ C7. 44 24, 04, 0000000F
        mov     dword [esp], 0                          ; 2FB8 _ C7. 04 24, 00000000
        call    _set_palette                            ; 2FBF _ E8, 00000139
        mov     dword [ebp-14H], 0                      ; 2FC4 _ C7. 45, EC, 00000000
        jmp     ?_154                                   ; 2FCB _ E9, 000000FB

?_149:  mov     dword [ebp-10H], 0                      ; 2FD0 _ C7. 45, F0, 00000000
        jmp     ?_153                                   ; 2FD7 _ E9, 000000E1

?_150:  mov     dword [ebp-0CH], 0                      ; 2FDC _ C7. 45, F4, 00000000
        jmp     ?_152                                   ; 2FE3 _ E9, 000000C7

?_151:  mov     eax, dword [ebp-0CH]                    ; 2FE8 _ 8B. 45, F4
        mov     ebx, eax                                ; 2FEB _ 89. C3
        mov     edx, dword [ebp-10H]                    ; 2FED _ 8B. 55, F0
        mov     eax, edx                                ; 2FF0 _ 89. D0
        add     eax, eax                                ; 2FF2 _ 01. C0
        add     eax, edx                                ; 2FF4 _ 01. D0
        add     eax, eax                                ; 2FF6 _ 01. C0
        mov     edx, eax                                ; 2FF8 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 2FFA _ 8B. 45, F4
        lea     ecx, [edx+eax]                          ; 2FFD _ 8D. 0C 02
        mov     edx, dword [ebp-14H]                    ; 3000 _ 8B. 55, EC
        mov     eax, edx                                ; 3003 _ 89. D0
        shl     eax, 3                                  ; 3005 _ C1. E0, 03
        add     eax, edx                                ; 3008 _ 01. D0
        shl     eax, 2                                  ; 300A _ C1. E0, 02
        lea     edx, [ecx+eax]                          ; 300D _ 8D. 14 01
        mov     eax, edx                                ; 3010 _ 89. D0
        add     eax, eax                                ; 3012 _ 01. C0
        add     edx, eax                                ; 3014 _ 01. C2
        mov     ecx, 51                                 ; 3016 _ B9, 00000033
        mov     eax, ebx                                ; 301B _ 89. D8
        imul    eax, ecx                                ; 301D _ 0F AF. C1
        mov     byte [ebp+edx-29CH], al                 ; 3020 _ 88. 84 15, FFFFFD64
        mov     eax, dword [ebp-10H]                    ; 3027 _ 8B. 45, F0
        mov     ebx, eax                                ; 302A _ 89. C3
        mov     edx, dword [ebp-10H]                    ; 302C _ 8B. 55, F0
        mov     eax, edx                                ; 302F _ 89. D0
        add     eax, eax                                ; 3031 _ 01. C0
        add     eax, edx                                ; 3033 _ 01. D0
        add     eax, eax                                ; 3035 _ 01. C0
        mov     edx, eax                                ; 3037 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 3039 _ 8B. 45, F4
        lea     ecx, [edx+eax]                          ; 303C _ 8D. 0C 02
        mov     edx, dword [ebp-14H]                    ; 303F _ 8B. 55, EC
        mov     eax, edx                                ; 3042 _ 89. D0
        shl     eax, 3                                  ; 3044 _ C1. E0, 03
        add     eax, edx                                ; 3047 _ 01. D0
        shl     eax, 2                                  ; 3049 _ C1. E0, 02
        lea     edx, [ecx+eax]                          ; 304C _ 8D. 14 01
        mov     eax, edx                                ; 304F _ 89. D0
        add     eax, eax                                ; 3051 _ 01. C0
        add     eax, edx                                ; 3053 _ 01. D0
        lea     edx, [eax+1H]                           ; 3055 _ 8D. 50, 01
        mov     ecx, 51                                 ; 3058 _ B9, 00000033
        mov     eax, ebx                                ; 305D _ 89. D8
        imul    eax, ecx                                ; 305F _ 0F AF. C1
        mov     byte [ebp+edx-29CH], al                 ; 3062 _ 88. 84 15, FFFFFD64
        mov     eax, dword [ebp-14H]                    ; 3069 _ 8B. 45, EC
        mov     ebx, eax                                ; 306C _ 89. C3
        mov     edx, dword [ebp-10H]                    ; 306E _ 8B. 55, F0
        mov     eax, edx                                ; 3071 _ 89. D0
        add     eax, eax                                ; 3073 _ 01. C0
        add     eax, edx                                ; 3075 _ 01. D0
        add     eax, eax                                ; 3077 _ 01. C0
        mov     edx, eax                                ; 3079 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 307B _ 8B. 45, F4
        lea     ecx, [edx+eax]                          ; 307E _ 8D. 0C 02
        mov     edx, dword [ebp-14H]                    ; 3081 _ 8B. 55, EC
        mov     eax, edx                                ; 3084 _ 89. D0
        shl     eax, 3                                  ; 3086 _ C1. E0, 03
        add     eax, edx                                ; 3089 _ 01. D0
        shl     eax, 2                                  ; 308B _ C1. E0, 02
        lea     edx, [ecx+eax]                          ; 308E _ 8D. 14 01
        mov     eax, edx                                ; 3091 _ 89. D0
        add     eax, eax                                ; 3093 _ 01. C0
        add     eax, edx                                ; 3095 _ 01. D0
        lea     edx, [eax+2H]                           ; 3097 _ 8D. 50, 02
        mov     ecx, 51                                 ; 309A _ B9, 00000033
        mov     eax, ebx                                ; 309F _ 89. D8
        imul    eax, ecx                                ; 30A1 _ 0F AF. C1
        mov     byte [ebp+edx-29CH], al                 ; 30A4 _ 88. 84 15, FFFFFD64
        add     dword [ebp-0CH], 1                      ; 30AB _ 83. 45, F4, 01
?_152:  cmp     dword [ebp-0CH], 5                      ; 30AF _ 83. 7D, F4, 05
        jle     ?_151                                   ; 30B3 _ 0F 8E, FFFFFF2F
        add     dword [ebp-10H], 1                      ; 30B9 _ 83. 45, F0, 01
?_153:  cmp     dword [ebp-10H], 5                      ; 30BD _ 83. 7D, F0, 05
        jle     ?_150                                   ; 30C1 _ 0F 8E, FFFFFF15
        add     dword [ebp-14H], 1                      ; 30C7 _ 83. 45, EC, 01
?_154:  cmp     dword [ebp-14H], 5                      ; 30CB _ 83. 7D, EC, 05
        jle     ?_149                                   ; 30CF _ 0F 8E, FFFFFEFB
        lea     eax, [ebp-29CH]                         ; 30D5 _ 8D. 85, FFFFFD64
        mov     dword [esp+8H], eax                     ; 30DB _ 89. 44 24, 08
        mov     dword [esp+4H], 231                     ; 30DF _ C7. 44 24, 04, 000000E7
        mov     dword [esp], 16                         ; 30E7 _ C7. 04 24, 00000010
        call    _set_palette                            ; 30EE _ E8, 0000000A
        nop                                             ; 30F3 _ 90
        add     esp, 692                                ; 30F4 _ 81. C4, 000002B4
        pop     ebx                                     ; 30FA _ 5B
        pop     ebp                                     ; 30FB _ 5D
        ret                                             ; 30FC _ C3
; _init_palette End of function

_set_palette:; Function begin
        push    ebp                                     ; 30FD _ 55
        mov     ebp, esp                                ; 30FE _ 89. E5
        sub     esp, 40                                 ; 3100 _ 83. EC, 28
        call    _io_load_eflags                         ; 3103 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 3108 _ 89. 45, F0
        call    _io_cli                                 ; 310B _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 3110 _ 8B. 45, 08
        mov     dword [esp+4H], eax                     ; 3113 _ 89. 44 24, 04
        mov     dword [esp], 968                        ; 3117 _ C7. 04 24, 000003C8
        call    _io_out8                                ; 311E _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 3123 _ 8B. 45, 08
        mov     dword [ebp-0CH], eax                    ; 3126 _ 89. 45, F4
        jmp     ?_156                                   ; 3129 _ EB, 62

?_155:  mov     eax, dword [ebp+10H]                    ; 312B _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 312E _ 0F B6. 00
        shr     al, 2                                   ; 3131 _ C0. E8, 02
        movzx   eax, al                                 ; 3134 _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 3137 _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 313B _ C7. 04 24, 000003C9
        call    _io_out8                                ; 3142 _ E8, 00000000(rel)
        mov     eax, dword [ebp+10H]                    ; 3147 _ 8B. 45, 10
        add     eax, 1                                  ; 314A _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 314D _ 0F B6. 00
        shr     al, 2                                   ; 3150 _ C0. E8, 02
        movzx   eax, al                                 ; 3153 _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 3156 _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 315A _ C7. 04 24, 000003C9
        call    _io_out8                                ; 3161 _ E8, 00000000(rel)
        mov     eax, dword [ebp+10H]                    ; 3166 _ 8B. 45, 10
        add     eax, 2                                  ; 3169 _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 316C _ 0F B6. 00
        shr     al, 2                                   ; 316F _ C0. E8, 02
        movzx   eax, al                                 ; 3172 _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 3175 _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 3179 _ C7. 04 24, 000003C9
        call    _io_out8                                ; 3180 _ E8, 00000000(rel)
        add     dword [ebp+10H], 3                      ; 3185 _ 83. 45, 10, 03
        add     dword [ebp-0CH], 1                      ; 3189 _ 83. 45, F4, 01
?_156:  mov     eax, dword [ebp-0CH]                    ; 318D _ 8B. 45, F4
        cmp     eax, dword [ebp+0CH]                    ; 3190 _ 3B. 45, 0C
        jle     ?_155                                   ; 3193 _ 7E, 96
        mov     eax, dword [ebp-10H]                    ; 3195 _ 8B. 45, F0
        mov     dword [esp], eax                        ; 3198 _ 89. 04 24
        call    _io_store_eflags                        ; 319B _ E8, 00000000(rel)
        nop                                             ; 31A0 _ 90
        leave                                           ; 31A1 _ C9
        ret                                             ; 31A2 _ C3
; _set_palette End of function

_boxfill8:; Function begin
        push    ebp                                     ; 31A3 _ 55
        mov     ebp, esp                                ; 31A4 _ 89. E5
        sub     esp, 20                                 ; 31A6 _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 31A9 _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 31AC _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 31AF _ 8B. 45, 18
        mov     dword [ebp-8H], eax                     ; 31B2 _ 89. 45, F8
        jmp     ?_160                                   ; 31B5 _ EB, 31

?_157:  mov     eax, dword [ebp+14H]                    ; 31B7 _ 8B. 45, 14
        mov     dword [ebp-4H], eax                     ; 31BA _ 89. 45, FC
        jmp     ?_159                                   ; 31BD _ EB, 1D

?_158:  mov     eax, dword [ebp-8H]                     ; 31BF _ 8B. 45, F8
        imul    eax, dword [ebp+0CH]                    ; 31C2 _ 0F AF. 45, 0C
        mov     edx, dword [ebp-4H]                     ; 31C6 _ 8B. 55, FC
        add     eax, edx                                ; 31C9 _ 01. D0
        mov     edx, eax                                ; 31CB _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 31CD _ 8B. 45, 08
        add     edx, eax                                ; 31D0 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 31D2 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 31D6 _ 88. 02
        add     dword [ebp-4H], 1                       ; 31D8 _ 83. 45, FC, 01
?_159:  mov     eax, dword [ebp-4H]                     ; 31DC _ 8B. 45, FC
        cmp     eax, dword [ebp+1CH]                    ; 31DF _ 3B. 45, 1C
        jle     ?_158                                   ; 31E2 _ 7E, DB
        add     dword [ebp-8H], 1                       ; 31E4 _ 83. 45, F8, 01
?_160:  mov     eax, dword [ebp-8H]                     ; 31E8 _ 8B. 45, F8
        cmp     eax, dword [ebp+20H]                    ; 31EB _ 3B. 45, 20
        jle     ?_157                                   ; 31EE _ 7E, C7
        nop                                             ; 31F0 _ 90
        leave                                           ; 31F1 _ C9
        ret                                             ; 31F2 _ C3
; _boxfill8 End of function

_showFont8:; Function begin
        push    ebp                                     ; 31F3 _ 55
        mov     ebp, esp                                ; 31F4 _ 89. E5
        sub     esp, 20                                 ; 31F6 _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 31F9 _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 31FC _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 31FF _ C7. 45, FC, 00000000
        jmp     ?_170                                   ; 3206 _ E9, 0000015C

?_161:  mov     edx, dword [ebp-4H]                     ; 320B _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 320E _ 8B. 45, 1C
        add     eax, edx                                ; 3211 _ 01. D0
        movzx   eax, byte [eax]                         ; 3213 _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 3216 _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 3219 _ 80. 7D, FB, 00
        jns     ?_162                                   ; 321D _ 79, 1E
        mov     edx, dword [ebp+14H]                    ; 321F _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 3222 _ 8B. 45, FC
        add     eax, edx                                ; 3225 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 3227 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 322B _ 8B. 55, 10
        add     eax, edx                                ; 322E _ 01. D0
        mov     edx, eax                                ; 3230 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3232 _ 8B. 45, 08
        add     edx, eax                                ; 3235 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 3237 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 323B _ 88. 02
?_162:  movsx   eax, byte [ebp-5H]                      ; 323D _ 0F BE. 45, FB
        and     eax, 40H                                ; 3241 _ 83. E0, 40
        test    eax, eax                                ; 3244 _ 85. C0
        jz      ?_163                                   ; 3246 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 3248 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 324B _ 8B. 45, FC
        add     eax, edx                                ; 324E _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 3250 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 3254 _ 8B. 55, 10
        add     eax, edx                                ; 3257 _ 01. D0
        lea     edx, [eax+1H]                           ; 3259 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 325C _ 8B. 45, 08
        add     edx, eax                                ; 325F _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 3261 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 3265 _ 88. 02
?_163:  movsx   eax, byte [ebp-5H]                      ; 3267 _ 0F BE. 45, FB
        and     eax, 20H                                ; 326B _ 83. E0, 20
        test    eax, eax                                ; 326E _ 85. C0
        jz      ?_164                                   ; 3270 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 3272 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 3275 _ 8B. 45, FC
        add     eax, edx                                ; 3278 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 327A _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 327E _ 8B. 55, 10
        add     eax, edx                                ; 3281 _ 01. D0
        lea     edx, [eax+2H]                           ; 3283 _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 3286 _ 8B. 45, 08
        add     edx, eax                                ; 3289 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 328B _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 328F _ 88. 02
?_164:  movsx   eax, byte [ebp-5H]                      ; 3291 _ 0F BE. 45, FB
        and     eax, 10H                                ; 3295 _ 83. E0, 10
        test    eax, eax                                ; 3298 _ 85. C0
        jz      ?_165                                   ; 329A _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 329C _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 329F _ 8B. 45, FC
        add     eax, edx                                ; 32A2 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 32A4 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 32A8 _ 8B. 55, 10
        add     eax, edx                                ; 32AB _ 01. D0
        lea     edx, [eax+3H]                           ; 32AD _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 32B0 _ 8B. 45, 08
        add     edx, eax                                ; 32B3 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 32B5 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 32B9 _ 88. 02
?_165:  movsx   eax, byte [ebp-5H]                      ; 32BB _ 0F BE. 45, FB
        and     eax, 08H                                ; 32BF _ 83. E0, 08
        test    eax, eax                                ; 32C2 _ 85. C0
        jz      ?_166                                   ; 32C4 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 32C6 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 32C9 _ 8B. 45, FC
        add     eax, edx                                ; 32CC _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 32CE _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 32D2 _ 8B. 55, 10
        add     eax, edx                                ; 32D5 _ 01. D0
        lea     edx, [eax+4H]                           ; 32D7 _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 32DA _ 8B. 45, 08
        add     edx, eax                                ; 32DD _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 32DF _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 32E3 _ 88. 02
?_166:  movsx   eax, byte [ebp-5H]                      ; 32E5 _ 0F BE. 45, FB
        and     eax, 04H                                ; 32E9 _ 83. E0, 04
        test    eax, eax                                ; 32EC _ 85. C0
        jz      ?_167                                   ; 32EE _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 32F0 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 32F3 _ 8B. 45, FC
        add     eax, edx                                ; 32F6 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 32F8 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 32FC _ 8B. 55, 10
        add     eax, edx                                ; 32FF _ 01. D0
        lea     edx, [eax+5H]                           ; 3301 _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 3304 _ 8B. 45, 08
        add     edx, eax                                ; 3307 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 3309 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 330D _ 88. 02
?_167:  movsx   eax, byte [ebp-5H]                      ; 330F _ 0F BE. 45, FB
        and     eax, 02H                                ; 3313 _ 83. E0, 02
        test    eax, eax                                ; 3316 _ 85. C0
        jz      ?_168                                   ; 3318 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 331A _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 331D _ 8B. 45, FC
        add     eax, edx                                ; 3320 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 3322 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 3326 _ 8B. 55, 10
        add     eax, edx                                ; 3329 _ 01. D0
        lea     edx, [eax+6H]                           ; 332B _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 332E _ 8B. 45, 08
        add     edx, eax                                ; 3331 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 3333 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 3337 _ 88. 02
?_168:  movsx   eax, byte [ebp-5H]                      ; 3339 _ 0F BE. 45, FB
        and     eax, 01H                                ; 333D _ 83. E0, 01
        test    eax, eax                                ; 3340 _ 85. C0
        jz      ?_169                                   ; 3342 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 3344 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 3347 _ 8B. 45, FC
        add     eax, edx                                ; 334A _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 334C _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 3350 _ 8B. 55, 10
        add     eax, edx                                ; 3353 _ 01. D0
        lea     edx, [eax+7H]                           ; 3355 _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 3358 _ 8B. 45, 08
        add     edx, eax                                ; 335B _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 335D _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 3361 _ 88. 02
?_169:  add     dword [ebp-4H], 1                       ; 3363 _ 83. 45, FC, 01
?_170:  cmp     dword [ebp-4H], 15                      ; 3367 _ 83. 7D, FC, 0F
        jle     ?_161                                   ; 336B _ 0F 8E, FFFFFE9A
        nop                                             ; 3371 _ 90
        leave                                           ; 3372 _ C9
        ret                                             ; 3373 _ C3
; _showFont8 End of function

_init_mouse_cursor:; Function begin
        push    ebp                                     ; 3374 _ 55
        mov     ebp, esp                                ; 3375 _ 89. E5
        sub     esp, 20                                 ; 3377 _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 337A _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 337D _ 88. 45, EC
        mov     dword [ebp-8H], 0                       ; 3380 _ C7. 45, F8, 00000000
        jmp     ?_177                                   ; 3387 _ E9, 000000B1

?_171:  mov     dword [ebp-4H], 0                       ; 338C _ C7. 45, FC, 00000000
        jmp     ?_176                                   ; 3393 _ E9, 00000097

?_172:  mov     eax, dword [ebp-8H]                     ; 3398 _ 8B. 45, F8
        shl     eax, 4                                  ; 339B _ C1. E0, 04
        mov     edx, eax                                ; 339E _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 33A0 _ 8B. 45, FC
        add     eax, edx                                ; 33A3 _ 01. D0
        add     eax, _cursor.2687                       ; 33A5 _ 05, 00000180(d)
        movzx   eax, byte [eax]                         ; 33AA _ 0F B6. 00
        cmp     al, 42                                  ; 33AD _ 3C, 2A
        jnz     ?_173                                   ; 33AF _ 75, 17
        mov     eax, dword [ebp-8H]                     ; 33B1 _ 8B. 45, F8
        shl     eax, 4                                  ; 33B4 _ C1. E0, 04
        mov     edx, eax                                ; 33B7 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 33B9 _ 8B. 45, FC
        add     eax, edx                                ; 33BC _ 01. D0
        mov     edx, eax                                ; 33BE _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 33C0 _ 8B. 45, 08
        add     eax, edx                                ; 33C3 _ 01. D0
        mov     byte [eax], 0                           ; 33C5 _ C6. 00, 00
?_173:  mov     eax, dword [ebp-8H]                     ; 33C8 _ 8B. 45, F8
        shl     eax, 4                                  ; 33CB _ C1. E0, 04
        mov     edx, eax                                ; 33CE _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 33D0 _ 8B. 45, FC
        add     eax, edx                                ; 33D3 _ 01. D0
        add     eax, _cursor.2687                       ; 33D5 _ 05, 00000180(d)
        movzx   eax, byte [eax]                         ; 33DA _ 0F B6. 00
        cmp     al, 79                                  ; 33DD _ 3C, 4F
        jnz     ?_174                                   ; 33DF _ 75, 17
        mov     eax, dword [ebp-8H]                     ; 33E1 _ 8B. 45, F8
        shl     eax, 4                                  ; 33E4 _ C1. E0, 04
        mov     edx, eax                                ; 33E7 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 33E9 _ 8B. 45, FC
        add     eax, edx                                ; 33EC _ 01. D0
        mov     edx, eax                                ; 33EE _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 33F0 _ 8B. 45, 08
        add     eax, edx                                ; 33F3 _ 01. D0
        mov     byte [eax], 7                           ; 33F5 _ C6. 00, 07
?_174:  mov     eax, dword [ebp-8H]                     ; 33F8 _ 8B. 45, F8
        shl     eax, 4                                  ; 33FB _ C1. E0, 04
        mov     edx, eax                                ; 33FE _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 3400 _ 8B. 45, FC
        add     eax, edx                                ; 3403 _ 01. D0
        add     eax, _cursor.2687                       ; 3405 _ 05, 00000180(d)
        movzx   eax, byte [eax]                         ; 340A _ 0F B6. 00
        cmp     al, 46                                  ; 340D _ 3C, 2E
        jnz     ?_175                                   ; 340F _ 75, 1A
        mov     eax, dword [ebp-8H]                     ; 3411 _ 8B. 45, F8
        shl     eax, 4                                  ; 3414 _ C1. E0, 04
        mov     edx, eax                                ; 3417 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 3419 _ 8B. 45, FC
        add     eax, edx                                ; 341C _ 01. D0
        mov     edx, eax                                ; 341E _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3420 _ 8B. 45, 08
        add     edx, eax                                ; 3423 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 3425 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 3429 _ 88. 02
?_175:  add     dword [ebp-4H], 1                       ; 342B _ 83. 45, FC, 01
?_176:  cmp     dword [ebp-4H], 15                      ; 342F _ 83. 7D, FC, 0F
        jle     ?_172                                   ; 3433 _ 0F 8E, FFFFFF5F
        add     dword [ebp-8H], 1                       ; 3439 _ 83. 45, F8, 01
?_177:  cmp     dword [ebp-8H], 15                      ; 343D _ 83. 7D, F8, 0F
        jle     ?_171                                   ; 3441 _ 0F 8E, FFFFFF45
        nop                                             ; 3447 _ 90
        leave                                           ; 3448 _ C9
        ret                                             ; 3449 _ C3
; _init_mouse_cursor End of function

_putblock:; Function begin
        push    ebp                                     ; 344A _ 55
        mov     ebp, esp                                ; 344B _ 89. E5
        push    ebx                                     ; 344D _ 53
        sub     esp, 16                                 ; 344E _ 83. EC, 10
        mov     dword [ebp-0CH], 0                      ; 3451 _ C7. 45, F4, 00000000
        jmp     ?_181                                   ; 3458 _ EB, 4E

?_178:  mov     dword [ebp-8H], 0                       ; 345A _ C7. 45, F8, 00000000
        jmp     ?_180                                   ; 3461 _ EB, 39

?_179:  mov     eax, dword [ebp-0CH]                    ; 3463 _ 8B. 45, F4
        imul    eax, dword [ebp+24H]                    ; 3466 _ 0F AF. 45, 24
        mov     edx, dword [ebp-8H]                     ; 346A _ 8B. 55, F8
        add     eax, edx                                ; 346D _ 01. D0
        mov     edx, eax                                ; 346F _ 89. C2
        mov     eax, dword [ebp+20H]                    ; 3471 _ 8B. 45, 20
        add     eax, edx                                ; 3474 _ 01. D0
        mov     ecx, dword [ebp+1CH]                    ; 3476 _ 8B. 4D, 1C
        mov     edx, dword [ebp-0CH]                    ; 3479 _ 8B. 55, F4
        add     edx, ecx                                ; 347C _ 01. CA
        imul    edx, dword [ebp+0CH]                    ; 347E _ 0F AF. 55, 0C
        mov     ebx, dword [ebp+18H]                    ; 3482 _ 8B. 5D, 18
        mov     ecx, dword [ebp-8H]                     ; 3485 _ 8B. 4D, F8
        add     ecx, ebx                                ; 3488 _ 01. D9
        add     edx, ecx                                ; 348A _ 01. CA
        mov     ecx, edx                                ; 348C _ 89. D1
        mov     edx, dword [ebp+8H]                     ; 348E _ 8B. 55, 08
        add     edx, ecx                                ; 3491 _ 01. CA
        movzx   eax, byte [eax]                         ; 3493 _ 0F B6. 00
        mov     byte [edx], al                          ; 3496 _ 88. 02
        add     dword [ebp-8H], 1                       ; 3498 _ 83. 45, F8, 01
?_180:  mov     eax, dword [ebp-8H]                     ; 349C _ 8B. 45, F8
        cmp     eax, dword [ebp+10H]                    ; 349F _ 3B. 45, 10
        jl      ?_179                                   ; 34A2 _ 7C, BF
        add     dword [ebp-0CH], 1                      ; 34A4 _ 83. 45, F4, 01
?_181:  mov     eax, dword [ebp-0CH]                    ; 34A8 _ 8B. 45, F4
        cmp     eax, dword [ebp+14H]                    ; 34AB _ 3B. 45, 14
        jl      ?_178                                   ; 34AE _ 7C, AA
        nop                                             ; 34B0 _ 90
        add     esp, 16                                 ; 34B1 _ 83. C4, 10
        pop     ebx                                     ; 34B4 _ 5B
        pop     ebp                                     ; 34B5 _ 5D
        ret                                             ; 34B6 _ C3
; _putblock End of function

_intHandlerFromC:; Function begin
        push    ebp                                     ; 34B7 _ 55
        mov     ebp, esp                                ; 34B8 _ 89. E5
        sub     esp, 40                                 ; 34BA _ 83. EC, 28
        mov     eax, dword [_bootInfo]                  ; 34BD _ A1, 00000014(d)
        mov     dword [ebp-0CH], eax                    ; 34C2 _ 89. 45, F4
        movzx   eax, word [?_385]                       ; 34C5 _ 0F B7. 05, 00000018(d)
        cwde                                            ; 34CC _ 98
        mov     dword [ebp-10H], eax                    ; 34CD _ 89. 45, F0
        movzx   eax, word [?_386]                       ; 34D0 _ 0F B7. 05, 0000001A(d)
        cwde                                            ; 34D7 _ 98
        mov     dword [ebp-14H], eax                    ; 34D8 _ 89. 45, EC
        mov     dword [esp+4H], 32                      ; 34DB _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 34E3 _ C7. 04 24, 00000020
        call    _io_out8                                ; 34EA _ E8, 00000000(rel)
        mov     byte [ebp-15H], 0                       ; 34EF _ C6. 45, EB, 00
        mov     dword [esp], 96                         ; 34F3 _ C7. 04 24, 00000060
        call    _io_in8                                 ; 34FA _ E8, 00000000(rel)
        mov     byte [ebp-15H], al                      ; 34FF _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 3502 _ 0F B6. 45, EB
        mov     dword [esp+4H], eax                     ; 3506 _ 89. 44 24, 04
        mov     dword [esp], _keyinfo                   ; 350A _ C7. 04 24, 0000001C(d)
        call    _fifo8_put                              ; 3511 _ E8, 00000000(rel)
        nop                                             ; 3516 _ 90
        leave                                           ; 3517 _ C9
        ret                                             ; 3518 _ C3
; _intHandlerFromC End of function

_charToHexVal:; Function begin
        push    ebp                                     ; 3519 _ 55
        mov     ebp, esp                                ; 351A _ 89. E5
        sub     esp, 4                                  ; 351C _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 351F _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 3522 _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 3525 _ 80. 7D, FC, 09
        jle     ?_182                                   ; 3529 _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 352B _ 0F B6. 45, FC
        add     eax, 55                                 ; 352F _ 83. C0, 37
        jmp     ?_183                                   ; 3532 _ EB, 07

?_182:  movzx   eax, byte [ebp-4H]                      ; 3534 _ 0F B6. 45, FC
        add     eax, 48                                 ; 3538 _ 83. C0, 30
?_183:  leave                                           ; 353B _ C9
        ret                                             ; 353C _ C3
; _charToHexVal End of function

_charToHexStr:; Function begin
        push    ebp                                     ; 353D _ 55
        mov     ebp, esp                                ; 353E _ 89. E5
        sub     esp, 24                                 ; 3540 _ 83. EC, 18
        mov     eax, dword [ebp+8H]                     ; 3543 _ 8B. 45, 08
        mov     byte [ebp-14H], al                      ; 3546 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 3549 _ C7. 45, FC, 00000000
        movzx   eax, byte [ebp-14H]                     ; 3550 _ 0F B6. 45, EC
        and     eax, 0FH                                ; 3554 _ 83. E0, 0F
        mov     byte [ebp-5H], al                       ; 3557 _ 88. 45, FB
        movsx   eax, byte [ebp-5H]                      ; 355A _ 0F BE. 45, FB
        mov     dword [esp], eax                        ; 355E _ 89. 04 24
        call    _charToHexVal                           ; 3561 _ E8, FFFFFFB3
        mov     byte [?_360], al                        ; 3566 _ A2, 00000113(d)
        movzx   eax, byte [ebp-14H]                     ; 356B _ 0F B6. 45, EC
        shr     al, 4                                   ; 356F _ C0. E8, 04
        mov     byte [ebp-14H], al                      ; 3572 _ 88. 45, EC
        movzx   eax, byte [ebp-14H]                     ; 3575 _ 0F B6. 45, EC
        movsx   eax, al                                 ; 3579 _ 0F BE. C0
        mov     dword [esp], eax                        ; 357C _ 89. 04 24
        call    _charToHexVal                           ; 357F _ E8, FFFFFF95
        mov     byte [?_359], al                        ; 3584 _ A2, 00000112(d)
        mov     eax, _keyval                            ; 3589 _ B8, 00000110(d)
        leave                                           ; 358E _ C9
        ret                                             ; 358F _ C3
; _charToHexStr End of function

_intToHexStr:; Function begin
        push    ebp                                     ; 3590 _ 55
        mov     ebp, esp                                ; 3591 _ 89. E5
        sub     esp, 16                                 ; 3593 _ 83. EC, 10
        mov     byte [_str.2735], 48                    ; 3596 _ C6. 05, 00000374(d), 30
        mov     byte [?_389], 88                        ; 359D _ C6. 05, 00000375(d), 58
        mov     byte [?_390], 0                         ; 35A4 _ C6. 05, 0000037E(d), 00
        mov     dword [ebp-4H], 2                       ; 35AB _ C7. 45, FC, 00000002
        jmp     ?_185                                   ; 35B2 _ EB, 0F

?_184:  mov     eax, dword [ebp-4H]                     ; 35B4 _ 8B. 45, FC
        add     eax, _str.2735                          ; 35B7 _ 05, 00000374(d)
        mov     byte [eax], 48                          ; 35BC _ C6. 00, 30
        add     dword [ebp-4H], 1                       ; 35BF _ 83. 45, FC, 01
?_185:  cmp     dword [ebp-4H], 9                       ; 35C3 _ 83. 7D, FC, 09
        jle     ?_184                                   ; 35C7 _ 7E, EB
        mov     dword [ebp-8H], 9                       ; 35C9 _ C7. 45, F8, 00000009
        jmp     ?_189                                   ; 35D0 _ EB, 42

?_186:  mov     eax, dword [ebp+8H]                     ; 35D2 _ 8B. 45, 08
        and     eax, 0FH                                ; 35D5 _ 83. E0, 0F
        mov     dword [ebp-0CH], eax                    ; 35D8 _ 89. 45, F4
        mov     eax, dword [ebp+8H]                     ; 35DB _ 8B. 45, 08
        shr     eax, 4                                  ; 35DE _ C1. E8, 04
        mov     dword [ebp+8H], eax                     ; 35E1 _ 89. 45, 08
        cmp     dword [ebp-0CH], 9                      ; 35E4 _ 83. 7D, F4, 09
        jle     ?_187                                   ; 35E8 _ 7E, 14
        mov     eax, dword [ebp-0CH]                    ; 35EA _ 8B. 45, F4
        add     eax, 55                                 ; 35ED _ 83. C0, 37
        mov     edx, eax                                ; 35F0 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 35F2 _ 8B. 45, F8
        add     eax, _str.2735                          ; 35F5 _ 05, 00000374(d)
        mov     byte [eax], dl                          ; 35FA _ 88. 10
        jmp     ?_188                                   ; 35FC _ EB, 12

?_187:  mov     eax, dword [ebp-0CH]                    ; 35FE _ 8B. 45, F4
        add     eax, 48                                 ; 3601 _ 83. C0, 30
        mov     edx, eax                                ; 3604 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 3606 _ 8B. 45, F8
        add     eax, _str.2735                          ; 3609 _ 05, 00000374(d)
        mov     byte [eax], dl                          ; 360E _ 88. 10
?_188:  sub     dword [ebp-8H], 1                       ; 3610 _ 83. 6D, F8, 01
?_189:  cmp     dword [ebp-8H], 1                       ; 3614 _ 83. 7D, F8, 01
        jle     ?_190                                   ; 3618 _ 7E, 06
        cmp     dword [ebp+8H], 0                       ; 361A _ 83. 7D, 08, 00
        jnz     ?_186                                   ; 361E _ 75, B2
?_190:  mov     eax, _str.2735                          ; 3620 _ B8, 00000374(d)
        leave                                           ; 3625 _ C9
        ret                                             ; 3626 _ C3
; _intToHexStr End of function

_wait_KBC_sendready:; Function begin
        push    ebp                                     ; 3627 _ 55
        mov     ebp, esp                                ; 3628 _ 89. E5
        sub     esp, 24                                 ; 362A _ 83. EC, 18
?_191:  mov     dword [esp], 100                        ; 362D _ C7. 04 24, 00000064
        call    _io_in8                                 ; 3634 _ E8, 00000000(rel)
        and     eax, 02H                                ; 3639 _ 83. E0, 02
        test    eax, eax                                ; 363C _ 85. C0
        jz      ?_192                                   ; 363E _ 74, 02
        jmp     ?_191                                   ; 3640 _ EB, EB
; _wait_KBC_sendready End of function

?_192:  ; Local function
        nop                                             ; 3642 _ 90
        nop                                             ; 3643 _ 90
        leave                                           ; 3644 _ C9
        ret                                             ; 3645 _ C3

_init_keyboard:; Function begin
        push    ebp                                     ; 3646 _ 55
        mov     ebp, esp                                ; 3647 _ 89. E5
        sub     esp, 24                                 ; 3649 _ 83. EC, 18
        call    _wait_KBC_sendready                     ; 364C _ E8, FFFFFFD6
        mov     dword [esp+4H], 96                      ; 3651 _ C7. 44 24, 04, 00000060
        mov     dword [esp], 100                        ; 3659 _ C7. 04 24, 00000064
        call    _io_out8                                ; 3660 _ E8, 00000000(rel)
        call    _wait_KBC_sendready                     ; 3665 _ E8, FFFFFFBD
        mov     dword [esp+4H], 71                      ; 366A _ C7. 44 24, 04, 00000047
        mov     dword [esp], 96                         ; 3672 _ C7. 04 24, 00000060
        call    _io_out8                                ; 3679 _ E8, 00000000(rel)
        nop                                             ; 367E _ 90
        leave                                           ; 367F _ C9
        ret                                             ; 3680 _ C3
; _init_keyboard End of function

_enable_mouse:; Function begin
        push    ebp                                     ; 3681 _ 55
        mov     ebp, esp                                ; 3682 _ 89. E5
        sub     esp, 24                                 ; 3684 _ 83. EC, 18
        call    _wait_KBC_sendready                     ; 3687 _ E8, FFFFFF9B
        mov     dword [esp+4H], 212                     ; 368C _ C7. 44 24, 04, 000000D4
        mov     dword [esp], 100                        ; 3694 _ C7. 04 24, 00000064
        call    _io_out8                                ; 369B _ E8, 00000000(rel)
        call    _wait_KBC_sendready                     ; 36A0 _ E8, FFFFFF82
        mov     dword [esp+4H], 244                     ; 36A5 _ C7. 44 24, 04, 000000F4
        mov     dword [esp], 96                         ; 36AD _ C7. 04 24, 00000060
        call    _io_out8                                ; 36B4 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 36B9 _ 8B. 45, 08
        mov     byte [eax+3H], 0                        ; 36BC _ C6. 40, 03, 00
        nop                                             ; 36C0 _ 90
        leave                                           ; 36C1 _ C9
        ret                                             ; 36C2 _ C3
; _enable_mouse End of function

_intHandlerForMouse:; Function begin
        push    ebp                                     ; 36C3 _ 55
        mov     ebp, esp                                ; 36C4 _ 89. E5
        sub     esp, 40                                 ; 36C6 _ 83. EC, 28
        mov     dword [esp+4H], 32                      ; 36C9 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 160                        ; 36D1 _ C7. 04 24, 000000A0
        call    _io_out8                                ; 36D8 _ E8, 00000000(rel)
        mov     dword [esp+4H], 32                      ; 36DD _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 36E5 _ C7. 04 24, 00000020
        call    _io_out8                                ; 36EC _ E8, 00000000(rel)
        mov     dword [esp], 96                         ; 36F1 _ C7. 04 24, 00000060
        call    _io_in8                                 ; 36F8 _ E8, 00000000(rel)
        mov     byte [ebp-9H], al                       ; 36FD _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 3700 _ 0F B6. 45, F7
        mov     dword [esp+4H], eax                     ; 3704 _ 89. 44 24, 04
        mov     dword [esp], _mouseinfo                 ; 3708 _ C7. 04 24, 00000038(d)
        call    _fifo8_put                              ; 370F _ E8, 00000000(rel)
        nop                                             ; 3714 _ 90
        leave                                           ; 3715 _ C9
        ret                                             ; 3716 _ C3
; _intHandlerForMouse End of function

_mouse_decode:; Function begin
        push    ebp                                     ; 3717 _ 55
        mov     ebp, esp                                ; 3718 _ 89. E5
        sub     esp, 4                                  ; 371A _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 371D _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 3720 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 3723 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 3726 _ 0F B6. 40, 03
        test    al, al                                  ; 372A _ 84. C0
        jnz     ?_194                                   ; 372C _ 75, 17
        cmp     byte [ebp-4H], -6                       ; 372E _ 80. 7D, FC, FA
        jnz     ?_193                                   ; 3732 _ 75, 07
        mov     eax, dword [ebp+8H]                     ; 3734 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 3737 _ C6. 40, 03, 01
?_193:  mov     eax, 0                                  ; 373B _ B8, 00000000
        jmp     ?_201                                   ; 3740 _ E9, 0000010F

?_194:  mov     eax, dword [ebp+8H]                     ; 3745 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 3748 _ 0F B6. 40, 03
        cmp     al, 1                                   ; 374C _ 3C, 01
        jnz     ?_196                                   ; 374E _ 75, 28
        movzx   eax, byte [ebp-4H]                      ; 3750 _ 0F B6. 45, FC
        and     eax, 0C8H                               ; 3754 _ 25, 000000C8
        cmp     eax, 8                                  ; 3759 _ 83. F8, 08
        jnz     ?_195                                   ; 375C _ 75, 10
        mov     edx, dword [ebp+8H]                     ; 375E _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 3761 _ 0F B6. 45, FC
        mov     byte [edx], al                          ; 3765 _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 3767 _ 8B. 45, 08
        mov     byte [eax+3H], 2                        ; 376A _ C6. 40, 03, 02
?_195:  mov     eax, 0                                  ; 376E _ B8, 00000000
        jmp     ?_201                                   ; 3773 _ E9, 000000DC

?_196:  mov     eax, dword [ebp+8H]                     ; 3778 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 377B _ 0F B6. 40, 03
        cmp     al, 2                                   ; 377F _ 3C, 02
        jnz     ?_197                                   ; 3781 _ 75, 1B
        mov     edx, dword [ebp+8H]                     ; 3783 _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 3786 _ 0F B6. 45, FC
        mov     byte [edx+1H], al                       ; 378A _ 88. 42, 01
        mov     eax, dword [ebp+8H]                     ; 378D _ 8B. 45, 08
        mov     byte [eax+3H], 3                        ; 3790 _ C6. 40, 03, 03
        mov     eax, 0                                  ; 3794 _ B8, 00000000
        jmp     ?_201                                   ; 3799 _ E9, 000000B6

?_197:  mov     eax, dword [ebp+8H]                     ; 379E _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 37A1 _ 0F B6. 40, 03
        cmp     al, 3                                   ; 37A5 _ 3C, 03
        jne     ?_200                                   ; 37A7 _ 0F 85, 000000A2
        mov     edx, dword [ebp+8H]                     ; 37AD _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 37B0 _ 0F B6. 45, FC
        mov     byte [edx+2H], al                       ; 37B4 _ 88. 42, 02
        mov     eax, dword [ebp+8H]                     ; 37B7 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 37BA _ C6. 40, 03, 01
        mov     eax, dword [ebp+8H]                     ; 37BE _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 37C1 _ 0F B6. 00
        movzx   eax, al                                 ; 37C4 _ 0F B6. C0
        and     eax, 07H                                ; 37C7 _ 83. E0, 07
        mov     edx, eax                                ; 37CA _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 37CC _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 37CF _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 37D2 _ 8B. 45, 08
        movzx   eax, byte [eax+1H]                      ; 37D5 _ 0F B6. 40, 01
        movzx   eax, al                                 ; 37D9 _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 37DC _ 8B. 55, 08
        mov     dword [edx+4H], eax                     ; 37DF _ 89. 42, 04
        mov     eax, dword [ebp+8H]                     ; 37E2 _ 8B. 45, 08
        movzx   eax, byte [eax+2H]                      ; 37E5 _ 0F B6. 40, 02
        movzx   eax, al                                 ; 37E9 _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 37EC _ 8B. 55, 08
        mov     dword [edx+8H], eax                     ; 37EF _ 89. 42, 08
        mov     eax, dword [ebp+8H]                     ; 37F2 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 37F5 _ 0F B6. 00
        movzx   eax, al                                 ; 37F8 _ 0F B6. C0
        and     eax, 10H                                ; 37FB _ 83. E0, 10
        test    eax, eax                                ; 37FE _ 85. C0
        jz      ?_198                                   ; 3800 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 3802 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 3805 _ 8B. 40, 04
        or      eax, 0FFFFFF00H                         ; 3808 _ 0D, FFFFFF00
        mov     edx, eax                                ; 380D _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 380F _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 3812 _ 89. 50, 04
?_198:  mov     eax, dword [ebp+8H]                     ; 3815 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 3818 _ 0F B6. 00
        movzx   eax, al                                 ; 381B _ 0F B6. C0
        and     eax, 20H                                ; 381E _ 83. E0, 20
        test    eax, eax                                ; 3821 _ 85. C0
        jz      ?_199                                   ; 3823 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 3825 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3828 _ 8B. 40, 08
        or      eax, 0FFFFFF00H                         ; 382B _ 0D, FFFFFF00
        mov     edx, eax                                ; 3830 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3832 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 3835 _ 89. 50, 08
?_199:  mov     eax, dword [ebp+8H]                     ; 3838 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 383B _ 8B. 40, 08
        neg     eax                                     ; 383E _ F7. D8
        mov     edx, eax                                ; 3840 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3842 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 3845 _ 89. 50, 08
        mov     eax, 1                                  ; 3848 _ B8, 00000001
        jmp     ?_201                                   ; 384D _ EB, 05

?_200:  mov     eax, 4294967295                         ; 384F _ B8, FFFFFFFF
?_201:  leave                                           ; 3854 _ C9
        ret                                             ; 3855 _ C3
; _mouse_decode End of function

_showMemoryInfo:; Function begin
        push    ebp                                     ; 3856 _ 55
        mov     ebp, esp                                ; 3857 _ 89. E5
        sub     esp, 72                                 ; 3859 _ 83. EC, 48
        mov     dword [ebp-0CH], 0                      ; 385C _ C7. 45, F4, 00000000
        mov     dword [ebp-10H], 0                      ; 3863 _ C7. 45, F0, 00000000
        mov     dword [ebp-14H], 104                    ; 386A _ C7. 45, EC, 00000068
        mov     dword [ebp-18H], 80                     ; 3871 _ C7. 45, E8, 00000050
        mov     edx, dword [_ysize]                     ; 3878 _ 8B. 15, 00000140(d)
        mov     eax, dword [ebp+0CH]                    ; 387E _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 3881 _ 8B. 00
        mov     dword [esp+8H], edx                     ; 3883 _ 89. 54 24, 08
        mov     edx, dword [ebp+1CH]                    ; 3887 _ 8B. 55, 1C
        mov     dword [esp+4H], edx                     ; 388A _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 388E _ 89. 04 24
        call    _init_screen8                           ; 3891 _ E8, FFFFEECE
        mov     eax, dword [ebp+20H]                    ; 3896 _ 8B. 45, 20
        movsx   eax, al                                 ; 3899 _ 0F BE. C0
        mov     dword [esp+14H], ?_376                  ; 389C _ C7. 44 24, 14, 00000051(d)
        mov     dword [esp+10H], eax                    ; 38A4 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 38A8 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 38AB _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 38AF _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 38B2 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 38B6 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 38B9 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 38BD _ 8B. 45, 08
        mov     dword [esp], eax                        ; 38C0 _ 89. 04 24
        call    _showString                             ; 38C3 _ E8, FFFFF2AC
        mov     eax, dword [ebp+18H]                    ; 38C8 _ 8B. 45, 18
        mov     dword [esp], eax                        ; 38CB _ 89. 04 24
        call    _intToHexStr                            ; 38CE _ E8, FFFFFCBD
        mov     dword [ebp-1CH], eax                    ; 38D3 _ 89. 45, E4
        mov     eax, dword [ebp+20H]                    ; 38D6 _ 8B. 45, 20
        movsx   eax, al                                 ; 38D9 _ 0F BE. C0
        mov     edx, dword [ebp-1CH]                    ; 38DC _ 8B. 55, E4
        mov     dword [esp+14H], edx                    ; 38DF _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 38E3 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 38E7 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 38EA _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 38EE _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 38F1 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 38F5 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 38F8 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 38FC _ 8B. 45, 08
        mov     dword [esp], eax                        ; 38FF _ 89. 04 24
        call    _showString                             ; 3902 _ E8, FFFFF26D
        add     dword [ebp-10H], 16                     ; 3907 _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 390B _ 8B. 45, 20
        movsx   eax, al                                 ; 390E _ 0F BE. C0
        mov     dword [esp+14H], ?_377                  ; 3911 _ C7. 44 24, 14, 0000005B(d)
        mov     dword [esp+10H], eax                    ; 3919 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 391D _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 3920 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 3924 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 3927 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 392B _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 392E _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3932 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3935 _ 89. 04 24
        call    _showString                             ; 3938 _ E8, FFFFF237
        mov     eax, dword [ebp+10H]                    ; 393D _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 3940 _ 8B. 00
        mov     dword [esp], eax                        ; 3942 _ 89. 04 24
        call    _intToHexStr                            ; 3945 _ E8, FFFFFC46
        mov     dword [ebp-20H], eax                    ; 394A _ 89. 45, E0
        mov     eax, dword [ebp+20H]                    ; 394D _ 8B. 45, 20
        movsx   eax, al                                 ; 3950 _ 0F BE. C0
        mov     edx, dword [ebp-20H]                    ; 3953 _ 8B. 55, E0
        mov     dword [esp+14H], edx                    ; 3956 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 395A _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 395E _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 3961 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 3965 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 3968 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 396C _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 396F _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3973 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3976 _ 89. 04 24
        call    _showString                             ; 3979 _ E8, FFFFF1F6
        add     dword [ebp-10H], 16                     ; 397E _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 3982 _ 8B. 45, 20
        movsx   eax, al                                 ; 3985 _ 0F BE. C0
        mov     dword [esp+14H], ?_378                  ; 3988 _ C7. 44 24, 14, 00000067(d)
        mov     dword [esp+10H], eax                    ; 3990 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 3994 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 3997 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 399B _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 399E _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 39A2 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 39A5 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 39A9 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 39AC _ 89. 04 24
        call    _showString                             ; 39AF _ E8, FFFFF1C0
        mov     eax, dword [ebp+10H]                    ; 39B4 _ 8B. 45, 10
        mov     eax, dword [eax+4H]                     ; 39B7 _ 8B. 40, 04
        mov     dword [esp], eax                        ; 39BA _ 89. 04 24
        call    _intToHexStr                            ; 39BD _ E8, FFFFFBCE
        mov     dword [ebp-24H], eax                    ; 39C2 _ 89. 45, DC
        mov     eax, dword [ebp+20H]                    ; 39C5 _ 8B. 45, 20
        movsx   eax, al                                 ; 39C8 _ 0F BE. C0
        mov     edx, dword [ebp-24H]                    ; 39CB _ 8B. 55, DC
        mov     dword [esp+14H], edx                    ; 39CE _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 39D2 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 39D6 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 39D9 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 39DD _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 39E0 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 39E4 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 39E7 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 39EB _ 8B. 45, 08
        mov     dword [esp], eax                        ; 39EE _ 89. 04 24
        call    _showString                             ; 39F1 _ E8, FFFFF17E
        add     dword [ebp-10H], 16                     ; 39F6 _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 39FA _ 8B. 45, 20
        movsx   eax, al                                 ; 39FD _ 0F BE. C0
        mov     dword [esp+14H], ?_379                  ; 3A00 _ C7. 44 24, 14, 00000073(d)
        mov     dword [esp+10H], eax                    ; 3A08 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 3A0C _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 3A0F _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 3A13 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 3A16 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 3A1A _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 3A1D _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3A21 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3A24 _ 89. 04 24
        call    _showString                             ; 3A27 _ E8, FFFFF148
        mov     eax, dword [ebp+10H]                    ; 3A2C _ 8B. 45, 10
        mov     eax, dword [eax+8H]                     ; 3A2F _ 8B. 40, 08
        mov     dword [esp], eax                        ; 3A32 _ 89. 04 24
        call    _intToHexStr                            ; 3A35 _ E8, FFFFFB56
        mov     dword [ebp-28H], eax                    ; 3A3A _ 89. 45, D8
        mov     eax, dword [ebp+20H]                    ; 3A3D _ 8B. 45, 20
        movsx   eax, al                                 ; 3A40 _ 0F BE. C0
        mov     edx, dword [ebp-28H]                    ; 3A43 _ 8B. 55, D8
        mov     dword [esp+14H], edx                    ; 3A46 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 3A4A _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 3A4E _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 3A51 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 3A55 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 3A58 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 3A5C _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 3A5F _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3A63 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3A66 _ 89. 04 24
        call    _showString                             ; 3A69 _ E8, FFFFF106
        nop                                             ; 3A6E _ 90
        leave                                           ; 3A6F _ C9
        ret                                             ; 3A70 _ C3
; _showMemoryInfo End of function

_message_box:; Function begin
        push    ebp                                     ; 3A71 _ 55
        mov     ebp, esp                                ; 3A72 _ 89. E5
        sub     esp, 56                                 ; 3A74 _ 83. EC, 38
        mov     eax, dword [ebp+8H]                     ; 3A77 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3A7A _ 89. 04 24
        call    _sheet_alloc                            ; 3A7D _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 3A82 _ 89. 45, F4
        mov     eax, dword [_memman]                    ; 3A85 _ A1, 00000000(d)
        mov     dword [esp+4H], 10880                   ; 3A8A _ C7. 44 24, 04, 00002A80
        mov     dword [esp], eax                        ; 3A92 _ 89. 04 24
        call    _memman_alloc_4k                        ; 3A95 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 3A9A _ 89. 45, F0
        mov     dword [esp+10H], -1                     ; 3A9D _ C7. 44 24, 10, FFFFFFFF
        mov     dword [esp+0CH], 68                     ; 3AA5 _ C7. 44 24, 0C, 00000044
        mov     dword [esp+8H], 160                     ; 3AAD _ C7. 44 24, 08, 000000A0
        mov     eax, dword [ebp-10H]                    ; 3AB5 _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 3AB8 _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 3ABC _ 8B. 45, F4
        mov     dword [esp], eax                        ; 3ABF _ 89. 04 24
        call    _sheet_setbuf                           ; 3AC2 _ E8, 00000000(rel)
        mov     dword [esp+0CH], 1                      ; 3AC7 _ C7. 44 24, 0C, 00000001
        mov     eax, dword [ebp+0CH]                    ; 3ACF _ 8B. 45, 0C
        mov     dword [esp+8H], eax                     ; 3AD2 _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 3AD6 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 3AD9 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3ADD _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3AE0 _ 89. 04 24
        call    _make_window8                           ; 3AE3 _ E8, 00000074
        mov     dword [esp+14H], 7                      ; 3AE8 _ C7. 44 24, 14, 00000007
        mov     dword [esp+10H], 16                     ; 3AF0 _ C7. 44 24, 10, 00000010
        mov     dword [esp+0CH], 144                    ; 3AF8 _ C7. 44 24, 0C, 00000090
        mov     dword [esp+8H], 28                      ; 3B00 _ C7. 44 24, 08, 0000001C
        mov     dword [esp+4H], 8                       ; 3B08 _ C7. 44 24, 04, 00000008
        mov     eax, dword [ebp-0CH]                    ; 3B10 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 3B13 _ 89. 04 24
        call    _make_textbox8                          ; 3B16 _ E8, 00000444
        mov     dword [esp+0CH], 172                    ; 3B1B _ C7. 44 24, 0C, 000000AC
        mov     dword [esp+8H], 260                     ; 3B23 _ C7. 44 24, 08, 00000104
        mov     eax, dword [ebp-0CH]                    ; 3B2B _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 3B2E _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3B32 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3B35 _ 89. 04 24
        call    _sheet_slide                            ; 3B38 _ E8, 00000000(rel)
        mov     dword [esp+8H], 2                       ; 3B3D _ C7. 44 24, 08, 00000002
        mov     eax, dword [ebp-0CH]                    ; 3B45 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 3B48 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3B4C _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3B4F _ 89. 04 24
        call    _sheet_updown                           ; 3B52 _ E8, 00000000(rel)
        mov     eax, dword [ebp-0CH]                    ; 3B57 _ 8B. 45, F4
        leave                                           ; 3B5A _ C9
        ret                                             ; 3B5B _ C3
; _message_box End of function

_make_window8:; Function begin
        push    ebp                                     ; 3B5C _ 55
        mov     ebp, esp                                ; 3B5D _ 89. E5
        push    ebx                                     ; 3B5F _ 53
        sub     esp, 68                                 ; 3B60 _ 83. EC, 44
        mov     eax, dword [ebp+14H]                    ; 3B63 _ 8B. 45, 14
        mov     byte [ebp-1CH], al                      ; 3B66 _ 88. 45, E4
        mov     eax, dword [ebp+0CH]                    ; 3B69 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 3B6C _ 8B. 40, 04
        mov     dword [ebp-0CH], eax                    ; 3B6F _ 89. 45, F4
        mov     eax, dword [ebp+0CH]                    ; 3B72 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 3B75 _ 8B. 40, 08
        mov     dword [ebp-10H], eax                    ; 3B78 _ 89. 45, F0
        mov     eax, dword [ebp-0CH]                    ; 3B7B _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 3B7E _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 3B81 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 3B84 _ 8B. 00
        mov     dword [esp+18H], 0                      ; 3B86 _ C7. 44 24, 18, 00000000
        mov     dword [esp+14H], edx                    ; 3B8E _ 89. 54 24, 14
        mov     dword [esp+10H], 0                      ; 3B92 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 3B9A _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 3BA2 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-0CH]                    ; 3BAA _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 3BAD _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3BB1 _ 89. 04 24
        call    _boxfill8                               ; 3BB4 _ E8, FFFFF5EA
        mov     eax, dword [ebp-0CH]                    ; 3BB9 _ 8B. 45, F4
        lea     edx, [eax-2H]                           ; 3BBC _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 3BBF _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 3BC2 _ 8B. 00
        mov     dword [esp+18H], 1                      ; 3BC4 _ C7. 44 24, 18, 00000001
        mov     dword [esp+14H], edx                    ; 3BCC _ 89. 54 24, 14
        mov     dword [esp+10H], 1                      ; 3BD0 _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], 1                      ; 3BD8 _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 7                       ; 3BE0 _ C7. 44 24, 08, 00000007
        mov     edx, dword [ebp-0CH]                    ; 3BE8 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 3BEB _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3BEF _ 89. 04 24
        call    _boxfill8                               ; 3BF2 _ E8, FFFFF5AC
        mov     eax, dword [ebp-10H]                    ; 3BF7 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 3BFA _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 3BFD _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 3C00 _ 8B. 00
        mov     dword [esp+18H], edx                    ; 3C02 _ 89. 54 24, 18
        mov     dword [esp+14H], 0                      ; 3C06 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], 0                      ; 3C0E _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 3C16 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 3C1E _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-0CH]                    ; 3C26 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 3C29 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3C2D _ 89. 04 24
        call    _boxfill8                               ; 3C30 _ E8, FFFFF56E
        mov     eax, dword [ebp-10H]                    ; 3C35 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 3C38 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 3C3B _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 3C3E _ 8B. 00
        mov     dword [esp+18H], edx                    ; 3C40 _ 89. 54 24, 18
        mov     dword [esp+14H], 1                      ; 3C44 _ C7. 44 24, 14, 00000001
        mov     dword [esp+10H], 1                      ; 3C4C _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], 1                      ; 3C54 _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 7                       ; 3C5C _ C7. 44 24, 08, 00000007
        mov     edx, dword [ebp-0CH]                    ; 3C64 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 3C67 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3C6B _ 89. 04 24
        call    _boxfill8                               ; 3C6E _ E8, FFFFF530
        mov     eax, dword [ebp-10H]                    ; 3C73 _ 8B. 45, F0
        lea     ebx, [eax-2H]                           ; 3C76 _ 8D. 58, FE
        mov     eax, dword [ebp-0CH]                    ; 3C79 _ 8B. 45, F4
        lea     ecx, [eax-2H]                           ; 3C7C _ 8D. 48, FE
        mov     eax, dword [ebp-0CH]                    ; 3C7F _ 8B. 45, F4
        lea     edx, [eax-2H]                           ; 3C82 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 3C85 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 3C88 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 3C8A _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 3C8E _ 89. 4C 24, 14
        mov     dword [esp+10H], 1                      ; 3C92 _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], edx                    ; 3C9A _ 89. 54 24, 0C
        mov     dword [esp+8H], 15                      ; 3C9E _ C7. 44 24, 08, 0000000F
        mov     edx, dword [ebp-0CH]                    ; 3CA6 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 3CA9 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3CAD _ 89. 04 24
        call    _boxfill8                               ; 3CB0 _ E8, FFFFF4EE
        mov     eax, dword [ebp-10H]                    ; 3CB5 _ 8B. 45, F0
        lea     ebx, [eax-1H]                           ; 3CB8 _ 8D. 58, FF
        mov     eax, dword [ebp-0CH]                    ; 3CBB _ 8B. 45, F4
        lea     ecx, [eax-1H]                           ; 3CBE _ 8D. 48, FF
        mov     eax, dword [ebp-0CH]                    ; 3CC1 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 3CC4 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 3CC7 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 3CCA _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 3CCC _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 3CD0 _ 89. 4C 24, 14
        mov     dword [esp+10H], 0                      ; 3CD4 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], edx                    ; 3CDC _ 89. 54 24, 0C
        mov     dword [esp+8H], 0                       ; 3CE0 _ C7. 44 24, 08, 00000000
        mov     edx, dword [ebp-0CH]                    ; 3CE8 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 3CEB _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3CEF _ 89. 04 24
        call    _boxfill8                               ; 3CF2 _ E8, FFFFF4AC
        mov     eax, dword [ebp-10H]                    ; 3CF7 _ 8B. 45, F0
        lea     ecx, [eax-3H]                           ; 3CFA _ 8D. 48, FD
        mov     eax, dword [ebp-0CH]                    ; 3CFD _ 8B. 45, F4
        lea     edx, [eax-3H]                           ; 3D00 _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 3D03 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 3D06 _ 8B. 00
        mov     dword [esp+18H], ecx                    ; 3D08 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 3D0C _ 89. 54 24, 14
        mov     dword [esp+10H], 2                      ; 3D10 _ C7. 44 24, 10, 00000002
        mov     dword [esp+0CH], 2                      ; 3D18 _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 8                       ; 3D20 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-0CH]                    ; 3D28 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 3D2B _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3D2F _ 89. 04 24
        call    _boxfill8                               ; 3D32 _ E8, FFFFF46C
        mov     eax, dword [ebp-0CH]                    ; 3D37 _ 8B. 45, F4
        lea     edx, [eax-4H]                           ; 3D3A _ 8D. 50, FC
        mov     eax, dword [ebp+0CH]                    ; 3D3D _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 3D40 _ 8B. 00
        mov     dword [esp+18H], 20                     ; 3D42 _ C7. 44 24, 18, 00000014
        mov     dword [esp+14H], edx                    ; 3D4A _ 89. 54 24, 14
        mov     dword [esp+10H], 3                      ; 3D4E _ C7. 44 24, 10, 00000003
        mov     dword [esp+0CH], 3                      ; 3D56 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 12                      ; 3D5E _ C7. 44 24, 08, 0000000C
        mov     edx, dword [ebp-0CH]                    ; 3D66 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 3D69 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3D6D _ 89. 04 24
        call    _boxfill8                               ; 3D70 _ E8, FFFFF42E
        mov     eax, dword [ebp-10H]                    ; 3D75 _ 8B. 45, F0
        lea     ebx, [eax-2H]                           ; 3D78 _ 8D. 58, FE
        mov     eax, dword [ebp-0CH]                    ; 3D7B _ 8B. 45, F4
        lea     ecx, [eax-2H]                           ; 3D7E _ 8D. 48, FE
        mov     eax, dword [ebp-10H]                    ; 3D81 _ 8B. 45, F0
        lea     edx, [eax-2H]                           ; 3D84 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 3D87 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 3D8A _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 3D8C _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 3D90 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 3D94 _ 89. 54 24, 10
        mov     dword [esp+0CH], 1                      ; 3D98 _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 15                      ; 3DA0 _ C7. 44 24, 08, 0000000F
        mov     edx, dword [ebp-0CH]                    ; 3DA8 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 3DAB _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3DAF _ 89. 04 24
        call    _boxfill8                               ; 3DB2 _ E8, FFFFF3EC
        mov     eax, dword [ebp-10H]                    ; 3DB7 _ 8B. 45, F0
        lea     ebx, [eax-1H]                           ; 3DBA _ 8D. 58, FF
        mov     eax, dword [ebp-0CH]                    ; 3DBD _ 8B. 45, F4
        lea     ecx, [eax-1H]                           ; 3DC0 _ 8D. 48, FF
        mov     eax, dword [ebp-10H]                    ; 3DC3 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 3DC6 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 3DC9 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 3DCC _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 3DCE _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 3DD2 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 3DD6 _ 89. 54 24, 10
        mov     dword [esp+0CH], 0                      ; 3DDA _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 3DE2 _ C7. 44 24, 08, 00000000
        mov     edx, dword [ebp-0CH]                    ; 3DEA _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 3DED _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3DF1 _ 89. 04 24
        call    _boxfill8                               ; 3DF4 _ E8, FFFFF3AA
        movsx   eax, byte [ebp-1CH]                     ; 3DF9 _ 0F BE. 45, E4
        mov     dword [esp+0CH], eax                    ; 3DFD _ 89. 44 24, 0C
        mov     eax, dword [ebp+10H]                    ; 3E01 _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 3E04 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 3E08 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 3E0B _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3E0F _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3E12 _ 89. 04 24
        call    _make_wtitle8                           ; 3E15 _ E8, 00000007
        nop                                             ; 3E1A _ 90
        add     esp, 68                                 ; 3E1B _ 83. C4, 44
        pop     ebx                                     ; 3E1E _ 5B
        pop     ebp                                     ; 3E1F _ 5D
        ret                                             ; 3E20 _ C3
; _make_window8 End of function

_make_wtitle8:; Function begin
        push    ebp                                     ; 3E21 _ 55
        mov     ebp, esp                                ; 3E22 _ 89. E5
        push    ebx                                     ; 3E24 _ 53
        sub     esp, 68                                 ; 3E25 _ 83. EC, 44
        mov     eax, dword [ebp+14H]                    ; 3E28 _ 8B. 45, 14
        mov     byte [ebp-1CH], al                      ; 3E2B _ 88. 45, E4
        cmp     byte [ebp-1CH], 0                       ; 3E2E _ 80. 7D, E4, 00
        jz      ?_202                                   ; 3E32 _ 74, 0A
        mov     byte [ebp-12H], 7                       ; 3E34 _ C6. 45, EE, 07
        mov     byte [ebp-13H], 12                      ; 3E38 _ C6. 45, ED, 0C
        jmp     ?_203                                   ; 3E3C _ EB, 08

?_202:  mov     byte [ebp-12H], 8                       ; 3E3E _ C6. 45, EE, 08
        mov     byte [ebp-13H], 15                      ; 3E42 _ C6. 45, ED, 0F
?_203:  mov     eax, dword [ebp+0CH]                    ; 3E46 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 3E49 _ 8B. 40, 04
        lea     ebx, [eax-4H]                           ; 3E4C _ 8D. 58, FC
        movzx   eax, byte [ebp-13H]                     ; 3E4F _ 0F B6. 45, ED
        movzx   eax, al                                 ; 3E53 _ 0F B6. C0
        mov     edx, dword [ebp+0CH]                    ; 3E56 _ 8B. 55, 0C
        mov     ecx, dword [edx+4H]                     ; 3E59 _ 8B. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 3E5C _ 8B. 55, 0C
        mov     edx, dword [edx]                        ; 3E5F _ 8B. 12
        mov     dword [esp+18H], 20                     ; 3E61 _ C7. 44 24, 18, 00000014
        mov     dword [esp+14H], ebx                    ; 3E69 _ 89. 5C 24, 14
        mov     dword [esp+10H], 3                      ; 3E6D _ C7. 44 24, 10, 00000003
        mov     dword [esp+0CH], 3                      ; 3E75 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], eax                     ; 3E7D _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 3E81 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 3E85 _ 89. 14 24
        call    _boxfill8                               ; 3E88 _ E8, FFFFF316
        movsx   eax, byte [ebp-12H]                     ; 3E8D _ 0F BE. 45, EE
        mov     edx, dword [ebp+10H]                    ; 3E91 _ 8B. 55, 10
        mov     dword [esp+14H], edx                    ; 3E94 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 3E98 _ 89. 44 24, 10
        mov     dword [esp+0CH], 4                      ; 3E9C _ C7. 44 24, 0C, 00000004
        mov     dword [esp+8H], 24                      ; 3EA4 _ C7. 44 24, 08, 00000018
        mov     eax, dword [ebp+0CH]                    ; 3EAC _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 3EAF _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3EB3 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3EB6 _ 89. 04 24
        call    _showString                             ; 3EB9 _ E8, FFFFECB6
        mov     dword [ebp-10H], 0                      ; 3EBE _ C7. 45, F0, 00000000
        jmp     ?_211                                   ; 3EC5 _ E9, 00000084

?_204:  mov     dword [ebp-0CH], 0                      ; 3ECA _ C7. 45, F4, 00000000
        jmp     ?_210                                   ; 3ED1 _ EB, 71

?_205:  mov     eax, dword [ebp-10H]                    ; 3ED3 _ 8B. 45, F0
        shl     eax, 4                                  ; 3ED6 _ C1. E0, 04
        mov     edx, eax                                ; 3ED9 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 3EDB _ 8B. 45, F4
        add     eax, edx                                ; 3EDE _ 01. D0
        add     eax, _closebtn.2806                     ; 3EE0 _ 05, 00000280(d)
        movzx   eax, byte [eax]                         ; 3EE5 _ 0F B6. 00
        mov     byte [ebp-11H], al                      ; 3EE8 _ 88. 45, EF
        cmp     byte [ebp-11H], 64                      ; 3EEB _ 80. 7D, EF, 40
        jnz     ?_206                                   ; 3EEF _ 75, 06
        mov     byte [ebp-11H], 0                       ; 3EF1 _ C6. 45, EF, 00
        jmp     ?_209                                   ; 3EF5 _ EB, 1C

?_206:  cmp     byte [ebp-11H], 36                      ; 3EF7 _ 80. 7D, EF, 24
        jnz     ?_207                                   ; 3EFB _ 75, 06
        mov     byte [ebp-11H], 15                      ; 3EFD _ C6. 45, EF, 0F
        jmp     ?_209                                   ; 3F01 _ EB, 10

?_207:  cmp     byte [ebp-11H], 81                      ; 3F03 _ 80. 7D, EF, 51
        jnz     ?_208                                   ; 3F07 _ 75, 06
        mov     byte [ebp-11H], 8                       ; 3F09 _ C6. 45, EF, 08
        jmp     ?_209                                   ; 3F0D _ EB, 04

?_208:  mov     byte [ebp-11H], 7                       ; 3F0F _ C6. 45, EF, 07
?_209:  mov     eax, dword [ebp+0CH]                    ; 3F13 _ 8B. 45, 0C
        mov     ecx, dword [eax]                        ; 3F16 _ 8B. 08
        mov     eax, dword [ebp-10H]                    ; 3F18 _ 8B. 45, F0
        lea     edx, [eax+5H]                           ; 3F1B _ 8D. 50, 05
        mov     eax, dword [ebp+0CH]                    ; 3F1E _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 3F21 _ 8B. 40, 04
        imul    eax, edx                                ; 3F24 _ 0F AF. C2
        mov     edx, dword [ebp+0CH]                    ; 3F27 _ 8B. 55, 0C
        mov     edx, dword [edx+4H]                     ; 3F2A _ 8B. 52, 04
        lea     ebx, [edx-15H]                          ; 3F2D _ 8D. 5A, EB
        mov     edx, dword [ebp-0CH]                    ; 3F30 _ 8B. 55, F4
        add     edx, ebx                                ; 3F33 _ 01. DA
        add     eax, edx                                ; 3F35 _ 01. D0
        lea     edx, [ecx+eax]                          ; 3F37 _ 8D. 14 01
        movzx   eax, byte [ebp-11H]                     ; 3F3A _ 0F B6. 45, EF
        mov     byte [edx], al                          ; 3F3E _ 88. 02
        add     dword [ebp-0CH], 1                      ; 3F40 _ 83. 45, F4, 01
?_210:  cmp     dword [ebp-0CH], 15                     ; 3F44 _ 83. 7D, F4, 0F
        jle     ?_205                                   ; 3F48 _ 7E, 89
        add     dword [ebp-10H], 1                      ; 3F4A _ 83. 45, F0, 01
?_211:  cmp     dword [ebp-10H], 13                     ; 3F4E _ 83. 7D, F0, 0D
        jle     ?_204                                   ; 3F52 _ 0F 8E, FFFFFF72
        nop                                             ; 3F58 _ 90
        add     esp, 68                                 ; 3F59 _ 83. C4, 44
        pop     ebx                                     ; 3F5C _ 5B
        pop     ebp                                     ; 3F5D _ 5D
        ret                                             ; 3F5E _ C3
; _make_wtitle8 End of function

_make_textbox8:; Function begin
        push    ebp                                     ; 3F5F _ 55
        mov     ebp, esp                                ; 3F60 _ 89. E5
        push    edi                                     ; 3F62 _ 57
        push    esi                                     ; 3F63 _ 56
        push    ebx                                     ; 3F64 _ 53
        sub     esp, 44                                 ; 3F65 _ 83. EC, 2C
        mov     edx, dword [ebp+0CH]                    ; 3F68 _ 8B. 55, 0C
        mov     eax, dword [ebp+14H]                    ; 3F6B _ 8B. 45, 14
        add     eax, edx                                ; 3F6E _ 01. D0
        mov     dword [ebp-10H], eax                    ; 3F70 _ 89. 45, F0
        mov     edx, dword [ebp+10H]                    ; 3F73 _ 8B. 55, 10
        mov     eax, dword [ebp+18H]                    ; 3F76 _ 8B. 45, 18
        add     eax, edx                                ; 3F79 _ 01. D0
        mov     dword [ebp-14H], eax                    ; 3F7B _ 89. 45, EC
        mov     eax, dword [ebp+10H]                    ; 3F7E _ 8B. 45, 10
        lea     edi, [eax-3H]                           ; 3F81 _ 8D. 78, FD
        mov     eax, dword [ebp-10H]                    ; 3F84 _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 3F87 _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 3F8A _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 3F8D _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 3F90 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 3F93 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 3F96 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 3F99 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 3F9C _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3F9F _ 8B. 00
        mov     dword [esp+18H], edi                    ; 3FA1 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 3FA5 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 3FA9 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 3FAD _ 89. 4C 24, 0C
        mov     dword [esp+8H], 15                      ; 3FB1 _ C7. 44 24, 08, 0000000F
        mov     dword [esp+4H], edx                     ; 3FB9 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3FBD _ 89. 04 24
        call    _boxfill8                               ; 3FC0 _ E8, FFFFF1DE
        mov     eax, dword [ebp-14H]                    ; 3FC5 _ 8B. 45, EC
        lea     edi, [eax+1H]                           ; 3FC8 _ 8D. 78, 01
        mov     eax, dword [ebp+0CH]                    ; 3FCB _ 8B. 45, 0C
        lea     esi, [eax-3H]                           ; 3FCE _ 8D. 70, FD
        mov     eax, dword [ebp+10H]                    ; 3FD1 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 3FD4 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 3FD7 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 3FDA _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 3FDD _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 3FE0 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 3FE3 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3FE6 _ 8B. 00
        mov     dword [esp+18H], edi                    ; 3FE8 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 3FEC _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 3FF0 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 3FF4 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 15                      ; 3FF8 _ C7. 44 24, 08, 0000000F
        mov     dword [esp+4H], edx                     ; 4000 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 4004 _ 89. 04 24
        call    _boxfill8                               ; 4007 _ E8, FFFFF197
        mov     eax, dword [ebp-14H]                    ; 400C _ 8B. 45, EC
        lea     edi, [eax+2H]                           ; 400F _ 8D. 78, 02
        mov     eax, dword [ebp-10H]                    ; 4012 _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 4015 _ 8D. 70, 01
        mov     eax, dword [ebp-14H]                    ; 4018 _ 8B. 45, EC
        lea     ebx, [eax+2H]                           ; 401B _ 8D. 58, 02
        mov     eax, dword [ebp+0CH]                    ; 401E _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 4021 _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 4024 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 4027 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 402A _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 402D _ 8B. 00
        mov     dword [esp+18H], edi                    ; 402F _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 4033 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 4037 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 403B _ 89. 4C 24, 0C
        mov     dword [esp+8H], 7                       ; 403F _ C7. 44 24, 08, 00000007
        mov     dword [esp+4H], edx                     ; 4047 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 404B _ 89. 04 24
        call    _boxfill8                               ; 404E _ E8, FFFFF150
        mov     eax, dword [ebp-14H]                    ; 4053 _ 8B. 45, EC
        lea     edi, [eax+2H]                           ; 4056 _ 8D. 78, 02
        mov     eax, dword [ebp-10H]                    ; 4059 _ 8B. 45, F0
        lea     esi, [eax+2H]                           ; 405C _ 8D. 70, 02
        mov     eax, dword [ebp+10H]                    ; 405F _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 4062 _ 8D. 58, FD
        mov     eax, dword [ebp-10H]                    ; 4065 _ 8B. 45, F0
        lea     ecx, [eax+2H]                           ; 4068 _ 8D. 48, 02
        mov     eax, dword [ebp+8H]                     ; 406B _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 406E _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 4071 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 4074 _ 8B. 00
        mov     dword [esp+18H], edi                    ; 4076 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 407A _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 407E _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 4082 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 7                       ; 4086 _ C7. 44 24, 08, 00000007
        mov     dword [esp+4H], edx                     ; 408E _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 4092 _ 89. 04 24
        call    _boxfill8                               ; 4095 _ E8, FFFFF109
        mov     eax, dword [ebp+10H]                    ; 409A _ 8B. 45, 10
        lea     esi, [eax-2H]                           ; 409D _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 40A0 _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 40A3 _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 40A6 _ 8B. 45, 0C
        lea     ecx, [eax-1H]                           ; 40A9 _ 8D. 48, FF
        mov     eax, dword [ebp+8H]                     ; 40AC _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 40AF _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 40B2 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 40B5 _ 8B. 00
        mov     dword [esp+18H], esi                    ; 40B7 _ 89. 74 24, 18
        mov     esi, dword [ebp-10H]                    ; 40BB _ 8B. 75, F0
        mov     dword [esp+14H], esi                    ; 40BE _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 40C2 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 40C6 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 0                       ; 40CA _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 40D2 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 40D6 _ 89. 04 24
        call    _boxfill8                               ; 40D9 _ E8, FFFFF0C5
        mov     eax, dword [ebp+0CH]                    ; 40DE _ 8B. 45, 0C
        lea     esi, [eax-2H]                           ; 40E1 _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 40E4 _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 40E7 _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 40EA _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 40ED _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 40F0 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 40F3 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 40F6 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 40F9 _ 8B. 00
        mov     edi, dword [ebp-14H]                    ; 40FB _ 8B. 7D, EC
        mov     dword [esp+18H], edi                    ; 40FE _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 4102 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 4106 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 410A _ 89. 4C 24, 0C
        mov     dword [esp+8H], 0                       ; 410E _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 4116 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 411A _ 89. 04 24
        call    _boxfill8                               ; 411D _ E8, FFFFF081
        mov     eax, dword [ebp-14H]                    ; 4122 _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 4125 _ 8D. 70, 01
        mov     eax, dword [ebp-14H]                    ; 4128 _ 8B. 45, EC
        lea     ebx, [eax+1H]                           ; 412B _ 8D. 58, 01
        mov     eax, dword [ebp+0CH]                    ; 412E _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 4131 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 4134 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 4137 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 413A _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 413D _ 8B. 00
        mov     dword [esp+18H], esi                    ; 413F _ 89. 74 24, 18
        mov     esi, dword [ebp-10H]                    ; 4143 _ 8B. 75, F0
        mov     dword [esp+14H], esi                    ; 4146 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 414A _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 414E _ 89. 4C 24, 0C
        mov     dword [esp+8H], 8                       ; 4152 _ C7. 44 24, 08, 00000008
        mov     dword [esp+4H], edx                     ; 415A _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 415E _ 89. 04 24
        call    _boxfill8                               ; 4161 _ E8, FFFFF03D
        mov     eax, dword [ebp-14H]                    ; 4166 _ 8B. 45, EC
        lea     edi, [eax+1H]                           ; 4169 _ 8D. 78, 01
        mov     eax, dword [ebp-10H]                    ; 416C _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 416F _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 4172 _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 4175 _ 8D. 58, FE
        mov     eax, dword [ebp-10H]                    ; 4178 _ 8B. 45, F0
        lea     ecx, [eax+1H]                           ; 417B _ 8D. 48, 01
        mov     eax, dword [ebp+8H]                     ; 417E _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 4181 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 4184 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 4187 _ 8B. 00
        mov     dword [esp+18H], edi                    ; 4189 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 418D _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 4191 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 4195 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 8                       ; 4199 _ C7. 44 24, 08, 00000008
        mov     dword [esp+4H], edx                     ; 41A1 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 41A5 _ 89. 04 24
        call    _boxfill8                               ; 41A8 _ E8, FFFFEFF6
        mov     eax, dword [ebp+10H]                    ; 41AD _ 8B. 45, 10
        lea     esi, [eax-1H]                           ; 41B0 _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 41B3 _ 8B. 45, 0C
        lea     ebx, [eax-1H]                           ; 41B6 _ 8D. 58, FF
        mov     eax, dword [ebp+1CH]                    ; 41B9 _ 8B. 45, 1C
        movzx   eax, al                                 ; 41BC _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 41BF _ 8B. 55, 08
        mov     ecx, dword [edx+4H]                     ; 41C2 _ 8B. 4A, 04
        mov     edx, dword [ebp+8H]                     ; 41C5 _ 8B. 55, 08
        mov     edx, dword [edx]                        ; 41C8 _ 8B. 12
        mov     edi, dword [ebp-14H]                    ; 41CA _ 8B. 7D, EC
        mov     dword [esp+18H], edi                    ; 41CD _ 89. 7C 24, 18
        mov     edi, dword [ebp-10H]                    ; 41D1 _ 8B. 7D, F0
        mov     dword [esp+14H], edi                    ; 41D4 _ 89. 7C 24, 14
        mov     dword [esp+10H], esi                    ; 41D8 _ 89. 74 24, 10
        mov     dword [esp+0CH], ebx                    ; 41DC _ 89. 5C 24, 0C
        mov     dword [esp+8H], eax                     ; 41E0 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 41E4 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 41E8 _ 89. 14 24
        call    _boxfill8                               ; 41EB _ E8, FFFFEFB3
        nop                                             ; 41F0 _ 90
        add     esp, 44                                 ; 41F1 _ 83. C4, 2C
        pop     ebx                                     ; 41F4 _ 5B
        pop     esi                                     ; 41F5 _ 5E
        pop     edi                                     ; 41F6 _ 5F
        pop     ebp                                     ; 41F7 _ 5D
        ret                                             ; 41F8 _ C3
; _make_textbox8 End of function

_file_loadfile:; Function begin
        push    ebp                                     ; 41F9 _ 55
        mov     ebp, esp                                ; 41FA _ 89. E5
        sub     esp, 56                                 ; 41FC _ 83. EC, 38
        mov     dword [ebp-0CH], 78848                  ; 41FF _ C7. 45, F4, 00013400
        mov     eax, dword [_memman]                    ; 4206 _ A1, 00000000(d)
        mov     dword [esp+4H], 13                      ; 420B _ C7. 44 24, 04, 0000000D
        mov     dword [esp], eax                        ; 4213 _ 89. 04 24
        call    _memman_alloc                           ; 4216 _ E8, 00000000(rel)
        mov     dword [ebp-1CH], eax                    ; 421B _ 89. 45, E4
        mov     eax, dword [ebp-1CH]                    ; 421E _ 8B. 45, E4
        add     eax, 12                                 ; 4221 _ 83. C0, 0C
        mov     byte [eax], 0                           ; 4224 _ C6. 00, 00
        jmp     ?_222                                   ; 4227 _ E9, 00000125

?_212:  mov     dword [ebp-10H], 0                      ; 422C _ C7. 45, F0, 00000000
        jmp     ?_214                                   ; 4233 _ EB, 2A

?_213:  mov     edx, dword [ebp-0CH]                    ; 4235 _ 8B. 55, F4
        mov     eax, dword [ebp-10H]                    ; 4238 _ 8B. 45, F0
        add     eax, edx                                ; 423B _ 01. D0
        movzx   eax, byte [eax]                         ; 423D _ 0F B6. 00
        test    al, al                                  ; 4240 _ 84. C0
        jz      ?_215                                   ; 4242 _ 74, 23
        mov     edx, dword [ebp-0CH]                    ; 4244 _ 8B. 55, F4
        mov     eax, dword [ebp-10H]                    ; 4247 _ 8B. 45, F0
        add     eax, edx                                ; 424A _ 01. D0
        movzx   ecx, byte [eax]                         ; 424C _ 0F B6. 08
        mov     edx, dword [ebp-10H]                    ; 424F _ 8B. 55, F0
        mov     eax, dword [ebp-1CH]                    ; 4252 _ 8B. 45, E4
        add     eax, edx                                ; 4255 _ 01. D0
        mov     edx, ecx                                ; 4257 _ 89. CA
        mov     byte [eax], dl                          ; 4259 _ 88. 10
        add     dword [ebp-10H], 1                      ; 425B _ 83. 45, F0, 01
?_214:  cmp     dword [ebp-10H], 7                      ; 425F _ 83. 7D, F0, 07
        jle     ?_213                                   ; 4263 _ 7E, D0
        jmp     ?_216                                   ; 4265 _ EB, 01

?_215:  nop                                             ; 4267 _ 90
?_216:  mov     dword [ebp-14H], 0                      ; 4268 _ C7. 45, EC, 00000000
        mov     edx, dword [ebp-10H]                    ; 426F _ 8B. 55, F0
        mov     eax, dword [ebp-1CH]                    ; 4272 _ 8B. 45, E4
        add     eax, edx                                ; 4275 _ 01. D0
        mov     byte [eax], 46                          ; 4277 _ C6. 00, 2E
        add     dword [ebp-10H], 1                      ; 427A _ 83. 45, F0, 01
        mov     dword [ebp-14H], 0                      ; 427E _ C7. 45, EC, 00000000
        jmp     ?_218                                   ; 4285 _ EB, 22

?_217:  mov     edx, dword [ebp-0CH]                    ; 4287 _ 8B. 55, F4
        mov     eax, dword [ebp-14H]                    ; 428A _ 8B. 45, EC
        add     eax, edx                                ; 428D _ 01. D0
        add     eax, 8                                  ; 428F _ 83. C0, 08
        movzx   ecx, byte [eax]                         ; 4292 _ 0F B6. 08
        mov     edx, dword [ebp-10H]                    ; 4295 _ 8B. 55, F0
        mov     eax, dword [ebp-1CH]                    ; 4298 _ 8B. 45, E4
        add     eax, edx                                ; 429B _ 01. D0
        mov     edx, ecx                                ; 429D _ 89. CA
        mov     byte [eax], dl                          ; 429F _ 88. 10
        add     dword [ebp-10H], 1                      ; 42A1 _ 83. 45, F0, 01
        add     dword [ebp-14H], 1                      ; 42A5 _ 83. 45, EC, 01
?_218:  cmp     dword [ebp-14H], 2                      ; 42A9 _ 83. 7D, EC, 02
        jle     ?_217                                   ; 42AD _ 7E, D8
        mov     eax, dword [ebp-1CH]                    ; 42AF _ 8B. 45, E4
        mov     dword [esp+4H], eax                     ; 42B2 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 42B6 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 42B9 _ 89. 04 24
        call    _strcmp                                 ; 42BC _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 42C1 _ 83. F8, 01
        jne     ?_221                                   ; 42C4 _ 0F 85, 00000083
        mov     eax, dword [ebp-0CH]                    ; 42CA _ 8B. 45, F4
        mov     edx, dword [eax+1CH]                    ; 42CD _ 8B. 50, 1C
        mov     eax, dword [_memman]                    ; 42D0 _ A1, 00000000(d)
        mov     dword [esp+4H], edx                     ; 42D5 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 42D9 _ 89. 04 24
        call    _memman_alloc_4k                        ; 42DC _ E8, 00000000(rel)
        mov     edx, eax                                ; 42E1 _ 89. C2
        mov     eax, dword [ebp+0CH]                    ; 42E3 _ 8B. 45, 0C
        mov     dword [eax], edx                        ; 42E6 _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 42E8 _ 8B. 45, F4
        mov     eax, dword [eax+1CH]                    ; 42EB _ 8B. 40, 1C
        mov     edx, eax                                ; 42EE _ 89. C2
        mov     eax, dword [ebp+0CH]                    ; 42F0 _ 8B. 45, 0C
        mov     dword [eax+8H], edx                     ; 42F3 _ 89. 50, 08
        mov     dword [ebp-20H], 88064                  ; 42F6 _ C7. 45, E0, 00015800
        mov     eax, dword [ebp-0CH]                    ; 42FD _ 8B. 45, F4
        movzx   eax, word [eax+1AH]                     ; 4300 _ 0F B7. 40, 1A
        movzx   eax, ax                                 ; 4304 _ 0F B7. C0
        shl     eax, 9                                  ; 4307 _ C1. E0, 09
        add     dword [ebp-20H], eax                    ; 430A _ 01. 45, E0
        mov     eax, dword [ebp-0CH]                    ; 430D _ 8B. 45, F4
        mov     eax, dword [eax+1CH]                    ; 4310 _ 8B. 40, 1C
        mov     dword [ebp-24H], eax                    ; 4313 _ 89. 45, DC
        mov     dword [ebp-18H], 0                      ; 4316 _ C7. 45, E8, 00000000
        mov     dword [ebp-18H], 0                      ; 431D _ C7. 45, E8, 00000000
        jmp     ?_220                                   ; 4324 _ EB, 1D

?_219:  mov     edx, dword [ebp-18H]                    ; 4326 _ 8B. 55, E8
        mov     eax, dword [ebp-20H]                    ; 4329 _ 8B. 45, E0
        add     eax, edx                                ; 432C _ 01. D0
        movzx   ecx, byte [eax]                         ; 432E _ 0F B6. 08
        mov     eax, dword [ebp+0CH]                    ; 4331 _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 4334 _ 8B. 10
        mov     eax, dword [ebp-18H]                    ; 4336 _ 8B. 45, E8
        add     eax, edx                                ; 4339 _ 01. D0
        mov     edx, ecx                                ; 433B _ 89. CA
        mov     byte [eax], dl                          ; 433D _ 88. 10
        add     dword [ebp-18H], 1                      ; 433F _ 83. 45, E8, 01
?_220:  mov     eax, dword [ebp-18H]                    ; 4343 _ 8B. 45, E8
        cmp     eax, dword [ebp-24H]                    ; 4346 _ 3B. 45, DC
        jl      ?_219                                   ; 4349 _ 7C, DB
        jmp     ?_223                                   ; 434B _ EB, 12

?_221:  add     dword [ebp-0CH], 32                     ; 434D _ 83. 45, F4, 20
?_222:  mov     eax, dword [ebp-0CH]                    ; 4351 _ 8B. 45, F4
        movzx   eax, byte [eax]                         ; 4354 _ 0F B6. 00
        test    al, al                                  ; 4357 _ 84. C0
        jne     ?_212                                   ; 4359 _ 0F 85, FFFFFECD
?_223:  mov     edx, dword [ebp-1CH]                    ; 435F _ 8B. 55, E4
        mov     eax, dword [_memman]                    ; 4362 _ A1, 00000000(d)
        mov     dword [esp+8H], 13                      ; 4367 _ C7. 44 24, 08, 0000000D
        mov     dword [esp+4H], edx                     ; 436F _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 4373 _ 89. 04 24
        call    _memman_free                            ; 4376 _ E8, 00000000(rel)
        nop                                             ; 437B _ 90
        leave                                           ; 437C _ C9
        ret                                             ; 437D _ C3
; _file_loadfile End of function

_intHandlerForStackOverFlow:; Function begin
        push    ebp                                     ; 437E _ 55
        mov     ebp, esp                                ; 437F _ 89. E5
        sub     esp, 40                                 ; 4381 _ 83. EC, 28
        call    _task_now                               ; 4384 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 4389 _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 438C _ 8B. 45, F4
        mov     dword [eax+98H], 8                      ; 438F _ C7. 80, 00000098, 00000008
        mov     dword [esp], ?_380                      ; 4399 _ C7. 04 24, 0000007F(d)
        call    _cons_putstr                            ; 43A0 _ E8, FFFFDA15
        mov     eax, dword [ebp-0CH]                    ; 43A5 _ 8B. 45, F4
        mov     dword [eax+98H], 8                      ; 43A8 _ C7. 80, 00000098, 00000008
        mov     eax, dword [ebp-0CH]                    ; 43B2 _ 8B. 45, F4
        mov     eax, dword [eax+9CH]                    ; 43B5 _ 8B. 80, 0000009C
        lea     edx, [eax+10H]                          ; 43BB _ 8D. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 43BE _ 8B. 45, F4
        mov     dword [eax+9CH], edx                    ; 43C1 _ 89. 90, 0000009C
        mov     dword [esp], ?_381                      ; 43C7 _ C7. 04 24, 00000086(d)
        call    _cons_putstr                            ; 43CE _ E8, FFFFD9E7
        mov     eax, dword [ebp-0CH]                    ; 43D3 _ 8B. 45, F4
        mov     dword [eax+98H], 8                      ; 43D6 _ C7. 80, 00000098, 00000008
        mov     eax, dword [ebp-0CH]                    ; 43E0 _ 8B. 45, F4
        mov     eax, dword [eax+9CH]                    ; 43E3 _ 8B. 80, 0000009C
        lea     edx, [eax+10H]                          ; 43E9 _ 8D. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 43EC _ 8B. 45, F4
        mov     dword [eax+9CH], edx                    ; 43EF _ 89. 90, 0000009C
        mov     eax, dword [ebp+8H]                     ; 43F5 _ 8B. 45, 08
        add     eax, 44                                 ; 43F8 _ 83. C0, 2C
        mov     eax, dword [eax]                        ; 43FB _ 8B. 00
        mov     dword [esp], eax                        ; 43FD _ 89. 04 24
        call    _intToHexStr                            ; 4400 _ E8, FFFFF18B
        mov     dword [ebp-10H], eax                    ; 4405 _ 89. 45, F0
        mov     dword [esp], ?_382                      ; 4408 _ C7. 04 24, 00000096(d)
        call    _cons_putstr                            ; 440F _ E8, FFFFD9A6
        mov     eax, dword [ebp-10H]                    ; 4414 _ 8B. 45, F0
        mov     dword [esp], eax                        ; 4417 _ 89. 04 24
        call    _cons_putstr                            ; 441A _ E8, FFFFD99B
        mov     eax, dword [ebp-0CH]                    ; 441F _ 8B. 45, F4
        mov     dword [eax+98H], 8                      ; 4422 _ C7. 80, 00000098, 00000008
        mov     eax, dword [ebp-0CH]                    ; 442C _ 8B. 45, F4
        mov     eax, dword [eax+9CH]                    ; 442F _ 8B. 80, 0000009C
        lea     edx, [eax+10H]                          ; 4435 _ 8D. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 4438 _ 8B. 45, F4
        mov     dword [eax+9CH], edx                    ; 443B _ 89. 90, 0000009C
        mov     eax, dword [ebp-0CH]                    ; 4441 _ 8B. 45, F4
        add     eax, 48                                 ; 4444 _ 83. C0, 30
        leave                                           ; 4447 _ C9
        ret                                             ; 4448 _ C3
; _intHandlerForStackOverFlow End of function

_intHandlerForException:; Function begin
        push    ebp                                     ; 4449 _ 55
        mov     ebp, esp                                ; 444A _ 89. E5
        sub     esp, 40                                 ; 444C _ 83. EC, 28
        call    _task_now                               ; 444F _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 4454 _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 4457 _ 8B. 45, F4
        mov     dword [eax+98H], 8                      ; 445A _ C7. 80, 00000098, 00000008
        mov     dword [esp], ?_383                      ; 4464 _ C7. 04 24, 0000009D(d)
        call    _cons_putstr                            ; 446B _ E8, FFFFD94A
        mov     eax, dword [ebp-0CH]                    ; 4470 _ 8B. 45, F4
        mov     dword [eax+98H], 8                      ; 4473 _ C7. 80, 00000098, 00000008
        mov     eax, dword [ebp-0CH]                    ; 447D _ 8B. 45, F4
        mov     eax, dword [eax+9CH]                    ; 4480 _ 8B. 80, 0000009C
        lea     edx, [eax+10H]                          ; 4486 _ 8D. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 4489 _ 8B. 45, F4
        mov     dword [eax+9CH], edx                    ; 448C _ 89. 90, 0000009C
        mov     dword [esp], ?_384                      ; 4492 _ C7. 04 24, 000000A5(d)
        call    _cons_putstr                            ; 4499 _ E8, FFFFD91C
        mov     eax, dword [ebp-0CH]                    ; 449E _ 8B. 45, F4
        mov     eax, dword [eax+9CH]                    ; 44A1 _ 8B. 80, 0000009C
        lea     edx, [eax+10H]                          ; 44A7 _ 8D. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 44AA _ 8B. 45, F4
        mov     dword [eax+9CH], edx                    ; 44AD _ 89. 90, 0000009C
        mov     eax, dword [ebp-0CH]                    ; 44B3 _ 8B. 45, F4
        mov     dword [eax+98H], 8                      ; 44B6 _ C7. 80, 00000098, 00000008
        mov     eax, dword [ebp-0CH]                    ; 44C0 _ 8B. 45, F4
        add     eax, 48                                 ; 44C3 _ 83. C0, 30
        leave                                           ; 44C6 _ C9
        ret                                             ; 44C7 _ C3
; _intHandlerForException End of function


_shtctl_init:
        push    ebp                                     ; 44C8 _ 55
        mov     ebp, esp                                ; 44C9 _ 89. E5
        sub     esp, 40                                 ; 44CB _ 83. EC, 28
        mov     dword [esp+4H], 9232                    ; 44CE _ C7. 44 24, 04, 00002410
        mov     eax, dword [ebp+8H]                     ; 44D6 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 44D9 _ 89. 04 24
        call    _memman_alloc_4k                        ; 44DC _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 44E1 _ 89. 45, F0
        cmp     dword [ebp-10H], 0                      ; 44E4 _ 83. 7D, F0, 00
        jnz     ?_224                                   ; 44E8 _ 75, 0A
        mov     eax, 0                                  ; 44EA _ B8, 00000000
        jmp     ?_228                                   ; 44EF _ E9, 000000A3

?_224:  mov     eax, dword [ebp+10H]                    ; 44F4 _ 8B. 45, 10
        imul    eax, dword [ebp+14H]                    ; 44F7 _ 0F AF. 45, 14
        mov     dword [esp+4H], eax                     ; 44FB _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 44FF _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4502 _ 89. 04 24
        call    _memman_alloc_4k                        ; 4505 _ E8, 00000000(rel)
        mov     edx, eax                                ; 450A _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 450C _ 8B. 45, F0
        mov     dword [eax+4H], edx                     ; 450F _ 89. 50, 04
        mov     eax, dword [ebp-10H]                    ; 4512 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 4515 _ 8B. 40, 04
        test    eax, eax                                ; 4518 _ 85. C0
        jnz     ?_225                                   ; 451A _ 75, 21
        mov     eax, dword [ebp-10H]                    ; 451C _ 8B. 45, F0
        mov     dword [esp+8H], 9232                    ; 451F _ C7. 44 24, 08, 00002410
        mov     dword [esp+4H], eax                     ; 4527 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 452B _ 8B. 45, 08
        mov     dword [esp], eax                        ; 452E _ 89. 04 24
        call    _memman_free_4k                         ; 4531 _ E8, 00000000(rel)
        mov     eax, 0                                  ; 4536 _ B8, 00000000
        jmp     ?_228                                   ; 453B _ EB, 5A

?_225:  mov     eax, dword [ebp-10H]                    ; 453D _ 8B. 45, F0
        mov     edx, dword [ebp+0CH]                    ; 4540 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 4543 _ 89. 10
        mov     eax, dword [ebp-10H]                    ; 4545 _ 8B. 45, F0
        mov     edx, dword [ebp+10H]                    ; 4548 _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 454B _ 89. 50, 08
        mov     eax, dword [ebp-10H]                    ; 454E _ 8B. 45, F0
        mov     edx, dword [ebp+14H]                    ; 4551 _ 8B. 55, 14
        mov     dword [eax+0CH], edx                    ; 4554 _ 89. 50, 0C
        mov     eax, dword [ebp-10H]                    ; 4557 _ 8B. 45, F0
        mov     dword [eax+10H], -1                     ; 455A _ C7. 40, 10, FFFFFFFF
        mov     dword [ebp-0CH], 0                      ; 4561 _ C7. 45, F4, 00000000
        jmp     ?_227                                   ; 4568 _ EB, 21

?_226:  mov     ecx, dword [ebp-10H]                    ; 456A _ 8B. 4D, F0
        mov     edx, dword [ebp-0CH]                    ; 456D _ 8B. 55, F4
        mov     eax, edx                                ; 4570 _ 89. D0
        shl     eax, 3                                  ; 4572 _ C1. E0, 03
        add     eax, edx                                ; 4575 _ 01. D0
        shl     eax, 2                                  ; 4577 _ C1. E0, 02
        add     eax, ecx                                ; 457A _ 01. C8
        add     eax, 1072                               ; 457C _ 05, 00000430
        mov     dword [eax], 0                          ; 4581 _ C7. 00, 00000000
        add     dword [ebp-0CH], 1                      ; 4587 _ 83. 45, F4, 01
?_227:  cmp     dword [ebp-0CH], 255                    ; 458B _ 81. 7D, F4, 000000FF
        jle     ?_226                                   ; 4592 _ 7E, D6
        mov     eax, dword [ebp-10H]                    ; 4594 _ 8B. 45, F0
?_228:  leave                                           ; 4597 _ C9
        ret                                             ; 4598 _ C3

_sheet_alloc:; Function begin
        push    ebp                                     ; 4599 _ 55
        mov     ebp, esp                                ; 459A _ 89. E5
        sub     esp, 24                                 ; 459C _ 83. EC, 18
        mov     dword [ebp-0CH], 0                      ; 459F _ C7. 45, F4, 00000000
        jmp     ?_231                                   ; 45A6 _ EB, 75

?_229:  mov     ecx, dword [ebp+8H]                     ; 45A8 _ 8B. 4D, 08
        mov     edx, dword [ebp-0CH]                    ; 45AB _ 8B. 55, F4
        mov     eax, edx                                ; 45AE _ 89. D0
        shl     eax, 3                                  ; 45B0 _ C1. E0, 03
        add     eax, edx                                ; 45B3 _ 01. D0
        shl     eax, 2                                  ; 45B5 _ C1. E0, 02
        add     eax, ecx                                ; 45B8 _ 01. C8
        add     eax, 1072                               ; 45BA _ 05, 00000430
        mov     eax, dword [eax]                        ; 45BF _ 8B. 00
        test    eax, eax                                ; 45C1 _ 85. C0
        jnz     ?_230                                   ; 45C3 _ 75, 54
        mov     edx, dword [ebp-0CH]                    ; 45C5 _ 8B. 55, F4
        mov     eax, edx                                ; 45C8 _ 89. D0
        shl     eax, 3                                  ; 45CA _ C1. E0, 03
        add     eax, edx                                ; 45CD _ 01. D0
        shl     eax, 2                                  ; 45CF _ C1. E0, 02
        lea     edx, [eax+410H]                         ; 45D2 _ 8D. 90, 00000410
        mov     eax, dword [ebp+8H]                     ; 45D8 _ 8B. 45, 08
        add     eax, edx                                ; 45DB _ 01. D0
        add     eax, 4                                  ; 45DD _ 83. C0, 04
        mov     dword [ebp-10H], eax                    ; 45E0 _ 89. 45, F0
        mov     eax, dword [ebp+8H]                     ; 45E3 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 45E6 _ 8B. 55, F4
        add     edx, 4                                  ; 45E9 _ 83. C2, 04
        mov     ecx, dword [ebp-10H]                    ; 45EC _ 8B. 4D, F0
        mov     dword [eax+edx*4+4H], ecx               ; 45EF _ 89. 4C 90, 04
        mov     eax, dword [ebp-10H]                    ; 45F3 _ 8B. 45, F0
        mov     dword [eax+1CH], 1                      ; 45F6 _ C7. 40, 1C, 00000001
        mov     eax, dword [ebp-10H]                    ; 45FD _ 8B. 45, F0
        mov     dword [eax+18H], -1                     ; 4600 _ C7. 40, 18, FFFFFFFF
        call    _task_now                               ; 4607 _ E8, 00000000(rel)
        mov     edx, eax                                ; 460C _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 460E _ 8B. 45, F0
        mov     dword [eax+20H], edx                    ; 4611 _ 89. 50, 20
        mov     eax, dword [ebp-10H]                    ; 4614 _ 8B. 45, F0
        jmp     ?_232                                   ; 4617 _ EB, 12

?_230:  add     dword [ebp-0CH], 1                      ; 4619 _ 83. 45, F4, 01
?_231:  cmp     dword [ebp-0CH], 255                    ; 461D _ 81. 7D, F4, 000000FF
        jle     ?_229                                   ; 4624 _ 7E, 82
        mov     eax, 0                                  ; 4626 _ B8, 00000000
?_232:  leave                                           ; 462B _ C9
        ret                                             ; 462C _ C3
; _sheet_alloc End of function

_sheet_setbuf:; Function begin
        push    ebp                                     ; 462D _ 55
        mov     ebp, esp                                ; 462E _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 4630 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 4633 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 4636 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 4638 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 463B _ 8B. 55, 10
        mov     dword [eax+4H], edx                     ; 463E _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 4641 _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 4644 _ 8B. 55, 14
        mov     dword [eax+8H], edx                     ; 4647 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 464A _ 8B. 45, 08
        mov     edx, dword [ebp+18H]                    ; 464D _ 8B. 55, 18
        mov     dword [eax+14H], edx                    ; 4650 _ 89. 50, 14
        nop                                             ; 4653 _ 90
        pop     ebp                                     ; 4654 _ 5D
        ret                                             ; 4655 _ C3
; _sheet_setbuf End of function

_sheet_updown:; Function begin
        push    ebp                                     ; 4656 _ 55
        mov     ebp, esp                                ; 4657 _ 89. E5
        push    edi                                     ; 4659 _ 57
        push    esi                                     ; 465A _ 56
        push    ebx                                     ; 465B _ 53
        sub     esp, 60                                 ; 465C _ 83. EC, 3C
        mov     eax, dword [ebp+0CH]                    ; 465F _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 4662 _ 8B. 40, 18
        mov     dword [ebp-20H], eax                    ; 4665 _ 89. 45, E0
        mov     eax, dword [ebp+8H]                     ; 4668 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 466B _ 8B. 40, 10
        add     eax, 1                                  ; 466E _ 83. C0, 01
        cmp     dword [ebp+10H], eax                    ; 4671 _ 39. 45, 10
        jle     ?_233                                   ; 4674 _ 7E, 0C
        mov     eax, dword [ebp+8H]                     ; 4676 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 4679 _ 8B. 40, 10
        add     eax, 1                                  ; 467C _ 83. C0, 01
        mov     dword [ebp+10H], eax                    ; 467F _ 89. 45, 10
?_233:  cmp     dword [ebp+10H], -1                     ; 4682 _ 83. 7D, 10, FF
        jge     ?_234                                   ; 4686 _ 7D, 07
        mov     dword [ebp+10H], -1                     ; 4688 _ C7. 45, 10, FFFFFFFF
?_234:  mov     eax, dword [ebp+0CH]                    ; 468F _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 4692 _ 8B. 55, 10
        mov     dword [eax+18H], edx                    ; 4695 _ 89. 50, 18
        mov     eax, dword [ebp-20H]                    ; 4698 _ 8B. 45, E0
        cmp     eax, dword [ebp+10H]                    ; 469B _ 3B. 45, 10
        jle     ?_241                                   ; 469E _ 0F 8E, 00000212
        cmp     dword [ebp+10H], 0                      ; 46A4 _ 83. 7D, 10, 00
        js      ?_237                                   ; 46A8 _ 0F 88, 000000FE
        mov     eax, dword [ebp-20H]                    ; 46AE _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 46B1 _ 89. 45, E4
        jmp     ?_236                                   ; 46B4 _ EB, 34

?_235:  mov     eax, dword [ebp-1CH]                    ; 46B6 _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 46B9 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 46BC _ 8B. 45, 08
        add     edx, 4                                  ; 46BF _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 46C2 _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 46C6 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 46C9 _ 8B. 55, E4
        add     edx, 4                                  ; 46CC _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 46CF _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 46D3 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 46D6 _ 8B. 55, E4
        add     edx, 4                                  ; 46D9 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 46DC _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 46E0 _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 46E3 _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 46E6 _ 83. 6D, E4, 01
?_236:  mov     eax, dword [ebp-1CH]                    ; 46EA _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 46ED _ 3B. 45, 10
        jg      ?_235                                   ; 46F0 _ 7F, C4
        mov     eax, dword [ebp+8H]                     ; 46F2 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 46F5 _ 8B. 55, 10
        add     edx, 4                                  ; 46F8 _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 46FB _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 46FE _ 89. 4C 90, 04
        mov     eax, dword [ebp+10H]                    ; 4702 _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 4705 _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 4708 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 470B _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 470E _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 4711 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 4714 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 4717 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 471A _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 471D _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 4720 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 4723 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 4726 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 4729 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 472C _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 472F _ 8B. 40, 0C
        mov     dword [esp+14H], esi                    ; 4732 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 4736 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 473A _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 473E _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 4742 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4746 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4749 _ 89. 04 24
        call    _sheet_refreshmap                       ; 474C _ E8, 00000643
        mov     eax, dword [ebp+10H]                    ; 4751 _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 4754 _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 4757 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 475A _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 475D _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 4760 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 4763 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 4766 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 4769 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 476C _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 476F _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 4772 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 4775 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 4778 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 477B _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 477E _ 8B. 40, 0C
        mov     edi, dword [ebp-20H]                    ; 4781 _ 8B. 7D, E0
        mov     dword [esp+18H], edi                    ; 4784 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 4788 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 478C _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 4790 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 4794 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 4798 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 479C _ 8B. 45, 08
        mov     dword [esp], eax                        ; 479F _ 89. 04 24
        call    _sheet_refreshsub                       ; 47A2 _ E8, 00000465
        jmp     ?_248                                   ; 47A7 _ E9, 0000027D

?_237:  mov     eax, dword [ebp+8H]                     ; 47AC _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 47AF _ 8B. 40, 10
        cmp     dword [ebp-20H], eax                    ; 47B2 _ 39. 45, E0
        jge     ?_240                                   ; 47B5 _ 7D, 47
        mov     eax, dword [ebp-20H]                    ; 47B7 _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 47BA _ 89. 45, E4
        jmp     ?_239                                   ; 47BD _ EB, 34

?_238:  mov     eax, dword [ebp-1CH]                    ; 47BF _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 47C2 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 47C5 _ 8B. 45, 08
        add     edx, 4                                  ; 47C8 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 47CB _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 47CF _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 47D2 _ 8B. 55, E4
        add     edx, 4                                  ; 47D5 _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 47D8 _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 47DC _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 47DF _ 8B. 55, E4
        add     edx, 4                                  ; 47E2 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 47E5 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 47E9 _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 47EC _ 89. 50, 18
        add     dword [ebp-1CH], 1                      ; 47EF _ 83. 45, E4, 01
?_239:  mov     eax, dword [ebp+8H]                     ; 47F3 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 47F6 _ 8B. 40, 10
        cmp     dword [ebp-1CH], eax                    ; 47F9 _ 39. 45, E4
        jl      ?_238                                   ; 47FC _ 7C, C1
?_240:  mov     eax, dword [ebp+8H]                     ; 47FE _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 4801 _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 4804 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 4807 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 480A _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 480D _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 4810 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 4813 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 4816 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 4819 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 481C _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 481F _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 4822 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 4825 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 4828 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 482B _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 482E _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 4831 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 4834 _ 8B. 40, 0C
        mov     dword [esp+14H], 0                      ; 4837 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], ebx                    ; 483F _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 4843 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 4847 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 484B _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 484F _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4852 _ 89. 04 24
        call    _sheet_refreshmap                       ; 4855 _ E8, 0000053A
        mov     eax, dword [ebp-20H]                    ; 485A _ 8B. 45, E0
        lea     esi, [eax-1H]                           ; 485D _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 4860 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 4863 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 4866 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 4869 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 486C _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 486F _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 4872 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 4875 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 4878 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 487B _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 487E _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 4881 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 4884 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 4887 _ 8B. 40, 0C
        mov     dword [esp+18H], esi                    ; 488A _ 89. 74 24, 18
        mov     dword [esp+14H], 0                      ; 488E _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], ebx                    ; 4896 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 489A _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 489E _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 48A2 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 48A6 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 48A9 _ 89. 04 24
        call    _sheet_refreshsub                       ; 48AC _ E8, 0000035B
        jmp     ?_248                                   ; 48B1 _ E9, 00000173

?_241:  mov     eax, dword [ebp-20H]                    ; 48B6 _ 8B. 45, E0
        cmp     eax, dword [ebp+10H]                    ; 48B9 _ 3B. 45, 10
        jge     ?_248                                   ; 48BC _ 0F 8D, 00000167
        cmp     dword [ebp-20H], 0                      ; 48C2 _ 83. 7D, E0, 00
        js      ?_244                                   ; 48C6 _ 78, 56
        mov     eax, dword [ebp-20H]                    ; 48C8 _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 48CB _ 89. 45, E4
        jmp     ?_243                                   ; 48CE _ EB, 34

?_242:  mov     eax, dword [ebp-1CH]                    ; 48D0 _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 48D3 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 48D6 _ 8B. 45, 08
        add     edx, 4                                  ; 48D9 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 48DC _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 48E0 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 48E3 _ 8B. 55, E4
        add     edx, 4                                  ; 48E6 _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 48E9 _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 48ED _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 48F0 _ 8B. 55, E4
        add     edx, 4                                  ; 48F3 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 48F6 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 48FA _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 48FD _ 89. 50, 18
        add     dword [ebp-1CH], 1                      ; 4900 _ 83. 45, E4, 01
?_243:  mov     eax, dword [ebp-1CH]                    ; 4904 _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 4907 _ 3B. 45, 10
        jl      ?_242                                   ; 490A _ 7C, C4
        mov     eax, dword [ebp+8H]                     ; 490C _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 490F _ 8B. 55, 10
        add     edx, 4                                  ; 4912 _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 4915 _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 4918 _ 89. 4C 90, 04
        jmp     ?_247                                   ; 491C _ EB, 6C

?_244:  mov     eax, dword [ebp+8H]                     ; 491E _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 4921 _ 8B. 40, 10
        mov     dword [ebp-1CH], eax                    ; 4924 _ 89. 45, E4
        jmp     ?_246                                   ; 4927 _ EB, 3A

?_245:  mov     eax, dword [ebp-1CH]                    ; 4929 _ 8B. 45, E4
        lea     ebx, [eax+1H]                           ; 492C _ 8D. 58, 01
        mov     eax, dword [ebp+8H]                     ; 492F _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 4932 _ 8B. 55, E4
        add     edx, 4                                  ; 4935 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 4938 _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 493C _ 8B. 45, 08
        lea     edx, [ebx+4H]                           ; 493F _ 8D. 53, 04
        mov     dword [eax+edx*4+4H], ecx               ; 4942 _ 89. 4C 90, 04
        mov     eax, dword [ebp-1CH]                    ; 4946 _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 4949 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 494C _ 8B. 45, 08
        add     edx, 4                                  ; 494F _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 4952 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 4956 _ 8B. 55, E4
        add     edx, 1                                  ; 4959 _ 83. C2, 01
        mov     dword [eax+18H], edx                    ; 495C _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 495F _ 83. 6D, E4, 01
?_246:  mov     eax, dword [ebp-1CH]                    ; 4963 _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 4966 _ 3B. 45, 10
        jge     ?_245                                   ; 4969 _ 7D, BE
        mov     eax, dword [ebp+8H]                     ; 496B _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 496E _ 8B. 55, 10
        add     edx, 4                                  ; 4971 _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 4974 _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 4977 _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 497B _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 497E _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 4981 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 4984 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 4987 _ 89. 50, 10
?_247:  mov     eax, dword [ebp+0CH]                    ; 498A _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 498D _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 4990 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 4993 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 4996 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 4999 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 499C _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 499F _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 49A2 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 49A5 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 49A8 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 49AB _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 49AE _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 49B1 _ 8B. 40, 0C
        mov     esi, dword [ebp+10H]                    ; 49B4 _ 8B. 75, 10
        mov     dword [esp+14H], esi                    ; 49B7 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 49BB _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 49BF _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 49C3 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 49C7 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 49CB _ 8B. 45, 08
        mov     dword [esp], eax                        ; 49CE _ 89. 04 24
        call    _sheet_refreshmap                       ; 49D1 _ E8, 000003BE
        mov     eax, dword [ebp+0CH]                    ; 49D6 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 49D9 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 49DC _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 49DF _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 49E2 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 49E5 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 49E8 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 49EB _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 49EE _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 49F1 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 49F4 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 49F7 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 49FA _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 49FD _ 8B. 40, 0C
        mov     esi, dword [ebp+10H]                    ; 4A00 _ 8B. 75, 10
        mov     dword [esp+18H], esi                    ; 4A03 _ 89. 74 24, 18
        mov     esi, dword [ebp+10H]                    ; 4A07 _ 8B. 75, 10
        mov     dword [esp+14H], esi                    ; 4A0A _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 4A0E _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 4A12 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 4A16 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 4A1A _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4A1E _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4A21 _ 89. 04 24
        call    _sheet_refreshsub                       ; 4A24 _ E8, 000001E3
?_248:  nop                                             ; 4A29 _ 90
        add     esp, 60                                 ; 4A2A _ 83. C4, 3C
        pop     ebx                                     ; 4A2D _ 5B
        pop     esi                                     ; 4A2E _ 5E
        pop     edi                                     ; 4A2F _ 5F
        pop     ebp                                     ; 4A30 _ 5D
        ret                                             ; 4A31 _ C3
; _sheet_updown End of function

_sheet_refresh:; Function begin
        push    ebp                                     ; 4A32 _ 55
        mov     ebp, esp                                ; 4A33 _ 89. E5
        push    edi                                     ; 4A35 _ 57
        push    esi                                     ; 4A36 _ 56
        push    ebx                                     ; 4A37 _ 53
        sub     esp, 60                                 ; 4A38 _ 83. EC, 3C
        mov     eax, dword [ebp+0CH]                    ; 4A3B _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 4A3E _ 8B. 40, 18
        test    eax, eax                                ; 4A41 _ 85. C0
        js      ?_249                                   ; 4A43 _ 78, 61
        mov     eax, dword [ebp+0CH]                    ; 4A45 _ 8B. 45, 0C
        mov     edi, dword [eax+18H]                    ; 4A48 _ 8B. 78, 18
        mov     eax, dword [ebp+0CH]                    ; 4A4B _ 8B. 45, 0C
        mov     esi, dword [eax+18H]                    ; 4A4E _ 8B. 70, 18
        mov     eax, dword [ebp+0CH]                    ; 4A51 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 4A54 _ 8B. 50, 10
        mov     eax, dword [ebp+1CH]                    ; 4A57 _ 8B. 45, 1C
        lea     ebx, [edx+eax]                          ; 4A5A _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 4A5D _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 4A60 _ 8B. 50, 0C
        mov     eax, dword [ebp+18H]                    ; 4A63 _ 8B. 45, 18
        lea     ecx, [edx+eax]                          ; 4A66 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 4A69 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 4A6C _ 8B. 50, 10
        mov     eax, dword [ebp+14H]                    ; 4A6F _ 8B. 45, 14
        add     edx, eax                                ; 4A72 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 4A74 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 4A77 _ 8B. 40, 0C
        mov     dword [ebp-1CH], eax                    ; 4A7A _ 89. 45, E4
        mov     eax, dword [ebp+10H]                    ; 4A7D _ 8B. 45, 10
        add     eax, dword [ebp-1CH]                    ; 4A80 _ 03. 45, E4
        mov     dword [esp+18H], edi                    ; 4A83 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 4A87 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 4A8B _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 4A8F _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 4A93 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 4A97 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4A9B _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4A9E _ 89. 04 24
        call    _sheet_refreshsub                       ; 4AA1 _ E8, 00000166
?_249:  mov     eax, 0                                  ; 4AA6 _ B8, 00000000
        add     esp, 60                                 ; 4AAB _ 83. C4, 3C
        pop     ebx                                     ; 4AAE _ 5B
        pop     esi                                     ; 4AAF _ 5E
        pop     edi                                     ; 4AB0 _ 5F
        pop     ebp                                     ; 4AB1 _ 5D
        ret                                             ; 4AB2 _ C3
; _sheet_refresh End of function

_sheet_slide:; Function begin
        push    ebp                                     ; 4AB3 _ 55
        mov     ebp, esp                                ; 4AB4 _ 89. E5
        push    esi                                     ; 4AB6 _ 56
        push    ebx                                     ; 4AB7 _ 53
        sub     esp, 48                                 ; 4AB8 _ 83. EC, 30
        mov     eax, dword [ebp+0CH]                    ; 4ABB _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 4ABE _ 8B. 40, 0C
        mov     dword [ebp-0CH], eax                    ; 4AC1 _ 89. 45, F4
        mov     eax, dword [ebp+0CH]                    ; 4AC4 _ 8B. 45, 0C
        mov     eax, dword [eax+10H]                    ; 4AC7 _ 8B. 40, 10
        mov     dword [ebp-10H], eax                    ; 4ACA _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 4ACD _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 4AD0 _ 8B. 55, 10
        mov     dword [eax+0CH], edx                    ; 4AD3 _ 89. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 4AD6 _ 8B. 45, 0C
        mov     edx, dword [ebp+14H]                    ; 4AD9 _ 8B. 55, 14
        mov     dword [eax+10H], edx                    ; 4ADC _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 4ADF _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 4AE2 _ 8B. 40, 18
        test    eax, eax                                ; 4AE5 _ 85. C0
        js      ?_250                                   ; 4AE7 _ 0F 88, 00000117
        mov     eax, dword [ebp+0CH]                    ; 4AED _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 4AF0 _ 8B. 50, 08
        mov     eax, dword [ebp-10H]                    ; 4AF3 _ 8B. 45, F0
        add     edx, eax                                ; 4AF6 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 4AF8 _ 8B. 45, 0C
        mov     ecx, dword [eax+4H]                     ; 4AFB _ 8B. 48, 04
        mov     eax, dword [ebp-0CH]                    ; 4AFE _ 8B. 45, F4
        add     eax, ecx                                ; 4B01 _ 01. C8
        mov     dword [esp+14H], 0                      ; 4B03 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], edx                    ; 4B0B _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 4B0F _ 89. 44 24, 0C
        mov     eax, dword [ebp-10H]                    ; 4B13 _ 8B. 45, F0
        mov     dword [esp+8H], eax                     ; 4B16 _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 4B1A _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 4B1D _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4B21 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4B24 _ 89. 04 24
        call    _sheet_refreshmap                       ; 4B27 _ E8, 00000268
        mov     eax, dword [ebp+0CH]                    ; 4B2C _ 8B. 45, 0C
        mov     ecx, dword [eax+18H]                    ; 4B2F _ 8B. 48, 18
        mov     eax, dword [ebp+0CH]                    ; 4B32 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 4B35 _ 8B. 50, 08
        mov     eax, dword [ebp+14H]                    ; 4B38 _ 8B. 45, 14
        add     edx, eax                                ; 4B3B _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 4B3D _ 8B. 45, 0C
        mov     ebx, dword [eax+4H]                     ; 4B40 _ 8B. 58, 04
        mov     eax, dword [ebp+10H]                    ; 4B43 _ 8B. 45, 10
        add     eax, ebx                                ; 4B46 _ 01. D8
        mov     dword [esp+14H], ecx                    ; 4B48 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 4B4C _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 4B50 _ 89. 44 24, 0C
        mov     eax, dword [ebp+14H]                    ; 4B54 _ 8B. 45, 14
        mov     dword [esp+8H], eax                     ; 4B57 _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 4B5B _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 4B5E _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4B62 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4B65 _ 89. 04 24
        call    _sheet_refreshmap                       ; 4B68 _ E8, 00000227
        mov     eax, dword [ebp+0CH]                    ; 4B6D _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 4B70 _ 8B. 40, 18
        lea     ecx, [eax-1H]                           ; 4B73 _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 4B76 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 4B79 _ 8B. 50, 08
        mov     eax, dword [ebp-10H]                    ; 4B7C _ 8B. 45, F0
        add     edx, eax                                ; 4B7F _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 4B81 _ 8B. 45, 0C
        mov     ebx, dword [eax+4H]                     ; 4B84 _ 8B. 58, 04
        mov     eax, dword [ebp-0CH]                    ; 4B87 _ 8B. 45, F4
        add     eax, ebx                                ; 4B8A _ 01. D8
        mov     dword [esp+18H], ecx                    ; 4B8C _ 89. 4C 24, 18
        mov     dword [esp+14H], 0                      ; 4B90 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], edx                    ; 4B98 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 4B9C _ 89. 44 24, 0C
        mov     eax, dword [ebp-10H]                    ; 4BA0 _ 8B. 45, F0
        mov     dword [esp+8H], eax                     ; 4BA3 _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 4BA7 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 4BAA _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4BAE _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4BB1 _ 89. 04 24
        call    _sheet_refreshsub                       ; 4BB4 _ E8, 00000053
        mov     eax, dword [ebp+0CH]                    ; 4BB9 _ 8B. 45, 0C
        mov     ebx, dword [eax+18H]                    ; 4BBC _ 8B. 58, 18
        mov     eax, dword [ebp+0CH]                    ; 4BBF _ 8B. 45, 0C
        mov     ecx, dword [eax+18H]                    ; 4BC2 _ 8B. 48, 18
        mov     eax, dword [ebp+0CH]                    ; 4BC5 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 4BC8 _ 8B. 50, 08
        mov     eax, dword [ebp+14H]                    ; 4BCB _ 8B. 45, 14
        add     edx, eax                                ; 4BCE _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 4BD0 _ 8B. 45, 0C
        mov     esi, dword [eax+4H]                     ; 4BD3 _ 8B. 70, 04
        mov     eax, dword [ebp+10H]                    ; 4BD6 _ 8B. 45, 10
        add     eax, esi                                ; 4BD9 _ 01. F0
        mov     dword [esp+18H], ebx                    ; 4BDB _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 4BDF _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 4BE3 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 4BE7 _ 89. 44 24, 0C
        mov     eax, dword [ebp+14H]                    ; 4BEB _ 8B. 45, 14
        mov     dword [esp+8H], eax                     ; 4BEE _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 4BF2 _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 4BF5 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4BF9 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4BFC _ 89. 04 24
        call    _sheet_refreshsub                       ; 4BFF _ E8, 00000008
?_250:  nop                                             ; 4C04 _ 90
        add     esp, 48                                 ; 4C05 _ 83. C4, 30
        pop     ebx                                     ; 4C08 _ 5B
        pop     esi                                     ; 4C09 _ 5E
        pop     ebp                                     ; 4C0A _ 5D
        ret                                             ; 4C0B _ C3
; _sheet_slide End of function

_sheet_refreshsub:; Function begin
        push    ebp                                     ; 4C0C _ 55
        mov     ebp, esp                                ; 4C0D _ 89. E5
        sub     esp, 48                                 ; 4C0F _ 83. EC, 30
        mov     eax, dword [ebp+8H]                     ; 4C12 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 4C15 _ 8B. 00
        mov     dword [ebp-10H], eax                    ; 4C17 _ 89. 45, F0
        mov     eax, dword [ebp+8H]                     ; 4C1A _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 4C1D _ 8B. 40, 04
        mov     dword [ebp-14H], eax                    ; 4C20 _ 89. 45, EC
        cmp     dword [ebp+0CH], 0                      ; 4C23 _ 83. 7D, 0C, 00
        jns     ?_251                                   ; 4C27 _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 4C29 _ C7. 45, 0C, 00000000
?_251:  cmp     dword [ebp+10H], 8                      ; 4C30 _ 83. 7D, 10, 08
        jg      ?_252                                   ; 4C34 _ 7F, 07
        mov     dword [ebp+10H], 0                      ; 4C36 _ C7. 45, 10, 00000000
?_252:  mov     eax, dword [ebp+8H]                     ; 4C3D _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 4C40 _ 8B. 40, 08
        cmp     dword [ebp+14H], eax                    ; 4C43 _ 39. 45, 14
        jle     ?_253                                   ; 4C46 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 4C48 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 4C4B _ 8B. 40, 08
        mov     dword [ebp+14H], eax                    ; 4C4E _ 89. 45, 14
?_253:  mov     eax, dword [ebp+8H]                     ; 4C51 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 4C54 _ 8B. 40, 0C
        cmp     dword [ebp+18H], eax                    ; 4C57 _ 39. 45, 18
        jle     ?_254                                   ; 4C5A _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 4C5C _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 4C5F _ 8B. 40, 0C
        mov     dword [ebp+18H], eax                    ; 4C62 _ 89. 45, 18
?_254:  mov     eax, dword [ebp+1CH]                    ; 4C65 _ 8B. 45, 1C
        mov     dword [ebp-4H], eax                     ; 4C68 _ 89. 45, FC
        jmp     ?_261                                   ; 4C6B _ E9, 00000115

?_255:  mov     eax, dword [ebp+8H]                     ; 4C70 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 4C73 _ 8B. 55, FC
        add     edx, 4                                  ; 4C76 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 4C79 _ 8B. 44 90, 04
        mov     dword [ebp-18H], eax                    ; 4C7D _ 89. 45, E8
        mov     eax, dword [ebp-18H]                    ; 4C80 _ 8B. 45, E8
        mov     eax, dword [eax]                        ; 4C83 _ 8B. 00
        mov     dword [ebp-1CH], eax                    ; 4C85 _ 89. 45, E4
        mov     eax, dword [ebp+8H]                     ; 4C88 _ 8B. 45, 08
        add     eax, 1044                               ; 4C8B _ 05, 00000414
        mov     edx, dword [ebp-18H]                    ; 4C90 _ 8B. 55, E8
        sub     edx, eax                                ; 4C93 _ 29. C2
        mov     eax, edx                                ; 4C95 _ 89. D0
        sar     eax, 2                                  ; 4C97 _ C1. F8, 02
        imul    eax, eax, 954437177                     ; 4C9A _ 69. C0, 38E38E39
        mov     byte [ebp-1DH], al                      ; 4CA0 _ 88. 45, E3
        mov     dword [ebp-0CH], 0                      ; 4CA3 _ C7. 45, F4, 00000000
        jmp     ?_260                                   ; 4CAA _ E9, 000000C3

?_256:  mov     eax, dword [ebp-18H]                    ; 4CAF _ 8B. 45, E8
        mov     edx, dword [eax+10H]                    ; 4CB2 _ 8B. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 4CB5 _ 8B. 45, F4
        add     eax, edx                                ; 4CB8 _ 01. D0
        mov     dword [ebp-24H], eax                    ; 4CBA _ 89. 45, DC
        mov     dword [ebp-8H], 0                       ; 4CBD _ C7. 45, F8, 00000000
        jmp     ?_259                                   ; 4CC4 _ E9, 00000096

?_257:  mov     eax, dword [ebp-18H]                    ; 4CC9 _ 8B. 45, E8
        mov     edx, dword [eax+0CH]                    ; 4CCC _ 8B. 50, 0C
        mov     eax, dword [ebp-8H]                     ; 4CCF _ 8B. 45, F8
        add     eax, edx                                ; 4CD2 _ 01. D0
        mov     dword [ebp-28H], eax                    ; 4CD4 _ 89. 45, D8
        mov     eax, dword [ebp+0CH]                    ; 4CD7 _ 8B. 45, 0C
        cmp     eax, dword [ebp-28H]                    ; 4CDA _ 3B. 45, D8
        jg      ?_258                                   ; 4CDD _ 7F, 7C
        mov     eax, dword [ebp-28H]                    ; 4CDF _ 8B. 45, D8
        cmp     eax, dword [ebp+14H]                    ; 4CE2 _ 3B. 45, 14
        jge     ?_258                                   ; 4CE5 _ 7D, 74
        mov     eax, dword [ebp+10H]                    ; 4CE7 _ 8B. 45, 10
        cmp     eax, dword [ebp-24H]                    ; 4CEA _ 3B. 45, DC
        jg      ?_258                                   ; 4CED _ 7F, 6C
        mov     eax, dword [ebp-24H]                    ; 4CEF _ 8B. 45, DC
        cmp     eax, dword [ebp+18H]                    ; 4CF2 _ 3B. 45, 18
        jge     ?_258                                   ; 4CF5 _ 7D, 64
        mov     eax, dword [ebp-18H]                    ; 4CF7 _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 4CFA _ 8B. 40, 04
        imul    eax, dword [ebp-0CH]                    ; 4CFD _ 0F AF. 45, F4
        mov     edx, dword [ebp-8H]                     ; 4D01 _ 8B. 55, F8
        add     eax, edx                                ; 4D04 _ 01. D0
        mov     edx, eax                                ; 4D06 _ 89. C2
        mov     eax, dword [ebp-1CH]                    ; 4D08 _ 8B. 45, E4
        add     eax, edx                                ; 4D0B _ 01. D0
        movzx   eax, byte [eax]                         ; 4D0D _ 0F B6. 00
        mov     byte [ebp-29H], al                      ; 4D10 _ 88. 45, D7
        mov     eax, dword [ebp+8H]                     ; 4D13 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 4D16 _ 8B. 40, 08
        imul    eax, dword [ebp-24H]                    ; 4D19 _ 0F AF. 45, DC
        mov     edx, dword [ebp-28H]                    ; 4D1D _ 8B. 55, D8
        add     eax, edx                                ; 4D20 _ 01. D0
        mov     edx, eax                                ; 4D22 _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 4D24 _ 8B. 45, EC
        add     eax, edx                                ; 4D27 _ 01. D0
        movzx   eax, byte [eax]                         ; 4D29 _ 0F B6. 00
        cmp     byte [ebp-1DH], al                      ; 4D2C _ 38. 45, E3
        jnz     ?_258                                   ; 4D2F _ 75, 2A
        movzx   eax, byte [ebp-29H]                     ; 4D31 _ 0F B6. 45, D7
        mov     edx, dword [ebp-18H]                    ; 4D35 _ 8B. 55, E8
        mov     edx, dword [edx+14H]                    ; 4D38 _ 8B. 52, 14
        cmp     eax, edx                                ; 4D3B _ 39. D0
        jz      ?_258                                   ; 4D3D _ 74, 1C
        mov     eax, dword [ebp+8H]                     ; 4D3F _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 4D42 _ 8B. 40, 08
        imul    eax, dword [ebp-24H]                    ; 4D45 _ 0F AF. 45, DC
        mov     edx, dword [ebp-28H]                    ; 4D49 _ 8B. 55, D8
        add     eax, edx                                ; 4D4C _ 01. D0
        mov     edx, eax                                ; 4D4E _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 4D50 _ 8B. 45, F0
        add     edx, eax                                ; 4D53 _ 01. C2
        movzx   eax, byte [ebp-29H]                     ; 4D55 _ 0F B6. 45, D7
        mov     byte [edx], al                          ; 4D59 _ 88. 02
?_258:  add     dword [ebp-8H], 1                       ; 4D5B _ 83. 45, F8, 01
?_259:  mov     eax, dword [ebp-18H]                    ; 4D5F _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 4D62 _ 8B. 40, 04
        cmp     dword [ebp-8H], eax                     ; 4D65 _ 39. 45, F8
        jl      ?_257                                   ; 4D68 _ 0F 8C, FFFFFF5B
        add     dword [ebp-0CH], 1                      ; 4D6E _ 83. 45, F4, 01
?_260:  mov     eax, dword [ebp-18H]                    ; 4D72 _ 8B. 45, E8
        mov     eax, dword [eax+8H]                     ; 4D75 _ 8B. 40, 08
        cmp     dword [ebp-0CH], eax                    ; 4D78 _ 39. 45, F4
        jl      ?_256                                   ; 4D7B _ 0F 8C, FFFFFF2E
        add     dword [ebp-4H], 1                       ; 4D81 _ 83. 45, FC, 01
?_261:  mov     eax, dword [ebp-4H]                     ; 4D85 _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 4D88 _ 3B. 45, 20
        jle     ?_255                                   ; 4D8B _ 0F 8E, FFFFFEDF
        nop                                             ; 4D91 _ 90
        leave                                           ; 4D92 _ C9
        ret                                             ; 4D93 _ C3
; _sheet_refreshsub End of function

_sheet_refreshmap:; Function begin
        push    ebp                                     ; 4D94 _ 55
        mov     ebp, esp                                ; 4D95 _ 89. E5
        sub     esp, 64                                 ; 4D97 _ 83. EC, 40
        mov     eax, dword [ebp+8H]                     ; 4D9A _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 4D9D _ 8B. 40, 04
        mov     dword [ebp-20H], eax                    ; 4DA0 _ 89. 45, E0
        cmp     dword [ebp+0CH], 0                      ; 4DA3 _ 83. 7D, 0C, 00
        jns     ?_262                                   ; 4DA7 _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 4DA9 _ C7. 45, 0C, 00000000
?_262:  cmp     dword [ebp+10H], 0                      ; 4DB0 _ 83. 7D, 10, 00
        jns     ?_263                                   ; 4DB4 _ 79, 07
        mov     dword [ebp+10H], 0                      ; 4DB6 _ C7. 45, 10, 00000000
?_263:  mov     eax, dword [ebp+8H]                     ; 4DBD _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 4DC0 _ 8B. 40, 08
        cmp     dword [ebp+14H], eax                    ; 4DC3 _ 39. 45, 14
        jle     ?_264                                   ; 4DC6 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 4DC8 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 4DCB _ 8B. 40, 08
        mov     dword [ebp+14H], eax                    ; 4DCE _ 89. 45, 14
?_264:  mov     eax, dword [ebp+8H]                     ; 4DD1 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 4DD4 _ 8B. 40, 0C
        cmp     dword [ebp+18H], eax                    ; 4DD7 _ 39. 45, 18
        jle     ?_265                                   ; 4DDA _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 4DDC _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 4DDF _ 8B. 40, 0C
        mov     dword [ebp+18H], eax                    ; 4DE2 _ 89. 45, 18
?_265:  mov     eax, dword [ebp+1CH]                    ; 4DE5 _ 8B. 45, 1C
        mov     dword [ebp-4H], eax                     ; 4DE8 _ 89. 45, FC
        jmp     ?_276                                   ; 4DEB _ E9, 0000013F

?_266:  mov     eax, dword [ebp+8H]                     ; 4DF0 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 4DF3 _ 8B. 55, FC
        add     edx, 4                                  ; 4DF6 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 4DF9 _ 8B. 44 90, 04
        mov     dword [ebp-24H], eax                    ; 4DFD _ 89. 45, DC
        mov     eax, dword [ebp+8H]                     ; 4E00 _ 8B. 45, 08
        add     eax, 1044                               ; 4E03 _ 05, 00000414
        mov     edx, dword [ebp-24H]                    ; 4E08 _ 8B. 55, DC
        sub     edx, eax                                ; 4E0B _ 29. C2
        mov     eax, edx                                ; 4E0D _ 89. D0
        sar     eax, 2                                  ; 4E0F _ C1. F8, 02
        imul    eax, eax, 954437177                     ; 4E12 _ 69. C0, 38E38E39
        mov     byte [ebp-25H], al                      ; 4E18 _ 88. 45, DB
        mov     eax, dword [ebp-24H]                    ; 4E1B _ 8B. 45, DC
        mov     eax, dword [eax]                        ; 4E1E _ 8B. 00
        mov     dword [ebp-2CH], eax                    ; 4E20 _ 89. 45, D4
        mov     eax, dword [ebp-24H]                    ; 4E23 _ 8B. 45, DC
        mov     eax, dword [eax+0CH]                    ; 4E26 _ 8B. 40, 0C
        mov     edx, dword [ebp+0CH]                    ; 4E29 _ 8B. 55, 0C
        sub     edx, eax                                ; 4E2C _ 29. C2
        mov     eax, edx                                ; 4E2E _ 89. D0
        mov     dword [ebp-10H], eax                    ; 4E30 _ 89. 45, F0
        mov     eax, dword [ebp-24H]                    ; 4E33 _ 8B. 45, DC
        mov     eax, dword [eax+10H]                    ; 4E36 _ 8B. 40, 10
        mov     edx, dword [ebp+10H]                    ; 4E39 _ 8B. 55, 10
        sub     edx, eax                                ; 4E3C _ 29. C2
        mov     eax, edx                                ; 4E3E _ 89. D0
        mov     dword [ebp-14H], eax                    ; 4E40 _ 89. 45, EC
        mov     eax, dword [ebp-24H]                    ; 4E43 _ 8B. 45, DC
        mov     eax, dword [eax+0CH]                    ; 4E46 _ 8B. 40, 0C
        mov     edx, dword [ebp+14H]                    ; 4E49 _ 8B. 55, 14
        sub     edx, eax                                ; 4E4C _ 29. C2
        mov     eax, edx                                ; 4E4E _ 89. D0
        mov     dword [ebp-18H], eax                    ; 4E50 _ 89. 45, E8
        mov     eax, dword [ebp-24H]                    ; 4E53 _ 8B. 45, DC
        mov     eax, dword [eax+10H]                    ; 4E56 _ 8B. 40, 10
        mov     edx, dword [ebp+18H]                    ; 4E59 _ 8B. 55, 18
        sub     edx, eax                                ; 4E5C _ 29. C2
        mov     eax, edx                                ; 4E5E _ 89. D0
        mov     dword [ebp-1CH], eax                    ; 4E60 _ 89. 45, E4
        cmp     dword [ebp-10H], 0                      ; 4E63 _ 83. 7D, F0, 00
        jns     ?_267                                   ; 4E67 _ 79, 07
        mov     dword [ebp-10H], 0                      ; 4E69 _ C7. 45, F0, 00000000
?_267:  cmp     dword [ebp-14H], 0                      ; 4E70 _ 83. 7D, EC, 00
        jns     ?_268                                   ; 4E74 _ 79, 07
        mov     dword [ebp-14H], 0                      ; 4E76 _ C7. 45, EC, 00000000
?_268:  mov     eax, dword [ebp-24H]                    ; 4E7D _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 4E80 _ 8B. 40, 04
        cmp     dword [ebp-18H], eax                    ; 4E83 _ 39. 45, E8
        jle     ?_269                                   ; 4E86 _ 7E, 09
        mov     eax, dword [ebp-24H]                    ; 4E88 _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 4E8B _ 8B. 40, 04
        mov     dword [ebp-18H], eax                    ; 4E8E _ 89. 45, E8
?_269:  mov     eax, dword [ebp-24H]                    ; 4E91 _ 8B. 45, DC
        mov     eax, dword [eax+8H]                     ; 4E94 _ 8B. 40, 08
        cmp     dword [ebp-1CH], eax                    ; 4E97 _ 39. 45, E4
        jle     ?_270                                   ; 4E9A _ 7E, 09
        mov     eax, dword [ebp-24H]                    ; 4E9C _ 8B. 45, DC
        mov     eax, dword [eax+8H]                     ; 4E9F _ 8B. 40, 08
        mov     dword [ebp-1CH], eax                    ; 4EA2 _ 89. 45, E4
?_270:  mov     eax, dword [ebp-14H]                    ; 4EA5 _ 8B. 45, EC
        mov     dword [ebp-0CH], eax                    ; 4EA8 _ 89. 45, F4
        jmp     ?_275                                   ; 4EAB _ EB, 76

?_271:  mov     eax, dword [ebp-24H]                    ; 4EAD _ 8B. 45, DC
        mov     edx, dword [eax+10H]                    ; 4EB0 _ 8B. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 4EB3 _ 8B. 45, F4
        add     eax, edx                                ; 4EB6 _ 01. D0
        mov     dword [ebp-30H], eax                    ; 4EB8 _ 89. 45, D0
        mov     eax, dword [ebp-10H]                    ; 4EBB _ 8B. 45, F0
        mov     dword [ebp-8H], eax                     ; 4EBE _ 89. 45, F8
        jmp     ?_274                                   ; 4EC1 _ EB, 54

?_272:  mov     eax, dword [ebp-24H]                    ; 4EC3 _ 8B. 45, DC
        mov     edx, dword [eax+0CH]                    ; 4EC6 _ 8B. 50, 0C
        mov     eax, dword [ebp-8H]                     ; 4EC9 _ 8B. 45, F8
        add     eax, edx                                ; 4ECC _ 01. D0
        mov     dword [ebp-34H], eax                    ; 4ECE _ 89. 45, CC
        mov     eax, dword [ebp-24H]                    ; 4ED1 _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 4ED4 _ 8B. 40, 04
        imul    eax, dword [ebp-0CH]                    ; 4ED7 _ 0F AF. 45, F4
        mov     edx, dword [ebp-8H]                     ; 4EDB _ 8B. 55, F8
        add     eax, edx                                ; 4EDE _ 01. D0
        mov     edx, eax                                ; 4EE0 _ 89. C2
        mov     eax, dword [ebp-2CH]                    ; 4EE2 _ 8B. 45, D4
        add     eax, edx                                ; 4EE5 _ 01. D0
        movzx   eax, byte [eax]                         ; 4EE7 _ 0F B6. 00
        movzx   eax, al                                 ; 4EEA _ 0F B6. C0
        mov     edx, dword [ebp-24H]                    ; 4EED _ 8B. 55, DC
        mov     edx, dword [edx+14H]                    ; 4EF0 _ 8B. 52, 14
        cmp     eax, edx                                ; 4EF3 _ 39. D0
        jz      ?_273                                   ; 4EF5 _ 74, 1C
        mov     eax, dword [ebp+8H]                     ; 4EF7 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 4EFA _ 8B. 40, 08
        imul    eax, dword [ebp-30H]                    ; 4EFD _ 0F AF. 45, D0
        mov     edx, dword [ebp-34H]                    ; 4F01 _ 8B. 55, CC
        add     eax, edx                                ; 4F04 _ 01. D0
        mov     edx, eax                                ; 4F06 _ 89. C2
        mov     eax, dword [ebp-20H]                    ; 4F08 _ 8B. 45, E0
        add     edx, eax                                ; 4F0B _ 01. C2
        movzx   eax, byte [ebp-25H]                     ; 4F0D _ 0F B6. 45, DB
        mov     byte [edx], al                          ; 4F11 _ 88. 02
?_273:  add     dword [ebp-8H], 1                       ; 4F13 _ 83. 45, F8, 01
?_274:  mov     eax, dword [ebp-8H]                     ; 4F17 _ 8B. 45, F8
        cmp     eax, dword [ebp-18H]                    ; 4F1A _ 3B. 45, E8
        jl      ?_272                                   ; 4F1D _ 7C, A4
        add     dword [ebp-0CH], 1                      ; 4F1F _ 83. 45, F4, 01
?_275:  mov     eax, dword [ebp-0CH]                    ; 4F23 _ 8B. 45, F4
        cmp     eax, dword [ebp-1CH]                    ; 4F26 _ 3B. 45, E4
        jl      ?_271                                   ; 4F29 _ 7C, 82
        add     dword [ebp-4H], 1                       ; 4F2B _ 83. 45, FC, 01
?_276:  mov     eax, dword [ebp+8H]                     ; 4F2F _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 4F32 _ 8B. 40, 10
        cmp     dword [ebp-4H], eax                     ; 4F35 _ 39. 45, FC
        jle     ?_266                                   ; 4F38 _ 0F 8E, FFFFFEB2
        nop                                             ; 4F3E _ 90
        leave                                           ; 4F3F _ C9
        ret                                             ; 4F40 _ C3
; _sheet_refreshmap End of function

_sheet_free:; Function begin
        push    ebp                                     ; 4F41 _ 55
        mov     ebp, esp                                ; 4F42 _ 89. E5
        sub     esp, 24                                 ; 4F44 _ 83. EC, 18
        mov     eax, dword [ebp+0CH]                    ; 4F47 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 4F4A _ 8B. 40, 18
        test    eax, eax                                ; 4F4D _ 85. C0
        js      ?_277                                   ; 4F4F _ 78, 1A
        mov     dword [esp+8H], -1                      ; 4F51 _ C7. 44 24, 08, FFFFFFFF
        mov     eax, dword [ebp+0CH]                    ; 4F59 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 4F5C _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4F60 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4F63 _ 89. 04 24
        call    _sheet_updown                           ; 4F66 _ E8, FFFFF6EB
?_277:  mov     eax, dword [ebp+0CH]                    ; 4F6B _ 8B. 45, 0C
        mov     dword [eax+1CH], 0                      ; 4F6E _ C7. 40, 1C, 00000000
        nop                                             ; 4F75 _ 90
        leave                                           ; 4F76 _ C9
        ret                                             ; 4F77 _ C3
; _sheet_free End of function


_memman_init:
        push    ebp                                     ; 4F78 _ 55
        mov     ebp, esp                                ; 4F79 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 4F7B _ 8B. 45, 08
        mov     dword [eax], 0                          ; 4F7E _ C7. 00, 00000000
        mov     eax, dword [ebp+8H]                     ; 4F84 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 4F87 _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 4F8E _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 4F91 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 4F98 _ 8B. 45, 08
        mov     dword [eax+0CH], 0                      ; 4F9B _ C7. 40, 0C, 00000000
        nop                                             ; 4FA2 _ 90
        pop     ebp                                     ; 4FA3 _ 5D
        ret                                             ; 4FA4 _ C3

_memman_total:; Function begin
        push    ebp                                     ; 4FA5 _ 55
        mov     ebp, esp                                ; 4FA6 _ 89. E5
        sub     esp, 16                                 ; 4FA8 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 4FAB _ C7. 45, F8, 00000000
        mov     dword [ebp-4H], 0                       ; 4FB2 _ C7. 45, FC, 00000000
        jmp     ?_279                                   ; 4FB9 _ EB, 14

?_278:  mov     eax, dword [ebp+8H]                     ; 4FBB _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 4FBE _ 8B. 55, FC
        add     edx, 2                                  ; 4FC1 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 4FC4 _ 8B. 44 D0, 04
        add     dword [ebp-8H], eax                     ; 4FC8 _ 01. 45, F8
        add     dword [ebp-4H], 1                       ; 4FCB _ 83. 45, FC, 01
?_279:  mov     eax, dword [ebp+8H]                     ; 4FCF _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 4FD2 _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 4FD4 _ 39. 45, FC
        jc      ?_278                                   ; 4FD7 _ 72, E2
        mov     eax, dword [ebp-8H]                     ; 4FD9 _ 8B. 45, F8
        leave                                           ; 4FDC _ C9
        ret                                             ; 4FDD _ C3
; _memman_total End of function

_memman_alloc:; Function begin
        push    ebp                                     ; 4FDE _ 55
        mov     ebp, esp                                ; 4FDF _ 89. E5
        push    ebx                                     ; 4FE1 _ 53
        sub     esp, 16                                 ; 4FE2 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 4FE5 _ C7. 45, F8, 00000000
        jmp     ?_285                                   ; 4FEC _ E9, 000000BB

?_280:  mov     eax, dword [ebp+8H]                     ; 4FF1 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 4FF4 _ 8B. 55, F8
        add     edx, 2                                  ; 4FF7 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 4FFA _ 8B. 44 D0, 04
        cmp     dword [ebp+0CH], eax                    ; 4FFE _ 39. 45, 0C
        ja      ?_284                                   ; 5001 _ 0F 87, 000000A1
        mov     eax, dword [ebp+8H]                     ; 5007 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 500A _ 8B. 55, F8
        add     edx, 2                                  ; 500D _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 5010 _ 8B. 04 D0
        mov     dword [ebp-0CH], eax                    ; 5013 _ 89. 45, F4
        mov     eax, dword [ebp+8H]                     ; 5016 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 5019 _ 8B. 55, F8
        add     edx, 2                                  ; 501C _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 501F _ 8B. 14 D0
        mov     eax, dword [ebp+0CH]                    ; 5022 _ 8B. 45, 0C
        lea     ecx, [edx+eax]                          ; 5025 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 5028 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 502B _ 8B. 55, F8
        add     edx, 2                                  ; 502E _ 83. C2, 02
        mov     dword [eax+edx*8], ecx                  ; 5031 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 5034 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 5037 _ 8B. 55, F8
        add     edx, 2                                  ; 503A _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 503D _ 8B. 44 D0, 04
        sub     eax, dword [ebp+0CH]                    ; 5041 _ 2B. 45, 0C
        mov     edx, dword [ebp+8H]                     ; 5044 _ 8B. 55, 08
        mov     ecx, dword [ebp-8H]                     ; 5047 _ 8B. 4D, F8
        add     ecx, 2                                  ; 504A _ 83. C1, 02
        mov     dword [edx+ecx*8+4H], eax               ; 504D _ 89. 44 CA, 04
        mov     eax, dword [ebp+8H]                     ; 5051 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 5054 _ 8B. 55, F8
        add     edx, 2                                  ; 5057 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 505A _ 8B. 44 D0, 04
        test    eax, eax                                ; 505E _ 85. C0
        jnz     ?_283                                   ; 5060 _ 75, 41
        mov     eax, dword [ebp+8H]                     ; 5062 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 5065 _ 8B. 00
        lea     edx, [eax-1H]                           ; 5067 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 506A _ 8B. 45, 08
        mov     dword [eax], edx                        ; 506D _ 89. 10
        jmp     ?_282                                   ; 506F _ EB, 28

?_281:  mov     eax, dword [ebp-8H]                     ; 5071 _ 8B. 45, F8
        lea     edx, [eax+1H]                           ; 5074 _ 8D. 50, 01
        mov     ecx, dword [ebp+8H]                     ; 5077 _ 8B. 4D, 08
        mov     eax, dword [ebp-8H]                     ; 507A _ 8B. 45, F8
        lea     ebx, [eax+2H]                           ; 507D _ 8D. 58, 02
        mov     eax, dword [ebp+8H]                     ; 5080 _ 8B. 45, 08
        add     edx, 2                                  ; 5083 _ 83. C2, 02
        lea     edx, [eax+edx*8]                        ; 5086 _ 8D. 14 D0
        mov     eax, dword [edx]                        ; 5089 _ 8B. 02
        mov     edx, dword [edx+4H]                     ; 508B _ 8B. 52, 04
        mov     dword [ecx+ebx*8], eax                  ; 508E _ 89. 04 D9
        mov     dword [ecx+ebx*8+4H], edx               ; 5091 _ 89. 54 D9, 04
        add     dword [ebp-8H], 1                       ; 5095 _ 83. 45, F8, 01
?_282:  mov     eax, dword [ebp+8H]                     ; 5099 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 509C _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 509E _ 39. 45, F8
        jc      ?_281                                   ; 50A1 _ 72, CE
?_283:  mov     eax, dword [ebp-0CH]                    ; 50A3 _ 8B. 45, F4
        jmp     ?_286                                   ; 50A6 _ EB, 17

?_284:  add     dword [ebp-8H], 1                       ; 50A8 _ 83. 45, F8, 01
?_285:  mov     eax, dword [ebp+8H]                     ; 50AC _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 50AF _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 50B1 _ 39. 45, F8
        jc      ?_280                                   ; 50B4 _ 0F 82, FFFFFF37
        mov     eax, 0                                  ; 50BA _ B8, 00000000
?_286:  add     esp, 16                                 ; 50BF _ 83. C4, 10
        pop     ebx                                     ; 50C2 _ 5B
        pop     ebp                                     ; 50C3 _ 5D
        ret                                             ; 50C4 _ C3
; _memman_alloc End of function

_memman_free:; Function begin
        push    ebp                                     ; 50C5 _ 55
        mov     ebp, esp                                ; 50C6 _ 89. E5
        push    ebx                                     ; 50C8 _ 53
        sub     esp, 16                                 ; 50C9 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 50CC _ C7. 45, F8, 00000000
        jmp     ?_288                                   ; 50D3 _ EB, 15

?_287:  mov     eax, dword [ebp+8H]                     ; 50D5 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 50D8 _ 8B. 55, F8
        add     edx, 2                                  ; 50DB _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 50DE _ 8B. 04 D0
        cmp     dword [ebp+0CH], eax                    ; 50E1 _ 39. 45, 0C
        jc      ?_289                                   ; 50E4 _ 72, 10
        add     dword [ebp-8H], 1                       ; 50E6 _ 83. 45, F8, 01
?_288:  mov     eax, dword [ebp+8H]                     ; 50EA _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 50ED _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 50EF _ 39. 45, F8
        jl      ?_287                                   ; 50F2 _ 7C, E1
        jmp     ?_290                                   ; 50F4 _ EB, 01

?_289:  nop                                             ; 50F6 _ 90
?_290:  cmp     dword [ebp-8H], 0                       ; 50F7 _ 83. 7D, F8, 00
        jle     ?_294                                   ; 50FB _ 0F 8E, 000000F0
        mov     eax, dword [ebp-8H]                     ; 5101 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 5104 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 5107 _ 8B. 45, 08
        add     edx, 2                                  ; 510A _ 83. C2, 02
        mov     ecx, dword [eax+edx*8]                  ; 510D _ 8B. 0C D0
        mov     eax, dword [ebp-8H]                     ; 5110 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 5113 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 5116 _ 8B. 45, 08
        add     edx, 2                                  ; 5119 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 511C _ 8B. 44 D0, 04
        add     eax, ecx                                ; 5120 _ 01. C8
        cmp     dword [ebp+0CH], eax                    ; 5122 _ 39. 45, 0C
        jne     ?_294                                   ; 5125 _ 0F 85, 000000C6
        mov     eax, dword [ebp-8H]                     ; 512B _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 512E _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 5131 _ 8B. 45, 08
        add     edx, 2                                  ; 5134 _ 83. C2, 02
        mov     ecx, dword [eax+edx*8+4H]               ; 5137 _ 8B. 4C D0, 04
        mov     eax, dword [ebp-8H]                     ; 513B _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 513E _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 5141 _ 8B. 45, 10
        add     ecx, eax                                ; 5144 _ 01. C1
        mov     eax, dword [ebp+8H]                     ; 5146 _ 8B. 45, 08
        add     edx, 2                                  ; 5149 _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 514C _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 5150 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 5153 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 5155 _ 39. 45, F8
        jge     ?_293                                   ; 5158 _ 0F 8D, 00000089
        mov     edx, dword [ebp+0CH]                    ; 515E _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 5161 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 5164 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 5167 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 516A _ 8B. 55, F8
        add     edx, 2                                  ; 516D _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 5170 _ 8B. 04 D0
        cmp     ecx, eax                                ; 5173 _ 39. C1
        jnz     ?_293                                   ; 5175 _ 75, 70
        mov     eax, dword [ebp-8H]                     ; 5177 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 517A _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 517D _ 8B. 45, 08
        add     edx, 2                                  ; 5180 _ 83. C2, 02
        mov     ecx, dword [eax+edx*8+4H]               ; 5183 _ 8B. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 5187 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 518A _ 8B. 55, F8
        add     edx, 2                                  ; 518D _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 5190 _ 8B. 44 D0, 04
        mov     edx, dword [ebp-8H]                     ; 5194 _ 8B. 55, F8
        sub     edx, 1                                  ; 5197 _ 83. EA, 01
        add     ecx, eax                                ; 519A _ 01. C1
        mov     eax, dword [ebp+8H]                     ; 519C _ 8B. 45, 08
        add     edx, 2                                  ; 519F _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 51A2 _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 51A6 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 51A9 _ 8B. 00
        lea     edx, [eax-1H]                           ; 51AB _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 51AE _ 8B. 45, 08
        mov     dword [eax], edx                        ; 51B1 _ 89. 10
        jmp     ?_292                                   ; 51B3 _ EB, 28

?_291:  mov     eax, dword [ebp-8H]                     ; 51B5 _ 8B. 45, F8
        lea     edx, [eax+1H]                           ; 51B8 _ 8D. 50, 01
        mov     ecx, dword [ebp+8H]                     ; 51BB _ 8B. 4D, 08
        mov     eax, dword [ebp-8H]                     ; 51BE _ 8B. 45, F8
        lea     ebx, [eax+2H]                           ; 51C1 _ 8D. 58, 02
        mov     eax, dword [ebp+8H]                     ; 51C4 _ 8B. 45, 08
        add     edx, 2                                  ; 51C7 _ 83. C2, 02
        lea     edx, [eax+edx*8]                        ; 51CA _ 8D. 14 D0
        mov     eax, dword [edx]                        ; 51CD _ 8B. 02
        mov     edx, dword [edx+4H]                     ; 51CF _ 8B. 52, 04
        mov     dword [ecx+ebx*8], eax                  ; 51D2 _ 89. 04 D9
        mov     dword [ecx+ebx*8+4H], edx               ; 51D5 _ 89. 54 D9, 04
        add     dword [ebp-8H], 1                       ; 51D9 _ 83. 45, F8, 01
?_292:  mov     eax, dword [ebp+8H]                     ; 51DD _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 51E0 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 51E2 _ 39. 45, F8
        jl      ?_291                                   ; 51E5 _ 7C, CE
?_293:  mov     eax, 0                                  ; 51E7 _ B8, 00000000
        jmp     ?_300                                   ; 51EC _ E9, 0000011C

?_294:  mov     eax, dword [ebp+8H]                     ; 51F1 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 51F4 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 51F6 _ 39. 45, F8
        jge     ?_295                                   ; 51F9 _ 7D, 52
        mov     edx, dword [ebp+0CH]                    ; 51FB _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 51FE _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 5201 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 5204 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 5207 _ 8B. 55, F8
        add     edx, 2                                  ; 520A _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 520D _ 8B. 04 D0
        cmp     ecx, eax                                ; 5210 _ 39. C1
        jnz     ?_295                                   ; 5212 _ 75, 39
        mov     eax, dword [ebp+8H]                     ; 5214 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 5217 _ 8B. 55, F8
        add     edx, 2                                  ; 521A _ 83. C2, 02
        mov     ecx, dword [ebp+0CH]                    ; 521D _ 8B. 4D, 0C
        mov     dword [eax+edx*8], ecx                  ; 5220 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 5223 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 5226 _ 8B. 55, F8
        add     edx, 2                                  ; 5229 _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 522C _ 8B. 54 D0, 04
        mov     eax, dword [ebp+10H]                    ; 5230 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 5233 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 5236 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 5239 _ 8B. 55, F8
        add     edx, 2                                  ; 523C _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 523F _ 89. 4C D0, 04
        mov     eax, 0                                  ; 5243 _ B8, 00000000
        jmp     ?_300                                   ; 5248 _ E9, 000000C0

?_295:  mov     eax, dword [ebp+8H]                     ; 524D _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 5250 _ 8B. 00
        cmp     eax, 4095                               ; 5252 _ 3D, 00000FFF
        jg      ?_299                                   ; 5257 _ 0F 8F, 00000087
        mov     eax, dword [ebp+8H]                     ; 525D _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 5260 _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 5262 _ 89. 45, F4
        jmp     ?_297                                   ; 5265 _ EB, 28

?_296:  mov     eax, dword [ebp-0CH]                    ; 5267 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 526A _ 8D. 50, FF
        mov     ecx, dword [ebp+8H]                     ; 526D _ 8B. 4D, 08
        mov     eax, dword [ebp-0CH]                    ; 5270 _ 8B. 45, F4
        lea     ebx, [eax+2H]                           ; 5273 _ 8D. 58, 02
        mov     eax, dword [ebp+8H]                     ; 5276 _ 8B. 45, 08
        add     edx, 2                                  ; 5279 _ 83. C2, 02
        lea     edx, [eax+edx*8]                        ; 527C _ 8D. 14 D0
        mov     eax, dword [edx]                        ; 527F _ 8B. 02
        mov     edx, dword [edx+4H]                     ; 5281 _ 8B. 52, 04
        mov     dword [ecx+ebx*8], eax                  ; 5284 _ 89. 04 D9
        mov     dword [ecx+ebx*8+4H], edx               ; 5287 _ 89. 54 D9, 04
        sub     dword [ebp-0CH], 1                      ; 528B _ 83. 6D, F4, 01
?_297:  mov     eax, dword [ebp-0CH]                    ; 528F _ 8B. 45, F4
        cmp     eax, dword [ebp-8H]                     ; 5292 _ 3B. 45, F8
        jg      ?_296                                   ; 5295 _ 7F, D0
        mov     eax, dword [ebp+8H]                     ; 5297 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 529A _ 8B. 00
        lea     edx, [eax+1H]                           ; 529C _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 529F _ 8B. 45, 08
        mov     dword [eax], edx                        ; 52A2 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 52A4 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 52A7 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 52AA _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 52AD _ 8B. 00
        cmp     edx, eax                                ; 52AF _ 39. C2
        jge     ?_298                                   ; 52B1 _ 7D, 0B
        mov     eax, dword [ebp+8H]                     ; 52B3 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 52B6 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 52B8 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 52BB _ 89. 50, 04
?_298:  mov     eax, dword [ebp+8H]                     ; 52BE _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 52C1 _ 8B. 55, F8
        add     edx, 2                                  ; 52C4 _ 83. C2, 02
        mov     ecx, dword [ebp+0CH]                    ; 52C7 _ 8B. 4D, 0C
        mov     dword [eax+edx*8], ecx                  ; 52CA _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 52CD _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 52D0 _ 8B. 55, F8
        add     edx, 2                                  ; 52D3 _ 83. C2, 02
        mov     ecx, dword [ebp+10H]                    ; 52D6 _ 8B. 4D, 10
        mov     dword [eax+edx*8+4H], ecx               ; 52D9 _ 89. 4C D0, 04
        mov     eax, 0                                  ; 52DD _ B8, 00000000
        jmp     ?_300                                   ; 52E2 _ EB, 29

?_299:  mov     eax, dword [ebp+8H]                     ; 52E4 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 52E7 _ 8B. 40, 0C
        lea     edx, [eax+1H]                           ; 52EA _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 52ED _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 52F0 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 52F3 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 52F6 _ 8B. 40, 08
        mov     edx, eax                                ; 52F9 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 52FB _ 8B. 45, 10
        add     eax, edx                                ; 52FE _ 01. D0
        mov     edx, eax                                ; 5300 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 5302 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 5305 _ 89. 50, 08
        mov     eax, 4294967295                         ; 5308 _ B8, FFFFFFFF
?_300:  add     esp, 16                                 ; 530D _ 83. C4, 10
        pop     ebx                                     ; 5310 _ 5B
        pop     ebp                                     ; 5311 _ 5D
        ret                                             ; 5312 _ C3
; _memman_free End of function

_memman_alloc_4k:; Function begin
        push    ebp                                     ; 5313 _ 55
        mov     ebp, esp                                ; 5314 _ 89. E5
        sub     esp, 24                                 ; 5316 _ 83. EC, 18
        mov     eax, dword [ebp+0CH]                    ; 5319 _ 8B. 45, 0C
        add     eax, 4095                               ; 531C _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 5321 _ 25, FFFFF000
        mov     dword [ebp+0CH], eax                    ; 5326 _ 89. 45, 0C
        mov     eax, dword [ebp+0CH]                    ; 5329 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 532C _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 5330 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 5333 _ 89. 04 24
        call    _memman_alloc                           ; 5336 _ E8, FFFFFCA3
        mov     dword [ebp-4H], eax                     ; 533B _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 533E _ 8B. 45, FC
        leave                                           ; 5341 _ C9
        ret                                             ; 5342 _ C3
; _memman_alloc_4k End of function

_memman_free_4k:; Function begin
        push    ebp                                     ; 5343 _ 55
        mov     ebp, esp                                ; 5344 _ 89. E5
        sub     esp, 28                                 ; 5346 _ 83. EC, 1C
        mov     eax, dword [ebp+10H]                    ; 5349 _ 8B. 45, 10
        add     eax, 4095                               ; 534C _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 5351 _ 25, FFFFF000
        mov     dword [ebp+10H], eax                    ; 5356 _ 89. 45, 10
        mov     eax, dword [ebp+10H]                    ; 5359 _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 535C _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 5360 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 5363 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 5367 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 536A _ 89. 04 24
        call    _memman_free                            ; 536D _ E8, FFFFFD53
        mov     dword [ebp-4H], eax                     ; 5372 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 5375 _ 8B. 45, FC
        leave                                           ; 5378 _ C9
        ret                                             ; 5379 _ C3
; _memman_free_4k End of function

        nop                                             ; 537A _ 90
        nop                                             ; 537B _ 90


_fifo8_init:
        push    ebp                                     ; 537C _ 55
        mov     ebp, esp                                ; 537D _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 537F _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 5382 _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 5385 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 5388 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 538B _ 8B. 55, 10
        mov     dword [eax], edx                        ; 538E _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 5390 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 5393 _ 8B. 55, 0C
        mov     dword [eax+10H], edx                    ; 5396 _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 5399 _ 8B. 45, 08
        mov     dword [eax+14H], 0                      ; 539C _ C7. 40, 14, 00000000
        mov     eax, dword [ebp+8H]                     ; 53A3 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 53A6 _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 53AD _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 53B0 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 53B7 _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 53BA _ 8B. 55, 14
        mov     dword [eax+18H], edx                    ; 53BD _ 89. 50, 18
        nop                                             ; 53C0 _ 90
        pop     ebp                                     ; 53C1 _ 5D
        ret                                             ; 53C2 _ C3

_fifo8_put:; Function begin
        push    ebp                                     ; 53C3 _ 55
        mov     ebp, esp                                ; 53C4 _ 89. E5
        sub     esp, 40                                 ; 53C6 _ 83. EC, 28
        mov     eax, dword [ebp+0CH]                    ; 53C9 _ 8B. 45, 0C
        mov     byte [ebp-0CH], al                      ; 53CC _ 88. 45, F4
        cmp     dword [ebp+8H], 0                       ; 53CF _ 83. 7D, 08, 00
        jnz     ?_301                                   ; 53D3 _ 75, 0A
        mov     eax, 4294967295                         ; 53D5 _ B8, FFFFFFFF
        jmp     ?_305                                   ; 53DA _ E9, 000000AB

?_301:  mov     eax, dword [ebp+8H]                     ; 53DF _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 53E2 _ 8B. 40, 10
        test    eax, eax                                ; 53E5 _ 85. C0
        jnz     ?_302                                   ; 53E7 _ 75, 1B
        mov     eax, dword [ebp+8H]                     ; 53E9 _ 8B. 45, 08
        mov     eax, dword [eax+14H]                    ; 53EC _ 8B. 40, 14
        or      eax, 01H                                ; 53EF _ 83. C8, 01
        mov     edx, eax                                ; 53F2 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 53F4 _ 8B. 45, 08
        mov     dword [eax+14H], edx                    ; 53F7 _ 89. 50, 14
        mov     eax, 4294967295                         ; 53FA _ B8, FFFFFFFF
        jmp     ?_305                                   ; 53FF _ E9, 00000086

?_302:  mov     eax, dword [ebp+8H]                     ; 5404 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 5407 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 5409 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 540C _ 8B. 40, 04
        add     edx, eax                                ; 540F _ 01. C2
        movzx   eax, byte [ebp-0CH]                     ; 5411 _ 0F B6. 45, F4
        mov     byte [edx], al                          ; 5415 _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 5417 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 541A _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 541D _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 5420 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 5423 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 5426 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 5429 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 542C _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 542F _ 8B. 40, 0C
        cmp     edx, eax                                ; 5432 _ 39. C2
        jnz     ?_303                                   ; 5434 _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 5436 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 5439 _ C7. 40, 04, 00000000
?_303:  mov     eax, dword [ebp+8H]                     ; 5440 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 5443 _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 5446 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 5449 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 544C _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 544F _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 5452 _ 8B. 40, 18
        test    eax, eax                                ; 5455 _ 85. C0
        jz      ?_304                                   ; 5457 _ 74, 2C
        mov     eax, dword [ebp+8H]                     ; 5459 _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 545C _ 8B. 40, 18
        mov     eax, dword [eax+4H]                     ; 545F _ 8B. 40, 04
        cmp     eax, 2                                  ; 5462 _ 83. F8, 02
        jz      ?_304                                   ; 5465 _ 74, 1E
        mov     eax, dword [ebp+8H]                     ; 5467 _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 546A _ 8B. 40, 18
        mov     dword [esp+8H], 0                       ; 546D _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], -1                      ; 5475 _ C7. 44 24, 04, FFFFFFFF
        mov     dword [esp], eax                        ; 547D _ 89. 04 24
        call    _task_run                               ; 5480 _ E8, 00000000(rel)
?_304:  mov     eax, 0                                  ; 5485 _ B8, 00000000
?_305:  leave                                           ; 548A _ C9
        ret                                             ; 548B _ C3
; _fifo8_put End of function

_fifo8_get:; Function begin
        push    ebp                                     ; 548C _ 55
        mov     ebp, esp                                ; 548D _ 89. E5
        sub     esp, 16                                 ; 548F _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 5492 _ 8B. 45, 08
        mov     edx, dword [eax+10H]                    ; 5495 _ 8B. 50, 10
        mov     eax, dword [ebp+8H]                     ; 5498 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 549B _ 8B. 40, 0C
        cmp     edx, eax                                ; 549E _ 39. C2
        jnz     ?_306                                   ; 54A0 _ 75, 07
        mov     eax, 4294967295                         ; 54A2 _ B8, FFFFFFFF
        jmp     ?_308                                   ; 54A7 _ EB, 51

?_306:  mov     eax, dword [ebp+8H]                     ; 54A9 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 54AC _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 54AE _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 54B1 _ 8B. 40, 08
        add     eax, edx                                ; 54B4 _ 01. D0
        movzx   eax, byte [eax]                         ; 54B6 _ 0F B6. 00
        movzx   eax, al                                 ; 54B9 _ 0F B6. C0
        mov     dword [ebp-4H], eax                     ; 54BC _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 54BF _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 54C2 _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 54C5 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 54C8 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 54CB _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 54CE _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 54D1 _ 8B. 50, 08
        mov     eax, dword [ebp+8H]                     ; 54D4 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 54D7 _ 8B. 40, 0C
        cmp     edx, eax                                ; 54DA _ 39. C2
        jnz     ?_307                                   ; 54DC _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 54DE _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 54E1 _ C7. 40, 08, 00000000
?_307:  mov     eax, dword [ebp+8H]                     ; 54E8 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 54EB _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 54EE _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 54F1 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 54F4 _ 89. 50, 10
        mov     eax, dword [ebp-4H]                     ; 54F7 _ 8B. 45, FC
?_308:  leave                                           ; 54FA _ C9
        ret                                             ; 54FB _ C3
; _fifo8_get End of function

_fifo8_status:; Function begin
        push    ebp                                     ; 54FC _ 55
        mov     ebp, esp                                ; 54FD _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 54FF _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 5502 _ 8B. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 5505 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 5508 _ 8B. 40, 10
        sub     edx, eax                                ; 550B _ 29. C2
        mov     eax, edx                                ; 550D _ 89. D0
        pop     ebp                                     ; 550F _ 5D
        ret                                             ; 5510 _ C3
; _fifo8_status End of function

        nop                                             ; 5511 _ 90
        nop                                             ; 5512 _ 90
        nop                                             ; 5513 _ 90


_init_pit:
        push    ebp                                     ; 5514 _ 55
        mov     ebp, esp                                ; 5515 _ 89. E5
        sub     esp, 40                                 ; 5517 _ 83. EC, 28
        mov     dword [esp+4H], 52                      ; 551A _ C7. 44 24, 04, 00000034
        mov     dword [esp], 67                         ; 5522 _ C7. 04 24, 00000043
        call    _io_out8                                ; 5529 _ E8, 00000000(rel)
        mov     dword [esp+4H], 156                     ; 552E _ C7. 44 24, 04, 0000009C
        mov     dword [esp], 64                         ; 5536 _ C7. 04 24, 00000040
        call    _io_out8                                ; 553D _ E8, 00000000(rel)
        mov     dword [esp+4H], 46                      ; 5542 _ C7. 44 24, 04, 0000002E
        mov     dword [esp], 64                         ; 554A _ C7. 04 24, 00000040
        call    _io_out8                                ; 5551 _ E8, 00000000(rel)
        mov     dword [_timerctl], 0                         ; 5556 _ C7. 05, 00000000(d), 00000000
        mov     dword [ebp-0CH], 0                      ; 5560 _ C7. 45, F4, 00000000
        jmp     ?_310                                   ; 5567 _ EB, 26

?_309:  mov     eax, dword [ebp-0CH]                    ; 5569 _ 8B. 45, F4
        shl     eax, 4                                  ; 556C _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 556F _ 05, 00000008(d)
        mov     dword [eax], 0                          ; 5574 _ C7. 00, 00000000
        mov     eax, dword [ebp-0CH]                    ; 557A _ 8B. 45, F4
        shl     eax, 4                                  ; 557D _ C1. E0, 04
        add     eax, _timerctl+0CH                           ; 5580 _ 05, 0000000C(d)
        mov     dword [eax], 0                          ; 5585 _ C7. 00, 00000000
        add     dword [ebp-0CH], 1                      ; 558B _ 83. 45, F4, 01
?_310:  cmp     dword [ebp-0CH], 499                    ; 558F _ 81. 7D, F4, 000001F3
        jle     ?_309                                   ; 5596 _ 7E, D1
        nop                                             ; 5598 _ 90
        leave                                           ; 5599 _ C9
        ret                                             ; 559A _ C3

_timer_alloc:; Function begin
        push    ebp                                     ; 559B _ 55
        mov     ebp, esp                                ; 559C _ 89. E5
        sub     esp, 16                                 ; 559E _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 55A1 _ C7. 45, FC, 00000000
        jmp     ?_313                                   ; 55A8 _ EB, 36

?_311:  mov     eax, dword [ebp-4H]                     ; 55AA _ 8B. 45, FC
        shl     eax, 4                                  ; 55AD _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 55B0 _ 05, 00000008(d)
        mov     eax, dword [eax]                        ; 55B5 _ 8B. 00
        test    eax, eax                                ; 55B7 _ 85. C0
        jnz     ?_312                                   ; 55B9 _ 75, 21
        mov     eax, dword [ebp-4H]                     ; 55BB _ 8B. 45, FC
        shl     eax, 4                                  ; 55BE _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 55C1 _ 05, 00000008(d)
        mov     dword [eax], 1                          ; 55C6 _ C7. 00, 00000001
        mov     eax, dword [ebp-4H]                     ; 55CC _ 8B. 45, FC
        shl     eax, 4                                  ; 55CF _ C1. E0, 04
        add     eax, _timerctl                               ; 55D2 _ 05, 00000000(d)
        add     eax, 4                                  ; 55D7 _ 83. C0, 04
        jmp     ?_314                                   ; 55DA _ EB, 12

?_312:  add     dword [ebp-4H], 1                       ; 55DC _ 83. 45, FC, 01
?_313:  cmp     dword [ebp-4H], 499                     ; 55E0 _ 81. 7D, FC, 000001F3
        jle     ?_311                                   ; 55E7 _ 7E, C1
        mov     eax, 0                                  ; 55E9 _ B8, 00000000
?_314:  leave                                           ; 55EE _ C9
        ret                                             ; 55EF _ C3
; _timer_alloc End of function

_timer_free:; Function begin
        push    ebp                                     ; 55F0 _ 55
        mov     ebp, esp                                ; 55F1 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 55F3 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 55F6 _ C7. 40, 04, 00000000
        nop                                             ; 55FD _ 90
        pop     ebp                                     ; 55FE _ 5D
        ret                                             ; 55FF _ C3
; _timer_free End of function

_timer_init:; Function begin
        push    ebp                                     ; 5600 _ 55
        mov     ebp, esp                                ; 5601 _ 89. E5
        sub     esp, 4                                  ; 5603 _ 83. EC, 04
        mov     eax, dword [ebp+10H]                    ; 5606 _ 8B. 45, 10
        mov     byte [ebp-4H], al                       ; 5609 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 560C _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 560F _ 8B. 55, 0C
        mov     dword [eax+8H], edx                     ; 5612 _ 89. 50, 08
        mov     edx, dword [ebp+8H]                     ; 5615 _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 5618 _ 0F B6. 45, FC
        mov     byte [edx+0CH], al                      ; 561C _ 88. 42, 0C
        nop                                             ; 561F _ 90
        leave                                           ; 5620 _ C9
        ret                                             ; 5621 _ C3
; _timer_init End of function

_timer_settime:; Function begin
        push    ebp                                     ; 5622 _ 55
        mov     ebp, esp                                ; 5623 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 5625 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 5628 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 562B _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 562D _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 5630 _ C7. 40, 04, 00000002
        nop                                             ; 5637 _ 90
        pop     ebp                                     ; 5638 _ 5D
        ret                                             ; 5639 _ C3
; _timer_settime End of function

_intHandlerForTimer:; Function begin
        push    ebp                                     ; 563A _ 55
        mov     ebp, esp                                ; 563B _ 89. E5
        sub     esp, 40                                 ; 563D _ 83. EC, 28
        mov     dword [esp+4H], 32                      ; 5640 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 5648 _ C7. 04 24, 00000020
        call    _io_out8                                ; 564F _ E8, 00000000(rel)
        mov     eax, dword [_timerctl]                       ; 5654 _ A1, 00000000(d)
        add     eax, 1                                  ; 5659 _ 83. C0, 01
        mov     dword [_timerctl], eax                       ; 565C _ A3, 00000000(d)
        mov     byte [ebp-0DH], 0                       ; 5661 _ C6. 45, F3, 00
        mov     dword [ebp-0CH], 0                      ; 5665 _ C7. 45, F4, 00000000
        jmp     ?_318                                   ; 566C _ E9, 000000AA

?_315:  mov     eax, dword [ebp-0CH]                    ; 5671 _ 8B. 45, F4
        shl     eax, 4                                  ; 5674 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 5677 _ 05, 00000008(d)
        mov     eax, dword [eax]                        ; 567C _ 8B. 00
        cmp     eax, 2                                  ; 567E _ 83. F8, 02
        jne     ?_316                                   ; 5681 _ 0F 85, 00000085
        mov     eax, dword [ebp-0CH]                    ; 5687 _ 8B. 45, F4
        shl     eax, 4                                  ; 568A _ C1. E0, 04
        add     eax, _timerctl+4H                            ; 568D _ 05, 00000004(d)
        mov     eax, dword [eax]                        ; 5692 _ 8B. 00
        lea     edx, [eax-1H]                           ; 5694 _ 8D. 50, FF
        mov     eax, dword [ebp-0CH]                    ; 5697 _ 8B. 45, F4
        shl     eax, 4                                  ; 569A _ C1. E0, 04
        add     eax, _timerctl+4H                            ; 569D _ 05, 00000004(d)
        mov     dword [eax], edx                        ; 56A2 _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 56A4 _ 8B. 45, F4
        shl     eax, 4                                  ; 56A7 _ C1. E0, 04
        add     eax, _timerctl+4H                            ; 56AA _ 05, 00000004(d)
        mov     eax, dword [eax]                        ; 56AF _ 8B. 00
        test    eax, eax                                ; 56B1 _ 85. C0
        jnz     ?_316                                   ; 56B3 _ 75, 57
        mov     eax, dword [ebp-0CH]                    ; 56B5 _ 8B. 45, F4
        shl     eax, 4                                  ; 56B8 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 56BB _ 05, 00000008(d)
        mov     dword [eax], 1                          ; 56C0 _ C7. 00, 00000001
        mov     eax, dword [ebp-0CH]                    ; 56C6 _ 8B. 45, F4
        shl     eax, 4                                  ; 56C9 _ C1. E0, 04
        add     eax, _timerctl+10H                           ; 56CC _ 05, 00000010(d)
        movzx   eax, byte [eax]                         ; 56D1 _ 0F B6. 00
        movzx   eax, al                                 ; 56D4 _ 0F B6. C0
        mov     edx, dword [ebp-0CH]                    ; 56D7 _ 8B. 55, F4
        shl     edx, 4                                  ; 56DA _ C1. E2, 04
        add     edx, _timerctl+0CH                           ; 56DD _ 81. C2, 0000000C(d)
        mov     edx, dword [edx]                        ; 56E3 _ 8B. 12
        mov     dword [esp+4H], eax                     ; 56E5 _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 56E9 _ 89. 14 24
        call    _fifo8_put                              ; 56EC _ E8, 00000000(rel)
        mov     eax, dword [ebp-0CH]                    ; 56F1 _ 8B. 45, F4
        shl     eax, 4                                  ; 56F4 _ C1. E0, 04
        add     eax, _timerctl                               ; 56F7 _ 05, 00000000(d)
        lea     edx, [eax+4H]                           ; 56FC _ 8D. 50, 04
        mov     eax, dword [_task_timer]                ; 56FF _ A1, 00000000(d)
        cmp     edx, eax                                ; 5704 _ 39. C2
        jnz     ?_316                                   ; 5706 _ 75, 04
        mov     byte [ebp-0DH], 1                       ; 5708 _ C6. 45, F3, 01
?_316:  cmp     byte [ebp-0DH], 0                       ; 570C _ 80. 7D, F3, 00
        jz      ?_317                                   ; 5710 _ 74, 05
        call    _task_switch                            ; 5712 _ E8, 00000000(rel)
?_317:  add     dword [ebp-0CH], 1                      ; 5717 _ 83. 45, F4, 01
?_318:  cmp     dword [ebp-0CH], 499                    ; 571B _ 81. 7D, F4, 000001F3
        jle     ?_315                                   ; 5722 _ 0F 8E, FFFFFF49
        nop                                             ; 5728 _ 90
        leave                                           ; 5729 _ C9
        ret                                             ; 572A _ C3
; _intHandlerForTimer End of function

_getTimerController:; Function begin
        mov     eax, _timerctl                               ; 572B _ B8, 00000000(d)
        ret                                             ; 5730 _ C3
; _getTimerController End of function

        nop                                             ; 5731 _ 90
        nop                                             ; 5732 _ 90
        nop                                             ; 5733 _ 90


_set_segmdesc:
        push    ebp                                     ; 5734 _ 55
        mov     ebp, esp                                ; 5735 _ 89. E5
        cmp     dword [ebp+0CH], 1048575                ; 5737 _ 81. 7D, 0C, 000FFFFF
        jbe     ?_319                                   ; 573E _ 76, 10
        or      dword [ebp+14H], 8000H                  ; 5740 _ 81. 4D, 14, 00008000
        mov     eax, dword [ebp+0CH]                    ; 5747 _ 8B. 45, 0C
        shr     eax, 12                                 ; 574A _ C1. E8, 0C
        mov     dword [ebp+0CH], eax                    ; 574D _ 89. 45, 0C
?_319:  mov     eax, dword [ebp+0CH]                    ; 5750 _ 8B. 45, 0C
        mov     edx, eax                                ; 5753 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 5755 _ 8B. 45, 08
        mov     word [eax], dx                          ; 5758 _ 66: 89. 10
        mov     eax, dword [ebp+10H]                    ; 575B _ 8B. 45, 10
        mov     edx, eax                                ; 575E _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 5760 _ 8B. 45, 08
        mov     word [eax+2H], dx                       ; 5763 _ 66: 89. 50, 02
        mov     eax, dword [ebp+10H]                    ; 5767 _ 8B. 45, 10
        sar     eax, 16                                 ; 576A _ C1. F8, 10
        mov     edx, eax                                ; 576D _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 576F _ 8B. 45, 08
        mov     byte [eax+4H], dl                       ; 5772 _ 88. 50, 04
        mov     eax, dword [ebp+14H]                    ; 5775 _ 8B. 45, 14
        mov     edx, eax                                ; 5778 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 577A _ 8B. 45, 08
        mov     byte [eax+5H], dl                       ; 577D _ 88. 50, 05
        mov     eax, dword [ebp+0CH]                    ; 5780 _ 8B. 45, 0C
        shr     eax, 16                                 ; 5783 _ C1. E8, 10
        and     eax, 0FH                                ; 5786 _ 83. E0, 0F
        mov     edx, eax                                ; 5789 _ 89. C2
        mov     eax, dword [ebp+14H]                    ; 578B _ 8B. 45, 14
        sar     eax, 8                                  ; 578E _ C1. F8, 08
        and     eax, 0FFFFFFF0H                         ; 5791 _ 83. E0, F0
        or      eax, edx                                ; 5794 _ 09. D0
        mov     edx, eax                                ; 5796 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 5798 _ 8B. 45, 08
        mov     byte [eax+6H], dl                       ; 579B _ 88. 50, 06
        mov     eax, dword [ebp+10H]                    ; 579E _ 8B. 45, 10
        shr     eax, 24                                 ; 57A1 _ C1. E8, 18
        mov     edx, eax                                ; 57A4 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 57A6 _ 8B. 45, 08
        mov     byte [eax+7H], dl                       ; 57A9 _ 88. 50, 07
        nop                                             ; 57AC _ 90
        pop     ebp                                     ; 57AD _ 5D
        ret                                             ; 57AE _ C3

_get_taskctl:; Function begin
        mov     eax, dword [_taskctl]                   ; 57AF _ A1, 00000004(d)
        ret                                             ; 57B4 _ C3
; _get_taskctl End of function

_init_task_level:; Function begin
        push    ebp                                     ; 57B5 _ 55
        mov     ebp, esp                                ; 57B6 _ 89. E5
        sub     esp, 16                                 ; 57B8 _ 83. EC, 10
        mov     ecx, dword [_taskctl]                   ; 57BB _ 8B. 0D, 00000004(d)
        mov     edx, dword [ebp+8H]                     ; 57C1 _ 8B. 55, 08
        mov     eax, edx                                ; 57C4 _ 89. D0
        add     eax, eax                                ; 57C6 _ 01. C0
        add     eax, edx                                ; 57C8 _ 01. D0
        shl     eax, 4                                  ; 57CA _ C1. E0, 04
        add     eax, ecx                                ; 57CD _ 01. C8
        add     eax, 8                                  ; 57CF _ 83. C0, 08
        mov     dword [eax], 0                          ; 57D2 _ C7. 00, 00000000
        mov     ecx, dword [_taskctl]                   ; 57D8 _ 8B. 0D, 00000004(d)
        mov     edx, dword [ebp+8H]                     ; 57DE _ 8B. 55, 08
        mov     eax, edx                                ; 57E1 _ 89. D0
        add     eax, eax                                ; 57E3 _ 01. C0
        add     eax, edx                                ; 57E5 _ 01. D0
        shl     eax, 4                                  ; 57E7 _ C1. E0, 04
        add     eax, ecx                                ; 57EA _ 01. C8
        add     eax, 12                                 ; 57EC _ 83. C0, 0C
        mov     dword [eax], 0                          ; 57EF _ C7. 00, 00000000
        mov     dword [ebp-4H], 0                       ; 57F5 _ C7. 45, FC, 00000000
        jmp     ?_321                                   ; 57FC _ EB, 1B

?_320:  mov     edx, dword [_taskctl]                   ; 57FE _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-4H]                     ; 5804 _ 8B. 45, FC
        imul    eax, eax, 52                            ; 5807 _ 6B. C0, 34
        add     eax, edx                                ; 580A _ 01. D0
        add     eax, 16                                 ; 580C _ 83. C0, 10
        mov     dword [eax], 0                          ; 580F _ C7. 00, 00000000
        add     dword [ebp-4H], 1                       ; 5815 _ 83. 45, FC, 01
?_321:  cmp     dword [ebp-4H], 9                       ; 5819 _ 83. 7D, FC, 09
        jle     ?_320                                   ; 581D _ 7E, DF
        nop                                             ; 581F _ 90
        leave                                           ; 5820 _ C9
        ret                                             ; 5821 _ C3
; _init_task_level End of function

_task_init:; Function begin
        push    ebp                                     ; 5822 _ 55
        mov     ebp, esp                                ; 5823 _ 89. E5
        sub     esp, 40                                 ; 5825 _ 83. EC, 28
        call    _get_addr_gdt                           ; 5828 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 582D _ 89. 45, F0
        mov     dword [esp+4H], 3048                    ; 5830 _ C7. 44 24, 04, 00000BE8
        mov     eax, dword [ebp+8H]                     ; 5838 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 583B _ 89. 04 24
        call    _memman_alloc_4k                        ; 583E _ E8, 00000000(rel)
        mov     dword [_taskctl], eax                   ; 5843 _ A3, 00000004(d)
        mov     dword [ebp-0CH], 0                      ; 5848 _ C7. 45, F4, 00000000
        jmp     ?_323                                   ; 584F _ E9, 0000008E

?_322:  mov     edx, dword [_taskctl]                   ; 5854 _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-0CH]                    ; 585A _ 8B. 45, F4
        imul    eax, eax, 188                           ; 585D _ 69. C0, 000000BC
        add     eax, edx                                ; 5863 _ 01. D0
        add     eax, 492                                ; 5865 _ 05, 000001EC
        mov     dword [eax], 0                          ; 586A _ C7. 00, 00000000
        mov     eax, dword [ebp-0CH]                    ; 5870 _ 8B. 45, F4
        add     eax, 7                                  ; 5873 _ 83. C0, 07
        mov     ecx, dword [_taskctl]                   ; 5876 _ 8B. 0D, 00000004(d)
        lea     edx, [eax*8]                            ; 587C _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-0CH]                    ; 5883 _ 8B. 45, F4
        imul    eax, eax, 188                           ; 5886 _ 69. C0, 000000BC
        add     eax, ecx                                ; 588C _ 01. C8
        add     eax, 488                                ; 588E _ 05, 000001E8
        mov     dword [eax], edx                        ; 5893 _ 89. 10
        mov     edx, dword [_taskctl]                   ; 5895 _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-0CH]                    ; 589B _ 8B. 45, F4
        imul    eax, eax, 188                           ; 589E _ 69. C0, 000000BC
        add     eax, 512                                ; 58A4 _ 05, 00000200
        add     eax, edx                                ; 58A9 _ 01. D0
        add     eax, 20                                 ; 58AB _ 83. C0, 14
        mov     ecx, eax                                ; 58AE _ 89. C1
        mov     eax, dword [ebp-0CH]                    ; 58B0 _ 8B. 45, F4
        add     eax, 7                                  ; 58B3 _ 83. C0, 07
        lea     edx, [eax*8]                            ; 58B6 _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-10H]                    ; 58BD _ 8B. 45, F0
        add     eax, edx                                ; 58C0 _ 01. D0
        mov     dword [esp+0CH], 137                    ; 58C2 _ C7. 44 24, 0C, 00000089
        mov     dword [esp+8H], ecx                     ; 58CA _ 89. 4C 24, 08
        mov     dword [esp+4H], 103                     ; 58CE _ C7. 44 24, 04, 00000067
        mov     dword [esp], eax                        ; 58D6 _ 89. 04 24
        call    _set_segmdesc                           ; 58D9 _ E8, FFFFFE56
        add     dword [ebp-0CH], 1                      ; 58DE _ 83. 45, F4, 01
?_323:  cmp     dword [ebp-0CH], 9                      ; 58E2 _ 83. 7D, F4, 09
        jle     ?_322                                   ; 58E6 _ 0F 8E, FFFFFF68
        mov     dword [ebp-0CH], 0                      ; 58EC _ C7. 45, F4, 00000000
        jmp     ?_325                                   ; 58F3 _ EB, 0F

?_324:  mov     eax, dword [ebp-0CH]                    ; 58F5 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 58F8 _ 89. 04 24
        call    _init_task_level                        ; 58FB _ E8, FFFFFEB5
        add     dword [ebp-0CH], 1                      ; 5900 _ 83. 45, F4, 01
?_325:  cmp     dword [ebp-0CH], 9                      ; 5904 _ 83. 7D, F4, 09
        jle     ?_324                                   ; 5908 _ 7E, EB
        call    _task_alloc                             ; 590A _ E8, 00000066
        mov     dword [ebp-14H], eax                    ; 590F _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 5912 _ 8B. 45, EC
        mov     dword [eax+4H], 2                       ; 5915 _ C7. 40, 04, 00000002
        mov     eax, dword [ebp-14H]                    ; 591C _ 8B. 45, EC
        mov     dword [eax+8H], 100                     ; 591F _ C7. 40, 08, 00000064
        mov     eax, dword [ebp-14H]                    ; 5926 _ 8B. 45, EC
        mov     dword [eax+0CH], 0                      ; 5929 _ C7. 40, 0C, 00000000
        mov     eax, dword [ebp-14H]                    ; 5930 _ 8B. 45, EC
        mov     dword [esp], eax                        ; 5933 _ 89. 04 24
        call    _task_add                               ; 5936 _ E8, 00000358
        call    _task_switchsub                         ; 593B _ E8, 0000046C
        mov     eax, dword [ebp-14H]                    ; 5940 _ 8B. 45, EC
        mov     eax, dword [eax]                        ; 5943 _ 8B. 00
        mov     dword [esp], eax                        ; 5945 _ 89. 04 24
        call    _load_tr                                ; 5948 _ E8, 00000000(rel)
        call    _timer_alloc                            ; 594D _ E8, 00000000(rel)
        mov     dword [_task_timer], eax                       ; 5952 _ A3, 00000000(d)
        mov     eax, dword [ebp-14H]                    ; 5957 _ 8B. 45, EC
        mov     eax, dword [eax+8H]                     ; 595A _ 8B. 40, 08
        mov     edx, eax                                ; 595D _ 89. C2
        mov     eax, dword [_task_timer]                       ; 595F _ A1, 00000000(d)
        mov     dword [esp+4H], edx                     ; 5964 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 5968 _ 89. 04 24
        call    _timer_settime                          ; 596B _ E8, 00000000(rel)
        mov     eax, dword [ebp-14H]                    ; 5970 _ 8B. 45, EC
        leave                                           ; 5973 _ C9
        ret                                             ; 5974 _ C3
; _task_init End of function

_task_alloc:; Function begin
        push    ebp                                     ; 5975 _ 55
        mov     ebp, esp                                ; 5976 _ 89. E5
        sub     esp, 16                                 ; 5978 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 597B _ C7. 45, FC, 00000000
        jmp     ?_328                                   ; 5982 _ E9, 00000105

?_326:  mov     edx, dword [_taskctl]                   ; 5987 _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-4H]                     ; 598D _ 8B. 45, FC
        imul    eax, eax, 188                           ; 5990 _ 69. C0, 000000BC
        add     eax, edx                                ; 5996 _ 01. D0
        add     eax, 492                                ; 5998 _ 05, 000001EC
        mov     eax, dword [eax]                        ; 599D _ 8B. 00
        test    eax, eax                                ; 599F _ 85. C0
        jne     ?_327                                   ; 59A1 _ 0F 85, 000000E1
        mov     edx, dword [_taskctl]                   ; 59A7 _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-4H]                     ; 59AD _ 8B. 45, FC
        imul    eax, eax, 188                           ; 59B0 _ 69. C0, 000000BC
        add     eax, 480                                ; 59B6 _ 05, 000001E0
        add     eax, edx                                ; 59BB _ 01. D0
        add     eax, 8                                  ; 59BD _ 83. C0, 08
        mov     dword [ebp-8H], eax                     ; 59C0 _ 89. 45, F8
        mov     eax, dword [ebp-8H]                     ; 59C3 _ 8B. 45, F8
        mov     dword [eax+4H], 1                       ; 59C6 _ C7. 40, 04, 00000001
        mov     eax, dword [ebp-8H]                     ; 59CD _ 8B. 45, F8
        mov     dword [eax+50H], 514                    ; 59D0 _ C7. 40, 50, 00000202
        mov     eax, dword [ebp-8H]                     ; 59D7 _ 8B. 45, F8
        mov     dword [eax+54H], 0                      ; 59DA _ C7. 40, 54, 00000000
        mov     eax, dword [ebp-8H]                     ; 59E1 _ 8B. 45, F8
        mov     dword [eax+58H], 0                      ; 59E4 _ C7. 40, 58, 00000000
        mov     eax, dword [ebp-8H]                     ; 59EB _ 8B. 45, F8
        mov     dword [eax+5CH], 0                      ; 59EE _ C7. 40, 5C, 00000000
        mov     eax, dword [ebp-8H]                     ; 59F5 _ 8B. 45, F8
        mov     dword [eax+60H], 0                      ; 59F8 _ C7. 40, 60, 00000000
        mov     eax, dword [ebp-8H]                     ; 59FF _ 8B. 45, F8
        mov     dword [eax+68H], 0                      ; 5A02 _ C7. 40, 68, 00000000
        mov     eax, dword [ebp-4H]                     ; 5A09 _ 8B. 45, FC
        add     eax, 1                                  ; 5A0C _ 83. C0, 01
        shl     eax, 9                                  ; 5A0F _ C1. E0, 09
        mov     edx, eax                                ; 5A12 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 5A14 _ 8B. 45, F8
        mov     dword [eax+64H], edx                    ; 5A17 _ 89. 50, 64
        mov     eax, dword [ebp-8H]                     ; 5A1A _ 8B. 45, F8
        mov     dword [eax+6CH], 0                      ; 5A1D _ C7. 40, 6C, 00000000
        mov     eax, dword [ebp-8H]                     ; 5A24 _ 8B. 45, F8
        mov     dword [eax+70H], 0                      ; 5A27 _ C7. 40, 70, 00000000
        mov     eax, dword [ebp-8H]                     ; 5A2E _ 8B. 45, F8
        mov     dword [eax+74H], 0                      ; 5A31 _ C7. 40, 74, 00000000
        mov     eax, dword [ebp-8H]                     ; 5A38 _ 8B. 45, F8
        mov     dword [eax+80H], 0                      ; 5A3B _ C7. 80, 00000080, 00000000
        mov     eax, dword [ebp-8H]                     ; 5A45 _ 8B. 45, F8
        mov     dword [eax+84H], 0                      ; 5A48 _ C7. 80, 00000084, 00000000
        mov     eax, dword [ebp-8H]                     ; 5A52 _ 8B. 45, F8
        mov     dword [eax+88H], 0                      ; 5A55 _ C7. 80, 00000088, 00000000
        mov     eax, dword [ebp-8H]                     ; 5A5F _ 8B. 45, F8
        mov     dword [eax+34H], 0                      ; 5A62 _ C7. 40, 34, 00000000
        mov     eax, dword [ebp-8H]                     ; 5A69 _ 8B. 45, F8
        mov     dword [eax+8CH], 0                      ; 5A6C _ C7. 80, 0000008C, 00000000
        mov     eax, dword [ebp-8H]                     ; 5A76 _ 8B. 45, F8
        mov     dword [eax+90H], 1073741824             ; 5A79 _ C7. 80, 00000090, 40000000
        mov     eax, dword [ebp-8H]                     ; 5A83 _ 8B. 45, F8
        jmp     ?_329                                   ; 5A86 _ EB, 13

?_327:  add     dword [ebp-4H], 1                       ; 5A88 _ 83. 45, FC, 01
?_328:  cmp     dword [ebp-4H], 9                       ; 5A8C _ 83. 7D, FC, 09
        jle     ?_326                                   ; 5A90 _ 0F 8E, FFFFFEF1
        mov     eax, 0                                  ; 5A96 _ B8, 00000000
?_329:  leave                                           ; 5A9B _ C9
        ret                                             ; 5A9C _ C3
; _task_alloc End of function

_task_run:; Function begin
        push    ebp                                     ; 5A9D _ 55
        mov     ebp, esp                                ; 5A9E _ 89. E5
        sub     esp, 24                                 ; 5AA0 _ 83. EC, 18
        cmp     dword [ebp+0CH], 0                      ; 5AA3 _ 83. 7D, 0C, 00
        jns     ?_330                                   ; 5AA7 _ 79, 09
        mov     eax, dword [ebp+8H]                     ; 5AA9 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 5AAC _ 8B. 40, 0C
        mov     dword [ebp+0CH], eax                    ; 5AAF _ 89. 45, 0C
?_330:  cmp     dword [ebp+10H], 0                      ; 5AB2 _ 83. 7D, 10, 00
        jle     ?_331                                   ; 5AB6 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 5AB8 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 5ABB _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 5ABE _ 89. 50, 08
?_331:  mov     eax, dword [ebp+8H]                     ; 5AC1 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 5AC4 _ 8B. 40, 04
        cmp     eax, 2                                  ; 5AC7 _ 83. F8, 02
        jnz     ?_332                                   ; 5ACA _ 75, 16
        mov     eax, dword [ebp+8H]                     ; 5ACC _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 5ACF _ 8B. 40, 0C
        cmp     dword [ebp+0CH], eax                    ; 5AD2 _ 39. 45, 0C
        jz      ?_332                                   ; 5AD5 _ 74, 0B
        mov     eax, dword [ebp+8H]                     ; 5AD7 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 5ADA _ 89. 04 24
        call    _task_remove                            ; 5ADD _ E8, 000001FD
?_332:  mov     eax, dword [ebp+8H]                     ; 5AE2 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 5AE5 _ 8B. 40, 04
        cmp     eax, 2                                  ; 5AE8 _ 83. F8, 02
        jz      ?_333                                   ; 5AEB _ 74, 14
        mov     eax, dword [ebp+8H]                     ; 5AED _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 5AF0 _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 5AF3 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 5AF6 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 5AF9 _ 89. 04 24
        call    _task_add                               ; 5AFC _ E8, 00000192
?_333:  mov     eax, dword [_taskctl]                   ; 5B01 _ A1, 00000004(d)
        mov     dword [eax+4H], 1                       ; 5B06 _ C7. 40, 04, 00000001
        nop                                             ; 5B0D _ 90
        leave                                           ; 5B0E _ C9
        ret                                             ; 5B0F _ C3
; _task_run End of function

_task_switch:; Function begin
        push    ebp                                     ; 5B10 _ 55
        mov     ebp, esp                                ; 5B11 _ 89. E5
        sub     esp, 40                                 ; 5B13 _ 83. EC, 28
        mov     ecx, dword [_taskctl]                   ; 5B16 _ 8B. 0D, 00000004(d)
        mov     eax, dword [_taskctl]                   ; 5B1C _ A1, 00000004(d)
        mov     edx, dword [eax]                        ; 5B21 _ 8B. 10
        mov     eax, edx                                ; 5B23 _ 89. D0
        add     eax, eax                                ; 5B25 _ 01. C0
        add     eax, edx                                ; 5B27 _ 01. D0
        shl     eax, 4                                  ; 5B29 _ C1. E0, 04
        add     eax, ecx                                ; 5B2C _ 01. C8
        add     eax, 8                                  ; 5B2E _ 83. C0, 08
        mov     dword [ebp-0CH], eax                    ; 5B31 _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 5B34 _ 8B. 45, F4
        mov     edx, dword [eax+4H]                     ; 5B37 _ 8B. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 5B3A _ 8B. 45, F4
        mov     eax, dword [eax+edx*4+8H]               ; 5B3D _ 8B. 44 90, 08
        mov     dword [ebp-10H], eax                    ; 5B41 _ 89. 45, F0
        mov     eax, dword [ebp-0CH]                    ; 5B44 _ 8B. 45, F4
        mov     eax, dword [eax+4H]                     ; 5B47 _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 5B4A _ 8D. 50, 01
        mov     eax, dword [ebp-0CH]                    ; 5B4D _ 8B. 45, F4
        mov     dword [eax+4H], edx                     ; 5B50 _ 89. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 5B53 _ 8B. 45, F4
        mov     edx, dword [eax+4H]                     ; 5B56 _ 8B. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 5B59 _ 8B. 45, F4
        mov     eax, dword [eax]                        ; 5B5C _ 8B. 00
        cmp     edx, eax                                ; 5B5E _ 39. C2
        jnz     ?_334                                   ; 5B60 _ 75, 0A
        mov     eax, dword [ebp-0CH]                    ; 5B62 _ 8B. 45, F4
        mov     dword [eax+4H], 0                       ; 5B65 _ C7. 40, 04, 00000000
?_334:  mov     eax, dword [_taskctl]                   ; 5B6C _ A1, 00000004(d)
        mov     eax, dword [eax+4H]                     ; 5B71 _ 8B. 40, 04
        test    eax, eax                                ; 5B74 _ 85. C0
        jz      ?_335                                   ; 5B76 _ 74, 23
        call    _task_switchsub                         ; 5B78 _ E8, 0000022F
        mov     ecx, dword [_taskctl]                   ; 5B7D _ 8B. 0D, 00000004(d)
        mov     eax, dword [_taskctl]                   ; 5B83 _ A1, 00000004(d)
        mov     edx, dword [eax]                        ; 5B88 _ 8B. 10
        mov     eax, edx                                ; 5B8A _ 89. D0
        add     eax, eax                                ; 5B8C _ 01. C0
        add     eax, edx                                ; 5B8E _ 01. D0
        shl     eax, 4                                  ; 5B90 _ C1. E0, 04
        add     eax, ecx                                ; 5B93 _ 01. C8
        add     eax, 8                                  ; 5B95 _ 83. C0, 08
        mov     dword [ebp-0CH], eax                    ; 5B98 _ 89. 45, F4
?_335:  mov     eax, dword [ebp-0CH]                    ; 5B9B _ 8B. 45, F4
        mov     edx, dword [eax+4H]                     ; 5B9E _ 8B. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 5BA1 _ 8B. 45, F4
        mov     eax, dword [eax+edx*4+8H]               ; 5BA4 _ 8B. 44 90, 08
        mov     dword [ebp-14H], eax                    ; 5BA8 _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 5BAB _ 8B. 45, EC
        mov     eax, dword [eax+8H]                     ; 5BAE _ 8B. 40, 08
        mov     edx, eax                                ; 5BB1 _ 89. C2
        mov     eax, dword [_task_timer]                       ; 5BB3 _ A1, 00000000(d)
        mov     dword [esp+4H], edx                     ; 5BB8 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 5BBC _ 89. 04 24
        call    _timer_settime                          ; 5BBF _ E8, 00000000(rel)
        mov     eax, dword [ebp-14H]                    ; 5BC4 _ 8B. 45, EC
        cmp     eax, dword [ebp-10H]                    ; 5BC7 _ 3B. 45, F0
        jz      ?_336                                   ; 5BCA _ 74, 1C
        cmp     dword [ebp-14H], 0                      ; 5BCC _ 83. 7D, EC, 00
        jz      ?_336                                   ; 5BD0 _ 74, 16
        mov     eax, dword [ebp-14H]                    ; 5BD2 _ 8B. 45, EC
        mov     eax, dword [eax]                        ; 5BD5 _ 8B. 00
        mov     dword [esp+4H], eax                     ; 5BD7 _ 89. 44 24, 04
        mov     dword [esp], 0                          ; 5BDB _ C7. 04 24, 00000000
        call    _farjmp                                 ; 5BE2 _ E8, 00000000(rel)
        nop                                             ; 5BE7 _ 90
?_336:  nop                                             ; 5BE8 _ 90
        leave                                           ; 5BE9 _ C9
        ret                                             ; 5BEA _ C3
; _task_switch End of function

_task_sleep:; Function begin
        push    ebp                                     ; 5BEB _ 55
        mov     ebp, esp                                ; 5BEC _ 89. E5
        sub     esp, 40                                 ; 5BEE _ 83. EC, 28
        mov     dword [ebp-10H], 0                      ; 5BF1 _ C7. 45, F0, 00000000
        mov     dword [ebp-0CH], 0                      ; 5BF8 _ C7. 45, F4, 00000000
        mov     eax, dword [ebp+8H]                     ; 5BFF _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 5C02 _ 8B. 40, 04
        cmp     eax, 2                                  ; 5C05 _ 83. F8, 02
        jnz     ?_337                                   ; 5C08 _ 75, 51
        call    _task_now                               ; 5C0A _ E8, 00000051
        mov     dword [ebp-10H], eax                    ; 5C0F _ 89. 45, F0
        mov     eax, dword [ebp+8H]                     ; 5C12 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 5C15 _ 89. 04 24
        call    _task_remove                            ; 5C18 _ E8, 000000C2
        mov     dword [ebp-0CH], 1                      ; 5C1D _ C7. 45, F4, 00000001
        mov     eax, dword [ebp+8H]                     ; 5C24 _ 8B. 45, 08
        cmp     eax, dword [ebp-10H]                    ; 5C27 _ 3B. 45, F0
        jnz     ?_337                                   ; 5C2A _ 75, 2F
        call    _task_switchsub                         ; 5C2C _ E8, 0000017B
        call    _task_now                               ; 5C31 _ E8, 0000002A
        mov     dword [ebp-10H], eax                    ; 5C36 _ 89. 45, F0
        mov     dword [ebp-0CH], 2                      ; 5C39 _ C7. 45, F4, 00000002
        cmp     dword [ebp-10H], 0                      ; 5C40 _ 83. 7D, F0, 00
        jz      ?_337                                   ; 5C44 _ 74, 15
        mov     eax, dword [ebp-10H]                    ; 5C46 _ 8B. 45, F0
        mov     eax, dword [eax]                        ; 5C49 _ 8B. 00
        mov     dword [esp+4H], eax                     ; 5C4B _ 89. 44 24, 04
        mov     dword [esp], 0                          ; 5C4F _ C7. 04 24, 00000000
        call    _farjmp                                 ; 5C56 _ E8, 00000000(rel)
?_337:  mov     eax, dword [ebp-0CH]                    ; 5C5B _ 8B. 45, F4
        leave                                           ; 5C5E _ C9
        ret                                             ; 5C5F _ C3
; _task_sleep End of function

_task_now:; Function begin
        push    ebp                                     ; 5C60 _ 55
        mov     ebp, esp                                ; 5C61 _ 89. E5
        sub     esp, 16                                 ; 5C63 _ 83. EC, 10
        mov     ecx, dword [_taskctl]                   ; 5C66 _ 8B. 0D, 00000004(d)
        mov     eax, dword [_taskctl]                   ; 5C6C _ A1, 00000004(d)
        mov     edx, dword [eax]                        ; 5C71 _ 8B. 10
        mov     eax, edx                                ; 5C73 _ 89. D0
        add     eax, eax                                ; 5C75 _ 01. C0
        add     eax, edx                                ; 5C77 _ 01. D0
        shl     eax, 4                                  ; 5C79 _ C1. E0, 04
        add     eax, ecx                                ; 5C7C _ 01. C8
        add     eax, 8                                  ; 5C7E _ 83. C0, 08
        mov     dword [ebp-4H], eax                     ; 5C81 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 5C84 _ 8B. 45, FC
        mov     edx, dword [eax+4H]                     ; 5C87 _ 8B. 50, 04
        mov     eax, dword [ebp-4H]                     ; 5C8A _ 8B. 45, FC
        mov     eax, dword [eax+edx*4+8H]               ; 5C8D _ 8B. 44 90, 08
        leave                                           ; 5C91 _ C9
        ret                                             ; 5C92 _ C3
; _task_now End of function

_task_add:; Function begin
        push    ebp                                     ; 5C93 _ 55
        mov     ebp, esp                                ; 5C94 _ 89. E5
        sub     esp, 16                                 ; 5C96 _ 83. EC, 10
        mov     ecx, dword [_taskctl]                   ; 5C99 _ 8B. 0D, 00000004(d)
        mov     eax, dword [ebp+8H]                     ; 5C9F _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 5CA2 _ 8B. 50, 0C
        mov     eax, edx                                ; 5CA5 _ 89. D0
        add     eax, eax                                ; 5CA7 _ 01. C0
        add     eax, edx                                ; 5CA9 _ 01. D0
        shl     eax, 4                                  ; 5CAB _ C1. E0, 04
        add     eax, ecx                                ; 5CAE _ 01. C8
        add     eax, 8                                  ; 5CB0 _ 83. C0, 08
        mov     dword [ebp-4H], eax                     ; 5CB3 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 5CB6 _ 8B. 45, FC
        mov     edx, dword [eax]                        ; 5CB9 _ 8B. 10
        mov     eax, dword [ebp-4H]                     ; 5CBB _ 8B. 45, FC
        mov     ecx, dword [ebp+8H]                     ; 5CBE _ 8B. 4D, 08
        mov     dword [eax+edx*4+8H], ecx               ; 5CC1 _ 89. 4C 90, 08
        mov     eax, dword [ebp-4H]                     ; 5CC5 _ 8B. 45, FC
        mov     eax, dword [eax]                        ; 5CC8 _ 8B. 00
        lea     edx, [eax+1H]                           ; 5CCA _ 8D. 50, 01
        mov     eax, dword [ebp-4H]                     ; 5CCD _ 8B. 45, FC
        mov     dword [eax], edx                        ; 5CD0 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 5CD2 _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 5CD5 _ C7. 40, 04, 00000002
        nop                                             ; 5CDC _ 90
        leave                                           ; 5CDD _ C9
        ret                                             ; 5CDE _ C3
; _task_add End of function

_task_remove:; Function begin
        push    ebp                                     ; 5CDF _ 55
        mov     ebp, esp                                ; 5CE0 _ 89. E5
        sub     esp, 16                                 ; 5CE2 _ 83. EC, 10
        mov     ecx, dword [_taskctl]                   ; 5CE5 _ 8B. 0D, 00000004(d)
        mov     eax, dword [ebp+8H]                     ; 5CEB _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 5CEE _ 8B. 50, 0C
        mov     eax, edx                                ; 5CF1 _ 89. D0
        add     eax, eax                                ; 5CF3 _ 01. C0
        add     eax, edx                                ; 5CF5 _ 01. D0
        shl     eax, 4                                  ; 5CF7 _ C1. E0, 04
        add     eax, ecx                                ; 5CFA _ 01. C8
        add     eax, 8                                  ; 5CFC _ 83. C0, 08
        mov     dword [ebp-8H], eax                     ; 5CFF _ 89. 45, F8
        mov     dword [ebp-4H], 0                       ; 5D02 _ C7. 45, FC, 00000000
        jmp     ?_340                                   ; 5D09 _ EB, 23

?_338:  mov     eax, dword [ebp-8H]                     ; 5D0B _ 8B. 45, F8
        mov     edx, dword [ebp-4H]                     ; 5D0E _ 8B. 55, FC
        mov     eax, dword [eax+edx*4+8H]               ; 5D11 _ 8B. 44 90, 08
        cmp     dword [ebp+8H], eax                     ; 5D15 _ 39. 45, 08
        jnz     ?_339                                   ; 5D18 _ 75, 10
        mov     eax, dword [ebp-8H]                     ; 5D1A _ 8B. 45, F8
        mov     edx, dword [ebp-4H]                     ; 5D1D _ 8B. 55, FC
        mov     dword [eax+edx*4+8H], 0                 ; 5D20 _ C7. 44 90, 08, 00000000
        jmp     ?_341                                   ; 5D28 _ EB, 0E

?_339:  add     dword [ebp-4H], 1                       ; 5D2A _ 83. 45, FC, 01
?_340:  mov     eax, dword [ebp-8H]                     ; 5D2E _ 8B. 45, F8
        mov     eax, dword [eax]                        ; 5D31 _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 5D33 _ 39. 45, FC
        jl      ?_338                                   ; 5D36 _ 7C, D3
?_341:  mov     eax, dword [ebp-8H]                     ; 5D38 _ 8B. 45, F8
        mov     eax, dword [eax]                        ; 5D3B _ 8B. 00
        lea     edx, [eax-1H]                           ; 5D3D _ 8D. 50, FF
        mov     eax, dword [ebp-8H]                     ; 5D40 _ 8B. 45, F8
        mov     dword [eax], edx                        ; 5D43 _ 89. 10
        mov     eax, dword [ebp-8H]                     ; 5D45 _ 8B. 45, F8
        mov     eax, dword [eax+4H]                     ; 5D48 _ 8B. 40, 04
        cmp     dword [ebp-4H], eax                     ; 5D4B _ 39. 45, FC
        jge     ?_342                                   ; 5D4E _ 7D, 0F
        mov     eax, dword [ebp-8H]                     ; 5D50 _ 8B. 45, F8
        mov     eax, dword [eax+4H]                     ; 5D53 _ 8B. 40, 04
        lea     edx, [eax-1H]                           ; 5D56 _ 8D. 50, FF
        mov     eax, dword [ebp-8H]                     ; 5D59 _ 8B. 45, F8
        mov     dword [eax+4H], edx                     ; 5D5C _ 89. 50, 04
?_342:  mov     eax, dword [ebp-8H]                     ; 5D5F _ 8B. 45, F8
        mov     edx, dword [eax+4H]                     ; 5D62 _ 8B. 50, 04
        mov     eax, dword [ebp-8H]                     ; 5D65 _ 8B. 45, F8
        mov     eax, dword [eax]                        ; 5D68 _ 8B. 00
        cmp     edx, eax                                ; 5D6A _ 39. C2
        jl      ?_343                                   ; 5D6C _ 7C, 0A
        mov     eax, dword [ebp-8H]                     ; 5D6E _ 8B. 45, F8
        mov     dword [eax+4H], 0                       ; 5D71 _ C7. 40, 04, 00000000
?_343:  mov     eax, dword [ebp+8H]                     ; 5D78 _ 8B. 45, 08
        mov     dword [eax+4H], 1                       ; 5D7B _ C7. 40, 04, 00000001
        jmp     ?_345                                   ; 5D82 _ EB, 1B

?_344:  mov     eax, dword [ebp-4H]                     ; 5D84 _ 8B. 45, FC
        lea     edx, [eax+1H]                           ; 5D87 _ 8D. 50, 01
        mov     eax, dword [ebp-8H]                     ; 5D8A _ 8B. 45, F8
        mov     ecx, dword [eax+edx*4+8H]               ; 5D8D _ 8B. 4C 90, 08
        mov     eax, dword [ebp-8H]                     ; 5D91 _ 8B. 45, F8
        mov     edx, dword [ebp-4H]                     ; 5D94 _ 8B. 55, FC
        mov     dword [eax+edx*4+8H], ecx               ; 5D97 _ 89. 4C 90, 08
        add     dword [ebp-4H], 1                       ; 5D9B _ 83. 45, FC, 01
?_345:  mov     eax, dword [ebp-8H]                     ; 5D9F _ 8B. 45, F8
        mov     eax, dword [eax]                        ; 5DA2 _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 5DA4 _ 39. 45, FC
        jl      ?_344                                   ; 5DA7 _ 7C, DB
        nop                                             ; 5DA9 _ 90
        leave                                           ; 5DAA _ C9
        ret                                             ; 5DAB _ C3
; _task_remove End of function

_task_switchsub:; Function begin
        push    ebp                                     ; 5DAC _ 55
        mov     ebp, esp                                ; 5DAD _ 89. E5
        sub     esp, 16                                 ; 5DAF _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 5DB2 _ C7. 45, FC, 00000000
        jmp     ?_347                                   ; 5DB9 _ EB, 21

?_346:  mov     ecx, dword [_taskctl]                   ; 5DBB _ 8B. 0D, 00000004(d)
        mov     edx, dword [ebp-4H]                     ; 5DC1 _ 8B. 55, FC
        mov     eax, edx                                ; 5DC4 _ 89. D0
        add     eax, eax                                ; 5DC6 _ 01. C0
        add     eax, edx                                ; 5DC8 _ 01. D0
        shl     eax, 4                                  ; 5DCA _ C1. E0, 04
        add     eax, ecx                                ; 5DCD _ 01. C8
        add     eax, 8                                  ; 5DCF _ 83. C0, 08
        mov     eax, dword [eax]                        ; 5DD2 _ 8B. 00
        test    eax, eax                                ; 5DD4 _ 85. C0
        jg      ?_348                                   ; 5DD6 _ 7F, 0C
        add     dword [ebp-4H], 1                       ; 5DD8 _ 83. 45, FC, 01
?_347:  cmp     dword [ebp-4H], 9                       ; 5DDC _ 83. 7D, FC, 09
        jle     ?_346                                   ; 5DE0 _ 7E, D9
        jmp     ?_349                                   ; 5DE2 _ EB, 01

?_348:  nop                                             ; 5DE4 _ 90
?_349:  mov     eax, dword [_taskctl]                   ; 5DE5 _ A1, 00000004(d)
        mov     edx, dword [ebp-4H]                     ; 5DEA _ 8B. 55, FC
        mov     dword [eax], edx                        ; 5DED _ 89. 10
        mov     eax, dword [_taskctl]                   ; 5DEF _ A1, 00000004(d)
        mov     dword [eax+4H], 0                       ; 5DF4 _ C7. 40, 04, 00000000
        nop                                             ; 5DFB _ 90
        leave                                           ; 5DFC _ C9
        ret                                             ; 5DFD _ C3
; _task_switchsub End of function

_send_message:; Function begin
        push    ebp                                     ; 5DFE _ 55
        mov     ebp, esp                                ; 5DFF _ 89. E5
        sub     esp, 24                                 ; 5E01 _ 83. EC, 18
        mov     eax, dword [ebp+10H]                    ; 5E04 _ 8B. 45, 10
        movzx   eax, al                                 ; 5E07 _ 0F B6. C0
        mov     edx, dword [ebp+0CH]                    ; 5E0A _ 8B. 55, 0C
        add     edx, 16                                 ; 5E0D _ 83. C2, 10
        mov     dword [esp+4H], eax                     ; 5E10 _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 5E14 _ 89. 14 24
        call    _fifo8_put                              ; 5E17 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 5E1C _ 8B. 45, 08
        mov     dword [esp], eax                        ; 5E1F _ 89. 04 24
        call    _task_sleep                             ; 5E22 _ E8, FFFFFDC4
        nop                                             ; 5E27 _ 90
        leave                                           ; 5E28 _ C9
        ret                                             ; 5E29 _ C3
; _send_message End of function

        nop                                             ; 5E2A _ 90
        nop                                             ; 5E2B _ 90


_strcmp:
        push    ebp                                     ; 5E2C _ 55
        mov     ebp, esp                                ; 5E2D _ 89. E5
        sub     esp, 16                                 ; 5E2F _ 83. EC, 10
        cmp     dword [ebp+8H], 0                       ; 5E32 _ 83. 7D, 08, 00
        jz      ?_350                                   ; 5E36 _ 74, 06
        cmp     dword [ebp+0CH], 0                      ; 5E38 _ 83. 7D, 0C, 00
        jnz     ?_351                                   ; 5E3C _ 75, 0A
?_350:  mov     eax, 0                                  ; 5E3E _ B8, 00000000
        jmp     ?_358                                   ; 5E43 _ E9, 0000009B

?_351:  mov     dword [ebp-4H], 0                       ; 5E48 _ C7. 45, FC, 00000000
        jmp     ?_354                                   ; 5E4F _ EB, 25

?_352:  mov     edx, dword [ebp-4H]                     ; 5E51 _ 8B. 55, FC
        mov     eax, dword [ebp+8H]                     ; 5E54 _ 8B. 45, 08
        add     eax, edx                                ; 5E57 _ 01. D0
        movzx   edx, byte [eax]                         ; 5E59 _ 0F B6. 10
        mov     ecx, dword [ebp-4H]                     ; 5E5C _ 8B. 4D, FC
        mov     eax, dword [ebp+0CH]                    ; 5E5F _ 8B. 45, 0C
        add     eax, ecx                                ; 5E62 _ 01. C8
        movzx   eax, byte [eax]                         ; 5E64 _ 0F B6. 00
        cmp     dl, al                                  ; 5E67 _ 38. C2
        jz      ?_353                                   ; 5E69 _ 74, 07
        mov     eax, 0                                  ; 5E6B _ B8, 00000000
        jmp     ?_358                                   ; 5E70 _ EB, 71

?_353:  add     dword [ebp-4H], 1                       ; 5E72 _ 83. 45, FC, 01
?_354:  mov     edx, dword [ebp-4H]                     ; 5E76 _ 8B. 55, FC
        mov     eax, dword [ebp+8H]                     ; 5E79 _ 8B. 45, 08
        add     eax, edx                                ; 5E7C _ 01. D0
        movzx   eax, byte [eax]                         ; 5E7E _ 0F B6. 00
        test    al, al                                  ; 5E81 _ 84. C0
        jz      ?_355                                   ; 5E83 _ 74, 0F
        mov     edx, dword [ebp-4H]                     ; 5E85 _ 8B. 55, FC
        mov     eax, dword [ebp+0CH]                    ; 5E88 _ 8B. 45, 0C
        add     eax, edx                                ; 5E8B _ 01. D0
        movzx   eax, byte [eax]                         ; 5E8D _ 0F B6. 00
        test    al, al                                  ; 5E90 _ 84. C0
        jnz     ?_352                                   ; 5E92 _ 75, BD
?_355:  mov     edx, dword [ebp-4H]                     ; 5E94 _ 8B. 55, FC
        mov     eax, dword [ebp+8H]                     ; 5E97 _ 8B. 45, 08
        add     eax, edx                                ; 5E9A _ 01. D0
        movzx   eax, byte [eax]                         ; 5E9C _ 0F B6. 00
        test    al, al                                  ; 5E9F _ 84. C0
        jnz     ?_356                                   ; 5EA1 _ 75, 16
        mov     edx, dword [ebp-4H]                     ; 5EA3 _ 8B. 55, FC
        mov     eax, dword [ebp+0CH]                    ; 5EA6 _ 8B. 45, 0C
        add     eax, edx                                ; 5EA9 _ 01. D0
        movzx   eax, byte [eax]                         ; 5EAB _ 0F B6. 00
        test    al, al                                  ; 5EAE _ 84. C0
        jz      ?_356                                   ; 5EB0 _ 74, 07
        mov     eax, 0                                  ; 5EB2 _ B8, 00000000
        jmp     ?_358                                   ; 5EB7 _ EB, 2A

?_356:  mov     edx, dword [ebp-4H]                     ; 5EB9 _ 8B. 55, FC
        mov     eax, dword [ebp+8H]                     ; 5EBC _ 8B. 45, 08
        add     eax, edx                                ; 5EBF _ 01. D0
        movzx   eax, byte [eax]                         ; 5EC1 _ 0F B6. 00
        test    al, al                                  ; 5EC4 _ 84. C0
        jz      ?_357                                   ; 5EC6 _ 74, 16
        mov     edx, dword [ebp-4H]                     ; 5EC8 _ 8B. 55, FC
        mov     eax, dword [ebp+0CH]                    ; 5ECB _ 8B. 45, 0C
        add     eax, edx                                ; 5ECE _ 01. D0
        movzx   eax, byte [eax]                         ; 5ED0 _ 0F B6. 00
        test    al, al                                  ; 5ED3 _ 84. C0
        jz      ?_357                                   ; 5ED5 _ 74, 07
        mov     eax, 0                                  ; 5ED7 _ B8, 00000000
        jmp     ?_358                                   ; 5EDC _ EB, 05

?_357:  mov     eax, 1                                  ; 5EDE _ B8, 00000001
?_358:  leave                                           ; 5EE3 _ C9
        ret                                             ; 5EE4 _ C3

        nop                                             ; 5EE5 _ 90
        nop                                             ; 5EE6 _ 90
        nop                                             ; 5EE7 _ 90



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

?_359:  db 00H                                          ; 0112 _ .

?_360:  db 00H, 00H, 00H, 00H, 00H                      ; 0113 _ .....

_mmx:   dd 0FFFFFFFFH                                   ; 0118 _ -1 

_mmy:   dd 0FFFFFFFFH                                   ; 011C _ -1 

_KEY_CONTROL:                                           ; byte
        db 1DH, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0120 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0128 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0130 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0138 _ ........

_table_rgb.2627:                                        ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0140 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0148 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0150 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0158 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 0160 _ ........
        db 00H, 84H, 00H, 84H, 84H, 84H, 84H, 84H       ; 0168 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0170 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0178 _ ........

_cursor.2687:                                           ; byte
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

_closebtn.2806:                                         ; byte
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


?_361:                                                  
        db 63H, 6FH, 75H, 6EH, 74H, 65H, 72H, 00H       ; 0000 _ counter.

?_362:                                                  ; byte
        db 74H, 61H, 73H, 6BH, 5FH, 61H, 00H            ; 0008 _ task_a.

?_363:                                                  ; byte
        db 63H, 6FH, 6EH, 73H, 6FH, 6CH, 65H, 00H       ; 000F _ console.

?_364:                                                  ; byte
        db 20H, 00H                                     ; 0017 _  .

?_365:                                                  ; byte
        db 66H, 72H, 65H, 65H, 20H, 00H                 ; 0019 _ free .

?_366:                                                  ; byte
        db 20H, 4BH, 42H, 00H                           ; 001F _  KB.

?_367:                                                  ; byte
        db 3EH, 00H                                     ; 0023 _ >.

?_368:                                                  ; byte
        db 61H, 62H, 63H, 2EH, 65H, 78H, 65H, 00H       ; 0025 _ abc.exe.

?_369:                                                  ; byte
        db 70H, 61H, 75H, 73H, 65H, 00H                 ; 002D _ pause.

?_370:                                                  ; byte
        db 6DH, 65H, 6DH, 00H                           ; 0033 _ mem.

?_371:                                                  ; byte
        db 63H, 6CH, 73H, 00H                           ; 0037 _ cls.

?_372:                                                  ; byte
        db 68H, 6CH, 74H, 00H                           ; 003B _ hlt.

?_373:                                                  ; byte
        db 64H, 69H, 72H, 00H                           ; 003F _ dir.

?_374:                                                  ; byte
        db 65H, 78H, 69H, 74H, 00H                      ; 0043 _ exit.

?_375:                                                  ; byte
        db 6BH, 65H, 79H, 62H, 6FH, 61H, 72H, 64H       ; 0048 _ keyboard
        db 00H                                          ; 0050 _ .

?_376:                                                  ; byte
        db 70H, 61H, 67H, 65H, 20H, 69H, 73H, 3AH       ; 0051 _ page is:
        db 20H, 00H                                     ; 0059 _  .

?_377:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 005B _ BaseAddr
        db 4CH, 3AH, 20H, 00H                           ; 0063 _ L: .

?_378:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0067 _ BaseAddr
        db 48H, 3AH, 20H, 00H                           ; 006F _ H: .

?_379:                                                  ; byte
        db 6CH, 65H, 6EH, 67H, 74H, 68H, 4CH, 6FH       ; 0073 _ lengthLo
        db 77H, 3AH, 20H, 00H                           ; 007B _ w: .

?_380:                                                  ; byte
        db 49H, 4EH, 54H, 20H, 4FH, 43H, 00H            ; 007F _ INT OC.

?_381:                                                  ; byte
        db 53H, 74H, 61H, 63H, 6BH, 20H, 45H, 78H       ; 0086 _ Stack Ex
        db 63H, 65H, 70H, 74H, 69H, 6FH, 6EH, 00H       ; 008E _ ception.

?_382:                                                  ; byte
        db 45H, 49H, 50H, 20H, 3DH, 20H, 00H            ; 0096 _ EIP = .

?_383:                                                  ; byte
        db 49H, 4EH, 54H, 20H, 30H, 44H, 20H, 00H       ; 009D _ INT 0D .

?_384:                                                  ; byte
        db 47H, 65H, 6EH, 65H, 72H, 61H, 6CH, 20H       ; 00A5 _ General 
        db 50H, 72H, 6FH, 74H, 65H, 63H, 74H, 65H       ; 00AD _ Protecte
        db 64H, 20H, 45H, 78H, 63H, 65H, 70H, 74H       ; 00B5 _ d Except
        db 69H, 6FH, 6EH, 00H, 00H, 00H, 00H            ; 00BD _ ion....


_g_hlt:                                                 
        resb    4                                       ; 0000

_key_shift:                                             ; dword
        resd    1                                       ; 0004

_caps_lock:                                             ; dword
        resd    1                                       ; 0008

_first_task_cons_selector:                              ; dword
        resd    1                                       ; 000C

_current_console:                                       ; dword
        resd    1                                       ; 0010

_bootInfo:                                              ; dword
        resd    1                                       ; 0014

?_385:  resw    1                                       ; 0018

?_386:  resw    1                                       ; 001A

_keyinfo:                                               ; byte
        resb    24                                      ; 001C

?_387:  resd    1                                       ; 0034

_mouseinfo:                                             ; byte
        resb    40                                      ; 0038

_keybuf:                                                ; byte
        resb    32                                      ; 0060

_mousebuf:                                              ; byte
        resb    128                                     ; 0080

_mdec:                                                  ; byte
        resb    12                                      ; 0100

?_388:  resd    1                                       ; 010C

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

_task_a.2367:                                           ; dword
        resd    1                                       ; 027C

_tss_a.2366:                                            ; byte
        resb    128                                     ; 0280

_tss_b.2365:                                            ; byte
        resb    104                                     ; 0300

_task_b.2355:                                           ; byte
        resb    12                                      ; 0368

_str.2735:                                              ; byte
        resb    1                                       ; 0374

?_389:  resb    9                                       ; 0375

?_390:  resb    2                                       ; 037E

_timerctl:                                              ; byte
        resb    8032                                    ; 0380

_task_timer:                                            ; byte
        resb    4                                       ; 22E0

_taskctl:                                               ; byte
        resb    4                                       ; 22E4


