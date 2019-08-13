; Disassembly of file: ckernel.o
; Tue Aug 13 13:28:13 2019
; Mode: 32 bits
; Syntax: YASM/NASM
; Instruction set: Pentium Pro







_launch:
        push    ebp                                     ; 0000 _ 55
        mov     ebp, esp                                ; 0001 _ 89. E5
        push    ebx                                     ; 0003 _ 53
        sub     esp, 132                                ; 0004 _ 81. EC, 00000084
        mov     dword [esp], _bootInfo                  ; 000A _ C7. 04 24, 0000001C(d)
        call    _initBootInfo                           ; 0011 _ E8, 00001FB0
        mov     eax, dword [_bootInfo]                  ; 0016 _ A1, 0000001C(d)
        mov     dword [ebp-1CH], eax                    ; 001B _ 89. 45, E4
        movzx   eax, word [?_330]                       ; 001E _ 0F B7. 05, 00000020(d)
        cwde                                            ; 0025 _ 98
        mov     dword [_xsize], eax                     ; 0026 _ A3, 0000013C(d)
        movzx   eax, word [?_331]                       ; 002B _ 0F B7. 05, 00000022(d)
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
        mov     dword [esp], _keyinfo                   ; 011B _ C7. 04 24, 00000024(d)
        call    _fifo8_init                             ; 0122 _ E8, 00000000(rel)
        mov     dword [esp+0CH], 0                      ; 0127 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], _mousebuf               ; 012F _ C7. 44 24, 08, 00000080(d)
        mov     dword [esp+4H], 128                     ; 0137 _ C7. 44 24, 04, 00000080
        mov     dword [esp], _mouseinfo                 ; 013F _ C7. 04 24, 00000040(d)
        call    _fifo8_init                             ; 0146 _ E8, 00000000(rel)
        call    _init_palette                           ; 014B _ E8, 00001F40
        call    _init_keyboard                          ; 0150 _ E8, 000024A9
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
        call    _init_screen8                           ; 0281 _ E8, 00001878
        mov     dword [esp+4H], 99                      ; 0286 _ C7. 44 24, 04, 00000063
        mov     dword [esp], _buf_mouse                 ; 028E _ C7. 04 24, 00000160(d)
        call    _init_mouse_cursor                      ; 0295 _ E8, 00002092
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
        mov     dword [esp+4H], ?_303                   ; 032B _ C7. 44 24, 04, 00000000(d)
        mov     dword [esp], eax                        ; 0333 _ 89. 04 24
        call    _message_box                            ; 0336 _ E8, 000026EE
        mov     dword [_shtMsgBox], eax                 ; 033B _ A3, 00000260(d)
        mov     edx, dword [_sht_back]                  ; 0340 _ 8B. 15, 00000268(d)
        mov     eax, dword [_shtctl]                    ; 0346 _ A1, 00000264(d)
        mov     dword [esp+8H], 0                       ; 034B _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 0353 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0357 _ 89. 04 24
        call    _sheet_updown                           ; 035A _ E8, 00000000(rel)
        mov     edx, dword [_sht_mouse]                 ; 035F _ 8B. 15, 0000026C(d)
        mov     eax, dword [_shtctl]                    ; 0365 _ A1, 00000264(d)
        mov     dword [esp+8H], 100                     ; 036A _ C7. 44 24, 08, 00000064
        mov     dword [esp+4H], edx                     ; 0372 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0376 _ 89. 04 24
        call    _sheet_updown                           ; 0379 _ E8, 00000000(rel)
        call    _io_sti                                 ; 037E _ E8, 00000000(rel)
        mov     dword [esp], _mdec                      ; 0383 _ C7. 04 24, 00000100(d)
        call    _enable_mouse                           ; 038A _ E8, 000022AA
        mov     eax, dword [_memman]                    ; 038F _ A1, 00000000(d)
        mov     dword [esp], eax                        ; 0394 _ 89. 04 24
        call    _task_init                              ; 0397 _ E8, 00000000(rel)
        mov     dword [_task_a.2333], eax               ; 039C _ A3, 00000284(d)
        mov     eax, dword [_task_a.2333]               ; 03A1 _ A1, 00000284(d)
        mov     dword [?_332], eax                      ; 03A6 _ A3, 0000003C(d)
        mov     eax, dword [_task_a.2333]               ; 03AB _ A1, 00000284(d)
        mov     dword [_task_main], eax                 ; 03B0 _ A3, 00000274(d)
        mov     eax, dword [_task_a.2333]               ; 03B5 _ A1, 00000284(d)
        mov     dword [esp+8H], 0                       ; 03BA _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], 0                       ; 03C2 _ C7. 44 24, 04, 00000000
        mov     dword [esp], eax                        ; 03CA _ 89. 04 24
        call    _task_run                               ; 03CD _ E8, 00000000(rel)
        call    _launch_console                         ; 03D2 _ E8, 000006F6
        mov     dword [ebp-34H], eax                    ; 03D7 _ 89. 45, CC
        mov     dword [ebp-38H], 0                      ; 03DA _ C7. 45, C8, 00000000
        mov     dword [ebp-3CH], 0                      ; 03E1 _ C7. 45, C4, 00000000
        mov     dword [ebp-40H], 0                      ; 03E8 _ C7. 45, C0, 00000000
        mov     dword [ebp-44H], 176                    ; 03EF _ C7. 45, BC, 000000B0
        mov     dword [ebp-48H], 0                      ; 03F6 _ C7. 45, B8, 00000000
        mov     dword [ebp-14H], 0                      ; 03FD _ C7. 45, EC, 00000000
        mov     dword [ebp-4CH], 0                      ; 0404 _ C7. 45, B4, 00000000
        mov     dword [ebp-50H], 0                      ; 040B _ C7. 45, B0, 00000000
?_001:  call    _io_cli                                 ; 0412 _ E8, 00000000(rel)
        mov     dword [esp], _keyinfo                   ; 0417 _ C7. 04 24, 00000024(d)
        call    _fifo8_status                           ; 041E _ E8, 00000000(rel)
        mov     ebx, eax                                ; 0423 _ 89. C3
        mov     dword [esp], _mouseinfo                 ; 0425 _ C7. 04 24, 00000040(d)
        call    _fifo8_status                           ; 042C _ E8, 00000000(rel)
        add     ebx, eax                                ; 0431 _ 01. C3
        mov     dword [esp], _timerinfo                 ; 0433 _ C7. 04 24, 00000110(d)
        call    _fifo8_status                           ; 043A _ E8, 00000000(rel)
        add     eax, ebx                                ; 043F _ 01. D8
        test    eax, eax                                ; 0441 _ 85. C0
        jnz     ?_002                                   ; 0443 _ 75, 0A
        call    _io_sti                                 ; 0445 _ E8, 00000000(rel)
        jmp     ?_009                                   ; 044A _ E9, 0000037C

?_002:  mov     dword [esp], _keyinfo                   ; 044F _ C7. 04 24, 00000024(d)
        call    _fifo8_status                           ; 0456 _ E8, 00000000(rel)
        test    eax, eax                                ; 045B _ 85. C0
        je      ?_008                                   ; 045D _ 0F 84, 00000337
        call    _io_sti                                 ; 0463 _ E8, 00000000(rel)
        mov     dword [esp], _keyinfo                   ; 0468 _ C7. 04 24, 00000024(d)
        call    _fifo8_get                              ; 046F _ E8, 00000000(rel)
        mov     dword [ebp-38H], eax                    ; 0474 _ 89. 45, C8
        mov     eax, dword [ebp-38H]                    ; 0477 _ 8B. 45, C8
        mov     dword [esp], eax                        ; 047A _ 89. 04 24
        call    _transferScanCode                       ; 047D _ E8, 0000050E
        cmp     dword [ebp-38H], 29                     ; 0482 _ 83. 7D, C8, 1D
        jnz     ?_003                                   ; 0486 _ 75, 44
        mov     eax, dword [_key_shift]                 ; 0488 _ A1, 00000000(d)
        test    eax, eax                                ; 048D _ 85. C0
        jz      ?_003                                   ; 048F _ 74, 3B
        mov     eax, dword [_task_cons]                 ; 0491 _ A1, 00000270(d)
        mov     eax, dword [eax+34H]                    ; 0496 _ 8B. 40, 34
        test    eax, eax                                ; 0499 _ 85. C0
        jz      ?_003                                   ; 049B _ 74, 2F
        mov     dword [esp], ?_304                      ; 049D _ C7. 04 24, 00000008(d)
        call    _cons_putstr                            ; 04A4 _ E8, 000014F3
        call    _io_cli                                 ; 04A9 _ E8, 00000000(rel)
        call    _get_addr_code32                        ; 04AE _ E8, 00000000(rel)
        mov     dword [ebp-54H], eax                    ; 04B3 _ 89. 45, AC
        mov     eax, _kill_process                      ; 04B6 _ B8, 00003695(d)
        mov     edx, dword [_task_cons]                 ; 04BB _ 8B. 15, 00000270(d)
        sub     eax, dword [ebp-54H]                    ; 04C1 _ 2B. 45, AC
        mov     dword [edx+4CH], eax                    ; 04C4 _ 89. 42, 4C
        call    _io_sti                                 ; 04C7 _ E8, 00000000(rel)
?_003:  cmp     dword [ebp-38H], 15                     ; 04CC _ 83. 7D, C8, 0F
        jne     ?_006                                   ; 04D0 _ 0F 85, 0000019A
        mov     dword [ebp-18H], -1                     ; 04D6 _ C7. 45, E8, FFFFFFFF
        cmp     dword [ebp-14H], 0                      ; 04DD _ 83. 7D, EC, 00
        jne     ?_004                                   ; 04E1 _ 0F 85, 00000089
        mov     dword [ebp-14H], 1                      ; 04E7 _ C7. 45, EC, 00000001
        mov     edx, dword [_shtMsgBox]                 ; 04EE _ 8B. 15, 00000260(d)
        mov     eax, dword [_shtctl]                    ; 04F4 _ A1, 00000264(d)
        mov     dword [esp+0CH], 0                      ; 04F9 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], ?_305                   ; 0501 _ C7. 44 24, 08, 00000015(d)
        mov     dword [esp+4H], edx                     ; 0509 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 050D _ 89. 04 24
        call    _make_wtitle8                           ; 0510 _ E8, 000028C4
        mov     eax, dword [_shtctl]                    ; 0515 _ A1, 00000264(d)
        mov     dword [esp+0CH], 1                      ; 051A _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], ?_306                   ; 0522 _ C7. 44 24, 08, 0000001C(d)
        mov     edx, dword [ebp-34H]                    ; 052A _ 8B. 55, CC
        mov     dword [esp+4H], edx                     ; 052D _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0531 _ 89. 04 24
        call    _make_wtitle8                           ; 0534 _ E8, 000028A0
        mov     edx, dword [_shtMsgBox]                 ; 0539 _ 8B. 15, 00000260(d)
        mov     eax, dword [_shtctl]                    ; 053F _ A1, 00000264(d)
        mov     dword [esp+10H], 7                      ; 0544 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 28                     ; 054C _ C7. 44 24, 0C, 0000001C
        mov     ecx, dword [ebp-0CH]                    ; 0554 _ 8B. 4D, F4
        mov     dword [esp+8H], ecx                     ; 0557 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 055B _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 055F _ 89. 04 24
        call    _set_cursor                             ; 0562 _ E8, 00000356
        mov     dword [ebp-18H], 87                     ; 0567 _ C7. 45, E8, 00000057
        jmp     ?_005                                   ; 056E _ EB, 71

?_004:  mov     dword [ebp-14H], 0                      ; 0570 _ C7. 45, EC, 00000000
        mov     edx, dword [_shtMsgBox]                 ; 0577 _ 8B. 15, 00000260(d)
        mov     eax, dword [_shtctl]                    ; 057D _ A1, 00000264(d)
        mov     dword [esp+0CH], 1                      ; 0582 _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], ?_305                   ; 058A _ C7. 44 24, 08, 00000015(d)
        mov     dword [esp+4H], edx                     ; 0592 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0596 _ 89. 04 24
        call    _make_wtitle8                           ; 0599 _ E8, 0000283B
        mov     eax, dword [_shtctl]                    ; 059E _ A1, 00000264(d)
        mov     dword [esp+0CH], 0                      ; 05A3 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], ?_306                   ; 05AB _ C7. 44 24, 08, 0000001C(d)
        mov     edx, dword [ebp-34H]                    ; 05B3 _ 8B. 55, CC
        mov     dword [esp+4H], edx                     ; 05B6 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 05BA _ 89. 04 24
        call    _make_wtitle8                           ; 05BD _ E8, 00002817
        mov     eax, dword [_task_cons]                 ; 05C2 _ A1, 00000270(d)
        add     eax, 16                                 ; 05C7 _ 83. C0, 10
        mov     dword [esp+4H], 88                      ; 05CA _ C7. 44 24, 04, 00000058
        mov     dword [esp], eax                        ; 05D2 _ 89. 04 24
        call    _fifo8_put                              ; 05D5 _ E8, 00000000(rel)
        mov     dword [ebp-18H], 88                     ; 05DA _ C7. 45, E8, 00000058
?_005:  mov     eax, dword [_shtMsgBox]                 ; 05E1 _ A1, 00000260(d)
        mov     ecx, dword [eax+4H]                     ; 05E6 _ 8B. 48, 04
        mov     edx, dword [_shtMsgBox]                 ; 05E9 _ 8B. 15, 00000260(d)
        mov     eax, dword [_shtctl]                    ; 05EF _ A1, 00000264(d)
        mov     dword [esp+14H], 21                     ; 05F4 _ C7. 44 24, 14, 00000015
        mov     dword [esp+10H], ecx                    ; 05FC _ 89. 4C 24, 10
        mov     dword [esp+0CH], 0                      ; 0600 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 0608 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 0610 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0614 _ 89. 04 24
        call    _sheet_refresh                          ; 0617 _ E8, 00000000(rel)
        mov     eax, dword [ebp-34H]                    ; 061C _ 8B. 45, CC
        mov     edx, dword [eax+4H]                     ; 061F _ 8B. 50, 04
        mov     eax, dword [_shtctl]                    ; 0622 _ A1, 00000264(d)
        mov     dword [esp+14H], 21                     ; 0627 _ C7. 44 24, 14, 00000015
        mov     dword [esp+10H], edx                    ; 062F _ 89. 54 24, 10
        mov     dword [esp+0CH], 0                      ; 0633 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 063B _ C7. 44 24, 08, 00000000
        mov     edx, dword [ebp-34H]                    ; 0643 _ 8B. 55, CC
        mov     dword [esp+4H], edx                     ; 0646 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 064A _ 89. 04 24
        call    _sheet_refresh                          ; 064D _ E8, 00000000(rel)
        mov     edx, dword [_task_cons]                 ; 0652 _ 8B. 15, 00000270(d)
        mov     eax, dword [_task_a.2333]               ; 0658 _ A1, 00000284(d)
        mov     ecx, dword [ebp-18H]                    ; 065D _ 8B. 4D, E8
        mov     dword [esp+8H], ecx                     ; 0660 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 0664 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0668 _ 89. 04 24
        call    _send_message                           ; 066B _ E8, 00000000(rel)
?_006:  cmp     dword [ebp-14H], 0                      ; 0670 _ 83. 7D, EC, 00
        jne     ?_007                                   ; 0674 _ 0F 85, 000000D7
        mov     eax, dword [ebp-38H]                    ; 067A _ 8B. 45, C8
        mov     dword [esp], eax                        ; 067D _ 89. 04 24
        call    _transferScanCode                       ; 0680 _ E8, 0000030B
        test    al, al                                  ; 0685 _ 84. C0
        je      ?_009                                   ; 0687 _ 0F 84, 0000013E
        cmp     dword [ebp-0CH], 143                    ; 068D _ 81. 7D, F4, 0000008F
        jg      ?_009                                   ; 0694 _ 0F 8F, 00000131
        mov     edx, dword [_shtMsgBox]                 ; 069A _ 8B. 15, 00000260(d)
        mov     eax, dword [_shtctl]                    ; 06A0 _ A1, 00000264(d)
        mov     dword [esp+10H], 7                      ; 06A5 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 28                     ; 06AD _ C7. 44 24, 0C, 0000001C
        mov     ecx, dword [ebp-0CH]                    ; 06B5 _ 8B. 4D, F4
        mov     dword [esp+8H], ecx                     ; 06B8 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 06BC _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 06C0 _ 89. 04 24
        call    _set_cursor                             ; 06C3 _ E8, 000001F5
        mov     eax, dword [ebp-38H]                    ; 06C8 _ 8B. 45, C8
        mov     dword [esp], eax                        ; 06CB _ 89. 04 24
        call    _transferScanCode                       ; 06CE _ E8, 000002BD
        mov     byte [ebp-55H], al                      ; 06D3 _ 88. 45, AB
        movzx   eax, byte [ebp-55H]                     ; 06D6 _ 0F B6. 45, AB
        mov     byte [ebp-5EH], al                      ; 06DA _ 88. 45, A2
        mov     byte [ebp-5DH], 0                       ; 06DD _ C6. 45, A3, 00
        mov     ecx, dword [_shtMsgBox]                 ; 06E1 _ 8B. 0D, 00000260(d)
        mov     edx, dword [_shtctl]                    ; 06E7 _ 8B. 15, 00000264(d)
        lea     eax, [ebp-5EH]                          ; 06ED _ 8D. 45, A2
        mov     dword [esp+14H], eax                    ; 06F0 _ 89. 44 24, 14
        mov     dword [esp+10H], 0                      ; 06F4 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 28                     ; 06FC _ C7. 44 24, 0C, 0000001C
        mov     eax, dword [ebp-0CH]                    ; 0704 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 0707 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 070B _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 070F _ 89. 14 24
        call    _showString                             ; 0712 _ E8, 000018D0
        add     dword [ebp-0CH], 8                      ; 0717 _ 83. 45, F4, 08
        mov     dword [ebp-48H], 1                      ; 071B _ C7. 45, B8, 00000001
        mov     edx, dword [_shtMsgBox]                 ; 0722 _ 8B. 15, 00000260(d)
        mov     eax, dword [_shtctl]                    ; 0728 _ A1, 00000264(d)
        mov     ecx, dword [ebp-10H]                    ; 072D _ 8B. 4D, F0
        mov     dword [esp+10H], ecx                    ; 0730 _ 89. 4C 24, 10
        mov     dword [esp+0CH], 28                     ; 0734 _ C7. 44 24, 0C, 0000001C
        mov     ecx, dword [ebp-0CH]                    ; 073C _ 8B. 4D, F4
        mov     dword [esp+8H], ecx                     ; 073F _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 0743 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0747 _ 89. 04 24
        call    _set_cursor                             ; 074A _ E8, 0000016E
        jmp     ?_009                                   ; 074F _ EB, 7A

?_007:  mov     eax, dword [ebp-38H]                    ; 0751 _ 8B. 45, C8
        mov     dword [esp], eax                        ; 0754 _ 89. 04 24
        call    _isSpecialKey                           ; 0757 _ E8, 000001E8
        test    eax, eax                                ; 075C _ 85. C0
        jnz     ?_009                                   ; 075E _ 75, 6B
        mov     eax, dword [ebp-38H]                    ; 0760 _ 8B. 45, C8
        movzx   eax, al                                 ; 0763 _ 0F B6. C0
        mov     edx, dword [_task_cons]                 ; 0766 _ 8B. 15, 00000270(d)
        add     edx, 16                                 ; 076C _ 83. C2, 10
        mov     dword [esp+4H], eax                     ; 076F _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 0773 _ 89. 14 24
        call    _fifo8_put                              ; 0776 _ E8, 00000000(rel)
        mov     dword [esp], _keyinfo                   ; 077B _ C7. 04 24, 00000024(d)
        call    _fifo8_status                           ; 0782 _ E8, 00000000(rel)
        test    eax, eax                                ; 0787 _ 85. C0
        jnz     ?_009                                   ; 0789 _ 75, 40
        mov     eax, dword [_task_a.2333]               ; 078B _ A1, 00000284(d)
        mov     dword [esp], eax                        ; 0790 _ 89. 04 24
        call    _task_sleep                             ; 0793 _ E8, 00000000(rel)
        jmp     ?_009                                   ; 0798 _ EB, 31

?_008:  mov     dword [esp], _mouseinfo                 ; 079A _ C7. 04 24, 00000040(d)
        call    _fifo8_status                           ; 07A1 _ E8, 00000000(rel)
        test    eax, eax                                ; 07A6 _ 85. C0
        jz      ?_009                                   ; 07A8 _ 74, 21
        mov     ecx, dword [_sht_mouse]                 ; 07AA _ 8B. 0D, 0000026C(d)
        mov     edx, dword [_sht_back]                  ; 07B0 _ 8B. 15, 00000268(d)
        mov     eax, dword [_shtctl]                    ; 07B6 _ A1, 00000264(d)
        mov     dword [esp+8H], ecx                     ; 07BB _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 07BF _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 07C3 _ 89. 04 24
        call    _show_mouse_info                        ; 07C6 _ E8, 00001743
?_009:  mov     dword [esp], _timerinfo                 ; 07CB _ C7. 04 24, 00000110(d)
        call    _fifo8_status                           ; 07D2 _ E8, 00000000(rel)
        test    eax, eax                                ; 07D7 _ 85. C0
        je      ?_001                                   ; 07D9 _ 0F 84, FFFFFC33
        call    _io_sti                                 ; 07DF _ E8, 00000000(rel)
        mov     dword [esp], _timerinfo                 ; 07E4 _ C7. 04 24, 00000110(d)
        call    _fifo8_get                              ; 07EB _ E8, 00000000(rel)
        mov     dword [ebp-5CH], eax                    ; 07F0 _ 89. 45, A4
        cmp     dword [ebp-5CH], 0                      ; 07F3 _ 83. 7D, A4, 00
        jz      ?_010                                   ; 07F7 _ 74, 24
        mov     dword [esp+8H], 0                       ; 07F9 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], _timerinfo              ; 0801 _ C7. 44 24, 04, 00000110(d)
        mov     eax, dword [ebp-28H]                    ; 0809 _ 8B. 45, D8
        mov     dword [esp], eax                        ; 080C _ 89. 04 24
        call    _timer_init                             ; 080F _ E8, 00000000(rel)
        mov     dword [ebp-10H], 0                      ; 0814 _ C7. 45, F0, 00000000
        jmp     ?_011                                   ; 081B _ EB, 22

?_010:  mov     dword [esp+8H], 1                       ; 081D _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], _timerinfo              ; 0825 _ C7. 44 24, 04, 00000110(d)
        mov     eax, dword [ebp-28H]                    ; 082D _ 8B. 45, D8
        mov     dword [esp], eax                        ; 0830 _ 89. 04 24
        call    _timer_init                             ; 0833 _ E8, 00000000(rel)
        mov     dword [ebp-10H], 7                      ; 0838 _ C7. 45, F0, 00000007
?_011:  mov     dword [esp+4H], 50                      ; 083F _ C7. 44 24, 04, 00000032
        mov     eax, dword [ebp-28H]                    ; 0847 _ 8B. 45, D8
        mov     dword [esp], eax                        ; 084A _ 89. 04 24
        call    _timer_settime                          ; 084D _ E8, 00000000(rel)
        cmp     dword [ebp-14H], 0                      ; 0852 _ 83. 7D, EC, 00
        jnz     ?_012                                   ; 0856 _ 75, 32
        mov     edx, dword [_shtMsgBox]                 ; 0858 _ 8B. 15, 00000260(d)
        mov     eax, dword [_shtctl]                    ; 085E _ A1, 00000264(d)
        mov     ecx, dword [ebp-10H]                    ; 0863 _ 8B. 4D, F0
        mov     dword [esp+10H], ecx                    ; 0866 _ 89. 4C 24, 10
        mov     dword [esp+0CH], 28                     ; 086A _ C7. 44 24, 0C, 0000001C
        mov     ecx, dword [ebp-0CH]                    ; 0872 _ 8B. 4D, F4
        mov     dword [esp+8H], ecx                     ; 0875 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 0879 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 087D _ 89. 04 24
        call    _set_cursor                             ; 0880 _ E8, 00000038
        jmp     ?_001                                   ; 0885 _ E9, FFFFFB88

?_012:  ; Local function
        mov     edx, dword [_shtMsgBox]                 ; 088A _ 8B. 15, 00000260(d)
        mov     eax, dword [_shtctl]                    ; 0890 _ A1, 00000264(d)
        mov     dword [esp+10H], 7                      ; 0895 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 28                     ; 089D _ C7. 44 24, 0C, 0000001C
        mov     ecx, dword [ebp-0CH]                    ; 08A5 _ 8B. 4D, F4
        mov     dword [esp+8H], ecx                     ; 08A8 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 08AC _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 08B0 _ 89. 04 24
        call    _set_cursor                             ; 08B3 _ E8, 00000005
        jmp     ?_001                                   ; 08B8 _ E9, FFFFFB55

_set_cursor:; Function begin
        push    ebp                                     ; 08BD _ 55
        mov     ebp, esp                                ; 08BE _ 89. E5
        push    esi                                     ; 08C0 _ 56
        push    ebx                                     ; 08C1 _ 53
        sub     esp, 32                                 ; 08C2 _ 83. EC, 20
        mov     eax, dword [ebp+14H]                    ; 08C5 _ 8B. 45, 14
        lea     esi, [eax+0FH]                          ; 08C8 _ 8D. 70, 0F
        mov     eax, dword [ebp+10H]                    ; 08CB _ 8B. 45, 10
        lea     ebx, [eax+7H]                           ; 08CE _ 8D. 58, 07
        mov     eax, dword [ebp+18H]                    ; 08D1 _ 8B. 45, 18
        movzx   eax, al                                 ; 08D4 _ 0F B6. C0
        mov     edx, dword [ebp+0CH]                    ; 08D7 _ 8B. 55, 0C
        mov     ecx, dword [edx+4H]                     ; 08DA _ 8B. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 08DD _ 8B. 55, 0C
        mov     edx, dword [edx]                        ; 08E0 _ 8B. 12
        mov     dword [esp+18H], esi                    ; 08E2 _ 89. 74 24, 18
        mov     dword [esp+14H], ebx                    ; 08E6 _ 89. 5C 24, 14
        mov     ebx, dword [ebp+14H]                    ; 08EA _ 8B. 5D, 14
        mov     dword [esp+10H], ebx                    ; 08ED _ 89. 5C 24, 10
        mov     ebx, dword [ebp+10H]                    ; 08F1 _ 8B. 5D, 10
        mov     dword [esp+0CH], ebx                    ; 08F4 _ 89. 5C 24, 0C
        mov     dword [esp+8H], eax                     ; 08F8 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 08FC _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 0900 _ 89. 14 24
        call    _boxfill8                               ; 0903 _ E8, 00001853
        mov     eax, dword [ebp+14H]                    ; 0908 _ 8B. 45, 14
        lea     edx, [eax+10H]                          ; 090B _ 8D. 50, 10
        mov     eax, dword [ebp+10H]                    ; 090E _ 8B. 45, 10
        add     eax, 8                                  ; 0911 _ 83. C0, 08
        mov     dword [esp+14H], edx                    ; 0914 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 0918 _ 89. 44 24, 10
        mov     eax, dword [ebp+14H]                    ; 091C _ 8B. 45, 14
        mov     dword [esp+0CH], eax                    ; 091F _ 89. 44 24, 0C
        mov     eax, dword [ebp+10H]                    ; 0923 _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 0926 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 092A _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 092D _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0931 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0934 _ 89. 04 24
        call    _sheet_refresh                          ; 0937 _ E8, 00000000(rel)
        nop                                             ; 093C _ 90
        add     esp, 32                                 ; 093D _ 83. C4, 20
        pop     ebx                                     ; 0940 _ 5B
        pop     esi                                     ; 0941 _ 5E
        pop     ebp                                     ; 0942 _ 5D
        ret                                             ; 0943 _ C3
; _set_cursor End of function

_isSpecialKey:; Function begin
        push    ebp                                     ; 0944 _ 55
        mov     ebp, esp                                ; 0945 _ 89. E5
        sub     esp, 24                                 ; 0947 _ 83. EC, 18
        mov     eax, dword [ebp+8H]                     ; 094A _ 8B. 45, 08
        mov     dword [esp], eax                        ; 094D _ 89. 04 24
        call    _transferScanCode                       ; 0950 _ E8, 0000003B
        cmp     dword [ebp+8H], 58                      ; 0955 _ 83. 7D, 08, 3A
        jz      ?_013                                   ; 0959 _ 74, 27
        cmp     dword [ebp+8H], 186                     ; 095B _ 81. 7D, 08, 000000BA
        jz      ?_013                                   ; 0962 _ 74, 1E
        cmp     dword [ebp+8H], 42                      ; 0964 _ 83. 7D, 08, 2A
        jz      ?_013                                   ; 0968 _ 74, 18
        cmp     dword [ebp+8H], 54                      ; 096A _ 83. 7D, 08, 36
        jz      ?_013                                   ; 096E _ 74, 12
        cmp     dword [ebp+8H], 170                     ; 0970 _ 81. 7D, 08, 000000AA
        jz      ?_013                                   ; 0977 _ 74, 09
        cmp     dword [ebp+8H], 182                     ; 0979 _ 81. 7D, 08, 000000B6
        jnz     ?_014                                   ; 0980 _ 75, 07
?_013:  mov     eax, 1                                  ; 0982 _ B8, 00000001
        jmp     ?_015                                   ; 0987 _ EB, 05

?_014:  mov     eax, 0                                  ; 0989 _ B8, 00000000
?_015:  leave                                           ; 098E _ C9
        ret                                             ; 098F _ C3
; _isSpecialKey End of function

_transferScanCode:; Function begin
        push    ebp                                     ; 0990 _ 55
        mov     ebp, esp                                ; 0991 _ 89. E5
        sub     esp, 16                                 ; 0993 _ 83. EC, 10
        cmp     dword [ebp+8H], 42                      ; 0996 _ 83. 7D, 08, 2A
        jnz     ?_016                                   ; 099A _ 75, 0D
        mov     eax, dword [_key_shift]                 ; 099C _ A1, 00000000(d)
        or      eax, 01H                                ; 09A1 _ 83. C8, 01
        mov     dword [_key_shift], eax                 ; 09A4 _ A3, 00000000(d)
?_016:  cmp     dword [ebp+8H], 54                      ; 09A9 _ 83. 7D, 08, 36
        jnz     ?_017                                   ; 09AD _ 75, 0D
        mov     eax, dword [_key_shift]                 ; 09AF _ A1, 00000000(d)
        or      eax, 02H                                ; 09B4 _ 83. C8, 02
        mov     dword [_key_shift], eax                 ; 09B7 _ A3, 00000000(d)
?_017:  cmp     dword [ebp+8H], 170                     ; 09BC _ 81. 7D, 08, 000000AA
        jnz     ?_018                                   ; 09C3 _ 75, 0D
        mov     eax, dword [_key_shift]                 ; 09C5 _ A1, 00000000(d)
        and     eax, 0FFFFFFFEH                         ; 09CA _ 83. E0, FE
        mov     dword [_key_shift], eax                 ; 09CD _ A3, 00000000(d)
?_018:  cmp     dword [ebp+8H], 182                     ; 09D2 _ 81. 7D, 08, 000000B6
        jnz     ?_019                                   ; 09D9 _ 75, 0D
        mov     eax, dword [_key_shift]                 ; 09DB _ A1, 00000000(d)
        and     eax, 0FFFFFFFDH                         ; 09E0 _ 83. E0, FD
        mov     dword [_key_shift], eax                 ; 09E3 _ A3, 00000000(d)
?_019:  cmp     dword [ebp+8H], 58                      ; 09E8 _ 83. 7D, 08, 3A
        jnz     ?_021                                   ; 09EC _ 75, 1F
        mov     eax, dword [_caps_lock]                 ; 09EE _ A1, 00000004(d)
        test    eax, eax                                ; 09F3 _ 85. C0
        jnz     ?_020                                   ; 09F5 _ 75, 0C
        mov     dword [_caps_lock], 1                   ; 09F7 _ C7. 05, 00000004(d), 00000001
        jmp     ?_021                                   ; 0A01 _ EB, 0A

?_020:  mov     dword [_caps_lock], 0                   ; 0A03 _ C7. 05, 00000004(d), 00000000
?_021:  cmp     dword [ebp+8H], 42                      ; 0A0D _ 83. 7D, 08, 2A
        jz      ?_022                                   ; 0A11 _ 74, 24
        cmp     dword [ebp+8H], 54                      ; 0A13 _ 83. 7D, 08, 36
        jz      ?_022                                   ; 0A17 _ 74, 1E
        cmp     dword [ebp+8H], 170                     ; 0A19 _ 81. 7D, 08, 000000AA
        jz      ?_022                                   ; 0A20 _ 74, 15
        cmp     dword [ebp+8H], 182                     ; 0A22 _ 81. 7D, 08, 000000B6
        jz      ?_022                                   ; 0A29 _ 74, 0C
        cmp     dword [ebp+8H], 83                      ; 0A2B _ 83. 7D, 08, 53
        jg      ?_022                                   ; 0A2F _ 7F, 06
        cmp     dword [ebp+8H], 58                      ; 0A31 _ 83. 7D, 08, 3A
        jnz     ?_023                                   ; 0A35 _ 75, 0A
?_022:  mov     eax, 0                                  ; 0A37 _ B8, 00000000
        jmp     ?_028                                   ; 0A3C _ E9, 0000008A

?_023:  mov     byte [ebp-1H], 0                        ; 0A41 _ C6. 45, FF, 00
        mov     eax, dword [_key_shift]                 ; 0A45 _ A1, 00000000(d)
        test    eax, eax                                ; 0A4A _ 85. C0
        jnz     ?_024                                   ; 0A4C _ 75, 44
        cmp     dword [ebp+8H], 83                      ; 0A4E _ 83. 7D, 08, 53
        jg      ?_024                                   ; 0A52 _ 7F, 3E
        mov     eax, dword [ebp+8H]                     ; 0A54 _ 8B. 45, 08
        add     eax, _keytable                          ; 0A57 _ 05, 00000020(d)
        movzx   eax, byte [eax]                         ; 0A5C _ 0F B6. 00
        test    al, al                                  ; 0A5F _ 84. C0
        jz      ?_024                                   ; 0A61 _ 74, 2F
        mov     eax, dword [ebp+8H]                     ; 0A63 _ 8B. 45, 08
        add     eax, _keytable                          ; 0A66 _ 05, 00000020(d)
        movzx   eax, byte [eax]                         ; 0A6B _ 0F B6. 00
        mov     byte [ebp-1H], al                       ; 0A6E _ 88. 45, FF
        cmp     byte [ebp-1H], 64                       ; 0A71 _ 80. 7D, FF, 40
        jle     ?_026                                   ; 0A75 _ 7E, 4F
        cmp     byte [ebp-1H], 90                       ; 0A77 _ 80. 7D, FF, 5A
        jg      ?_026                                   ; 0A7B _ 7F, 49
        mov     eax, dword [_caps_lock]                 ; 0A7D _ A1, 00000004(d)
        test    eax, eax                                ; 0A82 _ 85. C0
        jnz     ?_026                                   ; 0A84 _ 75, 40
        movzx   eax, byte [ebp-1H]                      ; 0A86 _ 0F B6. 45, FF
        add     eax, 32                                 ; 0A8A _ 83. C0, 20
        mov     byte [ebp-1H], al                       ; 0A8D _ 88. 45, FF
        jmp     ?_026                                   ; 0A90 _ EB, 34

?_024:  mov     eax, dword [_key_shift]                 ; 0A92 _ A1, 00000000(d)
        test    eax, eax                                ; 0A97 _ 85. C0
        jz      ?_025                                   ; 0A99 _ 74, 25
        cmp     dword [ebp+8H], 127                     ; 0A9B _ 83. 7D, 08, 7F
        jg      ?_025                                   ; 0A9F _ 7F, 1F
        mov     eax, dword [ebp+8H]                     ; 0AA1 _ 8B. 45, 08
        add     eax, _keytable1                         ; 0AA4 _ 05, 00000080(d)
        movzx   eax, byte [eax]                         ; 0AA9 _ 0F B6. 00
        test    al, al                                  ; 0AAC _ 84. C0
        jz      ?_025                                   ; 0AAE _ 74, 10
        mov     eax, dword [ebp+8H]                     ; 0AB0 _ 8B. 45, 08
        add     eax, _keytable1                         ; 0AB3 _ 05, 00000080(d)
        movzx   eax, byte [eax]                         ; 0AB8 _ 0F B6. 00
        mov     byte [ebp-1H], al                       ; 0ABB _ 88. 45, FF
        jmp     ?_027                                   ; 0ABE _ EB, 07

?_025:  mov     byte [ebp-1H], 0                        ; 0AC0 _ C6. 45, FF, 00
        jmp     ?_027                                   ; 0AC4 _ EB, 01

?_026:  nop                                             ; 0AC6 _ 90
?_027:  movzx   eax, byte [ebp-1H]                      ; 0AC7 _ 0F B6. 45, FF
?_028:  leave                                           ; 0ACB _ C9
        ret                                             ; 0ACC _ C3
; _transferScanCode End of function

_launch_console:; Function begin
        push    ebp                                     ; 0ACD _ 55
        mov     ebp, esp                                ; 0ACE _ 89. E5
        sub     esp, 56                                 ; 0AD0 _ 83. EC, 38
        mov     eax, dword [_shtctl]                    ; 0AD3 _ A1, 00000264(d)
        mov     dword [esp], eax                        ; 0AD8 _ 89. 04 24
        call    _sheet_alloc                            ; 0ADB _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 0AE0 _ 89. 45, F4
        mov     eax, dword [_memman]                    ; 0AE3 _ A1, 00000000(d)
        mov     dword [esp+4H], 42240                   ; 0AE8 _ C7. 44 24, 04, 0000A500
        mov     dword [esp], eax                        ; 0AF0 _ 89. 04 24
        call    _memman_alloc_4k                        ; 0AF3 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 0AF8 _ 89. 45, F0
        mov     dword [esp+10H], 99                     ; 0AFB _ C7. 44 24, 10, 00000063
        mov     dword [esp+0CH], 165                    ; 0B03 _ C7. 44 24, 0C, 000000A5
        mov     dword [esp+8H], 256                     ; 0B0B _ C7. 44 24, 08, 00000100
        mov     eax, dword [ebp-10H]                    ; 0B13 _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 0B16 _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 0B1A _ 8B. 45, F4
        mov     dword [esp], eax                        ; 0B1D _ 89. 04 24
        call    _sheet_setbuf                           ; 0B20 _ E8, 00000000(rel)
        mov     eax, dword [_shtctl]                    ; 0B25 _ A1, 00000264(d)
        mov     dword [esp+0CH], 0                      ; 0B2A _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], ?_306                   ; 0B32 _ C7. 44 24, 08, 0000001C(d)
        mov     edx, dword [ebp-0CH]                    ; 0B3A _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 0B3D _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0B41 _ 89. 04 24
        call    _make_window8                           ; 0B44 _ E8, 00001FCB
        mov     dword [esp+14H], 0                      ; 0B49 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], 128                    ; 0B51 _ C7. 44 24, 10, 00000080
        mov     dword [esp+0CH], 240                    ; 0B59 _ C7. 44 24, 0C, 000000F0
        mov     dword [esp+8H], 28                      ; 0B61 _ C7. 44 24, 08, 0000001C
        mov     dword [esp+4H], 8                       ; 0B69 _ C7. 44 24, 04, 00000008
        mov     eax, dword [ebp-0CH]                    ; 0B71 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 0B74 _ 89. 04 24
        call    _make_textbox8                          ; 0B77 _ E8, 0000239B
        call    _task_alloc                             ; 0B7C _ E8, 00000000(rel)
        mov     dword [ebp-14H], eax                    ; 0B81 _ 89. 45, EC
        call    _get_addr_code32                        ; 0B84 _ E8, 00000000(rel)
        mov     dword [ebp-18H], eax                    ; 0B89 _ 89. 45, E8
        mov     eax, dword [ebp-14H]                    ; 0B8C _ 8B. 45, EC
        mov     dword [eax+8CH], 0                      ; 0B8F _ C7. 80, 0000008C, 00000000
        mov     eax, dword [ebp-14H]                    ; 0B99 _ 8B. 45, EC
        mov     dword [eax+90H], 1073741824             ; 0B9C _ C7. 80, 00000090, 40000000
        mov     eax, dword [ebp-18H]                    ; 0BA6 _ 8B. 45, E8
        neg     eax                                     ; 0BA9 _ F7. D8
        add     eax, _console_task                      ; 0BAB _ 05, 0000142C(d)
        mov     edx, eax                                ; 0BB0 _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 0BB2 _ 8B. 45, EC
        mov     dword [eax+4CH], edx                    ; 0BB5 _ 89. 50, 4C
        mov     eax, dword [ebp-14H]                    ; 0BB8 _ 8B. 45, EC
        mov     dword [eax+74H], 0                      ; 0BBB _ C7. 40, 74, 00000000
        mov     eax, dword [ebp-14H]                    ; 0BC2 _ 8B. 45, EC
        mov     dword [eax+78H], 8                      ; 0BC5 _ C7. 40, 78, 00000008
        mov     eax, dword [ebp-14H]                    ; 0BCC _ 8B. 45, EC
        mov     dword [eax+7CH], 32                     ; 0BCF _ C7. 40, 7C, 00000020
        mov     eax, dword [ebp-14H]                    ; 0BD6 _ 8B. 45, EC
        mov     dword [eax+80H], 24                     ; 0BD9 _ C7. 80, 00000080, 00000018
        mov     eax, dword [ebp-14H]                    ; 0BE3 _ 8B. 45, EC
        mov     dword [eax+84H], 0                      ; 0BE6 _ C7. 80, 00000084, 00000000
        mov     eax, dword [ebp-14H]                    ; 0BF0 _ 8B. 45, EC
        mov     dword [eax+88H], 16                     ; 0BF3 _ C7. 80, 00000088, 00000010
        mov     eax, dword [ebp-14H]                    ; 0BFD _ 8B. 45, EC
        mov     eax, dword [eax+64H]                    ; 0C00 _ 8B. 40, 64
        lea     edx, [eax-8H]                           ; 0C03 _ 8D. 50, F8
        mov     eax, dword [ebp-14H]                    ; 0C06 _ 8B. 45, EC
        mov     dword [eax+64H], edx                    ; 0C09 _ 89. 50, 64
        mov     eax, dword [ebp-14H]                    ; 0C0C _ 8B. 45, EC
        mov     eax, dword [eax+64H]                    ; 0C0F _ 8B. 40, 64
        add     eax, 4                                  ; 0C12 _ 83. C0, 04
        mov     edx, eax                                ; 0C15 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 0C17 _ 8B. 45, F4
        mov     dword [edx], eax                        ; 0C1A _ 89. 02
        mov     eax, dword [_memman]                    ; 0C1C _ A1, 00000000(d)
        mov     dword [esp], eax                        ; 0C21 _ 89. 04 24
        call    _memman_total                           ; 0C24 _ E8, 00000000(rel)
        mov     edx, eax                                ; 0C29 _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 0C2B _ 8B. 45, EC
        mov     eax, dword [eax+64H]                    ; 0C2E _ 8B. 40, 64
        add     eax, 8                                  ; 0C31 _ 83. C0, 08
        mov     dword [eax], edx                        ; 0C34 _ 89. 10
        mov     dword [esp+8H], 5                       ; 0C36 _ C7. 44 24, 08, 00000005
        mov     dword [esp+4H], 1                       ; 0C3E _ C7. 44 24, 04, 00000001
        mov     eax, dword [ebp-14H]                    ; 0C46 _ 8B. 45, EC
        mov     dword [esp], eax                        ; 0C49 _ 89. 04 24
        call    _task_run                               ; 0C4C _ E8, 00000000(rel)
        mov     eax, dword [_shtctl]                    ; 0C51 _ A1, 00000264(d)
        mov     dword [esp+0CH], 4                      ; 0C56 _ C7. 44 24, 0C, 00000004
        mov     dword [esp+8H], 32                      ; 0C5E _ C7. 44 24, 08, 00000020
        mov     edx, dword [ebp-0CH]                    ; 0C66 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 0C69 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0C6D _ 89. 04 24
        call    _sheet_slide                            ; 0C70 _ E8, 00000000(rel)
        mov     eax, dword [_shtctl]                    ; 0C75 _ A1, 00000264(d)
        mov     dword [esp+8H], 1                       ; 0C7A _ C7. 44 24, 08, 00000001
        mov     edx, dword [ebp-0CH]                    ; 0C82 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 0C85 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0C89 _ 89. 04 24
        call    _sheet_updown                           ; 0C8C _ E8, 00000000(rel)
        mov     eax, dword [ebp-14H]                    ; 0C91 _ 8B. 45, EC
        mov     dword [_task_cons], eax                 ; 0C94 _ A3, 00000270(d)
        mov     eax, dword [ebp-0CH]                    ; 0C99 _ 8B. 45, F4
        leave                                           ; 0C9C _ C9
        ret                                             ; 0C9D _ C3
; _launch_console End of function

_cmd_dir:; Function begin
        push    ebp                                     ; 0C9E _ 55
        mov     ebp, esp                                ; 0C9F _ 89. E5
        push    ebx                                     ; 0CA1 _ 53
        sub     esp, 68                                 ; 0CA2 _ 83. EC, 44
        mov     dword [ebp-0CH], 78848                  ; 0CA5 _ C7. 45, F4, 00013400
        mov     eax, dword [_memman]                    ; 0CAC _ A1, 00000000(d)
        mov     dword [esp+4H], 13                      ; 0CB1 _ C7. 44 24, 04, 0000000D
        mov     dword [esp], eax                        ; 0CB9 _ 89. 04 24
        call    _memman_alloc                           ; 0CBC _ E8, 00000000(rel)
        mov     dword [ebp-18H], eax                    ; 0CC1 _ 89. 45, E8
        mov     eax, dword [ebp-18H]                    ; 0CC4 _ 8B. 45, E8
        add     eax, 12                                 ; 0CC7 _ 83. C0, 0C
        mov     byte [eax], 0                           ; 0CCA _ C6. 00, 00
        jmp     ?_036                                   ; 0CCD _ E9, 0000012A

?_029:  mov     dword [ebp-10H], 0                      ; 0CD2 _ C7. 45, F0, 00000000
        jmp     ?_031                                   ; 0CD9 _ EB, 2A

?_030:  mov     edx, dword [ebp-0CH]                    ; 0CDB _ 8B. 55, F4
        mov     eax, dword [ebp-10H]                    ; 0CDE _ 8B. 45, F0
        add     eax, edx                                ; 0CE1 _ 01. D0
        movzx   eax, byte [eax]                         ; 0CE3 _ 0F B6. 00
        test    al, al                                  ; 0CE6 _ 84. C0
        jz      ?_032                                   ; 0CE8 _ 74, 23
        mov     edx, dword [ebp-0CH]                    ; 0CEA _ 8B. 55, F4
        mov     eax, dword [ebp-10H]                    ; 0CED _ 8B. 45, F0
        add     eax, edx                                ; 0CF0 _ 01. D0
        movzx   ecx, byte [eax]                         ; 0CF2 _ 0F B6. 08
        mov     edx, dword [ebp-10H]                    ; 0CF5 _ 8B. 55, F0
        mov     eax, dword [ebp-18H]                    ; 0CF8 _ 8B. 45, E8
        add     eax, edx                                ; 0CFB _ 01. D0
        mov     edx, ecx                                ; 0CFD _ 89. CA
        mov     byte [eax], dl                          ; 0CFF _ 88. 10
        add     dword [ebp-10H], 1                      ; 0D01 _ 83. 45, F0, 01
?_031:  cmp     dword [ebp-10H], 7                      ; 0D05 _ 83. 7D, F0, 07
        jle     ?_030                                   ; 0D09 _ 7E, D0
        jmp     ?_033                                   ; 0D0B _ EB, 01

?_032:  nop                                             ; 0D0D _ 90
?_033:  mov     dword [ebp-14H], 0                      ; 0D0E _ C7. 45, EC, 00000000
        mov     edx, dword [ebp-10H]                    ; 0D15 _ 8B. 55, F0
        mov     eax, dword [ebp-18H]                    ; 0D18 _ 8B. 45, E8
        add     eax, edx                                ; 0D1B _ 01. D0
        mov     byte [eax], 46                          ; 0D1D _ C6. 00, 2E
        add     dword [ebp-10H], 1                      ; 0D20 _ 83. 45, F0, 01
        mov     dword [ebp-14H], 0                      ; 0D24 _ C7. 45, EC, 00000000
        jmp     ?_035                                   ; 0D2B _ EB, 22

?_034:  mov     edx, dword [ebp-0CH]                    ; 0D2D _ 8B. 55, F4
        mov     eax, dword [ebp-14H]                    ; 0D30 _ 8B. 45, EC
        add     eax, edx                                ; 0D33 _ 01. D0
        add     eax, 8                                  ; 0D35 _ 83. C0, 08
        movzx   ecx, byte [eax]                         ; 0D38 _ 0F B6. 08
        mov     edx, dword [ebp-10H]                    ; 0D3B _ 8B. 55, F0
        mov     eax, dword [ebp-18H]                    ; 0D3E _ 8B. 45, E8
        add     eax, edx                                ; 0D41 _ 01. D0
        mov     edx, ecx                                ; 0D43 _ 89. CA
        mov     byte [eax], dl                          ; 0D45 _ 88. 10
        add     dword [ebp-10H], 1                      ; 0D47 _ 83. 45, F0, 01
        add     dword [ebp-14H], 1                      ; 0D4B _ 83. 45, EC, 01
?_035:  cmp     dword [ebp-14H], 2                      ; 0D4F _ 83. 7D, EC, 02
        jle     ?_034                                   ; 0D53 _ 7E, D8
        mov     ecx, dword [?_326]                      ; 0D55 _ 8B. 0D, 00000010(d)
        mov     edx, dword [_g_Console]                 ; 0D5B _ 8B. 15, 00000008(d)
        mov     eax, dword [_shtctl]                    ; 0D61 _ A1, 00000264(d)
        mov     ebx, dword [ebp-18H]                    ; 0D66 _ 8B. 5D, E8
        mov     dword [esp+14H], ebx                    ; 0D69 _ 89. 5C 24, 14
        mov     dword [esp+10H], 7                      ; 0D6D _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ecx                    ; 0D75 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 16                      ; 0D79 _ C7. 44 24, 08, 00000010
        mov     dword [esp+4H], edx                     ; 0D81 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0D85 _ 89. 04 24
        call    _showString                             ; 0D88 _ E8, 0000125A
        mov     dword [ebp-1CH], 136                    ; 0D8D _ C7. 45, E4, 00000088
        mov     eax, dword [ebp-0CH]                    ; 0D94 _ 8B. 45, F4
        mov     eax, dword [eax+1CH]                    ; 0D97 _ 8B. 40, 1C
        mov     dword [esp], eax                        ; 0D9A _ 89. 04 24
        call    _intToHexStr                            ; 0D9D _ E8, 000017A6
        mov     dword [ebp-20H], eax                    ; 0DA2 _ 89. 45, E0
        mov     ecx, dword [?_326]                      ; 0DA5 _ 8B. 0D, 00000010(d)
        mov     edx, dword [_g_Console]                 ; 0DAB _ 8B. 15, 00000008(d)
        mov     eax, dword [_shtctl]                    ; 0DB1 _ A1, 00000264(d)
        mov     ebx, dword [ebp-20H]                    ; 0DB6 _ 8B. 5D, E0
        mov     dword [esp+14H], ebx                    ; 0DB9 _ 89. 5C 24, 14
        mov     dword [esp+10H], 7                      ; 0DBD _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ecx                    ; 0DC5 _ 89. 4C 24, 0C
        mov     ecx, dword [ebp-1CH]                    ; 0DC9 _ 8B. 4D, E4
        mov     dword [esp+8H], ecx                     ; 0DCC _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 0DD0 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0DD4 _ 89. 04 24
        call    _showString                             ; 0DD7 _ E8, 0000120B
        mov     edx, dword [_g_Console]                 ; 0DDC _ 8B. 15, 00000008(d)
        mov     eax, dword [?_326]                      ; 0DE2 _ A1, 00000010(d)
        mov     dword [esp+4H], edx                     ; 0DE7 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0DEB _ 89. 04 24
        call    _cons_newline                           ; 0DEE _ E8, 00000BDB
        mov     dword [?_326], eax                      ; 0DF3 _ A3, 00000010(d)
        add     dword [ebp-0CH], 32                     ; 0DF8 _ 83. 45, F4, 20
?_036:  mov     eax, dword [ebp-0CH]                    ; 0DFC _ 8B. 45, F4
        movzx   eax, byte [eax]                         ; 0DFF _ 0F B6. 00
        test    al, al                                  ; 0E02 _ 84. C0
        jne     ?_029                                   ; 0E04 _ 0F 85, FFFFFEC8
        mov     edx, dword [ebp-18H]                    ; 0E0A _ 8B. 55, E8
        mov     eax, dword [_memman]                    ; 0E0D _ A1, 00000000(d)
        mov     dword [esp+8H], 13                      ; 0E12 _ C7. 44 24, 08, 0000000D
        mov     dword [esp+4H], edx                     ; 0E1A _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0E1E _ 89. 04 24
        call    _memman_free                            ; 0E21 _ E8, 00000000(rel)
        nop                                             ; 0E26 _ 90
        add     esp, 68                                 ; 0E27 _ 83. C4, 44
        pop     ebx                                     ; 0E2A _ 5B
        pop     ebp                                     ; 0E2B _ 5D
        ret                                             ; 0E2C _ C3
; _cmd_dir End of function

_cmd_type:; Function begin
        push    ebp                                     ; 0E2D _ 55
        mov     ebp, esp                                ; 0E2E _ 89. E5
        push    esi                                     ; 0E30 _ 56
        push    ebx                                     ; 0E31 _ 53
        sub     esp, 96                                 ; 0E32 _ 83. EC, 60
        mov     eax, dword [_memman]                    ; 0E35 _ A1, 00000000(d)
        mov     dword [esp+4H], 13                      ; 0E3A _ C7. 44 24, 04, 0000000D
        mov     dword [esp], eax                        ; 0E42 _ 89. 04 24
        call    _memman_alloc                           ; 0E45 _ E8, 00000000(rel)
        mov     dword [ebp-24H], eax                    ; 0E4A _ 89. 45, DC
        mov     eax, dword [ebp-24H]                    ; 0E4D _ 8B. 45, DC
        add     eax, 12                                 ; 0E50 _ 83. C0, 0C
        mov     byte [eax], 0                           ; 0E53 _ C6. 00, 00
        mov     dword [ebp-0CH], 0                      ; 0E56 _ C7. 45, F4, 00000000
        mov     dword [ebp-10H], 5                      ; 0E5D _ C7. 45, F0, 00000005
        mov     dword [ebp-10H], 5                      ; 0E64 _ C7. 45, F0, 00000005
        jmp     ?_038                                   ; 0E6B _ EB, 2C

?_037:  mov     edx, dword [ebp-10H]                    ; 0E6D _ 8B. 55, F0
        mov     eax, dword [ebp+8H]                     ; 0E70 _ 8B. 45, 08
        add     eax, edx                                ; 0E73 _ 01. D0
        movzx   eax, byte [eax]                         ; 0E75 _ 0F B6. 00
        test    al, al                                  ; 0E78 _ 84. C0
        jz      ?_039                                   ; 0E7A _ 74, 25
        mov     edx, dword [ebp-10H]                    ; 0E7C _ 8B. 55, F0
        mov     eax, dword [ebp+8H]                     ; 0E7F _ 8B. 45, 08
        add     eax, edx                                ; 0E82 _ 01. D0
        mov     ecx, dword [ebp-0CH]                    ; 0E84 _ 8B. 4D, F4
        mov     edx, dword [ebp-24H]                    ; 0E87 _ 8B. 55, DC
        add     edx, ecx                                ; 0E8A _ 01. CA
        movzx   eax, byte [eax]                         ; 0E8C _ 0F B6. 00
        mov     byte [edx], al                          ; 0E8F _ 88. 02
        add     dword [ebp-0CH], 1                      ; 0E91 _ 83. 45, F4, 01
        add     dword [ebp-10H], 1                      ; 0E95 _ 83. 45, F0, 01
?_038:  cmp     dword [ebp-10H], 16                     ; 0E99 _ 83. 7D, F0, 10
        jle     ?_037                                   ; 0E9D _ 7E, CE
        jmp     ?_040                                   ; 0E9F _ EB, 01

?_039:  nop                                             ; 0EA1 _ 90
?_040:  mov     edx, dword [ebp-0CH]                    ; 0EA2 _ 8B. 55, F4
        mov     eax, dword [ebp-24H]                    ; 0EA5 _ 8B. 45, DC
        add     eax, edx                                ; 0EA8 _ 01. D0
        mov     byte [eax], 0                           ; 0EAA _ C6. 00, 00
        mov     dword [ebp-14H], 78848                  ; 0EAD _ C7. 45, EC, 00013400
        jmp     ?_055                                   ; 0EB4 _ E9, 00000241

?_041:  mov     byte [ebp-2DH], 0                       ; 0EB9 _ C6. 45, D3, 00
        mov     dword [ebp-18H], 0                      ; 0EBD _ C7. 45, E8, 00000000
        jmp     ?_043                                   ; 0EC4 _ EB, 2A

?_042:  mov     edx, dword [ebp-14H]                    ; 0EC6 _ 8B. 55, EC
        mov     eax, dword [ebp-18H]                    ; 0EC9 _ 8B. 45, E8
        add     eax, edx                                ; 0ECC _ 01. D0
        movzx   eax, byte [eax]                         ; 0ECE _ 0F B6. 00
        test    al, al                                  ; 0ED1 _ 84. C0
        jz      ?_044                                   ; 0ED3 _ 74, 23
        mov     edx, dword [ebp-14H]                    ; 0ED5 _ 8B. 55, EC
        mov     eax, dword [ebp-18H]                    ; 0ED8 _ 8B. 45, E8
        add     eax, edx                                ; 0EDB _ 01. D0
        movzx   eax, byte [eax]                         ; 0EDD _ 0F B6. 00
        mov     ecx, eax                                ; 0EE0 _ 89. C1
        lea     eax, [ebp-39H]                          ; 0EE2 _ 8D. 45, C7
        mov     edx, dword [ebp-18H]                    ; 0EE5 _ 8B. 55, E8
        add     eax, edx                                ; 0EE8 _ 01. D0
        mov     byte [eax], cl                          ; 0EEA _ 88. 08
        add     dword [ebp-18H], 1                      ; 0EEC _ 83. 45, E8, 01
?_043:  cmp     dword [ebp-18H], 7                      ; 0EF0 _ 83. 7D, E8, 07
        jle     ?_042                                   ; 0EF4 _ 7E, D0
        jmp     ?_045                                   ; 0EF6 _ EB, 01

?_044:  nop                                             ; 0EF8 _ 90
?_045:  mov     dword [ebp-1CH], 0                      ; 0EF9 _ C7. 45, E4, 00000000
        lea     eax, [ebp-39H]                          ; 0F00 _ 8D. 45, C7
        mov     edx, dword [ebp-18H]                    ; 0F03 _ 8B. 55, E8
        add     eax, edx                                ; 0F06 _ 01. D0
        mov     byte [eax], 46                          ; 0F08 _ C6. 00, 2E
        add     dword [ebp-18H], 1                      ; 0F0B _ 83. 45, E8, 01
        mov     dword [ebp-1CH], 0                      ; 0F0F _ C7. 45, E4, 00000000
        jmp     ?_047                                   ; 0F16 _ EB, 22

?_046:  mov     edx, dword [ebp-14H]                    ; 0F18 _ 8B. 55, EC
        mov     eax, dword [ebp-1CH]                    ; 0F1B _ 8B. 45, E4
        add     eax, edx                                ; 0F1E _ 01. D0
        add     eax, 8                                  ; 0F20 _ 83. C0, 08
        movzx   eax, byte [eax]                         ; 0F23 _ 0F B6. 00
        mov     ecx, eax                                ; 0F26 _ 89. C1
        lea     eax, [ebp-39H]                          ; 0F28 _ 8D. 45, C7
        mov     edx, dword [ebp-18H]                    ; 0F2B _ 8B. 55, E8
        add     eax, edx                                ; 0F2E _ 01. D0
        mov     byte [eax], cl                          ; 0F30 _ 88. 08
        add     dword [ebp-18H], 1                      ; 0F32 _ 83. 45, E8, 01
        add     dword [ebp-1CH], 1                      ; 0F36 _ 83. 45, E4, 01
?_047:  cmp     dword [ebp-1CH], 2                      ; 0F3A _ 83. 7D, E4, 02
        jle     ?_046                                   ; 0F3E _ 7E, D8
        lea     eax, [ebp-39H]                          ; 0F40 _ 8D. 45, C7
        mov     dword [esp+4H], eax                     ; 0F43 _ 89. 44 24, 04
        mov     eax, dword [ebp-24H]                    ; 0F47 _ 8B. 45, DC
        mov     dword [esp], eax                        ; 0F4A _ 89. 04 24
        call    _strcmp                                 ; 0F4D _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 0F52 _ 83. F8, 01
        jne     ?_054                                   ; 0F55 _ 0F 85, 0000019B
        mov     dword [ebp-28H], 88064                  ; 0F5B _ C7. 45, D8, 00015800
        mov     eax, dword [ebp-14H]                    ; 0F62 _ 8B. 45, EC
        movzx   eax, word [eax+1AH]                     ; 0F65 _ 0F B7. 40, 1A
        movzx   eax, ax                                 ; 0F69 _ 0F B7. C0
        shl     eax, 9                                  ; 0F6C _ C1. E0, 09
        add     dword [ebp-28H], eax                    ; 0F6F _ 01. 45, D8
        mov     eax, dword [ebp-14H]                    ; 0F72 _ 8B. 45, EC
        mov     eax, dword [eax+1CH]                    ; 0F75 _ 8B. 40, 1C
        mov     dword [ebp-2CH], eax                    ; 0F78 _ 89. 45, D4
        mov     dword [ebp-20H], 0                      ; 0F7B _ C7. 45, E0, 00000000
        mov     dword [?_325], 16                       ; 0F82 _ C7. 05, 0000000C(d), 00000010
        mov     dword [ebp-20H], 0                      ; 0F8C _ C7. 45, E0, 00000000
        jmp     ?_053                                   ; 0F93 _ E9, 0000014F

?_048:  mov     edx, dword [ebp-20H]                    ; 0F98 _ 8B. 55, E0
        mov     eax, dword [ebp-28H]                    ; 0F9B _ 8B. 45, D8
        add     eax, edx                                ; 0F9E _ 01. D0
        movzx   eax, byte [eax]                         ; 0FA0 _ 0F B6. 00
        mov     byte [ebp-3BH], al                      ; 0FA3 _ 88. 45, C5
        mov     byte [ebp-3AH], 0                       ; 0FA6 _ C6. 45, C6, 00
        movzx   eax, byte [ebp-3BH]                     ; 0FAA _ 0F B6. 45, C5
        cmp     al, 9                                   ; 0FAE _ 3C, 09
        jnz     ?_050                                   ; 0FB0 _ 75, 7C
?_049:  mov     ebx, dword [?_326]                      ; 0FB2 _ 8B. 1D, 00000010(d)
        mov     ecx, dword [?_325]                      ; 0FB8 _ 8B. 0D, 0000000C(d)
        mov     edx, dword [_g_Console]                 ; 0FBE _ 8B. 15, 00000008(d)
        mov     eax, dword [_shtctl]                    ; 0FC4 _ A1, 00000264(d)
        mov     dword [esp+14H], ?_307                  ; 0FC9 _ C7. 44 24, 14, 00000024(d)
        mov     dword [esp+10H], 7                      ; 0FD1 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ebx                    ; 0FD9 _ 89. 5C 24, 0C
        mov     dword [esp+8H], ecx                     ; 0FDD _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 0FE1 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0FE5 _ 89. 04 24
        call    _showString                             ; 0FE8 _ E8, 00000FFA
        mov     eax, dword [?_325]                      ; 0FED _ A1, 0000000C(d)
        add     eax, 8                                  ; 0FF2 _ 83. C0, 08
        mov     dword [?_325], eax                      ; 0FF5 _ A3, 0000000C(d)
        mov     eax, dword [?_325]                      ; 0FFA _ A1, 0000000C(d)
        cmp     eax, 248                                ; 0FFF _ 3D, 000000F8
        jnz     ?_049                                   ; 1004 _ 75, AC
        mov     dword [?_325], 8                        ; 1006 _ C7. 05, 0000000C(d), 00000008
        mov     edx, dword [_g_Console]                 ; 1010 _ 8B. 15, 00000008(d)
        mov     eax, dword [?_326]                      ; 1016 _ A1, 00000010(d)
        mov     dword [esp+4H], edx                     ; 101B _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 101F _ 89. 04 24
        call    _cons_newline                           ; 1022 _ E8, 000009A7
        mov     dword [?_326], eax                      ; 1027 _ A3, 00000010(d)
        jmp     ?_049                                   ; 102C _ EB, 84

?_050:  movzx   eax, byte [ebp-3BH]                     ; 102E _ 0F B6. 45, C5
        cmp     al, 10                                  ; 1032 _ 3C, 0A
        jnz     ?_051                                   ; 1034 _ 75, 2B
        mov     dword [?_325], 8                        ; 1036 _ C7. 05, 0000000C(d), 00000008
        mov     edx, dword [_g_Console]                 ; 1040 _ 8B. 15, 00000008(d)
        mov     eax, dword [?_326]                      ; 1046 _ A1, 00000010(d)
        mov     dword [esp+4H], edx                     ; 104B _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 104F _ 89. 04 24
        call    _cons_newline                           ; 1052 _ E8, 00000977
        mov     dword [?_326], eax                      ; 1057 _ A3, 00000010(d)
        jmp     ?_052                                   ; 105C _ E9, 00000082

?_051:  movzx   eax, byte [ebp-3BH]                     ; 1061 _ 0F B6. 45, C5
        cmp     al, 13                                  ; 1065 _ 3C, 0D
        jz      ?_052                                   ; 1067 _ 74, 7A
        mov     esi, dword [?_326]                      ; 1069 _ 8B. 35, 00000010(d)
        mov     ebx, dword [?_325]                      ; 106F _ 8B. 1D, 0000000C(d)
        mov     ecx, dword [_g_Console]                 ; 1075 _ 8B. 0D, 00000008(d)
        mov     edx, dword [_shtctl]                    ; 107B _ 8B. 15, 00000264(d)
        lea     eax, [ebp-3BH]                          ; 1081 _ 8D. 45, C5
        mov     dword [esp+14H], eax                    ; 1084 _ 89. 44 24, 14
        mov     dword [esp+10H], 7                      ; 1088 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], esi                    ; 1090 _ 89. 74 24, 0C
        mov     dword [esp+8H], ebx                     ; 1094 _ 89. 5C 24, 08
        mov     dword [esp+4H], ecx                     ; 1098 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 109C _ 89. 14 24
        call    _showString                             ; 109F _ E8, 00000F43
        mov     eax, dword [?_325]                      ; 10A4 _ A1, 0000000C(d)
        add     eax, 8                                  ; 10A9 _ 83. C0, 08
        mov     dword [?_325], eax                      ; 10AC _ A3, 0000000C(d)
        mov     eax, dword [?_325]                      ; 10B1 _ A1, 0000000C(d)
        cmp     eax, 248                                ; 10B6 _ 3D, 000000F8
        jnz     ?_052                                   ; 10BB _ 75, 26
        mov     dword [?_325], 16                       ; 10BD _ C7. 05, 0000000C(d), 00000010
        mov     edx, dword [_g_Console]                 ; 10C7 _ 8B. 15, 00000008(d)
        mov     eax, dword [?_326]                      ; 10CD _ A1, 00000010(d)
        mov     dword [esp+4H], edx                     ; 10D2 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 10D6 _ 89. 04 24
        call    _cons_newline                           ; 10D9 _ E8, 000008F0
        mov     dword [?_326], eax                      ; 10DE _ A3, 00000010(d)
?_052:  add     dword [ebp-20H], 1                      ; 10E3 _ 83. 45, E0, 01
?_053:  mov     eax, dword [ebp-20H]                    ; 10E7 _ 8B. 45, E0
        cmp     eax, dword [ebp-2CH]                    ; 10EA _ 3B. 45, D4
        jl      ?_048                                   ; 10ED _ 0F 8C, FFFFFEA5
        nop                                             ; 10F3 _ 90
        jmp     ?_056                                   ; 10F4 _ EB, 12

?_054:  add     dword [ebp-14H], 32                     ; 10F6 _ 83. 45, EC, 20
?_055:  mov     eax, dword [ebp-14H]                    ; 10FA _ 8B. 45, EC
        movzx   eax, byte [eax]                         ; 10FD _ 0F B6. 00
        test    al, al                                  ; 1100 _ 84. C0
        jne     ?_041                                   ; 1102 _ 0F 85, FFFFFDB1
?_056:  mov     edx, dword [_g_Console]                 ; 1108 _ 8B. 15, 00000008(d)
        mov     eax, dword [?_326]                      ; 110E _ A1, 00000010(d)
        mov     dword [esp+4H], edx                     ; 1113 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1117 _ 89. 04 24
        call    _cons_newline                           ; 111A _ E8, 000008AF
        mov     dword [?_326], eax                      ; 111F _ A3, 00000010(d)
        mov     edx, dword [ebp-24H]                    ; 1124 _ 8B. 55, DC
        mov     eax, dword [_memman]                    ; 1127 _ A1, 00000000(d)
        mov     dword [esp+8H], 13                      ; 112C _ C7. 44 24, 08, 0000000D
        mov     dword [esp+4H], edx                     ; 1134 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1138 _ 89. 04 24
        call    _memman_free                            ; 113B _ E8, 00000000(rel)
        mov     dword [?_325], 16                       ; 1140 _ C7. 05, 0000000C(d), 00000010
        nop                                             ; 114A _ 90
        add     esp, 96                                 ; 114B _ 83. C4, 60
        pop     ebx                                     ; 114E _ 5B
        pop     esi                                     ; 114F _ 5E
        pop     ebp                                     ; 1150 _ 5D
        ret                                             ; 1151 _ C3
; _cmd_type End of function

_cmd_mem:; Function begin
        push    ebp                                     ; 1152 _ 55
        mov     ebp, esp                                ; 1153 _ 89. E5
        push    ebx                                     ; 1155 _ 53
        sub     esp, 52                                 ; 1156 _ 83. EC, 34
        mov     eax, dword [ebp+8H]                     ; 1159 _ 8B. 45, 08
        lea     edx, [eax+3FFH]                         ; 115C _ 8D. 90, 000003FF
        test    eax, eax                                ; 1162 _ 85. C0
        cmovs   eax, edx                                ; 1164 _ 0F 48. C2
        sar     eax, 10                                 ; 1167 _ C1. F8, 0A
        mov     dword [esp], eax                        ; 116A _ 89. 04 24
        call    _intToHexStr                            ; 116D _ E8, 000013D6
        mov     dword [ebp-0CH], eax                    ; 1172 _ 89. 45, F4
        mov     ecx, dword [?_326]                      ; 1175 _ 8B. 0D, 00000010(d)
        mov     edx, dword [_g_Console]                 ; 117B _ 8B. 15, 00000008(d)
        mov     eax, dword [_shtctl]                    ; 1181 _ A1, 00000264(d)
        mov     dword [esp+14H], ?_308                  ; 1186 _ C7. 44 24, 14, 00000026(d)
        mov     dword [esp+10H], 7                      ; 118E _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ecx                    ; 1196 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 16                      ; 119A _ C7. 44 24, 08, 00000010
        mov     dword [esp+4H], edx                     ; 11A2 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 11A6 _ 89. 04 24
        call    _showString                             ; 11A9 _ E8, 00000E39
        mov     ecx, dword [?_326]                      ; 11AE _ 8B. 0D, 00000010(d)
        mov     edx, dword [_g_Console]                 ; 11B4 _ 8B. 15, 00000008(d)
        mov     eax, dword [_shtctl]                    ; 11BA _ A1, 00000264(d)
        mov     ebx, dword [ebp-0CH]                    ; 11BF _ 8B. 5D, F4
        mov     dword [esp+14H], ebx                    ; 11C2 _ 89. 5C 24, 14
        mov     dword [esp+10H], 7                      ; 11C6 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ecx                    ; 11CE _ 89. 4C 24, 0C
        mov     dword [esp+8H], 52                      ; 11D2 _ C7. 44 24, 08, 00000034
        mov     dword [esp+4H], edx                     ; 11DA _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 11DE _ 89. 04 24
        call    _showString                             ; 11E1 _ E8, 00000E01
        mov     ecx, dword [?_326]                      ; 11E6 _ 8B. 0D, 00000010(d)
        mov     edx, dword [_g_Console]                 ; 11EC _ 8B. 15, 00000008(d)
        mov     eax, dword [_shtctl]                    ; 11F2 _ A1, 00000264(d)
        mov     dword [esp+14H], ?_309                  ; 11F7 _ C7. 44 24, 14, 0000002C(d)
        mov     dword [esp+10H], 7                      ; 11FF _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ecx                    ; 1207 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 126                     ; 120B _ C7. 44 24, 08, 0000007E
        mov     dword [esp+4H], edx                     ; 1213 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1217 _ 89. 04 24
        call    _showString                             ; 121A _ E8, 00000DC8
        mov     edx, dword [_g_Console]                 ; 121F _ 8B. 15, 00000008(d)
        mov     eax, dword [?_326]                      ; 1225 _ A1, 00000010(d)
        mov     dword [esp+4H], edx                     ; 122A _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 122E _ 89. 04 24
        call    _cons_newline                           ; 1231 _ E8, 00000798
        mov     dword [?_326], eax                      ; 1236 _ A3, 00000010(d)
        nop                                             ; 123B _ 90
        add     esp, 52                                 ; 123C _ 83. C4, 34
        pop     ebx                                     ; 123F _ 5B
        pop     ebp                                     ; 1240 _ 5D
        ret                                             ; 1241 _ C3
; _cmd_mem End of function

_cmd_cls:; Function begin
        push    ebp                                     ; 1242 _ 55
        mov     ebp, esp                                ; 1243 _ 89. E5
        sub     esp, 56                                 ; 1245 _ 83. EC, 38
        mov     dword [ebp-0CH], 8                      ; 1248 _ C7. 45, F4, 00000008
        mov     dword [ebp-10H], 28                     ; 124F _ C7. 45, F0, 0000001C
        mov     dword [ebp-10H], 28                     ; 1256 _ C7. 45, F0, 0000001C
        jmp     ?_060                                   ; 125D _ EB, 37

?_057:  mov     dword [ebp-0CH], 8                      ; 125F _ C7. 45, F4, 00000008
        jmp     ?_059                                   ; 1266 _ EB, 21

?_058:  mov     eax, dword [_g_Console]                 ; 1268 _ A1, 00000008(d)
        mov     edx, dword [eax]                        ; 126D _ 8B. 10
        mov     eax, dword [_g_Console]                 ; 126F _ A1, 00000008(d)
        mov     eax, dword [eax+4H]                     ; 1274 _ 8B. 40, 04
        imul    eax, dword [ebp-10H]                    ; 1277 _ 0F AF. 45, F0
        mov     ecx, dword [ebp-0CH]                    ; 127B _ 8B. 4D, F4
        add     eax, ecx                                ; 127E _ 01. C8
        add     eax, edx                                ; 1280 _ 01. D0
        mov     byte [eax], 0                           ; 1282 _ C6. 00, 00
        add     dword [ebp-0CH], 1                      ; 1285 _ 83. 45, F4, 01
?_059:  cmp     dword [ebp-0CH], 247                    ; 1289 _ 81. 7D, F4, 000000F7
        jle     ?_058                                   ; 1290 _ 7E, D6
        add     dword [ebp-10H], 1                      ; 1292 _ 83. 45, F0, 01
?_060:  cmp     dword [ebp-10H], 155                    ; 1296 _ 81. 7D, F0, 0000009B
        jle     ?_057                                   ; 129D _ 7E, C0
        mov     edx, dword [_g_Console]                 ; 129F _ 8B. 15, 00000008(d)
        mov     eax, dword [_shtctl]                    ; 12A5 _ A1, 00000264(d)
        mov     dword [esp+14H], 156                    ; 12AA _ C7. 44 24, 14, 0000009C
        mov     dword [esp+10H], 248                    ; 12B2 _ C7. 44 24, 10, 000000F8
        mov     dword [esp+0CH], 28                     ; 12BA _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 8                       ; 12C2 _ C7. 44 24, 08, 00000008
        mov     dword [esp+4H], edx                     ; 12CA _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 12CE _ 89. 04 24
        call    _sheet_refresh                          ; 12D1 _ E8, 00000000(rel)
        mov     dword [?_326], 28                       ; 12D6 _ C7. 05, 00000010(d), 0000001C
        mov     edx, dword [_g_Console]                 ; 12E0 _ 8B. 15, 00000008(d)
        mov     eax, dword [_shtctl]                    ; 12E6 _ A1, 00000264(d)
        mov     dword [esp+14H], ?_310                  ; 12EB _ C7. 44 24, 14, 00000030(d)
        mov     dword [esp+10H], 7                      ; 12F3 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 28                     ; 12FB _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 8                       ; 1303 _ C7. 44 24, 08, 00000008
        mov     dword [esp+4H], edx                     ; 130B _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 130F _ 89. 04 24
        call    _showString                             ; 1312 _ E8, 00000CD0
        nop                                             ; 1317 _ 90
        leave                                           ; 1318 _ C9
        ret                                             ; 1319 _ C3
; _cmd_cls End of function

_cmd_hlt:; Function begin
        push    ebp                                     ; 131A _ 55
        mov     ebp, esp                                ; 131B _ 89. E5
        sub     esp, 56                                 ; 131D _ 83. EC, 38
        mov     dword [esp+4H], _buffer                 ; 1320 _ C7. 44 24, 04, 00000278(d)
        mov     dword [esp], ?_311                      ; 1328 _ C7. 04 24, 00000032(d)
        call    _file_loadfile                          ; 132F _ E8, 00001E7D
        call    _get_addr_gdt                           ; 1334 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 1339 _ 89. 45, F4
        mov     eax, dword [_buffer]                    ; 133C _ A1, 00000278(d)
        mov     edx, eax                                ; 1341 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 1343 _ 8B. 45, F4
        add     eax, 88                                 ; 1346 _ 83. C0, 58
        mov     dword [esp+0CH], 16634                  ; 1349 _ C7. 44 24, 0C, 000040FA
        mov     dword [esp+8H], edx                     ; 1351 _ 89. 54 24, 08
        mov     dword [esp+4H], 1048575                 ; 1355 _ C7. 44 24, 04, 000FFFFF
        mov     dword [esp], eax                        ; 135D _ 89. 04 24
        call    _set_segmdesc                           ; 1360 _ E8, 00000000(rel)
        mov     eax, dword [_memman]                    ; 1365 _ A1, 00000000(d)
        mov     dword [esp+4H], 65536                   ; 136A _ C7. 44 24, 04, 00010000
        mov     dword [esp], eax                        ; 1372 _ 89. 04 24
        call    _memman_alloc_4k                        ; 1375 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 137A _ 89. 45, F0
        mov     eax, dword [ebp-10H]                    ; 137D _ 8B. 45, F0
        mov     dword [?_334], eax                      ; 1380 _ A3, 0000027C(d)
        mov     edx, dword [ebp-10H]                    ; 1385 _ 8B. 55, F0
        mov     eax, dword [ebp-0CH]                    ; 1388 _ 8B. 45, F4
        add     eax, 96                                 ; 138B _ 83. C0, 60
        mov     dword [esp+0CH], 16626                  ; 138E _ C7. 44 24, 0C, 000040F2
        mov     dword [esp+8H], edx                     ; 1396 _ 89. 54 24, 08
        mov     dword [esp+4H], 65535                   ; 139A _ C7. 44 24, 04, 0000FFFF
        mov     dword [esp], eax                        ; 13A2 _ 89. 04 24
        call    _set_segmdesc                           ; 13A5 _ E8, 00000000(rel)
        call    _task_now                               ; 13AA _ E8, 00000000(rel)
        mov     dword [ebp-14H], eax                    ; 13AF _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 13B2 _ 8B. 45, EC
        mov     dword [eax+30H], 0                      ; 13B5 _ C7. 40, 30, 00000000
        mov     eax, dword [ebp-14H]                    ; 13BC _ 8B. 45, EC
        add     eax, 48                                 ; 13BF _ 83. C0, 30
        mov     dword [esp+10H], eax                    ; 13C2 _ 89. 44 24, 10
        mov     dword [esp+0CH], 96                     ; 13C6 _ C7. 44 24, 0C, 00000060
        mov     dword [esp+8H], 65536                   ; 13CE _ C7. 44 24, 08, 00010000
        mov     dword [esp+4H], 88                      ; 13D6 _ C7. 44 24, 04, 00000058
        mov     dword [esp], 0                          ; 13DE _ C7. 04 24, 00000000
        call    _start_app                              ; 13E5 _ E8, 00000000(rel)
        mov     eax, dword [?_335]                      ; 13EA _ A1, 00000280(d)
        mov     ecx, eax                                ; 13EF _ 89. C1
        mov     eax, dword [_buffer]                    ; 13F1 _ A1, 00000278(d)
        mov     edx, eax                                ; 13F6 _ 89. C2
        mov     eax, dword [_memman]                    ; 13F8 _ A1, 00000000(d)
        mov     dword [esp+8H], ecx                     ; 13FD _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 1401 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1405 _ 89. 04 24
        call    _memman_free_4k                         ; 1408 _ E8, 00000000(rel)
        mov     edx, dword [ebp-10H]                    ; 140D _ 8B. 55, F0
        mov     eax, dword [_memman]                    ; 1410 _ A1, 00000000(d)
        mov     dword [esp+8H], 65536                   ; 1415 _ C7. 44 24, 08, 00010000
        mov     dword [esp+4H], edx                     ; 141D _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1421 _ 89. 04 24
        call    _memman_free_4k                         ; 1424 _ E8, 00000000(rel)
        nop                                             ; 1429 _ 90
        leave                                           ; 142A _ C9
        ret                                             ; 142B _ C3
; _cmd_hlt End of function

_console_task:; Function begin
        push    ebp                                     ; 142C _ 55
        mov     ebp, esp                                ; 142D _ 89. E5
        push    ebx                                     ; 142F _ 53
        sub     esp, 84                                 ; 1430 _ 83. EC, 54
        call    _task_now                               ; 1433 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 1438 _ 89. 45, F0
        mov     dword [ebp-0CH], 0                      ; 143B _ C7. 45, F4, 00000000
        mov     dword [ebp-14H], 0                      ; 1442 _ C7. 45, EC, 00000000
        mov     dword [ebp-18H], 0                      ; 1449 _ C7. 45, E8, 00000000
        mov     eax, dword [_memman]                    ; 1450 _ A1, 00000000(d)
        mov     dword [esp+4H], 128                     ; 1455 _ C7. 44 24, 04, 00000080
        mov     dword [esp], eax                        ; 145D _ 89. 04 24
        call    _memman_alloc                           ; 1460 _ E8, 00000000(rel)
        mov     dword [ebp-1CH], eax                    ; 1465 _ 89. 45, E4
        mov     eax, dword [_memman]                    ; 1468 _ A1, 00000000(d)
        mov     dword [esp+4H], 30                      ; 146D _ C7. 44 24, 04, 0000001E
        mov     dword [esp], eax                        ; 1475 _ 89. 04 24
        call    _memman_alloc                           ; 1478 _ E8, 00000000(rel)
        mov     dword [ebp-20H], eax                    ; 147D _ 89. 45, E0
        mov     eax, dword [ebp+8H]                     ; 1480 _ 8B. 45, 08
        mov     dword [_g_Console], eax                 ; 1483 _ A3, 00000008(d)
        mov     dword [?_325], 16                       ; 1488 _ C7. 05, 0000000C(d), 00000010
        mov     dword [?_326], 28                       ; 1492 _ C7. 05, 00000010(d), 0000001C
        mov     dword [?_327], -1                       ; 149C _ C7. 05, 00000014(d), FFFFFFFF
        mov     eax, dword [ebp-10H]                    ; 14A6 _ 8B. 45, F0
        add     eax, 16                                 ; 14A9 _ 83. C0, 10
        mov     edx, dword [ebp-10H]                    ; 14AC _ 8B. 55, F0
        mov     dword [esp+0CH], edx                    ; 14AF _ 89. 54 24, 0C
        mov     edx, dword [ebp-1CH]                    ; 14B3 _ 8B. 55, E4
        mov     dword [esp+8H], edx                     ; 14B6 _ 89. 54 24, 08
        mov     dword [esp+4H], 128                     ; 14BA _ C7. 44 24, 04, 00000080
        mov     dword [esp], eax                        ; 14C2 _ 89. 04 24
        call    _fifo8_init                             ; 14C5 _ E8, 00000000(rel)
        call    _timer_alloc                            ; 14CA _ E8, 00000000(rel)
        mov     dword [ebp-24H], eax                    ; 14CF _ 89. 45, DC
        mov     eax, dword [ebp-10H]                    ; 14D2 _ 8B. 45, F0
        add     eax, 16                                 ; 14D5 _ 83. C0, 10
        mov     dword [esp+8H], 1                       ; 14D8 _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], eax                     ; 14E0 _ 89. 44 24, 04
        mov     eax, dword [ebp-24H]                    ; 14E4 _ 8B. 45, DC
        mov     dword [esp], eax                        ; 14E7 _ 89. 04 24
        call    _timer_init                             ; 14EA _ E8, 00000000(rel)
        mov     dword [esp+4H], 50                      ; 14EF _ C7. 44 24, 04, 00000032
        mov     eax, dword [ebp-24H]                    ; 14F7 _ 8B. 45, DC
        mov     dword [esp], eax                        ; 14FA _ 89. 04 24
        call    _timer_settime                          ; 14FD _ E8, 00000000(rel)
        mov     eax, dword [_shtctl]                    ; 1502 _ A1, 00000264(d)
        mov     dword [esp+14H], ?_310                  ; 1507 _ C7. 44 24, 14, 00000030(d)
        mov     dword [esp+10H], 7                      ; 150F _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 28                     ; 1517 _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 8                       ; 151F _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp+8H]                     ; 1527 _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 152A _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 152E _ 89. 04 24
        call    _showString                             ; 1531 _ E8, 00000AB1
        mov     dword [ebp-28H], 0                      ; 1536 _ C7. 45, D8, 00000000
        mov     dword [ebp-2CH], 78848                  ; 153D _ C7. 45, D4, 00013400
?_061:  call    _io_cli                                 ; 1544 _ E8, 00000000(rel)
        mov     eax, dword [ebp-10H]                    ; 1549 _ 8B. 45, F0
        add     eax, 16                                 ; 154C _ 83. C0, 10
        mov     dword [esp], eax                        ; 154F _ 89. 04 24
        call    _fifo8_status                           ; 1552 _ E8, 00000000(rel)
        test    eax, eax                                ; 1557 _ 85. C0
        jnz     ?_062                                   ; 1559 _ 75, 07
        call    _io_sti                                 ; 155B _ E8, 00000000(rel)
        jmp     ?_061                                   ; 1560 _ EB, E2
; _console_task End of function

?_062:  ; Local function
        call    _io_sti                                 ; 1562 _ E8, 00000000(rel)
        mov     eax, dword [ebp-10H]                    ; 1567 _ 8B. 45, F0
        add     eax, 16                                 ; 156A _ 83. C0, 10
        mov     dword [esp], eax                        ; 156D _ 89. 04 24
        call    _fifo8_get                              ; 1570 _ E8, 00000000(rel)
        mov     dword [ebp-30H], eax                    ; 1575 _ 89. 45, D0
        cmp     dword [ebp-30H], 1                      ; 1578 _ 83. 7D, D0, 01
        jg      ?_065                                   ; 157C _ 7F, 6E
        cmp     dword [ebp-0CH], 0                      ; 157E _ 83. 7D, F4, 00
        js      ?_065                                   ; 1582 _ 78, 68
        cmp     dword [ebp-30H], 0                      ; 1584 _ 83. 7D, D0, 00
        jz      ?_063                                   ; 1588 _ 74, 26
        mov     eax, dword [ebp-10H]                    ; 158A _ 8B. 45, F0
        add     eax, 16                                 ; 158D _ 83. C0, 10
        mov     dword [esp+8H], 0                       ; 1590 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], eax                     ; 1598 _ 89. 44 24, 04
        mov     eax, dword [ebp-24H]                    ; 159C _ 8B. 45, DC
        mov     dword [esp], eax                        ; 159F _ 89. 04 24
        call    _timer_init                             ; 15A2 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], 7                      ; 15A7 _ C7. 45, F4, 00000007
        jmp     ?_064                                   ; 15AE _ EB, 24

?_063:  mov     eax, dword [ebp-10H]                    ; 15B0 _ 8B. 45, F0
        add     eax, 16                                 ; 15B3 _ 83. C0, 10
        mov     dword [esp+8H], 1                       ; 15B6 _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], eax                     ; 15BE _ 89. 44 24, 04
        mov     eax, dword [ebp-24H]                    ; 15C2 _ 8B. 45, DC
        mov     dword [esp], eax                        ; 15C5 _ 89. 04 24
        call    _timer_init                             ; 15C8 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], 0                      ; 15CD _ C7. 45, F4, 00000000
?_064:  mov     dword [esp+4H], 50                      ; 15D4 _ C7. 44 24, 04, 00000032
        mov     eax, dword [ebp-24H]                    ; 15DC _ 8B. 45, DC
        mov     dword [esp], eax                        ; 15DF _ 89. 04 24
        call    _timer_settime                          ; 15E2 _ E8, 00000000(rel)
        jmp     ?_075                                   ; 15E7 _ E9, 000002CB

?_065:  cmp     dword [ebp-30H], 87                     ; 15EC _ 83. 7D, D0, 57
        jnz     ?_066                                   ; 15F0 _ 75, 3C
        mov     dword [ebp-0CH], 7                      ; 15F2 _ C7. 45, F4, 00000007
        mov     eax, dword [ebp-10H]                    ; 15F9 _ 8B. 45, F0
        add     eax, 16                                 ; 15FC _ 83. C0, 10
        mov     dword [esp+8H], 0                       ; 15FF _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], eax                     ; 1607 _ 89. 44 24, 04
        mov     eax, dword [ebp-24H]                    ; 160B _ 8B. 45, DC
        mov     dword [esp], eax                        ; 160E _ 89. 04 24
        call    _timer_init                             ; 1611 _ E8, 00000000(rel)
        mov     dword [esp+4H], 50                      ; 1616 _ C7. 44 24, 04, 00000032
        mov     eax, dword [ebp-24H]                    ; 161E _ 8B. 45, DC
        mov     dword [esp], eax                        ; 1621 _ 89. 04 24
        call    _timer_settime                          ; 1624 _ E8, 00000000(rel)
        jmp     ?_075                                   ; 1629 _ E9, 00000289

?_066:  cmp     dword [ebp-30H], 88                     ; 162E _ 83. 7D, D0, 58
        jnz     ?_067                                   ; 1632 _ 75, 59
        mov     ecx, dword [?_326]                      ; 1634 _ 8B. 0D, 00000010(d)
        mov     edx, dword [?_325]                      ; 163A _ 8B. 15, 0000000C(d)
        mov     eax, dword [_shtctl]                    ; 1640 _ A1, 00000264(d)
        mov     dword [esp+10H], 0                      ; 1645 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], ecx                    ; 164D _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 1651 _ 89. 54 24, 08
        mov     edx, dword [ebp+8H]                     ; 1655 _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 1658 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 165C _ 89. 04 24
        call    _set_cursor                             ; 165F _ E8, FFFFF259
        mov     dword [ebp-0CH], -1                     ; 1664 _ C7. 45, F4, FFFFFFFF
        mov     eax, dword [_task_main]                 ; 166B _ A1, 00000274(d)
        mov     dword [esp+8H], 0                       ; 1670 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], -1                      ; 1678 _ C7. 44 24, 04, FFFFFFFF
        mov     dword [esp], eax                        ; 1680 _ 89. 04 24
        call    _task_run                               ; 1683 _ E8, 00000000(rel)
        jmp     ?_075                                   ; 1688 _ E9, 0000022A

?_067:  cmp     dword [ebp-30H], 28                     ; 168D _ 83. 7D, D0, 1C
        jne     ?_073                                   ; 1691 _ 0F 85, 00000134
        mov     ecx, dword [?_326]                      ; 1697 _ 8B. 0D, 00000010(d)
        mov     edx, dword [?_325]                      ; 169D _ 8B. 15, 0000000C(d)
        mov     eax, dword [_shtctl]                    ; 16A3 _ A1, 00000264(d)
        mov     dword [esp+10H], 0                      ; 16A8 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], ecx                    ; 16B0 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 16B4 _ 89. 54 24, 08
        mov     edx, dword [ebp+8H]                     ; 16B8 _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 16BB _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 16BF _ 89. 04 24
        call    _set_cursor                             ; 16C2 _ E8, FFFFF1F6
        mov     eax, dword [?_325]                      ; 16C7 _ A1, 0000000C(d)
        lea     edx, [eax+7H]                           ; 16CC _ 8D. 50, 07
        test    eax, eax                                ; 16CF _ 85. C0
        cmovs   eax, edx                                ; 16D1 _ 0F 48. C2
        sar     eax, 3                                  ; 16D4 _ C1. F8, 03
        lea     edx, [eax-2H]                           ; 16D7 _ 8D. 50, FE
        mov     eax, dword [ebp-20H]                    ; 16DA _ 8B. 45, E0
        add     eax, edx                                ; 16DD _ 01. D0
        mov     byte [eax], 0                           ; 16DF _ C6. 00, 00
        mov     eax, dword [?_326]                      ; 16E2 _ A1, 00000010(d)
        mov     edx, dword [ebp+8H]                     ; 16E7 _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 16EA _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 16EE _ 89. 04 24
        call    _cons_newline                           ; 16F1 _ E8, 000002D8
        mov     dword [?_326], eax                      ; 16F6 _ A3, 00000010(d)
        mov     dword [esp+4H], ?_312                   ; 16FB _ C7. 44 24, 04, 0000003A(d)
        mov     eax, dword [ebp-20H]                    ; 1703 _ 8B. 45, E0
        mov     dword [esp], eax                        ; 1706 _ 89. 04 24
        call    _strcmp                                 ; 1709 _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 170E _ 83. F8, 01
        jnz     ?_068                                   ; 1711 _ 75, 10
        mov     eax, dword [ebp+0CH]                    ; 1713 _ 8B. 45, 0C
        mov     dword [esp], eax                        ; 1716 _ 89. 04 24
        call    _cmd_mem                                ; 1719 _ E8, FFFFFA34
        jmp     ?_072                                   ; 171E _ E9, 00000099

?_068:  mov     dword [esp+4H], ?_313                   ; 1723 _ C7. 44 24, 04, 0000003E(d)
        mov     eax, dword [ebp-20H]                    ; 172B _ 8B. 45, E0
        mov     dword [esp], eax                        ; 172E _ 89. 04 24
        call    _strcmp                                 ; 1731 _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 1736 _ 83. F8, 01
        jnz     ?_069                                   ; 1739 _ 75, 07
        call    _cmd_cls                                ; 173B _ E8, FFFFFB02
        jmp     ?_072                                   ; 1740 _ EB, 7A

?_069:  mov     dword [esp+4H], ?_314                   ; 1742 _ C7. 44 24, 04, 00000042(d)
        mov     eax, dword [ebp-20H]                    ; 174A _ 8B. 45, E0
        mov     dword [esp], eax                        ; 174D _ 89. 04 24
        call    _strcmp                                 ; 1750 _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 1755 _ 83. F8, 01
        jnz     ?_070                                   ; 1758 _ 75, 07
        call    _cmd_hlt                                ; 175A _ E8, FFFFFBBB
        jmp     ?_072                                   ; 175F _ EB, 5B

?_070:  mov     dword [esp+4H], ?_315                   ; 1761 _ C7. 44 24, 04, 00000046(d)
        mov     eax, dword [ebp-20H]                    ; 1769 _ 8B. 45, E0
        mov     dword [esp], eax                        ; 176C _ 89. 04 24
        call    _strcmp                                 ; 176F _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 1774 _ 83. F8, 01
        jnz     ?_071                                   ; 1777 _ 75, 07
        call    _cmd_dir                                ; 1779 _ E8, FFFFF520
        jmp     ?_072                                   ; 177E _ EB, 3C

?_071:  mov     eax, dword [ebp-20H]                    ; 1780 _ 8B. 45, E0
        movzx   eax, byte [eax]                         ; 1783 _ 0F B6. 00
        cmp     al, 116                                 ; 1786 _ 3C, 74
        jnz     ?_072                                   ; 1788 _ 75, 32
        mov     eax, dword [ebp-20H]                    ; 178A _ 8B. 45, E0
        add     eax, 1                                  ; 178D _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 1790 _ 0F B6. 00
        cmp     al, 121                                 ; 1793 _ 3C, 79
        jnz     ?_072                                   ; 1795 _ 75, 25
        mov     eax, dword [ebp-20H]                    ; 1797 _ 8B. 45, E0
        add     eax, 2                                  ; 179A _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 179D _ 0F B6. 00
        cmp     al, 112                                 ; 17A0 _ 3C, 70
        jnz     ?_072                                   ; 17A2 _ 75, 18
        mov     eax, dword [ebp-20H]                    ; 17A4 _ 8B. 45, E0
        add     eax, 3                                  ; 17A7 _ 83. C0, 03
        movzx   eax, byte [eax]                         ; 17AA _ 0F B6. 00
        cmp     al, 101                                 ; 17AD _ 3C, 65
        jnz     ?_072                                   ; 17AF _ 75, 0B
        mov     eax, dword [ebp-20H]                    ; 17B1 _ 8B. 45, E0
        mov     dword [esp], eax                        ; 17B4 _ 89. 04 24
        call    _cmd_type                               ; 17B7 _ E8, FFFFF671
?_072:  mov     dword [?_325], 16                       ; 17BC _ C7. 05, 0000000C(d), 00000010
        jmp     ?_075                                   ; 17C6 _ E9, 000000EC

?_073:  cmp     dword [ebp-30H], 14                     ; 17CB _ 83. 7D, D0, 0E
        jnz     ?_074                                   ; 17CF _ 75, 79
        mov     eax, dword [?_325]                      ; 17D1 _ A1, 0000000C(d)
        cmp     eax, 8                                  ; 17D6 _ 83. F8, 08
        jle     ?_074                                   ; 17D9 _ 7E, 6F
        mov     ecx, dword [?_326]                      ; 17DB _ 8B. 0D, 00000010(d)
        mov     edx, dword [?_325]                      ; 17E1 _ 8B. 15, 0000000C(d)
        mov     eax, dword [_shtctl]                    ; 17E7 _ A1, 00000264(d)
        mov     dword [esp+10H], 0                      ; 17EC _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], ecx                    ; 17F4 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 17F8 _ 89. 54 24, 08
        mov     edx, dword [ebp+8H]                     ; 17FC _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 17FF _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1803 _ 89. 04 24
        call    _set_cursor                             ; 1806 _ E8, FFFFF0B2
        mov     eax, dword [?_325]                      ; 180B _ A1, 0000000C(d)
        sub     eax, 8                                  ; 1810 _ 83. E8, 08
        mov     dword [?_325], eax                      ; 1813 _ A3, 0000000C(d)
        mov     ecx, dword [?_326]                      ; 1818 _ 8B. 0D, 00000010(d)
        mov     edx, dword [?_325]                      ; 181E _ 8B. 15, 0000000C(d)
        mov     eax, dword [_shtctl]                    ; 1824 _ A1, 00000264(d)
        mov     dword [esp+10H], 0                      ; 1829 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], ecx                    ; 1831 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 1835 _ 89. 54 24, 08
        mov     edx, dword [ebp+8H]                     ; 1839 _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 183C _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1840 _ 89. 04 24
        call    _set_cursor                             ; 1843 _ E8, FFFFF075
        jmp     ?_075                                   ; 1848 _ EB, 6D

?_074:  mov     eax, dword [ebp-30H]                    ; 184A _ 8B. 45, D0
        mov     dword [esp], eax                        ; 184D _ 89. 04 24
        call    _transferScanCode                       ; 1850 _ E8, FFFFF13B
        mov     byte [ebp-31H], al                      ; 1855 _ 88. 45, CF
        mov     eax, dword [?_325]                      ; 1858 _ A1, 0000000C(d)
        cmp     eax, 239                                ; 185D _ 3D, 000000EF
        jg      ?_075                                   ; 1862 _ 7F, 53
        cmp     byte [ebp-31H], 0                       ; 1864 _ 80. 7D, CF, 00
        jz      ?_075                                   ; 1868 _ 74, 4D
        mov     eax, dword [?_325]                      ; 186A _ A1, 0000000C(d)
        lea     edx, [eax+7H]                           ; 186F _ 8D. 50, 07
        test    eax, eax                                ; 1872 _ 85. C0
        cmovs   eax, edx                                ; 1874 _ 0F 48. C2
        sar     eax, 3                                  ; 1877 _ C1. F8, 03
        lea     edx, [eax-2H]                           ; 187A _ 8D. 50, FE
        mov     eax, dword [ebp-20H]                    ; 187D _ 8B. 45, E0
        add     edx, eax                                ; 1880 _ 01. C2
        movzx   eax, byte [ebp-31H]                     ; 1882 _ 0F B6. 45, CF
        mov     byte [edx], al                          ; 1886 _ 88. 02
        mov     eax, dword [?_325]                      ; 1888 _ A1, 0000000C(d)
        lea     edx, [eax+7H]                           ; 188D _ 8D. 50, 07
        test    eax, eax                                ; 1890 _ 85. C0
        cmovs   eax, edx                                ; 1892 _ 0F 48. C2
        sar     eax, 3                                  ; 1895 _ C1. F8, 03
        lea     edx, [eax-1H]                           ; 1898 _ 8D. 50, FF
        mov     eax, dword [ebp-20H]                    ; 189B _ 8B. 45, E0
        add     eax, edx                                ; 189E _ 01. D0
        mov     byte [eax], 0                           ; 18A0 _ C6. 00, 00
        movsx   eax, byte [ebp-31H]                     ; 18A3 _ 0F BE. 45, CF
        mov     dword [esp+4H], 1                       ; 18A7 _ C7. 44 24, 04, 00000001
        mov     dword [esp], eax                        ; 18AF _ 89. 04 24
        call    _cons_putchar                           ; 18B2 _ E8, 0000003E
?_075:  cmp     dword [ebp-0CH], 0                      ; 18B7 _ 83. 7D, F4, 00
        js      ?_061                                   ; 18BB _ 0F 88, FFFFFC83
        mov     ecx, dword [?_326]                      ; 18C1 _ 8B. 0D, 00000010(d)
        mov     edx, dword [?_325]                      ; 18C7 _ 8B. 15, 0000000C(d)
        mov     eax, dword [_shtctl]                    ; 18CD _ A1, 00000264(d)
        mov     ebx, dword [ebp-0CH]                    ; 18D2 _ 8B. 5D, F4
        mov     dword [esp+10H], ebx                    ; 18D5 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 18D9 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 18DD _ 89. 54 24, 08
        mov     edx, dword [ebp+8H]                     ; 18E1 _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 18E4 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 18E8 _ 89. 04 24
        call    _set_cursor                             ; 18EB _ E8, FFFFEFCD
        jmp     ?_061                                   ; 18F0 _ E9, FFFFFC4F

_cons_putchar:; Function begin
        push    ebp                                     ; 18F5 _ 55
        mov     ebp, esp                                ; 18F6 _ 89. E5
        push    ebx                                     ; 18F8 _ 53
        sub     esp, 52                                 ; 18F9 _ 83. EC, 34
        mov     eax, dword [ebp+8H]                     ; 18FC _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 18FF _ 8B. 55, 0C
        mov     byte [ebp-0CH], al                      ; 1902 _ 88. 45, F4
        mov     eax, edx                                ; 1905 _ 89. D0
        mov     byte [ebp-10H], al                      ; 1907 _ 88. 45, F0
        mov     ebx, dword [?_326]                      ; 190A _ 8B. 1D, 00000010(d)
        mov     ecx, dword [?_325]                      ; 1910 _ 8B. 0D, 0000000C(d)
        mov     edx, dword [_g_Console]                 ; 1916 _ 8B. 15, 00000008(d)
        mov     eax, dword [_shtctl]                    ; 191C _ A1, 00000264(d)
        mov     dword [esp+10H], 0                      ; 1921 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], ebx                    ; 1929 _ 89. 5C 24, 0C
        mov     dword [esp+8H], ecx                     ; 192D _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 1931 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1935 _ 89. 04 24
        call    _set_cursor                             ; 1938 _ E8, FFFFEF80
        movzx   eax, byte [ebp-0CH]                     ; 193D _ 0F B6. 45, F4
        mov     byte [?_328], al                        ; 1941 _ A2, 00000018(d)
        mov     byte [?_329], 0                         ; 1946 _ C6. 05, 00000019(d), 00
        mov     ebx, dword [?_326]                      ; 194D _ 8B. 1D, 00000010(d)
        mov     ecx, dword [?_325]                      ; 1953 _ 8B. 0D, 0000000C(d)
        mov     edx, dword [_g_Console]                 ; 1959 _ 8B. 15, 00000008(d)
        mov     eax, dword [_shtctl]                    ; 195F _ A1, 00000264(d)
        mov     dword [esp+14H], ?_328                  ; 1964 _ C7. 44 24, 14, 00000018(d)
        mov     dword [esp+10H], 7                      ; 196C _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ebx                    ; 1974 _ 89. 5C 24, 0C
        mov     dword [esp+8H], ecx                     ; 1978 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 197C _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1980 _ 89. 04 24
        call    _showString                             ; 1983 _ E8, 0000065F
        mov     eax, dword [?_325]                      ; 1988 _ A1, 0000000C(d)
        add     eax, 8                                  ; 198D _ 83. C0, 08
        mov     dword [?_325], eax                      ; 1990 _ A3, 0000000C(d)
        nop                                             ; 1995 _ 90
        add     esp, 52                                 ; 1996 _ 83. C4, 34
        pop     ebx                                     ; 1999 _ 5B
        pop     ebp                                     ; 199A _ 5D
        ret                                             ; 199B _ C3
; _cons_putchar End of function

_cons_putstr:; Function begin
        push    ebp                                     ; 199C _ 55
        mov     ebp, esp                                ; 199D _ 89. E5
        sub     esp, 24                                 ; 199F _ 83. EC, 18
        jmp     ?_077                                   ; 19A2 _ EB, 1D

?_076:  mov     eax, dword [ebp+8H]                     ; 19A4 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 19A7 _ 0F B6. 00
        movsx   eax, al                                 ; 19AA _ 0F BE. C0
        mov     dword [esp+4H], 1                       ; 19AD _ C7. 44 24, 04, 00000001
        mov     dword [esp], eax                        ; 19B5 _ 89. 04 24
        call    _cons_putchar                           ; 19B8 _ E8, FFFFFF38
        add     dword [ebp+8H], 1                       ; 19BD _ 83. 45, 08, 01
?_077:  mov     eax, dword [ebp+8H]                     ; 19C1 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 19C4 _ 0F B6. 00
        test    al, al                                  ; 19C7 _ 84. C0
        jnz     ?_076                                   ; 19C9 _ 75, D9
        nop                                             ; 19CB _ 90
        leave                                           ; 19CC _ C9
        ret                                             ; 19CD _ C3
; _cons_putstr End of function

_cons_newline:; Function begin
        push    ebp                                     ; 19CE _ 55
        mov     ebp, esp                                ; 19CF _ 89. E5
        push    ebx                                     ; 19D1 _ 53
        sub     esp, 52                                 ; 19D2 _ 83. EC, 34
        cmp     dword [ebp+8H], 139                     ; 19D5 _ 81. 7D, 08, 0000008B
        jg      ?_078                                   ; 19DC _ 7F, 09
        add     dword [ebp+8H], 16                      ; 19DE _ 83. 45, 08, 10
        jmp     ?_087                                   ; 19E2 _ E9, 000000DB

?_078:  mov     dword [ebp-10H], 28                     ; 19E7 _ C7. 45, F0, 0000001C
        jmp     ?_082                                   ; 19EE _ EB, 50

?_079:  mov     dword [ebp-0CH], 8                      ; 19F0 _ C7. 45, F4, 00000008
        jmp     ?_081                                   ; 19F7 _ EB, 3A

?_080:  mov     eax, dword [ebp+0CH]                    ; 19F9 _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 19FC _ 8B. 10
        mov     eax, dword [ebp-10H]                    ; 19FE _ 8B. 45, F0
        lea     ecx, [eax+10H]                          ; 1A01 _ 8D. 48, 10
        mov     eax, dword [ebp+0CH]                    ; 1A04 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1A07 _ 8B. 40, 04
        imul    eax, ecx                                ; 1A0A _ 0F AF. C1
        mov     ecx, dword [ebp-0CH]                    ; 1A0D _ 8B. 4D, F4
        add     eax, ecx                                ; 1A10 _ 01. C8
        add     eax, edx                                ; 1A12 _ 01. D0
        mov     edx, dword [ebp+0CH]                    ; 1A14 _ 8B. 55, 0C
        mov     ecx, dword [edx]                        ; 1A17 _ 8B. 0A
        mov     edx, dword [ebp+0CH]                    ; 1A19 _ 8B. 55, 0C
        mov     edx, dword [edx+4H]                     ; 1A1C _ 8B. 52, 04
        imul    edx, dword [ebp-10H]                    ; 1A1F _ 0F AF. 55, F0
        mov     ebx, dword [ebp-0CH]                    ; 1A23 _ 8B. 5D, F4
        add     edx, ebx                                ; 1A26 _ 01. DA
        add     edx, ecx                                ; 1A28 _ 01. CA
        movzx   eax, byte [eax]                         ; 1A2A _ 0F B6. 00
        mov     byte [edx], al                          ; 1A2D _ 88. 02
        add     dword [ebp-0CH], 1                      ; 1A2F _ 83. 45, F4, 01
?_081:  cmp     dword [ebp-0CH], 247                    ; 1A33 _ 81. 7D, F4, 000000F7
        jle     ?_080                                   ; 1A3A _ 7E, BD
        add     dword [ebp-10H], 1                      ; 1A3C _ 83. 45, F0, 01
?_082:  cmp     dword [ebp-10H], 139                    ; 1A40 _ 81. 7D, F0, 0000008B
        jle     ?_079                                   ; 1A47 _ 7E, A7
        mov     dword [ebp-10H], 140                    ; 1A49 _ C7. 45, F0, 0000008C
        jmp     ?_086                                   ; 1A50 _ EB, 33

?_083:  mov     dword [ebp-0CH], 8                      ; 1A52 _ C7. 45, F4, 00000008
        jmp     ?_085                                   ; 1A59 _ EB, 1D

?_084:  mov     eax, dword [ebp+0CH]                    ; 1A5B _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 1A5E _ 8B. 10
        mov     eax, dword [ebp+0CH]                    ; 1A60 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1A63 _ 8B. 40, 04
        imul    eax, dword [ebp-10H]                    ; 1A66 _ 0F AF. 45, F0
        mov     ecx, dword [ebp-0CH]                    ; 1A6A _ 8B. 4D, F4
        add     eax, ecx                                ; 1A6D _ 01. C8
        add     eax, edx                                ; 1A6F _ 01. D0
        mov     byte [eax], 0                           ; 1A71 _ C6. 00, 00
        add     dword [ebp-0CH], 1                      ; 1A74 _ 83. 45, F4, 01
?_085:  cmp     dword [ebp-0CH], 247                    ; 1A78 _ 81. 7D, F4, 000000F7
        jle     ?_084                                   ; 1A7F _ 7E, DA
        add     dword [ebp-10H], 1                      ; 1A81 _ 83. 45, F0, 01
?_086:  cmp     dword [ebp-10H], 155                    ; 1A85 _ 81. 7D, F0, 0000009B
        jle     ?_083                                   ; 1A8C _ 7E, C4
        mov     eax, dword [_shtctl]                    ; 1A8E _ A1, 00000264(d)
        mov     dword [esp+14H], 156                    ; 1A93 _ C7. 44 24, 14, 0000009C
        mov     dword [esp+10H], 248                    ; 1A9B _ C7. 44 24, 10, 000000F8
        mov     dword [esp+0CH], 28                     ; 1AA3 _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 8                       ; 1AAB _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp+0CH]                    ; 1AB3 _ 8B. 55, 0C
        mov     dword [esp+4H], edx                     ; 1AB6 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1ABA _ 89. 04 24
        call    _sheet_refresh                          ; 1ABD _ E8, 00000000(rel)
?_087:  mov     eax, dword [_shtctl]                    ; 1AC2 _ A1, 00000264(d)
        mov     dword [esp+14H], ?_310                  ; 1AC7 _ C7. 44 24, 14, 00000030(d)
        mov     dword [esp+10H], 7                      ; 1ACF _ C7. 44 24, 10, 00000007
        mov     edx, dword [ebp+8H]                     ; 1AD7 _ 8B. 55, 08
        mov     dword [esp+0CH], edx                    ; 1ADA _ 89. 54 24, 0C
        mov     dword [esp+8H], 8                       ; 1ADE _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp+0CH]                    ; 1AE6 _ 8B. 55, 0C
        mov     dword [esp+4H], edx                     ; 1AE9 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1AED _ 89. 04 24
        call    _showString                             ; 1AF0 _ E8, 000004F2
        mov     eax, dword [ebp+8H]                     ; 1AF5 _ 8B. 45, 08
        add     esp, 52                                 ; 1AF8 _ 83. C4, 34
        pop     ebx                                     ; 1AFB _ 5B
        pop     ebp                                     ; 1AFC _ 5D
        ret                                             ; 1AFD _ C3
; _cons_newline End of function

_init_screen8:; Function begin
        push    ebp                                     ; 1AFE _ 55
        mov     ebp, esp                                ; 1AFF _ 89. E5
        push    ebx                                     ; 1B01 _ 53
        sub     esp, 36                                 ; 1B02 _ 83. EC, 24
        mov     eax, dword [ebp+10H]                    ; 1B05 _ 8B. 45, 10
        lea     edx, [eax-1DH]                          ; 1B08 _ 8D. 50, E3
        mov     eax, dword [ebp+0CH]                    ; 1B0B _ 8B. 45, 0C
        sub     eax, 1                                  ; 1B0E _ 83. E8, 01
        mov     dword [esp+18H], edx                    ; 1B11 _ 89. 54 24, 18
        mov     dword [esp+14H], eax                    ; 1B15 _ 89. 44 24, 14
        mov     dword [esp+10H], 0                      ; 1B19 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 1B21 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 14                      ; 1B29 _ C7. 44 24, 08, 0000000E
        mov     eax, dword [ebp+0CH]                    ; 1B31 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1B34 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1B38 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1B3B _ 89. 04 24
        call    _boxfill8                               ; 1B3E _ E8, 00000618
        mov     eax, dword [ebp+10H]                    ; 1B43 _ 8B. 45, 10
        lea     ecx, [eax-1CH]                          ; 1B46 _ 8D. 48, E4
        mov     eax, dword [ebp+0CH]                    ; 1B49 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 1B4C _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 1B4F _ 8B. 45, 10
        sub     eax, 28                                 ; 1B52 _ 83. E8, 1C
        mov     dword [esp+18H], ecx                    ; 1B55 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 1B59 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 1B5D _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 1B61 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 1B69 _ C7. 44 24, 08, 00000008
        mov     eax, dword [ebp+0CH]                    ; 1B71 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1B74 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1B78 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1B7B _ 89. 04 24
        call    _boxfill8                               ; 1B7E _ E8, 000005D8
        mov     eax, dword [ebp+10H]                    ; 1B83 _ 8B. 45, 10
        lea     ecx, [eax-1BH]                          ; 1B86 _ 8D. 48, E5
        mov     eax, dword [ebp+0CH]                    ; 1B89 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 1B8C _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 1B8F _ 8B. 45, 10
        sub     eax, 27                                 ; 1B92 _ 83. E8, 1B
        mov     dword [esp+18H], ecx                    ; 1B95 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 1B99 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 1B9D _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 1BA1 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 7                       ; 1BA9 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 1BB1 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1BB4 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1BB8 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1BBB _ 89. 04 24
        call    _boxfill8                               ; 1BBE _ E8, 00000598
        mov     eax, dword [ebp+10H]                    ; 1BC3 _ 8B. 45, 10
        lea     ecx, [eax-1H]                           ; 1BC6 _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 1BC9 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 1BCC _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 1BCF _ 8B. 45, 10
        sub     eax, 26                                 ; 1BD2 _ 83. E8, 1A
        mov     dword [esp+18H], ecx                    ; 1BD5 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 1BD9 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 1BDD _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 1BE1 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 1BE9 _ C7. 44 24, 08, 00000008
        mov     eax, dword [ebp+0CH]                    ; 1BF1 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1BF4 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1BF8 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1BFB _ 89. 04 24
        call    _boxfill8                               ; 1BFE _ E8, 00000558
        mov     eax, dword [ebp+10H]                    ; 1C03 _ 8B. 45, 10
        lea     edx, [eax-18H]                          ; 1C06 _ 8D. 50, E8
        mov     eax, dword [ebp+10H]                    ; 1C09 _ 8B. 45, 10
        sub     eax, 24                                 ; 1C0C _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 1C0F _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 1C13 _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 1C1B _ 89. 44 24, 10
        mov     dword [esp+0CH], 3                      ; 1C1F _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 7                       ; 1C27 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 1C2F _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1C32 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1C36 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1C39 _ 89. 04 24
        call    _boxfill8                               ; 1C3C _ E8, 0000051A
        mov     eax, dword [ebp+10H]                    ; 1C41 _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 1C44 _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 1C47 _ 8B. 45, 10
        sub     eax, 24                                 ; 1C4A _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 1C4D _ 89. 54 24, 18
        mov     dword [esp+14H], 2                      ; 1C51 _ C7. 44 24, 14, 00000002
        mov     dword [esp+10H], eax                    ; 1C59 _ 89. 44 24, 10
        mov     dword [esp+0CH], 2                      ; 1C5D _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 7                       ; 1C65 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 1C6D _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1C70 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1C74 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1C77 _ 89. 04 24
        call    _boxfill8                               ; 1C7A _ E8, 000004DC
        mov     eax, dword [ebp+10H]                    ; 1C7F _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 1C82 _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 1C85 _ 8B. 45, 10
        sub     eax, 4                                  ; 1C88 _ 83. E8, 04
        mov     dword [esp+18H], edx                    ; 1C8B _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 1C8F _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 1C97 _ 89. 44 24, 10
        mov     dword [esp+0CH], 3                      ; 1C9B _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 15                      ; 1CA3 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 1CAB _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1CAE _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1CB2 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1CB5 _ 89. 04 24
        call    _boxfill8                               ; 1CB8 _ E8, 0000049E
        mov     eax, dword [ebp+10H]                    ; 1CBD _ 8B. 45, 10
        lea     edx, [eax-5H]                           ; 1CC0 _ 8D. 50, FB
        mov     eax, dword [ebp+10H]                    ; 1CC3 _ 8B. 45, 10
        sub     eax, 23                                 ; 1CC6 _ 83. E8, 17
        mov     dword [esp+18H], edx                    ; 1CC9 _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 1CCD _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 1CD5 _ 89. 44 24, 10
        mov     dword [esp+0CH], 59                     ; 1CD9 _ C7. 44 24, 0C, 0000003B
        mov     dword [esp+8H], 15                      ; 1CE1 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 1CE9 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1CEC _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1CF0 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1CF3 _ 89. 04 24
        call    _boxfill8                               ; 1CF6 _ E8, 00000460
        mov     eax, dword [ebp+10H]                    ; 1CFB _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 1CFE _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 1D01 _ 8B. 45, 10
        sub     eax, 3                                  ; 1D04 _ 83. E8, 03
        mov     dword [esp+18H], edx                    ; 1D07 _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 1D0B _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 1D13 _ 89. 44 24, 10
        mov     dword [esp+0CH], 2                      ; 1D17 _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 0                       ; 1D1F _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp+0CH]                    ; 1D27 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1D2A _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1D2E _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1D31 _ 89. 04 24
        call    _boxfill8                               ; 1D34 _ E8, 00000422
        mov     eax, dword [ebp+10H]                    ; 1D39 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 1D3C _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 1D3F _ 8B. 45, 10
        sub     eax, 24                                 ; 1D42 _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 1D45 _ 89. 54 24, 18
        mov     dword [esp+14H], 60                     ; 1D49 _ C7. 44 24, 14, 0000003C
        mov     dword [esp+10H], eax                    ; 1D51 _ 89. 44 24, 10
        mov     dword [esp+0CH], 60                     ; 1D55 _ C7. 44 24, 0C, 0000003C
        mov     dword [esp+8H], 0                       ; 1D5D _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp+0CH]                    ; 1D65 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1D68 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1D6C _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1D6F _ 89. 04 24
        call    _boxfill8                               ; 1D72 _ E8, 000003E4
        mov     eax, dword [ebp+10H]                    ; 1D77 _ 8B. 45, 10
        lea     ebx, [eax-18H]                          ; 1D7A _ 8D. 58, E8
        mov     eax, dword [ebp+0CH]                    ; 1D7D _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 1D80 _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 1D83 _ 8B. 45, 10
        lea     edx, [eax-18H]                          ; 1D86 _ 8D. 50, E8
        mov     eax, dword [ebp+0CH]                    ; 1D89 _ 8B. 45, 0C
        sub     eax, 47                                 ; 1D8C _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 1D8F _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 1D93 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 1D97 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 1D9B _ 89. 44 24, 0C
        mov     dword [esp+8H], 15                      ; 1D9F _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 1DA7 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1DAA _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1DAE _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1DB1 _ 89. 04 24
        call    _boxfill8                               ; 1DB4 _ E8, 000003A2
        mov     eax, dword [ebp+10H]                    ; 1DB9 _ 8B. 45, 10
        lea     ebx, [eax-4H]                           ; 1DBC _ 8D. 58, FC
        mov     eax, dword [ebp+0CH]                    ; 1DBF _ 8B. 45, 0C
        lea     ecx, [eax-2FH]                          ; 1DC2 _ 8D. 48, D1
        mov     eax, dword [ebp+10H]                    ; 1DC5 _ 8B. 45, 10
        lea     edx, [eax-17H]                          ; 1DC8 _ 8D. 50, E9
        mov     eax, dword [ebp+0CH]                    ; 1DCB _ 8B. 45, 0C
        sub     eax, 47                                 ; 1DCE _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 1DD1 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 1DD5 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 1DD9 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 1DDD _ 89. 44 24, 0C
        mov     dword [esp+8H], 15                      ; 1DE1 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 1DE9 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1DEC _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1DF0 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1DF3 _ 89. 04 24
        call    _boxfill8                               ; 1DF6 _ E8, 00000360
        mov     eax, dword [ebp+10H]                    ; 1DFB _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 1DFE _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 1E01 _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 1E04 _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 1E07 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 1E0A _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 1E0D _ 8B. 45, 0C
        sub     eax, 47                                 ; 1E10 _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 1E13 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 1E17 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 1E1B _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 1E1F _ 89. 44 24, 0C
        mov     dword [esp+8H], 7                       ; 1E23 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 1E2B _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1E2E _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1E32 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1E35 _ 89. 04 24
        call    _boxfill8                               ; 1E38 _ E8, 0000031E
        mov     eax, dword [ebp+10H]                    ; 1E3D _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 1E40 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 1E43 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 1E46 _ 8D. 48, FD
        mov     eax, dword [ebp+10H]                    ; 1E49 _ 8B. 45, 10
        lea     edx, [eax-18H]                          ; 1E4C _ 8D. 50, E8
        mov     eax, dword [ebp+0CH]                    ; 1E4F _ 8B. 45, 0C
        sub     eax, 3                                  ; 1E52 _ 83. E8, 03
        mov     dword [esp+18H], ebx                    ; 1E55 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 1E59 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 1E5D _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 1E61 _ 89. 44 24, 0C
        mov     dword [esp+8H], 7                       ; 1E65 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 1E6D _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1E70 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1E74 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1E77 _ 89. 04 24
        call    _boxfill8                               ; 1E7A _ E8, 000002DC
        nop                                             ; 1E7F _ 90
        add     esp, 36                                 ; 1E80 _ 83. C4, 24
        pop     ebx                                     ; 1E83 _ 5B
        pop     ebp                                     ; 1E84 _ 5D
        ret                                             ; 1E85 _ C3
; _init_screen8 End of function

_computeMousePosition:; Function begin
        push    ebp                                     ; 1E86 _ 55
        mov     ebp, esp                                ; 1E87 _ 89. E5
        mov     eax, dword [ebp+10H]                    ; 1E89 _ 8B. 45, 10
        mov     edx, dword [eax+4H]                     ; 1E8C _ 8B. 50, 04
        mov     eax, dword [_mx]                        ; 1E8F _ A1, 00000134(d)
        add     eax, edx                                ; 1E94 _ 01. D0
        mov     dword [_mx], eax                        ; 1E96 _ A3, 00000134(d)
        mov     eax, dword [ebp+10H]                    ; 1E9B _ 8B. 45, 10
        mov     edx, dword [eax+8H]                     ; 1E9E _ 8B. 50, 08
        mov     eax, dword [_my]                        ; 1EA1 _ A1, 00000138(d)
        add     eax, edx                                ; 1EA6 _ 01. D0
        mov     dword [_my], eax                        ; 1EA8 _ A3, 00000138(d)
        mov     eax, dword [_mx]                        ; 1EAD _ A1, 00000134(d)
        test    eax, eax                                ; 1EB2 _ 85. C0
        jns     ?_088                                   ; 1EB4 _ 79, 0A
        mov     dword [_mx], 0                          ; 1EB6 _ C7. 05, 00000134(d), 00000000
?_088:  mov     eax, dword [_my]                        ; 1EC0 _ A1, 00000138(d)
        test    eax, eax                                ; 1EC5 _ 85. C0
        jns     ?_089                                   ; 1EC7 _ 79, 0A
        mov     dword [_my], 0                          ; 1EC9 _ C7. 05, 00000138(d), 00000000
?_089:  mov     edx, dword [_xsize]                     ; 1ED3 _ 8B. 15, 0000013C(d)
        mov     eax, dword [_mx]                        ; 1ED9 _ A1, 00000134(d)
        cmp     edx, eax                                ; 1EDE _ 39. C2
        jg      ?_090                                   ; 1EE0 _ 7F, 0D
        mov     eax, dword [_xsize]                     ; 1EE2 _ A1, 0000013C(d)
        sub     eax, 1                                  ; 1EE7 _ 83. E8, 01
        mov     dword [_mx], eax                        ; 1EEA _ A3, 00000134(d)
?_090:  mov     edx, dword [_ysize]                     ; 1EEF _ 8B. 15, 00000140(d)
        mov     eax, dword [_my]                        ; 1EF5 _ A1, 00000138(d)
        cmp     edx, eax                                ; 1EFA _ 39. C2
        jg      ?_091                                   ; 1EFC _ 7F, 0D
        mov     eax, dword [_ysize]                     ; 1EFE _ A1, 00000140(d)
        sub     eax, 1                                  ; 1F03 _ 83. E8, 01
        mov     dword [_my], eax                        ; 1F06 _ A3, 00000138(d)
?_091:  nop                                             ; 1F0B _ 90
        pop     ebp                                     ; 1F0C _ 5D
        ret                                             ; 1F0D _ C3
; _computeMousePosition End of function

_show_mouse_info:; Function begin
        push    ebp                                     ; 1F0E _ 55
        mov     ebp, esp                                ; 1F0F _ 89. E5
        sub     esp, 40                                 ; 1F11 _ 83. EC, 28
        mov     eax, dword [_buf_back]                  ; 1F14 _ A1, 00000144(d)
        mov     dword [ebp-0CH], eax                    ; 1F19 _ 89. 45, F4
        mov     byte [ebp-0DH], 0                       ; 1F1C _ C6. 45, F3, 00
        call    _io_sti                                 ; 1F20 _ E8, 00000000(rel)
        mov     dword [esp], _mouseinfo                 ; 1F25 _ C7. 04 24, 00000040(d)
        call    _fifo8_get                              ; 1F2C _ E8, 00000000(rel)
        mov     byte [ebp-0DH], al                      ; 1F31 _ 88. 45, F3
        movzx   eax, byte [ebp-0DH]                     ; 1F34 _ 0F B6. 45, F3
        mov     dword [esp+4H], eax                     ; 1F38 _ 89. 44 24, 04
        mov     dword [esp], _mdec                      ; 1F3C _ C7. 04 24, 00000100(d)
        call    _mouse_decode                           ; 1F43 _ E8, 00000787
        test    eax, eax                                ; 1F48 _ 85. C0
        jz      ?_092                                   ; 1F4A _ 74, 77
        mov     dword [esp+8H], _mdec                   ; 1F4C _ C7. 44 24, 08, 00000100(d)
        mov     eax, dword [ebp+0CH]                    ; 1F54 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1F57 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1F5B _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1F5E _ 89. 04 24
        call    _computeMousePosition                   ; 1F61 _ E8, FFFFFF20
        mov     edx, dword [_my]                        ; 1F66 _ 8B. 15, 00000138(d)
        mov     eax, dword [_mx]                        ; 1F6C _ A1, 00000134(d)
        mov     dword [esp+0CH], edx                    ; 1F71 _ 89. 54 24, 0C
        mov     dword [esp+8H], eax                     ; 1F75 _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 1F79 _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 1F7C _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1F80 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1F83 _ 89. 04 24
        call    _sheet_slide                            ; 1F86 _ E8, 00000000(rel)
        mov     eax, dword [?_333]                      ; 1F8B _ A1, 0000010C(d)
        and     eax, 01H                                ; 1F90 _ 83. E0, 01
        test    eax, eax                                ; 1F93 _ 85. C0
        jz      ?_092                                   ; 1F95 _ 74, 2C
        mov     eax, dword [_my]                        ; 1F97 _ A1, 00000138(d)
        lea     ecx, [eax-8H]                           ; 1F9C _ 8D. 48, F8
        mov     eax, dword [_mx]                        ; 1F9F _ A1, 00000134(d)
        lea     edx, [eax-50H]                          ; 1FA4 _ 8D. 50, B0
        mov     eax, dword [_shtMsgBox]                 ; 1FA7 _ A1, 00000260(d)
        mov     dword [esp+0CH], ecx                    ; 1FAC _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 1FB0 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 1FB4 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1FB8 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1FBB _ 89. 04 24
        call    _sheet_slide                            ; 1FBE _ E8, 00000000(rel)
?_092:  nop                                             ; 1FC3 _ 90
        leave                                           ; 1FC4 _ C9
        ret                                             ; 1FC5 _ C3
; _show_mouse_info End of function

_initBootInfo:; Function begin
        push    ebp                                     ; 1FC6 _ 55
        mov     ebp, esp                                ; 1FC7 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 1FC9 _ 8B. 45, 08
        mov     dword [eax], -536870912                 ; 1FCC _ C7. 00, E0000000
        mov     eax, dword [ebp+8H]                     ; 1FD2 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 640                      ; 1FD5 _ 66: C7. 40, 04, 0280
        mov     eax, dword [ebp+8H]                     ; 1FDB _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 480                      ; 1FDE _ 66: C7. 40, 06, 01E0
        nop                                             ; 1FE4 _ 90
        pop     ebp                                     ; 1FE5 _ 5D
        ret                                             ; 1FE6 _ C3
; _initBootInfo End of function

_showString:; Function begin
        push    ebp                                     ; 1FE7 _ 55
        mov     ebp, esp                                ; 1FE8 _ 89. E5
        push    ebx                                     ; 1FEA _ 53
        sub     esp, 68                                 ; 1FEB _ 83. EC, 44
        mov     eax, dword [ebp+18H]                    ; 1FEE _ 8B. 45, 18
        mov     byte [ebp-1CH], al                      ; 1FF1 _ 88. 45, E4
        mov     eax, dword [ebp+10H]                    ; 1FF4 _ 8B. 45, 10
        mov     dword [ebp-0CH], eax                    ; 1FF7 _ 89. 45, F4
        mov     dword [ebp-10H], 0                      ; 1FFA _ C7. 45, F0, 00000000
        jmp     ?_094                                   ; 2001 _ EB, 4B

?_093:  mov     eax, dword [ebp+1CH]                    ; 2003 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 2006 _ 0F B6. 00
        movzx   eax, al                                 ; 2009 _ 0F B6. C0
        shl     eax, 4                                  ; 200C _ C1. E0, 04
        lea     ebx, [_systemFont+eax]                  ; 200F _ 8D. 98, 00000000(d)
        movsx   eax, byte [ebp-1CH]                     ; 2015 _ 0F BE. 45, E4
        mov     edx, dword [ebp+0CH]                    ; 2019 _ 8B. 55, 0C
        mov     ecx, dword [edx+4H]                     ; 201C _ 8B. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 201F _ 8B. 55, 0C
        mov     edx, dword [edx]                        ; 2022 _ 8B. 12
        mov     dword [esp+14H], ebx                    ; 2024 _ 89. 5C 24, 14
        mov     dword [esp+10H], eax                    ; 2028 _ 89. 44 24, 10
        mov     eax, dword [ebp+14H]                    ; 202C _ 8B. 45, 14
        mov     dword [esp+0CH], eax                    ; 202F _ 89. 44 24, 0C
        mov     eax, dword [ebp+10H]                    ; 2033 _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 2036 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 203A _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 203E _ 89. 14 24
        call    _showFont8                              ; 2041 _ E8, 00000165
        add     dword [ebp+10H], 8                      ; 2046 _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 204A _ 83. 45, 1C, 01
?_094:  mov     eax, dword [ebp+1CH]                    ; 204E _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 2051 _ 0F B6. 00
        test    al, al                                  ; 2054 _ 84. C0
        jnz     ?_093                                   ; 2056 _ 75, AB
        mov     eax, dword [ebp+14H]                    ; 2058 _ 8B. 45, 14
        add     eax, 16                                 ; 205B _ 83. C0, 10
        mov     dword [esp+14H], eax                    ; 205E _ 89. 44 24, 14
        mov     eax, dword [ebp+10H]                    ; 2062 _ 8B. 45, 10
        mov     dword [esp+10H], eax                    ; 2065 _ 89. 44 24, 10
        mov     eax, dword [ebp+14H]                    ; 2069 _ 8B. 45, 14
        mov     dword [esp+0CH], eax                    ; 206C _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 2070 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 2073 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 2077 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 207A _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 207E _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2081 _ 89. 04 24
        call    _sheet_refresh                          ; 2084 _ E8, 00000000(rel)
        nop                                             ; 2089 _ 90
        add     esp, 68                                 ; 208A _ 83. C4, 44
        pop     ebx                                     ; 208D _ 5B
        pop     ebp                                     ; 208E _ 5D
        ret                                             ; 208F _ C3
; _showString End of function

_init_palette:; Function begin
        push    ebp                                     ; 2090 _ 55
        mov     ebp, esp                                ; 2091 _ 89. E5
        sub     esp, 24                                 ; 2093 _ 83. EC, 18
        mov     dword [esp+8H], _table_rgb.2529         ; 2096 _ C7. 44 24, 08, 00000120(d)
        mov     dword [esp+4H], 15                      ; 209E _ C7. 44 24, 04, 0000000F
        mov     dword [esp], 0                          ; 20A6 _ C7. 04 24, 00000000
        call    _set_palette                            ; 20AD _ E8, 00000003
        nop                                             ; 20B2 _ 90
        leave                                           ; 20B3 _ C9
        ret                                             ; 20B4 _ C3
; _init_palette End of function

_set_palette:; Function begin
        push    ebp                                     ; 20B5 _ 55
        mov     ebp, esp                                ; 20B6 _ 89. E5
        sub     esp, 40                                 ; 20B8 _ 83. EC, 28
        call    _io_load_eflags                         ; 20BB _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 20C0 _ 89. 45, F0
        call    _io_cli                                 ; 20C3 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 20C8 _ 8B. 45, 08
        mov     dword [esp+4H], eax                     ; 20CB _ 89. 44 24, 04
        mov     dword [esp], 968                        ; 20CF _ C7. 04 24, 000003C8
        call    _io_out8                                ; 20D6 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 20DB _ 8B. 45, 08
        mov     dword [ebp-0CH], eax                    ; 20DE _ 89. 45, F4
        jmp     ?_096                                   ; 20E1 _ EB, 62

?_095:  mov     eax, dword [ebp+10H]                    ; 20E3 _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 20E6 _ 0F B6. 00
        shr     al, 2                                   ; 20E9 _ C0. E8, 02
        movzx   eax, al                                 ; 20EC _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 20EF _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 20F3 _ C7. 04 24, 000003C9
        call    _io_out8                                ; 20FA _ E8, 00000000(rel)
        mov     eax, dword [ebp+10H]                    ; 20FF _ 8B. 45, 10
        add     eax, 1                                  ; 2102 _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 2105 _ 0F B6. 00
        shr     al, 2                                   ; 2108 _ C0. E8, 02
        movzx   eax, al                                 ; 210B _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 210E _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 2112 _ C7. 04 24, 000003C9
        call    _io_out8                                ; 2119 _ E8, 00000000(rel)
        mov     eax, dword [ebp+10H]                    ; 211E _ 8B. 45, 10
        add     eax, 2                                  ; 2121 _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 2124 _ 0F B6. 00
        shr     al, 2                                   ; 2127 _ C0. E8, 02
        movzx   eax, al                                 ; 212A _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 212D _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 2131 _ C7. 04 24, 000003C9
        call    _io_out8                                ; 2138 _ E8, 00000000(rel)
        add     dword [ebp+10H], 3                      ; 213D _ 83. 45, 10, 03
        add     dword [ebp-0CH], 1                      ; 2141 _ 83. 45, F4, 01
?_096:  mov     eax, dword [ebp-0CH]                    ; 2145 _ 8B. 45, F4
        cmp     eax, dword [ebp+0CH]                    ; 2148 _ 3B. 45, 0C
        jle     ?_095                                   ; 214B _ 7E, 96
        mov     eax, dword [ebp-10H]                    ; 214D _ 8B. 45, F0
        mov     dword [esp], eax                        ; 2150 _ 89. 04 24
        call    _io_store_eflags                        ; 2153 _ E8, 00000000(rel)
        nop                                             ; 2158 _ 90
        leave                                           ; 2159 _ C9
        ret                                             ; 215A _ C3
; _set_palette End of function

_boxfill8:; Function begin
        push    ebp                                     ; 215B _ 55
        mov     ebp, esp                                ; 215C _ 89. E5
        sub     esp, 20                                 ; 215E _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 2161 _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 2164 _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 2167 _ 8B. 45, 18
        mov     dword [ebp-8H], eax                     ; 216A _ 89. 45, F8
        jmp     ?_100                                   ; 216D _ EB, 31

?_097:  mov     eax, dword [ebp+14H]                    ; 216F _ 8B. 45, 14
        mov     dword [ebp-4H], eax                     ; 2172 _ 89. 45, FC
        jmp     ?_099                                   ; 2175 _ EB, 1D

?_098:  mov     eax, dword [ebp-8H]                     ; 2177 _ 8B. 45, F8
        imul    eax, dword [ebp+0CH]                    ; 217A _ 0F AF. 45, 0C
        mov     edx, dword [ebp-4H]                     ; 217E _ 8B. 55, FC
        add     eax, edx                                ; 2181 _ 01. D0
        mov     edx, eax                                ; 2183 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2185 _ 8B. 45, 08
        add     edx, eax                                ; 2188 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 218A _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 218E _ 88. 02
        add     dword [ebp-4H], 1                       ; 2190 _ 83. 45, FC, 01
?_099:  mov     eax, dword [ebp-4H]                     ; 2194 _ 8B. 45, FC
        cmp     eax, dword [ebp+1CH]                    ; 2197 _ 3B. 45, 1C
        jle     ?_098                                   ; 219A _ 7E, DB
        add     dword [ebp-8H], 1                       ; 219C _ 83. 45, F8, 01
?_100:  mov     eax, dword [ebp-8H]                     ; 21A0 _ 8B. 45, F8
        cmp     eax, dword [ebp+20H]                    ; 21A3 _ 3B. 45, 20
        jle     ?_097                                   ; 21A6 _ 7E, C7
        nop                                             ; 21A8 _ 90
        leave                                           ; 21A9 _ C9
        ret                                             ; 21AA _ C3
; _boxfill8 End of function

_showFont8:; Function begin
        push    ebp                                     ; 21AB _ 55
        mov     ebp, esp                                ; 21AC _ 89. E5
        sub     esp, 20                                 ; 21AE _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 21B1 _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 21B4 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 21B7 _ C7. 45, FC, 00000000
        jmp     ?_110                                   ; 21BE _ E9, 0000015C

?_101:  mov     edx, dword [ebp-4H]                     ; 21C3 _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 21C6 _ 8B. 45, 1C
        add     eax, edx                                ; 21C9 _ 01. D0
        movzx   eax, byte [eax]                         ; 21CB _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 21CE _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 21D1 _ 80. 7D, FB, 00
        jns     ?_102                                   ; 21D5 _ 79, 1E
        mov     edx, dword [ebp+14H]                    ; 21D7 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 21DA _ 8B. 45, FC
        add     eax, edx                                ; 21DD _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 21DF _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 21E3 _ 8B. 55, 10
        add     eax, edx                                ; 21E6 _ 01. D0
        mov     edx, eax                                ; 21E8 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 21EA _ 8B. 45, 08
        add     edx, eax                                ; 21ED _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 21EF _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 21F3 _ 88. 02
?_102:  movsx   eax, byte [ebp-5H]                      ; 21F5 _ 0F BE. 45, FB
        and     eax, 40H                                ; 21F9 _ 83. E0, 40
        test    eax, eax                                ; 21FC _ 85. C0
        jz      ?_103                                   ; 21FE _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 2200 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 2203 _ 8B. 45, FC
        add     eax, edx                                ; 2206 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 2208 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 220C _ 8B. 55, 10
        add     eax, edx                                ; 220F _ 01. D0
        lea     edx, [eax+1H]                           ; 2211 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2214 _ 8B. 45, 08
        add     edx, eax                                ; 2217 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 2219 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 221D _ 88. 02
?_103:  movsx   eax, byte [ebp-5H]                      ; 221F _ 0F BE. 45, FB
        and     eax, 20H                                ; 2223 _ 83. E0, 20
        test    eax, eax                                ; 2226 _ 85. C0
        jz      ?_104                                   ; 2228 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 222A _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 222D _ 8B. 45, FC
        add     eax, edx                                ; 2230 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 2232 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 2236 _ 8B. 55, 10
        add     eax, edx                                ; 2239 _ 01. D0
        lea     edx, [eax+2H]                           ; 223B _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 223E _ 8B. 45, 08
        add     edx, eax                                ; 2241 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 2243 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 2247 _ 88. 02
?_104:  movsx   eax, byte [ebp-5H]                      ; 2249 _ 0F BE. 45, FB
        and     eax, 10H                                ; 224D _ 83. E0, 10
        test    eax, eax                                ; 2250 _ 85. C0
        jz      ?_105                                   ; 2252 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 2254 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 2257 _ 8B. 45, FC
        add     eax, edx                                ; 225A _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 225C _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 2260 _ 8B. 55, 10
        add     eax, edx                                ; 2263 _ 01. D0
        lea     edx, [eax+3H]                           ; 2265 _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 2268 _ 8B. 45, 08
        add     edx, eax                                ; 226B _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 226D _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 2271 _ 88. 02
?_105:  movsx   eax, byte [ebp-5H]                      ; 2273 _ 0F BE. 45, FB
        and     eax, 08H                                ; 2277 _ 83. E0, 08
        test    eax, eax                                ; 227A _ 85. C0
        jz      ?_106                                   ; 227C _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 227E _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 2281 _ 8B. 45, FC
        add     eax, edx                                ; 2284 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 2286 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 228A _ 8B. 55, 10
        add     eax, edx                                ; 228D _ 01. D0
        lea     edx, [eax+4H]                           ; 228F _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2292 _ 8B. 45, 08
        add     edx, eax                                ; 2295 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 2297 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 229B _ 88. 02
?_106:  movsx   eax, byte [ebp-5H]                      ; 229D _ 0F BE. 45, FB
        and     eax, 04H                                ; 22A1 _ 83. E0, 04
        test    eax, eax                                ; 22A4 _ 85. C0
        jz      ?_107                                   ; 22A6 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 22A8 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 22AB _ 8B. 45, FC
        add     eax, edx                                ; 22AE _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 22B0 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 22B4 _ 8B. 55, 10
        add     eax, edx                                ; 22B7 _ 01. D0
        lea     edx, [eax+5H]                           ; 22B9 _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 22BC _ 8B. 45, 08
        add     edx, eax                                ; 22BF _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 22C1 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 22C5 _ 88. 02
?_107:  movsx   eax, byte [ebp-5H]                      ; 22C7 _ 0F BE. 45, FB
        and     eax, 02H                                ; 22CB _ 83. E0, 02
        test    eax, eax                                ; 22CE _ 85. C0
        jz      ?_108                                   ; 22D0 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 22D2 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 22D5 _ 8B. 45, FC
        add     eax, edx                                ; 22D8 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 22DA _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 22DE _ 8B. 55, 10
        add     eax, edx                                ; 22E1 _ 01. D0
        lea     edx, [eax+6H]                           ; 22E3 _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 22E6 _ 8B. 45, 08
        add     edx, eax                                ; 22E9 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 22EB _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 22EF _ 88. 02
?_108:  movsx   eax, byte [ebp-5H]                      ; 22F1 _ 0F BE. 45, FB
        and     eax, 01H                                ; 22F5 _ 83. E0, 01
        test    eax, eax                                ; 22F8 _ 85. C0
        jz      ?_109                                   ; 22FA _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 22FC _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 22FF _ 8B. 45, FC
        add     eax, edx                                ; 2302 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 2304 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 2308 _ 8B. 55, 10
        add     eax, edx                                ; 230B _ 01. D0
        lea     edx, [eax+7H]                           ; 230D _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 2310 _ 8B. 45, 08
        add     edx, eax                                ; 2313 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 2315 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 2319 _ 88. 02
?_109:  add     dword [ebp-4H], 1                       ; 231B _ 83. 45, FC, 01
?_110:  cmp     dword [ebp-4H], 15                      ; 231F _ 83. 7D, FC, 0F
        jle     ?_101                                   ; 2323 _ 0F 8E, FFFFFE9A
        nop                                             ; 2329 _ 90
        leave                                           ; 232A _ C9
        ret                                             ; 232B _ C3
; _showFont8 End of function

_init_mouse_cursor:; Function begin
        push    ebp                                     ; 232C _ 55
        mov     ebp, esp                                ; 232D _ 89. E5
        sub     esp, 20                                 ; 232F _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 2332 _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 2335 _ 88. 45, EC
        mov     dword [ebp-8H], 0                       ; 2338 _ C7. 45, F8, 00000000
        jmp     ?_117                                   ; 233F _ E9, 000000B1

?_111:  mov     dword [ebp-4H], 0                       ; 2344 _ C7. 45, FC, 00000000
        jmp     ?_116                                   ; 234B _ E9, 00000097

?_112:  mov     eax, dword [ebp-8H]                     ; 2350 _ 8B. 45, F8
        shl     eax, 4                                  ; 2353 _ C1. E0, 04
        mov     edx, eax                                ; 2356 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 2358 _ 8B. 45, FC
        add     eax, edx                                ; 235B _ 01. D0
        add     eax, _cursor.2576                       ; 235D _ 05, 00000160(d)
        movzx   eax, byte [eax]                         ; 2362 _ 0F B6. 00
        cmp     al, 42                                  ; 2365 _ 3C, 2A
        jnz     ?_113                                   ; 2367 _ 75, 17
        mov     eax, dword [ebp-8H]                     ; 2369 _ 8B. 45, F8
        shl     eax, 4                                  ; 236C _ C1. E0, 04
        mov     edx, eax                                ; 236F _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 2371 _ 8B. 45, FC
        add     eax, edx                                ; 2374 _ 01. D0
        mov     edx, eax                                ; 2376 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2378 _ 8B. 45, 08
        add     eax, edx                                ; 237B _ 01. D0
        mov     byte [eax], 0                           ; 237D _ C6. 00, 00
?_113:  mov     eax, dword [ebp-8H]                     ; 2380 _ 8B. 45, F8
        shl     eax, 4                                  ; 2383 _ C1. E0, 04
        mov     edx, eax                                ; 2386 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 2388 _ 8B. 45, FC
        add     eax, edx                                ; 238B _ 01. D0
        add     eax, _cursor.2576                       ; 238D _ 05, 00000160(d)
        movzx   eax, byte [eax]                         ; 2392 _ 0F B6. 00
        cmp     al, 79                                  ; 2395 _ 3C, 4F
        jnz     ?_114                                   ; 2397 _ 75, 17
        mov     eax, dword [ebp-8H]                     ; 2399 _ 8B. 45, F8
        shl     eax, 4                                  ; 239C _ C1. E0, 04
        mov     edx, eax                                ; 239F _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 23A1 _ 8B. 45, FC
        add     eax, edx                                ; 23A4 _ 01. D0
        mov     edx, eax                                ; 23A6 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 23A8 _ 8B. 45, 08
        add     eax, edx                                ; 23AB _ 01. D0
        mov     byte [eax], 7                           ; 23AD _ C6. 00, 07
?_114:  mov     eax, dword [ebp-8H]                     ; 23B0 _ 8B. 45, F8
        shl     eax, 4                                  ; 23B3 _ C1. E0, 04
        mov     edx, eax                                ; 23B6 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 23B8 _ 8B. 45, FC
        add     eax, edx                                ; 23BB _ 01. D0
        add     eax, _cursor.2576                       ; 23BD _ 05, 00000160(d)
        movzx   eax, byte [eax]                         ; 23C2 _ 0F B6. 00
        cmp     al, 46                                  ; 23C5 _ 3C, 2E
        jnz     ?_115                                   ; 23C7 _ 75, 1A
        mov     eax, dword [ebp-8H]                     ; 23C9 _ 8B. 45, F8
        shl     eax, 4                                  ; 23CC _ C1. E0, 04
        mov     edx, eax                                ; 23CF _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 23D1 _ 8B. 45, FC
        add     eax, edx                                ; 23D4 _ 01. D0
        mov     edx, eax                                ; 23D6 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 23D8 _ 8B. 45, 08
        add     edx, eax                                ; 23DB _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 23DD _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 23E1 _ 88. 02
?_115:  add     dword [ebp-4H], 1                       ; 23E3 _ 83. 45, FC, 01
?_116:  cmp     dword [ebp-4H], 15                      ; 23E7 _ 83. 7D, FC, 0F
        jle     ?_112                                   ; 23EB _ 0F 8E, FFFFFF5F
        add     dword [ebp-8H], 1                       ; 23F1 _ 83. 45, F8, 01
?_117:  cmp     dword [ebp-8H], 15                      ; 23F5 _ 83. 7D, F8, 0F
        jle     ?_111                                   ; 23F9 _ 0F 8E, FFFFFF45
        nop                                             ; 23FF _ 90
        leave                                           ; 2400 _ C9
        ret                                             ; 2401 _ C3
; _init_mouse_cursor End of function

_putblock:; Function begin
        push    ebp                                     ; 2402 _ 55
        mov     ebp, esp                                ; 2403 _ 89. E5
        push    ebx                                     ; 2405 _ 53
        sub     esp, 16                                 ; 2406 _ 83. EC, 10
        mov     dword [ebp-0CH], 0                      ; 2409 _ C7. 45, F4, 00000000
        jmp     ?_121                                   ; 2410 _ EB, 4E

?_118:  mov     dword [ebp-8H], 0                       ; 2412 _ C7. 45, F8, 00000000
        jmp     ?_120                                   ; 2419 _ EB, 39

?_119:  mov     eax, dword [ebp-0CH]                    ; 241B _ 8B. 45, F4
        imul    eax, dword [ebp+24H]                    ; 241E _ 0F AF. 45, 24
        mov     edx, dword [ebp-8H]                     ; 2422 _ 8B. 55, F8
        add     eax, edx                                ; 2425 _ 01. D0
        mov     edx, eax                                ; 2427 _ 89. C2
        mov     eax, dword [ebp+20H]                    ; 2429 _ 8B. 45, 20
        add     eax, edx                                ; 242C _ 01. D0
        mov     ecx, dword [ebp+1CH]                    ; 242E _ 8B. 4D, 1C
        mov     edx, dword [ebp-0CH]                    ; 2431 _ 8B. 55, F4
        add     edx, ecx                                ; 2434 _ 01. CA
        imul    edx, dword [ebp+0CH]                    ; 2436 _ 0F AF. 55, 0C
        mov     ebx, dword [ebp+18H]                    ; 243A _ 8B. 5D, 18
        mov     ecx, dword [ebp-8H]                     ; 243D _ 8B. 4D, F8
        add     ecx, ebx                                ; 2440 _ 01. D9
        add     edx, ecx                                ; 2442 _ 01. CA
        mov     ecx, edx                                ; 2444 _ 89. D1
        mov     edx, dword [ebp+8H]                     ; 2446 _ 8B. 55, 08
        add     edx, ecx                                ; 2449 _ 01. CA
        movzx   eax, byte [eax]                         ; 244B _ 0F B6. 00
        mov     byte [edx], al                          ; 244E _ 88. 02
        add     dword [ebp-8H], 1                       ; 2450 _ 83. 45, F8, 01
?_120:  mov     eax, dword [ebp-8H]                     ; 2454 _ 8B. 45, F8
        cmp     eax, dword [ebp+10H]                    ; 2457 _ 3B. 45, 10
        jl      ?_119                                   ; 245A _ 7C, BF
        add     dword [ebp-0CH], 1                      ; 245C _ 83. 45, F4, 01
?_121:  mov     eax, dword [ebp-0CH]                    ; 2460 _ 8B. 45, F4
        cmp     eax, dword [ebp+14H]                    ; 2463 _ 3B. 45, 14
        jl      ?_118                                   ; 2466 _ 7C, AA
        nop                                             ; 2468 _ 90
        add     esp, 16                                 ; 2469 _ 83. C4, 10
        pop     ebx                                     ; 246C _ 5B
        pop     ebp                                     ; 246D _ 5D
        ret                                             ; 246E _ C3
; _putblock End of function

_intHandlerFromC:; Function begin
        push    ebp                                     ; 246F _ 55
        mov     ebp, esp                                ; 2470 _ 89. E5
        sub     esp, 40                                 ; 2472 _ 83. EC, 28
        mov     eax, dword [_bootInfo]                  ; 2475 _ A1, 0000001C(d)
        mov     dword [ebp-0CH], eax                    ; 247A _ 89. 45, F4
        movzx   eax, word [?_330]                       ; 247D _ 0F B7. 05, 00000020(d)
        cwde                                            ; 2484 _ 98
        mov     dword [ebp-10H], eax                    ; 2485 _ 89. 45, F0
        movzx   eax, word [?_331]                       ; 2488 _ 0F B7. 05, 00000022(d)
        cwde                                            ; 248F _ 98
        mov     dword [ebp-14H], eax                    ; 2490 _ 89. 45, EC
        mov     dword [esp+4H], 32                      ; 2493 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 249B _ C7. 04 24, 00000020
        call    _io_out8                                ; 24A2 _ E8, 00000000(rel)
        mov     byte [ebp-15H], 0                       ; 24A7 _ C6. 45, EB, 00
        mov     dword [esp], 96                         ; 24AB _ C7. 04 24, 00000060
        call    _io_in8                                 ; 24B2 _ E8, 00000000(rel)
        mov     byte [ebp-15H], al                      ; 24B7 _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 24BA _ 0F B6. 45, EB
        mov     dword [esp+4H], eax                     ; 24BE _ 89. 44 24, 04
        mov     dword [esp], _keyinfo                   ; 24C2 _ C7. 04 24, 00000024(d)
        call    _fifo8_put                              ; 24C9 _ E8, 00000000(rel)
        nop                                             ; 24CE _ 90
        leave                                           ; 24CF _ C9
        ret                                             ; 24D0 _ C3
; _intHandlerFromC End of function

_charToHexVal:; Function begin
        push    ebp                                     ; 24D1 _ 55
        mov     ebp, esp                                ; 24D2 _ 89. E5
        sub     esp, 4                                  ; 24D4 _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 24D7 _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 24DA _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 24DD _ 80. 7D, FC, 09
        jle     ?_122                                   ; 24E1 _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 24E3 _ 0F B6. 45, FC
        add     eax, 55                                 ; 24E7 _ 83. C0, 37
        jmp     ?_123                                   ; 24EA _ EB, 07

?_122:  movzx   eax, byte [ebp-4H]                      ; 24EC _ 0F B6. 45, FC
        add     eax, 48                                 ; 24F0 _ 83. C0, 30
?_123:  leave                                           ; 24F3 _ C9
        ret                                             ; 24F4 _ C3
; _charToHexVal End of function

_charToHexStr:; Function begin
        push    ebp                                     ; 24F5 _ 55
        mov     ebp, esp                                ; 24F6 _ 89. E5
        sub     esp, 24                                 ; 24F8 _ 83. EC, 18
        mov     eax, dword [ebp+8H]                     ; 24FB _ 8B. 45, 08
        mov     byte [ebp-14H], al                      ; 24FE _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 2501 _ C7. 45, FC, 00000000
        movzx   eax, byte [ebp-14H]                     ; 2508 _ 0F B6. 45, EC
        and     eax, 0FH                                ; 250C _ 83. E0, 0F
        mov     byte [ebp-5H], al                       ; 250F _ 88. 45, FB
        movsx   eax, byte [ebp-5H]                      ; 2512 _ 0F BE. 45, FB
        mov     dword [esp], eax                        ; 2516 _ 89. 04 24
        call    _charToHexVal                           ; 2519 _ E8, FFFFFFB3
        mov     byte [?_302], al                        ; 251E _ A2, 00000103(d)
        movzx   eax, byte [ebp-14H]                     ; 2523 _ 0F B6. 45, EC
        shr     al, 4                                   ; 2527 _ C0. E8, 04
        mov     byte [ebp-14H], al                      ; 252A _ 88. 45, EC
        movzx   eax, byte [ebp-14H]                     ; 252D _ 0F B6. 45, EC
        movsx   eax, al                                 ; 2531 _ 0F BE. C0
        mov     dword [esp], eax                        ; 2534 _ 89. 04 24
        call    _charToHexVal                           ; 2537 _ E8, FFFFFF95
        mov     byte [?_301], al                        ; 253C _ A2, 00000102(d)
        mov     eax, _keyval                            ; 2541 _ B8, 00000100(d)
        leave                                           ; 2546 _ C9
        ret                                             ; 2547 _ C3
; _charToHexStr End of function

_intToHexStr:; Function begin
        push    ebp                                     ; 2548 _ 55
        mov     ebp, esp                                ; 2549 _ 89. E5
        sub     esp, 16                                 ; 254B _ 83. EC, 10
        mov     byte [_str.2624], 48                    ; 254E _ C6. 05, 00000388(d), 30
        mov     byte [?_336], 88                        ; 2555 _ C6. 05, 00000389(d), 58
        mov     byte [?_337], 0                         ; 255C _ C6. 05, 00000392(d), 00
        mov     dword [ebp-4H], 2                       ; 2563 _ C7. 45, FC, 00000002
        jmp     ?_125                                   ; 256A _ EB, 0F

?_124:  mov     eax, dword [ebp-4H]                     ; 256C _ 8B. 45, FC
        add     eax, _str.2624                          ; 256F _ 05, 00000388(d)
        mov     byte [eax], 48                          ; 2574 _ C6. 00, 30
        add     dword [ebp-4H], 1                       ; 2577 _ 83. 45, FC, 01
?_125:  cmp     dword [ebp-4H], 9                       ; 257B _ 83. 7D, FC, 09
        jle     ?_124                                   ; 257F _ 7E, EB
        mov     dword [ebp-8H], 9                       ; 2581 _ C7. 45, F8, 00000009
        jmp     ?_129                                   ; 2588 _ EB, 42

?_126:  mov     eax, dword [ebp+8H]                     ; 258A _ 8B. 45, 08
        and     eax, 0FH                                ; 258D _ 83. E0, 0F
        mov     dword [ebp-0CH], eax                    ; 2590 _ 89. 45, F4
        mov     eax, dword [ebp+8H]                     ; 2593 _ 8B. 45, 08
        shr     eax, 4                                  ; 2596 _ C1. E8, 04
        mov     dword [ebp+8H], eax                     ; 2599 _ 89. 45, 08
        cmp     dword [ebp-0CH], 9                      ; 259C _ 83. 7D, F4, 09
        jle     ?_127                                   ; 25A0 _ 7E, 14
        mov     eax, dword [ebp-0CH]                    ; 25A2 _ 8B. 45, F4
        add     eax, 55                                 ; 25A5 _ 83. C0, 37
        mov     edx, eax                                ; 25A8 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 25AA _ 8B. 45, F8
        add     eax, _str.2624                          ; 25AD _ 05, 00000388(d)
        mov     byte [eax], dl                          ; 25B2 _ 88. 10
        jmp     ?_128                                   ; 25B4 _ EB, 12

?_127:  mov     eax, dword [ebp-0CH]                    ; 25B6 _ 8B. 45, F4
        add     eax, 48                                 ; 25B9 _ 83. C0, 30
        mov     edx, eax                                ; 25BC _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 25BE _ 8B. 45, F8
        add     eax, _str.2624                          ; 25C1 _ 05, 00000388(d)
        mov     byte [eax], dl                          ; 25C6 _ 88. 10
?_128:  sub     dword [ebp-8H], 1                       ; 25C8 _ 83. 6D, F8, 01
?_129:  cmp     dword [ebp-8H], 1                       ; 25CC _ 83. 7D, F8, 01
        jle     ?_130                                   ; 25D0 _ 7E, 06
        cmp     dword [ebp+8H], 0                       ; 25D2 _ 83. 7D, 08, 00
        jnz     ?_126                                   ; 25D6 _ 75, B2
?_130:  mov     eax, _str.2624                          ; 25D8 _ B8, 00000388(d)
        leave                                           ; 25DD _ C9
        ret                                             ; 25DE _ C3
; _intToHexStr End of function

_wait_KBC_sendready:; Function begin
        push    ebp                                     ; 25DF _ 55
        mov     ebp, esp                                ; 25E0 _ 89. E5
        sub     esp, 24                                 ; 25E2 _ 83. EC, 18
?_131:  mov     dword [esp], 100                        ; 25E5 _ C7. 04 24, 00000064
        call    _io_in8                                 ; 25EC _ E8, 00000000(rel)
        and     eax, 02H                                ; 25F1 _ 83. E0, 02
        test    eax, eax                                ; 25F4 _ 85. C0
        jz      ?_132                                   ; 25F6 _ 74, 02
        jmp     ?_131                                   ; 25F8 _ EB, EB
; _wait_KBC_sendready End of function

?_132:  ; Local function
        nop                                             ; 25FA _ 90
        nop                                             ; 25FB _ 90
        leave                                           ; 25FC _ C9
        ret                                             ; 25FD _ C3

_init_keyboard:; Function begin
        push    ebp                                     ; 25FE _ 55
        mov     ebp, esp                                ; 25FF _ 89. E5
        sub     esp, 24                                 ; 2601 _ 83. EC, 18
        call    _wait_KBC_sendready                     ; 2604 _ E8, FFFFFFD6
        mov     dword [esp+4H], 96                      ; 2609 _ C7. 44 24, 04, 00000060
        mov     dword [esp], 100                        ; 2611 _ C7. 04 24, 00000064
        call    _io_out8                                ; 2618 _ E8, 00000000(rel)
        call    _wait_KBC_sendready                     ; 261D _ E8, FFFFFFBD
        mov     dword [esp+4H], 71                      ; 2622 _ C7. 44 24, 04, 00000047
        mov     dword [esp], 96                         ; 262A _ C7. 04 24, 00000060
        call    _io_out8                                ; 2631 _ E8, 00000000(rel)
        nop                                             ; 2636 _ 90
        leave                                           ; 2637 _ C9
        ret                                             ; 2638 _ C3
; _init_keyboard End of function

_enable_mouse:; Function begin
        push    ebp                                     ; 2639 _ 55
        mov     ebp, esp                                ; 263A _ 89. E5
        sub     esp, 24                                 ; 263C _ 83. EC, 18
        call    _wait_KBC_sendready                     ; 263F _ E8, FFFFFF9B
        mov     dword [esp+4H], 212                     ; 2644 _ C7. 44 24, 04, 000000D4
        mov     dword [esp], 100                        ; 264C _ C7. 04 24, 00000064
        call    _io_out8                                ; 2653 _ E8, 00000000(rel)
        call    _wait_KBC_sendready                     ; 2658 _ E8, FFFFFF82
        mov     dword [esp+4H], 244                     ; 265D _ C7. 44 24, 04, 000000F4
        mov     dword [esp], 96                         ; 2665 _ C7. 04 24, 00000060
        call    _io_out8                                ; 266C _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 2671 _ 8B. 45, 08
        mov     byte [eax+3H], 0                        ; 2674 _ C6. 40, 03, 00
        nop                                             ; 2678 _ 90
        leave                                           ; 2679 _ C9
        ret                                             ; 267A _ C3
; _enable_mouse End of function

_intHandlerForMouse:; Function begin
        push    ebp                                     ; 267B _ 55
        mov     ebp, esp                                ; 267C _ 89. E5
        sub     esp, 40                                 ; 267E _ 83. EC, 28
        mov     dword [esp+4H], 32                      ; 2681 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 160                        ; 2689 _ C7. 04 24, 000000A0
        call    _io_out8                                ; 2690 _ E8, 00000000(rel)
        mov     dword [esp+4H], 32                      ; 2695 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 269D _ C7. 04 24, 00000020
        call    _io_out8                                ; 26A4 _ E8, 00000000(rel)
        mov     dword [esp], 96                         ; 26A9 _ C7. 04 24, 00000060
        call    _io_in8                                 ; 26B0 _ E8, 00000000(rel)
        mov     byte [ebp-9H], al                       ; 26B5 _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 26B8 _ 0F B6. 45, F7
        mov     dword [esp+4H], eax                     ; 26BC _ 89. 44 24, 04
        mov     dword [esp], _mouseinfo                 ; 26C0 _ C7. 04 24, 00000040(d)
        call    _fifo8_put                              ; 26C7 _ E8, 00000000(rel)
        nop                                             ; 26CC _ 90
        leave                                           ; 26CD _ C9
        ret                                             ; 26CE _ C3
; _intHandlerForMouse End of function

_mouse_decode:; Function begin
        push    ebp                                     ; 26CF _ 55
        mov     ebp, esp                                ; 26D0 _ 89. E5
        sub     esp, 4                                  ; 26D2 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 26D5 _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 26D8 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 26DB _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 26DE _ 0F B6. 40, 03
        test    al, al                                  ; 26E2 _ 84. C0
        jnz     ?_134                                   ; 26E4 _ 75, 17
        cmp     byte [ebp-4H], -6                       ; 26E6 _ 80. 7D, FC, FA
        jnz     ?_133                                   ; 26EA _ 75, 07
        mov     eax, dword [ebp+8H]                     ; 26EC _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 26EF _ C6. 40, 03, 01
?_133:  mov     eax, 0                                  ; 26F3 _ B8, 00000000
        jmp     ?_141                                   ; 26F8 _ E9, 0000010F

?_134:  mov     eax, dword [ebp+8H]                     ; 26FD _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 2700 _ 0F B6. 40, 03
        cmp     al, 1                                   ; 2704 _ 3C, 01
        jnz     ?_136                                   ; 2706 _ 75, 28
        movzx   eax, byte [ebp-4H]                      ; 2708 _ 0F B6. 45, FC
        and     eax, 0C8H                               ; 270C _ 25, 000000C8
        cmp     eax, 8                                  ; 2711 _ 83. F8, 08
        jnz     ?_135                                   ; 2714 _ 75, 10
        mov     edx, dword [ebp+8H]                     ; 2716 _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 2719 _ 0F B6. 45, FC
        mov     byte [edx], al                          ; 271D _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 271F _ 8B. 45, 08
        mov     byte [eax+3H], 2                        ; 2722 _ C6. 40, 03, 02
?_135:  mov     eax, 0                                  ; 2726 _ B8, 00000000
        jmp     ?_141                                   ; 272B _ E9, 000000DC

?_136:  mov     eax, dword [ebp+8H]                     ; 2730 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 2733 _ 0F B6. 40, 03
        cmp     al, 2                                   ; 2737 _ 3C, 02
        jnz     ?_137                                   ; 2739 _ 75, 1B
        mov     edx, dword [ebp+8H]                     ; 273B _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 273E _ 0F B6. 45, FC
        mov     byte [edx+1H], al                       ; 2742 _ 88. 42, 01
        mov     eax, dword [ebp+8H]                     ; 2745 _ 8B. 45, 08
        mov     byte [eax+3H], 3                        ; 2748 _ C6. 40, 03, 03
        mov     eax, 0                                  ; 274C _ B8, 00000000
        jmp     ?_141                                   ; 2751 _ E9, 000000B6

?_137:  mov     eax, dword [ebp+8H]                     ; 2756 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 2759 _ 0F B6. 40, 03
        cmp     al, 3                                   ; 275D _ 3C, 03
        jne     ?_140                                   ; 275F _ 0F 85, 000000A2
        mov     edx, dword [ebp+8H]                     ; 2765 _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 2768 _ 0F B6. 45, FC
        mov     byte [edx+2H], al                       ; 276C _ 88. 42, 02
        mov     eax, dword [ebp+8H]                     ; 276F _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 2772 _ C6. 40, 03, 01
        mov     eax, dword [ebp+8H]                     ; 2776 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 2779 _ 0F B6. 00
        movzx   eax, al                                 ; 277C _ 0F B6. C0
        and     eax, 07H                                ; 277F _ 83. E0, 07
        mov     edx, eax                                ; 2782 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2784 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 2787 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 278A _ 8B. 45, 08
        movzx   eax, byte [eax+1H]                      ; 278D _ 0F B6. 40, 01
        movzx   eax, al                                 ; 2791 _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 2794 _ 8B. 55, 08
        mov     dword [edx+4H], eax                     ; 2797 _ 89. 42, 04
        mov     eax, dword [ebp+8H]                     ; 279A _ 8B. 45, 08
        movzx   eax, byte [eax+2H]                      ; 279D _ 0F B6. 40, 02
        movzx   eax, al                                 ; 27A1 _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 27A4 _ 8B. 55, 08
        mov     dword [edx+8H], eax                     ; 27A7 _ 89. 42, 08
        mov     eax, dword [ebp+8H]                     ; 27AA _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 27AD _ 0F B6. 00
        movzx   eax, al                                 ; 27B0 _ 0F B6. C0
        and     eax, 10H                                ; 27B3 _ 83. E0, 10
        test    eax, eax                                ; 27B6 _ 85. C0
        jz      ?_138                                   ; 27B8 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 27BA _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 27BD _ 8B. 40, 04
        or      eax, 0FFFFFF00H                         ; 27C0 _ 0D, FFFFFF00
        mov     edx, eax                                ; 27C5 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 27C7 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 27CA _ 89. 50, 04
?_138:  mov     eax, dword [ebp+8H]                     ; 27CD _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 27D0 _ 0F B6. 00
        movzx   eax, al                                 ; 27D3 _ 0F B6. C0
        and     eax, 20H                                ; 27D6 _ 83. E0, 20
        test    eax, eax                                ; 27D9 _ 85. C0
        jz      ?_139                                   ; 27DB _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 27DD _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 27E0 _ 8B. 40, 08
        or      eax, 0FFFFFF00H                         ; 27E3 _ 0D, FFFFFF00
        mov     edx, eax                                ; 27E8 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 27EA _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 27ED _ 89. 50, 08
?_139:  mov     eax, dword [ebp+8H]                     ; 27F0 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 27F3 _ 8B. 40, 08
        neg     eax                                     ; 27F6 _ F7. D8
        mov     edx, eax                                ; 27F8 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 27FA _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 27FD _ 89. 50, 08
        mov     eax, 1                                  ; 2800 _ B8, 00000001
        jmp     ?_141                                   ; 2805 _ EB, 05

?_140:  mov     eax, 4294967295                         ; 2807 _ B8, FFFFFFFF
?_141:  leave                                           ; 280C _ C9
        ret                                             ; 280D _ C3
; _mouse_decode End of function

_showMemoryInfo:; Function begin
        push    ebp                                     ; 280E _ 55
        mov     ebp, esp                                ; 280F _ 89. E5
        sub     esp, 72                                 ; 2811 _ 83. EC, 48
        mov     dword [ebp-0CH], 0                      ; 2814 _ C7. 45, F4, 00000000
        mov     dword [ebp-10H], 0                      ; 281B _ C7. 45, F0, 00000000
        mov     dword [ebp-14H], 104                    ; 2822 _ C7. 45, EC, 00000068
        mov     dword [ebp-18H], 80                     ; 2829 _ C7. 45, E8, 00000050
        mov     edx, dword [_ysize]                     ; 2830 _ 8B. 15, 00000140(d)
        mov     eax, dword [ebp+0CH]                    ; 2836 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2839 _ 8B. 00
        mov     dword [esp+8H], edx                     ; 283B _ 89. 54 24, 08
        mov     edx, dword [ebp+1CH]                    ; 283F _ 8B. 55, 1C
        mov     dword [esp+4H], edx                     ; 2842 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2846 _ 89. 04 24
        call    _init_screen8                           ; 2849 _ E8, FFFFF2B0
        mov     eax, dword [ebp+20H]                    ; 284E _ 8B. 45, 20
        movsx   eax, al                                 ; 2851 _ 0F BE. C0
        mov     dword [esp+14H], ?_316                  ; 2854 _ C7. 44 24, 14, 0000004A(d)
        mov     dword [esp+10H], eax                    ; 285C _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 2860 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 2863 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 2867 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 286A _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 286E _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2871 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2875 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2878 _ 89. 04 24
        call    _showString                             ; 287B _ E8, FFFFF767
        mov     eax, dword [ebp+18H]                    ; 2880 _ 8B. 45, 18
        mov     dword [esp], eax                        ; 2883 _ 89. 04 24
        call    _intToHexStr                            ; 2886 _ E8, FFFFFCBD
        mov     dword [ebp-1CH], eax                    ; 288B _ 89. 45, E4
        mov     eax, dword [ebp+20H]                    ; 288E _ 8B. 45, 20
        movsx   eax, al                                 ; 2891 _ 0F BE. C0
        mov     edx, dword [ebp-1CH]                    ; 2894 _ 8B. 55, E4
        mov     dword [esp+14H], edx                    ; 2897 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 289B _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 289F _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 28A2 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 28A6 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 28A9 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 28AD _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 28B0 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 28B4 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 28B7 _ 89. 04 24
        call    _showString                             ; 28BA _ E8, FFFFF728
        add     dword [ebp-10H], 16                     ; 28BF _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 28C3 _ 8B. 45, 20
        movsx   eax, al                                 ; 28C6 _ 0F BE. C0
        mov     dword [esp+14H], ?_317                  ; 28C9 _ C7. 44 24, 14, 00000054(d)
        mov     dword [esp+10H], eax                    ; 28D1 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 28D5 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 28D8 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 28DC _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 28DF _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 28E3 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 28E6 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 28EA _ 8B. 45, 08
        mov     dword [esp], eax                        ; 28ED _ 89. 04 24
        call    _showString                             ; 28F0 _ E8, FFFFF6F2
        mov     eax, dword [ebp+10H]                    ; 28F5 _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 28F8 _ 8B. 00
        mov     dword [esp], eax                        ; 28FA _ 89. 04 24
        call    _intToHexStr                            ; 28FD _ E8, FFFFFC46
        mov     dword [ebp-20H], eax                    ; 2902 _ 89. 45, E0
        mov     eax, dword [ebp+20H]                    ; 2905 _ 8B. 45, 20
        movsx   eax, al                                 ; 2908 _ 0F BE. C0
        mov     edx, dword [ebp-20H]                    ; 290B _ 8B. 55, E0
        mov     dword [esp+14H], edx                    ; 290E _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 2912 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 2916 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 2919 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 291D _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 2920 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 2924 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2927 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 292B _ 8B. 45, 08
        mov     dword [esp], eax                        ; 292E _ 89. 04 24
        call    _showString                             ; 2931 _ E8, FFFFF6B1
        add     dword [ebp-10H], 16                     ; 2936 _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 293A _ 8B. 45, 20
        movsx   eax, al                                 ; 293D _ 0F BE. C0
        mov     dword [esp+14H], ?_318                  ; 2940 _ C7. 44 24, 14, 00000060(d)
        mov     dword [esp+10H], eax                    ; 2948 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 294C _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 294F _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 2953 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 2956 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 295A _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 295D _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2961 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2964 _ 89. 04 24
        call    _showString                             ; 2967 _ E8, FFFFF67B
        mov     eax, dword [ebp+10H]                    ; 296C _ 8B. 45, 10
        mov     eax, dword [eax+4H]                     ; 296F _ 8B. 40, 04
        mov     dword [esp], eax                        ; 2972 _ 89. 04 24
        call    _intToHexStr                            ; 2975 _ E8, FFFFFBCE
        mov     dword [ebp-24H], eax                    ; 297A _ 89. 45, DC
        mov     eax, dword [ebp+20H]                    ; 297D _ 8B. 45, 20
        movsx   eax, al                                 ; 2980 _ 0F BE. C0
        mov     edx, dword [ebp-24H]                    ; 2983 _ 8B. 55, DC
        mov     dword [esp+14H], edx                    ; 2986 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 298A _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 298E _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 2991 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 2995 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 2998 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 299C _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 299F _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 29A3 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 29A6 _ 89. 04 24
        call    _showString                             ; 29A9 _ E8, FFFFF639
        add     dword [ebp-10H], 16                     ; 29AE _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 29B2 _ 8B. 45, 20
        movsx   eax, al                                 ; 29B5 _ 0F BE. C0
        mov     dword [esp+14H], ?_319                  ; 29B8 _ C7. 44 24, 14, 0000006C(d)
        mov     dword [esp+10H], eax                    ; 29C0 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 29C4 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 29C7 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 29CB _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 29CE _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 29D2 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 29D5 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 29D9 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 29DC _ 89. 04 24
        call    _showString                             ; 29DF _ E8, FFFFF603
        mov     eax, dword [ebp+10H]                    ; 29E4 _ 8B. 45, 10
        mov     eax, dword [eax+8H]                     ; 29E7 _ 8B. 40, 08
        mov     dword [esp], eax                        ; 29EA _ 89. 04 24
        call    _intToHexStr                            ; 29ED _ E8, FFFFFB56
        mov     dword [ebp-28H], eax                    ; 29F2 _ 89. 45, D8
        mov     eax, dword [ebp+20H]                    ; 29F5 _ 8B. 45, 20
        movsx   eax, al                                 ; 29F8 _ 0F BE. C0
        mov     edx, dword [ebp-28H]                    ; 29FB _ 8B. 55, D8
        mov     dword [esp+14H], edx                    ; 29FE _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 2A02 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 2A06 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 2A09 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 2A0D _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 2A10 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 2A14 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2A17 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2A1B _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2A1E _ 89. 04 24
        call    _showString                             ; 2A21 _ E8, FFFFF5C1
        nop                                             ; 2A26 _ 90
        leave                                           ; 2A27 _ C9
        ret                                             ; 2A28 _ C3
; _showMemoryInfo End of function

_message_box:; Function begin
        push    ebp                                     ; 2A29 _ 55
        mov     ebp, esp                                ; 2A2A _ 89. E5
        sub     esp, 56                                 ; 2A2C _ 83. EC, 38
        mov     eax, dword [ebp+8H]                     ; 2A2F _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2A32 _ 89. 04 24
        call    _sheet_alloc                            ; 2A35 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 2A3A _ 89. 45, F4
        mov     eax, dword [_memman]                    ; 2A3D _ A1, 00000000(d)
        mov     dword [esp+4H], 10880                   ; 2A42 _ C7. 44 24, 04, 00002A80
        mov     dword [esp], eax                        ; 2A4A _ 89. 04 24
        call    _memman_alloc_4k                        ; 2A4D _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 2A52 _ 89. 45, F0
        mov     dword [esp+10H], -1                     ; 2A55 _ C7. 44 24, 10, FFFFFFFF
        mov     dword [esp+0CH], 68                     ; 2A5D _ C7. 44 24, 0C, 00000044
        mov     dword [esp+8H], 160                     ; 2A65 _ C7. 44 24, 08, 000000A0
        mov     eax, dword [ebp-10H]                    ; 2A6D _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 2A70 _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 2A74 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 2A77 _ 89. 04 24
        call    _sheet_setbuf                           ; 2A7A _ E8, 00000000(rel)
        mov     dword [esp+0CH], 1                      ; 2A7F _ C7. 44 24, 0C, 00000001
        mov     eax, dword [ebp+0CH]                    ; 2A87 _ 8B. 45, 0C
        mov     dword [esp+8H], eax                     ; 2A8A _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 2A8E _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 2A91 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2A95 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2A98 _ 89. 04 24
        call    _make_window8                           ; 2A9B _ E8, 00000074
        mov     dword [esp+14H], 7                      ; 2AA0 _ C7. 44 24, 14, 00000007
        mov     dword [esp+10H], 16                     ; 2AA8 _ C7. 44 24, 10, 00000010
        mov     dword [esp+0CH], 144                    ; 2AB0 _ C7. 44 24, 0C, 00000090
        mov     dword [esp+8H], 28                      ; 2AB8 _ C7. 44 24, 08, 0000001C
        mov     dword [esp+4H], 8                       ; 2AC0 _ C7. 44 24, 04, 00000008
        mov     eax, dword [ebp-0CH]                    ; 2AC8 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 2ACB _ 89. 04 24
        call    _make_textbox8                          ; 2ACE _ E8, 00000444
        mov     dword [esp+0CH], 172                    ; 2AD3 _ C7. 44 24, 0C, 000000AC
        mov     dword [esp+8H], 260                     ; 2ADB _ C7. 44 24, 08, 00000104
        mov     eax, dword [ebp-0CH]                    ; 2AE3 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 2AE6 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2AEA _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2AED _ 89. 04 24
        call    _sheet_slide                            ; 2AF0 _ E8, 00000000(rel)
        mov     dword [esp+8H], 2                       ; 2AF5 _ C7. 44 24, 08, 00000002
        mov     eax, dword [ebp-0CH]                    ; 2AFD _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 2B00 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2B04 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2B07 _ 89. 04 24
        call    _sheet_updown                           ; 2B0A _ E8, 00000000(rel)
        mov     eax, dword [ebp-0CH]                    ; 2B0F _ 8B. 45, F4
        leave                                           ; 2B12 _ C9
        ret                                             ; 2B13 _ C3
; _message_box End of function

_make_window8:; Function begin
        push    ebp                                     ; 2B14 _ 55
        mov     ebp, esp                                ; 2B15 _ 89. E5
        push    ebx                                     ; 2B17 _ 53
        sub     esp, 68                                 ; 2B18 _ 83. EC, 44
        mov     eax, dword [ebp+14H]                    ; 2B1B _ 8B. 45, 14
        mov     byte [ebp-1CH], al                      ; 2B1E _ 88. 45, E4
        mov     eax, dword [ebp+0CH]                    ; 2B21 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2B24 _ 8B. 40, 04
        mov     dword [ebp-0CH], eax                    ; 2B27 _ 89. 45, F4
        mov     eax, dword [ebp+0CH]                    ; 2B2A _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2B2D _ 8B. 40, 08
        mov     dword [ebp-10H], eax                    ; 2B30 _ 89. 45, F0
        mov     eax, dword [ebp-0CH]                    ; 2B33 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 2B36 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 2B39 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2B3C _ 8B. 00
        mov     dword [esp+18H], 0                      ; 2B3E _ C7. 44 24, 18, 00000000
        mov     dword [esp+14H], edx                    ; 2B46 _ 89. 54 24, 14
        mov     dword [esp+10H], 0                      ; 2B4A _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 2B52 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 2B5A _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-0CH]                    ; 2B62 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 2B65 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2B69 _ 89. 04 24
        call    _boxfill8                               ; 2B6C _ E8, FFFFF5EA
        mov     eax, dword [ebp-0CH]                    ; 2B71 _ 8B. 45, F4
        lea     edx, [eax-2H]                           ; 2B74 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 2B77 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2B7A _ 8B. 00
        mov     dword [esp+18H], 1                      ; 2B7C _ C7. 44 24, 18, 00000001
        mov     dword [esp+14H], edx                    ; 2B84 _ 89. 54 24, 14
        mov     dword [esp+10H], 1                      ; 2B88 _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], 1                      ; 2B90 _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 7                       ; 2B98 _ C7. 44 24, 08, 00000007
        mov     edx, dword [ebp-0CH]                    ; 2BA0 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 2BA3 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2BA7 _ 89. 04 24
        call    _boxfill8                               ; 2BAA _ E8, FFFFF5AC
        mov     eax, dword [ebp-10H]                    ; 2BAF _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 2BB2 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 2BB5 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2BB8 _ 8B. 00
        mov     dword [esp+18H], edx                    ; 2BBA _ 89. 54 24, 18
        mov     dword [esp+14H], 0                      ; 2BBE _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], 0                      ; 2BC6 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 2BCE _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 2BD6 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-0CH]                    ; 2BDE _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 2BE1 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2BE5 _ 89. 04 24
        call    _boxfill8                               ; 2BE8 _ E8, FFFFF56E
        mov     eax, dword [ebp-10H]                    ; 2BED _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 2BF0 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 2BF3 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2BF6 _ 8B. 00
        mov     dword [esp+18H], edx                    ; 2BF8 _ 89. 54 24, 18
        mov     dword [esp+14H], 1                      ; 2BFC _ C7. 44 24, 14, 00000001
        mov     dword [esp+10H], 1                      ; 2C04 _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], 1                      ; 2C0C _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 7                       ; 2C14 _ C7. 44 24, 08, 00000007
        mov     edx, dword [ebp-0CH]                    ; 2C1C _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 2C1F _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2C23 _ 89. 04 24
        call    _boxfill8                               ; 2C26 _ E8, FFFFF530
        mov     eax, dword [ebp-10H]                    ; 2C2B _ 8B. 45, F0
        lea     ebx, [eax-2H]                           ; 2C2E _ 8D. 58, FE
        mov     eax, dword [ebp-0CH]                    ; 2C31 _ 8B. 45, F4
        lea     ecx, [eax-2H]                           ; 2C34 _ 8D. 48, FE
        mov     eax, dword [ebp-0CH]                    ; 2C37 _ 8B. 45, F4
        lea     edx, [eax-2H]                           ; 2C3A _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 2C3D _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2C40 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 2C42 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 2C46 _ 89. 4C 24, 14
        mov     dword [esp+10H], 1                      ; 2C4A _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], edx                    ; 2C52 _ 89. 54 24, 0C
        mov     dword [esp+8H], 15                      ; 2C56 _ C7. 44 24, 08, 0000000F
        mov     edx, dword [ebp-0CH]                    ; 2C5E _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 2C61 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2C65 _ 89. 04 24
        call    _boxfill8                               ; 2C68 _ E8, FFFFF4EE
        mov     eax, dword [ebp-10H]                    ; 2C6D _ 8B. 45, F0
        lea     ebx, [eax-1H]                           ; 2C70 _ 8D. 58, FF
        mov     eax, dword [ebp-0CH]                    ; 2C73 _ 8B. 45, F4
        lea     ecx, [eax-1H]                           ; 2C76 _ 8D. 48, FF
        mov     eax, dword [ebp-0CH]                    ; 2C79 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 2C7C _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 2C7F _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2C82 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 2C84 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 2C88 _ 89. 4C 24, 14
        mov     dword [esp+10H], 0                      ; 2C8C _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], edx                    ; 2C94 _ 89. 54 24, 0C
        mov     dword [esp+8H], 0                       ; 2C98 _ C7. 44 24, 08, 00000000
        mov     edx, dword [ebp-0CH]                    ; 2CA0 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 2CA3 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2CA7 _ 89. 04 24
        call    _boxfill8                               ; 2CAA _ E8, FFFFF4AC
        mov     eax, dword [ebp-10H]                    ; 2CAF _ 8B. 45, F0
        lea     ecx, [eax-3H]                           ; 2CB2 _ 8D. 48, FD
        mov     eax, dword [ebp-0CH]                    ; 2CB5 _ 8B. 45, F4
        lea     edx, [eax-3H]                           ; 2CB8 _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 2CBB _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2CBE _ 8B. 00
        mov     dword [esp+18H], ecx                    ; 2CC0 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 2CC4 _ 89. 54 24, 14
        mov     dword [esp+10H], 2                      ; 2CC8 _ C7. 44 24, 10, 00000002
        mov     dword [esp+0CH], 2                      ; 2CD0 _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 8                       ; 2CD8 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-0CH]                    ; 2CE0 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 2CE3 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2CE7 _ 89. 04 24
        call    _boxfill8                               ; 2CEA _ E8, FFFFF46C
        mov     eax, dword [ebp-0CH]                    ; 2CEF _ 8B. 45, F4
        lea     edx, [eax-4H]                           ; 2CF2 _ 8D. 50, FC
        mov     eax, dword [ebp+0CH]                    ; 2CF5 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2CF8 _ 8B. 00
        mov     dword [esp+18H], 20                     ; 2CFA _ C7. 44 24, 18, 00000014
        mov     dword [esp+14H], edx                    ; 2D02 _ 89. 54 24, 14
        mov     dword [esp+10H], 3                      ; 2D06 _ C7. 44 24, 10, 00000003
        mov     dword [esp+0CH], 3                      ; 2D0E _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 12                      ; 2D16 _ C7. 44 24, 08, 0000000C
        mov     edx, dword [ebp-0CH]                    ; 2D1E _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 2D21 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2D25 _ 89. 04 24
        call    _boxfill8                               ; 2D28 _ E8, FFFFF42E
        mov     eax, dword [ebp-10H]                    ; 2D2D _ 8B. 45, F0
        lea     ebx, [eax-2H]                           ; 2D30 _ 8D. 58, FE
        mov     eax, dword [ebp-0CH]                    ; 2D33 _ 8B. 45, F4
        lea     ecx, [eax-2H]                           ; 2D36 _ 8D. 48, FE
        mov     eax, dword [ebp-10H]                    ; 2D39 _ 8B. 45, F0
        lea     edx, [eax-2H]                           ; 2D3C _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 2D3F _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2D42 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 2D44 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 2D48 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 2D4C _ 89. 54 24, 10
        mov     dword [esp+0CH], 1                      ; 2D50 _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 15                      ; 2D58 _ C7. 44 24, 08, 0000000F
        mov     edx, dword [ebp-0CH]                    ; 2D60 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 2D63 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2D67 _ 89. 04 24
        call    _boxfill8                               ; 2D6A _ E8, FFFFF3EC
        mov     eax, dword [ebp-10H]                    ; 2D6F _ 8B. 45, F0
        lea     ebx, [eax-1H]                           ; 2D72 _ 8D. 58, FF
        mov     eax, dword [ebp-0CH]                    ; 2D75 _ 8B. 45, F4
        lea     ecx, [eax-1H]                           ; 2D78 _ 8D. 48, FF
        mov     eax, dword [ebp-10H]                    ; 2D7B _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 2D7E _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 2D81 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2D84 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 2D86 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 2D8A _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 2D8E _ 89. 54 24, 10
        mov     dword [esp+0CH], 0                      ; 2D92 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 2D9A _ C7. 44 24, 08, 00000000
        mov     edx, dword [ebp-0CH]                    ; 2DA2 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 2DA5 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2DA9 _ 89. 04 24
        call    _boxfill8                               ; 2DAC _ E8, FFFFF3AA
        movsx   eax, byte [ebp-1CH]                     ; 2DB1 _ 0F BE. 45, E4
        mov     dword [esp+0CH], eax                    ; 2DB5 _ 89. 44 24, 0C
        mov     eax, dword [ebp+10H]                    ; 2DB9 _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 2DBC _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 2DC0 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2DC3 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2DC7 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2DCA _ 89. 04 24
        call    _make_wtitle8                           ; 2DCD _ E8, 00000007
        nop                                             ; 2DD2 _ 90
        add     esp, 68                                 ; 2DD3 _ 83. C4, 44
        pop     ebx                                     ; 2DD6 _ 5B
        pop     ebp                                     ; 2DD7 _ 5D
        ret                                             ; 2DD8 _ C3
; _make_window8 End of function

_make_wtitle8:; Function begin
        push    ebp                                     ; 2DD9 _ 55
        mov     ebp, esp                                ; 2DDA _ 89. E5
        push    ebx                                     ; 2DDC _ 53
        sub     esp, 68                                 ; 2DDD _ 83. EC, 44
        mov     eax, dword [ebp+14H]                    ; 2DE0 _ 8B. 45, 14
        mov     byte [ebp-1CH], al                      ; 2DE3 _ 88. 45, E4
        cmp     byte [ebp-1CH], 0                       ; 2DE6 _ 80. 7D, E4, 00
        jz      ?_142                                   ; 2DEA _ 74, 0A
        mov     byte [ebp-12H], 7                       ; 2DEC _ C6. 45, EE, 07
        mov     byte [ebp-13H], 12                      ; 2DF0 _ C6. 45, ED, 0C
        jmp     ?_143                                   ; 2DF4 _ EB, 08

?_142:  mov     byte [ebp-12H], 8                       ; 2DF6 _ C6. 45, EE, 08
        mov     byte [ebp-13H], 15                      ; 2DFA _ C6. 45, ED, 0F
?_143:  mov     eax, dword [ebp+0CH]                    ; 2DFE _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2E01 _ 8B. 40, 04
        lea     ebx, [eax-4H]                           ; 2E04 _ 8D. 58, FC
        movzx   eax, byte [ebp-13H]                     ; 2E07 _ 0F B6. 45, ED
        movzx   eax, al                                 ; 2E0B _ 0F B6. C0
        mov     edx, dword [ebp+0CH]                    ; 2E0E _ 8B. 55, 0C
        mov     ecx, dword [edx+4H]                     ; 2E11 _ 8B. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 2E14 _ 8B. 55, 0C
        mov     edx, dword [edx]                        ; 2E17 _ 8B. 12
        mov     dword [esp+18H], 20                     ; 2E19 _ C7. 44 24, 18, 00000014
        mov     dword [esp+14H], ebx                    ; 2E21 _ 89. 5C 24, 14
        mov     dword [esp+10H], 3                      ; 2E25 _ C7. 44 24, 10, 00000003
        mov     dword [esp+0CH], 3                      ; 2E2D _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], eax                     ; 2E35 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 2E39 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 2E3D _ 89. 14 24
        call    _boxfill8                               ; 2E40 _ E8, FFFFF316
        movsx   eax, byte [ebp-12H]                     ; 2E45 _ 0F BE. 45, EE
        mov     edx, dword [ebp+10H]                    ; 2E49 _ 8B. 55, 10
        mov     dword [esp+14H], edx                    ; 2E4C _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 2E50 _ 89. 44 24, 10
        mov     dword [esp+0CH], 4                      ; 2E54 _ C7. 44 24, 0C, 00000004
        mov     dword [esp+8H], 24                      ; 2E5C _ C7. 44 24, 08, 00000018
        mov     eax, dword [ebp+0CH]                    ; 2E64 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2E67 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2E6B _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2E6E _ 89. 04 24
        call    _showString                             ; 2E71 _ E8, FFFFF171
        mov     dword [ebp-10H], 0                      ; 2E76 _ C7. 45, F0, 00000000
        jmp     ?_151                                   ; 2E7D _ E9, 00000084

?_144:  mov     dword [ebp-0CH], 0                      ; 2E82 _ C7. 45, F4, 00000000
        jmp     ?_150                                   ; 2E89 _ EB, 71

?_145:  mov     eax, dword [ebp-10H]                    ; 2E8B _ 8B. 45, F0
        shl     eax, 4                                  ; 2E8E _ C1. E0, 04
        mov     edx, eax                                ; 2E91 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 2E93 _ 8B. 45, F4
        add     eax, edx                                ; 2E96 _ 01. D0
        add     eax, _closebtn.2695                     ; 2E98 _ 05, 00000260(d)
        movzx   eax, byte [eax]                         ; 2E9D _ 0F B6. 00
        mov     byte [ebp-11H], al                      ; 2EA0 _ 88. 45, EF
        cmp     byte [ebp-11H], 64                      ; 2EA3 _ 80. 7D, EF, 40
        jnz     ?_146                                   ; 2EA7 _ 75, 06
        mov     byte [ebp-11H], 0                       ; 2EA9 _ C6. 45, EF, 00
        jmp     ?_149                                   ; 2EAD _ EB, 1C

?_146:  cmp     byte [ebp-11H], 36                      ; 2EAF _ 80. 7D, EF, 24
        jnz     ?_147                                   ; 2EB3 _ 75, 06
        mov     byte [ebp-11H], 15                      ; 2EB5 _ C6. 45, EF, 0F
        jmp     ?_149                                   ; 2EB9 _ EB, 10

?_147:  cmp     byte [ebp-11H], 81                      ; 2EBB _ 80. 7D, EF, 51
        jnz     ?_148                                   ; 2EBF _ 75, 06
        mov     byte [ebp-11H], 8                       ; 2EC1 _ C6. 45, EF, 08
        jmp     ?_149                                   ; 2EC5 _ EB, 04

?_148:  mov     byte [ebp-11H], 7                       ; 2EC7 _ C6. 45, EF, 07
?_149:  mov     eax, dword [ebp+0CH]                    ; 2ECB _ 8B. 45, 0C
        mov     ecx, dword [eax]                        ; 2ECE _ 8B. 08
        mov     eax, dword [ebp-10H]                    ; 2ED0 _ 8B. 45, F0
        lea     edx, [eax+5H]                           ; 2ED3 _ 8D. 50, 05
        mov     eax, dword [ebp+0CH]                    ; 2ED6 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2ED9 _ 8B. 40, 04
        imul    eax, edx                                ; 2EDC _ 0F AF. C2
        mov     edx, dword [ebp+0CH]                    ; 2EDF _ 8B. 55, 0C
        mov     edx, dword [edx+4H]                     ; 2EE2 _ 8B. 52, 04
        lea     ebx, [edx-15H]                          ; 2EE5 _ 8D. 5A, EB
        mov     edx, dword [ebp-0CH]                    ; 2EE8 _ 8B. 55, F4
        add     edx, ebx                                ; 2EEB _ 01. DA
        add     eax, edx                                ; 2EED _ 01. D0
        lea     edx, [ecx+eax]                          ; 2EEF _ 8D. 14 01
        movzx   eax, byte [ebp-11H]                     ; 2EF2 _ 0F B6. 45, EF
        mov     byte [edx], al                          ; 2EF6 _ 88. 02
        add     dword [ebp-0CH], 1                      ; 2EF8 _ 83. 45, F4, 01
?_150:  cmp     dword [ebp-0CH], 15                     ; 2EFC _ 83. 7D, F4, 0F
        jle     ?_145                                   ; 2F00 _ 7E, 89
        add     dword [ebp-10H], 1                      ; 2F02 _ 83. 45, F0, 01
?_151:  cmp     dword [ebp-10H], 13                     ; 2F06 _ 83. 7D, F0, 0D
        jle     ?_144                                   ; 2F0A _ 0F 8E, FFFFFF72
        nop                                             ; 2F10 _ 90
        add     esp, 68                                 ; 2F11 _ 83. C4, 44
        pop     ebx                                     ; 2F14 _ 5B
        pop     ebp                                     ; 2F15 _ 5D
        ret                                             ; 2F16 _ C3
; _make_wtitle8 End of function

_make_textbox8:; Function begin
        push    ebp                                     ; 2F17 _ 55
        mov     ebp, esp                                ; 2F18 _ 89. E5
        push    edi                                     ; 2F1A _ 57
        push    esi                                     ; 2F1B _ 56
        push    ebx                                     ; 2F1C _ 53
        sub     esp, 44                                 ; 2F1D _ 83. EC, 2C
        mov     edx, dword [ebp+0CH]                    ; 2F20 _ 8B. 55, 0C
        mov     eax, dword [ebp+14H]                    ; 2F23 _ 8B. 45, 14
        add     eax, edx                                ; 2F26 _ 01. D0
        mov     dword [ebp-10H], eax                    ; 2F28 _ 89. 45, F0
        mov     edx, dword [ebp+10H]                    ; 2F2B _ 8B. 55, 10
        mov     eax, dword [ebp+18H]                    ; 2F2E _ 8B. 45, 18
        add     eax, edx                                ; 2F31 _ 01. D0
        mov     dword [ebp-14H], eax                    ; 2F33 _ 89. 45, EC
        mov     eax, dword [ebp+10H]                    ; 2F36 _ 8B. 45, 10
        lea     edi, [eax-3H]                           ; 2F39 _ 8D. 78, FD
        mov     eax, dword [ebp-10H]                    ; 2F3C _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 2F3F _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 2F42 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 2F45 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 2F48 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 2F4B _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 2F4E _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 2F51 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2F54 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2F57 _ 8B. 00
        mov     dword [esp+18H], edi                    ; 2F59 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 2F5D _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 2F61 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 2F65 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 15                      ; 2F69 _ C7. 44 24, 08, 0000000F
        mov     dword [esp+4H], edx                     ; 2F71 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2F75 _ 89. 04 24
        call    _boxfill8                               ; 2F78 _ E8, FFFFF1DE
        mov     eax, dword [ebp-14H]                    ; 2F7D _ 8B. 45, EC
        lea     edi, [eax+1H]                           ; 2F80 _ 8D. 78, 01
        mov     eax, dword [ebp+0CH]                    ; 2F83 _ 8B. 45, 0C
        lea     esi, [eax-3H]                           ; 2F86 _ 8D. 70, FD
        mov     eax, dword [ebp+10H]                    ; 2F89 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 2F8C _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 2F8F _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 2F92 _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 2F95 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 2F98 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2F9B _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2F9E _ 8B. 00
        mov     dword [esp+18H], edi                    ; 2FA0 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 2FA4 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 2FA8 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 2FAC _ 89. 4C 24, 0C
        mov     dword [esp+8H], 15                      ; 2FB0 _ C7. 44 24, 08, 0000000F
        mov     dword [esp+4H], edx                     ; 2FB8 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2FBC _ 89. 04 24
        call    _boxfill8                               ; 2FBF _ E8, FFFFF197
        mov     eax, dword [ebp-14H]                    ; 2FC4 _ 8B. 45, EC
        lea     edi, [eax+2H]                           ; 2FC7 _ 8D. 78, 02
        mov     eax, dword [ebp-10H]                    ; 2FCA _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 2FCD _ 8D. 70, 01
        mov     eax, dword [ebp-14H]                    ; 2FD0 _ 8B. 45, EC
        lea     ebx, [eax+2H]                           ; 2FD3 _ 8D. 58, 02
        mov     eax, dword [ebp+0CH]                    ; 2FD6 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 2FD9 _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 2FDC _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 2FDF _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2FE2 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2FE5 _ 8B. 00
        mov     dword [esp+18H], edi                    ; 2FE7 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 2FEB _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 2FEF _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 2FF3 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 7                       ; 2FF7 _ C7. 44 24, 08, 00000007
        mov     dword [esp+4H], edx                     ; 2FFF _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3003 _ 89. 04 24
        call    _boxfill8                               ; 3006 _ E8, FFFFF150
        mov     eax, dword [ebp-14H]                    ; 300B _ 8B. 45, EC
        lea     edi, [eax+2H]                           ; 300E _ 8D. 78, 02
        mov     eax, dword [ebp-10H]                    ; 3011 _ 8B. 45, F0
        lea     esi, [eax+2H]                           ; 3014 _ 8D. 70, 02
        mov     eax, dword [ebp+10H]                    ; 3017 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 301A _ 8D. 58, FD
        mov     eax, dword [ebp-10H]                    ; 301D _ 8B. 45, F0
        lea     ecx, [eax+2H]                           ; 3020 _ 8D. 48, 02
        mov     eax, dword [ebp+8H]                     ; 3023 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 3026 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 3029 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 302C _ 8B. 00
        mov     dword [esp+18H], edi                    ; 302E _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 3032 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 3036 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 303A _ 89. 4C 24, 0C
        mov     dword [esp+8H], 7                       ; 303E _ C7. 44 24, 08, 00000007
        mov     dword [esp+4H], edx                     ; 3046 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 304A _ 89. 04 24
        call    _boxfill8                               ; 304D _ E8, FFFFF109
        mov     eax, dword [ebp+10H]                    ; 3052 _ 8B. 45, 10
        lea     esi, [eax-2H]                           ; 3055 _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 3058 _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 305B _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 305E _ 8B. 45, 0C
        lea     ecx, [eax-1H]                           ; 3061 _ 8D. 48, FF
        mov     eax, dword [ebp+8H]                     ; 3064 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 3067 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 306A _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 306D _ 8B. 00
        mov     dword [esp+18H], esi                    ; 306F _ 89. 74 24, 18
        mov     esi, dword [ebp-10H]                    ; 3073 _ 8B. 75, F0
        mov     dword [esp+14H], esi                    ; 3076 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 307A _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 307E _ 89. 4C 24, 0C
        mov     dword [esp+8H], 0                       ; 3082 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 308A _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 308E _ 89. 04 24
        call    _boxfill8                               ; 3091 _ E8, FFFFF0C5
        mov     eax, dword [ebp+0CH]                    ; 3096 _ 8B. 45, 0C
        lea     esi, [eax-2H]                           ; 3099 _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 309C _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 309F _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 30A2 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 30A5 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 30A8 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 30AB _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 30AE _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 30B1 _ 8B. 00
        mov     edi, dword [ebp-14H]                    ; 30B3 _ 8B. 7D, EC
        mov     dword [esp+18H], edi                    ; 30B6 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 30BA _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 30BE _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 30C2 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 0                       ; 30C6 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 30CE _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 30D2 _ 89. 04 24
        call    _boxfill8                               ; 30D5 _ E8, FFFFF081
        mov     eax, dword [ebp-14H]                    ; 30DA _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 30DD _ 8D. 70, 01
        mov     eax, dword [ebp-14H]                    ; 30E0 _ 8B. 45, EC
        lea     ebx, [eax+1H]                           ; 30E3 _ 8D. 58, 01
        mov     eax, dword [ebp+0CH]                    ; 30E6 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 30E9 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 30EC _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 30EF _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 30F2 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 30F5 _ 8B. 00
        mov     dword [esp+18H], esi                    ; 30F7 _ 89. 74 24, 18
        mov     esi, dword [ebp-10H]                    ; 30FB _ 8B. 75, F0
        mov     dword [esp+14H], esi                    ; 30FE _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 3102 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 3106 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 8                       ; 310A _ C7. 44 24, 08, 00000008
        mov     dword [esp+4H], edx                     ; 3112 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3116 _ 89. 04 24
        call    _boxfill8                               ; 3119 _ E8, FFFFF03D
        mov     eax, dword [ebp-14H]                    ; 311E _ 8B. 45, EC
        lea     edi, [eax+1H]                           ; 3121 _ 8D. 78, 01
        mov     eax, dword [ebp-10H]                    ; 3124 _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 3127 _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 312A _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 312D _ 8D. 58, FE
        mov     eax, dword [ebp-10H]                    ; 3130 _ 8B. 45, F0
        lea     ecx, [eax+1H]                           ; 3133 _ 8D. 48, 01
        mov     eax, dword [ebp+8H]                     ; 3136 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 3139 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 313C _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 313F _ 8B. 00
        mov     dword [esp+18H], edi                    ; 3141 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 3145 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 3149 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 314D _ 89. 4C 24, 0C
        mov     dword [esp+8H], 8                       ; 3151 _ C7. 44 24, 08, 00000008
        mov     dword [esp+4H], edx                     ; 3159 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 315D _ 89. 04 24
        call    _boxfill8                               ; 3160 _ E8, FFFFEFF6
        mov     eax, dword [ebp+10H]                    ; 3165 _ 8B. 45, 10
        lea     esi, [eax-1H]                           ; 3168 _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 316B _ 8B. 45, 0C
        lea     ebx, [eax-1H]                           ; 316E _ 8D. 58, FF
        mov     eax, dword [ebp+1CH]                    ; 3171 _ 8B. 45, 1C
        movzx   eax, al                                 ; 3174 _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 3177 _ 8B. 55, 08
        mov     ecx, dword [edx+4H]                     ; 317A _ 8B. 4A, 04
        mov     edx, dword [ebp+8H]                     ; 317D _ 8B. 55, 08
        mov     edx, dword [edx]                        ; 3180 _ 8B. 12
        mov     edi, dword [ebp-14H]                    ; 3182 _ 8B. 7D, EC
        mov     dword [esp+18H], edi                    ; 3185 _ 89. 7C 24, 18
        mov     edi, dword [ebp-10H]                    ; 3189 _ 8B. 7D, F0
        mov     dword [esp+14H], edi                    ; 318C _ 89. 7C 24, 14
        mov     dword [esp+10H], esi                    ; 3190 _ 89. 74 24, 10
        mov     dword [esp+0CH], ebx                    ; 3194 _ 89. 5C 24, 0C
        mov     dword [esp+8H], eax                     ; 3198 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 319C _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 31A0 _ 89. 14 24
        call    _boxfill8                               ; 31A3 _ E8, FFFFEFB3
        nop                                             ; 31A8 _ 90
        add     esp, 44                                 ; 31A9 _ 83. C4, 2C
        pop     ebx                                     ; 31AC _ 5B
        pop     esi                                     ; 31AD _ 5E
        pop     edi                                     ; 31AE _ 5F
        pop     ebp                                     ; 31AF _ 5D
        ret                                             ; 31B0 _ C3
; _make_textbox8 End of function

_file_loadfile:; Function begin
        push    ebp                                     ; 31B1 _ 55
        mov     ebp, esp                                ; 31B2 _ 89. E5
        sub     esp, 56                                 ; 31B4 _ 83. EC, 38
        mov     dword [ebp-0CH], 78848                  ; 31B7 _ C7. 45, F4, 00013400
        mov     eax, dword [_memman]                    ; 31BE _ A1, 00000000(d)
        mov     dword [esp+4H], 13                      ; 31C3 _ C7. 44 24, 04, 0000000D
        mov     dword [esp], eax                        ; 31CB _ 89. 04 24
        call    _memman_alloc                           ; 31CE _ E8, 00000000(rel)
        mov     dword [ebp-1CH], eax                    ; 31D3 _ 89. 45, E4
        mov     eax, dword [ebp-1CH]                    ; 31D6 _ 8B. 45, E4
        add     eax, 12                                 ; 31D9 _ 83. C0, 0C
        mov     byte [eax], 0                           ; 31DC _ C6. 00, 00
        jmp     ?_162                                   ; 31DF _ E9, 00000125

?_152:  mov     dword [ebp-10H], 0                      ; 31E4 _ C7. 45, F0, 00000000
        jmp     ?_154                                   ; 31EB _ EB, 2A

?_153:  mov     edx, dword [ebp-0CH]                    ; 31ED _ 8B. 55, F4
        mov     eax, dword [ebp-10H]                    ; 31F0 _ 8B. 45, F0
        add     eax, edx                                ; 31F3 _ 01. D0
        movzx   eax, byte [eax]                         ; 31F5 _ 0F B6. 00
        test    al, al                                  ; 31F8 _ 84. C0
        jz      ?_155                                   ; 31FA _ 74, 23
        mov     edx, dword [ebp-0CH]                    ; 31FC _ 8B. 55, F4
        mov     eax, dword [ebp-10H]                    ; 31FF _ 8B. 45, F0
        add     eax, edx                                ; 3202 _ 01. D0
        movzx   ecx, byte [eax]                         ; 3204 _ 0F B6. 08
        mov     edx, dword [ebp-10H]                    ; 3207 _ 8B. 55, F0
        mov     eax, dword [ebp-1CH]                    ; 320A _ 8B. 45, E4
        add     eax, edx                                ; 320D _ 01. D0
        mov     edx, ecx                                ; 320F _ 89. CA
        mov     byte [eax], dl                          ; 3211 _ 88. 10
        add     dword [ebp-10H], 1                      ; 3213 _ 83. 45, F0, 01
?_154:  cmp     dword [ebp-10H], 7                      ; 3217 _ 83. 7D, F0, 07
        jle     ?_153                                   ; 321B _ 7E, D0
        jmp     ?_156                                   ; 321D _ EB, 01

?_155:  nop                                             ; 321F _ 90
?_156:  mov     dword [ebp-14H], 0                      ; 3220 _ C7. 45, EC, 00000000
        mov     edx, dword [ebp-10H]                    ; 3227 _ 8B. 55, F0
        mov     eax, dword [ebp-1CH]                    ; 322A _ 8B. 45, E4
        add     eax, edx                                ; 322D _ 01. D0
        mov     byte [eax], 46                          ; 322F _ C6. 00, 2E
        add     dword [ebp-10H], 1                      ; 3232 _ 83. 45, F0, 01
        mov     dword [ebp-14H], 0                      ; 3236 _ C7. 45, EC, 00000000
        jmp     ?_158                                   ; 323D _ EB, 22

?_157:  mov     edx, dword [ebp-0CH]                    ; 323F _ 8B. 55, F4
        mov     eax, dword [ebp-14H]                    ; 3242 _ 8B. 45, EC
        add     eax, edx                                ; 3245 _ 01. D0
        add     eax, 8                                  ; 3247 _ 83. C0, 08
        movzx   ecx, byte [eax]                         ; 324A _ 0F B6. 08
        mov     edx, dword [ebp-10H]                    ; 324D _ 8B. 55, F0
        mov     eax, dword [ebp-1CH]                    ; 3250 _ 8B. 45, E4
        add     eax, edx                                ; 3253 _ 01. D0
        mov     edx, ecx                                ; 3255 _ 89. CA
        mov     byte [eax], dl                          ; 3257 _ 88. 10
        add     dword [ebp-10H], 1                      ; 3259 _ 83. 45, F0, 01
        add     dword [ebp-14H], 1                      ; 325D _ 83. 45, EC, 01
?_158:  cmp     dword [ebp-14H], 2                      ; 3261 _ 83. 7D, EC, 02
        jle     ?_157                                   ; 3265 _ 7E, D8
        mov     eax, dword [ebp-1CH]                    ; 3267 _ 8B. 45, E4
        mov     dword [esp+4H], eax                     ; 326A _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 326E _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3271 _ 89. 04 24
        call    _strcmp                                 ; 3274 _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 3279 _ 83. F8, 01
        jne     ?_161                                   ; 327C _ 0F 85, 00000083
        mov     eax, dword [ebp-0CH]                    ; 3282 _ 8B. 45, F4
        mov     edx, dword [eax+1CH]                    ; 3285 _ 8B. 50, 1C
        mov     eax, dword [_memman]                    ; 3288 _ A1, 00000000(d)
        mov     dword [esp+4H], edx                     ; 328D _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3291 _ 89. 04 24
        call    _memman_alloc_4k                        ; 3294 _ E8, 00000000(rel)
        mov     edx, eax                                ; 3299 _ 89. C2
        mov     eax, dword [ebp+0CH]                    ; 329B _ 8B. 45, 0C
        mov     dword [eax], edx                        ; 329E _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 32A0 _ 8B. 45, F4
        mov     eax, dword [eax+1CH]                    ; 32A3 _ 8B. 40, 1C
        mov     edx, eax                                ; 32A6 _ 89. C2
        mov     eax, dword [ebp+0CH]                    ; 32A8 _ 8B. 45, 0C
        mov     dword [eax+8H], edx                     ; 32AB _ 89. 50, 08
        mov     dword [ebp-20H], 88064                  ; 32AE _ C7. 45, E0, 00015800
        mov     eax, dword [ebp-0CH]                    ; 32B5 _ 8B. 45, F4
        movzx   eax, word [eax+1AH]                     ; 32B8 _ 0F B7. 40, 1A
        movzx   eax, ax                                 ; 32BC _ 0F B7. C0
        shl     eax, 9                                  ; 32BF _ C1. E0, 09
        add     dword [ebp-20H], eax                    ; 32C2 _ 01. 45, E0
        mov     eax, dword [ebp-0CH]                    ; 32C5 _ 8B. 45, F4
        mov     eax, dword [eax+1CH]                    ; 32C8 _ 8B. 40, 1C
        mov     dword [ebp-24H], eax                    ; 32CB _ 89. 45, DC
        mov     dword [ebp-18H], 0                      ; 32CE _ C7. 45, E8, 00000000
        mov     dword [ebp-18H], 0                      ; 32D5 _ C7. 45, E8, 00000000
        jmp     ?_160                                   ; 32DC _ EB, 1D

?_159:  mov     edx, dword [ebp-18H]                    ; 32DE _ 8B. 55, E8
        mov     eax, dword [ebp-20H]                    ; 32E1 _ 8B. 45, E0
        add     eax, edx                                ; 32E4 _ 01. D0
        movzx   ecx, byte [eax]                         ; 32E6 _ 0F B6. 08
        mov     eax, dword [ebp+0CH]                    ; 32E9 _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 32EC _ 8B. 10
        mov     eax, dword [ebp-18H]                    ; 32EE _ 8B. 45, E8
        add     eax, edx                                ; 32F1 _ 01. D0
        mov     edx, ecx                                ; 32F3 _ 89. CA
        mov     byte [eax], dl                          ; 32F5 _ 88. 10
        add     dword [ebp-18H], 1                      ; 32F7 _ 83. 45, E8, 01
?_160:  mov     eax, dword [ebp-18H]                    ; 32FB _ 8B. 45, E8
        cmp     eax, dword [ebp-24H]                    ; 32FE _ 3B. 45, DC
        jl      ?_159                                   ; 3301 _ 7C, DB
        jmp     ?_163                                   ; 3303 _ EB, 12

?_161:  add     dword [ebp-0CH], 32                     ; 3305 _ 83. 45, F4, 20
?_162:  mov     eax, dword [ebp-0CH]                    ; 3309 _ 8B. 45, F4
        movzx   eax, byte [eax]                         ; 330C _ 0F B6. 00
        test    al, al                                  ; 330F _ 84. C0
        jne     ?_152                                   ; 3311 _ 0F 85, FFFFFECD
?_163:  mov     edx, dword [ebp-1CH]                    ; 3317 _ 8B. 55, E4
        mov     eax, dword [_memman]                    ; 331A _ A1, 00000000(d)
        mov     dword [esp+8H], 13                      ; 331F _ C7. 44 24, 08, 0000000D
        mov     dword [esp+4H], edx                     ; 3327 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 332B _ 89. 04 24
        call    _memman_free                            ; 332E _ E8, 00000000(rel)
        nop                                             ; 3333 _ 90
        leave                                           ; 3334 _ C9
        ret                                             ; 3335 _ C3
; _file_loadfile End of function

_kernel_api:; Function begin
        push    ebp                                     ; 3336 _ 55
        mov     ebp, esp                                ; 3337 _ 89. E5
        push    esi                                     ; 3339 _ 56
        push    ebx                                     ; 333A _ 53
        sub     esp, 48                                 ; 333B _ 83. EC, 30
        call    _task_now                               ; 333E _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 3343 _ 89. 45, F4
        lea     eax, [ebp+24H]                          ; 3346 _ 8D. 45, 24
        add     eax, 4                                  ; 3349 _ 83. C0, 04
        mov     dword [ebp-10H], eax                    ; 334C _ 89. 45, F0
        cmp     dword [ebp+1CH], 1                      ; 334F _ 83. 7D, 1C, 01
        jnz     ?_164                                   ; 3353 _ 75, 1B
        mov     eax, dword [ebp+24H]                    ; 3355 _ 8B. 45, 24
        movsx   eax, al                                 ; 3358 _ 0F BE. C0
        mov     dword [esp+4H], 1                       ; 335B _ C7. 44 24, 04, 00000001
        mov     dword [esp], eax                        ; 3363 _ 89. 04 24
        call    _cons_putchar                           ; 3366 _ E8, FFFFE58A
        jmp     ?_169                                   ; 336B _ E9, 0000020C

?_164:  cmp     dword [ebp+1CH], 2                      ; 3370 _ 83. 7D, 1C, 02
        jnz     ?_165                                   ; 3374 _ 75, 18
        mov     edx, dword [_buffer]                    ; 3376 _ 8B. 15, 00000278(d)
        mov     eax, dword [ebp+18H]                    ; 337C _ 8B. 45, 18
        add     eax, edx                                ; 337F _ 01. D0
        mov     dword [esp], eax                        ; 3381 _ 89. 04 24
        call    _cons_putstr                            ; 3384 _ E8, FFFFE613
        jmp     ?_169                                   ; 3389 _ E9, 000001EE

?_165:  cmp     dword [ebp+1CH], 4                      ; 338E _ 83. 7D, 1C, 04
        jnz     ?_166                                   ; 3392 _ 75, 17
        mov     eax, dword [ebp-0CH]                    ; 3394 _ 8B. 45, F4
        mov     dword [eax+34H], 0                      ; 3397 _ C7. 40, 34, 00000000
        mov     eax, dword [_task_cons]                 ; 339E _ A1, 00000270(d)
        add     eax, 48                                 ; 33A3 _ 83. C0, 30
        jmp     ?_170                                   ; 33A6 _ E9, 000001D6

?_166:  cmp     dword [ebp+1CH], 5                      ; 33AB _ 83. 7D, 1C, 05
        jne     ?_167                                   ; 33AF _ 0F 85, 000000BA
        mov     eax, dword [_shtctl]                    ; 33B5 _ A1, 00000264(d)
        mov     dword [esp], eax                        ; 33BA _ 89. 04 24
        call    _sheet_alloc                            ; 33BD _ E8, 00000000(rel)
        mov     dword [ebp-14H], eax                    ; 33C2 _ 89. 45, EC
        mov     edx, dword [ebp+24H]                    ; 33C5 _ 8B. 55, 24
        mov     ecx, dword [?_334]                      ; 33C8 _ 8B. 0D, 0000027C(d)
        mov     eax, dword [ebp+18H]                    ; 33CE _ 8B. 45, 18
        add     eax, ecx                                ; 33D1 _ 01. C8
        mov     dword [esp+10H], edx                    ; 33D3 _ 89. 54 24, 10
        mov     edx, dword [ebp+8H]                     ; 33D7 _ 8B. 55, 08
        mov     dword [esp+0CH], edx                    ; 33DA _ 89. 54 24, 0C
        mov     edx, dword [ebp+0CH]                    ; 33DE _ 8B. 55, 0C
        mov     dword [esp+8H], edx                     ; 33E1 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 33E5 _ 89. 44 24, 04
        mov     eax, dword [ebp-14H]                    ; 33E9 _ 8B. 45, EC
        mov     dword [esp], eax                        ; 33EC _ 89. 04 24
        call    _sheet_setbuf                           ; 33EF _ E8, 00000000(rel)
        mov     edx, dword [_buffer]                    ; 33F4 _ 8B. 15, 00000278(d)
        mov     eax, dword [ebp+20H]                    ; 33FA _ 8B. 45, 20
        add     edx, eax                                ; 33FD _ 01. C2
        mov     eax, dword [_shtctl]                    ; 33FF _ A1, 00000264(d)
        mov     dword [esp+0CH], 0                      ; 3404 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], edx                     ; 340C _ 89. 54 24, 08
        mov     edx, dword [ebp-14H]                    ; 3410 _ 8B. 55, EC
        mov     dword [esp+4H], edx                     ; 3413 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3417 _ 89. 04 24
        call    _make_window8                           ; 341A _ E8, FFFFF6F5
        mov     eax, dword [_shtctl]                    ; 341F _ A1, 00000264(d)
        mov     dword [esp+0CH], 50                     ; 3424 _ C7. 44 24, 0C, 00000032
        mov     dword [esp+8H], 100                     ; 342C _ C7. 44 24, 08, 00000064
        mov     edx, dword [ebp-14H]                    ; 3434 _ 8B. 55, EC
        mov     dword [esp+4H], edx                     ; 3437 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 343B _ 89. 04 24
        call    _sheet_slide                            ; 343E _ E8, 00000000(rel)
        mov     eax, dword [_shtctl]                    ; 3443 _ A1, 00000264(d)
        mov     dword [esp+8H], 3                       ; 3448 _ C7. 44 24, 08, 00000003
        mov     edx, dword [ebp-14H]                    ; 3450 _ 8B. 55, EC
        mov     dword [esp+4H], edx                     ; 3453 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3457 _ 89. 04 24
        call    _sheet_updown                           ; 345A _ E8, 00000000(rel)
        mov     eax, dword [ebp-10H]                    ; 345F _ 8B. 45, F0
        add     eax, 28                                 ; 3462 _ 83. C0, 1C
        mov     edx, dword [ebp-14H]                    ; 3465 _ 8B. 55, EC
        mov     dword [eax], edx                        ; 3468 _ 89. 10
        jmp     ?_169                                   ; 346A _ E9, 0000010D

?_167:  cmp     dword [ebp+1CH], 6                      ; 346F _ 83. 7D, 1C, 06
        jne     ?_168                                   ; 3473 _ 0F 85, 00000084
        mov     eax, dword [ebp+18H]                    ; 3479 _ 8B. 45, 18
        mov     dword [ebp-14H], eax                    ; 347C _ 89. 45, EC
        mov     edx, dword [_buffer]                    ; 347F _ 8B. 15, 00000278(d)
        mov     eax, dword [ebp+10H]                    ; 3485 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 3488 _ 8D. 0C 02
        mov     eax, dword [ebp+24H]                    ; 348B _ 8B. 45, 24
        movsx   eax, al                                 ; 348E _ 0F BE. C0
        mov     edx, dword [_shtctl]                    ; 3491 _ 8B. 15, 00000264(d)
        mov     dword [esp+14H], ecx                    ; 3497 _ 89. 4C 24, 14
        mov     dword [esp+10H], eax                    ; 349B _ 89. 44 24, 10
        mov     eax, dword [ebp+8H]                     ; 349F _ 8B. 45, 08
        mov     dword [esp+0CH], eax                    ; 34A2 _ 89. 44 24, 0C
        mov     eax, dword [ebp+0CH]                    ; 34A6 _ 8B. 45, 0C
        mov     dword [esp+8H], eax                     ; 34A9 _ 89. 44 24, 08
        mov     eax, dword [ebp-14H]                    ; 34AD _ 8B. 45, EC
        mov     dword [esp+4H], eax                     ; 34B0 _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 34B4 _ 89. 14 24
        call    _showString                             ; 34B7 _ E8, FFFFEB2B
        mov     eax, dword [ebp+8H]                     ; 34BC _ 8B. 45, 08
        lea     ecx, [eax+10H]                          ; 34BF _ 8D. 48, 10
        mov     eax, dword [ebp+20H]                    ; 34C2 _ 8B. 45, 20
        lea     edx, [eax*8]                            ; 34C5 _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp+0CH]                    ; 34CC _ 8B. 45, 0C
        add     edx, eax                                ; 34CF _ 01. C2
        mov     eax, dword [_shtctl]                    ; 34D1 _ A1, 00000264(d)
        mov     dword [esp+14H], ecx                    ; 34D6 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 34DA _ 89. 54 24, 10
        mov     edx, dword [ebp+8H]                     ; 34DE _ 8B. 55, 08
        mov     dword [esp+0CH], edx                    ; 34E1 _ 89. 54 24, 0C
        mov     edx, dword [ebp+0CH]                    ; 34E5 _ 8B. 55, 0C
        mov     dword [esp+8H], edx                     ; 34E8 _ 89. 54 24, 08
        mov     edx, dword [ebp-14H]                    ; 34EC _ 8B. 55, EC
        mov     dword [esp+4H], edx                     ; 34EF _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 34F3 _ 89. 04 24
        call    _sheet_refresh                          ; 34F6 _ E8, 00000000(rel)
        jmp     ?_169                                   ; 34FB _ EB, 7F

?_168:  cmp     dword [ebp+1CH], 7                      ; 34FD _ 83. 7D, 1C, 07
        jnz     ?_169                                   ; 3501 _ 75, 79
        mov     eax, dword [ebp+18H]                    ; 3503 _ 8B. 45, 18
        mov     dword [ebp-14H], eax                    ; 3506 _ 89. 45, EC
        mov     ebx, dword [ebp+24H]                    ; 3509 _ 8B. 5D, 24
        mov     eax, dword [ebp+10H]                    ; 350C _ 8B. 45, 10
        movzx   eax, al                                 ; 350F _ 0F B6. C0
        mov     edx, dword [ebp-14H]                    ; 3512 _ 8B. 55, EC
        mov     ecx, dword [edx+4H]                     ; 3515 _ 8B. 4A, 04
        mov     edx, dword [ebp-14H]                    ; 3518 _ 8B. 55, EC
        mov     edx, dword [edx]                        ; 351B _ 8B. 12
        mov     esi, dword [ebp+8H]                     ; 351D _ 8B. 75, 08
        mov     dword [esp+18H], esi                    ; 3520 _ 89. 74 24, 18
        mov     esi, dword [ebp+0CH]                    ; 3524 _ 8B. 75, 0C
        mov     dword [esp+14H], esi                    ; 3527 _ 89. 74 24, 14
        mov     esi, dword [ebp+20H]                    ; 352B _ 8B. 75, 20
        mov     dword [esp+10H], esi                    ; 352E _ 89. 74 24, 10
        mov     dword [esp+0CH], ebx                    ; 3532 _ 89. 5C 24, 0C
        mov     dword [esp+8H], eax                     ; 3536 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 353A _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 353E _ 89. 14 24
        call    _boxfill8                               ; 3541 _ E8, FFFFEC15
        mov     eax, dword [ebp+8H]                     ; 3546 _ 8B. 45, 08
        lea     ebx, [eax+1H]                           ; 3549 _ 8D. 58, 01
        mov     eax, dword [ebp+0CH]                    ; 354C _ 8B. 45, 0C
        lea     ecx, [eax+1H]                           ; 354F _ 8D. 48, 01
        mov     edx, dword [ebp+24H]                    ; 3552 _ 8B. 55, 24
        mov     eax, dword [_shtctl]                    ; 3555 _ A1, 00000264(d)
        mov     dword [esp+14H], ebx                    ; 355A _ 89. 5C 24, 14
        mov     dword [esp+10H], ecx                    ; 355E _ 89. 4C 24, 10
        mov     ecx, dword [ebp+20H]                    ; 3562 _ 8B. 4D, 20
        mov     dword [esp+0CH], ecx                    ; 3565 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 3569 _ 89. 54 24, 08
        mov     edx, dword [ebp-14H]                    ; 356D _ 8B. 55, EC
        mov     dword [esp+4H], edx                     ; 3570 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3574 _ 89. 04 24
        call    _sheet_refresh                          ; 3577 _ E8, 00000000(rel)
?_169:  mov     eax, 0                                  ; 357C _ B8, 00000000
?_170:  add     esp, 48                                 ; 3581 _ 83. C4, 30
        pop     ebx                                     ; 3584 _ 5B
        pop     esi                                     ; 3585 _ 5E
        pop     ebp                                     ; 3586 _ 5D
        ret                                             ; 3587 _ C3
; _kernel_api End of function

_intHandlerForException:; Function begin
        push    ebp                                     ; 3588 _ 55
        mov     ebp, esp                                ; 3589 _ 89. E5
        sub     esp, 40                                 ; 358B _ 83. EC, 28
        mov     dword [?_325], 8                        ; 358E _ C7. 05, 0000000C(d), 00000008
        mov     dword [esp], ?_320                      ; 3598 _ C7. 04 24, 00000078(d)
        call    _cons_putstr                            ; 359F _ E8, FFFFE3F8
        mov     dword [?_325], 8                        ; 35A4 _ C7. 05, 0000000C(d), 00000008
        mov     eax, dword [?_326]                      ; 35AE _ A1, 00000010(d)
        add     eax, 16                                 ; 35B3 _ 83. C0, 10
        mov     dword [?_326], eax                      ; 35B6 _ A3, 00000010(d)
        mov     dword [esp], ?_321                      ; 35BB _ C7. 04 24, 00000080(d)
        call    _cons_putstr                            ; 35C2 _ E8, FFFFE3D5
        mov     eax, dword [?_326]                      ; 35C7 _ A1, 00000010(d)
        add     eax, 16                                 ; 35CC _ 83. C0, 10
        mov     dword [?_326], eax                      ; 35CF _ A3, 00000010(d)
        mov     dword [?_325], 8                        ; 35D4 _ C7. 05, 0000000C(d), 00000008
        call    _task_now                               ; 35DE _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 35E3 _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 35E6 _ 8B. 45, F4
        add     eax, 48                                 ; 35E9 _ 83. C0, 30
        leave                                           ; 35EC _ C9
        ret                                             ; 35ED _ C3
; _intHandlerForException End of function

_intHandlerForStackOverFlow:; Function begin
        push    ebp                                     ; 35EE _ 55
        mov     ebp, esp                                ; 35EF _ 89. E5
        sub     esp, 40                                 ; 35F1 _ 83. EC, 28
        mov     dword [?_325], 8                        ; 35F4 _ C7. 05, 0000000C(d), 00000008
        mov     dword [esp], ?_322                      ; 35FE _ C7. 04 24, 0000009C(d)
        call    _cons_putstr                            ; 3605 _ E8, FFFFE392
        mov     dword [?_325], 8                        ; 360A _ C7. 05, 0000000C(d), 00000008
        mov     eax, dword [?_326]                      ; 3614 _ A1, 00000010(d)
        add     eax, 16                                 ; 3619 _ 83. C0, 10
        mov     dword [?_326], eax                      ; 361C _ A3, 00000010(d)
        mov     dword [esp], ?_323                      ; 3621 _ C7. 04 24, 000000A3(d)
        call    _cons_putstr                            ; 3628 _ E8, FFFFE36F
        mov     dword [?_325], 8                        ; 362D _ C7. 05, 0000000C(d), 00000008
        mov     eax, dword [?_326]                      ; 3637 _ A1, 00000010(d)
        add     eax, 16                                 ; 363C _ 83. C0, 10
        mov     dword [?_326], eax                      ; 363F _ A3, 00000010(d)
        mov     eax, dword [ebp+8H]                     ; 3644 _ 8B. 45, 08
        add     eax, 44                                 ; 3647 _ 83. C0, 2C
        mov     eax, dword [eax]                        ; 364A _ 8B. 00
        mov     dword [esp], eax                        ; 364C _ 89. 04 24
        call    _intToHexStr                            ; 364F _ E8, FFFFEEF4
        mov     dword [ebp-0CH], eax                    ; 3654 _ 89. 45, F4
        mov     dword [esp], ?_324                      ; 3657 _ C7. 04 24, 000000B3(d)
        call    _cons_putstr                            ; 365E _ E8, FFFFE339
        mov     eax, dword [ebp-0CH]                    ; 3663 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 3666 _ 89. 04 24
        call    _cons_putstr                            ; 3669 _ E8, FFFFE32E
        mov     dword [?_325], 8                        ; 366E _ C7. 05, 0000000C(d), 00000008
        mov     eax, dword [?_326]                      ; 3678 _ A1, 00000010(d)
        add     eax, 16                                 ; 367D _ 83. C0, 10
        mov     dword [?_326], eax                      ; 3680 _ A3, 00000010(d)
        call    _task_now                               ; 3685 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 368A _ 89. 45, F0
        mov     eax, dword [ebp-10H]                    ; 368D _ 8B. 45, F0
        add     eax, 48                                 ; 3690 _ 83. C0, 30
        leave                                           ; 3693 _ C9
        ret                                             ; 3694 _ C3
; _intHandlerForStackOverFlow End of function

_kill_process:; Function begin
        push    ebp                                     ; 3695 _ 55
        mov     ebp, esp                                ; 3696 _ 89. E5
        sub     esp, 24                                 ; 3698 _ 83. EC, 18
        mov     edx, dword [_g_Console]                 ; 369B _ 8B. 15, 00000008(d)
        mov     eax, dword [?_326]                      ; 36A1 _ A1, 00000010(d)
        mov     dword [esp+4H], edx                     ; 36A6 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 36AA _ 89. 04 24
        call    _cons_newline                           ; 36AD _ E8, FFFFE31C
        mov     eax, dword [?_326]                      ; 36B2 _ A1, 00000010(d)
        add     eax, 16                                 ; 36B7 _ 83. C0, 10
        mov     dword [?_326], eax                      ; 36BA _ A3, 00000010(d)
        mov     eax, dword [_task_cons]                 ; 36BF _ A1, 00000270(d)
        add     eax, 48                                 ; 36C4 _ 83. C0, 30
        mov     dword [esp], eax                        ; 36C7 _ 89. 04 24
        call    _asm_end_app                            ; 36CA _ E8, 00000000(rel)
        nop                                             ; 36CF _ 90
        leave                                           ; 36D0 _ C9
        ret                                             ; 36D1 _ C3
; _kill_process End of function

        nop                                             ; 36D2 _ 90
        nop                                             ; 36D3 _ 90


_shtctl_init:
        push    ebp                                     ; 36D4 _ 55
        mov     ebp, esp                                ; 36D5 _ 89. E5
        sub     esp, 40                                 ; 36D7 _ 83. EC, 28
        mov     dword [esp+4H], 9232                    ; 36DA _ C7. 44 24, 04, 00002410
        mov     eax, dword [ebp+8H]                     ; 36E2 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 36E5 _ 89. 04 24
        call    _memman_alloc_4k                        ; 36E8 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 36ED _ 89. 45, F0
        cmp     dword [ebp-10H], 0                      ; 36F0 _ 83. 7D, F0, 00
        jnz     ?_171                                   ; 36F4 _ 75, 0A
        mov     eax, 0                                  ; 36F6 _ B8, 00000000
        jmp     ?_175                                   ; 36FB _ E9, 0000009D

?_171:  mov     eax, dword [ebp+10H]                    ; 3700 _ 8B. 45, 10
        imul    eax, dword [ebp+14H]                    ; 3703 _ 0F AF. 45, 14
        mov     dword [esp+4H], eax                     ; 3707 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 370B _ 8B. 45, 08
        mov     dword [esp], eax                        ; 370E _ 89. 04 24
        call    _memman_alloc_4k                        ; 3711 _ E8, 00000000(rel)
        mov     edx, eax                                ; 3716 _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 3718 _ 8B. 45, F0
        mov     dword [eax+4H], edx                     ; 371B _ 89. 50, 04
        mov     eax, dword [ebp-10H]                    ; 371E _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 3721 _ 8B. 40, 04
        test    eax, eax                                ; 3724 _ 85. C0
        jnz     ?_172                                   ; 3726 _ 75, 21
        mov     eax, dword [ebp-10H]                    ; 3728 _ 8B. 45, F0
        mov     dword [esp+8H], 9232                    ; 372B _ C7. 44 24, 08, 00002410
        mov     dword [esp+4H], eax                     ; 3733 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3737 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 373A _ 89. 04 24
        call    _memman_free_4k                         ; 373D _ E8, 00000000(rel)
        mov     eax, 0                                  ; 3742 _ B8, 00000000
        jmp     ?_175                                   ; 3747 _ EB, 54

?_172:  mov     eax, dword [ebp-10H]                    ; 3749 _ 8B. 45, F0
        mov     edx, dword [ebp+0CH]                    ; 374C _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 374F _ 89. 10
        mov     eax, dword [ebp-10H]                    ; 3751 _ 8B. 45, F0
        mov     edx, dword [ebp+10H]                    ; 3754 _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 3757 _ 89. 50, 08
        mov     eax, dword [ebp-10H]                    ; 375A _ 8B. 45, F0
        mov     edx, dword [ebp+14H]                    ; 375D _ 8B. 55, 14
        mov     dword [eax+0CH], edx                    ; 3760 _ 89. 50, 0C
        mov     eax, dword [ebp-10H]                    ; 3763 _ 8B. 45, F0
        mov     dword [eax+10H], -1                     ; 3766 _ C7. 40, 10, FFFFFFFF
        mov     dword [ebp-0CH], 0                      ; 376D _ C7. 45, F4, 00000000
        jmp     ?_174                                   ; 3774 _ EB, 1B

?_173:  mov     edx, dword [ebp-10H]                    ; 3776 _ 8B. 55, F0
        mov     eax, dword [ebp-0CH]                    ; 3779 _ 8B. 45, F4
        add     eax, 33                                 ; 377C _ 83. C0, 21
        shl     eax, 5                                  ; 377F _ C1. E0, 05
        add     eax, edx                                ; 3782 _ 01. D0
        add     eax, 16                                 ; 3784 _ 83. C0, 10
        mov     dword [eax], 0                          ; 3787 _ C7. 00, 00000000
        add     dword [ebp-0CH], 1                      ; 378D _ 83. 45, F4, 01
?_174:  cmp     dword [ebp-0CH], 255                    ; 3791 _ 81. 7D, F4, 000000FF
        jle     ?_173                                   ; 3798 _ 7E, DC
        mov     eax, dword [ebp-10H]                    ; 379A _ 8B. 45, F0
?_175:  leave                                           ; 379D _ C9
        ret                                             ; 379E _ C3

_sheet_alloc:; Function begin
        push    ebp                                     ; 379F _ 55
        mov     ebp, esp                                ; 37A0 _ 89. E5
        sub     esp, 16                                 ; 37A2 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 37A5 _ C7. 45, FC, 00000000
        jmp     ?_178                                   ; 37AC _ EB, 5B

?_176:  mov     edx, dword [ebp+8H]                     ; 37AE _ 8B. 55, 08
        mov     eax, dword [ebp-4H]                     ; 37B1 _ 8B. 45, FC
        add     eax, 33                                 ; 37B4 _ 83. C0, 21
        shl     eax, 5                                  ; 37B7 _ C1. E0, 05
        add     eax, edx                                ; 37BA _ 01. D0
        add     eax, 16                                 ; 37BC _ 83. C0, 10
        mov     eax, dword [eax]                        ; 37BF _ 8B. 00
        test    eax, eax                                ; 37C1 _ 85. C0
        jnz     ?_177                                   ; 37C3 _ 75, 40
        mov     eax, dword [ebp-4H]                     ; 37C5 _ 8B. 45, FC
        shl     eax, 5                                  ; 37C8 _ C1. E0, 05
        lea     edx, [eax+410H]                         ; 37CB _ 8D. 90, 00000410
        mov     eax, dword [ebp+8H]                     ; 37D1 _ 8B. 45, 08
        add     eax, edx                                ; 37D4 _ 01. D0
        add     eax, 4                                  ; 37D6 _ 83. C0, 04
        mov     dword [ebp-8H], eax                     ; 37D9 _ 89. 45, F8
        mov     eax, dword [ebp+8H]                     ; 37DC _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 37DF _ 8B. 55, FC
        add     edx, 4                                  ; 37E2 _ 83. C2, 04
        mov     ecx, dword [ebp-8H]                     ; 37E5 _ 8B. 4D, F8
        mov     dword [eax+edx*4+4H], ecx               ; 37E8 _ 89. 4C 90, 04
        mov     eax, dword [ebp-8H]                     ; 37EC _ 8B. 45, F8
        mov     dword [eax+1CH], 1                      ; 37EF _ C7. 40, 1C, 00000001
        mov     eax, dword [ebp-8H]                     ; 37F6 _ 8B. 45, F8
        mov     dword [eax+18H], -1                     ; 37F9 _ C7. 40, 18, FFFFFFFF
        mov     eax, dword [ebp-8H]                     ; 3800 _ 8B. 45, F8
        jmp     ?_179                                   ; 3803 _ EB, 12

?_177:  add     dword [ebp-4H], 1                       ; 3805 _ 83. 45, FC, 01
?_178:  cmp     dword [ebp-4H], 255                     ; 3809 _ 81. 7D, FC, 000000FF
        jle     ?_176                                   ; 3810 _ 7E, 9C
        mov     eax, 0                                  ; 3812 _ B8, 00000000
?_179:  leave                                           ; 3817 _ C9
        ret                                             ; 3818 _ C3
; _sheet_alloc End of function

_sheet_setbuf:; Function begin
        push    ebp                                     ; 3819 _ 55
        mov     ebp, esp                                ; 381A _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 381C _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 381F _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 3822 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 3824 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 3827 _ 8B. 55, 10
        mov     dword [eax+4H], edx                     ; 382A _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 382D _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 3830 _ 8B. 55, 14
        mov     dword [eax+8H], edx                     ; 3833 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 3836 _ 8B. 45, 08
        mov     edx, dword [ebp+18H]                    ; 3839 _ 8B. 55, 18
        mov     dword [eax+14H], edx                    ; 383C _ 89. 50, 14
        nop                                             ; 383F _ 90
        pop     ebp                                     ; 3840 _ 5D
        ret                                             ; 3841 _ C3
; _sheet_setbuf End of function

_sheet_updown:; Function begin
        push    ebp                                     ; 3842 _ 55
        mov     ebp, esp                                ; 3843 _ 89. E5
        push    edi                                     ; 3845 _ 57
        push    esi                                     ; 3846 _ 56
        push    ebx                                     ; 3847 _ 53
        sub     esp, 60                                 ; 3848 _ 83. EC, 3C
        mov     eax, dword [ebp+0CH]                    ; 384B _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 384E _ 8B. 40, 18
        mov     dword [ebp-20H], eax                    ; 3851 _ 89. 45, E0
        mov     eax, dword [ebp+8H]                     ; 3854 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3857 _ 8B. 40, 10
        add     eax, 1                                  ; 385A _ 83. C0, 01
        cmp     dword [ebp+10H], eax                    ; 385D _ 39. 45, 10
        jle     ?_180                                   ; 3860 _ 7E, 0C
        mov     eax, dword [ebp+8H]                     ; 3862 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3865 _ 8B. 40, 10
        add     eax, 1                                  ; 3868 _ 83. C0, 01
        mov     dword [ebp+10H], eax                    ; 386B _ 89. 45, 10
?_180:  cmp     dword [ebp+10H], -1                     ; 386E _ 83. 7D, 10, FF
        jge     ?_181                                   ; 3872 _ 7D, 07
        mov     dword [ebp+10H], -1                     ; 3874 _ C7. 45, 10, FFFFFFFF
?_181:  mov     eax, dword [ebp+0CH]                    ; 387B _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 387E _ 8B. 55, 10
        mov     dword [eax+18H], edx                    ; 3881 _ 89. 50, 18
        mov     eax, dword [ebp-20H]                    ; 3884 _ 8B. 45, E0
        cmp     eax, dword [ebp+10H]                    ; 3887 _ 3B. 45, 10
        jle     ?_188                                   ; 388A _ 0F 8E, 00000212
        cmp     dword [ebp+10H], 0                      ; 3890 _ 83. 7D, 10, 00
        js      ?_184                                   ; 3894 _ 0F 88, 000000FE
        mov     eax, dword [ebp-20H]                    ; 389A _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 389D _ 89. 45, E4
        jmp     ?_183                                   ; 38A0 _ EB, 34

?_182:  mov     eax, dword [ebp-1CH]                    ; 38A2 _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 38A5 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 38A8 _ 8B. 45, 08
        add     edx, 4                                  ; 38AB _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 38AE _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 38B2 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 38B5 _ 8B. 55, E4
        add     edx, 4                                  ; 38B8 _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 38BB _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 38BF _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 38C2 _ 8B. 55, E4
        add     edx, 4                                  ; 38C5 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 38C8 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 38CC _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 38CF _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 38D2 _ 83. 6D, E4, 01
?_183:  mov     eax, dword [ebp-1CH]                    ; 38D6 _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 38D9 _ 3B. 45, 10
        jg      ?_182                                   ; 38DC _ 7F, C4
        mov     eax, dword [ebp+8H]                     ; 38DE _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 38E1 _ 8B. 55, 10
        add     edx, 4                                  ; 38E4 _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 38E7 _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 38EA _ 89. 4C 90, 04
        mov     eax, dword [ebp+10H]                    ; 38EE _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 38F1 _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 38F4 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 38F7 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 38FA _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 38FD _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 3900 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 3903 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 3906 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 3909 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 390C _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 390F _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 3912 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 3915 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 3918 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 391B _ 8B. 40, 0C
        mov     dword [esp+14H], esi                    ; 391E _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 3922 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 3926 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 392A _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 392E _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3932 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3935 _ 89. 04 24
        call    _sheet_refreshmap                       ; 3938 _ E8, 0000063D
        mov     eax, dword [ebp+10H]                    ; 393D _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 3940 _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 3943 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 3946 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 3949 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 394C _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 394F _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 3952 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 3955 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 3958 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 395B _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 395E _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 3961 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 3964 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 3967 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 396A _ 8B. 40, 0C
        mov     edi, dword [ebp-20H]                    ; 396D _ 8B. 7D, E0
        mov     dword [esp+18H], edi                    ; 3970 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 3974 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 3978 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 397C _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 3980 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 3984 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3988 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 398B _ 89. 04 24
        call    _sheet_refreshsub                       ; 398E _ E8, 00000465
        jmp     ?_195                                   ; 3993 _ E9, 0000027D

?_184:  mov     eax, dword [ebp+8H]                     ; 3998 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 399B _ 8B. 40, 10
        cmp     dword [ebp-20H], eax                    ; 399E _ 39. 45, E0
        jge     ?_187                                   ; 39A1 _ 7D, 47
        mov     eax, dword [ebp-20H]                    ; 39A3 _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 39A6 _ 89. 45, E4
        jmp     ?_186                                   ; 39A9 _ EB, 34

?_185:  mov     eax, dword [ebp-1CH]                    ; 39AB _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 39AE _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 39B1 _ 8B. 45, 08
        add     edx, 4                                  ; 39B4 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 39B7 _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 39BB _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 39BE _ 8B. 55, E4
        add     edx, 4                                  ; 39C1 _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 39C4 _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 39C8 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 39CB _ 8B. 55, E4
        add     edx, 4                                  ; 39CE _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 39D1 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 39D5 _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 39D8 _ 89. 50, 18
        add     dword [ebp-1CH], 1                      ; 39DB _ 83. 45, E4, 01
?_186:  mov     eax, dword [ebp+8H]                     ; 39DF _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 39E2 _ 8B. 40, 10
        cmp     dword [ebp-1CH], eax                    ; 39E5 _ 39. 45, E4
        jl      ?_185                                   ; 39E8 _ 7C, C1
?_187:  mov     eax, dword [ebp+8H]                     ; 39EA _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 39ED _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 39F0 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 39F3 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 39F6 _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 39F9 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 39FC _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 39FF _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 3A02 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 3A05 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 3A08 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 3A0B _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 3A0E _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 3A11 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 3A14 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 3A17 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 3A1A _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 3A1D _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 3A20 _ 8B. 40, 0C
        mov     dword [esp+14H], 0                      ; 3A23 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], ebx                    ; 3A2B _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 3A2F _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 3A33 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 3A37 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3A3B _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3A3E _ 89. 04 24
        call    _sheet_refreshmap                       ; 3A41 _ E8, 00000534
        mov     eax, dword [ebp-20H]                    ; 3A46 _ 8B. 45, E0
        lea     esi, [eax-1H]                           ; 3A49 _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 3A4C _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 3A4F _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 3A52 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 3A55 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 3A58 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 3A5B _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 3A5E _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 3A61 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 3A64 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 3A67 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 3A6A _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 3A6D _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 3A70 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 3A73 _ 8B. 40, 0C
        mov     dword [esp+18H], esi                    ; 3A76 _ 89. 74 24, 18
        mov     dword [esp+14H], 0                      ; 3A7A _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], ebx                    ; 3A82 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 3A86 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 3A8A _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 3A8E _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3A92 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3A95 _ 89. 04 24
        call    _sheet_refreshsub                       ; 3A98 _ E8, 0000035B
        jmp     ?_195                                   ; 3A9D _ E9, 00000173

?_188:  mov     eax, dword [ebp-20H]                    ; 3AA2 _ 8B. 45, E0
        cmp     eax, dword [ebp+10H]                    ; 3AA5 _ 3B. 45, 10
        jge     ?_195                                   ; 3AA8 _ 0F 8D, 00000167
        cmp     dword [ebp-20H], 0                      ; 3AAE _ 83. 7D, E0, 00
        js      ?_191                                   ; 3AB2 _ 78, 56
        mov     eax, dword [ebp-20H]                    ; 3AB4 _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 3AB7 _ 89. 45, E4
        jmp     ?_190                                   ; 3ABA _ EB, 34

?_189:  mov     eax, dword [ebp-1CH]                    ; 3ABC _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 3ABF _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 3AC2 _ 8B. 45, 08
        add     edx, 4                                  ; 3AC5 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 3AC8 _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 3ACC _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 3ACF _ 8B. 55, E4
        add     edx, 4                                  ; 3AD2 _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 3AD5 _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 3AD9 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 3ADC _ 8B. 55, E4
        add     edx, 4                                  ; 3ADF _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 3AE2 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 3AE6 _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 3AE9 _ 89. 50, 18
        add     dword [ebp-1CH], 1                      ; 3AEC _ 83. 45, E4, 01
?_190:  mov     eax, dword [ebp-1CH]                    ; 3AF0 _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 3AF3 _ 3B. 45, 10
        jl      ?_189                                   ; 3AF6 _ 7C, C4
        mov     eax, dword [ebp+8H]                     ; 3AF8 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 3AFB _ 8B. 55, 10
        add     edx, 4                                  ; 3AFE _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 3B01 _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 3B04 _ 89. 4C 90, 04
        jmp     ?_194                                   ; 3B08 _ EB, 6C

?_191:  mov     eax, dword [ebp+8H]                     ; 3B0A _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3B0D _ 8B. 40, 10
        mov     dword [ebp-1CH], eax                    ; 3B10 _ 89. 45, E4
        jmp     ?_193                                   ; 3B13 _ EB, 3A

?_192:  mov     eax, dword [ebp-1CH]                    ; 3B15 _ 8B. 45, E4
        lea     ebx, [eax+1H]                           ; 3B18 _ 8D. 58, 01
        mov     eax, dword [ebp+8H]                     ; 3B1B _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 3B1E _ 8B. 55, E4
        add     edx, 4                                  ; 3B21 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 3B24 _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 3B28 _ 8B. 45, 08
        lea     edx, [ebx+4H]                           ; 3B2B _ 8D. 53, 04
        mov     dword [eax+edx*4+4H], ecx               ; 3B2E _ 89. 4C 90, 04
        mov     eax, dword [ebp-1CH]                    ; 3B32 _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 3B35 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 3B38 _ 8B. 45, 08
        add     edx, 4                                  ; 3B3B _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 3B3E _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 3B42 _ 8B. 55, E4
        add     edx, 1                                  ; 3B45 _ 83. C2, 01
        mov     dword [eax+18H], edx                    ; 3B48 _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 3B4B _ 83. 6D, E4, 01
?_193:  mov     eax, dword [ebp-1CH]                    ; 3B4F _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 3B52 _ 3B. 45, 10
        jge     ?_192                                   ; 3B55 _ 7D, BE
        mov     eax, dword [ebp+8H]                     ; 3B57 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 3B5A _ 8B. 55, 10
        add     edx, 4                                  ; 3B5D _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 3B60 _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 3B63 _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 3B67 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3B6A _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 3B6D _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 3B70 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 3B73 _ 89. 50, 10
?_194:  mov     eax, dword [ebp+0CH]                    ; 3B76 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 3B79 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 3B7C _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 3B7F _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 3B82 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 3B85 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 3B88 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 3B8B _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 3B8E _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 3B91 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 3B94 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 3B97 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 3B9A _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 3B9D _ 8B. 40, 0C
        mov     esi, dword [ebp+10H]                    ; 3BA0 _ 8B. 75, 10
        mov     dword [esp+14H], esi                    ; 3BA3 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 3BA7 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 3BAB _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 3BAF _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 3BB3 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3BB7 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3BBA _ 89. 04 24
        call    _sheet_refreshmap                       ; 3BBD _ E8, 000003B8
        mov     eax, dword [ebp+0CH]                    ; 3BC2 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 3BC5 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 3BC8 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 3BCB _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 3BCE _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 3BD1 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 3BD4 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 3BD7 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 3BDA _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 3BDD _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 3BE0 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 3BE3 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 3BE6 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 3BE9 _ 8B. 40, 0C
        mov     esi, dword [ebp+10H]                    ; 3BEC _ 8B. 75, 10
        mov     dword [esp+18H], esi                    ; 3BEF _ 89. 74 24, 18
        mov     esi, dword [ebp+10H]                    ; 3BF3 _ 8B. 75, 10
        mov     dword [esp+14H], esi                    ; 3BF6 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 3BFA _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 3BFE _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 3C02 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 3C06 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3C0A _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3C0D _ 89. 04 24
        call    _sheet_refreshsub                       ; 3C10 _ E8, 000001E3
?_195:  nop                                             ; 3C15 _ 90
        add     esp, 60                                 ; 3C16 _ 83. C4, 3C
        pop     ebx                                     ; 3C19 _ 5B
        pop     esi                                     ; 3C1A _ 5E
        pop     edi                                     ; 3C1B _ 5F
        pop     ebp                                     ; 3C1C _ 5D
        ret                                             ; 3C1D _ C3
; _sheet_updown End of function

_sheet_refresh:; Function begin
        push    ebp                                     ; 3C1E _ 55
        mov     ebp, esp                                ; 3C1F _ 89. E5
        push    edi                                     ; 3C21 _ 57
        push    esi                                     ; 3C22 _ 56
        push    ebx                                     ; 3C23 _ 53
        sub     esp, 60                                 ; 3C24 _ 83. EC, 3C
        mov     eax, dword [ebp+0CH]                    ; 3C27 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 3C2A _ 8B. 40, 18
        test    eax, eax                                ; 3C2D _ 85. C0
        js      ?_196                                   ; 3C2F _ 78, 61
        mov     eax, dword [ebp+0CH]                    ; 3C31 _ 8B. 45, 0C
        mov     edi, dword [eax+18H]                    ; 3C34 _ 8B. 78, 18
        mov     eax, dword [ebp+0CH]                    ; 3C37 _ 8B. 45, 0C
        mov     esi, dword [eax+18H]                    ; 3C3A _ 8B. 70, 18
        mov     eax, dword [ebp+0CH]                    ; 3C3D _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 3C40 _ 8B. 50, 10
        mov     eax, dword [ebp+1CH]                    ; 3C43 _ 8B. 45, 1C
        lea     ebx, [edx+eax]                          ; 3C46 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 3C49 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 3C4C _ 8B. 50, 0C
        mov     eax, dword [ebp+18H]                    ; 3C4F _ 8B. 45, 18
        lea     ecx, [edx+eax]                          ; 3C52 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 3C55 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 3C58 _ 8B. 50, 10
        mov     eax, dword [ebp+14H]                    ; 3C5B _ 8B. 45, 14
        add     edx, eax                                ; 3C5E _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 3C60 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 3C63 _ 8B. 40, 0C
        mov     dword [ebp-1CH], eax                    ; 3C66 _ 89. 45, E4
        mov     eax, dword [ebp+10H]                    ; 3C69 _ 8B. 45, 10
        add     eax, dword [ebp-1CH]                    ; 3C6C _ 03. 45, E4
        mov     dword [esp+18H], edi                    ; 3C6F _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 3C73 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 3C77 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 3C7B _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 3C7F _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 3C83 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3C87 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3C8A _ 89. 04 24
        call    _sheet_refreshsub                       ; 3C8D _ E8, 00000166
?_196:  mov     eax, 0                                  ; 3C92 _ B8, 00000000
        add     esp, 60                                 ; 3C97 _ 83. C4, 3C
        pop     ebx                                     ; 3C9A _ 5B
        pop     esi                                     ; 3C9B _ 5E
        pop     edi                                     ; 3C9C _ 5F
        pop     ebp                                     ; 3C9D _ 5D
        ret                                             ; 3C9E _ C3
; _sheet_refresh End of function

_sheet_slide:; Function begin
        push    ebp                                     ; 3C9F _ 55
        mov     ebp, esp                                ; 3CA0 _ 89. E5
        push    esi                                     ; 3CA2 _ 56
        push    ebx                                     ; 3CA3 _ 53
        sub     esp, 48                                 ; 3CA4 _ 83. EC, 30
        mov     eax, dword [ebp+0CH]                    ; 3CA7 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 3CAA _ 8B. 40, 0C
        mov     dword [ebp-0CH], eax                    ; 3CAD _ 89. 45, F4
        mov     eax, dword [ebp+0CH]                    ; 3CB0 _ 8B. 45, 0C
        mov     eax, dword [eax+10H]                    ; 3CB3 _ 8B. 40, 10
        mov     dword [ebp-10H], eax                    ; 3CB6 _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 3CB9 _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 3CBC _ 8B. 55, 10
        mov     dword [eax+0CH], edx                    ; 3CBF _ 89. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 3CC2 _ 8B. 45, 0C
        mov     edx, dword [ebp+14H]                    ; 3CC5 _ 8B. 55, 14
        mov     dword [eax+10H], edx                    ; 3CC8 _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 3CCB _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 3CCE _ 8B. 40, 18
        test    eax, eax                                ; 3CD1 _ 85. C0
        js      ?_197                                   ; 3CD3 _ 0F 88, 00000117
        mov     eax, dword [ebp+0CH]                    ; 3CD9 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 3CDC _ 8B. 50, 08
        mov     eax, dword [ebp-10H]                    ; 3CDF _ 8B. 45, F0
        add     edx, eax                                ; 3CE2 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 3CE4 _ 8B. 45, 0C
        mov     ecx, dword [eax+4H]                     ; 3CE7 _ 8B. 48, 04
        mov     eax, dword [ebp-0CH]                    ; 3CEA _ 8B. 45, F4
        add     eax, ecx                                ; 3CED _ 01. C8
        mov     dword [esp+14H], 0                      ; 3CEF _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], edx                    ; 3CF7 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 3CFB _ 89. 44 24, 0C
        mov     eax, dword [ebp-10H]                    ; 3CFF _ 8B. 45, F0
        mov     dword [esp+8H], eax                     ; 3D02 _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 3D06 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 3D09 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3D0D _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3D10 _ 89. 04 24
        call    _sheet_refreshmap                       ; 3D13 _ E8, 00000262
        mov     eax, dword [ebp+0CH]                    ; 3D18 _ 8B. 45, 0C
        mov     ecx, dword [eax+18H]                    ; 3D1B _ 8B. 48, 18
        mov     eax, dword [ebp+0CH]                    ; 3D1E _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 3D21 _ 8B. 50, 08
        mov     eax, dword [ebp+14H]                    ; 3D24 _ 8B. 45, 14
        add     edx, eax                                ; 3D27 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 3D29 _ 8B. 45, 0C
        mov     ebx, dword [eax+4H]                     ; 3D2C _ 8B. 58, 04
        mov     eax, dword [ebp+10H]                    ; 3D2F _ 8B. 45, 10
        add     eax, ebx                                ; 3D32 _ 01. D8
        mov     dword [esp+14H], ecx                    ; 3D34 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 3D38 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 3D3C _ 89. 44 24, 0C
        mov     eax, dword [ebp+14H]                    ; 3D40 _ 8B. 45, 14
        mov     dword [esp+8H], eax                     ; 3D43 _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 3D47 _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 3D4A _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3D4E _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3D51 _ 89. 04 24
        call    _sheet_refreshmap                       ; 3D54 _ E8, 00000221
        mov     eax, dword [ebp+0CH]                    ; 3D59 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 3D5C _ 8B. 40, 18
        lea     ecx, [eax-1H]                           ; 3D5F _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 3D62 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 3D65 _ 8B. 50, 08
        mov     eax, dword [ebp-10H]                    ; 3D68 _ 8B. 45, F0
        add     edx, eax                                ; 3D6B _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 3D6D _ 8B. 45, 0C
        mov     ebx, dword [eax+4H]                     ; 3D70 _ 8B. 58, 04
        mov     eax, dword [ebp-0CH]                    ; 3D73 _ 8B. 45, F4
        add     eax, ebx                                ; 3D76 _ 01. D8
        mov     dword [esp+18H], ecx                    ; 3D78 _ 89. 4C 24, 18
        mov     dword [esp+14H], 0                      ; 3D7C _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], edx                    ; 3D84 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 3D88 _ 89. 44 24, 0C
        mov     eax, dword [ebp-10H]                    ; 3D8C _ 8B. 45, F0
        mov     dword [esp+8H], eax                     ; 3D8F _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 3D93 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 3D96 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3D9A _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3D9D _ 89. 04 24
        call    _sheet_refreshsub                       ; 3DA0 _ E8, 00000053
        mov     eax, dword [ebp+0CH]                    ; 3DA5 _ 8B. 45, 0C
        mov     ebx, dword [eax+18H]                    ; 3DA8 _ 8B. 58, 18
        mov     eax, dword [ebp+0CH]                    ; 3DAB _ 8B. 45, 0C
        mov     ecx, dword [eax+18H]                    ; 3DAE _ 8B. 48, 18
        mov     eax, dword [ebp+0CH]                    ; 3DB1 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 3DB4 _ 8B. 50, 08
        mov     eax, dword [ebp+14H]                    ; 3DB7 _ 8B. 45, 14
        add     edx, eax                                ; 3DBA _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 3DBC _ 8B. 45, 0C
        mov     esi, dword [eax+4H]                     ; 3DBF _ 8B. 70, 04
        mov     eax, dword [ebp+10H]                    ; 3DC2 _ 8B. 45, 10
        add     eax, esi                                ; 3DC5 _ 01. F0
        mov     dword [esp+18H], ebx                    ; 3DC7 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 3DCB _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 3DCF _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 3DD3 _ 89. 44 24, 0C
        mov     eax, dword [ebp+14H]                    ; 3DD7 _ 8B. 45, 14
        mov     dword [esp+8H], eax                     ; 3DDA _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 3DDE _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 3DE1 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3DE5 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3DE8 _ 89. 04 24
        call    _sheet_refreshsub                       ; 3DEB _ E8, 00000008
?_197:  nop                                             ; 3DF0 _ 90
        add     esp, 48                                 ; 3DF1 _ 83. C4, 30
        pop     ebx                                     ; 3DF4 _ 5B
        pop     esi                                     ; 3DF5 _ 5E
        pop     ebp                                     ; 3DF6 _ 5D
        ret                                             ; 3DF7 _ C3
; _sheet_slide End of function

_sheet_refreshsub:; Function begin
        push    ebp                                     ; 3DF8 _ 55
        mov     ebp, esp                                ; 3DF9 _ 89. E5
        sub     esp, 48                                 ; 3DFB _ 83. EC, 30
        mov     eax, dword [ebp+8H]                     ; 3DFE _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3E01 _ 8B. 00
        mov     dword [ebp-10H], eax                    ; 3E03 _ 89. 45, F0
        mov     eax, dword [ebp+8H]                     ; 3E06 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 3E09 _ 8B. 40, 04
        mov     dword [ebp-14H], eax                    ; 3E0C _ 89. 45, EC
        cmp     dword [ebp+0CH], 0                      ; 3E0F _ 83. 7D, 0C, 00
        jns     ?_198                                   ; 3E13 _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 3E15 _ C7. 45, 0C, 00000000
?_198:  cmp     dword [ebp+10H], 8                      ; 3E1C _ 83. 7D, 10, 08
        jg      ?_199                                   ; 3E20 _ 7F, 07
        mov     dword [ebp+10H], 0                      ; 3E22 _ C7. 45, 10, 00000000
?_199:  mov     eax, dword [ebp+8H]                     ; 3E29 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3E2C _ 8B. 40, 08
        cmp     dword [ebp+14H], eax                    ; 3E2F _ 39. 45, 14
        jle     ?_200                                   ; 3E32 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 3E34 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3E37 _ 8B. 40, 08
        mov     dword [ebp+14H], eax                    ; 3E3A _ 89. 45, 14
?_200:  mov     eax, dword [ebp+8H]                     ; 3E3D _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3E40 _ 8B. 40, 0C
        cmp     dword [ebp+18H], eax                    ; 3E43 _ 39. 45, 18
        jle     ?_201                                   ; 3E46 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 3E48 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3E4B _ 8B. 40, 0C
        mov     dword [ebp+18H], eax                    ; 3E4E _ 89. 45, 18
?_201:  mov     eax, dword [ebp+1CH]                    ; 3E51 _ 8B. 45, 1C
        mov     dword [ebp-4H], eax                     ; 3E54 _ 89. 45, FC
        jmp     ?_208                                   ; 3E57 _ E9, 0000010F

?_202:  mov     eax, dword [ebp+8H]                     ; 3E5C _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 3E5F _ 8B. 55, FC
        add     edx, 4                                  ; 3E62 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 3E65 _ 8B. 44 90, 04
        mov     dword [ebp-18H], eax                    ; 3E69 _ 89. 45, E8
        mov     eax, dword [ebp-18H]                    ; 3E6C _ 8B. 45, E8
        mov     eax, dword [eax]                        ; 3E6F _ 8B. 00
        mov     dword [ebp-1CH], eax                    ; 3E71 _ 89. 45, E4
        mov     eax, dword [ebp+8H]                     ; 3E74 _ 8B. 45, 08
        add     eax, 1044                               ; 3E77 _ 05, 00000414
        mov     edx, dword [ebp-18H]                    ; 3E7C _ 8B. 55, E8
        sub     edx, eax                                ; 3E7F _ 29. C2
        mov     eax, edx                                ; 3E81 _ 89. D0
        sar     eax, 5                                  ; 3E83 _ C1. F8, 05
        mov     byte [ebp-1DH], al                      ; 3E86 _ 88. 45, E3
        mov     dword [ebp-0CH], 0                      ; 3E89 _ C7. 45, F4, 00000000
        jmp     ?_207                                   ; 3E90 _ E9, 000000C3

?_203:  mov     eax, dword [ebp-18H]                    ; 3E95 _ 8B. 45, E8
        mov     edx, dword [eax+10H]                    ; 3E98 _ 8B. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 3E9B _ 8B. 45, F4
        add     eax, edx                                ; 3E9E _ 01. D0
        mov     dword [ebp-24H], eax                    ; 3EA0 _ 89. 45, DC
        mov     dword [ebp-8H], 0                       ; 3EA3 _ C7. 45, F8, 00000000
        jmp     ?_206                                   ; 3EAA _ E9, 00000096

?_204:  mov     eax, dword [ebp-18H]                    ; 3EAF _ 8B. 45, E8
        mov     edx, dword [eax+0CH]                    ; 3EB2 _ 8B. 50, 0C
        mov     eax, dword [ebp-8H]                     ; 3EB5 _ 8B. 45, F8
        add     eax, edx                                ; 3EB8 _ 01. D0
        mov     dword [ebp-28H], eax                    ; 3EBA _ 89. 45, D8
        mov     eax, dword [ebp+0CH]                    ; 3EBD _ 8B. 45, 0C
        cmp     eax, dword [ebp-28H]                    ; 3EC0 _ 3B. 45, D8
        jg      ?_205                                   ; 3EC3 _ 7F, 7C
        mov     eax, dword [ebp-28H]                    ; 3EC5 _ 8B. 45, D8
        cmp     eax, dword [ebp+14H]                    ; 3EC8 _ 3B. 45, 14
        jge     ?_205                                   ; 3ECB _ 7D, 74
        mov     eax, dword [ebp+10H]                    ; 3ECD _ 8B. 45, 10
        cmp     eax, dword [ebp-24H]                    ; 3ED0 _ 3B. 45, DC
        jg      ?_205                                   ; 3ED3 _ 7F, 6C
        mov     eax, dword [ebp-24H]                    ; 3ED5 _ 8B. 45, DC
        cmp     eax, dword [ebp+18H]                    ; 3ED8 _ 3B. 45, 18
        jge     ?_205                                   ; 3EDB _ 7D, 64
        mov     eax, dword [ebp-18H]                    ; 3EDD _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 3EE0 _ 8B. 40, 04
        imul    eax, dword [ebp-0CH]                    ; 3EE3 _ 0F AF. 45, F4
        mov     edx, dword [ebp-8H]                     ; 3EE7 _ 8B. 55, F8
        add     eax, edx                                ; 3EEA _ 01. D0
        mov     edx, eax                                ; 3EEC _ 89. C2
        mov     eax, dword [ebp-1CH]                    ; 3EEE _ 8B. 45, E4
        add     eax, edx                                ; 3EF1 _ 01. D0
        movzx   eax, byte [eax]                         ; 3EF3 _ 0F B6. 00
        mov     byte [ebp-29H], al                      ; 3EF6 _ 88. 45, D7
        mov     eax, dword [ebp+8H]                     ; 3EF9 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3EFC _ 8B. 40, 08
        imul    eax, dword [ebp-24H]                    ; 3EFF _ 0F AF. 45, DC
        mov     edx, dword [ebp-28H]                    ; 3F03 _ 8B. 55, D8
        add     eax, edx                                ; 3F06 _ 01. D0
        mov     edx, eax                                ; 3F08 _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 3F0A _ 8B. 45, EC
        add     eax, edx                                ; 3F0D _ 01. D0
        movzx   eax, byte [eax]                         ; 3F0F _ 0F B6. 00
        cmp     byte [ebp-1DH], al                      ; 3F12 _ 38. 45, E3
        jnz     ?_205                                   ; 3F15 _ 75, 2A
        movzx   eax, byte [ebp-29H]                     ; 3F17 _ 0F B6. 45, D7
        mov     edx, dword [ebp-18H]                    ; 3F1B _ 8B. 55, E8
        mov     edx, dword [edx+14H]                    ; 3F1E _ 8B. 52, 14
        cmp     eax, edx                                ; 3F21 _ 39. D0
        jz      ?_205                                   ; 3F23 _ 74, 1C
        mov     eax, dword [ebp+8H]                     ; 3F25 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3F28 _ 8B. 40, 08
        imul    eax, dword [ebp-24H]                    ; 3F2B _ 0F AF. 45, DC
        mov     edx, dword [ebp-28H]                    ; 3F2F _ 8B. 55, D8
        add     eax, edx                                ; 3F32 _ 01. D0
        mov     edx, eax                                ; 3F34 _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 3F36 _ 8B. 45, F0
        add     edx, eax                                ; 3F39 _ 01. C2
        movzx   eax, byte [ebp-29H]                     ; 3F3B _ 0F B6. 45, D7
        mov     byte [edx], al                          ; 3F3F _ 88. 02
?_205:  add     dword [ebp-8H], 1                       ; 3F41 _ 83. 45, F8, 01
?_206:  mov     eax, dword [ebp-18H]                    ; 3F45 _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 3F48 _ 8B. 40, 04
        cmp     dword [ebp-8H], eax                     ; 3F4B _ 39. 45, F8
        jl      ?_204                                   ; 3F4E _ 0F 8C, FFFFFF5B
        add     dword [ebp-0CH], 1                      ; 3F54 _ 83. 45, F4, 01
?_207:  mov     eax, dword [ebp-18H]                    ; 3F58 _ 8B. 45, E8
        mov     eax, dword [eax+8H]                     ; 3F5B _ 8B. 40, 08
        cmp     dword [ebp-0CH], eax                    ; 3F5E _ 39. 45, F4
        jl      ?_203                                   ; 3F61 _ 0F 8C, FFFFFF2E
        add     dword [ebp-4H], 1                       ; 3F67 _ 83. 45, FC, 01
?_208:  mov     eax, dword [ebp-4H]                     ; 3F6B _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 3F6E _ 3B. 45, 20
        jle     ?_202                                   ; 3F71 _ 0F 8E, FFFFFEE5
        nop                                             ; 3F77 _ 90
        leave                                           ; 3F78 _ C9
        ret                                             ; 3F79 _ C3
; _sheet_refreshsub End of function

_sheet_refreshmap:; Function begin
        push    ebp                                     ; 3F7A _ 55
        mov     ebp, esp                                ; 3F7B _ 89. E5
        sub     esp, 64                                 ; 3F7D _ 83. EC, 40
        mov     eax, dword [ebp+8H]                     ; 3F80 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 3F83 _ 8B. 40, 04
        mov     dword [ebp-20H], eax                    ; 3F86 _ 89. 45, E0
        cmp     dword [ebp+0CH], 0                      ; 3F89 _ 83. 7D, 0C, 00
        jns     ?_209                                   ; 3F8D _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 3F8F _ C7. 45, 0C, 00000000
?_209:  cmp     dword [ebp+10H], 0                      ; 3F96 _ 83. 7D, 10, 00
        jns     ?_210                                   ; 3F9A _ 79, 07
        mov     dword [ebp+10H], 0                      ; 3F9C _ C7. 45, 10, 00000000
?_210:  mov     eax, dword [ebp+8H]                     ; 3FA3 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3FA6 _ 8B. 40, 08
        cmp     dword [ebp+14H], eax                    ; 3FA9 _ 39. 45, 14
        jle     ?_211                                   ; 3FAC _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 3FAE _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3FB1 _ 8B. 40, 08
        mov     dword [ebp+14H], eax                    ; 3FB4 _ 89. 45, 14
?_211:  mov     eax, dword [ebp+8H]                     ; 3FB7 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3FBA _ 8B. 40, 0C
        cmp     dword [ebp+18H], eax                    ; 3FBD _ 39. 45, 18
        jle     ?_212                                   ; 3FC0 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 3FC2 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3FC5 _ 8B. 40, 0C
        mov     dword [ebp+18H], eax                    ; 3FC8 _ 89. 45, 18
?_212:  mov     eax, dword [ebp+1CH]                    ; 3FCB _ 8B. 45, 1C
        mov     dword [ebp-4H], eax                     ; 3FCE _ 89. 45, FC
        jmp     ?_223                                   ; 3FD1 _ E9, 00000139

?_213:  mov     eax, dword [ebp+8H]                     ; 3FD6 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 3FD9 _ 8B. 55, FC
        add     edx, 4                                  ; 3FDC _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 3FDF _ 8B. 44 90, 04
        mov     dword [ebp-24H], eax                    ; 3FE3 _ 89. 45, DC
        mov     eax, dword [ebp+8H]                     ; 3FE6 _ 8B. 45, 08
        add     eax, 1044                               ; 3FE9 _ 05, 00000414
        mov     edx, dword [ebp-24H]                    ; 3FEE _ 8B. 55, DC
        sub     edx, eax                                ; 3FF1 _ 29. C2
        mov     eax, edx                                ; 3FF3 _ 89. D0
        sar     eax, 5                                  ; 3FF5 _ C1. F8, 05
        mov     byte [ebp-25H], al                      ; 3FF8 _ 88. 45, DB
        mov     eax, dword [ebp-24H]                    ; 3FFB _ 8B. 45, DC
        mov     eax, dword [eax]                        ; 3FFE _ 8B. 00
        mov     dword [ebp-2CH], eax                    ; 4000 _ 89. 45, D4
        mov     eax, dword [ebp-24H]                    ; 4003 _ 8B. 45, DC
        mov     eax, dword [eax+0CH]                    ; 4006 _ 8B. 40, 0C
        mov     edx, dword [ebp+0CH]                    ; 4009 _ 8B. 55, 0C
        sub     edx, eax                                ; 400C _ 29. C2
        mov     eax, edx                                ; 400E _ 89. D0
        mov     dword [ebp-10H], eax                    ; 4010 _ 89. 45, F0
        mov     eax, dword [ebp-24H]                    ; 4013 _ 8B. 45, DC
        mov     eax, dword [eax+10H]                    ; 4016 _ 8B. 40, 10
        mov     edx, dword [ebp+10H]                    ; 4019 _ 8B. 55, 10
        sub     edx, eax                                ; 401C _ 29. C2
        mov     eax, edx                                ; 401E _ 89. D0
        mov     dword [ebp-14H], eax                    ; 4020 _ 89. 45, EC
        mov     eax, dword [ebp-24H]                    ; 4023 _ 8B. 45, DC
        mov     eax, dword [eax+0CH]                    ; 4026 _ 8B. 40, 0C
        mov     edx, dword [ebp+14H]                    ; 4029 _ 8B. 55, 14
        sub     edx, eax                                ; 402C _ 29. C2
        mov     eax, edx                                ; 402E _ 89. D0
        mov     dword [ebp-18H], eax                    ; 4030 _ 89. 45, E8
        mov     eax, dword [ebp-24H]                    ; 4033 _ 8B. 45, DC
        mov     eax, dword [eax+10H]                    ; 4036 _ 8B. 40, 10
        mov     edx, dword [ebp+18H]                    ; 4039 _ 8B. 55, 18
        sub     edx, eax                                ; 403C _ 29. C2
        mov     eax, edx                                ; 403E _ 89. D0
        mov     dword [ebp-1CH], eax                    ; 4040 _ 89. 45, E4
        cmp     dword [ebp-10H], 0                      ; 4043 _ 83. 7D, F0, 00
        jns     ?_214                                   ; 4047 _ 79, 07
        mov     dword [ebp-10H], 0                      ; 4049 _ C7. 45, F0, 00000000
?_214:  cmp     dword [ebp-14H], 0                      ; 4050 _ 83. 7D, EC, 00
        jns     ?_215                                   ; 4054 _ 79, 07
        mov     dword [ebp-14H], 0                      ; 4056 _ C7. 45, EC, 00000000
?_215:  mov     eax, dword [ebp-24H]                    ; 405D _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 4060 _ 8B. 40, 04
        cmp     dword [ebp-18H], eax                    ; 4063 _ 39. 45, E8
        jle     ?_216                                   ; 4066 _ 7E, 09
        mov     eax, dword [ebp-24H]                    ; 4068 _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 406B _ 8B. 40, 04
        mov     dword [ebp-18H], eax                    ; 406E _ 89. 45, E8
?_216:  mov     eax, dword [ebp-24H]                    ; 4071 _ 8B. 45, DC
        mov     eax, dword [eax+8H]                     ; 4074 _ 8B. 40, 08
        cmp     dword [ebp-1CH], eax                    ; 4077 _ 39. 45, E4
        jle     ?_217                                   ; 407A _ 7E, 09
        mov     eax, dword [ebp-24H]                    ; 407C _ 8B. 45, DC
        mov     eax, dword [eax+8H]                     ; 407F _ 8B. 40, 08
        mov     dword [ebp-1CH], eax                    ; 4082 _ 89. 45, E4
?_217:  mov     eax, dword [ebp-14H]                    ; 4085 _ 8B. 45, EC
        mov     dword [ebp-0CH], eax                    ; 4088 _ 89. 45, F4
        jmp     ?_222                                   ; 408B _ EB, 76

?_218:  mov     eax, dword [ebp-24H]                    ; 408D _ 8B. 45, DC
        mov     edx, dword [eax+10H]                    ; 4090 _ 8B. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 4093 _ 8B. 45, F4
        add     eax, edx                                ; 4096 _ 01. D0
        mov     dword [ebp-30H], eax                    ; 4098 _ 89. 45, D0
        mov     eax, dword [ebp-10H]                    ; 409B _ 8B. 45, F0
        mov     dword [ebp-8H], eax                     ; 409E _ 89. 45, F8
        jmp     ?_221                                   ; 40A1 _ EB, 54

?_219:  mov     eax, dword [ebp-24H]                    ; 40A3 _ 8B. 45, DC
        mov     edx, dword [eax+0CH]                    ; 40A6 _ 8B. 50, 0C
        mov     eax, dword [ebp-8H]                     ; 40A9 _ 8B. 45, F8
        add     eax, edx                                ; 40AC _ 01. D0
        mov     dword [ebp-34H], eax                    ; 40AE _ 89. 45, CC
        mov     eax, dword [ebp-24H]                    ; 40B1 _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 40B4 _ 8B. 40, 04
        imul    eax, dword [ebp-0CH]                    ; 40B7 _ 0F AF. 45, F4
        mov     edx, dword [ebp-8H]                     ; 40BB _ 8B. 55, F8
        add     eax, edx                                ; 40BE _ 01. D0
        mov     edx, eax                                ; 40C0 _ 89. C2
        mov     eax, dword [ebp-2CH]                    ; 40C2 _ 8B. 45, D4
        add     eax, edx                                ; 40C5 _ 01. D0
        movzx   eax, byte [eax]                         ; 40C7 _ 0F B6. 00
        movzx   eax, al                                 ; 40CA _ 0F B6. C0
        mov     edx, dword [ebp-24H]                    ; 40CD _ 8B. 55, DC
        mov     edx, dword [edx+14H]                    ; 40D0 _ 8B. 52, 14
        cmp     eax, edx                                ; 40D3 _ 39. D0
        jz      ?_220                                   ; 40D5 _ 74, 1C
        mov     eax, dword [ebp+8H]                     ; 40D7 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 40DA _ 8B. 40, 08
        imul    eax, dword [ebp-30H]                    ; 40DD _ 0F AF. 45, D0
        mov     edx, dword [ebp-34H]                    ; 40E1 _ 8B. 55, CC
        add     eax, edx                                ; 40E4 _ 01. D0
        mov     edx, eax                                ; 40E6 _ 89. C2
        mov     eax, dword [ebp-20H]                    ; 40E8 _ 8B. 45, E0
        add     edx, eax                                ; 40EB _ 01. C2
        movzx   eax, byte [ebp-25H]                     ; 40ED _ 0F B6. 45, DB
        mov     byte [edx], al                          ; 40F1 _ 88. 02
?_220:  add     dword [ebp-8H], 1                       ; 40F3 _ 83. 45, F8, 01
?_221:  mov     eax, dword [ebp-8H]                     ; 40F7 _ 8B. 45, F8
        cmp     eax, dword [ebp-18H]                    ; 40FA _ 3B. 45, E8
        jl      ?_219                                   ; 40FD _ 7C, A4
        add     dword [ebp-0CH], 1                      ; 40FF _ 83. 45, F4, 01
?_222:  mov     eax, dword [ebp-0CH]                    ; 4103 _ 8B. 45, F4
        cmp     eax, dword [ebp-1CH]                    ; 4106 _ 3B. 45, E4
        jl      ?_218                                   ; 4109 _ 7C, 82
        add     dword [ebp-4H], 1                       ; 410B _ 83. 45, FC, 01
?_223:  mov     eax, dword [ebp+8H]                     ; 410F _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 4112 _ 8B. 40, 10
        cmp     dword [ebp-4H], eax                     ; 4115 _ 39. 45, FC
        jle     ?_213                                   ; 4118 _ 0F 8E, FFFFFEB8
        nop                                             ; 411E _ 90
        leave                                           ; 411F _ C9
        ret                                             ; 4120 _ C3
; _sheet_refreshmap End of function

        nop                                             ; 4121 _ 90
        nop                                             ; 4122 _ 90
        nop                                             ; 4123 _ 90


_memman_init:
        push    ebp                                     ; 4124 _ 55
        mov     ebp, esp                                ; 4125 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 4127 _ 8B. 45, 08
        mov     dword [eax], 0                          ; 412A _ C7. 00, 00000000
        mov     eax, dword [ebp+8H]                     ; 4130 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 4133 _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 413A _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 413D _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 4144 _ 8B. 45, 08
        mov     dword [eax+0CH], 0                      ; 4147 _ C7. 40, 0C, 00000000
        nop                                             ; 414E _ 90
        pop     ebp                                     ; 414F _ 5D
        ret                                             ; 4150 _ C3

_memman_total:; Function begin
        push    ebp                                     ; 4151 _ 55
        mov     ebp, esp                                ; 4152 _ 89. E5
        sub     esp, 16                                 ; 4154 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 4157 _ C7. 45, F8, 00000000
        mov     dword [ebp-4H], 0                       ; 415E _ C7. 45, FC, 00000000
        jmp     ?_225                                   ; 4165 _ EB, 14

?_224:  mov     eax, dword [ebp+8H]                     ; 4167 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 416A _ 8B. 55, FC
        add     edx, 2                                  ; 416D _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 4170 _ 8B. 44 D0, 04
        add     dword [ebp-8H], eax                     ; 4174 _ 01. 45, F8
        add     dword [ebp-4H], 1                       ; 4177 _ 83. 45, FC, 01
?_225:  mov     eax, dword [ebp+8H]                     ; 417B _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 417E _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 4180 _ 39. 45, FC
        jc      ?_224                                   ; 4183 _ 72, E2
        mov     eax, dword [ebp-8H]                     ; 4185 _ 8B. 45, F8
        leave                                           ; 4188 _ C9
        ret                                             ; 4189 _ C3
; _memman_total End of function

_memman_alloc:; Function begin
        push    ebp                                     ; 418A _ 55
        mov     ebp, esp                                ; 418B _ 89. E5
        sub     esp, 16                                 ; 418D _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 4190 _ C7. 45, FC, 00000000
        jmp     ?_229                                   ; 4197 _ E9, 00000083

?_226:  mov     eax, dword [ebp+8H]                     ; 419C _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 419F _ 8B. 55, FC
        add     edx, 2                                  ; 41A2 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 41A5 _ 8B. 44 D0, 04
        cmp     dword [ebp+0CH], eax                    ; 41A9 _ 39. 45, 0C
        ja      ?_228                                   ; 41AC _ 77, 6D
        mov     eax, dword [ebp+8H]                     ; 41AE _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 41B1 _ 8B. 55, FC
        add     edx, 2                                  ; 41B4 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 41B7 _ 8B. 04 D0
        mov     dword [ebp-8H], eax                     ; 41BA _ 89. 45, F8
        mov     eax, dword [ebp+8H]                     ; 41BD _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 41C0 _ 8B. 55, FC
        add     edx, 2                                  ; 41C3 _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 41C6 _ 8B. 14 D0
        mov     eax, dword [ebp+0CH]                    ; 41C9 _ 8B. 45, 0C
        lea     ecx, [edx+eax]                          ; 41CC _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 41CF _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 41D2 _ 8B. 55, FC
        add     edx, 2                                  ; 41D5 _ 83. C2, 02
        mov     dword [eax+edx*8], ecx                  ; 41D8 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 41DB _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 41DE _ 8B. 55, FC
        add     edx, 2                                  ; 41E1 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 41E4 _ 8B. 44 D0, 04
        sub     eax, dword [ebp+0CH]                    ; 41E8 _ 2B. 45, 0C
        mov     edx, dword [ebp+8H]                     ; 41EB _ 8B. 55, 08
        mov     ecx, dword [ebp-4H]                     ; 41EE _ 8B. 4D, FC
        add     ecx, 2                                  ; 41F1 _ 83. C1, 02
        mov     dword [edx+ecx*8+4H], eax               ; 41F4 _ 89. 44 CA, 04
        mov     eax, dword [ebp+8H]                     ; 41F8 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 41FB _ 8B. 55, FC
        add     edx, 2                                  ; 41FE _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 4201 _ 8B. 44 D0, 04
        test    eax, eax                                ; 4205 _ 85. C0
        jnz     ?_227                                   ; 4207 _ 75, 0D
        mov     eax, dword [ebp+8H]                     ; 4209 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 420C _ 8B. 00
        lea     edx, [eax-1H]                           ; 420E _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 4211 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 4214 _ 89. 10
?_227:  mov     eax, dword [ebp-8H]                     ; 4216 _ 8B. 45, F8
        jmp     ?_230                                   ; 4219 _ EB, 17

?_228:  add     dword [ebp-4H], 1                       ; 421B _ 83. 45, FC, 01
?_229:  mov     eax, dword [ebp+8H]                     ; 421F _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 4222 _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 4224 _ 39. 45, FC
        jc      ?_226                                   ; 4227 _ 0F 82, FFFFFF6F
        mov     eax, 0                                  ; 422D _ B8, 00000000
?_230:  leave                                           ; 4232 _ C9
        ret                                             ; 4233 _ C3
; _memman_alloc End of function

_memman_free:; Function begin
        push    ebp                                     ; 4234 _ 55
        mov     ebp, esp                                ; 4235 _ 89. E5
        push    ebx                                     ; 4237 _ 53
        sub     esp, 16                                 ; 4238 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 423B _ C7. 45, F8, 00000000
        jmp     ?_232                                   ; 4242 _ EB, 15

?_231:  mov     eax, dword [ebp+8H]                     ; 4244 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 4247 _ 8B. 55, F8
        add     edx, 2                                  ; 424A _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 424D _ 8B. 04 D0
        cmp     dword [ebp+0CH], eax                    ; 4250 _ 39. 45, 0C
        jc      ?_233                                   ; 4253 _ 72, 10
        add     dword [ebp-8H], 1                       ; 4255 _ 83. 45, F8, 01
?_232:  mov     eax, dword [ebp+8H]                     ; 4259 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 425C _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 425E _ 39. 45, F8
        jl      ?_231                                   ; 4261 _ 7C, E1
        jmp     ?_234                                   ; 4263 _ EB, 01

?_233:  nop                                             ; 4265 _ 90
?_234:  cmp     dword [ebp-8H], 0                       ; 4266 _ 83. 7D, F8, 00
        jle     ?_236                                   ; 426A _ 0F 8E, 000000B8
        mov     eax, dword [ebp-8H]                     ; 4270 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 4273 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 4276 _ 8B. 45, 08
        add     edx, 2                                  ; 4279 _ 83. C2, 02
        mov     ecx, dword [eax+edx*8]                  ; 427C _ 8B. 0C D0
        mov     eax, dword [ebp-8H]                     ; 427F _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 4282 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 4285 _ 8B. 45, 08
        add     edx, 2                                  ; 4288 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 428B _ 8B. 44 D0, 04
        add     eax, ecx                                ; 428F _ 01. C8
        cmp     dword [ebp+0CH], eax                    ; 4291 _ 39. 45, 0C
        jne     ?_236                                   ; 4294 _ 0F 85, 0000008E
        mov     eax, dword [ebp-8H]                     ; 429A _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 429D _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 42A0 _ 8B. 45, 08
        add     edx, 2                                  ; 42A3 _ 83. C2, 02
        mov     ecx, dword [eax+edx*8+4H]               ; 42A6 _ 8B. 4C D0, 04
        mov     eax, dword [ebp-8H]                     ; 42AA _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 42AD _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 42B0 _ 8B. 45, 10
        add     ecx, eax                                ; 42B3 _ 01. C1
        mov     eax, dword [ebp+8H]                     ; 42B5 _ 8B. 45, 08
        add     edx, 2                                  ; 42B8 _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 42BB _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 42BF _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 42C2 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 42C4 _ 39. 45, F8
        jge     ?_235                                   ; 42C7 _ 7D, 55
        mov     edx, dword [ebp+0CH]                    ; 42C9 _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 42CC _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 42CF _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 42D2 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 42D5 _ 8B. 55, F8
        add     edx, 2                                  ; 42D8 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 42DB _ 8B. 04 D0
        cmp     ecx, eax                                ; 42DE _ 39. C1
        jnz     ?_235                                   ; 42E0 _ 75, 3C
        mov     eax, dword [ebp-8H]                     ; 42E2 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 42E5 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 42E8 _ 8B. 45, 08
        add     edx, 2                                  ; 42EB _ 83. C2, 02
        mov     ecx, dword [eax+edx*8+4H]               ; 42EE _ 8B. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 42F2 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 42F5 _ 8B. 55, F8
        add     edx, 2                                  ; 42F8 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 42FB _ 8B. 44 D0, 04
        mov     edx, dword [ebp-8H]                     ; 42FF _ 8B. 55, F8
        sub     edx, 1                                  ; 4302 _ 83. EA, 01
        add     ecx, eax                                ; 4305 _ 01. C1
        mov     eax, dword [ebp+8H]                     ; 4307 _ 8B. 45, 08
        add     edx, 2                                  ; 430A _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 430D _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 4311 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 4314 _ 8B. 00
        lea     edx, [eax-1H]                           ; 4316 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 4319 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 431C _ 89. 10
?_235:  mov     eax, 0                                  ; 431E _ B8, 00000000
        jmp     ?_242                                   ; 4323 _ E9, 0000011C

?_236:  mov     eax, dword [ebp+8H]                     ; 4328 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 432B _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 432D _ 39. 45, F8
        jge     ?_237                                   ; 4330 _ 7D, 52
        mov     edx, dword [ebp+0CH]                    ; 4332 _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 4335 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 4338 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 433B _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 433E _ 8B. 55, F8
        add     edx, 2                                  ; 4341 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 4344 _ 8B. 04 D0
        cmp     ecx, eax                                ; 4347 _ 39. C1
        jnz     ?_237                                   ; 4349 _ 75, 39
        mov     eax, dword [ebp+8H]                     ; 434B _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 434E _ 8B. 55, F8
        add     edx, 2                                  ; 4351 _ 83. C2, 02
        mov     ecx, dword [ebp+0CH]                    ; 4354 _ 8B. 4D, 0C
        mov     dword [eax+edx*8], ecx                  ; 4357 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 435A _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 435D _ 8B. 55, F8
        add     edx, 2                                  ; 4360 _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 4363 _ 8B. 54 D0, 04
        mov     eax, dword [ebp+10H]                    ; 4367 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 436A _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 436D _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 4370 _ 8B. 55, F8
        add     edx, 2                                  ; 4373 _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 4376 _ 89. 4C D0, 04
        mov     eax, 0                                  ; 437A _ B8, 00000000
        jmp     ?_242                                   ; 437F _ E9, 000000C0

?_237:  mov     eax, dword [ebp+8H]                     ; 4384 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 4387 _ 8B. 00
        cmp     eax, 4095                               ; 4389 _ 3D, 00000FFF
        jg      ?_241                                   ; 438E _ 0F 8F, 00000087
        mov     eax, dword [ebp+8H]                     ; 4394 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 4397 _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 4399 _ 89. 45, F4
        jmp     ?_239                                   ; 439C _ EB, 28

?_238:  mov     eax, dword [ebp-0CH]                    ; 439E _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 43A1 _ 8D. 50, FF
        mov     ecx, dword [ebp+8H]                     ; 43A4 _ 8B. 4D, 08
        mov     eax, dword [ebp-0CH]                    ; 43A7 _ 8B. 45, F4
        lea     ebx, [eax+2H]                           ; 43AA _ 8D. 58, 02
        mov     eax, dword [ebp+8H]                     ; 43AD _ 8B. 45, 08
        add     edx, 2                                  ; 43B0 _ 83. C2, 02
        lea     edx, [eax+edx*8]                        ; 43B3 _ 8D. 14 D0
        mov     eax, dword [edx]                        ; 43B6 _ 8B. 02
        mov     edx, dword [edx+4H]                     ; 43B8 _ 8B. 52, 04
        mov     dword [ecx+ebx*8], eax                  ; 43BB _ 89. 04 D9
        mov     dword [ecx+ebx*8+4H], edx               ; 43BE _ 89. 54 D9, 04
        sub     dword [ebp-0CH], 1                      ; 43C2 _ 83. 6D, F4, 01
?_239:  mov     eax, dword [ebp-0CH]                    ; 43C6 _ 8B. 45, F4
        cmp     eax, dword [ebp-8H]                     ; 43C9 _ 3B. 45, F8
        jg      ?_238                                   ; 43CC _ 7F, D0
        mov     eax, dword [ebp+8H]                     ; 43CE _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 43D1 _ 8B. 00
        lea     edx, [eax+1H]                           ; 43D3 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 43D6 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 43D9 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 43DB _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 43DE _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 43E1 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 43E4 _ 8B. 00
        cmp     edx, eax                                ; 43E6 _ 39. C2
        jge     ?_240                                   ; 43E8 _ 7D, 0B
        mov     eax, dword [ebp+8H]                     ; 43EA _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 43ED _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 43EF _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 43F2 _ 89. 50, 04
?_240:  mov     eax, dword [ebp+8H]                     ; 43F5 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 43F8 _ 8B. 55, F8
        add     edx, 2                                  ; 43FB _ 83. C2, 02
        mov     ecx, dword [ebp+0CH]                    ; 43FE _ 8B. 4D, 0C
        mov     dword [eax+edx*8], ecx                  ; 4401 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 4404 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 4407 _ 8B. 55, F8
        add     edx, 2                                  ; 440A _ 83. C2, 02
        mov     ecx, dword [ebp+10H]                    ; 440D _ 8B. 4D, 10
        mov     dword [eax+edx*8+4H], ecx               ; 4410 _ 89. 4C D0, 04
        mov     eax, 0                                  ; 4414 _ B8, 00000000
        jmp     ?_242                                   ; 4419 _ EB, 29

?_241:  mov     eax, dword [ebp+8H]                     ; 441B _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 441E _ 8B. 40, 0C
        lea     edx, [eax+1H]                           ; 4421 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 4424 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 4427 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 442A _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 442D _ 8B. 40, 08
        mov     edx, eax                                ; 4430 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 4432 _ 8B. 45, 10
        add     eax, edx                                ; 4435 _ 01. D0
        mov     edx, eax                                ; 4437 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 4439 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 443C _ 89. 50, 08
        mov     eax, 4294967295                         ; 443F _ B8, FFFFFFFF
?_242:  add     esp, 16                                 ; 4444 _ 83. C4, 10
        pop     ebx                                     ; 4447 _ 5B
        pop     ebp                                     ; 4448 _ 5D
        ret                                             ; 4449 _ C3
; _memman_free End of function

_memman_alloc_4k:; Function begin
        push    ebp                                     ; 444A _ 55
        mov     ebp, esp                                ; 444B _ 89. E5
        sub     esp, 24                                 ; 444D _ 83. EC, 18
        mov     eax, dword [ebp+0CH]                    ; 4450 _ 8B. 45, 0C
        add     eax, 4095                               ; 4453 _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 4458 _ 25, FFFFF000
        mov     dword [ebp+0CH], eax                    ; 445D _ 89. 45, 0C
        mov     eax, dword [ebp+0CH]                    ; 4460 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 4463 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4467 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 446A _ 89. 04 24
        call    _memman_alloc                           ; 446D _ E8, FFFFFD18
        mov     dword [ebp-4H], eax                     ; 4472 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 4475 _ 8B. 45, FC
        leave                                           ; 4478 _ C9
        ret                                             ; 4479 _ C3
; _memman_alloc_4k End of function

_memman_free_4k:; Function begin
        push    ebp                                     ; 447A _ 55
        mov     ebp, esp                                ; 447B _ 89. E5
        sub     esp, 28                                 ; 447D _ 83. EC, 1C
        mov     eax, dword [ebp+10H]                    ; 4480 _ 8B. 45, 10
        add     eax, 4095                               ; 4483 _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 4488 _ 25, FFFFF000
        mov     dword [ebp+10H], eax                    ; 448D _ 89. 45, 10
        mov     eax, dword [ebp+10H]                    ; 4490 _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 4493 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 4497 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 449A _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 449E _ 8B. 45, 08
        mov     dword [esp], eax                        ; 44A1 _ 89. 04 24
        call    _memman_free                            ; 44A4 _ E8, FFFFFD8B
        mov     dword [ebp-4H], eax                     ; 44A9 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 44AC _ 8B. 45, FC
        leave                                           ; 44AF _ C9
        ret                                             ; 44B0 _ C3
; _memman_free_4k End of function

        nop                                             ; 44B1 _ 90
        nop                                             ; 44B2 _ 90
        nop                                             ; 44B3 _ 90


_fifo8_init:
        push    ebp                                     ; 44B4 _ 55
        mov     ebp, esp                                ; 44B5 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 44B7 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 44BA _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 44BD _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 44C0 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 44C3 _ 8B. 55, 10
        mov     dword [eax], edx                        ; 44C6 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 44C8 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 44CB _ 8B. 55, 0C
        mov     dword [eax+10H], edx                    ; 44CE _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 44D1 _ 8B. 45, 08
        mov     dword [eax+14H], 0                      ; 44D4 _ C7. 40, 14, 00000000
        mov     eax, dword [ebp+8H]                     ; 44DB _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 44DE _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 44E5 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 44E8 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 44EF _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 44F2 _ 8B. 55, 14
        mov     dword [eax+18H], edx                    ; 44F5 _ 89. 50, 18
        nop                                             ; 44F8 _ 90
        pop     ebp                                     ; 44F9 _ 5D
        ret                                             ; 44FA _ C3

_fifo8_put:; Function begin
        push    ebp                                     ; 44FB _ 55
        mov     ebp, esp                                ; 44FC _ 89. E5
        sub     esp, 40                                 ; 44FE _ 83. EC, 28
        mov     eax, dword [ebp+0CH]                    ; 4501 _ 8B. 45, 0C
        mov     byte [ebp-0CH], al                      ; 4504 _ 88. 45, F4
        cmp     dword [ebp+8H], 0                       ; 4507 _ 83. 7D, 08, 00
        jnz     ?_243                                   ; 450B _ 75, 0A
        mov     eax, 4294967295                         ; 450D _ B8, FFFFFFFF
        jmp     ?_247                                   ; 4512 _ E9, 000000AB

?_243:  mov     eax, dword [ebp+8H]                     ; 4517 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 451A _ 8B. 40, 10
        test    eax, eax                                ; 451D _ 85. C0
        jnz     ?_244                                   ; 451F _ 75, 1B
        mov     eax, dword [ebp+8H]                     ; 4521 _ 8B. 45, 08
        mov     eax, dword [eax+14H]                    ; 4524 _ 8B. 40, 14
        or      eax, 01H                                ; 4527 _ 83. C8, 01
        mov     edx, eax                                ; 452A _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 452C _ 8B. 45, 08
        mov     dword [eax+14H], edx                    ; 452F _ 89. 50, 14
        mov     eax, 4294967295                         ; 4532 _ B8, FFFFFFFF
        jmp     ?_247                                   ; 4537 _ E9, 00000086

?_244:  mov     eax, dword [ebp+8H]                     ; 453C _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 453F _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 4541 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 4544 _ 8B. 40, 04
        add     edx, eax                                ; 4547 _ 01. C2
        movzx   eax, byte [ebp-0CH]                     ; 4549 _ 0F B6. 45, F4
        mov     byte [edx], al                          ; 454D _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 454F _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 4552 _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 4555 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 4558 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 455B _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 455E _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 4561 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 4564 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 4567 _ 8B. 40, 0C
        cmp     edx, eax                                ; 456A _ 39. C2
        jnz     ?_245                                   ; 456C _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 456E _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 4571 _ C7. 40, 04, 00000000
?_245:  mov     eax, dword [ebp+8H]                     ; 4578 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 457B _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 457E _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 4581 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 4584 _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 4587 _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 458A _ 8B. 40, 18
        test    eax, eax                                ; 458D _ 85. C0
        jz      ?_246                                   ; 458F _ 74, 2C
        mov     eax, dword [ebp+8H]                     ; 4591 _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 4594 _ 8B. 40, 18
        mov     eax, dword [eax+4H]                     ; 4597 _ 8B. 40, 04
        cmp     eax, 2                                  ; 459A _ 83. F8, 02
        jz      ?_246                                   ; 459D _ 74, 1E
        mov     eax, dword [ebp+8H]                     ; 459F _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 45A2 _ 8B. 40, 18
        mov     dword [esp+8H], 0                       ; 45A5 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], -1                      ; 45AD _ C7. 44 24, 04, FFFFFFFF
        mov     dword [esp], eax                        ; 45B5 _ 89. 04 24
        call    _task_run                               ; 45B8 _ E8, 00000000(rel)
?_246:  mov     eax, 0                                  ; 45BD _ B8, 00000000
?_247:  leave                                           ; 45C2 _ C9
        ret                                             ; 45C3 _ C3
; _fifo8_put End of function

_fifo8_get:; Function begin
        push    ebp                                     ; 45C4 _ 55
        mov     ebp, esp                                ; 45C5 _ 89. E5
        sub     esp, 16                                 ; 45C7 _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 45CA _ 8B. 45, 08
        mov     edx, dword [eax+10H]                    ; 45CD _ 8B. 50, 10
        mov     eax, dword [ebp+8H]                     ; 45D0 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 45D3 _ 8B. 40, 0C
        cmp     edx, eax                                ; 45D6 _ 39. C2
        jnz     ?_248                                   ; 45D8 _ 75, 07
        mov     eax, 4294967295                         ; 45DA _ B8, FFFFFFFF
        jmp     ?_250                                   ; 45DF _ EB, 51

?_248:  mov     eax, dword [ebp+8H]                     ; 45E1 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 45E4 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 45E6 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 45E9 _ 8B. 40, 08
        add     eax, edx                                ; 45EC _ 01. D0
        movzx   eax, byte [eax]                         ; 45EE _ 0F B6. 00
        movzx   eax, al                                 ; 45F1 _ 0F B6. C0
        mov     dword [ebp-4H], eax                     ; 45F4 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 45F7 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 45FA _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 45FD _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 4600 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 4603 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 4606 _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 4609 _ 8B. 50, 08
        mov     eax, dword [ebp+8H]                     ; 460C _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 460F _ 8B. 40, 0C
        cmp     edx, eax                                ; 4612 _ 39. C2
        jnz     ?_249                                   ; 4614 _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 4616 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 4619 _ C7. 40, 08, 00000000
?_249:  mov     eax, dword [ebp+8H]                     ; 4620 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 4623 _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 4626 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 4629 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 462C _ 89. 50, 10
        mov     eax, dword [ebp-4H]                     ; 462F _ 8B. 45, FC
?_250:  leave                                           ; 4632 _ C9
        ret                                             ; 4633 _ C3
; _fifo8_get End of function

_fifo8_status:; Function begin
        push    ebp                                     ; 4634 _ 55
        mov     ebp, esp                                ; 4635 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 4637 _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 463A _ 8B. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 463D _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 4640 _ 8B. 40, 10
        sub     edx, eax                                ; 4643 _ 29. C2
        mov     eax, edx                                ; 4645 _ 89. D0
        pop     ebp                                     ; 4647 _ 5D
        ret                                             ; 4648 _ C3
; _fifo8_status End of function

        nop                                             ; 4649 _ 90
        nop                                             ; 464A _ 90
        nop                                             ; 464B _ 90


_init_pit:
        push    ebp                                     ; 464C _ 55
        mov     ebp, esp                                ; 464D _ 89. E5
        sub     esp, 40                                 ; 464F _ 83. EC, 28
        mov     dword [esp+4H], 52                      ; 4652 _ C7. 44 24, 04, 00000034
        mov     dword [esp], 67                         ; 465A _ C7. 04 24, 00000043
        call    _io_out8                                ; 4661 _ E8, 00000000(rel)
        mov     dword [esp+4H], 156                     ; 4666 _ C7. 44 24, 04, 0000009C
        mov     dword [esp], 64                         ; 466E _ C7. 04 24, 00000040
        call    _io_out8                                ; 4675 _ E8, 00000000(rel)
        mov     dword [esp+4H], 46                      ; 467A _ C7. 44 24, 04, 0000002E
        mov     dword [esp], 64                         ; 4682 _ C7. 04 24, 00000040
        call    _io_out8                                ; 4689 _ E8, 00000000(rel)
        mov     dword [_timerctl], 0                         ; 468E _ C7. 05, 00000000(d), 00000000
        mov     dword [ebp-0CH], 0                      ; 4698 _ C7. 45, F4, 00000000
        jmp     ?_252                                   ; 469F _ EB, 26

?_251:  mov     eax, dword [ebp-0CH]                    ; 46A1 _ 8B. 45, F4
        shl     eax, 4                                  ; 46A4 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 46A7 _ 05, 00000008(d)
        mov     dword [eax], 0                          ; 46AC _ C7. 00, 00000000
        mov     eax, dword [ebp-0CH]                    ; 46B2 _ 8B. 45, F4
        shl     eax, 4                                  ; 46B5 _ C1. E0, 04
        add     eax, _timerctl+0CH                           ; 46B8 _ 05, 0000000C(d)
        mov     dword [eax], 0                          ; 46BD _ C7. 00, 00000000
        add     dword [ebp-0CH], 1                      ; 46C3 _ 83. 45, F4, 01
?_252:  cmp     dword [ebp-0CH], 499                    ; 46C7 _ 81. 7D, F4, 000001F3
        jle     ?_251                                   ; 46CE _ 7E, D1
        nop                                             ; 46D0 _ 90
        leave                                           ; 46D1 _ C9
        ret                                             ; 46D2 _ C3

_timer_alloc:; Function begin
        push    ebp                                     ; 46D3 _ 55
        mov     ebp, esp                                ; 46D4 _ 89. E5
        sub     esp, 16                                 ; 46D6 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 46D9 _ C7. 45, FC, 00000000
        jmp     ?_255                                   ; 46E0 _ EB, 36

?_253:  mov     eax, dword [ebp-4H]                     ; 46E2 _ 8B. 45, FC
        shl     eax, 4                                  ; 46E5 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 46E8 _ 05, 00000008(d)
        mov     eax, dword [eax]                        ; 46ED _ 8B. 00
        test    eax, eax                                ; 46EF _ 85. C0
        jnz     ?_254                                   ; 46F1 _ 75, 21
        mov     eax, dword [ebp-4H]                     ; 46F3 _ 8B. 45, FC
        shl     eax, 4                                  ; 46F6 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 46F9 _ 05, 00000008(d)
        mov     dword [eax], 1                          ; 46FE _ C7. 00, 00000001
        mov     eax, dword [ebp-4H]                     ; 4704 _ 8B. 45, FC
        shl     eax, 4                                  ; 4707 _ C1. E0, 04
        add     eax, _timerctl                               ; 470A _ 05, 00000000(d)
        add     eax, 4                                  ; 470F _ 83. C0, 04
        jmp     ?_256                                   ; 4712 _ EB, 12

?_254:  add     dword [ebp-4H], 1                       ; 4714 _ 83. 45, FC, 01
?_255:  cmp     dword [ebp-4H], 499                     ; 4718 _ 81. 7D, FC, 000001F3
        jle     ?_253                                   ; 471F _ 7E, C1
        mov     eax, 0                                  ; 4721 _ B8, 00000000
?_256:  leave                                           ; 4726 _ C9
        ret                                             ; 4727 _ C3
; _timer_alloc End of function

_timer_free:; Function begin
        push    ebp                                     ; 4728 _ 55
        mov     ebp, esp                                ; 4729 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 472B _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 472E _ C7. 40, 04, 00000000
        nop                                             ; 4735 _ 90
        pop     ebp                                     ; 4736 _ 5D
        ret                                             ; 4737 _ C3
; _timer_free End of function

_timer_init:; Function begin
        push    ebp                                     ; 4738 _ 55
        mov     ebp, esp                                ; 4739 _ 89. E5
        sub     esp, 4                                  ; 473B _ 83. EC, 04
        mov     eax, dword [ebp+10H]                    ; 473E _ 8B. 45, 10
        mov     byte [ebp-4H], al                       ; 4741 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 4744 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 4747 _ 8B. 55, 0C
        mov     dword [eax+8H], edx                     ; 474A _ 89. 50, 08
        mov     edx, dword [ebp+8H]                     ; 474D _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 4750 _ 0F B6. 45, FC
        mov     byte [edx+0CH], al                      ; 4754 _ 88. 42, 0C
        nop                                             ; 4757 _ 90
        leave                                           ; 4758 _ C9
        ret                                             ; 4759 _ C3
; _timer_init End of function

_timer_settime:; Function begin
        push    ebp                                     ; 475A _ 55
        mov     ebp, esp                                ; 475B _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 475D _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 4760 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 4763 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 4765 _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 4768 _ C7. 40, 04, 00000002
        nop                                             ; 476F _ 90
        pop     ebp                                     ; 4770 _ 5D
        ret                                             ; 4771 _ C3
; _timer_settime End of function

_intHandlerForTimer:; Function begin
        push    ebp                                     ; 4772 _ 55
        mov     ebp, esp                                ; 4773 _ 89. E5
        sub     esp, 40                                 ; 4775 _ 83. EC, 28
        mov     dword [esp+4H], 32                      ; 4778 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 4780 _ C7. 04 24, 00000020
        call    _io_out8                                ; 4787 _ E8, 00000000(rel)
        mov     eax, dword [_timerctl]                       ; 478C _ A1, 00000000(d)
        add     eax, 1                                  ; 4791 _ 83. C0, 01
        mov     dword [_timerctl], eax                       ; 4794 _ A3, 00000000(d)
        mov     byte [ebp-0DH], 0                       ; 4799 _ C6. 45, F3, 00
        mov     dword [ebp-0CH], 0                      ; 479D _ C7. 45, F4, 00000000
        jmp     ?_260                                   ; 47A4 _ E9, 000000AA

?_257:  mov     eax, dword [ebp-0CH]                    ; 47A9 _ 8B. 45, F4
        shl     eax, 4                                  ; 47AC _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 47AF _ 05, 00000008(d)
        mov     eax, dword [eax]                        ; 47B4 _ 8B. 00
        cmp     eax, 2                                  ; 47B6 _ 83. F8, 02
        jne     ?_258                                   ; 47B9 _ 0F 85, 00000085
        mov     eax, dword [ebp-0CH]                    ; 47BF _ 8B. 45, F4
        shl     eax, 4                                  ; 47C2 _ C1. E0, 04
        add     eax, _timerctl+4H                            ; 47C5 _ 05, 00000004(d)
        mov     eax, dword [eax]                        ; 47CA _ 8B. 00
        lea     edx, [eax-1H]                           ; 47CC _ 8D. 50, FF
        mov     eax, dword [ebp-0CH]                    ; 47CF _ 8B. 45, F4
        shl     eax, 4                                  ; 47D2 _ C1. E0, 04
        add     eax, _timerctl+4H                            ; 47D5 _ 05, 00000004(d)
        mov     dword [eax], edx                        ; 47DA _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 47DC _ 8B. 45, F4
        shl     eax, 4                                  ; 47DF _ C1. E0, 04
        add     eax, _timerctl+4H                            ; 47E2 _ 05, 00000004(d)
        mov     eax, dword [eax]                        ; 47E7 _ 8B. 00
        test    eax, eax                                ; 47E9 _ 85. C0
        jnz     ?_258                                   ; 47EB _ 75, 57
        mov     eax, dword [ebp-0CH]                    ; 47ED _ 8B. 45, F4
        shl     eax, 4                                  ; 47F0 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 47F3 _ 05, 00000008(d)
        mov     dword [eax], 1                          ; 47F8 _ C7. 00, 00000001
        mov     eax, dword [ebp-0CH]                    ; 47FE _ 8B. 45, F4
        shl     eax, 4                                  ; 4801 _ C1. E0, 04
        add     eax, _timerctl+10H                           ; 4804 _ 05, 00000010(d)
        movzx   eax, byte [eax]                         ; 4809 _ 0F B6. 00
        movzx   eax, al                                 ; 480C _ 0F B6. C0
        mov     edx, dword [ebp-0CH]                    ; 480F _ 8B. 55, F4
        shl     edx, 4                                  ; 4812 _ C1. E2, 04
        add     edx, _timerctl+0CH                           ; 4815 _ 81. C2, 0000000C(d)
        mov     edx, dword [edx]                        ; 481B _ 8B. 12
        mov     dword [esp+4H], eax                     ; 481D _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 4821 _ 89. 14 24
        call    _fifo8_put                              ; 4824 _ E8, 00000000(rel)
        mov     eax, dword [ebp-0CH]                    ; 4829 _ 8B. 45, F4
        shl     eax, 4                                  ; 482C _ C1. E0, 04
        add     eax, _timerctl                               ; 482F _ 05, 00000000(d)
        lea     edx, [eax+4H]                           ; 4834 _ 8D. 50, 04
        mov     eax, dword [_task_timer]                ; 4837 _ A1, 00000000(d)
        cmp     edx, eax                                ; 483C _ 39. C2
        jnz     ?_258                                   ; 483E _ 75, 04
        mov     byte [ebp-0DH], 1                       ; 4840 _ C6. 45, F3, 01
?_258:  cmp     byte [ebp-0DH], 0                       ; 4844 _ 80. 7D, F3, 00
        jz      ?_259                                   ; 4848 _ 74, 05
        call    _task_switch                            ; 484A _ E8, 00000000(rel)
?_259:  add     dword [ebp-0CH], 1                      ; 484F _ 83. 45, F4, 01
?_260:  cmp     dword [ebp-0CH], 499                    ; 4853 _ 81. 7D, F4, 000001F3
        jle     ?_257                                   ; 485A _ 0F 8E, FFFFFF49
        nop                                             ; 4860 _ 90
        leave                                           ; 4861 _ C9
        ret                                             ; 4862 _ C3
; _intHandlerForTimer End of function

_getTimerController:; Function begin
        mov     eax, _timerctl                               ; 4863 _ B8, 00000000(d)
        ret                                             ; 4868 _ C3
; _getTimerController End of function

        nop                                             ; 4869 _ 90
        nop                                             ; 486A _ 90
        nop                                             ; 486B _ 90


_set_segmdesc:
        push    ebp                                     ; 486C _ 55
        mov     ebp, esp                                ; 486D _ 89. E5
        cmp     dword [ebp+0CH], 1048575                ; 486F _ 81. 7D, 0C, 000FFFFF
        jbe     ?_261                                   ; 4876 _ 76, 10
        or      dword [ebp+14H], 8000H                  ; 4878 _ 81. 4D, 14, 00008000
        mov     eax, dword [ebp+0CH]                    ; 487F _ 8B. 45, 0C
        shr     eax, 12                                 ; 4882 _ C1. E8, 0C
        mov     dword [ebp+0CH], eax                    ; 4885 _ 89. 45, 0C
?_261:  mov     eax, dword [ebp+0CH]                    ; 4888 _ 8B. 45, 0C
        mov     edx, eax                                ; 488B _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 488D _ 8B. 45, 08
        mov     word [eax], dx                          ; 4890 _ 66: 89. 10
        mov     eax, dword [ebp+10H]                    ; 4893 _ 8B. 45, 10
        mov     edx, eax                                ; 4896 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 4898 _ 8B. 45, 08
        mov     word [eax+2H], dx                       ; 489B _ 66: 89. 50, 02
        mov     eax, dword [ebp+10H]                    ; 489F _ 8B. 45, 10
        sar     eax, 16                                 ; 48A2 _ C1. F8, 10
        mov     edx, eax                                ; 48A5 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 48A7 _ 8B. 45, 08
        mov     byte [eax+4H], dl                       ; 48AA _ 88. 50, 04
        mov     eax, dword [ebp+14H]                    ; 48AD _ 8B. 45, 14
        mov     edx, eax                                ; 48B0 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 48B2 _ 8B. 45, 08
        mov     byte [eax+5H], dl                       ; 48B5 _ 88. 50, 05
        mov     eax, dword [ebp+0CH]                    ; 48B8 _ 8B. 45, 0C
        shr     eax, 16                                 ; 48BB _ C1. E8, 10
        and     eax, 0FH                                ; 48BE _ 83. E0, 0F
        mov     edx, eax                                ; 48C1 _ 89. C2
        mov     eax, dword [ebp+14H]                    ; 48C3 _ 8B. 45, 14
        sar     eax, 8                                  ; 48C6 _ C1. F8, 08
        and     eax, 0FFFFFFF0H                         ; 48C9 _ 83. E0, F0
        or      eax, edx                                ; 48CC _ 09. D0
        mov     edx, eax                                ; 48CE _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 48D0 _ 8B. 45, 08
        mov     byte [eax+6H], dl                       ; 48D3 _ 88. 50, 06
        mov     eax, dword [ebp+10H]                    ; 48D6 _ 8B. 45, 10
        shr     eax, 24                                 ; 48D9 _ C1. E8, 18
        mov     edx, eax                                ; 48DC _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 48DE _ 8B. 45, 08
        mov     byte [eax+7H], dl                       ; 48E1 _ 88. 50, 07
        nop                                             ; 48E4 _ 90
        pop     ebp                                     ; 48E5 _ 5D
        ret                                             ; 48E6 _ C3

_init_task_level:; Function begin
        push    ebp                                     ; 48E7 _ 55
        mov     ebp, esp                                ; 48E8 _ 89. E5
        sub     esp, 16                                 ; 48EA _ 83. EC, 10
        mov     ecx, dword [_taskctl]                   ; 48ED _ 8B. 0D, 00000004(d)
        mov     edx, dword [ebp+8H]                     ; 48F3 _ 8B. 55, 08
        mov     eax, edx                                ; 48F6 _ 89. D0
        shl     eax, 2                                  ; 48F8 _ C1. E0, 02
        add     eax, edx                                ; 48FB _ 01. D0
        shl     eax, 2                                  ; 48FD _ C1. E0, 02
        add     eax, ecx                                ; 4900 _ 01. C8
        add     eax, 8                                  ; 4902 _ 83. C0, 08
        mov     dword [eax], 0                          ; 4905 _ C7. 00, 00000000
        mov     ecx, dword [_taskctl]                   ; 490B _ 8B. 0D, 00000004(d)
        mov     edx, dword [ebp+8H]                     ; 4911 _ 8B. 55, 08
        mov     eax, edx                                ; 4914 _ 89. D0
        shl     eax, 2                                  ; 4916 _ C1. E0, 02
        add     eax, edx                                ; 4919 _ 01. D0
        shl     eax, 2                                  ; 491B _ C1. E0, 02
        add     eax, ecx                                ; 491E _ 01. C8
        add     eax, 12                                 ; 4920 _ 83. C0, 0C
        mov     dword [eax], 0                          ; 4923 _ C7. 00, 00000000
        mov     dword [ebp-4H], 0                       ; 4929 _ C7. 45, FC, 00000000
        jmp     ?_263                                   ; 4930 _ EB, 21

?_262:  mov     ecx, dword [_taskctl]                   ; 4932 _ 8B. 0D, 00000004(d)
        mov     edx, dword [ebp-4H]                     ; 4938 _ 8B. 55, FC
        mov     eax, edx                                ; 493B _ 89. D0
        add     eax, eax                                ; 493D _ 01. C0
        add     eax, edx                                ; 493F _ 01. D0
        shl     eax, 3                                  ; 4941 _ C1. E0, 03
        add     eax, ecx                                ; 4944 _ 01. C8
        add     eax, 16                                 ; 4946 _ 83. C0, 10
        mov     dword [eax], 0                          ; 4949 _ C7. 00, 00000000
        add     dword [ebp-4H], 1                       ; 494F _ 83. 45, FC, 01
?_263:  cmp     dword [ebp-4H], 2                       ; 4953 _ 83. 7D, FC, 02
        jle     ?_262                                   ; 4957 _ 7E, D9
        nop                                             ; 4959 _ 90
        leave                                           ; 495A _ C9
        ret                                             ; 495B _ C3
; _init_task_level End of function

_task_init:; Function begin
        push    ebp                                     ; 495C _ 55
        mov     ebp, esp                                ; 495D _ 89. E5
        sub     esp, 40                                 ; 495F _ 83. EC, 28
        call    _get_addr_gdt                           ; 4962 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 4967 _ 89. 45, F0
        mov     dword [esp+4H], 768                     ; 496A _ C7. 44 24, 04, 00000300
        mov     eax, dword [ebp+8H]                     ; 4972 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4975 _ 89. 04 24
        call    _memman_alloc_4k                        ; 4978 _ E8, 00000000(rel)
        mov     dword [_taskctl], eax                   ; 497D _ A3, 00000004(d)
        mov     dword [ebp-0CH], 0                      ; 4982 _ C7. 45, F4, 00000000
        jmp     ?_265                                   ; 4989 _ E9, 00000088

?_264:  mov     edx, dword [_taskctl]                   ; 498E _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-0CH]                    ; 4994 _ 8B. 45, F4
        imul    eax, eax, 148                           ; 4997 _ 69. C0, 00000094
        add     eax, edx                                ; 499D _ 01. D0
        add     eax, 72                                 ; 499F _ 83. C0, 48
        mov     dword [eax], 0                          ; 49A2 _ C7. 00, 00000000
        mov     eax, dword [ebp-0CH]                    ; 49A8 _ 8B. 45, F4
        add     eax, 7                                  ; 49AB _ 83. C0, 07
        mov     ecx, dword [_taskctl]                   ; 49AE _ 8B. 0D, 00000004(d)
        lea     edx, [eax*8]                            ; 49B4 _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-0CH]                    ; 49BB _ 8B. 45, F4
        imul    eax, eax, 148                           ; 49BE _ 69. C0, 00000094
        add     eax, ecx                                ; 49C4 _ 01. C8
        add     eax, 68                                 ; 49C6 _ 83. C0, 44
        mov     dword [eax], edx                        ; 49C9 _ 89. 10
        mov     edx, dword [_taskctl]                   ; 49CB _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-0CH]                    ; 49D1 _ 8B. 45, F4
        imul    eax, eax, 148                           ; 49D4 _ 69. C0, 00000094
        add     eax, 96                                 ; 49DA _ 83. C0, 60
        add     eax, edx                                ; 49DD _ 01. D0
        add     eax, 16                                 ; 49DF _ 83. C0, 10
        mov     ecx, eax                                ; 49E2 _ 89. C1
        mov     eax, dword [ebp-0CH]                    ; 49E4 _ 8B. 45, F4
        add     eax, 7                                  ; 49E7 _ 83. C0, 07
        lea     edx, [eax*8]                            ; 49EA _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-10H]                    ; 49F1 _ 8B. 45, F0
        add     eax, edx                                ; 49F4 _ 01. D0
        mov     dword [esp+0CH], 137                    ; 49F6 _ C7. 44 24, 0C, 00000089
        mov     dword [esp+8H], ecx                     ; 49FE _ 89. 4C 24, 08
        mov     dword [esp+4H], 103                     ; 4A02 _ C7. 44 24, 04, 00000067
        mov     dword [esp], eax                        ; 4A0A _ 89. 04 24
        call    _set_segmdesc                           ; 4A0D _ E8, FFFFFE5A
        add     dword [ebp-0CH], 1                      ; 4A12 _ 83. 45, F4, 01
?_265:  cmp     dword [ebp-0CH], 4                      ; 4A16 _ 83. 7D, F4, 04
        jle     ?_264                                   ; 4A1A _ 0F 8E, FFFFFF6E
        mov     dword [ebp-0CH], 0                      ; 4A20 _ C7. 45, F4, 00000000
        jmp     ?_267                                   ; 4A27 _ EB, 0F

?_266:  mov     eax, dword [ebp-0CH]                    ; 4A29 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 4A2C _ 89. 04 24
        call    _init_task_level                        ; 4A2F _ E8, FFFFFEB3
        add     dword [ebp-0CH], 1                      ; 4A34 _ 83. 45, F4, 01
?_267:  cmp     dword [ebp-0CH], 2                      ; 4A38 _ 83. 7D, F4, 02
        jle     ?_266                                   ; 4A3C _ 7E, EB
        call    _task_alloc                             ; 4A3E _ E8, 000000B3
        mov     dword [ebp-14H], eax                    ; 4A43 _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 4A46 _ 8B. 45, EC
        mov     dword [eax+4H], 2                       ; 4A49 _ C7. 40, 04, 00000002
        mov     eax, dword [ebp-14H]                    ; 4A50 _ 8B. 45, EC
        mov     dword [eax+8H], 100                     ; 4A53 _ C7. 40, 08, 00000064
        mov     eax, dword [ebp-14H]                    ; 4A5A _ 8B. 45, EC
        mov     dword [eax+0CH], 0                      ; 4A5D _ C7. 40, 0C, 00000000
        mov     eax, dword [ebp-14H]                    ; 4A64 _ 8B. 45, EC
        mov     dword [esp], eax                        ; 4A67 _ 89. 04 24
        call    _task_add                               ; 4A6A _ E8, 0000003A
        call    _task_switchsub                         ; 4A6F _ E8, 00000439
        mov     eax, dword [ebp-14H]                    ; 4A74 _ 8B. 45, EC
        mov     eax, dword [eax]                        ; 4A77 _ 8B. 00
        mov     dword [esp], eax                        ; 4A79 _ 89. 04 24
        call    _load_tr                                ; 4A7C _ E8, 00000000(rel)
        call    _timer_alloc                            ; 4A81 _ E8, 00000000(rel)
        mov     dword [_task_timer], eax                       ; 4A86 _ A3, 00000000(d)
        mov     eax, dword [ebp-14H]                    ; 4A8B _ 8B. 45, EC
        mov     eax, dword [eax+8H]                     ; 4A8E _ 8B. 40, 08
        mov     edx, eax                                ; 4A91 _ 89. C2
        mov     eax, dword [_task_timer]                       ; 4A93 _ A1, 00000000(d)
        mov     dword [esp+4H], edx                     ; 4A98 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 4A9C _ 89. 04 24
        call    _timer_settime                          ; 4A9F _ E8, 00000000(rel)
        mov     eax, dword [ebp-14H]                    ; 4AA4 _ 8B. 45, EC
        leave                                           ; 4AA7 _ C9
        ret                                             ; 4AA8 _ C3
; _task_init End of function

_task_add:; Function begin
        push    ebp                                     ; 4AA9 _ 55
        mov     ebp, esp                                ; 4AAA _ 89. E5
        sub     esp, 16                                 ; 4AAC _ 83. EC, 10
        mov     ecx, dword [_taskctl]                   ; 4AAF _ 8B. 0D, 00000004(d)
        mov     eax, dword [ebp+8H]                     ; 4AB5 _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 4AB8 _ 8B. 50, 0C
        mov     eax, edx                                ; 4ABB _ 89. D0
        shl     eax, 2                                  ; 4ABD _ C1. E0, 02
        add     eax, edx                                ; 4AC0 _ 01. D0
        shl     eax, 2                                  ; 4AC2 _ C1. E0, 02
        add     eax, ecx                                ; 4AC5 _ 01. C8
        add     eax, 8                                  ; 4AC7 _ 83. C0, 08
        mov     dword [ebp-4H], eax                     ; 4ACA _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 4ACD _ 8B. 45, FC
        mov     edx, dword [eax]                        ; 4AD0 _ 8B. 10
        mov     eax, dword [ebp-4H]                     ; 4AD2 _ 8B. 45, FC
        mov     ecx, dword [ebp+8H]                     ; 4AD5 _ 8B. 4D, 08
        mov     dword [eax+edx*4+8H], ecx               ; 4AD8 _ 89. 4C 90, 08
        mov     eax, dword [ebp-4H]                     ; 4ADC _ 8B. 45, FC
        mov     eax, dword [eax]                        ; 4ADF _ 8B. 00
        lea     edx, [eax+1H]                           ; 4AE1 _ 8D. 50, 01
        mov     eax, dword [ebp-4H]                     ; 4AE4 _ 8B. 45, FC
        mov     dword [eax], edx                        ; 4AE7 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 4AE9 _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 4AEC _ C7. 40, 04, 00000002
        nop                                             ; 4AF3 _ 90
        leave                                           ; 4AF4 _ C9
        ret                                             ; 4AF5 _ C3
; _task_add End of function

_task_alloc:; Function begin
        push    ebp                                     ; 4AF6 _ 55
        mov     ebp, esp                                ; 4AF7 _ 89. E5
        sub     esp, 16                                 ; 4AF9 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 4AFC _ C7. 45, FC, 00000000
        jmp     ?_270                                   ; 4B03 _ E9, 00000101

?_268:  mov     edx, dword [_taskctl]                   ; 4B08 _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-4H]                     ; 4B0E _ 8B. 45, FC
        imul    eax, eax, 148                           ; 4B11 _ 69. C0, 00000094
        add     eax, edx                                ; 4B17 _ 01. D0
        add     eax, 72                                 ; 4B19 _ 83. C0, 48
        mov     eax, dword [eax]                        ; 4B1C _ 8B. 00
        test    eax, eax                                ; 4B1E _ 85. C0
        jne     ?_269                                   ; 4B20 _ 0F 85, 000000DF
        mov     edx, dword [_taskctl]                   ; 4B26 _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-4H]                     ; 4B2C _ 8B. 45, FC
        imul    eax, eax, 148                           ; 4B2F _ 69. C0, 00000094
        add     eax, 64                                 ; 4B35 _ 83. C0, 40
        add     eax, edx                                ; 4B38 _ 01. D0
        add     eax, 4                                  ; 4B3A _ 83. C0, 04
        mov     dword [ebp-8H], eax                     ; 4B3D _ 89. 45, F8
        mov     eax, dword [ebp-8H]                     ; 4B40 _ 8B. 45, F8
        mov     dword [eax+4H], 1                       ; 4B43 _ C7. 40, 04, 00000001
        mov     eax, dword [ebp-8H]                     ; 4B4A _ 8B. 45, F8
        mov     dword [eax+50H], 514                    ; 4B4D _ C7. 40, 50, 00000202
        mov     eax, dword [ebp-8H]                     ; 4B54 _ 8B. 45, F8
        mov     dword [eax+54H], 0                      ; 4B57 _ C7. 40, 54, 00000000
        mov     eax, dword [ebp-8H]                     ; 4B5E _ 8B. 45, F8
        mov     dword [eax+58H], 0                      ; 4B61 _ C7. 40, 58, 00000000
        mov     eax, dword [ebp-8H]                     ; 4B68 _ 8B. 45, F8
        mov     dword [eax+5CH], 0                      ; 4B6B _ C7. 40, 5C, 00000000
        mov     eax, dword [ebp-8H]                     ; 4B72 _ 8B. 45, F8
        mov     dword [eax+60H], 0                      ; 4B75 _ C7. 40, 60, 00000000
        mov     eax, dword [ebp-8H]                     ; 4B7C _ 8B. 45, F8
        mov     dword [eax+68H], 0                      ; 4B7F _ C7. 40, 68, 00000000
        mov     eax, dword [ebp-4H]                     ; 4B86 _ 8B. 45, FC
        add     eax, 1                                  ; 4B89 _ 83. C0, 01
        shl     eax, 9                                  ; 4B8C _ C1. E0, 09
        mov     edx, eax                                ; 4B8F _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 4B91 _ 8B. 45, F8
        mov     dword [eax+64H], edx                    ; 4B94 _ 89. 50, 64
        mov     eax, dword [ebp-8H]                     ; 4B97 _ 8B. 45, F8
        mov     dword [eax+6CH], 0                      ; 4B9A _ C7. 40, 6C, 00000000
        mov     eax, dword [ebp-8H]                     ; 4BA1 _ 8B. 45, F8
        mov     dword [eax+70H], 0                      ; 4BA4 _ C7. 40, 70, 00000000
        mov     eax, dword [ebp-8H]                     ; 4BAB _ 8B. 45, F8
        mov     dword [eax+74H], 0                      ; 4BAE _ C7. 40, 74, 00000000
        mov     eax, dword [ebp-8H]                     ; 4BB5 _ 8B. 45, F8
        mov     dword [eax+80H], 0                      ; 4BB8 _ C7. 80, 00000080, 00000000
        mov     eax, dword [ebp-8H]                     ; 4BC2 _ 8B. 45, F8
        mov     dword [eax+84H], 0                      ; 4BC5 _ C7. 80, 00000084, 00000000
        mov     eax, dword [ebp-8H]                     ; 4BCF _ 8B. 45, F8
        mov     dword [eax+88H], 0                      ; 4BD2 _ C7. 80, 00000088, 00000000
        mov     eax, dword [ebp-8H]                     ; 4BDC _ 8B. 45, F8
        mov     dword [eax+34H], 0                      ; 4BDF _ C7. 40, 34, 00000000
        mov     eax, dword [ebp-8H]                     ; 4BE6 _ 8B. 45, F8
        mov     dword [eax+8CH], 0                      ; 4BE9 _ C7. 80, 0000008C, 00000000
        mov     eax, dword [ebp-8H]                     ; 4BF3 _ 8B. 45, F8
        mov     dword [eax+90H], 1073741824             ; 4BF6 _ C7. 80, 00000090, 40000000
        mov     eax, dword [ebp-8H]                     ; 4C00 _ 8B. 45, F8
        jmp     ?_271                                   ; 4C03 _ EB, 13

?_269:  add     dword [ebp-4H], 1                       ; 4C05 _ 83. 45, FC, 01
?_270:  cmp     dword [ebp-4H], 4                       ; 4C09 _ 83. 7D, FC, 04
        jle     ?_268                                   ; 4C0D _ 0F 8E, FFFFFEF5
        mov     eax, 0                                  ; 4C13 _ B8, 00000000
?_271:  leave                                           ; 4C18 _ C9
        ret                                             ; 4C19 _ C3
; _task_alloc End of function

_task_run:; Function begin
        push    ebp                                     ; 4C1A _ 55
        mov     ebp, esp                                ; 4C1B _ 89. E5
        sub     esp, 24                                 ; 4C1D _ 83. EC, 18
        cmp     dword [ebp+0CH], 0                      ; 4C20 _ 83. 7D, 0C, 00
        jns     ?_272                                   ; 4C24 _ 79, 09
        mov     eax, dword [ebp+8H]                     ; 4C26 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 4C29 _ 8B. 40, 0C
        mov     dword [ebp+0CH], eax                    ; 4C2C _ 89. 45, 0C
?_272:  cmp     dword [ebp+10H], 0                      ; 4C2F _ 83. 7D, 10, 00
        jle     ?_273                                   ; 4C33 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 4C35 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 4C38 _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 4C3B _ 89. 50, 08
?_273:  mov     eax, dword [ebp+8H]                     ; 4C3E _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 4C41 _ 8B. 40, 04
        cmp     eax, 2                                  ; 4C44 _ 83. F8, 02
        jnz     ?_274                                   ; 4C47 _ 75, 16
        mov     eax, dword [ebp+8H]                     ; 4C49 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 4C4C _ 8B. 40, 0C
        cmp     dword [ebp+0CH], eax                    ; 4C4F _ 39. 45, 0C
        jz      ?_274                                   ; 4C52 _ 74, 0B
        mov     eax, dword [ebp+8H]                     ; 4C54 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4C57 _ 89. 04 24
        call    _task_remove                            ; 4C5A _ E8, 0000002E
?_274:  mov     eax, dword [ebp+8H]                     ; 4C5F _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 4C62 _ 8B. 40, 04
        cmp     eax, 2                                  ; 4C65 _ 83. F8, 02
        jz      ?_275                                   ; 4C68 _ 74, 14
        mov     eax, dword [ebp+8H]                     ; 4C6A _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 4C6D _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 4C70 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 4C73 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4C76 _ 89. 04 24
        call    _task_add                               ; 4C79 _ E8, FFFFFE2B
?_275:  mov     eax, dword [_taskctl]                   ; 4C7E _ A1, 00000004(d)
        mov     dword [eax+4H], 1                       ; 4C83 _ C7. 40, 04, 00000001
        nop                                             ; 4C8A _ 90
        leave                                           ; 4C8B _ C9
        ret                                             ; 4C8C _ C3
; _task_run End of function

_task_remove:; Function begin
        push    ebp                                     ; 4C8D _ 55
        mov     ebp, esp                                ; 4C8E _ 89. E5
        sub     esp, 16                                 ; 4C90 _ 83. EC, 10
        mov     ecx, dword [_taskctl]                   ; 4C93 _ 8B. 0D, 00000004(d)
        mov     eax, dword [ebp+8H]                     ; 4C99 _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 4C9C _ 8B. 50, 0C
        mov     eax, edx                                ; 4C9F _ 89. D0
        shl     eax, 2                                  ; 4CA1 _ C1. E0, 02
        add     eax, edx                                ; 4CA4 _ 01. D0
        shl     eax, 2                                  ; 4CA6 _ C1. E0, 02
        add     eax, ecx                                ; 4CA9 _ 01. C8
        add     eax, 8                                  ; 4CAB _ 83. C0, 08
        mov     dword [ebp-8H], eax                     ; 4CAE _ 89. 45, F8
        mov     dword [ebp-4H], 0                       ; 4CB1 _ C7. 45, FC, 00000000
        jmp     ?_278                                   ; 4CB8 _ EB, 23

?_276:  mov     eax, dword [ebp-8H]                     ; 4CBA _ 8B. 45, F8
        mov     edx, dword [ebp-4H]                     ; 4CBD _ 8B. 55, FC
        mov     eax, dword [eax+edx*4+8H]               ; 4CC0 _ 8B. 44 90, 08
        cmp     dword [ebp+8H], eax                     ; 4CC4 _ 39. 45, 08
        jnz     ?_277                                   ; 4CC7 _ 75, 10
        mov     eax, dword [ebp-8H]                     ; 4CC9 _ 8B. 45, F8
        mov     edx, dword [ebp-4H]                     ; 4CCC _ 8B. 55, FC
        mov     dword [eax+edx*4+8H], 0                 ; 4CCF _ C7. 44 90, 08, 00000000
        jmp     ?_279                                   ; 4CD7 _ EB, 0E

?_277:  add     dword [ebp-4H], 1                       ; 4CD9 _ 83. 45, FC, 01
?_278:  mov     eax, dword [ebp-8H]                     ; 4CDD _ 8B. 45, F8
        mov     eax, dword [eax]                        ; 4CE0 _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 4CE2 _ 39. 45, FC
        jl      ?_276                                   ; 4CE5 _ 7C, D3
?_279:  mov     eax, dword [ebp-8H]                     ; 4CE7 _ 8B. 45, F8
        mov     eax, dword [eax]                        ; 4CEA _ 8B. 00
        lea     edx, [eax-1H]                           ; 4CEC _ 8D. 50, FF
        mov     eax, dword [ebp-8H]                     ; 4CEF _ 8B. 45, F8
        mov     dword [eax], edx                        ; 4CF2 _ 89. 10
        mov     eax, dword [ebp-8H]                     ; 4CF4 _ 8B. 45, F8
        mov     eax, dword [eax+4H]                     ; 4CF7 _ 8B. 40, 04
        cmp     dword [ebp-4H], eax                     ; 4CFA _ 39. 45, FC
        jge     ?_280                                   ; 4CFD _ 7D, 0F
        mov     eax, dword [ebp-8H]                     ; 4CFF _ 8B. 45, F8
        mov     eax, dword [eax+4H]                     ; 4D02 _ 8B. 40, 04
        lea     edx, [eax-1H]                           ; 4D05 _ 8D. 50, FF
        mov     eax, dword [ebp-8H]                     ; 4D08 _ 8B. 45, F8
        mov     dword [eax+4H], edx                     ; 4D0B _ 89. 50, 04
?_280:  mov     eax, dword [ebp-8H]                     ; 4D0E _ 8B. 45, F8
        mov     edx, dword [eax+4H]                     ; 4D11 _ 8B. 50, 04
        mov     eax, dword [ebp-8H]                     ; 4D14 _ 8B. 45, F8
        mov     eax, dword [eax]                        ; 4D17 _ 8B. 00
        cmp     edx, eax                                ; 4D19 _ 39. C2
        jl      ?_281                                   ; 4D1B _ 7C, 0A
        mov     eax, dword [ebp-8H]                     ; 4D1D _ 8B. 45, F8
        mov     dword [eax+4H], 0                       ; 4D20 _ C7. 40, 04, 00000000
?_281:  mov     eax, dword [ebp+8H]                     ; 4D27 _ 8B. 45, 08
        mov     dword [eax+4H], 1                       ; 4D2A _ C7. 40, 04, 00000001
        jmp     ?_283                                   ; 4D31 _ EB, 1B

?_282:  mov     eax, dword [ebp-4H]                     ; 4D33 _ 8B. 45, FC
        lea     edx, [eax+1H]                           ; 4D36 _ 8D. 50, 01
        mov     eax, dword [ebp-8H]                     ; 4D39 _ 8B. 45, F8
        mov     ecx, dword [eax+edx*4+8H]               ; 4D3C _ 8B. 4C 90, 08
        mov     eax, dword [ebp-8H]                     ; 4D40 _ 8B. 45, F8
        mov     edx, dword [ebp-4H]                     ; 4D43 _ 8B. 55, FC
        mov     dword [eax+edx*4+8H], ecx               ; 4D46 _ 89. 4C 90, 08
        add     dword [ebp-4H], 1                       ; 4D4A _ 83. 45, FC, 01
?_283:  mov     eax, dword [ebp-8H]                     ; 4D4E _ 8B. 45, F8
        mov     eax, dword [eax]                        ; 4D51 _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 4D53 _ 39. 45, FC
        jl      ?_282                                   ; 4D56 _ 7C, DB
        nop                                             ; 4D58 _ 90
        leave                                           ; 4D59 _ C9
        ret                                             ; 4D5A _ C3
; _task_remove End of function

_task_switch:; Function begin
        push    ebp                                     ; 4D5B _ 55
        mov     ebp, esp                                ; 4D5C _ 89. E5
        sub     esp, 40                                 ; 4D5E _ 83. EC, 28
        mov     ecx, dword [_taskctl]                   ; 4D61 _ 8B. 0D, 00000004(d)
        mov     eax, dword [_taskctl]                   ; 4D67 _ A1, 00000004(d)
        mov     edx, dword [eax]                        ; 4D6C _ 8B. 10
        mov     eax, edx                                ; 4D6E _ 89. D0
        shl     eax, 2                                  ; 4D70 _ C1. E0, 02
        add     eax, edx                                ; 4D73 _ 01. D0
        shl     eax, 2                                  ; 4D75 _ C1. E0, 02
        add     eax, ecx                                ; 4D78 _ 01. C8
        add     eax, 8                                  ; 4D7A _ 83. C0, 08
        mov     dword [ebp-0CH], eax                    ; 4D7D _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 4D80 _ 8B. 45, F4
        mov     edx, dword [eax+4H]                     ; 4D83 _ 8B. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 4D86 _ 8B. 45, F4
        mov     eax, dword [eax+edx*4+8H]               ; 4D89 _ 8B. 44 90, 08
        mov     dword [ebp-10H], eax                    ; 4D8D _ 89. 45, F0
        mov     eax, dword [ebp-0CH]                    ; 4D90 _ 8B. 45, F4
        mov     eax, dword [eax+4H]                     ; 4D93 _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 4D96 _ 8D. 50, 01
        mov     eax, dword [ebp-0CH]                    ; 4D99 _ 8B. 45, F4
        mov     dword [eax+4H], edx                     ; 4D9C _ 89. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 4D9F _ 8B. 45, F4
        mov     edx, dword [eax+4H]                     ; 4DA2 _ 8B. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 4DA5 _ 8B. 45, F4
        mov     eax, dword [eax]                        ; 4DA8 _ 8B. 00
        cmp     edx, eax                                ; 4DAA _ 39. C2
        jnz     ?_284                                   ; 4DAC _ 75, 0A
        mov     eax, dword [ebp-0CH]                    ; 4DAE _ 8B. 45, F4
        mov     dword [eax+4H], 0                       ; 4DB1 _ C7. 40, 04, 00000000
?_284:  mov     eax, dword [_taskctl]                   ; 4DB8 _ A1, 00000004(d)
        mov     eax, dword [eax+4H]                     ; 4DBD _ 8B. 40, 04
        test    eax, eax                                ; 4DC0 _ 85. C0
        jz      ?_285                                   ; 4DC2 _ 74, 24
        call    _task_switchsub                         ; 4DC4 _ E8, 000000E4
        mov     ecx, dword [_taskctl]                   ; 4DC9 _ 8B. 0D, 00000004(d)
        mov     eax, dword [_taskctl]                   ; 4DCF _ A1, 00000004(d)
        mov     edx, dword [eax]                        ; 4DD4 _ 8B. 10
        mov     eax, edx                                ; 4DD6 _ 89. D0
        shl     eax, 2                                  ; 4DD8 _ C1. E0, 02
        add     eax, edx                                ; 4DDB _ 01. D0
        shl     eax, 2                                  ; 4DDD _ C1. E0, 02
        add     eax, ecx                                ; 4DE0 _ 01. C8
        add     eax, 8                                  ; 4DE2 _ 83. C0, 08
        mov     dword [ebp-0CH], eax                    ; 4DE5 _ 89. 45, F4
?_285:  mov     eax, dword [ebp-0CH]                    ; 4DE8 _ 8B. 45, F4
        mov     edx, dword [eax+4H]                     ; 4DEB _ 8B. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 4DEE _ 8B. 45, F4
        mov     eax, dword [eax+edx*4+8H]               ; 4DF1 _ 8B. 44 90, 08
        mov     dword [ebp-14H], eax                    ; 4DF5 _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 4DF8 _ 8B. 45, EC
        mov     eax, dword [eax+8H]                     ; 4DFB _ 8B. 40, 08
        mov     edx, eax                                ; 4DFE _ 89. C2
        mov     eax, dword [_task_timer]                       ; 4E00 _ A1, 00000000(d)
        mov     dword [esp+4H], edx                     ; 4E05 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 4E09 _ 89. 04 24
        call    _timer_settime                          ; 4E0C _ E8, 00000000(rel)
        mov     eax, dword [ebp-14H]                    ; 4E11 _ 8B. 45, EC
        cmp     eax, dword [ebp-10H]                    ; 4E14 _ 3B. 45, F0
        jz      ?_286                                   ; 4E17 _ 74, 1C
        cmp     dword [ebp-14H], 0                      ; 4E19 _ 83. 7D, EC, 00
        jz      ?_286                                   ; 4E1D _ 74, 16
        mov     eax, dword [ebp-14H]                    ; 4E1F _ 8B. 45, EC
        mov     eax, dword [eax]                        ; 4E22 _ 8B. 00
        mov     dword [esp+4H], eax                     ; 4E24 _ 89. 44 24, 04
        mov     dword [esp], 0                          ; 4E28 _ C7. 04 24, 00000000
        call    _farjmp                                 ; 4E2F _ E8, 00000000(rel)
        nop                                             ; 4E34 _ 90
?_286:  nop                                             ; 4E35 _ 90
        leave                                           ; 4E36 _ C9
        ret                                             ; 4E37 _ C3
; _task_switch End of function

_task_sleep:; Function begin
        push    ebp                                     ; 4E38 _ 55
        mov     ebp, esp                                ; 4E39 _ 89. E5
        sub     esp, 40                                 ; 4E3B _ 83. EC, 28
        mov     dword [ebp-10H], 0                      ; 4E3E _ C7. 45, F0, 00000000
        mov     dword [ebp-0CH], 0                      ; 4E45 _ C7. 45, F4, 00000000
        mov     eax, dword [ebp+8H]                     ; 4E4C _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 4E4F _ 8B. 40, 04
        cmp     eax, 2                                  ; 4E52 _ 83. F8, 02
        jnz     ?_287                                   ; 4E55 _ 75, 51
        call    _task_now                               ; 4E57 _ E8, 000000A4
        mov     dword [ebp-10H], eax                    ; 4E5C _ 89. 45, F0
        mov     eax, dword [ebp+8H]                     ; 4E5F _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4E62 _ 89. 04 24
        call    _task_remove                            ; 4E65 _ E8, FFFFFE23
        mov     dword [ebp-0CH], 1                      ; 4E6A _ C7. 45, F4, 00000001
        mov     eax, dword [ebp+8H]                     ; 4E71 _ 8B. 45, 08
        cmp     eax, dword [ebp-10H]                    ; 4E74 _ 3B. 45, F0
        jnz     ?_287                                   ; 4E77 _ 75, 2F
        call    _task_switchsub                         ; 4E79 _ E8, 0000002F
        call    _task_now                               ; 4E7E _ E8, 0000007D
        mov     dword [ebp-10H], eax                    ; 4E83 _ 89. 45, F0
        mov     dword [ebp-0CH], 2                      ; 4E86 _ C7. 45, F4, 00000002
        cmp     dword [ebp-10H], 0                      ; 4E8D _ 83. 7D, F0, 00
        jz      ?_287                                   ; 4E91 _ 74, 15
        mov     eax, dword [ebp-10H]                    ; 4E93 _ 8B. 45, F0
        mov     eax, dword [eax]                        ; 4E96 _ 8B. 00
        mov     dword [esp+4H], eax                     ; 4E98 _ 89. 44 24, 04
        mov     dword [esp], 0                          ; 4E9C _ C7. 04 24, 00000000
        call    _farjmp                                 ; 4EA3 _ E8, 00000000(rel)
?_287:  mov     eax, dword [ebp-0CH]                    ; 4EA8 _ 8B. 45, F4
        leave                                           ; 4EAB _ C9
        ret                                             ; 4EAC _ C3
; _task_sleep End of function

_task_switchsub:; Function begin
        push    ebp                                     ; 4EAD _ 55
        mov     ebp, esp                                ; 4EAE _ 89. E5
        sub     esp, 16                                 ; 4EB0 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 4EB3 _ C7. 45, FC, 00000000
        jmp     ?_289                                   ; 4EBA _ EB, 22

?_288:  mov     ecx, dword [_taskctl]                   ; 4EBC _ 8B. 0D, 00000004(d)
        mov     edx, dword [ebp-4H]                     ; 4EC2 _ 8B. 55, FC
        mov     eax, edx                                ; 4EC5 _ 89. D0
        shl     eax, 2                                  ; 4EC7 _ C1. E0, 02
        add     eax, edx                                ; 4ECA _ 01. D0
        shl     eax, 2                                  ; 4ECC _ C1. E0, 02
        add     eax, ecx                                ; 4ECF _ 01. C8
        add     eax, 8                                  ; 4ED1 _ 83. C0, 08
        mov     eax, dword [eax]                        ; 4ED4 _ 8B. 00
        test    eax, eax                                ; 4ED6 _ 85. C0
        jg      ?_290                                   ; 4ED8 _ 7F, 0C
        add     dword [ebp-4H], 1                       ; 4EDA _ 83. 45, FC, 01
?_289:  cmp     dword [ebp-4H], 2                       ; 4EDE _ 83. 7D, FC, 02
        jle     ?_288                                   ; 4EE2 _ 7E, D8
        jmp     ?_291                                   ; 4EE4 _ EB, 01

?_290:  nop                                             ; 4EE6 _ 90
?_291:  mov     eax, dword [_taskctl]                   ; 4EE7 _ A1, 00000004(d)
        mov     edx, dword [ebp-4H]                     ; 4EEC _ 8B. 55, FC
        mov     dword [eax], edx                        ; 4EEF _ 89. 10
        mov     eax, dword [_taskctl]                   ; 4EF1 _ A1, 00000004(d)
        mov     dword [eax+4H], 0                       ; 4EF6 _ C7. 40, 04, 00000000
        nop                                             ; 4EFD _ 90
        leave                                           ; 4EFE _ C9
        ret                                             ; 4EFF _ C3
; _task_switchsub End of function

_task_now:; Function begin
        push    ebp                                     ; 4F00 _ 55
        mov     ebp, esp                                ; 4F01 _ 89. E5
        sub     esp, 16                                 ; 4F03 _ 83. EC, 10
        mov     ecx, dword [_taskctl]                   ; 4F06 _ 8B. 0D, 00000004(d)
        mov     eax, dword [_taskctl]                   ; 4F0C _ A1, 00000004(d)
        mov     edx, dword [eax]                        ; 4F11 _ 8B. 10
        mov     eax, edx                                ; 4F13 _ 89. D0
        shl     eax, 2                                  ; 4F15 _ C1. E0, 02
        add     eax, edx                                ; 4F18 _ 01. D0
        shl     eax, 2                                  ; 4F1A _ C1. E0, 02
        add     eax, ecx                                ; 4F1D _ 01. C8
        add     eax, 8                                  ; 4F1F _ 83. C0, 08
        mov     dword [ebp-4H], eax                     ; 4F22 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 4F25 _ 8B. 45, FC
        mov     edx, dword [eax+4H]                     ; 4F28 _ 8B. 50, 04
        mov     eax, dword [ebp-4H]                     ; 4F2B _ 8B. 45, FC
        mov     eax, dword [eax+edx*4+8H]               ; 4F2E _ 8B. 44 90, 08
        leave                                           ; 4F32 _ C9
        ret                                             ; 4F33 _ C3
; _task_now End of function

_send_message:; Function begin
        push    ebp                                     ; 4F34 _ 55
        mov     ebp, esp                                ; 4F35 _ 89. E5
        sub     esp, 24                                 ; 4F37 _ 83. EC, 18
        mov     eax, dword [ebp+10H]                    ; 4F3A _ 8B. 45, 10
        movzx   eax, al                                 ; 4F3D _ 0F B6. C0
        mov     edx, dword [ebp+0CH]                    ; 4F40 _ 8B. 55, 0C
        add     edx, 16                                 ; 4F43 _ 83. C2, 10
        mov     dword [esp+4H], eax                     ; 4F46 _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 4F4A _ 89. 14 24
        call    _fifo8_put                              ; 4F4D _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 4F52 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4F55 _ 89. 04 24
        call    _task_sleep                             ; 4F58 _ E8, FFFFFEDB
        nop                                             ; 4F5D _ 90
        leave                                           ; 4F5E _ C9
        ret                                             ; 4F5F _ C3
; _send_message End of function


_strcmp:
        push    ebp                                     ; 4F60 _ 55
        mov     ebp, esp                                ; 4F61 _ 89. E5
        sub     esp, 16                                 ; 4F63 _ 83. EC, 10
        cmp     dword [ebp+8H], 0                       ; 4F66 _ 83. 7D, 08, 00
        jz      ?_292                                   ; 4F6A _ 74, 06
        cmp     dword [ebp+0CH], 0                      ; 4F6C _ 83. 7D, 0C, 00
        jnz     ?_293                                   ; 4F70 _ 75, 0A
?_292:  mov     eax, 0                                  ; 4F72 _ B8, 00000000
        jmp     ?_300                                   ; 4F77 _ E9, 0000009B

?_293:  mov     dword [ebp-4H], 0                       ; 4F7C _ C7. 45, FC, 00000000
        jmp     ?_296                                   ; 4F83 _ EB, 25

?_294:  mov     edx, dword [ebp-4H]                     ; 4F85 _ 8B. 55, FC
        mov     eax, dword [ebp+8H]                     ; 4F88 _ 8B. 45, 08
        add     eax, edx                                ; 4F8B _ 01. D0
        movzx   edx, byte [eax]                         ; 4F8D _ 0F B6. 10
        mov     ecx, dword [ebp-4H]                     ; 4F90 _ 8B. 4D, FC
        mov     eax, dword [ebp+0CH]                    ; 4F93 _ 8B. 45, 0C
        add     eax, ecx                                ; 4F96 _ 01. C8
        movzx   eax, byte [eax]                         ; 4F98 _ 0F B6. 00
        cmp     dl, al                                  ; 4F9B _ 38. C2
        jz      ?_295                                   ; 4F9D _ 74, 07
        mov     eax, 0                                  ; 4F9F _ B8, 00000000
        jmp     ?_300                                   ; 4FA4 _ EB, 71

?_295:  add     dword [ebp-4H], 1                       ; 4FA6 _ 83. 45, FC, 01
?_296:  mov     edx, dword [ebp-4H]                     ; 4FAA _ 8B. 55, FC
        mov     eax, dword [ebp+8H]                     ; 4FAD _ 8B. 45, 08
        add     eax, edx                                ; 4FB0 _ 01. D0
        movzx   eax, byte [eax]                         ; 4FB2 _ 0F B6. 00
        test    al, al                                  ; 4FB5 _ 84. C0
        jz      ?_297                                   ; 4FB7 _ 74, 0F
        mov     edx, dword [ebp-4H]                     ; 4FB9 _ 8B. 55, FC
        mov     eax, dword [ebp+0CH]                    ; 4FBC _ 8B. 45, 0C
        add     eax, edx                                ; 4FBF _ 01. D0
        movzx   eax, byte [eax]                         ; 4FC1 _ 0F B6. 00
        test    al, al                                  ; 4FC4 _ 84. C0
        jnz     ?_294                                   ; 4FC6 _ 75, BD
?_297:  mov     edx, dword [ebp-4H]                     ; 4FC8 _ 8B. 55, FC
        mov     eax, dword [ebp+8H]                     ; 4FCB _ 8B. 45, 08
        add     eax, edx                                ; 4FCE _ 01. D0
        movzx   eax, byte [eax]                         ; 4FD0 _ 0F B6. 00
        test    al, al                                  ; 4FD3 _ 84. C0
        jnz     ?_298                                   ; 4FD5 _ 75, 16
        mov     edx, dword [ebp-4H]                     ; 4FD7 _ 8B. 55, FC
        mov     eax, dword [ebp+0CH]                    ; 4FDA _ 8B. 45, 0C
        add     eax, edx                                ; 4FDD _ 01. D0
        movzx   eax, byte [eax]                         ; 4FDF _ 0F B6. 00
        test    al, al                                  ; 4FE2 _ 84. C0
        jz      ?_298                                   ; 4FE4 _ 74, 07
        mov     eax, 0                                  ; 4FE6 _ B8, 00000000
        jmp     ?_300                                   ; 4FEB _ EB, 2A

?_298:  mov     edx, dword [ebp-4H]                     ; 4FED _ 8B. 55, FC
        mov     eax, dword [ebp+8H]                     ; 4FF0 _ 8B. 45, 08
        add     eax, edx                                ; 4FF3 _ 01. D0
        movzx   eax, byte [eax]                         ; 4FF5 _ 0F B6. 00
        test    al, al                                  ; 4FF8 _ 84. C0
        jz      ?_299                                   ; 4FFA _ 74, 16
        mov     edx, dword [ebp-4H]                     ; 4FFC _ 8B. 55, FC
        mov     eax, dword [ebp+0CH]                    ; 4FFF _ 8B. 45, 0C
        add     eax, edx                                ; 5002 _ 01. D0
        movzx   eax, byte [eax]                         ; 5004 _ 0F B6. 00
        test    al, al                                  ; 5007 _ 84. C0
        jz      ?_299                                   ; 5009 _ 74, 07
        mov     eax, 0                                  ; 500B _ B8, 00000000
        jmp     ?_300                                   ; 5010 _ EB, 05

?_299:  mov     eax, 1                                  ; 5012 _ B8, 00000001
?_300:  leave                                           ; 5017 _ C9
        ret                                             ; 5018 _ C3

        nop                                             ; 5019 _ 90
        nop                                             ; 501A _ 90
        nop                                             ; 501B _ 90



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

_keyval:                                                ; byte
        db 30H, 58H                                     ; 0100 _ 0X

?_301:  db 00H                                          ; 0102 _ .

?_302:  db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0103 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 010B _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0113 _ ........
        db 00H, 00H, 00H, 00H, 00H                      ; 011B _ .....

_table_rgb.2529:                                        ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0120 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0128 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0130 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0138 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 0140 _ ........
        db 00H, 84H, 00H, 84H, 84H, 84H, 84H, 84H       ; 0148 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0150 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0158 _ ........

_cursor.2576:                                           ; byte
        db 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH       ; 0160 _ ********
        db 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2EH, 2EH       ; 0168 _ ******..
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 0170 _ *OOOOOOO
        db 4FH, 4FH, 4FH, 4FH, 2AH, 2EH, 2EH, 2EH       ; 0178 _ OOOO*...
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 0180 _ *OOOOOOO
        db 4FH, 4FH, 4FH, 2AH, 2EH, 2EH, 2EH, 2EH       ; 0188 _ OOO*....
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 0190 _ *OOOOOOO
        db 4FH, 4FH, 2AH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0198 _ OO*.....
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 01A0 _ *OOOOOOO
        db 4FH, 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 01A8 _ O*......
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 01B0 _ *OOOOOOO
        db 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 01B8 _ *.......
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 01C0 _ *OOOOOOO
        db 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 01C8 _ *.......
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 01D0 _ *OOOOOOO
        db 4FH, 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 01D8 _ O*......
        db 2AH, 4FH, 4FH, 4FH, 4FH, 2AH, 2AH, 4FH       ; 01E0 _ *OOOO**O
        db 4FH, 4FH, 2AH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 01E8 _ OO*.....
        db 2AH, 4FH, 4FH, 4FH, 2AH, 2EH, 2EH, 2AH       ; 01F0 _ *OOO*..*
        db 4FH, 4FH, 4FH, 2AH, 2EH, 2EH, 2EH, 2EH       ; 01F8 _ OOO*....
        db 2AH, 4FH, 4FH, 2AH, 2EH, 2EH, 2EH, 2EH       ; 0200 _ *OO*....
        db 2AH, 4FH, 4FH, 4FH, 2AH, 2EH, 2EH, 2EH       ; 0208 _ *OOO*...
        db 2AH, 4FH, 2AH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0210 _ *O*.....
        db 2EH, 2AH, 4FH, 4FH, 4FH, 2AH, 2EH, 2EH       ; 0218 _ .*OOO*..
        db 2AH, 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0220 _ **......
        db 2EH, 2EH, 2AH, 4FH, 4FH, 4FH, 2AH, 2EH       ; 0228 _ ..*OOO*.
        db 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0230 _ *.......
        db 2EH, 2EH, 2EH, 2AH, 4FH, 4FH, 4FH, 2AH       ; 0238 _ ...*OOO*
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0240 _ ........
        db 2EH, 2EH, 2EH, 2EH, 2AH, 4FH, 4FH, 2AH       ; 0248 _ ....*OO*
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0250 _ ........
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2AH, 2AH, 2AH       ; 0258 _ .....***

_closebtn.2695:                                         ; byte
        db 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 0260 _ OOOOOOOO
        db 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 40H       ; 0268 _ OOOOOOO@
        db 4FH, 51H, 51H, 51H, 51H, 51H, 51H, 51H       ; 0270 _ OQQQQQQQ
        db 51H, 51H, 51H, 51H, 51H, 51H, 24H, 40H       ; 0278 _ QQQQQQ$@
        db 4FH, 51H, 51H, 51H, 51H, 51H, 51H, 51H       ; 0280 _ OQQQQQQQ
        db 51H, 51H, 51H, 51H, 51H, 51H, 24H, 40H       ; 0288 _ QQQQQQ$@
        db 4FH, 51H, 51H, 51H, 40H, 40H, 51H, 51H       ; 0290 _ OQQQ@@QQ
        db 51H, 51H, 40H, 40H, 51H, 51H, 24H, 40H       ; 0298 _ QQ@@QQ$@
        db 4FH, 51H, 51H, 51H, 51H, 40H, 40H, 51H       ; 02A0 _ OQQQQ@@Q
        db 51H, 40H, 40H, 51H, 51H, 51H, 24H, 40H       ; 02A8 _ Q@@QQQ$@
        db 4FH, 51H, 51H, 51H, 51H, 51H, 40H, 40H       ; 02B0 _ OQQQQQ@@
        db 40H, 40H, 51H, 51H, 51H, 51H, 24H, 40H       ; 02B8 _ @@QQQQ$@
        db 4FH, 51H, 51H, 51H, 51H, 51H, 51H, 40H       ; 02C0 _ OQQQQQQ@
        db 40H, 51H, 51H, 51H, 51H, 51H, 24H, 40H       ; 02C8 _ @QQQQQ$@
        db 4FH, 51H, 51H, 51H, 51H, 51H, 40H, 40H       ; 02D0 _ OQQQQQ@@
        db 40H, 40H, 51H, 51H, 51H, 51H, 24H, 40H       ; 02D8 _ @@QQQQ$@
        db 4FH, 51H, 51H, 51H, 51H, 40H, 40H, 51H       ; 02E0 _ OQQQQ@@Q
        db 51H, 40H, 40H, 51H, 51H, 51H, 24H, 40H       ; 02E8 _ Q@@QQQ$@
        db 4FH, 51H, 51H, 51H, 40H, 40H, 51H, 51H       ; 02F0 _ OQQQ@@QQ
        db 51H, 51H, 40H, 40H, 51H, 51H, 24H, 40H       ; 02F8 _ QQ@@QQ$@
        db 4FH, 51H, 51H, 51H, 51H, 51H, 51H, 51H       ; 0300 _ OQQQQQQQ
        db 51H, 51H, 51H, 51H, 51H, 51H, 24H, 40H       ; 0308 _ QQQQQQ$@
        db 4FH, 51H, 51H, 51H, 51H, 51H, 51H, 51H       ; 0310 _ OQQQQQQQ
        db 51H, 51H, 51H, 51H, 51H, 51H, 24H, 40H       ; 0318 _ QQQQQQ$@
        db 4FH, 24H, 24H, 24H, 24H, 24H, 24H, 24H       ; 0320 _ O$$$$$$$
        db 24H, 24H, 24H, 24H, 24H, 24H, 24H, 40H       ; 0328 _ $$$$$$$@
        db 40H, 40H, 40H, 40H, 40H, 40H, 40H, 40H       ; 0330 _ @@@@@@@@
        db 40H, 40H, 40H, 40H, 40H, 40H, 40H, 40H       ; 0338 _ @@@@@@@@


?_303:                                                  
        db 63H, 6FH, 75H, 6EH, 74H, 65H, 72H, 00H       ; 0000 _ counter.

?_304:                                                  ; byte
        db 6BH, 69H, 6CH, 6CH, 20H, 70H, 72H, 6FH       ; 0008 _ kill pro
        db 63H, 65H, 73H, 73H, 00H                      ; 0010 _ cess.

?_305:                                                  ; byte
        db 74H, 61H, 73H, 6BH, 5FH, 61H, 00H            ; 0015 _ task_a.

?_306:                                                  ; byte
        db 63H, 6FH, 6EH, 73H, 6FH, 6CH, 65H, 00H       ; 001C _ console.

?_307:                                                  ; byte
        db 20H, 00H                                     ; 0024 _  .

?_308:                                                  ; byte
        db 66H, 72H, 65H, 65H, 20H, 00H                 ; 0026 _ free .

?_309:                                                  ; byte
        db 20H, 4BH, 42H, 00H                           ; 002C _  KB.

?_310:                                                  ; byte
        db 3EH, 00H                                     ; 0030 _ >.

?_311:                                                  ; byte
        db 61H, 62H, 63H, 2EH, 65H, 78H, 65H, 00H       ; 0032 _ abc.exe.

?_312:                                                  ; byte
        db 6DH, 65H, 6DH, 00H                           ; 003A _ mem.

?_313:                                                  ; byte
        db 63H, 6CH, 73H, 00H                           ; 003E _ cls.

?_314:                                                  ; byte
        db 68H, 6CH, 74H, 00H                           ; 0042 _ hlt.

?_315:                                                  ; byte
        db 64H, 69H, 72H, 00H                           ; 0046 _ dir.

?_316:                                                  ; byte
        db 70H, 61H, 67H, 65H, 20H, 69H, 73H, 3AH       ; 004A _ page is:
        db 20H, 00H                                     ; 0052 _  .

?_317:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0054 _ BaseAddr
        db 4CH, 3AH, 20H, 00H                           ; 005C _ L: .

?_318:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0060 _ BaseAddr
        db 48H, 3AH, 20H, 00H                           ; 0068 _ H: .

?_319:                                                  ; byte
        db 6CH, 65H, 6EH, 67H, 74H, 68H, 4CH, 6FH       ; 006C _ lengthLo
        db 77H, 3AH, 20H, 00H                           ; 0074 _ w: .

?_320:                                                  ; byte
        db 49H, 4EH, 54H, 20H, 30H, 44H, 20H, 00H       ; 0078 _ INT 0D .

?_321:                                                  ; byte
        db 47H, 65H, 6EH, 65H, 72H, 61H, 6CH, 20H       ; 0080 _ General 
        db 50H, 72H, 6FH, 74H, 65H, 63H, 74H, 65H       ; 0088 _ Protecte
        db 64H, 20H, 45H, 78H, 63H, 65H, 70H, 74H       ; 0090 _ d Except
        db 69H, 6FH, 6EH, 00H                           ; 0098 _ ion.

?_322:                                                  ; byte
        db 49H, 4EH, 54H, 20H, 4FH, 43H, 00H            ; 009C _ INT OC.

?_323:                                                  ; byte
        db 53H, 74H, 61H, 63H, 6BH, 20H, 45H, 78H       ; 00A3 _ Stack Ex
        db 63H, 65H, 70H, 74H, 69H, 6FH, 6EH, 00H       ; 00AB _ ception.

?_324:                                                  ; byte
        db 45H, 49H, 50H, 20H, 3DH, 20H, 00H, 00H       ; 00B3 _ EIP = ..
        db 00H                                          ; 00BB _ .


_key_shift:                                             
        resd    1                                       ; 0000

_caps_lock:                                             ; dword
        resd    1                                       ; 0004

_g_Console:                                             ; dword
        resd    1                                       ; 0008

?_325:  resd    1                                       ; 000C

?_326:  resd    1                                       ; 0010

?_327:  resd    1                                       ; 0014

?_328:  resb    1                                       ; 0018

?_329:  resb    3                                       ; 0019

_bootInfo:                                              ; dword
        resd    1                                       ; 001C

?_330:  resw    1                                       ; 0020

?_331:  resw    1                                       ; 0022

_keyinfo:                                               ; byte
        resb    24                                      ; 0024

?_332:  resd    1                                       ; 003C

_mouseinfo:                                             ; byte
        resb    32                                      ; 0040

_keybuf:                                                ; byte
        resb    32                                      ; 0060

_mousebuf:                                              ; byte
        resb    128                                     ; 0080

_mdec:                                                  ; byte
        resb    12                                      ; 0100

?_333:  resd    1                                       ; 010C

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

_task_cons:                                             ; dword
        resd    1                                       ; 0270

_task_main:                                             ; dword
        resd    1                                       ; 0274

_buffer: resd   1                                       ; 0278

?_334:  resd    1                                       ; 027C

?_335:  resd    1                                       ; 0280

_task_a.2333:                                           ; dword
        resd    7                                       ; 0284

_tss_a.2332:                                            ; byte
        resb    128                                     ; 02A0

_tss_b.2331:                                            ; byte
        resb    104                                     ; 0320

_str.2624:                                              ; byte
        resb    1                                       ; 0388

?_336:  resb    9                                       ; 0389

?_337:  resb    14                                      ; 0392

_timerctl:                                              ; byte
        resb    8032                                    ; 03A0

_task_timer:                                            ; byte
        resb    4                                       ; 2300

_taskctl:                                               ; byte
        resb    4                                       ; 2304


