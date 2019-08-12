; Disassembly of file: ckernel.o
; Mon Aug 12 23:18:15 2019
; Mode: 32 bits
; Syntax: YASM/NASM
; Instruction set: Pentium Pro







_launch:
        push    ebp                                     ; 0000 _ 55
        mov     ebp, esp                                ; 0001 _ 89. E5
        push    ebx                                     ; 0003 _ 53
        sub     esp, 132                                ; 0004 _ 81. EC, 00000084
        mov     dword [esp], _bootInfo                  ; 000A _ C7. 04 24, 0000001C(d)
        call    _initBootInfo                           ; 0011 _ E8, 00001FA8
        mov     eax, dword [_bootInfo]                  ; 0016 _ A1, 0000001C(d)
        mov     dword [ebp-1CH], eax                    ; 001B _ 89. 45, E4
        movzx   eax, word [?_327]                       ; 001E _ 0F B7. 05, 00000020(d)
        cwde                                            ; 0025 _ 98
        mov     dword [_xsize], eax                     ; 0026 _ A3, 0000013C(d)
        movzx   eax, word [?_328]                       ; 002B _ 0F B7. 05, 00000022(d)
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
        call    _init_palette                           ; 014B _ E8, 00001F38
        call    _init_keyboard                          ; 0150 _ E8, 000024A1
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
        call    _init_screen8                           ; 0281 _ E8, 00001870
        mov     dword [esp+4H], 99                      ; 0286 _ C7. 44 24, 04, 00000063
        mov     dword [esp], _buf_mouse                 ; 028E _ C7. 04 24, 00000160(d)
        call    _init_mouse_cursor                      ; 0295 _ E8, 0000208A
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
        mov     dword [esp+4H], ?_300                   ; 032B _ C7. 44 24, 04, 00000000(d)
        mov     dword [esp], eax                        ; 0333 _ 89. 04 24
        call    _message_box                            ; 0336 _ E8, 000026E6
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
        call    _enable_mouse                           ; 038A _ E8, 000022A2
        mov     eax, dword [_memman]                    ; 038F _ A1, 00000000(d)
        mov     dword [esp], eax                        ; 0394 _ 89. 04 24
        call    _task_init                              ; 0397 _ E8, 00000000(rel)
        mov     dword [_task_a.2332], eax               ; 039C _ A3, 00000280(d)
        mov     eax, dword [_task_a.2332]               ; 03A1 _ A1, 00000280(d)
        mov     dword [?_329], eax                      ; 03A6 _ A3, 0000003C(d)
        mov     eax, dword [_task_a.2332]               ; 03AB _ A1, 00000280(d)
        mov     dword [_task_main], eax                 ; 03B0 _ A3, 00000274(d)
        mov     eax, dword [_task_a.2332]               ; 03B5 _ A1, 00000280(d)
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
        mov     dword [esp], ?_301                      ; 049D _ C7. 04 24, 00000008(d)
        call    _cons_putstr                            ; 04A4 _ E8, 000014EB
        call    _io_cli                                 ; 04A9 _ E8, 00000000(rel)
        call    _get_addr_code32                        ; 04AE _ E8, 00000000(rel)
        mov     dword [ebp-54H], eax                    ; 04B3 _ 89. 45, AC
        mov     eax, _kill_process                      ; 04B6 _ B8, 00003497(d)
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
        mov     dword [esp+8H], ?_302                   ; 0501 _ C7. 44 24, 08, 00000015(d)
        mov     dword [esp+4H], edx                     ; 0509 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 050D _ 89. 04 24
        call    _make_wtitle8                           ; 0510 _ E8, 000028BC
        mov     eax, dword [_shtctl]                    ; 0515 _ A1, 00000264(d)
        mov     dword [esp+0CH], 1                      ; 051A _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], ?_303                   ; 0522 _ C7. 44 24, 08, 0000001C(d)
        mov     edx, dword [ebp-34H]                    ; 052A _ 8B. 55, CC
        mov     dword [esp+4H], edx                     ; 052D _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0531 _ 89. 04 24
        call    _make_wtitle8                           ; 0534 _ E8, 00002898
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
        mov     dword [esp+8H], ?_302                   ; 058A _ C7. 44 24, 08, 00000015(d)
        mov     dword [esp+4H], edx                     ; 0592 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0596 _ 89. 04 24
        call    _make_wtitle8                           ; 0599 _ E8, 00002833
        mov     eax, dword [_shtctl]                    ; 059E _ A1, 00000264(d)
        mov     dword [esp+0CH], 0                      ; 05A3 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], ?_303                   ; 05AB _ C7. 44 24, 08, 0000001C(d)
        mov     edx, dword [ebp-34H]                    ; 05B3 _ 8B. 55, CC
        mov     dword [esp+4H], edx                     ; 05B6 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 05BA _ 89. 04 24
        call    _make_wtitle8                           ; 05BD _ E8, 0000280F
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
        mov     eax, dword [_task_a.2332]               ; 0658 _ A1, 00000280(d)
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
        call    _showString                             ; 0712 _ E8, 000018C8
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
        mov     eax, dword [_task_a.2332]               ; 078B _ A1, 00000280(d)
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
        call    _show_mouse_info                        ; 07C6 _ E8, 0000173B
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
        call    _boxfill8                               ; 0903 _ E8, 0000184B
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
        mov     dword [esp+8H], ?_303                   ; 0B32 _ C7. 44 24, 08, 0000001C(d)
        mov     edx, dword [ebp-0CH]                    ; 0B3A _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 0B3D _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0B41 _ 89. 04 24
        call    _make_window8                           ; 0B44 _ E8, 00001FC3
        mov     dword [esp+14H], 0                      ; 0B49 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], 128                    ; 0B51 _ C7. 44 24, 10, 00000080
        mov     dword [esp+0CH], 240                    ; 0B59 _ C7. 44 24, 0C, 000000F0
        mov     dword [esp+8H], 28                      ; 0B61 _ C7. 44 24, 08, 0000001C
        mov     dword [esp+4H], 8                       ; 0B69 _ C7. 44 24, 04, 00000008
        mov     eax, dword [ebp-0CH]                    ; 0B71 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 0B74 _ 89. 04 24
        call    _make_textbox8                          ; 0B77 _ E8, 00002393
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
        add     eax, _console_task                      ; 0BAB _ 05, 00001424(d)
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
        mov     ecx, dword [?_323]                      ; 0D55 _ 8B. 0D, 00000010(d)
        mov     edx, dword [_g_Console]                 ; 0D5B _ 8B. 15, 00000008(d)
        mov     eax, dword [_shtctl]                    ; 0D61 _ A1, 00000264(d)
        mov     ebx, dword [ebp-18H]                    ; 0D66 _ 8B. 5D, E8
        mov     dword [esp+14H], ebx                    ; 0D69 _ 89. 5C 24, 14
        mov     dword [esp+10H], 7                      ; 0D6D _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ecx                    ; 0D75 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 16                      ; 0D79 _ C7. 44 24, 08, 00000010
        mov     dword [esp+4H], edx                     ; 0D81 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0D85 _ 89. 04 24
        call    _showString                             ; 0D88 _ E8, 00001252
        mov     dword [ebp-1CH], 136                    ; 0D8D _ C7. 45, E4, 00000088
        mov     eax, dword [ebp-0CH]                    ; 0D94 _ 8B. 45, F4
        mov     eax, dword [eax+1CH]                    ; 0D97 _ 8B. 40, 1C
        mov     dword [esp], eax                        ; 0D9A _ 89. 04 24
        call    _intToHexStr                            ; 0D9D _ E8, 0000179E
        mov     dword [ebp-20H], eax                    ; 0DA2 _ 89. 45, E0
        mov     ecx, dword [?_323]                      ; 0DA5 _ 8B. 0D, 00000010(d)
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
        call    _showString                             ; 0DD7 _ E8, 00001203
        mov     edx, dword [_g_Console]                 ; 0DDC _ 8B. 15, 00000008(d)
        mov     eax, dword [?_323]                      ; 0DE2 _ A1, 00000010(d)
        mov     dword [esp+4H], edx                     ; 0DE7 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0DEB _ 89. 04 24
        call    _cons_newline                           ; 0DEE _ E8, 00000BD3
        mov     dword [?_323], eax                      ; 0DF3 _ A3, 00000010(d)
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
        mov     dword [?_322], 16                       ; 0F82 _ C7. 05, 0000000C(d), 00000010
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
?_049:  mov     ebx, dword [?_323]                      ; 0FB2 _ 8B. 1D, 00000010(d)
        mov     ecx, dword [?_322]                      ; 0FB8 _ 8B. 0D, 0000000C(d)
        mov     edx, dword [_g_Console]                 ; 0FBE _ 8B. 15, 00000008(d)
        mov     eax, dword [_shtctl]                    ; 0FC4 _ A1, 00000264(d)
        mov     dword [esp+14H], ?_304                  ; 0FC9 _ C7. 44 24, 14, 00000024(d)
        mov     dword [esp+10H], 7                      ; 0FD1 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ebx                    ; 0FD9 _ 89. 5C 24, 0C
        mov     dword [esp+8H], ecx                     ; 0FDD _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 0FE1 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0FE5 _ 89. 04 24
        call    _showString                             ; 0FE8 _ E8, 00000FF2
        mov     eax, dword [?_322]                      ; 0FED _ A1, 0000000C(d)
        add     eax, 8                                  ; 0FF2 _ 83. C0, 08
        mov     dword [?_322], eax                      ; 0FF5 _ A3, 0000000C(d)
        mov     eax, dword [?_322]                      ; 0FFA _ A1, 0000000C(d)
        cmp     eax, 248                                ; 0FFF _ 3D, 000000F8
        jnz     ?_049                                   ; 1004 _ 75, AC
        mov     dword [?_322], 8                        ; 1006 _ C7. 05, 0000000C(d), 00000008
        mov     edx, dword [_g_Console]                 ; 1010 _ 8B. 15, 00000008(d)
        mov     eax, dword [?_323]                      ; 1016 _ A1, 00000010(d)
        mov     dword [esp+4H], edx                     ; 101B _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 101F _ 89. 04 24
        call    _cons_newline                           ; 1022 _ E8, 0000099F
        mov     dword [?_323], eax                      ; 1027 _ A3, 00000010(d)
        jmp     ?_049                                   ; 102C _ EB, 84

?_050:  movzx   eax, byte [ebp-3BH]                     ; 102E _ 0F B6. 45, C5
        cmp     al, 10                                  ; 1032 _ 3C, 0A
        jnz     ?_051                                   ; 1034 _ 75, 2B
        mov     dword [?_322], 8                        ; 1036 _ C7. 05, 0000000C(d), 00000008
        mov     edx, dword [_g_Console]                 ; 1040 _ 8B. 15, 00000008(d)
        mov     eax, dword [?_323]                      ; 1046 _ A1, 00000010(d)
        mov     dword [esp+4H], edx                     ; 104B _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 104F _ 89. 04 24
        call    _cons_newline                           ; 1052 _ E8, 0000096F
        mov     dword [?_323], eax                      ; 1057 _ A3, 00000010(d)
        jmp     ?_052                                   ; 105C _ E9, 00000082

?_051:  movzx   eax, byte [ebp-3BH]                     ; 1061 _ 0F B6. 45, C5
        cmp     al, 13                                  ; 1065 _ 3C, 0D
        jz      ?_052                                   ; 1067 _ 74, 7A
        mov     esi, dword [?_323]                      ; 1069 _ 8B. 35, 00000010(d)
        mov     ebx, dword [?_322]                      ; 106F _ 8B. 1D, 0000000C(d)
        mov     ecx, dword [_g_Console]                 ; 1075 _ 8B. 0D, 00000008(d)
        mov     edx, dword [_shtctl]                    ; 107B _ 8B. 15, 00000264(d)
        lea     eax, [ebp-3BH]                          ; 1081 _ 8D. 45, C5
        mov     dword [esp+14H], eax                    ; 1084 _ 89. 44 24, 14
        mov     dword [esp+10H], 7                      ; 1088 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], esi                    ; 1090 _ 89. 74 24, 0C
        mov     dword [esp+8H], ebx                     ; 1094 _ 89. 5C 24, 08
        mov     dword [esp+4H], ecx                     ; 1098 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 109C _ 89. 14 24
        call    _showString                             ; 109F _ E8, 00000F3B
        mov     eax, dword [?_322]                      ; 10A4 _ A1, 0000000C(d)
        add     eax, 8                                  ; 10A9 _ 83. C0, 08
        mov     dword [?_322], eax                      ; 10AC _ A3, 0000000C(d)
        mov     eax, dword [?_322]                      ; 10B1 _ A1, 0000000C(d)
        cmp     eax, 248                                ; 10B6 _ 3D, 000000F8
        jnz     ?_052                                   ; 10BB _ 75, 26
        mov     dword [?_322], 16                       ; 10BD _ C7. 05, 0000000C(d), 00000010
        mov     edx, dword [_g_Console]                 ; 10C7 _ 8B. 15, 00000008(d)
        mov     eax, dword [?_323]                      ; 10CD _ A1, 00000010(d)
        mov     dword [esp+4H], edx                     ; 10D2 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 10D6 _ 89. 04 24
        call    _cons_newline                           ; 10D9 _ E8, 000008E8
        mov     dword [?_323], eax                      ; 10DE _ A3, 00000010(d)
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
        mov     eax, dword [?_323]                      ; 110E _ A1, 00000010(d)
        mov     dword [esp+4H], edx                     ; 1113 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1117 _ 89. 04 24
        call    _cons_newline                           ; 111A _ E8, 000008A7
        mov     dword [?_323], eax                      ; 111F _ A3, 00000010(d)
        mov     edx, dword [ebp-24H]                    ; 1124 _ 8B. 55, DC
        mov     eax, dword [_memman]                    ; 1127 _ A1, 00000000(d)
        mov     dword [esp+8H], 13                      ; 112C _ C7. 44 24, 08, 0000000D
        mov     dword [esp+4H], edx                     ; 1134 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1138 _ 89. 04 24
        call    _memman_free                            ; 113B _ E8, 00000000(rel)
        mov     dword [?_322], 16                       ; 1140 _ C7. 05, 0000000C(d), 00000010
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
        call    _intToHexStr                            ; 116D _ E8, 000013CE
        mov     dword [ebp-0CH], eax                    ; 1172 _ 89. 45, F4
        mov     ecx, dword [?_323]                      ; 1175 _ 8B. 0D, 00000010(d)
        mov     edx, dword [_g_Console]                 ; 117B _ 8B. 15, 00000008(d)
        mov     eax, dword [_shtctl]                    ; 1181 _ A1, 00000264(d)
        mov     dword [esp+14H], ?_305                  ; 1186 _ C7. 44 24, 14, 00000026(d)
        mov     dword [esp+10H], 7                      ; 118E _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ecx                    ; 1196 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 16                      ; 119A _ C7. 44 24, 08, 00000010
        mov     dword [esp+4H], edx                     ; 11A2 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 11A6 _ 89. 04 24
        call    _showString                             ; 11A9 _ E8, 00000E31
        mov     ecx, dword [?_323]                      ; 11AE _ 8B. 0D, 00000010(d)
        mov     edx, dword [_g_Console]                 ; 11B4 _ 8B. 15, 00000008(d)
        mov     eax, dword [_shtctl]                    ; 11BA _ A1, 00000264(d)
        mov     ebx, dword [ebp-0CH]                    ; 11BF _ 8B. 5D, F4
        mov     dword [esp+14H], ebx                    ; 11C2 _ 89. 5C 24, 14
        mov     dword [esp+10H], 7                      ; 11C6 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ecx                    ; 11CE _ 89. 4C 24, 0C
        mov     dword [esp+8H], 52                      ; 11D2 _ C7. 44 24, 08, 00000034
        mov     dword [esp+4H], edx                     ; 11DA _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 11DE _ 89. 04 24
        call    _showString                             ; 11E1 _ E8, 00000DF9
        mov     ecx, dword [?_323]                      ; 11E6 _ 8B. 0D, 00000010(d)
        mov     edx, dword [_g_Console]                 ; 11EC _ 8B. 15, 00000008(d)
        mov     eax, dword [_shtctl]                    ; 11F2 _ A1, 00000264(d)
        mov     dword [esp+14H], ?_306                  ; 11F7 _ C7. 44 24, 14, 0000002C(d)
        mov     dword [esp+10H], 7                      ; 11FF _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ecx                    ; 1207 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 126                     ; 120B _ C7. 44 24, 08, 0000007E
        mov     dword [esp+4H], edx                     ; 1213 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1217 _ 89. 04 24
        call    _showString                             ; 121A _ E8, 00000DC0
        mov     edx, dword [_g_Console]                 ; 121F _ 8B. 15, 00000008(d)
        mov     eax, dword [?_323]                      ; 1225 _ A1, 00000010(d)
        mov     dword [esp+4H], edx                     ; 122A _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 122E _ 89. 04 24
        call    _cons_newline                           ; 1231 _ E8, 00000790
        mov     dword [?_323], eax                      ; 1236 _ A3, 00000010(d)
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
        mov     dword [?_323], 28                       ; 12D6 _ C7. 05, 00000010(d), 0000001C
        mov     edx, dword [_g_Console]                 ; 12E0 _ 8B. 15, 00000008(d)
        mov     eax, dword [_shtctl]                    ; 12E6 _ A1, 00000264(d)
        mov     dword [esp+14H], ?_307                  ; 12EB _ C7. 44 24, 14, 00000030(d)
        mov     dword [esp+10H], 7                      ; 12F3 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 28                     ; 12FB _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 8                       ; 1303 _ C7. 44 24, 08, 00000008
        mov     dword [esp+4H], edx                     ; 130B _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 130F _ 89. 04 24
        call    _showString                             ; 1312 _ E8, 00000CC8
        nop                                             ; 1317 _ 90
        leave                                           ; 1318 _ C9
        ret                                             ; 1319 _ C3
; _cmd_cls End of function

_cmd_hlt:; Function begin
        push    ebp                                     ; 131A _ 55
        mov     ebp, esp                                ; 131B _ 89. E5
        sub     esp, 56                                 ; 131D _ 83. EC, 38
        mov     dword [esp+4H], _buffer                 ; 1320 _ C7. 44 24, 04, 00000278(d)
        mov     dword [esp], ?_308                      ; 1328 _ C7. 04 24, 00000032(d)
        call    _file_loadfile                          ; 132F _ E8, 00001E75
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
        mov     edx, dword [ebp-10H]                    ; 137D _ 8B. 55, F0
        mov     eax, dword [ebp-0CH]                    ; 1380 _ 8B. 45, F4
        add     eax, 96                                 ; 1383 _ 83. C0, 60
        mov     dword [esp+0CH], 16626                  ; 1386 _ C7. 44 24, 0C, 000040F2
        mov     dword [esp+8H], edx                     ; 138E _ 89. 54 24, 08
        mov     dword [esp+4H], 65535                   ; 1392 _ C7. 44 24, 04, 0000FFFF
        mov     dword [esp], eax                        ; 139A _ 89. 04 24
        call    _set_segmdesc                           ; 139D _ E8, 00000000(rel)
        call    _task_now                               ; 13A2 _ E8, 00000000(rel)
        mov     dword [ebp-14H], eax                    ; 13A7 _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 13AA _ 8B. 45, EC
        mov     dword [eax+30H], 0                      ; 13AD _ C7. 40, 30, 00000000
        mov     eax, dword [ebp-14H]                    ; 13B4 _ 8B. 45, EC
        add     eax, 48                                 ; 13B7 _ 83. C0, 30
        mov     dword [esp+10H], eax                    ; 13BA _ 89. 44 24, 10
        mov     dword [esp+0CH], 96                     ; 13BE _ C7. 44 24, 0C, 00000060
        mov     dword [esp+8H], 65536                   ; 13C6 _ C7. 44 24, 08, 00010000
        mov     dword [esp+4H], 88                      ; 13CE _ C7. 44 24, 04, 00000058
        mov     dword [esp], 0                          ; 13D6 _ C7. 04 24, 00000000
        call    _start_app                              ; 13DD _ E8, 00000000(rel)
        mov     eax, dword [?_331]                      ; 13E2 _ A1, 0000027C(d)
        mov     ecx, eax                                ; 13E7 _ 89. C1
        mov     eax, dword [_buffer]                    ; 13E9 _ A1, 00000278(d)
        mov     edx, eax                                ; 13EE _ 89. C2
        mov     eax, dword [_memman]                    ; 13F0 _ A1, 00000000(d)
        mov     dword [esp+8H], ecx                     ; 13F5 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 13F9 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 13FD _ 89. 04 24
        call    _memman_free_4k                         ; 1400 _ E8, 00000000(rel)
        mov     edx, dword [ebp-10H]                    ; 1405 _ 8B. 55, F0
        mov     eax, dword [_memman]                    ; 1408 _ A1, 00000000(d)
        mov     dword [esp+8H], 65536                   ; 140D _ C7. 44 24, 08, 00010000
        mov     dword [esp+4H], edx                     ; 1415 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1419 _ 89. 04 24
        call    _memman_free_4k                         ; 141C _ E8, 00000000(rel)
        nop                                             ; 1421 _ 90
        leave                                           ; 1422 _ C9
        ret                                             ; 1423 _ C3
; _cmd_hlt End of function

_console_task:; Function begin
        push    ebp                                     ; 1424 _ 55
        mov     ebp, esp                                ; 1425 _ 89. E5
        push    ebx                                     ; 1427 _ 53
        sub     esp, 84                                 ; 1428 _ 83. EC, 54
        call    _task_now                               ; 142B _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 1430 _ 89. 45, F0
        mov     dword [ebp-0CH], 0                      ; 1433 _ C7. 45, F4, 00000000
        mov     dword [ebp-14H], 0                      ; 143A _ C7. 45, EC, 00000000
        mov     dword [ebp-18H], 0                      ; 1441 _ C7. 45, E8, 00000000
        mov     eax, dword [_memman]                    ; 1448 _ A1, 00000000(d)
        mov     dword [esp+4H], 128                     ; 144D _ C7. 44 24, 04, 00000080
        mov     dword [esp], eax                        ; 1455 _ 89. 04 24
        call    _memman_alloc                           ; 1458 _ E8, 00000000(rel)
        mov     dword [ebp-1CH], eax                    ; 145D _ 89. 45, E4
        mov     eax, dword [_memman]                    ; 1460 _ A1, 00000000(d)
        mov     dword [esp+4H], 30                      ; 1465 _ C7. 44 24, 04, 0000001E
        mov     dword [esp], eax                        ; 146D _ 89. 04 24
        call    _memman_alloc                           ; 1470 _ E8, 00000000(rel)
        mov     dword [ebp-20H], eax                    ; 1475 _ 89. 45, E0
        mov     eax, dword [ebp+8H]                     ; 1478 _ 8B. 45, 08
        mov     dword [_g_Console], eax                 ; 147B _ A3, 00000008(d)
        mov     dword [?_322], 16                       ; 1480 _ C7. 05, 0000000C(d), 00000010
        mov     dword [?_323], 28                       ; 148A _ C7. 05, 00000010(d), 0000001C
        mov     dword [?_324], -1                       ; 1494 _ C7. 05, 00000014(d), FFFFFFFF
        mov     eax, dword [ebp-10H]                    ; 149E _ 8B. 45, F0
        add     eax, 16                                 ; 14A1 _ 83. C0, 10
        mov     edx, dword [ebp-10H]                    ; 14A4 _ 8B. 55, F0
        mov     dword [esp+0CH], edx                    ; 14A7 _ 89. 54 24, 0C
        mov     edx, dword [ebp-1CH]                    ; 14AB _ 8B. 55, E4
        mov     dword [esp+8H], edx                     ; 14AE _ 89. 54 24, 08
        mov     dword [esp+4H], 128                     ; 14B2 _ C7. 44 24, 04, 00000080
        mov     dword [esp], eax                        ; 14BA _ 89. 04 24
        call    _fifo8_init                             ; 14BD _ E8, 00000000(rel)
        call    _timer_alloc                            ; 14C2 _ E8, 00000000(rel)
        mov     dword [ebp-24H], eax                    ; 14C7 _ 89. 45, DC
        mov     eax, dword [ebp-10H]                    ; 14CA _ 8B. 45, F0
        add     eax, 16                                 ; 14CD _ 83. C0, 10
        mov     dword [esp+8H], 1                       ; 14D0 _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], eax                     ; 14D8 _ 89. 44 24, 04
        mov     eax, dword [ebp-24H]                    ; 14DC _ 8B. 45, DC
        mov     dword [esp], eax                        ; 14DF _ 89. 04 24
        call    _timer_init                             ; 14E2 _ E8, 00000000(rel)
        mov     dword [esp+4H], 50                      ; 14E7 _ C7. 44 24, 04, 00000032
        mov     eax, dword [ebp-24H]                    ; 14EF _ 8B. 45, DC
        mov     dword [esp], eax                        ; 14F2 _ 89. 04 24
        call    _timer_settime                          ; 14F5 _ E8, 00000000(rel)
        mov     eax, dword [_shtctl]                    ; 14FA _ A1, 00000264(d)
        mov     dword [esp+14H], ?_307                  ; 14FF _ C7. 44 24, 14, 00000030(d)
        mov     dword [esp+10H], 7                      ; 1507 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 28                     ; 150F _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 8                       ; 1517 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp+8H]                     ; 151F _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 1522 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1526 _ 89. 04 24
        call    _showString                             ; 1529 _ E8, 00000AB1
        mov     dword [ebp-28H], 0                      ; 152E _ C7. 45, D8, 00000000
        mov     dword [ebp-2CH], 78848                  ; 1535 _ C7. 45, D4, 00013400
?_061:  call    _io_cli                                 ; 153C _ E8, 00000000(rel)
        mov     eax, dword [ebp-10H]                    ; 1541 _ 8B. 45, F0
        add     eax, 16                                 ; 1544 _ 83. C0, 10
        mov     dword [esp], eax                        ; 1547 _ 89. 04 24
        call    _fifo8_status                           ; 154A _ E8, 00000000(rel)
        test    eax, eax                                ; 154F _ 85. C0
        jnz     ?_062                                   ; 1551 _ 75, 07
        call    _io_sti                                 ; 1553 _ E8, 00000000(rel)
        jmp     ?_061                                   ; 1558 _ EB, E2
; _console_task End of function

?_062:  ; Local function
        call    _io_sti                                 ; 155A _ E8, 00000000(rel)
        mov     eax, dword [ebp-10H]                    ; 155F _ 8B. 45, F0
        add     eax, 16                                 ; 1562 _ 83. C0, 10
        mov     dword [esp], eax                        ; 1565 _ 89. 04 24
        call    _fifo8_get                              ; 1568 _ E8, 00000000(rel)
        mov     dword [ebp-30H], eax                    ; 156D _ 89. 45, D0
        cmp     dword [ebp-30H], 1                      ; 1570 _ 83. 7D, D0, 01
        jg      ?_065                                   ; 1574 _ 7F, 6E
        cmp     dword [ebp-0CH], 0                      ; 1576 _ 83. 7D, F4, 00
        js      ?_065                                   ; 157A _ 78, 68
        cmp     dword [ebp-30H], 0                      ; 157C _ 83. 7D, D0, 00
        jz      ?_063                                   ; 1580 _ 74, 26
        mov     eax, dword [ebp-10H]                    ; 1582 _ 8B. 45, F0
        add     eax, 16                                 ; 1585 _ 83. C0, 10
        mov     dword [esp+8H], 0                       ; 1588 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], eax                     ; 1590 _ 89. 44 24, 04
        mov     eax, dword [ebp-24H]                    ; 1594 _ 8B. 45, DC
        mov     dword [esp], eax                        ; 1597 _ 89. 04 24
        call    _timer_init                             ; 159A _ E8, 00000000(rel)
        mov     dword [ebp-0CH], 7                      ; 159F _ C7. 45, F4, 00000007
        jmp     ?_064                                   ; 15A6 _ EB, 24

?_063:  mov     eax, dword [ebp-10H]                    ; 15A8 _ 8B. 45, F0
        add     eax, 16                                 ; 15AB _ 83. C0, 10
        mov     dword [esp+8H], 1                       ; 15AE _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], eax                     ; 15B6 _ 89. 44 24, 04
        mov     eax, dword [ebp-24H]                    ; 15BA _ 8B. 45, DC
        mov     dword [esp], eax                        ; 15BD _ 89. 04 24
        call    _timer_init                             ; 15C0 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], 0                      ; 15C5 _ C7. 45, F4, 00000000
?_064:  mov     dword [esp+4H], 50                      ; 15CC _ C7. 44 24, 04, 00000032
        mov     eax, dword [ebp-24H]                    ; 15D4 _ 8B. 45, DC
        mov     dword [esp], eax                        ; 15D7 _ 89. 04 24
        call    _timer_settime                          ; 15DA _ E8, 00000000(rel)
        jmp     ?_075                                   ; 15DF _ E9, 000002CB

?_065:  cmp     dword [ebp-30H], 87                     ; 15E4 _ 83. 7D, D0, 57
        jnz     ?_066                                   ; 15E8 _ 75, 3C
        mov     dword [ebp-0CH], 7                      ; 15EA _ C7. 45, F4, 00000007
        mov     eax, dword [ebp-10H]                    ; 15F1 _ 8B. 45, F0
        add     eax, 16                                 ; 15F4 _ 83. C0, 10
        mov     dword [esp+8H], 0                       ; 15F7 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], eax                     ; 15FF _ 89. 44 24, 04
        mov     eax, dword [ebp-24H]                    ; 1603 _ 8B. 45, DC
        mov     dword [esp], eax                        ; 1606 _ 89. 04 24
        call    _timer_init                             ; 1609 _ E8, 00000000(rel)
        mov     dword [esp+4H], 50                      ; 160E _ C7. 44 24, 04, 00000032
        mov     eax, dword [ebp-24H]                    ; 1616 _ 8B. 45, DC
        mov     dword [esp], eax                        ; 1619 _ 89. 04 24
        call    _timer_settime                          ; 161C _ E8, 00000000(rel)
        jmp     ?_075                                   ; 1621 _ E9, 00000289

?_066:  cmp     dword [ebp-30H], 88                     ; 1626 _ 83. 7D, D0, 58
        jnz     ?_067                                   ; 162A _ 75, 59
        mov     ecx, dword [?_323]                      ; 162C _ 8B. 0D, 00000010(d)
        mov     edx, dword [?_322]                      ; 1632 _ 8B. 15, 0000000C(d)
        mov     eax, dword [_shtctl]                    ; 1638 _ A1, 00000264(d)
        mov     dword [esp+10H], 0                      ; 163D _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], ecx                    ; 1645 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 1649 _ 89. 54 24, 08
        mov     edx, dword [ebp+8H]                     ; 164D _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 1650 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1654 _ 89. 04 24
        call    _set_cursor                             ; 1657 _ E8, FFFFF261
        mov     dword [ebp-0CH], -1                     ; 165C _ C7. 45, F4, FFFFFFFF
        mov     eax, dword [_task_main]                 ; 1663 _ A1, 00000274(d)
        mov     dword [esp+8H], 0                       ; 1668 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], -1                      ; 1670 _ C7. 44 24, 04, FFFFFFFF
        mov     dword [esp], eax                        ; 1678 _ 89. 04 24
        call    _task_run                               ; 167B _ E8, 00000000(rel)
        jmp     ?_075                                   ; 1680 _ E9, 0000022A

?_067:  cmp     dword [ebp-30H], 28                     ; 1685 _ 83. 7D, D0, 1C
        jne     ?_073                                   ; 1689 _ 0F 85, 00000134
        mov     ecx, dword [?_323]                      ; 168F _ 8B. 0D, 00000010(d)
        mov     edx, dword [?_322]                      ; 1695 _ 8B. 15, 0000000C(d)
        mov     eax, dword [_shtctl]                    ; 169B _ A1, 00000264(d)
        mov     dword [esp+10H], 0                      ; 16A0 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], ecx                    ; 16A8 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 16AC _ 89. 54 24, 08
        mov     edx, dword [ebp+8H]                     ; 16B0 _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 16B3 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 16B7 _ 89. 04 24
        call    _set_cursor                             ; 16BA _ E8, FFFFF1FE
        mov     eax, dword [?_322]                      ; 16BF _ A1, 0000000C(d)
        lea     edx, [eax+7H]                           ; 16C4 _ 8D. 50, 07
        test    eax, eax                                ; 16C7 _ 85. C0
        cmovs   eax, edx                                ; 16C9 _ 0F 48. C2
        sar     eax, 3                                  ; 16CC _ C1. F8, 03
        lea     edx, [eax-2H]                           ; 16CF _ 8D. 50, FE
        mov     eax, dword [ebp-20H]                    ; 16D2 _ 8B. 45, E0
        add     eax, edx                                ; 16D5 _ 01. D0
        mov     byte [eax], 0                           ; 16D7 _ C6. 00, 00
        mov     eax, dword [?_323]                      ; 16DA _ A1, 00000010(d)
        mov     edx, dword [ebp+8H]                     ; 16DF _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 16E2 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 16E6 _ 89. 04 24
        call    _cons_newline                           ; 16E9 _ E8, 000002D8
        mov     dword [?_323], eax                      ; 16EE _ A3, 00000010(d)
        mov     dword [esp+4H], ?_309                   ; 16F3 _ C7. 44 24, 04, 0000003A(d)
        mov     eax, dword [ebp-20H]                    ; 16FB _ 8B. 45, E0
        mov     dword [esp], eax                        ; 16FE _ 89. 04 24
        call    _strcmp                                 ; 1701 _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 1706 _ 83. F8, 01
        jnz     ?_068                                   ; 1709 _ 75, 10
        mov     eax, dword [ebp+0CH]                    ; 170B _ 8B. 45, 0C
        mov     dword [esp], eax                        ; 170E _ 89. 04 24
        call    _cmd_mem                                ; 1711 _ E8, FFFFFA3C
        jmp     ?_072                                   ; 1716 _ E9, 00000099

?_068:  mov     dword [esp+4H], ?_310                   ; 171B _ C7. 44 24, 04, 0000003E(d)
        mov     eax, dword [ebp-20H]                    ; 1723 _ 8B. 45, E0
        mov     dword [esp], eax                        ; 1726 _ 89. 04 24
        call    _strcmp                                 ; 1729 _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 172E _ 83. F8, 01
        jnz     ?_069                                   ; 1731 _ 75, 07
        call    _cmd_cls                                ; 1733 _ E8, FFFFFB0A
        jmp     ?_072                                   ; 1738 _ EB, 7A

?_069:  mov     dword [esp+4H], ?_311                   ; 173A _ C7. 44 24, 04, 00000042(d)
        mov     eax, dword [ebp-20H]                    ; 1742 _ 8B. 45, E0
        mov     dword [esp], eax                        ; 1745 _ 89. 04 24
        call    _strcmp                                 ; 1748 _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 174D _ 83. F8, 01
        jnz     ?_070                                   ; 1750 _ 75, 07
        call    _cmd_hlt                                ; 1752 _ E8, FFFFFBC3
        jmp     ?_072                                   ; 1757 _ EB, 5B

?_070:  mov     dword [esp+4H], ?_312                   ; 1759 _ C7. 44 24, 04, 00000046(d)
        mov     eax, dword [ebp-20H]                    ; 1761 _ 8B. 45, E0
        mov     dword [esp], eax                        ; 1764 _ 89. 04 24
        call    _strcmp                                 ; 1767 _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 176C _ 83. F8, 01
        jnz     ?_071                                   ; 176F _ 75, 07
        call    _cmd_dir                                ; 1771 _ E8, FFFFF528
        jmp     ?_072                                   ; 1776 _ EB, 3C

?_071:  mov     eax, dword [ebp-20H]                    ; 1778 _ 8B. 45, E0
        movzx   eax, byte [eax]                         ; 177B _ 0F B6. 00
        cmp     al, 116                                 ; 177E _ 3C, 74
        jnz     ?_072                                   ; 1780 _ 75, 32
        mov     eax, dword [ebp-20H]                    ; 1782 _ 8B. 45, E0
        add     eax, 1                                  ; 1785 _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 1788 _ 0F B6. 00
        cmp     al, 121                                 ; 178B _ 3C, 79
        jnz     ?_072                                   ; 178D _ 75, 25
        mov     eax, dword [ebp-20H]                    ; 178F _ 8B. 45, E0
        add     eax, 2                                  ; 1792 _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 1795 _ 0F B6. 00
        cmp     al, 112                                 ; 1798 _ 3C, 70
        jnz     ?_072                                   ; 179A _ 75, 18
        mov     eax, dword [ebp-20H]                    ; 179C _ 8B. 45, E0
        add     eax, 3                                  ; 179F _ 83. C0, 03
        movzx   eax, byte [eax]                         ; 17A2 _ 0F B6. 00
        cmp     al, 101                                 ; 17A5 _ 3C, 65
        jnz     ?_072                                   ; 17A7 _ 75, 0B
        mov     eax, dword [ebp-20H]                    ; 17A9 _ 8B. 45, E0
        mov     dword [esp], eax                        ; 17AC _ 89. 04 24
        call    _cmd_type                               ; 17AF _ E8, FFFFF679
?_072:  mov     dword [?_322], 16                       ; 17B4 _ C7. 05, 0000000C(d), 00000010
        jmp     ?_075                                   ; 17BE _ E9, 000000EC

