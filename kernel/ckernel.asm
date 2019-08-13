; Disassembly of file: ckernel.o
; Tue Aug 13 20:52:58 2019
; Mode: 32 bits
; Syntax: YASM/NASM
; Instruction set: Pentium Pro







_CMain:
        push    ebp                                     ; 0000 _ 55
        mov     ebp, esp                                ; 0001 _ 89. E5
        push    ebx                                     ; 0003 _ 53
        sub     esp, 132                                ; 0004 _ 81. EC, 00000084
        mov     dword [esp], _bootInfo                  ; 000A _ C7. 04 24, 00000024(d)
        call    _initBootInfo                           ; 0011 _ E8, 000027CF
        mov     eax, dword [_bootInfo]                  ; 0016 _ A1, 00000024(d)
        mov     dword [ebp-1CH], eax                    ; 001B _ 89. 45, E4
        movzx   eax, word [?_365]                       ; 001E _ 0F B7. 05, 00000028(d)
        cwde                                            ; 0025 _ 98
        mov     dword [_xsize], eax                     ; 0026 _ A3, 00000160(d)
        movzx   eax, word [?_366]                       ; 002B _ 0F B7. 05, 0000002A(d)
        cwde                                            ; 0032 _ 98
        mov     dword [_ysize], eax                     ; 0033 _ A3, 00000164(d)
        call    _init_pit                               ; 0038 _ E8, 00000000(rel)
        mov     dword [esp+0CH], 0                      ; 003D _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], _timerbuf               ; 0045 _ C7. 44 24, 08, 0000014C(d)
        mov     dword [esp+4H], 8                       ; 004D _ C7. 44 24, 04, 00000008
        mov     dword [esp], _timerinfo                 ; 0055 _ C7. 04 24, 00000130(d)
        call    _fifo8_init                             ; 005C _ E8, 00000000(rel)
        call    _timer_alloc                            ; 0061 _ E8, 00000000(rel)
        mov     dword [ebp-20H], eax                    ; 0066 _ 89. 45, E0
        mov     dword [esp+8H], 10                      ; 0069 _ C7. 44 24, 08, 0000000A
        mov     dword [esp+4H], _timerinfo              ; 0071 _ C7. 44 24, 04, 00000130(d)
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
        mov     dword [esp+4H], _timerinfo              ; 00A7 _ C7. 44 24, 04, 00000130(d)
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
        mov     dword [esp+4H], _timerinfo              ; 00DD _ C7. 44 24, 04, 00000130(d)
        mov     eax, dword [ebp-28H]                    ; 00E5 _ 8B. 45, D8
        mov     dword [esp], eax                        ; 00E8 _ 89. 04 24
        call    _timer_init                             ; 00EB _ E8, 00000000(rel)
        mov     dword [esp+4H], 50                      ; 00F0 _ C7. 44 24, 04, 00000032
        mov     eax, dword [ebp-28H]                    ; 00F8 _ 8B. 45, D8
        mov     dword [esp], eax                        ; 00FB _ 89. 04 24
        call    _timer_settime                          ; 00FE _ E8, 00000000(rel)
        mov     dword [esp+0CH], 0                      ; 0103 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], _keybuf                 ; 010B _ C7. 44 24, 08, 00000080(d)
        mov     dword [esp+4H], 32                      ; 0113 _ C7. 44 24, 04, 00000020
        mov     dword [esp], _keyinfo                   ; 011B _ C7. 04 24, 0000002C(d)
        call    _fifo8_init                             ; 0122 _ E8, 00000000(rel)
        mov     dword [esp+0CH], 0                      ; 0127 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], _mousebuf               ; 012F _ C7. 44 24, 08, 000000A0(d)
        mov     dword [esp+4H], 128                     ; 0137 _ C7. 44 24, 04, 00000080
        mov     dword [esp], _mouseinfo                 ; 013F _ C7. 04 24, 00000048(d)
        call    _fifo8_init                             ; 0146 _ E8, 00000000(rel)
        call    _init_palette                           ; 014B _ E8, 0000275F
        call    _init_keyboard                          ; 0150 _ E8, 00002CC8
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
        mov     ecx, dword [_ysize]                     ; 018F _ 8B. 0D, 00000164(d)
        mov     edx, dword [_xsize]                     ; 0195 _ 8B. 15, 00000160(d)
        mov     eax, dword [_memman]                    ; 019B _ A1, 00000000(d)
        mov     dword [esp+0CH], ecx                    ; 01A0 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 01A4 _ 89. 54 24, 08
        mov     edx, dword [ebp-1CH]                    ; 01A8 _ 8B. 55, E4
        mov     dword [esp+4H], edx                     ; 01AB _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 01AF _ 89. 04 24
        call    _shtctl_init                            ; 01B2 _ E8, 00000000(rel)
        mov     dword [_shtctl], eax                    ; 01B7 _ A3, 00000284(d)
        mov     eax, dword [_shtctl]                    ; 01BC _ A1, 00000284(d)
        mov     dword [esp], eax                        ; 01C1 _ 89. 04 24
        call    _sheet_alloc                            ; 01C4 _ E8, 00000000(rel)
        mov     dword [_sht_back], eax                  ; 01C9 _ A3, 00000288(d)
        mov     eax, dword [_shtctl]                    ; 01CE _ A1, 00000284(d)
        mov     dword [esp], eax                        ; 01D3 _ 89. 04 24
        call    _sheet_alloc                            ; 01D6 _ E8, 00000000(rel)
        mov     dword [_sht_mouse], eax                 ; 01DB _ A3, 0000028C(d)
        mov     edx, dword [_xsize]                     ; 01E0 _ 8B. 15, 00000160(d)
        mov     eax, dword [_ysize]                     ; 01E6 _ A1, 00000164(d)
        imul    eax, edx                                ; 01EB _ 0F AF. C2
        mov     edx, dword [_memman]                    ; 01EE _ 8B. 15, 00000000(d)
        mov     dword [esp+4H], eax                     ; 01F4 _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 01F8 _ 89. 14 24
        call    _memman_alloc_4k                        ; 01FB _ E8, 00000000(rel)
        mov     dword [_buf_back], eax                  ; 0200 _ A3, 00000168(d)
        mov     ebx, dword [_ysize]                     ; 0205 _ 8B. 1D, 00000164(d)
        mov     ecx, dword [_xsize]                     ; 020B _ 8B. 0D, 00000160(d)
        mov     edx, dword [_buf_back]                  ; 0211 _ 8B. 15, 00000168(d)
        mov     eax, dword [_sht_back]                  ; 0217 _ A1, 00000288(d)
        mov     dword [esp+10H], 99                     ; 021C _ C7. 44 24, 10, 00000063
        mov     dword [esp+0CH], ebx                    ; 0224 _ 89. 5C 24, 0C
        mov     dword [esp+8H], ecx                     ; 0228 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 022C _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0230 _ 89. 04 24
        call    _sheet_setbuf                           ; 0233 _ E8, 00000000(rel)
        mov     eax, dword [_sht_mouse]                 ; 0238 _ A1, 0000028C(d)
        mov     dword [esp+10H], 99                     ; 023D _ C7. 44 24, 10, 00000063
        mov     dword [esp+0CH], 16                     ; 0245 _ C7. 44 24, 0C, 00000010
        mov     dword [esp+8H], 16                      ; 024D _ C7. 44 24, 08, 00000010
        mov     dword [esp+4H], _buf_mouse              ; 0255 _ C7. 44 24, 04, 00000180(d)
        mov     dword [esp], eax                        ; 025D _ 89. 04 24
        call    _sheet_setbuf                           ; 0260 _ E8, 00000000(rel)
        mov     ecx, dword [_ysize]                     ; 0265 _ 8B. 0D, 00000164(d)
        mov     edx, dword [_xsize]                     ; 026B _ 8B. 15, 00000160(d)
        mov     eax, dword [_buf_back]                  ; 0271 _ A1, 00000168(d)
        mov     dword [esp+8H], ecx                     ; 0276 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 027A _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 027E _ 89. 04 24
        call    _init_screen8                           ; 0281 _ E8, 00001E99
        mov     dword [esp+4H], 99                      ; 0286 _ C7. 44 24, 04, 00000063
        mov     dword [esp], _buf_mouse                 ; 028E _ C7. 04 24, 00000180(d)
        call    _init_mouse_cursor                      ; 0295 _ E8, 000028B1
        mov     edx, dword [_sht_back]                  ; 029A _ 8B. 15, 00000288(d)
        mov     eax, dword [_shtctl]                    ; 02A0 _ A1, 00000284(d)
        mov     dword [esp+0CH], 0                      ; 02A5 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 02AD _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 02B5 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 02B9 _ 89. 04 24
        call    _sheet_slide                            ; 02BC _ E8, 00000000(rel)
        mov     eax, dword [_xsize]                     ; 02C1 _ A1, 00000160(d)
        sub     eax, 16                                 ; 02C6 _ 83. E8, 10
        mov     edx, eax                                ; 02C9 _ 89. C2
        shr     edx, 31                                 ; 02CB _ C1. EA, 1F
        add     eax, edx                                ; 02CE _ 01. D0
        sar     eax, 1                                  ; 02D0 _ D1. F8
        mov     dword [_mx], eax                        ; 02D2 _ A3, 00000154(d)
        mov     eax, dword [_ysize]                     ; 02D7 _ A1, 00000164(d)
        sub     eax, 44                                 ; 02DC _ 83. E8, 2C
        mov     edx, eax                                ; 02DF _ 89. C2
        shr     edx, 31                                 ; 02E1 _ C1. EA, 1F
        add     eax, edx                                ; 02E4 _ 01. D0
        sar     eax, 1                                  ; 02E6 _ D1. F8
        mov     dword [_my], eax                        ; 02E8 _ A3, 00000158(d)
        mov     ebx, dword [_my]                        ; 02ED _ 8B. 1D, 00000158(d)
        mov     ecx, dword [_mx]                        ; 02F3 _ 8B. 0D, 00000154(d)
        mov     edx, dword [_sht_mouse]                 ; 02F9 _ 8B. 15, 0000028C(d)
        mov     eax, dword [_shtctl]                    ; 02FF _ A1, 00000284(d)
        mov     dword [esp+0CH], ebx                    ; 0304 _ 89. 5C 24, 0C
        mov     dword [esp+8H], ecx                     ; 0308 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 030C _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0310 _ 89. 04 24
        call    _sheet_slide                            ; 0313 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], 8                      ; 0318 _ C7. 45, F4, 00000008
        mov     dword [ebp-10H], 7                      ; 031F _ C7. 45, F0, 00000007
        mov     eax, dword [_shtctl]                    ; 0326 _ A1, 00000284(d)
        mov     dword [esp+4H], ?_336                   ; 032B _ C7. 44 24, 04, 00000000(d)
        mov     dword [esp], eax                        ; 0333 _ 89. 04 24
        call    _message_box                            ; 0336 _ E8, 00002F0D
        mov     dword [_shtMsgBox], eax                 ; 033B _ A3, 00000280(d)
        mov     edx, dword [_sht_back]                  ; 0340 _ 8B. 15, 00000288(d)
        mov     eax, dword [_shtctl]                    ; 0346 _ A1, 00000284(d)
        mov     dword [esp+8H], 0                       ; 034B _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 0353 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0357 _ 89. 04 24
        call    _sheet_updown                           ; 035A _ E8, 00000000(rel)
        mov     edx, dword [_sht_mouse]                 ; 035F _ 8B. 15, 0000028C(d)
        mov     eax, dword [_shtctl]                    ; 0365 _ A1, 00000284(d)
        mov     dword [esp+8H], 100                     ; 036A _ C7. 44 24, 08, 00000064
        mov     dword [esp+4H], edx                     ; 0372 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0376 _ 89. 04 24
        call    _sheet_updown                           ; 0379 _ E8, 00000000(rel)
        call    _io_sti                                 ; 037E _ E8, 00000000(rel)
        mov     dword [esp], _mdec                      ; 0383 _ C7. 04 24, 00000120(d)
        call    _enable_mouse                           ; 038A _ E8, 00002AC9
        mov     eax, dword [_memman]                    ; 038F _ A1, 00000000(d)
        mov     dword [esp], eax                        ; 0394 _ 89. 04 24
        call    _task_init                              ; 0397 _ E8, 00000000(rel)
        mov     dword [_task_a.2355], eax               ; 039C _ A3, 000002A4(d)
        mov     eax, dword [_task_a.2355]               ; 03A1 _ A1, 000002A4(d)
        mov     dword [?_367], eax                      ; 03A6 _ A3, 00000044(d)
        mov     eax, dword [_task_a.2355]               ; 03AB _ A1, 000002A4(d)
        mov     dword [_task_main], eax                 ; 03B0 _ A3, 00000294(d)
        mov     eax, dword [_task_a.2355]               ; 03B5 _ A1, 000002A4(d)
        mov     dword [esp+8H], 0                       ; 03BA _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], 0                       ; 03C2 _ C7. 44 24, 04, 00000000
        mov     dword [esp], eax                        ; 03CA _ 89. 04 24
        call    _task_run                               ; 03CD _ E8, 00000000(rel)
        call    _launch_console                         ; 03D2 _ E8, 00000722
        mov     dword [ebp-34H], eax                    ; 03D7 _ 89. 45, CC
        mov     dword [ebp-38H], 0                      ; 03DA _ C7. 45, C8, 00000000
        mov     dword [ebp-3CH], 0                      ; 03E1 _ C7. 45, C4, 00000000
        mov     dword [ebp-40H], 0                      ; 03E8 _ C7. 45, C0, 00000000
        mov     dword [ebp-44H], 176                    ; 03EF _ C7. 45, BC, 000000B0
        mov     dword [ebp-48H], 0                      ; 03F6 _ C7. 45, B8, 00000000
        mov     dword [ebp-14H], 0                      ; 03FD _ C7. 45, EC, 00000000
        mov     dword [ebp-4CH], 0                      ; 0404 _ C7. 45, B4, 00000000
?_001:  mov     dword [esp], _keyinfo                   ; 040B _ C7. 04 24, 0000002C(d)
        call    _fifo8_status                           ; 0412 _ E8, 00000000(rel)
        mov     ebx, eax                                ; 0417 _ 89. C3
        mov     dword [esp], _mouseinfo                 ; 0419 _ C7. 04 24, 00000048(d)
        call    _fifo8_status                           ; 0420 _ E8, 00000000(rel)
        add     ebx, eax                                ; 0425 _ 01. C3
        mov     dword [esp], _timerinfo                 ; 0427 _ C7. 04 24, 00000130(d)
        call    _fifo8_status                           ; 042E _ E8, 00000000(rel)
        add     eax, ebx                                ; 0433 _ 01. D8
        test    eax, eax                                ; 0435 _ 85. C0
        jnz     ?_002                                   ; 0437 _ 75, 0A
        call    _io_sti                                 ; 0439 _ E8, 00000000(rel)
        jmp     ?_010                                   ; 043E _ E9, 000003AE

?_002:  mov     dword [esp], _keyinfo                   ; 0443 _ C7. 04 24, 0000002C(d)
        call    _fifo8_status                           ; 044A _ E8, 00000000(rel)
        test    eax, eax                                ; 044F _ 85. C0
        je      ?_009                                   ; 0451 _ 0F 84, 00000369
        call    _io_sti                                 ; 0457 _ E8, 00000000(rel)
        mov     dword [esp], _keyinfo                   ; 045C _ C7. 04 24, 0000002C(d)
        call    _fifo8_get                              ; 0463 _ E8, 00000000(rel)
        mov     dword [ebp-38H], eax                    ; 0468 _ 89. 45, C8
        mov     eax, dword [ebp-38H]                    ; 046B _ 8B. 45, C8
        mov     dword [esp], eax                        ; 046E _ 89. 04 24
        call    _transferScanCode                       ; 0471 _ E8, 00000546
        mov     eax, dword [_KEY_CONTROL]               ; 0476 _ A1, 00000120(d)
        cmp     dword [ebp-38H], eax                    ; 047B _ 39. 45, C8
        jnz     ?_003                                   ; 047E _ 75, 44
        mov     eax, dword [_key_shift]                 ; 0480 _ A1, 00000004(d)
        test    eax, eax                                ; 0485 _ 85. C0
        jz      ?_003                                   ; 0487 _ 74, 3B
        mov     eax, dword [_task_cons]                 ; 0489 _ A1, 00000290(d)
        mov     eax, dword [eax+34H]                    ; 048E _ 8B. 40, 34
        test    eax, eax                                ; 0491 _ 85. C0
        jz      ?_003                                   ; 0493 _ 74, 2F
        mov     dword [esp], ?_337                      ; 0495 _ C7. 04 24, 00000008(d)
        call    _cons_putstr                            ; 049C _ E8, 00001516
        call    _io_cli                                 ; 04A1 _ E8, 00000000(rel)
        call    _get_addr_code32                        ; 04A6 _ E8, 00000000(rel)
        mov     dword [ebp-50H], eax                    ; 04AB _ 89. 45, B0
        mov     eax, _kill_process                      ; 04AE _ B8, 00000CCA(d)
        mov     edx, dword [_task_cons]                 ; 04B3 _ 8B. 15, 00000290(d)
        sub     eax, dword [ebp-50H]                    ; 04B9 _ 2B. 45, B0
        mov     dword [edx+4CH], eax                    ; 04BC _ 89. 42, 4C
        call    _io_sti                                 ; 04BF _ E8, 00000000(rel)
?_003:  cmp     dword [ebp-38H], 16                     ; 04C4 _ 83. 7D, C8, 10
        jnz     ?_004                                   ; 04C8 _ 75, 28
        mov     eax, dword [_shtctl]                    ; 04CA _ A1, 00000284(d)
        mov     eax, dword [eax+10H]                    ; 04CF _ 8B. 40, 10
        lea     ecx, [eax-1H]                           ; 04D2 _ 8D. 48, FF
        mov     eax, dword [_shtctl]                    ; 04D5 _ A1, 00000284(d)
        mov     edx, dword [eax+18H]                    ; 04DA _ 8B. 50, 18
        mov     eax, dword [_shtctl]                    ; 04DD _ A1, 00000284(d)
        mov     dword [esp+8H], ecx                     ; 04E2 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 04E6 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 04EA _ 89. 04 24
        call    _sheet_updown                           ; 04ED _ E8, 00000000(rel)
?_004:  cmp     dword [ebp-38H], 15                     ; 04F2 _ 83. 7D, C8, 0F
        jne     ?_007                                   ; 04F6 _ 0F 85, 0000019A
        mov     dword [ebp-18H], -1                     ; 04FC _ C7. 45, E8, FFFFFFFF
        cmp     dword [ebp-14H], 0                      ; 0503 _ 83. 7D, EC, 00
        jne     ?_005                                   ; 0507 _ 0F 85, 00000089
        mov     dword [ebp-14H], 1                      ; 050D _ C7. 45, EC, 00000001
        mov     edx, dword [_shtMsgBox]                 ; 0514 _ 8B. 15, 00000280(d)
        mov     eax, dword [_shtctl]                    ; 051A _ A1, 00000284(d)
        mov     dword [esp+0CH], 0                      ; 051F _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], ?_338                   ; 0527 _ C7. 44 24, 08, 00000015(d)
        mov     dword [esp+4H], edx                     ; 052F _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0533 _ 89. 04 24
        call    _make_wtitle8                           ; 0536 _ E8, 000030BD
        mov     eax, dword [_shtctl]                    ; 053B _ A1, 00000284(d)
        mov     dword [esp+0CH], 1                      ; 0540 _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], ?_339                   ; 0548 _ C7. 44 24, 08, 0000001C(d)
        mov     edx, dword [ebp-34H]                    ; 0550 _ 8B. 55, CC
        mov     dword [esp+4H], edx                     ; 0553 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0557 _ 89. 04 24
        call    _make_wtitle8                           ; 055A _ E8, 00003099
        mov     edx, dword [_shtMsgBox]                 ; 055F _ 8B. 15, 00000280(d)
        mov     eax, dword [_shtctl]                    ; 0565 _ A1, 00000284(d)
        mov     dword [esp+10H], 7                      ; 056A _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 28                     ; 0572 _ C7. 44 24, 0C, 0000001C
        mov     ecx, dword [ebp-0CH]                    ; 057A _ 8B. 4D, F4
        mov     dword [esp+8H], ecx                     ; 057D _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 0581 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0585 _ 89. 04 24
        call    _set_cursor                             ; 0588 _ E8, 00000356
        mov     dword [ebp-18H], 87                     ; 058D _ C7. 45, E8, 00000057
        jmp     ?_006                                   ; 0594 _ EB, 71

?_005:  mov     dword [ebp-14H], 0                      ; 0596 _ C7. 45, EC, 00000000
        mov     edx, dword [_shtMsgBox]                 ; 059D _ 8B. 15, 00000280(d)
        mov     eax, dword [_shtctl]                    ; 05A3 _ A1, 00000284(d)
        mov     dword [esp+0CH], 1                      ; 05A8 _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], ?_338                   ; 05B0 _ C7. 44 24, 08, 00000015(d)
        mov     dword [esp+4H], edx                     ; 05B8 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 05BC _ 89. 04 24
        call    _make_wtitle8                           ; 05BF _ E8, 00003034
        mov     eax, dword [_shtctl]                    ; 05C4 _ A1, 00000284(d)
        mov     dword [esp+0CH], 0                      ; 05C9 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], ?_339                   ; 05D1 _ C7. 44 24, 08, 0000001C(d)
        mov     edx, dword [ebp-34H]                    ; 05D9 _ 8B. 55, CC
        mov     dword [esp+4H], edx                     ; 05DC _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 05E0 _ 89. 04 24
        call    _make_wtitle8                           ; 05E3 _ E8, 00003010
        mov     eax, dword [_task_cons]                 ; 05E8 _ A1, 00000290(d)
        add     eax, 16                                 ; 05ED _ 83. C0, 10
        mov     dword [esp+4H], 88                      ; 05F0 _ C7. 44 24, 04, 00000058
        mov     dword [esp], eax                        ; 05F8 _ 89. 04 24
        call    _fifo8_put                              ; 05FB _ E8, 00000000(rel)
        mov     dword [ebp-18H], 88                     ; 0600 _ C7. 45, E8, 00000058
?_006:  mov     eax, dword [_shtMsgBox]                 ; 0607 _ A1, 00000280(d)
        mov     ecx, dword [eax+4H]                     ; 060C _ 8B. 48, 04
        mov     edx, dword [_shtMsgBox]                 ; 060F _ 8B. 15, 00000280(d)
        mov     eax, dword [_shtctl]                    ; 0615 _ A1, 00000284(d)
        mov     dword [esp+14H], 21                     ; 061A _ C7. 44 24, 14, 00000015
        mov     dword [esp+10H], ecx                    ; 0622 _ 89. 4C 24, 10
        mov     dword [esp+0CH], 0                      ; 0626 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 062E _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 0636 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 063A _ 89. 04 24
        call    _sheet_refresh                          ; 063D _ E8, 00000000(rel)
        mov     eax, dword [ebp-34H]                    ; 0642 _ 8B. 45, CC
        mov     edx, dword [eax+4H]                     ; 0645 _ 8B. 50, 04
        mov     eax, dword [_shtctl]                    ; 0648 _ A1, 00000284(d)
        mov     dword [esp+14H], 21                     ; 064D _ C7. 44 24, 14, 00000015
        mov     dword [esp+10H], edx                    ; 0655 _ 89. 54 24, 10
        mov     dword [esp+0CH], 0                      ; 0659 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 0661 _ C7. 44 24, 08, 00000000
        mov     edx, dword [ebp-34H]                    ; 0669 _ 8B. 55, CC
        mov     dword [esp+4H], edx                     ; 066C _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0670 _ 89. 04 24
        call    _sheet_refresh                          ; 0673 _ E8, 00000000(rel)
        mov     edx, dword [_task_cons]                 ; 0678 _ 8B. 15, 00000290(d)
        mov     eax, dword [_task_a.2355]               ; 067E _ A1, 000002A4(d)
        mov     ecx, dword [ebp-18H]                    ; 0683 _ 8B. 4D, E8
        mov     dword [esp+8H], ecx                     ; 0686 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 068A _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 068E _ 89. 04 24
        call    _send_message                           ; 0691 _ E8, 00000000(rel)
?_007:  cmp     dword [ebp-14H], 0                      ; 0696 _ 83. 7D, EC, 00
        jne     ?_008                                   ; 069A _ 0F 85, 000000D7
        mov     eax, dword [ebp-38H]                    ; 06A0 _ 8B. 45, C8
        mov     dword [esp], eax                        ; 06A3 _ 89. 04 24
        call    _transferScanCode                       ; 06A6 _ E8, 00000311
        test    al, al                                  ; 06AB _ 84. C0
        je      ?_010                                   ; 06AD _ 0F 84, 0000013E
        cmp     dword [ebp-0CH], 143                    ; 06B3 _ 81. 7D, F4, 0000008F
        jg      ?_010                                   ; 06BA _ 0F 8F, 00000131
        mov     edx, dword [_shtMsgBox]                 ; 06C0 _ 8B. 15, 00000280(d)
        mov     eax, dword [_shtctl]                    ; 06C6 _ A1, 00000284(d)
        mov     dword [esp+10H], 7                      ; 06CB _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 28                     ; 06D3 _ C7. 44 24, 0C, 0000001C
        mov     ecx, dword [ebp-0CH]                    ; 06DB _ 8B. 4D, F4
        mov     dword [esp+8H], ecx                     ; 06DE _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 06E2 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 06E6 _ 89. 04 24
        call    _set_cursor                             ; 06E9 _ E8, 000001F5
        mov     eax, dword [ebp-38H]                    ; 06EE _ 8B. 45, C8
        mov     dword [esp], eax                        ; 06F1 _ 89. 04 24
        call    _transferScanCode                       ; 06F4 _ E8, 000002C3
        mov     byte [ebp-51H], al                      ; 06F9 _ 88. 45, AF
        movzx   eax, byte [ebp-51H]                     ; 06FC _ 0F B6. 45, AF
        mov     byte [ebp-66H], al                      ; 0700 _ 88. 45, 9A
        mov     byte [ebp-65H], 0                       ; 0703 _ C6. 45, 9B, 00
        mov     ecx, dword [_shtMsgBox]                 ; 0707 _ 8B. 0D, 00000280(d)
        mov     edx, dword [_shtctl]                    ; 070D _ 8B. 15, 00000284(d)
        lea     eax, [ebp-66H]                          ; 0713 _ 8D. 45, 9A
        mov     dword [esp+14H], eax                    ; 0716 _ 89. 44 24, 14
        mov     dword [esp+10H], 0                      ; 071A _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 28                     ; 0722 _ C7. 44 24, 0C, 0000001C
        mov     eax, dword [ebp-0CH]                    ; 072A _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 072D _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 0731 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 0735 _ 89. 14 24
        call    _showString                             ; 0738 _ E8, 000020C9
        add     dword [ebp-0CH], 8                      ; 073D _ 83. 45, F4, 08
        mov     dword [ebp-48H], 1                      ; 0741 _ C7. 45, B8, 00000001
        mov     edx, dword [_shtMsgBox]                 ; 0748 _ 8B. 15, 00000280(d)
        mov     eax, dword [_shtctl]                    ; 074E _ A1, 00000284(d)
        mov     ecx, dword [ebp-10H]                    ; 0753 _ 8B. 4D, F0
        mov     dword [esp+10H], ecx                    ; 0756 _ 89. 4C 24, 10
        mov     dword [esp+0CH], 28                     ; 075A _ C7. 44 24, 0C, 0000001C
        mov     ecx, dword [ebp-0CH]                    ; 0762 _ 8B. 4D, F4
        mov     dword [esp+8H], ecx                     ; 0765 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 0769 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 076D _ 89. 04 24
        call    _set_cursor                             ; 0770 _ E8, 0000016E
        jmp     ?_010                                   ; 0775 _ EB, 7A

?_008:  mov     eax, dword [ebp-38H]                    ; 0777 _ 8B. 45, C8
        mov     dword [esp], eax                        ; 077A _ 89. 04 24
        call    _isSpecialKey                           ; 077D _ E8, 000001E8
        test    eax, eax                                ; 0782 _ 85. C0
        jnz     ?_010                                   ; 0784 _ 75, 6B
        mov     eax, dword [ebp-38H]                    ; 0786 _ 8B. 45, C8
        movzx   eax, al                                 ; 0789 _ 0F B6. C0
        mov     edx, dword [_task_cons]                 ; 078C _ 8B. 15, 00000290(d)
        add     edx, 16                                 ; 0792 _ 83. C2, 10
        mov     dword [esp+4H], eax                     ; 0795 _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 0799 _ 89. 14 24
        call    _fifo8_put                              ; 079C _ E8, 00000000(rel)
        mov     dword [esp], _keyinfo                   ; 07A1 _ C7. 04 24, 0000002C(d)
        call    _fifo8_status                           ; 07A8 _ E8, 00000000(rel)
        test    eax, eax                                ; 07AD _ 85. C0
        jnz     ?_010                                   ; 07AF _ 75, 40
        mov     eax, dword [_task_a.2355]               ; 07B1 _ A1, 000002A4(d)
        mov     dword [esp], eax                        ; 07B6 _ 89. 04 24
        call    _task_sleep                             ; 07B9 _ E8, 00000000(rel)
        jmp     ?_010                                   ; 07BE _ EB, 31

?_009:  mov     dword [esp], _mouseinfo                 ; 07C0 _ C7. 04 24, 00000048(d)
        call    _fifo8_status                           ; 07C7 _ E8, 00000000(rel)
        test    eax, eax                                ; 07CC _ 85. C0
        jz      ?_010                                   ; 07CE _ 74, 21
        mov     ecx, dword [_sht_mouse]                 ; 07D0 _ 8B. 0D, 0000028C(d)
        mov     edx, dword [_sht_back]                  ; 07D6 _ 8B. 15, 00000288(d)
        mov     eax, dword [_shtctl]                    ; 07DC _ A1, 00000284(d)
        mov     dword [esp+8H], ecx                     ; 07E1 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 07E5 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 07E9 _ 89. 04 24
        call    _show_mouse_info                        ; 07EC _ E8, 00001D3E
?_010:  mov     dword [esp], _timerinfo                 ; 07F1 _ C7. 04 24, 00000130(d)
        call    _fifo8_status                           ; 07F8 _ E8, 00000000(rel)
        test    eax, eax                                ; 07FD _ 85. C0
        je      ?_001                                   ; 07FF _ 0F 84, FFFFFC06
        call    _io_sti                                 ; 0805 _ E8, 00000000(rel)
        mov     dword [esp], _timerinfo                 ; 080A _ C7. 04 24, 00000130(d)
        call    _fifo8_get                              ; 0811 _ E8, 00000000(rel)
        mov     dword [ebp-58H], eax                    ; 0816 _ 89. 45, A8
        cmp     dword [ebp-58H], 0                      ; 0819 _ 83. 7D, A8, 00
        jz      ?_011                                   ; 081D _ 74, 24
        mov     dword [esp+8H], 0                       ; 081F _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], _timerinfo              ; 0827 _ C7. 44 24, 04, 00000130(d)
        mov     eax, dword [ebp-28H]                    ; 082F _ 8B. 45, D8
        mov     dword [esp], eax                        ; 0832 _ 89. 04 24
        call    _timer_init                             ; 0835 _ E8, 00000000(rel)
        mov     dword [ebp-10H], 0                      ; 083A _ C7. 45, F0, 00000000
        jmp     ?_012                                   ; 0841 _ EB, 22

?_011:  mov     dword [esp+8H], 1                       ; 0843 _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], _timerinfo              ; 084B _ C7. 44 24, 04, 00000130(d)
        mov     eax, dword [ebp-28H]                    ; 0853 _ 8B. 45, D8
        mov     dword [esp], eax                        ; 0856 _ 89. 04 24
        call    _timer_init                             ; 0859 _ E8, 00000000(rel)
        mov     dword [ebp-10H], 7                      ; 085E _ C7. 45, F0, 00000007
?_012:  mov     dword [esp+4H], 50                      ; 0865 _ C7. 44 24, 04, 00000032
        mov     eax, dword [ebp-28H]                    ; 086D _ 8B. 45, D8
        mov     dword [esp], eax                        ; 0870 _ 89. 04 24
        call    _timer_settime                          ; 0873 _ E8, 00000000(rel)
        cmp     dword [ebp-14H], 0                      ; 0878 _ 83. 7D, EC, 00
        jnz     ?_013                                   ; 087C _ 75, 32
        mov     edx, dword [_shtMsgBox]                 ; 087E _ 8B. 15, 00000280(d)
        mov     eax, dword [_shtctl]                    ; 0884 _ A1, 00000284(d)
        mov     ecx, dword [ebp-10H]                    ; 0889 _ 8B. 4D, F0
        mov     dword [esp+10H], ecx                    ; 088C _ 89. 4C 24, 10
        mov     dword [esp+0CH], 28                     ; 0890 _ C7. 44 24, 0C, 0000001C
        mov     ecx, dword [ebp-0CH]                    ; 0898 _ 8B. 4D, F4
        mov     dword [esp+8H], ecx                     ; 089B _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 089F _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 08A3 _ 89. 04 24
        call    _set_cursor                             ; 08A6 _ E8, 00000038
        jmp     ?_001                                   ; 08AB _ E9, FFFFFB5B

?_013:  ; Local function
        mov     edx, dword [_shtMsgBox]                 ; 08B0 _ 8B. 15, 00000280(d)
        mov     eax, dword [_shtctl]                    ; 08B6 _ A1, 00000284(d)
        mov     dword [esp+10H], 7                      ; 08BB _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 28                     ; 08C3 _ C7. 44 24, 0C, 0000001C
        mov     ecx, dword [ebp-0CH]                    ; 08CB _ 8B. 4D, F4
        mov     dword [esp+8H], ecx                     ; 08CE _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 08D2 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 08D6 _ 89. 04 24
        call    _set_cursor                             ; 08D9 _ E8, 00000005
        jmp     ?_001                                   ; 08DE _ E9, FFFFFB28

_set_cursor:; Function begin
        push    ebp                                     ; 08E3 _ 55
        mov     ebp, esp                                ; 08E4 _ 89. E5
        push    esi                                     ; 08E6 _ 56
        push    ebx                                     ; 08E7 _ 53
        sub     esp, 32                                 ; 08E8 _ 83. EC, 20
        mov     eax, dword [ebp+14H]                    ; 08EB _ 8B. 45, 14
        lea     esi, [eax+0FH]                          ; 08EE _ 8D. 70, 0F
        mov     eax, dword [ebp+10H]                    ; 08F1 _ 8B. 45, 10
        lea     ebx, [eax+7H]                           ; 08F4 _ 8D. 58, 07
        mov     eax, dword [ebp+18H]                    ; 08F7 _ 8B. 45, 18
        movzx   eax, al                                 ; 08FA _ 0F B6. C0
        mov     edx, dword [ebp+0CH]                    ; 08FD _ 8B. 55, 0C
        mov     ecx, dword [edx+4H]                     ; 0900 _ 8B. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 0903 _ 8B. 55, 0C
        mov     edx, dword [edx]                        ; 0906 _ 8B. 12
        mov     dword [esp+18H], esi                    ; 0908 _ 89. 74 24, 18
        mov     dword [esp+14H], ebx                    ; 090C _ 89. 5C 24, 14
        mov     ebx, dword [ebp+14H]                    ; 0910 _ 8B. 5D, 14
        mov     dword [esp+10H], ebx                    ; 0913 _ 89. 5C 24, 10
        mov     ebx, dword [ebp+10H]                    ; 0917 _ 8B. 5D, 10
        mov     dword [esp+0CH], ebx                    ; 091A _ 89. 5C 24, 0C
        mov     dword [esp+8H], eax                     ; 091E _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 0922 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 0926 _ 89. 14 24
        call    _boxfill8                               ; 0929 _ E8, 0000204C
        mov     eax, dword [ebp+14H]                    ; 092E _ 8B. 45, 14
        lea     edx, [eax+10H]                          ; 0931 _ 8D. 50, 10
        mov     eax, dword [ebp+10H]                    ; 0934 _ 8B. 45, 10
        add     eax, 8                                  ; 0937 _ 83. C0, 08
        mov     dword [esp+14H], edx                    ; 093A _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 093E _ 89. 44 24, 10
        mov     eax, dword [ebp+14H]                    ; 0942 _ 8B. 45, 14
        mov     dword [esp+0CH], eax                    ; 0945 _ 89. 44 24, 0C
        mov     eax, dword [ebp+10H]                    ; 0949 _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 094C _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 0950 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0953 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0957 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 095A _ 89. 04 24
        call    _sheet_refresh                          ; 095D _ E8, 00000000(rel)
        nop                                             ; 0962 _ 90
        add     esp, 32                                 ; 0963 _ 83. C4, 20
        pop     ebx                                     ; 0966 _ 5B
        pop     esi                                     ; 0967 _ 5E
        pop     ebp                                     ; 0968 _ 5D
        ret                                             ; 0969 _ C3
; _set_cursor End of function

_isSpecialKey:; Function begin
        push    ebp                                     ; 096A _ 55
        mov     ebp, esp                                ; 096B _ 89. E5
        sub     esp, 24                                 ; 096D _ 83. EC, 18
        mov     eax, dword [ebp+8H]                     ; 0970 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0973 _ 89. 04 24
        call    _transferScanCode                       ; 0976 _ E8, 00000041
        cmp     dword [ebp+8H], 58                      ; 097B _ 83. 7D, 08, 3A
        jz      ?_014                                   ; 097F _ 74, 2D
        cmp     dword [ebp+8H], 29                      ; 0981 _ 83. 7D, 08, 1D
        jz      ?_014                                   ; 0985 _ 74, 27
        cmp     dword [ebp+8H], 186                     ; 0987 _ 81. 7D, 08, 000000BA
        jz      ?_014                                   ; 098E _ 74, 1E
        cmp     dword [ebp+8H], 42                      ; 0990 _ 83. 7D, 08, 2A
        jz      ?_014                                   ; 0994 _ 74, 18
        cmp     dword [ebp+8H], 54                      ; 0996 _ 83. 7D, 08, 36
        jz      ?_014                                   ; 099A _ 74, 12
        cmp     dword [ebp+8H], 170                     ; 099C _ 81. 7D, 08, 000000AA
        jz      ?_014                                   ; 09A3 _ 74, 09
        cmp     dword [ebp+8H], 182                     ; 09A5 _ 81. 7D, 08, 000000B6
        jnz     ?_015                                   ; 09AC _ 75, 07
?_014:  mov     eax, 1                                  ; 09AE _ B8, 00000001
        jmp     ?_016                                   ; 09B3 _ EB, 05

?_015:  mov     eax, 0                                  ; 09B5 _ B8, 00000000
?_016:  leave                                           ; 09BA _ C9
        ret                                             ; 09BB _ C3
; _isSpecialKey End of function

_transferScanCode:; Function begin
        push    ebp                                     ; 09BC _ 55
        mov     ebp, esp                                ; 09BD _ 89. E5
        sub     esp, 16                                 ; 09BF _ 83. EC, 10
        cmp     dword [ebp+8H], 42                      ; 09C2 _ 83. 7D, 08, 2A
        jnz     ?_017                                   ; 09C6 _ 75, 0D
        mov     eax, dword [_key_shift]                 ; 09C8 _ A1, 00000004(d)
        or      eax, 01H                                ; 09CD _ 83. C8, 01
        mov     dword [_key_shift], eax                 ; 09D0 _ A3, 00000004(d)
?_017:  cmp     dword [ebp+8H], 54                      ; 09D5 _ 83. 7D, 08, 36
        jnz     ?_018                                   ; 09D9 _ 75, 0D
        mov     eax, dword [_key_shift]                 ; 09DB _ A1, 00000004(d)
        or      eax, 02H                                ; 09E0 _ 83. C8, 02
        mov     dword [_key_shift], eax                 ; 09E3 _ A3, 00000004(d)
?_018:  cmp     dword [ebp+8H], 170                     ; 09E8 _ 81. 7D, 08, 000000AA
        jnz     ?_019                                   ; 09EF _ 75, 0D
        mov     eax, dword [_key_shift]                 ; 09F1 _ A1, 00000004(d)
        and     eax, 0FFFFFFFEH                         ; 09F6 _ 83. E0, FE
        mov     dword [_key_shift], eax                 ; 09F9 _ A3, 00000004(d)
?_019:  cmp     dword [ebp+8H], 182                     ; 09FE _ 81. 7D, 08, 000000B6
        jnz     ?_020                                   ; 0A05 _ 75, 0D
        mov     eax, dword [_key_shift]                 ; 0A07 _ A1, 00000004(d)
        and     eax, 0FFFFFFFDH                         ; 0A0C _ 83. E0, FD
        mov     dword [_key_shift], eax                 ; 0A0F _ A3, 00000004(d)
?_020:  cmp     dword [ebp+8H], 58                      ; 0A14 _ 83. 7D, 08, 3A
        jnz     ?_022                                   ; 0A18 _ 75, 1F
        mov     eax, dword [_caps_lock]                 ; 0A1A _ A1, 00000008(d)
        test    eax, eax                                ; 0A1F _ 85. C0
        jnz     ?_021                                   ; 0A21 _ 75, 0C
        mov     dword [_caps_lock], 1                   ; 0A23 _ C7. 05, 00000008(d), 00000001
        jmp     ?_022                                   ; 0A2D _ EB, 0A

?_021:  mov     dword [_caps_lock], 0                   ; 0A2F _ C7. 05, 00000008(d), 00000000
?_022:  cmp     dword [ebp+8H], 42                      ; 0A39 _ 83. 7D, 08, 2A
        jz      ?_023                                   ; 0A3D _ 74, 24
        cmp     dword [ebp+8H], 54                      ; 0A3F _ 83. 7D, 08, 36
        jz      ?_023                                   ; 0A43 _ 74, 1E
        cmp     dword [ebp+8H], 170                     ; 0A45 _ 81. 7D, 08, 000000AA
        jz      ?_023                                   ; 0A4C _ 74, 15
        cmp     dword [ebp+8H], 182                     ; 0A4E _ 81. 7D, 08, 000000B6
        jz      ?_023                                   ; 0A55 _ 74, 0C
        cmp     dword [ebp+8H], 83                      ; 0A57 _ 83. 7D, 08, 53
        jg      ?_023                                   ; 0A5B _ 7F, 06
        cmp     dword [ebp+8H], 58                      ; 0A5D _ 83. 7D, 08, 3A
        jnz     ?_024                                   ; 0A61 _ 75, 0A
?_023:  mov     eax, 0                                  ; 0A63 _ B8, 00000000
        jmp     ?_029                                   ; 0A68 _ E9, 0000008A

?_024:  mov     byte [ebp-1H], 0                        ; 0A6D _ C6. 45, FF, 00
        mov     eax, dword [_key_shift]                 ; 0A71 _ A1, 00000004(d)
        test    eax, eax                                ; 0A76 _ 85. C0
        jnz     ?_025                                   ; 0A78 _ 75, 44
        cmp     dword [ebp+8H], 83                      ; 0A7A _ 83. 7D, 08, 53
        jg      ?_025                                   ; 0A7E _ 7F, 3E
        mov     eax, dword [ebp+8H]                     ; 0A80 _ 8B. 45, 08
        add     eax, _keytable                          ; 0A83 _ 05, 00000020(d)
        movzx   eax, byte [eax]                         ; 0A88 _ 0F B6. 00
        test    al, al                                  ; 0A8B _ 84. C0
        jz      ?_025                                   ; 0A8D _ 74, 2F
        mov     eax, dword [ebp+8H]                     ; 0A8F _ 8B. 45, 08
        add     eax, _keytable                          ; 0A92 _ 05, 00000020(d)
        movzx   eax, byte [eax]                         ; 0A97 _ 0F B6. 00
        mov     byte [ebp-1H], al                       ; 0A9A _ 88. 45, FF
        cmp     byte [ebp-1H], 64                       ; 0A9D _ 80. 7D, FF, 40
        jle     ?_027                                   ; 0AA1 _ 7E, 4F
        cmp     byte [ebp-1H], 90                       ; 0AA3 _ 80. 7D, FF, 5A
        jg      ?_027                                   ; 0AA7 _ 7F, 49
        mov     eax, dword [_caps_lock]                 ; 0AA9 _ A1, 00000008(d)
        test    eax, eax                                ; 0AAE _ 85. C0
        jnz     ?_027                                   ; 0AB0 _ 75, 40
        movzx   eax, byte [ebp-1H]                      ; 0AB2 _ 0F B6. 45, FF
        add     eax, 32                                 ; 0AB6 _ 83. C0, 20
        mov     byte [ebp-1H], al                       ; 0AB9 _ 88. 45, FF
        jmp     ?_027                                   ; 0ABC _ EB, 34

?_025:  mov     eax, dword [_key_shift]                 ; 0ABE _ A1, 00000004(d)
        test    eax, eax                                ; 0AC3 _ 85. C0
        jz      ?_026                                   ; 0AC5 _ 74, 25
        cmp     dword [ebp+8H], 127                     ; 0AC7 _ 83. 7D, 08, 7F
        jg      ?_026                                   ; 0ACB _ 7F, 1F
        mov     eax, dword [ebp+8H]                     ; 0ACD _ 8B. 45, 08
        add     eax, _keytable1                         ; 0AD0 _ 05, 00000080(d)
        movzx   eax, byte [eax]                         ; 0AD5 _ 0F B6. 00
        test    al, al                                  ; 0AD8 _ 84. C0
        jz      ?_026                                   ; 0ADA _ 74, 10
        mov     eax, dword [ebp+8H]                     ; 0ADC _ 8B. 45, 08
        add     eax, _keytable1                         ; 0ADF _ 05, 00000080(d)
        movzx   eax, byte [eax]                         ; 0AE4 _ 0F B6. 00
        mov     byte [ebp-1H], al                       ; 0AE7 _ 88. 45, FF
        jmp     ?_028                                   ; 0AEA _ EB, 07

?_026:  mov     byte [ebp-1H], 0                        ; 0AEC _ C6. 45, FF, 00
        jmp     ?_028                                   ; 0AF0 _ EB, 01

?_027:  nop                                             ; 0AF2 _ 90
?_028:  movzx   eax, byte [ebp-1H]                      ; 0AF3 _ 0F B6. 45, FF
?_029:  leave                                           ; 0AF7 _ C9
        ret                                             ; 0AF8 _ C3
; _transferScanCode End of function

_launch_console:; Function begin
        push    ebp                                     ; 0AF9 _ 55
        mov     ebp, esp                                ; 0AFA _ 89. E5
        sub     esp, 56                                 ; 0AFC _ 83. EC, 38
        mov     eax, dword [_shtctl]                    ; 0AFF _ A1, 00000284(d)
        mov     dword [esp], eax                        ; 0B04 _ 89. 04 24
        call    _sheet_alloc                            ; 0B07 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 0B0C _ 89. 45, F4
        mov     eax, dword [_memman]                    ; 0B0F _ A1, 00000000(d)
        mov     dword [esp+4H], 42240                   ; 0B14 _ C7. 44 24, 04, 0000A500
        mov     dword [esp], eax                        ; 0B1C _ 89. 04 24
        call    _memman_alloc_4k                        ; 0B1F _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 0B24 _ 89. 45, F0
        mov     dword [esp+10H], 99                     ; 0B27 _ C7. 44 24, 10, 00000063
        mov     dword [esp+0CH], 165                    ; 0B2F _ C7. 44 24, 0C, 000000A5
        mov     dword [esp+8H], 256                     ; 0B37 _ C7. 44 24, 08, 00000100
        mov     eax, dword [ebp-10H]                    ; 0B3F _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 0B42 _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 0B46 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 0B49 _ 89. 04 24
        call    _sheet_setbuf                           ; 0B4C _ E8, 00000000(rel)
        mov     eax, dword [_shtctl]                    ; 0B51 _ A1, 00000284(d)
        mov     dword [esp+0CH], 0                      ; 0B56 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], ?_339                   ; 0B5E _ C7. 44 24, 08, 0000001C(d)
        mov     edx, dword [ebp-0CH]                    ; 0B66 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 0B69 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0B6D _ 89. 04 24
        call    _make_window8                           ; 0B70 _ E8, 000027BE
        mov     dword [esp+14H], 0                      ; 0B75 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], 128                    ; 0B7D _ C7. 44 24, 10, 00000080
        mov     dword [esp+0CH], 240                    ; 0B85 _ C7. 44 24, 0C, 000000F0
        mov     dword [esp+8H], 28                      ; 0B8D _ C7. 44 24, 08, 0000001C
        mov     dword [esp+4H], 8                       ; 0B95 _ C7. 44 24, 04, 00000008
        mov     eax, dword [ebp-0CH]                    ; 0B9D _ 8B. 45, F4
        mov     dword [esp], eax                        ; 0BA0 _ 89. 04 24
        call    _make_textbox8                          ; 0BA3 _ E8, 00002B8E
        call    _task_alloc                             ; 0BA8 _ E8, 00000000(rel)
        mov     dword [ebp-14H], eax                    ; 0BAD _ 89. 45, EC
        call    _get_addr_code32                        ; 0BB0 _ E8, 00000000(rel)
        mov     dword [ebp-18H], eax                    ; 0BB5 _ 89. 45, E8
        mov     eax, dword [ebp-14H]                    ; 0BB8 _ 8B. 45, EC
        mov     dword [eax+8CH], 0                      ; 0BBB _ C7. 80, 0000008C, 00000000
        mov     eax, dword [ebp-14H]                    ; 0BC5 _ 8B. 45, EC
        mov     dword [eax+90H], 1073741824             ; 0BC8 _ C7. 80, 00000090, 40000000
        mov     eax, dword [ebp-18H]                    ; 0BD2 _ 8B. 45, E8
        neg     eax                                     ; 0BD5 _ F7. D8
        add     eax, _console_task                      ; 0BD7 _ 05, 00001495(d)
        mov     edx, eax                                ; 0BDC _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 0BDE _ 8B. 45, EC
        mov     dword [eax+4CH], edx                    ; 0BE1 _ 89. 50, 4C
        mov     eax, dword [ebp-14H]                    ; 0BE4 _ 8B. 45, EC
        mov     dword [eax+74H], 0                      ; 0BE7 _ C7. 40, 74, 00000000
        mov     eax, dword [ebp-14H]                    ; 0BEE _ 8B. 45, EC
        mov     dword [eax+78H], 8                      ; 0BF1 _ C7. 40, 78, 00000008
        mov     eax, dword [ebp-14H]                    ; 0BF8 _ 8B. 45, EC
        mov     dword [eax+7CH], 32                     ; 0BFB _ C7. 40, 7C, 00000020
        mov     eax, dword [ebp-14H]                    ; 0C02 _ 8B. 45, EC
        mov     dword [eax+80H], 24                     ; 0C05 _ C7. 80, 00000080, 00000018
        mov     eax, dword [ebp-14H]                    ; 0C0F _ 8B. 45, EC
        mov     dword [eax+84H], 0                      ; 0C12 _ C7. 80, 00000084, 00000000
        mov     eax, dword [ebp-14H]                    ; 0C1C _ 8B. 45, EC
        mov     dword [eax+88H], 16                     ; 0C1F _ C7. 80, 00000088, 00000010
        mov     eax, dword [ebp-14H]                    ; 0C29 _ 8B. 45, EC
        mov     eax, dword [eax+64H]                    ; 0C2C _ 8B. 40, 64
        lea     edx, [eax-8H]                           ; 0C2F _ 8D. 50, F8
        mov     eax, dword [ebp-14H]                    ; 0C32 _ 8B. 45, EC
        mov     dword [eax+64H], edx                    ; 0C35 _ 89. 50, 64
        mov     eax, dword [ebp-14H]                    ; 0C38 _ 8B. 45, EC
        mov     eax, dword [eax+64H]                    ; 0C3B _ 8B. 40, 64
        add     eax, 4                                  ; 0C3E _ 83. C0, 04
        mov     edx, eax                                ; 0C41 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 0C43 _ 8B. 45, F4
        mov     dword [edx], eax                        ; 0C46 _ 89. 02
        mov     eax, dword [_memman]                    ; 0C48 _ A1, 00000000(d)
        mov     dword [esp], eax                        ; 0C4D _ 89. 04 24
        call    _memman_total                           ; 0C50 _ E8, 00000000(rel)
        mov     edx, eax                                ; 0C55 _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 0C57 _ 8B. 45, EC
        mov     eax, dword [eax+64H]                    ; 0C5A _ 8B. 40, 64
        add     eax, 8                                  ; 0C5D _ 83. C0, 08
        mov     dword [eax], edx                        ; 0C60 _ 89. 10
        mov     dword [esp+8H], 5                       ; 0C62 _ C7. 44 24, 08, 00000005
        mov     dword [esp+4H], 1                       ; 0C6A _ C7. 44 24, 04, 00000001
        mov     eax, dword [ebp-14H]                    ; 0C72 _ 8B. 45, EC
        mov     dword [esp], eax                        ; 0C75 _ 89. 04 24
        call    _task_run                               ; 0C78 _ E8, 00000000(rel)
        mov     eax, dword [_shtctl]                    ; 0C7D _ A1, 00000284(d)
        mov     dword [esp+0CH], 4                      ; 0C82 _ C7. 44 24, 0C, 00000004
        mov     dword [esp+8H], 32                      ; 0C8A _ C7. 44 24, 08, 00000020
        mov     edx, dword [ebp-0CH]                    ; 0C92 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 0C95 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0C99 _ 89. 04 24
        call    _sheet_slide                            ; 0C9C _ E8, 00000000(rel)
        mov     eax, dword [_shtctl]                    ; 0CA1 _ A1, 00000284(d)
        mov     dword [esp+8H], 1                       ; 0CA6 _ C7. 44 24, 08, 00000001
        mov     edx, dword [ebp-0CH]                    ; 0CAE _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 0CB1 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0CB5 _ 89. 04 24
        call    _sheet_updown                           ; 0CB8 _ E8, 00000000(rel)
        mov     eax, dword [ebp-14H]                    ; 0CBD _ 8B. 45, EC
        mov     dword [_task_cons], eax                 ; 0CC0 _ A3, 00000290(d)
        mov     eax, dword [ebp-0CH]                    ; 0CC5 _ 8B. 45, F4
        leave                                           ; 0CC8 _ C9
        ret                                             ; 0CC9 _ C3
; _launch_console End of function

_kill_process:; Function begin
        push    ebp                                     ; 0CCA _ 55
        mov     ebp, esp                                ; 0CCB _ 89. E5
        sub     esp, 24                                 ; 0CCD _ 83. EC, 18
        mov     edx, dword [_g_Console]                 ; 0CD0 _ 8B. 15, 0000000C(d)
        mov     eax, dword [?_360]                      ; 0CD6 _ A1, 00000014(d)
        mov     dword [esp+4H], edx                     ; 0CDB _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0CDF _ 89. 04 24
        call    _cons_newline                           ; 0CE2 _ E8, 00001308
        mov     eax, dword [?_360]                      ; 0CE7 _ A1, 00000014(d)
        add     eax, 16                                 ; 0CEC _ 83. C0, 10
        mov     dword [?_360], eax                      ; 0CEF _ A3, 00000014(d)
        mov     eax, dword [_task_cons]                 ; 0CF4 _ A1, 00000290(d)
        add     eax, 48                                 ; 0CF9 _ 83. C0, 30
        mov     dword [esp], eax                        ; 0CFC _ 89. 04 24
        call    _asm_end_app                            ; 0CFF _ E8, 00000000(rel)
        nop                                             ; 0D04 _ 90
        leave                                           ; 0D05 _ C9
        ret                                             ; 0D06 _ C3
; _kill_process End of function

_cmd_dir:; Function begin
        push    ebp                                     ; 0D07 _ 55
        mov     ebp, esp                                ; 0D08 _ 89. E5
        push    ebx                                     ; 0D0A _ 53
        sub     esp, 68                                 ; 0D0B _ 83. EC, 44
        mov     dword [ebp-0CH], 78848                  ; 0D0E _ C7. 45, F4, 00013400
        mov     eax, dword [_memman]                    ; 0D15 _ A1, 00000000(d)
        mov     dword [esp+4H], 13                      ; 0D1A _ C7. 44 24, 04, 0000000D
        mov     dword [esp], eax                        ; 0D22 _ 89. 04 24
        call    _memman_alloc                           ; 0D25 _ E8, 00000000(rel)
        mov     dword [ebp-18H], eax                    ; 0D2A _ 89. 45, E8
        mov     eax, dword [ebp-18H]                    ; 0D2D _ 8B. 45, E8
        add     eax, 12                                 ; 0D30 _ 83. C0, 0C
        mov     byte [eax], 0                           ; 0D33 _ C6. 00, 00
        jmp     ?_037                                   ; 0D36 _ E9, 0000012A

?_030:  mov     dword [ebp-10H], 0                      ; 0D3B _ C7. 45, F0, 00000000
        jmp     ?_032                                   ; 0D42 _ EB, 2A

?_031:  mov     edx, dword [ebp-0CH]                    ; 0D44 _ 8B. 55, F4
        mov     eax, dword [ebp-10H]                    ; 0D47 _ 8B. 45, F0
        add     eax, edx                                ; 0D4A _ 01. D0
        movzx   eax, byte [eax]                         ; 0D4C _ 0F B6. 00
        test    al, al                                  ; 0D4F _ 84. C0
        jz      ?_033                                   ; 0D51 _ 74, 23
        mov     edx, dword [ebp-0CH]                    ; 0D53 _ 8B. 55, F4
        mov     eax, dword [ebp-10H]                    ; 0D56 _ 8B. 45, F0
        add     eax, edx                                ; 0D59 _ 01. D0
        movzx   ecx, byte [eax]                         ; 0D5B _ 0F B6. 08
        mov     edx, dword [ebp-10H]                    ; 0D5E _ 8B. 55, F0
        mov     eax, dword [ebp-18H]                    ; 0D61 _ 8B. 45, E8
        add     eax, edx                                ; 0D64 _ 01. D0
        mov     edx, ecx                                ; 0D66 _ 89. CA
        mov     byte [eax], dl                          ; 0D68 _ 88. 10
        add     dword [ebp-10H], 1                      ; 0D6A _ 83. 45, F0, 01
?_032:  cmp     dword [ebp-10H], 7                      ; 0D6E _ 83. 7D, F0, 07
        jle     ?_031                                   ; 0D72 _ 7E, D0
        jmp     ?_034                                   ; 0D74 _ EB, 01

?_033:  nop                                             ; 0D76 _ 90
?_034:  mov     dword [ebp-14H], 0                      ; 0D77 _ C7. 45, EC, 00000000
        mov     edx, dword [ebp-10H]                    ; 0D7E _ 8B. 55, F0
        mov     eax, dword [ebp-18H]                    ; 0D81 _ 8B. 45, E8
        add     eax, edx                                ; 0D84 _ 01. D0
        mov     byte [eax], 46                          ; 0D86 _ C6. 00, 2E
        add     dword [ebp-10H], 1                      ; 0D89 _ 83. 45, F0, 01
        mov     dword [ebp-14H], 0                      ; 0D8D _ C7. 45, EC, 00000000
        jmp     ?_036                                   ; 0D94 _ EB, 22

?_035:  mov     edx, dword [ebp-0CH]                    ; 0D96 _ 8B. 55, F4
        mov     eax, dword [ebp-14H]                    ; 0D99 _ 8B. 45, EC
        add     eax, edx                                ; 0D9C _ 01. D0
        add     eax, 8                                  ; 0D9E _ 83. C0, 08
        movzx   ecx, byte [eax]                         ; 0DA1 _ 0F B6. 08
        mov     edx, dword [ebp-10H]                    ; 0DA4 _ 8B. 55, F0
        mov     eax, dword [ebp-18H]                    ; 0DA7 _ 8B. 45, E8
        add     eax, edx                                ; 0DAA _ 01. D0
        mov     edx, ecx                                ; 0DAC _ 89. CA
        mov     byte [eax], dl                          ; 0DAE _ 88. 10
        add     dword [ebp-10H], 1                      ; 0DB0 _ 83. 45, F0, 01
        add     dword [ebp-14H], 1                      ; 0DB4 _ 83. 45, EC, 01
?_036:  cmp     dword [ebp-14H], 2                      ; 0DB8 _ 83. 7D, EC, 02
        jle     ?_035                                   ; 0DBC _ 7E, D8
        mov     ecx, dword [?_360]                      ; 0DBE _ 8B. 0D, 00000014(d)
        mov     edx, dword [_g_Console]                 ; 0DC4 _ 8B. 15, 0000000C(d)
        mov     eax, dword [_shtctl]                    ; 0DCA _ A1, 00000284(d)
        mov     ebx, dword [ebp-18H]                    ; 0DCF _ 8B. 5D, E8
        mov     dword [esp+14H], ebx                    ; 0DD2 _ 89. 5C 24, 14
        mov     dword [esp+10H], 7                      ; 0DD6 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ecx                    ; 0DDE _ 89. 4C 24, 0C
        mov     dword [esp+8H], 16                      ; 0DE2 _ C7. 44 24, 08, 00000010
        mov     dword [esp+4H], edx                     ; 0DEA _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0DEE _ 89. 04 24
        call    _showString                             ; 0DF1 _ E8, 00001A10
        mov     dword [ebp-1CH], 136                    ; 0DF6 _ C7. 45, E4, 00000088
        mov     eax, dword [ebp-0CH]                    ; 0DFD _ 8B. 45, F4
        mov     eax, dword [eax+1CH]                    ; 0E00 _ 8B. 40, 1C
        mov     dword [esp], eax                        ; 0E03 _ 89. 04 24
        call    _intToHexStr                            ; 0E06 _ E8, 00001F5C
        mov     dword [ebp-20H], eax                    ; 0E0B _ 89. 45, E0
        mov     ecx, dword [?_360]                      ; 0E0E _ 8B. 0D, 00000014(d)
        mov     edx, dword [_g_Console]                 ; 0E14 _ 8B. 15, 0000000C(d)
        mov     eax, dword [_shtctl]                    ; 0E1A _ A1, 00000284(d)
        mov     ebx, dword [ebp-20H]                    ; 0E1F _ 8B. 5D, E0
        mov     dword [esp+14H], ebx                    ; 0E22 _ 89. 5C 24, 14
        mov     dword [esp+10H], 7                      ; 0E26 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ecx                    ; 0E2E _ 89. 4C 24, 0C
        mov     ecx, dword [ebp-1CH]                    ; 0E32 _ 8B. 4D, E4
        mov     dword [esp+8H], ecx                     ; 0E35 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 0E39 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0E3D _ 89. 04 24
        call    _showString                             ; 0E40 _ E8, 000019C1
        mov     edx, dword [_g_Console]                 ; 0E45 _ 8B. 15, 0000000C(d)
        mov     eax, dword [?_360]                      ; 0E4B _ A1, 00000014(d)
        mov     dword [esp+4H], edx                     ; 0E50 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0E54 _ 89. 04 24
        call    _cons_newline                           ; 0E57 _ E8, 00001193
        mov     dword [?_360], eax                      ; 0E5C _ A3, 00000014(d)
        add     dword [ebp-0CH], 32                     ; 0E61 _ 83. 45, F4, 20
?_037:  mov     eax, dword [ebp-0CH]                    ; 0E65 _ 8B. 45, F4
        movzx   eax, byte [eax]                         ; 0E68 _ 0F B6. 00
        test    al, al                                  ; 0E6B _ 84. C0
        jne     ?_030                                   ; 0E6D _ 0F 85, FFFFFEC8
        mov     edx, dword [ebp-18H]                    ; 0E73 _ 8B. 55, E8
        mov     eax, dword [_memman]                    ; 0E76 _ A1, 00000000(d)
        mov     dword [esp+8H], 13                      ; 0E7B _ C7. 44 24, 08, 0000000D
        mov     dword [esp+4H], edx                     ; 0E83 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0E87 _ 89. 04 24
        call    _memman_free                            ; 0E8A _ E8, 00000000(rel)
        nop                                             ; 0E8F _ 90
        add     esp, 68                                 ; 0E90 _ 83. C4, 44
        pop     ebx                                     ; 0E93 _ 5B
        pop     ebp                                     ; 0E94 _ 5D
        ret                                             ; 0E95 _ C3
; _cmd_dir End of function

_cmd_type:; Function begin
        push    ebp                                     ; 0E96 _ 55
        mov     ebp, esp                                ; 0E97 _ 89. E5
        push    esi                                     ; 0E99 _ 56
        push    ebx                                     ; 0E9A _ 53
        sub     esp, 96                                 ; 0E9B _ 83. EC, 60
        mov     eax, dword [_memman]                    ; 0E9E _ A1, 00000000(d)
        mov     dword [esp+4H], 13                      ; 0EA3 _ C7. 44 24, 04, 0000000D
        mov     dword [esp], eax                        ; 0EAB _ 89. 04 24
        call    _memman_alloc                           ; 0EAE _ E8, 00000000(rel)
        mov     dword [ebp-24H], eax                    ; 0EB3 _ 89. 45, DC
        mov     eax, dword [ebp-24H]                    ; 0EB6 _ 8B. 45, DC
        add     eax, 12                                 ; 0EB9 _ 83. C0, 0C
        mov     byte [eax], 0                           ; 0EBC _ C6. 00, 00
        mov     dword [ebp-0CH], 0                      ; 0EBF _ C7. 45, F4, 00000000
        mov     dword [ebp-10H], 5                      ; 0EC6 _ C7. 45, F0, 00000005
        mov     dword [ebp-10H], 5                      ; 0ECD _ C7. 45, F0, 00000005
        jmp     ?_039                                   ; 0ED4 _ EB, 2C

?_038:  mov     edx, dword [ebp-10H]                    ; 0ED6 _ 8B. 55, F0
        mov     eax, dword [ebp+8H]                     ; 0ED9 _ 8B. 45, 08
        add     eax, edx                                ; 0EDC _ 01. D0
        movzx   eax, byte [eax]                         ; 0EDE _ 0F B6. 00
        test    al, al                                  ; 0EE1 _ 84. C0
        jz      ?_040                                   ; 0EE3 _ 74, 25
        mov     edx, dword [ebp-10H]                    ; 0EE5 _ 8B. 55, F0
        mov     eax, dword [ebp+8H]                     ; 0EE8 _ 8B. 45, 08
        add     eax, edx                                ; 0EEB _ 01. D0
        mov     ecx, dword [ebp-0CH]                    ; 0EED _ 8B. 4D, F4
        mov     edx, dword [ebp-24H]                    ; 0EF0 _ 8B. 55, DC
        add     edx, ecx                                ; 0EF3 _ 01. CA
        movzx   eax, byte [eax]                         ; 0EF5 _ 0F B6. 00
        mov     byte [edx], al                          ; 0EF8 _ 88. 02
        add     dword [ebp-0CH], 1                      ; 0EFA _ 83. 45, F4, 01
        add     dword [ebp-10H], 1                      ; 0EFE _ 83. 45, F0, 01
?_039:  cmp     dword [ebp-10H], 16                     ; 0F02 _ 83. 7D, F0, 10
        jle     ?_038                                   ; 0F06 _ 7E, CE
        jmp     ?_041                                   ; 0F08 _ EB, 01

?_040:  nop                                             ; 0F0A _ 90
?_041:  mov     edx, dword [ebp-0CH]                    ; 0F0B _ 8B. 55, F4
        mov     eax, dword [ebp-24H]                    ; 0F0E _ 8B. 45, DC
        add     eax, edx                                ; 0F11 _ 01. D0
        mov     byte [eax], 0                           ; 0F13 _ C6. 00, 00
        mov     dword [ebp-14H], 78848                  ; 0F16 _ C7. 45, EC, 00013400
        jmp     ?_056                                   ; 0F1D _ E9, 00000241

?_042:  mov     byte [ebp-2DH], 0                       ; 0F22 _ C6. 45, D3, 00
        mov     dword [ebp-18H], 0                      ; 0F26 _ C7. 45, E8, 00000000
        jmp     ?_044                                   ; 0F2D _ EB, 2A

?_043:  mov     edx, dword [ebp-14H]                    ; 0F2F _ 8B. 55, EC
        mov     eax, dword [ebp-18H]                    ; 0F32 _ 8B. 45, E8
        add     eax, edx                                ; 0F35 _ 01. D0
        movzx   eax, byte [eax]                         ; 0F37 _ 0F B6. 00
        test    al, al                                  ; 0F3A _ 84. C0
        jz      ?_045                                   ; 0F3C _ 74, 23
        mov     edx, dword [ebp-14H]                    ; 0F3E _ 8B. 55, EC
        mov     eax, dword [ebp-18H]                    ; 0F41 _ 8B. 45, E8
        add     eax, edx                                ; 0F44 _ 01. D0
        movzx   eax, byte [eax]                         ; 0F46 _ 0F B6. 00
        mov     ecx, eax                                ; 0F49 _ 89. C1
        lea     eax, [ebp-39H]                          ; 0F4B _ 8D. 45, C7
        mov     edx, dword [ebp-18H]                    ; 0F4E _ 8B. 55, E8
        add     eax, edx                                ; 0F51 _ 01. D0
        mov     byte [eax], cl                          ; 0F53 _ 88. 08
        add     dword [ebp-18H], 1                      ; 0F55 _ 83. 45, E8, 01
?_044:  cmp     dword [ebp-18H], 7                      ; 0F59 _ 83. 7D, E8, 07
        jle     ?_043                                   ; 0F5D _ 7E, D0
        jmp     ?_046                                   ; 0F5F _ EB, 01

?_045:  nop                                             ; 0F61 _ 90
?_046:  mov     dword [ebp-1CH], 0                      ; 0F62 _ C7. 45, E4, 00000000
        lea     eax, [ebp-39H]                          ; 0F69 _ 8D. 45, C7
        mov     edx, dword [ebp-18H]                    ; 0F6C _ 8B. 55, E8
        add     eax, edx                                ; 0F6F _ 01. D0
        mov     byte [eax], 46                          ; 0F71 _ C6. 00, 2E
        add     dword [ebp-18H], 1                      ; 0F74 _ 83. 45, E8, 01
        mov     dword [ebp-1CH], 0                      ; 0F78 _ C7. 45, E4, 00000000
        jmp     ?_048                                   ; 0F7F _ EB, 22

?_047:  mov     edx, dword [ebp-14H]                    ; 0F81 _ 8B. 55, EC
        mov     eax, dword [ebp-1CH]                    ; 0F84 _ 8B. 45, E4
        add     eax, edx                                ; 0F87 _ 01. D0
        add     eax, 8                                  ; 0F89 _ 83. C0, 08
        movzx   eax, byte [eax]                         ; 0F8C _ 0F B6. 00
        mov     ecx, eax                                ; 0F8F _ 89. C1
        lea     eax, [ebp-39H]                          ; 0F91 _ 8D. 45, C7
        mov     edx, dword [ebp-18H]                    ; 0F94 _ 8B. 55, E8
        add     eax, edx                                ; 0F97 _ 01. D0
        mov     byte [eax], cl                          ; 0F99 _ 88. 08
        add     dword [ebp-18H], 1                      ; 0F9B _ 83. 45, E8, 01
        add     dword [ebp-1CH], 1                      ; 0F9F _ 83. 45, E4, 01
?_048:  cmp     dword [ebp-1CH], 2                      ; 0FA3 _ 83. 7D, E4, 02
        jle     ?_047                                   ; 0FA7 _ 7E, D8
        lea     eax, [ebp-39H]                          ; 0FA9 _ 8D. 45, C7
        mov     dword [esp+4H], eax                     ; 0FAC _ 89. 44 24, 04
        mov     eax, dword [ebp-24H]                    ; 0FB0 _ 8B. 45, DC
        mov     dword [esp], eax                        ; 0FB3 _ 89. 04 24
        call    _strcmp                                 ; 0FB6 _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 0FBB _ 83. F8, 01
        jne     ?_055                                   ; 0FBE _ 0F 85, 0000019B
        mov     dword [ebp-28H], 88064                  ; 0FC4 _ C7. 45, D8, 00015800
        mov     eax, dword [ebp-14H]                    ; 0FCB _ 8B. 45, EC
        movzx   eax, word [eax+1AH]                     ; 0FCE _ 0F B7. 40, 1A
        movzx   eax, ax                                 ; 0FD2 _ 0F B7. C0
        shl     eax, 9                                  ; 0FD5 _ C1. E0, 09
        add     dword [ebp-28H], eax                    ; 0FD8 _ 01. 45, D8
        mov     eax, dword [ebp-14H]                    ; 0FDB _ 8B. 45, EC
        mov     eax, dword [eax+1CH]                    ; 0FDE _ 8B. 40, 1C
        mov     dword [ebp-2CH], eax                    ; 0FE1 _ 89. 45, D4
        mov     dword [ebp-20H], 0                      ; 0FE4 _ C7. 45, E0, 00000000
        mov     dword [?_359], 16                       ; 0FEB _ C7. 05, 00000010(d), 00000010
        mov     dword [ebp-20H], 0                      ; 0FF5 _ C7. 45, E0, 00000000
        jmp     ?_054                                   ; 0FFC _ E9, 0000014F

?_049:  mov     edx, dword [ebp-20H]                    ; 1001 _ 8B. 55, E0
        mov     eax, dword [ebp-28H]                    ; 1004 _ 8B. 45, D8
        add     eax, edx                                ; 1007 _ 01. D0
        movzx   eax, byte [eax]                         ; 1009 _ 0F B6. 00
        mov     byte [ebp-3BH], al                      ; 100C _ 88. 45, C5
        mov     byte [ebp-3AH], 0                       ; 100F _ C6. 45, C6, 00
        movzx   eax, byte [ebp-3BH]                     ; 1013 _ 0F B6. 45, C5
        cmp     al, 9                                   ; 1017 _ 3C, 09
        jnz     ?_051                                   ; 1019 _ 75, 7C
?_050:  mov     ebx, dword [?_360]                      ; 101B _ 8B. 1D, 00000014(d)
        mov     ecx, dword [?_359]                      ; 1021 _ 8B. 0D, 00000010(d)
        mov     edx, dword [_g_Console]                 ; 1027 _ 8B. 15, 0000000C(d)
        mov     eax, dword [_shtctl]                    ; 102D _ A1, 00000284(d)
        mov     dword [esp+14H], ?_340                  ; 1032 _ C7. 44 24, 14, 00000024(d)
        mov     dword [esp+10H], 7                      ; 103A _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ebx                    ; 1042 _ 89. 5C 24, 0C
        mov     dword [esp+8H], ecx                     ; 1046 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 104A _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 104E _ 89. 04 24
        call    _showString                             ; 1051 _ E8, 000017B0
        mov     eax, dword [?_359]                      ; 1056 _ A1, 00000010(d)
        add     eax, 8                                  ; 105B _ 83. C0, 08
        mov     dword [?_359], eax                      ; 105E _ A3, 00000010(d)
        mov     eax, dword [?_359]                      ; 1063 _ A1, 00000010(d)
        cmp     eax, 248                                ; 1068 _ 3D, 000000F8
        jnz     ?_050                                   ; 106D _ 75, AC
        mov     dword [?_359], 8                        ; 106F _ C7. 05, 00000010(d), 00000008
        mov     edx, dword [_g_Console]                 ; 1079 _ 8B. 15, 0000000C(d)
        mov     eax, dword [?_360]                      ; 107F _ A1, 00000014(d)
        mov     dword [esp+4H], edx                     ; 1084 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1088 _ 89. 04 24
        call    _cons_newline                           ; 108B _ E8, 00000F5F
        mov     dword [?_360], eax                      ; 1090 _ A3, 00000014(d)
        jmp     ?_050                                   ; 1095 _ EB, 84

?_051:  movzx   eax, byte [ebp-3BH]                     ; 1097 _ 0F B6. 45, C5
        cmp     al, 10                                  ; 109B _ 3C, 0A
        jnz     ?_052                                   ; 109D _ 75, 2B
        mov     dword [?_359], 8                        ; 109F _ C7. 05, 00000010(d), 00000008
        mov     edx, dword [_g_Console]                 ; 10A9 _ 8B. 15, 0000000C(d)
        mov     eax, dword [?_360]                      ; 10AF _ A1, 00000014(d)
        mov     dword [esp+4H], edx                     ; 10B4 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 10B8 _ 89. 04 24
        call    _cons_newline                           ; 10BB _ E8, 00000F2F
        mov     dword [?_360], eax                      ; 10C0 _ A3, 00000014(d)
        jmp     ?_053                                   ; 10C5 _ E9, 00000082

?_052:  movzx   eax, byte [ebp-3BH]                     ; 10CA _ 0F B6. 45, C5
        cmp     al, 13                                  ; 10CE _ 3C, 0D
        jz      ?_053                                   ; 10D0 _ 74, 7A
        mov     esi, dword [?_360]                      ; 10D2 _ 8B. 35, 00000014(d)
        mov     ebx, dword [?_359]                      ; 10D8 _ 8B. 1D, 00000010(d)
        mov     ecx, dword [_g_Console]                 ; 10DE _ 8B. 0D, 0000000C(d)
        mov     edx, dword [_shtctl]                    ; 10E4 _ 8B. 15, 00000284(d)
        lea     eax, [ebp-3BH]                          ; 10EA _ 8D. 45, C5
        mov     dword [esp+14H], eax                    ; 10ED _ 89. 44 24, 14
        mov     dword [esp+10H], 7                      ; 10F1 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], esi                    ; 10F9 _ 89. 74 24, 0C
        mov     dword [esp+8H], ebx                     ; 10FD _ 89. 5C 24, 08
        mov     dword [esp+4H], ecx                     ; 1101 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 1105 _ 89. 14 24
        call    _showString                             ; 1108 _ E8, 000016F9
        mov     eax, dword [?_359]                      ; 110D _ A1, 00000010(d)
        add     eax, 8                                  ; 1112 _ 83. C0, 08
        mov     dword [?_359], eax                      ; 1115 _ A3, 00000010(d)
        mov     eax, dword [?_359]                      ; 111A _ A1, 00000010(d)
        cmp     eax, 248                                ; 111F _ 3D, 000000F8
        jnz     ?_053                                   ; 1124 _ 75, 26
        mov     dword [?_359], 16                       ; 1126 _ C7. 05, 00000010(d), 00000010
        mov     edx, dword [_g_Console]                 ; 1130 _ 8B. 15, 0000000C(d)
        mov     eax, dword [?_360]                      ; 1136 _ A1, 00000014(d)
        mov     dword [esp+4H], edx                     ; 113B _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 113F _ 89. 04 24
        call    _cons_newline                           ; 1142 _ E8, 00000EA8
        mov     dword [?_360], eax                      ; 1147 _ A3, 00000014(d)
?_053:  add     dword [ebp-20H], 1                      ; 114C _ 83. 45, E0, 01
?_054:  mov     eax, dword [ebp-20H]                    ; 1150 _ 8B. 45, E0
        cmp     eax, dword [ebp-2CH]                    ; 1153 _ 3B. 45, D4
        jl      ?_049                                   ; 1156 _ 0F 8C, FFFFFEA5
        nop                                             ; 115C _ 90
        jmp     ?_057                                   ; 115D _ EB, 12

?_055:  add     dword [ebp-14H], 32                     ; 115F _ 83. 45, EC, 20
?_056:  mov     eax, dword [ebp-14H]                    ; 1163 _ 8B. 45, EC
        movzx   eax, byte [eax]                         ; 1166 _ 0F B6. 00
        test    al, al                                  ; 1169 _ 84. C0
        jne     ?_042                                   ; 116B _ 0F 85, FFFFFDB1
?_057:  mov     edx, dword [_g_Console]                 ; 1171 _ 8B. 15, 0000000C(d)
        mov     eax, dword [?_360]                      ; 1177 _ A1, 00000014(d)
        mov     dword [esp+4H], edx                     ; 117C _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1180 _ 89. 04 24
        call    _cons_newline                           ; 1183 _ E8, 00000E67
        mov     dword [?_360], eax                      ; 1188 _ A3, 00000014(d)
        mov     edx, dword [ebp-24H]                    ; 118D _ 8B. 55, DC
        mov     eax, dword [_memman]                    ; 1190 _ A1, 00000000(d)
        mov     dword [esp+8H], 13                      ; 1195 _ C7. 44 24, 08, 0000000D
        mov     dword [esp+4H], edx                     ; 119D _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 11A1 _ 89. 04 24
        call    _memman_free                            ; 11A4 _ E8, 00000000(rel)
        mov     dword [?_359], 16                       ; 11A9 _ C7. 05, 00000010(d), 00000010
        nop                                             ; 11B3 _ 90
        add     esp, 96                                 ; 11B4 _ 83. C4, 60
        pop     ebx                                     ; 11B7 _ 5B
        pop     esi                                     ; 11B8 _ 5E
        pop     ebp                                     ; 11B9 _ 5D
        ret                                             ; 11BA _ C3
; _cmd_type End of function

_cmd_mem:; Function begin
        push    ebp                                     ; 11BB _ 55
        mov     ebp, esp                                ; 11BC _ 89. E5
        push    ebx                                     ; 11BE _ 53
        sub     esp, 52                                 ; 11BF _ 83. EC, 34
        mov     eax, dword [ebp+8H]                     ; 11C2 _ 8B. 45, 08
        lea     edx, [eax+3FFH]                         ; 11C5 _ 8D. 90, 000003FF
        test    eax, eax                                ; 11CB _ 85. C0
        cmovs   eax, edx                                ; 11CD _ 0F 48. C2
        sar     eax, 10                                 ; 11D0 _ C1. F8, 0A
        mov     dword [esp], eax                        ; 11D3 _ 89. 04 24
        call    _intToHexStr                            ; 11D6 _ E8, 00001B8C
        mov     dword [ebp-0CH], eax                    ; 11DB _ 89. 45, F4
        mov     ecx, dword [?_360]                      ; 11DE _ 8B. 0D, 00000014(d)
        mov     edx, dword [_g_Console]                 ; 11E4 _ 8B. 15, 0000000C(d)
        mov     eax, dword [_shtctl]                    ; 11EA _ A1, 00000284(d)
        mov     dword [esp+14H], ?_341                  ; 11EF _ C7. 44 24, 14, 00000026(d)
        mov     dword [esp+10H], 7                      ; 11F7 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ecx                    ; 11FF _ 89. 4C 24, 0C
        mov     dword [esp+8H], 16                      ; 1203 _ C7. 44 24, 08, 00000010
        mov     dword [esp+4H], edx                     ; 120B _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 120F _ 89. 04 24
        call    _showString                             ; 1212 _ E8, 000015EF
        mov     ecx, dword [?_360]                      ; 1217 _ 8B. 0D, 00000014(d)
        mov     edx, dword [_g_Console]                 ; 121D _ 8B. 15, 0000000C(d)
        mov     eax, dword [_shtctl]                    ; 1223 _ A1, 00000284(d)
        mov     ebx, dword [ebp-0CH]                    ; 1228 _ 8B. 5D, F4
        mov     dword [esp+14H], ebx                    ; 122B _ 89. 5C 24, 14
        mov     dword [esp+10H], 7                      ; 122F _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ecx                    ; 1237 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 52                      ; 123B _ C7. 44 24, 08, 00000034
        mov     dword [esp+4H], edx                     ; 1243 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1247 _ 89. 04 24
        call    _showString                             ; 124A _ E8, 000015B7
        mov     ecx, dword [?_360]                      ; 124F _ 8B. 0D, 00000014(d)
        mov     edx, dword [_g_Console]                 ; 1255 _ 8B. 15, 0000000C(d)
        mov     eax, dword [_shtctl]                    ; 125B _ A1, 00000284(d)
        mov     dword [esp+14H], ?_342                  ; 1260 _ C7. 44 24, 14, 0000002C(d)
        mov     dword [esp+10H], 7                      ; 1268 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ecx                    ; 1270 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 126                     ; 1274 _ C7. 44 24, 08, 0000007E
        mov     dword [esp+4H], edx                     ; 127C _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1280 _ 89. 04 24
        call    _showString                             ; 1283 _ E8, 0000157E
        mov     edx, dword [_g_Console]                 ; 1288 _ 8B. 15, 0000000C(d)
        mov     eax, dword [?_360]                      ; 128E _ A1, 00000014(d)
        mov     dword [esp+4H], edx                     ; 1293 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1297 _ 89. 04 24
        call    _cons_newline                           ; 129A _ E8, 00000D50
        mov     dword [?_360], eax                      ; 129F _ A3, 00000014(d)
        nop                                             ; 12A4 _ 90
        add     esp, 52                                 ; 12A5 _ 83. C4, 34
        pop     ebx                                     ; 12A8 _ 5B
        pop     ebp                                     ; 12A9 _ 5D
        ret                                             ; 12AA _ C3
; _cmd_mem End of function

_cmd_cls:; Function begin
        push    ebp                                     ; 12AB _ 55
        mov     ebp, esp                                ; 12AC _ 89. E5
        sub     esp, 56                                 ; 12AE _ 83. EC, 38
        mov     dword [ebp-0CH], 8                      ; 12B1 _ C7. 45, F4, 00000008
        mov     dword [ebp-10H], 28                     ; 12B8 _ C7. 45, F0, 0000001C
        mov     dword [ebp-10H], 28                     ; 12BF _ C7. 45, F0, 0000001C
        jmp     ?_061                                   ; 12C6 _ EB, 37

?_058:  mov     dword [ebp-0CH], 8                      ; 12C8 _ C7. 45, F4, 00000008
        jmp     ?_060                                   ; 12CF _ EB, 21

?_059:  mov     eax, dword [_g_Console]                 ; 12D1 _ A1, 0000000C(d)
        mov     edx, dword [eax]                        ; 12D6 _ 8B. 10
        mov     eax, dword [_g_Console]                 ; 12D8 _ A1, 0000000C(d)
        mov     eax, dword [eax+4H]                     ; 12DD _ 8B. 40, 04
        imul    eax, dword [ebp-10H]                    ; 12E0 _ 0F AF. 45, F0
        mov     ecx, dword [ebp-0CH]                    ; 12E4 _ 8B. 4D, F4
        add     eax, ecx                                ; 12E7 _ 01. C8
        add     eax, edx                                ; 12E9 _ 01. D0
        mov     byte [eax], 0                           ; 12EB _ C6. 00, 00
        add     dword [ebp-0CH], 1                      ; 12EE _ 83. 45, F4, 01
?_060:  cmp     dword [ebp-0CH], 247                    ; 12F2 _ 81. 7D, F4, 000000F7
        jle     ?_059                                   ; 12F9 _ 7E, D6
        add     dword [ebp-10H], 1                      ; 12FB _ 83. 45, F0, 01
?_061:  cmp     dword [ebp-10H], 155                    ; 12FF _ 81. 7D, F0, 0000009B
        jle     ?_058                                   ; 1306 _ 7E, C0
        mov     edx, dword [_g_Console]                 ; 1308 _ 8B. 15, 0000000C(d)
        mov     eax, dword [_shtctl]                    ; 130E _ A1, 00000284(d)
        mov     dword [esp+14H], 156                    ; 1313 _ C7. 44 24, 14, 0000009C
        mov     dword [esp+10H], 248                    ; 131B _ C7. 44 24, 10, 000000F8
        mov     dword [esp+0CH], 28                     ; 1323 _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 8                       ; 132B _ C7. 44 24, 08, 00000008
        mov     dword [esp+4H], edx                     ; 1333 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1337 _ 89. 04 24
        call    _sheet_refresh                          ; 133A _ E8, 00000000(rel)
        mov     dword [?_360], 28                       ; 133F _ C7. 05, 00000014(d), 0000001C
        mov     edx, dword [_g_Console]                 ; 1349 _ 8B. 15, 0000000C(d)
        mov     eax, dword [_shtctl]                    ; 134F _ A1, 00000284(d)
        mov     dword [esp+14H], ?_343                  ; 1354 _ C7. 44 24, 14, 00000030(d)
        mov     dword [esp+10H], 7                      ; 135C _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 28                     ; 1364 _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 8                       ; 136C _ C7. 44 24, 08, 00000008
        mov     dword [esp+4H], edx                     ; 1374 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1378 _ 89. 04 24
        call    _showString                             ; 137B _ E8, 00001486
        nop                                             ; 1380 _ 90
        leave                                           ; 1381 _ C9
        ret                                             ; 1382 _ C3
; _cmd_cls End of function

_cmd_hlt:; Function begin
        push    ebp                                     ; 1383 _ 55
        mov     ebp, esp                                ; 1384 _ 89. E5
        sub     esp, 56                                 ; 1386 _ 83. EC, 38
        mov     dword [esp+4H], _buffer                 ; 1389 _ C7. 44 24, 04, 00000298(d)
        mov     dword [esp], ?_344                      ; 1391 _ C7. 04 24, 00000032(d)
        call    _file_loadfile                          ; 1398 _ E8, 00002633
        call    _get_addr_gdt                           ; 139D _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 13A2 _ 89. 45, F4
        mov     eax, dword [_buffer]                    ; 13A5 _ A1, 00000298(d)
        mov     edx, eax                                ; 13AA _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 13AC _ 8B. 45, F4
        add     eax, 88                                 ; 13AF _ 83. C0, 58
        mov     dword [esp+0CH], 16634                  ; 13B2 _ C7. 44 24, 0C, 000040FA
        mov     dword [esp+8H], edx                     ; 13BA _ 89. 54 24, 08
        mov     dword [esp+4H], 1048575                 ; 13BE _ C7. 44 24, 04, 000FFFFF
        mov     dword [esp], eax                        ; 13C6 _ 89. 04 24
        call    _set_segmdesc                           ; 13C9 _ E8, 00000000(rel)
        mov     eax, dword [_memman]                    ; 13CE _ A1, 00000000(d)
        mov     dword [esp+4H], 65536                   ; 13D3 _ C7. 44 24, 04, 00010000
        mov     dword [esp], eax                        ; 13DB _ 89. 04 24
        call    _memman_alloc_4k                        ; 13DE _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 13E3 _ 89. 45, F0
        mov     eax, dword [ebp-10H]                    ; 13E6 _ 8B. 45, F0
        mov     dword [?_369], eax                      ; 13E9 _ A3, 0000029C(d)
        mov     edx, dword [ebp-10H]                    ; 13EE _ 8B. 55, F0
        mov     eax, dword [ebp-0CH]                    ; 13F1 _ 8B. 45, F4
        add     eax, 96                                 ; 13F4 _ 83. C0, 60
        mov     dword [esp+0CH], 16626                  ; 13F7 _ C7. 44 24, 0C, 000040F2
        mov     dword [esp+8H], edx                     ; 13FF _ 89. 54 24, 08
        mov     dword [esp+4H], 65535                   ; 1403 _ C7. 44 24, 04, 0000FFFF
        mov     dword [esp], eax                        ; 140B _ 89. 04 24
        call    _set_segmdesc                           ; 140E _ E8, 00000000(rel)
        call    _task_now                               ; 1413 _ E8, 00000000(rel)
        mov     dword [ebp-14H], eax                    ; 1418 _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 141B _ 8B. 45, EC
        mov     dword [eax+30H], 0                      ; 141E _ C7. 40, 30, 00000000
        mov     eax, dword [ebp-14H]                    ; 1425 _ 8B. 45, EC
        add     eax, 48                                 ; 1428 _ 83. C0, 30
        mov     dword [esp+10H], eax                    ; 142B _ 89. 44 24, 10
        mov     dword [esp+0CH], 96                     ; 142F _ C7. 44 24, 0C, 00000060
        mov     dword [esp+8H], 65536                   ; 1437 _ C7. 44 24, 08, 00010000
        mov     dword [esp+4H], 88                      ; 143F _ C7. 44 24, 04, 00000058
        mov     dword [esp], 0                          ; 1447 _ C7. 04 24, 00000000
        call    _start_app                              ; 144E _ E8, 00000000(rel)
        mov     eax, dword [?_370]                      ; 1453 _ A1, 000002A0(d)
        mov     ecx, eax                                ; 1458 _ 89. C1
        mov     eax, dword [_buffer]                    ; 145A _ A1, 00000298(d)
        mov     edx, eax                                ; 145F _ 89. C2
        mov     eax, dword [_memman]                    ; 1461 _ A1, 00000000(d)
        mov     dword [esp+8H], ecx                     ; 1466 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 146A _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 146E _ 89. 04 24
        call    _memman_free_4k                         ; 1471 _ E8, 00000000(rel)
        mov     edx, dword [ebp-10H]                    ; 1476 _ 8B. 55, F0
        mov     eax, dword [_memman]                    ; 1479 _ A1, 00000000(d)
        mov     dword [esp+8H], 65536                   ; 147E _ C7. 44 24, 08, 00010000
        mov     dword [esp+4H], edx                     ; 1486 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 148A _ 89. 04 24
        call    _memman_free_4k                         ; 148D _ E8, 00000000(rel)
        nop                                             ; 1492 _ 90
        leave                                           ; 1493 _ C9
        ret                                             ; 1494 _ C3
; _cmd_hlt End of function

_console_task:; Function begin
        push    ebp                                     ; 1495 _ 55
        mov     ebp, esp                                ; 1496 _ 89. E5
        push    ebx                                     ; 1498 _ 53
        sub     esp, 84                                 ; 1499 _ 83. EC, 54
        call    _task_now                               ; 149C _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 14A1 _ 89. 45, F0
        mov     dword [ebp-0CH], 0                      ; 14A4 _ C7. 45, F4, 00000000
        mov     dword [ebp-14H], 0                      ; 14AB _ C7. 45, EC, 00000000
        mov     dword [ebp-18H], 0                      ; 14B2 _ C7. 45, E8, 00000000
        mov     eax, dword [_memman]                    ; 14B9 _ A1, 00000000(d)
        mov     dword [esp+4H], 128                     ; 14BE _ C7. 44 24, 04, 00000080
        mov     dword [esp], eax                        ; 14C6 _ 89. 04 24
        call    _memman_alloc                           ; 14C9 _ E8, 00000000(rel)
        mov     dword [ebp-1CH], eax                    ; 14CE _ 89. 45, E4
        mov     eax, dword [_memman]                    ; 14D1 _ A1, 00000000(d)
        mov     dword [esp+4H], 30                      ; 14D6 _ C7. 44 24, 04, 0000001E
        mov     dword [esp], eax                        ; 14DE _ 89. 04 24
        call    _memman_alloc                           ; 14E1 _ E8, 00000000(rel)
        mov     dword [ebp-20H], eax                    ; 14E6 _ 89. 45, E0
        mov     eax, dword [ebp+8H]                     ; 14E9 _ 8B. 45, 08
        mov     dword [_g_Console], eax                 ; 14EC _ A3, 0000000C(d)
        mov     dword [?_359], 16                       ; 14F1 _ C7. 05, 00000010(d), 00000010
        mov     dword [?_360], 28                       ; 14FB _ C7. 05, 00000014(d), 0000001C
        mov     dword [?_361], -1                       ; 1505 _ C7. 05, 00000018(d), FFFFFFFF
        mov     eax, dword [ebp-10H]                    ; 150F _ 8B. 45, F0
        add     eax, 16                                 ; 1512 _ 83. C0, 10
        mov     edx, dword [ebp-10H]                    ; 1515 _ 8B. 55, F0
        mov     dword [esp+0CH], edx                    ; 1518 _ 89. 54 24, 0C
        mov     edx, dword [ebp-1CH]                    ; 151C _ 8B. 55, E4
        mov     dword [esp+8H], edx                     ; 151F _ 89. 54 24, 08
        mov     dword [esp+4H], 128                     ; 1523 _ C7. 44 24, 04, 00000080
        mov     dword [esp], eax                        ; 152B _ 89. 04 24
        call    _fifo8_init                             ; 152E _ E8, 00000000(rel)
        call    _timer_alloc                            ; 1533 _ E8, 00000000(rel)
        mov     dword [ebp-24H], eax                    ; 1538 _ 89. 45, DC
        mov     eax, dword [ebp-10H]                    ; 153B _ 8B. 45, F0
        add     eax, 16                                 ; 153E _ 83. C0, 10
        mov     dword [esp+8H], 1                       ; 1541 _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], eax                     ; 1549 _ 89. 44 24, 04
        mov     eax, dword [ebp-24H]                    ; 154D _ 8B. 45, DC
        mov     dword [esp], eax                        ; 1550 _ 89. 04 24
        call    _timer_init                             ; 1553 _ E8, 00000000(rel)
        mov     dword [esp+4H], 50                      ; 1558 _ C7. 44 24, 04, 00000032
        mov     eax, dword [ebp-24H]                    ; 1560 _ 8B. 45, DC
        mov     dword [esp], eax                        ; 1563 _ 89. 04 24
        call    _timer_settime                          ; 1566 _ E8, 00000000(rel)
        mov     eax, dword [ebp-24H]                    ; 156B _ 8B. 45, DC
        mov     dword [?_364], eax                      ; 156E _ A3, 00000020(d)
        mov     eax, dword [_shtctl]                    ; 1573 _ A1, 00000284(d)
        mov     dword [esp+14H], ?_343                  ; 1578 _ C7. 44 24, 14, 00000030(d)
        mov     dword [esp+10H], 7                      ; 1580 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 28                     ; 1588 _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 8                       ; 1590 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp+8H]                     ; 1598 _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 159B _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 159F _ 89. 04 24
        call    _showString                             ; 15A2 _ E8, 0000125F
        mov     dword [ebp-28H], 0                      ; 15A7 _ C7. 45, D8, 00000000
        mov     dword [ebp-2CH], 78848                  ; 15AE _ C7. 45, D4, 00013400
        mov     dword [ebp-30H], 0                      ; 15B5 _ C7. 45, D0, 00000000
?_062:  call    _io_cli                                 ; 15BC _ E8, 00000000(rel)
        mov     eax, dword [ebp-10H]                    ; 15C1 _ 8B. 45, F0
        add     eax, 16                                 ; 15C4 _ 83. C0, 10
        mov     dword [esp], eax                        ; 15C7 _ 89. 04 24
        call    _fifo8_status                           ; 15CA _ E8, 00000000(rel)
        test    eax, eax                                ; 15CF _ 85. C0
        jnz     ?_063                                   ; 15D1 _ 75, 07
        call    _io_sti                                 ; 15D3 _ E8, 00000000(rel)
        jmp     ?_062                                   ; 15D8 _ EB, E2
; _console_task End of function

?_063:  ; Local function
        call    _io_sti                                 ; 15DA _ E8, 00000000(rel)
        mov     eax, dword [ebp-10H]                    ; 15DF _ 8B. 45, F0
        add     eax, 16                                 ; 15E2 _ 83. C0, 10
        mov     dword [esp], eax                        ; 15E5 _ 89. 04 24
        call    _fifo8_get                              ; 15E8 _ E8, 00000000(rel)
        mov     dword [ebp-34H], eax                    ; 15ED _ 89. 45, CC
        cmp     dword [ebp-30H], 1                      ; 15F0 _ 83. 7D, D0, 01
        jnz     ?_064                                   ; 15F4 _ 75, 37
        mov     edx, dword [_sht_back]                  ; 15F6 _ 8B. 15, 00000288(d)
        mov     eax, dword [_shtctl]                    ; 15FC _ A1, 00000284(d)
        mov     dword [esp+14H], ?_345                  ; 1601 _ C7. 44 24, 14, 0000003A(d)
        mov     dword [esp+10H], 0                      ; 1609 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 232                    ; 1611 _ C7. 44 24, 0C, 000000E8
        mov     dword [esp+8H], 0                       ; 1619 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 1621 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1625 _ 89. 04 24
        call    _showString                             ; 1628 _ E8, 000011D9
?_064:  cmp     dword [ebp-34H], 1                      ; 162D _ 83. 7D, CC, 01
        jg      ?_067                                   ; 1631 _ 7F, 6E
        cmp     dword [ebp-0CH], 0                      ; 1633 _ 83. 7D, F4, 00
        js      ?_067                                   ; 1637 _ 78, 68
        cmp     dword [ebp-34H], 0                      ; 1639 _ 83. 7D, CC, 00
        jz      ?_065                                   ; 163D _ 74, 26
        mov     eax, dword [ebp-10H]                    ; 163F _ 8B. 45, F0
        add     eax, 16                                 ; 1642 _ 83. C0, 10
        mov     dword [esp+8H], 0                       ; 1645 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], eax                     ; 164D _ 89. 44 24, 04
        mov     eax, dword [ebp-24H]                    ; 1651 _ 8B. 45, DC
        mov     dword [esp], eax                        ; 1654 _ 89. 04 24
        call    _timer_init                             ; 1657 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], 7                      ; 165C _ C7. 45, F4, 00000007
        jmp     ?_066                                   ; 1663 _ EB, 24

?_065:  mov     eax, dword [ebp-10H]                    ; 1665 _ 8B. 45, F0
        add     eax, 16                                 ; 1668 _ 83. C0, 10
        mov     dword [esp+8H], 1                       ; 166B _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], eax                     ; 1673 _ 89. 44 24, 04
        mov     eax, dword [ebp-24H]                    ; 1677 _ 8B. 45, DC
        mov     dword [esp], eax                        ; 167A _ 89. 04 24
        call    _timer_init                             ; 167D _ E8, 00000000(rel)
        mov     dword [ebp-0CH], 0                      ; 1682 _ C7. 45, F4, 00000000
?_066:  mov     dword [esp+4H], 50                      ; 1689 _ C7. 44 24, 04, 00000032
        mov     eax, dword [ebp-24H]                    ; 1691 _ 8B. 45, DC
        mov     dword [esp], eax                        ; 1694 _ 89. 04 24
        call    _timer_settime                          ; 1697 _ E8, 00000000(rel)
        jmp     ?_077                                   ; 169C _ E9, 000002D8

?_067:  cmp     dword [ebp-34H], 87                     ; 16A1 _ 83. 7D, CC, 57
        jnz     ?_068                                   ; 16A5 _ 75, 3C
        mov     dword [ebp-0CH], 7                      ; 16A7 _ C7. 45, F4, 00000007
        mov     eax, dword [ebp-10H]                    ; 16AE _ 8B. 45, F0
        add     eax, 16                                 ; 16B1 _ 83. C0, 10
        mov     dword [esp+8H], 0                       ; 16B4 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], eax                     ; 16BC _ 89. 44 24, 04
        mov     eax, dword [ebp-24H]                    ; 16C0 _ 8B. 45, DC
        mov     dword [esp], eax                        ; 16C3 _ 89. 04 24
        call    _timer_init                             ; 16C6 _ E8, 00000000(rel)
        mov     dword [esp+4H], 50                      ; 16CB _ C7. 44 24, 04, 00000032
        mov     eax, dword [ebp-24H]                    ; 16D3 _ 8B. 45, DC
        mov     dword [esp], eax                        ; 16D6 _ 89. 04 24
        call    _timer_settime                          ; 16D9 _ E8, 00000000(rel)
        jmp     ?_077                                   ; 16DE _ E9, 00000296

?_068:  cmp     dword [ebp-34H], 88                     ; 16E3 _ 83. 7D, CC, 58
        jnz     ?_069                                   ; 16E7 _ 75, 59
        mov     ecx, dword [?_360]                      ; 16E9 _ 8B. 0D, 00000014(d)
        mov     edx, dword [?_359]                      ; 16EF _ 8B. 15, 00000010(d)
        mov     eax, dword [_shtctl]                    ; 16F5 _ A1, 00000284(d)
        mov     dword [esp+10H], 0                      ; 16FA _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], ecx                    ; 1702 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 1706 _ 89. 54 24, 08
        mov     edx, dword [ebp+8H]                     ; 170A _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 170D _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1711 _ 89. 04 24
        call    _set_cursor                             ; 1714 _ E8, FFFFF1CA
        mov     dword [ebp-0CH], -1                     ; 1719 _ C7. 45, F4, FFFFFFFF
        mov     eax, dword [_task_main]                 ; 1720 _ A1, 00000294(d)
        mov     dword [esp+8H], 0                       ; 1725 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], -1                      ; 172D _ C7. 44 24, 04, FFFFFFFF
        mov     dword [esp], eax                        ; 1735 _ 89. 04 24
        call    _task_run                               ; 1738 _ E8, 00000000(rel)
        jmp     ?_077                                   ; 173D _ E9, 00000237

?_069:  cmp     dword [ebp-34H], 28                     ; 1742 _ 83. 7D, CC, 1C
        jne     ?_075                                   ; 1746 _ 0F 85, 00000141
        mov     ecx, dword [?_360]                      ; 174C _ 8B. 0D, 00000014(d)
        mov     edx, dword [?_359]                      ; 1752 _ 8B. 15, 00000010(d)
        mov     eax, dword [_shtctl]                    ; 1758 _ A1, 00000284(d)
        mov     dword [esp+10H], 0                      ; 175D _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], ecx                    ; 1765 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 1769 _ 89. 54 24, 08
        mov     edx, dword [ebp+8H]                     ; 176D _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 1770 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1774 _ 89. 04 24
        call    _set_cursor                             ; 1777 _ E8, FFFFF167
        mov     eax, dword [?_359]                      ; 177C _ A1, 00000010(d)
        lea     edx, [eax+7H]                           ; 1781 _ 8D. 50, 07
        test    eax, eax                                ; 1784 _ 85. C0
        cmovs   eax, edx                                ; 1786 _ 0F 48. C2
        sar     eax, 3                                  ; 1789 _ C1. F8, 03
        lea     edx, [eax-2H]                           ; 178C _ 8D. 50, FE
        mov     eax, dword [ebp-20H]                    ; 178F _ 8B. 45, E0
        add     eax, edx                                ; 1792 _ 01. D0
        mov     byte [eax], 0                           ; 1794 _ C6. 00, 00
        mov     eax, dword [?_360]                      ; 1797 _ A1, 00000014(d)
        mov     edx, dword [ebp+8H]                     ; 179C _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 179F _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 17A3 _ 89. 04 24
        call    _cons_newline                           ; 17A6 _ E8, 00000844
        mov     dword [?_360], eax                      ; 17AB _ A3, 00000014(d)
        mov     dword [esp+4H], ?_346                   ; 17B0 _ C7. 44 24, 04, 0000004B(d)
        mov     eax, dword [ebp-20H]                    ; 17B8 _ 8B. 45, E0
        mov     dword [esp], eax                        ; 17BB _ 89. 04 24
        call    _strcmp                                 ; 17BE _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 17C3 _ 83. F8, 01
        jnz     ?_070                                   ; 17C6 _ 75, 10
        mov     eax, dword [ebp+0CH]                    ; 17C8 _ 8B. 45, 0C
        mov     dword [esp], eax                        ; 17CB _ 89. 04 24
        call    _cmd_mem                                ; 17CE _ E8, FFFFF9E8
        jmp     ?_074                                   ; 17D3 _ E9, 000000A6

?_070:  mov     dword [esp+4H], ?_347                   ; 17D8 _ C7. 44 24, 04, 0000004F(d)
        mov     eax, dword [ebp-20H]                    ; 17E0 _ 8B. 45, E0
        mov     dword [esp], eax                        ; 17E3 _ 89. 04 24
        call    _strcmp                                 ; 17E6 _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 17EB _ 83. F8, 01
        jnz     ?_071                                   ; 17EE _ 75, 0A
        call    _cmd_cls                                ; 17F0 _ E8, FFFFFAB6
        jmp     ?_074                                   ; 17F5 _ E9, 00000084

?_071:  mov     dword [esp+4H], ?_348                   ; 17FA _ C7. 44 24, 04, 00000053(d)
        mov     eax, dword [ebp-20H]                    ; 1802 _ 8B. 45, E0
        mov     dword [esp], eax                        ; 1805 _ 89. 04 24
        call    _strcmp                                 ; 1808 _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 180D _ 83. F8, 01
        jnz     ?_072                                   ; 1810 _ 75, 11
        mov     dword [_g_hlt], 1                       ; 1812 _ C7. 05, 00000000(d), 00000001
        call    _cmd_hlt                                ; 181C _ E8, FFFFFB62
        jmp     ?_074                                   ; 1821 _ EB, 5B

?_072:  mov     dword [esp+4H], ?_349                   ; 1823 _ C7. 44 24, 04, 00000057(d)
        mov     eax, dword [ebp-20H]                    ; 182B _ 8B. 45, E0
        mov     dword [esp], eax                        ; 182E _ 89. 04 24
        call    _strcmp                                 ; 1831 _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 1836 _ 83. F8, 01
        jnz     ?_073                                   ; 1839 _ 75, 07
        call    _cmd_dir                                ; 183B _ E8, FFFFF4C7
        jmp     ?_074                                   ; 1840 _ EB, 3C

?_073:  mov     eax, dword [ebp-20H]                    ; 1842 _ 8B. 45, E0
        movzx   eax, byte [eax]                         ; 1845 _ 0F B6. 00
        cmp     al, 116                                 ; 1848 _ 3C, 74
        jnz     ?_074                                   ; 184A _ 75, 32
        mov     eax, dword [ebp-20H]                    ; 184C _ 8B. 45, E0
        add     eax, 1                                  ; 184F _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 1852 _ 0F B6. 00
        cmp     al, 121                                 ; 1855 _ 3C, 79
        jnz     ?_074                                   ; 1857 _ 75, 25
        mov     eax, dword [ebp-20H]                    ; 1859 _ 8B. 45, E0
        add     eax, 2                                  ; 185C _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 185F _ 0F B6. 00
        cmp     al, 112                                 ; 1862 _ 3C, 70
        jnz     ?_074                                   ; 1864 _ 75, 18
        mov     eax, dword [ebp-20H]                    ; 1866 _ 8B. 45, E0
        add     eax, 3                                  ; 1869 _ 83. C0, 03
        movzx   eax, byte [eax]                         ; 186C _ 0F B6. 00
        cmp     al, 101                                 ; 186F _ 3C, 65
        jnz     ?_074                                   ; 1871 _ 75, 0B
        mov     eax, dword [ebp-20H]                    ; 1873 _ 8B. 45, E0
        mov     dword [esp], eax                        ; 1876 _ 89. 04 24
        call    _cmd_type                               ; 1879 _ E8, FFFFF618
?_074:  mov     dword [?_359], 16                       ; 187E _ C7. 05, 00000010(d), 00000010
        jmp     ?_077                                   ; 1888 _ E9, 000000EC

?_075:  cmp     dword [ebp-34H], 14                     ; 188D _ 83. 7D, CC, 0E
        jnz     ?_076                                   ; 1891 _ 75, 79
        mov     eax, dword [?_359]                      ; 1893 _ A1, 00000010(d)
        cmp     eax, 8                                  ; 1898 _ 83. F8, 08
        jle     ?_076                                   ; 189B _ 7E, 6F
        mov     ecx, dword [?_360]                      ; 189D _ 8B. 0D, 00000014(d)
        mov     edx, dword [?_359]                      ; 18A3 _ 8B. 15, 00000010(d)
        mov     eax, dword [_shtctl]                    ; 18A9 _ A1, 00000284(d)
        mov     dword [esp+10H], 0                      ; 18AE _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], ecx                    ; 18B6 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 18BA _ 89. 54 24, 08
        mov     edx, dword [ebp+8H]                     ; 18BE _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 18C1 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 18C5 _ 89. 04 24
        call    _set_cursor                             ; 18C8 _ E8, FFFFF016
        mov     eax, dword [?_359]                      ; 18CD _ A1, 00000010(d)
        sub     eax, 8                                  ; 18D2 _ 83. E8, 08
        mov     dword [?_359], eax                      ; 18D5 _ A3, 00000010(d)
        mov     ecx, dword [?_360]                      ; 18DA _ 8B. 0D, 00000014(d)
        mov     edx, dword [?_359]                      ; 18E0 _ 8B. 15, 00000010(d)
        mov     eax, dword [_shtctl]                    ; 18E6 _ A1, 00000284(d)
        mov     dword [esp+10H], 0                      ; 18EB _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], ecx                    ; 18F3 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 18F7 _ 89. 54 24, 08
        mov     edx, dword [ebp+8H]                     ; 18FB _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 18FE _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1902 _ 89. 04 24
        call    _set_cursor                             ; 1905 _ E8, FFFFEFD9
        jmp     ?_077                                   ; 190A _ EB, 6D

?_076:  mov     eax, dword [ebp-34H]                    ; 190C _ 8B. 45, CC
        mov     dword [esp], eax                        ; 190F _ 89. 04 24
        call    _transferScanCode                       ; 1912 _ E8, FFFFF0A5
        mov     byte [ebp-35H], al                      ; 1917 _ 88. 45, CB
        mov     eax, dword [?_359]                      ; 191A _ A1, 00000010(d)
        cmp     eax, 239                                ; 191F _ 3D, 000000EF
        jg      ?_077                                   ; 1924 _ 7F, 53
        cmp     byte [ebp-35H], 0                       ; 1926 _ 80. 7D, CB, 00
        jz      ?_077                                   ; 192A _ 74, 4D
        mov     eax, dword [?_359]                      ; 192C _ A1, 00000010(d)
        lea     edx, [eax+7H]                           ; 1931 _ 8D. 50, 07
        test    eax, eax                                ; 1934 _ 85. C0
        cmovs   eax, edx                                ; 1936 _ 0F 48. C2
        sar     eax, 3                                  ; 1939 _ C1. F8, 03
        lea     edx, [eax-2H]                           ; 193C _ 8D. 50, FE
        mov     eax, dword [ebp-20H]                    ; 193F _ 8B. 45, E0
        add     edx, eax                                ; 1942 _ 01. C2
        movzx   eax, byte [ebp-35H]                     ; 1944 _ 0F B6. 45, CB
        mov     byte [edx], al                          ; 1948 _ 88. 02
        mov     eax, dword [?_359]                      ; 194A _ A1, 00000010(d)
        lea     edx, [eax+7H]                           ; 194F _ 8D. 50, 07
        test    eax, eax                                ; 1952 _ 85. C0
        cmovs   eax, edx                                ; 1954 _ 0F 48. C2
        sar     eax, 3                                  ; 1957 _ C1. F8, 03
        lea     edx, [eax-1H]                           ; 195A _ 8D. 50, FF
        mov     eax, dword [ebp-20H]                    ; 195D _ 8B. 45, E0
        add     eax, edx                                ; 1960 _ 01. D0
        mov     byte [eax], 0                           ; 1962 _ C6. 00, 00
        movsx   eax, byte [ebp-35H]                     ; 1965 _ 0F BE. 45, CB
        mov     dword [esp+4H], 1                       ; 1969 _ C7. 44 24, 04, 00000001
        mov     dword [esp], eax                        ; 1971 _ 89. 04 24
        call    _cons_putchar                           ; 1974 _ E8, 000005CF
?_077:  cmp     dword [ebp-0CH], 0                      ; 1979 _ 83. 7D, F4, 00
        js      ?_062                                   ; 197D _ 0F 88, FFFFFC39
        mov     ecx, dword [?_360]                      ; 1983 _ 8B. 0D, 00000014(d)
        mov     edx, dword [?_359]                      ; 1989 _ 8B. 15, 00000010(d)
        mov     eax, dword [_shtctl]                    ; 198F _ A1, 00000284(d)
        mov     ebx, dword [ebp-0CH]                    ; 1994 _ 8B. 5D, F4
        mov     dword [esp+10H], ebx                    ; 1997 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 199B _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 199F _ 89. 54 24, 08
        mov     edx, dword [ebp+8H]                     ; 19A3 _ 8B. 55, 08
        mov     dword [esp+4H], edx                     ; 19A6 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 19AA _ 89. 04 24
        call    _set_cursor                             ; 19AD _ E8, FFFFEF31
        jmp     ?_062                                   ; 19B2 _ E9, FFFFFC05

_cons_putstr:; Function begin
        push    ebp                                     ; 19B7 _ 55
        mov     ebp, esp                                ; 19B8 _ 89. E5
        sub     esp, 24                                 ; 19BA _ 83. EC, 18
        jmp     ?_079                                   ; 19BD _ EB, 1D

?_078:  mov     eax, dword [ebp+8H]                     ; 19BF _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 19C2 _ 0F B6. 00
        movsx   eax, al                                 ; 19C5 _ 0F BE. C0
        mov     dword [esp+4H], 1                       ; 19C8 _ C7. 44 24, 04, 00000001
        mov     dword [esp], eax                        ; 19D0 _ 89. 04 24
        call    _cons_putchar                           ; 19D3 _ E8, 00000570
        add     dword [ebp+8H], 1                       ; 19D8 _ 83. 45, 08, 01
?_079:  mov     eax, dword [ebp+8H]                     ; 19DC _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 19DF _ 0F B6. 00
        test    al, al                                  ; 19E2 _ 84. C0
        jnz     ?_078                                   ; 19E4 _ 75, D9
        nop                                             ; 19E6 _ 90
        leave                                           ; 19E7 _ C9
        ret                                             ; 19E8 _ C3
; _cons_putstr End of function

_api_linewin:; Function begin
        push    ebp                                     ; 19E9 _ 55
        mov     ebp, esp                                ; 19EA _ 89. E5
        sub     esp, 72                                 ; 19EC _ 83. EC, 48
        mov     eax, dword [ebp+14H]                    ; 19EF _ 8B. 45, 14
        sub     eax, dword [ebp+0CH]                    ; 19F2 _ 2B. 45, 0C
        mov     dword [ebp-1CH], eax                    ; 19F5 _ 89. 45, E4
        mov     eax, dword [ebp+18H]                    ; 19F8 _ 8B. 45, 18
        sub     eax, dword [ebp+10H]                    ; 19FB _ 2B. 45, 10
        mov     dword [ebp-20H], eax                    ; 19FE _ 89. 45, E0
        mov     eax, dword [ebp+0CH]                    ; 1A01 _ 8B. 45, 0C
        shl     eax, 10                                 ; 1A04 _ C1. E0, 0A
        mov     dword [ebp-10H], eax                    ; 1A07 _ 89. 45, F0
        mov     eax, dword [ebp+10H]                    ; 1A0A _ 8B. 45, 10
        shl     eax, 10                                 ; 1A0D _ C1. E0, 0A
        mov     dword [ebp-14H], eax                    ; 1A10 _ 89. 45, EC
        cmp     dword [ebp-1CH], 0                      ; 1A13 _ 83. 7D, E4, 00
        jns     ?_080                                   ; 1A17 _ 79, 03
        neg     dword [ebp-1CH]                         ; 1A19 _ F7. 5D, E4
?_080:  cmp     dword [ebp-20H], 0                      ; 1A1C _ 83. 7D, E0, 00
        jns     ?_081                                   ; 1A20 _ 79, 03
        neg     dword [ebp-20H]                         ; 1A22 _ F7. 5D, E0
?_081:  mov     eax, dword [ebp-1CH]                    ; 1A25 _ 8B. 45, E4
        cmp     eax, dword [ebp-20H]                    ; 1A28 _ 3B. 45, E0
        jl      ?_085                                   ; 1A2B _ 7C, 53
        mov     eax, dword [ebp-1CH]                    ; 1A2D _ 8B. 45, E4
        add     eax, 1                                  ; 1A30 _ 83. C0, 01
        mov     dword [ebp-18H], eax                    ; 1A33 _ 89. 45, E8
        mov     eax, dword [ebp+0CH]                    ; 1A36 _ 8B. 45, 0C
        cmp     eax, dword [ebp+14H]                    ; 1A39 _ 3B. 45, 14
        jle     ?_082                                   ; 1A3C _ 7E, 09
        mov     dword [ebp-1CH], -1024                  ; 1A3E _ C7. 45, E4, FFFFFC00
        jmp     ?_083                                   ; 1A45 _ EB, 07

?_082:  mov     dword [ebp-1CH], 1024                   ; 1A47 _ C7. 45, E4, 00000400
?_083:  mov     eax, dword [ebp+10H]                    ; 1A4E _ 8B. 45, 10
        cmp     eax, dword [ebp+18H]                    ; 1A51 _ 3B. 45, 18
        jg      ?_084                                   ; 1A54 _ 7F, 15
        mov     eax, dword [ebp+18H]                    ; 1A56 _ 8B. 45, 18
        sub     eax, dword [ebp+10H]                    ; 1A59 _ 2B. 45, 10
        add     eax, 1                                  ; 1A5C _ 83. C0, 01
        shl     eax, 10                                 ; 1A5F _ C1. E0, 0A
        cdq                                             ; 1A62 _ 99
        idiv    dword [ebp-18H]                         ; 1A63 _ F7. 7D, E8
        mov     dword [ebp-20H], eax                    ; 1A66 _ 89. 45, E0
        jmp     ?_089                                   ; 1A69 _ EB, 66

?_084:  mov     eax, dword [ebp+18H]                    ; 1A6B _ 8B. 45, 18
        sub     eax, dword [ebp+10H]                    ; 1A6E _ 2B. 45, 10
        sub     eax, 1                                  ; 1A71 _ 83. E8, 01
        shl     eax, 10                                 ; 1A74 _ C1. E0, 0A
        cdq                                             ; 1A77 _ 99
        idiv    dword [ebp-18H]                         ; 1A78 _ F7. 7D, E8
        mov     dword [ebp-20H], eax                    ; 1A7B _ 89. 45, E0
        jmp     ?_089                                   ; 1A7E _ EB, 51

?_085:  mov     eax, dword [ebp-20H]                    ; 1A80 _ 8B. 45, E0
        add     eax, 1                                  ; 1A83 _ 83. C0, 01
        mov     dword [ebp-18H], eax                    ; 1A86 _ 89. 45, E8
        mov     eax, dword [ebp+10H]                    ; 1A89 _ 8B. 45, 10
        cmp     eax, dword [ebp+18H]                    ; 1A8C _ 3B. 45, 18
        jle     ?_086                                   ; 1A8F _ 7E, 09
        mov     dword [ebp-20H], -1024                  ; 1A91 _ C7. 45, E0, FFFFFC00
        jmp     ?_087                                   ; 1A98 _ EB, 07

?_086:  mov     dword [ebp-20H], 1024                   ; 1A9A _ C7. 45, E0, 00000400
?_087:  mov     eax, dword [ebp+0CH]                    ; 1AA1 _ 8B. 45, 0C
        cmp     eax, dword [ebp+14H]                    ; 1AA4 _ 3B. 45, 14
        jg      ?_088                                   ; 1AA7 _ 7F, 15
        mov     eax, dword [ebp+14H]                    ; 1AA9 _ 8B. 45, 14
        sub     eax, dword [ebp+0CH]                    ; 1AAC _ 2B. 45, 0C
        add     eax, 1                                  ; 1AAF _ 83. C0, 01
        shl     eax, 10                                 ; 1AB2 _ C1. E0, 0A
        cdq                                             ; 1AB5 _ 99
        idiv    dword [ebp-18H]                         ; 1AB6 _ F7. 7D, E8
        mov     dword [ebp-1CH], eax                    ; 1AB9 _ 89. 45, E4
        jmp     ?_089                                   ; 1ABC _ EB, 13

?_088:  mov     eax, dword [ebp+14H]                    ; 1ABE _ 8B. 45, 14
        sub     eax, dword [ebp+0CH]                    ; 1AC1 _ 2B. 45, 0C
        sub     eax, 1                                  ; 1AC4 _ 83. E8, 01
        shl     eax, 10                                 ; 1AC7 _ C1. E0, 0A
        cdq                                             ; 1ACA _ 99
        idiv    dword [ebp-18H]                         ; 1ACB _ F7. 7D, E8
        mov     dword [ebp-1CH], eax                    ; 1ACE _ 89. 45, E4
?_089:  mov     dword [ebp-0CH], 0                      ; 1AD1 _ C7. 45, F4, 00000000
        jmp     ?_091                                   ; 1AD8 _ EB, 35

?_090:  mov     eax, dword [ebp+8H]                     ; 1ADA _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 1ADD _ 8B. 10
        mov     eax, dword [ebp-14H]                    ; 1ADF _ 8B. 45, EC
        sar     eax, 10                                 ; 1AE2 _ C1. F8, 0A
        mov     ecx, eax                                ; 1AE5 _ 89. C1
        mov     eax, dword [ebp+8H]                     ; 1AE7 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 1AEA _ 8B. 40, 04
        imul    eax, ecx                                ; 1AED _ 0F AF. C1
        mov     ecx, dword [ebp-10H]                    ; 1AF0 _ 8B. 4D, F0
        sar     ecx, 10                                 ; 1AF3 _ C1. F9, 0A
        add     eax, ecx                                ; 1AF6 _ 01. C8
        add     eax, edx                                ; 1AF8 _ 01. D0
        mov     edx, dword [ebp+1CH]                    ; 1AFA _ 8B. 55, 1C
        mov     byte [eax], dl                          ; 1AFD _ 88. 10
        mov     eax, dword [ebp-1CH]                    ; 1AFF _ 8B. 45, E4
        add     dword [ebp-10H], eax                    ; 1B02 _ 01. 45, F0
        mov     eax, dword [ebp-20H]                    ; 1B05 _ 8B. 45, E0
        add     dword [ebp-14H], eax                    ; 1B08 _ 01. 45, EC
        add     dword [ebp-0CH], 1                      ; 1B0B _ 83. 45, F4, 01
?_091:  mov     eax, dword [ebp-0CH]                    ; 1B0F _ 8B. 45, F4
        cmp     eax, dword [ebp-18H]                    ; 1B12 _ 3B. 45, E8
        jl      ?_090                                   ; 1B15 _ 7C, C3
        mov     edx, dword [_buf_back]                  ; 1B17 _ 8B. 15, 00000168(d)
        mov     eax, dword [_shtctl]                    ; 1B1D _ A1, 00000284(d)
        mov     dword [esp+14H], 102                    ; 1B22 _ C7. 44 24, 14, 00000066
        mov     dword [esp+10H], 7                      ; 1B2A _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 200                    ; 1B32 _ C7. 44 24, 0C, 000000C8
        mov     dword [esp+8H], 100                     ; 1B3A _ C7. 44 24, 08, 00000064
        mov     dword [esp+4H], edx                     ; 1B42 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1B46 _ 89. 04 24
        call    _showString                             ; 1B49 _ E8, 00000CB8
        nop                                             ; 1B4E _ 90
        leave                                           ; 1B4F _ C9
        ret                                             ; 1B50 _ C3
; _api_linewin End of function

_handle_keyboard:; Function begin
        push    ebp                                     ; 1B51 _ 55
        mov     ebp, esp                                ; 1B52 _ 89. E5
        sub     esp, 40                                 ; 1B54 _ 83. EC, 28
        mov     eax, dword [?_364]                      ; 1B57 _ A1, 00000020(d)
        mov     dword [ebp-0CH], eax                    ; 1B5C _ 89. 45, F4
?_092:  mov     eax, dword [ebp+8H]                     ; 1B5F _ 8B. 45, 08
        add     eax, 16                                 ; 1B62 _ 83. C0, 10
        mov     dword [esp], eax                        ; 1B65 _ 89. 04 24
        call    _fifo8_status                           ; 1B68 _ E8, 00000000(rel)
        test    eax, eax                                ; 1B6D _ 85. C0
        jnz     ?_093                                   ; 1B6F _ 75, 22
        cmp     dword [ebp+0CH], 0                      ; 1B71 _ 83. 7D, 0C, 00
        jne     ?_096                                   ; 1B75 _ 0F 85, 00000088
        call    _io_sti                                 ; 1B7B _ E8, 00000000(rel)
        mov     eax, dword [ebp+10H]                    ; 1B80 _ 8B. 45, 10
        add     eax, 28                                 ; 1B83 _ 83. C0, 1C
        mov     dword [eax], -1                         ; 1B86 _ C7. 00, FFFFFFFF
        mov     eax, 0                                  ; 1B8C _ B8, 00000000
        jmp     ?_097                                   ; 1B91 _ EB, 76

?_093:  mov     eax, dword [ebp+8H]                     ; 1B93 _ 8B. 45, 08
        add     eax, 16                                 ; 1B96 _ 83. C0, 10
        mov     dword [esp], eax                        ; 1B99 _ 89. 04 24
        call    _fifo8_get                              ; 1B9C _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 1BA1 _ 89. 45, F0
        cmp     dword [ebp-10H], 1                      ; 1BA4 _ 83. 7D, F0, 01
        jg      ?_094                                   ; 1BA8 _ 7F, 32
        mov     eax, dword [ebp+8H]                     ; 1BAA _ 8B. 45, 08
        add     eax, 16                                 ; 1BAD _ 83. C0, 10
        mov     dword [esp+8H], 1                       ; 1BB0 _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], eax                     ; 1BB8 _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 1BBC _ 8B. 45, F4
        mov     dword [esp], eax                        ; 1BBF _ 89. 04 24
        call    _timer_init                             ; 1BC2 _ E8, 00000000(rel)
        mov     dword [esp+4H], 50                      ; 1BC7 _ C7. 44 24, 04, 00000032
        mov     eax, dword [ebp-0CH]                    ; 1BCF _ 8B. 45, F4
        mov     dword [esp], eax                        ; 1BD2 _ 89. 04 24
        call    _timer_settime                          ; 1BD5 _ E8, 00000000(rel)
        jmp     ?_092                                   ; 1BDA _ EB, 83

?_094:  cmp     dword [ebp-10H], 2                      ; 1BDC _ 83. 7D, F0, 02
        jnz     ?_095                                   ; 1BE0 _ 75, 0F
        mov     dword [?_361], 7                        ; 1BE2 _ C7. 05, 00000018(d), 00000007
        jmp     ?_092                                   ; 1BEC _ E9, FFFFFF6E

?_095:  mov     eax, dword [ebp+10H]                    ; 1BF1 _ 8B. 45, 10
        add     eax, 28                                 ; 1BF4 _ 83. C0, 1C
        mov     edx, dword [ebp-10H]                    ; 1BF7 _ 8B. 55, F0
        mov     dword [eax], edx                        ; 1BFA _ 89. 10
        mov     eax, 0                                  ; 1BFC _ B8, 00000000
        jmp     ?_097                                   ; 1C01 _ EB, 06

?_096:  nop                                             ; 1C03 _ 90
        jmp     ?_092                                   ; 1C04 _ E9, FFFFFF56
; _handle_keyboard End of function

?_097:  ; Local function
        leave                                           ; 1C09 _ C9
        ret                                             ; 1C0A _ C3

_kernel_api:; Function begin
        push    ebp                                     ; 1C0B _ 55
        mov     ebp, esp                                ; 1C0C _ 89. E5
        push    esi                                     ; 1C0E _ 56
        push    ebx                                     ; 1C0F _ 53
        sub     esp, 48                                 ; 1C10 _ 83. EC, 30
        call    _task_now                               ; 1C13 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 1C18 _ 89. 45, F4
        lea     eax, [ebp+24H]                          ; 1C1B _ 8D. 45, 24
        add     eax, 4                                  ; 1C1E _ 83. C0, 04
        mov     dword [ebp-10H], eax                    ; 1C21 _ 89. 45, F0
        cmp     dword [ebp+1CH], 1                      ; 1C24 _ 83. 7D, 1C, 01
        jnz     ?_098                                   ; 1C28 _ 75, 1B
        mov     eax, dword [ebp+24H]                    ; 1C2A _ 8B. 45, 24
        movsx   eax, al                                 ; 1C2D _ 0F BE. C0
        mov     dword [esp+4H], 1                       ; 1C30 _ C7. 44 24, 04, 00000001
        mov     dword [esp], eax                        ; 1C38 _ 89. 04 24
        call    _cons_putchar                           ; 1C3B _ E8, 00000308
        jmp     ?_108                                   ; 1C40 _ E9, 000002F7

?_098:  cmp     dword [ebp+1CH], 2                      ; 1C45 _ 83. 7D, 1C, 02
        jnz     ?_099                                   ; 1C49 _ 75, 18
        mov     edx, dword [_buffer]                    ; 1C4B _ 8B. 15, 00000298(d)
        mov     eax, dword [ebp+18H]                    ; 1C51 _ 8B. 45, 18
        add     eax, edx                                ; 1C54 _ 01. D0
        mov     dword [esp], eax                        ; 1C56 _ 89. 04 24
        call    _cons_putstr                            ; 1C59 _ E8, FFFFFD59
        jmp     ?_108                                   ; 1C5E _ E9, 000002D9

?_099:  cmp     dword [ebp+1CH], 4                      ; 1C63 _ 83. 7D, 1C, 04
        jnz     ?_100                                   ; 1C67 _ 75, 17
        mov     eax, dword [ebp-0CH]                    ; 1C69 _ 8B. 45, F4
        mov     dword [eax+34H], 0                      ; 1C6C _ C7. 40, 34, 00000000
        mov     eax, dword [_task_cons]                 ; 1C73 _ A1, 00000290(d)
        add     eax, 48                                 ; 1C78 _ 83. C0, 30
        jmp     ?_109                                   ; 1C7B _ E9, 000002C1

?_100:  cmp     dword [ebp+1CH], 5                      ; 1C80 _ 83. 7D, 1C, 05
        jne     ?_101                                   ; 1C84 _ 0F 85, 000000BA
        mov     eax, dword [_shtctl]                    ; 1C8A _ A1, 00000284(d)
        mov     dword [esp], eax                        ; 1C8F _ 89. 04 24
        call    _sheet_alloc                            ; 1C92 _ E8, 00000000(rel)
        mov     dword [ebp-14H], eax                    ; 1C97 _ 89. 45, EC
        mov     edx, dword [ebp+24H]                    ; 1C9A _ 8B. 55, 24
        mov     ecx, dword [?_369]                      ; 1C9D _ 8B. 0D, 0000029C(d)
        mov     eax, dword [ebp+18H]                    ; 1CA3 _ 8B. 45, 18
        add     eax, ecx                                ; 1CA6 _ 01. C8
        mov     dword [esp+10H], edx                    ; 1CA8 _ 89. 54 24, 10
        mov     edx, dword [ebp+8H]                     ; 1CAC _ 8B. 55, 08
        mov     dword [esp+0CH], edx                    ; 1CAF _ 89. 54 24, 0C
        mov     edx, dword [ebp+0CH]                    ; 1CB3 _ 8B. 55, 0C
        mov     dword [esp+8H], edx                     ; 1CB6 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 1CBA _ 89. 44 24, 04
        mov     eax, dword [ebp-14H]                    ; 1CBE _ 8B. 45, EC
        mov     dword [esp], eax                        ; 1CC1 _ 89. 04 24
        call    _sheet_setbuf                           ; 1CC4 _ E8, 00000000(rel)
        mov     edx, dword [_buffer]                    ; 1CC9 _ 8B. 15, 00000298(d)
        mov     eax, dword [ebp+20H]                    ; 1CCF _ 8B. 45, 20
        add     edx, eax                                ; 1CD2 _ 01. C2
        mov     eax, dword [_shtctl]                    ; 1CD4 _ A1, 00000284(d)
        mov     dword [esp+0CH], 0                      ; 1CD9 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], edx                     ; 1CE1 _ 89. 54 24, 08
        mov     edx, dword [ebp-14H]                    ; 1CE5 _ 8B. 55, EC
        mov     dword [esp+4H], edx                     ; 1CE8 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1CEC _ 89. 04 24
        call    _make_window8                           ; 1CEF _ E8, 0000163F
        mov     eax, dword [_shtctl]                    ; 1CF4 _ A1, 00000284(d)
        mov     dword [esp+0CH], 50                     ; 1CF9 _ C7. 44 24, 0C, 00000032
        mov     dword [esp+8H], 100                     ; 1D01 _ C7. 44 24, 08, 00000064
        mov     edx, dword [ebp-14H]                    ; 1D09 _ 8B. 55, EC
        mov     dword [esp+4H], edx                     ; 1D0C _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1D10 _ 89. 04 24
        call    _sheet_slide                            ; 1D13 _ E8, 00000000(rel)
        mov     eax, dword [_shtctl]                    ; 1D18 _ A1, 00000284(d)
        mov     dword [esp+8H], 3                       ; 1D1D _ C7. 44 24, 08, 00000003
        mov     edx, dword [ebp-14H]                    ; 1D25 _ 8B. 55, EC
        mov     dword [esp+4H], edx                     ; 1D28 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1D2C _ 89. 04 24
        call    _sheet_updown                           ; 1D2F _ E8, 00000000(rel)
        mov     eax, dword [ebp-10H]                    ; 1D34 _ 8B. 45, F0
        add     eax, 28                                 ; 1D37 _ 83. C0, 1C
        mov     edx, dword [ebp-14H]                    ; 1D3A _ 8B. 55, EC
        mov     dword [eax], edx                        ; 1D3D _ 89. 10
        jmp     ?_108                                   ; 1D3F _ E9, 000001F8

?_101:  cmp     dword [ebp+1CH], 6                      ; 1D44 _ 83. 7D, 1C, 06
        jne     ?_102                                   ; 1D48 _ 0F 85, 00000087
        mov     eax, dword [ebp+18H]                    ; 1D4E _ 8B. 45, 18
        mov     dword [ebp-14H], eax                    ; 1D51 _ 89. 45, EC
        mov     edx, dword [_buffer]                    ; 1D54 _ 8B. 15, 00000298(d)
        mov     eax, dword [ebp+10H]                    ; 1D5A _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 1D5D _ 8D. 0C 02
        mov     eax, dword [ebp+24H]                    ; 1D60 _ 8B. 45, 24
        movsx   eax, al                                 ; 1D63 _ 0F BE. C0
        mov     edx, dword [_shtctl]                    ; 1D66 _ 8B. 15, 00000284(d)
        mov     dword [esp+14H], ecx                    ; 1D6C _ 89. 4C 24, 14
        mov     dword [esp+10H], eax                    ; 1D70 _ 89. 44 24, 10
        mov     eax, dword [ebp+8H]                     ; 1D74 _ 8B. 45, 08
        mov     dword [esp+0CH], eax                    ; 1D77 _ 89. 44 24, 0C
        mov     eax, dword [ebp+0CH]                    ; 1D7B _ 8B. 45, 0C
        mov     dword [esp+8H], eax                     ; 1D7E _ 89. 44 24, 08
        mov     eax, dword [ebp-14H]                    ; 1D82 _ 8B. 45, EC
        mov     dword [esp+4H], eax                     ; 1D85 _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 1D89 _ 89. 14 24
        call    _showString                             ; 1D8C _ E8, 00000A75
        mov     eax, dword [ebp+8H]                     ; 1D91 _ 8B. 45, 08
        lea     ecx, [eax+10H]                          ; 1D94 _ 8D. 48, 10
        mov     eax, dword [ebp+20H]                    ; 1D97 _ 8B. 45, 20
        lea     edx, [eax*8]                            ; 1D9A _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp+0CH]                    ; 1DA1 _ 8B. 45, 0C
        add     edx, eax                                ; 1DA4 _ 01. C2
        mov     eax, dword [_shtctl]                    ; 1DA6 _ A1, 00000284(d)
        mov     dword [esp+14H], ecx                    ; 1DAB _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 1DAF _ 89. 54 24, 10
        mov     edx, dword [ebp+8H]                     ; 1DB3 _ 8B. 55, 08
        mov     dword [esp+0CH], edx                    ; 1DB6 _ 89. 54 24, 0C
        mov     edx, dword [ebp+0CH]                    ; 1DBA _ 8B. 55, 0C
        mov     dword [esp+8H], edx                     ; 1DBD _ 89. 54 24, 08
        mov     edx, dword [ebp-14H]                    ; 1DC1 _ 8B. 55, EC
        mov     dword [esp+4H], edx                     ; 1DC4 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1DC8 _ 89. 04 24
        call    _sheet_refresh                          ; 1DCB _ E8, 00000000(rel)
        jmp     ?_108                                   ; 1DD0 _ E9, 00000167

?_102:  cmp     dword [ebp+1CH], 7                      ; 1DD5 _ 83. 7D, 1C, 07
        jnz     ?_103                                   ; 1DD9 _ 75, 7E
        mov     eax, dword [ebp+18H]                    ; 1DDB _ 8B. 45, 18
        mov     dword [ebp-14H], eax                    ; 1DDE _ 89. 45, EC
        mov     ebx, dword [ebp+24H]                    ; 1DE1 _ 8B. 5D, 24
        mov     eax, dword [ebp+10H]                    ; 1DE4 _ 8B. 45, 10
        movzx   eax, al                                 ; 1DE7 _ 0F B6. C0
        mov     edx, dword [ebp-14H]                    ; 1DEA _ 8B. 55, EC
        mov     ecx, dword [edx+4H]                     ; 1DED _ 8B. 4A, 04
        mov     edx, dword [ebp-14H]                    ; 1DF0 _ 8B. 55, EC
        mov     edx, dword [edx]                        ; 1DF3 _ 8B. 12
        mov     esi, dword [ebp+8H]                     ; 1DF5 _ 8B. 75, 08
        mov     dword [esp+18H], esi                    ; 1DF8 _ 89. 74 24, 18
        mov     esi, dword [ebp+0CH]                    ; 1DFC _ 8B. 75, 0C
        mov     dword [esp+14H], esi                    ; 1DFF _ 89. 74 24, 14
        mov     esi, dword [ebp+20H]                    ; 1E03 _ 8B. 75, 20
        mov     dword [esp+10H], esi                    ; 1E06 _ 89. 74 24, 10
        mov     dword [esp+0CH], ebx                    ; 1E0A _ 89. 5C 24, 0C
        mov     dword [esp+8H], eax                     ; 1E0E _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 1E12 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 1E16 _ 89. 14 24
        call    _boxfill8                               ; 1E19 _ E8, 00000B5C
        mov     eax, dword [ebp+8H]                     ; 1E1E _ 8B. 45, 08
        lea     ebx, [eax+1H]                           ; 1E21 _ 8D. 58, 01
        mov     eax, dword [ebp+0CH]                    ; 1E24 _ 8B. 45, 0C
        lea     ecx, [eax+1H]                           ; 1E27 _ 8D. 48, 01
        mov     edx, dword [ebp+24H]                    ; 1E2A _ 8B. 55, 24
        mov     eax, dword [_shtctl]                    ; 1E2D _ A1, 00000284(d)
        mov     dword [esp+14H], ebx                    ; 1E32 _ 89. 5C 24, 14
        mov     dword [esp+10H], ecx                    ; 1E36 _ 89. 4C 24, 10
        mov     ecx, dword [ebp+20H]                    ; 1E3A _ 8B. 4D, 20
        mov     dword [esp+0CH], ecx                    ; 1E3D _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 1E41 _ 89. 54 24, 08
        mov     edx, dword [ebp-14H]                    ; 1E45 _ 8B. 55, EC
        mov     dword [esp+4H], edx                     ; 1E48 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1E4C _ 89. 04 24
        call    _sheet_refresh                          ; 1E4F _ E8, 00000000(rel)
        jmp     ?_108                                   ; 1E54 _ E9, 000000E3

?_103:  cmp     dword [ebp+1CH], 11                     ; 1E59 _ 83. 7D, 1C, 0B
        jnz     ?_104                                   ; 1E5D _ 75, 28
        mov     eax, dword [ebp+18H]                    ; 1E5F _ 8B. 45, 18
        mov     dword [ebp-14H], eax                    ; 1E62 _ 89. 45, EC
        mov     ebx, dword [ebp+24H]                    ; 1E65 _ 8B. 5D, 24
        mov     eax, dword [ebp-14H]                    ; 1E68 _ 8B. 45, EC
        mov     edx, dword [eax]                        ; 1E6B _ 8B. 10
        mov     eax, dword [ebp-14H]                    ; 1E6D _ 8B. 45, EC
        mov     eax, dword [eax+4H]                     ; 1E70 _ 8B. 40, 04
        imul    eax, dword [ebp+8H]                     ; 1E73 _ 0F AF. 45, 08
        mov     ecx, dword [ebp+0CH]                    ; 1E77 _ 8B. 4D, 0C
        add     eax, ecx                                ; 1E7A _ 01. C8
        add     eax, edx                                ; 1E7C _ 01. D0
        mov     edx, ebx                                ; 1E7E _ 89. DA
        mov     byte [eax], dl                          ; 1E80 _ 88. 10
        jmp     ?_108                                   ; 1E82 _ E9, 000000B5

?_104:  cmp     dword [ebp+1CH], 12                     ; 1E87 _ 83. 7D, 1C, 0C
        jnz     ?_105                                   ; 1E8B _ 75, 38
        mov     eax, dword [ebp+18H]                    ; 1E8D _ 8B. 45, 18
        mov     dword [ebp-14H], eax                    ; 1E90 _ 89. 45, EC
        mov     edx, dword [ebp+24H]                    ; 1E93 _ 8B. 55, 24
        mov     eax, dword [_shtctl]                    ; 1E96 _ A1, 00000284(d)
        mov     ecx, dword [ebp+8H]                     ; 1E9B _ 8B. 4D, 08
        mov     dword [esp+14H], ecx                    ; 1E9E _ 89. 4C 24, 14
        mov     ecx, dword [ebp+0CH]                    ; 1EA2 _ 8B. 4D, 0C
        mov     dword [esp+10H], ecx                    ; 1EA5 _ 89. 4C 24, 10
        mov     ecx, dword [ebp+20H]                    ; 1EA9 _ 8B. 4D, 20
        mov     dword [esp+0CH], ecx                    ; 1EAC _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 1EB0 _ 89. 54 24, 08
        mov     edx, dword [ebp-14H]                    ; 1EB4 _ 8B. 55, EC
        mov     dword [esp+4H], edx                     ; 1EB7 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1EBB _ 89. 04 24
        call    _sheet_refresh                          ; 1EBE _ E8, 00000000(rel)
        jmp     ?_108                                   ; 1EC3 _ EB, 77

?_105:  cmp     dword [ebp+1CH], 13                     ; 1EC5 _ 83. 7D, 1C, 0D
        jnz     ?_106                                   ; 1EC9 _ 75, 36
        mov     eax, dword [ebp+18H]                    ; 1ECB _ 8B. 45, 18
        mov     dword [ebp-14H], eax                    ; 1ECE _ 89. 45, EC
        mov     eax, dword [ebp+24H]                    ; 1ED1 _ 8B. 45, 24
        mov     edx, dword [ebp+10H]                    ; 1ED4 _ 8B. 55, 10
        mov     dword [esp+14H], edx                    ; 1ED7 _ 89. 54 24, 14
        mov     edx, dword [ebp+8H]                     ; 1EDB _ 8B. 55, 08
        mov     dword [esp+10H], edx                    ; 1EDE _ 89. 54 24, 10
        mov     edx, dword [ebp+0CH]                    ; 1EE2 _ 8B. 55, 0C
        mov     dword [esp+0CH], edx                    ; 1EE5 _ 89. 54 24, 0C
        mov     edx, dword [ebp+20H]                    ; 1EE9 _ 8B. 55, 20
        mov     dword [esp+8H], edx                     ; 1EEC _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 1EF0 _ 89. 44 24, 04
        mov     eax, dword [ebp-14H]                    ; 1EF4 _ 8B. 45, EC
        mov     dword [esp], eax                        ; 1EF7 _ 89. 04 24
        call    _api_linewin                            ; 1EFA _ E8, FFFFFAEA
        jmp     ?_108                                   ; 1EFF _ EB, 3B

?_106:  cmp     dword [ebp+1CH], 14                     ; 1F01 _ 83. 7D, 1C, 0E
        jnz     ?_107                                   ; 1F05 _ 75, 16
        mov     edx, dword [ebp+18H]                    ; 1F07 _ 8B. 55, 18
        mov     eax, dword [_shtctl]                    ; 1F0A _ A1, 00000284(d)
        mov     dword [esp+4H], edx                     ; 1F0F _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1F13 _ 89. 04 24
        call    _sheet_free                             ; 1F16 _ E8, 00000000(rel)
        jmp     ?_108                                   ; 1F1B _ EB, 1F

?_107:  cmp     dword [ebp+1CH], 15                     ; 1F1D _ 83. 7D, 1C, 0F
        jnz     ?_108                                   ; 1F21 _ 75, 19
        mov     eax, dword [ebp+24H]                    ; 1F23 _ 8B. 45, 24
        mov     edx, dword [ebp-10H]                    ; 1F26 _ 8B. 55, F0
        mov     dword [esp+8H], edx                     ; 1F29 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 1F2D _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 1F31 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 1F34 _ 89. 04 24
        call    _handle_keyboard                        ; 1F37 _ E8, FFFFFC15
?_108:  mov     eax, 0                                  ; 1F3C _ B8, 00000000
?_109:  add     esp, 48                                 ; 1F41 _ 83. C4, 30
        pop     ebx                                     ; 1F44 _ 5B
        pop     esi                                     ; 1F45 _ 5E
        pop     ebp                                     ; 1F46 _ 5D
        ret                                             ; 1F47 _ C3
; _kernel_api End of function

_cons_putchar:; Function begin
        push    ebp                                     ; 1F48 _ 55
        mov     ebp, esp                                ; 1F49 _ 89. E5
        push    ebx                                     ; 1F4B _ 53
        sub     esp, 52                                 ; 1F4C _ 83. EC, 34
        mov     eax, dword [ebp+8H]                     ; 1F4F _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 1F52 _ 8B. 55, 0C
        mov     byte [ebp-0CH], al                      ; 1F55 _ 88. 45, F4
        mov     eax, edx                                ; 1F58 _ 89. D0
        mov     byte [ebp-10H], al                      ; 1F5A _ 88. 45, F0
        mov     ebx, dword [?_360]                      ; 1F5D _ 8B. 1D, 00000014(d)
        mov     ecx, dword [?_359]                      ; 1F63 _ 8B. 0D, 00000010(d)
        mov     edx, dword [_g_Console]                 ; 1F69 _ 8B. 15, 0000000C(d)
        mov     eax, dword [_shtctl]                    ; 1F6F _ A1, 00000284(d)
        mov     dword [esp+10H], 0                      ; 1F74 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], ebx                    ; 1F7C _ 89. 5C 24, 0C
        mov     dword [esp+8H], ecx                     ; 1F80 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 1F84 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1F88 _ 89. 04 24
        call    _set_cursor                             ; 1F8B _ E8, FFFFE953
        movzx   eax, byte [ebp-0CH]                     ; 1F90 _ 0F B6. 45, F4
        mov     byte [?_362], al                        ; 1F94 _ A2, 0000001C(d)
        mov     byte [?_363], 0                         ; 1F99 _ C6. 05, 0000001D(d), 00
        mov     ebx, dword [?_360]                      ; 1FA0 _ 8B. 1D, 00000014(d)
        mov     ecx, dword [?_359]                      ; 1FA6 _ 8B. 0D, 00000010(d)
        mov     edx, dword [_g_Console]                 ; 1FAC _ 8B. 15, 0000000C(d)
        mov     eax, dword [_shtctl]                    ; 1FB2 _ A1, 00000284(d)
        mov     dword [esp+14H], ?_362                  ; 1FB7 _ C7. 44 24, 14, 0000001C(d)
        mov     dword [esp+10H], 7                      ; 1FBF _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ebx                    ; 1FC7 _ 89. 5C 24, 0C
        mov     dword [esp+8H], ecx                     ; 1FCB _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 1FCF _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1FD3 _ 89. 04 24
        call    _showString                             ; 1FD6 _ E8, 0000082B
        mov     eax, dword [?_359]                      ; 1FDB _ A1, 00000010(d)
        add     eax, 8                                  ; 1FE0 _ 83. C0, 08
        mov     dword [?_359], eax                      ; 1FE3 _ A3, 00000010(d)
        nop                                             ; 1FE8 _ 90
        add     esp, 52                                 ; 1FE9 _ 83. C4, 34
        pop     ebx                                     ; 1FEC _ 5B
        pop     ebp                                     ; 1FED _ 5D
        ret                                             ; 1FEE _ C3
; _cons_putchar End of function

_cons_newline:; Function begin
        push    ebp                                     ; 1FEF _ 55
        mov     ebp, esp                                ; 1FF0 _ 89. E5
        push    ebx                                     ; 1FF2 _ 53
        sub     esp, 52                                 ; 1FF3 _ 83. EC, 34
        cmp     dword [ebp+8H], 139                     ; 1FF6 _ 81. 7D, 08, 0000008B
        jg      ?_110                                   ; 1FFD _ 7F, 09
        add     dword [ebp+8H], 16                      ; 1FFF _ 83. 45, 08, 10
        jmp     ?_119                                   ; 2003 _ E9, 000000DB

?_110:  mov     dword [ebp-10H], 28                     ; 2008 _ C7. 45, F0, 0000001C
        jmp     ?_114                                   ; 200F _ EB, 50

?_111:  mov     dword [ebp-0CH], 8                      ; 2011 _ C7. 45, F4, 00000008
        jmp     ?_113                                   ; 2018 _ EB, 3A

?_112:  mov     eax, dword [ebp+0CH]                    ; 201A _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 201D _ 8B. 10
        mov     eax, dword [ebp-10H]                    ; 201F _ 8B. 45, F0
        lea     ecx, [eax+10H]                          ; 2022 _ 8D. 48, 10
        mov     eax, dword [ebp+0CH]                    ; 2025 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2028 _ 8B. 40, 04
        imul    eax, ecx                                ; 202B _ 0F AF. C1
        mov     ecx, dword [ebp-0CH]                    ; 202E _ 8B. 4D, F4
        add     eax, ecx                                ; 2031 _ 01. C8
        add     eax, edx                                ; 2033 _ 01. D0
        mov     edx, dword [ebp+0CH]                    ; 2035 _ 8B. 55, 0C
        mov     ecx, dword [edx]                        ; 2038 _ 8B. 0A
        mov     edx, dword [ebp+0CH]                    ; 203A _ 8B. 55, 0C
        mov     edx, dword [edx+4H]                     ; 203D _ 8B. 52, 04
        imul    edx, dword [ebp-10H]                    ; 2040 _ 0F AF. 55, F0
        mov     ebx, dword [ebp-0CH]                    ; 2044 _ 8B. 5D, F4
        add     edx, ebx                                ; 2047 _ 01. DA
        add     edx, ecx                                ; 2049 _ 01. CA
        movzx   eax, byte [eax]                         ; 204B _ 0F B6. 00
        mov     byte [edx], al                          ; 204E _ 88. 02
        add     dword [ebp-0CH], 1                      ; 2050 _ 83. 45, F4, 01
?_113:  cmp     dword [ebp-0CH], 247                    ; 2054 _ 81. 7D, F4, 000000F7
        jle     ?_112                                   ; 205B _ 7E, BD
        add     dword [ebp-10H], 1                      ; 205D _ 83. 45, F0, 01
?_114:  cmp     dword [ebp-10H], 139                    ; 2061 _ 81. 7D, F0, 0000008B
        jle     ?_111                                   ; 2068 _ 7E, A7
        mov     dword [ebp-10H], 140                    ; 206A _ C7. 45, F0, 0000008C
        jmp     ?_118                                   ; 2071 _ EB, 33

?_115:  mov     dword [ebp-0CH], 8                      ; 2073 _ C7. 45, F4, 00000008
        jmp     ?_117                                   ; 207A _ EB, 1D

?_116:  mov     eax, dword [ebp+0CH]                    ; 207C _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 207F _ 8B. 10
        mov     eax, dword [ebp+0CH]                    ; 2081 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2084 _ 8B. 40, 04
        imul    eax, dword [ebp-10H]                    ; 2087 _ 0F AF. 45, F0
        mov     ecx, dword [ebp-0CH]                    ; 208B _ 8B. 4D, F4
        add     eax, ecx                                ; 208E _ 01. C8
        add     eax, edx                                ; 2090 _ 01. D0
        mov     byte [eax], 0                           ; 2092 _ C6. 00, 00
        add     dword [ebp-0CH], 1                      ; 2095 _ 83. 45, F4, 01
?_117:  cmp     dword [ebp-0CH], 247                    ; 2099 _ 81. 7D, F4, 000000F7
        jle     ?_116                                   ; 20A0 _ 7E, DA
        add     dword [ebp-10H], 1                      ; 20A2 _ 83. 45, F0, 01
?_118:  cmp     dword [ebp-10H], 155                    ; 20A6 _ 81. 7D, F0, 0000009B
        jle     ?_115                                   ; 20AD _ 7E, C4
        mov     eax, dword [_shtctl]                    ; 20AF _ A1, 00000284(d)
        mov     dword [esp+14H], 156                    ; 20B4 _ C7. 44 24, 14, 0000009C
        mov     dword [esp+10H], 248                    ; 20BC _ C7. 44 24, 10, 000000F8
        mov     dword [esp+0CH], 28                     ; 20C4 _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 8                       ; 20CC _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp+0CH]                    ; 20D4 _ 8B. 55, 0C
        mov     dword [esp+4H], edx                     ; 20D7 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 20DB _ 89. 04 24
        call    _sheet_refresh                          ; 20DE _ E8, 00000000(rel)
?_119:  mov     eax, dword [_shtctl]                    ; 20E3 _ A1, 00000284(d)
        mov     dword [esp+14H], ?_343                  ; 20E8 _ C7. 44 24, 14, 00000030(d)
        mov     dword [esp+10H], 7                      ; 20F0 _ C7. 44 24, 10, 00000007
        mov     edx, dword [ebp+8H]                     ; 20F8 _ 8B. 55, 08
        mov     dword [esp+0CH], edx                    ; 20FB _ 89. 54 24, 0C
        mov     dword [esp+8H], 8                       ; 20FF _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp+0CH]                    ; 2107 _ 8B. 55, 0C
        mov     dword [esp+4H], edx                     ; 210A _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 210E _ 89. 04 24
        call    _showString                             ; 2111 _ E8, 000006F0
        mov     eax, dword [ebp+8H]                     ; 2116 _ 8B. 45, 08
        add     esp, 52                                 ; 2119 _ 83. C4, 34
        pop     ebx                                     ; 211C _ 5B
        pop     ebp                                     ; 211D _ 5D
        ret                                             ; 211E _ C3
; _cons_newline End of function

_init_screen8:; Function begin
        push    ebp                                     ; 211F _ 55
        mov     ebp, esp                                ; 2120 _ 89. E5
        push    ebx                                     ; 2122 _ 53
        sub     esp, 36                                 ; 2123 _ 83. EC, 24
        mov     eax, dword [ebp+10H]                    ; 2126 _ 8B. 45, 10
        lea     edx, [eax-1DH]                          ; 2129 _ 8D. 50, E3
        mov     eax, dword [ebp+0CH]                    ; 212C _ 8B. 45, 0C
        sub     eax, 1                                  ; 212F _ 83. E8, 01
        mov     dword [esp+18H], edx                    ; 2132 _ 89. 54 24, 18
        mov     dword [esp+14H], eax                    ; 2136 _ 89. 44 24, 14
        mov     dword [esp+10H], 0                      ; 213A _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 2142 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 14                      ; 214A _ C7. 44 24, 08, 0000000E
        mov     eax, dword [ebp+0CH]                    ; 2152 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2155 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2159 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 215C _ 89. 04 24
        call    _boxfill8                               ; 215F _ E8, 00000816
        mov     eax, dword [ebp+10H]                    ; 2164 _ 8B. 45, 10
        lea     ecx, [eax-1CH]                          ; 2167 _ 8D. 48, E4
        mov     eax, dword [ebp+0CH]                    ; 216A _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 216D _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 2170 _ 8B. 45, 10
        sub     eax, 28                                 ; 2173 _ 83. E8, 1C
        mov     dword [esp+18H], ecx                    ; 2176 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 217A _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 217E _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 2182 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 218A _ C7. 44 24, 08, 00000008
        mov     eax, dword [ebp+0CH]                    ; 2192 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2195 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2199 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 219C _ 89. 04 24
        call    _boxfill8                               ; 219F _ E8, 000007D6
        mov     eax, dword [ebp+10H]                    ; 21A4 _ 8B. 45, 10
        lea     ecx, [eax-1BH]                          ; 21A7 _ 8D. 48, E5
        mov     eax, dword [ebp+0CH]                    ; 21AA _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 21AD _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 21B0 _ 8B. 45, 10
        sub     eax, 27                                 ; 21B3 _ 83. E8, 1B
        mov     dword [esp+18H], ecx                    ; 21B6 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 21BA _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 21BE _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 21C2 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 7                       ; 21CA _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 21D2 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 21D5 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 21D9 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 21DC _ 89. 04 24
        call    _boxfill8                               ; 21DF _ E8, 00000796
        mov     eax, dword [ebp+10H]                    ; 21E4 _ 8B. 45, 10
        lea     ecx, [eax-1H]                           ; 21E7 _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 21EA _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 21ED _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 21F0 _ 8B. 45, 10
        sub     eax, 26                                 ; 21F3 _ 83. E8, 1A
        mov     dword [esp+18H], ecx                    ; 21F6 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 21FA _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 21FE _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 2202 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 220A _ C7. 44 24, 08, 00000008
        mov     eax, dword [ebp+0CH]                    ; 2212 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2215 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2219 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 221C _ 89. 04 24
        call    _boxfill8                               ; 221F _ E8, 00000756
        mov     eax, dword [ebp+10H]                    ; 2224 _ 8B. 45, 10
        lea     edx, [eax-18H]                          ; 2227 _ 8D. 50, E8
        mov     eax, dword [ebp+10H]                    ; 222A _ 8B. 45, 10
        sub     eax, 24                                 ; 222D _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 2230 _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 2234 _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 223C _ 89. 44 24, 10
        mov     dword [esp+0CH], 3                      ; 2240 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 7                       ; 2248 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 2250 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2253 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2257 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 225A _ 89. 04 24
        call    _boxfill8                               ; 225D _ E8, 00000718
        mov     eax, dword [ebp+10H]                    ; 2262 _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 2265 _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 2268 _ 8B. 45, 10
        sub     eax, 24                                 ; 226B _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 226E _ 89. 54 24, 18
        mov     dword [esp+14H], 2                      ; 2272 _ C7. 44 24, 14, 00000002
        mov     dword [esp+10H], eax                    ; 227A _ 89. 44 24, 10
        mov     dword [esp+0CH], 2                      ; 227E _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 7                       ; 2286 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 228E _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2291 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2295 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2298 _ 89. 04 24
        call    _boxfill8                               ; 229B _ E8, 000006DA
        mov     eax, dword [ebp+10H]                    ; 22A0 _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 22A3 _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 22A6 _ 8B. 45, 10
        sub     eax, 4                                  ; 22A9 _ 83. E8, 04
        mov     dword [esp+18H], edx                    ; 22AC _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 22B0 _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 22B8 _ 89. 44 24, 10
        mov     dword [esp+0CH], 3                      ; 22BC _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 15                      ; 22C4 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 22CC _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 22CF _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 22D3 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 22D6 _ 89. 04 24
        call    _boxfill8                               ; 22D9 _ E8, 0000069C
        mov     eax, dword [ebp+10H]                    ; 22DE _ 8B. 45, 10
        lea     edx, [eax-5H]                           ; 22E1 _ 8D. 50, FB
        mov     eax, dword [ebp+10H]                    ; 22E4 _ 8B. 45, 10
        sub     eax, 23                                 ; 22E7 _ 83. E8, 17
        mov     dword [esp+18H], edx                    ; 22EA _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 22EE _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 22F6 _ 89. 44 24, 10
        mov     dword [esp+0CH], 59                     ; 22FA _ C7. 44 24, 0C, 0000003B
        mov     dword [esp+8H], 15                      ; 2302 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 230A _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 230D _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2311 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2314 _ 89. 04 24
        call    _boxfill8                               ; 2317 _ E8, 0000065E
        mov     eax, dword [ebp+10H]                    ; 231C _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 231F _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 2322 _ 8B. 45, 10
        sub     eax, 3                                  ; 2325 _ 83. E8, 03
        mov     dword [esp+18H], edx                    ; 2328 _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 232C _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 2334 _ 89. 44 24, 10
        mov     dword [esp+0CH], 2                      ; 2338 _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 0                       ; 2340 _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp+0CH]                    ; 2348 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 234B _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 234F _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2352 _ 89. 04 24
        call    _boxfill8                               ; 2355 _ E8, 00000620
        mov     eax, dword [ebp+10H]                    ; 235A _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 235D _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 2360 _ 8B. 45, 10
        sub     eax, 24                                 ; 2363 _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 2366 _ 89. 54 24, 18
        mov     dword [esp+14H], 60                     ; 236A _ C7. 44 24, 14, 0000003C
        mov     dword [esp+10H], eax                    ; 2372 _ 89. 44 24, 10
        mov     dword [esp+0CH], 60                     ; 2376 _ C7. 44 24, 0C, 0000003C
        mov     dword [esp+8H], 0                       ; 237E _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp+0CH]                    ; 2386 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2389 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 238D _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2390 _ 89. 04 24
        call    _boxfill8                               ; 2393 _ E8, 000005E2
        mov     eax, dword [ebp+10H]                    ; 2398 _ 8B. 45, 10
        lea     ebx, [eax-18H]                          ; 239B _ 8D. 58, E8
        mov     eax, dword [ebp+0CH]                    ; 239E _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 23A1 _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 23A4 _ 8B. 45, 10
        lea     edx, [eax-18H]                          ; 23A7 _ 8D. 50, E8
        mov     eax, dword [ebp+0CH]                    ; 23AA _ 8B. 45, 0C
        sub     eax, 47                                 ; 23AD _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 23B0 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 23B4 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 23B8 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 23BC _ 89. 44 24, 0C
        mov     dword [esp+8H], 15                      ; 23C0 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 23C8 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 23CB _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 23CF _ 8B. 45, 08
        mov     dword [esp], eax                        ; 23D2 _ 89. 04 24
        call    _boxfill8                               ; 23D5 _ E8, 000005A0
        mov     eax, dword [ebp+10H]                    ; 23DA _ 8B. 45, 10
        lea     ebx, [eax-4H]                           ; 23DD _ 8D. 58, FC
        mov     eax, dword [ebp+0CH]                    ; 23E0 _ 8B. 45, 0C
        lea     ecx, [eax-2FH]                          ; 23E3 _ 8D. 48, D1
        mov     eax, dword [ebp+10H]                    ; 23E6 _ 8B. 45, 10
        lea     edx, [eax-17H]                          ; 23E9 _ 8D. 50, E9
        mov     eax, dword [ebp+0CH]                    ; 23EC _ 8B. 45, 0C
        sub     eax, 47                                 ; 23EF _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 23F2 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 23F6 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 23FA _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 23FE _ 89. 44 24, 0C
        mov     dword [esp+8H], 15                      ; 2402 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 240A _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 240D _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2411 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2414 _ 89. 04 24
        call    _boxfill8                               ; 2417 _ E8, 0000055E
        mov     eax, dword [ebp+10H]                    ; 241C _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 241F _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 2422 _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 2425 _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 2428 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 242B _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 242E _ 8B. 45, 0C
        sub     eax, 47                                 ; 2431 _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 2434 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 2438 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 243C _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 2440 _ 89. 44 24, 0C
        mov     dword [esp+8H], 7                       ; 2444 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 244C _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 244F _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2453 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2456 _ 89. 04 24
        call    _boxfill8                               ; 2459 _ E8, 0000051C
        mov     eax, dword [ebp+10H]                    ; 245E _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 2461 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 2464 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 2467 _ 8D. 48, FD
        mov     eax, dword [ebp+10H]                    ; 246A _ 8B. 45, 10
        lea     edx, [eax-18H]                          ; 246D _ 8D. 50, E8
        mov     eax, dword [ebp+0CH]                    ; 2470 _ 8B. 45, 0C
        sub     eax, 3                                  ; 2473 _ 83. E8, 03
        mov     dword [esp+18H], ebx                    ; 2476 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 247A _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 247E _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 2482 _ 89. 44 24, 0C
        mov     dword [esp+8H], 7                       ; 2486 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 248E _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2491 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2495 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2498 _ 89. 04 24
        call    _boxfill8                               ; 249B _ E8, 000004DA
        nop                                             ; 24A0 _ 90
        add     esp, 36                                 ; 24A1 _ 83. C4, 24
        pop     ebx                                     ; 24A4 _ 5B
        pop     ebp                                     ; 24A5 _ 5D
        ret                                             ; 24A6 _ C3
; _init_screen8 End of function

_computeMousePosition:; Function begin
        push    ebp                                     ; 24A7 _ 55
        mov     ebp, esp                                ; 24A8 _ 89. E5
        mov     eax, dword [ebp+10H]                    ; 24AA _ 8B. 45, 10
        mov     edx, dword [eax+4H]                     ; 24AD _ 8B. 50, 04
        mov     eax, dword [_mx]                        ; 24B0 _ A1, 00000154(d)
        add     eax, edx                                ; 24B5 _ 01. D0
        mov     dword [_mx], eax                        ; 24B7 _ A3, 00000154(d)
        mov     eax, dword [ebp+10H]                    ; 24BC _ 8B. 45, 10
        mov     edx, dword [eax+8H]                     ; 24BF _ 8B. 50, 08
        mov     eax, dword [_my]                        ; 24C2 _ A1, 00000158(d)
        add     eax, edx                                ; 24C7 _ 01. D0
        mov     dword [_my], eax                        ; 24C9 _ A3, 00000158(d)
        mov     eax, dword [_mx]                        ; 24CE _ A1, 00000154(d)
        test    eax, eax                                ; 24D3 _ 85. C0
        jns     ?_120                                   ; 24D5 _ 79, 0A
        mov     dword [_mx], 0                          ; 24D7 _ C7. 05, 00000154(d), 00000000
?_120:  mov     eax, dword [_my]                        ; 24E1 _ A1, 00000158(d)
        test    eax, eax                                ; 24E6 _ 85. C0
        jns     ?_121                                   ; 24E8 _ 79, 0A
        mov     dword [_my], 0                          ; 24EA _ C7. 05, 00000158(d), 00000000
?_121:  mov     edx, dword [_xsize]                     ; 24F4 _ 8B. 15, 00000160(d)
        mov     eax, dword [_mx]                        ; 24FA _ A1, 00000154(d)
        cmp     edx, eax                                ; 24FF _ 39. C2
        jg      ?_122                                   ; 2501 _ 7F, 0D
        mov     eax, dword [_xsize]                     ; 2503 _ A1, 00000160(d)
        sub     eax, 1                                  ; 2508 _ 83. E8, 01
        mov     dword [_mx], eax                        ; 250B _ A3, 00000154(d)
?_122:  mov     edx, dword [_ysize]                     ; 2510 _ 8B. 15, 00000164(d)
        mov     eax, dword [_my]                        ; 2516 _ A1, 00000158(d)
        cmp     edx, eax                                ; 251B _ 39. C2
        jg      ?_123                                   ; 251D _ 7F, 0D
        mov     eax, dword [_ysize]                     ; 251F _ A1, 00000164(d)
        sub     eax, 1                                  ; 2524 _ 83. E8, 01
        mov     dword [_my], eax                        ; 2527 _ A3, 00000158(d)
?_123:  nop                                             ; 252C _ 90
        pop     ebp                                     ; 252D _ 5D
        ret                                             ; 252E _ C3
; _computeMousePosition End of function

_show_mouse_info:; Function begin
        push    ebp                                     ; 252F _ 55
        mov     ebp, esp                                ; 2530 _ 89. E5
        sub     esp, 56                                 ; 2532 _ 83. EC, 38
        mov     eax, dword [_buf_back]                  ; 2535 _ A1, 00000168(d)
        mov     dword [ebp-10H], eax                    ; 253A _ 89. 45, F0
        mov     byte [ebp-11H], 0                       ; 253D _ C6. 45, EF, 00
        mov     dword [ebp-18H], 0                      ; 2541 _ C7. 45, E8, 00000000
        call    _io_sti                                 ; 2548 _ E8, 00000000(rel)
        mov     dword [esp], _mouseinfo                 ; 254D _ C7. 04 24, 00000048(d)
        call    _fifo8_get                              ; 2554 _ E8, 00000000(rel)
        mov     byte [ebp-11H], al                      ; 2559 _ 88. 45, EF
        movzx   eax, byte [ebp-11H]                     ; 255C _ 0F B6. 45, EF
        mov     dword [esp+4H], eax                     ; 2560 _ 89. 44 24, 04
        mov     dword [esp], _mdec                      ; 2564 _ C7. 04 24, 00000120(d)
        call    _mouse_decode                           ; 256B _ E8, 0000097E
        test    eax, eax                                ; 2570 _ 85. C0
        je      ?_131                                   ; 2572 _ 0F 84, 0000026A
        mov     dword [esp+8H], _mdec                   ; 2578 _ C7. 44 24, 08, 00000120(d)
        mov     eax, dword [ebp+0CH]                    ; 2580 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2583 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2587 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 258A _ 89. 04 24
        call    _computeMousePosition                   ; 258D _ E8, FFFFFF15
        mov     edx, dword [_my]                        ; 2592 _ 8B. 15, 00000158(d)
        mov     eax, dword [_mx]                        ; 2598 _ A1, 00000154(d)
        mov     dword [esp+0CH], edx                    ; 259D _ 89. 54 24, 0C
        mov     dword [esp+8H], eax                     ; 25A1 _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 25A5 _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 25A8 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 25AC _ 8B. 45, 08
        mov     dword [esp], eax                        ; 25AF _ 89. 04 24
        call    _sheet_slide                            ; 25B2 _ E8, 00000000(rel)
        mov     eax, dword [?_368]                      ; 25B7 _ A1, 0000012C(d)
        and     eax, 01H                                ; 25BC _ 83. E0, 01
        test    eax, eax                                ; 25BF _ 85. C0
        je      ?_129                                   ; 25C1 _ 0F 84, 0000020E
        mov     eax, dword [_mmx]                       ; 25C7 _ A1, 00000118(d)
        test    eax, eax                                ; 25CC _ 85. C0
        jns     ?_128                                   ; 25CE _ 0F 89, 00000190
        mov     eax, dword [ebp+8H]                     ; 25D4 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 25D7 _ 8B. 40, 10
        sub     eax, 1                                  ; 25DA _ 83. E8, 01
        mov     dword [ebp-0CH], eax                    ; 25DD _ 89. 45, F4
        jmp     ?_127                                   ; 25E0 _ E9, 00000173

?_124:  mov     eax, dword [ebp+8H]                     ; 25E5 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 25E8 _ 8B. 55, F4
        add     edx, 4                                  ; 25EB _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 25EE _ 8B. 44 90, 04
        mov     dword [ebp-18H], eax                    ; 25F2 _ 89. 45, E8
        mov     edx, dword [_mx]                        ; 25F5 _ 8B. 15, 00000154(d)
        mov     eax, dword [ebp-18H]                    ; 25FB _ 8B. 45, E8
        mov     eax, dword [eax+0CH]                    ; 25FE _ 8B. 40, 0C
        sub     edx, eax                                ; 2601 _ 29. C2
        mov     eax, edx                                ; 2603 _ 89. D0
        mov     dword [ebp-1CH], eax                    ; 2605 _ 89. 45, E4
        mov     edx, dword [_my]                        ; 2608 _ 8B. 15, 00000158(d)
        mov     eax, dword [ebp-18H]                    ; 260E _ 8B. 45, E8
        mov     eax, dword [eax+10H]                    ; 2611 _ 8B. 40, 10
        sub     edx, eax                                ; 2614 _ 29. C2
        mov     eax, edx                                ; 2616 _ 89. D0
        mov     dword [ebp-20H], eax                    ; 2618 _ 89. 45, E0
        cmp     dword [ebp-1CH], 0                      ; 261B _ 83. 7D, E4, 00
        js      ?_126                                   ; 261F _ 0F 88, 0000012F
        mov     eax, dword [ebp-18H]                    ; 2625 _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 2628 _ 8B. 40, 04
        cmp     dword [ebp-1CH], eax                    ; 262B _ 39. 45, E4
        jge     ?_126                                   ; 262E _ 0F 8D, 00000120
        cmp     dword [ebp-20H], 0                      ; 2634 _ 83. 7D, E0, 00
        js      ?_126                                   ; 2638 _ 0F 88, 00000116
        mov     eax, dword [ebp-18H]                    ; 263E _ 8B. 45, E8
        mov     eax, dword [eax+8H]                     ; 2641 _ 8B. 40, 08
        cmp     dword [ebp-20H], eax                    ; 2644 _ 39. 45, E0
        jge     ?_126                                   ; 2647 _ 0F 8D, 00000107
        mov     eax, dword [ebp-18H]                    ; 264D _ 8B. 45, E8
        mov     edx, dword [eax]                        ; 2650 _ 8B. 10
        mov     eax, dword [ebp-18H]                    ; 2652 _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 2655 _ 8B. 40, 04
        imul    eax, dword [ebp-20H]                    ; 2658 _ 0F AF. 45, E0
        mov     ecx, dword [ebp-1CH]                    ; 265C _ 8B. 4D, E4
        add     eax, ecx                                ; 265F _ 01. C8
        add     eax, edx                                ; 2661 _ 01. D0
        movzx   eax, byte [eax]                         ; 2663 _ 0F B6. 00
        movzx   eax, al                                 ; 2666 _ 0F B6. C0
        mov     edx, dword [ebp-18H]                    ; 2669 _ 8B. 55, E8
        mov     edx, dword [edx+14H]                    ; 266C _ 8B. 52, 14
        cmp     eax, edx                                ; 266F _ 39. D0
        je      ?_126                                   ; 2671 _ 0F 84, 000000DD
        mov     eax, dword [ebp+8H]                     ; 2677 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 267A _ 8B. 40, 10
        sub     eax, 1                                  ; 267D _ 83. E8, 01
        mov     dword [esp+8H], eax                     ; 2680 _ 89. 44 24, 08
        mov     eax, dword [ebp-18H]                    ; 2684 _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 2687 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 268B _ 8B. 45, 08
        mov     dword [esp], eax                        ; 268E _ 89. 04 24
        call    _sheet_updown                           ; 2691 _ E8, 00000000(rel)
        cmp     dword [ebp-1CH], 2                      ; 2696 _ 83. 7D, E4, 02
        jle     ?_125                                   ; 269A _ 7E, 36
        mov     eax, dword [ebp-18H]                    ; 269C _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 269F _ 8B. 40, 04
        sub     eax, 3                                  ; 26A2 _ 83. E8, 03
        cmp     dword [ebp-1CH], eax                    ; 26A5 _ 39. 45, E4
        jge     ?_125                                   ; 26A8 _ 7D, 28
        cmp     dword [ebp-20H], 2                      ; 26AA _ 83. 7D, E0, 02
        jle     ?_125                                   ; 26AE _ 7E, 22
        cmp     dword [ebp-20H], 20                     ; 26B0 _ 83. 7D, E0, 14
        jg      ?_125                                   ; 26B4 _ 7F, 1C
        mov     eax, dword [_mx]                        ; 26B6 _ A1, 00000154(d)
        mov     dword [_mmx], eax                       ; 26BB _ A3, 00000118(d)
        mov     eax, dword [_my]                        ; 26C0 _ A1, 00000158(d)
        mov     dword [_mmy], eax                       ; 26C5 _ A3, 0000011C(d)
        mov     eax, dword [ebp-18H]                    ; 26CA _ 8B. 45, E8
        mov     dword [_mouse_clicked_sht], eax         ; 26CD _ A3, 0000015C(d)
?_125:  mov     eax, dword [ebp-18H]                    ; 26D2 _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 26D5 _ 8B. 40, 04
        sub     eax, 21                                 ; 26D8 _ 83. E8, 15
        cmp     dword [ebp-1CH], eax                    ; 26DB _ 39. 45, E4
        jl      ?_130                                   ; 26DE _ 0F 8C, 000000FD
        mov     eax, dword [ebp-18H]                    ; 26E4 _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 26E7 _ 8B. 40, 04
        sub     eax, 5                                  ; 26EA _ 83. E8, 05
        cmp     dword [ebp-1CH], eax                    ; 26ED _ 39. 45, E4
        jge     ?_130                                   ; 26F0 _ 0F 8D, 000000EB
        cmp     dword [ebp-20H], 4                      ; 26F6 _ 83. 7D, E0, 04
        jle     ?_130                                   ; 26FA _ 0F 8E, 000000E1
        cmp     dword [ebp-20H], 18                     ; 2700 _ 83. 7D, E0, 12
        jg      ?_130                                   ; 2704 _ 0F 8F, 000000D7
        mov     eax, dword [ebp-18H]                    ; 270A _ 8B. 45, E8
        mov     eax, dword [eax+20H]                    ; 270D _ 8B. 40, 20
        test    eax, eax                                ; 2710 _ 85. C0
        je      ?_130                                   ; 2712 _ 0F 84, 000000C9
        call    _io_cli                                 ; 2718 _ E8, 00000000(rel)
        mov     eax, dword [ebp-18H]                    ; 271D _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 2720 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2724 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2727 _ 89. 04 24
        call    _sheet_free                             ; 272A _ E8, 00000000(rel)
        call    _get_addr_code32                        ; 272F _ E8, 00000000(rel)
        mov     dword [ebp-24H], eax                    ; 2734 _ 89. 45, DC
        mov     ecx, _kill_process                      ; 2737 _ B9, 00000CCA(d)
        mov     eax, dword [ebp-18H]                    ; 273C _ 8B. 45, E8
        mov     edx, dword [eax+20H]                    ; 273F _ 8B. 50, 20
        mov     eax, ecx                                ; 2742 _ 89. C8
        sub     eax, dword [ebp-24H]                    ; 2744 _ 2B. 45, DC
        mov     dword [edx+4CH], eax                    ; 2747 _ 89. 42, 4C
        call    _io_sti                                 ; 274A _ E8, 00000000(rel)
        jmp     ?_130                                   ; 274F _ E9, 0000008D

?_126:  sub     dword [ebp-0CH], 1                      ; 2754 _ 83. 6D, F4, 01
?_127:  cmp     dword [ebp-0CH], 0                      ; 2758 _ 83. 7D, F4, 00
        jg      ?_124                                   ; 275C _ 0F 8F, FFFFFE83
        jmp     ?_131                                   ; 2762 _ EB, 7E

?_128:  mov     edx, dword [_mx]                        ; 2764 _ 8B. 15, 00000154(d)
        mov     eax, dword [_mmx]                       ; 276A _ A1, 00000118(d)
        sub     edx, eax                                ; 276F _ 29. C2
        mov     eax, edx                                ; 2771 _ 89. D0
        mov     dword [ebp-1CH], eax                    ; 2773 _ 89. 45, E4
        mov     edx, dword [_my]                        ; 2776 _ 8B. 15, 00000158(d)
        mov     eax, dword [_mmy]                       ; 277C _ A1, 0000011C(d)
        sub     edx, eax                                ; 2781 _ 29. C2
        mov     eax, edx                                ; 2783 _ 89. D0
        mov     dword [ebp-20H], eax                    ; 2785 _ 89. 45, E0
        mov     eax, dword [_mouse_clicked_sht]         ; 2788 _ A1, 0000015C(d)
        mov     edx, dword [eax+10H]                    ; 278D _ 8B. 50, 10
        mov     eax, dword [ebp-20H]                    ; 2790 _ 8B. 45, E0
        lea     ecx, [edx+eax]                          ; 2793 _ 8D. 0C 02
        mov     eax, dword [_mouse_clicked_sht]         ; 2796 _ A1, 0000015C(d)
        mov     edx, dword [eax+0CH]                    ; 279B _ 8B. 50, 0C
        mov     eax, dword [ebp-1CH]                    ; 279E _ 8B. 45, E4
        add     edx, eax                                ; 27A1 _ 01. C2
        mov     eax, dword [_mouse_clicked_sht]         ; 27A3 _ A1, 0000015C(d)
        mov     dword [esp+0CH], ecx                    ; 27A8 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 27AC _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 27B0 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 27B4 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 27B7 _ 89. 04 24
        call    _sheet_slide                            ; 27BA _ E8, 00000000(rel)
        mov     eax, dword [_mx]                        ; 27BF _ A1, 00000154(d)
        mov     dword [_mmx], eax                       ; 27C4 _ A3, 00000118(d)
        mov     eax, dword [_my]                        ; 27C9 _ A1, 00000158(d)
        mov     dword [_mmy], eax                       ; 27CE _ A3, 0000011C(d)
        jmp     ?_131                                   ; 27D3 _ EB, 0D

?_129:  mov     dword [_mmx], -1                        ; 27D5 _ C7. 05, 00000118(d), FFFFFFFF
        jmp     ?_131                                   ; 27DF _ EB, 01

?_130:  nop                                             ; 27E1 _ 90
?_131:  nop                                             ; 27E2 _ 90
        leave                                           ; 27E3 _ C9
        ret                                             ; 27E4 _ C3
; _show_mouse_info End of function

_initBootInfo:; Function begin
        push    ebp                                     ; 27E5 _ 55
        mov     ebp, esp                                ; 27E6 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 27E8 _ 8B. 45, 08
        mov     dword [eax], -536870912                 ; 27EB _ C7. 00, E0000000
        mov     eax, dword [ebp+8H]                     ; 27F1 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 640                      ; 27F4 _ 66: C7. 40, 04, 0280
        mov     eax, dword [ebp+8H]                     ; 27FA _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 480                      ; 27FD _ 66: C7. 40, 06, 01E0
        nop                                             ; 2803 _ 90
        pop     ebp                                     ; 2804 _ 5D
        ret                                             ; 2805 _ C3
; _initBootInfo End of function

_showString:; Function begin
        push    ebp                                     ; 2806 _ 55
        mov     ebp, esp                                ; 2807 _ 89. E5
        push    ebx                                     ; 2809 _ 53
        sub     esp, 68                                 ; 280A _ 83. EC, 44
        mov     eax, dword [ebp+18H]                    ; 280D _ 8B. 45, 18
        mov     byte [ebp-1CH], al                      ; 2810 _ 88. 45, E4
        mov     eax, dword [ebp+10H]                    ; 2813 _ 8B. 45, 10
        mov     dword [ebp-0CH], eax                    ; 2816 _ 89. 45, F4
        mov     dword [ebp-10H], 0                      ; 2819 _ C7. 45, F0, 00000000
        jmp     ?_133                                   ; 2820 _ EB, 4B

?_132:  mov     eax, dword [ebp+1CH]                    ; 2822 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 2825 _ 0F B6. 00
        movzx   eax, al                                 ; 2828 _ 0F B6. C0
        shl     eax, 4                                  ; 282B _ C1. E0, 04
        lea     ebx, [_systemFont+eax]                  ; 282E _ 8D. 98, 00000000(d)
        movsx   eax, byte [ebp-1CH]                     ; 2834 _ 0F BE. 45, E4
        mov     edx, dword [ebp+0CH]                    ; 2838 _ 8B. 55, 0C
        mov     ecx, dword [edx+4H]                     ; 283B _ 8B. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 283E _ 8B. 55, 0C
        mov     edx, dword [edx]                        ; 2841 _ 8B. 12
        mov     dword [esp+14H], ebx                    ; 2843 _ 89. 5C 24, 14
        mov     dword [esp+10H], eax                    ; 2847 _ 89. 44 24, 10
        mov     eax, dword [ebp+14H]                    ; 284B _ 8B. 45, 14
        mov     dword [esp+0CH], eax                    ; 284E _ 89. 44 24, 0C
        mov     eax, dword [ebp+10H]                    ; 2852 _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 2855 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 2859 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 285D _ 89. 14 24
        call    _showFont8                              ; 2860 _ E8, 00000165
        add     dword [ebp+10H], 8                      ; 2865 _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 2869 _ 83. 45, 1C, 01
?_133:  mov     eax, dword [ebp+1CH]                    ; 286D _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 2870 _ 0F B6. 00
        test    al, al                                  ; 2873 _ 84. C0
        jnz     ?_132                                   ; 2875 _ 75, AB
        mov     eax, dword [ebp+14H]                    ; 2877 _ 8B. 45, 14
        add     eax, 16                                 ; 287A _ 83. C0, 10
        mov     dword [esp+14H], eax                    ; 287D _ 89. 44 24, 14
        mov     eax, dword [ebp+10H]                    ; 2881 _ 8B. 45, 10
        mov     dword [esp+10H], eax                    ; 2884 _ 89. 44 24, 10
        mov     eax, dword [ebp+14H]                    ; 2888 _ 8B. 45, 14
        mov     dword [esp+0CH], eax                    ; 288B _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 288F _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 2892 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 2896 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2899 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 289D _ 8B. 45, 08
        mov     dword [esp], eax                        ; 28A0 _ 89. 04 24
        call    _sheet_refresh                          ; 28A3 _ E8, 00000000(rel)
        nop                                             ; 28A8 _ 90
        add     esp, 68                                 ; 28A9 _ 83. C4, 44
        pop     ebx                                     ; 28AC _ 5B
        pop     ebp                                     ; 28AD _ 5D
        ret                                             ; 28AE _ C3
; _showString End of function

_init_palette:; Function begin
        push    ebp                                     ; 28AF _ 55
        mov     ebp, esp                                ; 28B0 _ 89. E5
        sub     esp, 24                                 ; 28B2 _ 83. EC, 18
        mov     dword [esp+8H], _table_rgb.2597         ; 28B5 _ C7. 44 24, 08, 00000140(d)
        mov     dword [esp+4H], 15                      ; 28BD _ C7. 44 24, 04, 0000000F
        mov     dword [esp], 0                          ; 28C5 _ C7. 04 24, 00000000
        call    _set_palette                            ; 28CC _ E8, 00000003
        nop                                             ; 28D1 _ 90
        leave                                           ; 28D2 _ C9
        ret                                             ; 28D3 _ C3
; _init_palette End of function

_set_palette:; Function begin
        push    ebp                                     ; 28D4 _ 55
        mov     ebp, esp                                ; 28D5 _ 89. E5
        sub     esp, 40                                 ; 28D7 _ 83. EC, 28
        call    _io_load_eflags                         ; 28DA _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 28DF _ 89. 45, F0
        call    _io_cli                                 ; 28E2 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 28E7 _ 8B. 45, 08
        mov     dword [esp+4H], eax                     ; 28EA _ 89. 44 24, 04
        mov     dword [esp], 968                        ; 28EE _ C7. 04 24, 000003C8
        call    _io_out8                                ; 28F5 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 28FA _ 8B. 45, 08
        mov     dword [ebp-0CH], eax                    ; 28FD _ 89. 45, F4
        jmp     ?_135                                   ; 2900 _ EB, 62

?_134:  mov     eax, dword [ebp+10H]                    ; 2902 _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 2905 _ 0F B6. 00
        shr     al, 2                                   ; 2908 _ C0. E8, 02
        movzx   eax, al                                 ; 290B _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 290E _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 2912 _ C7. 04 24, 000003C9
        call    _io_out8                                ; 2919 _ E8, 00000000(rel)
        mov     eax, dword [ebp+10H]                    ; 291E _ 8B. 45, 10
        add     eax, 1                                  ; 2921 _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 2924 _ 0F B6. 00
        shr     al, 2                                   ; 2927 _ C0. E8, 02
        movzx   eax, al                                 ; 292A _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 292D _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 2931 _ C7. 04 24, 000003C9
        call    _io_out8                                ; 2938 _ E8, 00000000(rel)
        mov     eax, dword [ebp+10H]                    ; 293D _ 8B. 45, 10
        add     eax, 2                                  ; 2940 _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 2943 _ 0F B6. 00
        shr     al, 2                                   ; 2946 _ C0. E8, 02
        movzx   eax, al                                 ; 2949 _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 294C _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 2950 _ C7. 04 24, 000003C9
        call    _io_out8                                ; 2957 _ E8, 00000000(rel)
        add     dword [ebp+10H], 3                      ; 295C _ 83. 45, 10, 03
        add     dword [ebp-0CH], 1                      ; 2960 _ 83. 45, F4, 01
?_135:  mov     eax, dword [ebp-0CH]                    ; 2964 _ 8B. 45, F4
        cmp     eax, dword [ebp+0CH]                    ; 2967 _ 3B. 45, 0C
        jle     ?_134                                   ; 296A _ 7E, 96
        mov     eax, dword [ebp-10H]                    ; 296C _ 8B. 45, F0
        mov     dword [esp], eax                        ; 296F _ 89. 04 24
        call    _io_store_eflags                        ; 2972 _ E8, 00000000(rel)
        nop                                             ; 2977 _ 90
        leave                                           ; 2978 _ C9
        ret                                             ; 2979 _ C3
; _set_palette End of function

_boxfill8:; Function begin
        push    ebp                                     ; 297A _ 55
        mov     ebp, esp                                ; 297B _ 89. E5
        sub     esp, 20                                 ; 297D _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 2980 _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 2983 _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 2986 _ 8B. 45, 18
        mov     dword [ebp-8H], eax                     ; 2989 _ 89. 45, F8
        jmp     ?_139                                   ; 298C _ EB, 31

?_136:  mov     eax, dword [ebp+14H]                    ; 298E _ 8B. 45, 14
        mov     dword [ebp-4H], eax                     ; 2991 _ 89. 45, FC
        jmp     ?_138                                   ; 2994 _ EB, 1D

?_137:  mov     eax, dword [ebp-8H]                     ; 2996 _ 8B. 45, F8
        imul    eax, dword [ebp+0CH]                    ; 2999 _ 0F AF. 45, 0C
        mov     edx, dword [ebp-4H]                     ; 299D _ 8B. 55, FC
        add     eax, edx                                ; 29A0 _ 01. D0
        mov     edx, eax                                ; 29A2 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 29A4 _ 8B. 45, 08
        add     edx, eax                                ; 29A7 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 29A9 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 29AD _ 88. 02
        add     dword [ebp-4H], 1                       ; 29AF _ 83. 45, FC, 01
?_138:  mov     eax, dword [ebp-4H]                     ; 29B3 _ 8B. 45, FC
        cmp     eax, dword [ebp+1CH]                    ; 29B6 _ 3B. 45, 1C
        jle     ?_137                                   ; 29B9 _ 7E, DB
        add     dword [ebp-8H], 1                       ; 29BB _ 83. 45, F8, 01
?_139:  mov     eax, dword [ebp-8H]                     ; 29BF _ 8B. 45, F8
        cmp     eax, dword [ebp+20H]                    ; 29C2 _ 3B. 45, 20
        jle     ?_136                                   ; 29C5 _ 7E, C7
        nop                                             ; 29C7 _ 90
        leave                                           ; 29C8 _ C9
        ret                                             ; 29C9 _ C3
; _boxfill8 End of function

_showFont8:; Function begin
        push    ebp                                     ; 29CA _ 55
        mov     ebp, esp                                ; 29CB _ 89. E5
        sub     esp, 20                                 ; 29CD _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 29D0 _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 29D3 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 29D6 _ C7. 45, FC, 00000000
        jmp     ?_149                                   ; 29DD _ E9, 0000015C

?_140:  mov     edx, dword [ebp-4H]                     ; 29E2 _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 29E5 _ 8B. 45, 1C
        add     eax, edx                                ; 29E8 _ 01. D0
        movzx   eax, byte [eax]                         ; 29EA _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 29ED _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 29F0 _ 80. 7D, FB, 00
        jns     ?_141                                   ; 29F4 _ 79, 1E
        mov     edx, dword [ebp+14H]                    ; 29F6 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 29F9 _ 8B. 45, FC
        add     eax, edx                                ; 29FC _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 29FE _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 2A02 _ 8B. 55, 10
        add     eax, edx                                ; 2A05 _ 01. D0
        mov     edx, eax                                ; 2A07 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2A09 _ 8B. 45, 08
        add     edx, eax                                ; 2A0C _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 2A0E _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 2A12 _ 88. 02
?_141:  movsx   eax, byte [ebp-5H]                      ; 2A14 _ 0F BE. 45, FB
        and     eax, 40H                                ; 2A18 _ 83. E0, 40
        test    eax, eax                                ; 2A1B _ 85. C0
        jz      ?_142                                   ; 2A1D _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 2A1F _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 2A22 _ 8B. 45, FC
        add     eax, edx                                ; 2A25 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 2A27 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 2A2B _ 8B. 55, 10
        add     eax, edx                                ; 2A2E _ 01. D0
        lea     edx, [eax+1H]                           ; 2A30 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2A33 _ 8B. 45, 08
        add     edx, eax                                ; 2A36 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 2A38 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 2A3C _ 88. 02
?_142:  movsx   eax, byte [ebp-5H]                      ; 2A3E _ 0F BE. 45, FB
        and     eax, 20H                                ; 2A42 _ 83. E0, 20
        test    eax, eax                                ; 2A45 _ 85. C0
        jz      ?_143                                   ; 2A47 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 2A49 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 2A4C _ 8B. 45, FC
        add     eax, edx                                ; 2A4F _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 2A51 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 2A55 _ 8B. 55, 10
        add     eax, edx                                ; 2A58 _ 01. D0
        lea     edx, [eax+2H]                           ; 2A5A _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 2A5D _ 8B. 45, 08
        add     edx, eax                                ; 2A60 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 2A62 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 2A66 _ 88. 02
?_143:  movsx   eax, byte [ebp-5H]                      ; 2A68 _ 0F BE. 45, FB
        and     eax, 10H                                ; 2A6C _ 83. E0, 10
        test    eax, eax                                ; 2A6F _ 85. C0
        jz      ?_144                                   ; 2A71 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 2A73 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 2A76 _ 8B. 45, FC
        add     eax, edx                                ; 2A79 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 2A7B _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 2A7F _ 8B. 55, 10
        add     eax, edx                                ; 2A82 _ 01. D0
        lea     edx, [eax+3H]                           ; 2A84 _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 2A87 _ 8B. 45, 08
        add     edx, eax                                ; 2A8A _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 2A8C _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 2A90 _ 88. 02
?_144:  movsx   eax, byte [ebp-5H]                      ; 2A92 _ 0F BE. 45, FB
        and     eax, 08H                                ; 2A96 _ 83. E0, 08
        test    eax, eax                                ; 2A99 _ 85. C0
        jz      ?_145                                   ; 2A9B _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 2A9D _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 2AA0 _ 8B. 45, FC
        add     eax, edx                                ; 2AA3 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 2AA5 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 2AA9 _ 8B. 55, 10
        add     eax, edx                                ; 2AAC _ 01. D0
        lea     edx, [eax+4H]                           ; 2AAE _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2AB1 _ 8B. 45, 08
        add     edx, eax                                ; 2AB4 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 2AB6 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 2ABA _ 88. 02
?_145:  movsx   eax, byte [ebp-5H]                      ; 2ABC _ 0F BE. 45, FB
        and     eax, 04H                                ; 2AC0 _ 83. E0, 04
        test    eax, eax                                ; 2AC3 _ 85. C0
        jz      ?_146                                   ; 2AC5 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 2AC7 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 2ACA _ 8B. 45, FC
        add     eax, edx                                ; 2ACD _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 2ACF _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 2AD3 _ 8B. 55, 10
        add     eax, edx                                ; 2AD6 _ 01. D0
        lea     edx, [eax+5H]                           ; 2AD8 _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 2ADB _ 8B. 45, 08
        add     edx, eax                                ; 2ADE _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 2AE0 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 2AE4 _ 88. 02
?_146:  movsx   eax, byte [ebp-5H]                      ; 2AE6 _ 0F BE. 45, FB
        and     eax, 02H                                ; 2AEA _ 83. E0, 02
        test    eax, eax                                ; 2AED _ 85. C0
        jz      ?_147                                   ; 2AEF _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 2AF1 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 2AF4 _ 8B. 45, FC
        add     eax, edx                                ; 2AF7 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 2AF9 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 2AFD _ 8B. 55, 10
        add     eax, edx                                ; 2B00 _ 01. D0
        lea     edx, [eax+6H]                           ; 2B02 _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 2B05 _ 8B. 45, 08
        add     edx, eax                                ; 2B08 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 2B0A _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 2B0E _ 88. 02
?_147:  movsx   eax, byte [ebp-5H]                      ; 2B10 _ 0F BE. 45, FB
        and     eax, 01H                                ; 2B14 _ 83. E0, 01
        test    eax, eax                                ; 2B17 _ 85. C0
        jz      ?_148                                   ; 2B19 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 2B1B _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 2B1E _ 8B. 45, FC
        add     eax, edx                                ; 2B21 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 2B23 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 2B27 _ 8B. 55, 10
        add     eax, edx                                ; 2B2A _ 01. D0
        lea     edx, [eax+7H]                           ; 2B2C _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 2B2F _ 8B. 45, 08
        add     edx, eax                                ; 2B32 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 2B34 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 2B38 _ 88. 02
?_148:  add     dword [ebp-4H], 1                       ; 2B3A _ 83. 45, FC, 01
?_149:  cmp     dword [ebp-4H], 15                      ; 2B3E _ 83. 7D, FC, 0F
        jle     ?_140                                   ; 2B42 _ 0F 8E, FFFFFE9A
        nop                                             ; 2B48 _ 90
        leave                                           ; 2B49 _ C9
        ret                                             ; 2B4A _ C3
; _showFont8 End of function

_init_mouse_cursor:; Function begin
        push    ebp                                     ; 2B4B _ 55
        mov     ebp, esp                                ; 2B4C _ 89. E5
        sub     esp, 20                                 ; 2B4E _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 2B51 _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 2B54 _ 88. 45, EC
        mov     dword [ebp-8H], 0                       ; 2B57 _ C7. 45, F8, 00000000
        jmp     ?_156                                   ; 2B5E _ E9, 000000B1

?_150:  mov     dword [ebp-4H], 0                       ; 2B63 _ C7. 45, FC, 00000000
        jmp     ?_155                                   ; 2B6A _ E9, 00000097

?_151:  mov     eax, dword [ebp-8H]                     ; 2B6F _ 8B. 45, F8
        shl     eax, 4                                  ; 2B72 _ C1. E0, 04
        mov     edx, eax                                ; 2B75 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 2B77 _ 8B. 45, FC
        add     eax, edx                                ; 2B7A _ 01. D0
        add     eax, _cursor.2644                       ; 2B7C _ 05, 00000180(d)
        movzx   eax, byte [eax]                         ; 2B81 _ 0F B6. 00
        cmp     al, 42                                  ; 2B84 _ 3C, 2A
        jnz     ?_152                                   ; 2B86 _ 75, 17
        mov     eax, dword [ebp-8H]                     ; 2B88 _ 8B. 45, F8
        shl     eax, 4                                  ; 2B8B _ C1. E0, 04
        mov     edx, eax                                ; 2B8E _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 2B90 _ 8B. 45, FC
        add     eax, edx                                ; 2B93 _ 01. D0
        mov     edx, eax                                ; 2B95 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2B97 _ 8B. 45, 08
        add     eax, edx                                ; 2B9A _ 01. D0
        mov     byte [eax], 0                           ; 2B9C _ C6. 00, 00
?_152:  mov     eax, dword [ebp-8H]                     ; 2B9F _ 8B. 45, F8
        shl     eax, 4                                  ; 2BA2 _ C1. E0, 04
        mov     edx, eax                                ; 2BA5 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 2BA7 _ 8B. 45, FC
        add     eax, edx                                ; 2BAA _ 01. D0
        add     eax, _cursor.2644                       ; 2BAC _ 05, 00000180(d)
        movzx   eax, byte [eax]                         ; 2BB1 _ 0F B6. 00
        cmp     al, 79                                  ; 2BB4 _ 3C, 4F
        jnz     ?_153                                   ; 2BB6 _ 75, 17
        mov     eax, dword [ebp-8H]                     ; 2BB8 _ 8B. 45, F8
        shl     eax, 4                                  ; 2BBB _ C1. E0, 04
        mov     edx, eax                                ; 2BBE _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 2BC0 _ 8B. 45, FC
        add     eax, edx                                ; 2BC3 _ 01. D0
        mov     edx, eax                                ; 2BC5 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2BC7 _ 8B. 45, 08
        add     eax, edx                                ; 2BCA _ 01. D0
        mov     byte [eax], 7                           ; 2BCC _ C6. 00, 07
?_153:  mov     eax, dword [ebp-8H]                     ; 2BCF _ 8B. 45, F8
        shl     eax, 4                                  ; 2BD2 _ C1. E0, 04
        mov     edx, eax                                ; 2BD5 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 2BD7 _ 8B. 45, FC
        add     eax, edx                                ; 2BDA _ 01. D0
        add     eax, _cursor.2644                       ; 2BDC _ 05, 00000180(d)
        movzx   eax, byte [eax]                         ; 2BE1 _ 0F B6. 00
        cmp     al, 46                                  ; 2BE4 _ 3C, 2E
        jnz     ?_154                                   ; 2BE6 _ 75, 1A
        mov     eax, dword [ebp-8H]                     ; 2BE8 _ 8B. 45, F8
        shl     eax, 4                                  ; 2BEB _ C1. E0, 04
        mov     edx, eax                                ; 2BEE _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 2BF0 _ 8B. 45, FC
        add     eax, edx                                ; 2BF3 _ 01. D0
        mov     edx, eax                                ; 2BF5 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2BF7 _ 8B. 45, 08
        add     edx, eax                                ; 2BFA _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 2BFC _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 2C00 _ 88. 02
?_154:  add     dword [ebp-4H], 1                       ; 2C02 _ 83. 45, FC, 01
?_155:  cmp     dword [ebp-4H], 15                      ; 2C06 _ 83. 7D, FC, 0F
        jle     ?_151                                   ; 2C0A _ 0F 8E, FFFFFF5F
        add     dword [ebp-8H], 1                       ; 2C10 _ 83. 45, F8, 01
?_156:  cmp     dword [ebp-8H], 15                      ; 2C14 _ 83. 7D, F8, 0F
        jle     ?_150                                   ; 2C18 _ 0F 8E, FFFFFF45
        nop                                             ; 2C1E _ 90
        leave                                           ; 2C1F _ C9
        ret                                             ; 2C20 _ C3
; _init_mouse_cursor End of function

_putblock:; Function begin
        push    ebp                                     ; 2C21 _ 55
        mov     ebp, esp                                ; 2C22 _ 89. E5
        push    ebx                                     ; 2C24 _ 53
        sub     esp, 16                                 ; 2C25 _ 83. EC, 10
        mov     dword [ebp-0CH], 0                      ; 2C28 _ C7. 45, F4, 00000000
        jmp     ?_160                                   ; 2C2F _ EB, 4E

?_157:  mov     dword [ebp-8H], 0                       ; 2C31 _ C7. 45, F8, 00000000
        jmp     ?_159                                   ; 2C38 _ EB, 39

?_158:  mov     eax, dword [ebp-0CH]                    ; 2C3A _ 8B. 45, F4
        imul    eax, dword [ebp+24H]                    ; 2C3D _ 0F AF. 45, 24
        mov     edx, dword [ebp-8H]                     ; 2C41 _ 8B. 55, F8
        add     eax, edx                                ; 2C44 _ 01. D0
        mov     edx, eax                                ; 2C46 _ 89. C2
        mov     eax, dword [ebp+20H]                    ; 2C48 _ 8B. 45, 20
        add     eax, edx                                ; 2C4B _ 01. D0
        mov     ecx, dword [ebp+1CH]                    ; 2C4D _ 8B. 4D, 1C
        mov     edx, dword [ebp-0CH]                    ; 2C50 _ 8B. 55, F4
        add     edx, ecx                                ; 2C53 _ 01. CA
        imul    edx, dword [ebp+0CH]                    ; 2C55 _ 0F AF. 55, 0C
        mov     ebx, dword [ebp+18H]                    ; 2C59 _ 8B. 5D, 18
        mov     ecx, dword [ebp-8H]                     ; 2C5C _ 8B. 4D, F8
        add     ecx, ebx                                ; 2C5F _ 01. D9
        add     edx, ecx                                ; 2C61 _ 01. CA
        mov     ecx, edx                                ; 2C63 _ 89. D1
        mov     edx, dword [ebp+8H]                     ; 2C65 _ 8B. 55, 08
        add     edx, ecx                                ; 2C68 _ 01. CA
        movzx   eax, byte [eax]                         ; 2C6A _ 0F B6. 00
        mov     byte [edx], al                          ; 2C6D _ 88. 02
        add     dword [ebp-8H], 1                       ; 2C6F _ 83. 45, F8, 01
?_159:  mov     eax, dword [ebp-8H]                     ; 2C73 _ 8B. 45, F8
        cmp     eax, dword [ebp+10H]                    ; 2C76 _ 3B. 45, 10
        jl      ?_158                                   ; 2C79 _ 7C, BF
        add     dword [ebp-0CH], 1                      ; 2C7B _ 83. 45, F4, 01
?_160:  mov     eax, dword [ebp-0CH]                    ; 2C7F _ 8B. 45, F4
        cmp     eax, dword [ebp+14H]                    ; 2C82 _ 3B. 45, 14
        jl      ?_157                                   ; 2C85 _ 7C, AA
        nop                                             ; 2C87 _ 90
        add     esp, 16                                 ; 2C88 _ 83. C4, 10
        pop     ebx                                     ; 2C8B _ 5B
        pop     ebp                                     ; 2C8C _ 5D
        ret                                             ; 2C8D _ C3
; _putblock End of function

_intHandlerFromC:; Function begin
        push    ebp                                     ; 2C8E _ 55
        mov     ebp, esp                                ; 2C8F _ 89. E5
        sub     esp, 40                                 ; 2C91 _ 83. EC, 28
        mov     eax, dword [_bootInfo]                  ; 2C94 _ A1, 00000024(d)
        mov     dword [ebp-0CH], eax                    ; 2C99 _ 89. 45, F4
        movzx   eax, word [?_365]                       ; 2C9C _ 0F B7. 05, 00000028(d)
        cwde                                            ; 2CA3 _ 98
        mov     dword [ebp-10H], eax                    ; 2CA4 _ 89. 45, F0
        movzx   eax, word [?_366]                       ; 2CA7 _ 0F B7. 05, 0000002A(d)
        cwde                                            ; 2CAE _ 98
        mov     dword [ebp-14H], eax                    ; 2CAF _ 89. 45, EC
        mov     dword [esp+4H], 32                      ; 2CB2 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 2CBA _ C7. 04 24, 00000020
        call    _io_out8                                ; 2CC1 _ E8, 00000000(rel)
        mov     byte [ebp-15H], 0                       ; 2CC6 _ C6. 45, EB, 00
        mov     dword [esp], 96                         ; 2CCA _ C7. 04 24, 00000060
        call    _io_in8                                 ; 2CD1 _ E8, 00000000(rel)
        mov     byte [ebp-15H], al                      ; 2CD6 _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 2CD9 _ 0F B6. 45, EB
        mov     dword [esp+4H], eax                     ; 2CDD _ 89. 44 24, 04
        mov     dword [esp], _keyinfo                   ; 2CE1 _ C7. 04 24, 0000002C(d)
        call    _fifo8_put                              ; 2CE8 _ E8, 00000000(rel)
        nop                                             ; 2CED _ 90
        leave                                           ; 2CEE _ C9
        ret                                             ; 2CEF _ C3
; _intHandlerFromC End of function

_charToHexVal:; Function begin
        push    ebp                                     ; 2CF0 _ 55
        mov     ebp, esp                                ; 2CF1 _ 89. E5
        sub     esp, 4                                  ; 2CF3 _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 2CF6 _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 2CF9 _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 2CFC _ 80. 7D, FC, 09
        jle     ?_161                                   ; 2D00 _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 2D02 _ 0F B6. 45, FC
        add     eax, 55                                 ; 2D06 _ 83. C0, 37
        jmp     ?_162                                   ; 2D09 _ EB, 07

?_161:  movzx   eax, byte [ebp-4H]                      ; 2D0B _ 0F B6. 45, FC
        add     eax, 48                                 ; 2D0F _ 83. C0, 30
?_162:  leave                                           ; 2D12 _ C9
        ret                                             ; 2D13 _ C3
; _charToHexVal End of function

_charToHexStr:; Function begin
        push    ebp                                     ; 2D14 _ 55
        mov     ebp, esp                                ; 2D15 _ 89. E5
        sub     esp, 24                                 ; 2D17 _ 83. EC, 18
        mov     eax, dword [ebp+8H]                     ; 2D1A _ 8B. 45, 08
        mov     byte [ebp-14H], al                      ; 2D1D _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 2D20 _ C7. 45, FC, 00000000
        movzx   eax, byte [ebp-14H]                     ; 2D27 _ 0F B6. 45, EC
        and     eax, 0FH                                ; 2D2B _ 83. E0, 0F
        mov     byte [ebp-5H], al                       ; 2D2E _ 88. 45, FB
        movsx   eax, byte [ebp-5H]                      ; 2D31 _ 0F BE. 45, FB
        mov     dword [esp], eax                        ; 2D35 _ 89. 04 24
        call    _charToHexVal                           ; 2D38 _ E8, FFFFFFB3
        mov     byte [?_335], al                        ; 2D3D _ A2, 00000113(d)
        movzx   eax, byte [ebp-14H]                     ; 2D42 _ 0F B6. 45, EC
        shr     al, 4                                   ; 2D46 _ C0. E8, 04
        mov     byte [ebp-14H], al                      ; 2D49 _ 88. 45, EC
        movzx   eax, byte [ebp-14H]                     ; 2D4C _ 0F B6. 45, EC
        movsx   eax, al                                 ; 2D50 _ 0F BE. C0
        mov     dword [esp], eax                        ; 2D53 _ 89. 04 24
        call    _charToHexVal                           ; 2D56 _ E8, FFFFFF95
        mov     byte [?_334], al                        ; 2D5B _ A2, 00000112(d)
        mov     eax, _keyval                            ; 2D60 _ B8, 00000110(d)
        leave                                           ; 2D65 _ C9
        ret                                             ; 2D66 _ C3
; _charToHexStr End of function

_intToHexStr:; Function begin
        push    ebp                                     ; 2D67 _ 55
        mov     ebp, esp                                ; 2D68 _ 89. E5
        sub     esp, 16                                 ; 2D6A _ 83. EC, 10
        mov     byte [_str.2692], 48                    ; 2D6D _ C6. 05, 000003B4(d), 30
        mov     byte [?_371], 88                        ; 2D74 _ C6. 05, 000003B5(d), 58
        mov     byte [?_372], 0                         ; 2D7B _ C6. 05, 000003BE(d), 00
        mov     dword [ebp-4H], 2                       ; 2D82 _ C7. 45, FC, 00000002
        jmp     ?_164                                   ; 2D89 _ EB, 0F

?_163:  mov     eax, dword [ebp-4H]                     ; 2D8B _ 8B. 45, FC
        add     eax, _str.2692                          ; 2D8E _ 05, 000003B4(d)
        mov     byte [eax], 48                          ; 2D93 _ C6. 00, 30
        add     dword [ebp-4H], 1                       ; 2D96 _ 83. 45, FC, 01
?_164:  cmp     dword [ebp-4H], 9                       ; 2D9A _ 83. 7D, FC, 09
        jle     ?_163                                   ; 2D9E _ 7E, EB
        mov     dword [ebp-8H], 9                       ; 2DA0 _ C7. 45, F8, 00000009
        jmp     ?_168                                   ; 2DA7 _ EB, 42

?_165:  mov     eax, dword [ebp+8H]                     ; 2DA9 _ 8B. 45, 08
        and     eax, 0FH                                ; 2DAC _ 83. E0, 0F
        mov     dword [ebp-0CH], eax                    ; 2DAF _ 89. 45, F4
        mov     eax, dword [ebp+8H]                     ; 2DB2 _ 8B. 45, 08
        shr     eax, 4                                  ; 2DB5 _ C1. E8, 04
        mov     dword [ebp+8H], eax                     ; 2DB8 _ 89. 45, 08
        cmp     dword [ebp-0CH], 9                      ; 2DBB _ 83. 7D, F4, 09
        jle     ?_166                                   ; 2DBF _ 7E, 14
        mov     eax, dword [ebp-0CH]                    ; 2DC1 _ 8B. 45, F4
        add     eax, 55                                 ; 2DC4 _ 83. C0, 37
        mov     edx, eax                                ; 2DC7 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 2DC9 _ 8B. 45, F8
        add     eax, _str.2692                          ; 2DCC _ 05, 000003B4(d)
        mov     byte [eax], dl                          ; 2DD1 _ 88. 10
        jmp     ?_167                                   ; 2DD3 _ EB, 12

?_166:  mov     eax, dword [ebp-0CH]                    ; 2DD5 _ 8B. 45, F4
        add     eax, 48                                 ; 2DD8 _ 83. C0, 30
        mov     edx, eax                                ; 2DDB _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 2DDD _ 8B. 45, F8
        add     eax, _str.2692                          ; 2DE0 _ 05, 000003B4(d)
        mov     byte [eax], dl                          ; 2DE5 _ 88. 10
?_167:  sub     dword [ebp-8H], 1                       ; 2DE7 _ 83. 6D, F8, 01
?_168:  cmp     dword [ebp-8H], 1                       ; 2DEB _ 83. 7D, F8, 01
        jle     ?_169                                   ; 2DEF _ 7E, 06
        cmp     dword [ebp+8H], 0                       ; 2DF1 _ 83. 7D, 08, 00
        jnz     ?_165                                   ; 2DF5 _ 75, B2
?_169:  mov     eax, _str.2692                          ; 2DF7 _ B8, 000003B4(d)
        leave                                           ; 2DFC _ C9
        ret                                             ; 2DFD _ C3
; _intToHexStr End of function

_wait_KBC_sendready:; Function begin
        push    ebp                                     ; 2DFE _ 55
        mov     ebp, esp                                ; 2DFF _ 89. E5
        sub     esp, 24                                 ; 2E01 _ 83. EC, 18
?_170:  mov     dword [esp], 100                        ; 2E04 _ C7. 04 24, 00000064
        call    _io_in8                                 ; 2E0B _ E8, 00000000(rel)
        and     eax, 02H                                ; 2E10 _ 83. E0, 02
        test    eax, eax                                ; 2E13 _ 85. C0
        jz      ?_171                                   ; 2E15 _ 74, 02
        jmp     ?_170                                   ; 2E17 _ EB, EB
; _wait_KBC_sendready End of function

?_171:  ; Local function
        nop                                             ; 2E19 _ 90
        nop                                             ; 2E1A _ 90
        leave                                           ; 2E1B _ C9
        ret                                             ; 2E1C _ C3

_init_keyboard:; Function begin
        push    ebp                                     ; 2E1D _ 55
        mov     ebp, esp                                ; 2E1E _ 89. E5
        sub     esp, 24                                 ; 2E20 _ 83. EC, 18
        call    _wait_KBC_sendready                     ; 2E23 _ E8, FFFFFFD6
        mov     dword [esp+4H], 96                      ; 2E28 _ C7. 44 24, 04, 00000060
        mov     dword [esp], 100                        ; 2E30 _ C7. 04 24, 00000064
        call    _io_out8                                ; 2E37 _ E8, 00000000(rel)
        call    _wait_KBC_sendready                     ; 2E3C _ E8, FFFFFFBD
        mov     dword [esp+4H], 71                      ; 2E41 _ C7. 44 24, 04, 00000047
        mov     dword [esp], 96                         ; 2E49 _ C7. 04 24, 00000060
        call    _io_out8                                ; 2E50 _ E8, 00000000(rel)
        nop                                             ; 2E55 _ 90
        leave                                           ; 2E56 _ C9
        ret                                             ; 2E57 _ C3
; _init_keyboard End of function

_enable_mouse:; Function begin
        push    ebp                                     ; 2E58 _ 55
        mov     ebp, esp                                ; 2E59 _ 89. E5
        sub     esp, 24                                 ; 2E5B _ 83. EC, 18
        call    _wait_KBC_sendready                     ; 2E5E _ E8, FFFFFF9B
        mov     dword [esp+4H], 212                     ; 2E63 _ C7. 44 24, 04, 000000D4
        mov     dword [esp], 100                        ; 2E6B _ C7. 04 24, 00000064
        call    _io_out8                                ; 2E72 _ E8, 00000000(rel)
        call    _wait_KBC_sendready                     ; 2E77 _ E8, FFFFFF82
        mov     dword [esp+4H], 244                     ; 2E7C _ C7. 44 24, 04, 000000F4
        mov     dword [esp], 96                         ; 2E84 _ C7. 04 24, 00000060
        call    _io_out8                                ; 2E8B _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 2E90 _ 8B. 45, 08
        mov     byte [eax+3H], 0                        ; 2E93 _ C6. 40, 03, 00
        nop                                             ; 2E97 _ 90
        leave                                           ; 2E98 _ C9
        ret                                             ; 2E99 _ C3
; _enable_mouse End of function

_intHandlerForMouse:; Function begin
        push    ebp                                     ; 2E9A _ 55
        mov     ebp, esp                                ; 2E9B _ 89. E5
        sub     esp, 40                                 ; 2E9D _ 83. EC, 28
        mov     dword [esp+4H], 32                      ; 2EA0 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 160                        ; 2EA8 _ C7. 04 24, 000000A0
        call    _io_out8                                ; 2EAF _ E8, 00000000(rel)
        mov     dword [esp+4H], 32                      ; 2EB4 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 2EBC _ C7. 04 24, 00000020
        call    _io_out8                                ; 2EC3 _ E8, 00000000(rel)
        mov     dword [esp], 96                         ; 2EC8 _ C7. 04 24, 00000060
        call    _io_in8                                 ; 2ECF _ E8, 00000000(rel)
        mov     byte [ebp-9H], al                       ; 2ED4 _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 2ED7 _ 0F B6. 45, F7
        mov     dword [esp+4H], eax                     ; 2EDB _ 89. 44 24, 04
        mov     dword [esp], _mouseinfo                 ; 2EDF _ C7. 04 24, 00000048(d)
        call    _fifo8_put                              ; 2EE6 _ E8, 00000000(rel)
        nop                                             ; 2EEB _ 90
        leave                                           ; 2EEC _ C9
        ret                                             ; 2EED _ C3
; _intHandlerForMouse End of function

_mouse_decode:; Function begin
        push    ebp                                     ; 2EEE _ 55
        mov     ebp, esp                                ; 2EEF _ 89. E5
        sub     esp, 4                                  ; 2EF1 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 2EF4 _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 2EF7 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 2EFA _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 2EFD _ 0F B6. 40, 03
        test    al, al                                  ; 2F01 _ 84. C0
        jnz     ?_173                                   ; 2F03 _ 75, 17
        cmp     byte [ebp-4H], -6                       ; 2F05 _ 80. 7D, FC, FA
        jnz     ?_172                                   ; 2F09 _ 75, 07
        mov     eax, dword [ebp+8H]                     ; 2F0B _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 2F0E _ C6. 40, 03, 01
?_172:  mov     eax, 0                                  ; 2F12 _ B8, 00000000
        jmp     ?_180                                   ; 2F17 _ E9, 0000010F

?_173:  mov     eax, dword [ebp+8H]                     ; 2F1C _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 2F1F _ 0F B6. 40, 03
        cmp     al, 1                                   ; 2F23 _ 3C, 01
        jnz     ?_175                                   ; 2F25 _ 75, 28
        movzx   eax, byte [ebp-4H]                      ; 2F27 _ 0F B6. 45, FC
        and     eax, 0C8H                               ; 2F2B _ 25, 000000C8
        cmp     eax, 8                                  ; 2F30 _ 83. F8, 08
        jnz     ?_174                                   ; 2F33 _ 75, 10
        mov     edx, dword [ebp+8H]                     ; 2F35 _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 2F38 _ 0F B6. 45, FC
        mov     byte [edx], al                          ; 2F3C _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 2F3E _ 8B. 45, 08
        mov     byte [eax+3H], 2                        ; 2F41 _ C6. 40, 03, 02
?_174:  mov     eax, 0                                  ; 2F45 _ B8, 00000000
        jmp     ?_180                                   ; 2F4A _ E9, 000000DC

?_175:  mov     eax, dword [ebp+8H]                     ; 2F4F _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 2F52 _ 0F B6. 40, 03
        cmp     al, 2                                   ; 2F56 _ 3C, 02
        jnz     ?_176                                   ; 2F58 _ 75, 1B
        mov     edx, dword [ebp+8H]                     ; 2F5A _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 2F5D _ 0F B6. 45, FC
        mov     byte [edx+1H], al                       ; 2F61 _ 88. 42, 01
        mov     eax, dword [ebp+8H]                     ; 2F64 _ 8B. 45, 08
        mov     byte [eax+3H], 3                        ; 2F67 _ C6. 40, 03, 03
        mov     eax, 0                                  ; 2F6B _ B8, 00000000
        jmp     ?_180                                   ; 2F70 _ E9, 000000B6

?_176:  mov     eax, dword [ebp+8H]                     ; 2F75 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 2F78 _ 0F B6. 40, 03
        cmp     al, 3                                   ; 2F7C _ 3C, 03
        jne     ?_179                                   ; 2F7E _ 0F 85, 000000A2
        mov     edx, dword [ebp+8H]                     ; 2F84 _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 2F87 _ 0F B6. 45, FC
        mov     byte [edx+2H], al                       ; 2F8B _ 88. 42, 02
        mov     eax, dword [ebp+8H]                     ; 2F8E _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 2F91 _ C6. 40, 03, 01
        mov     eax, dword [ebp+8H]                     ; 2F95 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 2F98 _ 0F B6. 00
        movzx   eax, al                                 ; 2F9B _ 0F B6. C0
        and     eax, 07H                                ; 2F9E _ 83. E0, 07
        mov     edx, eax                                ; 2FA1 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2FA3 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 2FA6 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 2FA9 _ 8B. 45, 08
        movzx   eax, byte [eax+1H]                      ; 2FAC _ 0F B6. 40, 01
        movzx   eax, al                                 ; 2FB0 _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 2FB3 _ 8B. 55, 08
        mov     dword [edx+4H], eax                     ; 2FB6 _ 89. 42, 04
        mov     eax, dword [ebp+8H]                     ; 2FB9 _ 8B. 45, 08
        movzx   eax, byte [eax+2H]                      ; 2FBC _ 0F B6. 40, 02
        movzx   eax, al                                 ; 2FC0 _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 2FC3 _ 8B. 55, 08
        mov     dword [edx+8H], eax                     ; 2FC6 _ 89. 42, 08
        mov     eax, dword [ebp+8H]                     ; 2FC9 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 2FCC _ 0F B6. 00
        movzx   eax, al                                 ; 2FCF _ 0F B6. C0
        and     eax, 10H                                ; 2FD2 _ 83. E0, 10
        test    eax, eax                                ; 2FD5 _ 85. C0
        jz      ?_177                                   ; 2FD7 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 2FD9 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 2FDC _ 8B. 40, 04
        or      eax, 0FFFFFF00H                         ; 2FDF _ 0D, FFFFFF00
        mov     edx, eax                                ; 2FE4 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2FE6 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 2FE9 _ 89. 50, 04
?_177:  mov     eax, dword [ebp+8H]                     ; 2FEC _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 2FEF _ 0F B6. 00
        movzx   eax, al                                 ; 2FF2 _ 0F B6. C0
        and     eax, 20H                                ; 2FF5 _ 83. E0, 20
        test    eax, eax                                ; 2FF8 _ 85. C0
        jz      ?_178                                   ; 2FFA _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 2FFC _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2FFF _ 8B. 40, 08
        or      eax, 0FFFFFF00H                         ; 3002 _ 0D, FFFFFF00
        mov     edx, eax                                ; 3007 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3009 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 300C _ 89. 50, 08
?_178:  mov     eax, dword [ebp+8H]                     ; 300F _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3012 _ 8B. 40, 08
        neg     eax                                     ; 3015 _ F7. D8
        mov     edx, eax                                ; 3017 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3019 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 301C _ 89. 50, 08
        mov     eax, 1                                  ; 301F _ B8, 00000001
        jmp     ?_180                                   ; 3024 _ EB, 05

?_179:  mov     eax, 4294967295                         ; 3026 _ B8, FFFFFFFF
?_180:  leave                                           ; 302B _ C9
        ret                                             ; 302C _ C3
; _mouse_decode End of function

_showMemoryInfo:; Function begin
        push    ebp                                     ; 302D _ 55
        mov     ebp, esp                                ; 302E _ 89. E5
        sub     esp, 72                                 ; 3030 _ 83. EC, 48
        mov     dword [ebp-0CH], 0                      ; 3033 _ C7. 45, F4, 00000000
        mov     dword [ebp-10H], 0                      ; 303A _ C7. 45, F0, 00000000
        mov     dword [ebp-14H], 104                    ; 3041 _ C7. 45, EC, 00000068
        mov     dword [ebp-18H], 80                     ; 3048 _ C7. 45, E8, 00000050
        mov     edx, dword [_ysize]                     ; 304F _ 8B. 15, 00000164(d)
        mov     eax, dword [ebp+0CH]                    ; 3055 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 3058 _ 8B. 00
        mov     dword [esp+8H], edx                     ; 305A _ 89. 54 24, 08
        mov     edx, dword [ebp+1CH]                    ; 305E _ 8B. 55, 1C
        mov     dword [esp+4H], edx                     ; 3061 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3065 _ 89. 04 24
        call    _init_screen8                           ; 3068 _ E8, FFFFF0B2
        mov     eax, dword [ebp+20H]                    ; 306D _ 8B. 45, 20
        movsx   eax, al                                 ; 3070 _ 0F BE. C0
        mov     dword [esp+14H], ?_350                  ; 3073 _ C7. 44 24, 14, 0000005B(d)
        mov     dword [esp+10H], eax                    ; 307B _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 307F _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 3082 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 3086 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 3089 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 308D _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 3090 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3094 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3097 _ 89. 04 24
        call    _showString                             ; 309A _ E8, FFFFF767
        mov     eax, dword [ebp+18H]                    ; 309F _ 8B. 45, 18
        mov     dword [esp], eax                        ; 30A2 _ 89. 04 24
        call    _intToHexStr                            ; 30A5 _ E8, FFFFFCBD
        mov     dword [ebp-1CH], eax                    ; 30AA _ 89. 45, E4
        mov     eax, dword [ebp+20H]                    ; 30AD _ 8B. 45, 20
        movsx   eax, al                                 ; 30B0 _ 0F BE. C0
        mov     edx, dword [ebp-1CH]                    ; 30B3 _ 8B. 55, E4
        mov     dword [esp+14H], edx                    ; 30B6 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 30BA _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 30BE _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 30C1 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 30C5 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 30C8 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 30CC _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 30CF _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 30D3 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 30D6 _ 89. 04 24
        call    _showString                             ; 30D9 _ E8, FFFFF728
        add     dword [ebp-10H], 16                     ; 30DE _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 30E2 _ 8B. 45, 20
        movsx   eax, al                                 ; 30E5 _ 0F BE. C0
        mov     dword [esp+14H], ?_351                  ; 30E8 _ C7. 44 24, 14, 00000065(d)
        mov     dword [esp+10H], eax                    ; 30F0 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 30F4 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 30F7 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 30FB _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 30FE _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 3102 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 3105 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3109 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 310C _ 89. 04 24
        call    _showString                             ; 310F _ E8, FFFFF6F2
        mov     eax, dword [ebp+10H]                    ; 3114 _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 3117 _ 8B. 00
        mov     dword [esp], eax                        ; 3119 _ 89. 04 24
        call    _intToHexStr                            ; 311C _ E8, FFFFFC46
        mov     dword [ebp-20H], eax                    ; 3121 _ 89. 45, E0
        mov     eax, dword [ebp+20H]                    ; 3124 _ 8B. 45, 20
        movsx   eax, al                                 ; 3127 _ 0F BE. C0
        mov     edx, dword [ebp-20H]                    ; 312A _ 8B. 55, E0
        mov     dword [esp+14H], edx                    ; 312D _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 3131 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 3135 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 3138 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 313C _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 313F _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 3143 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 3146 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 314A _ 8B. 45, 08
        mov     dword [esp], eax                        ; 314D _ 89. 04 24
        call    _showString                             ; 3150 _ E8, FFFFF6B1
        add     dword [ebp-10H], 16                     ; 3155 _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 3159 _ 8B. 45, 20
        movsx   eax, al                                 ; 315C _ 0F BE. C0
        mov     dword [esp+14H], ?_352                  ; 315F _ C7. 44 24, 14, 00000071(d)
        mov     dword [esp+10H], eax                    ; 3167 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 316B _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 316E _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 3172 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 3175 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 3179 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 317C _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3180 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3183 _ 89. 04 24
        call    _showString                             ; 3186 _ E8, FFFFF67B
        mov     eax, dword [ebp+10H]                    ; 318B _ 8B. 45, 10
        mov     eax, dword [eax+4H]                     ; 318E _ 8B. 40, 04
        mov     dword [esp], eax                        ; 3191 _ 89. 04 24
        call    _intToHexStr                            ; 3194 _ E8, FFFFFBCE
        mov     dword [ebp-24H], eax                    ; 3199 _ 89. 45, DC
        mov     eax, dword [ebp+20H]                    ; 319C _ 8B. 45, 20
        movsx   eax, al                                 ; 319F _ 0F BE. C0
        mov     edx, dword [ebp-24H]                    ; 31A2 _ 8B. 55, DC
        mov     dword [esp+14H], edx                    ; 31A5 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 31A9 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 31AD _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 31B0 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 31B4 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 31B7 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 31BB _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 31BE _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 31C2 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 31C5 _ 89. 04 24
        call    _showString                             ; 31C8 _ E8, FFFFF639
        add     dword [ebp-10H], 16                     ; 31CD _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 31D1 _ 8B. 45, 20
        movsx   eax, al                                 ; 31D4 _ 0F BE. C0
        mov     dword [esp+14H], ?_353                  ; 31D7 _ C7. 44 24, 14, 0000007D(d)
        mov     dword [esp+10H], eax                    ; 31DF _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 31E3 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 31E6 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 31EA _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 31ED _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 31F1 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 31F4 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 31F8 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 31FB _ 89. 04 24
        call    _showString                             ; 31FE _ E8, FFFFF603
        mov     eax, dword [ebp+10H]                    ; 3203 _ 8B. 45, 10
        mov     eax, dword [eax+8H]                     ; 3206 _ 8B. 40, 08
        mov     dword [esp], eax                        ; 3209 _ 89. 04 24
        call    _intToHexStr                            ; 320C _ E8, FFFFFB56
        mov     dword [ebp-28H], eax                    ; 3211 _ 89. 45, D8
        mov     eax, dword [ebp+20H]                    ; 3214 _ 8B. 45, 20
        movsx   eax, al                                 ; 3217 _ 0F BE. C0
        mov     edx, dword [ebp-28H]                    ; 321A _ 8B. 55, D8
        mov     dword [esp+14H], edx                    ; 321D _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 3221 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 3225 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 3228 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 322C _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 322F _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 3233 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 3236 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 323A _ 8B. 45, 08
        mov     dword [esp], eax                        ; 323D _ 89. 04 24
        call    _showString                             ; 3240 _ E8, FFFFF5C1
        nop                                             ; 3245 _ 90
        leave                                           ; 3246 _ C9
        ret                                             ; 3247 _ C3
; _showMemoryInfo End of function

_message_box:; Function begin
        push    ebp                                     ; 3248 _ 55
        mov     ebp, esp                                ; 3249 _ 89. E5
        sub     esp, 56                                 ; 324B _ 83. EC, 38
        mov     eax, dword [ebp+8H]                     ; 324E _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3251 _ 89. 04 24
        call    _sheet_alloc                            ; 3254 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 3259 _ 89. 45, F4
        mov     eax, dword [_memman]                    ; 325C _ A1, 00000000(d)
        mov     dword [esp+4H], 10880                   ; 3261 _ C7. 44 24, 04, 00002A80
        mov     dword [esp], eax                        ; 3269 _ 89. 04 24
        call    _memman_alloc_4k                        ; 326C _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 3271 _ 89. 45, F0
        mov     dword [esp+10H], -1                     ; 3274 _ C7. 44 24, 10, FFFFFFFF
        mov     dword [esp+0CH], 68                     ; 327C _ C7. 44 24, 0C, 00000044
        mov     dword [esp+8H], 160                     ; 3284 _ C7. 44 24, 08, 000000A0
        mov     eax, dword [ebp-10H]                    ; 328C _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 328F _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 3293 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 3296 _ 89. 04 24
        call    _sheet_setbuf                           ; 3299 _ E8, 00000000(rel)
        mov     dword [esp+0CH], 1                      ; 329E _ C7. 44 24, 0C, 00000001
        mov     eax, dword [ebp+0CH]                    ; 32A6 _ 8B. 45, 0C
        mov     dword [esp+8H], eax                     ; 32A9 _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 32AD _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 32B0 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 32B4 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 32B7 _ 89. 04 24
        call    _make_window8                           ; 32BA _ E8, 00000074
        mov     dword [esp+14H], 7                      ; 32BF _ C7. 44 24, 14, 00000007
        mov     dword [esp+10H], 16                     ; 32C7 _ C7. 44 24, 10, 00000010
        mov     dword [esp+0CH], 144                    ; 32CF _ C7. 44 24, 0C, 00000090
        mov     dword [esp+8H], 28                      ; 32D7 _ C7. 44 24, 08, 0000001C
        mov     dword [esp+4H], 8                       ; 32DF _ C7. 44 24, 04, 00000008
        mov     eax, dword [ebp-0CH]                    ; 32E7 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 32EA _ 89. 04 24
        call    _make_textbox8                          ; 32ED _ E8, 00000444
        mov     dword [esp+0CH], 172                    ; 32F2 _ C7. 44 24, 0C, 000000AC
        mov     dword [esp+8H], 260                     ; 32FA _ C7. 44 24, 08, 00000104
        mov     eax, dword [ebp-0CH]                    ; 3302 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 3305 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3309 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 330C _ 89. 04 24
        call    _sheet_slide                            ; 330F _ E8, 00000000(rel)
        mov     dword [esp+8H], 2                       ; 3314 _ C7. 44 24, 08, 00000002
        mov     eax, dword [ebp-0CH]                    ; 331C _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 331F _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3323 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3326 _ 89. 04 24
        call    _sheet_updown                           ; 3329 _ E8, 00000000(rel)
        mov     eax, dword [ebp-0CH]                    ; 332E _ 8B. 45, F4
        leave                                           ; 3331 _ C9
        ret                                             ; 3332 _ C3
; _message_box End of function

_make_window8:; Function begin
        push    ebp                                     ; 3333 _ 55
        mov     ebp, esp                                ; 3334 _ 89. E5
        push    ebx                                     ; 3336 _ 53
        sub     esp, 68                                 ; 3337 _ 83. EC, 44
        mov     eax, dword [ebp+14H]                    ; 333A _ 8B. 45, 14
        mov     byte [ebp-1CH], al                      ; 333D _ 88. 45, E4
        mov     eax, dword [ebp+0CH]                    ; 3340 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 3343 _ 8B. 40, 04
        mov     dword [ebp-0CH], eax                    ; 3346 _ 89. 45, F4
        mov     eax, dword [ebp+0CH]                    ; 3349 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 334C _ 8B. 40, 08
        mov     dword [ebp-10H], eax                    ; 334F _ 89. 45, F0
        mov     eax, dword [ebp-0CH]                    ; 3352 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 3355 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 3358 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 335B _ 8B. 00
        mov     dword [esp+18H], 0                      ; 335D _ C7. 44 24, 18, 00000000
        mov     dword [esp+14H], edx                    ; 3365 _ 89. 54 24, 14
        mov     dword [esp+10H], 0                      ; 3369 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 3371 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 3379 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-0CH]                    ; 3381 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 3384 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3388 _ 89. 04 24
        call    _boxfill8                               ; 338B _ E8, FFFFF5EA
        mov     eax, dword [ebp-0CH]                    ; 3390 _ 8B. 45, F4
        lea     edx, [eax-2H]                           ; 3393 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 3396 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 3399 _ 8B. 00
        mov     dword [esp+18H], 1                      ; 339B _ C7. 44 24, 18, 00000001
        mov     dword [esp+14H], edx                    ; 33A3 _ 89. 54 24, 14
        mov     dword [esp+10H], 1                      ; 33A7 _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], 1                      ; 33AF _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 7                       ; 33B7 _ C7. 44 24, 08, 00000007
        mov     edx, dword [ebp-0CH]                    ; 33BF _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 33C2 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 33C6 _ 89. 04 24
        call    _boxfill8                               ; 33C9 _ E8, FFFFF5AC
        mov     eax, dword [ebp-10H]                    ; 33CE _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 33D1 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 33D4 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 33D7 _ 8B. 00
        mov     dword [esp+18H], edx                    ; 33D9 _ 89. 54 24, 18
        mov     dword [esp+14H], 0                      ; 33DD _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], 0                      ; 33E5 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 33ED _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 33F5 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-0CH]                    ; 33FD _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 3400 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3404 _ 89. 04 24
        call    _boxfill8                               ; 3407 _ E8, FFFFF56E
        mov     eax, dword [ebp-10H]                    ; 340C _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 340F _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 3412 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 3415 _ 8B. 00
        mov     dword [esp+18H], edx                    ; 3417 _ 89. 54 24, 18
        mov     dword [esp+14H], 1                      ; 341B _ C7. 44 24, 14, 00000001
        mov     dword [esp+10H], 1                      ; 3423 _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], 1                      ; 342B _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 7                       ; 3433 _ C7. 44 24, 08, 00000007
        mov     edx, dword [ebp-0CH]                    ; 343B _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 343E _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3442 _ 89. 04 24
        call    _boxfill8                               ; 3445 _ E8, FFFFF530
        mov     eax, dword [ebp-10H]                    ; 344A _ 8B. 45, F0
        lea     ebx, [eax-2H]                           ; 344D _ 8D. 58, FE
        mov     eax, dword [ebp-0CH]                    ; 3450 _ 8B. 45, F4
        lea     ecx, [eax-2H]                           ; 3453 _ 8D. 48, FE
        mov     eax, dword [ebp-0CH]                    ; 3456 _ 8B. 45, F4
        lea     edx, [eax-2H]                           ; 3459 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 345C _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 345F _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 3461 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 3465 _ 89. 4C 24, 14
        mov     dword [esp+10H], 1                      ; 3469 _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], edx                    ; 3471 _ 89. 54 24, 0C
        mov     dword [esp+8H], 15                      ; 3475 _ C7. 44 24, 08, 0000000F
        mov     edx, dword [ebp-0CH]                    ; 347D _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 3480 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3484 _ 89. 04 24
        call    _boxfill8                               ; 3487 _ E8, FFFFF4EE
        mov     eax, dword [ebp-10H]                    ; 348C _ 8B. 45, F0
        lea     ebx, [eax-1H]                           ; 348F _ 8D. 58, FF
        mov     eax, dword [ebp-0CH]                    ; 3492 _ 8B. 45, F4
        lea     ecx, [eax-1H]                           ; 3495 _ 8D. 48, FF
        mov     eax, dword [ebp-0CH]                    ; 3498 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 349B _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 349E _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 34A1 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 34A3 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 34A7 _ 89. 4C 24, 14
        mov     dword [esp+10H], 0                      ; 34AB _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], edx                    ; 34B3 _ 89. 54 24, 0C
        mov     dword [esp+8H], 0                       ; 34B7 _ C7. 44 24, 08, 00000000
        mov     edx, dword [ebp-0CH]                    ; 34BF _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 34C2 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 34C6 _ 89. 04 24
        call    _boxfill8                               ; 34C9 _ E8, FFFFF4AC
        mov     eax, dword [ebp-10H]                    ; 34CE _ 8B. 45, F0
        lea     ecx, [eax-3H]                           ; 34D1 _ 8D. 48, FD
        mov     eax, dword [ebp-0CH]                    ; 34D4 _ 8B. 45, F4
        lea     edx, [eax-3H]                           ; 34D7 _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 34DA _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 34DD _ 8B. 00
        mov     dword [esp+18H], ecx                    ; 34DF _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 34E3 _ 89. 54 24, 14
        mov     dword [esp+10H], 2                      ; 34E7 _ C7. 44 24, 10, 00000002
        mov     dword [esp+0CH], 2                      ; 34EF _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 8                       ; 34F7 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-0CH]                    ; 34FF _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 3502 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3506 _ 89. 04 24
        call    _boxfill8                               ; 3509 _ E8, FFFFF46C
        mov     eax, dword [ebp-0CH]                    ; 350E _ 8B. 45, F4
        lea     edx, [eax-4H]                           ; 3511 _ 8D. 50, FC
        mov     eax, dword [ebp+0CH]                    ; 3514 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 3517 _ 8B. 00
        mov     dword [esp+18H], 20                     ; 3519 _ C7. 44 24, 18, 00000014
        mov     dword [esp+14H], edx                    ; 3521 _ 89. 54 24, 14
        mov     dword [esp+10H], 3                      ; 3525 _ C7. 44 24, 10, 00000003
        mov     dword [esp+0CH], 3                      ; 352D _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 12                      ; 3535 _ C7. 44 24, 08, 0000000C
        mov     edx, dword [ebp-0CH]                    ; 353D _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 3540 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3544 _ 89. 04 24
        call    _boxfill8                               ; 3547 _ E8, FFFFF42E
        mov     eax, dword [ebp-10H]                    ; 354C _ 8B. 45, F0
        lea     ebx, [eax-2H]                           ; 354F _ 8D. 58, FE
        mov     eax, dword [ebp-0CH]                    ; 3552 _ 8B. 45, F4
        lea     ecx, [eax-2H]                           ; 3555 _ 8D. 48, FE
        mov     eax, dword [ebp-10H]                    ; 3558 _ 8B. 45, F0
        lea     edx, [eax-2H]                           ; 355B _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 355E _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 3561 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 3563 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 3567 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 356B _ 89. 54 24, 10
        mov     dword [esp+0CH], 1                      ; 356F _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 15                      ; 3577 _ C7. 44 24, 08, 0000000F
        mov     edx, dword [ebp-0CH]                    ; 357F _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 3582 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3586 _ 89. 04 24
        call    _boxfill8                               ; 3589 _ E8, FFFFF3EC
        mov     eax, dword [ebp-10H]                    ; 358E _ 8B. 45, F0
        lea     ebx, [eax-1H]                           ; 3591 _ 8D. 58, FF
        mov     eax, dword [ebp-0CH]                    ; 3594 _ 8B. 45, F4
        lea     ecx, [eax-1H]                           ; 3597 _ 8D. 48, FF
        mov     eax, dword [ebp-10H]                    ; 359A _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 359D _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 35A0 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 35A3 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 35A5 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 35A9 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 35AD _ 89. 54 24, 10
        mov     dword [esp+0CH], 0                      ; 35B1 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 35B9 _ C7. 44 24, 08, 00000000
        mov     edx, dword [ebp-0CH]                    ; 35C1 _ 8B. 55, F4
        mov     dword [esp+4H], edx                     ; 35C4 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 35C8 _ 89. 04 24
        call    _boxfill8                               ; 35CB _ E8, FFFFF3AA
        movsx   eax, byte [ebp-1CH]                     ; 35D0 _ 0F BE. 45, E4
        mov     dword [esp+0CH], eax                    ; 35D4 _ 89. 44 24, 0C
        mov     eax, dword [ebp+10H]                    ; 35D8 _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 35DB _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 35DF _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 35E2 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 35E6 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 35E9 _ 89. 04 24
        call    _make_wtitle8                           ; 35EC _ E8, 00000007
        nop                                             ; 35F1 _ 90
        add     esp, 68                                 ; 35F2 _ 83. C4, 44
        pop     ebx                                     ; 35F5 _ 5B
        pop     ebp                                     ; 35F6 _ 5D
        ret                                             ; 35F7 _ C3
; _make_window8 End of function

_make_wtitle8:; Function begin
        push    ebp                                     ; 35F8 _ 55
        mov     ebp, esp                                ; 35F9 _ 89. E5
        push    ebx                                     ; 35FB _ 53
        sub     esp, 68                                 ; 35FC _ 83. EC, 44
        mov     eax, dword [ebp+14H]                    ; 35FF _ 8B. 45, 14
        mov     byte [ebp-1CH], al                      ; 3602 _ 88. 45, E4
        cmp     byte [ebp-1CH], 0                       ; 3605 _ 80. 7D, E4, 00
        jz      ?_181                                   ; 3609 _ 74, 0A
        mov     byte [ebp-12H], 7                       ; 360B _ C6. 45, EE, 07
        mov     byte [ebp-13H], 12                      ; 360F _ C6. 45, ED, 0C
        jmp     ?_182                                   ; 3613 _ EB, 08

?_181:  mov     byte [ebp-12H], 8                       ; 3615 _ C6. 45, EE, 08
        mov     byte [ebp-13H], 15                      ; 3619 _ C6. 45, ED, 0F
?_182:  mov     eax, dword [ebp+0CH]                    ; 361D _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 3620 _ 8B. 40, 04
        lea     ebx, [eax-4H]                           ; 3623 _ 8D. 58, FC
        movzx   eax, byte [ebp-13H]                     ; 3626 _ 0F B6. 45, ED
        movzx   eax, al                                 ; 362A _ 0F B6. C0
        mov     edx, dword [ebp+0CH]                    ; 362D _ 8B. 55, 0C
        mov     ecx, dword [edx+4H]                     ; 3630 _ 8B. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 3633 _ 8B. 55, 0C
        mov     edx, dword [edx]                        ; 3636 _ 8B. 12
        mov     dword [esp+18H], 20                     ; 3638 _ C7. 44 24, 18, 00000014
        mov     dword [esp+14H], ebx                    ; 3640 _ 89. 5C 24, 14
        mov     dword [esp+10H], 3                      ; 3644 _ C7. 44 24, 10, 00000003
        mov     dword [esp+0CH], 3                      ; 364C _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], eax                     ; 3654 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 3658 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 365C _ 89. 14 24
        call    _boxfill8                               ; 365F _ E8, FFFFF316
        movsx   eax, byte [ebp-12H]                     ; 3664 _ 0F BE. 45, EE
        mov     edx, dword [ebp+10H]                    ; 3668 _ 8B. 55, 10
        mov     dword [esp+14H], edx                    ; 366B _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 366F _ 89. 44 24, 10
        mov     dword [esp+0CH], 4                      ; 3673 _ C7. 44 24, 0C, 00000004
        mov     dword [esp+8H], 24                      ; 367B _ C7. 44 24, 08, 00000018
        mov     eax, dword [ebp+0CH]                    ; 3683 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 3686 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 368A _ 8B. 45, 08
        mov     dword [esp], eax                        ; 368D _ 89. 04 24
        call    _showString                             ; 3690 _ E8, FFFFF171
        mov     dword [ebp-10H], 0                      ; 3695 _ C7. 45, F0, 00000000
        jmp     ?_190                                   ; 369C _ E9, 00000084

?_183:  mov     dword [ebp-0CH], 0                      ; 36A1 _ C7. 45, F4, 00000000
        jmp     ?_189                                   ; 36A8 _ EB, 71

?_184:  mov     eax, dword [ebp-10H]                    ; 36AA _ 8B. 45, F0
        shl     eax, 4                                  ; 36AD _ C1. E0, 04
        mov     edx, eax                                ; 36B0 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 36B2 _ 8B. 45, F4
        add     eax, edx                                ; 36B5 _ 01. D0
        add     eax, _closebtn.2763                     ; 36B7 _ 05, 00000280(d)
        movzx   eax, byte [eax]                         ; 36BC _ 0F B6. 00
        mov     byte [ebp-11H], al                      ; 36BF _ 88. 45, EF
        cmp     byte [ebp-11H], 64                      ; 36C2 _ 80. 7D, EF, 40
        jnz     ?_185                                   ; 36C6 _ 75, 06
        mov     byte [ebp-11H], 0                       ; 36C8 _ C6. 45, EF, 00
        jmp     ?_188                                   ; 36CC _ EB, 1C

?_185:  cmp     byte [ebp-11H], 36                      ; 36CE _ 80. 7D, EF, 24
        jnz     ?_186                                   ; 36D2 _ 75, 06
        mov     byte [ebp-11H], 15                      ; 36D4 _ C6. 45, EF, 0F
        jmp     ?_188                                   ; 36D8 _ EB, 10

?_186:  cmp     byte [ebp-11H], 81                      ; 36DA _ 80. 7D, EF, 51
        jnz     ?_187                                   ; 36DE _ 75, 06
        mov     byte [ebp-11H], 8                       ; 36E0 _ C6. 45, EF, 08
        jmp     ?_188                                   ; 36E4 _ EB, 04

?_187:  mov     byte [ebp-11H], 7                       ; 36E6 _ C6. 45, EF, 07
?_188:  mov     eax, dword [ebp+0CH]                    ; 36EA _ 8B. 45, 0C
        mov     ecx, dword [eax]                        ; 36ED _ 8B. 08
        mov     eax, dword [ebp-10H]                    ; 36EF _ 8B. 45, F0
        lea     edx, [eax+5H]                           ; 36F2 _ 8D. 50, 05
        mov     eax, dword [ebp+0CH]                    ; 36F5 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 36F8 _ 8B. 40, 04
        imul    eax, edx                                ; 36FB _ 0F AF. C2
        mov     edx, dword [ebp+0CH]                    ; 36FE _ 8B. 55, 0C
        mov     edx, dword [edx+4H]                     ; 3701 _ 8B. 52, 04
        lea     ebx, [edx-15H]                          ; 3704 _ 8D. 5A, EB
        mov     edx, dword [ebp-0CH]                    ; 3707 _ 8B. 55, F4
        add     edx, ebx                                ; 370A _ 01. DA
        add     eax, edx                                ; 370C _ 01. D0
        lea     edx, [ecx+eax]                          ; 370E _ 8D. 14 01
        movzx   eax, byte [ebp-11H]                     ; 3711 _ 0F B6. 45, EF
        mov     byte [edx], al                          ; 3715 _ 88. 02
        add     dword [ebp-0CH], 1                      ; 3717 _ 83. 45, F4, 01
?_189:  cmp     dword [ebp-0CH], 15                     ; 371B _ 83. 7D, F4, 0F
        jle     ?_184                                   ; 371F _ 7E, 89
        add     dword [ebp-10H], 1                      ; 3721 _ 83. 45, F0, 01
?_190:  cmp     dword [ebp-10H], 13                     ; 3725 _ 83. 7D, F0, 0D
        jle     ?_183                                   ; 3729 _ 0F 8E, FFFFFF72
        nop                                             ; 372F _ 90
        add     esp, 68                                 ; 3730 _ 83. C4, 44
        pop     ebx                                     ; 3733 _ 5B
        pop     ebp                                     ; 3734 _ 5D
        ret                                             ; 3735 _ C3
; _make_wtitle8 End of function

_make_textbox8:; Function begin
        push    ebp                                     ; 3736 _ 55
        mov     ebp, esp                                ; 3737 _ 89. E5
        push    edi                                     ; 3739 _ 57
        push    esi                                     ; 373A _ 56
        push    ebx                                     ; 373B _ 53
        sub     esp, 44                                 ; 373C _ 83. EC, 2C
        mov     edx, dword [ebp+0CH]                    ; 373F _ 8B. 55, 0C
        mov     eax, dword [ebp+14H]                    ; 3742 _ 8B. 45, 14
        add     eax, edx                                ; 3745 _ 01. D0
        mov     dword [ebp-10H], eax                    ; 3747 _ 89. 45, F0
        mov     edx, dword [ebp+10H]                    ; 374A _ 8B. 55, 10
        mov     eax, dword [ebp+18H]                    ; 374D _ 8B. 45, 18
        add     eax, edx                                ; 3750 _ 01. D0
        mov     dword [ebp-14H], eax                    ; 3752 _ 89. 45, EC
        mov     eax, dword [ebp+10H]                    ; 3755 _ 8B. 45, 10
        lea     edi, [eax-3H]                           ; 3758 _ 8D. 78, FD
        mov     eax, dword [ebp-10H]                    ; 375B _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 375E _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 3761 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 3764 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 3767 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 376A _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 376D _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 3770 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 3773 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3776 _ 8B. 00
        mov     dword [esp+18H], edi                    ; 3778 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 377C _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 3780 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 3784 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 15                      ; 3788 _ C7. 44 24, 08, 0000000F
        mov     dword [esp+4H], edx                     ; 3790 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3794 _ 89. 04 24
        call    _boxfill8                               ; 3797 _ E8, FFFFF1DE
        mov     eax, dword [ebp-14H]                    ; 379C _ 8B. 45, EC
        lea     edi, [eax+1H]                           ; 379F _ 8D. 78, 01
        mov     eax, dword [ebp+0CH]                    ; 37A2 _ 8B. 45, 0C
        lea     esi, [eax-3H]                           ; 37A5 _ 8D. 70, FD
        mov     eax, dword [ebp+10H]                    ; 37A8 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 37AB _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 37AE _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 37B1 _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 37B4 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 37B7 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 37BA _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 37BD _ 8B. 00
        mov     dword [esp+18H], edi                    ; 37BF _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 37C3 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 37C7 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 37CB _ 89. 4C 24, 0C
        mov     dword [esp+8H], 15                      ; 37CF _ C7. 44 24, 08, 0000000F
        mov     dword [esp+4H], edx                     ; 37D7 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 37DB _ 89. 04 24
        call    _boxfill8                               ; 37DE _ E8, FFFFF197
        mov     eax, dword [ebp-14H]                    ; 37E3 _ 8B. 45, EC
        lea     edi, [eax+2H]                           ; 37E6 _ 8D. 78, 02
        mov     eax, dword [ebp-10H]                    ; 37E9 _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 37EC _ 8D. 70, 01
        mov     eax, dword [ebp-14H]                    ; 37EF _ 8B. 45, EC
        lea     ebx, [eax+2H]                           ; 37F2 _ 8D. 58, 02
        mov     eax, dword [ebp+0CH]                    ; 37F5 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 37F8 _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 37FB _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 37FE _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 3801 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3804 _ 8B. 00
        mov     dword [esp+18H], edi                    ; 3806 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 380A _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 380E _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 3812 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 7                       ; 3816 _ C7. 44 24, 08, 00000007
        mov     dword [esp+4H], edx                     ; 381E _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3822 _ 89. 04 24
        call    _boxfill8                               ; 3825 _ E8, FFFFF150
        mov     eax, dword [ebp-14H]                    ; 382A _ 8B. 45, EC
        lea     edi, [eax+2H]                           ; 382D _ 8D. 78, 02
        mov     eax, dword [ebp-10H]                    ; 3830 _ 8B. 45, F0
        lea     esi, [eax+2H]                           ; 3833 _ 8D. 70, 02
        mov     eax, dword [ebp+10H]                    ; 3836 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 3839 _ 8D. 58, FD
        mov     eax, dword [ebp-10H]                    ; 383C _ 8B. 45, F0
        lea     ecx, [eax+2H]                           ; 383F _ 8D. 48, 02
        mov     eax, dword [ebp+8H]                     ; 3842 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 3845 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 3848 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 384B _ 8B. 00
        mov     dword [esp+18H], edi                    ; 384D _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 3851 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 3855 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 3859 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 7                       ; 385D _ C7. 44 24, 08, 00000007
        mov     dword [esp+4H], edx                     ; 3865 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3869 _ 89. 04 24
        call    _boxfill8                               ; 386C _ E8, FFFFF109
        mov     eax, dword [ebp+10H]                    ; 3871 _ 8B. 45, 10
        lea     esi, [eax-2H]                           ; 3874 _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 3877 _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 387A _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 387D _ 8B. 45, 0C
        lea     ecx, [eax-1H]                           ; 3880 _ 8D. 48, FF
        mov     eax, dword [ebp+8H]                     ; 3883 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 3886 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 3889 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 388C _ 8B. 00
        mov     dword [esp+18H], esi                    ; 388E _ 89. 74 24, 18
        mov     esi, dword [ebp-10H]                    ; 3892 _ 8B. 75, F0
        mov     dword [esp+14H], esi                    ; 3895 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 3899 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 389D _ 89. 4C 24, 0C
        mov     dword [esp+8H], 0                       ; 38A1 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 38A9 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 38AD _ 89. 04 24
        call    _boxfill8                               ; 38B0 _ E8, FFFFF0C5
        mov     eax, dword [ebp+0CH]                    ; 38B5 _ 8B. 45, 0C
        lea     esi, [eax-2H]                           ; 38B8 _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 38BB _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 38BE _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 38C1 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 38C4 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 38C7 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 38CA _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 38CD _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 38D0 _ 8B. 00
        mov     edi, dword [ebp-14H]                    ; 38D2 _ 8B. 7D, EC
        mov     dword [esp+18H], edi                    ; 38D5 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 38D9 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 38DD _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 38E1 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 0                       ; 38E5 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 38ED _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 38F1 _ 89. 04 24
        call    _boxfill8                               ; 38F4 _ E8, FFFFF081
        mov     eax, dword [ebp-14H]                    ; 38F9 _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 38FC _ 8D. 70, 01
        mov     eax, dword [ebp-14H]                    ; 38FF _ 8B. 45, EC
        lea     ebx, [eax+1H]                           ; 3902 _ 8D. 58, 01
        mov     eax, dword [ebp+0CH]                    ; 3905 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 3908 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 390B _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 390E _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 3911 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3914 _ 8B. 00
        mov     dword [esp+18H], esi                    ; 3916 _ 89. 74 24, 18
        mov     esi, dword [ebp-10H]                    ; 391A _ 8B. 75, F0
        mov     dword [esp+14H], esi                    ; 391D _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 3921 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 3925 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 8                       ; 3929 _ C7. 44 24, 08, 00000008
        mov     dword [esp+4H], edx                     ; 3931 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3935 _ 89. 04 24
        call    _boxfill8                               ; 3938 _ E8, FFFFF03D
        mov     eax, dword [ebp-14H]                    ; 393D _ 8B. 45, EC
        lea     edi, [eax+1H]                           ; 3940 _ 8D. 78, 01
        mov     eax, dword [ebp-10H]                    ; 3943 _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 3946 _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 3949 _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 394C _ 8D. 58, FE
        mov     eax, dword [ebp-10H]                    ; 394F _ 8B. 45, F0
        lea     ecx, [eax+1H]                           ; 3952 _ 8D. 48, 01
        mov     eax, dword [ebp+8H]                     ; 3955 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 3958 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 395B _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 395E _ 8B. 00
        mov     dword [esp+18H], edi                    ; 3960 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 3964 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 3968 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 396C _ 89. 4C 24, 0C
        mov     dword [esp+8H], 8                       ; 3970 _ C7. 44 24, 08, 00000008
        mov     dword [esp+4H], edx                     ; 3978 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 397C _ 89. 04 24
        call    _boxfill8                               ; 397F _ E8, FFFFEFF6
        mov     eax, dword [ebp+10H]                    ; 3984 _ 8B. 45, 10
        lea     esi, [eax-1H]                           ; 3987 _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 398A _ 8B. 45, 0C
        lea     ebx, [eax-1H]                           ; 398D _ 8D. 58, FF
        mov     eax, dword [ebp+1CH]                    ; 3990 _ 8B. 45, 1C
        movzx   eax, al                                 ; 3993 _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 3996 _ 8B. 55, 08
        mov     ecx, dword [edx+4H]                     ; 3999 _ 8B. 4A, 04
        mov     edx, dword [ebp+8H]                     ; 399C _ 8B. 55, 08
        mov     edx, dword [edx]                        ; 399F _ 8B. 12
        mov     edi, dword [ebp-14H]                    ; 39A1 _ 8B. 7D, EC
        mov     dword [esp+18H], edi                    ; 39A4 _ 89. 7C 24, 18
        mov     edi, dword [ebp-10H]                    ; 39A8 _ 8B. 7D, F0
        mov     dword [esp+14H], edi                    ; 39AB _ 89. 7C 24, 14
        mov     dword [esp+10H], esi                    ; 39AF _ 89. 74 24, 10
        mov     dword [esp+0CH], ebx                    ; 39B3 _ 89. 5C 24, 0C
        mov     dword [esp+8H], eax                     ; 39B7 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 39BB _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 39BF _ 89. 14 24
        call    _boxfill8                               ; 39C2 _ E8, FFFFEFB3
        nop                                             ; 39C7 _ 90
        add     esp, 44                                 ; 39C8 _ 83. C4, 2C
        pop     ebx                                     ; 39CB _ 5B
        pop     esi                                     ; 39CC _ 5E
        pop     edi                                     ; 39CD _ 5F
        pop     ebp                                     ; 39CE _ 5D
        ret                                             ; 39CF _ C3
; _make_textbox8 End of function

_file_loadfile:; Function begin
        push    ebp                                     ; 39D0 _ 55
        mov     ebp, esp                                ; 39D1 _ 89. E5
        sub     esp, 56                                 ; 39D3 _ 83. EC, 38
        mov     dword [ebp-0CH], 78848                  ; 39D6 _ C7. 45, F4, 00013400
        mov     eax, dword [_memman]                    ; 39DD _ A1, 00000000(d)
        mov     dword [esp+4H], 13                      ; 39E2 _ C7. 44 24, 04, 0000000D
        mov     dword [esp], eax                        ; 39EA _ 89. 04 24
        call    _memman_alloc                           ; 39ED _ E8, 00000000(rel)
        mov     dword [ebp-1CH], eax                    ; 39F2 _ 89. 45, E4
        mov     eax, dword [ebp-1CH]                    ; 39F5 _ 8B. 45, E4
        add     eax, 12                                 ; 39F8 _ 83. C0, 0C
        mov     byte [eax], 0                           ; 39FB _ C6. 00, 00
        jmp     ?_201                                   ; 39FE _ E9, 00000125

?_191:  mov     dword [ebp-10H], 0                      ; 3A03 _ C7. 45, F0, 00000000
        jmp     ?_193                                   ; 3A0A _ EB, 2A

?_192:  mov     edx, dword [ebp-0CH]                    ; 3A0C _ 8B. 55, F4
        mov     eax, dword [ebp-10H]                    ; 3A0F _ 8B. 45, F0
        add     eax, edx                                ; 3A12 _ 01. D0
        movzx   eax, byte [eax]                         ; 3A14 _ 0F B6. 00
        test    al, al                                  ; 3A17 _ 84. C0
        jz      ?_194                                   ; 3A19 _ 74, 23
        mov     edx, dword [ebp-0CH]                    ; 3A1B _ 8B. 55, F4
        mov     eax, dword [ebp-10H]                    ; 3A1E _ 8B. 45, F0
        add     eax, edx                                ; 3A21 _ 01. D0
        movzx   ecx, byte [eax]                         ; 3A23 _ 0F B6. 08
        mov     edx, dword [ebp-10H]                    ; 3A26 _ 8B. 55, F0
        mov     eax, dword [ebp-1CH]                    ; 3A29 _ 8B. 45, E4
        add     eax, edx                                ; 3A2C _ 01. D0
        mov     edx, ecx                                ; 3A2E _ 89. CA
        mov     byte [eax], dl                          ; 3A30 _ 88. 10
        add     dword [ebp-10H], 1                      ; 3A32 _ 83. 45, F0, 01
?_193:  cmp     dword [ebp-10H], 7                      ; 3A36 _ 83. 7D, F0, 07
        jle     ?_192                                   ; 3A3A _ 7E, D0
        jmp     ?_195                                   ; 3A3C _ EB, 01

?_194:  nop                                             ; 3A3E _ 90
?_195:  mov     dword [ebp-14H], 0                      ; 3A3F _ C7. 45, EC, 00000000
        mov     edx, dword [ebp-10H]                    ; 3A46 _ 8B. 55, F0
        mov     eax, dword [ebp-1CH]                    ; 3A49 _ 8B. 45, E4
        add     eax, edx                                ; 3A4C _ 01. D0
        mov     byte [eax], 46                          ; 3A4E _ C6. 00, 2E
        add     dword [ebp-10H], 1                      ; 3A51 _ 83. 45, F0, 01
        mov     dword [ebp-14H], 0                      ; 3A55 _ C7. 45, EC, 00000000
        jmp     ?_197                                   ; 3A5C _ EB, 22

?_196:  mov     edx, dword [ebp-0CH]                    ; 3A5E _ 8B. 55, F4
        mov     eax, dword [ebp-14H]                    ; 3A61 _ 8B. 45, EC
        add     eax, edx                                ; 3A64 _ 01. D0
        add     eax, 8                                  ; 3A66 _ 83. C0, 08
        movzx   ecx, byte [eax]                         ; 3A69 _ 0F B6. 08
        mov     edx, dword [ebp-10H]                    ; 3A6C _ 8B. 55, F0
        mov     eax, dword [ebp-1CH]                    ; 3A6F _ 8B. 45, E4
        add     eax, edx                                ; 3A72 _ 01. D0
        mov     edx, ecx                                ; 3A74 _ 89. CA
        mov     byte [eax], dl                          ; 3A76 _ 88. 10
        add     dword [ebp-10H], 1                      ; 3A78 _ 83. 45, F0, 01
        add     dword [ebp-14H], 1                      ; 3A7C _ 83. 45, EC, 01
?_197:  cmp     dword [ebp-14H], 2                      ; 3A80 _ 83. 7D, EC, 02
        jle     ?_196                                   ; 3A84 _ 7E, D8
        mov     eax, dword [ebp-1CH]                    ; 3A86 _ 8B. 45, E4
        mov     dword [esp+4H], eax                     ; 3A89 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3A8D _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3A90 _ 89. 04 24
        call    _strcmp                                 ; 3A93 _ E8, 00000000(rel)
        cmp     eax, 1                                  ; 3A98 _ 83. F8, 01
        jne     ?_200                                   ; 3A9B _ 0F 85, 00000083
        mov     eax, dword [ebp-0CH]                    ; 3AA1 _ 8B. 45, F4
        mov     edx, dword [eax+1CH]                    ; 3AA4 _ 8B. 50, 1C
        mov     eax, dword [_memman]                    ; 3AA7 _ A1, 00000000(d)
        mov     dword [esp+4H], edx                     ; 3AAC _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3AB0 _ 89. 04 24
        call    _memman_alloc_4k                        ; 3AB3 _ E8, 00000000(rel)
        mov     edx, eax                                ; 3AB8 _ 89. C2
        mov     eax, dword [ebp+0CH]                    ; 3ABA _ 8B. 45, 0C
        mov     dword [eax], edx                        ; 3ABD _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 3ABF _ 8B. 45, F4
        mov     eax, dword [eax+1CH]                    ; 3AC2 _ 8B. 40, 1C
        mov     edx, eax                                ; 3AC5 _ 89. C2
        mov     eax, dword [ebp+0CH]                    ; 3AC7 _ 8B. 45, 0C
        mov     dword [eax+8H], edx                     ; 3ACA _ 89. 50, 08
        mov     dword [ebp-20H], 88064                  ; 3ACD _ C7. 45, E0, 00015800
        mov     eax, dword [ebp-0CH]                    ; 3AD4 _ 8B. 45, F4
        movzx   eax, word [eax+1AH]                     ; 3AD7 _ 0F B7. 40, 1A
        movzx   eax, ax                                 ; 3ADB _ 0F B7. C0
        shl     eax, 9                                  ; 3ADE _ C1. E0, 09
        add     dword [ebp-20H], eax                    ; 3AE1 _ 01. 45, E0
        mov     eax, dword [ebp-0CH]                    ; 3AE4 _ 8B. 45, F4
        mov     eax, dword [eax+1CH]                    ; 3AE7 _ 8B. 40, 1C
        mov     dword [ebp-24H], eax                    ; 3AEA _ 89. 45, DC
        mov     dword [ebp-18H], 0                      ; 3AED _ C7. 45, E8, 00000000
        mov     dword [ebp-18H], 0                      ; 3AF4 _ C7. 45, E8, 00000000
        jmp     ?_199                                   ; 3AFB _ EB, 1D

?_198:  mov     edx, dword [ebp-18H]                    ; 3AFD _ 8B. 55, E8
        mov     eax, dword [ebp-20H]                    ; 3B00 _ 8B. 45, E0
        add     eax, edx                                ; 3B03 _ 01. D0
        movzx   ecx, byte [eax]                         ; 3B05 _ 0F B6. 08
        mov     eax, dword [ebp+0CH]                    ; 3B08 _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 3B0B _ 8B. 10
        mov     eax, dword [ebp-18H]                    ; 3B0D _ 8B. 45, E8
        add     eax, edx                                ; 3B10 _ 01. D0
        mov     edx, ecx                                ; 3B12 _ 89. CA
        mov     byte [eax], dl                          ; 3B14 _ 88. 10
        add     dword [ebp-18H], 1                      ; 3B16 _ 83. 45, E8, 01
?_199:  mov     eax, dword [ebp-18H]                    ; 3B1A _ 8B. 45, E8
        cmp     eax, dword [ebp-24H]                    ; 3B1D _ 3B. 45, DC
        jl      ?_198                                   ; 3B20 _ 7C, DB
        jmp     ?_202                                   ; 3B22 _ EB, 12

?_200:  add     dword [ebp-0CH], 32                     ; 3B24 _ 83. 45, F4, 20
?_201:  mov     eax, dword [ebp-0CH]                    ; 3B28 _ 8B. 45, F4
        movzx   eax, byte [eax]                         ; 3B2B _ 0F B6. 00
        test    al, al                                  ; 3B2E _ 84. C0
        jne     ?_191                                   ; 3B30 _ 0F 85, FFFFFECD
?_202:  mov     edx, dword [ebp-1CH]                    ; 3B36 _ 8B. 55, E4
        mov     eax, dword [_memman]                    ; 3B39 _ A1, 00000000(d)
        mov     dword [esp+8H], 13                      ; 3B3E _ C7. 44 24, 08, 0000000D
        mov     dword [esp+4H], edx                     ; 3B46 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3B4A _ 89. 04 24
        call    _memman_free                            ; 3B4D _ E8, 00000000(rel)
        nop                                             ; 3B52 _ 90
        leave                                           ; 3B53 _ C9
        ret                                             ; 3B54 _ C3
; _file_loadfile End of function

_intHandlerForStackOverFlow:; Function begin
        push    ebp                                     ; 3B55 _ 55
        mov     ebp, esp                                ; 3B56 _ 89. E5
        sub     esp, 40                                 ; 3B58 _ 83. EC, 28
        mov     dword [?_359], 8                        ; 3B5B _ C7. 05, 00000010(d), 00000008
        mov     dword [esp], ?_354                      ; 3B65 _ C7. 04 24, 00000089(d)
        call    _cons_putstr                            ; 3B6C _ E8, FFFFDE46
        mov     dword [?_359], 8                        ; 3B71 _ C7. 05, 00000010(d), 00000008
        mov     eax, dword [?_360]                      ; 3B7B _ A1, 00000014(d)
        add     eax, 16                                 ; 3B80 _ 83. C0, 10
        mov     dword [?_360], eax                      ; 3B83 _ A3, 00000014(d)
        mov     dword [esp], ?_355                      ; 3B88 _ C7. 04 24, 00000090(d)
        call    _cons_putstr                            ; 3B8F _ E8, FFFFDE23
        mov     dword [?_359], 8                        ; 3B94 _ C7. 05, 00000010(d), 00000008
        mov     eax, dword [?_360]                      ; 3B9E _ A1, 00000014(d)
        add     eax, 16                                 ; 3BA3 _ 83. C0, 10
        mov     dword [?_360], eax                      ; 3BA6 _ A3, 00000014(d)
        mov     eax, dword [ebp+8H]                     ; 3BAB _ 8B. 45, 08
        add     eax, 44                                 ; 3BAE _ 83. C0, 2C
        mov     eax, dword [eax]                        ; 3BB1 _ 8B. 00
        mov     dword [esp], eax                        ; 3BB3 _ 89. 04 24
        call    _intToHexStr                            ; 3BB6 _ E8, FFFFF1AC
        mov     dword [ebp-0CH], eax                    ; 3BBB _ 89. 45, F4
        mov     dword [esp], ?_356                      ; 3BBE _ C7. 04 24, 000000A0(d)
        call    _cons_putstr                            ; 3BC5 _ E8, FFFFDDED
        mov     eax, dword [ebp-0CH]                    ; 3BCA _ 8B. 45, F4
        mov     dword [esp], eax                        ; 3BCD _ 89. 04 24
        call    _cons_putstr                            ; 3BD0 _ E8, FFFFDDE2
        mov     dword [?_359], 8                        ; 3BD5 _ C7. 05, 00000010(d), 00000008
        mov     eax, dword [?_360]                      ; 3BDF _ A1, 00000014(d)
        add     eax, 16                                 ; 3BE4 _ 83. C0, 10
        mov     dword [?_360], eax                      ; 3BE7 _ A3, 00000014(d)
        call    _task_now                               ; 3BEC _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 3BF1 _ 89. 45, F0
        mov     eax, dword [ebp-10H]                    ; 3BF4 _ 8B. 45, F0
        add     eax, 48                                 ; 3BF7 _ 83. C0, 30
        leave                                           ; 3BFA _ C9
        ret                                             ; 3BFB _ C3
; _intHandlerForStackOverFlow End of function

_intHandlerForException:; Function begin
        push    ebp                                     ; 3BFC _ 55
        mov     ebp, esp                                ; 3BFD _ 89. E5
        sub     esp, 40                                 ; 3BFF _ 83. EC, 28
        mov     dword [?_359], 8                        ; 3C02 _ C7. 05, 00000010(d), 00000008
        mov     dword [esp], ?_357                      ; 3C0C _ C7. 04 24, 000000A7(d)
        call    _cons_putstr                            ; 3C13 _ E8, FFFFDD9F
        mov     dword [?_359], 8                        ; 3C18 _ C7. 05, 00000010(d), 00000008
        mov     eax, dword [?_360]                      ; 3C22 _ A1, 00000014(d)
        add     eax, 16                                 ; 3C27 _ 83. C0, 10
        mov     dword [?_360], eax                      ; 3C2A _ A3, 00000014(d)
        mov     dword [esp], ?_358                      ; 3C2F _ C7. 04 24, 000000AF(d)
        call    _cons_putstr                            ; 3C36 _ E8, FFFFDD7C
        mov     eax, dword [?_360]                      ; 3C3B _ A1, 00000014(d)
        add     eax, 16                                 ; 3C40 _ 83. C0, 10
        mov     dword [?_360], eax                      ; 3C43 _ A3, 00000014(d)
        mov     dword [?_359], 8                        ; 3C48 _ C7. 05, 00000010(d), 00000008
        call    _task_now                               ; 3C52 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 3C57 _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 3C5A _ 8B. 45, F4
        add     eax, 48                                 ; 3C5D _ 83. C0, 30
        leave                                           ; 3C60 _ C9
        ret                                             ; 3C61 _ C3
; _intHandlerForException End of function

        nop                                             ; 3C62 _ 90
        nop                                             ; 3C63 _ 90


_shtctl_init:
        push    ebp                                     ; 3C64 _ 55
        mov     ebp, esp                                ; 3C65 _ 89. E5
        sub     esp, 40                                 ; 3C67 _ 83. EC, 28
        mov     dword [esp+4H], 9232                    ; 3C6A _ C7. 44 24, 04, 00002410
        mov     eax, dword [ebp+8H]                     ; 3C72 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3C75 _ 89. 04 24
        call    _memman_alloc_4k                        ; 3C78 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 3C7D _ 89. 45, F0
        cmp     dword [ebp-10H], 0                      ; 3C80 _ 83. 7D, F0, 00
        jnz     ?_203                                   ; 3C84 _ 75, 0A
        mov     eax, 0                                  ; 3C86 _ B8, 00000000
        jmp     ?_207                                   ; 3C8B _ E9, 000000A3

?_203:  mov     eax, dword [ebp+10H]                    ; 3C90 _ 8B. 45, 10
        imul    eax, dword [ebp+14H]                    ; 3C93 _ 0F AF. 45, 14
        mov     dword [esp+4H], eax                     ; 3C97 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3C9B _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3C9E _ 89. 04 24
        call    _memman_alloc_4k                        ; 3CA1 _ E8, 00000000(rel)
        mov     edx, eax                                ; 3CA6 _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 3CA8 _ 8B. 45, F0
        mov     dword [eax+4H], edx                     ; 3CAB _ 89. 50, 04
        mov     eax, dword [ebp-10H]                    ; 3CAE _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 3CB1 _ 8B. 40, 04
        test    eax, eax                                ; 3CB4 _ 85. C0
        jnz     ?_204                                   ; 3CB6 _ 75, 21
        mov     eax, dword [ebp-10H]                    ; 3CB8 _ 8B. 45, F0
        mov     dword [esp+8H], 9232                    ; 3CBB _ C7. 44 24, 08, 00002410
        mov     dword [esp+4H], eax                     ; 3CC3 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3CC7 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3CCA _ 89. 04 24
        call    _memman_free_4k                         ; 3CCD _ E8, 00000000(rel)
        mov     eax, 0                                  ; 3CD2 _ B8, 00000000
        jmp     ?_207                                   ; 3CD7 _ EB, 5A

?_204:  mov     eax, dword [ebp-10H]                    ; 3CD9 _ 8B. 45, F0
        mov     edx, dword [ebp+0CH]                    ; 3CDC _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 3CDF _ 89. 10
        mov     eax, dword [ebp-10H]                    ; 3CE1 _ 8B. 45, F0
        mov     edx, dword [ebp+10H]                    ; 3CE4 _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 3CE7 _ 89. 50, 08
        mov     eax, dword [ebp-10H]                    ; 3CEA _ 8B. 45, F0
        mov     edx, dword [ebp+14H]                    ; 3CED _ 8B. 55, 14
        mov     dword [eax+0CH], edx                    ; 3CF0 _ 89. 50, 0C
        mov     eax, dword [ebp-10H]                    ; 3CF3 _ 8B. 45, F0
        mov     dword [eax+10H], -1                     ; 3CF6 _ C7. 40, 10, FFFFFFFF
        mov     dword [ebp-0CH], 0                      ; 3CFD _ C7. 45, F4, 00000000
        jmp     ?_206                                   ; 3D04 _ EB, 21

?_205:  mov     ecx, dword [ebp-10H]                    ; 3D06 _ 8B. 4D, F0
        mov     edx, dword [ebp-0CH]                    ; 3D09 _ 8B. 55, F4
        mov     eax, edx                                ; 3D0C _ 89. D0
        shl     eax, 3                                  ; 3D0E _ C1. E0, 03
        add     eax, edx                                ; 3D11 _ 01. D0
        shl     eax, 2                                  ; 3D13 _ C1. E0, 02
        add     eax, ecx                                ; 3D16 _ 01. C8
        add     eax, 1072                               ; 3D18 _ 05, 00000430
        mov     dword [eax], 0                          ; 3D1D _ C7. 00, 00000000
        add     dword [ebp-0CH], 1                      ; 3D23 _ 83. 45, F4, 01
?_206:  cmp     dword [ebp-0CH], 255                    ; 3D27 _ 81. 7D, F4, 000000FF
        jle     ?_205                                   ; 3D2E _ 7E, D6
        mov     eax, dword [ebp-10H]                    ; 3D30 _ 8B. 45, F0
?_207:  leave                                           ; 3D33 _ C9
        ret                                             ; 3D34 _ C3

_sheet_alloc:; Function begin
        push    ebp                                     ; 3D35 _ 55
        mov     ebp, esp                                ; 3D36 _ 89. E5
        sub     esp, 24                                 ; 3D38 _ 83. EC, 18
        mov     dword [ebp-0CH], 0                      ; 3D3B _ C7. 45, F4, 00000000
        jmp     ?_210                                   ; 3D42 _ EB, 75

?_208:  mov     ecx, dword [ebp+8H]                     ; 3D44 _ 8B. 4D, 08
        mov     edx, dword [ebp-0CH]                    ; 3D47 _ 8B. 55, F4
        mov     eax, edx                                ; 3D4A _ 89. D0
        shl     eax, 3                                  ; 3D4C _ C1. E0, 03
        add     eax, edx                                ; 3D4F _ 01. D0
        shl     eax, 2                                  ; 3D51 _ C1. E0, 02
        add     eax, ecx                                ; 3D54 _ 01. C8
        add     eax, 1072                               ; 3D56 _ 05, 00000430
        mov     eax, dword [eax]                        ; 3D5B _ 8B. 00
        test    eax, eax                                ; 3D5D _ 85. C0
        jnz     ?_209                                   ; 3D5F _ 75, 54
        mov     edx, dword [ebp-0CH]                    ; 3D61 _ 8B. 55, F4
        mov     eax, edx                                ; 3D64 _ 89. D0
        shl     eax, 3                                  ; 3D66 _ C1. E0, 03
        add     eax, edx                                ; 3D69 _ 01. D0
        shl     eax, 2                                  ; 3D6B _ C1. E0, 02
        lea     edx, [eax+410H]                         ; 3D6E _ 8D. 90, 00000410
        mov     eax, dword [ebp+8H]                     ; 3D74 _ 8B. 45, 08
        add     eax, edx                                ; 3D77 _ 01. D0
        add     eax, 4                                  ; 3D79 _ 83. C0, 04
        mov     dword [ebp-10H], eax                    ; 3D7C _ 89. 45, F0
        mov     eax, dword [ebp+8H]                     ; 3D7F _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 3D82 _ 8B. 55, F4
        add     edx, 4                                  ; 3D85 _ 83. C2, 04
        mov     ecx, dword [ebp-10H]                    ; 3D88 _ 8B. 4D, F0
        mov     dword [eax+edx*4+4H], ecx               ; 3D8B _ 89. 4C 90, 04
        mov     eax, dword [ebp-10H]                    ; 3D8F _ 8B. 45, F0
        mov     dword [eax+1CH], 1                      ; 3D92 _ C7. 40, 1C, 00000001
        mov     eax, dword [ebp-10H]                    ; 3D99 _ 8B. 45, F0
        mov     dword [eax+18H], -1                     ; 3D9C _ C7. 40, 18, FFFFFFFF
        call    _task_now                               ; 3DA3 _ E8, 00000000(rel)
        mov     edx, eax                                ; 3DA8 _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 3DAA _ 8B. 45, F0
        mov     dword [eax+20H], edx                    ; 3DAD _ 89. 50, 20
        mov     eax, dword [ebp-10H]                    ; 3DB0 _ 8B. 45, F0
        jmp     ?_211                                   ; 3DB3 _ EB, 12

?_209:  add     dword [ebp-0CH], 1                      ; 3DB5 _ 83. 45, F4, 01
?_210:  cmp     dword [ebp-0CH], 255                    ; 3DB9 _ 81. 7D, F4, 000000FF
        jle     ?_208                                   ; 3DC0 _ 7E, 82
        mov     eax, 0                                  ; 3DC2 _ B8, 00000000
?_211:  leave                                           ; 3DC7 _ C9
        ret                                             ; 3DC8 _ C3
; _sheet_alloc End of function

_sheet_setbuf:; Function begin
        push    ebp                                     ; 3DC9 _ 55
        mov     ebp, esp                                ; 3DCA _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 3DCC _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 3DCF _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 3DD2 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 3DD4 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 3DD7 _ 8B. 55, 10
        mov     dword [eax+4H], edx                     ; 3DDA _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 3DDD _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 3DE0 _ 8B. 55, 14
        mov     dword [eax+8H], edx                     ; 3DE3 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 3DE6 _ 8B. 45, 08
        mov     edx, dword [ebp+18H]                    ; 3DE9 _ 8B. 55, 18
        mov     dword [eax+14H], edx                    ; 3DEC _ 89. 50, 14
        nop                                             ; 3DEF _ 90
        pop     ebp                                     ; 3DF0 _ 5D
        ret                                             ; 3DF1 _ C3
; _sheet_setbuf End of function

_sheet_updown:; Function begin
        push    ebp                                     ; 3DF2 _ 55
        mov     ebp, esp                                ; 3DF3 _ 89. E5
        push    edi                                     ; 3DF5 _ 57
        push    esi                                     ; 3DF6 _ 56
        push    ebx                                     ; 3DF7 _ 53
        sub     esp, 60                                 ; 3DF8 _ 83. EC, 3C
        mov     eax, dword [ebp+0CH]                    ; 3DFB _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 3DFE _ 8B. 40, 18
        mov     dword [ebp-20H], eax                    ; 3E01 _ 89. 45, E0
        mov     eax, dword [ebp+8H]                     ; 3E04 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3E07 _ 8B. 40, 10
        add     eax, 1                                  ; 3E0A _ 83. C0, 01
        cmp     dword [ebp+10H], eax                    ; 3E0D _ 39. 45, 10
        jle     ?_212                                   ; 3E10 _ 7E, 0C
        mov     eax, dword [ebp+8H]                     ; 3E12 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3E15 _ 8B. 40, 10
        add     eax, 1                                  ; 3E18 _ 83. C0, 01
        mov     dword [ebp+10H], eax                    ; 3E1B _ 89. 45, 10
?_212:  cmp     dword [ebp+10H], -1                     ; 3E1E _ 83. 7D, 10, FF
        jge     ?_213                                   ; 3E22 _ 7D, 07
        mov     dword [ebp+10H], -1                     ; 3E24 _ C7. 45, 10, FFFFFFFF
?_213:  mov     eax, dword [ebp+0CH]                    ; 3E2B _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 3E2E _ 8B. 55, 10
        mov     dword [eax+18H], edx                    ; 3E31 _ 89. 50, 18
        mov     eax, dword [ebp-20H]                    ; 3E34 _ 8B. 45, E0
        cmp     eax, dword [ebp+10H]                    ; 3E37 _ 3B. 45, 10
        jle     ?_220                                   ; 3E3A _ 0F 8E, 00000212
        cmp     dword [ebp+10H], 0                      ; 3E40 _ 83. 7D, 10, 00
        js      ?_216                                   ; 3E44 _ 0F 88, 000000FE
        mov     eax, dword [ebp-20H]                    ; 3E4A _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 3E4D _ 89. 45, E4
        jmp     ?_215                                   ; 3E50 _ EB, 34

?_214:  mov     eax, dword [ebp-1CH]                    ; 3E52 _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 3E55 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 3E58 _ 8B. 45, 08
        add     edx, 4                                  ; 3E5B _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 3E5E _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 3E62 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 3E65 _ 8B. 55, E4
        add     edx, 4                                  ; 3E68 _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 3E6B _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 3E6F _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 3E72 _ 8B. 55, E4
        add     edx, 4                                  ; 3E75 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 3E78 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 3E7C _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 3E7F _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 3E82 _ 83. 6D, E4, 01
?_215:  mov     eax, dword [ebp-1CH]                    ; 3E86 _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 3E89 _ 3B. 45, 10
        jg      ?_214                                   ; 3E8C _ 7F, C4
        mov     eax, dword [ebp+8H]                     ; 3E8E _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 3E91 _ 8B. 55, 10
        add     edx, 4                                  ; 3E94 _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 3E97 _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 3E9A _ 89. 4C 90, 04
        mov     eax, dword [ebp+10H]                    ; 3E9E _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 3EA1 _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 3EA4 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 3EA7 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 3EAA _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 3EAD _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 3EB0 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 3EB3 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 3EB6 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 3EB9 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 3EBC _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 3EBF _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 3EC2 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 3EC5 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 3EC8 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 3ECB _ 8B. 40, 0C
        mov     dword [esp+14H], esi                    ; 3ECE _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 3ED2 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 3ED6 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 3EDA _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 3EDE _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3EE2 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3EE5 _ 89. 04 24
        call    _sheet_refreshmap                       ; 3EE8 _ E8, 00000643
        mov     eax, dword [ebp+10H]                    ; 3EED _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 3EF0 _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 3EF3 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 3EF6 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 3EF9 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 3EFC _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 3EFF _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 3F02 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 3F05 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 3F08 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 3F0B _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 3F0E _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 3F11 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 3F14 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 3F17 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 3F1A _ 8B. 40, 0C
        mov     edi, dword [ebp-20H]                    ; 3F1D _ 8B. 7D, E0
        mov     dword [esp+18H], edi                    ; 3F20 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 3F24 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 3F28 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 3F2C _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 3F30 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 3F34 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3F38 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3F3B _ 89. 04 24
        call    _sheet_refreshsub                       ; 3F3E _ E8, 00000465
        jmp     ?_227                                   ; 3F43 _ E9, 0000027D

?_216:  mov     eax, dword [ebp+8H]                     ; 3F48 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3F4B _ 8B. 40, 10
        cmp     dword [ebp-20H], eax                    ; 3F4E _ 39. 45, E0
        jge     ?_219                                   ; 3F51 _ 7D, 47
        mov     eax, dword [ebp-20H]                    ; 3F53 _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 3F56 _ 89. 45, E4
        jmp     ?_218                                   ; 3F59 _ EB, 34

?_217:  mov     eax, dword [ebp-1CH]                    ; 3F5B _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 3F5E _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 3F61 _ 8B. 45, 08
        add     edx, 4                                  ; 3F64 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 3F67 _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 3F6B _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 3F6E _ 8B. 55, E4
        add     edx, 4                                  ; 3F71 _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 3F74 _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 3F78 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 3F7B _ 8B. 55, E4
        add     edx, 4                                  ; 3F7E _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 3F81 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 3F85 _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 3F88 _ 89. 50, 18
        add     dword [ebp-1CH], 1                      ; 3F8B _ 83. 45, E4, 01
?_218:  mov     eax, dword [ebp+8H]                     ; 3F8F _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3F92 _ 8B. 40, 10
        cmp     dword [ebp-1CH], eax                    ; 3F95 _ 39. 45, E4
        jl      ?_217                                   ; 3F98 _ 7C, C1
?_219:  mov     eax, dword [ebp+8H]                     ; 3F9A _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3F9D _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 3FA0 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 3FA3 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 3FA6 _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 3FA9 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 3FAC _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 3FAF _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 3FB2 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 3FB5 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 3FB8 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 3FBB _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 3FBE _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 3FC1 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 3FC4 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 3FC7 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 3FCA _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 3FCD _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 3FD0 _ 8B. 40, 0C
        mov     dword [esp+14H], 0                      ; 3FD3 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], ebx                    ; 3FDB _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 3FDF _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 3FE3 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 3FE7 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3FEB _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3FEE _ 89. 04 24
        call    _sheet_refreshmap                       ; 3FF1 _ E8, 0000053A
        mov     eax, dword [ebp-20H]                    ; 3FF6 _ 8B. 45, E0
        lea     esi, [eax-1H]                           ; 3FF9 _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 3FFC _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 3FFF _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 4002 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 4005 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 4008 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 400B _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 400E _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 4011 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 4014 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 4017 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 401A _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 401D _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 4020 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 4023 _ 8B. 40, 0C
        mov     dword [esp+18H], esi                    ; 4026 _ 89. 74 24, 18
        mov     dword [esp+14H], 0                      ; 402A _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], ebx                    ; 4032 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 4036 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 403A _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 403E _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4042 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4045 _ 89. 04 24
        call    _sheet_refreshsub                       ; 4048 _ E8, 0000035B
        jmp     ?_227                                   ; 404D _ E9, 00000173

?_220:  mov     eax, dword [ebp-20H]                    ; 4052 _ 8B. 45, E0
        cmp     eax, dword [ebp+10H]                    ; 4055 _ 3B. 45, 10
        jge     ?_227                                   ; 4058 _ 0F 8D, 00000167
        cmp     dword [ebp-20H], 0                      ; 405E _ 83. 7D, E0, 00
        js      ?_223                                   ; 4062 _ 78, 56
        mov     eax, dword [ebp-20H]                    ; 4064 _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 4067 _ 89. 45, E4
        jmp     ?_222                                   ; 406A _ EB, 34

?_221:  mov     eax, dword [ebp-1CH]                    ; 406C _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 406F _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 4072 _ 8B. 45, 08
        add     edx, 4                                  ; 4075 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 4078 _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 407C _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 407F _ 8B. 55, E4
        add     edx, 4                                  ; 4082 _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 4085 _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 4089 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 408C _ 8B. 55, E4
        add     edx, 4                                  ; 408F _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 4092 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 4096 _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 4099 _ 89. 50, 18
        add     dword [ebp-1CH], 1                      ; 409C _ 83. 45, E4, 01
?_222:  mov     eax, dword [ebp-1CH]                    ; 40A0 _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 40A3 _ 3B. 45, 10
        jl      ?_221                                   ; 40A6 _ 7C, C4
        mov     eax, dword [ebp+8H]                     ; 40A8 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 40AB _ 8B. 55, 10
        add     edx, 4                                  ; 40AE _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 40B1 _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 40B4 _ 89. 4C 90, 04
        jmp     ?_226                                   ; 40B8 _ EB, 6C

?_223:  mov     eax, dword [ebp+8H]                     ; 40BA _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 40BD _ 8B. 40, 10
        mov     dword [ebp-1CH], eax                    ; 40C0 _ 89. 45, E4
        jmp     ?_225                                   ; 40C3 _ EB, 3A

?_224:  mov     eax, dword [ebp-1CH]                    ; 40C5 _ 8B. 45, E4
        lea     ebx, [eax+1H]                           ; 40C8 _ 8D. 58, 01
        mov     eax, dword [ebp+8H]                     ; 40CB _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 40CE _ 8B. 55, E4
        add     edx, 4                                  ; 40D1 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 40D4 _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 40D8 _ 8B. 45, 08
        lea     edx, [ebx+4H]                           ; 40DB _ 8D. 53, 04
        mov     dword [eax+edx*4+4H], ecx               ; 40DE _ 89. 4C 90, 04
        mov     eax, dword [ebp-1CH]                    ; 40E2 _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 40E5 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 40E8 _ 8B. 45, 08
        add     edx, 4                                  ; 40EB _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 40EE _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 40F2 _ 8B. 55, E4
        add     edx, 1                                  ; 40F5 _ 83. C2, 01
        mov     dword [eax+18H], edx                    ; 40F8 _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 40FB _ 83. 6D, E4, 01
?_225:  mov     eax, dword [ebp-1CH]                    ; 40FF _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 4102 _ 3B. 45, 10
        jge     ?_224                                   ; 4105 _ 7D, BE
        mov     eax, dword [ebp+8H]                     ; 4107 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 410A _ 8B. 55, 10
        add     edx, 4                                  ; 410D _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 4110 _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 4113 _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 4117 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 411A _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 411D _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 4120 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 4123 _ 89. 50, 10
?_226:  mov     eax, dword [ebp+0CH]                    ; 4126 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 4129 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 412C _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 412F _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 4132 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 4135 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 4138 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 413B _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 413E _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 4141 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 4144 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 4147 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 414A _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 414D _ 8B. 40, 0C
        mov     esi, dword [ebp+10H]                    ; 4150 _ 8B. 75, 10
        mov     dword [esp+14H], esi                    ; 4153 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 4157 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 415B _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 415F _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 4163 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4167 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 416A _ 89. 04 24
        call    _sheet_refreshmap                       ; 416D _ E8, 000003BE
        mov     eax, dword [ebp+0CH]                    ; 4172 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 4175 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 4178 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 417B _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 417E _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 4181 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 4184 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 4187 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 418A _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 418D _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 4190 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 4193 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 4196 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 4199 _ 8B. 40, 0C
        mov     esi, dword [ebp+10H]                    ; 419C _ 8B. 75, 10
        mov     dword [esp+18H], esi                    ; 419F _ 89. 74 24, 18
        mov     esi, dword [ebp+10H]                    ; 41A3 _ 8B. 75, 10
        mov     dword [esp+14H], esi                    ; 41A6 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 41AA _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 41AE _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 41B2 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 41B6 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 41BA _ 8B. 45, 08
        mov     dword [esp], eax                        ; 41BD _ 89. 04 24
        call    _sheet_refreshsub                       ; 41C0 _ E8, 000001E3
?_227:  nop                                             ; 41C5 _ 90
        add     esp, 60                                 ; 41C6 _ 83. C4, 3C
        pop     ebx                                     ; 41C9 _ 5B
        pop     esi                                     ; 41CA _ 5E
        pop     edi                                     ; 41CB _ 5F
        pop     ebp                                     ; 41CC _ 5D
        ret                                             ; 41CD _ C3
; _sheet_updown End of function

_sheet_refresh:; Function begin
        push    ebp                                     ; 41CE _ 55
        mov     ebp, esp                                ; 41CF _ 89. E5
        push    edi                                     ; 41D1 _ 57
        push    esi                                     ; 41D2 _ 56
        push    ebx                                     ; 41D3 _ 53
        sub     esp, 60                                 ; 41D4 _ 83. EC, 3C
        mov     eax, dword [ebp+0CH]                    ; 41D7 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 41DA _ 8B. 40, 18
        test    eax, eax                                ; 41DD _ 85. C0
        js      ?_228                                   ; 41DF _ 78, 61
        mov     eax, dword [ebp+0CH]                    ; 41E1 _ 8B. 45, 0C
        mov     edi, dword [eax+18H]                    ; 41E4 _ 8B. 78, 18
        mov     eax, dword [ebp+0CH]                    ; 41E7 _ 8B. 45, 0C
        mov     esi, dword [eax+18H]                    ; 41EA _ 8B. 70, 18
        mov     eax, dword [ebp+0CH]                    ; 41ED _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 41F0 _ 8B. 50, 10
        mov     eax, dword [ebp+1CH]                    ; 41F3 _ 8B. 45, 1C
        lea     ebx, [edx+eax]                          ; 41F6 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 41F9 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 41FC _ 8B. 50, 0C
        mov     eax, dword [ebp+18H]                    ; 41FF _ 8B. 45, 18
        lea     ecx, [edx+eax]                          ; 4202 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 4205 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 4208 _ 8B. 50, 10
        mov     eax, dword [ebp+14H]                    ; 420B _ 8B. 45, 14
        add     edx, eax                                ; 420E _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 4210 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 4213 _ 8B. 40, 0C
        mov     dword [ebp-1CH], eax                    ; 4216 _ 89. 45, E4
        mov     eax, dword [ebp+10H]                    ; 4219 _ 8B. 45, 10
        add     eax, dword [ebp-1CH]                    ; 421C _ 03. 45, E4
        mov     dword [esp+18H], edi                    ; 421F _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 4223 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 4227 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 422B _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 422F _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 4233 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4237 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 423A _ 89. 04 24
        call    _sheet_refreshsub                       ; 423D _ E8, 00000166
?_228:  mov     eax, 0                                  ; 4242 _ B8, 00000000
        add     esp, 60                                 ; 4247 _ 83. C4, 3C
        pop     ebx                                     ; 424A _ 5B
        pop     esi                                     ; 424B _ 5E
        pop     edi                                     ; 424C _ 5F
        pop     ebp                                     ; 424D _ 5D
        ret                                             ; 424E _ C3
; _sheet_refresh End of function

_sheet_slide:; Function begin
        push    ebp                                     ; 424F _ 55
        mov     ebp, esp                                ; 4250 _ 89. E5
        push    esi                                     ; 4252 _ 56
        push    ebx                                     ; 4253 _ 53
        sub     esp, 48                                 ; 4254 _ 83. EC, 30
        mov     eax, dword [ebp+0CH]                    ; 4257 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 425A _ 8B. 40, 0C
        mov     dword [ebp-0CH], eax                    ; 425D _ 89. 45, F4
        mov     eax, dword [ebp+0CH]                    ; 4260 _ 8B. 45, 0C
        mov     eax, dword [eax+10H]                    ; 4263 _ 8B. 40, 10
        mov     dword [ebp-10H], eax                    ; 4266 _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 4269 _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 426C _ 8B. 55, 10
        mov     dword [eax+0CH], edx                    ; 426F _ 89. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 4272 _ 8B. 45, 0C
        mov     edx, dword [ebp+14H]                    ; 4275 _ 8B. 55, 14
        mov     dword [eax+10H], edx                    ; 4278 _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 427B _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 427E _ 8B. 40, 18
        test    eax, eax                                ; 4281 _ 85. C0
        js      ?_229                                   ; 4283 _ 0F 88, 00000117
        mov     eax, dword [ebp+0CH]                    ; 4289 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 428C _ 8B. 50, 08
        mov     eax, dword [ebp-10H]                    ; 428F _ 8B. 45, F0
        add     edx, eax                                ; 4292 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 4294 _ 8B. 45, 0C
        mov     ecx, dword [eax+4H]                     ; 4297 _ 8B. 48, 04
        mov     eax, dword [ebp-0CH]                    ; 429A _ 8B. 45, F4
        add     eax, ecx                                ; 429D _ 01. C8
        mov     dword [esp+14H], 0                      ; 429F _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], edx                    ; 42A7 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 42AB _ 89. 44 24, 0C
        mov     eax, dword [ebp-10H]                    ; 42AF _ 8B. 45, F0
        mov     dword [esp+8H], eax                     ; 42B2 _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 42B6 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 42B9 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 42BD _ 8B. 45, 08
        mov     dword [esp], eax                        ; 42C0 _ 89. 04 24
        call    _sheet_refreshmap                       ; 42C3 _ E8, 00000268
        mov     eax, dword [ebp+0CH]                    ; 42C8 _ 8B. 45, 0C
        mov     ecx, dword [eax+18H]                    ; 42CB _ 8B. 48, 18
        mov     eax, dword [ebp+0CH]                    ; 42CE _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 42D1 _ 8B. 50, 08
        mov     eax, dword [ebp+14H]                    ; 42D4 _ 8B. 45, 14
        add     edx, eax                                ; 42D7 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 42D9 _ 8B. 45, 0C
        mov     ebx, dword [eax+4H]                     ; 42DC _ 8B. 58, 04
        mov     eax, dword [ebp+10H]                    ; 42DF _ 8B. 45, 10
        add     eax, ebx                                ; 42E2 _ 01. D8
        mov     dword [esp+14H], ecx                    ; 42E4 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 42E8 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 42EC _ 89. 44 24, 0C
        mov     eax, dword [ebp+14H]                    ; 42F0 _ 8B. 45, 14
        mov     dword [esp+8H], eax                     ; 42F3 _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 42F7 _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 42FA _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 42FE _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4301 _ 89. 04 24
        call    _sheet_refreshmap                       ; 4304 _ E8, 00000227
        mov     eax, dword [ebp+0CH]                    ; 4309 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 430C _ 8B. 40, 18
        lea     ecx, [eax-1H]                           ; 430F _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 4312 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 4315 _ 8B. 50, 08
        mov     eax, dword [ebp-10H]                    ; 4318 _ 8B. 45, F0
        add     edx, eax                                ; 431B _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 431D _ 8B. 45, 0C
        mov     ebx, dword [eax+4H]                     ; 4320 _ 8B. 58, 04
        mov     eax, dword [ebp-0CH]                    ; 4323 _ 8B. 45, F4
        add     eax, ebx                                ; 4326 _ 01. D8
        mov     dword [esp+18H], ecx                    ; 4328 _ 89. 4C 24, 18
        mov     dword [esp+14H], 0                      ; 432C _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], edx                    ; 4334 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 4338 _ 89. 44 24, 0C
        mov     eax, dword [ebp-10H]                    ; 433C _ 8B. 45, F0
        mov     dword [esp+8H], eax                     ; 433F _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 4343 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 4346 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 434A _ 8B. 45, 08
        mov     dword [esp], eax                        ; 434D _ 89. 04 24
        call    _sheet_refreshsub                       ; 4350 _ E8, 00000053
        mov     eax, dword [ebp+0CH]                    ; 4355 _ 8B. 45, 0C
        mov     ebx, dword [eax+18H]                    ; 4358 _ 8B. 58, 18
        mov     eax, dword [ebp+0CH]                    ; 435B _ 8B. 45, 0C
        mov     ecx, dword [eax+18H]                    ; 435E _ 8B. 48, 18
        mov     eax, dword [ebp+0CH]                    ; 4361 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 4364 _ 8B. 50, 08
        mov     eax, dword [ebp+14H]                    ; 4367 _ 8B. 45, 14
        add     edx, eax                                ; 436A _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 436C _ 8B. 45, 0C
        mov     esi, dword [eax+4H]                     ; 436F _ 8B. 70, 04
        mov     eax, dword [ebp+10H]                    ; 4372 _ 8B. 45, 10
        add     eax, esi                                ; 4375 _ 01. F0
        mov     dword [esp+18H], ebx                    ; 4377 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 437B _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 437F _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 4383 _ 89. 44 24, 0C
        mov     eax, dword [ebp+14H]                    ; 4387 _ 8B. 45, 14
        mov     dword [esp+8H], eax                     ; 438A _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 438E _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 4391 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4395 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4398 _ 89. 04 24
        call    _sheet_refreshsub                       ; 439B _ E8, 00000008
?_229:  nop                                             ; 43A0 _ 90
        add     esp, 48                                 ; 43A1 _ 83. C4, 30
        pop     ebx                                     ; 43A4 _ 5B
        pop     esi                                     ; 43A5 _ 5E
        pop     ebp                                     ; 43A6 _ 5D
        ret                                             ; 43A7 _ C3
; _sheet_slide End of function

_sheet_refreshsub:; Function begin
        push    ebp                                     ; 43A8 _ 55
        mov     ebp, esp                                ; 43A9 _ 89. E5
        sub     esp, 48                                 ; 43AB _ 83. EC, 30
        mov     eax, dword [ebp+8H]                     ; 43AE _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 43B1 _ 8B. 00
        mov     dword [ebp-10H], eax                    ; 43B3 _ 89. 45, F0
        mov     eax, dword [ebp+8H]                     ; 43B6 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 43B9 _ 8B. 40, 04
        mov     dword [ebp-14H], eax                    ; 43BC _ 89. 45, EC
        cmp     dword [ebp+0CH], 0                      ; 43BF _ 83. 7D, 0C, 00
        jns     ?_230                                   ; 43C3 _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 43C5 _ C7. 45, 0C, 00000000
?_230:  cmp     dword [ebp+10H], 8                      ; 43CC _ 83. 7D, 10, 08
        jg      ?_231                                   ; 43D0 _ 7F, 07
        mov     dword [ebp+10H], 0                      ; 43D2 _ C7. 45, 10, 00000000
?_231:  mov     eax, dword [ebp+8H]                     ; 43D9 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 43DC _ 8B. 40, 08
        cmp     dword [ebp+14H], eax                    ; 43DF _ 39. 45, 14
        jle     ?_232                                   ; 43E2 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 43E4 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 43E7 _ 8B. 40, 08
        mov     dword [ebp+14H], eax                    ; 43EA _ 89. 45, 14
?_232:  mov     eax, dword [ebp+8H]                     ; 43ED _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 43F0 _ 8B. 40, 0C
        cmp     dword [ebp+18H], eax                    ; 43F3 _ 39. 45, 18
        jle     ?_233                                   ; 43F6 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 43F8 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 43FB _ 8B. 40, 0C
        mov     dword [ebp+18H], eax                    ; 43FE _ 89. 45, 18
?_233:  mov     eax, dword [ebp+1CH]                    ; 4401 _ 8B. 45, 1C
        mov     dword [ebp-4H], eax                     ; 4404 _ 89. 45, FC
        jmp     ?_240                                   ; 4407 _ E9, 00000115

?_234:  mov     eax, dword [ebp+8H]                     ; 440C _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 440F _ 8B. 55, FC
        add     edx, 4                                  ; 4412 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 4415 _ 8B. 44 90, 04
        mov     dword [ebp-18H], eax                    ; 4419 _ 89. 45, E8
        mov     eax, dword [ebp-18H]                    ; 441C _ 8B. 45, E8
        mov     eax, dword [eax]                        ; 441F _ 8B. 00
        mov     dword [ebp-1CH], eax                    ; 4421 _ 89. 45, E4
        mov     eax, dword [ebp+8H]                     ; 4424 _ 8B. 45, 08
        add     eax, 1044                               ; 4427 _ 05, 00000414
        mov     edx, dword [ebp-18H]                    ; 442C _ 8B. 55, E8
        sub     edx, eax                                ; 442F _ 29. C2
        mov     eax, edx                                ; 4431 _ 89. D0
        sar     eax, 2                                  ; 4433 _ C1. F8, 02
        imul    eax, eax, 954437177                     ; 4436 _ 69. C0, 38E38E39
        mov     byte [ebp-1DH], al                      ; 443C _ 88. 45, E3
        mov     dword [ebp-0CH], 0                      ; 443F _ C7. 45, F4, 00000000
        jmp     ?_239                                   ; 4446 _ E9, 000000C3

?_235:  mov     eax, dword [ebp-18H]                    ; 444B _ 8B. 45, E8
        mov     edx, dword [eax+10H]                    ; 444E _ 8B. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 4451 _ 8B. 45, F4
        add     eax, edx                                ; 4454 _ 01. D0
        mov     dword [ebp-24H], eax                    ; 4456 _ 89. 45, DC
        mov     dword [ebp-8H], 0                       ; 4459 _ C7. 45, F8, 00000000
        jmp     ?_238                                   ; 4460 _ E9, 00000096

?_236:  mov     eax, dword [ebp-18H]                    ; 4465 _ 8B. 45, E8
        mov     edx, dword [eax+0CH]                    ; 4468 _ 8B. 50, 0C
        mov     eax, dword [ebp-8H]                     ; 446B _ 8B. 45, F8
        add     eax, edx                                ; 446E _ 01. D0
        mov     dword [ebp-28H], eax                    ; 4470 _ 89. 45, D8
        mov     eax, dword [ebp+0CH]                    ; 4473 _ 8B. 45, 0C
        cmp     eax, dword [ebp-28H]                    ; 4476 _ 3B. 45, D8
        jg      ?_237                                   ; 4479 _ 7F, 7C
        mov     eax, dword [ebp-28H]                    ; 447B _ 8B. 45, D8
        cmp     eax, dword [ebp+14H]                    ; 447E _ 3B. 45, 14
        jge     ?_237                                   ; 4481 _ 7D, 74
        mov     eax, dword [ebp+10H]                    ; 4483 _ 8B. 45, 10
        cmp     eax, dword [ebp-24H]                    ; 4486 _ 3B. 45, DC
        jg      ?_237                                   ; 4489 _ 7F, 6C
        mov     eax, dword [ebp-24H]                    ; 448B _ 8B. 45, DC
        cmp     eax, dword [ebp+18H]                    ; 448E _ 3B. 45, 18
        jge     ?_237                                   ; 4491 _ 7D, 64
        mov     eax, dword [ebp-18H]                    ; 4493 _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 4496 _ 8B. 40, 04
        imul    eax, dword [ebp-0CH]                    ; 4499 _ 0F AF. 45, F4
        mov     edx, dword [ebp-8H]                     ; 449D _ 8B. 55, F8
        add     eax, edx                                ; 44A0 _ 01. D0
        mov     edx, eax                                ; 44A2 _ 89. C2
        mov     eax, dword [ebp-1CH]                    ; 44A4 _ 8B. 45, E4
        add     eax, edx                                ; 44A7 _ 01. D0
        movzx   eax, byte [eax]                         ; 44A9 _ 0F B6. 00
        mov     byte [ebp-29H], al                      ; 44AC _ 88. 45, D7
        mov     eax, dword [ebp+8H]                     ; 44AF _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 44B2 _ 8B. 40, 08
        imul    eax, dword [ebp-24H]                    ; 44B5 _ 0F AF. 45, DC
        mov     edx, dword [ebp-28H]                    ; 44B9 _ 8B. 55, D8
        add     eax, edx                                ; 44BC _ 01. D0
        mov     edx, eax                                ; 44BE _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 44C0 _ 8B. 45, EC
        add     eax, edx                                ; 44C3 _ 01. D0
        movzx   eax, byte [eax]                         ; 44C5 _ 0F B6. 00
        cmp     byte [ebp-1DH], al                      ; 44C8 _ 38. 45, E3
        jnz     ?_237                                   ; 44CB _ 75, 2A
        movzx   eax, byte [ebp-29H]                     ; 44CD _ 0F B6. 45, D7
        mov     edx, dword [ebp-18H]                    ; 44D1 _ 8B. 55, E8
        mov     edx, dword [edx+14H]                    ; 44D4 _ 8B. 52, 14
        cmp     eax, edx                                ; 44D7 _ 39. D0
        jz      ?_237                                   ; 44D9 _ 74, 1C
        mov     eax, dword [ebp+8H]                     ; 44DB _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 44DE _ 8B. 40, 08
        imul    eax, dword [ebp-24H]                    ; 44E1 _ 0F AF. 45, DC
        mov     edx, dword [ebp-28H]                    ; 44E5 _ 8B. 55, D8
        add     eax, edx                                ; 44E8 _ 01. D0
        mov     edx, eax                                ; 44EA _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 44EC _ 8B. 45, F0
        add     edx, eax                                ; 44EF _ 01. C2
        movzx   eax, byte [ebp-29H]                     ; 44F1 _ 0F B6. 45, D7
        mov     byte [edx], al                          ; 44F5 _ 88. 02
?_237:  add     dword [ebp-8H], 1                       ; 44F7 _ 83. 45, F8, 01
?_238:  mov     eax, dword [ebp-18H]                    ; 44FB _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 44FE _ 8B. 40, 04
        cmp     dword [ebp-8H], eax                     ; 4501 _ 39. 45, F8
        jl      ?_236                                   ; 4504 _ 0F 8C, FFFFFF5B
        add     dword [ebp-0CH], 1                      ; 450A _ 83. 45, F4, 01
?_239:  mov     eax, dword [ebp-18H]                    ; 450E _ 8B. 45, E8
        mov     eax, dword [eax+8H]                     ; 4511 _ 8B. 40, 08
        cmp     dword [ebp-0CH], eax                    ; 4514 _ 39. 45, F4
        jl      ?_235                                   ; 4517 _ 0F 8C, FFFFFF2E
        add     dword [ebp-4H], 1                       ; 451D _ 83. 45, FC, 01
?_240:  mov     eax, dword [ebp-4H]                     ; 4521 _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 4524 _ 3B. 45, 20
        jle     ?_234                                   ; 4527 _ 0F 8E, FFFFFEDF
        nop                                             ; 452D _ 90
        leave                                           ; 452E _ C9
        ret                                             ; 452F _ C3
; _sheet_refreshsub End of function

_sheet_refreshmap:; Function begin
        push    ebp                                     ; 4530 _ 55
        mov     ebp, esp                                ; 4531 _ 89. E5
        sub     esp, 64                                 ; 4533 _ 83. EC, 40
        mov     eax, dword [ebp+8H]                     ; 4536 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 4539 _ 8B. 40, 04
        mov     dword [ebp-20H], eax                    ; 453C _ 89. 45, E0
        cmp     dword [ebp+0CH], 0                      ; 453F _ 83. 7D, 0C, 00
        jns     ?_241                                   ; 4543 _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 4545 _ C7. 45, 0C, 00000000
?_241:  cmp     dword [ebp+10H], 0                      ; 454C _ 83. 7D, 10, 00
        jns     ?_242                                   ; 4550 _ 79, 07
        mov     dword [ebp+10H], 0                      ; 4552 _ C7. 45, 10, 00000000
?_242:  mov     eax, dword [ebp+8H]                     ; 4559 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 455C _ 8B. 40, 08
        cmp     dword [ebp+14H], eax                    ; 455F _ 39. 45, 14
        jle     ?_243                                   ; 4562 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 4564 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 4567 _ 8B. 40, 08
        mov     dword [ebp+14H], eax                    ; 456A _ 89. 45, 14
?_243:  mov     eax, dword [ebp+8H]                     ; 456D _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 4570 _ 8B. 40, 0C
        cmp     dword [ebp+18H], eax                    ; 4573 _ 39. 45, 18
        jle     ?_244                                   ; 4576 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 4578 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 457B _ 8B. 40, 0C
        mov     dword [ebp+18H], eax                    ; 457E _ 89. 45, 18
?_244:  mov     eax, dword [ebp+1CH]                    ; 4581 _ 8B. 45, 1C
        mov     dword [ebp-4H], eax                     ; 4584 _ 89. 45, FC
        jmp     ?_255                                   ; 4587 _ E9, 0000013F

?_245:  mov     eax, dword [ebp+8H]                     ; 458C _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 458F _ 8B. 55, FC
        add     edx, 4                                  ; 4592 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 4595 _ 8B. 44 90, 04
        mov     dword [ebp-24H], eax                    ; 4599 _ 89. 45, DC
        mov     eax, dword [ebp+8H]                     ; 459C _ 8B. 45, 08
        add     eax, 1044                               ; 459F _ 05, 00000414
        mov     edx, dword [ebp-24H]                    ; 45A4 _ 8B. 55, DC
        sub     edx, eax                                ; 45A7 _ 29. C2
        mov     eax, edx                                ; 45A9 _ 89. D0
        sar     eax, 2                                  ; 45AB _ C1. F8, 02
        imul    eax, eax, 954437177                     ; 45AE _ 69. C0, 38E38E39
        mov     byte [ebp-25H], al                      ; 45B4 _ 88. 45, DB
        mov     eax, dword [ebp-24H]                    ; 45B7 _ 8B. 45, DC
        mov     eax, dword [eax]                        ; 45BA _ 8B. 00
        mov     dword [ebp-2CH], eax                    ; 45BC _ 89. 45, D4
        mov     eax, dword [ebp-24H]                    ; 45BF _ 8B. 45, DC
        mov     eax, dword [eax+0CH]                    ; 45C2 _ 8B. 40, 0C
        mov     edx, dword [ebp+0CH]                    ; 45C5 _ 8B. 55, 0C
        sub     edx, eax                                ; 45C8 _ 29. C2
        mov     eax, edx                                ; 45CA _ 89. D0
        mov     dword [ebp-10H], eax                    ; 45CC _ 89. 45, F0
        mov     eax, dword [ebp-24H]                    ; 45CF _ 8B. 45, DC
        mov     eax, dword [eax+10H]                    ; 45D2 _ 8B. 40, 10
        mov     edx, dword [ebp+10H]                    ; 45D5 _ 8B. 55, 10
        sub     edx, eax                                ; 45D8 _ 29. C2
        mov     eax, edx                                ; 45DA _ 89. D0
        mov     dword [ebp-14H], eax                    ; 45DC _ 89. 45, EC
        mov     eax, dword [ebp-24H]                    ; 45DF _ 8B. 45, DC
        mov     eax, dword [eax+0CH]                    ; 45E2 _ 8B. 40, 0C
        mov     edx, dword [ebp+14H]                    ; 45E5 _ 8B. 55, 14
        sub     edx, eax                                ; 45E8 _ 29. C2
        mov     eax, edx                                ; 45EA _ 89. D0
        mov     dword [ebp-18H], eax                    ; 45EC _ 89. 45, E8
        mov     eax, dword [ebp-24H]                    ; 45EF _ 8B. 45, DC
        mov     eax, dword [eax+10H]                    ; 45F2 _ 8B. 40, 10
        mov     edx, dword [ebp+18H]                    ; 45F5 _ 8B. 55, 18
        sub     edx, eax                                ; 45F8 _ 29. C2
        mov     eax, edx                                ; 45FA _ 89. D0
        mov     dword [ebp-1CH], eax                    ; 45FC _ 89. 45, E4
        cmp     dword [ebp-10H], 0                      ; 45FF _ 83. 7D, F0, 00
        jns     ?_246                                   ; 4603 _ 79, 07
        mov     dword [ebp-10H], 0                      ; 4605 _ C7. 45, F0, 00000000
?_246:  cmp     dword [ebp-14H], 0                      ; 460C _ 83. 7D, EC, 00
        jns     ?_247                                   ; 4610 _ 79, 07
        mov     dword [ebp-14H], 0                      ; 4612 _ C7. 45, EC, 00000000
?_247:  mov     eax, dword [ebp-24H]                    ; 4619 _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 461C _ 8B. 40, 04
        cmp     dword [ebp-18H], eax                    ; 461F _ 39. 45, E8
        jle     ?_248                                   ; 4622 _ 7E, 09
        mov     eax, dword [ebp-24H]                    ; 4624 _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 4627 _ 8B. 40, 04
        mov     dword [ebp-18H], eax                    ; 462A _ 89. 45, E8
?_248:  mov     eax, dword [ebp-24H]                    ; 462D _ 8B. 45, DC
        mov     eax, dword [eax+8H]                     ; 4630 _ 8B. 40, 08
        cmp     dword [ebp-1CH], eax                    ; 4633 _ 39. 45, E4
        jle     ?_249                                   ; 4636 _ 7E, 09
        mov     eax, dword [ebp-24H]                    ; 4638 _ 8B. 45, DC
        mov     eax, dword [eax+8H]                     ; 463B _ 8B. 40, 08
        mov     dword [ebp-1CH], eax                    ; 463E _ 89. 45, E4
?_249:  mov     eax, dword [ebp-14H]                    ; 4641 _ 8B. 45, EC
        mov     dword [ebp-0CH], eax                    ; 4644 _ 89. 45, F4
        jmp     ?_254                                   ; 4647 _ EB, 76

?_250:  mov     eax, dword [ebp-24H]                    ; 4649 _ 8B. 45, DC
        mov     edx, dword [eax+10H]                    ; 464C _ 8B. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 464F _ 8B. 45, F4
        add     eax, edx                                ; 4652 _ 01. D0
        mov     dword [ebp-30H], eax                    ; 4654 _ 89. 45, D0
        mov     eax, dword [ebp-10H]                    ; 4657 _ 8B. 45, F0
        mov     dword [ebp-8H], eax                     ; 465A _ 89. 45, F8
        jmp     ?_253                                   ; 465D _ EB, 54

?_251:  mov     eax, dword [ebp-24H]                    ; 465F _ 8B. 45, DC
        mov     edx, dword [eax+0CH]                    ; 4662 _ 8B. 50, 0C
        mov     eax, dword [ebp-8H]                     ; 4665 _ 8B. 45, F8
        add     eax, edx                                ; 4668 _ 01. D0
        mov     dword [ebp-34H], eax                    ; 466A _ 89. 45, CC
        mov     eax, dword [ebp-24H]                    ; 466D _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 4670 _ 8B. 40, 04
        imul    eax, dword [ebp-0CH]                    ; 4673 _ 0F AF. 45, F4
        mov     edx, dword [ebp-8H]                     ; 4677 _ 8B. 55, F8
        add     eax, edx                                ; 467A _ 01. D0
        mov     edx, eax                                ; 467C _ 89. C2
        mov     eax, dword [ebp-2CH]                    ; 467E _ 8B. 45, D4
        add     eax, edx                                ; 4681 _ 01. D0
        movzx   eax, byte [eax]                         ; 4683 _ 0F B6. 00
        movzx   eax, al                                 ; 4686 _ 0F B6. C0
        mov     edx, dword [ebp-24H]                    ; 4689 _ 8B. 55, DC
        mov     edx, dword [edx+14H]                    ; 468C _ 8B. 52, 14
        cmp     eax, edx                                ; 468F _ 39. D0
        jz      ?_252                                   ; 4691 _ 74, 1C
        mov     eax, dword [ebp+8H]                     ; 4693 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 4696 _ 8B. 40, 08
        imul    eax, dword [ebp-30H]                    ; 4699 _ 0F AF. 45, D0
        mov     edx, dword [ebp-34H]                    ; 469D _ 8B. 55, CC
        add     eax, edx                                ; 46A0 _ 01. D0
        mov     edx, eax                                ; 46A2 _ 89. C2
        mov     eax, dword [ebp-20H]                    ; 46A4 _ 8B. 45, E0
        add     edx, eax                                ; 46A7 _ 01. C2
        movzx   eax, byte [ebp-25H]                     ; 46A9 _ 0F B6. 45, DB
        mov     byte [edx], al                          ; 46AD _ 88. 02
?_252:  add     dword [ebp-8H], 1                       ; 46AF _ 83. 45, F8, 01
?_253:  mov     eax, dword [ebp-8H]                     ; 46B3 _ 8B. 45, F8
        cmp     eax, dword [ebp-18H]                    ; 46B6 _ 3B. 45, E8
        jl      ?_251                                   ; 46B9 _ 7C, A4
        add     dword [ebp-0CH], 1                      ; 46BB _ 83. 45, F4, 01
?_254:  mov     eax, dword [ebp-0CH]                    ; 46BF _ 8B. 45, F4
        cmp     eax, dword [ebp-1CH]                    ; 46C2 _ 3B. 45, E4
        jl      ?_250                                   ; 46C5 _ 7C, 82
        add     dword [ebp-4H], 1                       ; 46C7 _ 83. 45, FC, 01
?_255:  mov     eax, dword [ebp+8H]                     ; 46CB _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 46CE _ 8B. 40, 10
        cmp     dword [ebp-4H], eax                     ; 46D1 _ 39. 45, FC
        jle     ?_245                                   ; 46D4 _ 0F 8E, FFFFFEB2
        nop                                             ; 46DA _ 90
        leave                                           ; 46DB _ C9
        ret                                             ; 46DC _ C3
; _sheet_refreshmap End of function

_sheet_free:; Function begin
        push    ebp                                     ; 46DD _ 55
        mov     ebp, esp                                ; 46DE _ 89. E5
        sub     esp, 24                                 ; 46E0 _ 83. EC, 18
        mov     eax, dword [ebp+0CH]                    ; 46E3 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 46E6 _ 8B. 40, 18
        test    eax, eax                                ; 46E9 _ 85. C0
        js      ?_256                                   ; 46EB _ 78, 1A
        mov     dword [esp+8H], -1                      ; 46ED _ C7. 44 24, 08, FFFFFFFF
        mov     eax, dword [ebp+0CH]                    ; 46F5 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 46F8 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 46FC _ 8B. 45, 08
        mov     dword [esp], eax                        ; 46FF _ 89. 04 24
        call    _sheet_updown                           ; 4702 _ E8, FFFFF6EB
?_256:  mov     eax, dword [ebp+0CH]                    ; 4707 _ 8B. 45, 0C
        mov     dword [eax+1CH], 0                      ; 470A _ C7. 40, 1C, 00000000
        nop                                             ; 4711 _ 90
        leave                                           ; 4712 _ C9
        ret                                             ; 4713 _ C3
; _sheet_free End of function


_memman_init:
        push    ebp                                     ; 4714 _ 55
        mov     ebp, esp                                ; 4715 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 4717 _ 8B. 45, 08
        mov     dword [eax], 0                          ; 471A _ C7. 00, 00000000
        mov     eax, dword [ebp+8H]                     ; 4720 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 4723 _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 472A _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 472D _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 4734 _ 8B. 45, 08
        mov     dword [eax+0CH], 0                      ; 4737 _ C7. 40, 0C, 00000000
        nop                                             ; 473E _ 90
        pop     ebp                                     ; 473F _ 5D
        ret                                             ; 4740 _ C3

_memman_total:; Function begin
        push    ebp                                     ; 4741 _ 55
        mov     ebp, esp                                ; 4742 _ 89. E5
        sub     esp, 16                                 ; 4744 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 4747 _ C7. 45, F8, 00000000
        mov     dword [ebp-4H], 0                       ; 474E _ C7. 45, FC, 00000000
        jmp     ?_258                                   ; 4755 _ EB, 14

?_257:  mov     eax, dword [ebp+8H]                     ; 4757 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 475A _ 8B. 55, FC
        add     edx, 2                                  ; 475D _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 4760 _ 8B. 44 D0, 04
        add     dword [ebp-8H], eax                     ; 4764 _ 01. 45, F8
        add     dword [ebp-4H], 1                       ; 4767 _ 83. 45, FC, 01
?_258:  mov     eax, dword [ebp+8H]                     ; 476B _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 476E _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 4770 _ 39. 45, FC
        jc      ?_257                                   ; 4773 _ 72, E2
        mov     eax, dword [ebp-8H]                     ; 4775 _ 8B. 45, F8
        leave                                           ; 4778 _ C9
        ret                                             ; 4779 _ C3
; _memman_total End of function

_memman_alloc:; Function begin
        push    ebp                                     ; 477A _ 55
        mov     ebp, esp                                ; 477B _ 89. E5
        sub     esp, 16                                 ; 477D _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 4780 _ C7. 45, FC, 00000000
        jmp     ?_262                                   ; 4787 _ E9, 00000083

?_259:  mov     eax, dword [ebp+8H]                     ; 478C _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 478F _ 8B. 55, FC
        add     edx, 2                                  ; 4792 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 4795 _ 8B. 44 D0, 04
        cmp     dword [ebp+0CH], eax                    ; 4799 _ 39. 45, 0C
        ja      ?_261                                   ; 479C _ 77, 6D
        mov     eax, dword [ebp+8H]                     ; 479E _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 47A1 _ 8B. 55, FC
        add     edx, 2                                  ; 47A4 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 47A7 _ 8B. 04 D0
        mov     dword [ebp-8H], eax                     ; 47AA _ 89. 45, F8
        mov     eax, dword [ebp+8H]                     ; 47AD _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 47B0 _ 8B. 55, FC
        add     edx, 2                                  ; 47B3 _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 47B6 _ 8B. 14 D0
        mov     eax, dword [ebp+0CH]                    ; 47B9 _ 8B. 45, 0C
        lea     ecx, [edx+eax]                          ; 47BC _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 47BF _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 47C2 _ 8B. 55, FC
        add     edx, 2                                  ; 47C5 _ 83. C2, 02
        mov     dword [eax+edx*8], ecx                  ; 47C8 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 47CB _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 47CE _ 8B. 55, FC
        add     edx, 2                                  ; 47D1 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 47D4 _ 8B. 44 D0, 04
        sub     eax, dword [ebp+0CH]                    ; 47D8 _ 2B. 45, 0C
        mov     edx, dword [ebp+8H]                     ; 47DB _ 8B. 55, 08
        mov     ecx, dword [ebp-4H]                     ; 47DE _ 8B. 4D, FC
        add     ecx, 2                                  ; 47E1 _ 83. C1, 02
        mov     dword [edx+ecx*8+4H], eax               ; 47E4 _ 89. 44 CA, 04
        mov     eax, dword [ebp+8H]                     ; 47E8 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 47EB _ 8B. 55, FC
        add     edx, 2                                  ; 47EE _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 47F1 _ 8B. 44 D0, 04
        test    eax, eax                                ; 47F5 _ 85. C0
        jnz     ?_260                                   ; 47F7 _ 75, 0D
        mov     eax, dword [ebp+8H]                     ; 47F9 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 47FC _ 8B. 00
        lea     edx, [eax-1H]                           ; 47FE _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 4801 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 4804 _ 89. 10
?_260:  mov     eax, dword [ebp-8H]                     ; 4806 _ 8B. 45, F8
        jmp     ?_263                                   ; 4809 _ EB, 17

?_261:  add     dword [ebp-4H], 1                       ; 480B _ 83. 45, FC, 01
?_262:  mov     eax, dword [ebp+8H]                     ; 480F _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 4812 _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 4814 _ 39. 45, FC
        jc      ?_259                                   ; 4817 _ 0F 82, FFFFFF6F
        mov     eax, 0                                  ; 481D _ B8, 00000000
?_263:  leave                                           ; 4822 _ C9
        ret                                             ; 4823 _ C3
; _memman_alloc End of function

_memman_free:; Function begin
        push    ebp                                     ; 4824 _ 55
        mov     ebp, esp                                ; 4825 _ 89. E5
        push    ebx                                     ; 4827 _ 53
        sub     esp, 16                                 ; 4828 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 482B _ C7. 45, F8, 00000000
        jmp     ?_265                                   ; 4832 _ EB, 15

?_264:  mov     eax, dword [ebp+8H]                     ; 4834 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 4837 _ 8B. 55, F8
        add     edx, 2                                  ; 483A _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 483D _ 8B. 04 D0
        cmp     dword [ebp+0CH], eax                    ; 4840 _ 39. 45, 0C
        jc      ?_266                                   ; 4843 _ 72, 10
        add     dword [ebp-8H], 1                       ; 4845 _ 83. 45, F8, 01
?_265:  mov     eax, dword [ebp+8H]                     ; 4849 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 484C _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 484E _ 39. 45, F8
        jl      ?_264                                   ; 4851 _ 7C, E1
        jmp     ?_267                                   ; 4853 _ EB, 01

?_266:  nop                                             ; 4855 _ 90
?_267:  cmp     dword [ebp-8H], 0                       ; 4856 _ 83. 7D, F8, 00
        jle     ?_269                                   ; 485A _ 0F 8E, 000000B8
        mov     eax, dword [ebp-8H]                     ; 4860 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 4863 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 4866 _ 8B. 45, 08
        add     edx, 2                                  ; 4869 _ 83. C2, 02
        mov     ecx, dword [eax+edx*8]                  ; 486C _ 8B. 0C D0
        mov     eax, dword [ebp-8H]                     ; 486F _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 4872 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 4875 _ 8B. 45, 08
        add     edx, 2                                  ; 4878 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 487B _ 8B. 44 D0, 04
        add     eax, ecx                                ; 487F _ 01. C8
        cmp     dword [ebp+0CH], eax                    ; 4881 _ 39. 45, 0C
        jne     ?_269                                   ; 4884 _ 0F 85, 0000008E
        mov     eax, dword [ebp-8H]                     ; 488A _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 488D _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 4890 _ 8B. 45, 08
        add     edx, 2                                  ; 4893 _ 83. C2, 02
        mov     ecx, dword [eax+edx*8+4H]               ; 4896 _ 8B. 4C D0, 04
        mov     eax, dword [ebp-8H]                     ; 489A _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 489D _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 48A0 _ 8B. 45, 10
        add     ecx, eax                                ; 48A3 _ 01. C1
        mov     eax, dword [ebp+8H]                     ; 48A5 _ 8B. 45, 08
        add     edx, 2                                  ; 48A8 _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 48AB _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 48AF _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 48B2 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 48B4 _ 39. 45, F8
        jge     ?_268                                   ; 48B7 _ 7D, 55
        mov     edx, dword [ebp+0CH]                    ; 48B9 _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 48BC _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 48BF _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 48C2 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 48C5 _ 8B. 55, F8
        add     edx, 2                                  ; 48C8 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 48CB _ 8B. 04 D0
        cmp     ecx, eax                                ; 48CE _ 39. C1
        jnz     ?_268                                   ; 48D0 _ 75, 3C
        mov     eax, dword [ebp-8H]                     ; 48D2 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 48D5 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 48D8 _ 8B. 45, 08
        add     edx, 2                                  ; 48DB _ 83. C2, 02
        mov     ecx, dword [eax+edx*8+4H]               ; 48DE _ 8B. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 48E2 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 48E5 _ 8B. 55, F8
        add     edx, 2                                  ; 48E8 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 48EB _ 8B. 44 D0, 04
        mov     edx, dword [ebp-8H]                     ; 48EF _ 8B. 55, F8
        sub     edx, 1                                  ; 48F2 _ 83. EA, 01
        add     ecx, eax                                ; 48F5 _ 01. C1
        mov     eax, dword [ebp+8H]                     ; 48F7 _ 8B. 45, 08
        add     edx, 2                                  ; 48FA _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 48FD _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 4901 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 4904 _ 8B. 00
        lea     edx, [eax-1H]                           ; 4906 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 4909 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 490C _ 89. 10
?_268:  mov     eax, 0                                  ; 490E _ B8, 00000000
        jmp     ?_275                                   ; 4913 _ E9, 0000011C

?_269:  mov     eax, dword [ebp+8H]                     ; 4918 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 491B _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 491D _ 39. 45, F8
        jge     ?_270                                   ; 4920 _ 7D, 52
        mov     edx, dword [ebp+0CH]                    ; 4922 _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 4925 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 4928 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 492B _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 492E _ 8B. 55, F8
        add     edx, 2                                  ; 4931 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 4934 _ 8B. 04 D0
        cmp     ecx, eax                                ; 4937 _ 39. C1
        jnz     ?_270                                   ; 4939 _ 75, 39
        mov     eax, dword [ebp+8H]                     ; 493B _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 493E _ 8B. 55, F8
        add     edx, 2                                  ; 4941 _ 83. C2, 02
        mov     ecx, dword [ebp+0CH]                    ; 4944 _ 8B. 4D, 0C
        mov     dword [eax+edx*8], ecx                  ; 4947 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 494A _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 494D _ 8B. 55, F8
        add     edx, 2                                  ; 4950 _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 4953 _ 8B. 54 D0, 04
        mov     eax, dword [ebp+10H]                    ; 4957 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 495A _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 495D _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 4960 _ 8B. 55, F8
        add     edx, 2                                  ; 4963 _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 4966 _ 89. 4C D0, 04
        mov     eax, 0                                  ; 496A _ B8, 00000000
        jmp     ?_275                                   ; 496F _ E9, 000000C0

?_270:  mov     eax, dword [ebp+8H]                     ; 4974 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 4977 _ 8B. 00
        cmp     eax, 4095                               ; 4979 _ 3D, 00000FFF
        jg      ?_274                                   ; 497E _ 0F 8F, 00000087
        mov     eax, dword [ebp+8H]                     ; 4984 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 4987 _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 4989 _ 89. 45, F4
        jmp     ?_272                                   ; 498C _ EB, 28

?_271:  mov     eax, dword [ebp-0CH]                    ; 498E _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 4991 _ 8D. 50, FF
        mov     ecx, dword [ebp+8H]                     ; 4994 _ 8B. 4D, 08
        mov     eax, dword [ebp-0CH]                    ; 4997 _ 8B. 45, F4
        lea     ebx, [eax+2H]                           ; 499A _ 8D. 58, 02
        mov     eax, dword [ebp+8H]                     ; 499D _ 8B. 45, 08
        add     edx, 2                                  ; 49A0 _ 83. C2, 02
        lea     edx, [eax+edx*8]                        ; 49A3 _ 8D. 14 D0
        mov     eax, dword [edx]                        ; 49A6 _ 8B. 02
        mov     edx, dword [edx+4H]                     ; 49A8 _ 8B. 52, 04
        mov     dword [ecx+ebx*8], eax                  ; 49AB _ 89. 04 D9
        mov     dword [ecx+ebx*8+4H], edx               ; 49AE _ 89. 54 D9, 04
        sub     dword [ebp-0CH], 1                      ; 49B2 _ 83. 6D, F4, 01
?_272:  mov     eax, dword [ebp-0CH]                    ; 49B6 _ 8B. 45, F4
        cmp     eax, dword [ebp-8H]                     ; 49B9 _ 3B. 45, F8
        jg      ?_271                                   ; 49BC _ 7F, D0
        mov     eax, dword [ebp+8H]                     ; 49BE _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 49C1 _ 8B. 00
        lea     edx, [eax+1H]                           ; 49C3 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 49C6 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 49C9 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 49CB _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 49CE _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 49D1 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 49D4 _ 8B. 00
        cmp     edx, eax                                ; 49D6 _ 39. C2
        jge     ?_273                                   ; 49D8 _ 7D, 0B
        mov     eax, dword [ebp+8H]                     ; 49DA _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 49DD _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 49DF _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 49E2 _ 89. 50, 04
?_273:  mov     eax, dword [ebp+8H]                     ; 49E5 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 49E8 _ 8B. 55, F8
        add     edx, 2                                  ; 49EB _ 83. C2, 02
        mov     ecx, dword [ebp+0CH]                    ; 49EE _ 8B. 4D, 0C
        mov     dword [eax+edx*8], ecx                  ; 49F1 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 49F4 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 49F7 _ 8B. 55, F8
        add     edx, 2                                  ; 49FA _ 83. C2, 02
        mov     ecx, dword [ebp+10H]                    ; 49FD _ 8B. 4D, 10
        mov     dword [eax+edx*8+4H], ecx               ; 4A00 _ 89. 4C D0, 04
        mov     eax, 0                                  ; 4A04 _ B8, 00000000
        jmp     ?_275                                   ; 4A09 _ EB, 29

?_274:  mov     eax, dword [ebp+8H]                     ; 4A0B _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 4A0E _ 8B. 40, 0C
        lea     edx, [eax+1H]                           ; 4A11 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 4A14 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 4A17 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 4A1A _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 4A1D _ 8B. 40, 08
        mov     edx, eax                                ; 4A20 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 4A22 _ 8B. 45, 10
        add     eax, edx                                ; 4A25 _ 01. D0
        mov     edx, eax                                ; 4A27 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 4A29 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 4A2C _ 89. 50, 08
        mov     eax, 4294967295                         ; 4A2F _ B8, FFFFFFFF
?_275:  add     esp, 16                                 ; 4A34 _ 83. C4, 10
        pop     ebx                                     ; 4A37 _ 5B
        pop     ebp                                     ; 4A38 _ 5D
        ret                                             ; 4A39 _ C3
; _memman_free End of function

_memman_alloc_4k:; Function begin
        push    ebp                                     ; 4A3A _ 55
        mov     ebp, esp                                ; 4A3B _ 89. E5
        sub     esp, 24                                 ; 4A3D _ 83. EC, 18
        mov     eax, dword [ebp+0CH]                    ; 4A40 _ 8B. 45, 0C
        add     eax, 4095                               ; 4A43 _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 4A48 _ 25, FFFFF000
        mov     dword [ebp+0CH], eax                    ; 4A4D _ 89. 45, 0C
        mov     eax, dword [ebp+0CH]                    ; 4A50 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 4A53 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4A57 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4A5A _ 89. 04 24
        call    _memman_alloc                           ; 4A5D _ E8, FFFFFD18
        mov     dword [ebp-4H], eax                     ; 4A62 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 4A65 _ 8B. 45, FC
        leave                                           ; 4A68 _ C9
        ret                                             ; 4A69 _ C3
; _memman_alloc_4k End of function

_memman_free_4k:; Function begin
        push    ebp                                     ; 4A6A _ 55
        mov     ebp, esp                                ; 4A6B _ 89. E5
        sub     esp, 28                                 ; 4A6D _ 83. EC, 1C
        mov     eax, dword [ebp+10H]                    ; 4A70 _ 8B. 45, 10
        add     eax, 4095                               ; 4A73 _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 4A78 _ 25, FFFFF000
        mov     dword [ebp+10H], eax                    ; 4A7D _ 89. 45, 10
        mov     eax, dword [ebp+10H]                    ; 4A80 _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 4A83 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 4A87 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 4A8A _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 4A8E _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4A91 _ 89. 04 24
        call    _memman_free                            ; 4A94 _ E8, FFFFFD8B
        mov     dword [ebp-4H], eax                     ; 4A99 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 4A9C _ 8B. 45, FC
        leave                                           ; 4A9F _ C9
        ret                                             ; 4AA0 _ C3
; _memman_free_4k End of function

        nop                                             ; 4AA1 _ 90
        nop                                             ; 4AA2 _ 90
        nop                                             ; 4AA3 _ 90


_fifo8_init:
        push    ebp                                     ; 4AA4 _ 55
        mov     ebp, esp                                ; 4AA5 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 4AA7 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 4AAA _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 4AAD _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 4AB0 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 4AB3 _ 8B. 55, 10
        mov     dword [eax], edx                        ; 4AB6 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 4AB8 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 4ABB _ 8B. 55, 0C
        mov     dword [eax+10H], edx                    ; 4ABE _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 4AC1 _ 8B. 45, 08
        mov     dword [eax+14H], 0                      ; 4AC4 _ C7. 40, 14, 00000000
        mov     eax, dword [ebp+8H]                     ; 4ACB _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 4ACE _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 4AD5 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 4AD8 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 4ADF _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 4AE2 _ 8B. 55, 14
        mov     dword [eax+18H], edx                    ; 4AE5 _ 89. 50, 18
        nop                                             ; 4AE8 _ 90
        pop     ebp                                     ; 4AE9 _ 5D
        ret                                             ; 4AEA _ C3

_fifo8_put:; Function begin
        push    ebp                                     ; 4AEB _ 55
        mov     ebp, esp                                ; 4AEC _ 89. E5
        sub     esp, 40                                 ; 4AEE _ 83. EC, 28
        mov     eax, dword [ebp+0CH]                    ; 4AF1 _ 8B. 45, 0C
        mov     byte [ebp-0CH], al                      ; 4AF4 _ 88. 45, F4
        cmp     dword [ebp+8H], 0                       ; 4AF7 _ 83. 7D, 08, 00
        jnz     ?_276                                   ; 4AFB _ 75, 0A
        mov     eax, 4294967295                         ; 4AFD _ B8, FFFFFFFF
        jmp     ?_280                                   ; 4B02 _ E9, 000000AB

?_276:  mov     eax, dword [ebp+8H]                     ; 4B07 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 4B0A _ 8B. 40, 10
        test    eax, eax                                ; 4B0D _ 85. C0
        jnz     ?_277                                   ; 4B0F _ 75, 1B
        mov     eax, dword [ebp+8H]                     ; 4B11 _ 8B. 45, 08
        mov     eax, dword [eax+14H]                    ; 4B14 _ 8B. 40, 14
        or      eax, 01H                                ; 4B17 _ 83. C8, 01
        mov     edx, eax                                ; 4B1A _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 4B1C _ 8B. 45, 08
        mov     dword [eax+14H], edx                    ; 4B1F _ 89. 50, 14
        mov     eax, 4294967295                         ; 4B22 _ B8, FFFFFFFF
        jmp     ?_280                                   ; 4B27 _ E9, 00000086

?_277:  mov     eax, dword [ebp+8H]                     ; 4B2C _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 4B2F _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 4B31 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 4B34 _ 8B. 40, 04
        add     edx, eax                                ; 4B37 _ 01. C2
        movzx   eax, byte [ebp-0CH]                     ; 4B39 _ 0F B6. 45, F4
        mov     byte [edx], al                          ; 4B3D _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 4B3F _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 4B42 _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 4B45 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 4B48 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 4B4B _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 4B4E _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 4B51 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 4B54 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 4B57 _ 8B. 40, 0C
        cmp     edx, eax                                ; 4B5A _ 39. C2
        jnz     ?_278                                   ; 4B5C _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 4B5E _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 4B61 _ C7. 40, 04, 00000000
?_278:  mov     eax, dword [ebp+8H]                     ; 4B68 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 4B6B _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 4B6E _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 4B71 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 4B74 _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 4B77 _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 4B7A _ 8B. 40, 18
        test    eax, eax                                ; 4B7D _ 85. C0
        jz      ?_279                                   ; 4B7F _ 74, 2C
        mov     eax, dword [ebp+8H]                     ; 4B81 _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 4B84 _ 8B. 40, 18
        mov     eax, dword [eax+4H]                     ; 4B87 _ 8B. 40, 04
        cmp     eax, 2                                  ; 4B8A _ 83. F8, 02
        jz      ?_279                                   ; 4B8D _ 74, 1E
        mov     eax, dword [ebp+8H]                     ; 4B8F _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 4B92 _ 8B. 40, 18
        mov     dword [esp+8H], 0                       ; 4B95 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], -1                      ; 4B9D _ C7. 44 24, 04, FFFFFFFF
        mov     dword [esp], eax                        ; 4BA5 _ 89. 04 24
        call    _task_run                               ; 4BA8 _ E8, 00000000(rel)
?_279:  mov     eax, 0                                  ; 4BAD _ B8, 00000000
?_280:  leave                                           ; 4BB2 _ C9
        ret                                             ; 4BB3 _ C3
; _fifo8_put End of function

_fifo8_get:; Function begin
        push    ebp                                     ; 4BB4 _ 55
        mov     ebp, esp                                ; 4BB5 _ 89. E5
        sub     esp, 16                                 ; 4BB7 _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 4BBA _ 8B. 45, 08
        mov     edx, dword [eax+10H]                    ; 4BBD _ 8B. 50, 10
        mov     eax, dword [ebp+8H]                     ; 4BC0 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 4BC3 _ 8B. 40, 0C
        cmp     edx, eax                                ; 4BC6 _ 39. C2
        jnz     ?_281                                   ; 4BC8 _ 75, 07
        mov     eax, 4294967295                         ; 4BCA _ B8, FFFFFFFF
        jmp     ?_283                                   ; 4BCF _ EB, 51

?_281:  mov     eax, dword [ebp+8H]                     ; 4BD1 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 4BD4 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 4BD6 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 4BD9 _ 8B. 40, 08
        add     eax, edx                                ; 4BDC _ 01. D0
        movzx   eax, byte [eax]                         ; 4BDE _ 0F B6. 00
        movzx   eax, al                                 ; 4BE1 _ 0F B6. C0
        mov     dword [ebp-4H], eax                     ; 4BE4 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 4BE7 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 4BEA _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 4BED _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 4BF0 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 4BF3 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 4BF6 _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 4BF9 _ 8B. 50, 08
        mov     eax, dword [ebp+8H]                     ; 4BFC _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 4BFF _ 8B. 40, 0C
        cmp     edx, eax                                ; 4C02 _ 39. C2
        jnz     ?_282                                   ; 4C04 _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 4C06 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 4C09 _ C7. 40, 08, 00000000
?_282:  mov     eax, dword [ebp+8H]                     ; 4C10 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 4C13 _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 4C16 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 4C19 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 4C1C _ 89. 50, 10
        mov     eax, dword [ebp-4H]                     ; 4C1F _ 8B. 45, FC
?_283:  leave                                           ; 4C22 _ C9
        ret                                             ; 4C23 _ C3
; _fifo8_get End of function

_fifo8_status:; Function begin
        push    ebp                                     ; 4C24 _ 55
        mov     ebp, esp                                ; 4C25 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 4C27 _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 4C2A _ 8B. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 4C2D _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 4C30 _ 8B. 40, 10
        sub     edx, eax                                ; 4C33 _ 29. C2
        mov     eax, edx                                ; 4C35 _ 89. D0
        pop     ebp                                     ; 4C37 _ 5D
        ret                                             ; 4C38 _ C3
; _fifo8_status End of function

        nop                                             ; 4C39 _ 90
        nop                                             ; 4C3A _ 90
        nop                                             ; 4C3B _ 90


_init_pit:
        push    ebp                                     ; 4C3C _ 55
        mov     ebp, esp                                ; 4C3D _ 89. E5
        sub     esp, 40                                 ; 4C3F _ 83. EC, 28
        mov     dword [esp+4H], 52                      ; 4C42 _ C7. 44 24, 04, 00000034
        mov     dword [esp], 67                         ; 4C4A _ C7. 04 24, 00000043
        call    _io_out8                                ; 4C51 _ E8, 00000000(rel)
        mov     dword [esp+4H], 156                     ; 4C56 _ C7. 44 24, 04, 0000009C
        mov     dword [esp], 64                         ; 4C5E _ C7. 04 24, 00000040
        call    _io_out8                                ; 4C65 _ E8, 00000000(rel)
        mov     dword [esp+4H], 46                      ; 4C6A _ C7. 44 24, 04, 0000002E
        mov     dword [esp], 64                         ; 4C72 _ C7. 04 24, 00000040
        call    _io_out8                                ; 4C79 _ E8, 00000000(rel)
        mov     dword [_timerctl], 0                         ; 4C7E _ C7. 05, 00000000(d), 00000000
        mov     dword [ebp-0CH], 0                      ; 4C88 _ C7. 45, F4, 00000000
        jmp     ?_285                                   ; 4C8F _ EB, 26

?_284:  mov     eax, dword [ebp-0CH]                    ; 4C91 _ 8B. 45, F4
        shl     eax, 4                                  ; 4C94 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 4C97 _ 05, 00000008(d)
        mov     dword [eax], 0                          ; 4C9C _ C7. 00, 00000000
        mov     eax, dword [ebp-0CH]                    ; 4CA2 _ 8B. 45, F4
        shl     eax, 4                                  ; 4CA5 _ C1. E0, 04
        add     eax, _timerctl+0CH                           ; 4CA8 _ 05, 0000000C(d)
        mov     dword [eax], 0                          ; 4CAD _ C7. 00, 00000000
        add     dword [ebp-0CH], 1                      ; 4CB3 _ 83. 45, F4, 01
?_285:  cmp     dword [ebp-0CH], 499                    ; 4CB7 _ 81. 7D, F4, 000001F3
        jle     ?_284                                   ; 4CBE _ 7E, D1
        nop                                             ; 4CC0 _ 90
        leave                                           ; 4CC1 _ C9
        ret                                             ; 4CC2 _ C3

_timer_alloc:; Function begin
        push    ebp                                     ; 4CC3 _ 55
        mov     ebp, esp                                ; 4CC4 _ 89. E5
        sub     esp, 16                                 ; 4CC6 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 4CC9 _ C7. 45, FC, 00000000
        jmp     ?_288                                   ; 4CD0 _ EB, 36

?_286:  mov     eax, dword [ebp-4H]                     ; 4CD2 _ 8B. 45, FC
        shl     eax, 4                                  ; 4CD5 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 4CD8 _ 05, 00000008(d)
        mov     eax, dword [eax]                        ; 4CDD _ 8B. 00
        test    eax, eax                                ; 4CDF _ 85. C0
        jnz     ?_287                                   ; 4CE1 _ 75, 21
        mov     eax, dword [ebp-4H]                     ; 4CE3 _ 8B. 45, FC
        shl     eax, 4                                  ; 4CE6 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 4CE9 _ 05, 00000008(d)
        mov     dword [eax], 1                          ; 4CEE _ C7. 00, 00000001
        mov     eax, dword [ebp-4H]                     ; 4CF4 _ 8B. 45, FC
        shl     eax, 4                                  ; 4CF7 _ C1. E0, 04
        add     eax, _timerctl                               ; 4CFA _ 05, 00000000(d)
        add     eax, 4                                  ; 4CFF _ 83. C0, 04
        jmp     ?_289                                   ; 4D02 _ EB, 12

?_287:  add     dword [ebp-4H], 1                       ; 4D04 _ 83. 45, FC, 01
?_288:  cmp     dword [ebp-4H], 499                     ; 4D08 _ 81. 7D, FC, 000001F3
        jle     ?_286                                   ; 4D0F _ 7E, C1
        mov     eax, 0                                  ; 4D11 _ B8, 00000000
?_289:  leave                                           ; 4D16 _ C9
        ret                                             ; 4D17 _ C3
; _timer_alloc End of function

_timer_free:; Function begin
        push    ebp                                     ; 4D18 _ 55
        mov     ebp, esp                                ; 4D19 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 4D1B _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 4D1E _ C7. 40, 04, 00000000
        nop                                             ; 4D25 _ 90
        pop     ebp                                     ; 4D26 _ 5D
        ret                                             ; 4D27 _ C3
; _timer_free End of function

_timer_init:; Function begin
        push    ebp                                     ; 4D28 _ 55
        mov     ebp, esp                                ; 4D29 _ 89. E5
        sub     esp, 4                                  ; 4D2B _ 83. EC, 04
        mov     eax, dword [ebp+10H]                    ; 4D2E _ 8B. 45, 10
        mov     byte [ebp-4H], al                       ; 4D31 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 4D34 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 4D37 _ 8B. 55, 0C
        mov     dword [eax+8H], edx                     ; 4D3A _ 89. 50, 08
        mov     edx, dword [ebp+8H]                     ; 4D3D _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 4D40 _ 0F B6. 45, FC
        mov     byte [edx+0CH], al                      ; 4D44 _ 88. 42, 0C
        nop                                             ; 4D47 _ 90
        leave                                           ; 4D48 _ C9
        ret                                             ; 4D49 _ C3
; _timer_init End of function

_timer_settime:; Function begin
        push    ebp                                     ; 4D4A _ 55
        mov     ebp, esp                                ; 4D4B _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 4D4D _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 4D50 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 4D53 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 4D55 _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 4D58 _ C7. 40, 04, 00000002
        nop                                             ; 4D5F _ 90
        pop     ebp                                     ; 4D60 _ 5D
        ret                                             ; 4D61 _ C3
; _timer_settime End of function

_intHandlerForTimer:; Function begin
        push    ebp                                     ; 4D62 _ 55
        mov     ebp, esp                                ; 4D63 _ 89. E5
        sub     esp, 40                                 ; 4D65 _ 83. EC, 28
        mov     dword [esp+4H], 32                      ; 4D68 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 4D70 _ C7. 04 24, 00000020
        call    _io_out8                                ; 4D77 _ E8, 00000000(rel)
        mov     eax, dword [_timerctl]                       ; 4D7C _ A1, 00000000(d)
        add     eax, 1                                  ; 4D81 _ 83. C0, 01
        mov     dword [_timerctl], eax                       ; 4D84 _ A3, 00000000(d)
        mov     byte [ebp-0DH], 0                       ; 4D89 _ C6. 45, F3, 00
        mov     dword [ebp-0CH], 0                      ; 4D8D _ C7. 45, F4, 00000000
        jmp     ?_293                                   ; 4D94 _ E9, 000000AA

?_290:  mov     eax, dword [ebp-0CH]                    ; 4D99 _ 8B. 45, F4
        shl     eax, 4                                  ; 4D9C _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 4D9F _ 05, 00000008(d)
        mov     eax, dword [eax]                        ; 4DA4 _ 8B. 00
        cmp     eax, 2                                  ; 4DA6 _ 83. F8, 02
        jne     ?_291                                   ; 4DA9 _ 0F 85, 00000085
        mov     eax, dword [ebp-0CH]                    ; 4DAF _ 8B. 45, F4
        shl     eax, 4                                  ; 4DB2 _ C1. E0, 04
        add     eax, _timerctl+4H                            ; 4DB5 _ 05, 00000004(d)
        mov     eax, dword [eax]                        ; 4DBA _ 8B. 00
        lea     edx, [eax-1H]                           ; 4DBC _ 8D. 50, FF
        mov     eax, dword [ebp-0CH]                    ; 4DBF _ 8B. 45, F4
        shl     eax, 4                                  ; 4DC2 _ C1. E0, 04
        add     eax, _timerctl+4H                            ; 4DC5 _ 05, 00000004(d)
        mov     dword [eax], edx                        ; 4DCA _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 4DCC _ 8B. 45, F4
        shl     eax, 4                                  ; 4DCF _ C1. E0, 04
        add     eax, _timerctl+4H                            ; 4DD2 _ 05, 00000004(d)
        mov     eax, dword [eax]                        ; 4DD7 _ 8B. 00
        test    eax, eax                                ; 4DD9 _ 85. C0
        jnz     ?_291                                   ; 4DDB _ 75, 57
        mov     eax, dword [ebp-0CH]                    ; 4DDD _ 8B. 45, F4
        shl     eax, 4                                  ; 4DE0 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 4DE3 _ 05, 00000008(d)
        mov     dword [eax], 1                          ; 4DE8 _ C7. 00, 00000001
        mov     eax, dword [ebp-0CH]                    ; 4DEE _ 8B. 45, F4
        shl     eax, 4                                  ; 4DF1 _ C1. E0, 04
        add     eax, _timerctl+10H                           ; 4DF4 _ 05, 00000010(d)
        movzx   eax, byte [eax]                         ; 4DF9 _ 0F B6. 00
        movzx   eax, al                                 ; 4DFC _ 0F B6. C0
        mov     edx, dword [ebp-0CH]                    ; 4DFF _ 8B. 55, F4
        shl     edx, 4                                  ; 4E02 _ C1. E2, 04
        add     edx, _timerctl+0CH                           ; 4E05 _ 81. C2, 0000000C(d)
        mov     edx, dword [edx]                        ; 4E0B _ 8B. 12
        mov     dword [esp+4H], eax                     ; 4E0D _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 4E11 _ 89. 14 24
        call    _fifo8_put                              ; 4E14 _ E8, 00000000(rel)
        mov     eax, dword [ebp-0CH]                    ; 4E19 _ 8B. 45, F4
        shl     eax, 4                                  ; 4E1C _ C1. E0, 04
        add     eax, _timerctl                               ; 4E1F _ 05, 00000000(d)
        lea     edx, [eax+4H]                           ; 4E24 _ 8D. 50, 04
        mov     eax, dword [_task_timer]                ; 4E27 _ A1, 00000000(d)
        cmp     edx, eax                                ; 4E2C _ 39. C2
        jnz     ?_291                                   ; 4E2E _ 75, 04
        mov     byte [ebp-0DH], 1                       ; 4E30 _ C6. 45, F3, 01
?_291:  cmp     byte [ebp-0DH], 0                       ; 4E34 _ 80. 7D, F3, 00
        jz      ?_292                                   ; 4E38 _ 74, 05
        call    _task_switch                            ; 4E3A _ E8, 00000000(rel)
?_292:  add     dword [ebp-0CH], 1                      ; 4E3F _ 83. 45, F4, 01
?_293:  cmp     dword [ebp-0CH], 499                    ; 4E43 _ 81. 7D, F4, 000001F3
        jle     ?_290                                   ; 4E4A _ 0F 8E, FFFFFF49
        nop                                             ; 4E50 _ 90
        leave                                           ; 4E51 _ C9
        ret                                             ; 4E52 _ C3
; _intHandlerForTimer End of function

_getTimerController:; Function begin
        mov     eax, _timerctl                               ; 4E53 _ B8, 00000000(d)
        ret                                             ; 4E58 _ C3
; _getTimerController End of function

        nop                                             ; 4E59 _ 90
        nop                                             ; 4E5A _ 90
        nop                                             ; 4E5B _ 90


_set_segmdesc:
        push    ebp                                     ; 4E5C _ 55
        mov     ebp, esp                                ; 4E5D _ 89. E5
        cmp     dword [ebp+0CH], 1048575                ; 4E5F _ 81. 7D, 0C, 000FFFFF
        jbe     ?_294                                   ; 4E66 _ 76, 10
        or      dword [ebp+14H], 8000H                  ; 4E68 _ 81. 4D, 14, 00008000
        mov     eax, dword [ebp+0CH]                    ; 4E6F _ 8B. 45, 0C
        shr     eax, 12                                 ; 4E72 _ C1. E8, 0C
        mov     dword [ebp+0CH], eax                    ; 4E75 _ 89. 45, 0C
?_294:  mov     eax, dword [ebp+0CH]                    ; 4E78 _ 8B. 45, 0C
        mov     edx, eax                                ; 4E7B _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 4E7D _ 8B. 45, 08
        mov     word [eax], dx                          ; 4E80 _ 66: 89. 10
        mov     eax, dword [ebp+10H]                    ; 4E83 _ 8B. 45, 10
        mov     edx, eax                                ; 4E86 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 4E88 _ 8B. 45, 08
        mov     word [eax+2H], dx                       ; 4E8B _ 66: 89. 50, 02
        mov     eax, dword [ebp+10H]                    ; 4E8F _ 8B. 45, 10
        sar     eax, 16                                 ; 4E92 _ C1. F8, 10
        mov     edx, eax                                ; 4E95 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 4E97 _ 8B. 45, 08
        mov     byte [eax+4H], dl                       ; 4E9A _ 88. 50, 04
        mov     eax, dword [ebp+14H]                    ; 4E9D _ 8B. 45, 14
        mov     edx, eax                                ; 4EA0 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 4EA2 _ 8B. 45, 08
        mov     byte [eax+5H], dl                       ; 4EA5 _ 88. 50, 05
        mov     eax, dword [ebp+0CH]                    ; 4EA8 _ 8B. 45, 0C
        shr     eax, 16                                 ; 4EAB _ C1. E8, 10
        and     eax, 0FH                                ; 4EAE _ 83. E0, 0F
        mov     edx, eax                                ; 4EB1 _ 89. C2
        mov     eax, dword [ebp+14H]                    ; 4EB3 _ 8B. 45, 14
        sar     eax, 8                                  ; 4EB6 _ C1. F8, 08
        and     eax, 0FFFFFFF0H                         ; 4EB9 _ 83. E0, F0
        or      eax, edx                                ; 4EBC _ 09. D0
        mov     edx, eax                                ; 4EBE _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 4EC0 _ 8B. 45, 08
        mov     byte [eax+6H], dl                       ; 4EC3 _ 88. 50, 06
        mov     eax, dword [ebp+10H]                    ; 4EC6 _ 8B. 45, 10
        shr     eax, 24                                 ; 4EC9 _ C1. E8, 18
        mov     edx, eax                                ; 4ECC _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 4ECE _ 8B. 45, 08
        mov     byte [eax+7H], dl                       ; 4ED1 _ 88. 50, 07
        nop                                             ; 4ED4 _ 90
        pop     ebp                                     ; 4ED5 _ 5D
        ret                                             ; 4ED6 _ C3

_init_task_level:; Function begin
        push    ebp                                     ; 4ED7 _ 55
        mov     ebp, esp                                ; 4ED8 _ 89. E5
        sub     esp, 16                                 ; 4EDA _ 83. EC, 10
        mov     ecx, dword [_taskctl]                   ; 4EDD _ 8B. 0D, 00000004(d)
        mov     edx, dword [ebp+8H]                     ; 4EE3 _ 8B. 55, 08
        mov     eax, edx                                ; 4EE6 _ 89. D0
        shl     eax, 2                                  ; 4EE8 _ C1. E0, 02
        add     eax, edx                                ; 4EEB _ 01. D0
        shl     eax, 2                                  ; 4EED _ C1. E0, 02
        add     eax, ecx                                ; 4EF0 _ 01. C8
        add     eax, 8                                  ; 4EF2 _ 83. C0, 08
        mov     dword [eax], 0                          ; 4EF5 _ C7. 00, 00000000
        mov     ecx, dword [_taskctl]                   ; 4EFB _ 8B. 0D, 00000004(d)
        mov     edx, dword [ebp+8H]                     ; 4F01 _ 8B. 55, 08
        mov     eax, edx                                ; 4F04 _ 89. D0
        shl     eax, 2                                  ; 4F06 _ C1. E0, 02
        add     eax, edx                                ; 4F09 _ 01. D0
        shl     eax, 2                                  ; 4F0B _ C1. E0, 02
        add     eax, ecx                                ; 4F0E _ 01. C8
        add     eax, 12                                 ; 4F10 _ 83. C0, 0C
        mov     dword [eax], 0                          ; 4F13 _ C7. 00, 00000000
        mov     dword [ebp-4H], 0                       ; 4F19 _ C7. 45, FC, 00000000
        jmp     ?_296                                   ; 4F20 _ EB, 21

?_295:  mov     ecx, dword [_taskctl]                   ; 4F22 _ 8B. 0D, 00000004(d)
        mov     edx, dword [ebp-4H]                     ; 4F28 _ 8B. 55, FC
        mov     eax, edx                                ; 4F2B _ 89. D0
        add     eax, eax                                ; 4F2D _ 01. C0
        add     eax, edx                                ; 4F2F _ 01. D0
        shl     eax, 3                                  ; 4F31 _ C1. E0, 03
        add     eax, ecx                                ; 4F34 _ 01. C8
        add     eax, 16                                 ; 4F36 _ 83. C0, 10
        mov     dword [eax], 0                          ; 4F39 _ C7. 00, 00000000
        add     dword [ebp-4H], 1                       ; 4F3F _ 83. 45, FC, 01
?_296:  cmp     dword [ebp-4H], 2                       ; 4F43 _ 83. 7D, FC, 02
        jle     ?_295                                   ; 4F47 _ 7E, D9
        nop                                             ; 4F49 _ 90
        leave                                           ; 4F4A _ C9
        ret                                             ; 4F4B _ C3
; _init_task_level End of function

_task_init:; Function begin
        push    ebp                                     ; 4F4C _ 55
        mov     ebp, esp                                ; 4F4D _ 89. E5
        sub     esp, 40                                 ; 4F4F _ 83. EC, 28
        call    _get_addr_gdt                           ; 4F52 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 4F57 _ 89. 45, F0
        mov     dword [esp+4H], 768                     ; 4F5A _ C7. 44 24, 04, 00000300
        mov     eax, dword [ebp+8H]                     ; 4F62 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4F65 _ 89. 04 24
        call    _memman_alloc_4k                        ; 4F68 _ E8, 00000000(rel)
        mov     dword [_taskctl], eax                   ; 4F6D _ A3, 00000004(d)
        mov     dword [ebp-0CH], 0                      ; 4F72 _ C7. 45, F4, 00000000
        jmp     ?_298                                   ; 4F79 _ E9, 00000088

?_297:  mov     edx, dword [_taskctl]                   ; 4F7E _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-0CH]                    ; 4F84 _ 8B. 45, F4
        imul    eax, eax, 148                           ; 4F87 _ 69. C0, 00000094
        add     eax, edx                                ; 4F8D _ 01. D0
        add     eax, 72                                 ; 4F8F _ 83. C0, 48
        mov     dword [eax], 0                          ; 4F92 _ C7. 00, 00000000
        mov     eax, dword [ebp-0CH]                    ; 4F98 _ 8B. 45, F4
        add     eax, 7                                  ; 4F9B _ 83. C0, 07
        mov     ecx, dword [_taskctl]                   ; 4F9E _ 8B. 0D, 00000004(d)
        lea     edx, [eax*8]                            ; 4FA4 _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-0CH]                    ; 4FAB _ 8B. 45, F4
        imul    eax, eax, 148                           ; 4FAE _ 69. C0, 00000094
        add     eax, ecx                                ; 4FB4 _ 01. C8
        add     eax, 68                                 ; 4FB6 _ 83. C0, 44
        mov     dword [eax], edx                        ; 4FB9 _ 89. 10
        mov     edx, dword [_taskctl]                   ; 4FBB _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-0CH]                    ; 4FC1 _ 8B. 45, F4
        imul    eax, eax, 148                           ; 4FC4 _ 69. C0, 00000094
        add     eax, 96                                 ; 4FCA _ 83. C0, 60
        add     eax, edx                                ; 4FCD _ 01. D0
        add     eax, 16                                 ; 4FCF _ 83. C0, 10
        mov     ecx, eax                                ; 4FD2 _ 89. C1
        mov     eax, dword [ebp-0CH]                    ; 4FD4 _ 8B. 45, F4
        add     eax, 7                                  ; 4FD7 _ 83. C0, 07
        lea     edx, [eax*8]                            ; 4FDA _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-10H]                    ; 4FE1 _ 8B. 45, F0
        add     eax, edx                                ; 4FE4 _ 01. D0
        mov     dword [esp+0CH], 137                    ; 4FE6 _ C7. 44 24, 0C, 00000089
        mov     dword [esp+8H], ecx                     ; 4FEE _ 89. 4C 24, 08
        mov     dword [esp+4H], 103                     ; 4FF2 _ C7. 44 24, 04, 00000067
        mov     dword [esp], eax                        ; 4FFA _ 89. 04 24
        call    _set_segmdesc                           ; 4FFD _ E8, FFFFFE5A
        add     dword [ebp-0CH], 1                      ; 5002 _ 83. 45, F4, 01
?_298:  cmp     dword [ebp-0CH], 4                      ; 5006 _ 83. 7D, F4, 04
        jle     ?_297                                   ; 500A _ 0F 8E, FFFFFF6E
        mov     dword [ebp-0CH], 0                      ; 5010 _ C7. 45, F4, 00000000
        jmp     ?_300                                   ; 5017 _ EB, 0F

?_299:  mov     eax, dword [ebp-0CH]                    ; 5019 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 501C _ 89. 04 24
        call    _init_task_level                        ; 501F _ E8, FFFFFEB3
        add     dword [ebp-0CH], 1                      ; 5024 _ 83. 45, F4, 01
?_300:  cmp     dword [ebp-0CH], 2                      ; 5028 _ 83. 7D, F4, 02
        jle     ?_299                                   ; 502C _ 7E, EB
        call    _task_alloc                             ; 502E _ E8, 000000B3
        mov     dword [ebp-14H], eax                    ; 5033 _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 5036 _ 8B. 45, EC
        mov     dword [eax+4H], 2                       ; 5039 _ C7. 40, 04, 00000002
        mov     eax, dword [ebp-14H]                    ; 5040 _ 8B. 45, EC
        mov     dword [eax+8H], 100                     ; 5043 _ C7. 40, 08, 00000064
        mov     eax, dword [ebp-14H]                    ; 504A _ 8B. 45, EC
        mov     dword [eax+0CH], 0                      ; 504D _ C7. 40, 0C, 00000000
        mov     eax, dword [ebp-14H]                    ; 5054 _ 8B. 45, EC
        mov     dword [esp], eax                        ; 5057 _ 89. 04 24
        call    _task_add                               ; 505A _ E8, 0000003A
        call    _task_switchsub                         ; 505F _ E8, 00000439
        mov     eax, dword [ebp-14H]                    ; 5064 _ 8B. 45, EC
        mov     eax, dword [eax]                        ; 5067 _ 8B. 00
        mov     dword [esp], eax                        ; 5069 _ 89. 04 24
        call    _load_tr                                ; 506C _ E8, 00000000(rel)
        call    _timer_alloc                            ; 5071 _ E8, 00000000(rel)
        mov     dword [_task_timer], eax                       ; 5076 _ A3, 00000000(d)
        mov     eax, dword [ebp-14H]                    ; 507B _ 8B. 45, EC
        mov     eax, dword [eax+8H]                     ; 507E _ 8B. 40, 08
        mov     edx, eax                                ; 5081 _ 89. C2
        mov     eax, dword [_task_timer]                       ; 5083 _ A1, 00000000(d)
        mov     dword [esp+4H], edx                     ; 5088 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 508C _ 89. 04 24
        call    _timer_settime                          ; 508F _ E8, 00000000(rel)
        mov     eax, dword [ebp-14H]                    ; 5094 _ 8B. 45, EC
        leave                                           ; 5097 _ C9
        ret                                             ; 5098 _ C3
; _task_init End of function

_task_add:; Function begin
        push    ebp                                     ; 5099 _ 55
        mov     ebp, esp                                ; 509A _ 89. E5
        sub     esp, 16                                 ; 509C _ 83. EC, 10
        mov     ecx, dword [_taskctl]                   ; 509F _ 8B. 0D, 00000004(d)
        mov     eax, dword [ebp+8H]                     ; 50A5 _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 50A8 _ 8B. 50, 0C
        mov     eax, edx                                ; 50AB _ 89. D0
        shl     eax, 2                                  ; 50AD _ C1. E0, 02
        add     eax, edx                                ; 50B0 _ 01. D0
        shl     eax, 2                                  ; 50B2 _ C1. E0, 02
        add     eax, ecx                                ; 50B5 _ 01. C8
        add     eax, 8                                  ; 50B7 _ 83. C0, 08
        mov     dword [ebp-4H], eax                     ; 50BA _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 50BD _ 8B. 45, FC
        mov     edx, dword [eax]                        ; 50C0 _ 8B. 10
        mov     eax, dword [ebp-4H]                     ; 50C2 _ 8B. 45, FC
        mov     ecx, dword [ebp+8H]                     ; 50C5 _ 8B. 4D, 08
        mov     dword [eax+edx*4+8H], ecx               ; 50C8 _ 89. 4C 90, 08
        mov     eax, dword [ebp-4H]                     ; 50CC _ 8B. 45, FC
        mov     eax, dword [eax]                        ; 50CF _ 8B. 00
        lea     edx, [eax+1H]                           ; 50D1 _ 8D. 50, 01
        mov     eax, dword [ebp-4H]                     ; 50D4 _ 8B. 45, FC
        mov     dword [eax], edx                        ; 50D7 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 50D9 _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 50DC _ C7. 40, 04, 00000002
        nop                                             ; 50E3 _ 90
        leave                                           ; 50E4 _ C9
        ret                                             ; 50E5 _ C3
; _task_add End of function

_task_alloc:; Function begin
        push    ebp                                     ; 50E6 _ 55
        mov     ebp, esp                                ; 50E7 _ 89. E5
        sub     esp, 16                                 ; 50E9 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 50EC _ C7. 45, FC, 00000000
        jmp     ?_303                                   ; 50F3 _ E9, 00000101

?_301:  mov     edx, dword [_taskctl]                   ; 50F8 _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-4H]                     ; 50FE _ 8B. 45, FC
        imul    eax, eax, 148                           ; 5101 _ 69. C0, 00000094
        add     eax, edx                                ; 5107 _ 01. D0
        add     eax, 72                                 ; 5109 _ 83. C0, 48
        mov     eax, dword [eax]                        ; 510C _ 8B. 00
        test    eax, eax                                ; 510E _ 85. C0
        jne     ?_302                                   ; 5110 _ 0F 85, 000000DF
        mov     edx, dword [_taskctl]                   ; 5116 _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-4H]                     ; 511C _ 8B. 45, FC
        imul    eax, eax, 148                           ; 511F _ 69. C0, 00000094
        add     eax, 64                                 ; 5125 _ 83. C0, 40
        add     eax, edx                                ; 5128 _ 01. D0
        add     eax, 4                                  ; 512A _ 83. C0, 04
        mov     dword [ebp-8H], eax                     ; 512D _ 89. 45, F8
        mov     eax, dword [ebp-8H]                     ; 5130 _ 8B. 45, F8
        mov     dword [eax+4H], 1                       ; 5133 _ C7. 40, 04, 00000001
        mov     eax, dword [ebp-8H]                     ; 513A _ 8B. 45, F8
        mov     dword [eax+50H], 514                    ; 513D _ C7. 40, 50, 00000202
        mov     eax, dword [ebp-8H]                     ; 5144 _ 8B. 45, F8
        mov     dword [eax+54H], 0                      ; 5147 _ C7. 40, 54, 00000000
        mov     eax, dword [ebp-8H]                     ; 514E _ 8B. 45, F8
        mov     dword [eax+58H], 0                      ; 5151 _ C7. 40, 58, 00000000
        mov     eax, dword [ebp-8H]                     ; 5158 _ 8B. 45, F8
        mov     dword [eax+5CH], 0                      ; 515B _ C7. 40, 5C, 00000000
        mov     eax, dword [ebp-8H]                     ; 5162 _ 8B. 45, F8
        mov     dword [eax+60H], 0                      ; 5165 _ C7. 40, 60, 00000000
        mov     eax, dword [ebp-8H]                     ; 516C _ 8B. 45, F8
        mov     dword [eax+68H], 0                      ; 516F _ C7. 40, 68, 00000000
        mov     eax, dword [ebp-4H]                     ; 5176 _ 8B. 45, FC
        add     eax, 1                                  ; 5179 _ 83. C0, 01
        shl     eax, 9                                  ; 517C _ C1. E0, 09
        mov     edx, eax                                ; 517F _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 5181 _ 8B. 45, F8
        mov     dword [eax+64H], edx                    ; 5184 _ 89. 50, 64
        mov     eax, dword [ebp-8H]                     ; 5187 _ 8B. 45, F8
        mov     dword [eax+6CH], 0                      ; 518A _ C7. 40, 6C, 00000000
        mov     eax, dword [ebp-8H]                     ; 5191 _ 8B. 45, F8
        mov     dword [eax+70H], 0                      ; 5194 _ C7. 40, 70, 00000000
        mov     eax, dword [ebp-8H]                     ; 519B _ 8B. 45, F8
        mov     dword [eax+74H], 0                      ; 519E _ C7. 40, 74, 00000000
        mov     eax, dword [ebp-8H]                     ; 51A5 _ 8B. 45, F8
        mov     dword [eax+80H], 0                      ; 51A8 _ C7. 80, 00000080, 00000000
        mov     eax, dword [ebp-8H]                     ; 51B2 _ 8B. 45, F8
        mov     dword [eax+84H], 0                      ; 51B5 _ C7. 80, 00000084, 00000000
        mov     eax, dword [ebp-8H]                     ; 51BF _ 8B. 45, F8
        mov     dword [eax+88H], 0                      ; 51C2 _ C7. 80, 00000088, 00000000
        mov     eax, dword [ebp-8H]                     ; 51CC _ 8B. 45, F8
        mov     dword [eax+34H], 0                      ; 51CF _ C7. 40, 34, 00000000
        mov     eax, dword [ebp-8H]                     ; 51D6 _ 8B. 45, F8
        mov     dword [eax+8CH], 0                      ; 51D9 _ C7. 80, 0000008C, 00000000
        mov     eax, dword [ebp-8H]                     ; 51E3 _ 8B. 45, F8
        mov     dword [eax+90H], 1073741824             ; 51E6 _ C7. 80, 00000090, 40000000
        mov     eax, dword [ebp-8H]                     ; 51F0 _ 8B. 45, F8
        jmp     ?_304                                   ; 51F3 _ EB, 13

?_302:  add     dword [ebp-4H], 1                       ; 51F5 _ 83. 45, FC, 01
?_303:  cmp     dword [ebp-4H], 4                       ; 51F9 _ 83. 7D, FC, 04
        jle     ?_301                                   ; 51FD _ 0F 8E, FFFFFEF5
        mov     eax, 0                                  ; 5203 _ B8, 00000000
?_304:  leave                                           ; 5208 _ C9
        ret                                             ; 5209 _ C3
; _task_alloc End of function

_task_run:; Function begin
        push    ebp                                     ; 520A _ 55
        mov     ebp, esp                                ; 520B _ 89. E5
        sub     esp, 24                                 ; 520D _ 83. EC, 18
        cmp     dword [ebp+0CH], 0                      ; 5210 _ 83. 7D, 0C, 00
        jns     ?_305                                   ; 5214 _ 79, 09
        mov     eax, dword [ebp+8H]                     ; 5216 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 5219 _ 8B. 40, 0C
        mov     dword [ebp+0CH], eax                    ; 521C _ 89. 45, 0C
?_305:  cmp     dword [ebp+10H], 0                      ; 521F _ 83. 7D, 10, 00
        jle     ?_306                                   ; 5223 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 5225 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 5228 _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 522B _ 89. 50, 08
?_306:  mov     eax, dword [ebp+8H]                     ; 522E _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 5231 _ 8B. 40, 04
        cmp     eax, 2                                  ; 5234 _ 83. F8, 02
        jnz     ?_307                                   ; 5237 _ 75, 16
        mov     eax, dword [ebp+8H]                     ; 5239 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 523C _ 8B. 40, 0C
        cmp     dword [ebp+0CH], eax                    ; 523F _ 39. 45, 0C
        jz      ?_307                                   ; 5242 _ 74, 0B
        mov     eax, dword [ebp+8H]                     ; 5244 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 5247 _ 89. 04 24
        call    _task_remove                            ; 524A _ E8, 0000002E
?_307:  mov     eax, dword [ebp+8H]                     ; 524F _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 5252 _ 8B. 40, 04
        cmp     eax, 2                                  ; 5255 _ 83. F8, 02
        jz      ?_308                                   ; 5258 _ 74, 14
        mov     eax, dword [ebp+8H]                     ; 525A _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 525D _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 5260 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 5263 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 5266 _ 89. 04 24
        call    _task_add                               ; 5269 _ E8, FFFFFE2B
?_308:  mov     eax, dword [_taskctl]                   ; 526E _ A1, 00000004(d)
        mov     dword [eax+4H], 1                       ; 5273 _ C7. 40, 04, 00000001
        nop                                             ; 527A _ 90
        leave                                           ; 527B _ C9
        ret                                             ; 527C _ C3
; _task_run End of function

_task_remove:; Function begin
        push    ebp                                     ; 527D _ 55
        mov     ebp, esp                                ; 527E _ 89. E5
        sub     esp, 16                                 ; 5280 _ 83. EC, 10
        mov     ecx, dword [_taskctl]                   ; 5283 _ 8B. 0D, 00000004(d)
        mov     eax, dword [ebp+8H]                     ; 5289 _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 528C _ 8B. 50, 0C
        mov     eax, edx                                ; 528F _ 89. D0
        shl     eax, 2                                  ; 5291 _ C1. E0, 02
        add     eax, edx                                ; 5294 _ 01. D0
        shl     eax, 2                                  ; 5296 _ C1. E0, 02
        add     eax, ecx                                ; 5299 _ 01. C8
        add     eax, 8                                  ; 529B _ 83. C0, 08
        mov     dword [ebp-8H], eax                     ; 529E _ 89. 45, F8
        mov     dword [ebp-4H], 0                       ; 52A1 _ C7. 45, FC, 00000000
        jmp     ?_311                                   ; 52A8 _ EB, 23

?_309:  mov     eax, dword [ebp-8H]                     ; 52AA _ 8B. 45, F8
        mov     edx, dword [ebp-4H]                     ; 52AD _ 8B. 55, FC
        mov     eax, dword [eax+edx*4+8H]               ; 52B0 _ 8B. 44 90, 08
        cmp     dword [ebp+8H], eax                     ; 52B4 _ 39. 45, 08
        jnz     ?_310                                   ; 52B7 _ 75, 10
        mov     eax, dword [ebp-8H]                     ; 52B9 _ 8B. 45, F8
        mov     edx, dword [ebp-4H]                     ; 52BC _ 8B. 55, FC
        mov     dword [eax+edx*4+8H], 0                 ; 52BF _ C7. 44 90, 08, 00000000
        jmp     ?_312                                   ; 52C7 _ EB, 0E

?_310:  add     dword [ebp-4H], 1                       ; 52C9 _ 83. 45, FC, 01
?_311:  mov     eax, dword [ebp-8H]                     ; 52CD _ 8B. 45, F8
        mov     eax, dword [eax]                        ; 52D0 _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 52D2 _ 39. 45, FC
        jl      ?_309                                   ; 52D5 _ 7C, D3
?_312:  mov     eax, dword [ebp-8H]                     ; 52D7 _ 8B. 45, F8
        mov     eax, dword [eax]                        ; 52DA _ 8B. 00
        lea     edx, [eax-1H]                           ; 52DC _ 8D. 50, FF
        mov     eax, dword [ebp-8H]                     ; 52DF _ 8B. 45, F8
        mov     dword [eax], edx                        ; 52E2 _ 89. 10
        mov     eax, dword [ebp-8H]                     ; 52E4 _ 8B. 45, F8
        mov     eax, dword [eax+4H]                     ; 52E7 _ 8B. 40, 04
        cmp     dword [ebp-4H], eax                     ; 52EA _ 39. 45, FC
        jge     ?_313                                   ; 52ED _ 7D, 0F
        mov     eax, dword [ebp-8H]                     ; 52EF _ 8B. 45, F8
        mov     eax, dword [eax+4H]                     ; 52F2 _ 8B. 40, 04
        lea     edx, [eax-1H]                           ; 52F5 _ 8D. 50, FF
        mov     eax, dword [ebp-8H]                     ; 52F8 _ 8B. 45, F8
        mov     dword [eax+4H], edx                     ; 52FB _ 89. 50, 04
?_313:  mov     eax, dword [ebp-8H]                     ; 52FE _ 8B. 45, F8
        mov     edx, dword [eax+4H]                     ; 5301 _ 8B. 50, 04
        mov     eax, dword [ebp-8H]                     ; 5304 _ 8B. 45, F8
        mov     eax, dword [eax]                        ; 5307 _ 8B. 00
        cmp     edx, eax                                ; 5309 _ 39. C2
        jl      ?_314                                   ; 530B _ 7C, 0A
        mov     eax, dword [ebp-8H]                     ; 530D _ 8B. 45, F8
        mov     dword [eax+4H], 0                       ; 5310 _ C7. 40, 04, 00000000
?_314:  mov     eax, dword [ebp+8H]                     ; 5317 _ 8B. 45, 08
        mov     dword [eax+4H], 1                       ; 531A _ C7. 40, 04, 00000001
        jmp     ?_316                                   ; 5321 _ EB, 1B

?_315:  mov     eax, dword [ebp-4H]                     ; 5323 _ 8B. 45, FC
        lea     edx, [eax+1H]                           ; 5326 _ 8D. 50, 01
        mov     eax, dword [ebp-8H]                     ; 5329 _ 8B. 45, F8
        mov     ecx, dword [eax+edx*4+8H]               ; 532C _ 8B. 4C 90, 08
        mov     eax, dword [ebp-8H]                     ; 5330 _ 8B. 45, F8
        mov     edx, dword [ebp-4H]                     ; 5333 _ 8B. 55, FC
        mov     dword [eax+edx*4+8H], ecx               ; 5336 _ 89. 4C 90, 08
        add     dword [ebp-4H], 1                       ; 533A _ 83. 45, FC, 01
?_316:  mov     eax, dword [ebp-8H]                     ; 533E _ 8B. 45, F8
        mov     eax, dword [eax]                        ; 5341 _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 5343 _ 39. 45, FC
        jl      ?_315                                   ; 5346 _ 7C, DB
        nop                                             ; 5348 _ 90
        leave                                           ; 5349 _ C9
        ret                                             ; 534A _ C3
; _task_remove End of function

_task_switch:; Function begin
        push    ebp                                     ; 534B _ 55
        mov     ebp, esp                                ; 534C _ 89. E5
        sub     esp, 40                                 ; 534E _ 83. EC, 28
        mov     ecx, dword [_taskctl]                   ; 5351 _ 8B. 0D, 00000004(d)
        mov     eax, dword [_taskctl]                   ; 5357 _ A1, 00000004(d)
        mov     edx, dword [eax]                        ; 535C _ 8B. 10
        mov     eax, edx                                ; 535E _ 89. D0
        shl     eax, 2                                  ; 5360 _ C1. E0, 02
        add     eax, edx                                ; 5363 _ 01. D0
        shl     eax, 2                                  ; 5365 _ C1. E0, 02
        add     eax, ecx                                ; 5368 _ 01. C8
        add     eax, 8                                  ; 536A _ 83. C0, 08
        mov     dword [ebp-0CH], eax                    ; 536D _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 5370 _ 8B. 45, F4
        mov     edx, dword [eax+4H]                     ; 5373 _ 8B. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 5376 _ 8B. 45, F4
        mov     eax, dword [eax+edx*4+8H]               ; 5379 _ 8B. 44 90, 08
        mov     dword [ebp-10H], eax                    ; 537D _ 89. 45, F0
        mov     eax, dword [ebp-0CH]                    ; 5380 _ 8B. 45, F4
        mov     eax, dword [eax+4H]                     ; 5383 _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 5386 _ 8D. 50, 01
        mov     eax, dword [ebp-0CH]                    ; 5389 _ 8B. 45, F4
        mov     dword [eax+4H], edx                     ; 538C _ 89. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 538F _ 8B. 45, F4
        mov     edx, dword [eax+4H]                     ; 5392 _ 8B. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 5395 _ 8B. 45, F4
        mov     eax, dword [eax]                        ; 5398 _ 8B. 00
        cmp     edx, eax                                ; 539A _ 39. C2
        jnz     ?_317                                   ; 539C _ 75, 0A
        mov     eax, dword [ebp-0CH]                    ; 539E _ 8B. 45, F4
        mov     dword [eax+4H], 0                       ; 53A1 _ C7. 40, 04, 00000000
?_317:  mov     eax, dword [_taskctl]                   ; 53A8 _ A1, 00000004(d)
        mov     eax, dword [eax+4H]                     ; 53AD _ 8B. 40, 04
        test    eax, eax                                ; 53B0 _ 85. C0
        jz      ?_318                                   ; 53B2 _ 74, 24
        call    _task_switchsub                         ; 53B4 _ E8, 000000E4
        mov     ecx, dword [_taskctl]                   ; 53B9 _ 8B. 0D, 00000004(d)
        mov     eax, dword [_taskctl]                   ; 53BF _ A1, 00000004(d)
        mov     edx, dword [eax]                        ; 53C4 _ 8B. 10
        mov     eax, edx                                ; 53C6 _ 89. D0
        shl     eax, 2                                  ; 53C8 _ C1. E0, 02
        add     eax, edx                                ; 53CB _ 01. D0
        shl     eax, 2                                  ; 53CD _ C1. E0, 02
        add     eax, ecx                                ; 53D0 _ 01. C8
        add     eax, 8                                  ; 53D2 _ 83. C0, 08
        mov     dword [ebp-0CH], eax                    ; 53D5 _ 89. 45, F4
?_318:  mov     eax, dword [ebp-0CH]                    ; 53D8 _ 8B. 45, F4
        mov     edx, dword [eax+4H]                     ; 53DB _ 8B. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 53DE _ 8B. 45, F4
        mov     eax, dword [eax+edx*4+8H]               ; 53E1 _ 8B. 44 90, 08
        mov     dword [ebp-14H], eax                    ; 53E5 _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 53E8 _ 8B. 45, EC
        mov     eax, dword [eax+8H]                     ; 53EB _ 8B. 40, 08
        mov     edx, eax                                ; 53EE _ 89. C2
        mov     eax, dword [_task_timer]                       ; 53F0 _ A1, 00000000(d)
        mov     dword [esp+4H], edx                     ; 53F5 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 53F9 _ 89. 04 24
        call    _timer_settime                          ; 53FC _ E8, 00000000(rel)
        mov     eax, dword [ebp-14H]                    ; 5401 _ 8B. 45, EC
        cmp     eax, dword [ebp-10H]                    ; 5404 _ 3B. 45, F0
        jz      ?_319                                   ; 5407 _ 74, 1C
        cmp     dword [ebp-14H], 0                      ; 5409 _ 83. 7D, EC, 00
        jz      ?_319                                   ; 540D _ 74, 16
        mov     eax, dword [ebp-14H]                    ; 540F _ 8B. 45, EC
        mov     eax, dword [eax]                        ; 5412 _ 8B. 00
        mov     dword [esp+4H], eax                     ; 5414 _ 89. 44 24, 04
        mov     dword [esp], 0                          ; 5418 _ C7. 04 24, 00000000
        call    _farjmp                                 ; 541F _ E8, 00000000(rel)
        nop                                             ; 5424 _ 90
?_319:  nop                                             ; 5425 _ 90
        leave                                           ; 5426 _ C9
        ret                                             ; 5427 _ C3
; _task_switch End of function

_task_sleep:; Function begin
        push    ebp                                     ; 5428 _ 55
        mov     ebp, esp                                ; 5429 _ 89. E5
        sub     esp, 40                                 ; 542B _ 83. EC, 28
        mov     dword [ebp-10H], 0                      ; 542E _ C7. 45, F0, 00000000
        mov     dword [ebp-0CH], 0                      ; 5435 _ C7. 45, F4, 00000000
        mov     eax, dword [ebp+8H]                     ; 543C _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 543F _ 8B. 40, 04
        cmp     eax, 2                                  ; 5442 _ 83. F8, 02
        jnz     ?_320                                   ; 5445 _ 75, 51
        call    _task_now                               ; 5447 _ E8, 000000A4
        mov     dword [ebp-10H], eax                    ; 544C _ 89. 45, F0
        mov     eax, dword [ebp+8H]                     ; 544F _ 8B. 45, 08
        mov     dword [esp], eax                        ; 5452 _ 89. 04 24
        call    _task_remove                            ; 5455 _ E8, FFFFFE23
        mov     dword [ebp-0CH], 1                      ; 545A _ C7. 45, F4, 00000001
        mov     eax, dword [ebp+8H]                     ; 5461 _ 8B. 45, 08
        cmp     eax, dword [ebp-10H]                    ; 5464 _ 3B. 45, F0
        jnz     ?_320                                   ; 5467 _ 75, 2F
        call    _task_switchsub                         ; 5469 _ E8, 0000002F
        call    _task_now                               ; 546E _ E8, 0000007D
        mov     dword [ebp-10H], eax                    ; 5473 _ 89. 45, F0
        mov     dword [ebp-0CH], 2                      ; 5476 _ C7. 45, F4, 00000002
        cmp     dword [ebp-10H], 0                      ; 547D _ 83. 7D, F0, 00
        jz      ?_320                                   ; 5481 _ 74, 15
        mov     eax, dword [ebp-10H]                    ; 5483 _ 8B. 45, F0
        mov     eax, dword [eax]                        ; 5486 _ 8B. 00
        mov     dword [esp+4H], eax                     ; 5488 _ 89. 44 24, 04
        mov     dword [esp], 0                          ; 548C _ C7. 04 24, 00000000
        call    _farjmp                                 ; 5493 _ E8, 00000000(rel)
?_320:  mov     eax, dword [ebp-0CH]                    ; 5498 _ 8B. 45, F4
        leave                                           ; 549B _ C9
        ret                                             ; 549C _ C3
; _task_sleep End of function

_task_switchsub:; Function begin
        push    ebp                                     ; 549D _ 55
        mov     ebp, esp                                ; 549E _ 89. E5
        sub     esp, 16                                 ; 54A0 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 54A3 _ C7. 45, FC, 00000000
        jmp     ?_322                                   ; 54AA _ EB, 22

?_321:  mov     ecx, dword [_taskctl]                   ; 54AC _ 8B. 0D, 00000004(d)
        mov     edx, dword [ebp-4H]                     ; 54B2 _ 8B. 55, FC
        mov     eax, edx                                ; 54B5 _ 89. D0
        shl     eax, 2                                  ; 54B7 _ C1. E0, 02
        add     eax, edx                                ; 54BA _ 01. D0
        shl     eax, 2                                  ; 54BC _ C1. E0, 02
        add     eax, ecx                                ; 54BF _ 01. C8
        add     eax, 8                                  ; 54C1 _ 83. C0, 08
        mov     eax, dword [eax]                        ; 54C4 _ 8B. 00
        test    eax, eax                                ; 54C6 _ 85. C0
        jg      ?_323                                   ; 54C8 _ 7F, 0C
        add     dword [ebp-4H], 1                       ; 54CA _ 83. 45, FC, 01
?_322:  cmp     dword [ebp-4H], 2                       ; 54CE _ 83. 7D, FC, 02
        jle     ?_321                                   ; 54D2 _ 7E, D8
        jmp     ?_324                                   ; 54D4 _ EB, 01

?_323:  nop                                             ; 54D6 _ 90
?_324:  mov     eax, dword [_taskctl]                   ; 54D7 _ A1, 00000004(d)
        mov     edx, dword [ebp-4H]                     ; 54DC _ 8B. 55, FC
        mov     dword [eax], edx                        ; 54DF _ 89. 10
        mov     eax, dword [_taskctl]                   ; 54E1 _ A1, 00000004(d)
        mov     dword [eax+4H], 0                       ; 54E6 _ C7. 40, 04, 00000000
        nop                                             ; 54ED _ 90
        leave                                           ; 54EE _ C9
        ret                                             ; 54EF _ C3
; _task_switchsub End of function

_task_now:; Function begin
        push    ebp                                     ; 54F0 _ 55
        mov     ebp, esp                                ; 54F1 _ 89. E5
        sub     esp, 16                                 ; 54F3 _ 83. EC, 10
        mov     ecx, dword [_taskctl]                   ; 54F6 _ 8B. 0D, 00000004(d)
        mov     eax, dword [_taskctl]                   ; 54FC _ A1, 00000004(d)
        mov     edx, dword [eax]                        ; 5501 _ 8B. 10
        mov     eax, edx                                ; 5503 _ 89. D0
        shl     eax, 2                                  ; 5505 _ C1. E0, 02
        add     eax, edx                                ; 5508 _ 01. D0
        shl     eax, 2                                  ; 550A _ C1. E0, 02
        add     eax, ecx                                ; 550D _ 01. C8
        add     eax, 8                                  ; 550F _ 83. C0, 08
        mov     dword [ebp-4H], eax                     ; 5512 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 5515 _ 8B. 45, FC
        mov     edx, dword [eax+4H]                     ; 5518 _ 8B. 50, 04
        mov     eax, dword [ebp-4H]                     ; 551B _ 8B. 45, FC
        mov     eax, dword [eax+edx*4+8H]               ; 551E _ 8B. 44 90, 08
        leave                                           ; 5522 _ C9
        ret                                             ; 5523 _ C3
; _task_now End of function

_send_message:; Function begin
        push    ebp                                     ; 5524 _ 55
        mov     ebp, esp                                ; 5525 _ 89. E5
        sub     esp, 24                                 ; 5527 _ 83. EC, 18
        mov     eax, dword [ebp+10H]                    ; 552A _ 8B. 45, 10
        movzx   eax, al                                 ; 552D _ 0F B6. C0
        mov     edx, dword [ebp+0CH]                    ; 5530 _ 8B. 55, 0C
        add     edx, 16                                 ; 5533 _ 83. C2, 10
        mov     dword [esp+4H], eax                     ; 5536 _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 553A _ 89. 14 24
        call    _fifo8_put                              ; 553D _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 5542 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 5545 _ 89. 04 24
        call    _task_sleep                             ; 5548 _ E8, FFFFFEDB
        nop                                             ; 554D _ 90
        leave                                           ; 554E _ C9
        ret                                             ; 554F _ C3
; _send_message End of function


_strcmp:
        push    ebp                                     ; 5550 _ 55
        mov     ebp, esp                                ; 5551 _ 89. E5
        sub     esp, 16                                 ; 5553 _ 83. EC, 10
        cmp     dword [ebp+8H], 0                       ; 5556 _ 83. 7D, 08, 00
        jz      ?_325                                   ; 555A _ 74, 06
        cmp     dword [ebp+0CH], 0                      ; 555C _ 83. 7D, 0C, 00
        jnz     ?_326                                   ; 5560 _ 75, 0A
?_325:  mov     eax, 0                                  ; 5562 _ B8, 00000000
        jmp     ?_333                                   ; 5567 _ E9, 0000009B

?_326:  mov     dword [ebp-4H], 0                       ; 556C _ C7. 45, FC, 00000000
        jmp     ?_329                                   ; 5573 _ EB, 25

?_327:  mov     edx, dword [ebp-4H]                     ; 5575 _ 8B. 55, FC
        mov     eax, dword [ebp+8H]                     ; 5578 _ 8B. 45, 08
        add     eax, edx                                ; 557B _ 01. D0
        movzx   edx, byte [eax]                         ; 557D _ 0F B6. 10
        mov     ecx, dword [ebp-4H]                     ; 5580 _ 8B. 4D, FC
        mov     eax, dword [ebp+0CH]                    ; 5583 _ 8B. 45, 0C
        add     eax, ecx                                ; 5586 _ 01. C8
        movzx   eax, byte [eax]                         ; 5588 _ 0F B6. 00
        cmp     dl, al                                  ; 558B _ 38. C2
        jz      ?_328                                   ; 558D _ 74, 07
        mov     eax, 0                                  ; 558F _ B8, 00000000
        jmp     ?_333                                   ; 5594 _ EB, 71

?_328:  add     dword [ebp-4H], 1                       ; 5596 _ 83. 45, FC, 01
?_329:  mov     edx, dword [ebp-4H]                     ; 559A _ 8B. 55, FC
        mov     eax, dword [ebp+8H]                     ; 559D _ 8B. 45, 08
        add     eax, edx                                ; 55A0 _ 01. D0
        movzx   eax, byte [eax]                         ; 55A2 _ 0F B6. 00
        test    al, al                                  ; 55A5 _ 84. C0
        jz      ?_330                                   ; 55A7 _ 74, 0F
        mov     edx, dword [ebp-4H]                     ; 55A9 _ 8B. 55, FC
        mov     eax, dword [ebp+0CH]                    ; 55AC _ 8B. 45, 0C
        add     eax, edx                                ; 55AF _ 01. D0
        movzx   eax, byte [eax]                         ; 55B1 _ 0F B6. 00
        test    al, al                                  ; 55B4 _ 84. C0
        jnz     ?_327                                   ; 55B6 _ 75, BD
?_330:  mov     edx, dword [ebp-4H]                     ; 55B8 _ 8B. 55, FC
        mov     eax, dword [ebp+8H]                     ; 55BB _ 8B. 45, 08
        add     eax, edx                                ; 55BE _ 01. D0
        movzx   eax, byte [eax]                         ; 55C0 _ 0F B6. 00
        test    al, al                                  ; 55C3 _ 84. C0
        jnz     ?_331                                   ; 55C5 _ 75, 16
        mov     edx, dword [ebp-4H]                     ; 55C7 _ 8B. 55, FC
        mov     eax, dword [ebp+0CH]                    ; 55CA _ 8B. 45, 0C
        add     eax, edx                                ; 55CD _ 01. D0
        movzx   eax, byte [eax]                         ; 55CF _ 0F B6. 00
        test    al, al                                  ; 55D2 _ 84. C0
        jz      ?_331                                   ; 55D4 _ 74, 07
        mov     eax, 0                                  ; 55D6 _ B8, 00000000
        jmp     ?_333                                   ; 55DB _ EB, 2A

?_331:  mov     edx, dword [ebp-4H]                     ; 55DD _ 8B. 55, FC
        mov     eax, dword [ebp+8H]                     ; 55E0 _ 8B. 45, 08
        add     eax, edx                                ; 55E3 _ 01. D0
        movzx   eax, byte [eax]                         ; 55E5 _ 0F B6. 00
        test    al, al                                  ; 55E8 _ 84. C0
        jz      ?_332                                   ; 55EA _ 74, 16
        mov     edx, dword [ebp-4H]                     ; 55EC _ 8B. 55, FC
        mov     eax, dword [ebp+0CH]                    ; 55EF _ 8B. 45, 0C
        add     eax, edx                                ; 55F2 _ 01. D0
        movzx   eax, byte [eax]                         ; 55F4 _ 0F B6. 00
        test    al, al                                  ; 55F7 _ 84. C0
        jz      ?_332                                   ; 55F9 _ 74, 07
        mov     eax, 0                                  ; 55FB _ B8, 00000000
        jmp     ?_333                                   ; 5600 _ EB, 05

?_332:  mov     eax, 1                                  ; 5602 _ B8, 00000001
?_333:  leave                                           ; 5607 _ C9
        ret                                             ; 5608 _ C3

        nop                                             ; 5609 _ 90
        nop                                             ; 560A _ 90
        nop                                             ; 560B _ 90



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

?_334:  db 00H                                          ; 0112 _ .

?_335:  db 00H, 00H, 00H, 00H, 00H                      ; 0113 _ .....

_mmx:   dd 0FFFFFFFFH                                   ; 0118 _ -1 

_mmy:   dd 0FFFFFFFFH                                   ; 011C _ -1 

_KEY_CONTROL:                                           ; dword
        dd 0000001DH, 00000000H                         ; 0120 _ 29 0 
        dd 00000000H, 00000000H                         ; 0128 _ 0 0 
        dd 00000000H, 00000000H                         ; 0130 _ 0 0 
        dd 00000000H, 00000000H                         ; 0138 _ 0 0 

_table_rgb.2597:                                        ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0140 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0148 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0150 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0158 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 0160 _ ........
        db 00H, 84H, 00H, 84H, 84H, 84H, 84H, 84H       ; 0168 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0170 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0178 _ ........

_cursor.2644:                                           ; byte
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

_closebtn.2763:                                         ; byte
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


?_336:                                                  
        db 63H, 6FH, 75H, 6EH, 74H, 65H, 72H, 00H       ; 0000 _ counter.

?_337:                                                  ; byte
        db 6BH, 69H, 6CH, 6CH, 20H, 70H, 72H, 6FH       ; 0008 _ kill pro
        db 63H, 65H, 73H, 73H, 00H                      ; 0010 _ cess.

?_338:                                                  ; byte
        db 74H, 61H, 73H, 6BH, 5FH, 61H, 00H            ; 0015 _ task_a.

?_339:                                                  ; byte
        db 63H, 6FH, 6EH, 73H, 6FH, 6CH, 65H, 00H       ; 001C _ console.

?_340:                                                  ; byte
        db 20H, 00H                                     ; 0024 _  .

?_341:                                                  ; byte
        db 66H, 72H, 65H, 65H, 20H, 00H                 ; 0026 _ free .

?_342:                                                  ; byte
        db 20H, 4BH, 42H, 00H                           ; 002C _  KB.

?_343:                                                  ; byte
        db 3EH, 00H                                     ; 0030 _ >.

?_344:                                                  ; byte
        db 61H, 62H, 63H, 2EH, 65H, 78H, 65H, 00H       ; 0032 _ abc.exe.

?_345:                                                  ; byte
        db 6BH, 65H, 79H, 62H, 6FH, 61H, 72H, 64H       ; 003A _ keyboard
        db 20H, 72H, 65H, 63H, 65H, 69H, 76H, 65H       ; 0042 _  receive
        db 00H                                          ; 004A _ .

?_346:                                                  ; byte
        db 6DH, 65H, 6DH, 00H                           ; 004B _ mem.

?_347:                                                  ; byte
        db 63H, 6CH, 73H, 00H                           ; 004F _ cls.

?_348:                                                  ; byte
        db 68H, 6CH, 74H, 00H                           ; 0053 _ hlt.

?_349:                                                  ; byte
        db 64H, 69H, 72H, 00H                           ; 0057 _ dir.

?_350:                                                  ; byte
        db 70H, 61H, 67H, 65H, 20H, 69H, 73H, 3AH       ; 005B _ page is:
        db 20H, 00H                                     ; 0063 _  .

?_351:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0065 _ BaseAddr
        db 4CH, 3AH, 20H, 00H                           ; 006D _ L: .

?_352:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0071 _ BaseAddr
        db 48H, 3AH, 20H, 00H                           ; 0079 _ H: .

?_353:                                                  ; byte
        db 6CH, 65H, 6EH, 67H, 74H, 68H, 4CH, 6FH       ; 007D _ lengthLo
        db 77H, 3AH, 20H, 00H                           ; 0085 _ w: .

?_354:                                                  ; byte
        db 49H, 4EH, 54H, 20H, 4FH, 43H, 00H            ; 0089 _ INT OC.

?_355:                                                  ; byte
        db 53H, 74H, 61H, 63H, 6BH, 20H, 45H, 78H       ; 0090 _ Stack Ex
        db 63H, 65H, 70H, 74H, 69H, 6FH, 6EH, 00H       ; 0098 _ ception.

?_356:                                                  ; byte
        db 45H, 49H, 50H, 20H, 3DH, 20H, 00H            ; 00A0 _ EIP = .

?_357:                                                  ; byte
        db 49H, 4EH, 54H, 20H, 30H, 44H, 20H, 00H       ; 00A7 _ INT 0D .

?_358:                                                  ; byte
        db 47H, 65H, 6EH, 65H, 72H, 61H, 6CH, 20H       ; 00AF _ General 
        db 50H, 72H, 6FH, 74H, 65H, 63H, 74H, 65H       ; 00B7 _ Protecte
        db 64H, 20H, 45H, 78H, 63H, 65H, 70H, 74H       ; 00BF _ d Except
        db 69H, 6FH, 6EH, 00H, 00H                      ; 00C7 _ ion..


_g_hlt:                                                 
        resd    1                                       ; 0000

_key_shift:                                             ; dword
        resd    1                                       ; 0004

_caps_lock:                                             ; dword
        resd    1                                       ; 0008

_g_Console:                                             ; dword
        resd    1                                       ; 000C

?_359:  resd    1                                       ; 0010

?_360:  resd    1                                       ; 0014

?_361:  resd    1                                       ; 0018

?_362:  resb    1                                       ; 001C

?_363:  resb    3                                       ; 001D

?_364:  resd    1                                       ; 0020

_bootInfo:                                              ; dword
        resd    1                                       ; 0024

?_365:  resw    1                                       ; 0028

?_366:  resw    1                                       ; 002A

_keyinfo:                                               ; byte
        resb    24                                      ; 002C

?_367:  resd    1                                       ; 0044

_mouseinfo:                                             ; byte
        resb    56                                      ; 0048

_keybuf:                                                ; byte
        resb    32                                      ; 0080

_mousebuf:                                              ; byte
        resb    128                                     ; 00A0

_mdec:                                                  ; byte
        resb    12                                      ; 0120

?_368:  resd    1                                       ; 012C

_timerinfo:                                             ; byte
        resb    28                                      ; 0130

_timerbuf:                                              ; byte
        resb    8                                       ; 014C

_mx:    resd    1                                       ; 0154

_my:    resd    1                                       ; 0158

_mouse_clicked_sht:                                     ; dword
        resd    1                                       ; 015C

_xsize: resd    1                                       ; 0160

_ysize: resd    1                                       ; 0164

_buf_back:                                              ; dword
        resd    6                                       ; 0168

_buf_mouse:                                             ; byte
        resb    256                                     ; 0180

_shtMsgBox:                                             ; dword
        resd    1                                       ; 0280

_shtctl: resd   1                                       ; 0284

_sht_back:                                              ; dword
        resd    1                                       ; 0288

_sht_mouse:                                             ; dword
        resd    1                                       ; 028C

_task_cons:                                             ; dword
        resd    1                                       ; 0290

_task_main:                                             ; dword
        resd    1                                       ; 0294

_buffer: resd   1                                       ; 0298

?_369:  resd    1                                       ; 029C

?_370:  resd    1                                       ; 02A0

_task_a.2355:                                           ; dword
        resd    7                                       ; 02A4

_tss_a.2354:                                            ; byte
        resb    128                                     ; 02C0

_tss_b.2353:                                            ; byte
        resb    104                                     ; 0340

_task_b.2343:                                           ; byte
        resb    12                                      ; 03A8

_str.2692:                                              ; byte
        resb    1                                       ; 03B4

?_371:  resb    9                                       ; 03B5

?_372:  resb    2                                       ; 03BE

_timerctl:                                              ; byte
        resb    8032                                    ; 03C0

_task_timer:                                            ; byte
        resb    4                                       ; 2320

_taskctl:                                               ; byte
        resb    4                                       ; 2324