?_073:  cmp     dword [ebp-30H], 14                     ; 17C3 _ 83. 7D, D0, 0E
        jnz     ?_074                                   ; 17C7 _ 75, 79
        mov     eax, dword [?_322]                      ; 17C9 _ A1, 0000000C(d)
        cmp     eax, 8                                  ; 17CE _ 83. F8, 08
        jle     ?_074                                   ; 17D1 _ 7E, 6F
        mov     ecx, dword [?_323]                      ; 17D3 _ 8B. 0D, 00000010(d)
        mov     edx, dword [?_322]                      ; 17D9 _ 8B. 15, 0000000C(d)
        mov     eax, dword [_shtctl]                    ; 17DF _ A1, 00000264(d)
        mov     dword [esp+10H], 0                      ; 17E4 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], ecx                    ; 17EC _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 17F0 _ 89. 54 24, 08
        mov     edx, dword [ebp+8H]                     ; 17F4 _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 17F7 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 17FB _ 89. 04 24
        call    _set_cursor                             ; 17FE _ E8, FFFFF0BA
        mov     eax, dword [?_322]                      ; 1803 _ A1, 0000000C(d)
        sub     eax, 8                                  ; 1808 _ 83. E8, 08
        mov     dword [?_322], eax                      ; 180B _ A3, 0000000C(d)
        mov     ecx, dword [?_323]                      ; 1810 _ 8B. 0D, 00000010(d)
        mov     edx, dword [?_322]                      ; 1816 _ 8B. 15, 0000000C(d)
        mov     eax, dword [_shtctl]                    ; 181C _ A1, 00000264(d)
        mov     dword [esp+10H], 0                      ; 1821 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], ecx                    ; 1829 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 182D _ 89. 54 24, 08
        mov     edx, dword [ebp+8H]                     ; 1831 _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 1834 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1838 _ 89. 04 24
        call    _set_cursor                             ; 183B _ E8, FFFFF07D
        jmp     ?_075                                   ; 1840 _ EB, 6D

?_074:  mov     eax, dword [ebp-30H]                    ; 1842 _ 8B. 45, D0
        mov     dword [esp], eax                        ; 1845 _ 89. 04 24
        call    _transferScanCode                       ; 1848 _ E8, FFFFF143
        mov     byte [ebp-31H], al                      ; 184D _ 88. 45, CF
        mov     eax, dword [?_322]                      ; 1850 _ A1, 0000000C(d)
        cmp     eax, 239                                ; 1855 _ 3D, 000000EF
        jg      ?_075                                   ; 185A _ 7F, 53
        cmp     byte [ebp-31H], 0                       ; 185C _ 80. 7D, CF, 00
        jz      ?_075                                   ; 1860 _ 74, 4D
        mov     eax, dword [?_322]                      ; 1862 _ A1, 0000000C(d)
        lea     edx, [eax+7H]                           ; 1867 _ 8D. 50, 07
        test    eax, eax                                ; 186A _ 85. C0
        cmovs   eax, edx                                ; 186C _ 0F 48. C2
        sar     eax, 3                                  ; 186F _ C1. F8, 03
        lea     edx, [eax-2H]                           ; 1872 _ 8D. 50, FE
        mov     eax, dword [ebp-20H]                    ; 1875 _ 8B. 45, E0
        add     edx, eax                                ; 1878 _ 01. C2
        movzx   eax, byte [ebp-31H]                     ; 187A _ 0F B6. 45, CF
        mov     byte [edx], al                          ; 187E _ 88. 02
        mov     eax, dword [?_322]                      ; 1880 _ A1, 0000000C(d)
        lea     edx, [eax+7H]                           ; 1885 _ 8D. 50, 07
        test    eax, eax                                ; 1888 _ 85. C0
        cmovs   eax, edx                                ; 188A _ 0F 48. C2
        sar     eax, 3                                  ; 188D _ C1. F8, 03
        lea     edx, [eax-1H]                           ; 1890 _ 8D. 50, FF
        mov     eax, dword [ebp-20H]                    ; 1893 _ 8B. 45, E0
        add     eax, edx                                ; 1896 _ 01. D0
        mov     byte [eax], 0                           ; 1898 _ C6. 00, 00
        movsx   eax, byte [ebp-31H]                     ; 189B _ 0F BE. 45, CF
        mov     dword [esp+4H], 1                       ; 189F _ C7. 44 24, 04, 00000001
        mov     dword [esp], eax                        ; 18A7 _ 89. 04 24
        call    _cons_putchar                           ; 18AA _ E8, 0000003E
?_075:  cmp     dword [ebp-0CH], 0                      ; 18AF _ 83. 7D, F4, 00
        js      ?_061                                   ; 18B3 _ 0F 88, FFFFFC83
        mov     ecx, dword [?_323]                      ; 18B9 _ 8B. 0D, 00000010(d)
        mov     edx, dword [?_322]                      ; 18BF _ 8B. 15, 0000000C(d)
        mov     eax, dword [_shtctl]                    ; 18C5 _ A1, 00000264(d)
        mov     ebx, dword [ebp-0CH]                    ; 18CA _ 8B. 5D, F4
        mov     dword [esp+10H], ebx                    ; 18CD _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 18D1 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 18D5 _ 89. 54 24, 08
        mov     edx, dword [ebp+8H]                     ; 18D9 _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 18DC _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 18E0 _ 89. 04 24
        call    _set_cursor                             ; 18E3 _ E8, FFFFEFD5
        jmp     ?_061                                   ; 18E8 _ E9, FFFFFC4F

_cons_putchar:; Function begin
        push    ebp                                     ; 18ED _ 55
        mov     ebp, esp                                ; 18EE _ 89. E5
        push    ebx                                     ; 18F0 _ 53
        sub     esp, 52                                 ; 18F1 _ 83. EC, 34
        mov     eax, dword [ebp+8H]                     ; 18F4 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 18F7 _ 8B. 55, 0C
        mov     byte [ebp-0CH], al                      ; 18FA _ 88. 45, F4
        mov     eax, edx                                ; 18FD _ 89. D0
        mov     byte [ebp-10H], al                      ; 18FF _ 88. 45, F0
        mov     ebx, dword [?_323]                      ; 1902 _ 8B. 1D, 00000010(d)
        mov     ecx, dword [?_322]                      ; 1908 _ 8B. 0D, 0000000C(d)
        mov     edx, dword [_g_Console]                 ; 190E _ 8B. 15, 00000008(d)
        mov     eax, dword [_shtctl]                    ; 1914 _ A1, 00000264(d)
        mov     dword [esp+10H], 0                      ; 1919 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], ebx                    ; 1921 _ 89. 5C 24, 0C
        mov     dword [esp+8H], ecx                     ; 1925 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 1929 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 192D _ 89. 04 24
        call    _set_cursor                             ; 1930 _ E8, FFFFEF88
        movzx   eax, byte [ebp-0CH]                     ; 1935 _ 0F B6. 45, F4
        mov     byte [?_325], al                        ; 1939 _ A2, 00000018(d)
        mov     byte [?_326], 0                         ; 193E _ C6. 05, 00000019(d), 00
        mov     ebx, dword [?_323]                      ; 1945 _ 8B. 1D, 00000010(d)
        mov     ecx, dword [?_322]                      ; 194B _ 8B. 0D, 0000000C(d)
        mov     edx, dword [_g_Console]                 ; 1951 _ 8B. 15, 00000008(d)
        mov     eax, dword [_shtctl]                    ; 1957 _ A1, 00000264(d)
        mov     dword [esp+14H], ?_325                  ; 195C _ C7. 44 24, 14, 00000018(d)
        mov     dword [esp+10H], 7                      ; 1964 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ebx                    ; 196C _ 89. 5C 24, 0C
        mov     dword [esp+8H], ecx                     ; 1970 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 1974 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1978 _ 89. 04 24
        call    _showString                             ; 197B _ E8, 0000065F
        mov     eax, dword [?_322]                      ; 1980 _ A1, 0000000C(d)
        add     eax, 8                                  ; 1985 _ 83. C0, 08
        mov     dword [?_322], eax                      ; 1988 _ A3, 0000000C(d)
        nop                                             ; 198D _ 90
        add     esp, 52                                 ; 198E _ 83. C4, 34
        pop     ebx                                     ; 1991 _ 5B
        pop     ebp                                     ; 1992 _ 5D
        ret                                             ; 1993 _ C3
; _cons_putchar End of function

_cons_putstr:; Function begin
        push    ebp                                     ; 1994 _ 55
        mov     ebp, esp                                ; 1995 _ 89. E5
        sub     esp, 24                                 ; 1997 _ 83. EC, 18
        jmp     ?_077                                   ; 199A _ EB, 1D

?_076:  mov     eax, dword [ebp+8H]                     ; 199C _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 199F _ 0F B6. 00
        movsx   eax, al                                 ; 19A2 _ 0F BE. C0
        mov     dword [esp+4H], 1                       ; 19A5 _ C7. 44 24, 04, 00000001
        mov     dword [esp], eax                        ; 19AD _ 89. 04 24
        call    _cons_putchar                           ; 19B0 _ E8, FFFFFF38
        add     dword [ebp+8H], 1                       ; 19B5 _ 83. 45, 08, 01
?_077:  mov     eax, dword [ebp+8H]                     ; 19B9 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 19BC _ 0F B6. 00
        test    al, al                                  ; 19BF _ 84. C0
        jnz     ?_076                                   ; 19C1 _ 75, D9
        nop                                             ; 19C3 _ 90
        leave                                           ; 19C4 _ C9
        ret                                             ; 19C5 _ C3
; _cons_putstr End of function

_cons_newline:; Function begin
        push    ebp                                     ; 19C6 _ 55
        mov     ebp, esp                                ; 19C7 _ 89. E5
        push    ebx                                     ; 19C9 _ 53
        sub     esp, 52                                 ; 19CA _ 83. EC, 34
        cmp     dword [ebp+8H], 139                     ; 19CD _ 81. 7D, 08, 0000008B
        jg      ?_078                                   ; 19D4 _ 7F, 09
        add     dword [ebp+8H], 16                      ; 19D6 _ 83. 45, 08, 10
        jmp     ?_087                                   ; 19DA _ E9, 000000DB

?_078:  mov     dword [ebp-10H], 28                     ; 19DF _ C7. 45, F0, 0000001C
        jmp     ?_082                                   ; 19E6 _ EB, 50

?_079:  mov     dword [ebp-0CH], 8                      ; 19E8 _ C7. 45, F4, 00000008
        jmp     ?_081                                   ; 19EF _ EB, 3A

?_080:  mov     eax, dword [ebp+0CH]                    ; 19F1 _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 19F4 _ 8B. 10
        mov     eax, dword [ebp-10H]                    ; 19F6 _ 8B. 45, F0
        lea     ecx, [eax+10H]                          ; 19F9 _ 8D. 48, 10
        mov     eax, dword [ebp+0CH]                    ; 19FC _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 19FF _ 8B. 40, 04
        imul    eax, ecx                                ; 1A02 _ 0F AF. C1
        mov     ecx, dword [ebp-0CH]                    ; 1A05 _ 8B. 4D, F4
        add     eax, ecx                                ; 1A08 _ 01. C8
        add     eax, edx                                ; 1A0A _ 01. D0
        mov     edx, dword [ebp+0CH]                    ; 1A0C _ 8B. 55, 0C
        mov     ecx, dword [edx]                        ; 1A0F _ 8B. 0A
        mov     edx, dword [ebp+0CH]                    ; 1A11 _ 8B. 55, 0C
        mov     edx, dword [edx+4H]                     ; 1A14 _ 8B. 52, 04
        imul    edx, dword [ebp-10H]                    ; 1A17 _ 0F AF. 55, F0
        mov     ebx, dword [ebp-0CH]                    ; 1A1B _ 8B. 5D, F4
        add     edx, ebx                                ; 1A1E _ 01. DA
        add     edx, ecx                                ; 1A20 _ 01. CA
        movzx   eax, byte [eax]                         ; 1A22 _ 0F B6. 00
        mov     byte [edx], al                          ; 1A25 _ 88. 02
        add     dword [ebp-0CH], 1                      ; 1A27 _ 83. 45, F4, 01
?_081:  cmp     dword [ebp-0CH], 247                    ; 1A2B _ 81. 7D, F4, 000000F7
        jle     ?_080                                   ; 1A32 _ 7E, BD
        add     dword [ebp-10H], 1                      ; 1A34 _ 83. 45, F0, 01
?_082:  cmp     dword [ebp-10H], 139                    ; 1A38 _ 81. 7D, F0, 0000008B
        jle     ?_079                                   ; 1A3F _ 7E, A7
        mov     dword [ebp-10H], 140                    ; 1A41 _ C7. 45, F0, 0000008C
        jmp     ?_086                                   ; 1A48 _ EB, 33

?_083:  mov     dword [ebp-0CH], 8                      ; 1A4A _ C7. 45, F4, 00000008
        jmp     ?_085                                   ; 1A51 _ EB, 1D

?_084:  mov     eax, dword [ebp+0CH]                    ; 1A53 _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 1A56 _ 8B. 10
        mov     eax, dword [ebp+0CH]                    ; 1A58 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1A5B _ 8B. 40, 04
        imul    eax, dword [ebp-10H]                    ; 1A5E _ 0F AF. 45, F0
        mov     ecx, dword [ebp-0CH]                    ; 1A62 _ 8B. 4D, F4
        add     eax, ecx                                ; 1A65 _ 01. C8
        add     eax, edx                                ; 1A67 _ 01. D0
        mov     byte [eax], 0                           ; 1A69 _ C6. 00, 00
        add     dword [ebp-0CH], 1                      ; 1A6C _ 83. 45, F4, 01
?_085:  cmp     dword [ebp-0CH], 247                    ; 1A70 _ 81. 7D, F4, 000000F7
        jle     ?_084                                   ; 1A77 _ 7E, DA
        add     dword [ebp-10H], 1                      ; 1A79 _ 83. 45, F0, 01
?_086:  cmp     dword [ebp-10H], 155                    ; 1A7D _ 81. 7D, F0, 0000009B
        jle     ?_083                                   ; 1A84 _ 7E, C4
        mov     eax, dword [_shtctl]                    ; 1A86 _ A1, 00000264(d)
        mov     dword [esp+14H], 156                    ; 1A8B _ C7. 44 24, 14, 0000009C
        mov     dword [esp+10H], 248                    ; 1A93 _ C7. 44 24, 10, 000000F8
        mov     dword [esp+0CH], 28                     ; 1A9B _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 8                       ; 1AA3 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp+0CH]                    ; 1AAB _ 8B. 55, 0C
        mov     dword [esp+4H], edx                     ; 1AAE _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1AB2 _ 89. 04 24
        call    _sheet_refresh                          ; 1AB5 _ E8, 00000000(rel)
?_087:  mov     eax, dword [_shtctl]                    ; 1ABA _ A1, 00000264(d)
        mov     dword [esp+14H], ?_307                  ; 1ABF _ C7. 44 24, 14, 00000030(d)
        mov     dword [esp+10H], 7                      ; 1AC7 _ C7. 44 24, 10, 00000007
        mov     edx, dword [ebp+8H]                     ; 1ACF _ 8B. 55, 08
        mov     dword [esp+0CH], edx                    ; 1AD2 _ 89. 54 24, 0C
        mov     dword [esp+8H], 8                       ; 1AD6 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp+0CH]                    ; 1ADE _ 8B. 55, 0C
        mov     dword [esp+4H], edx                     ; 1AE1 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1AE5 _ 89. 04 24
        call    _showString                             ; 1AE8 _ E8, 000004F2
        mov     eax, dword [ebp+8H]                     ; 1AED _ 8B. 45, 08
        add     esp, 52                                 ; 1AF0 _ 83. C4, 34
        pop     ebx                                     ; 1AF3 _ 5B
        pop     ebp                                     ; 1AF4 _ 5D
        ret                                             ; 1AF5 _ C3
; _cons_newline End of function

_init_screen8:; Function begin
        push    ebp                                     ; 1AF6 _ 55
        mov     ebp, esp                                ; 1AF7 _ 89. E5
        push    ebx                                     ; 1AF9 _ 53
        sub     esp, 36                                 ; 1AFA _ 83. EC, 24
        mov     eax, dword [ebp+10H]                    ; 1AFD _ 8B. 45, 10
        lea     edx, [eax-1DH]                          ; 1B00 _ 8D. 50, E3
        mov     eax, dword [ebp+0CH]                    ; 1B03 _ 8B. 45, 0C
        sub     eax, 1                                  ; 1B06 _ 83. E8, 01
        mov     dword [esp+18H], edx                    ; 1B09 _ 89. 54 24, 18
        mov     dword [esp+14H], eax                    ; 1B0D _ 89. 44 24, 14
        mov     dword [esp+10H], 0                      ; 1B11 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 1B19 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 14                      ; 1B21 _ C7. 44 24, 08, 0000000E
        mov     eax, dword [ebp+0CH]                    ; 1B29 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1B2C _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1B30 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1B33 _ 89. 04 24
        call    _boxfill8                               ; 1B36 _ E8, 00000618
        mov     eax, dword [ebp+10H]                    ; 1B3B _ 8B. 45, 10
        lea     ecx, [eax-1CH]                          ; 1B3E _ 8D. 48, E4
        mov     eax, dword [ebp+0CH]                    ; 1B41 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 1B44 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 1B47 _ 8B. 45, 10
        sub     eax, 28                                 ; 1B4A _ 83. E8, 1C
        mov     dword [esp+18H], ecx                    ; 1B4D _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 1B51 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 1B55 _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 1B59 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 1B61 _ C7. 44 24, 08, 00000008
        mov     eax, dword [ebp+0CH]                    ; 1B69 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1B6C _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1B70 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1B73 _ 89. 04 24
        call    _boxfill8                               ; 1B76 _ E8, 000005D8
        mov     eax, dword [ebp+10H]                    ; 1B7B _ 8B. 45, 10
        lea     ecx, [eax-1BH]                          ; 1B7E _ 8D. 48, E5
        mov     eax, dword [ebp+0CH]                    ; 1B81 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 1B84 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 1B87 _ 8B. 45, 10
        sub     eax, 27                                 ; 1B8A _ 83. E8, 1B
        mov     dword [esp+18H], ecx                    ; 1B8D _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 1B91 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 1B95 _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 1B99 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 7                       ; 1BA1 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 1BA9 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1BAC _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1BB0 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1BB3 _ 89. 04 24
        call    _boxfill8                               ; 1BB6 _ E8, 00000598
        mov     eax, dword [ebp+10H]                    ; 1BBB _ 8B. 45, 10
        lea     ecx, [eax-1H]                           ; 1BBE _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 1BC1 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 1BC4 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 1BC7 _ 8B. 45, 10
        sub     eax, 26                                 ; 1BCA _ 83. E8, 1A
        mov     dword [esp+18H], ecx                    ; 1BCD _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 1BD1 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 1BD5 _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 1BD9 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 1BE1 _ C7. 44 24, 08, 00000008
        mov     eax, dword [ebp+0CH]                    ; 1BE9 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1BEC _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1BF0 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1BF3 _ 89. 04 24
        call    _boxfill8                               ; 1BF6 _ E8, 00000558
        mov     eax, dword [ebp+10H]                    ; 1BFB _ 8B. 45, 10
        lea     edx, [eax-18H]                          ; 1BFE _ 8D. 50, E8
        mov     eax, dword [ebp+10H]                    ; 1C01 _ 8B. 45, 10
        sub     eax, 24                                 ; 1C04 _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 1C07 _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 1C0B _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 1C13 _ 89. 44 24, 10
        mov     dword [esp+0CH], 3                      ; 1C17 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 7                       ; 1C1F _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 1C27 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1C2A _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1C2E _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1C31 _ 89. 04 24
        call    _boxfill8                               ; 1C34 _ E8, 0000051A
        mov     eax, dword [ebp+10H]                    ; 1C39 _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 1C3C _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 1C3F _ 8B. 45, 10
        sub     eax, 24                                 ; 1C42 _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 1C45 _ 89. 54 24, 18
        mov     dword [esp+14H], 2                      ; 1C49 _ C7. 44 24, 14, 00000002
        mov     dword [esp+10H], eax                    ; 1C51 _ 89. 44 24, 10
        mov     dword [esp+0CH], 2                      ; 1C55 _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 7                       ; 1C5D _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 1C65 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1C68 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1C6C _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1C6F _ 89. 04 24
        call    _boxfill8                               ; 1C72 _ E8, 000004DC
        mov     eax, dword [ebp+10H]                    ; 1C77 _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 1C7A _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 1C7D _ 8B. 45, 10
        sub     eax, 4                                  ; 1C80 _ 83. E8, 04
        mov     dword [esp+18H], edx                    ; 1C83 _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 1C87 _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 1C8F _ 89. 44 24, 10
        mov     dword [esp+0CH], 3                      ; 1C93 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 15                      ; 1C9B _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 1CA3 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1CA6 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1CAA _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1CAD _ 89. 04 24
        call    _boxfill8                               ; 1CB0 _ E8, 0000049E
        mov     eax, dword [ebp+10H]                    ; 1CB5 _ 8B. 45, 10
        lea     edx, [eax-5H]                           ; 1CB8 _ 8D. 50, FB
        mov     eax, dword [ebp+10H]                    ; 1CBB _ 8B. 45, 10
        sub     eax, 23                                 ; 1CBE _ 83. E8, 17
        mov     dword [esp+18H], edx                    ; 1CC1 _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 1CC5 _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 1CCD _ 89. 44 24, 10
        mov     dword [esp+0CH], 59                     ; 1CD1 _ C7. 44 24, 0C, 0000003B
        mov     dword [esp+8H], 15                      ; 1CD9 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 1CE1 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1CE4 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1CE8 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1CEB _ 89. 04 24
        call    _boxfill8                               ; 1CEE _ E8, 00000460
        mov     eax, dword [ebp+10H]                    ; 1CF3 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 1CF6 _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 1CF9 _ 8B. 45, 10
        sub     eax, 3                                  ; 1CFC _ 83. E8, 03
        mov     dword [esp+18H], edx                    ; 1CFF _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 1D03 _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 1D0B _ 89. 44 24, 10
        mov     dword [esp+0CH], 2                      ; 1D0F _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 0                       ; 1D17 _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp+0CH]                    ; 1D1F _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1D22 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1D26 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1D29 _ 89. 04 24
        call    _boxfill8                               ; 1D2C _ E8, 00000422
        mov     eax, dword [ebp+10H]                    ; 1D31 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 1D34 _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 1D37 _ 8B. 45, 10
        sub     eax, 24                                 ; 1D3A _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 1D3D _ 89. 54 24, 18
        mov     dword [esp+14H], 60                     ; 1D41 _ C7. 44 24, 14, 0000003C
        mov     dword [esp+10H], eax                    ; 1D49 _ 89. 44 24, 10
        mov     dword [esp+0CH], 60                     ; 1D4D _ C7. 44 24, 0C, 0000003C
        mov     dword [esp+8H], 0                       ; 1D55 _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp+0CH]                    ; 1D5D _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1D60 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1D64 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1D67 _ 89. 04 24
        call    _boxfill8                               ; 1D6A _ E8, 000003E4
        mov     eax, dword [ebp+10H]                    ; 1D6F _ 8B. 45, 10
        lea     ebx, [eax-18H]                          ; 1D72 _ 8D. 58, E8
        mov     eax, dword [ebp+0CH]                    ; 1D75 _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 1D78 _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 1D7B _ 8B. 45, 10
        lea     edx, [eax-18H]                          ; 1D7E _ 8D. 50, E8
        mov     eax, dword [ebp+0CH]                    ; 1D81 _ 8B. 45, 0C
        sub     eax, 47                                 ; 1D84 _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 1D87 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 1D8B _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 1D8F _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 1D93 _ 89. 44 24, 0C
        mov     dword [esp+8H], 15                      ; 1D97 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 1D9F _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1DA2 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1DA6 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1DA9 _ 89. 04 24
        call    _boxfill8                               ; 1DAC _ E8, 000003A2
        mov     eax, dword [ebp+10H]                    ; 1DB1 _ 8B. 45, 10
        lea     ebx, [eax-4H]                           ; 1DB4 _ 8D. 58, FC
        mov     eax, dword [ebp+0CH]                    ; 1DB7 _ 8B. 45, 0C
        lea     ecx, [eax-2FH]                          ; 1DBA _ 8D. 48, D1
        mov     eax, dword [ebp+10H]                    ; 1DBD _ 8B. 45, 10
        lea     edx, [eax-17H]                          ; 1DC0 _ 8D. 50, E9
        mov     eax, dword [ebp+0CH]                    ; 1DC3 _ 8B. 45, 0C
        sub     eax, 47                                 ; 1DC6 _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 1DC9 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 1DCD _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 1DD1 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 1DD5 _ 89. 44 24, 0C
        mov     dword [esp+8H], 15                      ; 1DD9 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 1DE1 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1DE4 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1DE8 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1DEB _ 89. 04 24
        call    _boxfill8                               ; 1DEE _ E8, 00000360
        mov     eax, dword [ebp+10H]                    ; 1DF3 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 1DF6 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 1DF9 _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 1DFC _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 1DFF _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 1E02 _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 1E05 _ 8B. 45, 0C
        sub     eax, 47                                 ; 1E08 _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 1E0B _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 1E0F _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 1E13 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 1E17 _ 89. 44 24, 0C
        mov     dword [esp+8H], 7                       ; 1E1B _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 1E23 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1E26 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1E2A _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1E2D _ 89. 04 24
        call    _boxfill8                               ; 1E30 _ E8, 0000031E
        mov     eax, dword [ebp+10H]                    ; 1E35 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 1E38 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 1E3B _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 1E3E _ 8D. 48, FD
        mov     eax, dword [ebp+10H]                    ; 1E41 _ 8B. 45, 10
        lea     edx, [eax-18H]                          ; 1E44 _ 8D. 50, E8
        mov     eax, dword [ebp+0CH]                    ; 1E47 _ 8B. 45, 0C
        sub     eax, 3                                  ; 1E4A _ 83. E8, 03
        mov     dword [esp+18H], ebx                    ; 1E4D _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 1E51 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 1E55 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 1E59 _ 89. 44 24, 0C
        mov     dword [esp+8H], 7                       ; 1E5D _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 1E65 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1E68 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1E6C _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1E6F _ 89. 04 24
        call    _boxfill8                               ; 1E72 _ E8, 000002DC
        nop                                             ; 1E77 _ 90
        add     esp, 36                                 ; 1E78 _ 83. C4, 24
        pop     ebx                                     ; 1E7B _ 5B
        pop     ebp                                     ; 1E7C _ 5D
        ret                                             ; 1E7D _ C3
; _init_screen8 End of function

_computeMousePosition:; Function begin
        push    ebp                                     ; 1E7E _ 55
        mov     ebp, esp                                ; 1E7F _ 89. E5
        mov     eax, dword [ebp+10H]                    ; 1E81 _ 8B. 45, 10
        mov     edx, dword [eax+4H]                     ; 1E84 _ 8B. 50, 04
        mov     eax, dword [_mx]                        ; 1E87 _ A1, 00000134(d)
        add     eax, edx                                ; 1E8C _ 01. D0
        mov     dword [_mx], eax                        ; 1E8E _ A3, 00000134(d)
        mov     eax, dword [ebp+10H]                    ; 1E93 _ 8B. 45, 10
        mov     edx, dword [eax+8H]                     ; 1E96 _ 8B. 50, 08
        mov     eax, dword [_my]                        ; 1E99 _ A1, 00000138(d)
        add     eax, edx                                ; 1E9E _ 01. D0
        mov     dword [_my], eax                        ; 1EA0 _ A3, 00000138(d)
        mov     eax, dword [_mx]                        ; 1EA5 _ A1, 00000134(d)
        test    eax, eax                                ; 1EAA _ 85. C0
        jns     ?_088                                   ; 1EAC _ 79, 0A
        mov     dword [_mx], 0                          ; 1EAE _ C7. 05, 00000134(d), 00000000
?_088:  mov     eax, dword [_my]                        ; 1EB8 _ A1, 00000138(d)
        test    eax, eax                                ; 1EBD _ 85. C0
        jns     ?_089                                   ; 1EBF _ 79, 0A
        mov     dword [_my], 0                          ; 1EC1 _ C7. 05, 00000138(d), 00000000
?_089:  mov     edx, dword [_xsize]                     ; 1ECB _ 8B. 15, 0000013C(d)
        mov     eax, dword [_mx]                        ; 1ED1 _ A1, 00000134(d)
        cmp     edx, eax                                ; 1ED6 _ 39. C2
        jg      ?_090                                   ; 1ED8 _ 7F, 0D
        mov     eax, dword [_xsize]                     ; 1EDA _ A1, 0000013C(d)
        sub     eax, 1                                  ; 1EDF _ 83. E8, 01
        mov     dword [_mx], eax                        ; 1EE2 _ A3, 00000134(d)
?_090:  mov     edx, dword [_ysize]                     ; 1EE7 _ 8B. 15, 00000140(d)
        mov     eax, dword [_my]                        ; 1EED _ A1, 00000138(d)
        cmp     edx, eax                                ; 1EF2 _ 39. C2
        jg      ?_091                                   ; 1EF4 _ 7F, 0D
        mov     eax, dword [_ysize]                     ; 1EF6 _ A1, 00000140(d)
        sub     eax, 1                                  ; 1EFB _ 83. E8, 01
        mov     dword [_my], eax                        ; 1EFE _ A3, 00000138(d)
?_091:  nop                                             ; 1F03 _ 90
        pop     ebp                                     ; 1F04 _ 5D
        ret                                             ; 1F05 _ C3
; _computeMousePosition End of function

_show_mouse_info:; Function begin
        push    ebp                                     ; 1F06 _ 55
        mov     ebp, esp                                ; 1F07 _ 89. E5
        sub     esp, 40                                 ; 1F09 _ 83. EC, 28
        mov     eax, dword [_buf_back]                  ; 1F0C _ A1, 00000144(d)
        mov     dword [ebp-0CH], eax                    ; 1F11 _ 89. 45, F4
        mov     byte [ebp-0DH], 0                       ; 1F14 _ C6. 45, F3, 00
        call    _io_sti                                 ; 1F18 _ E8, 00000000(rel)
        mov     dword [esp], _mouseinfo                 ; 1F1D _ C7. 04 24, 00000040(d)
        call    _fifo8_get                              ; 1F24 _ E8, 00000000(rel)
        mov     byte [ebp-0DH], al                      ; 1F29 _ 88. 45, F3
        movzx   eax, byte [ebp-0DH]                     ; 1F2C _ 0F B6. 45, F3
        mov     dword [esp+4H], eax                     ; 1F30 _ 89. 44 24, 04
        mov     dword [esp], _mdec                      ; 1F34 _ C7. 04 24, 00000100(d)
        call    _mouse_decode                           ; 1F3B _ E8, 00000787
        test    eax, eax                                ; 1F40 _ 85. C0
        jz      ?_092                                   ; 1F42 _ 74, 77
        mov     dword [esp+8H], _mdec                   ; 1F44 _ C7. 44 24, 08, 00000100(d)
        mov     eax, dword [ebp+0CH]                    ; 1F4C _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1F4F _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1F53 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1F56 _ 89. 04 24
        call    _computeMousePosition                   ; 1F59 _ E8, FFFFFF20
        mov     edx, dword [_my]                        ; 1F5E _ 8B. 15, 00000138(d)
        mov     eax, dword [_mx]                        ; 1F64 _ A1, 00000134(d)
        mov     dword [esp+0CH], edx                    ; 1F69 _ 89. 54 24, 0C
        mov     dword [esp+8H], eax                     ; 1F6D _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 1F71 _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 1F74 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1F78 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1F7B _ 89. 04 24
        call    _sheet_slide                            ; 1F7E _ E8, 00000000(rel)
        mov     eax, dword [?_330]                      ; 1F83 _ A1, 0000010C(d)
        and     eax, 01H                                ; 1F88 _ 83. E0, 01
        test    eax, eax                                ; 1F8B _ 85. C0
        jz      ?_092                                   ; 1F8D _ 74, 2C
        mov     eax, dword [_my]                        ; 1F8F _ A1, 00000138(d)
        lea     ecx, [eax-8H]                           ; 1F94 _ 8D. 48, F8
        mov     eax, dword [_mx]                        ; 1F97 _ A1, 00000134(d)
        lea     edx, [eax-50H]                          ; 1F9C _ 8D. 50, B0
        mov     eax, dword [_shtMsgBox]                 ; 1F9F _ A1, 00000260(d)
        mov     dword [esp+0CH], ecx                    ; 1FA4 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 1FA8 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 1FAC _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1FB0 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1FB3 _ 89. 04 24
        call    _sheet_slide                            ; 1FB6 _ E8, 00000000(rel)
?_092:  nop                                             ; 1FBB _ 90
        leave                                           ; 1FBC _ C9
        ret                                             ; 1FBD _ C3
; _show_mouse_info End of function

_initBootInfo:; Function begin
        push    ebp                                     ; 1FBE _ 55
        mov     ebp, esp                                ; 1FBF _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 1FC1 _ 8B. 45, 08
        mov     dword [eax], -536870912                 ; 1FC4 _ C7. 00, E0000000
        mov     eax, dword [ebp+8H]                     ; 1FCA _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 640                      ; 1FCD _ 66: C7. 40, 04, 0280
        mov     eax, dword [ebp+8H]                     ; 1FD3 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 480                      ; 1FD6 _ 66: C7. 40, 06, 01E0
        nop                                             ; 1FDC _ 90
        pop     ebp                                     ; 1FDD _ 5D
        ret                                             ; 1FDE _ C3
; _initBootInfo End of function

_showString:; Function begin
        push    ebp                                     ; 1FDF _ 55
        mov     ebp, esp                                ; 1FE0 _ 89. E5
        push    ebx                                     ; 1FE2 _ 53
        sub     esp, 68                                 ; 1FE3 _ 83. EC, 44
        mov     eax, dword [ebp+18H]                    ; 1FE6 _ 8B. 45, 18
        mov     byte [ebp-1CH], al                      ; 1FE9 _ 88. 45, E4
        mov     eax, dword [ebp+10H]                    ; 1FEC _ 8B. 45, 10
        mov     dword [ebp-0CH], eax                    ; 1FEF _ 89. 45, F4
        mov     dword [ebp-10H], 0                      ; 1FF2 _ C7. 45, F0, 00000000
        jmp     ?_094                                   ; 1FF9 _ EB, 4B

?_093:  mov     eax, dword [ebp+1CH]                    ; 1FFB _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 1FFE _ 0F B6. 00
        movzx   eax, al                                 ; 2001 _ 0F B6. C0
        shl     eax, 4                                  ; 2004 _ C1. E0, 04
        lea     ebx, [_systemFont+eax]                  ; 2007 _ 8D. 98, 00000000(d)
        movsx   eax, byte [ebp-1CH]                     ; 200D _ 0F BE. 45, E4
        mov     edx, dword [ebp+0CH]                    ; 2011 _ 8B. 55, 0C
        mov     ecx, dword [edx+4H]                     ; 2014 _ 8B. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 2017 _ 8B. 55, 0C
        mov     edx, dword [edx]                        ; 201A _ 8B. 12
        mov     dword [esp+14H], ebx                    ; 201C _ 89. 5C 24, 14
        mov     dword [esp+10H], eax                    ; 2020 _ 89. 44 24, 10
        mov     eax, dword [ebp+14H]                    ; 2024 _ 8B. 45, 14
        mov     dword [esp+0CH], eax                    ; 2027 _ 89. 44 24, 0C
        mov     eax, dword [ebp+10H]                    ; 202B _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 202E _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 2032 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 2036 _ 89. 14 24
        call    _showFont8                              ; 2039 _ E8, 00000165
        add     dword [ebp+10H], 8                      ; 203E _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 2042 _ 83. 45, 1C, 01
?_094:  mov     eax, dword [ebp+1CH]                    ; 2046 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 2049 _ 0F B6. 00
        test    al, al                                  ; 204C _ 84. C0
        jnz     ?_093                                   ; 204E _ 75, AB
        mov     eax, dword [ebp+14H]                    ; 2050 _ 8B. 45, 14
        add     eax, 16                                 ; 2053 _ 83. C0, 10
        mov     dword [esp+14H], eax                    ; 2056 _ 89. 44 24, 14
        mov     eax, dword [ebp+10H]                    ; 205A _ 8B. 45, 10
        mov     dword [esp+10H], eax                    ; 205D _ 89. 44 24, 10
        mov     eax, dword [ebp+14H]                    ; 2061 _ 8B. 45, 14
        mov     dword [esp+0CH], eax                    ; 2064 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 2068 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 206B _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 206F _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2072 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2076 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2079 _ 89. 04 24
        call    _sheet_refresh                          ; 207C _ E8, 00000000(rel)
        nop                                             ; 2081 _ 90
        add     esp, 68                                 ; 2082 _ 83. C4, 44
        pop     ebx                                     ; 2085 _ 5B
        pop     ebp                                     ; 2086 _ 5D
        ret                                             ; 2087 _ C3
; _showString End of function

_init_palette:; Function begin
        push    ebp                                     ; 2088 _ 55
        mov     ebp, esp                                ; 2089 _ 89. E5
        sub     esp, 24                                 ; 208B _ 83. EC, 18
        mov     dword [esp+8H], _table_rgb.2528         ; 208E _ C7. 44 24, 08, 00000120(d)
        mov     dword [esp+4H], 15                      ; 2096 _ C7. 44 24, 04, 0000000F
        mov     dword [esp], 0                          ; 209E _ C7. 04 24, 00000000
        call    _set_palette                            ; 20A5 _ E8, 00000003
        nop                                             ; 20AA _ 90
        leave                                           ; 20AB _ C9
        ret                                             ; 20AC _ C3
; _init_palette End of function

_set_palette:; Function begin
        push    ebp                                     ; 20AD _ 55
        mov     ebp, esp                                ; 20AE _ 89. E5
        sub     esp, 40                                 ; 20B0 _ 83. EC, 28
        call    _io_load_eflags                         ; 20B3 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 20B8 _ 89. 45, F0
        call    _io_cli                                 ; 20BB _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 20C0 _ 8B. 45, 08
        mov     dword [esp+4H], eax                     ; 20C3 _ 89. 44 24, 04
        mov     dword [esp], 968                        ; 20C7 _ C7. 04 24, 000003C8
        call    _io_out8                                ; 20CE _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 20D3 _ 8B. 45, 08
        mov     dword [ebp-0CH], eax                    ; 20D6 _ 89. 45, F4
        jmp     ?_096                                   ; 20D9 _ EB, 62

?_095:  mov     eax, dword [ebp+10H]                    ; 20DB _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 20DE _ 0F B6. 00
        shr     al, 2                                   ; 20E1 _ C0. E8, 02
        movzx   eax, al                                 ; 20E4 _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 20E7 _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 20EB _ C7. 04 24, 000003C9
        call    _io_out8                                ; 20F2 _ E8, 00000000(rel)
        mov     eax, dword [ebp+10H]                    ; 20F7 _ 8B. 45, 10
        add     eax, 1                                  ; 20FA _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 20FD _ 0F B6. 00
        shr     al, 2                                   ; 2100 _ C0. E8, 02
        movzx   eax, al                                 ; 2103 _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 2106 _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 210A _ C7. 04 24, 000003C9
        call    _io_out8                                ; 2111 _ E8, 00000000(rel)
        mov     eax, dword [ebp+10H]                    ; 2116 _ 8B. 45, 10
        add     eax, 2                                  ; 2119 _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 211C _ 0F B6. 00
        shr     al, 2                                   ; 211F _ C0. E8, 02
        movzx   eax, al                                 ; 2122 _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 2125 _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 2129 _ C7. 04 24, 000003C9
        call    _io_out8                                ; 2130 _ E8, 00000000(rel)
        add     dword [ebp+10H], 3                      ; 2135 _ 83. 45, 10, 03
        add     dword [ebp-0CH], 1                      ; 2139 _ 83. 45, F4, 01
?_096:  mov     eax, dword [ebp-0CH]                    ; 213D _ 8B. 45, F4
        cmp     eax, dword [ebp+0CH]                    ; 2140 _ 3B. 45, 0C
        jle     ?_095                                   ; 2143 _ 7E, 96
        mov     eax, dword [ebp-10H]                    ; 2145 _ 8B. 45, F0
        mov     dword [esp], eax                        ; 2148 _ 89. 04 24
        call    _io_store_eflags                        ; 214B _ E8, 00000000(rel)
        nop                                             ; 2150 _ 90
        leave                                           ; 2151 _ C9
        ret                                             ; 2152 _ C3
; _set_palette End of function

_boxfill8:; Function begin
        push    ebp                                     ; 2153 _ 55
        mov     ebp, esp                                ; 2154 _ 89. E5
        sub     esp, 20                                 ; 2156 _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 2159 _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 215C _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 215F _ 8B. 45, 18
        mov     dword [ebp-8H], eax                     ; 2162 _ 89. 45, F8
        jmp     ?_100                                   ; 2165 _ EB, 31

?_097:  mov     eax, dword [ebp+14H]                    ; 2167 _ 8B. 45, 14
        mov     dword [ebp-4H], eax                     ; 216A _ 89. 45, FC
        jmp     ?_099                                   ; 216D _ EB, 1D

?_098:  mov     eax, dword [ebp-8H]                     ; 216F _ 8B. 45, F8
        imul    eax, dword [ebp+0CH]                    ; 2172 _ 0F AF. 45, 0C
        mov     edx, dword [ebp-4H]                     ; 2176 _ 8B. 55, FC
        add     eax, edx                                ; 2179 _ 01. D0
        mov     edx, eax                                ; 217B _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 217D _ 8B. 45, 08
        add     edx, eax                                ; 2180 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 2182 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 2186 _ 88. 02
        add     dword [ebp-4H], 1                       ; 2188 _ 83. 45, FC, 01
?_099:  mov     eax, dword [ebp-4H]                     ; 218C _ 8B. 45, FC
        cmp     eax, dword [ebp+1CH]                    ; 218F _ 3B. 45, 1C
        jle     ?_098                                   ; 2192 _ 7E, DB
        add     dword [ebp-8H], 1                       ; 2194 _ 83. 45, F8, 01
?_100:  mov     eax, dword [ebp-8H]                     ; 2198 _ 8B. 45, F8
        cmp     eax, dword [ebp+20H]                    ; 219B _ 3B. 45, 20
        jle     ?_097                                   ; 219E _ 7E, C7
        nop                                             ; 21A0 _ 90
        leave                                           ; 21A1 _ C9
        ret                                             ; 21A2 _ C3
; _boxfill8 End of function

_showFont8:; Function begin
        push    ebp                                     ; 21A3 _ 55
        mov     ebp, esp                                ; 21A4 _ 89. E5
        sub     esp, 20                                 ; 21A6 _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 21A9 _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 21AC _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 21AF _ C7. 45, FC, 00000000
        jmp     ?_110                                   ; 21B6 _ E9, 0000015C

?_101:  mov     edx, dword [ebp-4H]                     ; 21BB _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 21BE _ 8B. 45, 1C
        add     eax, edx                                ; 21C1 _ 01. D0
        movzx   eax, byte [eax]                         ; 21C3 _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 21C6 _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 21C9 _ 80. 7D, FB, 00
        jns     ?_102                                   ; 21CD _ 79, 1E
        mov     edx, dword [ebp+14H]                    ; 21CF _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 21D2 _ 8B. 45, FC
        add     eax, edx                                ; 21D5 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 21D7 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 21DB _ 8B. 55, 10
        add     eax, edx                                ; 21DE _ 01. D0
        mov     edx, eax                                ; 21E0 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 21E2 _ 8B. 45, 08
        add     edx, eax                                ; 21E5 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 21E7 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 21EB _ 88. 02
?_102:  movsx   eax, byte [ebp-5H]                      ; 21ED _ 0F BE. 45, FB
        and     eax, 40H                                ; 21F1 _ 83. E0, 40
        test    eax, eax                                ; 21F4 _ 85. C0
        jz      ?_103                                   ; 21F6 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 21F8 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 21FB _ 8B. 45, FC
        add     eax, edx                                ; 21FE _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 2200 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 2204 _ 8B. 55, 10
        add     eax, edx                                ; 2207 _ 01. D0
        lea     edx, [eax+1H]                           ; 2209 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 220C _ 8B. 45, 08
        add     edx, eax                                ; 220F _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 2211 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 2215 _ 88. 02
?_103:  movsx   eax, byte [ebp-5H]                      ; 2217 _ 0F BE. 45, FB
        and     eax, 20H                                ; 221B _ 83. E0, 20
        test    eax, eax                                ; 221E _ 85. C0
        jz      ?_104                                   ; 2220 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 2222 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 2225 _ 8B. 45, FC
        add     eax, edx                                ; 2228 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 222A _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 222E _ 8B. 55, 10
        add     eax, edx                                ; 2231 _ 01. D0
        lea     edx, [eax+2H]                           ; 2233 _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 2236 _ 8B. 45, 08
        add     edx, eax                                ; 2239 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 223B _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 223F _ 88. 02
?_104:  movsx   eax, byte [ebp-5H]                      ; 2241 _ 0F BE. 45, FB
        and     eax, 10H                                ; 2245 _ 83. E0, 10
        test    eax, eax                                ; 2248 _ 85. C0
        jz      ?_105                                   ; 224A _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 224C _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 224F _ 8B. 45, FC
        add     eax, edx                                ; 2252 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 2254 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 2258 _ 8B. 55, 10
        add     eax, edx                                ; 225B _ 01. D0
        lea     edx, [eax+3H]                           ; 225D _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 2260 _ 8B. 45, 08
        add     edx, eax                                ; 2263 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 2265 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 2269 _ 88. 02
?_105:  movsx   eax, byte [ebp-5H]                      ; 226B _ 0F BE. 45, FB
        and     eax, 08H                                ; 226F _ 83. E0, 08
        test    eax, eax                                ; 2272 _ 85. C0
        jz      ?_106                                   ; 2274 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 2276 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 2279 _ 8B. 45, FC
        add     eax, edx                                ; 227C _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 227E _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 2282 _ 8B. 55, 10
        add     eax, edx                                ; 2285 _ 01. D0
        lea     edx, [eax+4H]                           ; 2287 _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 228A _ 8B. 45, 08
        add     edx, eax                                ; 228D _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 228F _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 2293 _ 88. 02
?_106:  movsx   eax, byte [ebp-5H]                      ; 2295 _ 0F BE. 45, FB
        and     eax, 04H                                ; 2299 _ 83. E0, 04
        test    eax, eax                                ; 229C _ 85. C0
        jz      ?_107                                   ; 229E _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 22A0 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 22A3 _ 8B. 45, FC
        add     eax, edx                                ; 22A6 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 22A8 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 22AC _ 8B. 55, 10
        add     eax, edx                                ; 22AF _ 01. D0
        lea     edx, [eax+5H]                           ; 22B1 _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 22B4 _ 8B. 45, 08
        add     edx, eax                                ; 22B7 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 22B9 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 22BD _ 88. 02
?_107:  movsx   eax, byte [ebp-5H]                      ; 22BF _ 0F BE. 45, FB
        and     eax, 02H                                ; 22C3 _ 83. E0, 02
        test    eax, eax                                ; 22C6 _ 85. C0
        jz      ?_108                                   ; 22C8 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 22CA _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 22CD _ 8B. 45, FC
        add     eax, edx                                ; 22D0 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 22D2 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 22D6 _ 8B. 55, 10
        add     eax, edx                                ; 22D9 _ 01. D0
        lea     edx, [eax+6H]                           ; 22DB _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 22DE _ 8B. 45, 08
        add     edx, eax                                ; 22E1 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 22E3 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 22E7 _ 88. 02
?_108:  movsx   eax, byte [ebp-5H]                      ; 22E9 _ 0F BE. 45, FB
        and     eax, 01H                                ; 22ED _ 83. E0, 01
        test    eax, eax                                ; 22F0 _ 85. C0
        jz      ?_109                                   ; 22F2 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 22F4 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 22F7 _ 8B. 45, FC
        add     eax, edx                                ; 22FA _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 22FC _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 2300 _ 8B. 55, 10
        add     eax, edx                                ; 2303 _ 01. D0
        lea     edx, [eax+7H]                           ; 2305 _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 2308 _ 8B. 45, 08
        add     edx, eax                                ; 230B _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 230D _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 2311 _ 88. 02
?_109:  add     dword [ebp-4H], 1                       ; 2313 _ 83. 45, FC, 01
?_110:  cmp     dword [ebp-4H], 15                      ; 2317 _ 83. 7D, FC, 0F
        jle     ?_101                                   ; 231B _ 0F 8E, FFFFFE9A
        nop                                             ; 2321 _ 90
        leave                                           ; 2322 _ C9
        ret                                             ; 2323 _ C3
; _showFont8 End of function

_init_mouse_cursor:; Function begin
        push    ebp                                     ; 2324 _ 55
        mov     ebp, esp                                ; 2325 _ 89. E5
        sub     esp, 20                                 ; 2327 _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 232A _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 232D _ 88. 45, EC
        mov     dword [ebp-8H], 0                       ; 2330 _ C7. 45, F8, 00000000
        jmp     ?_117                                   ; 2337 _ E9, 000000B1

?_111:  mov     dword [ebp-4H], 0                       ; 233C _ C7. 45, FC, 00000000
        jmp     ?_116                                   ; 2343 _ E9, 00000097

?_112:  mov     eax, dword [ebp-8H]                     ; 2348 _ 8B. 45, F8
        shl     eax, 4                                  ; 234B _ C1. E0, 04
        mov     edx, eax                                ; 234E _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 2350 _ 8B. 45, FC
        add     eax, edx                                ; 2353 _ 01. D0
        add     eax, _cursor.2575                       ; 2355 _ 05, 00000160(d)
        movzx   eax, byte [eax]                         ; 235A _ 0F B6. 00
        cmp     al, 42                                  ; 235D _ 3C, 2A
        jnz     ?_113                                   ; 235F _ 75, 17
        mov     eax, dword [ebp-8H]                     ; 2361 _ 8B. 45, F8
        shl     eax, 4                                  ; 2364 _ C1. E0, 04
        mov     edx, eax                                ; 2367 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 2369 _ 8B. 45, FC
        add     eax, edx                                ; 236C _ 01. D0
        mov     edx, eax                                ; 236E _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2370 _ 8B. 45, 08
        add     eax, edx                                ; 2373 _ 01. D0
        mov     byte [eax], 0                           ; 2375 _ C6. 00, 00
?_113:  mov     eax, dword [ebp-8H]                     ; 2378 _ 8B. 45, F8
        shl     eax, 4                                  ; 237B _ C1. E0, 04
        mov     edx, eax                                ; 237E _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 2380 _ 8B. 45, FC
        add     eax, edx                                ; 2383 _ 01. D0
        add     eax, _cursor.2575                       ; 2385 _ 05, 00000160(d)
        movzx   eax, byte [eax]                         ; 238A _ 0F B6. 00
        cmp     al, 79                                  ; 238D _ 3C, 4F
        jnz     ?_114                                   ; 238F _ 75, 17
        mov     eax, dword [ebp-8H]                     ; 2391 _ 8B. 45, F8
        shl     eax, 4                                  ; 2394 _ C1. E0, 04
        mov     edx, eax                                ; 2397 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 2399 _ 8B. 45, FC
        add     eax, edx                                ; 239C _ 01. D0
        mov     edx, eax                                ; 239E _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 23A0 _ 8B. 45, 08
        add     eax, edx                                ; 23A3 _ 01. D0
        mov     byte [eax], 7                           ; 23A5 _ C6. 00, 07
?_114:  mov     eax, dword [ebp-8H]                     ; 23A8 _ 8B. 45, F8
        shl     eax, 4                                  ; 23AB _ C1. E0, 04
        mov     edx, eax                                ; 23AE _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 23B0 _ 8B. 45, FC
        add     eax, edx                                ; 23B3 _ 01. D0
        add     eax, _cursor.2575                       ; 23B5 _ 05, 00000160(d)
        movzx   eax, byte [eax]                         ; 23BA _ 0F B6. 00
        cmp     al, 46                                  ; 23BD _ 3C, 2E
        jnz     ?_115                                   ; 23BF _ 75, 1A
        mov     eax, dword [ebp-8H]                     ; 23C1 _ 8B. 45, F8
        shl     eax, 4                                  ; 23C4 _ C1. E0, 04
        mov     edx, eax                                ; 23C7 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 23C9 _ 8B. 45, FC
        add     eax, edx                                ; 23CC _ 01. D0
        mov     edx, eax                                ; 23CE _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 23D0 _ 8B. 45, 08
        add     edx, eax                                ; 23D3 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 23D5 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 23D9 _ 88. 02
?_115:  add     dword [ebp-4H], 1                       ; 23DB _ 83. 45, FC, 01
?_116:  cmp     dword [ebp-4H], 15                      ; 23DF _ 83. 7D, FC, 0F
        jle     ?_112                                   ; 23E3 _ 0F 8E, FFFFFF5F
        add     dword [ebp-8H], 1                       ; 23E9 _ 83. 45, F8, 01
?_117:  cmp     dword [ebp-8H], 15                      ; 23ED _ 83. 7D, F8, 0F
        jle     ?_111                                   ; 23F1 _ 0F 8E, FFFFFF45
        nop                                             ; 23F7 _ 90
        leave                                           ; 23F8 _ C9
        ret                                             ; 23F9 _ C3
; _init_mouse_cursor End of function

_putblock:; Function begin
        push    ebp                                     ; 23FA _ 55
        mov     ebp, esp                                ; 23FB _ 89. E5
        push    ebx                                     ; 23FD _ 53
        sub     esp, 16                                 ; 23FE _ 83. EC, 10
        mov     dword [ebp-0CH], 0                      ; 2401 _ C7. 45, F4, 00000000
        jmp     ?_121                                   ; 2408 _ EB, 4E

?_118:  mov     dword [ebp-8H], 0                       ; 240A _ C7. 45, F8, 00000000
        jmp     ?_120                                   ; 2411 _ EB, 39

?_119:  mov     eax, dword [ebp-0CH]                    ; 2413 _ 8B. 45, F4
        imul    eax, dword [ebp+24H]                    ; 2416 _ 0F AF. 45, 24
        mov     edx, dword [ebp-8H]                     ; 241A _ 8B. 55, F8
        add     eax, edx                                ; 241D _ 01. D0
        mov     edx, eax                                ; 241F _ 89. C2
        mov     eax, dword [ebp+20H]                    ; 2421 _ 8B. 45, 20
        add     eax, edx                                ; 2424 _ 01. D0
        mov     ecx, dword [ebp+1CH]                    ; 2426 _ 8B. 4D, 1C
        mov     edx, dword [ebp-0CH]                    ; 2429 _ 8B. 55, F4
        add     edx, ecx                                ; 242C _ 01. CA
        imul    edx, dword [ebp+0CH]                    ; 242E _ 0F AF. 55, 0C
        mov     ebx, dword [ebp+18H]                    ; 2432 _ 8B. 5D, 18
        mov     ecx, dword [ebp-8H]                     ; 2435 _ 8B. 4D, F8
        add     ecx, ebx                                ; 2438 _ 01. D9
        add     edx, ecx                                ; 243A _ 01. CA
        mov     ecx, edx                                ; 243C _ 89. D1
        mov     edx, dword [ebp+8H]                     ; 243E _ 8B. 55, 08
        add     edx, ecx                                ; 2441 _ 01. CA
        movzx   eax, byte [eax]                         ; 2443 _ 0F B6. 00
        mov     byte [edx], al                          ; 2446 _ 88. 02
        add     dword [ebp-8H], 1                       ; 2448 _ 83. 45, F8, 01
?_120:  mov     eax, dword [ebp-8H]                     ; 244C _ 8B. 45, F8
        cmp     eax, dword [ebp+10H]                    ; 244F _ 3B. 45, 10
        jl      ?_119                                   ; 2452 _ 7C, BF
        add     dword [ebp-0CH], 1                      ; 2454 _ 83. 45, F4, 01
?_121:  mov     eax, dword [ebp-0CH]                    ; 2458 _ 8B. 45, F4
        cmp     eax, dword [ebp+14H]                    ; 245B _ 3B. 45, 14
        jl      ?_118                                   ; 245E _ 7C, AA
        nop                                             ; 2460 _ 90
        add     esp, 16                                 ; 2461 _ 83. C4, 10
        pop     ebx                                     ; 2464 _ 5B
        pop     ebp                                     ; 2465 _ 5D
        ret                                             ; 2466 _ C3
; _putblock End of function

_intHandlerFromC:; Function begin
        push    ebp                                     ; 2467 _ 55
        mov     ebp, esp                                ; 2468 _ 89. E5
        sub     esp, 40                                 ; 246A _ 83. EC, 28
        mov     eax, dword [_bootInfo]                  ; 246D _ A1, 0000001C(d)
        mov     dword [ebp-0CH], eax                    ; 2472 _ 89. 45, F4
        movzx   eax, word [?_327]                       ; 2475 _ 0F B7. 05, 00000020(d)
        cwde                                            ; 247C _ 98
        mov     dword [ebp-10H], eax                    ; 247D _ 89. 45, F0
        movzx   eax, word [?_328]                       ; 2480 _ 0F B7. 05, 00000022(d)
        cwde                                            ; 2487 _ 98
        mov     dword [ebp-14H], eax                    ; 2488 _ 89. 45, EC
        mov     dword [esp+4H], 32                      ; 248B _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 2493 _ C7. 04 24, 00000020
        call    _io_out8                                ; 249A _ E8, 00000000(rel)
        mov     byte [ebp-15H], 0                       ; 249F _ C6. 45, EB, 00
        mov     dword [esp], 96                         ; 24A3 _ C7. 04 24, 00000060
        call    _io_in8                                 ; 24AA _ E8, 00000000(rel)
        mov     byte [ebp-15H], al                      ; 24AF _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 24B2 _ 0F B6. 45, EB
        mov     dword [esp+4H], eax                     ; 24B6 _ 89. 44 24, 04
        mov     dword [esp], _keyinfo                   ; 24BA _ C7. 04 24, 00000024(d)
        call    _fifo8_put                              ; 24C1 _ E8, 00000000(rel)
        nop                                             ; 24C6 _ 90
        leave                                           ; 24C7 _ C9
        ret                                             ; 24C8 _ C3
; _intHandlerFromC End of function

_charToHexVal:; Function begin
        push    ebp                                     ; 24C9 _ 55
        mov     ebp, esp                                ; 24CA _ 89. E5
        sub     esp, 4                                  ; 24CC _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 24CF _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 24D2 _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 24D5 _ 80. 7D, FC, 09
        jle     ?_122                                   ; 24D9 _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 24DB _ 0F B6. 45, FC
        add     eax, 55                                 ; 24DF _ 83. C0, 37
        jmp     ?_123                                   ; 24E2 _ EB, 07

?_122:  movzx   eax, byte [ebp-4H]                      ; 24E4 _ 0F B6. 45, FC
        add     eax, 48                                 ; 24E8 _ 83. C0, 30
?_123:  leave                                           ; 24EB _ C9
        ret                                             ; 24EC _ C3
; _charToHexVal End of function

_charToHexStr:; Function begin
        push    ebp                                     ; 24ED _ 55
        mov     ebp, esp                                ; 24EE _ 89. E5
        sub     esp, 24                                 ; 24F0 _ 83. EC, 18
        mov     eax, dword [ebp+8H]                     ; 24F3 _ 8B. 45, 08
        mov     byte [ebp-14H], al                      ; 24F6 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 24F9 _ C7. 45, FC, 00000000
        movzx   eax, byte [ebp-14H]                     ; 2500 _ 0F B6. 45, EC
        and     eax, 0FH                                ; 2504 _ 83. E0, 0F
        mov     byte [ebp-5H], al                       ; 2507 _ 88. 45, FB
        movsx   eax, byte [ebp-5H]                      ; 250A _ 0F BE. 45, FB
        mov     dword [esp], eax                        ; 250E _ 89. 04 24
        call    _charToHexVal                           ; 2511 _ E8, FFFFFFB3
        mov     byte [?_299], al                        ; 2516 _ A2, 00000103(d)
        movzx   eax, byte [ebp-14H]                     ; 251B _ 0F B6. 45, EC
        shr     al, 4                                   ; 251F _ C0. E8, 04
        mov     byte [ebp-14H], al                      ; 2522 _ 88. 45, EC
        movzx   eax, byte [ebp-14H]                     ; 2525 _ 0F B6. 45, EC
        movsx   eax, al                                 ; 2529 _ 0F BE. C0
        mov     dword [esp], eax                        ; 252C _ 89. 04 24
        call    _charToHexVal                           ; 252F _ E8, FFFFFF95
        mov     byte [?_298], al                        ; 2534 _ A2, 00000102(d)
        mov     eax, _keyval                            ; 2539 _ B8, 00000100(d)
        leave                                           ; 253E _ C9
        ret                                             ; 253F _ C3
; _charToHexStr End of function

_intToHexStr:; Function begin
        push    ebp                                     ; 2540 _ 55
        mov     ebp, esp                                ; 2541 _ 89. E5
        sub     esp, 16                                 ; 2543 _ 83. EC, 10
        mov     byte [_str.2623], 48                    ; 2546 _ C6. 05, 00000388(d), 30
        mov     byte [?_332], 88                        ; 254D _ C6. 05, 00000389(d), 58
        mov     byte [?_333], 0                         ; 2554 _ C6. 05, 00000392(d), 00
        mov     dword [ebp-4H], 2                       ; 255B _ C7. 45, FC, 00000002
        jmp     ?_125                                   ; 2562 _ EB, 0F

?_124:  mov     eax, dword [ebp-4H]                     ; 2564 _ 8B. 45, FC
        add     eax, _str.2623                          ; 2567 _ 05, 00000388(d)
        mov     byte [eax], 48                          ; 256C _ C6. 00, 30
        add     dword [ebp-4H], 1                       ; 256F _ 83. 45, FC, 01
?_125:  cmp     dword [ebp-4H], 9                       ; 2573 _ 83. 7D, FC, 09
        jle     ?_124                                   ; 2577 _ 7E, EB
        mov     dword [ebp-8H], 9                       ; 2579 _ C7. 45, F8, 00000009
        jmp     ?_129                                   ; 2580 _ EB, 42

?_126:  mov     eax, dword [ebp+8H]                     ; 2582 _ 8B. 45, 08
        and     eax, 0FH                                ; 2585 _ 83. E0, 0F
        mov     dword [ebp-0CH], eax                    ; 2588 _ 89. 45, F4
        mov     eax, dword [ebp+8H]                     ; 258B _ 8B. 45, 08
        shr     eax, 4                                  ; 258E _ C1. E8, 04
        mov     dword [ebp+8H], eax                     ; 2591 _ 89. 45, 08
        cmp     dword [ebp-0CH], 9                      ; 2594 _ 83. 7D, F4, 09
        jle     ?_127                                   ; 2598 _ 7E, 14
        mov     eax, dword [ebp-0CH]                    ; 259A _ 8B. 45, F4
        add     eax, 55                                 ; 259D _ 83. C0, 37
        mov     edx, eax                                ; 25A0 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 25A2 _ 8B. 45, F8
        add     eax, _str.2623                          ; 25A5 _ 05, 00000388(d)
        mov     byte [eax], dl                          ; 25AA _ 88. 10
        jmp     ?_128                                   ; 25AC _ EB, 12

?_127:  mov     eax, dword [ebp-0CH]                    ; 25AE _ 8B. 45, F4
        add     eax, 48                                 ; 25B1 _ 83. C0, 30
        mov     edx, eax                                ; 25B4 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 25B6 _ 8B. 45, F8
        add     eax, _str.2623                          ; 25B9 _ 05, 00000388(d)
        mov     byte [eax], dl                          ; 25BE _ 88. 10
?_128:  sub     dword [ebp-8H], 1                       ; 25C0 _ 83. 6D, F8, 01
?_129:  cmp     dword [ebp-8H], 1                       ; 25C4 _ 83. 7D, F8, 01
        jle     ?_130                                   ; 25C8 _ 7E, 06
        cmp     dword [ebp+8H], 0                       ; 25CA _ 83. 7D, 08, 00
        jnz     ?_126                                   ; 25CE _ 75, B2
?_130:  mov     eax, _str.2623                          ; 25D0 _ B8, 00000388(d)
        leave                                           ; 25D5 _ C9
        ret                                             ; 25D6 _ C3
; _intToHexStr End of function

_wait_KBC_sendready:; Function begin
        push    ebp                                     ; 25D7 _ 55
        mov     ebp, esp                                ; 25D8 _ 89. E5
        sub     esp, 24                                 ; 25DA _ 83. EC, 18
?_131:  mov     dword [esp], 100                        ; 25DD _ C7. 04 24, 00000064
        call    _io_in8                                 ; 25E4 _ E8, 00000000(rel)
        and     eax, 02H                                ; 25E9 _ 83. E0, 02
        test    eax, eax                                ; 25EC _ 85. C0
        jz      ?_132                                   ; 25EE _ 74, 02
        jmp     ?_131                                   ; 25F0 _ EB, EB
; _wait_KBC_sendready End of function

?_132:  ; Local function
        nop                                             ; 25F2 _ 90
        nop                                             ; 25F3 _ 90
        leave                                           ; 25F4 _ C9
        ret                                             ; 25F5 _ C3

_init_keyboard:; Function begin
        push    ebp                                     ; 25F6 _ 55
        mov     ebp, esp                                ; 25F7 _ 89. E5
        sub     esp, 24                                 ; 25F9 _ 83. EC, 18
        call    _wait_KBC_sendready                     ; 25FC _ E8, FFFFFFD6
        mov     dword [esp+4H], 96                      ; 2601 _ C7. 44 24, 04, 00000060
        mov     dword [esp], 100                        ; 2609 _ C7. 04 24, 00000064
        call    _io_out8                                ; 2610 _ E8, 00000000(rel)
        call    _wait_KBC_sendready                     ; 2615 _ E8, FFFFFFBD
        mov     dword [esp+4H], 71                      ; 261A _ C7. 44 24, 04, 00000047
        mov     dword [esp], 96                         ; 2622 _ C7. 04 24, 00000060
        call    _io_out8                                ; 2629 _ E8, 00000000(rel)
        nop                                             ; 262E _ 90
        leave                                           ; 262F _ C9
        ret                                             ; 2630 _ C3
; _init_keyboard End of function

_enable_mouse:; Function begin
        push    ebp                                     ; 2631 _ 55
        mov     ebp, esp                                ; 2632 _ 89. E5
        sub     esp, 24                                 ; 2634 _ 83. EC, 18
        call    _wait_KBC_sendready                     ; 2637 _ E8, FFFFFF9B
        mov     dword [esp+4H], 212                     ; 263C _ C7. 44 24, 04, 000000D4
        mov     dword [esp], 100                        ; 2644 _ C7. 04 24, 00000064
        call    _io_out8                                ; 264B _ E8, 00000000(rel)
        call    _wait_KBC_sendready                     ; 2650 _ E8, FFFFFF82
        mov     dword [esp+4H], 244                     ; 2655 _ C7. 44 24, 04, 000000F4
        mov     dword [esp], 96                         ; 265D _ C7. 04 24, 00000060
        call    _io_out8                                ; 2664 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 2669 _ 8B. 45, 08
        mov     byte [eax+3H], 0                        ; 266C _ C6. 40, 03, 00
        nop                                             ; 2670 _ 90
        leave                                           ; 2671 _ C9
        ret                                             ; 2672 _ C3
; _enable_mouse End of function

_intHandlerForMouse:; Function begin
        push    ebp                                     ; 2673 _ 55
        mov     ebp, esp                                ; 2674 _ 89. E5
        sub     esp, 40                                 ; 2676 _ 83. EC, 28
        mov     dword [esp+4H], 32                      ; 2679 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 160                        ; 2681 _ C7. 04 24, 000000A0
        call    _io_out8                                ; 2688 _ E8, 00000000(rel)
        mov     dword [esp+4H], 32                      ; 268D _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 2695 _ C7. 04 24, 00000020
        call    _io_out8                                ; 269C _ E8, 00000000(rel)
        mov     dword [esp], 96                         ; 26A1 _ C7. 04 24, 00000060
        call    _io_in8                                 ; 26A8 _ E8, 00000000(rel)
        mov     byte [ebp-9H], al                       ; 26AD _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 26B0 _ 0F B6. 45, F7
        mov     dword [esp+4H], eax                     ; 26B4 _ 89. 44 24, 04
        mov     dword [esp], _mouseinfo                 ; 26B8 _ C7. 04 24, 00000040(d)
        call    _fifo8_put                              ; 26BF _ E8, 00000000(rel)
        nop                                             ; 26C4 _ 90
        leave                                           ; 26C5 _ C9
        ret                                             ; 26C6 _ C3
; _intHandlerForMouse End of function

_mouse_decode:; Function begin
        push    ebp                                     ; 26C7 _ 55
        mov     ebp, esp                                ; 26C8 _ 89. E5
        sub     esp, 4                                  ; 26CA _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 26CD _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 26D0 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 26D3 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 26D6 _ 0F B6. 40, 03
        test    al, al                                  ; 26DA _ 84. C0
        jnz     ?_134                                   ; 26DC _ 75, 17
        cmp     byte [ebp-4H], -6                       ; 26DE _ 80. 7D, FC, FA
        jnz     ?_133                                   ; 26E2 _ 75, 07
        mov     eax, dword [ebp+8H]                     ; 26E4 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 26E7 _ C6. 40, 03, 01
?_133:  mov     eax, 0                                  ; 26EB _ B8, 00000000
        jmp     ?_141                                   ; 26F0 _ E9, 0000010F

?_134:  mov     eax, dword [ebp+8H]                     ; 26F5 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 26F8 _ 0F B6. 40, 03
        cmp     al, 1                                   ; 26FC _ 3C, 01
        jnz     ?_136                                   ; 26FE _ 75, 28
        movzx   eax, byte [ebp-4H]                      ; 2700 _ 0F B6. 45, FC
        and     eax, 0C8H                               ; 2704 _ 25, 000000C8
        cmp     eax, 8                                  ; 2709 _ 83. F8, 08
        jnz     ?_135                                   ; 270C _ 75, 10
        mov     edx, dword [ebp+8H]                     ; 270E _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 2711 _ 0F B6. 45, FC
        mov     byte [edx], al                          ; 2715 _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 2717 _ 8B. 45, 08
        mov     byte [eax+3H], 2                        ; 271A _ C6. 40, 03, 02
?_135:  mov     eax, 0                                  ; 271E _ B8, 00000000
        jmp     ?_141                                   ; 2723 _ E9, 000000DC

?_136:  mov     eax, dword [ebp+8H]                     ; 2728 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 272B _ 0F B6. 40, 03
        cmp     al, 2                                   ; 272F _ 3C, 02
        jnz     ?_137                                   ; 2731 _ 75, 1B
        mov     edx, dword [ebp+8H]                     ; 2733 _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 2736 _ 0F B6. 45, FC
        mov     byte [edx+1H], al                       ; 273A _ 88. 42, 01
        mov     eax, dword [ebp+8H]                     ; 273D _ 8B. 45, 08
        mov     byte [eax+3H], 3                        ; 2740 _ C6. 40, 03, 03
        mov     eax, 0                                  ; 2744 _ B8, 00000000
        jmp     ?_141                                   ; 2749 _ E9, 000000B6

?_137:  mov     eax, dword [ebp+8H]                     ; 274E _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 2751 _ 0F B6. 40, 03
        cmp     al, 3                                   ; 2755 _ 3C, 03
        jne     ?_140                                   ; 2757 _ 0F 85, 000000A2
        mov     edx, dword [ebp+8H]                     ; 275D _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 2760 _ 0F B6. 45, FC
        mov     byte [edx+2H], al                       ; 2764 _ 88. 42, 02
        mov     eax, dword [ebp+8H]                     ; 2767 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 276A _ C6. 40, 03, 01
        mov     eax, dword [ebp+8H]                     ; 276E _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 2771 _ 0F B6. 00
        movzx   eax, al                                 ; 2774 _ 0F B6. C0
        and     eax, 07H                                ; 2777 _ 83. E0, 07
        mov     edx, eax                                ; 277A _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 277C _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 277F _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 2782 _ 8B. 45, 08
        movzx   eax, byte [eax+1H]                      ; 2785 _ 0F B6. 40, 01
        movzx   eax, al                                 ; 2789 _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 278C _ 8B. 55, 08
        mov     dword [edx+4H], eax                     ; 278F _ 89. 42, 04
        mov     eax, dword [ebp+8H]                     ; 2792 _ 8B. 45, 08
        movzx   eax, byte [eax+2H]                      ; 2795 _ 0F B6. 40, 02
        movzx   eax, al                                 ; 2799 _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 279C _ 8B. 55, 08
        mov     dword [edx+8H], eax                     ; 279F _ 89. 42, 08
        mov     eax, dword [ebp+8H]                     ; 27A2 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 27A5 _ 0F B6. 00
        movzx   eax, al                                 ; 27A8 _ 0F B6. C0
        and     eax, 10H                                ; 27AB _ 83. E0, 10
        test    eax, eax                                ; 27AE _ 85. C0
        jz      ?_138                                   ; 27B0 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 27B2 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 27B5 _ 8B. 40, 04
        or      eax, 0FFFFFF00H                         ; 27B8 _ 0D, FFFFFF00
        mov     edx, eax                                ; 27BD _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 27BF _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 27C2 _ 89. 50, 04
?_138:  mov     eax, dword [ebp+8H]                     ; 27C5 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 27C8 _ 0F B6. 00
        movzx   eax, al                                 ; 27CB _ 0F B6. C0
        and     eax, 20H                                ; 27CE _ 83. E0, 20
        test    eax, eax                                ; 27D1 _ 85. C0
        jz      ?_139                                   ; 27D3 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 27D5 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 27D8 _ 8B. 40, 08
        or      eax, 0FFFFFF00H                         ; 27DB _ 0D, FFFFFF00
        mov     edx, eax                                ; 27E0 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 27E2 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 27E5 _ 89. 50, 08
?_139:  mov     eax, dword [ebp+8H]                     ; 27E8 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 27EB _ 8B. 40, 08
        neg     eax                                     ; 27EE _ F7. D8
        mov     edx, eax                                ; 27F0 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 27F2 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 27F5 _ 89. 50, 08
        mov     eax, 1                                  ; 27F8 _ B8, 00000001
        jmp     ?_141                                   ; 27FD _ EB, 05

?_140:  mov     eax, 4294967295                         ; 27FF _ B8, FFFFFFFF
?_141:  leave                                           ; 2804 _ C9
        ret                                             ; 2805 _ C3
; _mouse_decode End of function

_showMemoryInfo:; Function begin
        push    ebp                                     ; 2806 _ 55
        mov     ebp, esp                                ; 2807 _ 89. E5
        sub     esp, 72                                 ; 2809 _ 83. EC, 48
        mov     dword [ebp-0CH], 0                      ; 280C _ C7. 45, F4, 00000000
        mov     dword [ebp-10H], 0                      ; 2813 _ C7. 45, F0, 00000000
        mov     dword [ebp-14H], 104                    ; 281A _ C7. 45, EC, 00000068
        mov     dword [ebp-18H], 80                     ; 2821 _ C7. 45, E8, 00000050
        mov     edx, dword [_ysize]                     ; 2828 _ 8B. 15, 00000140(d)
        mov     eax, dword [ebp+0CH]                    ; 282E _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2831 _ 8B. 00
        mov     dword [esp+8H], edx                     ; 2833 _ 89. 54 24, 08
        mov     edx, dword [ebp+1CH]                    ; 2837 _ 8B. 55, 1C
        mov     dword [esp+4H], edx                     ; 283A _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 283E _ 89. 04 24
        call    _init_screen8                           ; 2841 _ E8, FFFFF2B0
        mov     eax, dword [ebp+20H]                    ; 2846 _ 8B. 45, 20
        movsx   eax, al                                 ; 2849 _ 0F BE. C0
        mov     dword [esp+14H], ?_313                  ; 284C _ C7. 44 24, 14, 0000004A(d)
        mov     dword [esp+10H], eax                    ; 2854 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 2858 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 285B _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 285F _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 2862 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 2866 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2869 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 286D _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2870 _ 89. 04 24
        call    _showString                             ; 2873 _ E8, FFFFF767
        mov     eax, dword [ebp+18H]                    ; 2878 _ 8B. 45, 18
        mov     dword [esp], eax                        ; 287B _ 89. 04 24
        call    _intToHexStr                            ; 287E _ E8, FFFFFCBD
        mov     dword [ebp-1CH], eax                    ; 2883 _ 89. 45, E4
        mov     eax, dword [ebp+20H]                    ; 2886 _ 8B. 45, 20
        movsx   eax, al                                 ; 2889 _ 0F BE. C0
        mov     edx, dword [ebp-1CH]                    ; 288C _ 8B. 55, E4
        mov     dword [esp+14H], edx                    ; 288F _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 2893 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 2897 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 289A _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 289E _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 28A1 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 28A5 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 28A8 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 28AC _ 8B. 45, 08
        mov     dword [esp], eax                        ; 28AF _ 89. 04 24
        call    _showString                             ; 28B2 _ E8, FFFFF728
        add     dword [ebp-10H], 16                     ; 28B7 _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 28BB _ 8B. 45, 20
        movsx   eax, al                                 ; 28BE _ 0F BE. C0
        mov     dword [esp+14H], ?_314                  ; 28C1 _ C7. 44 24, 14, 00000054(d)
        mov     dword [esp+10H], eax                    ; 28C9 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 28CD _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 28D0 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 28D4 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 28D7 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 28DB _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 28DE _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 28E2 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 28E5 _ 89. 04 24
        call    _showString                             ; 28E8 _ E8, FFFFF6F2
        mov     eax, dword [ebp+10H]                    ; 28ED _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 28F0 _ 8B. 00
        mov     dword [esp], eax                        ; 28F2 _ 89. 04 24
        call    _intToHexStr                            ; 28F5 _ E8, FFFFFC46
        mov     dword [ebp-20H], eax                    ; 28FA _ 89. 45, E0
        mov     eax, dword [ebp+20H]                    ; 28FD _ 8B. 45, 20
        movsx   eax, al                                 ; 2900 _ 0F BE. C0
        mov     edx, dword [ebp-20H]                    ; 2903 _ 8B. 55, E0
        mov     dword [esp+14H], edx                    ; 2906 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 290A _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 290E _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 2911 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 2915 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 2918 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 291C _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 291F _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2923 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2926 _ 89. 04 24
        call    _showString                             ; 2929 _ E8, FFFFF6B1
        add     dword [ebp-10H], 16                     ; 292E _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 2932 _ 8B. 45, 20
        movsx   eax, al                                 ; 2935 _ 0F BE. C0
        mov     dword [esp+14H], ?_315                  ; 2938 _ C7. 44 24, 14, 00000060(d)
        mov     dword [esp+10H], eax                    ; 2940 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 2944 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 2947 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 294B _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 294E _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 2952 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2955 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2959 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 295C _ 89. 04 24
        call    _showString                             ; 295F _ E8, FFFFF67B
        mov     eax, dword [ebp+10H]                    ; 2964 _ 8B. 45, 10
        mov     eax, dword [eax+4H]                     ; 2967 _ 8B. 40, 04
        mov     dword [esp], eax                        ; 296A _ 89. 04 24
        call    _intToHexStr                            ; 296D _ E8, FFFFFBCE
        mov     dword [ebp-24H], eax                    ; 2972 _ 89. 45, DC
        mov     eax, dword [ebp+20H]                    ; 2975 _ 8B. 45, 20
        movsx   eax, al                                 ; 2978 _ 0F BE. C0
        mov     edx, dword [ebp-24H]                    ; 297B _ 8B. 55, DC
        mov     dword [esp+14H], edx                    ; 297E _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 2982 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 2986 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 2989 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 298D _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 2990 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 2994 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2997 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 299B _ 8B. 45, 08
        mov     dword [esp], eax                        ; 299E _ 89. 04 24
        call    _showString                             ; 29A1 _ E8, FFFFF639
        add     dword [ebp-10H], 16                     ; 29A6 _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 29AA _ 8B. 45, 20
        movsx   eax, al                                 ; 29AD _ 0F BE. C0
        mov     dword [esp+14H], ?_316                  ; 29B0 _ C7. 44 24, 14, 0000006C(d)
        mov     dword [esp+10H], eax                    ; 29B8 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 29BC _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 29BF _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 29C3 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 29C6 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 29CA _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 29CD _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 29D1 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 29D4 _ 89. 04 24
        call    _showString                             ; 29D7 _ E8, FFFFF603
        mov     eax, dword [ebp+10H]                    ; 29DC _ 8B. 45, 10
        mov     eax, dword [eax+8H]                     ; 29DF _ 8B. 40, 08
        mov     dword [esp], eax                        ; 29E2 _ 89. 04 24
        call    _intToHexStr                            ; 29E5 _ E8, FFFFFB56
        mov     dword [ebp-28H], eax                    ; 29EA _ 89. 45, D8
        mov     eax, dword [ebp+20H]                    ; 29ED _ 8B. 45, 20
        movsx   eax, al                                 ; 29F0 _ 0F BE. C0
        mov     edx, dword [ebp-28H]                    ; 29F3 _ 8B. 55, D8
        mov     dword [esp+14H], edx                    ; 29F6 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 29FA _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 29FE _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 2A01 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 2A05 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 2A08 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 2A0C _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2A0F _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2A13 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2A16 _ 89. 04 24
        call    _showString                             ; 2A19 _ E8, FFFFF5C1
        nop                                             ; 2A1E _ 90
        leave                                           ; 2A1F _ C9
        ret                                             ; 2A20 _ C3
; _showMemoryInfo End of function

_message_box:; Function begin
        push    ebp                                     ; 2A21 _ 55
        mov     ebp, esp                                ; 2A22 _ 89. E5
        sub     esp, 56                                 ; 2A24 _ 83. EC, 38
        mov     eax, dword [ebp+8H]                     ; 2A27 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2A2A _ 89. 04 24
        call    _sheet_alloc                            ; 2A2D _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 2A32 _ 89. 45, F4
        mov     eax, dword [_memman]                    ; 2A35 _ A1, 00000000(d)
        mov     dword [esp+4H], 10880                   ; 2A3A _ C7. 44 24, 04, 00002A80
        mov     dword [esp], eax                        ; 2A42 _ 89. 04 24
        call    _memman_alloc_4k                        ; 2A45 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 2A4A _ 89. 45, F0
        mov     dword [esp+10H], -1                     ; 2A4D _ C7. 44 24, 10, FFFFFFFF
        mov     dword [esp+0CH], 68                     ; 2A55 _ C7. 44 24, 0C, 00000044
        mov     dword [esp+8H], 160                     ; 2A5D _ C7. 44 24, 08, 000000A0
        mov     eax, dword [ebp-10H]                    ; 2A65 _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 2A68 _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 2A6C _ 8B. 45, F4
        mov     dword [esp], eax                        ; 2A6F _ 89. 04 24
        call    _sheet_setbuf                           ; 2A72 _ E8, 00000000(rel)
        mov     dword [esp+0CH], 1                      ; 2A77 _ C7. 44 24, 0C, 00000001
        mov     eax, dword [ebp+0CH]                    ; 2A7F _ 8B. 45, 0C
        mov     dword [esp+8H], eax                     ; 2A82 _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 2A86 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 2A89 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2A8D _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2A90 _ 89. 04 24
        call    _make_window8                           ; 2A93 _ E8, 00000074
        mov     dword [esp+14H], 7                      ; 2A98 _ C7. 44 24, 14, 00000007
        mov     dword [esp+10H], 16                     ; 2AA0 _ C7. 44 24, 10, 00000010
        mov     dword [esp+0CH], 144                    ; 2AA8 _ C7. 44 24, 0C, 00000090
        mov     dword [esp+8H], 28                      ; 2AB0 _ C7. 44 24, 08, 0000001C
        mov     dword [esp+4H], 8                       ; 2AB8 _ C7. 44 24, 04, 00000008
        mov     eax, dword [ebp-0CH]                    ; 2AC0 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 2AC3 _ 89. 04 24
        call    _make_textbox8                          ; 2AC6 _ E8, 00000444
        mov     dword [esp+0CH], 172                    ; 2ACB _ C7. 44 24, 0C, 000000AC
        mov     dword [esp+8H], 260                     ; 2AD3 _ C7. 44 24, 08, 00000104
        mov     eax, dword [ebp-0CH]                    ; 2ADB _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 2ADE _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2AE2 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2AE5 _ 89. 04 24
        call    _sheet_slide                            ; 2AE8 _ E8, 00000000(rel)
        mov     dword [esp+8H], 2                       ; 2AED _ C7. 44 24, 08, 00000002
        mov     eax, dword [ebp-0CH]                    ; 2AF5 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 2AF8 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2AFC _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2AFF _ 89. 04 24
        call    _sheet_updown                           ; 2B02 _ E8, 00000000(rel)
        mov     eax, dword [ebp-0CH]                    ; 2B07 _ 8B. 45, F4
        leave                                           ; 2B0A _ C9
        ret                                             ; 2B0B _ C3
; _message_box End of function

_make_window8:; Function begin
        push    ebp                                     ; 2B0C _ 55
        mov     ebp, esp                                ; 2B0D _ 89. E5
        push    ebx                                     ; 2B0F _ 53
        sub     esp, 68                                 ; 2B10 _ 83. EC, 44
        mov     eax, dword [ebp+14H]                    ; 2B13 _ 8B. 45, 14
        mov     byte [ebp-1CH], al                      ; 2B16 _ 88. 45, E4
        mov     eax, dword [ebp+0CH]                    ; 2B19 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2B1C _ 8B. 40, 04
        mov     dword [ebp-0CH], eax                    ; 2B1F _ 89. 45, F4
        mov     eax, dword [ebp+0CH]                    ; 2B22 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2B25 _ 8B. 40, 08
        mov     dword [ebp-10H], eax                    ; 2B28 _ 89. 45, F0
        mov     eax, dword [ebp-0CH]                    ; 2B2B _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 2B2E _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 2B31 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2B34 _ 8B. 00
        mov     dword [esp+18H], 0                      ; 2B36 _ C7. 44 24, 18, 00000000
        mov     dword [esp+14H], edx                    ; 2B3E _ 89. 54 24, 14
        mov     dword [esp+10H], 0                      ; 2B42 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 2B4A _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 2B52 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-0CH]                    ; 2B5A _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 2B5D _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2B61 _ 89. 04 24
        call    _boxfill8                               ; 2B64 _ E8, FFFFF5EA
        mov     eax, dword [ebp-0CH]                    ; 2B69 _ 8B. 45, F4
        lea     edx, [eax-2H]                           ; 2B6C _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 2B6F _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2B72 _ 8B. 00
        mov     dword [esp+18H], 1                      ; 2B74 _ C7. 44 24, 18, 00000001
        mov     dword [esp+14H], edx                    ; 2B7C _ 89. 54 24, 14
        mov     dword [esp+10H], 1                      ; 2B80 _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], 1                      ; 2B88 _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 7                       ; 2B90 _ C7. 44 24, 08, 00000007
        mov     edx, dword [ebp-0CH]                    ; 2B98 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 2B9B _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2B9F _ 89. 04 24
        call    _boxfill8                               ; 2BA2 _ E8, FFFFF5AC
        mov     eax, dword [ebp-10H]                    ; 2BA7 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 2BAA _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 2BAD _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2BB0 _ 8B. 00
        mov     dword [esp+18H], edx                    ; 2BB2 _ 89. 54 24, 18
        mov     dword [esp+14H], 0                      ; 2BB6 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], 0                      ; 2BBE _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 2BC6 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 2BCE _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-0CH]                    ; 2BD6 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 2BD9 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2BDD _ 89. 04 24
        call    _boxfill8                               ; 2BE0 _ E8, FFFFF56E
        mov     eax, dword [ebp-10H]                    ; 2BE5 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 2BE8 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 2BEB _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2BEE _ 8B. 00
        mov     dword [esp+18H], edx                    ; 2BF0 _ 89. 54 24, 18
        mov     dword [esp+14H], 1                      ; 2BF4 _ C7. 44 24, 14, 00000001
        mov     dword [esp+10H], 1                      ; 2BFC _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], 1                      ; 2C04 _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 7                       ; 2C0C _ C7. 44 24, 08, 00000007
        mov     edx, dword [ebp-0CH]                    ; 2C14 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 2C17 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2C1B _ 89. 04 24
        call    _boxfill8                               ; 2C1E _ E8, FFFFF530
        mov     eax, dword [ebp-10H]                    ; 2C23 _ 8B. 45, F0
        lea     ebx, [eax-2H]                           ; 2C26 _ 8D. 58, FE
        mov     eax, dword [ebp-0CH]                    ; 2C29 _ 8B. 45, F4
        lea     ecx, [eax-2H]                           ; 2C2C _ 8D. 48, FE
        mov     eax, dword [ebp-0CH]                    ; 2C2F _ 8B. 45, F4
        lea     edx, [eax-2H]                           ; 2C32 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 2C35 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2C38 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 2C3A _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 2C3E _ 89. 4C 24, 14
        mov     dword [esp+10H], 1                      ; 2C42 _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], edx                    ; 2C4A _ 89. 54 24, 0C
        mov     dword [esp+8H], 15                      ; 2C4E _ C7. 44 24, 08, 0000000F
        mov     edx, dword [ebp-0CH]                    ; 2C56 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 2C59 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2C5D _ 89. 04 24
        call    _boxfill8                               ; 2C60 _ E8, FFFFF4EE
        mov     eax, dword [ebp-10H]                    ; 2C65 _ 8B. 45, F0
        lea     ebx, [eax-1H]                           ; 2C68 _ 8D. 58, FF
        mov     eax, dword [ebp-0CH]                    ; 2C6B _ 8B. 45, F4
        lea     ecx, [eax-1H]                           ; 2C6E _ 8D. 48, FF
        mov     eax, dword [ebp-0CH]                    ; 2C71 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 2C74 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 2C77 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2C7A _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 2C7C _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 2C80 _ 89. 4C 24, 14
        mov     dword [esp+10H], 0                      ; 2C84 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], edx                    ; 2C8C _ 89. 54 24, 0C
        mov     dword [esp+8H], 0                       ; 2C90 _ C7. 44 24, 08, 00000000
        mov     edx, dword [ebp-0CH]                    ; 2C98 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 2C9B _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2C9F _ 89. 04 24
        call    _boxfill8                               ; 2CA2 _ E8, FFFFF4AC
        mov     eax, dword [ebp-10H]                    ; 2CA7 _ 8B. 45, F0
        lea     ecx, [eax-3H]                           ; 2CAA _ 8D. 48, FD
        mov     eax, dword [ebp-0CH]                    ; 2CAD _ 8B. 45, F4
        lea     edx, [eax-3H]                           ; 2CB0 _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 2CB3 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2CB6 _ 8B. 00
        mov     dword [esp+18H], ecx                    ; 2CB8 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 2CBC _ 89. 54 24, 14
        mov     dword [esp+10H], 2                      ; 2CC0 _ C7. 44 24, 10, 00000002
        mov     dword [esp+0CH], 2                      ; 2CC8 _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 8                       ; 2CD0 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-0CH]                    ; 2CD8 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 2CDB _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2CDF _ 89. 04 24
        call    _boxfill8                               ; 2CE2 _ E8, FFFFF46C
        mov     eax, dword [ebp-0CH]                    ; 2CE7 _ 8B. 45, F4
        lea     edx, [eax-4H]                           ; 2CEA _ 8D. 50, FC
        mov     eax, dword [ebp+0CH]                    ; 2CED _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2CF0 _ 8B. 00
        mov     dword [esp+18H], 20                     ; 2CF2 _ C7. 44 24, 18, 00000014
        mov     dword [esp+14H], edx                    ; 2CFA _ 89. 54 24, 14
        mov     dword [esp+10H], 3                      ; 2CFE _ C7. 44 24, 10, 00000003
        mov     dword [esp+0CH], 3                      ; 2D06 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 12                      ; 2D0E _ C7. 44 24, 08, 0000000C
        mov     edx, dword [ebp-0CH]                    ; 2D16 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 2D19 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2D1D _ 89. 04 24
        call    _boxfill8                               ; 2D20 _ E8, FFFFF42E
        mov     eax, dword [ebp-10H]                    ; 2D25 _ 8B. 45, F0
        lea     ebx, [eax-2H]                           ; 2D28 _ 8D. 58, FE
        mov     eax, dword [ebp-0CH]                    ; 2D2B _ 8B. 45, F4
        lea     ecx, [eax-2H]                           ; 2D2E _ 8D. 48, FE
        mov     eax, dword [ebp-10H]                    ; 2D31 _ 8B. 45, F0
        lea     edx, [eax-2H]                           ; 2D34 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 2D37 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2D3A _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 2D3C _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 2D40 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 2D44 _ 89. 54 24, 10
        mov     dword [esp+0CH], 1                      ; 2D48 _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 15                      ; 2D50 _ C7. 44 24, 08, 0000000F
        mov     edx, dword [ebp-0CH]                    ; 2D58 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 2D5B _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2D5F _ 89. 04 24
        call    _boxfill8                               ; 2D62 _ E8, FFFFF3EC
        mov     eax, dword [ebp-10H]                    ; 2D67 _ 8B. 45, F0
        lea     ebx, [eax-1H]                           ; 2D6A _ 8D. 58, FF
        mov     eax, dword [ebp-0CH]                    ; 2D6D _ 8B. 45, F4
        lea     ecx, [eax-1H]                           ; 2D70 _ 8D. 48, FF
        mov     eax, dword [ebp-10H]                    ; 2D73 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 2D76 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 2D79 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2D7C _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 2D7E _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 2D82 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 2D86 _ 89. 54 24, 10
        mov     dword [esp+0CH], 0                      ; 2D8A _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 2D92 _ C7. 44 24, 08, 00000000
        mov     edx, dword [ebp-0CH]                    ; 2D9A _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 2D9D _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2DA1 _ 89. 04 24
        call    _boxfill8                               ; 2DA4 _ E8, FFFFF3AA
        movsx   eax, byte [ebp-1CH]                     ; 2DA9 _ 0F BE. 45, E4
        mov     dword [esp+0CH], eax                    ; 2DAD _ 89. 44 24, 0C
        mov     eax, dword [ebp+10H]                    ; 2DB1 _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 2DB4 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 2DB8 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2DBB _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2DBF _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2DC2 _ 89. 04 24
        call    _make_wtitle8                           ; 2DC5 _ E8, 00000007
        nop                                             ; 2DCA _ 90
        add     esp, 68                                 ; 2DCB _ 83. C4, 44
        pop     ebx                                     ; 2DCE _ 5B
        pop     ebp                                     ; 2DCF _ 5D
        ret                                             ; 2DD0 _ C3
; _make_window8 End of function

_make_wtitle8:; Function begin
        push    ebp                                     ; 2DD1 _ 55
        mov     ebp, esp                                ; 2DD2 _ 89. E5
        push    ebx                                     ; 2DD4 _ 53
        sub     esp, 68                                 ; 2DD5 _ 83. EC, 44
        mov     eax, dword [ebp+14H]                    ; 2DD8 _ 8B. 45, 14
        mov     byte [ebp-1CH], al                      ; 2DDB _ 88. 45, E4
        cmp     byte [ebp-1CH], 0                       ; 2DDE _ 80. 7D, E4, 00
        jz      ?_142                                   ; 2DE2 _ 74, 0A
        mov     byte [ebp-12H], 7                       ; 2DE4 _ C6. 45, EE, 07
        mov     byte [ebp-13H], 12                      ; 2DE8 _ C6. 45, ED, 0C
        jmp     ?_143                                   ; 2DEC _ EB, 08

?_142:  mov     byte [ebp-12H], 8                       ; 2DEE _ C6. 45, EE, 08
        mov     byte [ebp-13H], 15                      ; 2DF2 _ C6. 45, ED, 0F
?_143:  mov     eax, dword [ebp+0CH]                    ; 2DF6 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2DF9 _ 8B. 40, 04
        lea     ebx, [eax-4H]                           ; 2DFC _ 8D. 58, FC
        movzx   eax, byte [ebp-13H]                     ; 2DFF _ 0F B6. 45, ED
        movzx   eax, al                                 ; 2E03 _ 0F B6. C0
        mov     edx, dword [ebp+0CH]                    ; 2E06 _ 8B. 55, 0C
        mov     ecx, dword [edx+4H]                     ; 2E09 _ 8B. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 2E0C _ 8B. 55, 0C
        mov     edx, dword [edx]                        ; 2E0F _ 8B. 12
        mov     dword [esp+18H], 20                     ; 2E11 _ C7. 44 24, 18, 00000014
        mov     dword [esp+14H], ebx                    ; 2E19 _ 89. 5C 24, 14
        mov     dword [esp+10H], 3                      ; 2E1D _ C7. 44 24, 10, 00000003
        mov     dword [esp+0CH], 3                      ; 2E25 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], eax                     ; 2E2D _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 2E31 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 2E35 _ 89. 14 24
        call    _boxfill8                               ; 2E38 _ E8, FFFFF316
        movsx   eax, byte [ebp-12H]                     ; 2E3D _ 0F BE. 45, EE
        mov     edx, dword [ebp+10H]                    ; 2E41 _ 8B. 55, 10
        mov     dword [esp+14H], edx                    ; 2E44 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 2E48 _ 89. 44 24, 10
        mov     dword [esp+0CH], 4                      ; 2E4C _ C7. 44 24, 0C, 00000004
        mov     dword [esp+8H], 24                      ; 2E54 _ C7. 44 24, 08, 00000018
        mov     eax, dword [ebp+0CH]                    ; 2E5C _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2E5F _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2E63 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2E66 _ 89. 04 24
        call    _showString                             ; 2E69 _ E8, FFFFF171
        mov     dword [ebp-10H], 0                      ; 2E6E _ C7. 45, F0, 00000000
        jmp     ?_151                                   ; 2E75 _ E9, 00000084

?_144:  mov     dword [ebp-0CH], 0                      ; 2E7A _ C7. 45, F4, 00000000
        jmp     ?_150                                   ; 2E81 _ EB, 71

?_145:  mov     eax, dword [ebp-10H]                    ; 2E83 _ 8B. 45, F0
        shl     eax, 4                                  ; 2E86 _ C1. E0, 04
        mov     edx, eax                                ; 2E89 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 2E8B _ 8B. 45, F4
        add     eax, edx                                ; 2E8E _ 01. D0
        add     eax, _closebtn.2694                     ; 2E90 _ 05, 00000260(d)
        movzx   eax, byte [eax]                         ; 2E95 _ 0F B6. 00
        mov     byte [ebp-11H], al                      ; 2E98 _ 88. 45, EF
        cmp     byte [ebp-11H], 64                      ; 2E9B _ 80. 7D, EF, 40
        jnz     ?_146                                   ; 2E9F _ 75, 06
        mov     byte [ebp-11H], 0                       ; 2EA1 _ C6. 45, EF, 00
        jmp     ?_149                                   ; 2EA5 _ EB, 1C

?_146:  cmp     byte [ebp-11H], 36                      ; 2EA7 _ 80. 7D, EF, 24
        jnz     ?_147                                   ; 2EAB _ 75, 06
        mov     byte [ebp-11H], 15                      ; 2EAD _ C6. 45, EF, 0F
        jmp     ?_149                                   ; 2EB1 _ EB, 10

?_147:  cmp     byte [ebp-11H], 81                      ; 2EB3 _ 80. 7D, EF, 51
        jnz     ?_148                                   ; 2EB7 _ 75, 06
        mov     byte [ebp-11H], 8                       ; 2EB9 _ C6. 45, EF, 08
        jmp     ?_149                                   ; 2EBD _ EB, 04

?_148:  mov     byte [ebp-11H], 7                       ; 2EBF _ C6. 45, EF, 07
?_149:  mov     eax, dword [ebp+0CH]                    ; 2EC3 _ 8B. 45, 0C
        mov     ecx, dword [eax]                        ; 2EC6 _ 8B. 08
        mov     eax, dword [ebp-10H]                    ; 2EC8 _ 8B. 45, F0
        lea     edx, [eax+5H]                           ; 2ECB _ 8D. 50, 05
        mov     eax, dword [ebp+0CH]                    ; 2ECE _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2ED1 _ 8B. 40, 04
        imul    eax, edx                                ; 2ED4 _ 0F AF. C2
        mov     edx, dword [ebp+0CH]                    ; 2ED7 _ 8B. 55, 0C
        mov     edx, dword [edx+4H]                     ; 2EDA _ 8B. 52, 04
        lea     ebx, [edx-15H]                          ; 2EDD _ 8D. 5A, EB
        mov     edx, dword [ebp-0CH]                    ; 2EE0 _ 8B. 55, F4
        add     edx, ebx                                ; 2EE3 _ 01. DA
        add     eax, edx                                ; 2EE5 _ 01. D0
        lea     edx, [ecx+eax]                          ; 2EE7 _ 8D. 14 01
        movzx   eax, byte [ebp-11H]                     ; 2EEA _ 0F B6. 45, EF
        mov     byte [edx], al                          ; 2EEE _ 88. 02
        add     dword [ebp-0CH], 1                      ; 2EF0 _ 83. 45, F4, 01
?_150:  cmp     dword [ebp-0CH], 15                     ; 2EF4 _ 83. 7D, F4, 0F
        jle     ?_145                                   ; 2EF8 _ 7E, 89
        add     dword [ebp-10H], 1                      ; 2EFA _ 83. 45, F0, 01
?_151:  cmp     dword [ebp-10H], 13                     ; 2EFE _ 83. 7D, F0, 0D
        jle     ?_144                                   ; 2F02 _ 0F 8E, FFFFFF72
        nop                                             ; 2F08 _ 90
        add     esp, 68                                 ; 2F09 _ 83. C4, 44
        pop     ebx                                     ; 2F0C _ 5B
        pop     ebp                                     ; 2F0D _ 5D
        ret                                             ; 2F0E _ C3
; _make_wtitle8 End of function

_make_textbox8:; Function begin
        push    ebp                                     ; 2F0F _ 55
        mov     ebp, esp                                ; 2F10 _ 89. E5
        push    edi                                     ; 2F12 _ 57
        push    esi                                     ; 2F13 _ 56
        push    ebx                                     ; 2F14 _ 53
        sub     esp, 44                                 ; 2F15 _ 83. EC, 2C
        mov     edx, dword [ebp+0CH]                    ; 2F18 _ 8B. 55, 0C
        mov     eax, dword [ebp+14H]                    ; 2F1B _ 8B. 45, 14
        add     eax, edx                                ; 2F1E _ 01. D0
        mov     dword [ebp-10H], eax                    ; 2F20 _ 89. 45, F0
        mov     edx, dword [ebp+10H]                    ; 2F23 _ 8B. 55, 10
        mov     eax, dword [ebp+18H]                    ; 2F26 _ 8B. 45, 18
        add     eax, edx                                ; 2F29 _ 01. D0
        mov     dword [ebp-14H], eax                    ; 2F2B _ 89. 45, EC
        mov     eax, dword [ebp+10H]                    ; 2F2E _ 8B. 45, 10
        lea     edi, [eax-3H]                           ; 2F31 _ 8D. 78, FD
        mov     eax, dword [ebp-10H]                    ; 2F34 _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 2F37 _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 2F3A _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 2F3D _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 2F40 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 2F43 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 2F46 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 2F49 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2F4C _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2F4F _ 8B. 00
        mov     dword [esp+18H], edi                    ; 2F51 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 2F55 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 2F59 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 2F5D _ 89. 4C 24, 0C
        mov     dword [esp+8H], 15                      ; 2F61 _ C7. 44 24, 08, 0000000F
        mov     dword [esp+4H], edx                     ; 2F69 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2F6D _ 89. 04 24
        call    _boxfill8                               ; 2F70 _ E8, FFFFF1DE
        mov     eax, dword [ebp-14H]                    ; 2F75 _ 8B. 45, EC
        lea     edi, [eax+1H]                           ; 2F78 _ 8D. 78, 01
        mov     eax, dword [ebp+0CH]                    ; 2F7B _ 8B. 45, 0C
        lea     esi, [eax-3H]                           ; 2F7E _ 8D. 70, FD
        mov     eax, dword [ebp+10H]                    ; 2F81 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 2F84 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 2F87 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 2F8A _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 2F8D _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 2F90 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2F93 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2F96 _ 8B. 00
        mov     dword [esp+18H], edi                    ; 2F98 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 2F9C _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 2FA0 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 2FA4 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 15                      ; 2FA8 _ C7. 44 24, 08, 0000000F
        mov     dword [esp+4H], edx                     ; 2FB0 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2FB4 _ 89. 04 24
        call    _boxfill8                               ; 2FB7 _ E8, FFFFF197
        mov     eax, dword [ebp-14H]                    ; 2FBC _ 8B. 45, EC
        lea     edi, [eax+2H]                           ; 2FBF _ 8D. 78, 02
        mov     eax, dword [ebp-10H]                    ; 2FC2 _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 2FC5 _ 8D. 70, 01
        mov     eax, dword [ebp-14H]                    ; 2FC8 _ 8B. 45, EC
        lea     ebx, [eax+2H]                           ; 2FCB _ 8D. 58, 02
        mov     eax, dword [ebp+0CH]                    ; 2FCE _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 2FD1 _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 2FD4 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 2FD7 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2FDA _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2FDD _ 8B. 00
        mov     dword [esp+18H], edi                    ; 2FDF _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 2FE3 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 2FE7 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 2FEB _ 89. 4C 24, 0C
        mov     dword [esp+8H], 7                       ; 2FEF _ C7. 44 24, 08, 00000007
        mov     dword [esp+4H], edx                     ; 2FF7 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2FFB _ 89. 04 24
        call    _boxfill8                               ; 2FFE _ E8, FFFFF150
        mov     eax, dword [ebp-14H]                    ; 3003 _ 8B. 45, EC
        lea     edi, [eax+2H]                           ; 3006 _ 8D. 78, 02
        mov     eax, dword [ebp-10H]                    ; 3009 _ 8B. 45, F0
        lea     esi, [eax+2H]                           ; 300C _ 8D. 70, 02
        mov     eax, dword [ebp+10H]                    ; 300F _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 3012 _ 8D. 58, FD
        mov     eax, dword [ebp-10H]                    ; 3015 _ 8B. 45, F0
        lea     ecx, [eax+2H]                           ; 3018 _ 8D. 48, 02
        mov     eax, dword [ebp+8H]                     ; 301B _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 301E _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 3021 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3024 _ 8B. 00
        mov     dword [esp+18H], edi                    ; 3026 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 302A _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 302E _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 3032 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 7                       ; 3036 _ C7. 44 24, 08, 00000007
        mov     dword [esp+4H], edx                     ; 303E _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3042 _ 89. 04 24
        call    _boxfill8                               ; 3045 _ E8, FFFFF109
        mov     eax, dword [ebp+10H]                    ; 304A _ 8B. 45, 10
        lea     esi, [eax-2H]                           ; 304D _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 3050 _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 3053 _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 3056 _ 8B. 45, 0C
        lea     ecx, [eax-1H]                           ; 3059 _ 8D. 48, FF
        mov     eax, dword [ebp+8H]                     ; 305C _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 305F _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 3062 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3065 _ 8B. 00
        mov     dword [esp+18H], esi                    ; 3067 _ 89. 74 24, 18
        mov     esi, dword [ebp-10H]                    ; 306B _ 8B. 75, F0
        mov     dword [esp+14H], esi                    ; 306E _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 3072 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 3076 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 0                       ; 307A _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 3082 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3086 _ 89. 04 24
        call    _boxfill8                               ; 3089 _ E8, FFFFF0C5
        mov     eax, dword [ebp+0CH]                    ; 308E _ 8B. 45, 0C
        lea     esi, [eax-2H]                           ; 3091 _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 3094 _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 3097 _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 309A _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 309D _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 30A0 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 30A3 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 30A6 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 30A9 _ 8B. 00
        mov     edi, dword [ebp-14H]                    ; 30AB _ 8B. 7D, EC
        mov     dword [esp+18H], edi                    ; 30AE _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 30B2 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 30B6 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 30BA _ 89. 4C 24, 0C
        mov     dword [esp+8H], 0                       ; 30BE _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 30C6 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 30CA _ 89. 04 24
        call    _boxfill8                               ; 30CD _ E8, FFFFF081
        mov     eax, dword [ebp-14H]                    ; 30D2 _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 30D5 _ 8D. 70, 01
        mov     eax, dword [ebp-14H]                    ; 30D8 _ 8B. 45, EC
        lea     ebx, [eax+1H]                           ; 30DB _ 8D. 58, 01
        mov     eax, dword [ebp+0CH]                    ; 30DE _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 30E1 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 30E4 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 30E7 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 30EA _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 30ED _ 8B. 00
        mov     dword [esp+18H], esi                    ; 30EF _ 89. 74 24, 18
        mov     esi, dword [ebp-10H]                    ; 30F3 _ 8B. 75, F0
        mov     dword [esp+14H], esi                    ; 30F6 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 30FA _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 30FE _ 89. 4C 24, 0C
        mov     dword [esp+8H], 8                       ; 3102 _ C7. 44 24, 08, 00000008
        mov     dword [esp+4H], edx                     ; 310A _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 310E _ 89. 04 24
        call    _boxfill8                               ; 3111 _ E8, FFFFF03D
        mov     eax, dword [ebp-14H]                    ; 3116 _ 8B. 45, EC
        lea     edi, [eax+1H]                           ; 3119 _ 8D. 78, 01
        mov     eax, dword [ebp-10H]                    ; 311C _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 311F _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 3122 _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 3125 _ 8D. 58, FE
        mov     eax, dword [ebp-10H]                    ; 3128 _ 8B. 45, F0
        lea     ecx, [eax+1H]                           ; 312B _ 8D. 48, 01
        mov     eax, dword [ebp+8H]                     ; 312E _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 3131 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 3134 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3137 _ 8B. 00
        mov     dword [esp+18H], edi                    ; 3139 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 313D _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 3141 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 3145 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 8                       ; 3149 _ C7. 44 24, 08, 00000008
        mov     dword [esp+4H], edx                     ; 3151 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3155 _ 89. 04 24
        call    _boxfill8                               ; 3158 _ E8, FFFFEFF6
        mov     eax, dword [ebp+10H]                    ; 315D _ 8B. 45, 10
        lea     esi, [eax-1H]                           ; 3160 _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 3163 _ 8B. 45, 0C
        lea     ebx, [eax-1H]                           ; 3166 _ 8D. 58, FF
        mov     eax, dword [ebp+1CH]                    ; 3169 _ 8B. 45, 1C
        movzx   eax, al                                 ; 316C _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 316F _ 8B. 55, 08
        mov     ecx, dword [edx+4H]                     ; 3172 _ 8B. 4A, 04
        mov     edx, dword [ebp+8H]                     ; 3175 _ 8B. 55, 08
        mov     edx, dword [edx]                        ; 3178 _ 8B. 12
        mov     edi, dword [ebp-14H]                    ; 317A _ 8B. 7D, EC
        mov     dword [esp+18H], edi                    ; 317D _ 89. 7C 24, 18
        mov     edi, dword [ebp-10H]                    ; 3181 _ 8B. 7D, F0
        mov     dword [esp+14H], edi                    ; 3184 _ 89. 7C 24, 14
        mov     dword [esp+10H], esi                    ; 3188 _ 89. 74 24, 10
        mov     dword [esp+0CH], ebx                    ; 318C _ 89. 5C 24, 0C
        mov     dword [esp+8H], eax                     ; 3190 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 3194 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 3198 _ 89. 14 24
        call    _boxfill8                               ; 319B _ E8, FFFFEFB3
        nop                                             ; 31A0 _ 90
        add     esp, 44                                 ; 31A1 _ 83. C4, 2C
        pop     ebx                                     ; 31A4 _ 5B
        pop     esi                                     ; 31A5 _ 5E
        pop     edi                                     ; 31A6 _ 5F
        pop     ebp                                     ; 31A7 _ 5D
        ret                                             ; 31A8 _ C3
; _make_textbox8 End of function

_file_loadfile:; Function begin
        push    ebp                                     ; 31A9 _ 55
        mov     ebp, esp                                ; 31AA _ 89. E5
        sub     esp, 56                                 ; 31AC _ 83. EC, 38
        mov     dword [ebp-0CH], 78848                  ; 31AF _ C7. 45, F4, 00013400
        mov     eax, dword [_memman]                    ; 31B6 _ A1, 00000000(d)
        mov     dword [esp+4H], 13                      ; 31BB _ C7. 44 24, 04, 0000000D
        mov     dword [esp], eax                        ; 31C3 _ 89. 04 24
        call    _memman_alloc                           ; 31C6 _ E8, 00000000(rel)
        mov     dword [ebp-1CH], eax                    ; 31CB _ 89. 45, E4
        mov     eax, dword [ebp-1CH]                    ; 31CE _ 8B. 45, E4
        add     eax, 12                                 ; 31D1 _ 83. C0, 0C
        mov     byte [eax], 0                           ; 31D4 _ C6. 00, 00
        jmp     ?_162                                   ; 31D7 _ E9, 00000125

?_152:  mov     dword [ebp-10H], 0                      ; 31DC _ C7. 45, F0, 00000000
        jmp     ?_154                                   ; 31E3 _ EB, 2A

?_153:  mov     edx, dword [ebp-0CH]                    ; 31E5 _ 8B. 55, F4
        mov     eax, dword [ebp-10H]                    ; 31E8 _ 8B. 45, F0
        add     eax, edx                                ; 31EB _ 01. D0
        movzx   eax, byte [eax]                         ; 31ED _ 0F B6. 00
        test    al, al                                  ; 31F0 _ 84. C0
        jz      ?_155                                   ; 31F2 _ 74, 23
        mov     edx, dword [ebp-0CH]                    ; 31F4 _ 8B. 55, F4
        mov     eax, dword [ebp-10H]                    ; 31F7 _ 8B. 45, F0
        add     eax, edx                                ; 31FA _ 01. D0
        movzx   ecx, byte [eax]                         ; 31FC _ 0F B6. 08
        mov     edx, dword [ebp-10H]                    ; 31FF _ 8B. 55, F0
        mov     eax, dword [ebp-1CH]                    ; 3202 _ 8B. 45, E4
        add     eax, edx                                ; 3205 _ 01. D0
        mov     edx, ecx                                ; 3207 _ 89. CA
        mov     byte [eax], dl                          ; 3209 _ 88. 10
        add     dword [ebp-10H], 1                      ; 320B _ 83. 45, F0, 01
?_154:  cmp     dword [ebp-10H], 7                      ; 320F _ 83. 7D, F0, 07
        jle     ?_153                                   ; 3213 _ 7E, D0
        jmp     ?_156                                   ; 3215 _ EB, 01

?_155:  nop                                             ; 3217 _ 90
?_156:  mov     dword [ebp-14H], 0                      ; 3218 _ C7. 45, EC, 00000000
        mov     edx, dword [ebp-10H]                    ; 321F _ 8B. 55, F0
        mov     eax, dword [ebp-1CH]                    ; 3222 _ 8B. 45, E4
        add     eax, edx                                ; 3225 _ 01. D0
        mov     byte [eax], 46                          ; 3227 _ C6. 00, 2E
        add     dword [ebp-10H], 1                      ; 322A _ 83. 45, F0, 01
        mov     dword [ebp-14H], 0                      ; 322E _ C7. 45, EC, 00000000
        jmp     ?_158                                   ; 3235 _ EB, 22

?_157:  mov     edx, dword [ebp-0CH]                    ; 3237 _ 8B. 55, F4
        mov     eax, dword [ebp-14H]                    ; 323A _ 8B. 45, EC
        add     eax, edx                                ; 323D _ 01. D0
        add     eax, 8                                  ; 323F _ 83. C0, 08
        movzx   ecx, byte [eax]                         ; 3242 _ 0F B6. 08
        mov     edx, dword [ebp-10H]                    ; 3245 _ 8B. 55, F0
        mov     eax, dword [ebp-1CH]                    ; 3248 _ 8B. 45, E4
        add     eax, edx                                ; 324B _ 01. D0
        mov     edx, ecx                                ; 324D _ 89. CA
        mov     byte [eax], dl                          ; 324F _ 88. 10
        add     dword [ebp-10H], 1                      ; 3251 _ 83. 45, F0, 01
        add     dword [ebp-14H], 1                      ; 3255 _ 83. 45, EC, 01
?_158:  cmp     dword [ebp-14H], 2                      ; 3259 _ 83. 7D, EC, 02
        jle     ?_157                                   ; 325D _ 7E, D8
        mov     eax, dword [ebp-1CH]                    ; 325F _ 8B. 45, E4
        mov     dword [esp+4H], eax                     ; 3262 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3266 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3269 _ 89. 04 24
        call    _strcmp                                 ; 326C _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 3271 _ 83. F8, 01
        jne     ?_161                                   ; 3274 _ 0F 85, 00000083
        mov     eax, dword [ebp-0CH]                    ; 327A _ 8B. 45, F4
        mov     edx, dword [eax+1CH]                    ; 327D _ 8B. 50, 1C
        mov     eax, dword [_memman]                    ; 3280 _ A1, 00000000(d)
        mov     dword [esp+4H], edx                     ; 3285 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3289 _ 89. 04 24
        call    _memman_alloc_4k                        ; 328C _ E8, 00000000(rel)
        mov     edx, eax                                ; 3291 _ 89. C2
        mov     eax, dword [ebp+0CH]                    ; 3293 _ 8B. 45, 0C
        mov     dword [eax], edx                        ; 3296 _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 3298 _ 8B. 45, F4
        mov     eax, dword [eax+1CH]                    ; 329B _ 8B. 40, 1C
        mov     edx, eax                                ; 329E _ 89. C2
        mov     eax, dword [ebp+0CH]                    ; 32A0 _ 8B. 45, 0C
        mov     dword [eax+4H], edx                     ; 32A3 _ 89. 50, 04
        mov     dword [ebp-20H], 88064                  ; 32A6 _ C7. 45, E0, 00015800
        mov     eax, dword [ebp-0CH]                    ; 32AD _ 8B. 45, F4
        movzx   eax, word [eax+1AH]                     ; 32B0 _ 0F B7. 40, 1A
        movzx   eax, ax                                 ; 32B4 _ 0F B7. C0
        shl     eax, 9                                  ; 32B7 _ C1. E0, 09
        add     dword [ebp-20H], eax                    ; 32BA _ 01. 45, E0
        mov     eax, dword [ebp-0CH]                    ; 32BD _ 8B. 45, F4
        mov     eax, dword [eax+1CH]                    ; 32C0 _ 8B. 40, 1C
        mov     dword [ebp-24H], eax                    ; 32C3 _ 89. 45, DC
        mov     dword [ebp-18H], 0                      ; 32C6 _ C7. 45, E8, 00000000
        mov     dword [ebp-18H], 0                      ; 32CD _ C7. 45, E8, 00000000
        jmp     ?_160                                   ; 32D4 _ EB, 1D

?_159:  mov     edx, dword [ebp-18H]                    ; 32D6 _ 8B. 55, E8
        mov     eax, dword [ebp-20H]                    ; 32D9 _ 8B. 45, E0
        add     eax, edx                                ; 32DC _ 01. D0
        movzx   ecx, byte [eax]                         ; 32DE _ 0F B6. 08
        mov     eax, dword [ebp+0CH]                    ; 32E1 _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 32E4 _ 8B. 10
        mov     eax, dword [ebp-18H]                    ; 32E6 _ 8B. 45, E8
        add     eax, edx                                ; 32E9 _ 01. D0
        mov     edx, ecx                                ; 32EB _ 89. CA
        mov     byte [eax], dl                          ; 32ED _ 88. 10
        add     dword [ebp-18H], 1                      ; 32EF _ 83. 45, E8, 01
?_160:  mov     eax, dword [ebp-18H]                    ; 32F3 _ 8B. 45, E8
        cmp     eax, dword [ebp-24H]                    ; 32F6 _ 3B. 45, DC
        jl      ?_159                                   ; 32F9 _ 7C, DB
        jmp     ?_163                                   ; 32FB _ EB, 12

?_161:  add     dword [ebp-0CH], 32                     ; 32FD _ 83. 45, F4, 20
?_162:  mov     eax, dword [ebp-0CH]                    ; 3301 _ 8B. 45, F4
        movzx   eax, byte [eax]                         ; 3304 _ 0F B6. 00
        test    al, al                                  ; 3307 _ 84. C0
        jne     ?_152                                   ; 3309 _ 0F 85, FFFFFECD
?_163:  mov     edx, dword [ebp-1CH]                    ; 330F _ 8B. 55, E4
        mov     eax, dword [_memman]                    ; 3312 _ A1, 00000000(d)
        mov     dword [esp+8H], 13                      ; 3317 _ C7. 44 24, 08, 0000000D
        mov     dword [esp+4H], edx                     ; 331F _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3323 _ 89. 04 24
        call    _memman_free                            ; 3326 _ E8, 00000000(rel)
        nop                                             ; 332B _ 90
        leave                                           ; 332C _ C9
        ret                                             ; 332D _ C3
; _file_loadfile End of function

_kernel_api:; Function begin
        push    ebp                                     ; 332E _ 55
        mov     ebp, esp                                ; 332F _ 89. E5
        sub     esp, 40                                 ; 3331 _ 83. EC, 28
        call    _task_now                               ; 3334 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 3339 _ 89. 45, F4
        cmp     dword [ebp+1CH], 1                      ; 333C _ 83. 7D, 1C, 01
        jnz     ?_164                                   ; 3340 _ 75, 18
        mov     eax, dword [ebp+24H]                    ; 3342 _ 8B. 45, 24
        movsx   eax, al                                 ; 3345 _ 0F BE. C0
        mov     dword [esp+4H], 1                       ; 3348 _ C7. 44 24, 04, 00000001
        mov     dword [esp], eax                        ; 3350 _ 89. 04 24
        call    _cons_putchar                           ; 3353 _ E8, FFFFE595
        jmp     ?_166                                   ; 3358 _ EB, 29

?_164:  cmp     dword [ebp+1CH], 2                      ; 335A _ 83. 7D, 1C, 02
        jnz     ?_165                                   ; 335E _ 75, 15
        mov     edx, dword [_buffer]                    ; 3360 _ 8B. 15, 00000278(d)
        mov     eax, dword [ebp+18H]                    ; 3366 _ 8B. 45, 18
        add     eax, edx                                ; 3369 _ 01. D0
        mov     dword [esp], eax                        ; 336B _ 89. 04 24
        call    _cons_putstr                            ; 336E _ E8, FFFFE621
        jmp     ?_166                                   ; 3373 _ EB, 0E

?_165:  cmp     dword [ebp+1CH], 4                      ; 3375 _ 83. 7D, 1C, 04
        jnz     ?_166                                   ; 3379 _ 75, 08
        mov     eax, dword [ebp-0CH]                    ; 337B _ 8B. 45, F4
        add     eax, 48                                 ; 337E _ 83. C0, 30
        jmp     ?_167                                   ; 3381 _ EB, 05

?_166:  mov     eax, 0                                  ; 3383 _ B8, 00000000
?_167:  leave                                           ; 3388 _ C9
        ret                                             ; 3389 _ C3
; _kernel_api End of function

_intHandlerForException:; Function begin
        push    ebp                                     ; 338A _ 55
        mov     ebp, esp                                ; 338B _ 89. E5
        sub     esp, 40                                 ; 338D _ 83. EC, 28
        mov     dword [?_322], 8                        ; 3390 _ C7. 05, 0000000C(d), 00000008
        mov     dword [esp], ?_317                      ; 339A _ C7. 04 24, 00000078(d)
        call    _cons_putstr                            ; 33A1 _ E8, FFFFE5EE
        mov     dword [?_322], 8                        ; 33A6 _ C7. 05, 0000000C(d), 00000008
        mov     eax, dword [?_323]                      ; 33B0 _ A1, 00000010(d)
        add     eax, 16                                 ; 33B5 _ 83. C0, 10
        mov     dword [?_323], eax                      ; 33B8 _ A3, 00000010(d)
        mov     dword [esp], ?_318                      ; 33BD _ C7. 04 24, 00000080(d)
        call    _cons_putstr                            ; 33C4 _ E8, FFFFE5CB
        mov     eax, dword [?_323]                      ; 33C9 _ A1, 00000010(d)
        add     eax, 16                                 ; 33CE _ 83. C0, 10
        mov     dword [?_323], eax                      ; 33D1 _ A3, 00000010(d)
        mov     dword [?_322], 8                        ; 33D6 _ C7. 05, 0000000C(d), 00000008
        call    _task_now                               ; 33E0 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 33E5 _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 33E8 _ 8B. 45, F4
        add     eax, 48                                 ; 33EB _ 83. C0, 30
        leave                                           ; 33EE _ C9
        ret                                             ; 33EF _ C3
; _intHandlerForException End of function

_intHandlerForStackOverFlow:; Function begin
        push    ebp                                     ; 33F0 _ 55
        mov     ebp, esp                                ; 33F1 _ 89. E5
        sub     esp, 40                                 ; 33F3 _ 83. EC, 28
        mov     dword [?_322], 8                        ; 33F6 _ C7. 05, 0000000C(d), 00000008
        mov     dword [esp], ?_319                      ; 3400 _ C7. 04 24, 0000009C(d)
        call    _cons_putstr                            ; 3407 _ E8, FFFFE588
        mov     dword [?_322], 8                        ; 340C _ C7. 05, 0000000C(d), 00000008
        mov     eax, dword [?_323]                      ; 3416 _ A1, 00000010(d)
        add     eax, 16                                 ; 341B _ 83. C0, 10
        mov     dword [?_323], eax                      ; 341E _ A3, 00000010(d)
        mov     dword [esp], ?_320                      ; 3423 _ C7. 04 24, 000000A3(d)
        call    _cons_putstr                            ; 342A _ E8, FFFFE565
        mov     dword [?_322], 8                        ; 342F _ C7. 05, 0000000C(d), 00000008
        mov     eax, dword [?_323]                      ; 3439 _ A1, 00000010(d)
        add     eax, 16                                 ; 343E _ 83. C0, 10
        mov     dword [?_323], eax                      ; 3441 _ A3, 00000010(d)
        mov     eax, dword [ebp+8H]                     ; 3446 _ 8B. 45, 08
        add     eax, 44                                 ; 3449 _ 83. C0, 2C
        mov     eax, dword [eax]                        ; 344C _ 8B. 00
        mov     dword [esp], eax                        ; 344E _ 89. 04 24
        call    _intToHexStr                            ; 3451 _ E8, FFFFF0EA
        mov     dword [ebp-0CH], eax                    ; 3456 _ 89. 45, F4
        mov     dword [esp], ?_321                      ; 3459 _ C7. 04 24, 000000B3(d)
        call    _cons_putstr                            ; 3460 _ E8, FFFFE52F
        mov     eax, dword [ebp-0CH]                    ; 3465 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 3468 _ 89. 04 24
        call    _cons_putstr                            ; 346B _ E8, FFFFE524
        mov     dword [?_322], 8                        ; 3470 _ C7. 05, 0000000C(d), 00000008
        mov     eax, dword [?_323]                      ; 347A _ A1, 00000010(d)
        add     eax, 16                                 ; 347F _ 83. C0, 10
        mov     dword [?_323], eax                      ; 3482 _ A3, 00000010(d)
        call    _task_now                               ; 3487 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 348C _ 89. 45, F0
        mov     eax, dword [ebp-10H]                    ; 348F _ 8B. 45, F0
        add     eax, 48                                 ; 3492 _ 83. C0, 30
        leave                                           ; 3495 _ C9
        ret                                             ; 3496 _ C3
; _intHandlerForStackOverFlow End of function

_kill_process:; Function begin
        push    ebp                                     ; 3497 _ 55
        mov     ebp, esp                                ; 3498 _ 89. E5
        sub     esp, 24                                 ; 349A _ 83. EC, 18
        mov     edx, dword [_g_Console]                 ; 349D _ 8B. 15, 00000008(d)
        mov     eax, dword [?_323]                      ; 34A3 _ A1, 00000010(d)
        mov     dword [esp+4H], edx                     ; 34A8 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 34AC _ 89. 04 24
        call    _cons_newline                           ; 34AF _ E8, FFFFE512
        mov     eax, dword [?_323]                      ; 34B4 _ A1, 00000010(d)
        add     eax, 16                                 ; 34B9 _ 83. C0, 10
        mov     dword [?_323], eax                      ; 34BC _ A3, 00000010(d)
        mov     eax, dword [_task_cons]                 ; 34C1 _ A1, 00000270(d)
        add     eax, 48                                 ; 34C6 _ 83. C0, 30
        mov     dword [esp], eax                        ; 34C9 _ 89. 04 24
        call    _asm_end_app                            ; 34CC _ E8, 00000000(rel)
        nop                                             ; 34D1 _ 90
        leave                                           ; 34D2 _ C9
        ret                                             ; 34D3 _ C3
; _kill_process End of function


_shtctl_init:
        push    ebp                                     ; 34D4 _ 55
        mov     ebp, esp                                ; 34D5 _ 89. E5
        sub     esp, 40                                 ; 34D7 _ 83. EC, 28
        mov     dword [esp+4H], 9232                    ; 34DA _ C7. 44 24, 04, 00002410
        mov     eax, dword [ebp+8H]                     ; 34E2 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 34E5 _ 89. 04 24
        call    _memman_alloc_4k                        ; 34E8 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 34ED _ 89. 45, F0
        cmp     dword [ebp-10H], 0                      ; 34F0 _ 83. 7D, F0, 00
        jnz     ?_168                                   ; 34F4 _ 75, 0A
        mov     eax, 0                                  ; 34F6 _ B8, 00000000
        jmp     ?_172                                   ; 34FB _ E9, 0000009D

?_168:  mov     eax, dword [ebp+10H]                    ; 3500 _ 8B. 45, 10
        imul    eax, dword [ebp+14H]                    ; 3503 _ 0F AF. 45, 14
        mov     dword [esp+4H], eax                     ; 3507 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 350B _ 8B. 45, 08
        mov     dword [esp], eax                        ; 350E _ 89. 04 24
        call    _memman_alloc_4k                        ; 3511 _ E8, 00000000(rel)
        mov     edx, eax                                ; 3516 _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 3518 _ 8B. 45, F0
        mov     dword [eax+4H], edx                     ; 351B _ 89. 50, 04
        mov     eax, dword [ebp-10H]                    ; 351E _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 3521 _ 8B. 40, 04
        test    eax, eax                                ; 3524 _ 85. C0
        jnz     ?_169                                   ; 3526 _ 75, 21
        mov     eax, dword [ebp-10H]                    ; 3528 _ 8B. 45, F0
        mov     dword [esp+8H], 9232                    ; 352B _ C7. 44 24, 08, 00002410
        mov     dword [esp+4H], eax                     ; 3533 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3537 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 353A _ 89. 04 24
        call    _memman_free_4k                         ; 353D _ E8, 00000000(rel)
        mov     eax, 0                                  ; 3542 _ B8, 00000000
        jmp     ?_172                                   ; 3547 _ EB, 54

?_169:  mov     eax, dword [ebp-10H]                    ; 3549 _ 8B. 45, F0
        mov     edx, dword [ebp+0CH]                    ; 354C _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 354F _ 89. 10
        mov     eax, dword [ebp-10H]                    ; 3551 _ 8B. 45, F0
        mov     edx, dword [ebp+10H]                    ; 3554 _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 3557 _ 89. 50, 08
        mov     eax, dword [ebp-10H]                    ; 355A _ 8B. 45, F0
        mov     edx, dword [ebp+14H]                    ; 355D _ 8B. 55, 14
        mov     dword [eax+0CH], edx                    ; 3560 _ 89. 50, 0C
        mov     eax, dword [ebp-10H]                    ; 3563 _ 8B. 45, F0
        mov     dword [eax+10H], -1                     ; 3566 _ C7. 40, 10, FFFFFFFF
        mov     dword [ebp-0CH], 0                      ; 356D _ C7. 45, F4, 00000000
        jmp     ?_171                                   ; 3574 _ EB, 1B

?_170:  mov     edx, dword [ebp-10H]                    ; 3576 _ 8B. 55, F0
        mov     eax, dword [ebp-0CH]                    ; 3579 _ 8B. 45, F4
        add     eax, 33                                 ; 357C _ 83. C0, 21
        shl     eax, 5                                  ; 357F _ C1. E0, 05
        add     eax, edx                                ; 3582 _ 01. D0
        add     eax, 16                                 ; 3584 _ 83. C0, 10
        mov     dword [eax], 0                          ; 3587 _ C7. 00, 00000000
        add     dword [ebp-0CH], 1                      ; 358D _ 83. 45, F4, 01
?_171:  cmp     dword [ebp-0CH], 255                    ; 3591 _ 81. 7D, F4, 000000FF
        jle     ?_170                                   ; 3598 _ 7E, DC
        mov     eax, dword [ebp-10H]                    ; 359A _ 8B. 45, F0
?_172:  leave                                           ; 359D _ C9
        ret                                             ; 359E _ C3

_sheet_alloc:; Function begin
        push    ebp                                     ; 359F _ 55
        mov     ebp, esp                                ; 35A0 _ 89. E5
        sub     esp, 16                                 ; 35A2 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 35A5 _ C7. 45, FC, 00000000
        jmp     ?_175                                   ; 35AC _ EB, 5B

?_173:  mov     edx, dword [ebp+8H]                     ; 35AE _ 8B. 55, 08
        mov     eax, dword [ebp-4H]                     ; 35B1 _ 8B. 45, FC
        add     eax, 33                                 ; 35B4 _ 83. C0, 21
        shl     eax, 5                                  ; 35B7 _ C1. E0, 05
        add     eax, edx                                ; 35BA _ 01. D0
        add     eax, 16                                 ; 35BC _ 83. C0, 10
        mov     eax, dword [eax]                        ; 35BF _ 8B. 00
        test    eax, eax                                ; 35C1 _ 85. C0
        jnz     ?_174                                   ; 35C3 _ 75, 40
        mov     eax, dword [ebp-4H]                     ; 35C5 _ 8B. 45, FC
        shl     eax, 5                                  ; 35C8 _ C1. E0, 05
        lea     edx, [eax+410H]                         ; 35CB _ 8D. 90, 00000410
        mov     eax, dword [ebp+8H]                     ; 35D1 _ 8B. 45, 08
        add     eax, edx                                ; 35D4 _ 01. D0
        add     eax, 4                                  ; 35D6 _ 83. C0, 04
        mov     dword [ebp-8H], eax                     ; 35D9 _ 89. 45, F8
        mov     eax, dword [ebp+8H]                     ; 35DC _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 35DF _ 8B. 55, FC
        add     edx, 4                                  ; 35E2 _ 83. C2, 04
        mov     ecx, dword [ebp-8H]                     ; 35E5 _ 8B. 4D, F8
        mov     dword [eax+edx*4+4H], ecx               ; 35E8 _ 89. 4C 90, 04
        mov     eax, dword [ebp-8H]                     ; 35EC _ 8B. 45, F8
        mov     dword [eax+1CH], 1                      ; 35EF _ C7. 40, 1C, 00000001
        mov     eax, dword [ebp-8H]                     ; 35F6 _ 8B. 45, F8
        mov     dword [eax+18H], -1                     ; 35F9 _ C7. 40, 18, FFFFFFFF
        mov     eax, dword [ebp-8H]                     ; 3600 _ 8B. 45, F8
        jmp     ?_176                                   ; 3603 _ EB, 12

?_174:  add     dword [ebp-4H], 1                       ; 3605 _ 83. 45, FC, 01
?_175:  cmp     dword [ebp-4H], 255                     ; 3609 _ 81. 7D, FC, 000000FF
        jle     ?_173                                   ; 3610 _ 7E, 9C
        mov     eax, 0                                  ; 3612 _ B8, 00000000
?_176:  leave                                           ; 3617 _ C9
        ret                                             ; 3618 _ C3
; _sheet_alloc End of function

_sheet_setbuf:; Function begin
        push    ebp                                     ; 3619 _ 55
        mov     ebp, esp                                ; 361A _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 361C _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 361F _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 3622 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 3624 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 3627 _ 8B. 55, 10
        mov     dword [eax+4H], edx                     ; 362A _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 362D _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 3630 _ 8B. 55, 14
        mov     dword [eax+8H], edx                     ; 3633 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 3636 _ 8B. 45, 08
        mov     edx, dword [ebp+18H]                    ; 3639 _ 8B. 55, 18
        mov     dword [eax+14H], edx                    ; 363C _ 89. 50, 14
        nop                                             ; 363F _ 90
        pop     ebp                                     ; 3640 _ 5D
        ret                                             ; 3641 _ C3
; _sheet_setbuf End of function

_sheet_updown:; Function begin
        push    ebp                                     ; 3642 _ 55
        mov     ebp, esp                                ; 3643 _ 89. E5
        push    edi                                     ; 3645 _ 57
        push    esi                                     ; 3646 _ 56
        push    ebx                                     ; 3647 _ 53
        sub     esp, 60                                 ; 3648 _ 83. EC, 3C
        mov     eax, dword [ebp+0CH]                    ; 364B _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 364E _ 8B. 40, 18
        mov     dword [ebp-20H], eax                    ; 3651 _ 89. 45, E0
        mov     eax, dword [ebp+8H]                     ; 3654 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3657 _ 8B. 40, 10
        add     eax, 1                                  ; 365A _ 83. C0, 01
        cmp     dword [ebp+10H], eax                    ; 365D _ 39. 45, 10
        jle     ?_177                                   ; 3660 _ 7E, 0C
        mov     eax, dword [ebp+8H]                     ; 3662 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3665 _ 8B. 40, 10
        add     eax, 1                                  ; 3668 _ 83. C0, 01
        mov     dword [ebp+10H], eax                    ; 366B _ 89. 45, 10
?_177:  cmp     dword [ebp+10H], -1                     ; 366E _ 83. 7D, 10, FF
        jge     ?_178                                   ; 3672 _ 7D, 07
        mov     dword [ebp+10H], -1                     ; 3674 _ C7. 45, 10, FFFFFFFF
?_178:  mov     eax, dword [ebp+0CH]                    ; 367B _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 367E _ 8B. 55, 10
        mov     dword [eax+18H], edx                    ; 3681 _ 89. 50, 18
        mov     eax, dword [ebp-20H]                    ; 3684 _ 8B. 45, E0
        cmp     eax, dword [ebp+10H]                    ; 3687 _ 3B. 45, 10
        jle     ?_185                                   ; 368A _ 0F 8E, 00000212
        cmp     dword [ebp+10H], 0                      ; 3690 _ 83. 7D, 10, 00
        js      ?_181                                   ; 3694 _ 0F 88, 000000FE
        mov     eax, dword [ebp-20H]                    ; 369A _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 369D _ 89. 45, E4
        jmp     ?_180                                   ; 36A0 _ EB, 34

?_179:  mov     eax, dword [ebp-1CH]                    ; 36A2 _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 36A5 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 36A8 _ 8B. 45, 08
        add     edx, 4                                  ; 36AB _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 36AE _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 36B2 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 36B5 _ 8B. 55, E4
        add     edx, 4                                  ; 36B8 _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 36BB _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 36BF _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 36C2 _ 8B. 55, E4
        add     edx, 4                                  ; 36C5 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 36C8 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 36CC _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 36CF _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 36D2 _ 83. 6D, E4, 01
?_180:  mov     eax, dword [ebp-1CH]                    ; 36D6 _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 36D9 _ 3B. 45, 10
        jg      ?_179                                   ; 36DC _ 7F, C4
        mov     eax, dword [ebp+8H]                     ; 36DE _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 36E1 _ 8B. 55, 10
        add     edx, 4                                  ; 36E4 _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 36E7 _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 36EA _ 89. 4C 90, 04
        mov     eax, dword [ebp+10H]                    ; 36EE _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 36F1 _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 36F4 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 36F7 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 36FA _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 36FD _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 3700 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 3703 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 3706 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 3709 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 370C _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 370F _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 3712 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 3715 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 3718 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 371B _ 8B. 40, 0C
        mov     dword [esp+14H], esi                    ; 371E _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 3722 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 3726 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 372A _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 372E _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3732 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3735 _ 89. 04 24
        call    _sheet_refreshmap                       ; 3738 _ E8, 0000063D
        mov     eax, dword [ebp+10H]                    ; 373D _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 3740 _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 3743 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 3746 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 3749 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 374C _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 374F _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 3752 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 3755 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 3758 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 375B _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 375E _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 3761 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 3764 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 3767 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 376A _ 8B. 40, 0C
        mov     edi, dword [ebp-20H]                    ; 376D _ 8B. 7D, E0
        mov     dword [esp+18H], edi                    ; 3770 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 3774 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 3778 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 377C _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 3780 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 3784 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3788 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 378B _ 89. 04 24
        call    _sheet_refreshsub                       ; 378E _ E8, 00000465
        jmp     ?_192                                   ; 3793 _ E9, 0000027D

?_181:  mov     eax, dword [ebp+8H]                     ; 3798 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 379B _ 8B. 40, 10
        cmp     dword [ebp-20H], eax                    ; 379E _ 39. 45, E0
        jge     ?_184                                   ; 37A1 _ 7D, 47
        mov     eax, dword [ebp-20H]                    ; 37A3 _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 37A6 _ 89. 45, E4
        jmp     ?_183                                   ; 37A9 _ EB, 34

?_182:  mov     eax, dword [ebp-1CH]                    ; 37AB _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 37AE _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 37B1 _ 8B. 45, 08
        add     edx, 4                                  ; 37B4 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 37B7 _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 37BB _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 37BE _ 8B. 55, E4
        add     edx, 4                                  ; 37C1 _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 37C4 _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 37C8 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 37CB _ 8B. 55, E4
        add     edx, 4                                  ; 37CE _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 37D1 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 37D5 _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 37D8 _ 89. 50, 18
        add     dword [ebp-1CH], 1                      ; 37DB _ 83. 45, E4, 01
?_183:  mov     eax, dword [ebp+8H]                     ; 37DF _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 37E2 _ 8B. 40, 10
        cmp     dword [ebp-1CH], eax                    ; 37E5 _ 39. 45, E4
        jl      ?_182                                   ; 37E8 _ 7C, C1
?_184:  mov     eax, dword [ebp+8H]                     ; 37EA _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 37ED _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 37F0 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 37F3 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 37F6 _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 37F9 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 37FC _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 37FF _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 3802 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 3805 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 3808 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 380B _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 380E _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 3811 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 3814 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 3817 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 381A _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 381D _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 3820 _ 8B. 40, 0C
        mov     dword [esp+14H], 0                      ; 3823 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], ebx                    ; 382B _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 382F _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 3833 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 3837 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 383B _ 8B. 45, 08
        mov     dword [esp], eax                        ; 383E _ 89. 04 24
        call    _sheet_refreshmap                       ; 3841 _ E8, 00000534
        mov     eax, dword [ebp-20H]                    ; 3846 _ 8B. 45, E0
        lea     esi, [eax-1H]                           ; 3849 _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 384C _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 384F _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 3852 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 3855 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 3858 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 385B _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 385E _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 3861 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 3864 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 3867 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 386A _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 386D _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 3870 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 3873 _ 8B. 40, 0C
        mov     dword [esp+18H], esi                    ; 3876 _ 89. 74 24, 18
        mov     dword [esp+14H], 0                      ; 387A _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], ebx                    ; 3882 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 3886 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 388A _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 388E _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3892 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3895 _ 89. 04 24
        call    _sheet_refreshsub                       ; 3898 _ E8, 0000035B
        jmp     ?_192                                   ; 389D _ E9, 00000173

?_185:  mov     eax, dword [ebp-20H]                    ; 38A2 _ 8B. 45, E0
        cmp     eax, dword [ebp+10H]                    ; 38A5 _ 3B. 45, 10
        jge     ?_192                                   ; 38A8 _ 0F 8D, 00000167
        cmp     dword [ebp-20H], 0                      ; 38AE _ 83. 7D, E0, 00
        js      ?_188                                   ; 38B2 _ 78, 56
        mov     eax, dword [ebp-20H]                    ; 38B4 _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 38B7 _ 89. 45, E4
        jmp     ?_187                                   ; 38BA _ EB, 34

?_186:  mov     eax, dword [ebp-1CH]                    ; 38BC _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 38BF _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 38C2 _ 8B. 45, 08
        add     edx, 4                                  ; 38C5 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 38C8 _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 38CC _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 38CF _ 8B. 55, E4
        add     edx, 4                                  ; 38D2 _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 38D5 _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 38D9 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 38DC _ 8B. 55, E4
        add     edx, 4                                  ; 38DF _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 38E2 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 38E6 _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 38E9 _ 89. 50, 18
        add     dword [ebp-1CH], 1                      ; 38EC _ 83. 45, E4, 01
?_187:  mov     eax, dword [ebp-1CH]                    ; 38F0 _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 38F3 _ 3B. 45, 10
        jl      ?_186                                   ; 38F6 _ 7C, C4
        mov     eax, dword [ebp+8H]                     ; 38F8 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 38FB _ 8B. 55, 10
        add     edx, 4                                  ; 38FE _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 3901 _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 3904 _ 89. 4C 90, 04
        jmp     ?_191                                   ; 3908 _ EB, 6C

?_188:  mov     eax, dword [ebp+8H]                     ; 390A _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 390D _ 8B. 40, 10
        mov     dword [ebp-1CH], eax                    ; 3910 _ 89. 45, E4
        jmp     ?_190                                   ; 3913 _ EB, 3A

?_189:  mov     eax, dword [ebp-1CH]                    ; 3915 _ 8B. 45, E4
        lea     ebx, [eax+1H]                           ; 3918 _ 8D. 58, 01
        mov     eax, dword [ebp+8H]                     ; 391B _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 391E _ 8B. 55, E4
        add     edx, 4                                  ; 3921 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 3924 _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 3928 _ 8B. 45, 08
        lea     edx, [ebx+4H]                           ; 392B _ 8D. 53, 04
        mov     dword [eax+edx*4+4H], ecx               ; 392E _ 89. 4C 90, 04
        mov     eax, dword [ebp-1CH]                    ; 3932 _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 3935 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 3938 _ 8B. 45, 08
        add     edx, 4                                  ; 393B _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 393E _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 3942 _ 8B. 55, E4
        add     edx, 1                                  ; 3945 _ 83. C2, 01
        mov     dword [eax+18H], edx                    ; 3948 _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 394B _ 83. 6D, E4, 01
?_190:  mov     eax, dword [ebp-1CH]                    ; 394F _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 3952 _ 3B. 45, 10
        jge     ?_189                                   ; 3955 _ 7D, BE
        mov     eax, dword [ebp+8H]                     ; 3957 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 395A _ 8B. 55, 10
        add     edx, 4                                  ; 395D _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 3960 _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 3963 _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 3967 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 396A _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 396D _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 3970 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 3973 _ 89. 50, 10
?_191:  mov     eax, dword [ebp+0CH]                    ; 3976 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 3979 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 397C _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 397F _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 3982 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 3985 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 3988 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 398B _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 398E _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 3991 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 3994 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 3997 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 399A _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 399D _ 8B. 40, 0C
        mov     esi, dword [ebp+10H]                    ; 39A0 _ 8B. 75, 10
        mov     dword [esp+14H], esi                    ; 39A3 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 39A7 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 39AB _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 39AF _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 39B3 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 39B7 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 39BA _ 89. 04 24
        call    _sheet_refreshmap                       ; 39BD _ E8, 000003B8
        mov     eax, dword [ebp+0CH]                    ; 39C2 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 39C5 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 39C8 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 39CB _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 39CE _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 39D1 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 39D4 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 39D7 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 39DA _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 39DD _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 39E0 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 39E3 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 39E6 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 39E9 _ 8B. 40, 0C
        mov     esi, dword [ebp+10H]                    ; 39EC _ 8B. 75, 10
        mov     dword [esp+18H], esi                    ; 39EF _ 89. 74 24, 18
        mov     esi, dword [ebp+10H]                    ; 39F3 _ 8B. 75, 10
        mov     dword [esp+14H], esi                    ; 39F6 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 39FA _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 39FE _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 3A02 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 3A06 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3A0A _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3A0D _ 89. 04 24
        call    _sheet_refreshsub                       ; 3A10 _ E8, 000001E3
?_192:  nop                                             ; 3A15 _ 90
        add     esp, 60                                 ; 3A16 _ 83. C4, 3C
        pop     ebx                                     ; 3A19 _ 5B
        pop     esi                                     ; 3A1A _ 5E
        pop     edi                                     ; 3A1B _ 5F
        pop     ebp                                     ; 3A1C _ 5D
        ret                                             ; 3A1D _ C3
; _sheet_updown End of function

_sheet_refresh:; Function begin
        push    ebp                                     ; 3A1E _ 55
        mov     ebp, esp                                ; 3A1F _ 89. E5
        push    edi                                     ; 3A21 _ 57
        push    esi                                     ; 3A22 _ 56
        push    ebx                                     ; 3A23 _ 53
        sub     esp, 60                                 ; 3A24 _ 83. EC, 3C
        mov     eax, dword [ebp+0CH]                    ; 3A27 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 3A2A _ 8B. 40, 18
        test    eax, eax                                ; 3A2D _ 85. C0
        js      ?_193                                   ; 3A2F _ 78, 61
        mov     eax, dword [ebp+0CH]                    ; 3A31 _ 8B. 45, 0C
        mov     edi, dword [eax+18H]                    ; 3A34 _ 8B. 78, 18
        mov     eax, dword [ebp+0CH]                    ; 3A37 _ 8B. 45, 0C
        mov     esi, dword [eax+18H]                    ; 3A3A _ 8B. 70, 18
        mov     eax, dword [ebp+0CH]                    ; 3A3D _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 3A40 _ 8B. 50, 10
        mov     eax, dword [ebp+1CH]                    ; 3A43 _ 8B. 45, 1C
        lea     ebx, [edx+eax]                          ; 3A46 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 3A49 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 3A4C _ 8B. 50, 0C
        mov     eax, dword [ebp+18H]                    ; 3A4F _ 8B. 45, 18
        lea     ecx, [edx+eax]                          ; 3A52 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 3A55 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 3A58 _ 8B. 50, 10
        mov     eax, dword [ebp+14H]                    ; 3A5B _ 8B. 45, 14
        add     edx, eax                                ; 3A5E _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 3A60 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 3A63 _ 8B. 40, 0C
        mov     dword [ebp-1CH], eax                    ; 3A66 _ 89. 45, E4
        mov     eax, dword [ebp+10H]                    ; 3A69 _ 8B. 45, 10
        add     eax, dword [ebp-1CH]                    ; 3A6C _ 03. 45, E4
        mov     dword [esp+18H], edi                    ; 3A6F _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 3A73 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 3A77 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 3A7B _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 3A7F _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 3A83 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3A87 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3A8A _ 89. 04 24
        call    _sheet_refreshsub                       ; 3A8D _ E8, 00000166
?_193:  mov     eax, 0                                  ; 3A92 _ B8, 00000000
        add     esp, 60                                 ; 3A97 _ 83. C4, 3C
        pop     ebx                                     ; 3A9A _ 5B
        pop     esi                                     ; 3A9B _ 5E
        pop     edi                                     ; 3A9C _ 5F
        pop     ebp                                     ; 3A9D _ 5D
        ret                                             ; 3A9E _ C3
; _sheet_refresh End of function

_sheet_slide:; Function begin
        push    ebp                                     ; 3A9F _ 55
        mov     ebp, esp                                ; 3AA0 _ 89. E5
        push    esi                                     ; 3AA2 _ 56
        push    ebx                                     ; 3AA3 _ 53
        sub     esp, 48                                 ; 3AA4 _ 83. EC, 30
        mov     eax, dword [ebp+0CH]                    ; 3AA7 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 3AAA _ 8B. 40, 0C
        mov     dword [ebp-0CH], eax                    ; 3AAD _ 89. 45, F4
        mov     eax, dword [ebp+0CH]                    ; 3AB0 _ 8B. 45, 0C
        mov     eax, dword [eax+10H]                    ; 3AB3 _ 8B. 40, 10
        mov     dword [ebp-10H], eax                    ; 3AB6 _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 3AB9 _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 3ABC _ 8B. 55, 10
        mov     dword [eax+0CH], edx                    ; 3ABF _ 89. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 3AC2 _ 8B. 45, 0C
        mov     edx, dword [ebp+14H]                    ; 3AC5 _ 8B. 55, 14
        mov     dword [eax+10H], edx                    ; 3AC8 _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 3ACB _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 3ACE _ 8B. 40, 18
        test    eax, eax                                ; 3AD1 _ 85. C0
        js      ?_194                                   ; 3AD3 _ 0F 88, 00000117
        mov     eax, dword [ebp+0CH]                    ; 3AD9 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 3ADC _ 8B. 50, 08
        mov     eax, dword [ebp-10H]                    ; 3ADF _ 8B. 45, F0
        add     edx, eax                                ; 3AE2 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 3AE4 _ 8B. 45, 0C
        mov     ecx, dword [eax+4H]                     ; 3AE7 _ 8B. 48, 04
        mov     eax, dword [ebp-0CH]                    ; 3AEA _ 8B. 45, F4
        add     eax, ecx                                ; 3AED _ 01. C8
        mov     dword [esp+14H], 0                      ; 3AEF _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], edx                    ; 3AF7 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 3AFB _ 89. 44 24, 0C
        mov     eax, dword [ebp-10H]                    ; 3AFF _ 8B. 45, F0
        mov     dword [esp+8H], eax                     ; 3B02 _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 3B06 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 3B09 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3B0D _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3B10 _ 89. 04 24
        call    _sheet_refreshmap                       ; 3B13 _ E8, 00000262
        mov     eax, dword [ebp+0CH]                    ; 3B18 _ 8B. 45, 0C
        mov     ecx, dword [eax+18H]                    ; 3B1B _ 8B. 48, 18
        mov     eax, dword [ebp+0CH]                    ; 3B1E _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 3B21 _ 8B. 50, 08
        mov     eax, dword [ebp+14H]                    ; 3B24 _ 8B. 45, 14
        add     edx, eax                                ; 3B27 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 3B29 _ 8B. 45, 0C
        mov     ebx, dword [eax+4H]                     ; 3B2C _ 8B. 58, 04
        mov     eax, dword [ebp+10H]                    ; 3B2F _ 8B. 45, 10
        add     eax, ebx                                ; 3B32 _ 01. D8
        mov     dword [esp+14H], ecx                    ; 3B34 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 3B38 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 3B3C _ 89. 44 24, 0C
        mov     eax, dword [ebp+14H]                    ; 3B40 _ 8B. 45, 14
        mov     dword [esp+8H], eax                     ; 3B43 _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 3B47 _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 3B4A _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3B4E _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3B51 _ 89. 04 24
        call    _sheet_refreshmap                       ; 3B54 _ E8, 00000221
        mov     eax, dword [ebp+0CH]                    ; 3B59 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 3B5C _ 8B. 40, 18
        lea     ecx, [eax-1H]                           ; 3B5F _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 3B62 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 3B65 _ 8B. 50, 08
        mov     eax, dword [ebp-10H]                    ; 3B68 _ 8B. 45, F0
        add     edx, eax                                ; 3B6B _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 3B6D _ 8B. 45, 0C
        mov     ebx, dword [eax+4H]                     ; 3B70 _ 8B. 58, 04
        mov     eax, dword [ebp-0CH]                    ; 3B73 _ 8B. 45, F4
        add     eax, ebx                                ; 3B76 _ 01. D8
        mov     dword [esp+18H], ecx                    ; 3B78 _ 89. 4C 24, 18
        mov     dword [esp+14H], 0                      ; 3B7C _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], edx                    ; 3B84 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 3B88 _ 89. 44 24, 0C
        mov     eax, dword [ebp-10H]                    ; 3B8C _ 8B. 45, F0
        mov     dword [esp+8H], eax                     ; 3B8F _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 3B93 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 3B96 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3B9A _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3B9D _ 89. 04 24
        call    _sheet_refreshsub                       ; 3BA0 _ E8, 00000053
        mov     eax, dword [ebp+0CH]                    ; 3BA5 _ 8B. 45, 0C
        mov     ebx, dword [eax+18H]                    ; 3BA8 _ 8B. 58, 18
        mov     eax, dword [ebp+0CH]                    ; 3BAB _ 8B. 45, 0C
        mov     ecx, dword [eax+18H]                    ; 3BAE _ 8B. 48, 18
        mov     eax, dword [ebp+0CH]                    ; 3BB1 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 3BB4 _ 8B. 50, 08
        mov     eax, dword [ebp+14H]                    ; 3BB7 _ 8B. 45, 14
        add     edx, eax                                ; 3BBA _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 3BBC _ 8B. 45, 0C
        mov     esi, dword [eax+4H]                     ; 3BBF _ 8B. 70, 04
        mov     eax, dword [ebp+10H]                    ; 3BC2 _ 8B. 45, 10
        add     eax, esi                                ; 3BC5 _ 01. F0
        mov     dword [esp+18H], ebx                    ; 3BC7 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 3BCB _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 3BCF _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 3BD3 _ 89. 44 24, 0C
        mov     eax, dword [ebp+14H]                    ; 3BD7 _ 8B. 45, 14
        mov     dword [esp+8H], eax                     ; 3BDA _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 3BDE _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 3BE1 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3BE5 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3BE8 _ 89. 04 24
        call    _sheet_refreshsub                       ; 3BEB _ E8, 00000008
?_194:  nop                                             ; 3BF0 _ 90
        add     esp, 48                                 ; 3BF1 _ 83. C4, 30
        pop     ebx                                     ; 3BF4 _ 5B
        pop     esi                                     ; 3BF5 _ 5E
        pop     ebp                                     ; 3BF6 _ 5D
        ret                                             ; 3BF7 _ C3
; _sheet_slide End of function

_sheet_refreshsub:; Function begin
        push    ebp                                     ; 3BF8 _ 55
        mov     ebp, esp                                ; 3BF9 _ 89. E5
        sub     esp, 48                                 ; 3BFB _ 83. EC, 30
        mov     eax, dword [ebp+8H]                     ; 3BFE _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3C01 _ 8B. 00
        mov     dword [ebp-10H], eax                    ; 3C03 _ 89. 45, F0
        mov     eax, dword [ebp+8H]                     ; 3C06 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 3C09 _ 8B. 40, 04
        mov     dword [ebp-14H], eax                    ; 3C0C _ 89. 45, EC
        cmp     dword [ebp+0CH], 0                      ; 3C0F _ 83. 7D, 0C, 00
        jns     ?_195                                   ; 3C13 _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 3C15 _ C7. 45, 0C, 00000000
?_195:  cmp     dword [ebp+10H], 8                      ; 3C1C _ 83. 7D, 10, 08
        jg      ?_196                                   ; 3C20 _ 7F, 07
        mov     dword [ebp+10H], 0                      ; 3C22 _ C7. 45, 10, 00000000
?_196:  mov     eax, dword [ebp+8H]                     ; 3C29 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3C2C _ 8B. 40, 08
        cmp     dword [ebp+14H], eax                    ; 3C2F _ 39. 45, 14
        jle     ?_197                                   ; 3C32 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 3C34 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3C37 _ 8B. 40, 08
        mov     dword [ebp+14H], eax                    ; 3C3A _ 89. 45, 14
?_197:  mov     eax, dword [ebp+8H]                     ; 3C3D _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3C40 _ 8B. 40, 0C
        cmp     dword [ebp+18H], eax                    ; 3C43 _ 39. 45, 18
        jle     ?_198                                   ; 3C46 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 3C48 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3C4B _ 8B. 40, 0C
        mov     dword [ebp+18H], eax                    ; 3C4E _ 89. 45, 18
?_198:  mov     eax, dword [ebp+1CH]                    ; 3C51 _ 8B. 45, 1C
        mov     dword [ebp-4H], eax                     ; 3C54 _ 89. 45, FC
        jmp     ?_205                                   ; 3C57 _ E9, 0000010F

?_199:  mov     eax, dword [ebp+8H]                     ; 3C5C _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 3C5F _ 8B. 55, FC
        add     edx, 4                                  ; 3C62 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 3C65 _ 8B. 44 90, 04
        mov     dword [ebp-18H], eax                    ; 3C69 _ 89. 45, E8
        mov     eax, dword [ebp-18H]                    ; 3C6C _ 8B. 45, E8
        mov     eax, dword [eax]                        ; 3C6F _ 8B. 00
        mov     dword [ebp-1CH], eax                    ; 3C71 _ 89. 45, E4
        mov     eax, dword [ebp+8H]                     ; 3C74 _ 8B. 45, 08
        add     eax, 1044                               ; 3C77 _ 05, 00000414
        mov     edx, dword [ebp-18H]                    ; 3C7C _ 8B. 55, E8
        sub     edx, eax                                ; 3C7F _ 29. C2
        mov     eax, edx                                ; 3C81 _ 89. D0
        sar     eax, 5                                  ; 3C83 _ C1. F8, 05
        mov     byte [ebp-1DH], al                      ; 3C86 _ 88. 45, E3
        mov     dword [ebp-0CH], 0                      ; 3C89 _ C7. 45, F4, 00000000
        jmp     ?_204                                   ; 3C90 _ E9, 000000C3

?_200:  mov     eax, dword [ebp-18H]                    ; 3C95 _ 8B. 45, E8
        mov     edx, dword [eax+10H]                    ; 3C98 _ 8B. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 3C9B _ 8B. 45, F4
        add     eax, edx                                ; 3C9E _ 01. D0
        mov     dword [ebp-24H], eax                    ; 3CA0 _ 89. 45, DC
        mov     dword [ebp-8H], 0                       ; 3CA3 _ C7. 45, F8, 00000000
        jmp     ?_203                                   ; 3CAA _ E9, 00000096

?_201:  mov     eax, dword [ebp-18H]                    ; 3CAF _ 8B. 45, E8
        mov     edx, dword [eax+0CH]                    ; 3CB2 _ 8B. 50, 0C
        mov     eax, dword [ebp-8H]                     ; 3CB5 _ 8B. 45, F8
        add     eax, edx                                ; 3CB8 _ 01. D0
        mov     dword [ebp-28H], eax                    ; 3CBA _ 89. 45, D8
        mov     eax, dword [ebp+0CH]                    ; 3CBD _ 8B. 45, 0C
        cmp     eax, dword [ebp-28H]                    ; 3CC0 _ 3B. 45, D8
        jg      ?_202                                   ; 3CC3 _ 7F, 7C
        mov     eax, dword [ebp-28H]                    ; 3CC5 _ 8B. 45, D8
        cmp     eax, dword [ebp+14H]                    ; 3CC8 _ 3B. 45, 14
        jge     ?_202                                   ; 3CCB _ 7D, 74
        mov     eax, dword [ebp+10H]                    ; 3CCD _ 8B. 45, 10
        cmp     eax, dword [ebp-24H]                    ; 3CD0 _ 3B. 45, DC
        jg      ?_202                                   ; 3CD3 _ 7F, 6C
        mov     eax, dword [ebp-24H]                    ; 3CD5 _ 8B. 45, DC
        cmp     eax, dword [ebp+18H]                    ; 3CD8 _ 3B. 45, 18
        jge     ?_202                                   ; 3CDB _ 7D, 64
        mov     eax, dword [ebp-18H]                    ; 3CDD _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 3CE0 _ 8B. 40, 04
        imul    eax, dword [ebp-0CH]                    ; 3CE3 _ 0F AF. 45, F4
        mov     edx, dword [ebp-8H]                     ; 3CE7 _ 8B. 55, F8
        add     eax, edx                                ; 3CEA _ 01. D0
        mov     edx, eax                                ; 3CEC _ 89. C2
        mov     eax, dword [ebp-1CH]                    ; 3CEE _ 8B. 45, E4
        add     eax, edx                                ; 3CF1 _ 01. D0
        movzx   eax, byte [eax]                         ; 3CF3 _ 0F B6. 00
        mov     byte [ebp-29H], al                      ; 3CF6 _ 88. 45, D7
        mov     eax, dword [ebp+8H]                     ; 3CF9 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3CFC _ 8B. 40, 08
        imul    eax, dword [ebp-24H]                    ; 3CFF _ 0F AF. 45, DC
        mov     edx, dword [ebp-28H]                    ; 3D03 _ 8B. 55, D8
        add     eax, edx                                ; 3D06 _ 01. D0
        mov     edx, eax                                ; 3D08 _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 3D0A _ 8B. 45, EC
        add     eax, edx                                ; 3D0D _ 01. D0
        movzx   eax, byte [eax]                         ; 3D0F _ 0F B6. 00
        cmp     byte [ebp-1DH], al                      ; 3D12 _ 38. 45, E3
        jnz     ?_202                                   ; 3D15 _ 75, 2A
        movzx   eax, byte [ebp-29H]                     ; 3D17 _ 0F B6. 45, D7
        mov     edx, dword [ebp-18H]                    ; 3D1B _ 8B. 55, E8
        mov     edx, dword [edx+14H]                    ; 3D1E _ 8B. 52, 14
        cmp     eax, edx                                ; 3D21 _ 39. D0
        jz      ?_202                                   ; 3D23 _ 74, 1C
        mov     eax, dword [ebp+8H]                     ; 3D25 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3D28 _ 8B. 40, 08
        imul    eax, dword [ebp-24H]                    ; 3D2B _ 0F AF. 45, DC
        mov     edx, dword [ebp-28H]                    ; 3D2F _ 8B. 55, D8
        add     eax, edx                                ; 3D32 _ 01. D0
        mov     edx, eax                                ; 3D34 _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 3D36 _ 8B. 45, F0
        add     edx, eax                                ; 3D39 _ 01. C2
        movzx   eax, byte [ebp-29H]                     ; 3D3B _ 0F B6. 45, D7
        mov     byte [edx], al                          ; 3D3F _ 88. 02
?_202:  add     dword [ebp-8H], 1                       ; 3D41 _ 83. 45, F8, 01
?_203:  mov     eax, dword [ebp-18H]                    ; 3D45 _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 3D48 _ 8B. 40, 04
        cmp     dword [ebp-8H], eax                     ; 3D4B _ 39. 45, F8
        jl      ?_201                                   ; 3D4E _ 0F 8C, FFFFFF5B
        add     dword [ebp-0CH], 1                      ; 3D54 _ 83. 45, F4, 01
?_204:  mov     eax, dword [ebp-18H]                    ; 3D58 _ 8B. 45, E8
        mov     eax, dword [eax+8H]                     ; 3D5B _ 8B. 40, 08
        cmp     dword [ebp-0CH], eax                    ; 3D5E _ 39. 45, F4
        jl      ?_200                                   ; 3D61 _ 0F 8C, FFFFFF2E
        add     dword [ebp-4H], 1                       ; 3D67 _ 83. 45, FC, 01
?_205:  mov     eax, dword [ebp-4H]                     ; 3D6B _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 3D6E _ 3B. 45, 20
        jle     ?_199                                   ; 3D71 _ 0F 8E, FFFFFEE5
        nop                                             ; 3D77 _ 90
        leave                                           ; 3D78 _ C9
        ret                                             ; 3D79 _ C3
; _sheet_refreshsub End of function

_sheet_refreshmap:; Function begin
        push    ebp                                     ; 3D7A _ 55
        mov     ebp, esp                                ; 3D7B _ 89. E5
        sub     esp, 64                                 ; 3D7D _ 83. EC, 40
        mov     eax, dword [ebp+8H]                     ; 3D80 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 3D83 _ 8B. 40, 04
        mov     dword [ebp-20H], eax                    ; 3D86 _ 89. 45, E0
        cmp     dword [ebp+0CH], 0                      ; 3D89 _ 83. 7D, 0C, 00
        jns     ?_206                                   ; 3D8D _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 3D8F _ C7. 45, 0C, 00000000
?_206:  cmp     dword [ebp+10H], 0                      ; 3D96 _ 83. 7D, 10, 00
        jns     ?_207                                   ; 3D9A _ 79, 07
        mov     dword [ebp+10H], 0                      ; 3D9C _ C7. 45, 10, 00000000
?_207:  mov     eax, dword [ebp+8H]                     ; 3DA3 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3DA6 _ 8B. 40, 08
        cmp     dword [ebp+14H], eax                    ; 3DA9 _ 39. 45, 14
        jle     ?_208                                   ; 3DAC _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 3DAE _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3DB1 _ 8B. 40, 08
        mov     dword [ebp+14H], eax                    ; 3DB4 _ 89. 45, 14
?_208:  mov     eax, dword [ebp+8H]                     ; 3DB7 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3DBA _ 8B. 40, 0C
        cmp     dword [ebp+18H], eax                    ; 3DBD _ 39. 45, 18
        jle     ?_209                                   ; 3DC0 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 3DC2 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3DC5 _ 8B. 40, 0C
        mov     dword [ebp+18H], eax                    ; 3DC8 _ 89. 45, 18
?_209:  mov     eax, dword [ebp+1CH]                    ; 3DCB _ 8B. 45, 1C
        mov     dword [ebp-4H], eax                     ; 3DCE _ 89. 45, FC
        jmp     ?_220                                   ; 3DD1 _ E9, 00000139

?_210:  mov     eax, dword [ebp+8H]                     ; 3DD6 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 3DD9 _ 8B. 55, FC
        add     edx, 4                                  ; 3DDC _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 3DDF _ 8B. 44 90, 04
        mov     dword [ebp-24H], eax                    ; 3DE3 _ 89. 45, DC
        mov     eax, dword [ebp+8H]                     ; 3DE6 _ 8B. 45, 08
        add     eax, 1044                               ; 3DE9 _ 05, 00000414
        mov     edx, dword [ebp-24H]                    ; 3DEE _ 8B. 55, DC
        sub     edx, eax                                ; 3DF1 _ 29. C2
        mov     eax, edx                                ; 3DF3 _ 89. D0
        sar     eax, 5                                  ; 3DF5 _ C1. F8, 05
        mov     byte [ebp-25H], al                      ; 3DF8 _ 88. 45, DB
        mov     eax, dword [ebp-24H]                    ; 3DFB _ 8B. 45, DC
        mov     eax, dword [eax]                        ; 3DFE _ 8B. 00
        mov     dword [ebp-2CH], eax                    ; 3E00 _ 89. 45, D4
        mov     eax, dword [ebp-24H]                    ; 3E03 _ 8B. 45, DC
        mov     eax, dword [eax+0CH]                    ; 3E06 _ 8B. 40, 0C
        mov     edx, dword [ebp+0CH]                    ; 3E09 _ 8B. 55, 0C
        sub     edx, eax                                ; 3E0C _ 29. C2
        mov     eax, edx                                ; 3E0E _ 89. D0
        mov     dword [ebp-10H], eax                    ; 3E10 _ 89. 45, F0
        mov     eax, dword [ebp-24H]                    ; 3E13 _ 8B. 45, DC
        mov     eax, dword [eax+10H]                    ; 3E16 _ 8B. 40, 10
        mov     edx, dword [ebp+10H]                    ; 3E19 _ 8B. 55, 10
        sub     edx, eax                                ; 3E1C _ 29. C2
        mov     eax, edx                                ; 3E1E _ 89. D0
        mov     dword [ebp-14H], eax                    ; 3E20 _ 89. 45, EC
        mov     eax, dword [ebp-24H]                    ; 3E23 _ 8B. 45, DC
        mov     eax, dword [eax+0CH]                    ; 3E26 _ 8B. 40, 0C
        mov     edx, dword [ebp+14H]                    ; 3E29 _ 8B. 55, 14
        sub     edx, eax                                ; 3E2C _ 29. C2
        mov     eax, edx                                ; 3E2E _ 89. D0
        mov     dword [ebp-18H], eax                    ; 3E30 _ 89. 45, E8
        mov     eax, dword [ebp-24H]                    ; 3E33 _ 8B. 45, DC
        mov     eax, dword [eax+10H]                    ; 3E36 _ 8B. 40, 10
        mov     edx, dword [ebp+18H]                    ; 3E39 _ 8B. 55, 18
        sub     edx, eax                                ; 3E3C _ 29. C2
        mov     eax, edx                                ; 3E3E _ 89. D0
        mov     dword [ebp-1CH], eax                    ; 3E40 _ 89. 45, E4
        cmp     dword [ebp-10H], 0                      ; 3E43 _ 83. 7D, F0, 00
        jns     ?_211                                   ; 3E47 _ 79, 07
        mov     dword [ebp-10H], 0                      ; 3E49 _ C7. 45, F0, 00000000
?_211:  cmp     dword [ebp-14H], 0                      ; 3E50 _ 83. 7D, EC, 00
        jns     ?_212                                   ; 3E54 _ 79, 07
        mov     dword [ebp-14H], 0                      ; 3E56 _ C7. 45, EC, 00000000
?_212:  mov     eax, dword [ebp-24H]                    ; 3E5D _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 3E60 _ 8B. 40, 04
        cmp     dword [ebp-18H], eax                    ; 3E63 _ 39. 45, E8
        jle     ?_213                                   ; 3E66 _ 7E, 09
        mov     eax, dword [ebp-24H]                    ; 3E68 _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 3E6B _ 8B. 40, 04
        mov     dword [ebp-18H], eax                    ; 3E6E _ 89. 45, E8
?_213:  mov     eax, dword [ebp-24H]                    ; 3E71 _ 8B. 45, DC
        mov     eax, dword [eax+8H]                     ; 3E74 _ 8B. 40, 08
        cmp     dword [ebp-1CH], eax                    ; 3E77 _ 39. 45, E4
        jle     ?_214                                   ; 3E7A _ 7E, 09
        mov     eax, dword [ebp-24H]                    ; 3E7C _ 8B. 45, DC
        mov     eax, dword [eax+8H]                     ; 3E7F _ 8B. 40, 08
        mov     dword [ebp-1CH], eax                    ; 3E82 _ 89. 45, E4
?_214:  mov     eax, dword [ebp-14H]                    ; 3E85 _ 8B. 45, EC
        mov     dword [ebp-0CH], eax                    ; 3E88 _ 89. 45, F4
        jmp     ?_219                                   ; 3E8B _ EB, 76

?_215:  mov     eax, dword [ebp-24H]                    ; 3E8D _ 8B. 45, DC
        mov     edx, dword [eax+10H]                    ; 3E90 _ 8B. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 3E93 _ 8B. 45, F4
        add     eax, edx                                ; 3E96 _ 01. D0
        mov     dword [ebp-30H], eax                    ; 3E98 _ 89. 45, D0
        mov     eax, dword [ebp-10H]                    ; 3E9B _ 8B. 45, F0
        mov     dword [ebp-8H], eax                     ; 3E9E _ 89. 45, F8
        jmp     ?_218                                   ; 3EA1 _ EB, 54

?_216:  mov     eax, dword [ebp-24H]                    ; 3EA3 _ 8B. 45, DC
        mov     edx, dword [eax+0CH]                    ; 3EA6 _ 8B. 50, 0C
        mov     eax, dword [ebp-8H]                     ; 3EA9 _ 8B. 45, F8
        add     eax, edx                                ; 3EAC _ 01. D0
        mov     dword [ebp-34H], eax                    ; 3EAE _ 89. 45, CC
        mov     eax, dword [ebp-24H]                    ; 3EB1 _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 3EB4 _ 8B. 40, 04
        imul    eax, dword [ebp-0CH]                    ; 3EB7 _ 0F AF. 45, F4
        mov     edx, dword [ebp-8H]                     ; 3EBB _ 8B. 55, F8
        add     eax, edx                                ; 3EBE _ 01. D0
        mov     edx, eax                                ; 3EC0 _ 89. C2
        mov     eax, dword [ebp-2CH]                    ; 3EC2 _ 8B. 45, D4
        add     eax, edx                                ; 3EC5 _ 01. D0
        movzx   eax, byte [eax]                         ; 3EC7 _ 0F B6. 00
        movzx   eax, al                                 ; 3ECA _ 0F B6. C0
        mov     edx, dword [ebp-24H]                    ; 3ECD _ 8B. 55, DC
        mov     edx, dword [edx+14H]                    ; 3ED0 _ 8B. 52, 14
        cmp     eax, edx                                ; 3ED3 _ 39. D0
        jz      ?_217                                   ; 3ED5 _ 74, 1C
        mov     eax, dword [ebp+8H]                     ; 3ED7 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3EDA _ 8B. 40, 08
        imul    eax, dword [ebp-30H]                    ; 3EDD _ 0F AF. 45, D0
        mov     edx, dword [ebp-34H]                    ; 3EE1 _ 8B. 55, CC
        add     eax, edx                                ; 3EE4 _ 01. D0
        mov     edx, eax                                ; 3EE6 _ 89. C2
        mov     eax, dword [ebp-20H]                    ; 3EE8 _ 8B. 45, E0
        add     edx, eax                                ; 3EEB _ 01. C2
        movzx   eax, byte [ebp-25H]                     ; 3EED _ 0F B6. 45, DB
        mov     byte [edx], al                          ; 3EF1 _ 88. 02
?_217:  add     dword [ebp-8H], 1                       ; 3EF3 _ 83. 45, F8, 01
?_218:  mov     eax, dword [ebp-8H]                     ; 3EF7 _ 8B. 45, F8
        cmp     eax, dword [ebp-18H]                    ; 3EFA _ 3B. 45, E8
        jl      ?_216                                   ; 3EFD _ 7C, A4
        add     dword [ebp-0CH], 1                      ; 3EFF _ 83. 45, F4, 01
?_219:  mov     eax, dword [ebp-0CH]                    ; 3F03 _ 8B. 45, F4
        cmp     eax, dword [ebp-1CH]                    ; 3F06 _ 3B. 45, E4
        jl      ?_215                                   ; 3F09 _ 7C, 82
        add     dword [ebp-4H], 1                       ; 3F0B _ 83. 45, FC, 01
?_220:  mov     eax, dword [ebp+8H]                     ; 3F0F _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3F12 _ 8B. 40, 10
        cmp     dword [ebp-4H], eax                     ; 3F15 _ 39. 45, FC
        jle     ?_210                                   ; 3F18 _ 0F 8E, FFFFFEB8
        nop                                             ; 3F1E _ 90
        leave                                           ; 3F1F _ C9
        ret                                             ; 3F20 _ C3
; _sheet_refreshmap End of function

        nop                                             ; 3F21 _ 90
        nop                                             ; 3F22 _ 90
        nop                                             ; 3F23 _ 90


_memman_init:
        push    ebp                                     ; 3F24 _ 55
        mov     ebp, esp                                ; 3F25 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 3F27 _ 8B. 45, 08
        mov     dword [eax], 0                          ; 3F2A _ C7. 00, 00000000
        mov     eax, dword [ebp+8H]                     ; 3F30 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 3F33 _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 3F3A _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 3F3D _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 3F44 _ 8B. 45, 08
        mov     dword [eax+0CH], 0                      ; 3F47 _ C7. 40, 0C, 00000000
        nop                                             ; 3F4E _ 90
        pop     ebp                                     ; 3F4F _ 5D
        ret                                             ; 3F50 _ C3

_memman_total:; Function begin
        push    ebp                                     ; 3F51 _ 55
        mov     ebp, esp                                ; 3F52 _ 89. E5
        sub     esp, 16                                 ; 3F54 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 3F57 _ C7. 45, F8, 00000000
        mov     dword [ebp-4H], 0                       ; 3F5E _ C7. 45, FC, 00000000
        jmp     ?_222                                   ; 3F65 _ EB, 14

?_221:  mov     eax, dword [ebp+8H]                     ; 3F67 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 3F6A _ 8B. 55, FC
        add     edx, 2                                  ; 3F6D _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 3F70 _ 8B. 44 D0, 04
        add     dword [ebp-8H], eax                     ; 3F74 _ 01. 45, F8
        add     dword [ebp-4H], 1                       ; 3F77 _ 83. 45, FC, 01
?_222:  mov     eax, dword [ebp+8H]                     ; 3F7B _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3F7E _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 3F80 _ 39. 45, FC
        jc      ?_221                                   ; 3F83 _ 72, E2
        mov     eax, dword [ebp-8H]                     ; 3F85 _ 8B. 45, F8
        leave                                           ; 3F88 _ C9
        ret                                             ; 3F89 _ C3
; _memman_total End of function

_memman_alloc:; Function begin
        push    ebp                                     ; 3F8A _ 55
        mov     ebp, esp                                ; 3F8B _ 89. E5
        sub     esp, 16                                 ; 3F8D _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 3F90 _ C7. 45, FC, 00000000
        jmp     ?_226                                   ; 3F97 _ E9, 00000083

?_223:  mov     eax, dword [ebp+8H]                     ; 3F9C _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 3F9F _ 8B. 55, FC
        add     edx, 2                                  ; 3FA2 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 3FA5 _ 8B. 44 D0, 04
        cmp     dword [ebp+0CH], eax                    ; 3FA9 _ 39. 45, 0C
        ja      ?_225                                   ; 3FAC _ 77, 6D
        mov     eax, dword [ebp+8H]                     ; 3FAE _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 3FB1 _ 8B. 55, FC
        add     edx, 2                                  ; 3FB4 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 3FB7 _ 8B. 04 D0
        mov     dword [ebp-8H], eax                     ; 3FBA _ 89. 45, F8
        mov     eax, dword [ebp+8H]                     ; 3FBD _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 3FC0 _ 8B. 55, FC
        add     edx, 2                                  ; 3FC3 _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 3FC6 _ 8B. 14 D0
        mov     eax, dword [ebp+0CH]                    ; 3FC9 _ 8B. 45, 0C
        lea     ecx, [edx+eax]                          ; 3FCC _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 3FCF _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 3FD2 _ 8B. 55, FC
        add     edx, 2                                  ; 3FD5 _ 83. C2, 02
        mov     dword [eax+edx*8], ecx                  ; 3FD8 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 3FDB _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 3FDE _ 8B. 55, FC
        add     edx, 2                                  ; 3FE1 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 3FE4 _ 8B. 44 D0, 04
        sub     eax, dword [ebp+0CH]                    ; 3FE8 _ 2B. 45, 0C
        mov     edx, dword [ebp+8H]                     ; 3FEB _ 8B. 55, 08
        mov     ecx, dword [ebp-4H]                     ; 3FEE _ 8B. 4D, FC
        add     ecx, 2                                  ; 3FF1 _ 83. C1, 02
        mov     dword [edx+ecx*8+4H], eax               ; 3FF4 _ 89. 44 CA, 04
        mov     eax, dword [ebp+8H]                     ; 3FF8 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 3FFB _ 8B. 55, FC
        add     edx, 2                                  ; 3FFE _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 4001 _ 8B. 44 D0, 04
        test    eax, eax                                ; 4005 _ 85. C0
        jnz     ?_224                                   ; 4007 _ 75, 0D
        mov     eax, dword [ebp+8H]                     ; 4009 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 400C _ 8B. 00
        lea     edx, [eax-1H]                           ; 400E _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 4011 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 4014 _ 89. 10
?_224:  mov     eax, dword [ebp-8H]                     ; 4016 _ 8B. 45, F8
        jmp     ?_227                                   ; 4019 _ EB, 17

?_225:  add     dword [ebp-4H], 1                       ; 401B _ 83. 45, FC, 01
?_226:  mov     eax, dword [ebp+8H]                     ; 401F _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 4022 _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 4024 _ 39. 45, FC
        jc      ?_223                                   ; 4027 _ 0F 82, FFFFFF6F
        mov     eax, 0                                  ; 402D _ B8, 00000000
?_227:  leave                                           ; 4032 _ C9
        ret                                             ; 4033 _ C3
; _memman_alloc End of function

_memman_free:; Function begin
        push    ebp                                     ; 4034 _ 55
        mov     ebp, esp                                ; 4035 _ 89. E5
        push    ebx                                     ; 4037 _ 53
        sub     esp, 16                                 ; 4038 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 403B _ C7. 45, F8, 00000000
        jmp     ?_229                                   ; 4042 _ EB, 15

?_228:  mov     eax, dword [ebp+8H]                     ; 4044 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 4047 _ 8B. 55, F8
        add     edx, 2                                  ; 404A _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 404D _ 8B. 04 D0
        cmp     dword [ebp+0CH], eax                    ; 4050 _ 39. 45, 0C
        jc      ?_230                                   ; 4053 _ 72, 10
        add     dword [ebp-8H], 1                       ; 4055 _ 83. 45, F8, 01
?_229:  mov     eax, dword [ebp+8H]                     ; 4059 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 405C _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 405E _ 39. 45, F8
        jl      ?_228                                   ; 4061 _ 7C, E1
        jmp     ?_231                                   ; 4063 _ EB, 01

?_230:  nop                                             ; 4065 _ 90
?_231:  cmp     dword [ebp-8H], 0                       ; 4066 _ 83. 7D, F8, 00
        jle     ?_233                                   ; 406A _ 0F 8E, 000000B8
        mov     eax, dword [ebp-8H]                     ; 4070 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 4073 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 4076 _ 8B. 45, 08
        add     edx, 2                                  ; 4079 _ 83. C2, 02
        mov     ecx, dword [eax+edx*8]                  ; 407C _ 8B. 0C D0
        mov     eax, dword [ebp-8H]                     ; 407F _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 4082 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 4085 _ 8B. 45, 08
        add     edx, 2                                  ; 4088 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 408B _ 8B. 44 D0, 04
        add     eax, ecx                                ; 408F _ 01. C8
        cmp     dword [ebp+0CH], eax                    ; 4091 _ 39. 45, 0C
        jne     ?_233                                   ; 4094 _ 0F 85, 0000008E
        mov     eax, dword [ebp-8H]                     ; 409A _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 409D _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 40A0 _ 8B. 45, 08
        add     edx, 2                                  ; 40A3 _ 83. C2, 02
        mov     ecx, dword [eax+edx*8+4H]               ; 40A6 _ 8B. 4C D0, 04
        mov     eax, dword [ebp-8H]                     ; 40AA _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 40AD _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 40B0 _ 8B. 45, 10
        add     ecx, eax                                ; 40B3 _ 01. C1
        mov     eax, dword [ebp+8H]                     ; 40B5 _ 8B. 45, 08
        add     edx, 2                                  ; 40B8 _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 40BB _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 40BF _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 40C2 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 40C4 _ 39. 45, F8
        jge     ?_232                                   ; 40C7 _ 7D, 55
        mov     edx, dword [ebp+0CH]                    ; 40C9 _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 40CC _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 40CF _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 40D2 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 40D5 _ 8B. 55, F8
        add     edx, 2                                  ; 40D8 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 40DB _ 8B. 04 D0
        cmp     ecx, eax                                ; 40DE _ 39. C1
        jnz     ?_232                                   ; 40E0 _ 75, 3C
        mov     eax, dword [ebp-8H]                     ; 40E2 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 40E5 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 40E8 _ 8B. 45, 08
        add     edx, 2                                  ; 40EB _ 83. C2, 02
        mov     ecx, dword [eax+edx*8+4H]               ; 40EE _ 8B. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 40F2 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 40F5 _ 8B. 55, F8
        add     edx, 2                                  ; 40F8 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 40FB _ 8B. 44 D0, 04
        mov     edx, dword [ebp-8H]                     ; 40FF _ 8B. 55, F8
        sub     edx, 1                                  ; 4102 _ 83. EA, 01
        add     ecx, eax                                ; 4105 _ 01. C1
        mov     eax, dword [ebp+8H]                     ; 4107 _ 8B. 45, 08
        add     edx, 2                                  ; 410A _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 410D _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 4111 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 4114 _ 8B. 00
        lea     edx, [eax-1H]                           ; 4116 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 4119 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 411C _ 89. 10
?_232:  mov     eax, 0                                  ; 411E _ B8, 00000000
        jmp     ?_239                                   ; 4123 _ E9, 0000011C

?_233:  mov     eax, dword [ebp+8H]                     ; 4128 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 412B _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 412D _ 39. 45, F8
        jge     ?_234                                   ; 4130 _ 7D, 52
        mov     edx, dword [ebp+0CH]                    ; 4132 _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 4135 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 4138 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 413B _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 413E _ 8B. 55, F8
        add     edx, 2                                  ; 4141 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 4144 _ 8B. 04 D0
        cmp     ecx, eax                                ; 4147 _ 39. C1
        jnz     ?_234                                   ; 4149 _ 75, 39
        mov     eax, dword [ebp+8H]                     ; 414B _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 414E _ 8B. 55, F8
        add     edx, 2                                  ; 4151 _ 83. C2, 02
        mov     ecx, dword [ebp+0CH]                    ; 4154 _ 8B. 4D, 0C
        mov     dword [eax+edx*8], ecx                  ; 4157 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 415A _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 415D _ 8B. 55, F8
        add     edx, 2                                  ; 4160 _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 4163 _ 8B. 54 D0, 04
        mov     eax, dword [ebp+10H]                    ; 4167 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 416A _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 416D _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 4170 _ 8B. 55, F8
        add     edx, 2                                  ; 4173 _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 4176 _ 89. 4C D0, 04
        mov     eax, 0                                  ; 417A _ B8, 00000000
        jmp     ?_239                                   ; 417F _ E9, 000000C0

?_234:  mov     eax, dword [ebp+8H]                     ; 4184 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 4187 _ 8B. 00
        cmp     eax, 4095                               ; 4189 _ 3D, 00000FFF
        jg      ?_238                                   ; 418E _ 0F 8F, 00000087
        mov     eax, dword [ebp+8H]                     ; 4194 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 4197 _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 4199 _ 89. 45, F4
        jmp     ?_236                                   ; 419C _ EB, 28

?_235:  mov     eax, dword [ebp-0CH]                    ; 419E _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 41A1 _ 8D. 50, FF
        mov     ecx, dword [ebp+8H]                     ; 41A4 _ 8B. 4D, 08
        mov     eax, dword [ebp-0CH]                    ; 41A7 _ 8B. 45, F4
        lea     ebx, [eax+2H]                           ; 41AA _ 8D. 58, 02
        mov     eax, dword [ebp+8H]                     ; 41AD _ 8B. 45, 08
        add     edx, 2                                  ; 41B0 _ 83. C2, 02
        lea     edx, [eax+edx*8]                        ; 41B3 _ 8D. 14 D0
        mov     eax, dword [edx]                        ; 41B6 _ 8B. 02
        mov     edx, dword [edx+4H]                     ; 41B8 _ 8B. 52, 04
        mov     dword [ecx+ebx*8], eax                  ; 41BB _ 89. 04 D9
        mov     dword [ecx+ebx*8+4H], edx               ; 41BE _ 89. 54 D9, 04
        sub     dword [ebp-0CH], 1                      ; 41C2 _ 83. 6D, F4, 01
?_236:  mov     eax, dword [ebp-0CH]                    ; 41C6 _ 8B. 45, F4
        cmp     eax, dword [ebp-8H]                     ; 41C9 _ 3B. 45, F8
        jg      ?_235                                   ; 41CC _ 7F, D0
        mov     eax, dword [ebp+8H]                     ; 41CE _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 41D1 _ 8B. 00
        lea     edx, [eax+1H]                           ; 41D3 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 41D6 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 41D9 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 41DB _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 41DE _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 41E1 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 41E4 _ 8B. 00
        cmp     edx, eax                                ; 41E6 _ 39. C2
        jge     ?_237                                   ; 41E8 _ 7D, 0B
        mov     eax, dword [ebp+8H]                     ; 41EA _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 41ED _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 41EF _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 41F2 _ 89. 50, 04
?_237:  mov     eax, dword [ebp+8H]                     ; 41F5 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 41F8 _ 8B. 55, F8
        add     edx, 2                                  ; 41FB _ 83. C2, 02
        mov     ecx, dword [ebp+0CH]                    ; 41FE _ 8B. 4D, 0C
        mov     dword [eax+edx*8], ecx                  ; 4201 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 4204 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 4207 _ 8B. 55, F8
        add     edx, 2                                  ; 420A _ 83. C2, 02
        mov     ecx, dword [ebp+10H]                    ; 420D _ 8B. 4D, 10
        mov     dword [eax+edx*8+4H], ecx               ; 4210 _ 89. 4C D0, 04
        mov     eax, 0                                  ; 4214 _ B8, 00000000
        jmp     ?_239                                   ; 4219 _ EB, 29

?_238:  mov     eax, dword [ebp+8H]                     ; 421B _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 421E _ 8B. 40, 0C
        lea     edx, [eax+1H]                           ; 4221 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 4224 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 4227 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 422A _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 422D _ 8B. 40, 08
        mov     edx, eax                                ; 4230 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 4232 _ 8B. 45, 10
        add     eax, edx                                ; 4235 _ 01. D0
        mov     edx, eax                                ; 4237 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 4239 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 423C _ 89. 50, 08
        mov     eax, 4294967295                         ; 423F _ B8, FFFFFFFF
?_239:  add     esp, 16                                 ; 4244 _ 83. C4, 10
        pop     ebx                                     ; 4247 _ 5B
        pop     ebp                                     ; 4248 _ 5D
        ret                                             ; 4249 _ C3
; _memman_free End of function

_memman_alloc_4k:; Function begin
        push    ebp                                     ; 424A _ 55
        mov     ebp, esp                                ; 424B _ 89. E5
        sub     esp, 24                                 ; 424D _ 83. EC, 18
        mov     eax, dword [ebp+0CH]                    ; 4250 _ 8B. 45, 0C
        add     eax, 4095                               ; 4253 _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 4258 _ 25, FFFFF000
        mov     dword [ebp+0CH], eax                    ; 425D _ 89. 45, 0C
        mov     eax, dword [ebp+0CH]                    ; 4260 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 4263 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4267 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 426A _ 89. 04 24
        call    _memman_alloc                           ; 426D _ E8, FFFFFD18
        mov     dword [ebp-4H], eax                     ; 4272 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 4275 _ 8B. 45, FC
        leave                                           ; 4278 _ C9
        ret                                             ; 4279 _ C3
; _memman_alloc_4k End of function

_memman_free_4k:; Function begin
        push    ebp                                     ; 427A _ 55
        mov     ebp, esp                                ; 427B _ 89. E5
        sub     esp, 28                                 ; 427D _ 83. EC, 1C
        mov     eax, dword [ebp+10H]                    ; 4280 _ 8B. 45, 10
        add     eax, 4095                               ; 4283 _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 4288 _ 25, FFFFF000
        mov     dword [ebp+10H], eax                    ; 428D _ 89. 45, 10
        mov     eax, dword [ebp+10H]                    ; 4290 _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 4293 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 4297 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 429A _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 429E _ 8B. 45, 08
        mov     dword [esp], eax                        ; 42A1 _ 89. 04 24
        call    _memman_free                            ; 42A4 _ E8, FFFFFD8B
        mov     dword [ebp-4H], eax                     ; 42A9 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 42AC _ 8B. 45, FC
        leave                                           ; 42AF _ C9
        ret                                             ; 42B0 _ C3
; _memman_free_4k End of function

        nop                                             ; 42B1 _ 90
        nop                                             ; 42B2 _ 90
        nop                                             ; 42B3 _ 90


_fifo8_init:
        push    ebp                                     ; 42B4 _ 55
        mov     ebp, esp                                ; 42B5 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 42B7 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 42BA _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 42BD _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 42C0 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 42C3 _ 8B. 55, 10
        mov     dword [eax], edx                        ; 42C6 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 42C8 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 42CB _ 8B. 55, 0C
        mov     dword [eax+10H], edx                    ; 42CE _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 42D1 _ 8B. 45, 08
        mov     dword [eax+14H], 0                      ; 42D4 _ C7. 40, 14, 00000000
        mov     eax, dword [ebp+8H]                     ; 42DB _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 42DE _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 42E5 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 42E8 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 42EF _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 42F2 _ 8B. 55, 14
        mov     dword [eax+18H], edx                    ; 42F5 _ 89. 50, 18
        nop                                             ; 42F8 _ 90
        pop     ebp                                     ; 42F9 _ 5D
        ret                                             ; 42FA _ C3

_fifo8_put:; Function begin
        push    ebp                                     ; 42FB _ 55
        mov     ebp, esp                                ; 42FC _ 89. E5
        sub     esp, 40                                 ; 42FE _ 83. EC, 28
        mov     eax, dword [ebp+0CH]                    ; 4301 _ 8B. 45, 0C
        mov     byte [ebp-0CH], al                      ; 4304 _ 88. 45, F4
        cmp     dword [ebp+8H], 0                       ; 4307 _ 83. 7D, 08, 00
        jnz     ?_240                                   ; 430B _ 75, 0A
        mov     eax, 4294967295                         ; 430D _ B8, FFFFFFFF
        jmp     ?_244                                   ; 4312 _ E9, 000000AB

?_240:  mov     eax, dword [ebp+8H]                     ; 4317 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 431A _ 8B. 40, 10
        test    eax, eax                                ; 431D _ 85. C0
        jnz     ?_241                                   ; 431F _ 75, 1B
        mov     eax, dword [ebp+8H]                     ; 4321 _ 8B. 45, 08
        mov     eax, dword [eax+14H]                    ; 4324 _ 8B. 40, 14
        or      eax, 01H                                ; 4327 _ 83. C8, 01
        mov     edx, eax                                ; 432A _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 432C _ 8B. 45, 08
        mov     dword [eax+14H], edx                    ; 432F _ 89. 50, 14
        mov     eax, 4294967295                         ; 4332 _ B8, FFFFFFFF
        jmp     ?_244                                   ; 4337 _ E9, 00000086

?_241:  mov     eax, dword [ebp+8H]                     ; 433C _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 433F _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 4341 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 4344 _ 8B. 40, 04
        add     edx, eax                                ; 4347 _ 01. C2
        movzx   eax, byte [ebp-0CH]                     ; 4349 _ 0F B6. 45, F4
        mov     byte [edx], al                          ; 434D _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 434F _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 4352 _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 4355 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 4358 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 435B _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 435E _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 4361 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 4364 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 4367 _ 8B. 40, 0C
        cmp     edx, eax                                ; 436A _ 39. C2
        jnz     ?_242                                   ; 436C _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 436E _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 4371 _ C7. 40, 04, 00000000
?_242:  mov     eax, dword [ebp+8H]                     ; 4378 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 437B _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 437E _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 4381 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 4384 _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 4387 _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 438A _ 8B. 40, 18
        test    eax, eax                                ; 438D _ 85. C0
        jz      ?_243                                   ; 438F _ 74, 2C
        mov     eax, dword [ebp+8H]                     ; 4391 _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 4394 _ 8B. 40, 18
        mov     eax, dword [eax+4H]                     ; 4397 _ 8B. 40, 04
        cmp     eax, 2                                  ; 439A _ 83. F8, 02
        jz      ?_243                                   ; 439D _ 74, 1E
        mov     eax, dword [ebp+8H]                     ; 439F _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 43A2 _ 8B. 40, 18
        mov     dword [esp+8H], 0                       ; 43A5 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], -1                      ; 43AD _ C7. 44 24, 04, FFFFFFFF
        mov     dword [esp], eax                        ; 43B5 _ 89. 04 24
        call    _task_run                               ; 43B8 _ E8, 00000000(rel)
?_243:  mov     eax, 0                                  ; 43BD _ B8, 00000000
?_244:  leave                                           ; 43C2 _ C9
        ret                                             ; 43C3 _ C3
; _fifo8_put End of function

_fifo8_get:; Function begin
        push    ebp                                     ; 43C4 _ 55
        mov     ebp, esp                                ; 43C5 _ 89. E5
        sub     esp, 16                                 ; 43C7 _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 43CA _ 8B. 45, 08
        mov     edx, dword [eax+10H]                    ; 43CD _ 8B. 50, 10
        mov     eax, dword [ebp+8H]                     ; 43D0 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 43D3 _ 8B. 40, 0C
        cmp     edx, eax                                ; 43D6 _ 39. C2
        jnz     ?_245                                   ; 43D8 _ 75, 07
        mov     eax, 4294967295                         ; 43DA _ B8, FFFFFFFF
        jmp     ?_247                                   ; 43DF _ EB, 51

?_245:  mov     eax, dword [ebp+8H]                     ; 43E1 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 43E4 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 43E6 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 43E9 _ 8B. 40, 08
        add     eax, edx                                ; 43EC _ 01. D0
        movzx   eax, byte [eax]                         ; 43EE _ 0F B6. 00
        movzx   eax, al                                 ; 43F1 _ 0F B6. C0
        mov     dword [ebp-4H], eax                     ; 43F4 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 43F7 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 43FA _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 43FD _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 4400 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 4403 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 4406 _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 4409 _ 8B. 50, 08
        mov     eax, dword [ebp+8H]                     ; 440C _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 440F _ 8B. 40, 0C
        cmp     edx, eax                                ; 4412 _ 39. C2
        jnz     ?_246                                   ; 4414 _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 4416 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 4419 _ C7. 40, 08, 00000000
?_246:  mov     eax, dword [ebp+8H]                     ; 4420 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 4423 _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 4426 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 4429 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 442C _ 89. 50, 10
        mov     eax, dword [ebp-4H]                     ; 442F _ 8B. 45, FC
?_247:  leave                                           ; 4432 _ C9
        ret                                             ; 4433 _ C3
; _fifo8_get End of function

_fifo8_status:; Function begin
        push    ebp                                     ; 4434 _ 55
        mov     ebp, esp                                ; 4435 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 4437 _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 443A _ 8B. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 443D _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 4440 _ 8B. 40, 10
        sub     edx, eax                                ; 4443 _ 29. C2
        mov     eax, edx                                ; 4445 _ 89. D0
        pop     ebp                                     ; 4447 _ 5D
        ret                                             ; 4448 _ C3
; _fifo8_status End of function

        nop                                             ; 4449 _ 90
        nop                                             ; 444A _ 90
        nop                                             ; 444B _ 90


_init_pit:
        push    ebp                                     ; 444C _ 55
        mov     ebp, esp                                ; 444D _ 89. E5
        sub     esp, 40                                 ; 444F _ 83. EC, 28
        mov     dword [esp+4H], 52                      ; 4452 _ C7. 44 24, 04, 00000034
        mov     dword [esp], 67                         ; 445A _ C7. 04 24, 00000043
        call    _io_out8                                ; 4461 _ E8, 00000000(rel)
        mov     dword [esp+4H], 156                     ; 4466 _ C7. 44 24, 04, 0000009C
        mov     dword [esp], 64                         ; 446E _ C7. 04 24, 00000040
        call    _io_out8                                ; 4475 _ E8, 00000000(rel)
        mov     dword [esp+4H], 46                      ; 447A _ C7. 44 24, 04, 0000002E
        mov     dword [esp], 64                         ; 4482 _ C7. 04 24, 00000040
        call    _io_out8                                ; 4489 _ E8, 00000000(rel)
        mov     dword [_timerctl], 0                         ; 448E _ C7. 05, 00000000(d), 00000000
        mov     dword [ebp-0CH], 0                      ; 4498 _ C7. 45, F4, 00000000
        jmp     ?_249                                   ; 449F _ EB, 26

?_248:  mov     eax, dword [ebp-0CH]                    ; 44A1 _ 8B. 45, F4
        shl     eax, 4                                  ; 44A4 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 44A7 _ 05, 00000008(d)
        mov     dword [eax], 0                          ; 44AC _ C7. 00, 00000000
        mov     eax, dword [ebp-0CH]                    ; 44B2 _ 8B. 45, F4
        shl     eax, 4                                  ; 44B5 _ C1. E0, 04
        add     eax, _timerctl+0CH                           ; 44B8 _ 05, 0000000C(d)
        mov     dword [eax], 0                          ; 44BD _ C7. 00, 00000000
        add     dword [ebp-0CH], 1                      ; 44C3 _ 83. 45, F4, 01
?_249:  cmp     dword [ebp-0CH], 499                    ; 44C7 _ 81. 7D, F4, 000001F3
        jle     ?_248                                   ; 44CE _ 7E, D1
        nop                                             ; 44D0 _ 90
        leave                                           ; 44D1 _ C9
        ret                                             ; 44D2 _ C3

_timer_alloc:; Function begin
        push    ebp                                     ; 44D3 _ 55
        mov     ebp, esp                                ; 44D4 _ 89. E5
        sub     esp, 16                                 ; 44D6 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 44D9 _ C7. 45, FC, 00000000
        jmp     ?_252                                   ; 44E0 _ EB, 36

?_250:  mov     eax, dword [ebp-4H]                     ; 44E2 _ 8B. 45, FC
        shl     eax, 4                                  ; 44E5 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 44E8 _ 05, 00000008(d)
        mov     eax, dword [eax]                        ; 44ED _ 8B. 00
        test    eax, eax                                ; 44EF _ 85. C0
        jnz     ?_251                                   ; 44F1 _ 75, 21
        mov     eax, dword [ebp-4H]                     ; 44F3 _ 8B. 45, FC
        shl     eax, 4                                  ; 44F6 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 44F9 _ 05, 00000008(d)
        mov     dword [eax], 1                          ; 44FE _ C7. 00, 00000001
        mov     eax, dword [ebp-4H]                     ; 4504 _ 8B. 45, FC
        shl     eax, 4                                  ; 4507 _ C1. E0, 04
        add     eax, _timerctl                               ; 450A _ 05, 00000000(d)
        add     eax, 4                                  ; 450F _ 83. C0, 04
        jmp     ?_253                                   ; 4512 _ EB, 12

?_251:  add     dword [ebp-4H], 1                       ; 4514 _ 83. 45, FC, 01
?_252:  cmp     dword [ebp-4H], 499                     ; 4518 _ 81. 7D, FC, 000001F3
        jle     ?_250                                   ; 451F _ 7E, C1
        mov     eax, 0                                  ; 4521 _ B8, 00000000
?_253:  leave                                           ; 4526 _ C9
        ret                                             ; 4527 _ C3
; _timer_alloc End of function

_timer_free:; Function begin
        push    ebp                                     ; 4528 _ 55
        mov     ebp, esp                                ; 4529 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 452B _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 452E _ C7. 40, 04, 00000000
        nop                                             ; 4535 _ 90
        pop     ebp                                     ; 4536 _ 5D
        ret                                             ; 4537 _ C3
; _timer_free End of function

_timer_init:; Function begin
        push    ebp                                     ; 4538 _ 55
        mov     ebp, esp                                ; 4539 _ 89. E5
        sub     esp, 4                                  ; 453B _ 83. EC, 04
        mov     eax, dword [ebp+10H]                    ; 453E _ 8B. 45, 10
        mov     byte [ebp-4H], al                       ; 4541 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 4544 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 4547 _ 8B. 55, 0C
        mov     dword [eax+8H], edx                     ; 454A _ 89. 50, 08
        mov     edx, dword [ebp+8H]                     ; 454D _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 4550 _ 0F B6. 45, FC
        mov     byte [edx+0CH], al                      ; 4554 _ 88. 42, 0C
        nop                                             ; 4557 _ 90
        leave                                           ; 4558 _ C9
        ret                                             ; 4559 _ C3
; _timer_init End of function

_timer_settime:; Function begin
        push    ebp                                     ; 455A _ 55
        mov     ebp, esp                                ; 455B _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 455D _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 4560 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 4563 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 4565 _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 4568 _ C7. 40, 04, 00000002
        nop                                             ; 456F _ 90
        pop     ebp                                     ; 4570 _ 5D
        ret                                             ; 4571 _ C3
; _timer_settime End of function

_intHandlerForTimer:; Function begin
        push    ebp                                     ; 4572 _ 55
        mov     ebp, esp                                ; 4573 _ 89. E5
        sub     esp, 40                                 ; 4575 _ 83. EC, 28
        mov     dword [esp+4H], 32                      ; 4578 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 4580 _ C7. 04 24, 00000020
        call    _io_out8                                ; 4587 _ E8, 00000000(rel)
        mov     eax, dword [_timerctl]                       ; 458C _ A1, 00000000(d)
        add     eax, 1                                  ; 4591 _ 83. C0, 01
        mov     dword [_timerctl], eax                       ; 4594 _ A3, 00000000(d)
        mov     byte [ebp-0DH], 0                       ; 4599 _ C6. 45, F3, 00
        mov     dword [ebp-0CH], 0                      ; 459D _ C7. 45, F4, 00000000
        jmp     ?_257                                   ; 45A4 _ E9, 000000AA

?_254:  mov     eax, dword [ebp-0CH]                    ; 45A9 _ 8B. 45, F4
        shl     eax, 4                                  ; 45AC _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 45AF _ 05, 00000008(d)
        mov     eax, dword [eax]                        ; 45B4 _ 8B. 00
        cmp     eax, 2                                  ; 45B6 _ 83. F8, 02
        jne     ?_255                                   ; 45B9 _ 0F 85, 00000085
        mov     eax, dword [ebp-0CH]                    ; 45BF _ 8B. 45, F4
        shl     eax, 4                                  ; 45C2 _ C1. E0, 04
        add     eax, _timerctl+4H                            ; 45C5 _ 05, 00000004(d)
        mov     eax, dword [eax]                        ; 45CA _ 8B. 00
        lea     edx, [eax-1H]                           ; 45CC _ 8D. 50, FF
        mov     eax, dword [ebp-0CH]                    ; 45CF _ 8B. 45, F4
        shl     eax, 4                                  ; 45D2 _ C1. E0, 04
        add     eax, _timerctl+4H                            ; 45D5 _ 05, 00000004(d)
        mov     dword [eax], edx                        ; 45DA _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 45DC _ 8B. 45, F4
        shl     eax, 4                                  ; 45DF _ C1. E0, 04
        add     eax, _timerctl+4H                            ; 45E2 _ 05, 00000004(d)
        mov     eax, dword [eax]                        ; 45E7 _ 8B. 00
        test    eax, eax                                ; 45E9 _ 85. C0
        jnz     ?_255                                   ; 45EB _ 75, 57
        mov     eax, dword [ebp-0CH]                    ; 45ED _ 8B. 45, F4
        shl     eax, 4                                  ; 45F0 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 45F3 _ 05, 00000008(d)
        mov     dword [eax], 1                          ; 45F8 _ C7. 00, 00000001
        mov     eax, dword [ebp-0CH]                    ; 45FE _ 8B. 45, F4
        shl     eax, 4                                  ; 4601 _ C1. E0, 04
        add     eax, _timerctl+10H                           ; 4604 _ 05, 00000010(d)
        movzx   eax, byte [eax]                         ; 4609 _ 0F B6. 00
        movzx   eax, al                                 ; 460C _ 0F B6. C0
        mov     edx, dword [ebp-0CH]                    ; 460F _ 8B. 55, F4
        shl     edx, 4                                  ; 4612 _ C1. E2, 04
        add     edx, _timerctl+0CH                           ; 4615 _ 81. C2, 0000000C(d)
        mov     edx, dword [edx]                        ; 461B _ 8B. 12
        mov     dword [esp+4H], eax                     ; 461D _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 4621 _ 89. 14 24
        call    _fifo8_put                              ; 4624 _ E8, 00000000(rel)
        mov     eax, dword [ebp-0CH]                    ; 4629 _ 8B. 45, F4
        shl     eax, 4                                  ; 462C _ C1. E0, 04
        add     eax, _timerctl                               ; 462F _ 05, 00000000(d)
        lea     edx, [eax+4H]                           ; 4634 _ 8D. 50, 04
        mov     eax, dword [_task_timer]                ; 4637 _ A1, 00000000(d)
        cmp     edx, eax                                ; 463C _ 39. C2
        jnz     ?_255                                   ; 463E _ 75, 04
        mov     byte [ebp-0DH], 1                       ; 4640 _ C6. 45, F3, 01
?_255:  cmp     byte [ebp-0DH], 0                       ; 4644 _ 80. 7D, F3, 00
        jz      ?_256                                   ; 4648 _ 74, 05
        call    _task_switch                            ; 464A _ E8, 00000000(rel)
?_256:  add     dword [ebp-0CH], 1                      ; 464F _ 83. 45, F4, 01
?_257:  cmp     dword [ebp-0CH], 499                    ; 4653 _ 81. 7D, F4, 000001F3
        jle     ?_254                                   ; 465A _ 0F 8E, FFFFFF49
        nop                                             ; 4660 _ 90
        leave                                           ; 4661 _ C9
        ret                                             ; 4662 _ C3
; _intHandlerForTimer End of function

_getTimerController:; Function begin
        mov     eax, _timerctl                               ; 4663 _ B8, 00000000(d)
        ret                                             ; 4668 _ C3
; _getTimerController End of function

        nop                                             ; 4669 _ 90
        nop                                             ; 466A _ 90
        nop                                             ; 466B _ 90


_set_segmdesc:
        push    ebp                                     ; 466C _ 55
        mov     ebp, esp                                ; 466D _ 89. E5
        cmp     dword [ebp+0CH], 1048575                ; 466F _ 81. 7D, 0C, 000FFFFF
        jbe     ?_258                                   ; 4676 _ 76, 10
        or      dword [ebp+14H], 8000H                  ; 4678 _ 81. 4D, 14, 00008000
        mov     eax, dword [ebp+0CH]                    ; 467F _ 8B. 45, 0C
        shr     eax, 12                                 ; 4682 _ C1. E8, 0C
        mov     dword [ebp+0CH], eax                    ; 4685 _ 89. 45, 0C
?_258:  mov     eax, dword [ebp+0CH]                    ; 4688 _ 8B. 45, 0C
        mov     edx, eax                                ; 468B _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 468D _ 8B. 45, 08
        mov     word [eax], dx                          ; 4690 _ 66: 89. 10
        mov     eax, dword [ebp+10H]                    ; 4693 _ 8B. 45, 10
        mov     edx, eax                                ; 4696 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 4698 _ 8B. 45, 08
        mov     word [eax+2H], dx                       ; 469B _ 66: 89. 50, 02
        mov     eax, dword [ebp+10H]                    ; 469F _ 8B. 45, 10
        sar     eax, 16                                 ; 46A2 _ C1. F8, 10
        mov     edx, eax                                ; 46A5 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 46A7 _ 8B. 45, 08
        mov     byte [eax+4H], dl                       ; 46AA _ 88. 50, 04
        mov     eax, dword [ebp+14H]                    ; 46AD _ 8B. 45, 14
        mov     edx, eax                                ; 46B0 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 46B2 _ 8B. 45, 08
        mov     byte [eax+5H], dl                       ; 46B5 _ 88. 50, 05
        mov     eax, dword [ebp+0CH]                    ; 46B8 _ 8B. 45, 0C
        shr     eax, 16                                 ; 46BB _ C1. E8, 10
        and     eax, 0FH                                ; 46BE _ 83. E0, 0F
        mov     edx, eax                                ; 46C1 _ 89. C2
        mov     eax, dword [ebp+14H]                    ; 46C3 _ 8B. 45, 14
        sar     eax, 8                                  ; 46C6 _ C1. F8, 08
        and     eax, 0FFFFFFF0H                         ; 46C9 _ 83. E0, F0
        or      eax, edx                                ; 46CC _ 09. D0
        mov     edx, eax                                ; 46CE _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 46D0 _ 8B. 45, 08
        mov     byte [eax+6H], dl                       ; 46D3 _ 88. 50, 06
        mov     eax, dword [ebp+10H]                    ; 46D6 _ 8B. 45, 10
        shr     eax, 24                                 ; 46D9 _ C1. E8, 18
        mov     edx, eax                                ; 46DC _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 46DE _ 8B. 45, 08
        mov     byte [eax+7H], dl                       ; 46E1 _ 88. 50, 07
        nop                                             ; 46E4 _ 90
        pop     ebp                                     ; 46E5 _ 5D
        ret                                             ; 46E6 _ C3

_init_task_level:; Function begin
        push    ebp                                     ; 46E7 _ 55
        mov     ebp, esp                                ; 46E8 _ 89. E5
        sub     esp, 16                                 ; 46EA _ 83. EC, 10
        mov     ecx, dword [_taskctl]                   ; 46ED _ 8B. 0D, 00000004(d)
        mov     edx, dword [ebp+8H]                     ; 46F3 _ 8B. 55, 08
        mov     eax, edx                                ; 46F6 _ 89. D0
        shl     eax, 2                                  ; 46F8 _ C1. E0, 02
        add     eax, edx                                ; 46FB _ 01. D0
        shl     eax, 2                                  ; 46FD _ C1. E0, 02
        add     eax, ecx                                ; 4700 _ 01. C8
        add     eax, 8                                  ; 4702 _ 83. C0, 08
        mov     dword [eax], 0                          ; 4705 _ C7. 00, 00000000
        mov     ecx, dword [_taskctl]                   ; 470B _ 8B. 0D, 00000004(d)
        mov     edx, dword [ebp+8H]                     ; 4711 _ 8B. 55, 08
        mov     eax, edx                                ; 4714 _ 89. D0
        shl     eax, 2                                  ; 4716 _ C1. E0, 02
        add     eax, edx                                ; 4719 _ 01. D0
        shl     eax, 2                                  ; 471B _ C1. E0, 02
        add     eax, ecx                                ; 471E _ 01. C8
        add     eax, 12                                 ; 4720 _ 83. C0, 0C
        mov     dword [eax], 0                          ; 4723 _ C7. 00, 00000000
        mov     dword [ebp-4H], 0                       ; 4729 _ C7. 45, FC, 00000000
        jmp     ?_260                                   ; 4730 _ EB, 21

?_259:  mov     ecx, dword [_taskctl]                   ; 4732 _ 8B. 0D, 00000004(d)
        mov     edx, dword [ebp-4H]                     ; 4738 _ 8B. 55, FC
        mov     eax, edx                                ; 473B _ 89. D0
        add     eax, eax                                ; 473D _ 01. C0
        add     eax, edx                                ; 473F _ 01. D0
        shl     eax, 3                                  ; 4741 _ C1. E0, 03
        add     eax, ecx                                ; 4744 _ 01. C8
        add     eax, 16                                 ; 4746 _ 83. C0, 10
        mov     dword [eax], 0                          ; 4749 _ C7. 00, 00000000
        add     dword [ebp-4H], 1                       ; 474F _ 83. 45, FC, 01
?_260:  cmp     dword [ebp-4H], 2                       ; 4753 _ 83. 7D, FC, 02
        jle     ?_259                                   ; 4757 _ 7E, D9
        nop                                             ; 4759 _ 90
        leave                                           ; 475A _ C9
        ret                                             ; 475B _ C3
; _init_task_level End of function

_task_init:; Function begin
        push    ebp                                     ; 475C _ 55
        mov     ebp, esp                                ; 475D _ 89. E5
        sub     esp, 40                                 ; 475F _ 83. EC, 28
        call    _get_addr_gdt                           ; 4762 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 4767 _ 89. 45, F0
        mov     dword [esp+4H], 768                     ; 476A _ C7. 44 24, 04, 00000300
        mov     eax, dword [ebp+8H]                     ; 4772 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4775 _ 89. 04 24
        call    _memman_alloc_4k                        ; 4778 _ E8, 00000000(rel)
        mov     dword [_taskctl], eax                   ; 477D _ A3, 00000004(d)
        mov     dword [ebp-0CH], 0                      ; 4782 _ C7. 45, F4, 00000000
        jmp     ?_262                                   ; 4789 _ E9, 00000088

?_261:  mov     edx, dword [_taskctl]                   ; 478E _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-0CH]                    ; 4794 _ 8B. 45, F4
        imul    eax, eax, 148                           ; 4797 _ 69. C0, 00000094
        add     eax, edx                                ; 479D _ 01. D0
        add     eax, 72                                 ; 479F _ 83. C0, 48
        mov     dword [eax], 0                          ; 47A2 _ C7. 00, 00000000
        mov     eax, dword [ebp-0CH]                    ; 47A8 _ 8B. 45, F4
        add     eax, 7                                  ; 47AB _ 83. C0, 07
        mov     ecx, dword [_taskctl]                   ; 47AE _ 8B. 0D, 00000004(d)
        lea     edx, [eax*8]                            ; 47B4 _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-0CH]                    ; 47BB _ 8B. 45, F4
        imul    eax, eax, 148                           ; 47BE _ 69. C0, 00000094
        add     eax, ecx                                ; 47C4 _ 01. C8
        add     eax, 68                                 ; 47C6 _ 83. C0, 44
        mov     dword [eax], edx                        ; 47C9 _ 89. 10
        mov     edx, dword [_taskctl]                   ; 47CB _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-0CH]                    ; 47D1 _ 8B. 45, F4
        imul    eax, eax, 148                           ; 47D4 _ 69. C0, 00000094
        add     eax, 96                                 ; 47DA _ 83. C0, 60
        add     eax, edx                                ; 47DD _ 01. D0
        add     eax, 16                                 ; 47DF _ 83. C0, 10
        mov     ecx, eax                                ; 47E2 _ 89. C1
        mov     eax, dword [ebp-0CH]                    ; 47E4 _ 8B. 45, F4
        add     eax, 7                                  ; 47E7 _ 83. C0, 07
        lea     edx, [eax*8]                            ; 47EA _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-10H]                    ; 47F1 _ 8B. 45, F0
        add     eax, edx                                ; 47F4 _ 01. D0
        mov     dword [esp+0CH], 137                    ; 47F6 _ C7. 44 24, 0C, 00000089
        mov     dword [esp+8H], ecx                     ; 47FE _ 89. 4C 24, 08
        mov     dword [esp+4H], 103                     ; 4802 _ C7. 44 24, 04, 00000067
        mov     dword [esp], eax                        ; 480A _ 89. 04 24
        call    _set_segmdesc                           ; 480D _ E8, FFFFFE5A
        add     dword [ebp-0CH], 1                      ; 4812 _ 83. 45, F4, 01
?_262:  cmp     dword [ebp-0CH], 4                      ; 4816 _ 83. 7D, F4, 04
        jle     ?_261                                   ; 481A _ 0F 8E, FFFFFF6E
        mov     dword [ebp-0CH], 0                      ; 4820 _ C7. 45, F4, 00000000
        jmp     ?_264                                   ; 4827 _ EB, 0F

?_263:  mov     eax, dword [ebp-0CH]                    ; 4829 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 482C _ 89. 04 24
        call    _init_task_level                        ; 482F _ E8, FFFFFEB3
        add     dword [ebp-0CH], 1                      ; 4834 _ 83. 45, F4, 01
?_264:  cmp     dword [ebp-0CH], 2                      ; 4838 _ 83. 7D, F4, 02
        jle     ?_263                                   ; 483C _ 7E, EB
        call    _task_alloc                             ; 483E _ E8, 000000B3
        mov     dword [ebp-14H], eax                    ; 4843 _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 4846 _ 8B. 45, EC
        mov     dword [eax+4H], 2                       ; 4849 _ C7. 40, 04, 00000002
        mov     eax, dword [ebp-14H]                    ; 4850 _ 8B. 45, EC
        mov     dword [eax+8H], 100                     ; 4853 _ C7. 40, 08, 00000064
        mov     eax, dword [ebp-14H]                    ; 485A _ 8B. 45, EC
        mov     dword [eax+0CH], 0                      ; 485D _ C7. 40, 0C, 00000000
        mov     eax, dword [ebp-14H]                    ; 4864 _ 8B. 45, EC
        mov     dword [esp], eax                        ; 4867 _ 89. 04 24
        call    _task_add                               ; 486A _ E8, 0000003A
        call    _task_switchsub                         ; 486F _ E8, 00000439
        mov     eax, dword [ebp-14H]                    ; 4874 _ 8B. 45, EC
        mov     eax, dword [eax]                        ; 4877 _ 8B. 00
        mov     dword [esp], eax                        ; 4879 _ 89. 04 24
        call    _load_tr                                ; 487C _ E8, 00000000(rel)
        call    _timer_alloc                            ; 4881 _ E8, 00000000(rel)
        mov     dword [_task_timer], eax                       ; 4886 _ A3, 00000000(d)
        mov     eax, dword [ebp-14H]                    ; 488B _ 8B. 45, EC
        mov     eax, dword [eax+8H]                     ; 488E _ 8B. 40, 08
        mov     edx, eax                                ; 4891 _ 89. C2
        mov     eax, dword [_task_timer]                       ; 4893 _ A1, 00000000(d)
        mov     dword [esp+4H], edx                     ; 4898 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 489C _ 89. 04 24
        call    _timer_settime                          ; 489F _ E8, 00000000(rel)
        mov     eax, dword [ebp-14H]                    ; 48A4 _ 8B. 45, EC
        leave                                           ; 48A7 _ C9
        ret                                             ; 48A8 _ C3
; _task_init End of function

_task_add:; Function begin
        push    ebp                                     ; 48A9 _ 55
        mov     ebp, esp                                ; 48AA _ 89. E5
        sub     esp, 16                                 ; 48AC _ 83. EC, 10
        mov     ecx, dword [_taskctl]                   ; 48AF _ 8B. 0D, 00000004(d)
        mov     eax, dword [ebp+8H]                     ; 48B5 _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 48B8 _ 8B. 50, 0C
        mov     eax, edx                                ; 48BB _ 89. D0
        shl     eax, 2                                  ; 48BD _ C1. E0, 02
        add     eax, edx                                ; 48C0 _ 01. D0
        shl     eax, 2                                  ; 48C2 _ C1. E0, 02
        add     eax, ecx                                ; 48C5 _ 01. C8
        add     eax, 8                                  ; 48C7 _ 83. C0, 08
        mov     dword [ebp-4H], eax                     ; 48CA _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 48CD _ 8B. 45, FC
        mov     edx, dword [eax]                        ; 48D0 _ 8B. 10
        mov     eax, dword [ebp-4H]                     ; 48D2 _ 8B. 45, FC
        mov     ecx, dword [ebp+8H]                     ; 48D5 _ 8B. 4D, 08
        mov     dword [eax+edx*4+8H], ecx               ; 48D8 _ 89. 4C 90, 08
        mov     eax, dword [ebp-4H]                     ; 48DC _ 8B. 45, FC
        mov     eax, dword [eax]                        ; 48DF _ 8B. 00
        lea     edx, [eax+1H]                           ; 48E1 _ 8D. 50, 01
        mov     eax, dword [ebp-4H]                     ; 48E4 _ 8B. 45, FC
        mov     dword [eax], edx                        ; 48E7 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 48E9 _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 48EC _ C7. 40, 04, 00000002
        nop                                             ; 48F3 _ 90
        leave                                           ; 48F4 _ C9
        ret                                             ; 48F5 _ C3
; _task_add End of function

_task_alloc:; Function begin
        push    ebp                                     ; 48F6 _ 55
        mov     ebp, esp                                ; 48F7 _ 89. E5
        sub     esp, 16                                 ; 48F9 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 48FC _ C7. 45, FC, 00000000
        jmp     ?_267                                   ; 4903 _ E9, 00000101

?_265:  mov     edx, dword [_taskctl]                   ; 4908 _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-4H]                     ; 490E _ 8B. 45, FC
        imul    eax, eax, 148                           ; 4911 _ 69. C0, 00000094
        add     eax, edx                                ; 4917 _ 01. D0
        add     eax, 72                                 ; 4919 _ 83. C0, 48
        mov     eax, dword [eax]                        ; 491C _ 8B. 00
        test    eax, eax                                ; 491E _ 85. C0
        jne     ?_266                                   ; 4920 _ 0F 85, 000000DF
        mov     edx, dword [_taskctl]                   ; 4926 _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-4H]                     ; 492C _ 8B. 45, FC
        imul    eax, eax, 148                           ; 492F _ 69. C0, 00000094
        add     eax, 64                                 ; 4935 _ 83. C0, 40
        add     eax, edx                                ; 4938 _ 01. D0
        add     eax, 4                                  ; 493A _ 83. C0, 04
        mov     dword [ebp-8H], eax                     ; 493D _ 89. 45, F8
        mov     eax, dword [ebp-8H]                     ; 4940 _ 8B. 45, F8
        mov     dword [eax+4H], 1                       ; 4943 _ C7. 40, 04, 00000001
        mov     eax, dword [ebp-8H]                     ; 494A _ 8B. 45, F8
        mov     dword [eax+50H], 514                    ; 494D _ C7. 40, 50, 00000202
        mov     eax, dword [ebp-8H]                     ; 4954 _ 8B. 45, F8
        mov     dword [eax+54H], 0                      ; 4957 _ C7. 40, 54, 00000000
        mov     eax, dword [ebp-8H]                     ; 495E _ 8B. 45, F8
        mov     dword [eax+58H], 0                      ; 4961 _ C7. 40, 58, 00000000
        mov     eax, dword [ebp-8H]                     ; 4968 _ 8B. 45, F8
        mov     dword [eax+5CH], 0                      ; 496B _ C7. 40, 5C, 00000000
        mov     eax, dword [ebp-8H]                     ; 4972 _ 8B. 45, F8
        mov     dword [eax+60H], 0                      ; 4975 _ C7. 40, 60, 00000000
        mov     eax, dword [ebp-8H]                     ; 497C _ 8B. 45, F8
        mov     dword [eax+68H], 0                      ; 497F _ C7. 40, 68, 00000000
        mov     eax, dword [ebp-4H]                     ; 4986 _ 8B. 45, FC
        add     eax, 1                                  ; 4989 _ 83. C0, 01
        shl     eax, 9                                  ; 498C _ C1. E0, 09
        mov     edx, eax                                ; 498F _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 4991 _ 8B. 45, F8
        mov     dword [eax+64H], edx                    ; 4994 _ 89. 50, 64
        mov     eax, dword [ebp-8H]                     ; 4997 _ 8B. 45, F8
        mov     dword [eax+6CH], 0                      ; 499A _ C7. 40, 6C, 00000000
        mov     eax, dword [ebp-8H]                     ; 49A1 _ 8B. 45, F8
        mov     dword [eax+70H], 0                      ; 49A4 _ C7. 40, 70, 00000000
        mov     eax, dword [ebp-8H]                     ; 49AB _ 8B. 45, F8
        mov     dword [eax+74H], 0                      ; 49AE _ C7. 40, 74, 00000000
        mov     eax, dword [ebp-8H]                     ; 49B5 _ 8B. 45, F8
        mov     dword [eax+80H], 0                      ; 49B8 _ C7. 80, 00000080, 00000000
        mov     eax, dword [ebp-8H]                     ; 49C2 _ 8B. 45, F8
        mov     dword [eax+84H], 0                      ; 49C5 _ C7. 80, 00000084, 00000000
        mov     eax, dword [ebp-8H]                     ; 49CF _ 8B. 45, F8
        mov     dword [eax+88H], 0                      ; 49D2 _ C7. 80, 00000088, 00000000
        mov     eax, dword [ebp-8H]                     ; 49DC _ 8B. 45, F8
        mov     dword [eax+34H], 0                      ; 49DF _ C7. 40, 34, 00000000
        mov     eax, dword [ebp-8H]                     ; 49E6 _ 8B. 45, F8
        mov     dword [eax+8CH], 0                      ; 49E9 _ C7. 80, 0000008C, 00000000
        mov     eax, dword [ebp-8H]                     ; 49F3 _ 8B. 45, F8
        mov     dword [eax+90H], 1073741824             ; 49F6 _ C7. 80, 00000090, 40000000
        mov     eax, dword [ebp-8H]                     ; 4A00 _ 8B. 45, F8
        jmp     ?_268                                   ; 4A03 _ EB, 13

?_266:  add     dword [ebp-4H], 1                       ; 4A05 _ 83. 45, FC, 01
?_267:  cmp     dword [ebp-4H], 4                       ; 4A09 _ 83. 7D, FC, 04
        jle     ?_265                                   ; 4A0D _ 0F 8E, FFFFFEF5
        mov     eax, 0                                  ; 4A13 _ B8, 00000000
?_268:  leave                                           ; 4A18 _ C9
        ret                                             ; 4A19 _ C3
; _task_alloc End of function

_task_run:; Function begin
        push    ebp                                     ; 4A1A _ 55
        mov     ebp, esp                                ; 4A1B _ 89. E5
        sub     esp, 24                                 ; 4A1D _ 83. EC, 18
        cmp     dword [ebp+0CH], 0                      ; 4A20 _ 83. 7D, 0C, 00
        jns     ?_269                                   ; 4A24 _ 79, 09
        mov     eax, dword [ebp+8H]                     ; 4A26 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 4A29 _ 8B. 40, 0C
        mov     dword [ebp+0CH], eax                    ; 4A2C _ 89. 45, 0C
?_269:  cmp     dword [ebp+10H], 0                      ; 4A2F _ 83. 7D, 10, 00
        jle     ?_270                                   ; 4A33 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 4A35 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 4A38 _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 4A3B _ 89. 50, 08
?_270:  mov     eax, dword [ebp+8H]                     ; 4A3E _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 4A41 _ 8B. 40, 04
        cmp     eax, 2                                  ; 4A44 _ 83. F8, 02
        jnz     ?_271                                   ; 4A47 _ 75, 16
        mov     eax, dword [ebp+8H]                     ; 4A49 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 4A4C _ 8B. 40, 0C
        cmp     dword [ebp+0CH], eax                    ; 4A4F _ 39. 45, 0C
        jz      ?_271                                   ; 4A52 _ 74, 0B
        mov     eax, dword [ebp+8H]                     ; 4A54 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4A57 _ 89. 04 24
        call    _task_remove                            ; 4A5A _ E8, 0000002E
?_271:  mov     eax, dword [ebp+8H]                     ; 4A5F _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 4A62 _ 8B. 40, 04
        cmp     eax, 2                                  ; 4A65 _ 83. F8, 02
        jz      ?_272                                   ; 4A68 _ 74, 14
        mov     eax, dword [ebp+8H]                     ; 4A6A _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 4A6D _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 4A70 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 4A73 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4A76 _ 89. 04 24
        call    _task_add                               ; 4A79 _ E8, FFFFFE2B
?_272:  mov     eax, dword [_taskctl]                   ; 4A7E _ A1, 00000004(d)
        mov     dword [eax+4H], 1                       ; 4A83 _ C7. 40, 04, 00000001
        nop                                             ; 4A8A _ 90
        leave                                           ; 4A8B _ C9
        ret                                             ; 4A8C _ C3
; _task_run End of function

_task_remove:; Function begin
        push    ebp                                     ; 4A8D _ 55
        mov     ebp, esp                                ; 4A8E _ 89. E5
        sub     esp, 16                                 ; 4A90 _ 83. EC, 10
        mov     ecx, dword [_taskctl]                   ; 4A93 _ 8B. 0D, 00000004(d)
        mov     eax, dword [ebp+8H]                     ; 4A99 _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 4A9C _ 8B. 50, 0C
        mov     eax, edx                                ; 4A9F _ 89. D0
        shl     eax, 2                                  ; 4AA1 _ C1. E0, 02
        add     eax, edx                                ; 4AA4 _ 01. D0
        shl     eax, 2                                  ; 4AA6 _ C1. E0, 02
        add     eax, ecx                                ; 4AA9 _ 01. C8
        add     eax, 8                                  ; 4AAB _ 83. C0, 08
        mov     dword [ebp-8H], eax                     ; 4AAE _ 89. 45, F8
        mov     dword [ebp-4H], 0                       ; 4AB1 _ C7. 45, FC, 00000000
        jmp     ?_275                                   ; 4AB8 _ EB, 23

?_273:  mov     eax, dword [ebp-8H]                     ; 4ABA _ 8B. 45, F8
        mov     edx, dword [ebp-4H]                     ; 4ABD _ 8B. 55, FC
        mov     eax, dword [eax+edx*4+8H]               ; 4AC0 _ 8B. 44 90, 08
        cmp     dword [ebp+8H], eax                     ; 4AC4 _ 39. 45, 08
        jnz     ?_274                                   ; 4AC7 _ 75, 10
        mov     eax, dword [ebp-8H]                     ; 4AC9 _ 8B. 45, F8
        mov     edx, dword [ebp-4H]                     ; 4ACC _ 8B. 55, FC
        mov     dword [eax+edx*4+8H], 0                 ; 4ACF _ C7. 44 90, 08, 00000000
        jmp     ?_276                                   ; 4AD7 _ EB, 0E

?_274:  add     dword [ebp-4H], 1                       ; 4AD9 _ 83. 45, FC, 01
?_275:  mov     eax, dword [ebp-8H]                     ; 4ADD _ 8B. 45, F8
        mov     eax, dword [eax]                        ; 4AE0 _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 4AE2 _ 39. 45, FC
        jl      ?_273                                   ; 4AE5 _ 7C, D3
?_276:  mov     eax, dword [ebp-8H]                     ; 4AE7 _ 8B. 45, F8
        mov     eax, dword [eax]                        ; 4AEA _ 8B. 00
        lea     edx, [eax-1H]                           ; 4AEC _ 8D. 50, FF
        mov     eax, dword [ebp-8H]                     ; 4AEF _ 8B. 45, F8
        mov     dword [eax], edx                        ; 4AF2 _ 89. 10
        mov     eax, dword [ebp-8H]                     ; 4AF4 _ 8B. 45, F8
        mov     eax, dword [eax+4H]                     ; 4AF7 _ 8B. 40, 04
        cmp     dword [ebp-4H], eax                     ; 4AFA _ 39. 45, FC
        jge     ?_277                                   ; 4AFD _ 7D, 0F
        mov     eax, dword [ebp-8H]                     ; 4AFF _ 8B. 45, F8
        mov     eax, dword [eax+4H]                     ; 4B02 _ 8B. 40, 04
        lea     edx, [eax-1H]                           ; 4B05 _ 8D. 50, FF
        mov     eax, dword [ebp-8H]                     ; 4B08 _ 8B. 45, F8
        mov     dword [eax+4H], edx                     ; 4B0B _ 89. 50, 04
?_277:  mov     eax, dword [ebp-8H]                     ; 4B0E _ 8B. 45, F8
        mov     edx, dword [eax+4H]                     ; 4B11 _ 8B. 50, 04
        mov     eax, dword [ebp-8H]                     ; 4B14 _ 8B. 45, F8
        mov     eax, dword [eax]                        ; 4B17 _ 8B. 00
        cmp     edx, eax                                ; 4B19 _ 39. C2
        jl      ?_278                                   ; 4B1B _ 7C, 0A
        mov     eax, dword [ebp-8H]                     ; 4B1D _ 8B. 45, F8
        mov     dword [eax+4H], 0                       ; 4B20 _ C7. 40, 04, 00000000
?_278:  mov     eax, dword [ebp+8H]                     ; 4B27 _ 8B. 45, 08
        mov     dword [eax+4H], 1                       ; 4B2A _ C7. 40, 04, 00000001
        jmp     ?_280                                   ; 4B31 _ EB, 1B

?_279:  mov     eax, dword [ebp-4H]                     ; 4B33 _ 8B. 45, FC
        lea     edx, [eax+1H]                           ; 4B36 _ 8D. 50, 01
        mov     eax, dword [ebp-8H]                     ; 4B39 _ 8B. 45, F8
        mov     ecx, dword [eax+edx*4+8H]               ; 4B3C _ 8B. 4C 90, 08
        mov     eax, dword [ebp-8H]                     ; 4B40 _ 8B. 45, F8
        mov     edx, dword [ebp-4H]                     ; 4B43 _ 8B. 55, FC
        mov     dword [eax+edx*4+8H], ecx               ; 4B46 _ 89. 4C 90, 08
        add     dword [ebp-4H], 1                       ; 4B4A _ 83. 45, FC, 01
?_280:  mov     eax, dword [ebp-8H]                     ; 4B4E _ 8B. 45, F8
        mov     eax, dword [eax]                        ; 4B51 _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 4B53 _ 39. 45, FC
        jl      ?_279                                   ; 4B56 _ 7C, DB
        nop                                             ; 4B58 _ 90
        leave                                           ; 4B59 _ C9
        ret                                             ; 4B5A _ C3
; _task_remove End of function

_task_switch:; Function begin
        push    ebp                                     ; 4B5B _ 55
        mov     ebp, esp                                ; 4B5C _ 89. E5
        sub     esp, 40                                 ; 4B5E _ 83. EC, 28
        mov     ecx, dword [_taskctl]                   ; 4B61 _ 8B. 0D, 00000004(d)
        mov     eax, dword [_taskctl]                   ; 4B67 _ A1, 00000004(d)
        mov     edx, dword [eax]                        ; 4B6C _ 8B. 10
        mov     eax, edx                                ; 4B6E _ 89. D0
        shl     eax, 2                                  ; 4B70 _ C1. E0, 02
        add     eax, edx                                ; 4B73 _ 01. D0
        shl     eax, 2                                  ; 4B75 _ C1. E0, 02
        add     eax, ecx                                ; 4B78 _ 01. C8
        add     eax, 8                                  ; 4B7A _ 83. C0, 08
        mov     dword [ebp-0CH], eax                    ; 4B7D _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 4B80 _ 8B. 45, F4
        mov     edx, dword [eax+4H]                     ; 4B83 _ 8B. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 4B86 _ 8B. 45, F4
        mov     eax, dword [eax+edx*4+8H]               ; 4B89 _ 8B. 44 90, 08
        mov     dword [ebp-10H], eax                    ; 4B8D _ 89. 45, F0
        mov     eax, dword [ebp-0CH]                    ; 4B90 _ 8B. 45, F4
        mov     eax, dword [eax+4H]                     ; 4B93 _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 4B96 _ 8D. 50, 01
        mov     eax, dword [ebp-0CH]                    ; 4B99 _ 8B. 45, F4
        mov     dword [eax+4H], edx                     ; 4B9C _ 89. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 4B9F _ 8B. 45, F4
        mov     edx, dword [eax+4H]                     ; 4BA2 _ 8B. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 4BA5 _ 8B. 45, F4
        mov     eax, dword [eax]                        ; 4BA8 _ 8B. 00
        cmp     edx, eax                                ; 4BAA _ 39. C2
        jnz     ?_281                                   ; 4BAC _ 75, 0A
        mov     eax, dword [ebp-0CH]                    ; 4BAE _ 8B. 45, F4
        mov     dword [eax+4H], 0                       ; 4BB1 _ C7. 40, 04, 00000000
?_281:  mov     eax, dword [_taskctl]                   ; 4BB8 _ A1, 00000004(d)
        mov     eax, dword [eax+4H]                     ; 4BBD _ 8B. 40, 04
        test    eax, eax                                ; 4BC0 _ 85. C0
        jz      ?_282                                   ; 4BC2 _ 74, 24
        call    _task_switchsub                         ; 4BC4 _ E8, 000000E4
        mov     ecx, dword [_taskctl]                   ; 4BC9 _ 8B. 0D, 00000004(d)
        mov     eax, dword [_taskctl]                   ; 4BCF _ A1, 00000004(d)
        mov     edx, dword [eax]                        ; 4BD4 _ 8B. 10
        mov     eax, edx                                ; 4BD6 _ 89. D0
        shl     eax, 2                                  ; 4BD8 _ C1. E0, 02
        add     eax, edx                                ; 4BDB _ 01. D0
        shl     eax, 2                                  ; 4BDD _ C1. E0, 02
        add     eax, ecx                                ; 4BE0 _ 01. C8
        add     eax, 8                                  ; 4BE2 _ 83. C0, 08
        mov     dword [ebp-0CH], eax                    ; 4BE5 _ 89. 45, F4
?_282:  mov     eax, dword [ebp-0CH]                    ; 4BE8 _ 8B. 45, F4
        mov     edx, dword [eax+4H]                     ; 4BEB _ 8B. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 4BEE _ 8B. 45, F4
        mov     eax, dword [eax+edx*4+8H]               ; 4BF1 _ 8B. 44 90, 08
        mov     dword [ebp-14H], eax                    ; 4BF5 _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 4BF8 _ 8B. 45, EC
        mov     eax, dword [eax+8H]                     ; 4BFB _ 8B. 40, 08
        mov     edx, eax                                ; 4BFE _ 89. C2
        mov     eax, dword [_task_timer]                       ; 4C00 _ A1, 00000000(d)
        mov     dword [esp+4H], edx                     ; 4C05 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 4C09 _ 89. 04 24
        call    _timer_settime                          ; 4C0C _ E8, 00000000(rel)
        mov     eax, dword [ebp-14H]                    ; 4C11 _ 8B. 45, EC
        cmp     eax, dword [ebp-10H]                    ; 4C14 _ 3B. 45, F0
        jz      ?_283                                   ; 4C17 _ 74, 1C
        cmp     dword [ebp-14H], 0                      ; 4C19 _ 83. 7D, EC, 00
        jz      ?_283                                   ; 4C1D _ 74, 16
        mov     eax, dword [ebp-14H]                    ; 4C1F _ 8B. 45, EC
        mov     eax, dword [eax]                        ; 4C22 _ 8B. 00
        mov     dword [esp+4H], eax                     ; 4C24 _ 89. 44 24, 04
        mov     dword [esp], 0                          ; 4C28 _ C7. 04 24, 00000000
        call    _farjmp                                 ; 4C2F _ E8, 00000000(rel)
        nop                                             ; 4C34 _ 90
?_283:  nop                                             ; 4C35 _ 90
        leave                                           ; 4C36 _ C9
        ret                                             ; 4C37 _ C3
; _task_switch End of function

_task_sleep:; Function begin
        push    ebp                                     ; 4C38 _ 55
        mov     ebp, esp                                ; 4C39 _ 89. E5
        sub     esp, 40                                 ; 4C3B _ 83. EC, 28
        mov     dword [ebp-10H], 0                      ; 4C3E _ C7. 45, F0, 00000000
        mov     dword [ebp-0CH], 0                      ; 4C45 _ C7. 45, F4, 00000000
        mov     eax, dword [ebp+8H]                     ; 4C4C _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 4C4F _ 8B. 40, 04
        cmp     eax, 2                                  ; 4C52 _ 83. F8, 02
        jnz     ?_284                                   ; 4C55 _ 75, 51
        call    _task_now                               ; 4C57 _ E8, 000000A4
        mov     dword [ebp-10H], eax                    ; 4C5C _ 89. 45, F0
        mov     eax, dword [ebp+8H]                     ; 4C5F _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4C62 _ 89. 04 24
        call    _task_remove                            ; 4C65 _ E8, FFFFFE23
        mov     dword [ebp-0CH], 1                      ; 4C6A _ C7. 45, F4, 00000001
        mov     eax, dword [ebp+8H]                     ; 4C71 _ 8B. 45, 08
        cmp     eax, dword [ebp-10H]                    ; 4C74 _ 3B. 45, F0
        jnz     ?_284                                   ; 4C77 _ 75, 2F
        call    _task_switchsub                         ; 4C79 _ E8, 0000002F
        call    _task_now                               ; 4C7E _ E8, 0000007D
        mov     dword [ebp-10H], eax                    ; 4C83 _ 89. 45, F0
        mov     dword [ebp-0CH], 2                      ; 4C86 _ C7. 45, F4, 00000002
        cmp     dword [ebp-10H], 0                      ; 4C8D _ 83. 7D, F0, 00
        jz      ?_284                                   ; 4C91 _ 74, 15
        mov     eax, dword [ebp-10H]                    ; 4C93 _ 8B. 45, F0
        mov     eax, dword [eax]                        ; 4C96 _ 8B. 00
        mov     dword [esp+4H], eax                     ; 4C98 _ 89. 44 24, 04
        mov     dword [esp], 0                          ; 4C9C _ C7. 04 24, 00000000
        call    _farjmp                                 ; 4CA3 _ E8, 00000000(rel)
?_284:  mov     eax, dword [ebp-0CH]                    ; 4CA8 _ 8B. 45, F4
        leave                                           ; 4CAB _ C9
        ret                                             ; 4CAC _ C3
; _task_sleep End of function

_task_switchsub:; Function begin
        push    ebp                                     ; 4CAD _ 55
        mov     ebp, esp                                ; 4CAE _ 89. E5
        sub     esp, 16                                 ; 4CB0 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 4CB3 _ C7. 45, FC, 00000000
        jmp     ?_286                                   ; 4CBA _ EB, 22

?_285:  mov     ecx, dword [_taskctl]                   ; 4CBC _ 8B. 0D, 00000004(d)
        mov     edx, dword [ebp-4H]                     ; 4CC2 _ 8B. 55, FC
        mov     eax, edx                                ; 4CC5 _ 89. D0
        shl     eax, 2                                  ; 4CC7 _ C1. E0, 02
        add     eax, edx                                ; 4CCA _ 01. D0
        shl     eax, 2                                  ; 4CCC _ C1. E0, 02
        add     eax, ecx                                ; 4CCF _ 01. C8
        add     eax, 8                                  ; 4CD1 _ 83. C0, 08
        mov     eax, dword [eax]                        ; 4CD4 _ 8B. 00
        test    eax, eax                                ; 4CD6 _ 85. C0
        jg      ?_287                                   ; 4CD8 _ 7F, 0C
        add     dword [ebp-4H], 1                       ; 4CDA _ 83. 45, FC, 01
?_286:  cmp     dword [ebp-4H], 2                       ; 4CDE _ 83. 7D, FC, 02
        jle     ?_285                                   ; 4CE2 _ 7E, D8
        jmp     ?_288                                   ; 4CE4 _ EB, 01

?_287:  nop                                             ; 4CE6 _ 90
?_288:  mov     eax, dword [_taskctl]                   ; 4CE7 _ A1, 00000004(d)
        mov     edx, dword [ebp-4H]                     ; 4CEC _ 8B. 55, FC
        mov     dword [eax], edx                        ; 4CEF _ 89. 10
        mov     eax, dword [_taskctl]                   ; 4CF1 _ A1, 00000004(d)
        mov     dword [eax+4H], 0                       ; 4CF6 _ C7. 40, 04, 00000000
        nop                                             ; 4CFD _ 90
        leave                                           ; 4CFE _ C9
        ret                                             ; 4CFF _ C3
; _task_switchsub End of function

_task_now:; Function begin
        push    ebp                                     ; 4D00 _ 55
        mov     ebp, esp                                ; 4D01 _ 89. E5
        sub     esp, 16                                 ; 4D03 _ 83. EC, 10
        mov     ecx, dword [_taskctl]                   ; 4D06 _ 8B. 0D, 00000004(d)
        mov     eax, dword [_taskctl]                   ; 4D0C _ A1, 00000004(d)
        mov     edx, dword [eax]                        ; 4D11 _ 8B. 10
        mov     eax, edx                                ; 4D13 _ 89. D0
        shl     eax, 2                                  ; 4D15 _ C1. E0, 02
        add     eax, edx                                ; 4D18 _ 01. D0
        shl     eax, 2                                  ; 4D1A _ C1. E0, 02
        add     eax, ecx                                ; 4D1D _ 01. C8
        add     eax, 8                                  ; 4D1F _ 83. C0, 08
        mov     dword [ebp-4H], eax                     ; 4D22 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 4D25 _ 8B. 45, FC
        mov     edx, dword [eax+4H]                     ; 4D28 _ 8B. 50, 04
        mov     eax, dword [ebp-4H]                     ; 4D2B _ 8B. 45, FC
        mov     eax, dword [eax+edx*4+8H]               ; 4D2E _ 8B. 44 90, 08
        leave                                           ; 4D32 _ C9
        ret                                             ; 4D33 _ C3
; _task_now End of function

_send_message:; Function begin
        push    ebp                                     ; 4D34 _ 55
        mov     ebp, esp                                ; 4D35 _ 89. E5
        sub     esp, 24                                 ; 4D37 _ 83. EC, 18
        mov     eax, dword [ebp+10H]                    ; 4D3A _ 8B. 45, 10
        movzx   eax, al                                 ; 4D3D _ 0F B6. C0
        mov     edx, dword [ebp+0CH]                    ; 4D40 _ 8B. 55, 0C
        add     edx, 16                                 ; 4D43 _ 83. C2, 10
        mov     dword [esp+4H], eax                     ; 4D46 _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 4D4A _ 89. 14 24
        call    _fifo8_put                              ; 4D4D _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 4D52 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4D55 _ 89. 04 24
        call    _task_sleep                             ; 4D58 _ E8, FFFFFEDB
        nop                                             ; 4D5D _ 90
        leave                                           ; 4D5E _ C9
        ret                                             ; 4D5F _ C3
; _send_message End of function


_strcmp:
        push    ebp                                     ; 4D60 _ 55
        mov     ebp, esp                                ; 4D61 _ 89. E5
        sub     esp, 16                                 ; 4D63 _ 83. EC, 10
        cmp     dword [ebp+8H], 0                       ; 4D66 _ 83. 7D, 08, 00
        jz      ?_289                                   ; 4D6A _ 74, 06
        cmp     dword [ebp+0CH], 0                      ; 4D6C _ 83. 7D, 0C, 00
        jnz     ?_290                                   ; 4D70 _ 75, 0A
?_289:  mov     eax, 0                                  ; 4D72 _ B8, 00000000
        jmp     ?_297                                   ; 4D77 _ E9, 0000009B

?_290:  mov     dword [ebp-4H], 0                       ; 4D7C _ C7. 45, FC, 00000000
        jmp     ?_293                                   ; 4D83 _ EB, 25

?_291:  mov     edx, dword [ebp-4H]                     ; 4D85 _ 8B. 55, FC
        mov     eax, dword [ebp+8H]                     ; 4D88 _ 8B. 45, 08
        add     eax, edx                                ; 4D8B _ 01. D0
        movzx   edx, byte [eax]                         ; 4D8D _ 0F B6. 10
        mov     ecx, dword [ebp-4H]                     ; 4D90 _ 8B. 4D, FC
        mov     eax, dword [ebp+0CH]                    ; 4D93 _ 8B. 45, 0C
        add     eax, ecx                                ; 4D96 _ 01. C8
        movzx   eax, byte [eax]                         ; 4D98 _ 0F B6. 00
        cmp     dl, al                                  ; 4D9B _ 38. C2
        jz      ?_292                                   ; 4D9D _ 74, 07
        mov     eax, 0                                  ; 4D9F _ B8, 00000000
        jmp     ?_297                                   ; 4DA4 _ EB, 71

?_292:  add     dword [ebp-4H], 1                       ; 4DA6 _ 83. 45, FC, 01
?_293:  mov     edx, dword [ebp-4H]                     ; 4DAA _ 8B. 55, FC
        mov     eax, dword [ebp+8H]                     ; 4DAD _ 8B. 45, 08
        add     eax, edx                                ; 4DB0 _ 01. D0
        movzx   eax, byte [eax]                         ; 4DB2 _ 0F B6. 00
        test    al, al                                  ; 4DB5 _ 84. C0
        jz      ?_294                                   ; 4DB7 _ 74, 0F
        mov     edx, dword [ebp-4H]                     ; 4DB9 _ 8B. 55, FC
        mov     eax, dword [ebp+0CH]                    ; 4DBC _ 8B. 45, 0C
        add     eax, edx                                ; 4DBF _ 01. D0
        movzx   eax, byte [eax]                         ; 4DC1 _ 0F B6. 00
        test    al, al                                  ; 4DC4 _ 84. C0
        jnz     ?_291                                   ; 4DC6 _ 75, BD
?_294:  mov     edx, dword [ebp-4H]                     ; 4DC8 _ 8B. 55, FC
        mov     eax, dword [ebp+8H]                     ; 4DCB _ 8B. 45, 08
        add     eax, edx                                ; 4DCE _ 01. D0
        movzx   eax, byte [eax]                         ; 4DD0 _ 0F B6. 00
        test    al, al                                  ; 4DD3 _ 84. C0
        jnz     ?_295                                   ; 4DD5 _ 75, 16
        mov     edx, dword [ebp-4H]                     ; 4DD7 _ 8B. 55, FC
        mov     eax, dword [ebp+0CH]                    ; 4DDA _ 8B. 45, 0C
        add     eax, edx                                ; 4DDD _ 01. D0
        movzx   eax, byte [eax]                         ; 4DDF _ 0F B6. 00
        test    al, al                                  ; 4DE2 _ 84. C0
        jz      ?_295                                   ; 4DE4 _ 74, 07
        mov     eax, 0                                  ; 4DE6 _ B8, 00000000
        jmp     ?_297                                   ; 4DEB _ EB, 2A

?_295:  mov     edx, dword [ebp-4H]                     ; 4DED _ 8B. 55, FC
        mov     eax, dword [ebp+8H]                     ; 4DF0 _ 8B. 45, 08
        add     eax, edx                                ; 4DF3 _ 01. D0
        movzx   eax, byte [eax]                         ; 4DF5 _ 0F B6. 00
        test    al, al                                  ; 4DF8 _ 84. C0
        jz      ?_296                                   ; 4DFA _ 74, 16
        mov     edx, dword [ebp-4H]                     ; 4DFC _ 8B. 55, FC
        mov     eax, dword [ebp+0CH]                    ; 4DFF _ 8B. 45, 0C
        add     eax, edx                                ; 4E02 _ 01. D0
        movzx   eax, byte [eax]                         ; 4E04 _ 0F B6. 00
        test    al, al                                  ; 4E07 _ 84. C0
        jz      ?_296                                   ; 4E09 _ 74, 07
        mov     eax, 0                                  ; 4E0B _ B8, 00000000
        jmp     ?_297                                   ; 4E10 _ EB, 05

?_296:  mov     eax, 1                                  ; 4E12 _ B8, 00000001
?_297:  leave                                           ; 4E17 _ C9
        ret                                             ; 4E18 _ C3

        nop                                             ; 4E19 _ 90
        nop                                             ; 4E1A _ 90
        nop                                             ; 4E1B _ 90



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

?_298:  db 00H                                          ; 0102 _ .

?_299:  db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0103 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 010B _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0113 _ ........
        db 00H, 00H, 00H, 00H, 00H                      ; 011B _ .....

_table_rgb.2528:                                        ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0120 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0128 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0130 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0138 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 0140 _ ........
        db 00H, 84H, 00H, 84H, 84H, 84H, 84H, 84H       ; 0148 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0150 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0158 _ ........

_cursor.2575:                                           ; byte
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

_closebtn.2694:                                         ; byte
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



?_300:                                                  ; byte
        db 63H, 6FH, 75H, 6EH, 74H, 65H, 72H, 00H       ; 0000 _ counter.

?_301:                                                  ; byte
        db 6BH, 69H, 6CH, 6CH, 20H, 70H, 72H, 6FH       ; 0008 _ kill pro
        db 63H, 65H, 73H, 73H, 00H                      ; 0010 _ cess.

?_302:                                                  ; byte
        db 74H, 61H, 73H, 6BH, 5FH, 61H, 00H            ; 0015 _ task_a.

?_303:                                                  ; byte
        db 63H, 6FH, 6EH, 73H, 6FH, 6CH, 65H, 00H       ; 001C _ console.

?_304:                                                  ; byte
        db 20H, 00H                                     ; 0024 _  .

?_305:                                                  ; byte
        db 66H, 72H, 65H, 65H, 20H, 00H                 ; 0026 _ free .

?_306:                                                  ; byte
        db 20H, 4BH, 42H, 00H                           ; 002C _  KB.

?_307:                                                  ; byte
        db 3EH, 00H                                     ; 0030 _ >.

?_308:                                                  ; byte
        db 61H, 62H, 63H, 2EH, 65H, 78H, 65H, 00H       ; 0032 _ abc.exe.

?_309:                                                  ; byte
        db 6DH, 65H, 6DH, 00H                           ; 003A _ mem.

?_310:                                                  ; byte
        db 63H, 6CH, 73H, 00H                           ; 003E _ cls.

?_311:                                                  ; byte
        db 68H, 6CH, 74H, 00H                           ; 0042 _ hlt.

?_312:                                                  ; byte
        db 64H, 69H, 72H, 00H                           ; 0046 _ dir.

?_313:                                                  ; byte
        db 70H, 61H, 67H, 65H, 20H, 69H, 73H, 3AH       ; 004A _ page is:
        db 20H, 00H                                     ; 0052 _  .

?_314:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0054 _ BaseAddr
        db 4CH, 3AH, 20H, 00H                           ; 005C _ L: .

?_315:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0060 _ BaseAddr
        db 48H, 3AH, 20H, 00H                           ; 0068 _ H: .

?_316:                                                  ; byte
        db 6CH, 65H, 6EH, 67H, 74H, 68H, 4CH, 6FH       ; 006C _ lengthLo
        db 77H, 3AH, 20H, 00H                           ; 0074 _ w: .

?_317:                                                  ; byte
        db 49H, 4EH, 54H, 20H, 30H, 44H, 20H, 00H       ; 0078 _ INT 0D .

?_318:                                                  ; byte
        db 47H, 65H, 6EH, 65H, 72H, 61H, 6CH, 20H       ; 0080 _ General 
        db 50H, 72H, 6FH, 74H, 65H, 63H, 74H, 65H       ; 0088 _ Protecte
        db 64H, 20H, 45H, 78H, 63H, 65H, 70H, 74H       ; 0090 _ d Except
        db 69H, 6FH, 6EH, 00H                           ; 0098 _ ion.

?_319:                                                  ; byte
        db 49H, 4EH, 54H, 20H, 4FH, 43H, 00H            ; 009C _ INT OC.

?_320:                                                  ; byte
        db 53H, 74H, 61H, 63H, 6BH, 20H, 45H, 78H       ; 00A3 _ Stack Ex
        db 63H, 65H, 70H, 74H, 69H, 6FH, 6EH, 00H       ; 00AB _ ception.

?_321:                                                  ; byte
        db 45H, 49H, 50H, 20H, 3DH, 20H, 00H, 00H       ; 00B3 _ EIP = ..
        db 00H                                          ; 00BB _ .



        db 47H, 43H, 43H, 3AH, 20H, 28H, 78H, 38H       ; 0000 _ GCC: (x8
        db 36H, 5FH, 36H, 34H, 2DH, 70H, 6FH, 73H       ; 0008 _ 6_64-pos
        db 69H, 78H, 2DH, 73H, 65H, 68H, 2DH, 72H       ; 0010 _ ix-seh-r
        db 65H, 76H, 30H, 2CH, 20H, 42H, 75H, 69H       ; 0018 _ ev0, Bui
        db 6CH, 74H, 20H, 62H, 79H, 20H, 4DH, 69H       ; 0020 _ lt by Mi
        db 6EH, 47H, 57H, 2DH, 57H, 36H, 34H, 20H       ; 0028 _ nGW-W64 
        db 70H, 72H, 6FH, 6AH, 65H, 63H, 74H, 29H       ; 0030 _ project)
        db 20H, 38H, 2EH, 31H, 2EH, 30H, 00H, 00H       ; 0038 _  8.1.0..

_key_shift:                                             
        resd    1                                       ; 0000

_caps_lock:                                             ; dword
        resd    1                                       ; 0004

_g_Console:                                             ; dword
        resd    1                                       ; 0008

?_322:  resd    1                                       ; 000C

?_323:  resd    1                                       ; 0010

?_324:  resd    1                                       ; 0014

?_325:  resb    1                                       ; 0018

?_326:  resb    3                                       ; 0019

_bootInfo:                                              ; dword
        resd    1                                       ; 001C

?_327:  resw    1                                       ; 0020

?_328:  resw    1                                       ; 0022

_keyinfo:                                               ; byte
        resb    24                                      ; 0024

?_329:  resd    1                                       ; 003C

_mouseinfo:                                             ; byte
        resb    32                                      ; 0040

_keybuf:                                                ; byte
        resb    32                                      ; 0060

_mousebuf:                                              ; byte
        resb    128                                     ; 0080

_mdec:                                                  ; byte
        resb    12                                      ; 0100

?_330:  resd    1                                       ; 010C

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

?_331:  resd    1                                       ; 027C

_task_a.2332:                                           ; dword
        resd    8                                       ; 0280

_tss_a.2331:                                            ; byte
        resb    128                                     ; 02A0

_tss_b.2330:                                            ; byte
        resb    104                                     ; 0320

_str.2623:                                              ; byte
        resb    1                                       ; 0388

?_332:  resb    9                                       ; 0389

?_333:  resb    14                                      ; 0392

_timerctl:                                              ; byte
        resb    8032                                    ; 03A0

_task_timer:                                            ; byte
        resb    4                                       ; 2300

_taskctl:                                               ; byte
        resb    4                                       ; 2304


